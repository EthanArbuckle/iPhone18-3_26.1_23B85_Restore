uint64_t sub_100001638(char a1)
{
  sub_100005190(82);
  v5._countAndFlagsBits = 0xD000000000000038;
  v5._object = 0x80000001000059E0;
  sub_100005120(v5);
  if (a1)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100005120(v2);

  v6._object = 0x8000000100005A20;
  v6._countAndFlagsBits = 0xD000000000000015;
  sub_100005120(v6);
  sub_100005140();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_100005120(v7);
  return 0;
}

Swift::Int sub_100001750()
{
  v1 = *v0;
  sub_100005270();
  sub_100005280(v1);
  return sub_100005290();
}

Swift::Int sub_1000017C4()
{
  v1 = *v0;
  sub_100005270();
  sub_100005280(v1);
  return sub_100005290();
}

unint64_t sub_100001808()
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

uint64_t sub_100001850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_100005220() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100005A40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100005220();

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

uint64_t sub_100001950(uint64_t a1)
{
  v2 = sub_100004A9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000198C(uint64_t a1)
{
  v2 = sub_100004A9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000019C8(void *a1)
{
  v3 = sub_1000045B4(&qword_10000C0E0, &qword_100005828);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100004A58(a1, a1[3]);
  sub_100004A9C();
  sub_1000052B0();
  v12 = 0;
  sub_1000051E0();
  if (!v1)
  {
    v11 = 1;
    sub_1000051F0();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100001B50(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003F60(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_100001B84(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_1000019C8(a1);
}

uint64_t SAIExtensionError.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0x6520747365736E55;
  }

  return 0xD000000000000024;
}

uint64_t sub_100001C20(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC000000726F7272;
  v3 = 0x6520747365736E55;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6520747365736E55;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v4 == 1)
  {
    v6 = 0xEC000000726F7272;
  }

  else
  {
    v6 = 0x8000000100005990;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000100005960;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000024;
    v2 = 0x8000000100005990;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000018;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000100005960;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100005220();
  }

  return v11 & 1;
}

Swift::Int sub_100001D04()
{
  v1 = *v0;
  sub_100005270();
  sub_100005110();

  return sub_100005290();
}

uint64_t sub_100001DB4()
{
  *v0;
  *v0;
  sub_100005110();
}

Swift::Int sub_100001E50()
{
  v1 = *v0;
  sub_100005270();
  sub_100005110();

  return sub_100005290();
}

uint64_t sub_100001EFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s35SiriAttentionAndInvocationExtension17SAIExtensionErrorO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100001F2C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000726F7272;
  v4 = 0x6520747365736E55;
  if (v2 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = 0x8000000100005990;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (v5)
  {
    v3 = 0x8000000100005960;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_100001FA8(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_100005100();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v5 = *(v4 + 64) + 15;
  v2[41] = swift_task_alloc();
  v6 = sub_100005000();
  v2[42] = v6;
  v7 = *(v6 - 8);
  v2[43] = v7;
  v8 = *(v7 + 64) + 15;
  v2[44] = swift_task_alloc();
  v9 = *(*(sub_1000045B4(&qword_10000C0E8, &qword_100005838) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v10 = sub_1000045B4(&qword_10000C028, &qword_1000056B8);
  v2[46] = v10;
  v11 = *(v10 - 8);
  v2[47] = v11;
  v12 = *(v11 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_100002170, 0, 0);
}

uint64_t sub_100002170()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v3 = sub_1000050E0();
  v4 = sub_100005150();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 296);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Context: %@", v6, 0xCu);
    sub_100004BC0(v7, &qword_10000C110, &qword_100005858);
  }

  v9 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v10 = swift_task_alloc();
  *(v0 + 400) = v10;
  v11 = type metadata accessor for SiriAttentionAndInvocationExtension();
  *(v0 + 408) = v11;
  v12 = sub_100004A14(&qword_10000C0D0);
  v13 = sub_100004818();
  v14 = sub_10000486C();
  *v10 = v0;
  v10[1] = sub_100002340;
  v15 = *(v0 + 360);
  v16 = *(v0 + 296);
  v17 = *(v0 + 304);

  return MLHostExtension.loadConfig<A>(context:)(v15, v16, v11, &type metadata for SiriAttentionAndInvocationExtensionConfig, v12, v13, v14);
}

uint64_t sub_100002340()
{
  v1 = *(*v0 + 400);
  v3 = *v0;

  return _swift_task_switch(sub_10000243C, 0, 0);
}

uint64_t sub_10000243C()
{
  v41 = v0;
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v2 + 16);
    v5(v0[49], v0[38] + *(v0[51] + 20), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100004BC0(v0[45], &qword_10000C0E8, &qword_100005838);
    }
  }

  else
  {
    (*(v2 + 32))(v0[49], v3, v1);
    v5 = *(v2 + 16);
  }

  v6 = v0[38];
  v5(v0[48], v0[49], v0[46]);
  v7 = sub_1000050E0();
  v8 = sub_100005150();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[47];
  v10 = v0[48];
  v12 = v0[46];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v13 = 136315138;
    sub_100004C20();
    v14 = sub_100005200();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000039B8(v14, v16, &v40);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Configuration: %s", v13, 0xCu);
    sub_100004CCC(v39);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[52] = v17;
  v19 = v0[51];
  v20 = v0[49];
  v21 = v0[46];
  v22 = v0[44];
  v23 = v0[38];
  (*(v0[40] + 16))(v0[41], v23, v0[39]);
  v24 = *(v23 + *(v19 + 24));
  sub_100004FF0();
  v25 = sub_100005030();
  v0[53] = v25;
  v26 = *(v25 - 8);
  v0[54] = v26;
  v0[55] = *(v26 + 64);
  v0[56] = swift_task_alloc();
  v27 = swift_task_alloc();
  v0[57] = v27;
  v28 = sub_100005020();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_100005010();
  v0[58] = v31;
  sub_1000050C0();
  v32 = v0[33];
  v33 = async function pointer to SiriAttentionAndInvocationWorker.doWork(executor:context:durationThreshold:)[1];
  v34 = swift_task_alloc();
  v0[59] = v34;
  *v34 = v0;
  v34[1] = sub_1000027F0;
  v35 = v0[44];
  v36 = v0[37];
  v37.n128_u64[0] = v32;

  return SiriAttentionAndInvocationWorker.doWork(executor:context:durationThreshold:)(v27, v31, v36, v37);
}

uint64_t sub_1000027F0()
{
  v2 = *(*v1 + 472);
  v3 = *(*v1 + 464);
  v6 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_100002FD8;
  }

  else
  {
    v4 = sub_100002920;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100002920()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 424);
  (*(v2 + 32))(v1, *(v0 + 456), v3);

  v4 = swift_task_alloc();
  (*(v2 + 16))(v4, v1, v3);
  v5 = (*(v2 + 88))(v4, v3);
  if (&enum case for LighthouseRuntimeProcessorResult.error(_:) && v5 == enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    v6 = *(v0 + 304);
    (*(*(v0 + 432) + 96))(v4, *(v0 + 424));
    v7 = *v4;
    swift_errorRetain();
    v8 = sub_1000050E0();
    v9 = sub_100005170();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      if (v7)
      {
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v10 + 4) = v12;
      *v11 = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "dowork is not successful with error: %@", v10, 0xCu);
      sub_100004BC0(v11, &qword_10000C110, &qword_100005858);
    }

    if (v7)
    {
      *(v0 + 280) = v7;
      swift_errorRetain();
      sub_1000045B4(&qword_10000C0F0, &qword_100005840);
      sub_1000045B4(&qword_10000C0F8, &qword_100005848);
      if (swift_dynamicCast())
      {
        v29 = *(v0 + 200);
        sub_100004BC0(v0 + 176, &qword_10000C100, &qword_100005850);
        if (v29)
        {
          v30 = *(v0 + 304);
          swift_errorRetain();
          v31 = sub_1000050E0();
          v32 = sub_100005160();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *v33 = 138412290;
            swift_errorRetain();
            v35 = _swift_stdlib_bridgeErrorToNSError();
            *(v33 + 4) = v35;
            *v34 = v35;
            _os_log_impl(&_mh_execute_header, v31, v32, "task failed with MLHostError: %@", v33, 0xCu);
            sub_100004BC0(v34, &qword_10000C110, &qword_100005858);
          }

          v37 = *(v0 + 424);
          v36 = *(v0 + 432);
          v63 = *(v0 + 392);
          v65 = *(v0 + 416);
          v57 = *(v0 + 448);
          v58 = *(v0 + 376);
          v61 = *(v0 + 368);
          v38 = *(v0 + 344);
          v56 = *(v0 + 352);
          v39 = *(v0 + 336);

          *(v0 + 288) = v7;
          swift_errorRetain();
          swift_dynamicCast();
          v40 = objc_allocWithZone(sub_100005070());
          v28 = sub_100005050();

          (*(v36 + 8))(v57, v37);
          (*(v38 + 8))(v56, v39);
          goto LABEL_27;
        }
      }

      else
      {
        *(v0 + 208) = 0;
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
        sub_100004BC0(v0 + 176, &qword_10000C100, &qword_100005850);
      }
    }

    v41 = *(v0 + 448);
    v42 = *(v0 + 424);
    v43 = *(v0 + 432);
    v63 = *(v0 + 392);
    v65 = *(v0 + 416);
    v59 = *(v0 + 376);
    v61 = *(v0 + 368);
    v45 = *(v0 + 344);
    v44 = *(v0 + 352);
    v46 = *(v0 + 336);
    sub_100004AF0();
    v47 = objc_allocWithZone(sub_100005070());
    v28 = sub_100005050();

    (*(v43 + 8))(v41, v42);
    (*(v45 + 8))(v44, v46);
LABEL_27:
    v65(v63, v61);

    goto LABEL_28;
  }

  if ((!&enum case for LighthouseRuntimeProcessorResult.success(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.success(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.cancelled(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:)))
  {
    v14 = *(v0 + 304);
    v15 = sub_1000050E0();
    v16 = sub_100005160();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "SiriAttentionAndInvocationExtension dowork success", v17, 2u);
    }

    v18 = *(v0 + 424);
    v19 = *(v0 + 432);

    (*(v19 + 8))(v4, v18);
  }

  v20 = *(v0 + 448);
  v21 = *(v0 + 424);
  v22 = *(v0 + 432);
  v62 = *(v0 + 392);
  v64 = *(v0 + 416);
  v23 = *(v0 + 376);
  v60 = *(v0 + 368);
  v24 = *(v0 + 344);
  v25 = *(v0 + 352);
  v26 = *(v0 + 336);

  v27 = objc_allocWithZone(sub_100005070());
  v28 = sub_100005060();
  (*(v22 + 8))(v20, v21);
  (*(v24 + 8))(v25, v26);
  v64(v62, v60);
LABEL_28:
  v48 = *(v0 + 448);
  v50 = *(v0 + 384);
  v49 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 328);

  v54 = *(v0 + 8);

  return v54(v28);
}

uint64_t sub_100002FD8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);

  *(v0 + 272) = v1;
  swift_errorRetain();
  sub_1000045B4(&qword_10000C0F0, &qword_100005840);
  sub_1000045B4(&qword_10000C0F8, &qword_100005848);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 304);
    sub_100004B44((v0 + 56), v0 + 16);
    sub_100004B5C(v0 + 16, v0 + 96);
    v4 = sub_1000050E0();
    v5 = sub_100005170();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = *(v0 + 120);
      v9 = *(v0 + 128);
      v10 = sub_100004A58((v0 + 96), v8);
      v11 = *(v8 - 8);
      v12 = *(v11 + 64) + 15;
      v13 = swift_task_alloc();
      (*(v11 + 16))(v13, v10, v8);
      v14 = *(v9 + 8);
      if (sub_100005210())
      {
        (*(v11 + 8))(v13, v8);
      }

      else
      {
        swift_allocError();
        (*(v11 + 32))(v27, v13, v8);
      }

      v28 = _swift_stdlib_bridgeErrorToNSError();
      sub_100004CCC((v0 + 96));
      *(v6 + 4) = v28;
      *v7 = v28;
      _os_log_impl(&_mh_execute_header, v4, v5, "SiriAttentionAndInvocationExtension failed with error: %@", v6, 0xCu);
      sub_100004BC0(v7, &qword_10000C110, &qword_100005858);
    }

    else
    {

      sub_100004CCC((v0 + 96));
    }

    v29 = *(v0 + 480);
    v16 = *(v0 + 416);
    v30 = *(v0 + 392);
    v31 = *(v0 + 368);
    v32 = *(v0 + 376);
    v34 = *(v0 + 344);
    v33 = *(v0 + 352);
    v35 = *(v0 + 336);
    sub_100004B5C(v0 + 16, v0 + 136);
    v36 = objc_allocWithZone(sub_100005070());
    v24 = sub_100005050();

    sub_100004CCC((v0 + 16));
    (*(v34 + 8))(v33, v35);
    v25 = v30;
    v26 = v31;
  }

  else
  {
    v15 = *(v0 + 480);
    v16 = *(v0 + 416);
    v17 = *(v0 + 392);
    v18 = *(v0 + 368);
    v19 = *(v0 + 376);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    v22 = *(v0 + 336);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_100004BC0(v0 + 56, &qword_10000C100, &qword_100005850);
    sub_100004AF0();
    v23 = objc_allocWithZone(sub_100005070());
    v24 = sub_100005050();

    (*(v21 + 8))(v20, v22);
    v25 = v17;
    v26 = v18;
  }

  v16(v25, v26);
  v37 = *(v0 + 448);
  v39 = *(v0 + 384);
  v38 = *(v0 + 392);
  v41 = *(v0 + 352);
  v40 = *(v0 + 360);
  v42 = *(v0 + 328);

  v43 = *(v0 + 8);

  return v43(v24);
}

uint64_t sub_100003408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100004FDC;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_1000034B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000354C;

  return sub_100001FA8(a1);
}

uint64_t sub_10000354C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100003648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10000372C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000372C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003820(uint64_t a1)
{
  v2 = sub_100004A14(&qword_10000C0D0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000050F0();
  v4 = *(a1 + 20);
  sub_100004818();
  sub_10000486C();
  result = sub_1000050B0();
  *(a2 + *(a1 + 24)) = 1;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SiriAttentionAndInvocationExtension();
  sub_100004A14(&qword_10000C000);
  sub_100005040();
  return 0;
}

uint64_t sub_1000039B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003A84(v11, 0, 0, 1, a1, a2);
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
    sub_100004D18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004CCC(v11);
  return v7;
}

unint64_t sub_100003A84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003B90(a5, a6);
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
    result = sub_1000051A0();
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

char *sub_100003B90(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003BDC(a1, a2);
  sub_100003D0C(&off_100008618);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003BDC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003DF8(v5, 0);
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

  result = sub_1000051A0();
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
        v10 = sub_100005130();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003DF8(v10, 0);
        result = sub_100005180();
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

uint64_t sub_100003D0C(uint64_t result)
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

  result = sub_100003E6C(result, v12, 1, v3);
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

void *sub_100003DF8(uint64_t a1, uint64_t a2)
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

  sub_1000045B4(&unk_10000C120, &qword_100005860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003E6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000045B4(&unk_10000C120, &qword_100005860);
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

double sub_100003F60(uint64_t *a1)
{
  v2 = sub_1000045B4(&qword_10000C0D8, &qword_100005820);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_100004A58(a1, a1[3]);
  sub_100004A9C();
  sub_1000052A0();
  v13 = 0;
  sub_1000051C0();
  v12 = 1;
  sub_1000051D0();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_100004CCC(a1);
  return v9;
}

uint64_t _s35SiriAttentionAndInvocationExtension17SAIExtensionErrorO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000085B0;
  v6._object = a2;
  v4 = sub_1000051B0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for SiriAttentionAndInvocationExtension()
{
  result = qword_10000C3B0;
  if (!qword_10000C3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000041A8()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

unint64_t sub_100004200()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

unint64_t sub_100004258()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_1000042B0()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SAIExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SAIExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000448C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005100();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1000045B4(&qword_10000C028, &qword_1000056B8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000045B4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100005100();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000045B4(&qword_10000C028, &qword_1000056B8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100004724()
{
  sub_100005100();
  if (v0 <= 0x3F)
  {
    sub_1000047B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000047B0()
{
  if (!qword_10000C088)
  {
    sub_100004818();
    sub_10000486C();
    v0 = sub_1000050D0();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C088);
    }
  }
}

unint64_t sub_100004818()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_10000486C()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SiriAttentionAndInvocationExtensionConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriAttentionAndInvocationExtensionConfig(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriAttentionAndInvocationExtensionConfig(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100004A14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAttentionAndInvocationExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100004A58(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004A9C()
{
  result = qword_10000C640[0];
  if (!qword_10000C640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C640);
  }

  return result;
}

unint64_t sub_100004AF0()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_100004B44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100004B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004BC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000045B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100004C20()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    sub_100004C84(&qword_10000C028, &qword_1000056B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

uint64_t sub_100004C84(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004CCC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for SiriAttentionAndInvocationExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriAttentionAndInvocationExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004ED8()
{
  result = qword_10000C750[0];
  if (!qword_10000C750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C750);
  }

  return result;
}

unint64_t sub_100004F30()
{
  result = qword_10000C860;
  if (!qword_10000C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C860);
  }

  return result;
}

unint64_t sub_100004F88()
{
  result = qword_10000C868[0];
  if (!qword_10000C868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C868);
  }

  return result;
}