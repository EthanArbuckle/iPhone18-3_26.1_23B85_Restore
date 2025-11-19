uint64_t sub_1000014A0()
{
  v1 = v0;
  v2 = sub_1000024D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024B8();
  v7 = sub_1000024C8();
  v8 = sub_100002518();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FinHealthTransactionInsightsExtension - initialized", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return v1;
}

uint64_t sub_1000015F4(uint64_t a1)
{
  v2 = sub_100001A3C(&qword_100008140);

  return BackgroundDeliveryExtension.configuration.getter(a1, v2);
}

uint64_t sub_10000165C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_1000014A0();
  *a1 = v2;
  return result;
}

uint64_t sub_100001698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002494;

  return sub_100001A7C();
}

uint64_t sub_100001738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000017D8;

  return sub_100002228();
}

uint64_t sub_1000017D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FinHealthTransactionInsightsExtension();
  sub_100001A3C(&qword_100008098);
  sub_1000024A8();
  return 0;
}

uint64_t sub_100001A3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FinHealthTransactionInsightsExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001A7C()
{
  v1 = sub_1000024E8();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_1000024D8();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_100001BAC, 0, 0);
}

uint64_t sub_100001BAC()
{
  v1 = v0[9];
  sub_1000024B8();
  v2 = sub_1000024C8();
  v3 = sub_100002538();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FinHealthTransactionInsightsExtension - didReceiveDataForTypes", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  v11 = *(v7 + 8);
  v0[10] = v11;
  v11(v5, v6);
  v0[11] = [objc_allocWithZone(sub_100002508()) init];
  (*(v9 + 104))(v8, enum case for UpdateRequestType.backgroundDelivery(_:), v10);
  v12 = async function pointer to FHInsightsController.didReceiveUpdates(from:)[1];
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_100001D44;
  v14 = v0[4];

  return FHInsightsController.didReceiveUpdates(from:)(v14);
}

uint64_t sub_100001D44()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100001FE8;
  }

  else
  {
    v6 = sub_100001EB4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100001EB4()
{
  v1 = *(v0 + 64);
  sub_1000024B8();
  v2 = sub_1000024C8();
  v3 = sub_100002518();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FinHealthTransactionInsightsExtension - update complete", v4, 2u);
  }

  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);

  v5(v7, v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100001FE8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  sub_1000024B8();
  swift_errorRetain();
  v3 = sub_1000024C8();
  v4 = sub_100002528();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Background Delivery failed with error: %@", v7, 0xCu);
    sub_1000023E4(v8);
  }

  else
  {
    v10 = *(v0 + 104);
  }

  v11 = *(v0 + 48) + 8;
  (*(v0 + 80))(*(v0 + 56), *(v0 + 40));
  v12 = *(v0 + 64);
  sub_1000024B8();
  v13 = sub_1000024C8();
  v14 = sub_100002518();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FinHealthTransactionInsightsExtension - update complete", v15, 2u);
  }

  v16 = *(v0 + 80);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v22 = *(v0 + 32);
  v21 = *(v0 + 40);

  v16(v18, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100002228()
{
  v1 = sub_1000024D8();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000022E4, 0, 0);
}

uint64_t sub_1000022E4()
{
  v1 = v0[4];
  sub_1000024B8();
  v2 = sub_1000024C8();
  v3 = sub_100002518();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FinHealthTransactionInsightsExtension - willTerminate", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000023E4(uint64_t a1)
{
  v2 = sub_10000244C(&qword_100008148, &qword_100002808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000244C(uint64_t *a1, uint64_t *a2)
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