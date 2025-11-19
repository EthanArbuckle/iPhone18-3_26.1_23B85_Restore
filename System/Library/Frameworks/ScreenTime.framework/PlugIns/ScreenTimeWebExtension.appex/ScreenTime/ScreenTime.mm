void sub_100001EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001ED8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained webpageUsage];
  v5 = [v3 URL];

  if (v5)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _requestPolicyForURL:v5 replyHandler:0];
  }
}

void sub_100002110(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100005F9C(v2);
  }
}

id sub_1000022BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 64) + 16))();
  }

  else
  {
    return [*(a1 + 32) _startRecordingUsageForURL:*(a1 + 40) bundleIdentifier:*(a1 + 48) profileIdentifier:*(a1 + 56) usageState:*(a1 + 72) replyHandler:*(a1 + 64)];
  }
}

id sub_100002554(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _requestPolicyForURL:*(a1 + 40) replyHandler:*(a1 + 48)];
  }
}

void sub_1000026BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*(a1 + 32)];
    v8 = [v7 integerValue];

    v9 = *(a1 + 48) == 0;
    v10 = +[NSOperationQueue mainQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002840;
    v14[3] = &unk_10000C508;
    v18 = v8 != 0;
    v13 = *(a1 + 32);
    v11 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    v17 = v8;
    v19 = v9;
    v16 = *(a1 + 48);
    [v10 addOperationWithBlock:v14];
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v6);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000601C(a1, v6);
    }
  }
}

void sub_100002840(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  [v3 setOpaque:*(a1 + 64)];
  [v3 setUserInteractionEnabled:*(a1 + 64)];
  v2 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    [v2 _showBlockingViewControllerForWebpage:*(a1 + 40) withPolicy:*(a1 + 56) animated:*(a1 + 65) replyHandler:*(a1 + 48)];
  }

  else
  {
    [v2 _hideBlockingViewControllerWithAnimation:*(a1 + 65) replyHandler:*(a1 + 48)];
  }

  [*(a1 + 32) _incrementPolicyRequestCountAndReportURLIsBlocked:*(a1 + 64)];
}

void sub_100002994(uint64_t a1, char a2)
{
  v4 = +[NSOperationQueue mainQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002A40;
  v5[3] = &unk_10000C558;
  v6 = a2;
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 addOperationWithBlock:v5];
}

id sub_100002A40(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = arc4random_uniform(0x3Cu) + 1.0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 41);

    return [v3 _reportURLIsBlocked:v4 withDelay:v2];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 41);

    return [v5 _reportURLIsBlocked:v6];
  }
}

void sub_100002BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002BF8(uint64_t a1, void *a2)
{
  [a2 invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReportURLIsBlockedTimer:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _reportURLIsBlocked:*(a1 + 40)];
}

void sub_100002CC8(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100006120(a2);
  }
}

void sub_100002D50(id a1)
{
  qword_100010DD0 = [[_TtC22ScreenTimeWebExtension19STURLRequestLimiter alloc] initWithRate:10 rateInterval:1.0];

  _objc_release_x1();
}

id sub_100003004(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _requestPolicyForCurrentURLWithReplyHandler:v3];
}

id sub_10000314C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _requestPolicyForCurrentURLWithReplyHandler:v4];
}

id STURLRequestLimiter.__allocating_init(rate:rateInterval:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_100003510();
  v7 = objc_allocWithZone(v2);
  type metadata accessor for URLRequestLimiter();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 144) = &_swiftEmptyDictionarySingleton;
  *(v8 + 152) = &_swiftEmptyDictionarySingleton;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  *(v8 + 128) = v6;
  *(v8 + 136) = &off_10000C720;
  *&v7[OBJC_IVAR____TtC22ScreenTimeWebExtension19STURLRequestLimiter_limiter] = v8;
  v11.receiver = v7;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id STURLRequestLimiter.init(rate:rateInterval:)(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100003510();
  v6 = objc_allocWithZone(ObjectType);
  type metadata accessor for URLRequestLimiter();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 144) = &_swiftEmptyDictionarySingleton;
  *(v7 + 152) = &_swiftEmptyDictionarySingleton;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  *(v7 + 128) = v5;
  *(v7 + 136) = &off_10000C720;
  *&v6[OBJC_IVAR____TtC22ScreenTimeWebExtension19STURLRequestLimiter_limiter] = v7;
  v10.receiver = v6;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

unint64_t sub_100003510()
{
  result = qword_100010CB0;
  if (!qword_100010CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010CB0);
  }

  return result;
}

uint64_t STURLRequestLimiter.incrementRequestCount(forBundleIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*(sub_1000037A0(&qword_100010CC0, &qword_100007560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = sub_100006244();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;

  sub_100003E84(0, 0, v11, &unk_100007570, v13);
}

uint64_t sub_1000037A0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000037E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100003810, 0, 0);
}

uint64_t sub_100003810()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22ScreenTimeWebExtension19STURLRequestLimiter_limiter);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_10000383C, v1, 0);
}

uint64_t sub_10000383C()
{
  v1 = *(v0 + 56);
  *(v0 + 64) = sub_1000039D8(*(v0 + 24), *(v0 + 32));

  return _swift_task_switch(sub_1000038B0, 0, 0);
}

uint64_t sub_1000038B0()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(*(v0 + 64));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000391C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100005F98;

  return sub_1000037E8(v7, v8, v9, v2, v3, v4, v5, v6);
}

BOOL sub_1000039D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(sub_1000037A0(&qword_100010DB8, &qword_100007698) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - v11;
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = sub_1000061D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v53 = &v52 - v21;
  swift_beginAccess();
  v22 = a2;
  v23 = *(v3 + 152);
  v24 = *(v23 + 16);
  v54 = a1;
  v55 = v22;
  if (v24 && (v25 = sub_100004C9C(a1, v22), (v26 & 1) != 0))
  {
    (*(v16 + 16))(v14, *(v23 + 56) + *(v16 + 72) * v25, v15);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(v16 + 56);
  v28(v14, v27, 1, v15);
  sub_100004D14(v14, v12);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    v29 = v53;
    sub_1000061C4();
    sub_100004D84(v12, &qword_100010DB8, &qword_100007698);
  }

  else
  {
    v29 = v53;
    (*(v16 + 32))(v53, v12, v15);
  }

  swift_endAccess();
  swift_beginAccess();
  v30 = *(v3 + 144);
  if (*(v30 + 16) && (v31 = sub_100004C9C(v54, v55), (v32 & 1) != 0))
  {
    v33 = (*(v30 + 56) + 8 * v31);
  }

  else
  {
    v33 = (v3 + 112);
  }

  v34 = *v33;
  swift_endAccess();
  sub_1000061C4();
  sub_1000061B4();
  v36 = v35;
  (*(v16 + 16))(v9, v20, v15);
  v28(v9, 0, 1, v15);
  swift_beginAccess();
  v37 = v55;

  v38 = v54;
  sub_1000043B8(v9, v54, v37);
  swift_endAccess();
  v39 = *(v3 + 112);
  if (v39 >= v34 + v36 * (v39 / *(v3 + 120)))
  {
    v40 = v34 + v36 * (v39 / *(v3 + 120));
  }

  else
  {
    v40 = *(v3 + 112);
  }

  if (v40 >= 1.0)
  {
    v47 = v40 + -1.0;
  }

  else
  {
    v41 = objc_allocWithZone(STWebBrowserRateLimitedCoreAnalyticsEvent);
    v42 = sub_1000061E4();
    v43 = [v41 initWithBundleIdentifier:v42];

    v44 = *(v3 + 128);
    v45 = *(*(v3 + 136) + 8);
    v46 = v43;
    v45();
    v38 = v54;
    v37 = v55;

    v29 = v53;
    v47 = v40;
  }

  swift_beginAccess();
  v48 = *(v3 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v3 + 144);
  *(v3 + 144) = 0x8000000000000000;
  sub_100005764(v38, v37, isUniquelyReferenced_nonNull_native, v47);
  *(v3 + 144) = v56;
  swift_endAccess();
  v50 = *(v16 + 8);
  v50(v20, v15);
  v50(v29, v15);
  return v40 < 1.0;
}

uint64_t sub_100003E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000037A0(&qword_100010CC0, &qword_100007560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100004894(a3, v26 - v10);
  v12 = sub_100006244();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004D84(v11, &qword_100010CC0, &qword_100007560);
  }

  else
  {
    sub_100006234();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100006224();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100006204() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100004D84(a3, &qword_100010CC0, &qword_100007560);

      return v24;
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

  sub_100004D84(a3, &qword_100010CC0, &qword_100007560);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id STURLRequestLimiter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STURLRequestLimiter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000043B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(sub_1000037A0(&qword_100010DB8, &qword_100007698) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_1000061D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100004D84(a1, &qword_100010DB8, &qword_100007698);
    sub_100004DE4(a2, a3, v9);

    return sub_100004D84(v9, &qword_100010DB8, &qword_100007698);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1000058C0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_100004590()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 152);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_1000045DC(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata reportEvent:a1];
}

uint64_t sub_100004644()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004694()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000046E4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000047A0;

  return sub_1000037E8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1000047A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000037A0(&qword_100010CC0, &qword_100007560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004904(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000049FC;

  return v7(a1);
}

uint64_t sub_1000049FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004AF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004B2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005F98;

  return sub_100004904(a1, v5);
}

uint64_t sub_100004BE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000047A0;

  return sub_100004904(a1, v5);
}

unint64_t sub_100004C9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000062A4();
  sub_100006214();
  v6 = sub_1000062B4();

  return sub_100005AF0(a1, a2, v6);
}

uint64_t sub_100004D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000037A0(&qword_100010DB8, &qword_100007698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004D84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000037A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100004C9C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100005D10();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1000061D4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_100005578(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1000061D4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100004F54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000037A0(&qword_100010DC0, &qword_1000076A0);
  v37 = a2;
  result = sub_100006274();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1000062A4();
      sub_100006214();
      result = sub_1000062B4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000051F8(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1000061D4();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1000037A0(&qword_100010DC8, qword_1000076A8);
  v46 = a2;
  result = sub_100006274();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_1000062A4();
      sub_100006214();
      result = sub_1000062B4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_100005578(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100006254() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1000062A4();

      sub_100006214();
      v13 = sub_1000062B4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1000061D4() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100005764(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100004C9C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_100004F54(v16, a3 & 1);
      v20 = *v5;
      result = sub_100004C9C(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_100006294();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100005BA8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1000058C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100004C9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100005D10();
      goto LABEL_7;
    }

    sub_1000051F8(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_100004C9C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_100006294();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1000061D4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100005A40(v12, a2, a3, a1, v18);
}

uint64_t sub_100005A40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1000061D4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_100005AF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006284())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100005BA8()
{
  v1 = v0;
  sub_1000037A0(&qword_100010DC0, &qword_1000076A0);
  v2 = *v0;
  v3 = sub_100006264();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_100005D10()
{
  v1 = v0;
  v36 = sub_1000061D4();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin();
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000037A0(&qword_100010DC8, qword_1000076A8);
  v4 = *v0;
  v5 = sub_100006264();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_100005F9C(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to stop recording usage: %{public}@", &v1, 0xCu);
}

void sub_10000601C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = 138543618;
  v4 = v2;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to fetch policies for %{public}@: %{public}@", &v3, 0x16u);
}

void sub_1000060AC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STWebServiceViewController.m" lineNumber:287 description:@"-_reportURLIsBlocked:withDelay: must be called on the main thread"];
}

void sub_100006120(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to get remote view controller proxy: %{public}@", &v1, 0xCu);
}