uint64_t sub_1000013F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003FDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a1;
  swift_errorRetain();
  sub_100001DAC(&qword_10000C1D8, &unk_1000043B8);
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v8, v4);
    if (qword_10000C108 != -1)
    {
      sub_100001DF4();
    }

    v9 = sub_100003F9C();
    sub_100001D0C(v9, qword_10000C250);

    v10 = sub_100003F7C();
    v11 = sub_100003FEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_100001E2C();
      v13 = sub_100001E44();
      *v12 = 138412290;
      v14 = *(v2 + 32);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "On-demand task is interrupted: %@", v12, 0xCu);
LABEL_10:
      sub_100001D44(v13);
      sub_100001E14();
      sub_100001E14();
    }
  }

  else
  {
    if (qword_10000C108 != -1)
    {
      sub_100001DF4();
    }

    v16 = sub_100003F9C();
    sub_100001D0C(v16, qword_10000C250);
    swift_errorRetain();
    v10 = sub_100003F7C();
    v17 = sub_100003FFC();

    if (os_log_type_enabled(v10, v17))
    {
      v18 = sub_100001E2C();
      v13 = sub_100001E44();
      *v18 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v10, v17, "Unexpected error: %@", v18, 0xCu);
      goto LABEL_10;
    }
  }

  v20 = objc_allocWithZone(sub_100003E6C());
  return sub_100003E5C();
}

uint64_t sub_1000016C4()
{
  v1 = v0;
  if (qword_10000C108 != -1)
  {
    sub_100001DF4();
  }

  v2 = sub_100003F9C();
  sub_100001D0C(v2, qword_10000C250);

  v3 = sub_100003F7C();
  v4 = sub_100003FEC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100001E2C();
    v6 = sub_100001E44();
    *v5 = 138412290;
    v7 = *(v1 + 32);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "On-demand task started: %@", v5, 0xCu);
    sub_100001D44(v6);
    sub_100001E14();
    sub_100001E14();
  }

  sub_1000018CC();

  v9 = sub_100003F7C();
  v10 = sub_100003FEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100001E2C();
    v12 = sub_100001E44();
    *v11 = 138412290;
    v13 = *(v1 + 32);
    *(v11 + 4) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "On-demand task is finished: %@", v11, 0xCu);
    sub_100001D44(v12);
    sub_100001E14();
    sub_100001E14();
  }

  v15 = objc_allocWithZone(sub_100003E6C());
  return sub_100003E5C();
}

uint64_t sub_1000018CC()
{
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *(v0 + 16);
  v4 = *(v1 + 24);
  v5 = objc_opt_self();

  v6 = [v5 defaultManager];
  v7 = sub_100003F6C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_100003F5C();
  v10 = *(v1 + 32);
  sub_100003EAC();
  sub_100003EBC();
  sub_100003F4C();

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;

  sub_100003EEC();
}

uint64_t sub_100001A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v7;
    if (qword_10000C108 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v8 = sub_100003F9C();
  sub_100001D0C(v8, qword_10000C250);

  v9 = sub_100003F7C();
  v10 = sub_100003FEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    swift_beginAccess();
    *(v11 + 4) = *(a2 + 16);

    *(v11 + 12) = 2112;
    v13 = *(a3 + 32);
    *(v11 + 14) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "On-demand task completed %ld iteration(s): %@", v11, 0x16u);
    sub_100001D44(v12);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_100001C1C()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_100001C44()
{
  sub_100001C1C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100001CAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001D0C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001D44(uint64_t a1)
{
  v2 = sub_100001DAC(&qword_10000C1D0, &qword_1000043B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001DAC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001DF4()
{

  return swift_once();
}

uint64_t sub_100001E14()
{
}

uint64_t sub_100001E2C()
{

  return swift_slowAlloc();
}

uint64_t sub_100001E44()
{

  return swift_slowAlloc();
}

uint64_t sub_100001E5C()
{
  v0 = sub_100003EDC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for KnownAggregationProcessBundleId.SearchAnalyticsWorker(_:), v0);
  v5 = sub_100003ECC();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_10000C228 = v5;
  unk_10000C230 = v7;
  return result;
}

uint64_t sub_100001F5C()
{
  result = sub_100003EFC();
  byte_10000C238 = result & 1;
  return result;
}

uint64_t sub_100001F9C()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_1000034AC(0xD000000000000011, 0x80000001000044F0);
  v4 = sub_100003F3C();

  if (v4)
  {
    v5 = sub_1000021EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  if (qword_10000C0F8 != -1)
  {
    swift_once();
  }

  if (byte_10000C238 & v5)
  {
    if (qword_10000C108 != -1)
    {
      sub_100001DF4();
    }

    v6 = sub_100003F9C();
    sub_100001D0C(v6, qword_10000C250);
    v7 = sub_100003F7C();
    v8 = sub_100003FEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = "On-demand task detected";
LABEL_15:
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, v9, v11, 2u);
      sub_100001E14();
    }
  }

  else
  {
    if (qword_10000C108 != -1)
    {
      sub_100001DF4();
    }

    v10 = sub_100003F9C();
    sub_100001D0C(v10, qword_10000C250);
    v7 = sub_100003F7C();
    v8 = sub_100003FEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = "On-demand task detected, but feature disabled";
      goto LABEL_15;
    }
  }

  objc_allocWithZone(sub_100003E6C());
  v12 = sub_100003E5C();
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_1000021EC()
{
  v1 = sub_100003FAC();
  v2 = [v0 configBoolForKey:v1];

  return v2 ^ 1;
}

uint64_t sub_100002248(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_100001DAC(&qword_10000C200, &qword_1000044A8);
  v2[4] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = sub_100001DAC(&qword_10000C208, &qword_1000044B0);
  v2[6] = v6;
  v7 = *(v6 - 8);
  v2[7] = v7;
  v8 = *(v7 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_100001DAC(&qword_10000C210, &qword_1000044B8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v2[11] = v10;
  v11 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v12 = swift_task_alloc();
  v2[12] = v12;
  v13 = sub_100003458();
  v2[13] = v13;
  v14 = sub_100003B74(&qword_10000C218);
  v2[14] = v14;
  v15 = sub_100003B74(&qword_10000C220);
  v2[15] = v15;
  *v12 = v2;
  v12[1] = sub_10000246C;

  return MLHostExtension.loadConfig<A>(context:)(v10, a2, &type metadata for SearchAnalyticsWorker, v4, v13, v14, v15);
}

uint64_t sub_10000246C()
{
  v1 = *v0;
  v2 = *v0;
  sub_100003C78();
  *v3 = v2;
  v4 = v1[12];
  v5 = *v0;
  *v3 = *v0;

  v6 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v7 = swift_task_alloc();
  v2[16] = v7;
  *v7 = v5;
  v7[1] = sub_100002618;
  v8 = v1[15];
  v9 = v1[14];
  v10 = v1[13];
  v11 = v1[10];
  v12 = v1[4];
  v13 = v1[3];

  return MLHostExtension.loadConfig<A>(context:)(v11, v13, &type metadata for SearchAnalyticsWorker, v12, v10, v9, v8);
}

uint64_t sub_100002618()
{
  sub_100003C98();
  sub_100003CA4();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_100003C78();
  *v4 = v3;

  v5 = sub_100003C88();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000026FC()
{
  v42 = v0;
  v1 = v0[10];
  v2 = v0[6];
  if (sub_100003BC4(v1, 1, v2) == 1)
  {
    sub_100003BEC(v1, &qword_10000C210, &qword_1000044B8);
    if (qword_10000C108 != -1)
    {
      sub_100001DF4();
    }

    v3 = sub_100003F9C();
    sub_100001D0C(v3, qword_10000C250);
    v4 = sub_100003F7C();
    v5 = sub_100003FEC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No valid config found", v6, 2u);
      sub_100001E14();
    }

    v7 = 1;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v1, v2);
    if (qword_10000C108 != -1)
    {
      sub_100001DF4();
    }

    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = sub_100003F9C();
    sub_100001D0C(v12, qword_10000C250);
    (*(v11 + 16))(v8, v9, v10);
    v13 = sub_100003F7C();
    v14 = sub_100003FEC();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];
    if (v15)
    {
      v20 = v0[4];
      v19 = v0[5];
      v21 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v21 = 136315138;
      sub_100003E9C();
      v22 = sub_100003FBC();
      v24 = v23;
      v25 = *(v17 + 8);
      v26 = sub_100003CB0();
      v25(v26);
      v27 = sub_100003510(v22, v24, &v41);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v13, v14, "Config found. Task params: %s", v21, 0xCu);
      sub_1000035D4(v40);
      sub_100001E14();
      sub_100001E14();
    }

    else
    {

      v25 = *(v17 + 8);
      v28 = sub_100003CB0();
      v25(v28);
    }

    v29 = v0[9];
    v30 = v0[6];
    v31 = v0[2];
    sub_100003E9C();
    (v25)(v29, v30);
    v7 = 0;
  }

  v32 = v0[10];
  v34 = v0[8];
  v33 = v0[9];
  v36 = v0[4];
  v35 = v0[5];
  v37 = v0[2];
  sub_100003BEC(v0[11], &qword_10000C210, &qword_1000044B8);
  sub_100003C4C(v37, v7, 1, v36);

  v38 = v0[1];

  return v38();
}

uint64_t sub_100002A6C()
{
  sub_100003C98();
  *(v0 + 24) = v1;
  v2 = *(*(sub_100001DAC(&qword_10000C1F0, &qword_100004488) - 8) + 64) + 15;
  *(v0 + 32) = swift_task_alloc();
  v3 = sub_100003C88();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100002AFC()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_100003F2C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100003F1C();
  sub_100003F0C();

  objc_autoreleasePoolPop(v1);
  if (qword_10000C0F0 != -1)
  {
    swift_once();
  }

  v5 = v0[3];
  v6 = qword_10000C228;
  v7 = unk_10000C230;
  type metadata accessor for SAWTask();
  v8 = swift_allocObject();
  v0[5] = v8;
  v8[3] = v7;
  v8[4] = v5;
  v8[2] = v6;

  v9 = v5;
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_100002D9C;
  v12 = v0[3];
  v11 = v0[4];

  return sub_100002248(v11, v12);
}

uint64_t sub_100002D9C()
{
  sub_100003C98();
  sub_100003CA4();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_100003C78();
  *v4 = v3;

  v5 = sub_100003C88();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100002E80()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1000016C4();

  sub_100003BEC(v1, &qword_10000C1F0, &qword_100004488);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100002F1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003C74;

  return sub_100001F80();
}

uint64_t sub_100002FA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000303C;

  return sub_100002A6C();
}

uint64_t sub_10000303C()
{
  sub_100003C98();
  v2 = v1;
  sub_100003CA4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_100003C78();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_100003128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10000320C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000320C()
{
  sub_100003C98();
  sub_100003CA4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100003C78();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1000032F0(uint64_t a1)
{
  v2 = sub_100003458();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000339C();
  sub_100003E4C();
  return 0;
}

unint64_t sub_10000339C()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

unint64_t sub_100003458()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

id sub_1000034AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100003FAC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_100003510(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003620(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100003720(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000035D4(v11);
  return v7;
}

uint64_t sub_1000035D4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100003620(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000377C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_10000402C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100003720(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10000377C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000037C8(a1, a2);
  sub_1000038E0(&off_1000083C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000037C8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100003FCC())
  {
    result = sub_1000039C4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10000401C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10000402C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000038E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100003A34(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000039C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001DAC(&qword_10000C1F8, &qword_1000044A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100003A34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DAC(&qword_10000C1F8, &qword_1000044A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100003B2C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003B74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003B2C(&qword_10000C200, &qword_1000044A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003BEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DAC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003CC4()
{
  if (qword_10000C0F0 != -1)
  {
    swift_once();
  }

  qword_10000C240 = qword_10000C228;
  *algn_10000C248 = unk_10000C230;
}

uint64_t sub_100003D30()
{
  v0 = sub_100003F9C();
  sub_100003DE8(v0, qword_10000C250);
  sub_100001D0C(v0, qword_10000C250);
  if (qword_10000C100 != -1)
  {
    swift_once();
  }

  return sub_100003F8C();
}

uint64_t *sub_100003DE8(uint64_t a1, uint64_t *a2)
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