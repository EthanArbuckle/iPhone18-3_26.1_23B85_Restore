uint64_t sub_100000EC8()
{
  sub_100002574();
  v0[2] = sub_100002564();
  v2 = sub_100002554();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100000F5C, v2, v1);
}

uint64_t sub_100000F5C()
{
  sub_1000019B4();
  if (qword_100008000 != -1)
  {
    swift_once();
  }

  v1 = sub_100002544();
  *(v0 + 40) = sub_100001858(v1, qword_100008020);
  v2 = sub_100002524();
  v3 = sub_100002594();
  if (sub_10000198C(v3))
  {
    *swift_slowAlloc() = 0;
    sub_100001940(&_mh_execute_header, v4, v5, "Starting AppIntentsRunnerXPCService");
    sub_100001970();
  }

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_10000107C;

  return sub_1000019C0();
}

uint64_t sub_10000107C()
{
  sub_1000019B4();
  v2 = *v1;
  sub_1000019A8();
  *v4 = v3;
  v5 = v2[6];
  *v4 = *v1;
  *(v3 + 56) = v0;

  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {
    v8 = sub_100001258;
  }

  else
  {
    v8 = sub_1000011B0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000011B0()
{
  sub_1000019B4();
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  v3 = sub_100002524();
  v4 = sub_100002594();
  if (sub_10000198C(v4))
  {
    *swift_slowAlloc() = 0;
    sub_100001940(&_mh_execute_header, v5, v6, "Exiting AppIntentsRunnerXPCService");
    sub_100001970();
  }

  sub_100001960();

  return v7();
}

uint64_t sub_100001258()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];

  swift_errorRetain();
  v4 = sub_100002524();
  v5 = sub_100002584();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create listener, error: %@", v8, 0xCu);
    sub_100001890(v9);
  }

  else
  {
  }

  v11 = v0[5];
  v12 = sub_100002524();
  v13 = sub_100002594();
  if (sub_10000198C(v13))
  {
    *swift_slowAlloc() = 0;
    sub_100001940(&_mh_execute_header, v14, v15, "Exiting AppIntentsRunnerXPCService");
    sub_100001970();
  }

  sub_100001960();

  return v16();
}

uint64_t sub_1000013F4()
{
  v0[2] = sub_100002574();
  v0[3] = sub_100002564();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100001498;

  return sub_100000EC8();
}

uint64_t sub_100001498()
{
  sub_1000019B4();
  v2 = v0;
  v3 = *v1;
  sub_1000019A8();
  *v5 = v4;
  v7 = v6[4];
  v8 = v6[3];
  v9 = v6[2];
  v10 = *v1;
  sub_1000019A8();
  *v11 = v10;
  *(v12 + 40) = v2;

  v14 = sub_100002554();
  if (v2)
  {
    v15 = sub_100001620;
  }

  else
  {
    v15 = sub_1000015E8;
  }

  return _swift_task_switch(v15, v14, v13);
}

void sub_1000015E8()
{
  v1 = *(v0 + 24);

  exit(0);
}

uint64_t sub_100001620()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  return _swift_errorInMain(v1);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1000016E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000176C;

  return sub_1000013F4();
}

uint64_t sub_10000176C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1000019A8();
  *v3 = v2;

  sub_100001960();

  return v4();
}

uint64_t sub_100001858(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001890(uint64_t a1)
{
  v2 = sub_1000018F8(&qword_100008008, &unk_100002748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000018F8(uint64_t *a1, uint64_t *a2)
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

void sub_100001940(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100001960()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100001970()
{
}

BOOL sub_10000198C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000019C0()
{
  v1 = sub_100002474();
  v0[2] = v1;
  sub_100002384(v1);
  v0[3] = v2;
  v4 = *(v3 + 64) + 15;
  v0[4] = swift_task_alloc();
  v5 = sub_100002494();
  v0[5] = v5;
  sub_100002384(v5);
  v0[6] = v6;
  v8 = *(v7 + 64) + 15;
  v0[7] = swift_task_alloc();
  v9 = sub_1000024D4();
  v0[8] = v9;
  sub_100002384(v9);
  v0[9] = v10;
  v12 = *(v11 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100001B1C, 0, 0);
}

uint64_t sub_100001B1C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 104))(v1, enum case for RunnerServiceDispatcherActor.XPCService.Role.server(_:), v3);
  v0[11] = sub_1000024E4();
  (*(v2 + 8))(v1, v3);
  sub_100002514();

  v4 = sub_1000024F4();
  v0[12] = v4;
  sub_1000024C4();
  v5 = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKFTu[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100001C64;
  v7 = v0[7];
  v8 = v0[4];

  return _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKF(v7, &unk_100002768, v4, v8);
}

uint64_t sub_100001C64()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  sub_100002374();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v8 = sub_100001E5C;
  }

  else
  {
    v8 = sub_100001DC8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100001DC8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];

  sub_100002394();

  return v6();
}

uint64_t sub_100001E5C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  sub_10000232C(&qword_100008010, &type metadata accessor for XPCSystem.SetupError);
  swift_allocError();
  (*(v6 + 32))(v8, v5, v7);

  sub_100002394();

  return v9();
}

uint64_t sub_100001F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100001F94, 0, 0);
}

uint64_t sub_100001F94()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_100002514();
  sub_100002504();
  sub_10000232C(&qword_100008018, &type metadata accessor for RunnerServiceDispatcherActor);
  sub_1000024B4();

  v3 = async function pointer to XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000020B0;
  v5 = v0[2];
  v6 = v0[3];

  return XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()(v5);
}

uint64_t sub_1000020B0()
{
  v1 = *(*v0 + 40);
  v2 = *v0;
  sub_100002374();
  *v3 = v2;

  sub_100002394();

  return v4();
}

uint64_t sub_100002198(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100002244;

  return sub_100001F70(a1, a2, v2);
}

uint64_t sub_100002244()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002374();
  *v3 = v2;

  sub_100002394();

  return v4();
}

uint64_t sub_10000232C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002394()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000023A0()
{
  v0 = sub_100002544();
  sub_100002410(v0, qword_100008020);
  sub_100001858(v0, qword_100008020);
  return sub_100002534();
}

uint64_t *sub_100002410(uint64_t a1, uint64_t *a2)
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