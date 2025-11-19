uint64_t sub_69EA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 210))
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

uint64_t sub_69EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_69F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_69FA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_69FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6A078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_6A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

void sub_6A1A0()
{
  type metadata accessor for PLBatteryUIChargingIntervalType(319);
  if (v0 <= 0x3F)
  {
    sub_6A260(319, &qword_1836D0, &type metadata for Int, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_6A2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6A260(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_6A2B0()
{
  if (!qword_1836D8)
  {
    sub_115760();
    v0 = sub_117620();
    if (!v1)
    {
      atomic_store(v0, &qword_1836D8);
    }
  }
}

void sub_6A358()
{
  type metadata accessor for PLBatteryUIChargingIntervalType(319);
  if (v0 <= 0x3F)
  {
    sub_6A3E0();
    if (v1 <= 0x3F)
    {
      sub_6A448();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_6A3E0()
{
  if (!qword_183780)
  {
    type metadata accessor for PLBatteryUIChargingIntervalType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_183780);
    }
  }
}

void sub_6A448()
{
  if (!qword_183788)
  {
    type metadata accessor for PLBatteryUIChargingIntervalType(255);
    sub_47A1C(&qword_182EF0, &unk_124BB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_183788);
    }
  }
}

uint64_t getEnumTagSinglePayload for ChargingStateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChargingStateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_6A614(uint64_t a1, int a2)
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

uint64_t sub_6A65C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BreakdownAppInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BreakdownAppInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_6A804()
{
  result = qword_18AA20[0];
  if (!qword_18AA20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18AA20);
  }

  return result;
}

unint64_t sub_6A85C()
{
  result = qword_18AB30;
  if (!qword_18AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18AB30);
  }

  return result;
}

unint64_t sub_6A8B4()
{
  result = qword_18AB38[0];
  if (!qword_18AB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18AB38);
  }

  return result;
}

unint64_t sub_6A908()
{
  result = qword_1837B8;
  if (!qword_1837B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837B8);
  }

  return result;
}

unint64_t sub_6A95C()
{
  result = qword_1837C0;
  if (!qword_1837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837C0);
  }

  return result;
}

unint64_t sub_6A9B0()
{
  result = qword_1837C8;
  if (!qword_1837C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837C8);
  }

  return result;
}

unint64_t sub_6AA04()
{
  result = qword_1837D0;
  if (!qword_1837D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837D0);
  }

  return result;
}

unint64_t sub_6AA58()
{
  result = qword_1837D8;
  if (!qword_1837D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837D8);
  }

  return result;
}

unint64_t sub_6AADC()
{
  result = qword_18ABC0;
  if (!qword_18ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABC0);
  }

  return result;
}

unint64_t sub_6AB30()
{
  result = qword_1837F0;
  if (!qword_1837F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1837F0);
  }

  return result;
}

unint64_t sub_6AB84()
{
  result = qword_18ABC8;
  if (!qword_18ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABC8);
  }

  return result;
}

unint64_t sub_6ABD8()
{
  result = qword_183808;
  if (!qword_183808)
  {
    sub_47A1C(&qword_183800, &qword_1268F8);
    sub_6AC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183808);
  }

  return result;
}

unint64_t sub_6AC5C()
{
  result = qword_183810;
  if (!qword_183810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183810);
  }

  return result;
}

uint64_t sub_6ACB4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_6AD00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_6AD5C()
{
  result = qword_18ABD0;
  if (!qword_18ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABD0);
  }

  return result;
}

unint64_t sub_6ADE0()
{
  result = qword_18ABD8;
  if (!qword_18ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABD8);
  }

  return result;
}

unint64_t sub_6AE34()
{
  result = qword_183850;
  if (!qword_183850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183850);
  }

  return result;
}

unint64_t sub_6AE88()
{
  result = qword_18ABE0;
  if (!qword_18ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18ABE0);
  }

  return result;
}

unint64_t sub_6AEDC()
{
  result = qword_183868;
  if (!qword_183868)
  {
    sub_47A1C(&qword_183860, &qword_126948);
    sub_6AF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183868);
  }

  return result;
}

unint64_t sub_6AF68()
{
  result = qword_183870;
  if (!qword_183870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183870);
  }

  return result;
}

unint64_t sub_6AFBC()
{
  result = qword_183880;
  if (!qword_183880)
  {
    sub_47A1C(&qword_183878, &unk_126950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183880);
  }

  return result;
}

unint64_t sub_6B038()
{
  result = qword_183888;
  if (!qword_183888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183888);
  }

  return result;
}

uint64_t sub_6B08C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(&qword_1835B0, &qword_127DA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6B160()
{
  result = qword_1838B0;
  if (!qword_1838B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1838B0);
  }

  return result;
}

uint64_t sub_6B1B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(&qword_183598, &unk_1259B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6B22C()
{
  result = qword_1838C0;
  if (!qword_1838C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1838C0);
  }

  return result;
}

unint64_t sub_6B2B8()
{
  result = qword_18ABE8[0];
  if (!qword_18ABE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18ABE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BreakdownBucket.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BreakdownBucket.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryChartInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChartLegendModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DailyCoalescedBreakdown.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DailyCoalescedBreakdown.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SummaryItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SummaryItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_6B81C()
{
  result = qword_18AD70;
  if (!qword_18AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18AD70);
  }

  return result;
}

unint64_t sub_6B874()
{
  result = qword_18B000[0];
  if (!qword_18B000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18B000);
  }

  return result;
}

unint64_t sub_6B8CC()
{
  result = qword_18B290[0];
  if (!qword_18B290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18B290);
  }

  return result;
}

unint64_t sub_6B924()
{
  result = qword_18B520[0];
  if (!qword_18B520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18B520);
  }

  return result;
}

unint64_t sub_6B97C()
{
  result = qword_18B7B0[0];
  if (!qword_18B7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18B7B0);
  }

  return result;
}

unint64_t sub_6B9D4()
{
  result = qword_18BA40[0];
  if (!qword_18BA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BA40);
  }

  return result;
}

unint64_t sub_6BA2C()
{
  result = qword_18BB50;
  if (!qword_18BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BB50);
  }

  return result;
}

unint64_t sub_6BA84()
{
  result = qword_18BB58[0];
  if (!qword_18BB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BB58);
  }

  return result;
}

unint64_t sub_6BADC()
{
  result = qword_18BBE0;
  if (!qword_18BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BBE0);
  }

  return result;
}

unint64_t sub_6BB34()
{
  result = qword_18BBE8[0];
  if (!qword_18BBE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BBE8);
  }

  return result;
}

unint64_t sub_6BB8C()
{
  result = qword_18BC70;
  if (!qword_18BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BC70);
  }

  return result;
}

unint64_t sub_6BBE4()
{
  result = qword_18BC78;
  if (!qword_18BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BC78);
  }

  return result;
}

unint64_t sub_6BC3C()
{
  result = qword_18BD00;
  if (!qword_18BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BD00);
  }

  return result;
}

unint64_t sub_6BC94()
{
  result = qword_18BD08[0];
  if (!qword_18BD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BD08);
  }

  return result;
}

unint64_t sub_6BCEC()
{
  result = qword_18BD90;
  if (!qword_18BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BD90);
  }

  return result;
}

unint64_t sub_6BD44()
{
  result = qword_18BD98[0];
  if (!qword_18BD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BD98);
  }

  return result;
}

unint64_t sub_6BD9C()
{
  result = qword_18BE20;
  if (!qword_18BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18BE20);
  }

  return result;
}

unint64_t sub_6BDF4()
{
  result = qword_18BE28[0];
  if (!qword_18BE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18BE28);
  }

  return result;
}

uint64_t (*sub_6BE8C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6BEE0;
}

uint64_t sub_6BEF8()
{
  swift_getKeyPath();
  (*(*v0 + 584))();

  swift_beginAccess();
  return v0[2];
}

uint64_t sub_6BF78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_6C00C(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {
    return sub_6E7DC();
  }

  KeyPath = swift_getKeyPath();
  v5 = __chkstk_darwin(KeyPath);
  v6 = v1;
  v7 = a1;
  (*(*v1 + 592))(v5, sub_6C10C);
}

uint64_t sub_6C10C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
  return sub_6E7DC();
}

void (*sub_6C164(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel);
  sub_115920();

  v4[7] = sub_6BE8C(v4);
  return sub_6C2B4;
}

uint64_t sub_6C2C0()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v47 - v8;
  v10 = __chkstk_darwin(v7);
  v50 = &v47 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v47 - v13;
  __chkstk_darwin(v12);
  v51 = &v47 - v15;
  v52 = v0;
  v16 = type metadata accessor for ShowAllUsageViewModel();
  v17 = sub_71CFC(&qword_1839B0, type metadata accessor for ShowAllUsageViewModel);
  v18 = sub_881D0(v16, v17);
  if (!*(v18 + 16))
  {
  }

  v48 = v9;
  v49 = v6;
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v47 = *(v2 + 16);
  v47(v14, v18 + v19, v1);

  v20 = *(v2 + 32);
  v21 = v14;
  v22 = v1;
  v20(v51, v21, v1);
  v52 = v0;
  v23 = sub_881D0(v16, v17);
  v24 = *(v23 + 16);
  if (!v24)
  {

    return (*(v2 + 8))(v51, v1);
  }

  v25 = v23 + v19 + *(v2 + 72) * (v24 - 1);
  v26 = v48;
  v47(v48, v25, v1);

  v27 = v50;
  v20(v50, v26, v1);
  sub_115710();
  v29 = v28;
  v30 = v51;
  v31 = sub_115710();
  v33 = v29 - v32;
  v34 = *(*v0 + 272);
  v35 = *(v34(v31) + 16);

  v37 = v33 / v35;
  v38 = v49;
  (*(*v0 + 224))(v36);
  sub_115710();
  v40 = v39;
  v41 = *(v2 + 8);
  v49 = (v2 + 8);
  v41(v38, v22);
  result = sub_115710();
  v44 = (v40 - v43) / v37;
  if (COERCE__INT64(fabs(v44)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v44 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v45 = *(v34(result) + 16);

  v46 = v45 - 1;
  if (v45 - 1 >= v44)
  {
    v46 = v44;
  }

  (*(*v0 + 184))(v46 & ~(v46 >> 63));
  v41(v27, v22);
  return (v41)(v30, v22);
}

uint64_t (*sub_6C6FC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6C760;
}

uint64_t sub_6C778(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t sub_6C7BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 584))();

  v3 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate;
  swift_beginAccess();
  v4 = sub_115760();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_6C8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_115760();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 232))(v7);
}

uint64_t sub_6C9B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_71CFC(&qword_183550, &type metadata accessor for Date);
  v16 = a1;
  LOBYTE(a1) = sub_117160();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, v8, v4);
    swift_endAccess();
    sub_6C2C0();
    v11(v8, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = __chkstk_darwin(KeyPath);
    v14 = v16;
    *(&v16 - 2) = v2;
    *(&v16 - 1) = v14;
    (*(*v2 + 592))(v13, sub_6EDC4);
  }

  return (v11)(v16, v4);
}

uint64_t sub_6CC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_6C2C0();
  return (*(v5 + 8))(v8, v4);
}

void (*sub_6CD8C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel);
  sub_115920();

  v4[7] = sub_6C6FC(v4);
  return sub_6CEDC;
}

uint64_t sub_6CF5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_6CFB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 280);

  return v3(v4);
}

void (*sub_6D048(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel);
  sub_115920();

  v4[7] = sub_6CEE8();
  return sub_6D198;
}

void (*sub_6D2E4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel);
  sub_115920();

  v4[7] = sub_6D1A4();
  return sub_6D434;
}

double sub_6D4B4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 584))();

  v4 = v2 + *a2;
  swift_beginAccess();
  result = *v4;
  v6 = *(v4 + 8);
  return result;
}

uint64_t sub_6D60C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = (v5 + *a1);
  result = swift_beginAccess();
  if (*v9 == a2 && v9[1] == a3)
  {
    *v9 = a2;
    v9[1] = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = __chkstk_darwin(KeyPath);
    (*(*v5 + 592))(v13, a5);
  }

  return result;
}

void (*sub_6D71C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel);
  sub_115920();

  v4[7] = sub_6D440();
  return sub_6D86C;
}

uint64_t sub_6D878(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_6D8D0(a1, a2 & 1, a3);
  return v9;
}

uint64_t sub_6D8D0(uint64_t a1, int a2, uint64_t a3)
{
  v7 = sub_115760();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__annotationSize);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__viewSize);
  *v13 = 0;
  v13[1] = 0;
  v14 = &_swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__appBreakdownEntries) = &_swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__nonAppBreakdownEntries) = &_swiftEmptyArrayStorage;
  sub_115930();
  *(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel_fullBreakdown) = a3;
  if (a3)
  {
    v58 = v11;
    v15 = *(a3 + 16);
    if (v15)
    {
      v53 = v8;
      v54 = v7;
      v55 = a2;
      v56 = a1;
      v57 = v3;

      v16 = v15 - 1;
      for (i = 32; ; i += 120)
      {
        v18 = *(a3 + i + 96);
        v19 = *(a3 + i + 112);
        v20 = *(a3 + i + 64);
        v61 = *(a3 + i + 80);
        v21 = *(a3 + i);
        v22 = *(a3 + i + 32);
        v23 = *(a3 + i + 48);
        v60[1] = *(a3 + i + 16);
        v60[2] = v22;
        v60[0] = v21;
        v63 = v19;
        v62 = v18;
        v60[3] = v23;
        v60[4] = v20;
        v24 = v61;
        v25 = *(a3 + i);
        v26 = *(a3 + i + 16);
        v27 = *(a3 + i + 48);
        v66[2] = *(a3 + i + 32);
        v66[3] = v27;
        v66[0] = v25;
        v66[1] = v26;
        v28 = *(a3 + i + 64);
        v29 = *(a3 + i + 80);
        v30 = *(a3 + i + 96);
        v67 = *(a3 + i + 112);
        v66[5] = v29;
        v66[6] = v30;
        v66[4] = v28;
        sub_6B0F8(v60, v59);
        sub_6B0F8(v60, v59);
        v31 = v24;
        sub_63DC8(v66, v24, v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_70FEC(0, *(v14 + 2) + 1, 1, v14);
        }

        v33 = *(v14 + 2);
        v32 = *(v14 + 3);
        if (v33 >= v32 >> 1)
        {
          v14 = sub_70FEC((v32 > 1), v33 + 1, 1, v14);
        }

        sub_6B130(v60);
        *(v14 + 2) = v33 + 1;
        v34 = &v14[160 * v33];
        v35 = v64[1];
        *(v34 + 2) = v64[0];
        *(v34 + 3) = v35;
        v36 = v64[5];
        v38 = v64[2];
        v37 = v64[3];
        *(v34 + 6) = v64[4];
        *(v34 + 7) = v36;
        *(v34 + 4) = v38;
        *(v34 + 5) = v37;
        v39 = v64[7];
        v40 = v65[0];
        v41 = v64[6];
        *(v34 + 169) = *(v65 + 9);
        *(v34 + 9) = v39;
        *(v34 + 10) = v40;
        *(v34 + 8) = v41;
        if (!v16)
        {
          break;
        }

        --v16;
      }

      a1 = v56;
      v3 = v57;
      LOBYTE(a2) = v55;
      v8 = v53;
      v7 = v54;
    }

    v11 = v58;
  }

  v42 = *(v14 + 2);
  if (v42)
  {
    v43 = sub_8D6F0();
    v45 = v42 - *v43;
    if (__OFSUB__(v42, *v43))
    {
      __break(1u);
    }

    else
    {
      v46 = -*v43 < 0;
      if (v45 <= v42)
      {
        v47 = *(v14 + 2);
        if (v45 <= v47 && v47 >= v42)
        {
          v44 = v45 & ~(v45 >> 63);
          if (v47 == v42 - v44)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        sub_71834(v14, (v14 + 32), v44, (2 * v42) | 1);
        v51 = v50;

        v14 = v51;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_21:
  *(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__dailyBreakdown) = v14;

  sub_115750();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate, v11, v7);
  if (a2)
  {
    a1 = *(v14 + 2) - 1;
  }

  *(v3 + 16) = a1;
  sub_6E7DC();

  return v3;
}

uint64_t sub_6DCC8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  swift_beginAccess();
  v10 = *(v5 + v9);

  LOBYTE(a3) = a3(v11, a1);

  if (a3)
  {
    v12 = *(v5 + v9);
    *(v5 + v9) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15 = __chkstk_darwin(KeyPath);
    v16 = v5;
    v17 = a1;
    (*(*v5 + 592))(v15, a5);
  }
}

void sub_6DDF8(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + 176);
  if (v3() < 0 || (v4 = (*v1 + 272), v5 = *v4, v6 = *((*v4)() + 16), v7 = , !v6))
  {
    sub_719C4(&v40);
    goto LABEL_7;
  }

  v8 = (v3)(v7);
  v9 = v5();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v9 + 16))
  {
    v10 = (v9 + 160 * v8);
    v11 = v10[3];
    v22 = v10[2];
    v23 = v11;
    v12 = v10[4];
    v13 = v10[5];
    v14 = v10[7];
    v26 = v10[6];
    v27 = v14;
    v24 = v12;
    v25 = v13;
    v15 = v10[8];
    v16 = v10[9];
    v17 = v10[10];
    *&v30[9] = *(v10 + 169);
    v29 = v16;
    *v30 = v17;
    v28 = v15;
    sub_68C74(&v22, &v40);

    v37 = v28;
    v38 = v29;
    v39[0] = *v30;
    *(v39 + 9) = *&v30[9];
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    v31 = v22;
    v32 = v23;
    nullsub_4(&v31);
    v46 = v37;
    v47 = v38;
    v48[0] = v39[0];
    *(v48 + 9) = *(v39 + 9);
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v40 = v31;
    v41 = v32;
LABEL_7:
    v18 = v47;
    a1[6] = v46;
    a1[7] = v18;
    a1[8] = v48[0];
    *(a1 + 137) = *(v48 + 9);
    v19 = v43;
    a1[2] = v42;
    a1[3] = v19;
    v20 = v45;
    a1[4] = v44;
    a1[5] = v20;
    v21 = v41;
    *a1 = v40;
    a1[1] = v21;
    return;
  }

  __break(1u);
}

uint64_t sub_6DFD4@<X0>(char *a1@<X8>)
{
  v3 = sub_115760();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v1 + 400);
  v9(v20, v6);
  v35[6] = v20[6];
  v35[7] = v20[7];
  v36[0] = v21[0];
  *(v36 + 9) = *(v21 + 9);
  v35[2] = v20[2];
  v35[3] = v20[3];
  v35[4] = v20[4];
  v35[5] = v20[5];
  v35[0] = v20[0];
  v35[1] = v20[1];
  if (sub_719E4(v35) == 1 || (v37 = *(&v36[0] + 1), sub_479B4(&v37, v33, &qword_1838E0, &qword_1272D8), v10 = sub_488C8(v20, &qword_1838E8, &unk_1272E0), (v11 = v37) == 0))
  {
    v17 = 1;
  }

  else
  {
    v9(v22, v10);
    v30 = v22[6];
    v31 = v22[7];
    v32[0] = v23[0];
    *(v32 + 9) = *(v23 + 9);
    v26 = v22[2];
    v27 = v22[3];
    v28 = v22[4];
    v29 = v22[5];
    v24 = v22[0];
    v25 = v22[1];
    if (sub_719E4(&v24) == 1)
    {
      goto LABEL_5;
    }

    v33[6] = v30;
    v33[7] = v31;
    v34[0] = v32[0];
    *(v34 + 9) = *(v32 + 9);
    v33[2] = v26;
    v33[3] = v27;
    v33[4] = v28;
    v33[5] = v29;
    v33[0] = v24;
    v33[1] = v25;
    *&v12 = COERCE_DOUBLE(sub_6373C());
    v14 = v13;
    sub_488C8(v22, &qword_1838E8, &unk_1272E0);
    if (v14)
    {
LABEL_5:
      sub_115750();
      sub_115710();
      v16 = v15;
      (*(v4 + 8))(v8, v3);
    }

    else
    {
      v16 = *&v12;
    }

    sub_D5810(v11, a1, v16);
    v17 = 0;
  }

  v18 = type metadata accessor for BUIChartViewData(0);
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t sub_6E2AC()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 400))(v14, v4);
  v22 = v14[6];
  v23 = v14[7];
  v24[0] = v15[0];
  *(v24 + 9) = *(v15 + 9);
  v18 = v14[2];
  v19 = v14[3];
  v20 = v14[4];
  v21 = v14[5];
  v16 = v14[0];
  v17 = v14[1];
  if (sub_719E4(&v16) != 1)
  {
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24[0];
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    sub_479B4(&v25, &v13, &qword_1835C8, &qword_1259C0);
    sub_488C8(v14, &qword_1838E8, &unk_1272E0);
    if (v29)
    {
      if ((BYTE8(v26) & 1) == 0 && (BYTE8(v27) & 1) == 0)
      {
        sub_115700();
        v8 = sub_8D8B4()[7];
        isa = sub_1156B0().super.isa;
        v10 = [v8 stringFromDate:isa];

        v11 = sub_1171B0();
        sub_488C8(&v25, &qword_1835C8, &qword_1259C0);
        (*(v2 + 8))(v6, v1);
        return v11;
      }

      sub_488C8(&v25, &qword_1835C8, &qword_1259C0);
    }
  }

  return 0;
}

unint64_t *sub_6E52C()
{
  (*(*v0 + 400))(v22);
  v30 = v22[6];
  v31 = v22[7];
  v32[0] = v23[0];
  *(v32 + 9) = *(v23 + 9);
  v26 = v22[2];
  v27 = v22[3];
  v28 = v22[4];
  v29 = v22[5];
  v24 = v22[0];
  v25 = v22[1];
  v1 = sub_719E4(&v24);
  if (v1 != 1)
  {
    v32[8] = v30;
    v32[9] = v31;
    v33[0] = v32[0];
    *(v33 + 9) = *(v32 + 9);
    v32[4] = v26;
    v32[5] = v27;
    v32[6] = v28;
    v32[7] = v29;
    v32[2] = v24;
    v32[3] = v25;
    v2 = sub_637F8();
    v1 = sub_488C8(v22, &qword_1838E8, &unk_1272E0);
    if (v2)
    {
      return v2;
    }
  }

  v3 = (*(*v0 + 272))(v1);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return &_swiftEmptyArrayStorage;
  }

  v21 = &_swiftEmptyArrayStorage;
  sub_7122C(0, v4, 0);
  v5 = 32;
  v2 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v6 = *(v3 + v5 + 16);
    v34[0] = *(v3 + v5);
    v34[1] = v6;
    v7 = *(v3 + v5 + 32);
    v8 = *(v3 + v5 + 48);
    v9 = *(v3 + v5 + 80);
    v34[4] = *(v3 + v5 + 64);
    v34[5] = v9;
    v34[2] = v7;
    v34[3] = v8;
    v10 = *(v3 + v5 + 96);
    v11 = *(v3 + v5 + 112);
    v12 = *(v3 + v5 + 128);
    *(v35 + 9) = *(v3 + v5 + 137);
    v34[7] = v11;
    v35[0] = v12;
    v34[6] = v10;
    sub_68C74(v34, v20);
    v13 = COERCE_DOUBLE(sub_63764());
    v15 = v14;
    result = sub_68CAC(v34);
    v17 = (v15 & 1) != 0 ? 0.0 : v13;
    if ((v15 & 1) == 0 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      break;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_19;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    v21 = v2;
    v19 = v2[2];
    v18 = v2[3];
    if (v19 >= v18 >> 1)
    {
      sub_7122C((v18 > 1), v19 + 1, 1);
      v2 = v21;
    }

    v2[2] = v19 + 1;
    v2[v19 + 4] = v17;
    v5 += 160;
    if (!--v4)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_6E7DC()
{
  v1 = v0;
  (*(*v0 + 488))(&_swiftEmptyArrayStorage);
  v2 = (*(*v0 + 536))(&_swiftEmptyArrayStorage);
  (*(*v0 + 400))(v68, v2);
  v76 = v68[6];
  v77 = v68[7];
  v78[0] = v69[0];
  *(v78 + 9) = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  result = sub_719E4(&v70);
  if (result != 1)
  {
    v80 = v75;
    v81 = v76;
    v82 = v77;
    v83 = v78[0];
    v79[0] = v71;
    v79[1] = v72;
    v79[2] = v73;
    v79[3] = v74;
    sub_479B4(v79, &v58, &qword_1835C8, &qword_1259C0);
    result = sub_488C8(v68, &qword_1838E8, &unk_1272E0);
    v4 = v80;
    if (v80)
    {
      v5 = *(*(&v80 + 1) + 16);
      if (v5)
      {
        v6 = (*(&v80 + 1) + 40);
        do
        {
          if (*(v4 + 16))
          {
            v7 = *(v6 - 1);
            v8 = *v6;

            v9 = sub_64F08(v7, v8);
            v11 = v10;

            if (v11)
            {
              v12 = *(v4 + 56) + 152 * v9;
              v13 = *(v12 + 16);
              v58 = *v12;
              v59 = v13;
              v14 = *(v12 + 80);
              v16 = *(v12 + 32);
              v15 = *(v12 + 48);
              v62 = *(v12 + 64);
              v63 = v14;
              v60 = v16;
              v61 = v15;
              v17 = *(v12 + 96);
              v18 = *(v12 + 112);
              v19 = *(v12 + 128);
              v67 = *(v12 + 144);
              v65 = v18;
              v66 = v19;
              v64 = v17;
              if (*(&v17 + 1) > 0.0)
              {
                v20 = v58;
                if (v58 != 6)
                {
                  v57 = v58;
                  v56[150] = 0;
                  sub_6B280(&v58, v56);
                  sub_68F60();
                  if (sub_117160() & 1) != 0 || (v56[0] = v20, v57 = 1, (sub_117160()) && *(&v60 + 1) && (v60 == __PAIR128__(0xEA00000000007070, 0x41646574656C6544) || (sub_1179E0()))
                  {
                    v21 = (*(*v1 + 496))(v56);
                    v23 = v22;
                    v24 = *v22;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v23 = v24;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v24 = sub_70EC8(0, *(v24 + 2) + 1, 1, v24);
                      *v23 = v24;
                    }

                    v27 = *(v24 + 2);
                    v26 = *(v24 + 3);
                    v28 = v27 + 1;
                    if (v27 >= v26 >> 1)
                    {
                      v53 = sub_70EC8((v26 > 1), v27 + 1, 1, v24);
                      v28 = v27 + 1;
                      v24 = v53;
                      *v23 = v53;
                    }

                    *(v24 + 2) = v28;
                    v29 = &v24[152 * v27];
                    v30 = v59;
                    *(v29 + 2) = v58;
                    *(v29 + 3) = v30;
                    v31 = v60;
                    v32 = v61;
                    v33 = v63;
                    *(v29 + 6) = v62;
                    *(v29 + 7) = v33;
                    *(v29 + 4) = v31;
                    *(v29 + 5) = v32;
                    v34 = v64;
                    v35 = v65;
                    v36 = v66;
                    *(v29 + 88) = v67;
                    *(v29 + 9) = v35;
                    *(v29 + 10) = v36;
                    *(v29 + 8) = v34;
                    v21(v56, 0);
                  }

                  else
                  {
                    v56[0] = v20;
                    v57 = 1;
                    if (sub_117160() & 1) != 0 || (v56[0] = v20, v57 = 4, (sub_117160()))
                    {
                      v37 = (*(*v1 + 544))(v56);
                      v39 = v38;
                      v40 = *v38;
                      v41 = swift_isUniquelyReferenced_nonNull_native();
                      *v39 = v40;
                      v55 = v37;
                      if ((v41 & 1) == 0)
                      {
                        v40 = sub_70EC8(0, *(v40 + 2) + 1, 1, v40);
                        *v39 = v40;
                      }

                      v43 = *(v40 + 2);
                      v42 = *(v40 + 3);
                      v44 = v43 + 1;
                      if (v43 >= v42 >> 1)
                      {
                        v54 = sub_70EC8((v42 > 1), v43 + 1, 1, v40);
                        v44 = v43 + 1;
                        v40 = v54;
                        *v39 = v54;
                      }

                      *(v40 + 2) = v44;
                      v45 = &v40[152 * v43];
                      v46 = v59;
                      *(v45 + 2) = v58;
                      *(v45 + 3) = v46;
                      v47 = v60;
                      v48 = v61;
                      v49 = v63;
                      *(v45 + 6) = v62;
                      *(v45 + 7) = v49;
                      *(v45 + 4) = v47;
                      *(v45 + 5) = v48;
                      v50 = v64;
                      v51 = v65;
                      v52 = v66;
                      *(v45 + 88) = v67;
                      *(v45 + 9) = v51;
                      *(v45 + 10) = v52;
                      *(v45 + 8) = v50;
                      v55(v56, 0);
                    }

                    else
                    {
                      sub_6AAAC(&v58);
                    }
                  }
                }
              }
            }
          }

          v6 += 2;
          --v5;
        }

        while (v5);
      }

      return sub_488C8(v79, &qword_1835C8, &qword_1259C0);
    }
  }

  return result;
}

uint64_t type metadata accessor for ShowAllUsageViewModel()
{
  result = qword_18C0A0;
  if (!qword_18C0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6EE64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result;
  return result;
}

uint64_t sub_6EEB8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 488);

  return v3(v4);
}

void (*sub_6EF14(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel);
  sub_115920();

  v4[7] = sub_6EDF0();
  return sub_6F064;
}

uint64_t sub_6F0E4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 584))();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_6F170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_6F1C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 536);

  return v3(v4);
}

void (*sub_6F220(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 584))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_71CFC(&qword_1838D8, type metadata accessor for ShowAllUsageViewModel);
  sub_115920();

  v4[7] = sub_6F070();
  return sub_6F370;
}

void sub_6F37C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_115910();

  free(v1);
}

uint64_t sub_6F410(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_66DE0(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  v49 = result;
  v50 = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel_fullBreakdown);
  if (!v7)
  {

LABEL_19:
    type metadata accessor for AppDetailViewModel();
    sub_719FC(a1, v69);
    v42 = &_swiftEmptyArrayStorage;
    v43 = v69;
    v44 = 0;
    v45 = 1;
    return sub_F77AC(v42, v44, v45, v43);
  }

  v47 = v1;
  v48 = a1;
  v52 = *(v7 + 16);
  if (!v52)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_21:

    type metadata accessor for AppDetailViewModel();
    v46 = (*(*v47 + 176))();
    sub_719FC(v48, &v59);
    v43 = &v59;
    v42 = v10;
    v44 = v46;
    v45 = 0;
    return sub_F77AC(v42, v44, v45, v43);
  }

  v8 = 0;
  v9 = v7 + 64;
  v10 = &_swiftEmptyArrayStorage;
  v51 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel_fullBreakdown);
  while (v8 < *(v7 + 16))
  {
    v54 = *(v9 - 16);
    v11 = *(v9 - 8);
    v12 = *v9;
    v53 = *(v9 + 8);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    v15 = *(v9 + 48);
    v16 = *(v9 + 64);
    if (*(v13 + 16))
    {
      v17 = *(v9 + 64);

      v18 = v15;
      v19 = sub_64F08(v49, v50);
      if (v20)
      {
        v21 = (*(v13 + 56) + 152 * v19);
        v22 = v21[1];
        v55[0] = *v21;
        v55[1] = v22;
        v23 = v21[5];
        v25 = v21[2];
        v24 = v21[3];
        v55[4] = v21[4];
        v55[5] = v23;
        v55[2] = v25;
        v55[3] = v24;
        v26 = v21[6];
        v27 = v21[7];
        v28 = v21[8];
        v56 = *(v21 + 72);
        v55[7] = v27;
        v55[8] = v28;
        v55[6] = v26;
        memmove(__dst, v21, 0x92uLL);
        nullsub_4(__dst);
        sub_6B280(v55, &v59);
      }

      else
      {
        sub_68BEC(__dst);
      }

      v65 = __dst[6];
      v66 = __dst[7];
      v67 = __dst[8];
      v68 = v58;
      v61 = __dst[2];
      v62 = __dst[3];
      v63 = __dst[4];
      v64 = __dst[5];
      v59 = __dst[0];
      v60 = __dst[1];
    }

    else
    {
      sub_68BEC(&v59);

      v18 = v15;
    }

    v71[6] = v65;
    v71[7] = v66;
    v71[8] = v67;
    v72 = v68;
    v71[2] = v61;
    v71[3] = v62;
    v71[4] = v63;
    v71[5] = v64;
    v71[0] = v59;
    v71[1] = v60;
    sub_63060(v54, v11, v12, v53, v71, v69);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_71108(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v7 = v51;
    v30 = v10[2];
    v29 = v10[3];
    if (v30 >= v29 >> 1)
    {
      result = sub_71108((v29 > 1), v30 + 1, 1, v10);
      v10 = result;
    }

    ++v8;
    v10[2] = v30 + 1;
    v31 = &v10[27 * v30];
    v32 = v69[1];
    *(v31 + 2) = v69[0];
    *(v31 + 3) = v32;
    v33 = v69[2];
    v34 = v69[3];
    v35 = v69[5];
    *(v31 + 6) = v69[4];
    *(v31 + 7) = v35;
    *(v31 + 4) = v33;
    *(v31 + 5) = v34;
    v36 = v69[6];
    v37 = v69[7];
    v38 = v69[9];
    *(v31 + 10) = v69[8];
    *(v31 + 11) = v38;
    *(v31 + 8) = v36;
    *(v31 + 9) = v37;
    v39 = v69[10];
    v40 = v69[11];
    v41 = v69[12];
    *(v31 + 120) = v70;
    *(v31 + 13) = v40;
    *(v31 + 14) = v41;
    *(v31 + 12) = v39;
    v9 += 120;
    if (v52 == v8)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void *sub_6F7C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  (*(*v1 + 400))(v49);
  v57 = v49[6];
  v58 = v49[7];
  v59[0] = v50[0];
  *(v59 + 9) = *(v50 + 9);
  v53 = v49[2];
  v54 = v49[3];
  v55 = v49[4];
  v56 = v49[5];
  v51 = v49[0];
  v52 = v49[1];
  if (sub_719E4(&v51) == 1)
  {
    goto LABEL_7;
  }

  v62 = v56;
  v63 = v57;
  v64 = v58;
  v65 = v59[0];
  v60[0] = v52;
  v60[1] = v53;
  v60[2] = v54;
  v61 = v55;
  sub_479B4(v60, __src, &qword_1835C8, &qword_1259C0);
  sub_488C8(v49, &qword_1838E8, &unk_1272E0);
  if (!v62)
  {
    goto LABEL_7;
  }

  v4 = [objc_opt_self() localizedStringWithPercentage:*(&v61 + 1)];
  if (!v4)
  {
    sub_488C8(v60, &qword_1835C8, &qword_1259C0);
LABEL_7:
    sub_71A60(__src);
    return memcpy(a1, __src, 0x128uLL);
  }

  v5 = v4;
  v6 = sub_1171B0();
  v8 = v7;

  v9 = (*(*v2 + 176))();
  v10 = *((*(*v2 + 272))() + 16);

  if (v9 >= (v10 >> 1))
  {
    v11 = sub_116400();
  }

  else
  {
    v11 = sub_1163F0();
  }

  v13 = v11;
  v46 = 0;
  sub_6FD98(v6, v8, v2, __src);
  v36 = *&__src[96];
  v37 = *&__src[112];
  v38 = *&__src[128];
  v39 = *&__src[144];
  v32 = *&__src[32];
  v33 = *&__src[48];
  v34 = *&__src[64];
  v35 = *&__src[80];
  v30 = *__src;
  v31 = *&__src[16];
  v40[6] = *&__src[96];
  v40[7] = *&__src[112];
  v40[8] = *&__src[128];
  v40[9] = *&__src[144];
  v40[2] = *&__src[32];
  v40[3] = *&__src[48];
  v40[4] = *&__src[64];
  v40[5] = *&__src[80];
  v40[0] = *__src;
  v40[1] = *&__src[16];
  sub_479B4(&v30, v44, &qword_1838F0, &qword_1272F0);
  sub_488C8(v40, &qword_1838F0, &qword_1272F0);

  *&v45[103] = v36;
  *&v45[119] = v37;
  *&v45[135] = v38;
  *&v45[151] = v39;
  *&v45[39] = v32;
  *&v45[55] = v33;
  *&v45[71] = v34;
  *&v45[87] = v35;
  *&v45[7] = v30;
  *&v45[23] = v31;
  v14 = v46;
  v15 = sub_116600();
  sub_115FD0();
  *&__src[129] = *&v45[112];
  *&__src[145] = *&v45[128];
  *&__src[161] = *&v45[144];
  *&__src[65] = *&v45[48];
  *&__src[81] = *&v45[64];
  *&__src[97] = *&v45[80];
  *&__src[113] = *&v45[96];
  *&__src[17] = *v45;
  *&__src[33] = *&v45[16];
  v47 = 0;
  *__src = v13;
  *&__src[8] = 0;
  __src[16] = v14;
  *&__src[176] = *&v45[159];
  *&__src[49] = *&v45[32];
  __src[184] = v15;
  *&__src[192] = v16;
  *&__src[200] = v17;
  *&__src[208] = v18;
  *&__src[216] = v19;
  __src[224] = 0;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v2;
  type metadata accessor for CGSize(0);
  swift_retain_n();
  sub_116DA0();
  v22 = v44[0];
  v23 = v44[1];
  v24 = *&v44[2];
  v25 = *&v44[3];
  sub_46F9C(&qword_1838F8, &qword_1272F8);
  v26 = sub_71B78();
  sub_8EB40(v22, v23, v26, v48, v24, v25);

  v41[12] = *&__src[192];
  v41[13] = *&__src[208];
  v42 = __src[224];
  v41[8] = *&__src[128];
  v41[9] = *&__src[144];
  v41[10] = *&__src[160];
  v41[11] = *&__src[176];
  v41[4] = *&__src[64];
  v41[5] = *&__src[80];
  v41[6] = *&__src[96];
  v41[7] = *&__src[112];
  v41[0] = *__src;
  v41[1] = *&__src[16];
  v41[2] = *&__src[32];
  v41[3] = *&__src[48];
  sub_488C8(v41, &qword_1838F8, &qword_1272F8);
  v27 = memcpy(__dst, v48, sizeof(__dst));
  (*(*v2 + 320))(v27);
  v29 = v28;
  sub_488C8(v60, &qword_1835C8, &qword_1259C0);
  memcpy(v44, __dst, 0x118uLL);
  v44[35] = 0;
  *&v44[36] = v29 + -2.0 + -8.0;
  nullsub_4(v44);
  memcpy(__src, v44, sizeof(__src));
  return memcpy(a1, __src, 0x128uLL);
}

uint64_t sub_6FD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a3;
  v100 = a4;
  v6 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v94 - v8;
  v10 = sub_116740();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v156 = a1;
  *(&v156 + 1) = a2;
  v15 = sub_4869C();

  v99 = v15;
  v16 = sub_116900();
  v101 = v18;
  v102 = v17;
  v20 = v19;
  (*(v11 + 104))(v14, enum case for Font.TextStyle.title(_:), v10);
  v21 = enum case for Font.Design.rounded(_:);
  v22 = sub_116690();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v9, v21, v22);
  (*(v23 + 56))(v9, 0, 1, v22);
  sub_1166E0();
  sub_488C8(v9, &qword_182FF8, &qword_124E30);
  (*(v11 + 8))(v14, v10);
  v24 = v95;
  v25 = v102;
  v26 = sub_1168C0();
  v103 = v27;
  v29 = v28;

  sub_48928(v16, v25, v20 & 1);

  (*(*v24 + 400))(v145, v30);
  v153 = v145[6];
  v154 = v145[7];
  v155[0] = v146[0];
  *(v155 + 9) = *(v146 + 9);
  v149 = v145[2];
  v150 = v145[3];
  v151 = v145[4];
  v152 = v145[5];
  v147 = v145[0];
  v148 = v145[1];
  if (sub_719E4(&v147) == 1)
  {
    goto LABEL_4;
  }

  v162 = v153;
  v163 = v154;
  v164[0] = v155[0];
  *(v164 + 9) = *(v155 + 9);
  v158 = v149;
  v159 = v150;
  v160 = v151;
  v161 = v152;
  v156 = v147;
  v157 = v148;
  v31 = sub_63788();
  sub_488C8(v145, &qword_1838E8, &unk_1272E0);
  if ((v31 & 1) == 0)
  {
LABEL_4:
    v32 = sub_116B30();
  }

  else
  {
    v32 = sub_116B80();
  }

  *&v112 = v32;
  v33 = v103;
  v34 = sub_116890();
  v35 = v26;
  v37 = v36;
  v39 = v38;
  sub_48928(v35, v33, v29 & 1);

  sub_1166B0();
  v40 = sub_116810();
  v96 = v41;
  v97 = v40;
  v43 = v42;
  v98 = v44;
  sub_48928(v34, v37, v39 & 1);

  LODWORD(v103) = sub_116620();
  sub_115FD0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  LODWORD(v101) = v43 & 1;
  v141 = v43 & 1;
  v138 = 0;
  LODWORD(v102) = sub_116610();
  v53 = sub_115FD0();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v142 = 0;
  *&v112 = (*(*v24 + 416))(v53);
  *(&v112 + 1) = v62;
  v63 = sub_116900();
  v65 = v64;
  v67 = v66;
  sub_116700();
  v68 = sub_1168C0();
  v70 = v69;
  v72 = v71;

  sub_48928(v63, v65, v67 & 1);

  sub_1166B0();
  v73 = sub_116810();
  v75 = v74;
  LOBYTE(v63) = v76;
  sub_48928(v68, v70, v72 & 1);

  LODWORD(v112) = sub_1164D0();
  v77 = sub_116890();
  v79 = v78;
  LOBYTE(v68) = v80;
  v82 = v81;
  sub_48928(v73, v75, v63 & 1);

  v84 = v96;
  v83 = v97;
  *&v105 = v97;
  *(&v105 + 1) = v96;
  LOBYTE(v106) = v101;
  *(&v106 + 1) = *v140;
  DWORD1(v106) = *&v140[3];
  v85 = v98;
  *(&v106 + 1) = v98;
  LOBYTE(v107) = v103;
  *(&v107 + 1) = *v139;
  DWORD1(v107) = *&v139[3];
  *(&v107 + 1) = v46;
  *&v108 = v48;
  *(&v108 + 1) = v50;
  *&v109 = v52;
  BYTE8(v109) = 0;
  *(&v109 + 9) = *v144;
  HIDWORD(v109) = *&v144[3];
  LOBYTE(v110) = v102;
  DWORD1(v110) = *&v143[3];
  *(&v110 + 1) = *v143;
  *(&v110 + 1) = v55;
  *&v111[0] = v57;
  *(&v111[0] + 1) = v59;
  *&v111[1] = v61;
  BYTE8(v111[1]) = 0;
  v114 = v107;
  v115 = v108;
  v112 = v105;
  v113 = v106;
  *(v118 + 9) = *(v111 + 9);
  v117 = v110;
  v118[0] = v111[0];
  v116 = v109;
  v104 = v68 & 1;
  v86 = v105;
  v87 = v106;
  v88 = v108;
  v89 = v100;
  *(v100 + 32) = v107;
  *(v89 + 48) = v88;
  *v89 = v86;
  *(v89 + 16) = v87;
  v90 = v116;
  v91 = v117;
  v92 = v118[1];
  *(v89 + 96) = v118[0];
  *(v89 + 112) = v92;
  *(v89 + 64) = v90;
  *(v89 + 80) = v91;
  *(v89 + 128) = v77;
  *(v89 + 136) = v79;
  *(v89 + 144) = v68 & 1;
  *(v89 + 152) = v82;
  sub_479B4(&v105, v119, &qword_183CF8, &qword_1273E8);
  sub_488B8(v77, v79, v68 & 1);

  sub_48928(v77, v79, v68 & 1);

  v119[0] = v83;
  v119[1] = v84;
  v120 = v101;
  *v121 = *v140;
  *&v121[3] = *&v140[3];
  v122 = v85;
  v123 = v103;
  *v124 = *v139;
  *&v124[3] = *&v139[3];
  v125 = v46;
  v126 = v48;
  v127 = v50;
  v128 = v52;
  v129 = 0;
  *&v130[3] = *&v144[3];
  *v130 = *v144;
  v131 = v102;
  *&v132[3] = *&v143[3];
  *v132 = *v143;
  v133 = v55;
  v134 = v57;
  v135 = v59;
  v136 = v61;
  v137 = 0;
  return sub_488C8(v119, &qword_183CF8, &qword_1273E8);
}

void sub_70550()
{
  (*(*v0 + 400))(v5);
  v13 = v5[6];
  v14 = v5[7];
  v15[0] = v6[0];
  *(v15 + 9) = *(v6 + 9);
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[4];
  v12 = v5[5];
  v7 = v5[0];
  v8 = v5[1];
  if (sub_719E4(&v7) != 1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15[0];
    v16[0] = v8;
    v16[1] = v9;
    v16[2] = v10;
    v17 = v11;
    sub_479B4(v16, v4, &qword_1835C8, &qword_1259C0);
    v1 = sub_488C8(v5, &qword_1838E8, &unk_1272E0);
    if (v18)
    {
      v2 = *(&v17 + 1);
      v4[0] = (*(*v0 + 416))(v1);
      v4[1] = v3;
      v22._countAndFlagsBits = 8238;
      v22._object = 0xE200000000000000;
      sub_117220(v22);
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v2 > -9.22337204e18)
      {
        if (v2 < 9.22337204e18)
        {
          v23._countAndFlagsBits = sub_1179B0();
          sub_117220(v23);

          v24._countAndFlagsBits = 37;
          v24._object = 0xE100000000000000;
          sub_117220(v24);
          sub_488C8(v16, &qword_1835C8, &qword_1259C0);
          return;
        }

        goto LABEL_10;
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }
  }
}

uint64_t sub_70894()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__selectedDate;
  v2 = sub_115760();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__dailyBreakdown);

  v4 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel_fullBreakdown);

  v5 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__appBreakdownEntries);

  v6 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel__nonAppBreakdownEntries);

  v7 = OBJC_IVAR____TtC14BatteryUsageUI21ShowAllUsageViewModel___observationRegistrar;
  v8 = sub_115940();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*sub_70B0C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 336))();
  return sub_55900;
}

double sub_70D20@<D0>(_OWORD *a1@<X8>)
{
  (*(**v1 + 400))(v8);
  v3 = v8[7];
  a1[6] = v8[6];
  a1[7] = v3;
  a1[8] = v9[0];
  *(a1 + 137) = *(v9 + 9);
  v4 = v8[3];
  a1[2] = v8[2];
  a1[3] = v4;
  v5 = v8[5];
  a1[4] = v8[4];
  a1[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  a1[1] = v7;
  return result;
}

uint64_t (*sub_70E34(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 240))();
  return sub_57B6C;
}

char *sub_70EC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_46F9C(&qword_183D18, &unk_1290F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_70FEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_46F9C(&qword_183D10, &unk_127400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_71108(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_46F9C(&qword_183D00, &unk_1273F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7122C(char *a1, int64_t a2, char a3)
{
  result = sub_7124C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_7124C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_46F9C(&qword_183D08, &unk_127E20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_71350(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v69 = v2;
  v70 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 112);
    v9 = *(v5 + 80);
    v52 = *(v5 + 96);
    v53 = v8;
    v10 = *(v5 + 112);
    v54 = *(v5 + 128);
    v11 = *(v5 + 48);
    v12 = *(v5 + 16);
    v48 = *(v5 + 32);
    v49 = v11;
    v13 = *(v5 + 48);
    v14 = *(v5 + 80);
    v50 = *(v5 + 64);
    v51 = v14;
    v15 = *(v5 + 16);
    v47[0] = *v5;
    v47[1] = v15;
    v43 = v52;
    v44 = v10;
    v45 = *(v5 + 128);
    v39 = v48;
    v40 = v13;
    v41 = v50;
    v42 = v9;
    v37 = v47[0];
    v38 = v12;
    v16 = *(v6 + 112);
    v17 = *(v6 + 80);
    v61 = *(v6 + 96);
    v62 = v16;
    v18 = *(v6 + 112);
    v63 = *(v6 + 128);
    v19 = *(v6 + 48);
    v20 = *(v6 + 16);
    v57 = *(v6 + 32);
    v58 = v19;
    v21 = *(v6 + 48);
    v22 = *(v6 + 80);
    v59 = *(v6 + 64);
    v60 = v22;
    v23 = *(v6 + 16);
    v56[0] = *v6;
    v56[1] = v23;
    v33 = v61;
    v34 = v18;
    v35 = *(v6 + 128);
    v29 = v57;
    v30 = v21;
    v31 = v59;
    v32 = v17;
    v55 = *(v5 + 144);
    v46 = *(v5 + 144);
    v64 = *(v6 + 144);
    v36 = *(v6 + 144);
    v27 = v56[0];
    v28 = v20;
    sub_6B280(v47, v26);
    sub_6B280(v56, v26);
    sub_690C0();
    v24 = sub_117160();
    v65[6] = v33;
    v65[7] = v34;
    v65[8] = v35;
    v66 = v36;
    v65[2] = v29;
    v65[3] = v30;
    v65[4] = v31;
    v65[5] = v32;
    v65[0] = v27;
    v65[1] = v28;
    sub_6AAAC(v65);
    v67[6] = v43;
    v67[7] = v44;
    v67[8] = v45;
    v68 = v46;
    v67[2] = v39;
    v67[3] = v40;
    v67[4] = v41;
    v67[5] = v42;
    v67[0] = v37;
    v67[1] = v38;
    sub_6AAAC(v67);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 152;
    v5 += 152;
  }

  return 1;
}

uint64_t sub_7155C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v65 = v2;
  v66 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[5];
    v50 = v5[6];
    v51 = v8;
    v10 = v5[7];
    v52[0] = v5[8];
    *(v52 + 9) = *(v5 + 137);
    v11 = v5[3];
    v12 = v5[1];
    v46 = v5[2];
    v47 = v11;
    v13 = v5[3];
    v14 = v5[5];
    v48 = v5[4];
    v49 = v14;
    v15 = v5[1];
    v45[0] = *v5;
    v45[1] = v15;
    v42 = v50;
    v43 = v10;
    v44[0] = v5[8];
    *(v44 + 9) = *(v5 + 137);
    v38 = v46;
    v39 = v13;
    v40 = v48;
    v41 = v9;
    v36 = v45[0];
    v37 = v12;
    v16 = v6[7];
    v17 = v6[5];
    v58 = v6[6];
    v59 = v16;
    v18 = v6[7];
    v60[0] = v6[8];
    *(v60 + 9) = *(v6 + 137);
    v19 = v6[3];
    v20 = v6[1];
    v54 = v6[2];
    v55 = v19;
    v21 = v6[3];
    v22 = v6[5];
    v56 = v6[4];
    v57 = v22;
    v23 = v6[1];
    v53[0] = *v6;
    v53[1] = v23;
    v33 = v58;
    v34 = v18;
    v35[0] = v6[8];
    *(v35 + 9) = *(v6 + 137);
    v29 = v54;
    v30 = v21;
    v31 = v56;
    v32 = v17;
    v27 = v53[0];
    v28 = v20;
    sub_68C74(v45, v26);
    sub_68C74(v53, v26);
    sub_694C8();
    v24 = sub_117160();
    v61[6] = v33;
    v61[7] = v34;
    v62[0] = v35[0];
    *(v62 + 9) = *(v35 + 9);
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_68CAC(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64[0] = v44[0];
    *(v64 + 9) = *(v44 + 9);
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_68CAC(v63);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

uint64_t sub_717D8(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = (v1[2] + *a1);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

void sub_71834(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_46F9C(&qword_183D10, &unk_127400);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 160);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_7195C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

double sub_719C4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_719E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_719FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_71A60(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_71AE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

unint64_t sub_71B78()
{
  result = qword_183900;
  if (!qword_183900)
  {
    sub_47A1C(&qword_1838F8, &qword_1272F8);
    sub_48800(&qword_183908, &qword_183910, &qword_127300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183900);
  }

  return result;
}

unint64_t sub_71C50()
{
  result = qword_183918;
  if (!qword_183918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183918);
  }

  return result;
}

uint64_t sub_71CA4(uint64_t a1)
{
  result = sub_71CFC(&qword_1839B0, type metadata accessor for ShowAllUsageViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_71CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_71D50()
{
  result = sub_115760();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_115940();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_71E54()
{
  result = qword_183CB8;
  if (!qword_183CB8)
  {
    sub_47A1C(&qword_183CC0, &qword_1273C8);
    sub_71ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183CB8);
  }

  return result;
}

unint64_t sub_71ED8()
{
  result = qword_183CC8;
  if (!qword_183CC8)
  {
    sub_47A1C(&qword_183CD0, &qword_1273D0);
    sub_71F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183CC8);
  }

  return result;
}

unint64_t sub_71F64()
{
  result = qword_183CD8;
  if (!qword_183CD8)
  {
    sub_47A1C(&qword_183CE0, &qword_1273D8);
    sub_71B78();
    sub_48800(&qword_183CE8, &qword_183CF0, &qword_1273E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183CD8);
  }

  return result;
}

uint64_t sub_72034()
{
  v0 = [objc_opt_self() systemGrayColor];
  result = sub_116BE0();
  qword_18C0B8 = result;
  return result;
}

uint64_t sub_72074()
{
  sub_116B40();
  v0 = sub_116BA0();

  qword_18C0C8 = v0;
  return result;
}

id sub_720BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_46F9C(&qword_183D20, &qword_127438);
  sub_116CE0();
  sub_116E80();
  sub_116190();
  v5 = sub_116620();
  sub_115FD0();
  *&v25[72] = v31;
  *&v25[88] = v32;
  *&v25[104] = v33;
  *&v25[120] = v34;
  *&v25[8] = *&v38[8];
  *&v25[24] = v28;
  *&v25[40] = v29;
  *&v25[56] = v30;
  v37 = 0;
  *v25 = *v38;
  v25[136] = v5;
  *&v26 = v6;
  *(&v26 + 1) = v7;
  *&v27 = v8;
  *(&v27 + 1) = v9;
  sub_116CE0();
  swift_getKeyPath();
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D80();

  sub_46F9C(&qword_183D30, &qword_127470);
  v10 = sub_723A8();
  sub_8EB40(v21, v22, v10, v38, v23, v24);

  v35[8] = *&v25[128];
  v35[9] = v26;
  v35[10] = v27;
  v35[4] = *&v25[64];
  v35[5] = *&v25[80];
  v36 = 0;
  v35[6] = *&v25[96];
  v35[7] = *&v25[112];
  v35[0] = *v25;
  v35[1] = *&v25[16];
  v35[2] = *&v25[32];
  v35[3] = *&v25[48];
  sub_488C8(v35, &qword_183D30, &qword_127470);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = v50;
  *(a3 + 192) = v49;
  *(a3 + 208) = v12;
  *(a3 + 224) = v51;
  v13 = v46;
  *(a3 + 128) = v45;
  *(a3 + 144) = v13;
  v14 = v48;
  *(a3 + 160) = v47;
  *(a3 + 176) = v14;
  v15 = v42;
  *(a3 + 64) = v41;
  *(a3 + 80) = v15;
  v16 = v44;
  *(a3 + 96) = v43;
  *(a3 + 112) = v16;
  v17 = *&v38[16];
  *a3 = *v38;
  *(a3 + 16) = v17;
  v18 = v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = v18;
  *(a3 + 232) = sub_72554;
  *(a3 + 240) = v11;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;

  return a1;
}

unint64_t sub_723A8()
{
  result = qword_183D38;
  if (!qword_183D38)
  {
    sub_47A1C(&qword_183D30, &qword_127470);
    sub_72434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183D38);
  }

  return result;
}

unint64_t sub_72434()
{
  result = qword_183D40;
  if (!qword_183D40)
  {
    sub_47A1C(&qword_183D48, &qword_127478);
    sub_724C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183D40);
  }

  return result;
}

unint64_t sub_724C0()
{
  result = qword_183D50;
  if (!qword_183D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183D50);
  }

  return result;
}

uint64_t sub_72514()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_72554()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_46F9C(&qword_183D20, &qword_127438);
  sub_116CC0();
  sub_4DC6C();
}

uint64_t sub_725AC()
{
  type metadata accessor for ChargingStatusViewModel();
  sub_116CB0();
  return v1;
}

uint64_t sub_725F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = sub_46F9C(&qword_183D58, &qword_127480);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (&v47 - v9);
  v51 = sub_46F9C(&qword_183D60, &qword_127488);
  v11 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v13 = &v47 - v12;
  v49 = sub_46F9C(&qword_183D68, &qword_127490);
  v14 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v50 = &v47 - v15;
  v47 = sub_46F9C(&qword_183D70, &qword_127498);
  v16 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v18 = &v47 - v17;
  v48 = sub_46F9C(&qword_183D78, &qword_1274A0);
  v19 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v21 = &v47 - v20;
  *&v54 = a1;
  *(&v54 + 1) = a2;
  *&v55 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v22 = v53;
  v23 = sub_49CCC();

  v24 = sub_1163F0();
  if (v23)
  {
    *v18 = v24;
    *(v18 + 1) = 0;
    v18[16] = 0;
    v25 = sub_46F9C(&qword_183DE0, &qword_1274D8);
    sub_72B40(a1, a2, a3, &v18[*(v25 + 44)]);
    *&v54 = a1;
    *(&v54 + 1) = a2;
    *&v55 = a3;
    sub_116D60();
    v26 = v53;
    v27 = sub_49CCC();

    v28 = sub_46F9C(&qword_183DB0, &qword_1274C8);
    v29 = sub_48800(&qword_183DB8, &qword_183D70, &qword_127498);
    v30 = sub_73F8C();
    sub_8E234(v27 & 1, sub_733D4, 0, v47, v28, v29, v30, v21);
    sub_488C8(v18, &qword_183D70, &qword_127498);
    v31 = &qword_183D78;
    v32 = &qword_1274A0;
    sub_479B4(v21, v50, &qword_183D78, &qword_1274A0);
    swift_storeEnumTagMultiPayload();
    sub_73ED4();
    sub_74070();
    sub_116470();
    v33 = v21;
  }

  else
  {
    *v13 = v24;
    *(v13 + 1) = 0;
    v13[16] = 0;
    v34 = sub_46F9C(&qword_183D80, &qword_1274A8);
    sub_735C0(a1, a2, a3, &v13[*(v34 + 44)]);
    v35 = sub_116EB0();
    v37 = v36;
    *v10 = sub_116EB0();
    v10[1] = v38;
    v39 = sub_46F9C(&qword_183D88, &qword_1274B0);
    sub_73BF4(v10 + *(v39 + 44));
    sub_116E90();
    v40 = &v13[*(v51 + 36)];
    sub_116190();
    sub_548D0(v10, v40, &qword_183D58, &qword_127480);
    v41 = (v40 + *(sub_46F9C(&qword_183D90, &qword_1274B8) + 36));
    v42 = v59;
    v41[4] = v58;
    v41[5] = v42;
    v41[6] = v60;
    v43 = v55;
    *v41 = v54;
    v41[1] = v43;
    v44 = v57;
    v41[2] = v56;
    v41[3] = v44;
    v45 = (v40 + *(sub_46F9C(&qword_183D98, &qword_1274C0) + 36));
    *v45 = v35;
    v45[1] = v37;
    v31 = &qword_183D60;
    v32 = &qword_127488;
    sub_479B4(v13, v50, &qword_183D60, &qword_127488);
    swift_storeEnumTagMultiPayload();
    sub_73ED4();
    sub_74070();
    sub_116470();
    v33 = v13;
  }

  return sub_488C8(v33, v31, v32);
}

uint64_t sub_72B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_46F9C(&qword_183EB0, &unk_127920);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = &v47 - v12;
  v13 = sub_46F9C(&qword_1840F8, &qword_127D18);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  *&v69 = a1;
  *(&v69 + 1) = a2;
  *&v70 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D90();
  v53 = v62;
  v54 = v63;
  *v20 = sub_116320();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = sub_46F9C(&qword_183DE8, &qword_1274E0);
  sub_74154(a1, a2, a3, &v20[*(v21 + 44)]);
  v22 = sub_116620();
  sub_115FD0();
  v23 = &v20[*(v14 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  *&v69 = a1;
  *(&v69 + 1) = a2;
  *&v70 = a3;
  sub_116D90();
  v49 = *(&v62 + 1);
  v50 = v62;
  v47 = v63;
  *&v69 = a1;
  *(&v69 + 1) = a2;
  *&v70 = a3;
  sub_116D60();
  v28 = v62;
  v29 = sub_48E94();

  v30 = v51;
  sub_72FCC(a1, a2, a3, v51);
  sub_731B0(&v55);
  v48 = v18;
  sub_479B4(v20, v18, &qword_1840F8, &qword_127D18);
  v31 = v52;
  sub_479B4(v30, v52, &qword_183EB0, &unk_127920);
  v32 = *(&v53 + 1);
  *a4 = v53;
  a4[1] = v32;
  a4[2] = v54;
  v33 = sub_46F9C(&qword_184100, &qword_127D20);
  sub_479B4(v18, a4 + v33[12], &qword_1840F8, &qword_127D18);
  v34 = (a4 + v33[16]);
  v35 = v49;
  *v34 = v50;
  *(v34 + 1) = v35;
  v36 = v47;
  *(v34 + 2) = v47;
  v34[3] = v29;
  sub_479B4(v31, a4 + v33[20], &qword_183EB0, &unk_127920);
  v37 = a4 + v33[24];
  v38 = v61;
  v68 = v61;
  v39 = v59;
  v40 = v60;
  v66 = v59;
  v67 = v60;
  v41 = v56;
  v62 = v55;
  v63 = v56;
  v42 = v58;
  v43 = v57;
  v64 = v57;
  v65 = v58;
  *v37 = v55;
  *(v37 + 1) = v41;
  *(v37 + 4) = v39;
  *(v37 + 5) = v40;
  *(v37 + 2) = v43;
  *(v37 + 3) = v42;
  v37[96] = v38;

  v44 = v36;

  v45 = v54;
  sub_479B4(&v62, &v69, &qword_183EB8, &unk_127930);
  sub_488C8(v51, &qword_183EB0, &unk_127920);
  sub_488C8(v20, &qword_1840F8, &qword_127D18);
  v73 = v59;
  v74 = v60;
  v75 = v61;
  v69 = v55;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  sub_488C8(&v69, &qword_183EB8, &unk_127930);
  sub_488C8(v52, &qword_183EB0, &unk_127920);

  sub_488C8(v48, &qword_1840F8, &qword_127D18);
}

uint64_t sub_72FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_46F9C(&qword_183DF0, &qword_1274E8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v13 = v26;
  v14 = sub_510B4();

  if (v14 & 1) != 0 || (v27 = a1, v28 = a2, v29 = a3, sub_116D60(), v15 = v26, v16 = sub_50EDC(), v15, (v16))
  {
    *v12 = sub_116320();
    *(v12 + 1) = 0;
    v12[16] = 0;
    v17 = sub_46F9C(&qword_183DF8, &qword_1274F0);
    sub_75410(a1, a2, a3, &v12[*(v17 + 44)]);
    v18 = sub_116610();
    sub_115FD0();
    v19 = &v12[*(v8 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    sub_548D0(v12, a4, &qword_183DF0, &qword_1274E8);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  return (*(v9 + 56))(a4, v24, 1, v8);
}

void sub_731B0(uint64_t a1@<X8>)
{
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  sub_51FC0();
  v3 = v2;

  if (v3)
  {
    sub_4869C();
    v4 = sub_116900();
    v6 = v5;
    v8 = v7;
    sub_116720();
    v9 = sub_1168C0();
    v28 = v10;
    v29 = v9;
    v27 = v11;

    sub_48928(v4, v6, v8 & 1);

    sub_116D60();
    sub_529CC();

    v12 = sub_116890();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_48928(v29, v28, v27 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v6) = sub_116610();
    sub_115FD0();
    *(&v21 + 1) = v20;
    *(&v23 + 1) = v22;
    v24 = v16 & 1;
    v25 = v6;
    v26 = 1;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v18 = 0;
    KeyPath = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v21 = 0uLL;
    v23 = 0uLL;
  }

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v24;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v26;
  *(a1 + 56) = v25;
  *(a1 + 64) = v21;
  *(a1 + 80) = v23;
  *(a1 + 96) = 0;
}

uint64_t sub_733D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_116EB0();
  v6 = v5;
  v7 = a2 + *(sub_46F9C(&qword_183DB0, &qword_1274C8) + 36);
  sub_73474(v7);
  v8 = (v7 + *(sub_46F9C(&qword_183D98, &qword_1274C0) + 36));
  *v8 = v4;
  v8[1] = v6;
  return sub_479B4(a1, a2, &qword_183D70, &qword_127498);
}

__n128 sub_73474@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_46F9C(&qword_183D58, &qword_127480);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (v12 - v4);
  *v5 = sub_116EB0();
  v5[1] = v6;
  v7 = sub_46F9C(&qword_183D88, &qword_1274B0);
  sub_73BF4(v5 + *(v7 + 44));
  sub_116E90();
  sub_116190();
  sub_548D0(v5, a1, &qword_183D58, &qword_127480);
  v8 = a1 + *(sub_46F9C(&qword_183D90, &qword_1274B8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_735C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_46F9C(&qword_184108, &qword_127D28);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v66 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v65 = &v56[-v12];
  v13 = sub_46F9C(&qword_182EA0, &qword_1248D8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v56[-v15];
  v17 = sub_115520();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v68 = &v56[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v23 = &v56[-v22];
  *&v73 = a1;
  *(&v73 + 1) = a2;
  v74 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D90();
  v63 = *(&v69 + 1);
  v64 = v69;
  v62 = v70;
  *&v60 = a1;
  *&v73 = a1;
  *(&v73 + 1) = a2;
  *(&v60 + 1) = a2;
  v61 = a3;
  v74 = a3;
  sub_116D60();
  v24 = v69;
  sub_493F4(v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_488C8(v16, &qword_182EA0, &qword_1248D8);
    v68 = 0;
    v59 = 0;
    v67 = 0;
    v58 = 0.0;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    (*(v18 + 16))(v68, v23, v17);
    v68 = sub_1168F0();
    v59 = v25;
    v27 = v26;
    v58 = v28;
    (*(v18 + 8))(v23, v17);
    v67 = (v27 & 1);
  }

  v29 = sub_116620();
  v30 = v29;
  v57 = v29;
  sub_115FD0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v83 = 0;
  v39 = v60;
  v73 = v60;
  v40 = v61;
  v74 = v61;
  sub_116D90();
  v41 = v69;
  v42 = v70;
  v73 = v39;
  v74 = v40;
  sub_116D60();
  v43 = v69;
  v44 = sub_48E94();

  v73 = v41;
  v74 = v42;
  v75 = v44;
  sub_79C6C();
  v45 = v65;
  sub_116A70();

  v46 = v66;
  sub_479B4(v45, v66, &qword_184108, &qword_127D28);
  *&v69 = v68;
  v47 = v59;
  *(&v69 + 1) = v59;
  *&v70 = v67;
  v48 = v58;
  *(&v70 + 1) = v58;
  LOBYTE(v71) = v30;
  *(&v71 + 1) = *v84;
  DWORD1(v71) = *&v84[3];
  *(&v71 + 1) = v32;
  *v72 = v34;
  *&v72[8] = v36;
  *&v72[16] = v38;
  v72[24] = 0;
  v49 = v69;
  *(a4 + 40) = v70;
  v50 = v71;
  *(a4 + 72) = *v72;
  *(a4 + 81) = *&v72[9];
  *(a4 + 24) = v49;
  v51 = v63;
  *a4 = v64;
  *(a4 + 8) = v51;
  v52 = v62;
  *(a4 + 16) = v62;
  *(a4 + 56) = v50;
  v53 = sub_46F9C(&qword_184118, &qword_127D30);
  sub_479B4(v46, a4 + *(v53 + 64), &qword_184108, &qword_127D28);

  v54 = v52;
  sub_479B4(&v69, &v73, &qword_184120, &qword_127D38);
  sub_488C8(v45, &qword_184108, &qword_127D28);
  sub_488C8(v46, &qword_184108, &qword_127D28);
  *&v73 = v68;
  *(&v73 + 1) = v47;
  v74 = v67;
  v75 = v48;
  v76 = v57;
  *v77 = *v84;
  *&v77[3] = *&v84[3];
  v78 = v32;
  v79 = v34;
  v80 = v36;
  v81 = v38;
  v82 = 0;
  sub_488C8(&v73, &qword_184120, &qword_127D38);
}

uint64_t sub_73BF4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1163D0();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_46F9C(&qword_1840E0, &qword_127D08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v23 = sub_46F9C(&qword_1840E8, &qword_127D10);
  v9 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v11 = &v22 - v10;
  v12 = sub_116C00();
  v13 = sub_116720();
  KeyPath = swift_getKeyPath();
  v27 = v12;
  v28 = KeyPath;
  v29 = v13;
  sub_1166A0();
  sub_46F9C(&qword_182E30, &unk_127C70);
  sub_48748();
  sub_1169E0();

  v15 = [objc_opt_self() systemGrayColor];
  v16 = sub_116BE0();
  v17 = swift_getKeyPath();
  v18 = &v8[*(v5 + 36)];
  *v18 = v17;
  v18[1] = v16;
  sub_1163B0();
  sub_79B78();
  sub_116A90();
  v19 = v25;
  v20 = *(v24 + 8);
  v20(v4, v25);
  sub_488C8(v8, &qword_1840E0, &qword_127D08);
  sub_1163A0();
  sub_116160();
  v20(v4, v19);
  return sub_488C8(v11, &qword_1840E8, &qword_127D10);
}

unint64_t sub_73ED4()
{
  result = qword_183DA0;
  if (!qword_183DA0)
  {
    sub_47A1C(&qword_183D78, &qword_1274A0);
    sub_73F8C();
    sub_48800(&qword_183DB8, &qword_183D70, &qword_127498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183DA0);
  }

  return result;
}

unint64_t sub_73F8C()
{
  result = qword_183DA8;
  if (!qword_183DA8)
  {
    sub_47A1C(&qword_183DB0, &qword_1274C8);
    sub_48800(&qword_183DB8, &qword_183D70, &qword_127498);
    sub_48800(&qword_183DC0, &qword_183D98, &qword_1274C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183DA8);
  }

  return result;
}

unint64_t sub_74070()
{
  result = qword_183DC8;
  if (!qword_183DC8)
  {
    sub_47A1C(&qword_183D60, &qword_127488);
    sub_48800(&qword_183DD0, &qword_183DD8, &qword_1274D0);
    sub_48800(&qword_183DC0, &qword_183D98, &qword_1274C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183DC8);
  }

  return result;
}

uint64_t sub_74154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v144 = a4;
  v7 = sub_46F9C(&qword_184030, &qword_127BE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v136 = &v122 - v10;
  v11 = sub_46F9C(&qword_184038, &qword_127BE8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v143 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v122 - v15;
  v139 = sub_46F9C(&qword_184040, &qword_127BF0);
  v138 = *(v139 - 8);
  v17 = *(v138 + 64);
  __chkstk_darwin(v139);
  v133 = &v122 - v18;
  v137 = sub_46F9C(&qword_183E20, &qword_127540);
  v19 = *(*(v137 - 8) + 64);
  v20 = __chkstk_darwin(v137);
  v135 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v132 = &v122 - v23;
  __chkstk_darwin(v22);
  v131 = &v122 - v24;
  v25 = sub_46F9C(&qword_184048, &qword_127BF8);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v142 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v122 - v29;
  v31 = sub_46F9C(&qword_184070, &qword_127C18);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v141 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v122 - v35;
  *v36 = sub_116310();
  *(v36 + 1) = 0x4010000000000000;
  v36[16] = 0;
  v37 = *(sub_46F9C(&qword_184078, &qword_127C20) + 44);
  v140 = v36;
  sub_74EAC(a1, a2, a3, &v36[v37]);
  v147 = a1;
  v148 = a2;
  v149 = a3;
  v38 = sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v39 = v155;
  v40 = sub_512E0();

  v145 = v30;
  if (v40)
  {
    goto LABEL_7;
  }

  v147 = a1;
  v148 = a2;
  v149 = a3;
  sub_116D60();
  v41 = v155;
  v42 = sub_510B4();

  if ((v42 & 1) == 0)
  {
    goto LABEL_7;
  }

  v43 = objc_opt_self();
  v147 = a1;
  v148 = a2;
  v149 = a3;
  sub_116D60();
  v44 = v155;
  v45 = sub_492C4();
  v134 = a2;
  v46 = v45;

  v47 = v46;
  a2 = v134;
  v48 = [v43 localizedStringWithPercentage:v47];
  if (v48)
  {
    v130 = a3;
    v128 = v8;
    v129 = v7;
    v127 = v16;
    v49 = v48;
    v50 = sub_1171B0();
    v52 = v51;

    if (qword_18C0B0 != -1)
    {
      swift_once();
    }

    v126 = qword_18C0B8;
    v147 = v50;
    v148 = v52;
    sub_4869C();
    v53 = sub_116900();
    v55 = v54;
    v57 = v56;
    sub_116720();
    v58 = sub_1168C0();
    v60 = v59;
    LODWORD(v124) = v61;
    v63 = v62;
    v125 = v62;

    sub_48928(v53, v55, v57 & 1);

    KeyPath = swift_getKeyPath();
    v147 = v58;
    v148 = v60;
    v65 = v124 & 1;
    LOBYTE(v149) = v124 & 1;
    v150 = v63;
    v151 = KeyPath;
    v152 = 0;
    v153 = 1;
    sub_1166C0();
    sub_46F9C(&qword_183E00, &unk_127530);
    sub_789F4();
    v66 = v131;
    sub_1169E0();
    sub_48928(v58, v60, v65);

    *(v66 + *(v137 + 36)) = v126;

    sub_116EB0();
    sub_116070();
    v126 = v155;
    v125 = v157;
    v124 = v159;
    v123 = v160;
    LOBYTE(v147) = 1;
    LOBYTE(v154) = v156;
    v146 = v158;
    v67 = v132;
    sub_479B4(v66, v132, &qword_183E20, &qword_127540);
    LOBYTE(v63) = v147;
    LOBYTE(v60) = v154;
    v68 = v146;
    v69 = v133;
    sub_479B4(v67, v133, &qword_183E20, &qword_127540);
    v70 = v69 + *(sub_46F9C(&qword_184068, &qword_127C10) + 48);
    *v70 = 0;
    *(v70 + 8) = v63;
    *(v70 + 16) = v126;
    *(v70 + 24) = v60;
    *(v70 + 32) = v125;
    *(v70 + 40) = v68;
    v71 = v123;
    *(v70 + 48) = v124;
    *(v70 + 56) = v71;
    sub_488C8(v66, &qword_183E20, &qword_127540);
    sub_488C8(v67, &qword_183E20, &qword_127540);
    v72 = v145;
    sub_548D0(v69, v145, &qword_184040, &qword_127BF0);
    (*(v138 + 56))(v72, 0, 1, v139);
    v16 = v127;
    v7 = v129;
    v8 = v128;
    a3 = v130;
    a2 = v134;
  }

  else
  {
LABEL_7:
    (*(v138 + 56))(v30, 1, 1, v139);
  }

  v147 = a1;
  v148 = a2;
  v149 = a3;
  sub_116D60();
  v73 = v154;
  v74 = sub_50EDC();

  v75 = 1;
  if (v74)
  {
    v76 = objc_opt_self();
    v147 = a1;
    v148 = a2;
    v130 = a3;
    v149 = a3;
    sub_116D60();
    v77 = v154;
    v78 = sub_4EB54();

    v79 = [v76 localizedStringWithPercentage:v78];
    if (v79)
    {
      v138 = v38;
      v139 = a1;
      v134 = a2;
      v128 = v8;
      v129 = v7;
      v127 = v16;
      v80 = v79;
      v81 = sub_1171B0();
      v83 = v82;

      if (qword_18C0B0 != -1)
      {
        swift_once();
      }

      v84 = qword_18C0B8;
      v147 = v81;
      v148 = v83;
      sub_4869C();
      v85 = sub_116900();
      v87 = v86;
      v89 = v88;
      sub_116720();
      v90 = sub_1168C0();
      v92 = v91;
      v94 = v93;
      v96 = v95;

      sub_48928(v85, v87, v89 & 1);

      v97 = swift_getKeyPath();
      v147 = v90;
      v148 = v92;
      v94 &= 1u;
      LOBYTE(v149) = v94;
      v150 = v96;
      v151 = v97;
      v152 = 0;
      v153 = 1;
      sub_1166C0();
      sub_46F9C(&qword_183E00, &unk_127530);
      sub_789F4();
      v98 = v135;
      sub_1169E0();
      sub_48928(v90, v92, v94);

      v99 = v137;
      *(v98 + *(v137 + 36)) = v84;
      v100 = v139;
      v101 = v134;
      v147 = v139;
      v148 = v134;
      v102 = v130;
      v149 = v130;

      sub_116D60();
      v103 = v154;
      v104 = sub_512E0();

      v106 = 0;
      if ((v104 & 1) == 0)
      {
        v147 = v100;
        v148 = v101;
        v149 = v102;
        sub_116D60();
        v107 = v154;
        v106 = sub_510B4();
      }

      __chkstk_darwin(v105);
      *(&v122 - 4) = v100;
      *(&v122 - 3) = v101;
      *(&v122 - 2) = v102;
      v108 = sub_46F9C(&qword_184058, &qword_127C08);
      v109 = sub_79214();
      v110 = sub_79850();
      v111 = v106 & 1;
      v112 = v136;
      sub_8E234(v111, sub_798DC, (&v122 - 6), v99, v108, v109, v110, v136);
      sub_488C8(v98, &qword_183E20, &qword_127540);
      v16 = v127;
      sub_548D0(v112, v127, &qword_184030, &qword_127BE0);
      v75 = 0;
      v7 = v129;
      v8 = v128;
    }

    else
    {
      v75 = 1;
    }
  }

  (*(v8 + 56))(v16, v75, 1, v7);
  v113 = v140;
  v114 = v141;
  sub_479B4(v140, v141, &qword_184070, &qword_127C18);
  v115 = v145;
  v116 = v142;
  sub_479B4(v145, v142, &qword_184048, &qword_127BF8);
  v117 = v143;
  sub_479B4(v16, v143, &qword_184038, &qword_127BE8);
  v118 = v144;
  sub_479B4(v114, v144, &qword_184070, &qword_127C18);
  v119 = sub_46F9C(&qword_184080, &qword_127C28);
  v120 = v118 + v119[12];
  *v120 = 0;
  *(v120 + 8) = 1;
  sub_479B4(v116, v118 + v119[16], &qword_184048, &qword_127BF8);
  sub_479B4(v117, v118 + v119[20], &qword_184038, &qword_127BE8);
  sub_488C8(v16, &qword_184038, &qword_127BE8);
  sub_488C8(v115, &qword_184048, &qword_127BF8);
  sub_488C8(v113, &qword_184070, &qword_127C18);
  sub_488C8(v117, &qword_184038, &qword_127BE8);
  sub_488C8(v116, &qword_184048, &qword_127BF8);
  return sub_488C8(v114, &qword_184070, &qword_127C18);
}

uint64_t sub_74EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v64 = a4;
  v7 = sub_46F9C(&qword_184088, &qword_127C30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v61 - v9;
  v11 = sub_46F9C(&qword_184090, &qword_127C38);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = &v61 - v15;
  v69 = a1;
  v70 = a2;
  v71 = a3;
  v65 = sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v16 = v68;
  sub_51444();

  v17 = sub_116C20();
  v18 = sub_116720();
  KeyPath = swift_getKeyPath();
  v69 = v17;
  v70 = KeyPath;
  v71 = v18;
  sub_1166A0();
  sub_46F9C(&qword_182E30, &unk_127C70);
  sub_48748();
  sub_1169E0();

  v20 = &v10[*(sub_46F9C(&qword_184098, &qword_127C80) + 36)];
  v21 = *(sub_46F9C(&qword_1840A0, &qword_127C88) + 28);
  sub_116410();
  v22 = sub_116420();
  (*(*(v22 - 8) + 56))(v20 + v21, 0, 1, v22);
  *v20 = swift_getKeyPath();
  v61 = a1;
  v23 = v66;
  v24 = v67;
  v69 = a1;
  v70 = v66;
  v71 = v67;
  sub_116D60();
  v25 = v68;
  v26 = sub_52F08();

  v27 = swift_getKeyPath();
  v28 = &v10[*(v7 + 36)];
  *v28 = v27;
  v28[1] = v26;
  sub_799CC();
  sub_116A70();
  sub_488C8(v10, &qword_184088, &qword_127C30);
  v69 = a1;
  v70 = v23;
  v71 = v24;
  sub_116D60();
  v29 = v68;
  sub_517BC();
  v31 = v30;
  v33 = v32;

  v69 = v31;
  v70 = v33;
  sub_4869C();
  v34 = sub_116900();
  v36 = v35;
  LOBYTE(v33) = v37;
  sub_116720();
  v38 = sub_1168C0();
  v40 = v39;
  LOBYTE(a1) = v41;

  sub_48928(v34, v36, v33 & 1);

  sub_1166C0();
  v42 = sub_116810();
  v44 = v43;
  v46 = v45;
  sub_48928(v38, v40, a1 & 1);

  v69 = v61;
  v70 = v66;
  v71 = v67;
  sub_116D60();
  v47 = v68;
  v48 = sub_52F08();

  v69 = v48;
  v49 = sub_116890();
  v51 = v50;
  LOBYTE(v38) = v52;
  v54 = v53;
  sub_48928(v42, v44, v46 & 1);

  v55 = swift_getKeyPath();
  v57 = v62;
  v56 = v63;
  sub_479B4(v62, v63, &qword_184090, &qword_127C38);
  v58 = v64;
  sub_479B4(v56, v64, &qword_184090, &qword_127C38);
  v59 = v58 + *(sub_46F9C(&qword_1840D0, &qword_127CF8) + 48);
  *v59 = v49;
  *(v59 + 8) = v51;
  *(v59 + 16) = v38 & 1;
  *(v59 + 24) = v54;
  *(v59 + 32) = v55;
  *(v59 + 40) = 0;
  *(v59 + 48) = 1;
  sub_488B8(v49, v51, v38 & 1);

  sub_488C8(v57, &qword_184090, &qword_127C38);
  sub_48928(v49, v51, v38 & 1);

  return sub_488C8(v56, &qword_184090, &qword_127C38);
}

uint64_t sub_75410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v116 = sub_46F9C(&qword_184030, &qword_127BE0);
  v115 = *(v116 - 8);
  v8 = *(v115 + 64);
  __chkstk_darwin(v116);
  v111 = &v102 - v9;
  v10 = sub_46F9C(&qword_184038, &qword_127BE8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v121 = &v102 - v15;
  v113 = sub_46F9C(&qword_184040, &qword_127BF0);
  v16 = *(v113 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v113);
  v109 = &v102 - v18;
  v112 = sub_46F9C(&qword_183E20, &qword_127540);
  v19 = *(*(v112 - 8) + 64);
  v20 = __chkstk_darwin(v112);
  v110 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v108 = &v102 - v23;
  __chkstk_darwin(v22);
  v25 = &v102 - v24;
  v26 = sub_46F9C(&qword_184048, &qword_127BF8);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v114 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v117 = &v102 - v30;
  v123 = a1;
  v124 = a2;
  v125 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v31 = v131;
  v32 = sub_512E0();

  v119 = a2;
  v120 = a3;
  v118 = a1;
  if (v32)
  {
    goto LABEL_5;
  }

  v123 = a1;
  v124 = a2;
  v125 = a3;
  sub_116D60();
  v33 = v131;
  v34 = sub_510B4();

  if ((v34 & 1) == 0)
  {
    goto LABEL_5;
  }

  v123 = a1;
  v124 = a2;
  v125 = a3;
  sub_116D60();
  v35 = v131;
  v36 = sub_4E8E4();
  v38 = v37;

  if (v38)
  {
    v105 = sub_116BB0();
    v123 = v36;
    v124 = v38;
    sub_4869C();
    v39 = sub_116900();
    v41 = v40;
    v43 = v42;
    v107 = a4;
    sub_116720();
    v106 = v14;
    v44 = sub_1168C0();
    v104 = v44;
    v46 = v45;
    LODWORD(v102) = v47;
    v103 = v48;

    sub_48928(v39, v41, v43 & 1);

    KeyPath = swift_getKeyPath();
    v123 = v44;
    v124 = v46;
    v50 = v102 & 1;
    LOBYTE(v125) = v102 & 1;
    v126 = v103;
    v127 = KeyPath;
    v128 = 0;
    v129 = 1;
    sub_1166C0();
    sub_46F9C(&qword_183E00, &unk_127530);
    sub_789F4();
    sub_1169E0();
    sub_48928(v104, v46, v50);

    *&v25[*(v112 + 36)] = v105;
    sub_116EB0();
    sub_116070();
    v105 = v131;
    v104 = v133;
    v103 = v135;
    v102 = v136;
    LOBYTE(v123) = 1;
    LOBYTE(v130) = v132;
    v122 = v134;
    v51 = v108;
    sub_479B4(v25, v108, &qword_183E20, &qword_127540);
    v52 = v123;
    v53 = v130;
    v54 = v122;
    v55 = v109;
    sub_479B4(v51, v109, &qword_183E20, &qword_127540);
    v56 = v55 + *(sub_46F9C(&qword_184068, &qword_127C10) + 48);
    *v56 = 0;
    *(v56 + 8) = v52;
    a4 = v107;
    *(v56 + 16) = v105;
    *(v56 + 24) = v53;
    *(v56 + 32) = v104;
    *(v56 + 40) = v54;
    v14 = v106;
    v57 = v102;
    *(v56 + 48) = v103;
    *(v56 + 56) = v57;
    sub_488C8(v25, &qword_183E20, &qword_127540);
    sub_488C8(v51, &qword_183E20, &qword_127540);
    v58 = v117;
    sub_548D0(v55, v117, &qword_184040, &qword_127BF0);
    (*(v16 + 56))(v58, 0, 1, v113);
  }

  else
  {
LABEL_5:
    v58 = v117;
    (*(v16 + 56))(v117, 1, 1, v113);
  }

  v60 = v118;
  v59 = v119;
  v123 = v118;
  v124 = v119;
  v61 = v120;
  v125 = v120;
  sub_116D60();
  v62 = v130;
  v63 = sub_50EDC();

  v64 = 1;
  if (v63)
  {
    v123 = v60;
    v124 = v59;
    v125 = v61;
    sub_116D60();
    v65 = v130;
    v66 = sub_4E934();
    v68 = v67;

    v64 = 1;
    if (v68)
    {
      v106 = v14;
      v107 = a4;
      v113 = sub_116BB0();
      v123 = v66;
      v124 = v68;
      sub_4869C();
      v69 = sub_116900();
      v71 = v70;
      v73 = v72;
      sub_116720();
      v74 = sub_1168C0();
      v76 = v75;
      v78 = v77;
      v80 = v79;

      sub_48928(v69, v71, v73 & 1);

      v81 = swift_getKeyPath();
      v123 = v74;
      v124 = v76;
      v78 &= 1u;
      LOBYTE(v125) = v78;
      v126 = v80;
      v127 = v81;
      v128 = 0;
      v129 = 1;
      sub_1166C0();
      sub_46F9C(&qword_183E00, &unk_127530);
      sub_789F4();
      v82 = v110;
      sub_1169E0();
      v83 = v74;
      v84 = v78;
      v86 = v119;
      v85 = v120;
      sub_48928(v83, v76, v84);
      v87 = v118;

      v88 = v112;
      *(v82 + *(v112 + 36)) = v113;
      v123 = v87;
      v124 = v86;
      v125 = v85;
      sub_116D60();
      v89 = v130;
      LOBYTE(v80) = sub_512E0();

      v91 = 0;
      if ((v80 & 1) == 0)
      {
        v123 = v87;
        v124 = v86;
        v125 = v85;
        sub_116D60();
        v92 = v130;
        v91 = sub_510B4();
      }

      __chkstk_darwin(v90);
      *(&v102 - 4) = v87;
      *(&v102 - 3) = v86;
      *(&v102 - 2) = v85;
      v93 = sub_46F9C(&qword_184058, &qword_127C08);
      v94 = sub_79214();
      v95 = sub_79850();
      v96 = v91 & 1;
      v97 = v111;
      sub_8E234(v96, sub_79CD0, (&v102 - 6), v88, v93, v94, v95, v111);
      sub_488C8(v82, &qword_183E20, &qword_127540);
      sub_548D0(v97, v121, &qword_184030, &qword_127BE0);
      v64 = 0;
      a4 = v107;
      v14 = v106;
      v58 = v117;
    }
  }

  v98 = v121;
  (*(v115 + 56))(v121, v64, 1, v116);
  v99 = v114;
  sub_479B4(v58, v114, &qword_184048, &qword_127BF8);
  sub_479B4(v98, v14, &qword_184038, &qword_127BE8);
  *a4 = 0;
  *(a4 + 8) = 1;
  v100 = sub_46F9C(&qword_184050, &qword_127C00);
  sub_479B4(v99, a4 + *(v100 + 48), &qword_184048, &qword_127BF8);
  sub_479B4(v14, a4 + *(v100 + 64), &qword_184038, &qword_127BE8);
  sub_488C8(v98, &qword_184038, &qword_127BE8);
  sub_488C8(v58, &qword_184048, &qword_127BF8);
  sub_488C8(v14, &qword_184038, &qword_127BE8);
  return sub_488C8(v99, &qword_184048, &qword_127BF8);
}

uint64_t sub_75ED0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_116530();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_115520();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_116300();
  sub_76128(*&a1, a2, a3, v14);
  v16 = sub_1168F0();
  v18 = v17;
  LOBYTE(a1) = v19;
  v21 = v20;
  v22 = sub_116620();
  sub_115FD0();
  v37 = 0;
  v36 = a1 & 1;
  v35 = 0;
  *&v28 = v15;
  *(&v28 + 1) = 0x3FF0000000000000;
  LOBYTE(v29) = 0;
  *(&v29 + 1) = v16;
  *&v30 = v18;
  BYTE8(v30) = a1 & 1;
  *&v31 = v21;
  BYTE8(v31) = v22;
  *&v32 = v23;
  *(&v32 + 1) = v24;
  *&v33 = v25;
  *(&v33 + 1) = v26;
  v34 = 0;
  sub_116520();
  sub_46F9C(&qword_183E28, &qword_127548);
  sub_78AAC();
  sub_116A80();
  (*(v7 + 8))(v10, v6);
  v38[4] = v32;
  v38[5] = v33;
  v39 = v34;
  v38[0] = v28;
  v38[1] = v29;
  v38[2] = v30;
  v38[3] = v31;
  return sub_488C8(v38, &qword_183E28, &qword_127548);
}

uint64_t sub_76128@<X0>(double a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a2;
  v83 = a3;
  v85 = a1;
  v75 = a4;
  v6 = sub_46F9C(&qword_182FE0, &unk_127BB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v77 = &v66 - v8;
  v9 = sub_46F9C(&qword_182FE8, &unk_124E20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v78 = &v66 - v11;
  v79 = sub_46F9C(&qword_182FF0, &unk_127BC0);
  v76 = *(v79 - 8);
  v12 = *(v76 + 64);
  __chkstk_darwin(v79);
  v74 = &v66 - v13;
  v14 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v66 - v16;
  v81 = sub_116740();
  v84 = *(v81 - 8);
  v18 = *(v84 + 64);
  __chkstk_darwin(v81);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_46F9C(&qword_184020, &unk_127BD0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v66 - v24;
  v26 = sub_46F9C(&qword_183560, &qword_129070);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v66 - v29;
  v86 = v85;
  v87 = a2;
  v88 = a3;
  v80 = sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v31 = v89;
  v32 = sub_49D40();

  v86 = v32;
  sub_ECF08();
  sub_1155C0();
  (*(v27 + 8))(v30, v26);
  sub_66C80();
  sub_48800(&qword_184028, &qword_184020, &unk_127BD0);
  sub_117040();
  (*(v22 + 8))(v25, v21);
  v33 = v84;
  v34 = v81;
  v70 = *(v84 + 104);
  v70(v20, enum case for Font.TextStyle.largeTitle(_:), v81);
  v35 = enum case for Font.Design.rounded(_:);
  v36 = sub_116690();
  v37 = *(v36 - 8);
  v38 = *(v37 + 104);
  v69 = v35;
  v68 = v38;
  v38(v17, v35, v36);
  v67 = *(v37 + 56);
  v67(v17, 0, 1, v36);
  sub_1166C0();
  *&v39 = COERCE_DOUBLE(sub_1166E0());
  v73 = v17;
  sub_488C8(v17, &qword_182FF8, &qword_124E30);
  v40 = *(v33 + 8);
  v72 = v20;
  v84 = v33 + 8;
  v66 = v40;
  v40(v20, v34);
  v86 = *&v39;
  v71 = sub_5481C();
  sub_115540();
  v86 = v85;
  v87 = v82;
  v88 = v83;
  sub_116D60();
  v41 = v89;
  *&v42 = COERCE_DOUBLE(sub_5287C());

  v86 = *&v42;
  v43 = sub_547C8();
  sub_115540();
  v44 = [objc_allocWithZone(NSNumberFormatter) init];
  v45 = [v44 percentSymbol];

  if (v45)
  {
    *&v46 = COERCE_DOUBLE(sub_1171B0());
    v48 = v47;
  }

  else
  {
    v48 = 0xE100000000000000;
    v46 = 37;
  }

  v86 = *&v46;
  v87 = v48;
  v49 = sub_115820();
  v50 = v77;
  (*(*(v49 - 8) + 56))(v77, 1, 1, v49);
  sub_115520();
  sub_7954C(&unk_183010, &type metadata accessor for AttributedString);
  sub_4869C();
  v51 = v78;
  sub_1155B0();
  sub_488C8(v50, &qword_182FE0, &unk_127BB0);

  if ((*(v76 + 48))(v51, 1, v79) == 1)
  {
    v52 = &qword_182FE8;
    v53 = &unk_124E20;
    v54 = v51;
  }

  else
  {
    v55 = v51;
    v56 = v74;
    sub_548D0(v55, v74, &qword_182FF0, &unk_127BC0);
    v78 = v43;
    v57 = v72;
    v58 = v81;
    v70(v72, enum case for Font.TextStyle.callout(_:), v81);
    v59 = v73;
    v68(v73, v69, v36);
    v67(v59, 0, 1, v36);
    sub_1166C0();
    v60 = sub_1166E0();
    sub_488C8(v59, &qword_182FF8, &qword_124E30);
    v66(v57, v58);
    sub_48800(&qword_183020, &qword_182FF0, &unk_127BC0);
    v61 = sub_115550();
    v89 = v60;
    sub_115580();
    v61(&v86, 0);
    v86 = v85;
    v87 = v82;
    v88 = v83;
    sub_116D60();
    v62 = v89;
    v63 = sub_529C8();

    v64 = sub_115550();
    v89 = v63;
    sub_115580();
    v64(&v86, 0);
    v54 = v56;
    v52 = &qword_182FF0;
    v53 = &unk_127BC0;
  }

  return sub_488C8(v54, v52, v53);
}

uint64_t sub_76AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v22[1] = a4;
  v9 = sub_116530();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_183E48, &qword_127558);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v22 - v16;
  v22[3] = a1;
  v22[4] = a2;
  *&v22[5] = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v18 = v22[2];
  v19 = sub_49D40();

  *v17 = sub_1163E0();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v20 = sub_46F9C(&qword_183E50, &qword_127560);
  sub_76CDC(a1, a2, a3, v19, &v17[*(v20 + 44)], a5);
  sub_116520();
  sub_48800(&qword_183E58, &qword_183E48, &qword_127558);
  sub_116A80();
  (*(v10 + 8))(v13, v9);
  return sub_488C8(v17, &qword_183E48, &qword_127558);
}

uint64_t sub_76CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v73 = a5;
  v71 = sub_46F9C(&qword_183F60, &qword_127B30);
  v15 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v17 = &v59[-v16];
  v72 = sub_46F9C(&qword_183F68, &qword_127B38);
  v18 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v20 = &v59[-v19];
  v96 = *&a1;
  v97 = *&a2;
  v98 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v21 = v82;
  *&v22 = COERCE_DOUBLE(sub_512E0());

  if (v22)
  {
    v96 = *&a1;
    v97 = *&a2;
    v98 = a3;
    sub_116D60();
    v23 = v82;
    sub_4EB54();

    v96 = *&a1;
    v97 = *&a2;
    v98 = a3;
    sub_116D60();
    v24 = v82;
    sub_4EB54();

    *v20 = sub_116E80();
    v20[1] = v25;
    v26 = sub_46F9C(&qword_183F90, &qword_127B50);
    sub_77534(a1, a2, *&a3, a4, v20 + *(v26 + 44));
    sub_479B4(v20, v17, &qword_183F68, &qword_127B38);
    swift_storeEnumTagMultiPayload();
    sub_46F9C(&qword_183F78, &qword_127B48);
    sub_48800(&qword_183F80, &qword_183F68, &qword_127B38);
    sub_48800(&qword_183F88, &qword_183F78, &qword_127B48);
    sub_116470();
    return sub_488C8(v20, &qword_183F68, &qword_127B38);
  }

  v70 = a4;
  v96 = *&a1;
  v97 = *&a2;
  v98 = a3;
  sub_116D60();
  v28 = v82;
  v29 = sub_492C4();

  v96 = *&a1;
  v97 = *&a2;
  v98 = a3;
  sub_116D60();
  v30 = v82;
  v31 = sub_492C4();

  if (__OFSUB__(100, v31))
  {
    __break(1u);
    goto LABEL_12;
  }

  v32 = a6 + -2.0;
  a6 = (a6 + -2.0) * v29 / 100.0;
  v33 = v32 * (100 - v31);
  v69 = sub_116320();
  v81 = 0;
  v96 = *&a1;
  v97 = *&a2;
  v98 = a3;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v34 = v82;
  v35 = sub_492C4();

  v96 = *&a1;
  v97 = *&a2;
  v98 = a3;
  sub_116D60();
  v36 = v82;
  v68 = sub_529CC();

  v6 = v35;
  v7 = v70;
  v37 = (a6 + -5.0) / a6 * v35;
  v38 = (v70 - v37) / (v35 - v37);
  *&v67 = a3;
  if (v38 >= 1.0)
  {
    v9 = 3.0;
    if (v37 < v7)
    {
      goto LABEL_9;
    }
  }

  else if (v37 < v7)
  {
    v9 = v38 * 3.0;
    goto LABEL_9;
  }

  v9 = 0.0;
LABEL_9:
  v63 = v17;
  v31 = &v82;
  a3 = COERCE_DOUBLE(v80);
  v8 = v33 / 100.0;
  sub_116EB0();
  sub_116070();
  v22 = v74;
  v70 = v78;
  v65 = v76;
  v66 = v79;
  LOBYTE(v80[0]) = 1;
  v112 = v75;
  v111 = v77;
  v64 = sub_116F10();
  v96 = *&a1;
  v97 = *&a2;
  v98 = *&v67;
  sub_116D60();
  v30 = v82;
  LOBYTE(a4) = sub_512E0();

  LODWORD(v17) = LOBYTE(v80[0]);
  LODWORD(v29) = v112;
  LODWORD(v30) = v111;
  if (qword_18C0C0 != -1)
  {
LABEL_12:
    swift_once();
  }

  v82 = 0.0;
  LOBYTE(v83) = v17;
  v84 = *&v22;
  LOBYTE(v85) = v29;
  v40 = v65;
  v39 = v66;
  v86 = v65;
  v87 = LOBYTE(v30);
  v61 = LODWORD(v30);
  v62 = v29;
  v41 = v70;
  v88 = v70;
  v89 = v66;
  v42 = *v31;
  *(*&a3 + 24) = *(v31 + 1);
  v43 = *(v31 + 3);
  *(*&a3 + 40) = *(v31 + 2);
  *(*&a3 + 56) = v43;
  v44 = a4 & 1;
  v67 = qword_18C0C8;
  v60 = v17;
  v45 = v64;
  v90 = v64;
  v91 = a4 & 1;
  *(*&a3 + 8) = v42;
  *(*&a3 + 65) = *(v31 + 57);

  v46 = v68;

  sub_479B4(&v82, &v96, &qword_184018, &qword_127BA8);
  v96 = 0.0;
  LOBYTE(v97) = v60;
  v98 = *&v22;
  LOBYTE(v99) = v62;
  v100 = v40;
  v101 = v61;
  v102 = v41;
  *&v103 = v39;
  *(&v103 + 1) = v45;
  LOBYTE(v104) = v44;
  sub_488C8(&v96, &qword_184018, &qword_127BA8);

  v82 = v6;
  v83 = v7;
  v84 = a6;
  v85 = v46;
  v86 = v9;
  *(v31 + 7) = *(*&a3 + 24);
  *(v31 + 9) = *(*&a3 + 40);
  *(v31 + 11) = *(*&a3 + 56);
  *(v31 + 97) = *(*&a3 + 65);
  *(v31 + 5) = *(*&a3 + 8);
  v92 = *(*&a3 + 3);
  v47 = v80[0];
  *(v31 + 113) = v80[0];
  v93 = 0x4000000000000000;
  *(v31 + 8) = xmmword_127410;
  v94 = v8;
  v48 = v67;
  v95 = v67;
  v96 = v6;
  v97 = v7;
  v98 = a6;
  v99 = v46;
  v100 = v9;
  *(v31 + 25) = *(*&a3 + 8);
  v49 = *(*&a3 + 24);
  v50 = *(*&a3 + 40);
  v51 = *(*&a3 + 56);
  *&v105[9] = *(*&a3 + 65);
  *v105 = v51;
  v104 = v50;
  v103 = v49;
  *&v106[3] = *(*&a3 + 3);
  *v106 = v47;
  v107 = 0x4000000000000000;
  v108 = xmmword_127410;
  v109 = v8;
  v110 = v48;
  sub_479B4(&v82, &v74, &qword_183F70, &qword_127B40);
  sub_488C8(&v96, &qword_183F70, &qword_127B40);
  v52 = *(v31 + 2);
  *(*&a3 + 143) = *(v31 + 3);
  *(*&a3 + 127) = v52;
  v53 = *(v31 + 7);
  *(*&a3 + 191) = *(v31 + 6);
  *(*&a3 + 207) = v53;
  v54 = *(v31 + 9);
  *(*&a3 + 223) = *(v31 + 8);
  *(*&a3 + 239) = v54;
  v55 = *(v31 + 5);
  *(*&a3 + 159) = *(v31 + 4);
  *(*&a3 + 175) = v55;
  v56 = *(v31 + 1);
  *(*&a3 + 95) = *v31;
  *(*&a3 + 111) = v56;
  v57 = v81;
  v58 = v63;
  *v63 = v69;
  v58[1] = 0;
  *(v58 + 16) = v57;
  *(v58 + 129) = *(*&a3 + 200);
  *(v58 + 145) = *(*&a3 + 216);
  *(v58 + 161) = *(*&a3 + 232);
  v58[22] = *(*&a3 + 247);
  *(v58 + 65) = *(*&a3 + 136);
  *(v58 + 81) = *(*&a3 + 152);
  *(v58 + 97) = *(*&a3 + 168);
  *(v58 + 113) = *(*&a3 + 184);
  *(v58 + 17) = *(*&a3 + 88);
  *(v58 + 33) = *(*&a3 + 104);
  *(v58 + 49) = *(*&a3 + 120);
  swift_storeEnumTagMultiPayload();
  sub_46F9C(&qword_183F78, &qword_127B48);
  sub_48800(&qword_183F80, &qword_183F68, &qword_127B38);
  sub_48800(&qword_183F88, &qword_183F78, &qword_127B48);
  return sub_116470();
}

uint64_t sub_77534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v53 = a3;
  *(&v52 + 1) = a2;
  *&v52 = a1;
  v60 = a5;
  v55 = sub_46F9C(&qword_183F98, &qword_127B58);
  v5 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v54 = &v51 - v6;
  v7 = sub_46F9C(&qword_183FA0, &qword_127B60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  v11 = sub_46F9C(&qword_183FA8, &qword_127B68);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v59 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = &v51 - v15;
  v16 = sub_46F9C(&qword_183FB0, &qword_127B70);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v56 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v51 - v20;
  v22 = sub_116180();
  v23 = *(v22 + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_116390();
  v26 = *(*(v25 - 8) + 104);
  v26(&v21[v23], v24, v25);
  __asm { FMOV            V0.2D, #5.0 }

  v51 = _Q0;
  *v21 = _Q0;
  if (qword_18C0C0 != -1)
  {
    swift_once();
  }

  v32 = qword_18C0C8;
  *&v21[*(sub_46F9C(&qword_183FB8, &qword_127B78) + 36)] = v32;

  sub_116EB0();
  sub_116070();
  v33 = &v21[*(v16 + 36)];
  v34 = v62;
  *v33 = v61;
  *(v33 + 1) = v34;
  *(v33 + 2) = v63;
  v26(&v10[*(v22 + 20)], v24, v25);
  *v10 = v51;
  v67 = v52;
  *&v68 = v53;
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  v35 = v64;
  v36 = sub_529CC();

  sub_5AB0C(0, v36, &v64);
  v37 = v64;

  v38 = &v10[*(sub_46F9C(&qword_183FC0, &qword_127B80) + 36)];
  *v38 = v37;
  v39 = v65;
  *(v38 + 24) = v66;
  *(v38 + 8) = v39;
  sub_116EB0();
  sub_116070();
  v40 = &v10[*(sub_46F9C(&qword_183FC8, &qword_127B88) + 36)];
  v41 = v68;
  *v40 = v67;
  *(v40 + 1) = v41;
  *(v40 + 2) = v69;
  v42 = sub_116EE0();
  v43 = &v10[*(v7 + 36)];
  v44 = v57;
  *v43 = v42;
  v43[1] = v44;
  sub_479B4(v10, v54, &qword_183FA0, &qword_127B60);
  swift_storeEnumTagMultiPayload();
  sub_79624();
  v45 = v58;
  sub_116470();
  sub_488C8(v10, &qword_183FA0, &qword_127B60);
  v46 = v56;
  sub_479B4(v21, v56, &qword_183FB0, &qword_127B70);
  v47 = v59;
  sub_479B4(v45, v59, &qword_183FA8, &qword_127B68);
  v48 = v60;
  sub_479B4(v46, v60, &qword_183FB0, &qword_127B70);
  v49 = sub_46F9C(&qword_184010, &qword_127BA0);
  sub_479B4(v47, v48 + *(v49 + 48), &qword_183FA8, &qword_127B68);
  sub_488C8(v45, &qword_183FA8, &qword_127B68);
  sub_488C8(v21, &qword_183FB0, &qword_127B70);
  sub_488C8(v47, &qword_183FA8, &qword_127B68);
  return sub_488C8(v46, &qword_183FB0, &qword_127B70);
}

uint64_t sub_77BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (qword_18C0C0 != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  v4 = qword_18C0C8;
  v5 = *(a1 + 8);
  if (*a1 < v5)
  {
    v5 = *a1;
  }

  v6 = 5.0 - *(a1 + 32);
  v7 = v3 * (v5 / *a1);
  v8 = *(a1 + 24);

  sub_5AB0C(0, v8, &v26);
  v9 = v26;
  v11 = v27;
  v10 = v28;
  *&v17 = 0x4014000000000000;
  *(&v17 + 1) = v6;
  *&v18 = 0x4024000000000000;
  *(&v18 + 1) = v7;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  *a2 = xmmword_127420;
  *(a2 + 16) = 0x4024000000000000;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v12 = v17;
  *(a2 + 56) = v18;
  *(a2 + 40) = v12;
  *(a2 + 104) = v21;
  v13 = v19;
  *(a2 + 88) = v20;
  *(a2 + 72) = v13;
  v22[0] = 0x4014000000000000;
  *&v22[1] = v6;
  v22[2] = 0x4024000000000000;
  *&v22[3] = v7;
  v23 = v9;
  v24 = v11;
  v25 = v10;

  sub_479B4(&v17, &v16, &qword_183F58, &qword_127B28);
  sub_488C8(v22, &qword_183F58, &qword_127B28);
}

__n128 sub_77D64@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_116EC0();
  v5 = v4;
  sub_77BD0(v1, &v10);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[6] = v16;
  sub_479B4(&v17, &v9, &qword_183E60, &qword_127568);
  sub_488C8(v24, &qword_183E60, &qword_127568);
  *a1 = v3;
  *(a1 + 8) = v5;
  v6 = v22;
  *(a1 + 80) = v21;
  *(a1 + 96) = v6;
  *(a1 + 112) = v23;
  v7 = v18;
  *(a1 + 16) = v17;
  *(a1 + 32) = v7;
  result = v20;
  *(a1 + 48) = v19;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_77E3C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v87 = a1;
  v7 = sub_46F9C(&qword_183F38, &qword_127B08);
  v8 = *(v7 - 8);
  v85 = v7 - 8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v86 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v82 = &v72 - v13;
  __chkstk_darwin(v12);
  v84 = &v72 - v14;
  v15 = sub_46F9C(&qword_183F40, &qword_127B10);
  v16 = *(v15 - 8);
  v88 = v15 - 8;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v83 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = (&v72 - v21);
  __chkstk_darwin(v20);
  v24 = (&v72 - v23);
  v80 = sub_116180();
  v25 = *(v80 + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v78 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_116390();
  v28 = *(v27 - 8);
  v77 = *(v28 + 104);
  v79 = v28 + 104;
  v77(v24 + v25, v26, v27);
  *v24 = a2;
  v24[1] = a2;
  v76 = a4;
  sub_116EB0();
  sub_116070();
  v75 = sub_46F9C(&qword_183F48, &qword_127B18);
  v29 = (v24 + *(v75 + 36));
  v81 = v24;
  v30 = v108;
  *v29 = v107;
  v29[1] = v30;
  v29[2] = v109;
  v31 = sub_116EB0();
  v72 = v32;
  v73 = v31;
  v74 = a4 * 0.5;
  sub_116EB0();
  sub_116070();
  v33 = v110;
  v34 = v111;
  v35 = v112;
  v36 = v113;
  v38 = v114;
  v37 = v115;
  sub_116EC0();
  sub_116190();
  v106 = v34;
  v105 = v36;
  v39 = v24 + *(v88 + 44);
  v40 = v72;
  *v39 = v73;
  *(v39 + 1) = v40;
  *(v39 + 2) = v33;
  v39[24] = v34;
  *(v39 + 4) = v35;
  v39[40] = v36;
  *(v39 + 6) = v38;
  *(v39 + 7) = v37;
  v41 = v99;
  *(v39 + 4) = v98;
  *(v39 + 5) = v41;
  v42 = v104;
  v43 = v102;
  *(v39 + 9) = v103;
  *(v39 + 10) = v42;
  v44 = v101;
  *(v39 + 6) = v100;
  *(v39 + 7) = v44;
  *(v39 + 8) = v43;
  v77(v22 + *(v80 + 20), v78, v27);
  *v22 = a3;
  v22[1] = a3;
  sub_116EB0();
  sub_116070();
  v45 = (v22 + *(v75 + 36));
  v46 = v117;
  *v45 = v116;
  v45[1] = v46;
  v45[2] = v118;
  v47 = sub_116EB0();
  v49 = v48;
  sub_116EB0();
  sub_116070();
  v50 = v119;
  v51 = v120;
  v52 = v121;
  LOBYTE(v27) = v122;
  v53 = v123;
  v54 = v124;
  sub_116ED0();
  sub_116190();
  v97 = v51;
  v96 = v27;
  v55 = v22 + *(v88 + 44);
  *v55 = v47;
  *(v55 + 1) = v49;
  *(v55 + 2) = v50;
  v55[24] = v51;
  *(v55 + 4) = v52;
  v55[40] = v27;
  *(v55 + 6) = v53;
  *(v55 + 7) = v54;
  v56 = v90;
  *(v55 + 4) = v89;
  *(v55 + 5) = v56;
  v57 = v95;
  v58 = v93;
  *(v55 + 9) = v94;
  *(v55 + 10) = v57;
  v59 = v92;
  *(v55 + 6) = v91;
  *(v55 + 7) = v59;
  *(v55 + 8) = v58;
  sub_116ED0();
  sub_116190();
  v60 = v82;
  sub_548D0(v22, v82, &qword_183F40, &qword_127B10);
  v61 = v84;
  v62 = (v60 + *(v85 + 44));
  v63 = v130;
  v62[4] = v129;
  v62[5] = v63;
  v62[6] = v131;
  v64 = v126;
  *v62 = v125;
  v62[1] = v64;
  v65 = v128;
  v62[2] = v127;
  v62[3] = v65;
  sub_548D0(v60, v61, &qword_183F38, &qword_127B08);
  v66 = v81;
  v67 = v83;
  sub_479B4(v81, v83, &qword_183F40, &qword_127B10);
  v68 = v86;
  sub_479B4(v61, v86, &qword_183F38, &qword_127B08);
  v69 = v87;
  sub_479B4(v67, v87, &qword_183F40, &qword_127B10);
  v70 = sub_46F9C(&qword_183F50, &qword_127B20);
  sub_479B4(v68, v69 + *(v70 + 48), &qword_183F38, &qword_127B08);
  sub_488C8(v61, &qword_183F38, &qword_127B08);
  sub_488C8(v66, &qword_183F40, &qword_127B10);
  sub_488C8(v68, &qword_183F38, &qword_127B08);
  return sub_488C8(v67, &qword_183F40, &qword_127B10);
}

double sub_784BC@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 2);
  v6 = v1[3];
  *a1 = sub_116EC0();
  a1[1] = v7;
  v8 = sub_46F9C(&qword_183E68, &qword_127570);
  sub_77E3C(a1 + *(v8 + 44), v3, v4, v6);
  sub_116EB0();
  sub_116070();
  v9 = (a1 + *(sub_46F9C(&qword_183E70, &qword_127578) + 36));
  *v9 = v11;
  v9[1] = v12;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_78598(uint64_t a1, id *a2)
{
  result = sub_117190();
  *a2 = 0;
  return result;
}

uint64_t sub_78610(uint64_t a1, id *a2)
{
  v3 = sub_1171A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_78690@<X0>(void *a1@<X8>)
{
  sub_1171B0();
  v2 = sub_117170();

  *a1 = v2;
  return result;
}

uint64_t sub_786D4()
{
  v1 = *v0;
  sub_1171B0();
  v2 = sub_117280();

  return v2;
}

uint64_t sub_78710()
{
  v1 = *v0;
  sub_1171B0();
  sub_117200();
}

Swift::Int sub_78764()
{
  v1 = *v0;
  sub_1171B0();
  sub_117A90();
  sub_117200();
  v2 = sub_117AD0();

  return v2;
}

uint64_t sub_787D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1171B0();
  v6 = v5;
  if (v4 == sub_1171B0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1179E0();
  }

  return v9 & 1;
}

uint64_t sub_78860@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_117170();

  *a2 = v5;
  return result;
}

uint64_t sub_788A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1171B0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_788D4(uint64_t a1)
{
  v2 = sub_7954C(&qword_183E78, type metadata accessor for Key);
  v3 = sub_7954C(&qword_183F30, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_78990@<X0>(uint64_t a1@<X8>)
{
  result = sub_1162C0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_789C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1162D0();
}

unint64_t sub_789F4()
{
  result = qword_183E08;
  if (!qword_183E08)
  {
    sub_47A1C(&qword_183E00, &unk_127530);
    sub_48800(&qword_183E10, &qword_183E18, &qword_129710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E08);
  }

  return result;
}

unint64_t sub_78AAC()
{
  result = qword_183E30;
  if (!qword_183E30)
  {
    sub_47A1C(&qword_183E28, &qword_127548);
    sub_48800(&qword_183E38, &qword_183E40, &qword_127550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E30);
  }

  return result;
}

uint64_t sub_78B64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1161E0();
  *a1 = result;
  return result;
}

uint64_t sub_78B90(uint64_t *a1)
{
  v1 = *a1;

  return sub_1161F0();
}

uint64_t sub_78BE0(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1840D8, &qword_127D00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_479B4(a1, &v6 - v4, &qword_1840D8, &qword_127D00);
  return sub_116210();
}

uint64_t sub_78D44(uint64_t *a1, int a2)
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

uint64_t sub_78D8C(uint64_t result, int a2, int a3)
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

__n128 sub_78DD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_78E00(uint64_t a1, int a2)
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

uint64_t sub_78E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_78E9C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_78EA8(uint64_t a1, int a2)
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

uint64_t sub_78EF0(uint64_t result, int a2, int a3)
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

uint64_t sub_78F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_78F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_78FE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_79000(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_79040()
{
  result = qword_183E80;
  if (!qword_183E80)
  {
    sub_47A1C(&qword_183E88, &qword_1278F8);
    sub_790CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E80);
  }

  return result;
}

unint64_t sub_790CC()
{
  result = qword_183E90;
  if (!qword_183E90)
  {
    sub_47A1C(&qword_183E98, &unk_127900);
    sub_723A8();
    sub_48800(&qword_183CE8, &qword_183CF0, &qword_1273E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E90);
  }

  return result;
}

unint64_t sub_79188()
{
  result = qword_183EA0;
  if (!qword_183EA0)
  {
    sub_47A1C(&qword_183EA8, &unk_127910);
    sub_73ED4();
    sub_74070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183EA0);
  }

  return result;
}

unint64_t sub_79214()
{
  result = qword_183ED0;
  if (!qword_183ED0)
  {
    sub_47A1C(&qword_183E20, &qword_127540);
    sub_47A1C(&qword_183E00, &unk_127530);
    sub_789F4();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_183ED8, &qword_183EE0, &qword_129730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183ED0);
  }

  return result;
}

uint64_t sub_79308()
{
  sub_47A1C(&qword_183E28, &qword_127548);
  sub_78AAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7936C()
{
  sub_47A1C(&qword_183E48, &qword_127558);
  sub_48800(&qword_183E58, &qword_183E48, &qword_127558);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_7944C()
{
  result = qword_183EF8;
  if (!qword_183EF8)
  {
    sub_47A1C(&qword_183E70, &qword_127578);
    sub_48800(&qword_183F00, &qword_183F08, &qword_127948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183EF8);
  }

  return result;
}

uint64_t sub_7954C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_79624()
{
  result = qword_183FD0;
  if (!qword_183FD0)
  {
    sub_47A1C(&qword_183FA0, &qword_127B60);
    sub_796DC();
    sub_48800(&qword_184000, &qword_184008, &qword_127B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183FD0);
  }

  return result;
}

unint64_t sub_796DC()
{
  result = qword_183FD8;
  if (!qword_183FD8)
  {
    sub_47A1C(&qword_183FC8, &qword_127B88);
    sub_79768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183FD8);
  }

  return result;
}

unint64_t sub_79768()
{
  result = qword_183FE0;
  if (!qword_183FE0)
  {
    sub_47A1C(&qword_183FC0, &qword_127B80);
    sub_7954C(&qword_183FE8, &type metadata accessor for RoundedRectangle);
    sub_48800(&qword_183FF0, &qword_183FF8, &qword_127B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183FE0);
  }

  return result;
}

unint64_t sub_79850()
{
  result = qword_184060;
  if (!qword_184060)
  {
    sub_47A1C(&qword_184058, &qword_127C08);
    sub_79214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184060);
  }

  return result;
}

double sub_798E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v8 = *(v2 + 16);
  *&v8[8] = *(v2 + 24);
  sub_46F9C(&qword_183D28, &qword_127468);
  sub_116D60();
  sub_491E0();

  sub_116ED0();
  sub_116070();
  sub_479B4(a1, a2, &qword_183E20, &qword_127540);
  v5 = (a2 + *(sub_46F9C(&qword_184058, &qword_127C08) + 36));
  *v5 = *v8;
  v5[1] = *&v8[16];
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t sub_799CC()
{
  result = qword_1840A8;
  if (!qword_1840A8)
  {
    sub_47A1C(&qword_184088, &qword_127C30);
    sub_79A84();
    sub_48800(&qword_1840C0, &qword_1840C8, &qword_127CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1840A8);
  }

  return result;
}

unint64_t sub_79A84()
{
  result = qword_1840B0;
  if (!qword_1840B0)
  {
    sub_47A1C(&qword_184098, &qword_127C80);
    sub_47A1C(&qword_182E30, &unk_127C70);
    sub_48748();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_1840B8, &qword_1840A0, &qword_127C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1840B0);
  }

  return result;
}

unint64_t sub_79B78()
{
  result = qword_1840F0;
  if (!qword_1840F0)
  {
    sub_47A1C(&qword_1840E0, &qword_127D08);
    sub_47A1C(&qword_182E30, &unk_127C70);
    sub_48748();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_1840C0, &qword_1840C8, &qword_127CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1840F0);
  }

  return result;
}

unint64_t sub_79C6C()
{
  result = qword_184110;
  if (!qword_184110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184110);
  }

  return result;
}

uint64_t sub_79CD4(uint64_t a1)
{
  v2 = sub_46F9C(&qword_184128, &qword_127D40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_479B4(a1, &v6 - v4, &qword_184128, &qword_127D40);
  sub_116CB0();
  return sub_488C8(a1, &qword_184128, &qword_127D40);
}

uint64_t sub_79D9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for FullDayUsageView();
  type metadata accessor for DynamicUsageView();
  swift_getTupleTypeMetadata2();
  sub_116F20();
  swift_getWitnessTable();
  v6 = sub_116D50();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v17[-v12];
  sub_116E90();
  v18 = v4;
  v19 = v5;
  v20 = v2;
  sub_116D40();
  swift_getWitnessTable();
  v14 = v7[2];
  v14(v13, v11, v6);
  v15 = v7[1];
  v15(v11, v6);
  v14(a2, v13, v6);
  return (v15)(v13, v6);
}

uint64_t sub_79FD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = type metadata accessor for DynamicUsageView();
  v47 = *(v43 - 8);
  v5 = *(v47 + 64);
  v6 = __chkstk_darwin(v43);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v35 - v8;
  v9 = sub_46F9C(&qword_184130, &qword_127D48);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_116DC0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v35 - v15;
  v38 = type metadata accessor for FullDayUsageView();
  v46 = *(v38 - 8);
  v17 = *(v46 + 64);
  v18 = __chkstk_darwin(v38);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v45 = &v35 - v21;
  v35 = a1;
  v22 = type metadata accessor for DailyBatteryUsageView();
  v23 = *(v22 + 16);
  sub_116DC0();
  sub_116D90();
  v36 = *(v22 + 36);
  sub_46F9C(&qword_184428, &qword_1281B0);
  sub_116CE0();
  sub_7A45C(v16, v12, v20);
  v24 = v38;
  WitnessTable = swift_getWitnessTable();
  v25 = v46;
  v37 = *(v46 + 16);
  v37(v45, v20, v24);
  v40 = *(v25 + 8);
  v46 = v25 + 8;
  v40(v20, v24);
  sub_116D90();
  sub_116CE0();
  v26 = v41;
  sub_7A50C(v16, v12, v35, a2, v41);
  v27 = v43;
  v36 = swift_getWitnessTable();
  v28 = v47;
  v29 = *(v47 + 16);
  v30 = v42;
  v29(v42, v26, v27);
  v31 = *(v28 + 8);
  v47 = v28 + 8;
  v31(v26, v27);
  v32 = v45;
  v37(v20, v45, v24);
  v51[0] = v20;
  v29(v26, v30, v27);
  v51[1] = v26;
  v50[0] = v24;
  v50[1] = v27;
  v48 = WitnessTable;
  v49 = v36;
  sub_7A8C4(v51, 2uLL, v50);
  v31(v30, v27);
  v33 = v40;
  v40(v32, v24);
  v31(v26, v27);
  return v33(v20, v24);
}

uint64_t sub_7A45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_116DC0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for FullDayUsageView();
  return sub_548D0(a2, a3 + *(v7 + 36), &qword_184130, &qword_127D48);
}

uint64_t sub_7A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v36 = a1;
  v38 = *(a3 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(a1);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = sub_117620();
  v13 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v15 = &v31 - v14;
  v32 = &v31 - v14;
  v16 = type metadata accessor for DynamicUsageView();
  v33 = v16[11];
  (*(*(AssociatedTypeWitness - 8) + 56))(v15, 1, 1, AssociatedTypeWitness);
  sub_7DAB8(v15);
  v17 = sub_116DC0();
  v35 = *(v17 - 8);
  v18 = v36;
  (*(v35 + 16))(a5, v36, v17);
  v19 = v16[9];
  v31 = v16;
  sub_479B4(a2, a5 + v19, &qword_184130, &qword_127D48);
  sub_116D60();
  v20 = (*(a4 + 48))(a3, a4);
  v21 = *(v38 + 8);
  v21(v11, a3);
  *(a5 + v16[10]) = v20;
  v22 = v18;
  sub_116D60();
  v23 = v32;
  (*(a4 + 56))(a3, a4);
  v21(v11, a3);
  v24 = sub_116CF0();
  (*(*(v24 - 8) + 8))(a5 + v33, v24);
  sub_7DAB8(v23);
  v25 = v22;
  sub_116D60();
  (*(a4 + 136))(a3, a4);
  v21(v11, a3);
  v26 = (a5 + v31[12]);
  v27 = sub_7DC40();
  v29 = v28;
  sub_488C8(v34, &qword_184130, &qword_127D48);
  result = (*(v35 + 8))(v25, v17);
  *v26 = v27;
  v26[1] = v29;
  return result;
}

uint64_t sub_7A8C4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_116F30();
}

uint64_t sub_7AA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_46F9C(&qword_184128, &qword_127D40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_116DC0();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  v9 = *(type metadata accessor for DailyBatteryUsageView() + 36);
  v10 = sub_115A20();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  return sub_79CD4(v7);
}

uint64_t sub_7ABC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v113 = a2;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v112 = &v77 - v6;
  v104 = *(a1 + 16);
  v114 = *(v104 - 8);
  v7 = *(v114 + 64);
  __chkstk_darwin(v5);
  v105 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = sub_1173A0();
  v10 = sub_47A1C(&qword_184140, &qword_127D58);
  WitnessTable = swift_getWitnessTable();
  v128 = v9;
  v129 = &type metadata for Int;
  v130 = v10;
  v131 = WitnessTable;
  v132 = &protocol witness table for Int;
  v108 = sub_116E30();
  v127 = sub_7DCA0();
  v107 = swift_getWitnessTable();
  v12 = sub_115DD0();
  v109 = *(v12 - 8);
  v13 = *(v109 + 64);
  __chkstk_darwin(v12);
  v15 = &v77 - v14;
  v16 = sub_47A1C(&qword_184160, &unk_127D70);
  v17 = swift_getWitnessTable();
  v18 = sub_7DDE8();
  v128 = v12;
  v129 = v16;
  v130 = v17;
  v131 = v18;
  v97 = v17;
  v19 = v18;
  v96 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v110 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v110 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v100 = &v77 - v22;
  v23 = sub_47A1C(&qword_184178, &qword_1285D0);
  v128 = v12;
  v129 = v16;
  v130 = v17;
  v131 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_7DEA4();
  v95 = OpaqueTypeMetadata2;
  v128 = OpaqueTypeMetadata2;
  v129 = v23;
  v130 = OpaqueTypeConformance2;
  v131 = v25;
  v101 = swift_getOpaqueTypeMetadata2();
  v26 = sub_116480();
  v103 = *(v26 - 8);
  v27 = *(v103 + 64);
  __chkstk_darwin(v26);
  v99 = &v77 - v28;
  v29 = sub_47A1C(&qword_184188, &qword_127D80);
  v128 = OpaqueTypeMetadata2;
  v129 = v23;
  v93 = OpaqueTypeConformance2;
  v130 = OpaqueTypeConformance2;
  v131 = v25;
  v94 = swift_getOpaqueTypeConformance2();
  v125 = v94;
  v126 = OpaqueTypeConformance2;
  v30 = swift_getWitnessTable();
  v31 = sub_7DF20();
  v128 = v26;
  v129 = v29;
  v79 = v26;
  v82 = v29;
  v130 = v30;
  v131 = v31;
  v32 = v30;
  v81 = v30;
  v33 = v31;
  v80 = v31;
  v34 = swift_getOpaqueTypeMetadata2();
  v102 = *(v34 - 8);
  v35 = *(v102 + 64);
  __chkstk_darwin(v34);
  v84 = &v77 - v36;
  v37 = sub_47A1C(&qword_1841B8, &qword_1285E0);
  v128 = v26;
  v129 = v29;
  v130 = v32;
  v131 = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_7E000();
  v128 = v34;
  v129 = v37;
  v40 = v34;
  v85 = v34;
  v88 = v37;
  v130 = v38;
  v131 = v39;
  v87 = v38;
  v41 = v39;
  v86 = v39;
  v42 = swift_getOpaqueTypeMetadata2();
  v90 = v42;
  v98 = *(v42 - 8);
  v43 = *(v98 + 64);
  __chkstk_darwin(v42);
  v83 = &v77 - v44;
  v128 = v40;
  v129 = v37;
  v130 = v38;
  v131 = v41;
  v91 = swift_getOpaqueTypeConformance2();
  v128 = v42;
  v129 = v91;
  v92 = swift_getOpaqueTypeMetadata2();
  v89 = *(v92 - 8);
  v45 = *(v89 + 64);
  v46 = __chkstk_darwin(v92);
  v77 = &v77 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v78 = &v77 - v48;
  v49 = v104;
  v50 = v106;
  v122 = v104;
  v123 = v106;
  v51 = v111;
  v124 = v111;
  sub_115DC0();
  v52 = v100;
  sub_116990();
  (*(v109 + 8))(v15, v12);
  sub_116DC0();
  v53 = v105;
  sub_116D60();
  v54 = v49;
  v55 = (*(v50 + 72))(v49, v50);
  v56 = *(v114 + 8);
  v114 += 8;
  v56(v53, v54);
  v57 = *(v55 + 16);

  v58 = v57 != 0;
  v119 = v54;
  v120 = v50;
  v59 = v51;
  v121 = v51;
  v60 = v99;
  v61 = v95;
  sub_8E234(v58, sub_7E088, v118, v95, v101, v93, v94, v99);
  (*(v110 + 8))(v52, v61);
  v115 = v54;
  v116 = v50;
  v117 = v59;
  v62 = v84;
  v63 = v79;
  sub_116930();
  (*(v103 + 8))(v60, v63);
  sub_116D60();
  v64 = (*(*(v50 + 8) + 24))(v54);
  v56(v53, v54);
  v128 = v64;
  v65 = sub_115F00();
  v66 = v112;
  (*(*(v65 - 8) + 56))(v112, 1, 1, v65);
  v67 = v83;
  v68 = v85;
  sub_116960();
  sub_488C8(v66, &qword_184138, &qword_127D50);

  (*(v102 + 8))(v62, v68);
  v69 = v77;
  v70 = v90;
  sub_116920();
  (*(v98 + 8))(v67, v70);
  v71 = v89;
  v72 = *(v89 + 16);
  v73 = v78;
  v74 = v92;
  v72(v78, v69, v92);
  v75 = *(v71 + 8);
  v75(v69, v74);
  v72(v113, v73, v74);
  return (v75)(v73, v74);
}

uint64_t sub_7B7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a1;
  v47 = a4;
  v6 = type metadata accessor for FullDayUsageView();
  v37 = v6;
  v45 = *(v6 - 8);
  v46 = *(v45 + 64);
  v7 = __chkstk_darwin(v6);
  v44 = &v36 - v8;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1173A0();
  v43 = v13;
  v14 = sub_47A1C(&qword_184140, &qword_127D58);
  v42 = v14;
  WitnessTable = swift_getWitnessTable();
  v52 = v13;
  v53 = &type metadata for Int;
  v54 = v14;
  v55 = WitnessTable;
  v56 = &protocol witness table for Int;
  v15 = sub_116E30();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v39 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v40 = &v36 - v20;
  v21 = *(v6 + 16);
  sub_116DC0();
  sub_116D60();
  v22 = (*(a3 + 48))(a2, a3);
  (*(v9 + 8))(v12, a2);
  v51 = v22;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1172B0();

  v51 = v52;
  sub_117830();
  swift_getWitnessTable();
  v52 = sub_1173B0();
  v48 = a2;
  v49 = a3;
  swift_getKeyPath();
  v23 = v44;
  v24 = v45;
  v25 = v37;
  (*(v45 + 16))(v44, v36, v37);
  v26 = v24;
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  (*(v26 + 32))(v28 + v27, v23, v25);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = sub_8D544;
  v29[5] = v28;
  v35 = sub_7DCA0();
  v30 = v39;
  sub_116E00();
  v50 = v35;
  swift_getWitnessTable();
  v31 = v16[2];
  v32 = v40;
  v31(v40, v30, v15);
  v33 = v16[1];
  v33(v30, v15);
  v31(v47, v32, v15);
  return (v33)(v32, v15);
}

uint64_t sub_7BCDC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v104 = a2;
  v102 = a1;
  v107 = a5;
  v7 = sub_116390();
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = *(v100 + 64);
  __chkstk_darwin(v7);
  v99 = &AssociatedConformanceWitness - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_46F9C(&qword_184418, &unk_1281A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v95 = &AssociatedConformanceWitness - v12;
  v13 = sub_46F9C(&qword_1842B8, &qword_129030);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v85 = &AssociatedConformanceWitness - v15;
  v86 = sub_1158B0();
  v83 = *(v86 - 8);
  v16 = *(v83 + 64);
  __chkstk_darwin(v86);
  v82 = &AssociatedConformanceWitness - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_115760();
  v81 = *(v90 - 8);
  v18 = *(v81 + 64);
  __chkstk_darwin(v90);
  v80 = &AssociatedConformanceWitness - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_46F9C(&qword_1843C8, &qword_128140);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v84 = &AssociatedConformanceWitness - v22;
  v91 = sub_115E00();
  v88 = *(v91 - 8);
  v23 = *(v88 + 64);
  __chkstk_darwin(v91);
  v87 = &AssociatedConformanceWitness - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_46F9C(&qword_184158, &unk_1285C0);
  v92 = *(v96 - 8);
  v25 = *(v92 + 64);
  __chkstk_darwin(v96);
  v89 = &AssociatedConformanceWitness - v26;
  v98 = sub_46F9C(&qword_184150, &unk_127D60);
  v97 = *(v98 - 8);
  v27 = *(v97 + 64);
  __chkstk_darwin(v98);
  v94 = &AssociatedConformanceWitness - v28;
  v29 = sub_46F9C(&qword_184420, &qword_12CD70);
  v105 = *(v29 - 8);
  v106 = v29;
  v30 = *(v105 + 64);
  v31 = __chkstk_darwin(v29);
  v93 = &AssociatedConformanceWitness - v32;
  v103 = *(a3 - 8);
  v33 = *(v103 + 64);
  __chkstk_darwin(v31);
  v35 = &AssociatedConformanceWitness - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v36 = a4;
  v37 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = *(AssociatedConformanceWitness + 8);
  v39 = *(v38 + 32);
  v40 = swift_checkMetadataState();
  v41 = v39(v40, v38);
  if (v42)
  {
    goto LABEL_11;
  }

  v43 = *&v41;
  v44 = (*(v38 + 40))(v40, v38);
  if (v45)
  {
    goto LABEL_11;
  }

  v46 = *&v44;
  v47 = *(type metadata accessor for FullDayUsageView() + 16);
  sub_116DC0();
  sub_116D60();
  v48 = (*(*(v36 + 8) + 24))(v37);
  (*(v103 + 8))(v35, v37);
  v49 = sub_887E0(v48, v43, v46);

  if (!v49)
  {
LABEL_11:
    v77 = 1;
    v75 = v106;
    v76 = v107;
    v73 = v105;
  }

  else
  {
    v50 = COERCE_DOUBLE((*(AssociatedConformanceWitness + 16))(v40));
    if (v51)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v50;
    }

    sub_116370();
    v53 = v80;
    sub_115700();
    v54 = v83;
    v55 = v82;
    v56 = v86;
    (*(v83 + 104))(v82, enum case for Calendar.Component.day(_:), v86);
    v57 = sub_1158D0();
    v58 = v85;
    (*(*(v57 - 8) + 56))(v85, 1, 1, v57);
    sub_115C40();

    sub_488C8(v58, &qword_1842B8, &qword_129030);
    (*(v54 + 8))(v55, v56);
    (*(v81 + 8))(v53, v90);
    sub_116370();
    if (v52 < 0.0)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v52;
    }

    v108 = *&v59;
    sub_115C60();

    v60 = v87;
    sub_115DF0();
    v62 = v99;
    v61 = v100;
    v63 = v101;
    (*(v100 + 104))(v99, enum case for RoundedCornerStyle.continuous(_:), v101);
    v64 = v89;
    v65 = v91;
    sub_115AE0();
    (*(v61 + 8))(v62, v63);
    (*(v88 + 8))(v60, v65);
    v66 = sub_5A754();
    swift_beginAccess();
    v112 = *(*v66 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);
    v108 = v65;
    v109 = &protocol witness table for BarMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = v94;
    v69 = v96;
    sub_115AF0();
    (*(v92 + 8))(v64, v69);
    v108 = v102;
    v113._countAndFlagsBits = sub_1179B0();
    v108 = 0xD000000000000018;
    v109 = 0x8000000000135050;
    sub_117220(v113);

    v108 = v69;
    v109 = &type metadata for Color;
    v110 = OpaqueTypeConformance2;
    v111 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v70 = v93;
    v71 = v98;
    sub_115B30();

    (*(v97 + 8))(v68, v71);
    v73 = v105;
    v72 = v106;
    v74 = v107;
    (*(v105 + 32))(v107, v70, v106);
    v75 = v72;
    v76 = v74;
    v77 = 0;
  }

  return (*(v73 + 56))(v76, v77, 1, v75);
}

uint64_t sub_7C864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_46F9C(&qword_184138, &qword_127D50);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v28 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for FullDayUsageView() + 16);
  sub_116DC0();
  sub_116D60();
  v16 = (*(a4 + 72))(a3, a4);
  (*(v11 + 8))(v14, a3);
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = *(v16 + 8 * v17 + 24);

  if (v18 < 0)
  {
    __break(1u);
LABEL_4:

    v18 = 0;
  }

  v34 = 0;
  v35 = v18;
  v19 = sub_115F00();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v20 = sub_1173A0();
  v21 = sub_47A1C(&qword_184140, &qword_127D58);
  WitnessTable = swift_getWitnessTable();
  v29 = v20;
  v30 = &type metadata for Int;
  v31 = v21;
  v32 = WitnessTable;
  v33 = &protocol witness table for Int;
  sub_116E30();
  v28 = sub_7DCA0();
  swift_getWitnessTable();
  v23 = sub_115DD0();
  v24 = sub_47A1C(&qword_184160, &unk_127D70);
  v25 = swift_getWitnessTable();
  v26 = sub_7DDE8();
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  swift_getOpaqueTypeMetadata2();
  sub_46F9C(&qword_184178, &qword_1285D0);
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  sub_116970();
  return sub_488C8(v10, &qword_184138, &qword_127D50);
}

uint64_t sub_7CC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = sub_115C10();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_117600();
  v43 = *(v48 - 8);
  v10 = *(v43 + 64);
  v11 = __chkstk_darwin(v48);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v41 - v13;
  v47 = sub_46F9C(&qword_1841B0, &unk_127D90);
  v45 = *(v47 - 8);
  v14 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v41 - v15;
  v16 = sub_115C80();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v55 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_115BE0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v54 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_46F9C(&qword_1841A0, &qword_127D88);
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  v24 = __chkstk_darwin(v22);
  v50 = &v41 - v25;
  v26 = *(a2 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(type metadata accessor for FullDayUsageView() + 16);
  sub_116DC0();
  v53 = a1;
  sub_116D60();
  v31 = *(a3 + 72);
  v32 = a3;
  v33 = v31(a2, a3);
  v34 = *(v26 + 8);
  v35 = a2;
  v34(v29, a2);
  v36 = *(v33 + 16);

  if (v36)
  {
    sub_116D60();
    v31(v35, v32);
    v34(v29, v35);
    sub_115BD0();
    sub_115C70();
    sub_46F9C(&qword_1843E8, &qword_128180);
    sub_8D014(&qword_1843F0, &qword_1843E8, &qword_128180, sub_8D0E4);
    v37 = v50;
    sub_115EA0();
    (*(v51 + 32))(v56, v37, v52);
  }

  else
  {
    v38 = v42;
    sub_115590();
    sub_1175F0();
    (*(v43 + 8))(v38, v48);
    *&v57 = 0x3FF0000000000000;
    sub_66C80();
    sub_115C00();
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
    sub_115BD0();
    sub_115C70();
    sub_8C988(&qword_184358, &type metadata accessor for NSDecimal.FormatStyle.Percent);
    v39 = v44;
    sub_115E80();
    (*(v45 + 32))(v56, v39, v47);
  }

  sub_46F9C(&qword_1843E0, &qword_128178);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_7D22C@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_46F9C(&qword_184408, &qword_128190);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v64 = &v51 - v3;
  v4 = sub_115A40();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_46F9C(&qword_1843A0, &unk_128120);
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  v8 = __chkstk_darwin(v59);
  v63 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v51 - v10;
  v11 = sub_115D00();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_115DA0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v54 = sub_46F9C(&qword_184390, &qword_128110);
  v55 = *(v54 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v54);
  v18 = &v51 - v17;
  v19 = sub_46F9C(&qword_184410, &qword_128198);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v24 = sub_46F9C(&qword_184400, &qword_128188);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v51 - v29;
  sub_115EB0();
  if (BYTE8(v70) == 1)
  {
    v31 = 1;
  }

  else
  {
    v32 = [objc_opt_self() localizedStringWithPercentage:v70];
    v31 = 1;
    if (v32)
    {
      v33 = v32;
      sub_1171B0();
      v52 = v1;

      v51 = &v51;
      __chkstk_darwin(v34);
      sub_115D90();
      sub_115CF0();
      v50[3] = &protocol witness table for Text;
      v50[1] = v50;
      v50[2] = &type metadata for Text;
      v50[0] = sub_8D6A0;
      sub_115C30();

      *&v70 = sub_116B50();
      sub_48800(&qword_184388, &qword_184390, &qword_128110);
      v35 = v54;
      sub_115E10();
      v1 = v52;

      (*(v55 + 8))(v18, v35);
      (*(v20 + 32))(v30, v23, v19);
      v31 = 0;
    }
  }

  v36 = *(v20 + 56);
  v56 = v30;
  v36(v30, v31, 1, v19);
  sub_116010();
  v70 = v67;
  v71 = v68;
  v72 = v69;
  v37 = v60;
  sub_115A30();
  v66 = sub_116B50();
  v38 = v57;
  v39 = v62;
  sub_115E10();

  (*(v61 + 8))(v37, v39);
  sub_8D1EC(v30, v28);
  v40 = v58;
  v41 = *(v58 + 16);
  v42 = v63;
  v43 = v59;
  v41(v63, v38, v59);
  sub_8D0E4();
  v44 = v64;
  sub_8D1EC(v28, v64);
  v45 = v1;
  v46 = *(v1 + 48);
  v41((v44 + v46), v42, v43);
  v47 = v65;
  sub_8D25C(v44, v65);
  (*(v40 + 32))(v47 + *(v45 + 48), v44 + v46, v43);
  v48 = *(v40 + 8);
  v48(v38, v43);
  sub_8D2CC(v56);
  v48(v42, v43);
  return sub_8D2CC(v28);
}

uint64_t sub_7D9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_184128, &qword_127D40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *(a2 + 36);
  sub_479B4(a1, &v9 - v7, &qword_184128, &qword_127D40);
  sub_46F9C(&qword_184130, &qword_127D48);
  sub_116D70();
  return sub_488C8(a1, &qword_184128, &qword_127D40);
}

uint64_t sub_7DAB8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_117620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  sub_116CB0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_7DBD0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 44);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_117620();
  v6 = sub_116CF0();
  return a2(v6);
}

uint64_t sub_7DC40()
{
  sub_46F9C(&qword_1835B0, &qword_127DA0);
  sub_116CB0();
  return v1;
}

unint64_t sub_7DCA0()
{
  result = qword_184148;
  if (!qword_184148)
  {
    sub_47A1C(&qword_184140, &qword_127D58);
    sub_47A1C(&qword_184150, &unk_127D60);
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184148);
  }

  return result;
}

unint64_t sub_7DDE8()
{
  result = qword_184168;
  if (!qword_184168)
  {
    sub_47A1C(&qword_184160, &unk_127D70);
    sub_8C988(&qword_184170, &type metadata accessor for ChartPlotContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184168);
  }

  return result;
}

unint64_t sub_7DEA4()
{
  result = qword_184180;
  if (!qword_184180)
  {
    sub_47A1C(&qword_184178, &qword_1285D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184180);
  }

  return result;
}

unint64_t sub_7DF20()
{
  result = qword_184190;
  if (!qword_184190)
  {
    sub_47A1C(&qword_184188, &qword_127D80);
    sub_48800(&qword_184198, &qword_1841A0, &qword_127D88);
    sub_48800(&qword_1841A8, &qword_1841B0, &unk_127D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184190);
  }

  return result;
}

unint64_t sub_7E000()
{
  result = qword_1841C0;
  if (!qword_1841C0)
  {
    sub_47A1C(&qword_1841B8, &qword_1285E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1841C0);
  }

  return result;
}

uint64_t sub_7E0A0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v5 = *v2;
  v6 = v2[1];
  sub_46F9C(&qword_1841C8, &qword_127DA8);
  sub_116CC0();
  return v4;
}

uint64_t sub_7E0F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 48));
  v5 = *v3;
  v6 = v3[1];
  sub_46F9C(&qword_1841C8, &qword_127DA8);
  return sub_116CD0();
}

void sub_7E154(uint64_t a1@<X0>, char *a2@<X8>)
{
  v228 = a1;
  v174 = a2;
  v3 = sub_115CD0();
  v172 = *(v3 - 8);
  v173 = v3;
  v4 = *(v172 + 64);
  __chkstk_darwin(v3);
  v171 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_46F9C(&qword_184138, &qword_127D50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v225 = &v159 - v8;
  v231 = *(a1 - 8);
  v230 = *(v231 + 64);
  __chkstk_darwin(v9);
  v229 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v232 = *(v11 - 8);
  v12 = *(v232 + 64);
  __chkstk_darwin(v13);
  v227 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v16 = sub_1173A0();
  v17 = sub_47A1C(&qword_1841D0, &qword_127DB0);
  WitnessTable = swift_getWitnessTable();
  v240 = v16;
  v241 = &type metadata for Int;
  v242 = v17;
  v243 = WitnessTable;
  v244 = &protocol witness table for Int;
  v251[2] = sub_116E30();
  v19 = sub_47A1C(&qword_1841D8, &qword_127DB8);
  v202 = v15;
  v220 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_47A1C(&qword_1841E0, &qword_127DC0);
  v22 = sub_47A1C(&qword_1841E8, &qword_127DC8);
  v23 = sub_47A1C(&qword_1841F0, &qword_127DD0);
  v240 = sub_115E70();
  v241 = &protocol witness table for RuleMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v240 = v23;
  v241 = &type metadata for Color;
  v242 = OpaqueTypeConformance2;
  v243 = &protocol witness table for Color;
  v25 = swift_getOpaqueTypeConformance2();
  v240 = v22;
  v241 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v240 = v21;
  v241 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v240 = v19;
  v241 = AssociatedTypeWitness;
  v242 = v27;
  v243 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v240 = v19;
  v241 = AssociatedTypeWitness;
  v242 = v27;
  v243 = AssociatedConformanceWitness;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_4869C();
  v240 = OpaqueTypeMetadata2;
  v241 = &type metadata for String;
  v242 = v30;
  v243 = v31;
  swift_getOpaqueTypeMetadata2();
  v251[3] = sub_117620();
  v32 = sub_115A60();
  v250 = sub_88B20();
  v251[0] = swift_getWitnessTable();
  v240 = OpaqueTypeMetadata2;
  v241 = &type metadata for String;
  v242 = v30;
  v243 = v31;
  v249 = swift_getOpaqueTypeConformance2();
  v251[1] = swift_getWitnessTable();
  v248 = v251;
  v226 = v32;
  v216 = swift_getWitnessTable();
  v33 = sub_115DD0();
  v223 = *(v33 - 8);
  v34 = *(v223 + 64);
  __chkstk_darwin(v33);
  v212 = &v159 - v35;
  v36 = swift_getWitnessTable();
  v240 = v33;
  v214 = v33;
  v241 = &type metadata for Int;
  v242 = v36;
  v243 = &protocol witness table for Int;
  v37 = v36;
  v215 = v36;
  v38 = swift_getOpaqueTypeMetadata2();
  v222 = *(v38 - 8);
  v39 = *(v222 + 64);
  __chkstk_darwin(v38);
  v217 = &v159 - v40;
  v41 = sub_47A1C(&qword_184160, &unk_127D70);
  v240 = v33;
  v241 = &type metadata for Int;
  v242 = v37;
  v243 = &protocol witness table for Int;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_7DDE8();
  v240 = v38;
  v241 = v41;
  v44 = v38;
  v206 = v38;
  v207 = v43;
  v208 = v42;
  v209 = v41;
  v242 = v42;
  v243 = v43;
  v45 = v42;
  v46 = v43;
  v47 = swift_getOpaqueTypeMetadata2();
  v221 = *(v47 - 8);
  v48 = *(v221 + 64);
  __chkstk_darwin(v47);
  v210 = &v159 - v49;
  v50 = sub_47A1C(&qword_184178, &qword_1285D0);
  v240 = v44;
  v241 = v41;
  v242 = v45;
  v243 = v46;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_7DEA4();
  v240 = v47;
  v241 = v50;
  v242 = v51;
  v243 = v52;
  v213 = swift_getOpaqueTypeMetadata2();
  v53 = v47;
  v203 = v47;
  v54 = sub_116480();
  v219 = *(v54 - 8);
  v55 = *(v219 + 64);
  __chkstk_darwin(v54);
  v205 = &v159 - v56;
  v57 = sub_47A1C(&qword_184218, &qword_127DF0);
  v240 = v53;
  v241 = v50;
  v200 = v51;
  v242 = v51;
  v243 = v52;
  v201 = swift_getOpaqueTypeConformance2();
  v246 = v201;
  v247 = v51;
  v58 = swift_getWitnessTable();
  v59 = sub_88CFC();
  v240 = v54;
  v241 = v57;
  v190 = v54;
  v197 = v57;
  v242 = v58;
  v243 = v59;
  v60 = v58;
  v195 = v58;
  v61 = v59;
  v193 = v59;
  v62 = swift_getOpaqueTypeMetadata2();
  v218 = *(v62 - 8);
  v63 = *(v218 + 64);
  __chkstk_darwin(v62);
  v199 = &v159 - v64;
  v65 = sub_47A1C(&qword_1841B8, &qword_1285E0);
  v240 = v54;
  v241 = v57;
  v242 = v60;
  v243 = v61;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_7E000();
  v240 = v62;
  v241 = v65;
  v68 = v62;
  v191 = v62;
  v192 = v67;
  v196 = v65;
  v242 = v66;
  v243 = v67;
  v194 = v66;
  v69 = v67;
  v70 = swift_getOpaqueTypeMetadata2();
  v211 = *(v70 - 8);
  v71 = *(v211 + 64);
  __chkstk_darwin(v70);
  v198 = &v159 - v72;
  v73 = sub_47A1C(&qword_184238, &qword_127E00);
  v240 = v68;
  v241 = v65;
  v242 = v66;
  v243 = v69;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_48800(&qword_184240, &qword_184238, &qword_127E00);
  v240 = v70;
  v241 = v73;
  v76 = v70;
  v185 = v70;
  v186 = v75;
  v187 = v74;
  v188 = v73;
  v242 = v74;
  v243 = v75;
  v77 = v75;
  v78 = swift_getOpaqueTypeMetadata2();
  v204 = *(v78 - 8);
  v79 = *(v204 + 64);
  __chkstk_darwin(v78);
  v189 = &v159 - v80;
  v81 = sub_47A1C(&qword_184248, &qword_127E08);
  v240 = v76;
  v241 = v73;
  v242 = v74;
  v243 = v77;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = sub_48800(&qword_184250, &qword_184248, &qword_127E08);
  v181 = v78;
  v182 = v83;
  v240 = v78;
  v241 = v81;
  v183 = v82;
  v184 = v81;
  v242 = v82;
  v243 = v83;
  v84 = v83;
  v85 = swift_getOpaqueTypeMetadata2();
  v169 = *(v85 - 8);
  v86 = *(v169 + 64);
  __chkstk_darwin(v85);
  v180 = &v159 - v87;
  v240 = v78;
  v241 = v81;
  v242 = v82;
  v243 = v84;
  v88 = swift_getOpaqueTypeConformance2();
  v240 = v85;
  v241 = &type metadata for String;
  v242 = &type metadata for Color;
  v243 = v88;
  v244 = &protocol witness table for String;
  v245 = &protocol witness table for Color;
  v89 = swift_getOpaqueTypeMetadata2();
  v167 = *(v89 - 8);
  v90 = *(v167 + 64);
  __chkstk_darwin(v89);
  v166 = &v159 - v91;
  v170 = v85;
  v240 = v85;
  v241 = &type metadata for String;
  v242 = &type metadata for Color;
  v243 = v88;
  v163 = v88;
  v244 = &protocol witness table for String;
  v245 = &protocol witness table for Color;
  v92 = swift_getOpaqueTypeConformance2();
  v168 = v89;
  v240 = v89;
  v241 = v92;
  v161 = v92;
  v93 = swift_getOpaqueTypeMetadata2();
  v164 = *(v93 - 8);
  v165 = v93;
  v94 = *(v164 + 64);
  __chkstk_darwin(v93);
  v160 = &v159 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v96);
  v162 = &v159 - v97;
  v98 = v220;
  v239[8] = v220;
  v99 = v202;
  v239[9] = v202;
  v100 = v224;
  v239[10] = v224;
  v101 = v212;
  sub_115DC0();
  v175 = sub_116DC0();
  v102 = v227;
  sub_116D60();
  v103 = (*(v99 + 128))(v98, v99);
  v226 = *(v232 + 8);
  v232 += 8;
  v226(v102, v98);
  v239[15] = v103;
  v104 = v231;
  v105 = *(v231 + 16);
  v179 = v231 + 16;
  v216 = v105;
  v106 = v229;
  v107 = v228;
  v105(v229, v100, v228);
  v178 = *(v104 + 80);
  v108 = (v178 + 32) & ~v178;
  v176 = v108;
  v109 = swift_allocObject();
  *(v109 + 16) = v98;
  *(v109 + 24) = v99;
  v110 = *(v104 + 32);
  v231 = v104 + 32;
  v177 = v110;
  v110(v109 + v108, v106, v107);
  v111 = v217;
  v112 = v214;
  sub_116AE0();

  (*(v223 + 8))(v101, v112);
  v113 = v210;
  v114 = v206;
  sub_116990();
  (*(v222 + 8))(v111, v114);
  v115 = v227;
  sub_116D60();
  v116 = v98;
  v117 = v98;
  v118 = v99;
  v119 = (*(v99 + 72))(v117, v99);
  v226(v115, v116);
  v120 = *(v119 + 16);

  v121 = v120 != 0;
  v239[2] = v116;
  v239[3] = v99;
  v239[4] = v100;
  v122 = v205;
  v123 = v203;
  sub_8E234(v121, sub_88E7C, v239, v203, v213, v200, v201, v205);
  (*(v221 + 8))(v113, v123);
  v236 = v116;
  v237 = v118;
  v238 = v100;
  v124 = v199;
  v125 = v190;
  sub_116930();
  (*(v219 + 8))(v122, v125);
  sub_116D60();
  v126 = (*(*(v118 + 8) + 24))(v116);
  v226(v115, v116);
  v239[14] = v126;
  v127 = sub_115F00();
  v128 = v225;
  (*(*(v127 - 8) + 56))(v225, 1, 1, v127);
  v129 = v198;
  v130 = v191;
  sub_116960();
  v131 = v128;
  v132 = v180;
  sub_488C8(v131, &qword_184138, &qword_127D50);

  (*(v218 + 8))(v124, v130);
  v233 = v116;
  v234 = v118;
  v235 = v100;
  v133 = v189;
  v134 = v185;
  sub_116910();
  (*(v211 + 8))(v129, v134);
  v135 = v229;
  v136 = v228;
  v216(v229, v100, v228);
  v137 = v176;
  v138 = swift_allocObject();
  *(v138 + 16) = v116;
  *(v138 + 24) = v118;
  v177(v138 + v137, v135, v136);
  sub_116EB0();
  v139 = v181;
  sub_116980();

  (*(v204 + 8))(v133, v139);
  sub_46F9C(&qword_184258, &unk_127E10);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1248A0;
  v141 = sub_117170();
  v142 = BatteryUILocalization(v141);

  if (v142)
  {
    v143 = sub_1171B0();
    v145 = v144;

    *(v140 + 32) = v143;
    *(v140 + 40) = v145;
    v146 = sub_5A754();
    swift_beginAccess();
    *(v140 + 48) = *(*v146 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);

    sub_87554(v136);
    *(v140 + 56) = v147;
    *(v140 + 64) = v148;
    swift_beginAccess();
    *(v140 + 72) = *(*v146 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

    v149 = v166;
    v150 = v170;
    sub_1169A0();

    (*(v169 + 8))(v132, v150);
    v151 = v171;
    sub_115CC0();
    sub_116EC0();
    v152 = v160;
    v153 = v168;
    sub_116940();
    (*(v172 + 8))(v151, v173);
    (*(v167 + 8))(v149, v153);
    v155 = v164;
    v154 = v165;
    v156 = *(v164 + 16);
    v157 = v162;
    v156(v162, v152, v165);
    v158 = *(v155 + 8);
    v158(v152, v154);
    v156(v174, v157, v154);
    v158(v157, v154);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7F79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v271 = a1;
  v259 = a4;
  v233 = sub_115D30();
  v232 = *(v233 - 8);
  v6 = *(v232 + 64);
  __chkstk_darwin(v233);
  v230 = v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_115D60();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v229 = v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v228 = v188 - v12;
  v238 = sub_115D70();
  v237 = *(v238 - 8);
  v13 = *(v237 + 64);
  __chkstk_darwin(v238);
  v235 = v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_115CD0();
  v234 = *(v236 - 8);
  v15 = *(v234 + 64);
  __chkstk_darwin(v236);
  v231 = v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_1842B8, &qword_129030);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v211 = v188 - v19;
  v212 = sub_1158B0();
  v210 = *(v212 - 8);
  v20 = *(v210 + 64);
  __chkstk_darwin(v212);
  v204 = v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_115760();
  v202 = *(v209 - 8);
  v22 = *(v202 + 64);
  __chkstk_darwin(v209);
  v199 = v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_46F9C(&qword_1843C8, &qword_128140);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v198 = v188 - v26;
  v27 = sub_115E70();
  v203 = *(v27 - 8);
  v28 = *(v203 + 64);
  __chkstk_darwin(v27);
  v200 = v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_46F9C(&qword_1841F0, &qword_127DD0);
  v206 = *(v30 - 8);
  v31 = *(v206 + 64);
  __chkstk_darwin(v30);
  v201 = v188 - v32;
  v33 = sub_46F9C(&qword_1841E8, &qword_127DC8);
  v213 = *(v33 - 8);
  v34 = *(v213 + 64);
  __chkstk_darwin(v33);
  v207 = v188 - v35;
  v36 = sub_46F9C(&qword_1841E0, &qword_127DC0);
  v218 = *(v36 - 8);
  v37 = *(v218 + 64);
  __chkstk_darwin(v36);
  v216 = v188 - v38;
  v39 = sub_46F9C(&qword_1841D8, &qword_127DB8);
  v226 = *(v39 - 8);
  v40 = *(v226 + 64);
  __chkstk_darwin(v39);
  v239 = v188 - v41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v205 = v27;
  v285 = v27;
  v286 = &protocol witness table for RuleMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v208 = v30;
  v285 = v30;
  v286 = &type metadata for Color;
  v195 = OpaqueTypeConformance2;
  v287 = OpaqueTypeConformance2;
  v288 = &protocol witness table for Color;
  v44 = swift_getOpaqueTypeConformance2();
  v214 = v33;
  v285 = v33;
  v286 = v44;
  v196 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v220 = v36;
  v285 = v36;
  v286 = v45;
  v197 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v285 = v39;
  v286 = AssociatedTypeWitness;
  v287 = v46;
  v288 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v263 = OpaqueTypeMetadata2;
  v224 = *(OpaqueTypeMetadata2 - 8);
  v49 = *(v224 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v223 = v188 - v50;
  v227 = v39;
  v285 = v39;
  v286 = AssociatedTypeWitness;
  v225 = AssociatedTypeWitness;
  v217 = v46;
  v287 = v46;
  v288 = AssociatedConformanceWitness;
  v215 = AssociatedConformanceWitness;
  v51 = swift_getOpaqueTypeConformance2();
  v262 = v51;
  v52 = sub_4869C();
  v285 = OpaqueTypeMetadata2;
  v286 = &type metadata for String;
  v287 = v51;
  v288 = v52;
  v261 = v52;
  v268 = swift_getOpaqueTypeMetadata2();
  v267 = *(v268 - 8);
  v53 = *(v267 + 64);
  v54 = __chkstk_darwin(v268);
  v222 = v188 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v219 = v188 - v57;
  __chkstk_darwin(v56);
  v221 = v188 - v58;
  v59 = sub_46F9C(&qword_184128, &qword_127D40);
  v60 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59 - 8);
  v243 = v188 - v61;
  v245 = sub_115A20();
  v246 = *(v245 - 8);
  v62 = *(v246 + 64);
  __chkstk_darwin(v245);
  v240 = v188 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = a3;
  v64 = swift_getAssociatedTypeWitness();
  v242 = sub_117620();
  v241 = *(v242 - 8);
  v65 = *(v241 + 8);
  v66 = __chkstk_darwin(v242);
  v247 = v188 - v67;
  v249 = *(v64 - 8);
  v68 = *(v249 + 64);
  v69 = __chkstk_darwin(v66);
  v244 = v188 - v70;
  v273 = a2;
  v272 = *(a2 - 8);
  v71 = *(v272 + 64);
  __chkstk_darwin(v69);
  v265 = v188 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_117620();
  v257 = *(v258 - 8);
  v73 = *(v257 + 64);
  v74 = __chkstk_darwin(v258);
  v260 = v188 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v256 = v188 - v76;
  v77 = type metadata accessor for DynamicUsageView();
  v264 = v77;
  v78 = *(v77 - 8);
  v252 = *(v78 + 64);
  __chkstk_darwin(v77);
  v80 = v188 - v79;
  swift_getTupleTypeMetadata2();
  v81 = sub_1173A0();
  v255 = v81;
  v82 = sub_47A1C(&qword_1841D0, &qword_127DB0);
  v254 = v82;
  WitnessTable = swift_getWitnessTable();
  v285 = v81;
  v286 = &type metadata for Int;
  v287 = v82;
  v288 = WitnessTable;
  v289 = &protocol witness table for Int;
  v270 = sub_116E30();
  v83 = *(v270 - 8);
  v84 = v83[8];
  v85 = __chkstk_darwin(v270);
  v87 = v188 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85);
  v269 = v188 - v88;
  v89 = v271;
  v192 = *(v271 + *(v77 + 40));
  v277 = v192;
  v248 = v64;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1172B0();
  v277 = v285;
  sub_117830();
  swift_getWitnessTable();
  v285 = sub_1173B0();
  v90 = v273;
  v274 = v273;
  v91 = v266;
  v275 = v266;
  KeyPath = swift_getKeyPath();
  v92 = *(v78 + 16);
  v93 = v264;
  v190 = v78 + 16;
  v189 = v92;
  v92(v80, v89, v264);
  v94 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v188[2] = *(v78 + 80);
  v188[1] = v94 + v252;
  v95 = swift_allocObject();
  *(v95 + 16) = v90;
  *(v95 + 24) = v91;
  v96 = *(v78 + 32);
  v191 = v94;
  v193 = v80;
  v194 = v78 + 32;
  v188[0] = v96;
  v96(v95 + v94, v80, v93);
  v97 = swift_allocObject();
  v97[2] = v90;
  v97[3] = v91;
  v97[4] = sub_8CC1C;
  v97[5] = v95;
  v187 = sub_88B20();
  sub_116E00();
  v284[2] = v187;
  v98 = v270;
  v252 = swift_getWitnessTable();
  v99 = v83[2];
  KeyPath = (v83 + 2);
  v250 = v99;
  v99(v269, v87, v98);
  v100 = v83[1];
  v254 = v87;
  v101 = v268;
  v255 = v83 + 1;
  WitnessTable = v100;
  v100(v87, v98);
  v102 = v93;
  v103 = *(v93 + 16);
  v104 = sub_116DC0();
  v105 = v265;
  sub_116D60();
  v106 = v273;
  v107 = (*(v91 + 80))(v273, v91);
  v108 = v267;
  LOBYTE(v93) = v107;
  v109 = *(v272 + 8);
  v272 += 8;
  v109(v105, v106);
  v110 = 1;
  if (v93)
  {
    v111 = v247;
    sub_7DBD0(v102, &State.wrappedValue.getter);
    v112 = v249;
    v113 = v248;
    if ((*(v249 + 48))(v111, 1, v248) == 1)
    {
      (*(v241 + 1))(v111, v242);
LABEL_11:
      v110 = 1;
      v101 = v268;
      v108 = v267;
      goto LABEL_12;
    }

    v241 = v109;
    v242 = v104;
    v114 = v244;
    (*(v112 + 32))(v244, v111, v113);
    v115 = *(v102 + 36);
    sub_46F9C(&qword_184130, &qword_127D48);
    v116 = v243;
    sub_116D60();
    v117 = v246;
    v118 = v245;
    if ((*(v246 + 48))(v116, 1, v245) == 1)
    {
      (*(v112 + 8))(v114, v113);
      sub_488C8(v116, &qword_184128, &qword_127D40);
      goto LABEL_11;
    }

    v119 = v240;
    (*(v117 + 32))(v240, v116, v118);
    v120 = v117;
    v121 = swift_getAssociatedConformanceWitness();
    v122 = v113;
    v123 = *(v121 + 8);
    (*(v123 + 32))(v122, v123);
    if (v124)
    {
      (*(v120 + 8))(v119, v118);
      v125 = *(v249 + 8);
      v126 = v114;
LABEL_10:
      v125(v126, v122);
      goto LABEL_11;
    }

    (*(v123 + 40))(v122, v123);
    if (v127)
    {
      (*(v246 + 8))(v119, v118);
      v125 = *(v249 + 8);
      v126 = v114;
      goto LABEL_10;
    }

    v139 = COERCE_DOUBLE((*(v121 + 16))(v122, v121));
    if (v140)
    {
      v141 = 0.0;
    }

    else
    {
      v141 = v139;
    }

    v247 = sub_116370();
    LODWORD(v243) = v142;
    v143 = v199;
    sub_115700();
    v144 = v210;
    v145 = v204;
    v146 = v212;
    (*(v210 + 104))(v204, enum case for Calendar.Component.day(_:), v212);
    v147 = sub_1158D0();
    v148 = v211;
    (*(*(v147 - 8) + 56))(v211, 1, 1, v147);
    sub_115C40();

    sub_488C8(v148, &qword_1842B8, &qword_129030);
    (*(v144 + 8))(v145, v146);
    (*(v202 + 8))(v143, v209);
    v149 = v200;
    sub_115E50();
    sub_116010();
    v150 = v201;
    v151 = v205;
    sub_115BA0();
    sub_57B04(&v285);
    (*(v203 + 8))(v149, v151);
    v277 = sub_82754(v114, v264);
    v152 = v207;
    v153 = v208;
    sub_115AF0();

    (*(v206 + 8))(v150, v153);
    v154 = v265;
    sub_116D60();
    v155 = v266;
    v156 = v273;
    (*(v266 + 96))(v273, v266);
    v157 = v241;
    v241(v154, v156);
    v158 = v216;
    v159 = v214;
    sub_115B50();
    (*(v213 + 8))(v152, v159);
    v160 = sub_5A754();
    swift_beginAccess();
    v161 = *(*v160 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
    if (v141 < 0.0)
    {
      v162 = 0.0;
    }

    else
    {
      v162 = v141;
    }

    v277 = *&v162;
    sub_115A10();
    v163 = v220;
    sub_115B50();
    (*(v218 + 8))(v158, v163);
    sub_116D60();
    v164 = (*(v155 + 128))(v156, v155);
    v157(v154, v156);
    if (v164 >= sub_117370() / 2)
    {
      v165 = v231;
      sub_115CA0();
    }

    else
    {
      v165 = v231;
      sub_115CB0();
    }

    v166 = v230;
    sub_115D20();
    sub_115D40();
    (*(v232 + 8))(v166, v233);
    sub_115D50();
    v167 = v235;
    sub_115D10();
    v168 = v193;
    v169 = v264;
    v189(v193, v271, v264);
    v170 = swift_allocObject();
    v171 = v273;
    v172 = v266;
    *(v170 + 16) = v273;
    *(v170 + 24) = v172;
    (v188[0])(v170 + v191, v168, v169);
    sub_116EB0();
    swift_checkMetadataState();
    v173 = v227;
    v174 = v223;
    v175 = v239;
    sub_115AC0();

    (*(v237 + 8))(v167, v238);
    (*(v234 + 8))(v165, v236);
    (*(v226 + 8))(v175, v173);
    v176 = v265;
    sub_116D60();
    v177 = (*(v172 + 120))(v171, v172);
    v179 = v178;
    v241(v176, v171);
    v277 = v177;
    v278 = v179;
    v180 = v219;
    v181 = v263;
    sub_115B00();

    (*(v224 + 8))(v174, v181);
    (*(v246 + 8))(v240, v245);
    (*(v249 + 8))(v244, v248);
    v182 = v267;
    v183 = *(v267 + 16);
    v184 = v221;
    v101 = v268;
    v183(v221, v180, v268);
    v185 = *(v182 + 8);
    v185(v180, v101);
    v186 = v222;
    v183(v222, v184, v101);
    v108 = v182;
    v185(v184, v101);
    (*(v182 + 32))(v260, v186, v101);
    v110 = 0;
  }

LABEL_12:
  v128 = v260;
  (*(v108 + 56))(v260, v110, 1, v101);
  v129 = v257;
  v130 = *(v257 + 16);
  v131 = v256;
  v132 = v258;
  v130(v256, v128, v258);
  v133 = *(v129 + 8);
  v133(v128, v132);
  v134 = v254;
  v135 = v269;
  v136 = v270;
  v250(v254, v269, v270);
  v284[0] = v134;
  v130(v128, v131, v132);
  v284[1] = v128;
  v283[0] = v136;
  v283[1] = v132;
  v281 = v252;
  v277 = v263;
  v278 = &type metadata for String;
  v279 = v262;
  v280 = v261;
  v276 = swift_getOpaqueTypeConformance2();
  v282 = swift_getWitnessTable();
  sub_82BE8(v284, 2uLL, v283, v259);
  v133(v131, v132);
  v137 = WitnessTable;
  WitnessTable(v135, v136);
  v133(v128, v132);
  return v137(v134, v136);
}

void sub_81760(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v136 = a3;
  v140 = a2;
  v134 = a1;
  v139 = a6;
  v8 = sub_116360();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v132 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_116390();
  v120 = *(v121 - 8);
  v11 = *(v120 + 64);
  __chkstk_darwin(v121);
  v119 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_46F9C(&qword_1843D0, &qword_128FE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v115 = &v103 - v15;
  v16 = sub_46F9C(&qword_1842B8, &qword_129030);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v108 = &v103 - v18;
  v109 = sub_1158B0();
  v107 = *(v109 - 8);
  v19 = *(v107 + 64);
  __chkstk_darwin(v109);
  v105 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_115760();
  v125 = *(v127 - 8);
  v21 = *(v125 + 64);
  __chkstk_darwin(v127);
  v133 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_46F9C(&qword_1843C8, &qword_128140);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v106 = &v103 - v25;
  v113 = sub_115E00();
  v111 = *(v113 - 8);
  v26 = *(v111 + 64);
  __chkstk_darwin(v113);
  v110 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_46F9C(&qword_184158, &unk_1285C0);
  v114 = *(v117 - 8);
  v28 = *(v114 + 64);
  __chkstk_darwin(v117);
  v112 = &v103 - v29;
  v123 = sub_46F9C(&qword_184210, &qword_128640);
  v118 = *(v123 - 8);
  v30 = *(v118 + 64);
  __chkstk_darwin(v123);
  v116 = &v103 - v31;
  v129 = sub_46F9C(&qword_184208, &unk_127DE0);
  v124 = *(v129 - 8);
  v32 = *(v124 + 64);
  __chkstk_darwin(v129);
  v122 = &v103 - v33;
  v131 = sub_46F9C(&qword_184200, &qword_127DD8);
  v130 = *(v131 - 8);
  v34 = *(v130 + 64);
  __chkstk_darwin(v131);
  v128 = &v103 - v35;
  v36 = sub_46F9C(&qword_1843D8, &qword_128170);
  v137 = *(v36 - 8);
  v138 = v36;
  v37 = *(v137 + 64);
  v38 = __chkstk_darwin(v36);
  v126 = &v103 - v39;
  v135 = *(a4 - 8);
  v40 = *(v135 + 64);
  __chkstk_darwin(v38);
  v42 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v43 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = *(AssociatedConformanceWitness + 8);
  v46 = *(v45 + 32);
  v47 = swift_checkMetadataState();
  v48 = v46(v47, v45);
  if (v49)
  {
    goto LABEL_15;
  }

  v50 = *&v48;
  v51 = (*(v45 + 40))(v47, v45);
  if (v52)
  {
    goto LABEL_15;
  }

  v53 = *&v51;
  v54 = type metadata accessor for DynamicUsageView();
  v55 = *(v54 + 16);
  sub_116DC0();
  sub_116D60();
  v56 = (*(*(a5 + 8) + 24))(v43);
  (*(v135 + 8))(v42, v43);
  v57 = sub_887E0(v56, v50, v53);

  if (!v57)
  {
LABEL_15:
    v102 = 1;
    v100 = v138;
    v101 = v139;
    v98 = v137;
    goto LABEL_16;
  }

  v58 = sub_7E0A0(v54);
  if ((v134 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(v58 + 16) <= v134)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v59 = *(v58 + 8 * v134 + 32);

  *&v60 = COERCE_DOUBLE((*(AssociatedConformanceWitness + 16))(v47, AssociatedConformanceWitness));
  v61 = *&v60;
  if (v62)
  {
    v61 = 0.0;
    goto LABEL_9;
  }

  if ((v60 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  if (v61 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v104 = v54;
  if (v61 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v63 = v61;
  if (v59 < v61)
  {
    v63 = v59;
  }

  v135 = v63;
  sub_116370();
  v64 = v133;
  sub_115700();
  v65 = v107;
  v66 = v105;
  v67 = v109;
  (*(v107 + 104))(v105, enum case for Calendar.Component.day(_:), v109);
  v68 = sub_1158D0();
  v69 = v108;
  (*(*(v68 - 8) + 56))(v108, 1, 1, v68);
  sub_115C40();

  sub_488C8(v69, &qword_1842B8, &qword_129030);
  (*(v65 + 8))(v66, v67);
  v125 = *(v125 + 8);
  v70 = v127;
  (v125)(v64, v127);
  sub_116370();
  *&v146[0] = v135 & ~(v135 >> 63);
  sub_115C60();

  v71 = v110;
  sub_115DF0();
  v72 = v120;
  v73 = v119;
  v74 = v121;
  (*(v120 + 104))(v119, enum case for RoundedCornerStyle.continuous(_:), v121);
  v75 = v112;
  v76 = v113;
  sub_115AE0();
  (*(v72 + 8))(v73, v74);
  (*(v111 + 8))(v71, v76);
  v77 = sub_82754(v140, v104);
  sub_5B018(0, v77, v146);

  v143 = v146[0];
  v144 = v146[1];
  v145 = v147;
  v141 = v76;
  v142 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = v116;
  v80 = v117;
  sub_115AF0();
  sub_8CFC0(v146);
  (*(v114 + 8))(v75, v80);
  *&v143 = v134;
  v148._countAndFlagsBits = sub_1179B0();
  *&v143 = 0xD000000000000018;
  *(&v143 + 1) = 0x8000000000135050;
  sub_117220(v148);

  *&v143 = v80;
  *(&v143 + 1) = &type metadata for LinearGradient;
  *&v144 = OpaqueTypeConformance2;
  *(&v144 + 1) = &protocol witness table for LinearGradient;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v122;
  v83 = v123;
  sub_115B30();

  (*(v118 + 8))(v79, v83);
  v84 = v133;
  sub_115700();
  isa = sub_1156B0().super.isa;
  (v125)(v84, v70);
  v86 = sub_117170();
  v87 = AXDateStringForFormat();

  if (v87)
  {
    v88 = sub_1171B0();
    v90 = v89;

    *&v143 = v88;
    *(&v143 + 1) = v90;
    v141 = v83;
    v142 = v81;
    v91 = swift_getOpaqueTypeConformance2();
    v92 = sub_4869C();
    v93 = v128;
    v94 = v129;
    sub_115B00();

    (*(v124 + 8))(v82, v94);
    sub_116350();
    v149._countAndFlagsBits = 0;
    v149._object = 0xE000000000000000;
    sub_116340(v149);
    *&v143 = v135;
    sub_116330();
    v150._countAndFlagsBits = 37;
    v150._object = 0xE100000000000000;
    sub_116340(v150);
    sub_116380();
    *&v143 = v94;
    *(&v143 + 1) = &type metadata for String;
    *&v144 = v91;
    *(&v144 + 1) = v92;
    swift_getOpaqueTypeConformance2();
    v95 = v126;
    v96 = v131;
    sub_115B10();

    (*(v130 + 8))(v93, v96);
    v98 = v137;
    v97 = v138;
    v99 = v139;
    (*(v137 + 32))(v139, v95, v138);
    v100 = v97;
    v101 = v99;
    v102 = 0;
LABEL_16:
    (*(v98 + 56))(v101, v102, 1, v100);
    return;
  }

LABEL_22:
  __break(1u);
}