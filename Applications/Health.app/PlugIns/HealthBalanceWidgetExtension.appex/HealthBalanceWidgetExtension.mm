uint64_t sub_100001250@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  sub_100001880();
  v39 = v2;
  v3 = *(*(v2 - 8) + 64);
  (__chkstk_darwin)();
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100001A3C();
  v34 = *(v37 - 8);
  v5 = v34;
  v6 = *(v34 + 64);
  v7 = (__chkstk_darwin)();
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v34 - v9;
  v10 = sub_100001A5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001A1C();
  v35 = *(v15 - 8);
  v16 = v35;
  v17 = *(v35 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  v23 = *(v11 + 16);
  v23(v14, v1, v10);
  sub_100001A0C();
  v23(v14, v1, v10);
  v24 = v41;
  sub_100001A2C();
  v25 = *(v16 + 16);
  v25(v20, v22, v15);
  v26 = *(v5 + 16);
  v27 = v36;
  v28 = v24;
  v29 = v37;
  v26(v36, v28, v37);
  v30 = v38;
  v25(v38, v20, v15);
  v26(&v30[*(v39 + 48)], v27, v29);
  sub_100001A7C();
  v31 = *(v34 + 8);
  v31(v41, v29);
  v32 = *(v35 + 8);
  v32(v22, v15);
  v31(v27, v29);
  return (v32)(v20, v15);
}

uint64_t sub_1000015EC()
{
  v0 = [objc_allocWithZone(HKHealthStore) init];

  return BalanceWidgetDataProvider.init(healthStore:)(v0);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for HealthBalanceWidgets();
  sub_100001938(&qword_100008098, type metadata accessor for HealthBalanceWidgets);
  sub_100001A8C();
  return 0;
}

uint64_t type metadata accessor for HealthBalanceWidgets()
{
  result = qword_1000080F8;
  if (!qword_1000080F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A5C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100001788(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A5C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000017F8()
{
  result = sub_100001A5C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100001880()
{
  if (!qword_100008130)
  {
    sub_100001A1C();
    sub_100001A3C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100008130);
    }
  }
}

uint64_t sub_100001938(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100001980()
{
  if (!qword_100008140)
  {
    sub_100001880();
    v0 = sub_100001A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_100008140);
    }
  }
}