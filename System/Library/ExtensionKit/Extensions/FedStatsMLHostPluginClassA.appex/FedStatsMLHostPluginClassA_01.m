uint64_t sub_100012FE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100001D98;

  return sub_10000E02C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100013100()
{
  result = qword_10001C8D0;
  if (!qword_10001C8D0)
  {
    sub_1000135D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C8D0);
  }

  return result;
}

uint64_t sub_10001317C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054F8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000131E4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000134CC;

  return sub_100009C60(a1, a2, v6);
}

id sub_100013294(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1000132A0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1000132AC()
{
  result = qword_10001C9B8;
  if (!qword_10001C9B8)
  {
    sub_100013310(&unk_10001C670, &unk_100014320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9B8);
  }

  return result;
}

uint64_t sub_100013310(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100013358(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000134CC;

  return sub_100008BB4(a1, a2, v6);
}

uint64_t sub_100013408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001346C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100013A60() & 1;
  }
}