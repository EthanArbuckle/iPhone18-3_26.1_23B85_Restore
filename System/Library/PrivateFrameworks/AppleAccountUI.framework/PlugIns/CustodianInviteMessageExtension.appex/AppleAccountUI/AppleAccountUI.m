void sub_100001648(char a1)
{
  v2 = v1;
  v4 = sub_100005250();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessagesViewController();
  v14.receiver = v2;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  sub_100005200();
  v10 = sub_100005240();
  v11 = sub_100005360();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Register for TrustedContact update notification", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v2 selector:"handleRecoveryContactDidUpdate" name:AARecoveryContactChangedNotification object:0];
}

void sub_100001854(char a1)
{
  v2 = v1;
  v4 = sub_100005250();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessagesViewController();
  v14.receiver = v2;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "viewDidDisappear:", a1 & 1);
  sub_100005200();
  v10 = sub_100005240();
  v11 = sub_100005360();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unregister for TrustedContact update notification", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [objc_opt_self() defaultCenter];
  [v13 removeObserver:v2 name:AARecoveryContactChangedNotification object:0];
}

void *sub_100001A58(char *a1)
{
  v2 = (*(*(sub_1000040D0(&qword_10000C4C0, &qword_1000058E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v95 = &v89 - v3;
  v4 = *(*(sub_1000040D0(&qword_10000C4C8, &qword_100005918) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v92 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v89 - v7;
  v8 = sub_1000051D0();
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = *(v97 + 64);
  __chkstk_darwin(v8);
  v93 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000040D0(&qword_10000C500, &qword_100005938);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v89 - v16;
  v18 = sub_1000051F0();
  v104 = *(v18 - 8);
  v19 = *(v104 + 64);
  v20 = __chkstk_darwin(v18);
  v99 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v101 = &v89 - v23;
  __chkstk_darwin(v22);
  v102 = &v89 - v24;
  v25 = sub_100005250();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v100 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v91 = &v89 - v31;
  v32 = __chkstk_darwin(v30);
  v103 = &v89 - v33;
  __chkstk_darwin(v32);
  v35 = &v89 - v34;
  sub_100005200();
  v36 = sub_100005240();
  v37 = sub_100005360();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "CustodianInviteMessageExtension willBecomeActive", v38, 2u);
  }

  v39 = *(v26 + 8);
  v39(v35, v25);
  v40 = [a1 selectedMessage];
  if (!v40)
  {
    (*(v104 + 56))(v17, 1, 1, v18);
    return sub_1000048A8(v17, &qword_10000C500, &qword_100005938);
  }

  v90 = v25;
  v41 = v40;
  v42 = [v40 URL];

  v43 = v104;
  if (v42)
  {
    sub_1000051E0();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = v103;
  v46 = v101;
  (*(v43 + 56))(v15, v44, 1, v18);
  sub_100004908(v15, v17);
  if ((*(v43 + 48))(v17, 1, v18) == 1)
  {
    return sub_1000048A8(v17, &qword_10000C500, &qword_100005938);
  }

  v48 = v102;
  (*(v43 + 32))(v102, v17, v18);
  sub_100005200();
  (*(v43 + 16))(v46, v48, v18);
  v49 = sub_100005240();
  v50 = v46;
  v51 = sub_100005360();
  if (os_log_type_enabled(v49, v51))
  {
    v52 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v105 = v89;
    *v52 = 136315138;
    sub_10000508C(&qword_10000C508, &type metadata accessor for URL);
    v53 = sub_1000053F0();
    v55 = v54;
    v101 = a1;
    v56 = *(v104 + 8);
    v56(v50, v18);
    v57 = sub_100004AE4(v53, v55, &v105);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v49, v51, "CustodianInviteMessageExtension messageURL %s", v52, 0xCu);
    sub_1000050D4(v89);

    v58 = v56;
    a1 = v101;

    v59 = v103;
  }

  else
  {

    v58 = *(v43 + 8);
    v58(v50, v18);
    v59 = v45;
  }

  v60 = v90;
  v39(v59, v90);
  v61 = v100;
  v62 = [a1 selectedMessage];
  if (!v62)
  {
    goto LABEL_20;
  }

  v63 = v62;
  v64 = [v62 URL];
  if (!v64)
  {

LABEL_20:
    sub_100005200();
    v74 = sub_100005240();
    v75 = sub_100005360();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Missing invite message url", v76, 2u);
    }

    v39(v61, v60);
    return (v58)(v102, v18);
  }

  v65 = v39;
  v66 = v64;
  sub_1000051E0();

  v67 = v96;
  sub_1000051C0();
  v68 = v97;
  v69 = v98;
  if ((*(v97 + 48))(v67, 1, v98) == 1)
  {
    sub_1000048A8(v67, &qword_10000C4C8, &qword_100005918);
    v70 = v91;
    sub_100005200();
    v71 = sub_100005240();
    v72 = sub_100005360();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Missing url components for invite message url", v73, 2u);
    }

    v65(v70, v90);
    goto LABEL_26;
  }

  v77 = v93;
  (*(v68 + 32))(v93, v67, v69);
  v78 = v92;
  (*(v68 + 16))(v92, v77, v69);
  (*(v68 + 56))(v78, 0, 1, v69);
  v79 = v68;
  v80 = OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_urlComponents;
  v81 = v94;
  swift_beginAccess();
  sub_100004978(v78, v81 + v80, &qword_10000C4C8, &qword_100005918);
  swift_endAccess();
  v82 = [v63 isPending];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v83 = result;
    [result setHidden:0];

    v84 = sub_100005340();
    v85 = v95;
    (*(*(v84 - 8) + 56))(v95, 1, 1, v84);
    sub_100005320();
    v86 = v81;
    v87 = sub_100005310();
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = &protocol witness table for MainActor;
    *(v88 + 32) = v86;
    *(v88 + 40) = v82;
    sub_100003114(0, 0, v85, &unk_100005940, v88);

    (*(v79 + 8))(v77, v69);
LABEL_26:
    v58(v99, v18);
    return (v58)(v102, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000025F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 432) = a5;
  *(v5 + 280) = a4;
  v6 = sub_100005270();
  *(v5 + 288) = v6;
  v7 = *(v6 - 8);
  *(v5 + 296) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 304) = swift_task_alloc();
  v9 = sub_100005290();
  *(v5 + 312) = v9;
  v10 = *(v9 - 8);
  *(v5 + 320) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  v12 = sub_100005250();
  *(v5 + 336) = v12;
  v13 = *(v12 - 8);
  *(v5 + 344) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  v15 = *(*(sub_1000040D0(&qword_10000C4C8, &qword_100005918) - 8) + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  v16 = sub_1000051D0();
  *(v5 + 376) = v16;
  v17 = *(v16 - 8);
  *(v5 + 384) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  sub_100005320();
  *(v5 + 400) = sub_100005310();
  v20 = sub_100005300();
  *(v5 + 408) = v20;
  *(v5 + 416) = v19;

  return _swift_task_switch(sub_100002844, v20, v19);
}

uint64_t sub_100002844()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 280);
  v5 = OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_urlComponents;
  swift_beginAccess();
  sub_10000466C(v4 + v5, v3, &qword_10000C4C8, &qword_100005918);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 400);
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);

    sub_1000048A8(v8, &qword_10000C4C8, &qword_100005918);
    sub_100005200();
    v9 = sub_100005240();
    v10 = sub_100005350();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 360);
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Message bubble missing urlComponents", v15, 2u);
    }

    (*(v14 + 8))(v12, v13);
    v16 = *(v0 + 392);
    v17 = *(v0 + 360);
    v18 = *(v0 + 368);
    v19 = *(v0 + 352);
    v20 = *(v0 + 328);
    v21 = *(v0 + 304);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    (*(*(v0 + 384) + 32))(*(v0 + 392), *(v0 + 368), *(v0 + 376));
    v24 = async function pointer to static InviteMessageDetails.detailsFrom(_:_:)[1];
    v25 = swift_task_alloc();
    *(v0 + 424) = v25;
    *v25 = v0;
    v25[1] = sub_100002AA8;
    v26 = *(v0 + 392);
    v27 = *(v0 + 432);

    return static InviteMessageDetails.detailsFrom(_:_:)(v0 + 104, v26, v27);
  }
}

uint64_t sub_100002AA8()
{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v6 = *v0;

  v3 = *(v1 + 416);
  v4 = *(v1 + 408);

  return _swift_task_switch(sub_100002BC8, v4, v3);
}

uint64_t sub_100002BC8()
{
  v1 = v0[50];

  if (v0[16])
  {
    v35 = v0[47];
    v36 = v0[49];
    v3 = v0[40];
    v2 = v0[41];
    v4 = v0[38];
    v33 = v0[39];
    v34 = v0[48];
    v6 = v0[36];
    v5 = v0[37];
    v7 = v0[35];
    sub_1000046D4((v0 + 13), (v0 + 8));
    sub_1000046EC((v0 + 8), (v0 + 18));
    v8 = OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_inviteMessageDetails;
    swift_beginAccess();
    sub_100004978((v0 + 18), v7 + v8, &qword_10000C4D0, &qword_100005920);
    swift_endAccess();
    sub_100004750(0, &qword_10000C4D8, OS_dispatch_queue_ptr);
    v9 = sub_100005370();
    sub_1000046EC((v0 + 8), (v0 + 23));
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    sub_1000046D4((v0 + 23), v10 + 24);
    v0[6] = sub_1000047D8;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000030D0;
    v0[5] = &unk_100008588;
    v11 = _Block_copy(v0 + 2);
    v12 = v7;
    sub_100005280();
    v0[34] = &_swiftEmptyArrayStorage;
    sub_10000508C(&qword_10000C4E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040D0(&qword_10000C4E8, &qword_100005928);
    sub_1000047FC();
    sub_1000053A0();
    sub_100005380();
    _Block_release(v11);

    (*(v5 + 8))(v4, v6);
    (*(v3 + 8))(v2, v33);
    sub_1000050D4(v0 + 8);
    (*(v34 + 8))(v36, v35);
    v13 = v0[7];
  }

  else
  {
    v14 = v0[44];
    sub_1000048A8((v0 + 13), &qword_10000C4D0, &qword_100005920);
    sub_100005200();
    v15 = sub_100005240();
    v16 = sub_100005350();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[48];
    v18 = v0[49];
    v20 = v0[47];
    v22 = v0[43];
    v21 = v0[44];
    v23 = v0[42];
    if (v17)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Message bubble could not build inviteMessageDetail", v24, 2u);
    }

    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  v25 = v0[49];
  v26 = v0[45];
  v27 = v0[46];
  v28 = v0[44];
  v29 = v0[41];
  v30 = v0[38];

  v31 = v0[1];

  return v31();
}

void sub_100002FA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005220();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setHidden:1];

    sub_1000046EC(a2, v11);
    sub_100005210();
    v7 = objc_allocWithZone(sub_1000040D0(&qword_10000C4F8, &qword_100005930));
    v8 = sub_100005260();
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      [v9 setBackgroundColor:0];

      sub_1000036C8(v8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000030D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100003114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000040D0(&qword_10000C4C0, &qword_1000058E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000466C(a3, v26 - v10, &qword_10000C4C0, &qword_1000058E8);
  v12 = sub_100005340();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000048A8(v11, &qword_10000C4C0, &qword_1000058E8);
  }

  else
  {
    sub_100005330();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100005300();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000052C0() + 32;
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

      sub_1000048A8(a3, &qword_10000C4C0, &qword_1000058E8);

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

  sub_1000048A8(a3, &qword_10000C4C0, &qword_1000058E8);
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

void *sub_100003414()
{
  v1 = v0;
  v2 = sub_1000040D0(&qword_10000C4C0, &qword_1000058E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_100005250();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005200();
  v11 = sub_100005240();
  v12 = sub_100005360();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received notification for TrustedContact update notification", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    [result setHidden:0];

    v16 = sub_100005340();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_100005320();
    v17 = v1;
    v18 = sub_100005310();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    *(v19 + 32) = v17;
    *(v19 + 40) = 0;
    sub_100003114(0, 0, v5, &unk_1000058F8, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000036C8(void *a1)
{
  v3 = [a1 view];
  if (v3)
  {
    v36 = v3;
    v4 = [v1 view];
    if (v4)
    {
      v34 = v4;
      v5 = [v1 childViewControllers];
      sub_100004750(0, &qword_10000C4A8, UIViewController_ptr);
      v6 = sub_1000052F0();

      v35 = v1;
      if (v6 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000053E0())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_1000053C0();
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          [v9 willMoveToParentViewController:0];
          v12 = [v10 view];
          [v12 removeFromSuperview];

          [v10 removeFromParentViewController];
          ++v8;
          if (v11 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:

      [v35 addChildViewController:a1];
      v14 = [v35 view];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;
      [v14 addSubview:v36];

      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v33 = objc_opt_self();
      sub_1000040D0(&qword_10000C4B0, &qword_1000058E0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100005850;
      v17 = [v36 topAnchor];
      v18 = [v34 safeAreaLayoutGuide];
      v19 = [v18 topAnchor];

      v20 = [v17 constraintEqualToAnchor:v19];
      *(v16 + 32) = v20;
      v21 = [v36 bottomAnchor];
      v22 = [v34 bottomAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v16 + 40) = v23;
      v24 = [v36 leadingAnchor];
      v25 = [v34 safeAreaLayoutGuide];
      v26 = [v25 leadingAnchor];

      v27 = [v24 constraintEqualToAnchor:v26];
      *(v16 + 48) = v27;
      v28 = [v36 trailingAnchor];
      v29 = [v34 safeAreaLayoutGuide];
      v30 = [v29 trailingAnchor];

      v31 = [v28 constraintEqualToAnchor:v30];
      *(v16 + 56) = v31;
      sub_100004750(0, &qword_10000C4B8, NSLayoutConstraint_ptr);
      isa = sub_1000052E0().super.isa;

      [v33 activateConstraints:isa];

      [a1 didMoveToParentViewController:v35];
      v13 = v34;
    }

    else
    {
      v13 = v36;
    }
  }
}

id sub_100003B7C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_optimalBubbleSize] = 0x406F400000000000;
  v6 = &v3[OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_recipientHandleFromConversation];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_urlComponents;
  v8 = sub_1000051D0();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_inviteMessageDetails];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_custodianController;
  *&v3[v10] = [objc_allocWithZone(AACustodianController) init];
  if (a2)
  {
    v11 = sub_1000052A0();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for MessagesViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_100003D30(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_optimalBubbleSize] = 0x406F400000000000;
  v3 = &v1[OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_recipientHandleFromConversation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_urlComponents;
  v5 = sub_1000051D0();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_inviteMessageDetails];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC31CustodianInviteMessageExtension22MessagesViewController_custodianController;
  *&v1[v7] = [objc_allocWithZone(AACustodianController) init];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MessagesViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_100003E80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesViewController()
{
  result = qword_10000C490;
  if (!qword_10000C490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003FAC()
{
  sub_100004078();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100004078()
{
  if (!qword_10000C4A0)
  {
    sub_1000051D0();
    v0 = sub_100005390();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C4A0);
    }
  }
}

uint64_t sub_1000040D0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000411C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005188;

  return sub_1000025F4(a1, v4, v5, v6, v7);
}

uint64_t sub_1000041E0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000042D8;

  return v7(a1);
}

uint64_t sub_1000042D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000043D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004408(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005188;

  return sub_1000041E0(a1, v5);
}

uint64_t sub_1000044C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100004578;

  return sub_1000041E0(a1, v5);
}

uint64_t sub_100004578()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000466C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000040D0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000046D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000046EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004750(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100004798()
{
  sub_1000050D4((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000047E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000047FC()
{
  result = qword_10000C4F0;
  if (!qword_10000C4F0)
  {
    sub_100004860(&qword_10000C4E8, &qword_100005928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4F0);
  }

  return result;
}

uint64_t sub_100004860(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000048A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000040D0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040D0(&qword_10000C500, &qword_100005938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000040D0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000049E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100004A20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100004578;

  return sub_1000025F4(a1, v4, v5, v6, v7);
}

uint64_t sub_100004AE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004BB0(v11, 0, 0, 1, a1, a2);
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
    sub_100005120(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000050D4(v11);
  return v7;
}

unint64_t sub_100004BB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004CBC(a5, a6);
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
    result = sub_1000053D0();
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

char *sub_100004CBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004D08(a1, a2);
  sub_100004E38(&off_1000084C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004D08(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004F24(v5, 0);
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

  result = sub_1000053D0();
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
        v10 = sub_1000052D0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004F24(v10, 0);
        result = sub_1000053B0();
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

uint64_t sub_100004E38(uint64_t result)
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

  result = sub_100004F98(result, v12, 1, v3);
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

void *sub_100004F24(uint64_t a1, uint64_t a2)
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

  sub_1000040D0(&qword_10000C510, qword_100005948);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004F98(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040D0(&qword_10000C510, qword_100005948);
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

uint64_t sub_10000508C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000050D4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005120(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}