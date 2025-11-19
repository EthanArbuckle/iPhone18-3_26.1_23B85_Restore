uint64_t sub_100001850()
{
  v0 = sub_100005208();
  sub_100004DD0(v0, qword_10000C280);
  sub_100004C00(v0, qword_10000C280);
  return sub_1000051F8();
}

uint64_t sub_1000018F0()
{
  v1 = *(v0 + 16);
  sub_1000051D8();
  v11._countAndFlagsBits = 0x796C72756F682ELL;
  v11._object = 0xE700000000000000;
  v2 = sub_100005248(v11);

  if (AFIsHorseman() && v2)
  {
    if (qword_10000C090 != -1)
    {
      swift_once();
    }

    v3 = sub_100005208();
    sub_100004C00(v3, qword_10000C280);
    v4 = sub_1000051E8();
    v5 = sub_100005268();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Hourly task running on HomePod. Not continuing for resource reasons.", v6, 2u);
    }
  }

  objc_allocWithZone(sub_100005178());
  v7 = sub_100005168();
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100001A70(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005258();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_100005108();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = sub_100005148();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v12 = sub_100003E88(&qword_10000C190, &qword_100005830);
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v15 = *(*(sub_100003E88(&qword_10000C198, &qword_100005838) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v16 = sub_100003E88(&qword_10000C0A0, &unk_100005690);
  v2[24] = v16;
  v17 = *(v16 - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100001D14, 0, 0);
}

uint64_t sub_100001D14()
{
  if (qword_10000C090 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_100005208();
  v0[28] = sub_100004C00(v2, qword_10000C280);
  v3 = v1;
  v4 = sub_1000051E8();
  v5 = sub_100005268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100004C80(v8, &qword_10000C1B0, &qword_100005848);
  }

  v10 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v11 = swift_task_alloc();
  v0[29] = v11;
  v12 = type metadata accessor for ODDIMetricsExtension();
  v13 = sub_100004C38(&qword_10000C150, type metadata accessor for ODDIMetricsExtension);
  v14 = sub_100004094();
  v15 = sub_1000040E8();
  *v11 = v0;
  v11[1] = sub_100001F40;
  v16 = v0[23];
  v17 = v0[7];
  v18 = v0[8];

  return MLHostExtension.loadConfig<A>(context:)(v16, v17, v12, &type metadata for ODDIMetricsExtensionConfig, v13, v14, v15);
}

uint64_t sub_100001F40()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_10000203C, 0, 0);
}

uint64_t sub_10000203C()
{
  v42 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[27];
  if (v5 == 1)
  {
    v7 = *(v2 + 16);
    v7(v6, v0[8], v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100004C80(v0[23], &qword_10000C198, &qword_100005838);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
    v7 = *(v2 + 16);
  }

  v8 = v0[28];
  v7(v0[26], v0[27], v0[24]);
  v9 = sub_1000051E8();
  v10 = sub_100005268();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v15 = 136315138;
    sub_100004CE0(&qword_10000C1B8, &qword_10000C0A0, &unk_100005690);
    v16 = sub_100005318();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_100004414(v16, v18, &v41);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Configuration: %s", v15, 0xCu);
    sub_100004D28(v40);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v0[30] = v19;
  v21 = v0[22];
  v22 = v0[15];
  v23 = v0[12];
  v24 = v0[13];
  sub_100005138();
  sub_1000050F8();
  v25 = sub_100005128();
  v0[31] = v25;
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_100005118();
  v0[32] = v28;
  v29 = enum case for ODDIMetricsTaskExecutor.Subtask.oddiMetrics(_:);
  v30 = *(v24 + 104);
  v0[33] = v30;
  v0[34] = (v24 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v30(v22, v29, v23);
  v0[4] = v28;
  v31 = async function pointer to ODDIMetricsWorker.doWork<A>(executor:context:subtask:)[1];
  v32 = swift_task_alloc();
  v0[35] = v32;
  v33 = sub_100004C38(&qword_10000C1A0, &type metadata accessor for ODDIMetricsTaskExecutor);
  v0[36] = v33;
  *v32 = v0;
  v32[1] = sub_1000023E0;
  v34 = v0[22];
  v35 = v0[19];
  v36 = v0[20];
  v37 = v0[15];
  v38 = v0[7];

  return ODDIMetricsWorker.doWork<A>(executor:context:subtask:)(v35, v0 + 4, v38, v37, v36, v25, v33);
}

uint64_t sub_1000023E0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *v1;
  v2[37] = v0;

  v8 = *(v5 + 8);
  v2[38] = v8;
  v2[39] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[32];
  if (v0)
  {
    v10 = v2[32];

    v11 = sub_100002880;
  }

  else
  {
    v12 = v2[19];
    v13 = v2[16];
    v14 = v2[17];
    v15 = *(v14 + 8);
    v2[40] = v15;
    v2[41] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v13);

    v11 = sub_1000025B4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000025B4()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[14];
  v5 = v0[12];
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  swift_allocObject();
  v8 = sub_100005118();
  v0[42] = v8;
  v2(v4, enum case for ODDIMetricsTaskExecutor.Subtask.oddiSegmentsCohorts(_:), v5);
  v0[6] = v8;
  v9 = async function pointer to ODDIMetricsWorker.doWork<A>(executor:context:subtask:)[1];
  v10 = swift_task_alloc();
  v0[43] = v10;
  *v10 = v0;
  v10[1] = sub_1000026C4;
  v11 = v0[36];
  v12 = v0[31];
  v13 = v0[22];
  v14 = v0[20];
  v15 = v0[18];
  v16 = v0[14];
  v17 = v0[7];

  return ODDIMetricsWorker.doWork<A>(executor:context:subtask:)(v15, v0 + 6, v17, v16, v14, v12, v11);
}

uint64_t sub_1000026C4()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 96);
  v8 = *v1;
  *(v2 + 352) = v0;

  v5(v6, v7);
  v9 = *(v2 + 336);
  if (v0)
  {
    v10 = *(v2 + 336);

    v11 = sub_100002CFC;
  }

  else
  {
    v12 = *(v2 + 328);
    (*(v2 + 320))(*(v2 + 144), *(v2 + 128));

    v11 = sub_100002BB4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100002880()
{
  v0[5] = v0[37];
  v1 = v0[11];
  v2 = v0[9];
  swift_errorRetain();
  sub_100003E88(&qword_10000C1A8, &qword_100005840);
  if (swift_dynamicCast())
  {
    v39 = v0[27];
    v3 = v0[24];
    v4 = v0[25];
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[10];
    v40 = v0[11];
    v41 = v0[30];
    v9 = v0[9];

    v10 = objc_allocWithZone(sub_100005178());
    v11 = sub_100005168();
    (*(v6 + 8))(v5, v7);
    v41(v39, v3);
    (*(v8 + 8))(v40, v9);
    v12 = v0[5];
  }

  else
  {
    v13 = v0[28];
    v14 = v0[5];

    swift_errorRetain();
    v15 = sub_1000051E8();
    v16 = sub_100005278();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected error throws: %@", v17, 0xCu);
      sub_100004C80(v18, &qword_10000C1B0, &qword_100005848);
    }

    else
    {
    }

    v20 = v0[30];
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[25];
    v25 = v0[21];
    v24 = v0[22];
    v26 = v0[20];
    sub_1000051B8();
    v27 = objc_allocWithZone(sub_100005178());
    v11 = sub_100005168();
    (*(v25 + 8))(v24, v26);
    v20(v21, v22);
  }

  v29 = v0[26];
  v28 = v0[27];
  v31 = v0[22];
  v30 = v0[23];
  v33 = v0[18];
  v32 = v0[19];
  v35 = v0[14];
  v34 = v0[15];
  v36 = v0[11];

  v37 = v0[1];

  return v37(v11);
}

uint64_t sub_100002BB4()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  sub_1000051B8();
  v8 = objc_allocWithZone(sub_100005178());
  v9 = sub_100005168();
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[22];
  v12 = v0[23];
  v15 = v0[18];
  v14 = v0[19];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[11];

  v19 = v0[1];

  return v19(v9);
}

uint64_t sub_100002CFC()
{
  v0[5] = v0[44];
  v1 = v0[11];
  v2 = v0[9];
  swift_errorRetain();
  sub_100003E88(&qword_10000C1A8, &qword_100005840);
  if (swift_dynamicCast())
  {
    v39 = v0[27];
    v3 = v0[24];
    v4 = v0[25];
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[10];
    v40 = v0[11];
    v41 = v0[30];
    v9 = v0[9];

    v10 = objc_allocWithZone(sub_100005178());
    v11 = sub_100005168();
    (*(v6 + 8))(v5, v7);
    v41(v39, v3);
    (*(v8 + 8))(v40, v9);
    v12 = v0[5];
  }

  else
  {
    v13 = v0[28];
    v14 = v0[5];

    swift_errorRetain();
    v15 = sub_1000051E8();
    v16 = sub_100005278();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected error throws: %@", v17, 0xCu);
      sub_100004C80(v18, &qword_10000C1B0, &qword_100005848);
    }

    else
    {
    }

    v20 = v0[30];
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[25];
    v25 = v0[21];
    v24 = v0[22];
    v26 = v0[20];
    sub_1000051B8();
    v27 = objc_allocWithZone(sub_100005178());
    v11 = sub_100005168();
    (*(v25 + 8))(v24, v26);
    v20(v21, v22);
  }

  v29 = v0[26];
  v28 = v0[27];
  v31 = v0[22];
  v30 = v0[23];
  v33 = v0[18];
  v32 = v0[19];
  v35 = v0[14];
  v34 = v0[15];
  v36 = v0[11];

  v37 = v0[1];

  return v37(v11);
}

uint64_t sub_100003030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000050B0;

  return sub_1000018D0(a1);
}

uint64_t sub_1000030C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003158;

  return sub_100001A70(a1);
}

uint64_t sub_100003158(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100003254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100003338;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003338()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000342C(uint64_t a1)
{
  v2 = sub_100004C38(&qword_10000C150, type metadata accessor for ODDIMetricsExtension);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_1000034A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100004094();
  sub_1000040E8();
  sub_1000051A8();
  v4 = *(a1 + 20);
  type metadata accessor for ODDIMetricsWorkerFactory();
  result = swift_allocObject();
  *(a2 + v4) = result;
  return result;
}

Swift::Int sub_100003544()
{
  v1 = *v0;
  sub_100005338();
  sub_100005348(v1);
  return sub_100005358();
}

Swift::Int sub_1000035B8()
{
  v1 = *v0;
  sub_100005338();
  sub_100005348(v1);
  return sub_100005358();
}

unint64_t sub_1000035FC()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x726150776F6C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_100003644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_100005328() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100005D20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100005328();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100003744(uint64_t a1)
{
  v2 = sub_100004BAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003780(uint64_t a1)
{
  v2 = sub_100004BAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000037BC(void *a1)
{
  v3 = sub_100003E88(&qword_10000C188, &qword_100005820);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100004B68(a1, a1[3]);
  sub_100004BAC();
  sub_1000053A8();
  v12 = 0;
  sub_1000052F8();
  if (!v1)
  {
    v11 = 1;
    sub_100005308();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100003944(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000049BC(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_100003978(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_1000037BC(a1);
}

uint64_t sub_100003998(char a1, double a2)
{
  v4 = sub_100005388();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = &type metadata for ODDIMetricsExtensionConfig;
  LOBYTE(v25) = a1;
  *(&v25 + 1) = a2;
  sub_100005368();
  v9 = sub_100005378();
  (*(v5 + 8))(v8, v4);
  v21[1] = v9;
  sub_1000052A8();
  sub_1000052C8();
  if (*(&v27 + 1))
  {
    v10 = &_swiftEmptyArrayStorage;
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v11._object = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        v11._countAndFlagsBits = *&v24[0];
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_100005228(v11);
        v28._countAndFlagsBits = 8250;
        v28._object = 0xE200000000000000;
        sub_100005228(v28);
        sub_1000052B8();
        v12 = v22;
        v13 = v23;
        sub_100004C80(v24, &qword_10000C168, &qword_100005808);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100004304(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_100004304((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
      }

      else
      {
        sub_100004C80(v24, &qword_10000C168, &qword_100005808);
      }

      sub_1000052C8();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  *&v25 = 0xD00000000000001BLL;
  *(&v25 + 1) = 0x8000000100005CE0;
  *&v24[0] = v10;
  sub_100003E88(&qword_10000C158, &qword_100005800);
  sub_100004CE0(&qword_10000C160, &qword_10000C158, &qword_100005800);
  v17 = sub_100005218();
  v19 = v18;

  v29._countAndFlagsBits = v17;
  v29._object = v19;
  sub_100005228(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  sub_100005228(v30);
  return v25;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ODDIMetricsExtension();
  sub_100004C38(&qword_10000C098, type metadata accessor for ODDIMetricsExtension);
  sub_100005158();
  return 0;
}

uint64_t type metadata accessor for ODDIMetricsExtension()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003E88(&qword_10000C0A0, &unk_100005690);
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

uint64_t sub_100003E88(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003E88(&qword_10000C0A0, &unk_100005690);
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

void sub_100003FA8()
{
  sub_10000402C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ODDIMetricsWorkerFactory();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000402C()
{
  if (!qword_10000C110)
  {
    sub_100004094();
    sub_1000040E8();
    v0 = sub_1000051C8();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C110);
    }
  }
}

unint64_t sub_100004094()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_1000040E8()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ODDIMetricsExtensionConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ODDIMetricsExtensionConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ODDIMetricsExtensionConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000042BC(uint64_t *a1, uint64_t *a2)
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

char *sub_100004304(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E88(&qword_10000C170, &qword_100005810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100004414(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000044E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004D74(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004D28(v11);
  return v7;
}

unint64_t sub_1000044E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000045EC(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_100005298();
    a6 = v11;
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

char *sub_1000045EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004638(a1, a2);
  sub_100004768(&off_100008580);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004638(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004854(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100005298();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100005238();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004854(v10, 0);
        result = sub_100005288();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100004768(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000048C8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100004854(uint64_t a1, uint64_t a2)
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

  sub_100003E88(&qword_10000C1C0, &qword_100005850);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000048C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E88(&qword_10000C1C0, &qword_100005850);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

double sub_1000049BC(uint64_t *a1)
{
  v2 = sub_100003E88(&qword_10000C178, &qword_100005818);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_100004B68(a1, a1[3]);
  sub_100004BAC();
  sub_100005398();
  v13 = 0;
  sub_1000052D8();
  v12 = 1;
  sub_1000052E8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_100004D28(a1);
  return v9;
}

void *sub_100004B68(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004BAC()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}

uint64_t sub_100004C00(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004C80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003E88(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004CE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000042BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004D28(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004D74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100004DD0(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ODDIMetricsExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ODDIMetricsExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004FAC()
{
  result = qword_10000C1C8;
  if (!qword_10000C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C8);
  }

  return result;
}

unint64_t sub_100005004()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

unint64_t sub_10000505C()
{
  result = qword_10000C1D8;
  if (!qword_10000C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D8);
  }

  return result;
}