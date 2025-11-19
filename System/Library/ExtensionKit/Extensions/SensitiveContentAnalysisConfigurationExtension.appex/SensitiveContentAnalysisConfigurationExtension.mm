int main(int argc, const char **argv, const char **envp)
{
  sub_100001368();
  sub_100003820();
  return 0;
}

unint64_t sub_100001368()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_100001404()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_10000146C()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_1000014C4()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_10000156C()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_1000015C0()
{
  v0 = sub_100003810();
  sub_100003218(v0, qword_10000CFA0);
  sub_1000031E0(v0, qword_10000CFA0);
  return sub_100003800();
}

uint64_t sub_100001624(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100003810() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for SensitiveContentAnalysisConfigurationEntity();
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000016E4, 0, 0);
}

uint64_t sub_1000016E4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = [objc_allocWithZone(SCSensitivityAnalyzer) init];
  v6 = [v5 analysisPolicy];

  sub_100003780();
  v7 = *(v2 + 20);
  sub_1000032C4(&qword_10000C1F8, &qword_100004190);
  sub_100003800();
  sub_100002194();
  *(v1 + v7) = sub_100003760();
  if (v6 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (v6 == 1)
  {
    v8 = 0;
  }

  *(v0 + 48) = v8;
  sub_100003750();
  sub_10000327C(&qword_10000C108, type metadata accessor for SensitiveContentAnalysisConfigurationEntity);
  sub_100003740();
  sub_100003620(v1);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100001944(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000019DC;

  return sub_100001624(a1);
}

uint64_t sub_1000019DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001B00()
{
  v0 = sub_1000037D0();
  sub_100003218(v0, qword_10000CFB8);
  sub_1000031E0(v0, qword_10000CFB8);
  return sub_1000037C0();
}

uint64_t sub_100001B64()
{
  v0 = sub_1000037D0();
  sub_100003218(v0, qword_10000CFD0);
  sub_1000031E0(v0, qword_10000CFD0);
  return sub_1000037C0();
}

uint64_t sub_100001BC8()
{
  sub_1000032C4(&qword_10000C200, &qword_100004198);
  v0 = sub_1000032C4(&qword_10000C208, &qword_1000041A0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100003B20;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_100003780();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_100003780();
  v7 = sub_1000033E8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10000CFE8 = v7;
  return result;
}

unint64_t sub_100001D3C()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

Swift::Int sub_100001D90()
{
  v1 = *v0;
  sub_100003840();
  sub_100003850(v1);
  return sub_100003860();
}

Swift::Int sub_100001E04()
{
  v1 = *v0;
  sub_100003840();
  sub_100003850(v1);
  return sub_100003860();
}

void *sub_100001E48@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_100001E78()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001ED0()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100001F28()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001F8C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001FE4()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_10000203C()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100002094()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002194()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_10000222C()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100002284()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_1000022DC()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100002330()
{
  if (qword_10000C028 != -1)
  {
    swift_once();
  }

  v1 = qword_10000CFE8;

  return _swift_bridgeObjectRetain(v1);
}

unint64_t sub_1000023D0()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    sub_100002434(&qword_10000C0C0, &qword_100003E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_100002434(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for SensitiveContentAnalysisConfigurationEntity()
{
  result = qword_10000C190;
  if (!qword_10000C190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_100003810() - 8) + 64);
  __chkstk_darwin();
  sub_100003780();
  v5 = *(a1 + 20);
  sub_1000032C4(&qword_10000C1F8, &qword_100004190);
  sub_100003800();
  sub_100002194();
  result = sub_100003760();
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_1000029A0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000031E0(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100002B38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003790();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100002BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000019DC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for SensitiveContentAnalysisConfigurationEntity.SensitiveContentPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SensitiveContentAnalysisConfigurationEntity.SensitiveContentPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100002E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003790();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100002F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003790();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100002FE4()
{
  sub_100003790();
  if (v0 <= 0x3F)
  {
    sub_100003068();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003068()
{
  if (!qword_10000C1A0)
  {
    sub_100002434(&qword_10000C1A8, &qword_100004180);
    sub_1000030D8();
    v0 = sub_100003770();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C1A0);
    }
  }
}

unint64_t sub_1000030D8()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    sub_100002434(&qword_10000C1A8, &qword_100004180);
    sub_10000203C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

uint64_t sub_100003198(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002434(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000031E0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003218(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000327C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000032C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000330C(char a1)
{
  v3 = *(v1 + 40);
  sub_100003840();
  sub_100003850(a1 & 1);
  v4 = sub_100003860();

  return sub_100003378(a1 & 1, v4);
}

unint64_t sub_100003378(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000033E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000032C4(&unk_10000C210, &qword_1000041A8);
    v3 = sub_100003830();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = (*(*(sub_1000032C4(&qword_10000C208, &qword_1000041A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin();
  v8 = &v21 - v7;
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  while (1)
  {
    sub_1000035B0(v10, v8);
    v12 = *v8;
    result = sub_10000330C(*v8);
    if (v14)
    {
      break;
    }

    v15 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v12;
    v16 = v3[7];
    v17 = sub_100003790();
    result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v8[v9], v17);
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_11;
    }

    v3[2] = v20;
    v10 += v11;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1000035B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032C4(&qword_10000C208, &qword_1000041A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003620(uint64_t a1)
{
  v2 = type metadata accessor for SensitiveContentAnalysisConfigurationEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}