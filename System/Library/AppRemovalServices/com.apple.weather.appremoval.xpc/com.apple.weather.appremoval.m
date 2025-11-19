int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id os_log_xpcAppRemoval()
{
  if (qword_10000C828 != -1)
  {
    sub_100003E64();
  }

  v1 = qword_10000C820;

  return v1;
}

void sub_100001798(id a1)
{
  qword_10000C820 = os_log_create([@"com.apple.weather" UTF8String], "XPCAppRemovalService");

  _objc_release_x1();
}

void sub_100001984(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = WDWeatherLibraryDirectory();
  v4 = [v2 deleteAllFilesInDirectory:v3];

  if (v4)
  {
    v5 = os_log_xpcAppRemoval();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100003EE0(v4, v5);
    }
  }

  v6 = os_log_xpcAppRemoval();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completed AppRemoval Successfully.", v7, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002254(id a1)
{
  v3 = +[NSFileManager defaultManager];
  v1 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];
  v2 = qword_10000C830;
  qword_10000C830 = v1;
}

void sub_100002AA4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t variable initialization expression of DaemonDecommissioner.decommissioningManager()
{
  v0 = sub_1000040E4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1000040D4();
}

uint64_t sub_100002B24()
{
  sub_100003E10();
  v1 = *(*(v0 + 16) + OBJC_IVAR___WeatherDaemonDecommissioner_decommissioningManager);
  v2 = async function pointer to DaemonDecommissioningManager.decommission()[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100002BC0;

  return DaemonDecommissioningManager.decommission()();
}

uint64_t sub_100002BC0()
{
  sub_100003E10();
  sub_100003E48();
  v3 = *(v2 + 24);
  v4 = *v1;
  sub_100003E00();
  *v5 = v4;

  if (v0)
  {
  }

  sub_100003E3C();

  return v6();
}

uint64_t sub_100002D28(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100002DD0;

  return DaemonDecommissioner.decommissionDaemon()();
}

uint64_t sub_100002DD0()
{
  sub_100003E10();
  sub_100003E48();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100003E00();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  sub_100003E3C();

  return v7();
}

uint64_t sub_100002EF4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_10000330C(&qword_10000C818, &qword_1000052D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_100004124();
  sub_100003354(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1000052E8;
  v9[5] = v8;
  sub_100003714(0, 0, v6, &unk_1000052F8, v9);
}

id DaemonDecommissioner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonDecommissioner.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___WeatherDaemonDecommissioner_decommissioningManager;
  v3 = sub_1000040E4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *&v0[v2] = sub_1000040D4();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id DaemonDecommissioner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003140()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003180()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000322C;

  return sub_100002D28(v2, v3);
}

uint64_t sub_10000322C()
{
  sub_100003E10();
  sub_100003E48();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100003E00();
  *v4 = v3;

  sub_100003E3C();

  return v5();
}

uint64_t sub_10000330C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000337C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003DFC;

  return v7();
}

uint64_t sub_100003468()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003DFC;

  return sub_10000337C(v2, v3, v5);
}

uint64_t sub_100003528(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000322C;

  return v8();
}

uint64_t sub_100003610()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003650(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100003E54(v7);
  *v8 = v9;
  v8[1] = sub_100003DFC;

  return sub_100003528(a1, v3, v4, v6);
}

uint64_t sub_100003714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000330C(&qword_10000C818, &qword_1000052D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_1000039B0(a3, v24 - v10);
  v12 = sub_100004124();
  if (sub_100003A20(v11, 1, v12) == 1)
  {
    sub_100003A48(v11);
  }

  else
  {
    sub_100004114();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    v13 = *(a5 + 24);
    v14 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_100004104();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000040F4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100003A48(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003A48(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000039B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000330C(&qword_10000C818, &qword_1000052D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003A48(uint64_t a1)
{
  v2 = sub_10000330C(&qword_10000C818, &qword_1000052D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003AB0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003BA8;

  return v7(a1);
}

uint64_t sub_100003BA8()
{
  sub_100003E10();
  sub_100003E48();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100003E00();
  *v4 = v3;

  sub_100003E3C();

  return v5();
}

uint64_t sub_100003C8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003CC4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100003E54(v3);
  *v4 = v5;
  v6 = sub_100003E1C(v4);

  return v7(v6);
}

uint64_t sub_100003D5C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100003E54(v3);
  *v4 = v5;
  v6 = sub_100003E1C(v4);

  return v7(v6);
}

uint64_t sub_100003E1C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100003E3C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_100003EE0(uint64_t a1, NSObject *a2)
{
  v4 = WDWeatherLibraryDirectory();
  v5 = [v4 path];
  sub_100002AC0();
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error removing files from directory: %@. Error=%@", v6, 0x16u);
}