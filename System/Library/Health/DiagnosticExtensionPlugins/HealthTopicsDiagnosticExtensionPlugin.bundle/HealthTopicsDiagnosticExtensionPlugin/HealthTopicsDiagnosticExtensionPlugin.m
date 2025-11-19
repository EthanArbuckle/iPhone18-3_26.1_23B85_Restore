id sub_11A0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(*(type metadata accessor for HealthTopicsDiagnosticOperation.ReportData() - 8) + 64);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(HKHealthStore) init];
  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_healthStore] = v8;
  v9 = sub_31EC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v8;
  v13 = sub_31DC();
  v14 = &v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_topicStore];
  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_topicStore + 24] = v9;
  v14[4] = sub_2D40(&qword_8448, &type metadata accessor for HealthTopicStore);
  *v14 = v13;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v16)
  {
    sub_327C();
    v16 = sub_326C();
  }

  v17 = HKCreateConcurrentDispatchQueue();

  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_concurrentQueue] = v17;
  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_dispatchGroup] = dispatch_group_create();
  v18 = sub_320C();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_2D88();
  v20 = *(v19 + 52);
  v21 = (*(v19 + 48) + 3) & 0x1FFFFFFFCLL;
  v22 = swift_allocObject();
  *(v22 + ((*(*v22 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2E40(v7, v22 + *(*v22 + class metadata base offset for ManagedBuffer + 16));
  v23 = OBJC_IVAR___HDHealthTopicsDiagnosticOperation_reportData;
  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_reportData] = v22;
  sub_31AC(v23);
  v25 = v24;
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v29, "initWithAttachmentDirectoryURL:", v24);

  v27 = sub_31CC();
  (*(*(v27 - 8) + 8))(a1, v27);
  return v26;
}

void sub_155C()
{
  v1 = sub_324C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  sub_28D0(0, &qword_8430, &type metadata accessor for TaskPriority);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  dispatch_group_enter(*&v0[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_dispatchGroup]);
  v13 = sub_32DC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v0;
  v15 = v0;
  sub_2058(0, 0, v12, &unk_3738, v14);

  CFAbsoluteTimeGetCurrent();
  sub_323C();
  sub_325C();
  v16 = *(v2 + 8);
  v16(v6, v1);
  v17 = sub_32FC();
  v16(v8, v1);
  if (v17)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_331C(43);

    v23 = 0xD000000000000029;
    v24 = 0x8000000000003840;
    CFAbsoluteTimeGetCurrent();
    v18 = HKDiagnosticStringFromDuration();
    v19 = sub_327C();
    v21 = v20;

    v25._countAndFlagsBits = v19;
    v25._object = v21;
    sub_329C(v25);

    v22 = sub_326C();

    [v15 appendString:v22];
  }

  else
  {
    sub_1854();
  }
}

uint64_t sub_1854()
{
  v1 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_reportData];
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_2B0C(v5 + v6, v4);
  os_unfair_lock_unlock((v5 + v7));
  [v0 appendStrongSeparator];
  v8 = sub_326C();
  [v0 appendString:v8];

  [v0 appendStrongSeparator];
  [v0 appendNewline];
  sub_2338(v4);
  return sub_2B70(v4);
}

uint64_t sub_19F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_31FC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_320C();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1B0C, 0, 0);
}

uint64_t sub_1B0C()
{
  v1 = v0[5];
  v2 = (v0[2] + OBJC_IVAR___HDHealthTopicsDiagnosticOperation_topicStore);
  v3 = v2[3];
  v4 = v2[4];
  sub_2CE0(v2, v3);
  sub_322C();
  v5 = async function pointer to TopicStore.response<A>(for:)[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = sub_2D40(&qword_8440, &type metadata accessor for TopicRegistryListRequest);
  *v6 = v0;
  v6[1] = sub_1C24;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[3];

  return TopicStore.response<A>(for:)(v8, v9, v3, v10, v4, v7);
}

uint64_t sub_1C24()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1F18;
  }

  else
  {
    v6 = sub_1D94;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1D94()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = *(v0[2] + OBJC_IVAR___HDHealthTopicsDiagnosticOperation_reportData);
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_2D24(v3 + v4);
  if (v1)
  {

    os_unfair_lock_unlock((v3 + v5));
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[2];
    os_unfair_lock_unlock((v3 + v5));

    dispatch_group_leave(*(v10 + OBJC_IVAR___HDHealthTopicsDiagnosticOperation_dispatchGroup));
    (*(v7 + 8))(v6, v8);

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_1F18()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1F88(uint64_t a1, uint64_t a2)
{
  sub_2C38(a1, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  v4 = sub_320C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_2058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_28D0(0, &qword_8430, &type metadata accessor for TaskPriority);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_2BCC(a3, v24 - v10, &qword_8430, &type metadata accessor for TaskPriority);
  v12 = sub_32DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2C38(v11, &qword_8430, &type metadata accessor for TaskPriority);
  }

  else
  {
    sub_32CC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_32BC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_328C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2C38(a3, &qword_8430, &type metadata accessor for TaskPriority);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2C38(a3, &qword_8430, &type metadata accessor for TaskPriority);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_2338(uint64_t a1)
{
  v2 = v1;
  sub_28D0(0, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v20 - v6;
  v8 = sub_320C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_2BCC(a1, v7, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2C38(v7, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
    v16 = sub_326C();
    [v2 appendString:v16];
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_2C94();
    (*(v9 + 16))(v13, v15, v8);
    v17 = sub_32EC();
    v18 = [v17 formattedTable];

    sub_327C();
    v19 = sub_326C();

    [v2 appendString:v19];

    (*(v9 + 8))(v15, v8);
  }
}

id sub_25E8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_26D4(uint64_t a1, uint64_t a2)
{
  sub_28D0(0, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2770(uint64_t a1, uint64_t a2)
{
  sub_28D0(0, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for HealthTopicsDiagnosticOperation.ReportData()
{
  result = qword_83F8;
  if (!qword_83F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2848()
{
  sub_28D0(319, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_28D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_330C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2924()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2A18;

  return sub_19F0(a1, v4, v5, v6);
}

uint64_t sub_2A18()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B70(uint64_t a1)
{
  v2 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2BCC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_28D0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2C38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_28D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2C94()
{
  result = qword_8438;
  if (!qword_8438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8438);
  }

  return result;
}

void *sub_2CE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2D40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2D88()
{
  if (!qword_8450)
  {
    type metadata accessor for HealthTopicsDiagnosticOperation.ReportData();
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_332C();
    if (!v1)
    {
      atomic_store(v0, &qword_8450);
    }
  }
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_8458)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_8458);
    }
  }
}

uint64_t sub_2E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EA4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2F00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_310C()
{
  if (!qword_84E8)
  {
    v0 = sub_333C();
    if (!v1)
    {
      atomic_store(v0, &qword_84E8);
    }
  }
}

unint64_t sub_3160()
{
  result = qword_84F0;
  if (!qword_84F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_84F0);
  }

  return result;
}