uint64_t sub_1000019B0()
{
  v0 = sub_10000C01C();
  sub_100006854(v0, qword_100014680);
  sub_100004D60(v0, qword_100014680);
  return sub_10000C00C();
}

id sub_100001A34()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_100005A40(&qword_100014718);
  __chkstk_darwin();
  sub_10000BF0C();
  __chkstk_darwin();
  v3 = OBJC_IVAR____TtC17ASVAssetThumbnail27USDRealityThumbnailProvider_taskQueue;
  sub_10000BF4C();
  sub_10000BF3C();
  sub_10000BF2C();
  *&v0[v3] = sub_10000BF1C();
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_10000C04C();
  v6 = [v4 objectForInfoDictionaryKey:v5];

  if (v6)
  {
    sub_10000C12C();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = v16;
      v7 = v17;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000068F8(v21, &qword_100014720);
  }

  v7 = 0xE100000000000000;
  v8 = 63;
LABEL_9:
  if (qword_100014678 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C01C();
  sub_100004D60(v9, qword_100014680);

  v10 = sub_10000BFFC();
  v11 = sub_10000C10C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v21[0] = v13;
    *v12 = 136315138;
    v14 = sub_1000053F0(v8, v7, v21);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "ARQL_Thumbnail init USDRealityThumbnailProvider v%s", v12, 0xCu);
    sub_100005998(v13);
  }

  else
  {
  }

  sub_10000BEDC();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC17ASVAssetThumbnail27USDRealityThumbnailProvider_renderer] = sub_10000BECC();
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

id sub_100001DE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100014678 != -1)
  {
    swift_once();
  }

  v3 = sub_10000C01C();
  sub_100004D60(v3, qword_100014680);
  v4 = sub_10000BFFC();
  v5 = sub_10000C10C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "ARQL_Thumbnail deinit USDRealityThumbnailProvider", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_100001F64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v37 = a3;
  v38 = a2;
  v5 = sub_10000BE6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  if (qword_100014678 != -1)
  {
    swift_once();
  }

  v11 = sub_10000C01C();
  sub_100004D60(v11, qword_100014680);
  v12 = *(v6 + 16);
  v12(v10, a1, v5);
  v13 = sub_10000BFFC();
  v14 = sub_10000C10C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = v12;
    v16 = v15;
    v33 = swift_slowAlloc();
    v41 = v33;
    *v16 = 136380675;
    sub_100006A6C(&qword_1000146E0, &type metadata accessor for URL);
    v17 = sub_10000C16C();
    v35 = v7;
    v18 = a1;
    v20 = v19;
    (*(v6 + 8))(v10, v5);
    v21 = sub_1000053F0(v17, v20, &v41);
    a1 = v18;
    v7 = v35;

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "provideThumbnail File: %{private}s", v16, 0xCu);
    sub_100005998(v33);

    v12 = v34;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v22 = v40;
  v23 = v36;
  v12(v36, a1, v5);
  v24 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v37;
  v28 = v38;
  *(v26 + 2) = v38;
  *(v26 + 3) = v27;
  *(v26 + 4) = v39;
  (*(v6 + 32))(&v26[v24], v23, v5);
  *&v26[v25] = v22;
  v29 = v28;

  v30 = v22;
  sub_10000BEFC();
  sub_10000BEEC();
}

uint64_t sub_100002450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_10000BE6C();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100002520, 0, 0);
}

uint64_t sub_100002520()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v30 = v0[12];
  v32 = v0[9];
  v6 = v0[8];
  v28 = v6;
  sub_100005A40(&qword_1000146F0);
  v29 = swift_allocBox();
  v8 = v7;
  v31 = v7;
  v0[17] = v29;
  v9 = sub_100005A40(&qword_1000146F8);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  [v6 maximumSize];
  v11 = v10;
  v13 = v12;
  (*(v3 + 16))(v1, v5, v4);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v14, v1, v4);
  *(v18 + v15) = v30;
  v19 = (v18 + v16);
  *v19 = v11;
  v19[1] = v13;
  *(v18 + v17) = v28;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v0[6] = sub_100005B58;
  v0[7] = v18;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004598;
  v0[5] = &unk_1000108B8;
  v20 = _Block_copy(v0 + 2);
  v21 = objc_opt_self();
  v22 = v30;
  v23 = v28;

  v24 = [v21 replyWithContextSize:v20 ioSurfaceAsyncBlock:{v11, v13}];
  _Block_release(v20);

  v32(v24, 0);

  v25 = swift_task_alloc();
  v0[18] = v25;
  *(v25 + 16) = v31;
  v26 = swift_task_alloc();
  v0[19] = v26;
  *v26 = v0;
  v26[1] = sub_100002858;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100002858()
{

  return _swift_task_switch(sub_100002970, 0, 0);
}

uint64_t sub_100002970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000029D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, double a8, double a9)
{
  v66 = a3;
  v67 = a7;
  v64 = a1;
  v65 = a6;
  v63 = a2;
  v13 = sub_100005A40(&qword_100014700);
  __chkstk_darwin(v13 - 8);
  v68 = &v56 - v14;
  v15 = sub_10000BE6C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v56 - v20;
  if (qword_100014678 != -1)
  {
    swift_once();
  }

  v22 = sub_10000C01C();
  sub_100004D60(v22, qword_100014680);
  v62 = *(v16 + 16);
  v62(v21, a4, v15);
  v23 = sub_10000BFFC();
  v24 = sub_10000C10C();
  if (os_log_type_enabled(v23, v24))
  {
    v57 = v24;
    v58 = a5;
    v60 = a4;
    v25 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v69 = v56;
    *v25 = 136381187;
    sub_100006A6C(&qword_1000146E0, &type metadata accessor for URL);
    v26 = sub_10000C16C();
    v28 = v27;
    v59 = v16;
    v29 = *(v16 + 8);
    v30 = v15;
    v29(v21, v15);
    v31 = sub_1000053F0(v26, v28, &v69);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = objc_opt_self();
    v33 = [v32 currentThread];
    v34 = [v33 name];

    if (v34)
    {
      v35 = sub_10000C05C();
      v37 = v36;
    }

    else
    {
      v37 = 0xE90000000000003ELL;
      v35 = 0x656D616E206F6E3CLL;
    }

    v38 = sub_1000053F0(v35, v37, &v69);

    *(v25 + 14) = v38;
    *(v25 + 22) = 1024;
    *(v25 + 24) = [v32 isMainThread];
    _os_log_impl(&_mh_execute_header, v23, v57, "inside QLThumbnailReply: %{private}s, thread: %s isMain: %{BOOL}d", v25, 0x1Cu);
    swift_arrayDestroy();

    v15 = v30;
    v16 = v59;
    a4 = v60;
  }

  else
  {

    (*(v16 + 8))(v21, v15);
  }

  v61 = v15;
  v39 = sub_10000C0EC();
  (*(*(v39 - 8) + 56))(v68, 1, 1, v39);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62(v19, a4, v15);
  v41 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v42 = (v17 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = v40;
  (*(v16 + 32))(&v46[v41], v19, v61);
  v47 = &v46[v42];
  *v47 = a8;
  v47[1] = a9;
  v49 = v64;
  v48 = v65;
  *&v46[v43] = v65;
  *&v46[v44] = v49;
  v50 = &v46[v45];
  v52 = v66;
  v51 = v67;
  *v50 = v63;
  *(v50 + 1) = v52;
  *&v46[(v45 + 23) & 0xFFFFFFFFFFFFFFF8] = v51;
  v53 = v48;
  v54 = v49;

  sub_1000042A8(0, 0, v68, &unk_10000CA08, v46);
}

uint64_t sub_100002F3C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 112) = a10;
  *(v10 + 120) = v14;
  *(v10 + 96) = a8;
  *(v10 + 104) = a9;
  *(v10 + 80) = a1;
  *(v10 + 88) = a2;
  *(v10 + 64) = a6;
  *(v10 + 72) = a7;
  v11 = sub_100005A40(&qword_1000146F8);
  *(v10 + 128) = v11;
  *(v10 + 136) = *(v11 - 8);
  *(v10 + 144) = swift_task_alloc();
  *(v10 + 152) = swift_projectBox();

  return _swift_task_switch(sub_100003028, 0, 0);
}

uint64_t sub_100003028()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 20) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 12);
    [v2 scale];
    v4 = v3;
    v5 = [v2 badgeType] == 1;
    v6 = swift_task_alloc();
    *(v0 + 21) = v6;
    *v6 = v0;
    v6[1] = sub_10000316C;
    v7 = *(v0 + 13);
    v8 = v0[10];
    v9 = v0[11];
    v10 = *(v0 + 9);

    return sub_1000035C8(v10, v7, v5, v8, v9, v4);
  }

  else
  {

    v12 = *(v0 + 1);

    return v12();
  }
}

uint64_t sub_10000316C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100003388;
  }

  else
  {
    v2 = sub_100003280;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003280()
{
  (*(v0 + 112))(1);
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  swift_beginAccess();
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 160);
  if (v4)
  {
  }

  else
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    (*(v8 + 16))(v6, *(v0 + 152), v7);
    sub_10000C0CC();

    (*(v8 + 8))(v6, v7);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100003388()
{
  if (qword_100014678 != -1)
  {
    swift_once();
  }

  v1 = sub_10000C01C();
  sub_100004D60(v1, qword_100014680);
  swift_errorRetain();
  v2 = sub_10000BFFC();
  v3 = sub_10000C0FC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to provideThumbnail, error: %@", v4, 0xCu);
    sub_1000068F8(v5, &qword_100014708);
  }

  v7 = v0[14];

  v7(0);

  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  swift_beginAccess();
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = v0[20];
  if (v11)
  {
  }

  else
  {
    v13 = v0[18];
    v14 = v0[16];
    v15 = v0[17];
    (*(v15 + 16))(v13, v0[19], v14);
    sub_10000C0CC();

    (*(v15 + 8))(v13, v14);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000035C8(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  *(v7 + 184) = a3;
  *(v7 + 48) = a2;
  *(v7 + 56) = v6;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 24) = a4;
  *(v7 + 16) = a1;
  v8 = sub_10000BEBC();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v9 = sub_10000BE6C();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100003718, 0, 0);
}

uint64_t sub_100003718()
{
  v60 = v0;
  if (qword_100014678 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 16);
  v5 = sub_10000C01C();
  *(v0 + 136) = sub_100004D60(v5, qword_100014680);
  v6 = *(v3 + 16);
  *(v0 + 144) = v6;
  *(v0 + 152) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_10000BFFC();
  v8 = sub_10000C10C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = &USDRealityThumbnailProvider;
  if (v9)
  {
    v53 = v8;
    v55 = v6;
    v14 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v14 = 136380931;
    sub_100006A6C(&qword_1000146E0, &type metadata accessor for URL);
    v15 = sub_10000C16C();
    v17 = v16;
    v56 = *(v11 + 8);
    v56(v10, v12);
    v18 = sub_1000053F0(v15, v17, &v59);
    v13 = &USDRealityThumbnailProvider;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = [objc_opt_self() currentThread];
    v20 = [v19 name];

    if (v20)
    {
      v21 = sub_10000C05C();
      v23 = v22;
    }

    else
    {
      v23 = 0xE90000000000003ELL;
      v21 = 0x656D616E206F6E3CLL;
    }

    v25 = sub_1000053F0(v21, v23, &v59);

    *(v14 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v7, v53, "generateThumbnail, url: %{private}s, thread: %s", v14, 0x16u);
    swift_arrayDestroy();

    v24 = v56;
    v6 = v55;
  }

  else
  {

    v24 = *(v11 + 8);
    v24(v10, v12);
  }

  *(v0 + 160) = v24;
  v26 = *(v0 + 120);
  v27 = *(v0 + 96);
  v28 = *(v0 + 40);
  v29 = *(v0 + 16);
  v30 = v28 * *(v0 + 24);
  v31 = v28 * *(v0 + 32);
  v32 = [objc_opt_self() forceUseLegacySceneImportPipeline];
  v6(v26, v29, v27);
  v33 = sub_10000BFFC();
  v34 = sub_10000C10C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 120);
  v37 = *(v0 + 96);
  if (v35)
  {
    v38 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v38 = 136315651;
    v39 = sub_10000C11C();
    v57 = v24;
    v41 = sub_1000053F0(v39, v40, &v59);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2112;
    v42 = [objc_opt_self() v13[9].ivars];
    *(v38 + 14) = v42;
    *v54 = v42;
    *(v38 + 22) = 2081;
    sub_100006A6C(&qword_1000146E0, &type metadata accessor for URL);
    v43 = sub_10000C16C();
    v45 = v44;
    v57(v36, v37);
    v46 = sub_1000053F0(v43, v45, &v59);

    *(v38 + 24) = v46;
    _os_log_impl(&_mh_execute_header, v33, v34, "Begin thumbnail generation. Size: %s. Thread: %@ File: %{private}s", v38, 0x20u);
    sub_1000068F8(v54, &qword_100014708);

    swift_arrayDestroy();
  }

  else
  {

    v24(v36, v37);
  }

  sub_10000BEAC();
  v58 = (&async function pointer to dispatch thunk of ARQLRenderer.snapshot(file:iosurface:contentSize:forceUseLegacySceneImportPipeline:) + async function pointer to dispatch thunk of ARQLRenderer.snapshot(file:iosurface:contentSize:forceUseLegacySceneImportPipeline:));
  v47 = swift_task_alloc();
  *(v0 + 168) = v47;
  *v47 = v0;
  v47[1] = sub_100003D0C;
  v48 = *(v0 + 48);
  v49 = *(v0 + 16);
  v50.n128_f64[0] = v30;
  v51.n128_f64[0] = v31;

  return v58(v49, v48, v32, v50, v51);
}

uint64_t sub_100003D0C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1000041F0;
  }

  else
  {
    v2 = sub_100003E20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003E20()
{
  v43 = v0;
  v1 = sub_10000BFFC();
  v2 = sub_10000C10C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished snapshotting", v3, 2u);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 48);

  v6 = sub_10000BE0C();
  sub_1000061EC(v5, v6, v7);

  if (v4 == 1)
  {
    sub_100004778(*(v0 + 48), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  }

  v8 = sub_10000BFFC();
  v9 = sub_10000C10C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Created image", v10, 2u);
  }

  v11 = *(v0 + 144);
  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 64);
  v17 = *(v0 + 16);

  sub_10000BEAC();
  sub_10000BE9C();
  v19 = v18;
  v41 = *(v15 + 8);
  v41(v14, v16);
  v11(v12, v17, v13);
  v20 = sub_10000BFFC();
  v21 = sub_10000C10C();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 160);
  v24 = *(v0 + 112);
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v27 = *(v0 + 64);
  if (v22)
  {
    v40 = *(v0 + 64);
    v28 = swift_slowAlloc();
    v38 = v23;
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 134218242;
    *(v28 + 4) = v19;
    *(v28 + 12) = 2080;
    sub_100006A6C(&qword_1000146E0, &type metadata accessor for URL);
    v30 = sub_10000C16C();
    v39 = v25;
    v32 = v31;
    v38(v24, v26);
    v33 = sub_1000053F0(v30, v32, &v42);

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, "⌛️Snapshot took %fs for %s", v28, 0x16u);
    sub_100005998(v29);

    v34 = v39;
    v35 = v40;
  }

  else
  {

    v23(v24, v26);
    v34 = v25;
    v35 = v27;
  }

  v41(v34, v35);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1000041F0()
{
  (*(v0[9] + 8))(v0[11], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000042A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005A40(&qword_100014700);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005FD4(a3, v25 - v10);
  v12 = sub_10000C0EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000068F8(v11, &qword_100014700);
  }

  else
  {
    sub_10000C0DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000C0BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000C06C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000068F8(a3, &qword_100014700);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000068F8(a3, &qword_100014700);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100004598(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

uint64_t sub_100004650(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A40(&qword_1000146F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_100005A40(&qword_1000146F8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_beginAccess();
  return sub_100005C54(v6, a2);
}

void sub_100004778(void *a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (qword_100014678 != -1)
  {
    swift_once();
  }

  v8 = sub_10000C01C();
  sub_100004D60(v8, qword_100014680);
  v9 = sub_10000BFFC();
  v10 = sub_10000C10C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Adding interactive badge to iosurface", v11, 2u);
  }

  v12 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  [a1 width];
  [a1 height];
  v13 = CGIOSurfaceContextCreate();
  if (v13)
  {
    v14 = v13;
    CGContextTranslateCTM(v13, 0.0, a3 * a4);
    CGContextScaleCTM(v14, a4, -a4);
    CGContextGetCTM(&v16, v14);
    CGContextSetBaseCTM();
    UIGraphicsPushContext(v14);
    v15 = objc_autoreleasePoolPush();
    sub_10000496C(a2, a3);
    objc_autoreleasePoolPop(v15);
    UIGraphicsPopContext();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000496C(CGFloat a1, CGFloat a2)
{
  if (qword_100014678 != -1)
  {
    swift_once();
  }

  v4 = sub_10000C01C();
  sub_100004D60(v4, qword_100014680);
  v5 = sub_10000BFFC();
  v6 = sub_10000C10C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = [objc_opt_self() currentThread];
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Creating image next, Thread: %@", v7, 0xCu);
    sub_1000068F8(v8, &qword_100014708);
  }

  v10 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.3];
  v15.width = a1;
  v15.height = a2;
  UIGraphicsBeginImageContextWithOptions(v15, 0, 0.0);
  [v10 setFill];
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a1;
  v16.size.height = a2;
  UIRectFill(v16);
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  if (v11)
  {
    v12 = v11;
    UIGraphicsEndImageContext();

    v13 = [objc_opt_self() badgeForThumbnail:v12];
    [v13 size];
    [v13 drawAtPoint:{a1 - v14, 0.0}];
  }

  else
  {
    __break(1u);
  }
}

id variable initialization expression of StackedImagesThumbnail.shadowColor()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent:0.4];

  return v1;
}

id variable initialization expression of StackedImagesThumbnail.icon()
{
  v0 = sub_10000C04C();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 whiteColor];
    v1 = [v3 imageWithTintColor:v4 renderingMode:2];
  }

  return v1;
}

uint64_t sub_100004D60(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004D98()
{
  v1 = sub_10000BE6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100004E78()
{
  v2 = *(sub_10000BE6C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100004F94;

  return sub_100002450(v4, v5, v6, v0 + v3, v7);
}

uint64_t sub_100004F94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Int sub_10000512C()
{
  sub_10000C1AC();
  swift_getWitnessTable();
  sub_10000BF6C();
  return sub_10000C1BC();
}

uint64_t sub_100005194()
{
  swift_getWitnessTable();

  return sub_10000BF5C();
}

uint64_t sub_100005200(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000052F8;

  return v6(a1);
}

uint64_t sub_1000052F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000053F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000054BC(v11, 0, 0, 1, a1, a2);
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
    sub_1000059E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005998(v11);
  return v7;
}

unint64_t sub_1000054BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000055C8(a5, a6);
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
    result = sub_10000C14C();
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

char *sub_1000055C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005614(a1, a2);
  sub_100005744(&off_100010840);
  return v3;
}

char *sub_100005614(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005830(v5, 0);
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

  result = sub_10000C14C();
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
        v10 = sub_10000C09C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005830(v10, 0);
        result = sub_10000C13C();
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

uint64_t sub_100005744(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000058A4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100005830(uint64_t a1, uint64_t a2)
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

  sub_100005A40(&qword_1000146E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000058A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005A40(&qword_1000146E8);
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

uint64_t sub_100005998(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000059E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005A40(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005A8C()
{
  v1 = sub_10000BE6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100005B58(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10000BE6C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v9);
  v13 = *(v3 + v11);
  v14 = *(v3 + v10);
  v15 = *(v3 + v10 + 8);
  v16 = *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000029D8(a1, a2, a3, v3 + v8, v12, v13, v16, v14, v15);
}

uint64_t sub_100005C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A40(&qword_1000146F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005CDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005D14()
{
  v1 = sub_10000BE6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100005E40(uint64_t a1)
{
  v3 = *(sub_10000BE6C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[3];
  v18 = v1[2];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = *(v1 + v7);
  v15 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_100006B04;

  return sub_100002F3C(v11, v12, a1, v18, v8, v9, v1 + v4, v13, v14, v15);
}

uint64_t sub_100005FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A40(&qword_100014700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006044()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000607C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006B04;

  return sub_100005200(a1, v4);
}

uint64_t sub_100006134(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004F94;

  return sub_100005200(a1, v4);
}

void sub_1000061EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000BDEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005A40(&qword_100014710);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_10000BE6C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() debugSaveThumbnailImageToDisk])
  {
    v42 = [objc_allocWithZone(CIImage) initWithIOSurface:a1];
    v17 = objc_allocWithZone(UIImage);
    v18 = [v17 initWithCIImage:v42];
    v19 = UIImagePNGRepresentation(v18);
    if (v19)
    {
      v41 = v18;
      v38._countAndFlagsBits = a2;
      v38._object = a3;
      v20 = v19;
      v39 = sub_10000BE7C();
      v40 = v21;

      v22 = NSTemporaryDirectory();
      v23 = sub_10000C05C();
      v25 = v24;

      v37 = v23;
      v43[0] = v23;
      v43[1] = v25;

      v45._countAndFlagsBits = 0x2D4C5152412FLL;
      v45._object = 0xE600000000000000;
      sub_10000C08C(v45);
      sub_10000C08C(v38);
      v46._countAndFlagsBits = 1735290926;
      v46._object = 0xE400000000000000;
      sub_10000C08C(v46);
      (*(v14 + 56))(v12, 1, 1, v13);
      (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
      v27 = v39;
      v26 = v40;
      sub_10000BE5C();
      sub_10000BE8C();
      v29 = v37;
      (*(v14 + 8))(v16, v13);
      if (qword_100014678 != -1)
      {
        swift_once();
      }

      v30 = sub_10000C01C();
      sub_100004D60(v30, qword_100014680);

      v31 = sub_10000BFFC();
      v32 = sub_10000C10C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v29;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43[0] = v35;
        *v34 = 136315138;
        v36 = sub_1000053F0(v33, v25, v43);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v31, v32, "[DEBUG] Saved to %s", v34, 0xCu);
        sub_100005998(v35);

        sub_100006800(v27, v26);
      }

      else
      {

        sub_100006800(v27, v26);
      }
    }

    else
    {

      v28 = v42;
    }
  }
}

uint64_t sub_100006800(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_100006854(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000068B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000068F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100005A40(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_10000696C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000697C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000699C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1000069D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100006A6C(unint64_t *a1, void (*a2)(uint64_t))
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

double StackedImagesThumbnail.init(with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.4];

  v7 = sub_10000C04C();
  v8 = [objc_opt_self() imageNamed:v7];

  if (v8)
  {
    v9 = v8;
    v10 = [v4 whiteColor];
    v11 = [v9 imageWithTintColor:v10 renderingMode:2];
  }

  else
  {
    v11 = 0;
  }

  result = 0.07;
  *a2 = xmmword_10000CB60;
  *(a2 + 16) = xmmword_10000CB70;
  *(a2 + 32) = v6;
  *(a2 + 40) = v11;
  *(a2 + 48) = a1;
  return result;
}

Swift::Void __swiftcall StackedImagesThumbnail.draw(in:)(CGRect in)
{
  if (in.size.height >= in.size.width)
  {
    width = in.size.width;
  }

  else
  {
    width = in.size.height;
  }

  v7 = CGRectInset(in, width * 0.1, width * 0.1);
  x = v7.origin.x;
  y = v7.origin.y;
  v4 = v7.size.width;
  height = v7.size.height;
  sub_100006CC4(v7.origin.x, v7.origin.y, v7.size.width, v7.size.height);

  sub_1000071B8(x, y, v4, height);
}

void sub_100006CC4(double a1, double a2, double a3, double a4)
{
  v75 = a1;
  v76 = a2;
  v7 = sub_10000BE6C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v4 + 48);
  v78 = *(v79 + 16);
  if (!v78)
  {
    return;
  }

  v11 = objc_opt_self();
  v13 = *(v8 + 16);
  v12 = v8 + 16;
  v81 = v13;
  v82 = v11;
  v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v15 = v78 - 1;
  if (v78 == 1)
  {
    v15 = 1;
  }

  v73 = v15;
  v74 = (v78 - 1);
  v16 = v79 + v14;
  v17 = (v12 - 8);
  v83 = v12;
  v80 = *(v12 + 56);
  v18 = 0.5;
  v19 = v78;
  v77 = v4;
  while (1)
  {
    v81(v10, v16, v7);
    v21 = objc_autoreleasePoolPush();
    v22 = [v82 mainScreen];
    [v22 scale];
    v24 = v23;

    v25 = sub_100008C58(a3, a4, v24);
    if (!v25)
    {
      goto LABEL_8;
    }

    v26 = v25;
    [(CGContext *)v26 size];
    v28 = v27;
    [(CGContext *)v26 size];
    v30 = v29;
    [(CGContext *)v26 size];
    v32 = v31;
    [(CGContext *)v26 size];
    v34 = v33;
    v35 = [(CGContext *)v26 CGImage];
    if (!v35 || (v30 >= v28 ? (v36 = v28) : (v36 = v30), v37 = (v34 - v36) * v18, v38 = (v32 - v36) * v18, v39 = v35, v40 = v36, v41 = CGImageCreateWithImageInRect(v35, *(&v36 - 2)), v39, !v41))
    {
      v20 = v26;
      goto LABEL_6;
    }

    v20 = [objc_allocWithZone(UIImage) initWithCGImage:v41];

    if (!v20)
    {
      goto LABEL_8;
    }

    v42 = sub_1000075AC(v10, v79);
    v43 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    if ((v46 & 1) == 0)
    {
      break;
    }

LABEL_22:
    v57 = UIGraphicsGetCurrentContext();
    if (!v57)
    {
      goto LABEL_7;
    }

    v26 = v57;
    v58 = v45 * *(v4 + 8);
    [(CGContext *)v20 size];
    v60 = v59;
    v62 = v61;
    [(CGContext *)v20 size];
    UIGraphicsBeginImageContextWithOptions(v84, 0, 0.0);
    v63 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v60, v62, v58}];
    [v63 addClip];
    [(CGContext *)v20 drawInRect:0.0, 0.0, v60, v62];
    v64 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    if (v64 && (v65 = v64, v66 = UIImage.darken(percentage:)(2), v65, v65, v66))
    {
      CGContextSaveGState(v26);
      v72 = v66;
      v4 = v77;
      v67 = *(v77 + 16);
      v68 = *(v77 + 24);
      v69 = [*(v77 + 32) CGColor];
      v85.width = v67;
      v85.height = v67;
      CGContextSetShadowWithColor(v26, v85, v68, v69);

      v70 = v72;
      [(CGContext *)v72 drawInRect:v43, v44, v45, v45];
      CGContextRestoreGState(v26);

      v26 = v70;
    }

    else
    {
      v4 = v77;
    }

    v18 = 0.5;
LABEL_6:

LABEL_7:
LABEL_8:
    objc_autoreleasePoolPop(v21);
    (*v17)(v10, v7);
    v16 += v80;
    if (!--v19)
    {
      return;
    }
  }

  v47 = v42;
  v48 = sub_100007590(v75, v76, a3, a4, 0.0, 0.0);
  if (v51 < v50)
  {
    v50 = v51;
  }

  v52 = v78 - v47;
  if (!__OFSUB__(v78, v47))
  {
    v53 = __OFSUB__(v52, 1);
    v54 = v52 - 1;
    if (v53)
    {
      goto LABEL_30;
    }

    v55 = 1.0 - *v4 * v74;
    v56 = v50 * (1.0 - v55) / v73;
    v45 = v55 * v50;
    v43 = v48 + v56 * v54;
    v44 = v49 + v56 * v47;
    goto LABEL_22;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1000071B8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000BE6C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 40);
  if (v13)
  {
    v14 = *(v4 + 48);
    v15 = *(v14 + 16);
    if (v15)
    {
      (*(v10 + 16))(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v15 - 1), v9);
      v16 = v13;
      v17 = UIGraphicsGetCurrentContext();
      if (v17)
      {
        v18 = v17;
        CGContextSaveGState(v17);
        v19 = *(v4 + 16);
        v20 = *(v4 + 24);
        v21 = [*(v4 + 32) CGColor];
        v28.width = v19;
        v28.height = v19;
        CGContextSetShadowWithColor(v18, v28, v20, v21);

        sub_100007490(v12, a1, a2, a3, a4);
        if (v25 >= v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25;
        }

        [v16 drawInRect:{sub_100007590(v22, v23, v24, v25, v26 * 0.15, v26 * 0.15)}];
        CGContextRestoreGState(v18);

        (*(v10 + 8))(v12, v9);
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }
  }
}

__n128 sub_1000073D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000073EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100007490(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *(v5 + 48);
  v11 = sub_1000075AC(a1, v10);
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    sub_100007590(a2, a3, a4, a5, 0.0, 0.0);
    v14 = *(v10 + 16);
    v15 = __OFSUB__(v14, v13);
    v16 = v14 - v13;
    if (v15)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v16, 1))
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_1000075AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_10000BE6C() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_10000769C();
  v7 = 0;
  while ((sub_10000C03C() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_10000769C()
{
  result = qword_100014748;
  if (!qword_100014748)
  {
    sub_10000BE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014748);
  }

  return result;
}

char *URL.contentFiles(conformingTo:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(NSFileManager) init];
  sub_10000BE4C();
  v4 = sub_10000C04C();

  v14 = 0;
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:&v14];

  v6 = v14;
  if (v5)
  {
    v7 = sub_10000C0AC();
    v8 = v6;

    __chkstk_darwin(v9);
    v13[2] = v1;
    v13[3] = a1;
    v10 = sub_100007B7C(sub_100007B60, v13, v7);
  }

  else
  {
    v11 = v14;
    sub_10000BDDC();

    swift_willThrow();

    return &_swiftEmptyArrayStorage;
  }

  return v10;
}

uint64_t sub_100007874@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_100005A40(&qword_100014758);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10000BFEC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v18 = sub_10000BE6C();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BE2C();
  sub_10000BDFC();
  sub_10000BFAC();
  sub_10000BF8C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000068F8(v3, &qword_100014758);
LABEL_5:
    v14 = v18;
    (*(v9 + 8))(v11, v18);
    v16 = 1;
    v15 = v19;
    return (*(v9 + 56))(v15, v16, 1, v14);
  }

  (*(v5 + 32))(v8, v3, v4);
  v12 = sub_10000BFDC();
  (*(v5 + 8))(v8, v4);
  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = v18;
  v13 = v19;
  (*(v9 + 32))(v19, v11, v18);
  v15 = v13;
  v16 = 0;
  return (*(v9 + 56))(v15, v16, 1, v14);
}

char *sub_100007B7C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30[3] = a2;
  v6 = sub_100005A40(&qword_100014710);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_10000BE6C();
  v10 = __chkstk_darwin(v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v26 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return &_swiftEmptyArrayStorage;
  }

  v24 = v12;
  v27 = (v12 + 32);
  v28 = (v12 + 48);
  v15 = (a3 + 40);
  v16 = &_swiftEmptyArrayStorage;
  v25 = a1;
  while (1)
  {
    v17 = *v15;
    v30[0] = *(v15 - 1);
    v30[1] = v17;

    a1(v30);
    if (v3)
    {
      break;
    }

    if ((*v28)(v8, 1, v9) == 1)
    {
      sub_1000068F8(v8, &qword_100014710);
    }

    else
    {
      v18 = v9;
      v19 = v26;
      v20 = *v27;
      (*v27)(v26, v8, v18);
      v20(v29, v19, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100007E70(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_100007E70(v21 > 1, v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v20(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v29, v18);
      v9 = v18;
      a1 = v25;
    }

    v15 += 2;
    if (!--v14)
    {
      return v16;
    }
  }

  return v16;
}

size_t sub_100007E70(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005A40(&qword_100014750);
  v10 = *(sub_10000BE6C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000BE6C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

UIImage_optional __swiftcall UIImage.croppingBiggestCenteredSquare()()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  [v0 size];
  v6 = v5;
  [v0 size];
  v8 = v7;
  v9 = [v0 CGImage];
  if (v9)
  {
    if (v4 >= v2)
    {
      v11 = v2;
    }

    else
    {
      v11 = v4;
    }

    v12 = (v8 - v11) * 0.5;
    v13 = (v6 - v11) * 0.5;
    v14 = v9;
    v15 = v11;
    v16 = CGImageCreateWithImageInRect(v9, *(&v11 - 2));

    if (v16)
    {
      v17 = [objc_allocWithZone(UIImage) initWithCGImage:v16];

      v9 = v17;
    }

    else
    {
      v9 = 0;
    }
  }

  result.value.super.isa = v9;
  result.is_nil = v10;
  return result;
}

UIImage *UIImage.rounding(radius:)(double a1)
{
  [v1 size];
  v4 = v3;
  v6 = v5;
  [v1 size];
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  v7 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v4, v6, a1}];
  [v7 addClip];
  [v1 drawInRect:{0.0, 0.0, v4, v6}];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

UIImage_optional __swiftcall UIImage.darken(percentage:)(Swift::Int percentage)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CIImage) initWithImage:v2];
  if (v4)
  {
    v6 = v4;
    v7 = percentage;
    if (percentage > 100.0)
    {
      v7 = 100.0;
    }

    v8 = v7 / -100.0;
    if (percentage >= 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = -0.0;
    }

    v10 = [objc_allocWithZone(NSNumber) initWithDouble:v9];
    sub_100005A40(&qword_100014760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000CBD0;
    *(inited + 32) = 0x6972427475706E69;
    *(inited + 40) = 0xEF7373656E746867;
    *(inited + 48) = v10;
    v12 = v10;
    v13 = sub_100008F00(inited);
    swift_setDeallocating();
    sub_1000068F8(inited + 32, &qword_100014768);
    v14 = sub_10000C04C();
    sub_10000853C(v13);

    isa = sub_10000C02C().super.isa;

    v16 = [(objc_class *)v6 imageByApplyingFilter:v14 withInputParameters:isa];

    v17 = [objc_allocWithZone(CIContext) initWithOptions:0];
    [v16 extent];
    v18 = [v17 createCGImage:v16 fromRect:?];
    if (v18)
    {
      v19 = v18;
      v20 = [objc_allocWithZone(UIImage) initWithCGImage:v18];

      v4 = v20;
    }

    else
    {

      v4 = 0;
    }
  }

  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

UIImage_optional __swiftcall UIImage.cropping(to:)(CGRect to)
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v6 = [v1 CGImage];
  if (v6)
  {
    v8 = v6;
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v9 = CGImageCreateWithImageInRect(v6, v12);

    if (v9)
    {
      v10 = [objc_allocWithZone(UIImage) initWithCGImage:v9];

      v6 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  result.value.super.isa = v6;
  result.is_nil = v7;
  return result;
}

unint64_t sub_10000853C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005A40(&qword_100014770);
    v2 = sub_10000C15C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_100009004();

        v19 = v18;
        swift_dynamicCast();
        sub_100009050(&v25, v27);
        sub_100009050(v27, v28);
        sub_100009050(v28, &v26);
        result = sub_100008838(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100005998(v11);
          result = sub_100009050(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_100009050(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100008798(uint64_t a1)
{
  sub_10000C1AC();
  type metadata accessor for CFString(0);
  sub_1000090D0(&qword_1000147B0);
  sub_10000BF6C();
  v2 = sub_10000C1BC();

  return sub_1000088B0(a1, v2);
}

unint64_t sub_100008838(uint64_t a1, uint64_t a2)
{
  sub_10000C1AC();
  sub_10000C07C();
  v4 = sub_10000C1BC();

  return sub_1000089A8(a1, a2, v4);
}

unint64_t sub_1000088B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000090D0(&qword_1000147B0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10000BF5C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000089A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000C18C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100008A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005A40(&qword_1000147B8);
    v3 = sub_10000C15C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100008798(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100008B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005A40(&qword_1000147A8);
    v3 = sub_10000C15C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009060(v4, &v11);
      v5 = v11;
      result = sub_100008798(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100009050(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100008C58(double a1, double a2, double a3)
{
  sub_100005A40(&qword_100014788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000CBD0;
  *(inited + 32) = kCGImageSourceShouldCache;
  *(inited + 40) = 0;
  v7 = kCGImageSourceShouldCache;
  sub_100008A60(inited);
  swift_setDeallocating();
  sub_1000068F8(inited + 32, &qword_100014790);
  type metadata accessor for CFString(0);
  sub_1000090D0(&qword_100014738);
  v8.super.isa = sub_10000C02C().super.isa;

  sub_10000BE1C(v9);
  v11 = v10;
  v12 = CGImageSourceCreateWithURL(v10, v8.super.isa);

  if (v12)
  {
    if (a1 > a2)
    {
      v13 = a1;
    }

    else
    {
      v13 = a2;
    }

    v14 = v13 * a3;
    sub_100005A40(&qword_100014798);
    v15 = swift_initStackObject();
    *(v15 + 32) = kCGImageSourceCreateThumbnailFromImageAlways;
    *(v15 + 16) = xmmword_10000CBE0;
    *(v15 + 40) = 1;
    *(v15 + 64) = &type metadata for Bool;
    *(v15 + 72) = kCGImageSourceCreateThumbnailWithTransform;
    *(v15 + 80) = 1;
    *(v15 + 104) = &type metadata for Bool;
    *(v15 + 112) = kCGImageSourceThumbnailMaxPixelSize;
    *(v15 + 144) = &type metadata for CGFloat;
    *(v15 + 120) = v14;
    v16 = kCGImageSourceCreateThumbnailFromImageAlways;
    v17 = kCGImageSourceCreateThumbnailWithTransform;
    v18 = kCGImageSourceThumbnailMaxPixelSize;
    sub_100008B50(v15);
    swift_setDeallocating();
    sub_100005A40(&qword_1000147A0);
    swift_arrayDestroy();
    v19.super.isa = sub_10000C02C().super.isa;

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v12, 0, v19.super.isa);
    if (ThumbnailAtIndex)
    {
      v21 = ThumbnailAtIndex;
      v22 = [objc_allocWithZone(UIImage) initWithCGImage:ThumbnailAtIndex];

      return v22;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_100008F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005A40(&qword_100014780);
    v3 = sub_10000C15C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100008838(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100009004()
{
  result = qword_100014778;
  if (!qword_100014778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014778);
  }

  return result;
}

_OWORD *sub_100009050(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A40(&qword_1000147A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000090D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009114()
{
  v0 = sub_10000C01C();
  sub_100006854(v0, qword_1000147C0);
  sub_100004D60(v0, qword_1000147C0);
  return sub_10000C00C();
}

id ObjectCaptureThumbnailProvider.__deallocating_deinit()
{
  v1 = v0;
  if (qword_100014698 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C01C();
  sub_100004D60(v2, qword_1000147C0);
  v3 = sub_10000BFFC();
  v4 = sub_10000C10C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ObjectCapture_Thumbnail deinit ThumbnailProvider", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for ObjectCaptureThumbnailProvider();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t ObjectCaptureThumbnailProvider.provideThumbnail(for:_:)(void *a1, void (*a2)(id, void), uint64_t a3)
{
  v7 = sub_10000BE6C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 fileURL];
  sub_10000BE3C();

  if (sub_1000096A8())
  {
    sub_10000A27C(a1, a2, a3);
  }

  else
  {
    v12 = sub_1000099EC(v10);
    [a1 maximumSize];
    v14 = v13;
    v16 = v15;
    if (v12)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      *(v17 + 24) = a1;
      v30 = sub_10000A830;
      v31 = v17;
      aBlock = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100009F98;
      v29 = &unk_100010B68;
      v18 = _Block_copy(&aBlock);
      v19 = objc_opt_self();
      v20 = v3;
      v21 = a1;
      v22 = [v19 replyWithContextSize:v18 currentContextDrawingBlock:{v14, v16}];
      v23 = v18;
    }

    else
    {
      v30 = sub_10000A668;
      v31 = 0;
      aBlock = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100009F98;
      v29 = &unk_100010B18;
      v24 = _Block_copy(&aBlock);
      v22 = [objc_opt_self() replyWithContextSize:v24 currentContextDrawingBlock:{v14, v16}];
      v23 = v24;
    }

    _Block_release(v23);

    a2(v22, 0);
  }

  return (*(v8 + 8))(v10, v7);
}

BOOL sub_1000096A8()
{
  v1 = sub_10000BFEC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000BE6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = 47;
  v24[1] = 0xE100000000000000;
  sub_10000C08C(*(v0 + OBJC_IVAR____TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider_modelsDirectoryName));
  sub_10000BE2C();

  sub_10000BF9C();
  v9 = URL.contentFiles(conformingTo:)(v4);
  v10 = *(v2 + 8);
  v10(v4, v1);
  sub_10000BFBC();
  v11 = URL.contentFiles(conformingTo:)(v4);
  v10(v4, v1);
  v12 = *(v9 + 2);

  if (v12)
  {

    v13 = 1;
  }

  else
  {
    v14 = *(v11 + 2);

    v13 = v14 != 0;
  }

  if (qword_100014698 != -1)
  {
    swift_once();
  }

  v15 = sub_10000C01C();
  sub_100004D60(v15, qword_1000147C0);
  v16 = sub_10000BFFC();
  v17 = sub_10000C10C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    if (v13)
    {
      v20 = 7562617;
    }

    else
    {
      v20 = 28526;
    }

    if (v13)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE200000000000000;
    }

    v22 = sub_1000053F0(v20, v21, v24);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Bundle contains USDZ: %s", v18, 0xCu);
    sub_100005998(v19);
  }

  (*(v6 + 8))(v8, v5);
  return v13;
}

BOOL sub_1000099EC(uint64_t a1)
{
  v1 = *(sub_100009B64(a1, 1) + 2);

  if (qword_100014698 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C01C();
  sub_100004D60(v2, qword_1000147C0);
  v3 = sub_10000BFFC();
  v4 = sub_10000C10C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = 7562617;
    }

    else
    {
      v7 = 28526;
    }

    if (v1)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    v9 = sub_1000053F0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Bundle contains images: %s", v5, 0xCu);
    sub_100005998(v6);
  }

  return v1 != 0;
}

void *sub_100009B64(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000BFEC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000BE6C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = 47;
  v25[1] = 0xE100000000000000;
  sub_10000C08C(*(v2 + OBJC_IVAR____TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider_imageDirectoryName));
  sub_10000BE2C();

  sub_10000BFCC();
  v13 = URL.contentFiles(conformingTo:)(v8);
  (*(v6 + 8))(v8, v5);
  v14 = *(v13 + 16);
  v15 = __OFSUB__(v14, a2);
  v16 = v14 - a2;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_100009E20(v16 & ~(v16 >> 63), v13);
  if ((v19 & 1) == 0)
  {
LABEL_3:
    sub_10000A88C(v13, v17, v18, v19);
    v21 = v20;
    swift_unknownObjectRelease();
    (*(v10 + 8))(v12, v9);
    return v21;
  }

  v8 = v19;
  a1 = v18;
  v5 = v17;
  sub_10000C19C();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = &_swiftEmptyArrayStorage;
  }

  v23 = v22[2];

  if (__OFSUB__(v8 >> 1, a1))
  {
    goto LABEL_13;
  }

  if (v23 != (v8 >> 1) - a1)
  {
LABEL_14:
    swift_unknownObjectRelease();
    v19 = v8;
    v18 = a1;
    v17 = v5;
    goto LABEL_3;
  }

  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = &_swiftEmptyArrayStorage;
  }

  (*(v10 + 8))(v12, v9);
  swift_unknownObjectRelease();
  return v21;
}

uint64_t sub_100009E20(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10000BE6C();
    return a2;
  }

  return result;
}

uint64_t sub_100009EB0(uint64_t a1, void *a2)
{
  sub_100009FD8(a2);
  if (qword_100014698 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C01C();
  sub_100004D60(v2, qword_1000147C0);
  v3 = sub_10000BFFC();
  v4 = sub_10000C10C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Thumbnail type generated: stacked images", v5, 2u);
  }

  return 1;
}

uint64_t sub_100009F98(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_100009FD8(void *a1)
{
  v2 = sub_10000BE6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 fileURL];
  sub_10000BE3C();

  [a1 maximumSize];
  v8 = v7;
  v10 = v9;
  v11 = sub_100009B64(v5, 3);
  v12 = objc_opt_self();
  v13 = [v12 blackColor];
  v14 = [v13 colorWithAlphaComponent:0.4];

  v15 = sub_10000C04C();
  v16 = [objc_opt_self() imageNamed:v15];

  if (v16)
  {
    v17 = v16;
    v18 = [v12 whiteColor];
    v19 = [v17 imageWithTintColor:v18 renderingMode:2];
  }

  else
  {
    v19 = 0;
  }

  v27[0] = xmmword_10000CB60;
  v27[1] = xmmword_10000CB70;
  v28 = v14;
  v29 = v19;
  v30 = v11;
  if (v10 >= v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = v10;
  }

  v21 = v20 * 0.1;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v8;
  v31.size.height = v10;
  v32 = CGRectInset(v31, v21, v21);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  sub_100006CC4(v32.origin.x, v32.origin.y, v32.size.width, v32.size.height);
  sub_1000071B8(x, y, width, height);
  sub_10000A838(v27);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10000A27C(void *a1, void (*a2)(id, void), uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v35 = sub_10000BFEC();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000BE6C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v33 - v17;
  __chkstk_darwin(v16);
  v20 = &v33 - v19;
  v36 = a1;
  v21 = [a1 fileURL];
  sub_10000BE3C();

  aBlock = 47;
  v40 = 0xE100000000000000;
  v34 = v3;
  sub_10000C08C(*(v3 + OBJC_IVAR____TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider_modelsDirectoryName));
  sub_10000BE2C();

  v22 = v18;
  v23 = *(v9 + 8);
  v23(v22, v8);
  sub_10000BFBC();
  v24 = URL.contentFiles(conformingTo:)(v7);
  (*(v5 + 8))(v7, v35);
  if (*(v24 + 2))
  {
    (*(v9 + 16))(v12, &v24[(*(v9 + 80) + 32) & ~*(v9 + 80)], v8);

    (*(v9 + 32))(v15, v12, v8);
    sub_100001F64(v15, v36, v37, v38);
    v23(v15, v8);
  }

  else
  {

    [v36 maximumSize];
    v26 = v25;
    v28 = v27;
    v43 = sub_10000A668;
    v44 = 0;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100009F98;
    v42 = &unk_100010C58;
    v29 = _Block_copy(&aBlock);
    v30 = v23;
    v31 = [objc_opt_self() replyWithContextSize:v29 currentContextDrawingBlock:{v26, v28}];
    _Block_release(v29);

    v37(v31, 0);

    v23 = v30;
  }

  return (v23)(v20, v8);
}

uint64_t sub_10000A668()
{
  if (qword_100014698 != -1)
  {
    swift_once();
  }

  v0 = sub_10000C01C();
  sub_100004D60(v0, qword_1000147C0);
  v1 = sub_10000BFFC();
  v2 = sub_10000C10C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Thumbnail type generated: none.", v3, 2u);
  }

  return 0;
}

id ObjectCaptureThumbnailProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_10000A7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A7F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000A88C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100005A40(&qword_100014750);
      v7 = *(sub_10000BE6C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_10000BE6C();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_10000AA2C(void *a1, uint64_t a2, void (**a3)(const void *, id, void))
{
  v37 = sub_10000BFEC();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000BE6C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v34 - v17;
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v39 = swift_allocObject();
  *(v39 + 16) = a3;
  v34 = a3;
  _Block_copy(a3);
  v38 = a1;
  v21 = [a1 fileURL];
  sub_10000BE3C();

  aBlock = 47;
  v41 = 0xE100000000000000;
  v36 = a2;
  sub_10000C08C(*(a2 + OBJC_IVAR____TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider_modelsDirectoryName));
  sub_10000BE2C();

  v22 = v18;
  v23 = v20;
  v24 = *(v10 + 8);
  v24(v22, v9);
  sub_10000BFBC();
  v25 = URL.contentFiles(conformingTo:)(v8);
  (*(v6 + 8))(v8, v37);
  if (*(v25 + 2))
  {
    v26 = v35;
    (*(v10 + 16))(v35, &v25[(*(v10 + 80) + 32) & ~*(v10 + 80)], v9);

    (*(v10 + 32))(v15, v26, v9);
    sub_100001F64(v15, v38, sub_1000068F0, v39);
    v24(v15, v9);
  }

  else
  {

    [v38 maximumSize];
    v28 = v27;
    v30 = v29;
    v44 = sub_10000A668;
    v45 = 0;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100009F98;
    v43 = &unk_100010C30;
    v31 = _Block_copy(&aBlock);
    v32 = [objc_opt_self() replyWithContextSize:v31 currentContextDrawingBlock:{v28, v30}];
    _Block_release(v31);

    v34[2](v34, v32, 0);
  }

  v24(v23, v9);
}

void sub_10000AE6C(void *a1, void *a2, void (**a3)(void, void, void))
{
  v6 = sub_10000BE6C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a3);
  v10 = [a1 fileURL];
  sub_10000BE3C();

  if (sub_1000096A8())
  {
    _Block_copy(a3);
    sub_10000AA2C(a1, a2, a3);
    _Block_release(a3);
  }

  else
  {
    v11 = sub_1000099EC(v9);
    [a1 maximumSize];
    v13 = v12;
    v15 = v14;
    if (v11)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a1;
      v28 = sub_10000B1E0;
      v29 = v16;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_100009F98;
      v27 = &unk_100010BE0;
      v17 = _Block_copy(&aBlock);
      v18 = objc_opt_self();
      v19 = a2;
      v20 = a1;
      v21 = [v18 replyWithContextSize:v17 currentContextDrawingBlock:{v13, v15}];
      _Block_release(v17);

      (a3)[2](a3, v21, 0);
    }

    else
    {
      v28 = sub_10000A668;
      v29 = 0;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_100009F98;
      v27 = &unk_100010B90;
      v22 = _Block_copy(&aBlock);
      v23 = [objc_opt_self() replyWithContextSize:v22 currentContextDrawingBlock:{v13, v15}];
      _Block_release(v22);

      (a3)[2](a3, v23, 0);
    }
  }

  (*(v7 + 8))(v9, v6);
  _Block_release(a3);
}

uint64_t sub_10000B194()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000B1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10000BDCC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10000B26C()
{
  v0 = sub_10000C01C();
  sub_100006854(v0, qword_100014820);
  sub_100004D60(v0, qword_100014820);
  return sub_10000C00C();
}

id sub_10000B2F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() mainBundle];
  v4 = sub_10000C04C();
  v5 = [v3 objectForInfoDictionaryKey:v4];

  if (v5)
  {
    sub_10000C12C();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v21;
      v6 = v22;
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000BD30(v27);
  }

  v6 = 0xE100000000000000;
  v7 = 63;
LABEL_9:
  if (qword_1000146A0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000C01C();
  sub_100004D60(v8, qword_100014820);

  v9 = sub_10000BFFC();
  v10 = sub_10000C10C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v27[0] = v12;
    *v11 = 136315138;
    v13 = sub_1000053F0(v7, v6, v27);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "ARQL_Thumbnail init ThumbnailProvider v%s shared", v11, 0xCu);
    sub_100005998(v12);
  }

  else
  {
  }

  v14 = [objc_allocWithZone(type metadata accessor for USDRealityThumbnailProvider()) init];
  *&v1[OBJC_IVAR____TtC17ASVAssetThumbnail17ThumbnailProvider_usdRealityProvider] = v14;
  v15 = type metadata accessor for ObjectCaptureThumbnailProvider();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider_maximumNumberOfStackedImages] = 3;
  v17 = &v16[OBJC_IVAR____TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider_modelsDirectoryName];
  *v17 = 0x736C65646F6DLL;
  *(v17 + 1) = 0xE600000000000000;
  v18 = &v16[OBJC_IVAR____TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider_imageDirectoryName];
  *v18 = 0x736567616D69;
  *(v18 + 1) = 0xE600000000000000;
  *&v16[OBJC_IVAR____TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider_usdRealityProvider] = v14;
  v24.receiver = v16;
  v24.super_class = v15;
  v19 = v14;
  *&v1[OBJC_IVAR____TtC17ASVAssetThumbnail17ThumbnailProvider_objectCaptureProvider] = objc_msgSendSuper2(&v24, "init");
  v23.receiver = v1;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, "init");
}

void sub_10000B630(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = sub_10000BE6C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = [a1 fileURL];
  sub_10000BE3C();

  v14 = sub_10000BDFC();
  v16 = v15;
  v17 = *(v7 + 8);
  v17(v12, v6);
  if (v14 == 0x7061636A626FLL && v16 == 0xE600000000000000)
  {
  }

  else
  {
    v19 = sub_10000C18C();

    if ((v19 & 1) == 0)
    {
      if (qword_1000146A0 != -1)
      {
        swift_once();
      }

      v20 = sub_10000C01C();
      sub_100004D60(v20, qword_100014820);
      v21 = sub_10000BFFC();
      v22 = sub_10000C10C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Generating thumbnail for USDZ or Reality file", v23, 2u);
      }

      v24 = [a1 fileURL];
      sub_10000BE3C();

      sub_100001F64(v10, a1, v31, v32);
      v17(v10, v6);
      return;
    }
  }

  if (qword_1000146A0 != -1)
  {
    swift_once();
  }

  v25 = sub_10000C01C();
  sub_100004D60(v25, qword_100014820);
  v26 = sub_10000BFFC();
  v27 = sub_10000C10C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Generating thumbnail for Object Capture file", v28, 2u);
  }

  v29 = *(v4 + OBJC_IVAR____TtC17ASVAssetThumbnail17ThumbnailProvider_objectCaptureProvider);
  aBlock[4] = v31;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BA10;
  aBlock[3] = &unk_100010CA8;
  v30 = _Block_copy(aBlock);

  [v29 provideThumbnailForFileRequest:a1 completionHandler:v30];
  _Block_release(v30);
}

void sub_10000BA10(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_10000BB3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1000146A0 != -1)
  {
    swift_once();
  }

  v3 = sub_10000C01C();
  sub_100004D60(v3, qword_100014820);
  v4 = sub_10000BFFC();
  v5 = sub_10000C10C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "ARQL_Thumbnail deinit ThumbnailProvider shared", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_10000BCE0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BD18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000BD30(uint64_t a1)
{
  v2 = sub_100005A40(&qword_100014720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}