uint64_t sub_10006A070()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

void sub_10006A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v21 = a1;
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(v12, v21, v8);
    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v4);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = (v10 + *(v5 + 80) + v15) & ~*(v5 + 80);
    v17 = swift_allocObject();
    v18 = v23;
    *(v17 + 16) = v14;
    *(v17 + 24) = v18;
    (*(v9 + 32))(v17 + v15, v12, v8);
    (*(v5 + 32))(v17 + v16, v7, v4);

    v19 = v20;
    sub_100053084(1, sub_10006E2B0, v17);
  }
}

void sub_10006A360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a2;
  v22 = type metadata accessor for URLComponents();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    v20 = Strong;
    if (Strong)
    {
      v19 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      (*(v8 + 16))(v11, a3, v7);
      v13 = v21;
      v14 = v22;
      (*(v5 + 16))(v21, v23, v22);
      v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v16 = (v9 + *(v5 + 80) + v15) & ~*(v5 + 80);
      v17 = swift_allocObject();
      (*(v8 + 32))(v17 + v15, v11, v7);
      (*(v5 + 32))(v17 + v16, v13, v14);
      *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

      v18 = v20;
      DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)();
    }
  }
}

uint64_t sub_10006A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[1] = a4;
  v45[2] = a3;
  v45[3] = a2;
  Name = type metadata accessor for DeepLinkComponents.QueryName();
  v6 = *(Name - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(Name);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000DB4C(&qword_100094418, &unk_100074A70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v45 - v12;
  v14 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v45 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23;
  sub_100034850(a1, v17, &qword_100093F50, &qword_100074090);
  if ((*(v19 + 48))(v17, 1, v24) == 1)
  {
    sub_100005A04(v17, &qword_100093F50, &qword_100074090);
    v25 = type metadata accessor for DeepLinkComponents.DeepLinkError();
    sub_10006DDD8();
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, enum case for DeepLinkComponents.DeepLinkError.noURLForNamedLocation(_:), v25);
    v46[0] = v26;
    sub_10000DB4C(&qword_100094438, &unk_100074AB8);
    return CheckedContinuation.resume(throwing:)();
  }

  v29 = *(v19 + 32);
  v45[0] = v22;
  v29(v22, v17, v24);
  (*(v6 + 104))(v9, enum case for DeepLinkComponents.QueryName.filenames(_:), Name);
  v30 = URLComponents.queryItems.getter();
  if (v30)
  {
    v31 = v30;
    __chkstk_darwin(v30);
    v45[-2] = v9;
    sub_1000693EC(sub_10006E4E0, v31, v13);
  }

  else
  {
    v32 = type metadata accessor for URLQueryItem();
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
  }

  (*(v6 + 8))(v9, Name);
  v33 = type metadata accessor for URLQueryItem();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v13, 1, v33) == 1)
  {
    sub_100005A04(v13, &qword_100094418, &unk_100074A70);
LABEL_14:
    v42 = type metadata accessor for DeepLinkComponents.DeepLinkError();
    sub_10006DDD8();
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, enum case for DeepLinkComponents.DeepLinkError.noFilenamesForNamedLocation(_:), v42);
    v46[0] = v43;
    sub_10000DB4C(&qword_100094438, &unk_100074AB8);
    CheckedContinuation.resume(throwing:)();
    return (*(v19 + 8))(v45[0], v24);
  }

  v35 = URLQueryItem.value.getter();
  v37 = v36;
  v38 = (*(v34 + 8))(v13, v33);
  if (!v37)
  {
    goto LABEL_14;
  }

  v46[0] = 44;
  v46[1] = 0xE100000000000000;
  __chkstk_darwin(v38);
  v45[-2] = v46;
  v39 = sub_10006C750(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000062A0, &v45[-4], v35, v37, v45);
  __chkstk_darwin(v39);
  v40 = v45[0];
  v45[-2] = v45[0];
  v41 = sub_1000695C0(sub_10006E498, &v45[-4], v39);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10003BDC8(v41);
      swift_unknownObjectRelease();
    }
  }

  sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  CheckedContinuation.resume(returning:)();
  return (*(v19 + 8))(v40, v24);
}

uint64_t sub_10006ACC8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  static String._fromSubstring(_:)();
  URL.appendingPathComponent(_:)();
}

void sub_10006AD20(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = sub_10000DB4C(&qword_100094430, &qword_100074AB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (aBlock - v10);
  if (a1)
  {
    v12 = objc_opt_self();
    v13 = a1;
    v14 = [v12 defaultManager];
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = a3;
    v15[4] = a4;
    aBlock[4] = sub_10006E0B0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008F9A8;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    [v14 fetchURLForItem:v17 completionHandler:v16];
    _Block_release(v16);
  }

  else
  {
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v19 = type metadata accessor for DeepLinkComponents.DeepLinkError();
      sub_10006DDD8();
      v18 = swift_allocError();
      (*(*(v19 - 8) + 104))(v20, enum case for DeepLinkComponents.DeepLinkError.generic(_:), v19);
    }

    *v11 = v18;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v11);
    sub_100005A04(v11, &qword_100094430, &qword_100074AB0);
  }
}

uint64_t sub_10006AF70(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v49 = a5;
  v50 = a4;
  v43 = a3;
  v44 = a2;
  v47 = sub_10000DB4C(&qword_100094430, &qword_100074AB0);
  v6 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v48 = (&v43 - v7);
  v8 = type metadata accessor for Logger();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v43 - v21;
  sub_100034850(a1, v15, &qword_100093F50, &qword_100074090);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100005A04(v15, &qword_100093F50, &qword_100074090);
    static Logger.Application.getter();
    v23 = v43;
    v24 = v44;
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v27 = 136315650;
      *(v27 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100076670, &v52);
      *(v27 + 12) = 2112;
      *(v27 + 14) = v23;
      *v28 = v23;
      *(v27 + 22) = 2080;
      v51 = v24;
      v29 = v23;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v30 = String.init<A>(describing:)();
      v32 = sub_100005D28(v30, v31, &v52);

      *(v27 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s: Failed to fetch URL for: %@ error: %s", v27, 0x20u);
      sub_100005A04(v28, &qword_1000937D0, &unk_1000743F0);

      swift_arrayDestroy();
    }

    (*(v45 + 8))(v11, v46);
    v33 = v50;
    v34 = v24;
    if (!v24)
    {
      v35 = type metadata accessor for DeepLinkComponents.DeepLinkError();
      sub_10006DDD8();
      v34 = swift_allocError();
      (*(*(v35 - 8) + 104))(v36, enum case for DeepLinkComponents.DeepLinkError.generic(_:), v35);
    }

    v37 = v48;
    *v48 = v34;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v33(v37);
    return sub_100005A04(v37, &qword_100094430, &qword_100074AB0);
  }

  else
  {
    v39 = *(v17 + 32);
    v39(v22, v15, v16);
    (*(v17 + 16))(v20, v22, v16);
    v40 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v41 = swift_allocObject();
    v42 = v49;
    *(v41 + 16) = v50;
    *(v41 + 24) = v42;
    v39((v41 + v40), v20, v16);

    DOCRunInMainThread(_:)();

    return (*(v17 + 8))(v22, v16);
  }
}

uint64_t sub_10006B504(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_10000DB4C(&qword_100094430, &qword_100074AB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_100005A04(v8, &qword_100094430, &qword_100074AB0);
}

uint64_t sub_10006B60C(uint64_t a1, void *a2)
{
  v3 = v2;
  Name = type metadata accessor for DeepLinkComponents.QueryName();
  v7 = *(Name - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(Name);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000DB4C(&qword_100094418, &unk_100074A70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26[-v13];
  (*(v7 + 104))(v10, enum case for DeepLinkComponents.QueryName.scan(_:), Name);
  v15 = URLComponents.queryItems.getter();
  if (v15)
  {
    v16 = v15;
    __chkstk_darwin(v15);
    *&v26[-16] = v10;
    sub_1000693EC(sub_10006DDAC, v16, v14);
  }

  else
  {
    v17 = type metadata accessor for URLQueryItem();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  }

  (*(v7 + 8))(v10, Name);
  v18 = type metadata accessor for URLQueryItem();
  v19 = (*(*(v18 - 8) + 48))(v14, 1, v18);
  sub_100005A04(v14, &qword_100094418, &unk_100074A70);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    v22 = v21;
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  v24 = sub_10006CD08(a1, a2, v3, v19 != 1, v21);

  return v24 & 1;
}

void sub_10006B8C8(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    *(swift_allocObject() + 16) = a3;
    v4 = a3;
    DOCRunInMainThread(_:)();
  }
}

void sub_10006B940(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_10005D364(1, 0, 0, v1, v1);
  }
}

uint64_t sub_10006B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v8[4] = type metadata accessor for MainActor();
  v8[5] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v8[6] = v11;
  *v11 = v8;
  v11[1] = sub_10006BA60;

  return sub_100069CC8(a5, a6);
}

uint64_t sub_10006BA60()
{
  v2 = v0;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v10 = *v1;
  *(*v1 + 56) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10006BC2C;
  }

  else
  {
    v8 = sub_10006BBBC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10006BBBC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v2(0);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10006BC2C()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  swift_errorRetain();
  v4(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000DB4C(&qword_100094420, &qword_100074A80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100034850(a3, v27 - v11, &qword_100094420, &qword_100074A80);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005A04(v12, &qword_100094420, &qword_100074A80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100005A04(a3, &qword_100094420, &qword_100074A80);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005A04(a3, &qword_100094420, &qword_100074A80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10006BFC0(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v54 = a6;
  v55 = a7;
  v52 = a4;
  v53 = a5;
  LODWORD(v49) = a3;
  v51 = a2;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v16 = sub_10000DB4C(&qword_100094430, &qword_100074AB0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v44 - v18);
  sub_100034850(a1, &v44 - v18, &qword_100094430, &qword_100074AB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    swift_errorRetain();
    v55(v20);
  }

  v48 = a8;
  v22 = *(v11 + 32);
  v22(v15, v19, v10);
  v23 = v51;
  Strong = swift_unknownObjectWeakLoadStrong();
  v25 = v10;
  if (Strong)
  {
    if (v49)
    {
      v26 = *(v11 + 16);
      v49 = Strong;
      v26(v50, v15, v10);
      v27 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v46 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = v10;
      v45 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = v23;
      v22((v29 + v27), v50, v25);
      v30 = v15;
      v31 = v52;
      v32 = v53;
      v33 = v45;
      *(v29 + v46) = v52;
      *(v29 + v33) = v32;
      v34 = v55;
      *(v29 + v28) = v54;
      v35 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
      v36 = v48;
      *v35 = v34;
      v35[1] = v36;

      v37 = v31;

      v38 = v49;
      static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)();

      return (*(v11 + 8))(v30, v47);
    }
  }

  v39 = [v52 options];
  v40 = v53;
  swift_beginAccess();
  v41 = *(v40 + 16);
  v42 = v54;
  swift_beginAccess();
  v43 = *(v42 + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10003A72C(v15, v39, 0, v41, v43);
    swift_unknownObjectRelease();
  }

  v55(0);
  return (*(v11 + 8))(v15, v25);
}

uint64_t sub_10006C398(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v27 = a4;
  HIDWORD(v26) = a1;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = BYTE4(v26);
  *(v18 + 24) = a2;
  (*(v11 + 32))(v18 + v14, v13, v10);
  v20 = v27;
  v19 = v28;
  *(v18 + v15) = v27;
  *(v18 + v16) = v19;
  v21 = v30;
  *(v18 + v17) = v29;
  v22 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v31;
  *v22 = v21;
  v22[1] = v23;

  v24 = v20;

  DOCRunInMainThread(_:)();
}

uint64_t sub_10006C564(char a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, id))
{
  if ((a1 & 1) == 0)
  {
    v11 = [a4 options];
    swift_beginAccess();
    v12 = *(a5 + 16);
    swift_beginAccess();
    v13 = *(a6 + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10003A72C(a3, v11, 0, v12, v13);
      swift_unknownObjectRelease();
    }
  }

  return a7(0, a2, a3, a4);
}

uint64_t sub_10006C650()
{
  v0 = URLQueryItem.name.getter();
  v2 = v1;
  if (v0 == DeepLinkComponents.QueryName.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_10006C6EC()
{
  swift_unknownObjectWeakDestroy();
  sub_10006E4B8(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_10006C750@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100047C94(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100047C94((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100047C94(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100047C94(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100047C94((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

size_t sub_10006CB10(size_t a1, int64_t a2, char a3)
{
  result = sub_10006CB30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10006CB30(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10000DB4C(&unk_100093C40, "&+");
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

uint64_t sub_10006CD08(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v140 = a3;
  v126 = a2;
  v153 = a1;
  v150 = 0;
  v7 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v136 = &v120 - v9;
  v10 = type metadata accessor for URL();
  v137 = *(v10 - 8);
  v138 = v10;
  v11 = *(v137 + 64);
  __chkstk_darwin(v10);
  v124 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for DeepLinkComponents.Scheme();
  v130 = *(v132 - 8);
  v13 = *(v130 + 64);
  __chkstk_darwin(v132);
  v129 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for URLComponents();
  v148 = *(v152 - 8);
  v15 = *(v148 + 64);
  v16 = __chkstk_darwin(v152);
  v139 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v17;
  __chkstk_darwin(v16);
  v145 = &v120 - v18;
  v19 = sub_10000DB4C(&qword_100094420, &qword_100074A80);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v144 = &v120 - v21;
  Name = type metadata accessor for DeepLinkComponents.QueryName();
  v23 = *(Name - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(Name);
  v135 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v134 = &v120 - v28;
  v29 = __chkstk_darwin(v27);
  v128 = &v120 - v30;
  __chkstk_darwin(v29);
  v32 = &v120 - v31;
  v33 = sub_10000DB4C(&qword_100094418, &unk_100074A70);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v123 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v133 = &v120 - v38;
  v39 = __chkstk_darwin(v37);
  v127 = &v120 - v40;
  __chkstk_darwin(v39);
  v42 = &v120 - v41;
  v43 = type metadata accessor for URLQueryItem();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v120 = &v120 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v46);
  v142 = &v120 - v48;
  __chkstk_darwin(v47);
  v143 = &v120 - v49;
  v50 = swift_allocObject();
  v125 = a4;
  *(v50 + 16) = a4;
  v149 = v50;
  *(v50 + 24) = a5;
  v51 = v23[13];
  v151 = Name;
  v141 = v51;
  v51(v32, enum case for DeepLinkComponents.QueryName.location(_:), Name);
  v122 = a5;
  v121 = a5;
  v52 = URLComponents.queryItems.getter();
  if (v52)
  {
    v53 = v52;
    __chkstk_darwin(v52);
    *(&v120 - 2) = v32;
    v54 = v150;
    sub_1000693EC(sub_10006E4E0, v53, v42);
    v150 = v54;
  }

  else
  {
    (*(v44 + 56))(v42, 1, 1, v43);
  }

  v55 = v44;
  v56 = v151;
  v146 = v23[1];
  v147 = v23 + 1;
  v146(v32, v151);
  v57 = *(v44 + 48);
  if (v57(v42, 1, v43) != 1)
  {
    v151 = *(v44 + 32);
    v69 = v143;
    v151(v143, v42, v43);
    v70 = type metadata accessor for TaskPriority();
    (*(*(v70 - 8) + 56))(v144, 1, 1, v70);
    (*(v44 + 16))(v142, v69, v43);
    v71 = v148;
    (*(v148 + 16))(v145, v153, v152);
    type metadata accessor for MainActor();
    v72 = v55;
    v73 = v140;

    v74 = static MainActor.shared.getter();
    v75 = (*(v72 + 80) + 40) & ~*(v72 + 80);
    v76 = (v45 + *(v71 + 80) + v75) & ~*(v71 + 80);
    v77 = (v131 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    *(v78 + 2) = v74;
    *(v78 + 3) = &protocol witness table for MainActor;
    *(v78 + 4) = v73;
    v79 = 1;
    v151(&v78[v75], v142, v43);
    (*(v71 + 32))(&v78[v76], v145, v152);
    v80 = &v78[v77];
    v81 = v149;
    *v80 = sub_10006DDCC;
    v80[1] = v81;
    sub_10006BCC0(0, 0, v144, &unk_100074A90, v78);

    (*(v72 + 8))(v143, v43);
    v153 = v81;
    goto LABEL_33;
  }

  v144 = v44;
  v145 = v57;
  v143 = v43;
  sub_100005A04(v42, &qword_100094418, &unk_100074A70);
  v58 = v139;
  (*(v148 + 16))(v139, v153, v152);
  v59 = v130;
  v60 = v129;
  v61 = v132;
  (*(v130 + 104))(v129, enum case for DeepLinkComponents.Scheme.file(_:), v132);
  DeepLinkComponents.Scheme.rawValue.getter();
  (*(v59 + 8))(v60, v61);
  URLComponents.scheme.setter();
  v62 = v128;
  v63 = v141;
  v141(v128, enum case for DeepLinkComponents.QueryName.open(_:), v56);
  v64 = URLComponents.queryItems.getter();
  if (v64)
  {
    v65 = v64;
    __chkstk_darwin(v64);
    *(&v120 - 2) = v62;
    v66 = v127;
    sub_1000693EC(sub_10006E4E0, v65, v127);

    v67 = v62;
    v68 = v143;
  }

  else
  {
    v66 = v127;
    v67 = v62;
    v68 = v143;
    (*(v144 + 56))(v127, 1, 1, v143);
  }

  v82 = v135;
  v146(v67, v56);
  v83 = (v145)(v66, 1, v68);
  sub_100005A04(v66, &qword_100094418, &unk_100074A70);
  LODWORD(v143) = v83;
  if (v83 != 1)
  {
    URLComponents.queryItems.setter();
  }

  v150 = swift_allocObject();
  *(v150 + 16) = 1;
  v153 = swift_allocObject();
  *(v153 + 16) = 1;
  v84 = v134;
  v85 = v151;
  v63(v134, enum case for DeepLinkComponents.QueryName.reveal(_:), v151);
  v86 = URLComponents.queryItems.getter();
  if (v86)
  {
    v87 = v86;
    __chkstk_darwin(v86);
    *(&v120 - 2) = v84;
    v88 = v133;
    sub_1000693EC(sub_10006E4E0, v87, v133);
    v89 = v88;
    v63 = v141;

    v85 = v151;
  }

  else
  {
    v89 = v133;
    (*(v144 + 56))(v133, 1, 1, v68);
  }

  v146(v84, v85);
  v90 = v145;
  v91 = (v145)(v89, 1, v68);
  v92 = v89;
  v93 = v91;
  sub_100005A04(v92, &qword_100094418, &unk_100074A70);
  if (v93 != 1)
  {
    *(v150 + 16) = 0;
    v63(v82, enum case for DeepLinkComponents.QueryName.showcontents(_:), v85);
    v94 = URLComponents.queryItems.getter();
    if (v94)
    {
      v95 = v94;
      __chkstk_darwin(v94);
      *(&v120 - 2) = v82;
      v96 = v123;
      sub_1000693EC(sub_10006E4E0, v95, v123);

      v85 = v151;
      v97 = v144;
    }

    else
    {
      v97 = v144;
      v96 = v123;
      (*(v144 + 56))(v123, 1, 1, v68);
    }

    v146(v82, v85);
    if ((v90)(v96, 1, v68) == 1)
    {
      sub_100005A04(v96, &qword_100094418, &unk_100074A70);
    }

    else
    {
      v98 = v120;
      (*(v97 + 32))(v120, v96, v68);
      v99 = URLQueryItem.value.getter();
      if (v100)
      {
        if (v99 == 0x65736C6166 && v100 == 0xE500000000000000)
        {

          (*(v144 + 8))(v98, v68);
        }

        else
        {
          v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v144 + 8))(v98, v68);
          if ((v101 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        *(v153 + 16) = 0;
        goto LABEL_27;
      }

      (*(v97 + 8))(v98, v68);
    }

LABEL_27:
    URLComponents.queryItems.setter();
  }

  v102 = v136;
  URLComponents.url.getter();
  v104 = v137;
  v103 = v138;
  if ((*(v137 + 48))(v102, 1, v138) == 1)
  {
    sub_100005A04(v102, &qword_100093F50, &qword_100074090);
    v105 = type metadata accessor for DeepLinkComponents.DeepLinkError();
    sub_10006DDD8();
    swift_allocError();
    (*(*(v105 - 8) + 104))(v106, enum case for DeepLinkComponents.DeepLinkError.noURLToReveal(_:), v105);
    if (v125)
    {
      *(swift_allocObject() + 16) = v122;
      v107 = v121;
      DOCRunInMainThread(_:)();
    }

    (*(v148 + 8))(v58, v152);

    v79 = 0;
  }

  else
  {
    v108 = v143 != 1;
    v109 = v124;
    (*(v104 + 32))(v124, v102, v103);
    v110 = swift_allocObject();
    *(v110 + 16) = v140;
    *(v110 + 24) = v108;
    v111 = v126;
    v112 = v153;
    v113 = v149;
    v114 = v150;
    *(v110 + 32) = v126;
    *(v110 + 40) = v114;
    *(v110 + 48) = v112;
    *(v110 + 56) = sub_10006DDCC;
    *(v110 + 64) = v113;
    v115 = objc_opt_self();

    v116 = v111;

    v117 = [v115 defaultManager];
    v118 = swift_allocObject();
    *(v118 + 16) = sub_10006DE38;
    *(v118 + 24) = v110;

    FPItemManager.doc_fetchItem(for:completionHandler:)();

    (*(v104 + 8))(v109, v103);
    (*(v148 + 8))(v139, v152);

    v79 = 1;
  }

LABEL_33:

  return v79;
}

unint64_t sub_10006DDD8()
{
  result = qword_100094428;
  if (!qword_100094428)
  {
    type metadata accessor for DeepLinkComponents.DeepLinkError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094428);
  }

  return result;
}

uint64_t sub_10006DE58(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URLQueryItem() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URLComponents() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10005DD38;

  return sub_10006B998(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t sub_10006DFF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005DD38;

  return sub_10000B0A0(a1, v5);
}

uint64_t sub_10006E0BC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10006B504(v2, v3, v4);
}

uint64_t sub_10006E120(int a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_10006C398(a1, v11, v1 + v4, v8, v9, v10, v13, v14);
}

uint64_t sub_10006E1E8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + 24);
  v11 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_10006C564(v6, v10, v0 + v2, v7, v8, v9, v12);
}

void sub_10006E2B0()
{
  v1 = *(sub_10000DB4C(&qword_100094438, &unk_100074AB8) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URLComponents() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10006A360(v5, v6, v0 + v2, v7);
}

uint64_t sub_10006E38C(uint64_t a1)
{
  v3 = *(sub_10000DB4C(&qword_100094438, &unk_100074AB8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URLComponents() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10006A648(a1, v1 + v4, v1 + v7, v8);
}

void sub_10006E500(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v49 - v8;
  v10 = static DOCLog.UI.getter();
  static os_log_type_t.debug.getter();
  v51 = sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v11 = swift_allocObject();
  v49 = xmmword_1000736D0;
  *(v11 + 16) = xmmword_1000736D0;
  v12 = 0x80000001000768B0;
  *(v11 + 56) = &type metadata for String;
  v52 = sub_1000061E8();
  *(v11 + 64) = v52;
  *(v11 + 32) = 0xD00000000000001ALL;
  *(v11 + 40) = 0x80000001000768B0;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  *(v11 + 96) = sub_100070698();
  *(v11 + 104) = sub_1000706E4();
  *(v11 + 72) = v15;
  v16 = v3;
  v17 = v50;
  os_log(_:dso:log:type:_:)();

  (*(v16 + 16))(v7, a1, v2);
  v18 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  sub_1000482AC(v9, v7);
  (*(v16 + 8))(v9, v2);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v20 = Strong;
  v21 = static DOCLog.UI.getter();
  static os_log_type_t.debug.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v49;
  v23 = v52;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = v23;
  *(v22 + 32) = 0xD00000000000001ALL;
  *(v22 + 40) = 0x80000001000768B0;
  v24 = *(*&v17[v18] + 16);
  *(v22 + 96) = &type metadata for Int;
  *(v22 + 104) = &protocol witness table for Int;
  *(v22 + 72) = v24;
  os_log(_:dso:log:type:_:)();

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = v25;
  v27 = *&v17[v18];
  v17 = *(v27 + 16);
  if (!v17)
  {
    v45 = v20;
    goto LABEL_10;
  }

  v12 = sub_10006FFE4(*(v27 + 16), 0);
  v28 = sub_1000700E0(aBlock, &v12[(*(v16 + 80) + 32) & ~*(v16 + 80)], v17, v27);
  v51 = v54;
  v52 = v28;
  v29 = v20;

  sub_100052240();
  if (v52 == v17)
  {
LABEL_10:
    v46 = objc_allocWithZone(DOCPickerContext);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v48 = [v46 initWithURLs:isa];

    [v26 setPickerContext:v48];
    v20 = v48;
    goto LABEL_11;
  }

  __break(1u);
LABEL_6:
  v30 = OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer;
  v31 = *&v17[OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer];
  if (v31)
  {
    v32 = v31;
    v33 = static DOCLog.UI.getter();
    static os_log_type_t.debug.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100073FE0;
    v35 = v52;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v35;
    *(v34 + 32) = 0xD00000000000001ALL;
    *(v34 + 40) = v12;
    os_log(_:dso:log:type:_:)();

    [v32 invalidate];

    v36 = *&v17[v30];
    *&v17[v30] = 0;
  }

  v37 = static DOCLog.UI.getter();
  static os_log_type_t.debug.getter();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100073FE0;
  v39 = v52;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = v39;
  *(v38 + 32) = 0xD00000000000001ALL;
  *(v38 + 40) = v12;
  os_log(_:dso:log:type:_:)();

  v40 = objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = v17;
  v54 = sub_10007073C;
  v55 = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047A04;
  aBlock[3] = &unk_10008FB88;
  v42 = _Block_copy(aBlock);
  v43 = v17;

  v44 = [v40 scheduledTimerWithTimeInterval:0 repeats:v42 block:0.15];
  _Block_release(v42);
  v20 = *&v17[v30];
  *&v17[v30] = v44;
LABEL_11:
}

void sub_10006EB04(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  if (*(*(a2 + v3) + 16))
  {
    sub_10006EDE4();
  }
}

uint64_t sub_10006EB58@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13[2])
  {
    v14 = v13[4];
    v15 = v13[5];

    URL.init(fileURLWithPath:)();

    URL.appendingPathComponent(_:)();
    (*(v3 + 8))(v6, v2);
    v16 = 0;
  }

  else
  {

    static Logger.Picker.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not locate documents directory", v19, 2u);
    }

    (*(v8 + 8))(v11, v7);
    v16 = 1;
  }

  return (*(v3 + 56))(a1, v16, 1, v2);
}

void sub_10006EDE4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer;
  [*(v1 + OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer) invalidate];
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;

  v8 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  v40 = v1;
  if (v10)
  {
    v37 = v2;
    v38 = v8;
    v11 = sub_10006FFE4(v10, 0);
    v12 = *(type metadata accessor for URL() - 8);
    v13 = sub_1000700E0(&v41, &v11[(*(v12 + 80) + 32) & ~*(v12 + 80)], v10, v9);

    sub_100052240();
    if (v13 != v10)
    {
      __break(1u);
      goto LABEL_13;
    }

    v1 = v40;
    v2 = v37;
    v8 = v38;
  }

  v14 = objc_opt_self();
  v15 = type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v14 configurationForExportingDocumentsToURLs:isa mode:2];

  [v17 setForPickingDocuments:1];
  [v17 setInProcess:1];
  [v17 setIsContentManaged:0];
  [v17 setSupportsRemovableFileProviders:1];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v39 + 8))(v5, v2);
  v18 = String._bridgeToObjectiveC()();

  [v17 setSceneIdentifier:v18];

  v19 = static DOCLog.UI.getter();
  static os_log_type_t.debug.getter();
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000736D0;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_1000061E8();
  *(v20 + 32) = 0xD00000000000001FLL;
  *(v20 + 40) = 0x8000000100076880;
  v21 = *(*(v1 + v8) + 16);
  *(v20 + 96) = &type metadata for Int;
  *(v20 + 104) = &protocol witness table for Int;
  *(v20 + 72) = v21;
  os_log(_:dso:log:type:_:)();

  v22 = *(v1 + v8);
  v23 = *(v22 + 16);
  if (!v23)
  {
    v27 = v17;
    goto LABEL_8;
  }

  v24 = sub_10006FFE4(*(v22 + 16), 0);
  v39 = v15;
  v25 = sub_1000700E0(&v41, &v24[(*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)], v23, v22);
  v26 = v17;

  sub_100052240();
  if (v25 != v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v1 = v40;
LABEL_8:
  v28 = objc_allocWithZone(DOCPickerContext);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  v30 = [v28 initWithURLs:v29];

  v31 = [objc_allocWithZone(DOCDocumentPickerViewController) initWithConfiguration:v17 context:v30];
  [v31 setPickerDelegate:v1];
  v32 = v31;
  [v32 setModalInPresentation:1];
  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = *(Strong + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    v35 = v34;
    swift_unknownObjectRelease();
    if (v34)
    {
      v36 = v35;
      [v36 presentViewController:v32 animated:1 completion:0];

      v32 = v36;
    }
  }
}

uint64_t sub_10006F350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v96 = type metadata accessor for Logger();
  v94 = *(v96 - 8);
  v6 = *(v94 + 64);
  v7 = __chkstk_darwin(v96);
  v97 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v82 - v9;
  v11 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v82 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v95 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v82 - v21;
  __chkstk_darwin(v20);
  v24 = v82 - v23;
  sub_10006EB58(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100005A04(v14, &qword_100093F50, &qword_100074090);
  }

  else
  {
    v86 = a1;
    v88 = v16;
    (*(v16 + 32))(v24, v14, v15);
    v100 = objc_opt_self();
    v25 = [v100 defaultManager];
    v85 = v24;
    URL._bridgeToObjectiveC()(&v103);
    v27 = v26;
    type metadata accessor for URLResourceKey(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v102[0] = 0;
    v29 = [v25 contentsOfDirectoryAtURL:v27 includingPropertiesForKeys:isa options:0 error:v102];

    v30 = v102[0];
    if (v29)
    {
      v83 = v3;
      v84 = a2;
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v30;

      v34 = *(v31 + 16);
      if (v34)
      {
        v99 = *(v88 + 16);
        v35 = (*(v88 + 80) + 32) & ~*(v88 + 80);
        v82[1] = v31;
        v36 = v31 + v35;
        v98 = *(v88 + 72);
        v101 = (v88 + 8);
        v94 += 8;
        *&v33 = 138412546;
        v87 = v33;
        v88 += 16;
        v93 = v22;
        do
        {
          v39 = v99;
          v99(v22, v36, v15);
          v40 = [v100 defaultManager];
          URL._bridgeToObjectiveC()(v41);
          v43 = v42;
          v102[0] = 0;
          v44 = [v40 removeItemAtURL:v42 error:v102];

          if (v44)
          {
            v37 = *v101;
            v38 = v102[0];
            v37(v22, v15);
          }

          else
          {
            v45 = v102[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v46 = v97;
            static Logger.Picker.getter();
            v47 = v95;
            v39(v95, v22, v15);
            swift_errorRetain();
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v91 = v49;
              v51 = v50;
              v52 = swift_slowAlloc();
              v89 = v52;
              v92 = swift_slowAlloc();
              v102[0] = v92;
              *v51 = v87;
              v90 = v48;
              URL._bridgeToObjectiveC()(v53);
              v55 = v54;
              v37 = *v101;
              (*v101)(v47, v15);
              *(v51 + 4) = v55;
              *v52 = v55;
              *(v51 + 12) = 2080;
              v56 = _convertErrorToNSError(_:)();
              v57 = v15;
              v58 = [v56 localizedDescription];

              v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;

              v15 = v57;
              v62 = sub_100005D28(v59, v61, v102);
              v63 = v96;

              *(v51 + 14) = v62;
              v64 = v90;
              _os_log_impl(&_mh_execute_header, v90, v91, "Could not cleanup %@ in Inbox. Error: %s", v51, 0x16u);
              sub_100005A04(v89, &qword_1000937D0, &unk_1000743F0);

              sub_100034948(v92);

              (*v94)(v97, v63);
              v22 = v93;
              v37(v93, v57);
            }

            else
            {

              v37 = *v101;
              (*v101)(v47, v15);
              (*v94)(v46, v96);
              v22 = v93;
              v37(v93, v15);
            }
          }

          v36 += v98;
          --v34;
        }

        while (v34);
      }

      else
      {

        v37 = *(v88 + 8);
      }

      v37(v85, v15);
      a2 = v84;
      v3 = v83;
    }

    else
    {
      v65 = v102[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.Picker.getter();
      swift_errorRetain();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v102[0] = v100;
        *v68 = 136315138;
        v69 = _convertErrorToNSError(_:)();
        v70 = [v69 localizedDescription];

        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v15;
        v72 = v3;
        v74 = v73;

        v75 = sub_100005D28(v71, v74, v102);
        v3 = v72;

        *(v68 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v66, v67, "Could not list Inbox. Error: %s", v68, 0xCu);
        sub_100034948(v100);

        (*(v94 + 8))(v10, v96);
        (*(v88 + 8))(v85, v101);
      }

      else
      {

        (*(v94 + 8))(v10, v96);
        (*(v88 + 8))(v85, v15);
      }
    }

    a1 = v86;
  }

  v76 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  v77 = *&v3[v76];
  *&v3[v76] = &_swiftEmptySetSingleton;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v79 = result;
    v80 = swift_allocObject();
    v80[2] = v3;
    v80[3] = a1;
    v80[4] = a2;
    v81 = v3;

    UIViewController.doc_dismiss(animated:includingPresented:completion:)();
  }

  return result;
}

id sub_10006FD84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCImportFileController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006FE48(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000505E8(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006FF24()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000505E8(&_swiftEmptyArrayStorage);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_10006FFE4(uint64_t a1, uint64_t a2)
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

  sub_10000DB4C(&unk_100093C40, "&+");
  v4 = *(type metadata accessor for URL() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000700E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for URL();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100070384(uint64_t a1)
{
  v3 = static DOCLog.UI.getter();
  static os_log_type_t.debug.getter();
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000736D0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000061E8();
  *(v4 + 32) = 0xD000000000000028;
  *(v4 + 40) = 0x8000000100076820;
  v5 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  v6 = *(*&v1[v5] + 16);
  *(v4 + 96) = &type metadata for Int;
  *(v4 + 104) = &protocol witness table for Int;
  *(v4 + 72) = v6;
  os_log(_:dso:log:type:_:)();

  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = a1;
  v8 = v1;

  sub_10006F350(sub_100070650, v7);
}

uint64_t sub_1000704EC()
{
  v1 = static DOCLog.UI.getter();
  static os_log_type_t.debug.getter();
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000736D0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_1000061E8();
  *(v2 + 32) = 0xD00000000000001BLL;
  *(v2 + 40) = 0x80000001000767D0;
  v3 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  v4 = *(*&v0[v3] + 16);
  *(v2 + 96) = &type metadata for Int;
  *(v2 + 104) = &protocol witness table for Int;
  *(v2 + 72) = v4;
  os_log(_:dso:log:type:_:)();

  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = v0;
  sub_10006F350(sub_100070648, v5);
}

uint64_t sub_100070658()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_unknownObjectWeakAssign();
  return v2(v4);
}

unint64_t sub_100070698()
{
  result = qword_100094510;
  if (!qword_100094510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100094510);
  }

  return result;
}

unint64_t sub_1000706E4()
{
  result = qword_100094518;
  if (!qword_100094518)
  {
    sub_100070698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094518);
  }

  return result;
}

unint64_t sub_100070744()
{
  sub_10000DB4C(&qword_100094520, &qword_100074B78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100073FE0;
  v1 = type metadata accessor for DocumentManagerExecutablesIntentsPackage();
  result = sub_100070818();
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  qword_1000945F0 = v0;
  return result;
}

uint64_t sub_1000707AC()
{
  if (qword_100093400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100070818()
{
  result = qword_100094528;
  if (!qword_100094528)
  {
    type metadata accessor for DocumentManagerExecutablesIntentsPackage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094528);
  }

  return result;
}

Swift::String __swiftcall DOCLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = DOCLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName._countAndFlagsBits, tableName._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}