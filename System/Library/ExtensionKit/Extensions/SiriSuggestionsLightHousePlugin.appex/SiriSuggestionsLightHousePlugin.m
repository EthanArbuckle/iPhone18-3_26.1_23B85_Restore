uint64_t sub_1000017F0()
{
  v0 = sub_100002C30();
  sub_100001984(v0, static Logger.metricPluginCategory);
  sub_1000018B4(v0, static Logger.metricPluginCategory);
  sub_100002B90();
  return sub_100002C20();
}

uint64_t Logger.metricPluginCategory.unsafeMutableAddressor()
{
  if (qword_100008090 != -1)
  {
    sub_1000019E8();
  }

  v0 = sub_100002C30();

  return sub_1000018B4(v0, static Logger.metricPluginCategory);
}

uint64_t sub_1000018B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.metricPluginCategory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100008090 != -1)
  {
    sub_1000019E8();
  }

  v2 = sub_100002C30();
  v3 = sub_1000018B4(v2, static Logger.metricPluginCategory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_100001984(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000019E8()
{

  return swift_once();
}

uint64_t sub_100001A24()
{
  sub_100002AFC();
  objc_allocWithZone(sub_100002BC0());
  v1 = sub_100002BB0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100001AA4()
{
  sub_100002AFC();
  v0[4] = v1;
  v2 = sub_100002B60();
  v0[5] = v2;
  v3 = *(v2 - 8);
  v0[6] = v3;
  v4 = *(v3 + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100001B60, 0, 0);
}

uint64_t sub_100001B60()
{
  if (qword_100008090 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_100002C30();
  v0[8] = sub_1000018B4(v2, static Logger.metricPluginCategory);
  v3 = v1;
  v4 = sub_100002C10();
  v5 = sub_100002C40();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "SiriSuggestionsLightHousePlugin invoked: with %@", v7, 0xCu);
    sub_1000029FC(v8);
    sub_100002B08(v8);
    sub_100002B08(v7);
  }

  v10 = sub_100002C10();
  v11 = sub_100002C40();
  if (sub_100002AD0(v11))
  {
    v12 = sub_100002B38();
    *v12 = 0;
    sub_100002AEC();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    sub_100002B08(v12);
  }

  v18 = v0[7];

  sub_100002C00();
  v19 = sub_100002BF0();
  v0[9] = v19;
  sub_100002B50();
  v20 = *(*v19 + 216);
  v25 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v0[10] = v22;
  *v22 = v0;
  v22[1] = sub_100001EC0;
  v23 = v0[7];

  return v25(v23);
}

uint64_t sub_100001EC0()
{
  sub_100002B20();
  sub_100002B2C();
  v3 = v2[10];
  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  v7 = *v1;
  sub_100002AB0();
  *v8 = v7;
  *(v9 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_100002318;
  }

  else
  {
    v10 = sub_100002020;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100002020()
{
  sub_100002B20();
  v1 = v0[8];
  v2 = sub_100002C10();
  v3 = sub_100002C40();
  if (sub_100002AD0(v3))
  {
    v4 = sub_100002B38();
    *v4 = 0;
    sub_100002AEC();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002B08(v4);
  }

  sub_100002B80();
  v0[12] = sub_100002B70();
  v10 = *(&async function pointer to dispatch thunk of SiriAutoCompleteIndexBuilder.run(onStartUpEvent:) + 1);
  v13 = (&async function pointer to dispatch thunk of SiriAutoCompleteIndexBuilder.run(onStartUpEvent:) + async function pointer to dispatch thunk of SiriAutoCompleteIndexBuilder.run(onStartUpEvent:));
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_10000212C;

  return v13(0);
}

uint64_t sub_10000212C()
{
  sub_100002AFC();
  sub_100002B2C();
  v2[2] = v0;
  v2[3] = v1;
  v3 = v2[13];
  v4 = *v0;
  sub_100002AB0();
  *v5 = v4;

  return _swift_task_switch(sub_10000221C, 0, 0);
}

uint64_t sub_10000221C()
{
  sub_100002B20();
  v1 = v0[8];
  v2 = sub_100002C10();
  v3 = sub_100002C40();
  if (sub_100002AD0(v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    sub_100002AEC();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_100002B08(v5);
  }

  v11 = v0[12];
  v12 = v0[9];

  v13 = objc_allocWithZone(sub_100002BC0());
  sub_100002BB0();

  v14 = v0[7];

  v15 = sub_100002AC0();

  return v16(v15);
}

uint64_t sub_100002318()
{
  sub_100002B20();
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[8];
  v4 = sub_100002C10();
  v5 = sub_100002C50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100002B38();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "error running the lighthouse plugin", v6, 2u);
    sub_100002B08(v6);
  }

  v7 = objc_allocWithZone(sub_100002BC0());
  sub_100002BB0();

  v8 = v0[7];

  v9 = sub_100002AC0();

  return v10(v9);
}

uint64_t sub_10000241C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002AAC;

  return sub_100001A08();
}

uint64_t sub_1000024A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000253C;

  return sub_100001AA4();
}

uint64_t sub_10000253C()
{
  sub_100002AFC();
  sub_100002B2C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002AB0();
  *v4 = v3;

  v5 = sub_100002AC0();

  return v6(v5);
}

uint64_t sub_100002620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100002704;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002704()
{
  sub_100002AFC();
  sub_100002B2C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002AB0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1000027E8()
{
  v0 = type metadata accessor for SiriSuggestionsLightHousePlugin();
  v1 = sub_1000029BC(&qword_100008148);

  return MLHostExtension.configuration.getter(v0, v1);
}

uint64_t sub_100002854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100001A94();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SiriSuggestionsLightHousePlugin();
  sub_1000029BC(&qword_100008098);
  sub_100002BA0();
  return 0;
}

uint64_t sub_1000029BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestionsLightHousePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000029FC(uint64_t a1)
{
  v2 = sub_100002A64(&qword_100008150, &qword_100002F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002A64(uint64_t *a1, uint64_t *a2)
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

BOOL sub_100002AD0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100002B08(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_100002B38()
{

  return swift_slowAlloc();
}