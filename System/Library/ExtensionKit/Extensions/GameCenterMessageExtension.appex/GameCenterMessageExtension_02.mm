void sub_10002D7C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100041AF0();
    v3 = sub_100041AF0();
    v4 = GKGameCenterUIFrameworkBundle();
    v8._countAndFlagsBits = 0xE000000000000000;
    v14._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v14._object = 0xE90000000000004ELL;
    v15.value._countAndFlagsBits = 0;
    v15.value._object = 0;
    v5.super.isa = v4;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_100041180(v14, v15, v5, v16, v8);

    v6 = sub_100041AF0();

    v12 = nullsub_1;
    v13 = 0;
    v8._object = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_100012BD4;
    v11 = &unk_100057300;
    v7 = _Block_copy(&v8._object);
    [v1 _presentAlertWithTitle:v2 message:v3 buttonTitle:v6 completion:v7];
    _Block_release(v7);
  }
}

id sub_10002D960(void *a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v7 = a1;
  v8 = sub_100041400();
  v9 = sub_100041CC0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ user interface is ready for display", v10, 0xCu);
    sub_10000E9F0(v11, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v3 + 8))(v6, v2);
  return [v7 setReadyForDisplay];
}

void sub_10002DB08(uint64_t a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v9 != 9 || (v7 & 0xFFFFFFFFFFFFFFFELL | v8) != 0)
    {
      sub_1000413E0();
      v13 = v11;
      v14 = sub_100041400();
      v15 = sub_100041CC0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v26 = v3;
        v17 = v16;
        v18 = swift_slowAlloc();
        v27 = v2;
        v19 = v18;
        *v17 = 138412290;
        *(v17 + 4) = v13;
        *v18 = v11;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "%@ FriendInviteCardViewModel state updated, updating card height.", v17, 0xCu);
        sub_10000E9F0(v19, &unk_10005CA00, &unk_100045CF0);
        v2 = v27;

        v3 = v26;
      }

      (*(v3 + 8))(v6, v2);
      v21 = &v13[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
      v22 = *&v13[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
      v23 = *&v13[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState + 8];
      *v21 = v7;
      *(v21 + 1) = v8;
      v24 = v21[16];
      v21[16] = v9;
      sub_10003347C(v7, v8, v9);
      sub_1000334F0(v22, v23, v24);
      [v13 requestResize];
      [v13 requestResize];
    }
  }
}

uint64_t sub_10002DD5C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for FriendInviteCardView() + 20));
  type metadata accessor for FriendInviteCardViewModel();
  sub_100033620(&qword_10005DAD8, type metadata accessor for FriendInviteCardViewModel);

  result = sub_100041510();
  *v2 = result;
  v2[1] = v4;
  return result;
}

id sub_10002DE34()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10002DFB0()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 activeConversation];
  if (v6)
  {
    v7 = v6;
    v8 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
    if (v8)
    {
      v9 = v8;
      v10 = sub_10002E250(0);
      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      aBlock[4] = sub_100030E90;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000151F0;
      aBlock[3] = &unk_1000570A8;
      v12 = _Block_copy(aBlock);
      v13 = v0;

      [v7 insertMessage:v10 completionHandler:v12];
      _Block_release(v12);

      return;
    }
  }

  sub_1000413D0();
  v14 = v0;
  v15 = sub_100041400();
  v16 = sub_100041CE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "%@ Expected a conversation and a playerModel", v17, 0xCu);
    sub_10000E9F0(v18, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v2 + 8))(v5, v1);
}

uint64_t sub_10002E250(char a1)
{
  v3 = (*(*(sub_100002D08(&qword_10005CA30, &unk_100046380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v27 - v4;
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v11 = v1;
  v12 = sub_100041400();
  v13 = sub_100041CC0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ creating a message for GC friend invite", v14, 0xCu);
    sub_10000E9F0(v15, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v7 + 8))(v10, v6);
  v17 = [v11 activeConversation];
  if (!v17 || (v18 = v17, v19 = [v17 selectedMessage], v18, v20 = objc_msgSend(v19, "session"), v19, !v20))
  {
    v20 = [objc_allocWithZone(MSSession) init];
  }

  v21 = *&v11[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
  if (v21)
  {
    v22 = v21;
    sub_10001287C(1, v5);
  }

  else
  {
    v23 = sub_100041200();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  }

  sub_10000EA78(0, &qword_10005DAE8, MSMessage_ptr);
  if (a1)
  {
    v24 = sub_100041DD0();
  }

  else
  {
    v24 = sub_100041DC0();
  }

  v25 = v24;

  sub_10000E9F0(v5, &qword_10005CA30, &unk_100046380);
  return v25;
}

uint64_t sub_10002E580(uint64_t a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_1000413D0();
    swift_errorRetain();
    v10 = a2;
    v11 = sub_100041400();
    v12 = sub_100041CE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v15 = v10;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      v14[1] = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%@ composeMessage - insert message error : %@", v13, 0x16u);
      sub_100002D08(&unk_10005CA00, &unk_100045CF0);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void sub_10002E784(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100041410();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v10 = a2;
  v11 = sub_100041400();
  v12 = sub_100041CC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@ acceptMessage", v13, 0xCu);
    sub_10000E9F0(v14, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v6 + 8))(v9, v5);
  v16 = sub_10002E250(1);
  aBlock[4] = sub_10002E9C4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000151F0;
  aBlock[3] = &unk_100057350;
  v17 = _Block_copy(aBlock);
  [a3 sendMessage:v16 completionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_10002E9C4(uint64_t a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_1000413D0();
    swift_errorRetain();
    v8 = sub_100041400();
    v9 = sub_100041CE0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "acceptMessage - send message error : %@", v10, 0xCu);
      sub_10000E9F0(v11, &unk_10005CA00, &unk_100045CF0);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_10002EB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100041410();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v12 = v3;

  v13 = sub_100041400();
  v14 = sub_100041CC0();

  v15 = os_log_type_enabled(v13, v14);
  v57 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v56 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v55 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v54 = a2;
    v21 = v20;
    v60[0] = v20;
    *v17 = 138412546;
    *(v17 + 4) = v12;
    *v19 = v12;
    *(v17 + 12) = 2080;
    v22 = v12;
    v23 = sub_100041A90();
    v25 = sub_10003FBD0(v23, v24, v60);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "%@ Received text input payload to send a friend request: %s", v17, 0x16u);
    sub_10000E9F0(v19, &unk_10005CA00, &unk_100045CF0);
    a3 = v55;

    sub_10000E8A8(v21);
    a2 = v54;

    a1 = v56;
  }

  (*(v8 + 8))(v11, v7);
  if (a2 == 0xD00000000000002CLL && 0x8000000100045030 == a3 || (v26 = sub_100041FC0(), result = 0, (v26 & 1) != 0))
  {
    v28 = OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel;
    v29 = v57;
    v30 = *&v57[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
    if (v30)
    {
      v61 = 0x6F43646E65697266;
      v62 = 0xEA00000000006564;
      v31 = v30;
      sub_100041E90();
      if (*(a1 + 16) && (v32 = sub_1000300E4(v60), (v33 & 1) != 0))
      {
        sub_100012320(*(a1 + 56) + 32 * v32, &v61);
        sub_100030E04(v60);
        v34 = swift_dynamicCast();
        v35 = v58;
        v36 = v59;
        if (!v34)
        {
          v35 = 0;
          v36 = 0;
        }
      }

      else
      {
        sub_100030E04(v60);
        v35 = 0;
        v36 = 0;
      }

      v37 = &v31[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
      v38 = *&v31[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8];
      *v37 = v35;
      *(v37 + 1) = v36;

      v39 = *&v29[v28];
      if (v39)
      {
        v61 = 0x7255646E65697266;
        v62 = 0xE90000000000006CLL;
        v40 = v39;
        sub_100041E90();
        if (*(a1 + 16) && (v41 = sub_1000300E4(v60), (v42 & 1) != 0))
        {
          sub_100012320(*(a1 + 56) + 32 * v41, &v61);
          sub_100030E04(v60);
          v43 = swift_dynamicCast();
          v44 = v58;
          v45 = v59;
          if (!v43)
          {
            v44 = 0;
            v45 = 0;
          }
        }

        else
        {
          sub_100030E04(v60);
          v44 = 0;
          v45 = 0;
        }

        v46 = &v40[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL];
        v47 = *&v40[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL + 8];
        *v46 = v44;
        *(v46 + 1) = v45;
      }
    }

    v61 = 0xD00000000000001ALL;
    v62 = 0x8000000100045060;
    sub_100041E90();
    if (*(a1 + 16) && (v48 = sub_1000300E4(v60), (v49 & 1) != 0))
    {
      sub_100012320(*(a1 + 56) + 32 * v48, &v61);
      sub_100030E04(v60);
      v50 = swift_dynamicCast();
      v51 = v58;
      v52 = v59;
      if (!v50)
      {
        v51 = 0;
        v52 = 0;
      }
    }

    else
    {
      sub_100030E04(v60);
      v51 = 0;
      v52 = 0;
    }

    qword_10005DA18 = v51;
    qword_10005DA20 = v52;

    sub_10002DFB0();
    return 1;
  }

  return result;
}

void sub_10002F1BC(uint64_t a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  if (a1)
  {
    sub_1000413D0();
    v12 = a2;
    swift_errorRetain();
    v13 = sub_100041400();
    v14 = sub_100041CE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = a1;
      v30 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2080;
      v18 = v12;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v19 = sub_100041B40();
      v21 = sub_10003FBD0(v19, v20, &v30);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "%@ messageActionsViewController - createFriendRequest error: %s", v15, 0x16u);
      sub_10000E9F0(v16, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v17);
    }

    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v22 = [objc_allocWithZone(GKReporter) init];
    [v22 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestCreated];

    sub_1000413E0();
    v23 = a2;
    v24 = sub_100041400();
    v25 = sub_100041CC0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "%@ messageActionsViewController - createFriendRequest succeed.", v26, 0xCu);
      sub_10000E9F0(v27, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v5 + 8))(v11, v4);
    sub_10002DFB0();
  }
}

void sub_10002F548(CFTimeInterval a1)
{
  v8 = 0;
  v2 = sub_100041AF0();
  v3 = sub_100041AF0();
  v4 = GKGameCenterUIFrameworkBundle();
  otherButtonTitle._countAndFlagsBits = 0xE000000000000000;
  v9._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v9._object = 0xE90000000000004ELL;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v5.super.isa = v4;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_100041180(v9, v10, v5, v11, otherButtonTitle);

  v6 = sub_100041AF0();

  CFUserNotificationDisplayAlert(a1, 0, 0, 0, 0, v2, v3, v6, 0, 0, &v8);
}

uint64_t sub_10002F684(uint64_t a1)
{
  v2 = sub_1000414D0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100041570();
}

uint64_t sub_10002F74C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000338DC;

  return v7();
}

uint64_t sub_10002F834(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10002F91C;

  return v8();
}

uint64_t sub_10002F91C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002FA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D08(&qword_10005DAF0, &qword_100046EE8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100021B9C(a3, v25 - v11, &qword_10005DAF0, &qword_100046EE8);
  v13 = sub_100041C90();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000E9F0(v12, &qword_10005DAF0, &qword_100046EE8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100041C80();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_100041C50();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_100041B50() + 32;
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

    sub_10000E9F0(a3, &qword_10005DAF0, &qword_100046EE8);

    return v23;
  }

LABEL_8:
  sub_10000E9F0(a3, &qword_10005DAF0, &qword_100046EE8);
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

uint64_t sub_10002FD0C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002FE04;

  return v7(a1);
}

uint64_t sub_10002FE04()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10002FEFC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100041B20();
  sub_100042000();
  sub_100041B70();
  v4 = sub_100042020();

  return sub_100030128(a1, v4);
}

unint64_t sub_10002FF90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100042000();
  sub_100041B70();
  v6 = sub_100042020();

  return sub_10003022C(a1, a2, v6);
}

unint64_t sub_100030008(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100041FF0();

  return sub_1000302E4(a1, v4);
}

unint64_t sub_10003004C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000412F0();
  sub_100033620(&qword_10005DBC0, &type metadata accessor for IndexPath);
  v5 = sub_100041AA0();

  return sub_100030350(a1, v5);
}

unint64_t sub_1000300E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100041E70(*(v2 + 40));

  return sub_100030510(a1, v4);
}

unint64_t sub_100030128(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100041B20();
      v9 = v8;
      if (v7 == sub_100041B20() && v9 == v10)
      {
        break;
      }

      v12 = sub_100041FC0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10003022C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100041FC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000302E4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100030350(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1000412F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100033620(&qword_10005DBC8, &type metadata accessor for IndexPath);
      v16 = sub_100041AE0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100030510(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100030EB0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100041E80();
      sub_100030E04(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000305DC(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - v5;
  if (qword_10005C508 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  v7 = sub_100033330(v4, qword_10005DA00);
  v8 = sub_100041200();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  swift_beginAccess();
  sub_100033368(v6, v7);
  return swift_endAccess();
}

uint64_t sub_10003074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100041A10();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100041A30();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v16 = sub_100041D50();
  v17 = swift_allocObject();
  v17[2] = 0x403E000000000000;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_100033880;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100057558;
  v18 = _Block_copy(aBlock);

  sub_100041A20();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100033620(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100003214(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v18);

  (*(v21 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v20);
}

void sub_100030A64()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
  if (v6)
  {
    v7 = objc_opt_self();
    v32 = v6;
    v8 = [v7 shared];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 isAddingFriendsRestricted];

      if (v10)
      {
        v11 = [objc_allocWithZone(GKReporter) init];
        [v11 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestRestrictedError];

        v12 = GKGameCenterUIFrameworkBundle();
        v29._countAndFlagsBits = 0xE000000000000000;
        v34._countAndFlagsBits = 0x525F444E45495246;
        v34._object = 0xEE00545345555145;
        v36.value._countAndFlagsBits = 0;
        v36.value._object = 0;
        v13.super.isa = v12;
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        v14 = sub_100041180(v34, v36, v13, v38, v29);
        v16 = v15;

        v17 = GKGameCenterUIFrameworkBundle();
        v30._countAndFlagsBits = 0xE000000000000000;
        v35._object = 0x8000000100044180;
        v35._countAndFlagsBits = 0xD000000000000027;
        v37.value._countAndFlagsBits = 0;
        v37.value._object = 0;
        v18.super.isa = v17;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        v19 = sub_100041180(v35, v37, v18, v39, v30);
        v21 = v20;

        sub_10003074C(v14, v16, v19, v21);

        v22 = v32;
      }

      else
      {
        v31 = v0;
        sub_100018678(v32, v31);

        v22 = v31;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000413D0();
    v23 = v0;
    v24 = sub_100041400();
    v25 = sub_100041CE0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "%@ messageActionsViewController - Expected a playerModel", v26, 0xCu);
      sub_10000E9F0(v27, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_100030E58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030F0C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100030F64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F91C;

  return sub_10002C410(v2, v3, v4, v5, v6);
}

uint64_t sub_10003102C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000338DC;

  return sub_10002F74C(v2, v3, v5);
}

uint64_t sub_1000310F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000338DC;

  return sub_10002F834(a1, v4, v5, v7);
}

uint64_t sub_1000311FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031234(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000338DC;

  return sub_10002FD0C(a1, v5);
}

uint64_t sub_1000312EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F91C;

  return sub_10002FD0C(a1, v5);
}

void sub_1000313A4(uint64_t a1, void *a2)
{
  v4 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1000410D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_10005FF58 = a1;
  qword_10005FF60 = a2;

  if (a2)
  {
    v23 = a1;
    v24 = a2;

    sub_1000410C0();
    sub_1000024FC();
    v13 = sub_100041E40();
    v15 = v14;
    (*(v9 + 8))(v12, v8);
    if (v15)
    {

      a1 = v13;
      a2 = v15;
    }

    v23 = 0xD00000000000001FLL;
    v24 = 0x8000000100045120;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    sub_100041B80(v25);
  }

  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    sub_1000411F0();

    v18 = sub_100041200();
    v19 = *(v18 - 8);
    v21 = 0;
    if ((*(v19 + 48))(v7, 1, v18) != 1)
    {
      sub_1000411D0(v20);
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    [v17 openURL:v21];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100031658()
{
  v1 = sub_100041A10();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100041A30();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v9 = sub_100041D50();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100033830;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100057508;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_100041A20();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100033620(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100003214(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v11);

  (*(v15 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v14);
}

uint64_t sub_10003194C()
{
  v1 = sub_100029528(0x65746E496E69614DLL, 0xED00006563616672, 0, type metadata accessor for FriendRequestCardViewController, &qword_10005DBA8, &qword_100046FA8);
  v2 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel);
  v3 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel);
  *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel) = v2;
  v4 = v2;

  v5 = (v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl);
  v6 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl);
  v7 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl + 8);
  *v5 = sub_1000338D4;
  v5[1] = 0;
  sub_10000EA50(v6);

  return v1;
}

void sub_100031A30(void *a1, void (**a2)(void, void))
{
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;

    v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v7, v9}];
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100033794;
    *(v12 + 24) = v11;
    v16[4] = sub_1000337AC;
    v16[5] = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10002AC64;
    v16[3] = &unk_100057440;
    v13 = _Block_copy(v16);
    v14 = a1;

    v15 = [v10 imageWithActions:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      (a2)[2](a2, v15);

      return;
    }

    __break(1u);
  }

  _Block_release(a2);
  __break(1u);
}

void sub_100031C24()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(GKReporter) init];
  [v10 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestCancelSending];

  if (qword_10005C508 != -1)
  {
    swift_once();
  }

  v11 = sub_100033330(v6, qword_10005DA00);
  v12 = sub_100041200();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  swift_beginAccess();
  sub_100033368(v9, v11);
  swift_endAccess();
  v13 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
  if (v13 && *(v13 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState) == 1)
  {
    v14 = v0;
    v15 = v13;
    sub_10001C2BC(v15, v14);
  }

  else
  {
    sub_1000413D0();
    v16 = v0;
    v17 = sub_100041400();
    v18 = sub_100041CE0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "%@ didCancelSending - Expected a playerModel", v19, 0xCu);
      sub_10000E9F0(v20, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_100031F50(uint64_t a1)
{
  v2 = [objc_allocWithZone(CNContactStore) init];
  if (qword_10005C500 != -1)
  {
    swift_once();
  }

  sub_100002D08(&qword_10005CFA0, &qword_1000463C0);
  isa = sub_100041C10().super.isa;
  v14 = 0;
  v4 = [v2 unifiedContactsMatchingPredicate:a1 keysToFetch:isa error:&v14];

  v5 = v14;
  if (!v4)
  {
    v13 = v14;
    sub_1000411C0();

    swift_willThrow();

    return 0;
  }

  sub_10000EA78(0, &qword_10005CFA8, CNContact_ptr);
  v6 = sub_100041C20();
  v7 = v5;

  if (v6 >> 62)
  {
    if (sub_100041F50())
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = sub_100041EC0();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  v10 = [v9 givenName];

  v11 = sub_100041B20();
  return v11;
}

void sub_100032178(void *a1)
{
  v3 = sub_100041410();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v83 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v81 - v9;
  __chkstk_darwin(v8);
  v12 = &v81 - v11;
  sub_1000413E0();
  v13 = v1;
  v14 = sub_100041400();
  v15 = sub_100041CC0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v84 = v3;
    v82 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2080;
    v20 = v13;
    *(v17 + 14) = sub_10003FBD0(0xD000000000000020, 0x8000000100045080, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "%@ %s didStartSending the friend invite.", v17, 0x16u);
    sub_10000E9F0(v18, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v19);

    a1 = v82;
    v3 = v84;
  }

  v21 = *(v4 + 8);
  v21(v12, v3);
  v22 = [objc_allocWithZone(GKReporter) init];
  [v22 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestSent];

  v23 = qword_10005DA20;
  if (qword_10005DA20)
  {
    v24 = qword_10005DA18;

    sub_1000413E0();

    v25 = sub_100041400();
    v26 = sub_100041CC0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v84 = v3;
      v28 = a1;
      v29 = v27;
      aBlock[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_10003FBD0(0xD000000000000020, 0x8000000100045080, aBlock);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10003FBD0(v24, v23, aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s - recipientContactIdentifier was provided. Adding %s to the deny list.", v29, 0x16u);
      swift_arrayDestroy();

      a1 = v28;

      v30 = v10;
      v31 = v84;
    }

    else
    {

      v30 = v10;
      v31 = v3;
    }

    v21(v30, v31);
    v48 = [objc_opt_self() proxyForLocalPlayer];
    v49 = [v48 utilityServicePrivate];

    v50 = sub_100041AF0();
    v51 = swift_allocObject();
    *(v51 + 16) = v24;
    *(v51 + 24) = v23;
    aBlock[4] = sub_100033474;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000151F0;
    aBlock[3] = &unk_1000571C0;
    v52 = _Block_copy(aBlock);

    [v49 denyContact:v50 handler:v52];
    _Block_release(v52);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = [a1 recipientAddresses];
    v33 = sub_100041C20();

    v34 = *(v33 + 16);

    if (v34 == 1)
    {
      v35 = [a1 recipientAddresses];
      v36 = sub_100041C20();

      if (v36[2])
      {
        v38 = v36[4];
        v37 = v36[5];

        v39 = v83;
        sub_1000413E0();
        v40 = sub_100041400();
        v41 = sub_100041CC0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v84 = v3;
          aBlock[0] = v43;
          v44 = a1;
          v45 = v43;
          *v42 = 136315138;
          *(v42 + 4) = sub_10003FBD0(0xD000000000000020, 0x8000000100045080, aBlock);
          _os_log_impl(&_mh_execute_header, v40, v41, "%s - The recipient was manually provided by the user. Looking up the contacts from its handle.", v42, 0xCu);
          sub_10000E8A8(v45);
          a1 = v44;

          v46 = v83;
          v47 = v84;
        }

        else
        {

          v46 = v39;
          v47 = v3;
        }

        v21(v46, v47);
        type metadata accessor for PlayerModel();
        sub_100014A88(v38, v37);
      }
    }
  }

  v53 = qword_10005DA20;
  if (!qword_10005DA20)
  {
    goto LABEL_19;
  }

  v54 = qword_10005DA18;
  v55 = objc_opt_self();
  sub_100002D08(&qword_10005CF00, &unk_100046F40);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100045AE0;
  *(v56 + 32) = v54;
  *(v56 + 40) = v53;

  isa = sub_100041C10().super.isa;

  v58 = [v55 predicateForContactsWithIdentifiers:isa];

  sub_100031F50(v58);
  v60 = v59;

  if (v60)
  {
    v61 = 0;
  }

  else
  {
LABEL_19:
    v62 = [a1 recipientAddresses];
    v63 = sub_100041C20();

    v64 = *(v63 + 16);

    if (v64 != 1)
    {
      return;
    }

    v65 = [a1 recipientAddresses];
    v66 = sub_100041C20();

    if (!v66[2])
    {

      return;
    }

    v68 = v66[4];
    v67 = v66[5];

    v69 = objc_opt_self();
    sub_100002D08(&qword_10005CF00, &unk_100046F40);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_100045AE0;
    *(v70 + 32) = v68;
    *(v70 + 40) = v67;
    v71 = sub_100041C10().super.isa;

    v72 = [v69 predicateForContactsMatchingHandleStrings:v71];

    sub_100031F50(v72);
    if (v73)
    {

      v61 = 0;
    }

    else
    {
      v74 = [a1 recipientAddresses];
      v75 = sub_100041C20();

      if (!v75[2])
      {

        return;
      }

      v77 = v75[4];
      v76 = v75[5];

      v61 = 1;
    }
  }

  v78 = [objc_opt_self() proxyForLocalPlayer];
  v79 = [v78 friendServicePrivate];

  v80 = sub_100041AF0();

  [v79 notifyMessageBasedFriendRequestSentTo:v80 nameKind:v61];
  swift_unknownObjectRelease();
}

uint64_t sub_100032B10(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_100041200();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v3[16] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v9 = sub_100041410();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v11 = *(v10 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_100041C70();
  v3[25] = sub_100041C60();
  v13 = sub_100041C50();

  return _swift_task_switch(sub_100032CE8, v13, v12);
}

uint64_t sub_100032CE8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 80);

  sub_1000413E0();
  v4 = v3;
  v5 = sub_100041400();
  v6 = sub_100041CC0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "%@ Validating the message for sending GC invite.", v8, 0xCu);
    sub_10000E9F0(v9, &unk_10005CA00, &unk_100045CF0);
  }

  v11 = *(v0 + 192);
  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v14 = *(v0 + 64);

  v15 = *(v13 + 8);
  v15(v11, v12);
  v16 = [v14 URL];
  v17 = *(v0 + 160);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  if (v16)
  {
    v20 = *(v0 + 160);
    v21 = v16;
    sub_1000411E0();

    (*(v19 + 56))(v17, 0, 1, v18);
    sub_10000E9F0(v17, &qword_10005CA30, &unk_100046380);
    goto LABEL_12;
  }

  v22 = *(v19 + 56);
  v22(*(v0 + 160), 1, 1, *(v0 + 88));
  sub_10000E9F0(v17, &qword_10005CA30, &unk_100046380);
  if (qword_10005C508 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 152);
  v24 = *(v0 + 88);
  v25 = *(v0 + 96);
  v26 = sub_100033330(*(v0 + 128), qword_10005DA00);
  swift_beginAccess();
  sub_100021B9C(v26, v23, &qword_10005CA30, &unk_100046380);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    v41 = *(v0 + 144);
    v42 = *(v0 + 120);
    v43 = *(v0 + 88);
    v44 = *(v0 + 96);
    v45 = *(v0 + 64);
    (*(v44 + 32))(v42, *(v0 + 152), v43);
    sub_1000411D0(v46);
    v48 = v47;
    [v45 setURL:v47];

    v22(v41, 1, 1, v43);
    swift_beginAccess();
    sub_100033368(v41, v26);
    swift_endAccess();
    (*(v44 + 8))(v42, v43);
LABEL_12:
    v49 = [*(v0 + 72) recipientIdentifiers];
    sub_1000412B0();
    v50 = sub_100041C20();

    v51 = *(v50 + 16);

    if (v51 >= 2)
    {
      v52 = [*(v0 + 64) URL];
      if (v52)
      {
        v53 = *(v0 + 136);
        v54 = *(v0 + 104);
        v55 = *(v0 + 112);
        v56 = *(v0 + 88);
        v57 = *(v0 + 96);
        v58 = v52;
        sub_1000411E0();

        (*(v57 + 16))(v54, v55, v56);
        v59 = sub_10001B6B8(v54);
        sub_10001287C(2, v53);
        if ((*(v57 + 48))(v53, 1, v56) == 1)
        {
          v61 = 0;
        }

        else
        {
          v62 = *(v0 + 136);
          v63 = *(v0 + 88);
          v64 = *(v0 + 96);
          sub_1000411D0(v60);
          v61 = v65;
          (*(v64 + 8))(v62, v63);
        }

        v66 = *(v0 + 112);
        v67 = *(v0 + 88);
        v68 = *(v0 + 96);
        [*(v0 + 64) setURL:v61];

        (*(v68 + 8))(v66, v67);
      }
    }

    v80 = 0;
    v81 = 0;
    v40 = 1;
    goto LABEL_19;
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 80);
  sub_10000E9F0(*(v0 + 152), &qword_10005CA30, &unk_100046380);
  sub_1000413E0();
  v29 = v28;
  v30 = sub_100041400();
  v31 = sub_100041CC0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 80);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v32;
    *v34 = v32;
    v35 = v32;
    _os_log_impl(&_mh_execute_header, v30, v31, "%@ No message URL for sending GC invite", v33, 0xCu);
    sub_10000E9F0(v34, &unk_10005CA00, &unk_100045CF0);
  }

  v36 = *(v0 + 184);
  v37 = *(v0 + 168);

  v15(v36, v37);
  sub_1000413B0();
  v38 = sub_100041390();
  v80 = v39;
  v81 = v38;
  v40 = 0;
LABEL_19:
  v70 = *(v0 + 184);
  v69 = *(v0 + 192);
  v72 = *(v0 + 152);
  v71 = *(v0 + 160);
  v74 = *(v0 + 136);
  v73 = *(v0 + 144);
  v75 = *(v0 + 112);
  v76 = *(v0 + 120);
  v77 = *(v0 + 104);

  v78 = *(v0 + 8);

  return v78(v40, v81, v80);
}

uint64_t sub_100033330(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100033368(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000333D8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10003343C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10003347C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 8u)
  {
    if (((1 << a3) & 0x17D) != 0)
    {

      return result;
    }

    if (a3 == 1)
    {
      v4 = result;
      result = a2;

      return result;
    }
  }

  return result;
}

void sub_1000334F0(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 8u)
  {
    if (((1 << a3) & 0x17D) != 0)
    {

LABEL_5:

      return;
    }

    if (a3 == 1)
    {

      a1 = a2;

      goto LABEL_5;
    }
  }
}

uint64_t sub_100033568()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000335D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100033668(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000EA78(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000336AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000336FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003374C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000337AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000337DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100033840()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100033880()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_10002F548(*(v0 + 16));
}

uint64_t sub_100033918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D08(&qword_10005DBD0, qword_100046FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000339F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D08(&qword_10005DBD0, qword_100046FD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FriendInviteCardView()
{
  result = qword_10005DC30;
  if (!qword_10005DC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100033B0C()
{
  sub_100033B90();
  if (v0 <= 0x3F)
  {
    sub_100033BE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100033B90()
{
  if (!qword_10005DC40)
  {
    sub_1000414D0();
    v0 = sub_1000414E0();
    if (!v1)
    {
      atomic_store(v0, &qword_10005DC40);
    }
  }
}

void sub_100033BE8()
{
  if (!qword_10005DC48)
  {
    type metadata accessor for FriendInviteCardViewModel();
    sub_100037830(&qword_10005DAD8, type metadata accessor for FriendInviteCardViewModel);
    v0 = sub_100041520();
    if (!v1)
    {
      atomic_store(v0, &qword_10005DC48);
    }
  }
}

uint64_t sub_100033C98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041610();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100021B9C(v2, &v17 - v11, &qword_10005DAD0, &qword_1000470B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000414D0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100041CF0();
    v16 = sub_100041730();
    sub_1000413F0();

    sub_100041600();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100033E98()
{
  v1 = sub_100002D08(&qword_10005DC78, &qword_100047068);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v45[-v3];
  v5 = sub_100002D08(&qword_10005DC80, &qword_100047070);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v45[-v7];
  v46 = v0;
  sub_100036B88(sub_100037828, v45, &v45[-v7]);
  v9 = sub_100041760();
  sub_1000414B0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v8[*(sub_100002D08(&qword_10005DC88, &qword_100047078) + 36)];
  *v18 = v9;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  v19 = sub_100041770();
  sub_1000414B0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v8[*(sub_100002D08(&qword_10005DC90, &qword_100047080) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_100041780();
  sub_1000414B0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v8[*(sub_100002D08(&qword_10005DC98, &qword_100047088) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_100036F6C();
  v39 = sub_1000418E0();
  v40 = sub_100041750();
  v41 = &v8[*(v5 + 36)];
  *v41 = v39;
  v41[8] = v40;
  v42 = enum case for DynamicTypeSize.accessibility2(_:);
  v43 = sub_100041530();
  (*(*(v43 - 8) + 104))(v4, v42, v43);
  sub_100037830(&qword_10005DCA0, &type metadata accessor for DynamicTypeSize);
  result = sub_100041AE0();
  if (result)
  {
    sub_100037878();
    sub_100003214(&qword_10005DD08, &qword_10005DC78, &qword_100047068);
    sub_1000418C0();
    sub_10000E9F0(v4, &qword_10005DC78, &qword_100047068);
    return sub_10000E9F0(v8, &qword_10005DC80, &qword_100047070);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000341E0@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v277 = a1;
  v286 = a2;
  v252 = sub_100002D08(&qword_10005DD28, &qword_1000470D0);
  v2 = *(*(v252 - 8) + 64);
  __chkstk_darwin(v252);
  v233 = (&v227 - v3);
  v243 = sub_100002D08(&qword_10005DD30, &qword_1000470D8);
  v4 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v248 = (&v227 - v5);
  v285 = sub_100002D08(&qword_10005DD38, &qword_1000470E0);
  v6 = *(*(v285 - 8) + 64);
  __chkstk_darwin(v285);
  v255 = &v227 - v7;
  v247 = sub_100002D08(&qword_10005DD40, &qword_1000470E8);
  v8 = *(*(v247 - 8) + 64);
  __chkstk_darwin(v247);
  v253 = &v227 - v9;
  v270 = sub_100002D08(&qword_10005DD48, &qword_1000470F0);
  v10 = *(*(v270 - 8) + 64);
  __chkstk_darwin(v270);
  v256 = &v227 - v11;
  v250 = sub_100002D08(&qword_10005DD50, &qword_1000470F8);
  v12 = *(*(v250 - 8) + 64);
  __chkstk_darwin(v250);
  v257 = (&v227 - v13);
  v267 = sub_100002D08(&qword_10005DD58, &qword_100047100);
  v14 = *(*(v267 - 8) + 64);
  __chkstk_darwin(v267);
  v269 = &v227 - v15;
  v242 = sub_100002D08(&qword_10005DD60, &qword_100047108);
  v16 = *(*(v242 - 8) + 64);
  __chkstk_darwin(v242);
  v249 = &v227 - v17;
  v268 = sub_100002D08(&qword_10005DD68, &qword_100047110);
  v18 = *(*(v268 - 8) + 64);
  __chkstk_darwin(v268);
  v254 = &v227 - v19;
  v275 = sub_100002D08(&qword_10005DD70, &qword_100047118);
  v20 = *(*(v275 - 8) + 64);
  __chkstk_darwin(v275);
  v271 = (&v227 - v21);
  v244 = sub_100002D08(&qword_10005DD78, &qword_100047120);
  v22 = *(*(v244 - 8) + 64);
  __chkstk_darwin(v244);
  v232 = (&v227 - v23);
  v245 = sub_100002D08(&qword_10005DD80, &qword_100047128);
  v24 = *(*(v245 - 8) + 64);
  __chkstk_darwin(v245);
  v231 = (&v227 - v25);
  v239 = sub_100002D08(&qword_10005DD88, &qword_100047130);
  v26 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v241 = &v227 - v27;
  v266 = sub_100002D08(&qword_10005DD90, &qword_100047138);
  v28 = *(*(v266 - 8) + 64);
  __chkstk_darwin(v266);
  v246 = &v227 - v29;
  v30 = type metadata accessor for FriendInviteCardView();
  v31 = v30 - 8;
  v258 = *(v30 - 8);
  v32 = *(v258 + 64);
  __chkstk_darwin(v30);
  v259 = v33;
  v260 = &v227 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_100002D08(&qword_10005DD98, &qword_100047140);
  v34 = *(*(v240 - 8) + 64);
  __chkstk_darwin(v240);
  v230 = (&v227 - v35);
  v261 = sub_100002D08(&qword_10005DDA0, &qword_100047148);
  v36 = *(*(v261 - 8) + 64);
  __chkstk_darwin(v261);
  v251 = (&v227 - v37);
  v281 = sub_100002D08(&qword_10005DDA8, &qword_100047150);
  v38 = *(*(v281 - 8) + 64);
  __chkstk_darwin(v281);
  v283 = &v227 - v39;
  v272 = sub_100002D08(&qword_10005DDB0, &qword_100047158);
  v40 = *(*(v272 - 8) + 64);
  __chkstk_darwin(v272);
  v274 = &v227 - v41;
  v262 = sub_100002D08(&qword_10005DDB8, &qword_100047160);
  v42 = *(*(v262 - 8) + 64);
  __chkstk_darwin(v262);
  v264 = &v227 - v43;
  v236 = sub_100002D08(&qword_10005DDC0, &qword_100047168);
  v44 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v237 = &v227 - v45;
  v263 = sub_100002D08(&qword_10005DDC8, &qword_100047170);
  v46 = *(*(v263 - 8) + 64);
  __chkstk_darwin(v263);
  v238 = &v227 - v47;
  v273 = sub_100002D08(&qword_10005DDD0, &qword_100047178);
  v48 = *(*(v273 - 8) + 64);
  __chkstk_darwin(v273);
  v265 = &v227 - v49;
  v282 = sub_100002D08(&qword_10005DDD8, &qword_100047180);
  v50 = *(*(v282 - 8) + 64);
  __chkstk_darwin(v282);
  v276 = &v227 - v51;
  v235 = sub_100002D08(&qword_10005DDE0, &qword_100047188);
  v52 = *(*(v235 - 8) + 64);
  __chkstk_darwin(v235);
  v54 = &v227 - v53;
  v234 = sub_100002D08(&qword_10005DDE8, &qword_100047190);
  v229 = *(v234 - 8);
  v55 = *(v229 + 64);
  v56 = __chkstk_darwin(v234);
  v58 = &v227 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v60 = &v227 - v59;
  v61 = sub_100002D08(&qword_10005DDF0, &qword_100047198);
  v62 = *(*(v61 - 8) + 64);
  v63 = __chkstk_darwin(v61 - 8);
  v279 = &v227 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v284 = &v227 - v65;
  v280 = sub_100041690();
  v292 = 1;
  sub_10003710C(&v289);
  v299 = *&v290[80];
  v300[0] = *&v290[96];
  *(v300 + 10) = *&v290[106];
  v295 = *&v290[16];
  v296 = *&v290[32];
  v298 = *&v290[64];
  v297 = *&v290[48];
  v293 = v289;
  v294 = *v290;
  v301[6] = *&v290[80];
  v302[0] = *&v290[96];
  *(v302 + 10) = *&v290[106];
  v301[2] = *&v290[16];
  v301[3] = *&v290[32];
  v301[4] = *&v290[48];
  v301[5] = *&v290[64];
  v301[0] = v289;
  v301[1] = *v290;
  sub_100021B9C(&v293, &v287, &qword_10005DDF8, &qword_1000471A0);
  sub_10000E9F0(v301, &qword_10005DDF8, &qword_1000471A0);
  *&v291[87] = v298;
  v66 = v277;
  *&v291[103] = v299;
  *&v291[119] = v300[0];
  *&v291[129] = *(v300 + 10);
  *&v291[23] = v294;
  *&v291[39] = v295;
  *&v291[55] = v296;
  *&v291[71] = v297;
  *&v291[7] = v293;
  v67 = v292;
  v68 = *(v277 + *(v31 + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  v69 = v289;
  v278 = v67;
  if (v290[0] <= 4u)
  {
    v70 = *(&v289 + 1);
    if (v290[0] <= 1u)
    {
      v228 = v289;
      if (v290[0])
      {
        v271 = sub_10003CE18(v289);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100041450();

        v194 = v289;
        v195 = v290[0];
        v270 = sub_10003A4E4(v289, *(&v289 + 1), v290[0]);
        v197 = v196;
        sub_1000334F0(v194, *(&v194 + 1), v195);
        v199 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
        v198 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
        v200 = v260;
        sub_100038234(v66, v260);
        v201 = (*(v258 + 80) + 24) & ~*(v258 + 80);
        v202 = swift_allocObject();
        *(v202 + 16) = v70;
        sub_1000383BC(v200, v202 + v201);
        KeyPath = swift_getKeyPath();
        v204 = v230;
        *v230 = KeyPath;
        sub_100002D08(&qword_10005D358, &qword_100047220);
        swift_storeEnumTagMultiPayload();
        v205 = v240;
        v206 = v204 + *(v240 + 36);
        *v206 = v228;
        *(v206 + 8) = 0;
        v207 = v271;
        *(v206 + 16) = v270;
        *(v206 + 24) = v197;
        *(v206 + 32) = v207;
        *(v206 + 40) = v199;
        *(v206 + 48) = v198;
        *(v206 + 56) = sub_10003894C;
        *(v206 + 64) = v68;
        *(v206 + 72) = sub_100038950;
        *(v206 + 80) = v68;
        v208 = (v204 + *(v205 + 40));
        *v208 = sub_100038774;
        v208[1] = v202;
        sub_100021B9C(v204, v241, &qword_10005DD98, &qword_100047140);
        swift_storeEnumTagMultiPayload();
        sub_100003214(&qword_10005DE40, &qword_10005DD98, &qword_100047140);
        sub_100003214(&qword_10005DE48, &qword_10005DD80, &qword_100047128);
        swift_retain_n();

        v209 = v70;
        v210 = v246;
        sub_1000416D0();
        sub_100021B9C(v210, v264, &qword_10005DD90, &qword_100047138);
        swift_storeEnumTagMultiPayload();
        sub_100037D98();
        sub_100037E7C();
        v211 = v265;
        sub_1000416D0();
        sub_10000E9F0(v210, &qword_10005DD90, &qword_100047138);
        sub_100021B9C(v211, v274, &qword_10005DDD0, &qword_100047178);
        swift_storeEnumTagMultiPayload();
        sub_100037D0C();
        sub_100037F5C();
        v212 = v276;
        sub_1000416D0();
        sub_10000E9F0(v211, &qword_10005DDD0, &qword_100047178);
        sub_100021B9C(v212, v283, &qword_10005DDD8, &qword_100047180);
        swift_storeEnumTagMultiPayload();
        sub_100037C80();
        sub_100038178();
        v121 = v284;
        sub_1000416D0();

        sub_10000E9F0(v212, &qword_10005DDD8, &qword_100047180);
        v122 = v204;
        v123 = &qword_10005DD98;
        v124 = &qword_100047140;
      }

      else
      {
        v277 = sub_10003CE18(v289);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100041450();

        v106 = v289;
        v107 = v290[0];
        v108 = sub_10003A4E4(v289, *(&v289 + 1), v290[0]);
        v110 = v109;
        sub_1000334F0(v106, *(&v106 + 1), v107);
        v111 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
        v112 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
        v113 = swift_getKeyPath();
        v114 = v251;
        *v251 = v113;
        sub_100002D08(&qword_10005D358, &qword_100047220);
        swift_storeEnumTagMultiPayload();
        v115 = v261;
        v116 = v114 + *(v261 + 36);
        *v116 = v228;
        *(v116 + 8) = 0;
        *(v116 + 16) = v108;
        *(v116 + 24) = v110;
        *(v116 + 32) = v277;
        *(v116 + 40) = v111;
        *(v116 + 48) = v112;
        *(v116 + 56) = sub_10003894C;
        *(v116 + 64) = v68;
        *(v116 + 72) = sub_100038950;
        *(v116 + 80) = v68;
        v117 = (v114 + *(v115 + 40));
        *v117 = nullsub_1;
        v117[1] = 0;
        sub_100021B9C(v114, v237, &qword_10005DDA0, &qword_100047148);
        swift_storeEnumTagMultiPayload();
        sub_100003214(&qword_10005DE28, &qword_10005DDE0, &qword_100047188);
        sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148);
        swift_retain_n();

        v118 = v238;
        sub_1000416D0();
        sub_100021B9C(v118, v264, &qword_10005DDC8, &qword_100047170);
        swift_storeEnumTagMultiPayload();
        sub_100037D98();
        sub_100037E7C();
        v119 = v265;
        sub_1000416D0();
        sub_10000E9F0(v118, &qword_10005DDC8, &qword_100047170);
        sub_100021B9C(v119, v274, &qword_10005DDD0, &qword_100047178);
        swift_storeEnumTagMultiPayload();
        sub_100037D0C();
        sub_100037F5C();
        v120 = v276;
        sub_1000416D0();
        sub_10000E9F0(v119, &qword_10005DDD0, &qword_100047178);
        sub_100021B9C(v120, v283, &qword_10005DDD8, &qword_100047180);
        swift_storeEnumTagMultiPayload();
        sub_100037C80();
        sub_100038178();
        v121 = v284;
        sub_1000416D0();
        sub_10000E9F0(v120, &qword_10005DDD8, &qword_100047180);
        v122 = v114;
        v123 = &qword_10005DDA0;
        v124 = &qword_100047148;
      }

      goto LABEL_20;
    }

    if (v290[0] == 2)
    {
      v271 = sub_10003CE18(v289);
      swift_getKeyPath();
      swift_getKeyPath();
      v228 = v69;
      sub_100041450();

      v140 = *(&v289 + 1);
      v139 = v289;
      v141 = v290[0];
      v142 = sub_10003A4E4(v289, *(&v289 + 1), v290[0]);
      v144 = v143;
      sub_1000334F0(v139, v140, v141);
      v146 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
      v145 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
      v147 = v260;
      sub_100038234(v66, v260);
      v148 = (*(v258 + 80) + 24) & ~*(v258 + 80);
      v149 = swift_allocObject();
      *(v149 + 16) = v70;
      sub_1000383BC(v147, v149 + v148);
      v150 = swift_getKeyPath();
      v83 = v231;
      *v231 = v150;
      sub_100002D08(&qword_10005D358, &qword_100047220);
      swift_storeEnumTagMultiPayload();
      v151 = v245;
      v152 = v83 + *(v245 + 36);
      *v152 = v228;
      *(v152 + 8) = 0;
      *(v152 + 16) = v142;
      *(v152 + 24) = v144;
      *(v152 + 32) = v271;
      *(v152 + 40) = v146;
      *(v152 + 48) = v145;
      *(v152 + 56) = sub_10003894C;
      *(v152 + 64) = v68;
      *(v152 + 72) = sub_100038950;
      *(v152 + 80) = v68;
      v153 = (v83 + *(v151 + 40));
      *v153 = sub_1000385B4;
      v153[1] = v149;
      v87 = &qword_10005DD80;
      v88 = &qword_100047128;
      sub_100021B9C(v83, v241, &qword_10005DD80, &qword_100047128);
      swift_storeEnumTagMultiPayload();
      sub_100003214(&qword_10005DE40, &qword_10005DD98, &qword_100047140);
      sub_100003214(&qword_10005DE48, &qword_10005DD80, &qword_100047128);
      swift_retain_n();

      v154 = v246;
      sub_1000416D0();
      sub_100021B9C(v154, v264, &qword_10005DD90, &qword_100047138);
      swift_storeEnumTagMultiPayload();
      sub_100037D98();
      sub_100037E7C();
      v155 = v265;
      sub_1000416D0();
      sub_10000E9F0(v154, &qword_10005DD90, &qword_100047138);
      v156 = &qword_10005DDD0;
      v157 = &qword_100047178;
      sub_100021B9C(v155, v274, &qword_10005DDD0, &qword_100047178);
    }

    else
    {
      if (v290[0] == 3)
      {
        v266 = sub_10003CE18(v289);
        swift_getKeyPath();
        swift_getKeyPath();
        v71 = v69;
        sub_100041450();

        v72 = v289;
        v73 = v290[0];
        v74 = sub_10003A4E4(v289, *(&v289 + 1), v290[0]);
        v76 = v75;
        sub_1000334F0(v72, *(&v72 + 1), v73);
        v78 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
        v77 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
        v79 = v260;
        sub_100038234(v66, v260);
        v80 = (*(v258 + 80) + 16) & ~*(v258 + 80);
        v81 = swift_allocObject();
        sub_1000383BC(v79, v81 + v80);
        v82 = swift_getKeyPath();
        v83 = v232;
        *v232 = v82;
        sub_100002D08(&qword_10005D358, &qword_100047220);
        swift_storeEnumTagMultiPayload();
        v84 = v244;
        v85 = v83 + *(v244 + 36);
        *v85 = v71;
        *(v85 + 8) = 257;
        *(v85 + 16) = v74;
        *(v85 + 24) = v76;
        *(v85 + 32) = v266;
        *(v85 + 40) = v78;
        *(v85 + 48) = v77;
        *(v85 + 56) = sub_10003894C;
        *(v85 + 64) = v68;
        *(v85 + 72) = sub_100038950;
        *(v85 + 80) = v68;
        v86 = (v83 + *(v84 + 40));
        *v86 = sub_100038420;
        v86[1] = v81;
        v87 = &qword_10005DD78;
        v88 = &qword_100047120;
        sub_100021B9C(v83, v249, &qword_10005DD78, &qword_100047120);
      }

      else
      {
        v277 = sub_10003CE18(v289);
        swift_getKeyPath();
        swift_getKeyPath();
        v162 = v69;
        sub_100041450();

        v164 = *(&v289 + 1);
        v163 = v289;
        v165 = v290[0];
        v166 = sub_10003A4E4(v289, *(&v289 + 1), v290[0]);
        v168 = v167;
        sub_1000334F0(v163, v164, v165);
        v169 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
        v170 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
        v171 = swift_getKeyPath();
        v83 = v251;
        *v251 = v171;
        sub_100002D08(&qword_10005D358, &qword_100047220);
        swift_storeEnumTagMultiPayload();
        v172 = v261;
        v173 = v83 + *(v261 + 36);
        *v173 = v162;
        *(v173 + 8) = 257;
        *(v173 + 16) = v166;
        *(v173 + 24) = v168;
        *(v173 + 32) = v277;
        *(v173 + 40) = v169;
        *(v173 + 48) = v170;
        *(v173 + 56) = sub_10003894C;
        *(v173 + 64) = v68;
        *(v173 + 72) = sub_100038950;
        *(v173 + 80) = v68;
        v174 = (v83 + *(v172 + 40));
        *v174 = nullsub_1;
        v174[1] = 0;
        v87 = &qword_10005DDA0;
        v88 = &qword_100047148;
        sub_100021B9C(v83, v249, &qword_10005DDA0, &qword_100047148);
      }

      swift_storeEnumTagMultiPayload();
      sub_100003214(&qword_10005DE60, &qword_10005DD78, &qword_100047120);
      sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148);
      swift_retain_n();

      v89 = v254;
      sub_1000416D0();
      sub_100021B9C(v89, v269, &qword_10005DD68, &qword_100047110);
      swift_storeEnumTagMultiPayload();
      sub_100037FE8();
      sub_1000380C8();
      v155 = v271;
      sub_1000416D0();
      sub_10000E9F0(v89, &qword_10005DD68, &qword_100047110);
      v156 = &qword_10005DD70;
      v157 = &qword_100047118;
      sub_100021B9C(v155, v274, &qword_10005DD70, &qword_100047118);
    }

    swift_storeEnumTagMultiPayload();
    sub_100037D0C();
    sub_100037F5C();
    v103 = v276;
    sub_1000416D0();
    sub_10000E9F0(v155, v156, v157);
    v104 = &qword_10005DDD8;
    v105 = &qword_100047180;
    sub_100021B9C(v103, v283, &qword_10005DDD8, &qword_100047180);
    goto LABEL_19;
  }

  if (v290[0] > 6u)
  {
    if (v290[0] == 7)
    {
      v158 = sub_100013908(v289);
      v159 = v248;
      *v248 = v158;
      v159[1] = v160;
      *(v159 + 16) = v69 == 0;
      v159[3] = sub_100038230;
      v159[4] = v68;
      swift_storeEnumTagMultiPayload();
      sub_100037C2C();
      sub_100003214(&qword_10005DE08, &qword_10005DD28, &qword_1000470D0);
      swift_retain_n();

      v161 = v255;
      sub_1000416D0();
      sub_100021B9C(v161, v283, &qword_10005DD38, &qword_1000470E0);
      swift_storeEnumTagMultiPayload();
      sub_100037C80();
      sub_100038178();
      v121 = v284;
      sub_1000416D0();

      v122 = v161;
      v123 = &qword_10005DD38;
      v124 = &qword_1000470E0;
LABEL_20:
      sub_10000E9F0(v122, v123, v124);
LABEL_21:
      v125 = v286;
      goto LABEL_22;
    }

    if (v290[0] != 8)
    {
      sub_1000414F0();
      v185 = v229;
      v186 = *(v229 + 16);
      v187 = v234;
      v186(v58, v60, v234);
      *v54 = 0;
      v54[8] = 1;
      v188 = sub_100002D08(&qword_10005DE90, &qword_100047238);
      v186(&v54[*(v188 + 48)], v58, v187);
      v189 = &v54[*(v188 + 64)];
      *v189 = 0;
      v189[8] = 1;
      v277 = *(v185 + 8);
      v277(v58, v187);
      sub_100021B9C(v54, v237, &qword_10005DDE0, &qword_100047188);
      swift_storeEnumTagMultiPayload();
      sub_100003214(&qword_10005DE28, &qword_10005DDE0, &qword_100047188);
      sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148);
      v190 = v238;
      sub_1000416D0();
      sub_100021B9C(v190, v264, &qword_10005DDC8, &qword_100047170);
      swift_storeEnumTagMultiPayload();
      sub_100037D98();
      sub_100037E7C();
      v191 = v265;
      sub_1000416D0();
      sub_10000E9F0(v190, &qword_10005DDC8, &qword_100047170);
      sub_100021B9C(v191, v274, &qword_10005DDD0, &qword_100047178);
      swift_storeEnumTagMultiPayload();
      sub_100037D0C();
      sub_100037F5C();
      v192 = v276;
      sub_1000416D0();
      sub_10000E9F0(v191, &qword_10005DDD0, &qword_100047178);
      sub_100021B9C(v192, v283, &qword_10005DDD8, &qword_100047180);
      swift_storeEnumTagMultiPayload();
      sub_100037C80();
      sub_100038178();
      v193 = v284;
      sub_1000416D0();
      sub_10000E9F0(v192, &qword_10005DDD8, &qword_100047180);
      v121 = v193;
      sub_10000E9F0(v54, &qword_10005DDE0, &qword_100047188);
      v277(v60, v234);
      goto LABEL_21;
    }

    v277 = sub_10003CE18(v289);
    swift_getKeyPath();
    swift_getKeyPath();
    v90 = v69;
    sub_100041450();

    v92 = *(&v289 + 1);
    v91 = v289;
    v93 = v290[0];
    v94 = sub_10003A4E4(v289, *(&v289 + 1), v290[0]);
    v96 = v95;
    sub_1000334F0(v91, v92, v93);
    v97 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
    v98 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
    v99 = swift_getKeyPath();
    v83 = v233;
    *v233 = v99;
    sub_100002D08(&qword_10005D358, &qword_100047220);
    swift_storeEnumTagMultiPayload();
    v100 = v252;
    v101 = v83 + *(v252 + 36);
    *v101 = v90;
    *(v101 + 8) = 1;
    *(v101 + 16) = v94;
    *(v101 + 24) = v96;
    *(v101 + 32) = v277;
    *(v101 + 40) = v97;
    *(v101 + 48) = v98;
    *(v101 + 56) = sub_100037B2C;
    *(v101 + 64) = v68;
    *(v101 + 72) = sub_100037B34;
    *(v101 + 80) = v68;
    v102 = (v83 + *(v100 + 40));
    *v102 = nullsub_1;
    v102[1] = 0;
    v87 = &qword_10005DD28;
    v88 = &qword_1000470D0;
    sub_100021B9C(v83, v248, &qword_10005DD28, &qword_1000470D0);
    swift_storeEnumTagMultiPayload();
    sub_100037C2C();
    sub_100003214(&qword_10005DE08, &qword_10005DD28, &qword_1000470D0);
    swift_retain_n();

    v103 = v255;
    sub_1000416D0();
    v104 = &qword_10005DD38;
    v105 = &qword_1000470E0;
    sub_100021B9C(v103, v283, &qword_10005DD38, &qword_1000470E0);
LABEL_19:
    swift_storeEnumTagMultiPayload();
    sub_100037C80();
    sub_100038178();
    v121 = v284;
    sub_1000416D0();
    sub_10000E9F0(v103, v104, v105);
    v122 = v83;
    v123 = v87;
    v124 = v88;
    goto LABEL_20;
  }

  v125 = v286;
  v228 = v289;
  if (v290[0] == 5)
  {
    v277 = sub_10003CE18(v289);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    v127 = *(&v289 + 1);
    v126 = v289;
    v128 = v290[0];
    v129 = sub_10003A4E4(v289, *(&v289 + 1), v290[0]);
    v131 = v130;
    sub_1000334F0(v126, v127, v128);
    v132 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
    v133 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
    v134 = swift_getKeyPath();
    v135 = v257;
    *v257 = v134;
    sub_100002D08(&qword_10005D358, &qword_100047220);
    swift_storeEnumTagMultiPayload();
    v136 = v250;
    v137 = v135 + *(v250 + 36);
    *v137 = v228;
    *(v137 + 8) = 257;
    *(v137 + 16) = v129;
    *(v137 + 24) = v131;
    *(v137 + 32) = v277;
    *(v137 + 40) = v132;
    *(v137 + 48) = v133;
    *(v137 + 56) = sub_10003894C;
    *(v137 + 64) = v68;
    *(v137 + 72) = sub_100038950;
    *(v137 + 80) = v68;
    v138 = (v135 + *(v136 + 40));
    *v138 = sub_100036B74;
  }

  else
  {
    v277 = sub_10003CE18(v289);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    v214 = *(&v289 + 1);
    v213 = v289;
    v215 = v290[0];
    v216 = sub_10003A4E4(v289, *(&v289 + 1), v290[0]);
    v218 = v217;
    sub_1000334F0(v213, v214, v215);
    v219 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
    v220 = *(v68 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
    v221 = swift_getKeyPath();
    v135 = v257;
    *v257 = v221;
    sub_100002D08(&qword_10005D358, &qword_100047220);
    swift_storeEnumTagMultiPayload();
    v222 = v250;
    v223 = v135 + *(v250 + 36);
    *v223 = v228;
    *(v223 + 8) = 257;
    *(v223 + 16) = v216;
    *(v223 + 24) = v218;
    *(v223 + 32) = v277;
    *(v223 + 40) = v219;
    *(v223 + 48) = v220;
    *(v223 + 56) = sub_10003894C;
    *(v223 + 64) = v68;
    *(v223 + 72) = sub_100038950;
    *(v223 + 80) = v68;
    v138 = (v135 + *(v222 + 40));
    *v138 = sub_100036B80;
  }

  v138[1] = 0;
  sub_100021B9C(v135, v253, &qword_10005DD50, &qword_1000470F8);
  swift_storeEnumTagMultiPayload();
  sub_100003214(&qword_10005DE70, &qword_10005DD50, &qword_1000470F8);
  swift_retain_n();

  v224 = v256;
  sub_1000416D0();
  sub_100021B9C(v224, v269, &qword_10005DD48, &qword_1000470F0);
  swift_storeEnumTagMultiPayload();
  sub_100037FE8();
  sub_1000380C8();
  v225 = v271;
  sub_1000416D0();
  sub_10000E9F0(v224, &qword_10005DD48, &qword_1000470F0);
  sub_100021B9C(v225, v274, &qword_10005DD70, &qword_100047118);
  swift_storeEnumTagMultiPayload();
  sub_100037D0C();
  sub_100037F5C();
  v226 = v276;
  sub_1000416D0();
  sub_10000E9F0(v225, &qword_10005DD70, &qword_100047118);
  sub_100021B9C(v226, v283, &qword_10005DDD8, &qword_100047180);
  swift_storeEnumTagMultiPayload();
  sub_100037C80();
  sub_100038178();
  v121 = v284;
  sub_1000416D0();
  sub_10000E9F0(v226, &qword_10005DDD8, &qword_100047180);
  sub_10000E9F0(v135, &qword_10005DD50, &qword_1000470F8);
LABEL_22:
  v175 = v279;
  sub_100021B9C(v121, v279, &qword_10005DDF0, &qword_100047198);
  v176 = v280;
  v287 = v280;
  v177 = v278;
  v288[0] = v278;
  *&v288[113] = *&v291[112];
  *&v288[97] = *&v291[96];
  *&v288[129] = *&v291[128];
  v288[145] = v291[144];
  *&v288[33] = *&v291[32];
  *&v288[49] = *&v291[48];
  *&v288[65] = *&v291[64];
  *&v288[81] = *&v291[80];
  *&v288[1] = *v291;
  *&v288[17] = *&v291[16];
  v178 = *&v288[128];
  *(v125 + 128) = *&v288[112];
  *(v125 + 144) = v178;
  *(v125 + 160) = *&v288[144];
  v179 = *&v288[64];
  *(v125 + 64) = *&v288[48];
  *(v125 + 80) = v179;
  v180 = *&v288[96];
  *(v125 + 96) = *&v288[80];
  *(v125 + 112) = v180;
  v181 = *v288;
  *v125 = v287;
  *(v125 + 16) = v181;
  v182 = *&v288[32];
  *(v125 + 32) = *&v288[16];
  *(v125 + 48) = v182;
  v183 = sub_100002D08(&qword_10005DE80, &qword_100047228);
  sub_100021B9C(v175, v125 + *(v183 + 48), &qword_10005DDF0, &qword_100047198);
  sub_100021B9C(&v287, &v289, &qword_10005DE88, &qword_100047230);
  sub_10000E9F0(v121, &qword_10005DDF0, &qword_100047198);
  sub_10000E9F0(v175, &qword_10005DDF0, &qword_100047198);
  *&v290[97] = *&v291[96];
  *&v290[113] = *&v291[112];
  *&v290[129] = *&v291[128];
  *&v290[33] = *&v291[32];
  *&v290[49] = *&v291[48];
  *&v290[65] = *&v291[64];
  *&v290[81] = *&v291[80];
  *&v290[1] = *v291;
  v289 = v176;
  v290[0] = v177;
  v290[145] = v291[144];
  *&v290[17] = *&v291[16];
  return sub_10000E9F0(&v289, &qword_10005DE88, &qword_100047230);
}

id sub_1000369E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + *(type metadata accessor for FriendInviteCardView() + 20) + 8);
  *a3 = a1;
  a3[1] = sub_1000387E8;
  a3[2] = v4;

  return a1;
}

int *sub_100036A60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FriendInviteCardView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_100041450();

  *a2 = swift_getKeyPath();
  sub_100002D08(&qword_10005D358, &qword_100047220);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for FriendInviteButtonStackView();
  v5 = (a2 + result[5]);
  *v5 = sub_1000387F0;
  v5[1] = v3;
  v6 = (a2 + result[6]);
  *v6 = sub_1000387F4;
  v6[1] = v3;
  *(a2 + result[7]) = v7;
  return result;
}

uint64_t sub_100036B88@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a2;
  v29 = a1;
  v30 = a3;
  v3 = sub_100002D08(&qword_10005DCF0, &qword_1000470A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (v28 - v5);
  v7 = sub_100002D08(&qword_10005DD10, &qword_1000470B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v28 - v9;
  v11 = sub_100002D08(&qword_10005DCE0, &qword_100047098);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v28 - v13;
  v15 = sub_100041310();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v15);
  v20 = sub_100041300();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    *v14 = sub_100041690();
    *(v14 + 1) = 0x4010000000000000;
    v14[16] = 0;
    v21 = &v14[*(sub_100002D08(&qword_10005DD20, &qword_1000470C8) + 44)];
    v29();
    v22 = &qword_10005DCE0;
    v23 = &qword_100047098;
    sub_100021B9C(v14, v10, &qword_10005DCE0, &qword_100047098);
    swift_storeEnumTagMultiPayload();
    sub_100003214(&qword_10005DCD8, &qword_10005DCE0, &qword_100047098);
    sub_100003214(&qword_10005DCE8, &qword_10005DCF0, &qword_1000470A0);
    sub_1000416D0();
    v24 = v14;
  }

  else
  {
    *v6 = sub_1000419D0();
    v6[1] = v25;
    v26 = v6 + *(sub_100002D08(&qword_10005DD18, &qword_1000470C0) + 44);
    v29();
    v22 = &qword_10005DCF0;
    v23 = &qword_1000470A0;
    sub_100021B9C(v6, v10, &qword_10005DCF0, &qword_1000470A0);
    swift_storeEnumTagMultiPayload();
    sub_100003214(&qword_10005DCD8, &qword_10005DCE0, &qword_100047098);
    sub_100003214(&qword_10005DCE8, &qword_10005DCF0, &qword_1000470A0);
    sub_1000416D0();
    v24 = v6;
  }

  return sub_10000E9F0(v24, v22, v23);
}

id sub_100036F6C()
{
  v0 = sub_1000414D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  if (sub_1000419C0())
  {
    v8 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100033C98(v7);
    (*(v1 + 104))(v5, enum case for ColorScheme.dark(_:), v0);
    v9 = sub_1000414C0();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);
    v11 = objc_opt_self();
    if (v9)
    {
      v8 = [v11 tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      v8 = [v11 systemGray6Color];
    }
  }

  return v8;
}

uint64_t sub_10003710C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100041310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100041630();
  LOBYTE(v22[0]) = 1;
  sub_1000373D4(&v24);
  v45 = v28;
  v46 = v29;
  v47 = v30[0];
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v48[0] = v24;
  v48[1] = v25;
  v48[2] = v26;
  v48[3] = v27;
  v48[4] = v28;
  v48[5] = v29;
  v49 = v30[0];
  sub_100021B9C(&v41, v31, &qword_10005DE98, &qword_100047288);
  sub_10000E9F0(v48, &qword_10005DE98, &qword_100047288);
  *&v40[55] = v44;
  *&v40[71] = v45;
  *&v40[87] = v46;
  *&v40[7] = v41;
  *&v40[23] = v42;
  v40[103] = v47;
  *&v40[39] = v43;
  v8 = v22[0];
  (*(v3 + 104))(v6, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v2);
  v9 = sub_100041300();
  (*(v3 + 8))(v6, v2);
  v10 = *&v40[96];
  *(&v23[6] + 1) = *&v40[96];
  v22[0] = v7;
  v22[1] = 0;
  LOBYTE(v23[0]) = v8;
  v11 = *&v40[64];
  *(&v23[5] + 1) = *&v40[80];
  v12 = *&v40[48];
  *(&v23[4] + 1) = *&v40[64];
  v13 = *&v40[32];
  *(&v23[3] + 1) = *&v40[48];
  v14 = *v40;
  *(&v23[1] + 1) = *&v40[16];
  v15 = *&v40[16];
  *(v23 + 1) = *v40;
  *(&v23[2] + 1) = *&v40[32];
  v28 = v23[3];
  v29 = v23[4];
  v30[0] = v23[5];
  *(v30 + 9) = *(&v23[5] + 9);
  v24 = v7;
  v25 = v23[0];
  v26 = v23[1];
  v27 = v23[2];
  v16 = v23[2];
  *(a1 + 32) = v23[1];
  *(a1 + 48) = v16;
  v17 = v25;
  *a1 = v24;
  *(a1 + 16) = v17;
  v18 = v30[1];
  *(a1 + 96) = v30[0];
  *(a1 + 112) = v18;
  v19 = v29;
  *(a1 + 64) = v28;
  *(a1 + 80) = v19;
  v35 = v13;
  v21[127] = v9 & 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = (v9 & 1) == 0;
  *(a1 + 137) = v9 & 1;
  v31[0] = v7;
  v31[1] = 0;
  v32 = v8;
  v34 = v15;
  v33 = v14;
  v39 = v10;
  v38 = *&v40[80];
  v37 = v11;
  v36 = v12;
  sub_100021B9C(v22, v21, &qword_10005DEA0, &qword_100047290);
  return sub_10000E9F0(v31, &qword_10005DEA0, &qword_100047290);
}

void sub_1000373D4(uint64_t a1@<X8>)
{
  v2 = sub_100041310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100041940();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedTheme];
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v12 eventIconImage];

  if (!v14)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_100041920();
  (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v7);
  v15 = sub_100041950();

  (*(v8 + 8))(v11, v7);
  sub_1000419D0();
  sub_100041500();
  v45 = v53;
  v46 = v51;
  v43 = v54;
  v44 = v52;
  v41 = v55;
  v42 = v56;
  (*(v3 + 104))(v6, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v2);
  v16 = sub_100041300();
  (*(v3 + 8))(v6, v2);
  if (v16)
  {
    sub_1000413B0();
    v47 = sub_100041350();
    v48 = v17;
    sub_1000024FC();
    v18 = sub_100041860();
    v20 = v19;
    v22 = v21;
    LODWORD(v47) = sub_100041720();
    v23 = sub_100041830();
    v25 = v24;
    v27 = v26;
    sub_100002550(v18, v20, v22 & 1);

    sub_100041800();
    sub_1000417B0();

    v28 = sub_100041840();
    v30 = v29;
    v40 = v15;
    v32 = v31;
    v34 = v33;

    sub_100002550(v23, v25, v27 & 1);

    v35 = v32 & 1;
    v15 = v40;
    sub_100011D44(v28, v30, v35);
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v35 = 0;
    v34 = 0;
  }

  LOBYTE(v47) = v44;
  v50 = v43;

  sub_100038800(v28, v30, v35, v34);
  sub_100038844(v28, v30, v35, v34);
  v49 = 1;
  v36 = v47;
  v37 = v50;
  v38 = v46;
  *a1 = v15;
  *(a1 + 8) = v38;
  *(a1 + 16) = v36;
  *(a1 + 24) = v45;
  *(a1 + 32) = v37;
  v39 = v42;
  *(a1 + 40) = v41;
  *(a1 + 48) = v39;
  *(a1 + 56) = v28;
  *(a1 + 64) = v30;
  *(a1 + 72) = v35;
  *(a1 + 80) = v34;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  sub_100038844(v28, v30, v35, v34);
}

uint64_t sub_100037830(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100037878()
{
  result = qword_10005DCA8;
  if (!qword_10005DCA8)
  {
    sub_1000025E8(&qword_10005DC80, &qword_100047070);
    sub_1000379BC(&qword_10005DCB0, &qword_10005DC98, &qword_100047088, sub_10003795C);
    sub_100003214(&qword_10005DCF8, &qword_10005DD00, &qword_1000470A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DCA8);
  }

  return result;
}

uint64_t sub_1000379BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000025E8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100037A40()
{
  result = qword_10005DCC8;
  if (!qword_10005DCC8)
  {
    sub_1000025E8(&qword_10005DCD0, &qword_100047090);
    sub_100003214(&qword_10005DCD8, &qword_10005DCE0, &qword_100047098);
    sub_100003214(&qword_10005DCE8, &qword_10005DCF0, &qword_1000470A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DCC8);
  }

  return result;
}

uint64_t sub_100037B60(uint64_t a1)
{
  v2 = sub_100041680();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100041590();
}

unint64_t sub_100037C2C()
{
  result = qword_10005DE00;
  if (!qword_10005DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE00);
  }

  return result;
}

unint64_t sub_100037C80()
{
  result = qword_10005DE10;
  if (!qword_10005DE10)
  {
    sub_1000025E8(&qword_10005DDD8, &qword_100047180);
    sub_100037D0C();
    sub_100037F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE10);
  }

  return result;
}

unint64_t sub_100037D0C()
{
  result = qword_10005DE18;
  if (!qword_10005DE18)
  {
    sub_1000025E8(&qword_10005DDD0, &qword_100047178);
    sub_100037D98();
    sub_100037E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE18);
  }

  return result;
}

unint64_t sub_100037D98()
{
  result = qword_10005DE20;
  if (!qword_10005DE20)
  {
    sub_1000025E8(&qword_10005DDC8, &qword_100047170);
    sub_100003214(&qword_10005DE28, &qword_10005DDE0, &qword_100047188);
    sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE20);
  }

  return result;
}

unint64_t sub_100037E7C()
{
  result = qword_10005DE38;
  if (!qword_10005DE38)
  {
    sub_1000025E8(&qword_10005DD90, &qword_100047138);
    sub_100003214(&qword_10005DE40, &qword_10005DD98, &qword_100047140);
    sub_100003214(&qword_10005DE48, &qword_10005DD80, &qword_100047128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE38);
  }

  return result;
}

unint64_t sub_100037F5C()
{
  result = qword_10005DE50;
  if (!qword_10005DE50)
  {
    sub_1000025E8(&qword_10005DD70, &qword_100047118);
    sub_100037FE8();
    sub_1000380C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE50);
  }

  return result;
}

unint64_t sub_100037FE8()
{
  result = qword_10005DE58;
  if (!qword_10005DE58)
  {
    sub_1000025E8(&qword_10005DD68, &qword_100047110);
    sub_100003214(&qword_10005DE60, &qword_10005DD78, &qword_100047120);
    sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE58);
  }

  return result;
}

unint64_t sub_1000380C8()
{
  result = qword_10005DE68;
  if (!qword_10005DE68)
  {
    sub_1000025E8(&qword_10005DD48, &qword_1000470F0);
    sub_100003214(&qword_10005DE70, &qword_10005DD50, &qword_1000470F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE68);
  }

  return result;
}

unint64_t sub_100038178()
{
  result = qword_10005DE78;
  if (!qword_10005DE78)
  {
    sub_1000025E8(&qword_10005DD38, &qword_1000470E0);
    sub_100037C2C();
    sub_100003214(&qword_10005DE08, &qword_10005DD28, &qword_1000470D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE78);
  }

  return result;
}

uint64_t sub_100038234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendInviteCardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038298()
{
  v1 = type metadata accessor for FriendInviteCardView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000414D0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000383BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendInviteCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *sub_100038420@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FriendInviteCardView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100036A60(v4, a1);
}

uint64_t sub_100038490()
{
  v1 = type metadata accessor for FriendInviteCardView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000414D0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000385B4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for FriendInviteCardView();
  v4 = *(v1 + *(v3 + 20) + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80)) + 8);
  *a1 = *(v1 + 16);
  a1[1] = sub_1000387EC;
  a1[2] = v4;
}

uint64_t sub_100038648()
{
  v1 = type metadata accessor for FriendInviteCardView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000414D0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100038774@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FriendInviteCardView() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000369E8(v4, v5, a1);
}

uint64_t sub_100038800(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100011D44(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100038844(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100002550(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100038888()
{
  sub_1000025E8(&qword_10005DC80, &qword_100047070);
  sub_1000025E8(&qword_10005DC78, &qword_100047068);
  sub_100037878();
  sub_100003214(&qword_10005DD08, &qword_10005DC78, &qword_100047068);
  return swift_getOpaqueTypeConformance2();
}

uint64_t Data.decompress(withAlgorithm:)()
{
  sub_100002D08(&qword_10005CFD0, &qword_1000463E0);
  sub_100041230();
  return v1;
}

uint64_t sub_100038A10()
{
  sub_100002D08(&qword_10005CFD0, &qword_1000463E0);
  sub_100041230();
  return v1;
}

const uint8_t *sub_100038A8C@<X0>(const uint8_t *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, const uint8_t **a5@<X8>)
{
  v6 = dword_100047350[a2];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a4);
LABEL_11:
    result = sub_100038B2C(COMPRESSION_STREAM_DECODE, v6, result, v8, 0, 0xC000000000000000);
    *a5 = result;
    a5[1] = v11;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v8 = HIDWORD(a3) - a3;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100038B2C(compression_stream_operation a1, compression_algorithm a2, const uint8_t *a3, int64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 && a4 < 1)
  {
    return 0;
  }

  v13 = swift_slowAlloc();
  v14 = *(v13 + 16);
  *&stream.dst_ptr = *v13;
  stream.src_ptr = v14;
  *&stream.src_size = *(v13 + 24);
  if (compression_stream_init(&stream, a1, a2) == COMPRESSION_STATUS_ERROR)
  {
LABEL_21:
    v12 = 0;
  }

  else
  {
    v15 = 0x10000;
    if (a4 < 0x10000)
    {
      v15 = a4;
    }

    if (v15 <= 64)
    {
      v16 = 64;
    }

    else
    {
      v16 = v15;
    }

    v17 = swift_slowAlloc();
    stream.dst_ptr = v17;
    stream.dst_size = v16;
    stream.src_ptr = a3;
    stream.src_size = a4;
    sub_100038EC0(a5, a6);
    while (1)
    {
      v18 = compression_stream_process(&stream, 1);
      if (v18)
      {
        break;
      }

      if (stream.dst_size)
      {
        goto LABEL_20;
      }

      if (stream.dst_ptr != v17)
      {
        sub_100041220();
      }

      stream.dst_ptr = v17;
      stream.dst_size = v16;
    }

    if (v18 != COMPRESSION_STATUS_END)
    {
LABEL_20:
      sub_10001C268(a5, a6);

      compression_stream_destroy(&stream);
      goto LABEL_21;
    }

    if (stream.dst_ptr != v17)
    {
      sub_100041220();
    }

    v12 = a5;

    compression_stream_destroy(&stream);
  }

  return v12;
}

Swift::Int Data.CompressionAlgorithm.hashValue.getter(unsigned __int8 a1)
{
  sub_100042000();
  sub_100042010(a1);
  return sub_100042020();
}

const uint8_t *sub_100038DA0@<X0>(const uint8_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, compression_stream_operation a4@<W3>, const uint8_t **a5@<X8>)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a3);
LABEL_11:
    result = sub_100038B2C(a4, COMPRESSION_ZLIB, result, v7, 0, 0xC000000000000000);
    *a5 = result;
    a5[1] = v11;
    return result;
  }

  LODWORD(v7) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v7 = v7;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_100038E5C()
{
  result = qword_10005DEA8;
  if (!qword_10005DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DEA8);
  }

  return result;
}

uint64_t sub_100038EC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_100038F5C()
{
  v0 = sub_100039898();

  return v0;
}

void sub_100038F90(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100038FEC(a3);
}

uint64_t sub_100038FEC(uint64_t a1)
{
  v2 = *(v1 + qword_10005DEB0);
  *(v1 + qword_10005DEB0) = a1;
  return _objc_release_x1();
}

id sub_100039000()
{
  v0 = sub_1000398A8();

  return v0;
}

void sub_100039034(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100039090(a3);
}

uint64_t sub_100039090(uint64_t a1)
{
  v2 = *(v1 + qword_10005DEB8);
  *(v1 + qword_10005DEB8) = a1;
  return _objc_release_x1();
}

id sub_1000390A4()
{
  v0 = sub_1000398B8();

  return v0;
}

void sub_1000390D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100039134(a3);
}

uint64_t sub_100039134(uint64_t a1)
{
  v2 = *(v1 + qword_10005DEC0);
  *(v1 + qword_10005DEC0) = a1;
  return _objc_release_x1();
}

uint64_t sub_100039148(uint64_t a1)
{
  v2 = *(v1 + qword_10005DEC8);
  *(v1 + qword_10005DEC8) = a1;
  return _objc_release_x1();
}

void sub_10003915C()
{
  v1 = *(v0 + qword_10005DEC8);
  *(v0 + qword_10005DEC8) = 0;
}

void sub_100039170(void *a1)
{
  v1 = a1;
  sub_10003915C();
}

id sub_1000391B8(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = swift_isaMask;
  *(v4 + qword_10005DEB0) = 0;
  *(v4 + qword_10005DEB8) = 0;
  *(v4 + qword_10005DEC0) = 0;
  *(v4 + qword_10005DEC8) = 0;
  v11 = *((v10 & v9) + 0x50);
  v12 = *((v10 & v9) + 0x58);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ImageCell();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000392AC(void *a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  *(v1 + qword_10005DEB0) = 0;
  *(v1 + qword_10005DEB8) = 0;
  *(v1 + qword_10005DEC0) = 0;
  *(v1 + qword_10005DEC8) = 0;
  v5 = *((v4 & v3) + 0x50);
  v6 = *((v4 & v3) + 0x58);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ImageCell();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1000393A4()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ImageCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100039414(uint64_t a1)
{
  v2 = *(a1 + qword_10005DEC8);
}

void sub_100039518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_10005DEB0);
  *(a1 + qword_10005DEB0) = a3;
  v3 = a3;
}

void sub_100039570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_10005DEB8);
  *(a1 + qword_10005DEB8) = a3;
  v3 = a3;
}

void sub_1000395C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_10005DEC0);
  *(a1 + qword_10005DEC0) = a3;
  v3 = a3;
}

id sub_100039628(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7(0);
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1000396B8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_10003974C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100039820(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100039914()
{
  type metadata accessor for MessagesViewController();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    result = [v0 parentViewController];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v2 = sub_100039914();
  }

  return v2;
}

void sub_100039A14()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v61 - v8;
  v10 = type metadata accessor for ActionViewController();
  v63.receiver = v1;
  v63.super_class = v10;
  objc_msgSendSuper2(&v63, "viewDidLoad");
  sub_1000413D0();
  v11 = sub_100041400();
  v12 = sub_100041CD0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Friend Request Card - Local player not authenticated view loaded", v13, 2u);
  }

  v14 = *(v3 + 8);
  v14(v9, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_29;
  }

  v16 = Strong;
  v17 = [Strong layer];

  [v17 setCornerRadius:9.0];
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v19 = v18;
  v20 = [v18 layer];

  [v20 setMasksToBounds:1];
  if (byte_10005C528 == 3)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = GKGameCenterUIFrameworkBundle();
      v59._countAndFlagsBits = 0xE000000000000000;
      v64._object = 0x8000000100045410;
      v64._countAndFlagsBits = 0xD000000000000013;
      v67.value._countAndFlagsBits = 0;
      v67.value._object = 0;
      v24.super.isa = v23;
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      sub_100041180(v64, v67, v24, v70, v59);

      v25 = sub_100041AF0();

      [v22 setText:v25];

      v26 = swift_unknownObjectWeakLoadStrong();
      if (v26)
      {
        v27 = v26;
        [v26 setHidden:1];

        v28 = sub_100039914();
        if (v28)
        {
          v29 = v28;
          sub_100029704();
          v31 = &v29[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
          v32 = 240.0;
LABEL_20:
          *v31 = v32;
          *(v31 + 8) = 0;
          if (v30 != v32)
          {
            [v29 requestResize];
          }

          goto LABEL_23;
        }

        goto LABEL_23;
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v33 = [objc_opt_self() shared];
  if (!v33)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = v33;
  v35 = [v33 lockedDown];

  v36 = swift_unknownObjectWeakLoadStrong();
  v37 = v36;
  v62 = v14;
  if (v35)
  {
    if (!v36)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v38 = "PEN_SETTINGS_MESSAGE";
    v39 = 0xD00000000000001BLL;
  }

  else
  {
    if (!v36)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v38 = "T@UIButton,N,W,VactionButton";
    v39 = 0xD000000000000024;
  }

  v40 = GKGameCenterUIFrameworkBundle();
  v59._countAndFlagsBits = 0xE000000000000000;
  v65._object = (v38 | 0x8000000000000000);
  v65._countAndFlagsBits = v39;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v41.super.isa = v40;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  sub_100041180(v65, v68, v41, v71, v59);

  v42 = sub_100041AF0();

  [v37 setText:v42];

  v43 = swift_unknownObjectWeakLoadStrong();
  if (!v43)
  {
    goto LABEL_33;
  }

  v44 = v43;
  v45 = GKGameCenterUIFrameworkBundle();
  v60._countAndFlagsBits = 0xE000000000000000;
  v66._countAndFlagsBits = 0x53474E4954544553;
  v66._object = 0xEF4E4F545455425FLL;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v46.super.isa = v45;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  sub_100041180(v66, v69, v46, v72, v60);

  v47 = sub_100041AF0();

  [v44 setTitle:v47 forState:0];

  v48 = swift_unknownObjectWeakLoadStrong();
  if (!v48)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v49 = v48;
  [v48 addTarget:v1 action:"openSettings" forControlEvents:64];

  v50 = sub_100039914();
  v14 = v62;
  if (v50)
  {
    v29 = v50;
    sub_100029704();
    v31 = &v29[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
    v32 = 280.0;
    goto LABEL_20;
  }

LABEL_23:
  v51 = sub_100039914();
  if (v51)
  {
    v52 = v51;
    sub_1000413E0();
    v53 = v52;
    v54 = sub_100041400();
    v55 = sub_100041CC0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v52;
      v58 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "%@ user interface is ready for display", v56, 0xCu);
      sub_10003A3CC(v57);
    }

    v14(v7, v2);
    [v53 setReadyForDisplay];
  }
}

id sub_10003A328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003A3CC(uint64_t a1)
{
  v2 = sub_100002D08(&unk_10005CA00, &unk_100045CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003A434(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_10000EA78(0, &qword_10005CA38, GKPlayer_ptr);
  v6 = sub_100041C20();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_10003A4E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = sub_100041310();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 4u)
  {
    if (a3 < 3u)
    {
      (*(v5 + 104))(v8, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v4);
      v9 = sub_100041300();
      (*(v5 + 8))(v8, v4);
      if (v9)
      {
        sub_1000413B0();
        return sub_100041380();
      }

      v14 = "FRIEND_REQUEST_CARD_SUBTITLE";
      v15 = GKGameCenterUIFrameworkBundle();
      v16._countAndFlagsBits = 0xD000000000000023;
LABEL_15:
      v19._countAndFlagsBits = 0xE000000000000000;
      v16._object = (v14 | 0x8000000000000000);
      goto LABEL_16;
    }

    if (a3 != 3)
    {
      v11 = "N_INVITE_ACCEPTED";
      v12 = GKGameCenterUIFrameworkBundle();
      goto LABEL_13;
    }

LABEL_10:
    (*(v5 + 104))(v8, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v4);
    v13 = sub_100041300();
    (*(v5 + 8))(v8, v4);
    if (v13)
    {
      sub_1000413B0();
      return sub_100041370();
    }

    v14 = "N_ALREADY_FRIENDS";
    v15 = GKGameCenterUIFrameworkBundle();
    v16._countAndFlagsBits = 0xD00000000000001CLL;
    goto LABEL_15;
  }

  result = 0;
  if (a3 - 7 < 3)
  {
    return result;
  }

  if (a3 != 5)
  {
    goto LABEL_10;
  }

  v11 = "GROUP_INVITE_VIEW_GC_FRIENDS";
  v12 = GKGameCenterUIFrameworkBundle();
LABEL_13:
  v15 = v12;
  v19._countAndFlagsBits = 0xE000000000000000;
  v16._object = (v11 | 0x8000000000000000);
  v16._countAndFlagsBits = 0xD000000000000031;
LABEL_16:
  v21.value._countAndFlagsBits = 0;
  v21.value._object = 0;
  v17.super.isa = v15;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v18 = sub_100041180(v16, v21, v17, v22, v19);

  return v18;
}

uint64_t sub_10003A75C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  return v1;
}

uint64_t sub_10003A7D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  return v1;
}

uint64_t sub_10003A848()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003D788();
  }

  return result;
}

void sub_10003A8A0()
{
  if ([objc_opt_self() _gkIsOnline])
  {
    v1 = [objc_opt_self() shared];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 isAddingFriendsRestricted];

      if (v3)
      {
        v4 = [objc_allocWithZone(GKReporter) init];
        [v4 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestRestrictedError];

        v5 = [objc_allocWithZone(GKAPIReporter) init];
        v6 = sub_100041AF0();
        v7 = sub_100041AF0();
        v8 = sub_100041AF0();
        sub_10003D1C0();
        v9 = sub_100041AF0();

        v10 = sub_100041AF0();
        [v5 recordClickWithAction:v6 targetId:v7 targetType:v8 pageId:v9 pageType:v10];

        v12 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
        v11 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert + 8);
        v13 = GKGameCenterUIFrameworkBundle();
        v51._countAndFlagsBits = 0xE000000000000000;
        v56._countAndFlagsBits = 0x525F444E45495246;
        v56._object = 0xEE00545345555145;
        v60.value._countAndFlagsBits = 0;
        v60.value._object = 0;
        v14.super.isa = v13;
        v64._countAndFlagsBits = 0;
        v64._object = 0xE000000000000000;
        v15 = sub_100041180(v56, v60, v14, v64, v51);
        v17 = v16;

        v18 = GKGameCenterUIFrameworkBundle();
        v52._countAndFlagsBits = 0xE000000000000000;
        v57._countAndFlagsBits = 0xD000000000000027;
        v57._object = 0x8000000100044180;
        v61.value._countAndFlagsBits = 0;
        v61.value._object = 0;
        v19.super.isa = v18;
        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        v20 = sub_100041180(v57, v61, v19, v65, v52);
        v22 = v21;

        v12(v15, v17, v20, v22);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_100041460();
        v40 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation);
        v41 = [v40 recipientAddresses];
        v42 = sub_100041C20();

        if (v42[2])
        {
          v44 = v42[4];
          v43 = v42[5];

          v45 = [v40 recipientAddresses];
          v46 = sub_100041C20();

          v47 = *(v46 + 16);

          v48 = v47 > 1;
        }

        else
        {

          v48 = 0;
          v44 = 0;
          v43 = 0;
        }

        v49 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel);
        if (v49)
        {

          v50 = v49;
          sub_100012C18(v44, v43, v48, sub_100040570, v0);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
    v23 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert + 8);
    v25 = GKGameCenterUIFrameworkBundle();
    v51._countAndFlagsBits = 0xE000000000000000;
    v58._countAndFlagsBits = 0xD000000000000016;
    v58._object = 0x8000000100044140;
    v62.value._countAndFlagsBits = 0;
    v62.value._object = 0;
    v26.super.isa = v25;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    v27 = sub_100041180(v58, v62, v26, v66, v51);
    v29 = v28;

    v30 = GKGameCenterUIFrameworkBundle();
    v53._countAndFlagsBits = 0xE000000000000000;
    v59._countAndFlagsBits = 0xD000000000000018;
    v59._object = 0x8000000100043F40;
    v63.value._countAndFlagsBits = 0;
    v63.value._object = 0;
    v31.super.isa = v30;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v32 = sub_100041180(v59, v63, v31, v67, v53);
    v34 = v33;

    v24(v27, v29, v32, v34);

    v35 = [objc_allocWithZone(GKAPIReporter) init];
    v36 = sub_100041AF0();
    v37 = sub_100041AF0();
    v38 = sub_100041AF0();
    sub_10003D1C0();
    v39 = sub_100041AF0();

    v54 = sub_100041AF0();
    [v35 recordClickWithAction:v36 targetId:v37 targetType:v38 pageId:v39 pageType:v54];
  }
}

void sub_10003AED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  if (a1)
  {
    v56 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;

    sub_100041460();
    v12 = [objc_allocWithZone(GKReporter) init];
    [v12 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestExpiredError];

    v13 = [objc_allocWithZone(GKAPIReporter) init];
    v14 = sub_100041AF0();
    v15 = sub_100041AF0();
    v16 = sub_100041AF0();
    sub_10003D1C0();
    v17 = sub_100041AF0();

    v18 = sub_100041AF0();
    [v13 recordClickWithAction:v14 targetId:v15 targetType:v16 pageId:v17 pageType:v18];

    sub_1000413D0();
    swift_errorRetain();
    v19 = sub_100041400();
    v20 = sub_100041CE0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v57 = a1;
      aBlock[0] = v22;
      *v21 = 136315138;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v23 = sub_100041B40();
      v25 = sub_10003FBD0(v23, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "acceptButtonPressed - acceptFriendRequest error: %s", v21, 0xCu);
      sub_10000E8A8(v22);
    }

    (*(v5 + 8))(v9, v56);
    v27 = *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
    v26 = *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert + 8);
    v28 = GKGameCenterUIFrameworkBundle();
    v54._countAndFlagsBits = 0xE000000000000000;
    v59._countAndFlagsBits = 0x525F444E45495246;
    v59._object = 0xEE00545345555145;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v29.super.isa = v28;
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    v30 = sub_100041180(v59, v61, v29, v63, v54);
    v32 = v31;

    v33 = GKGameCenterUIFrameworkBundle();
    v55._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 0xD000000000000024;
    v60._object = 0x8000000100043F90;
    v62.value._countAndFlagsBits = 0;
    v62.value._object = 0;
    v34.super.isa = v33;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v35 = sub_100041180(v60, v62, v34, v64, v55);
    v37 = v36;

    v27(v30, v32, v35, v37);
  }

  else
  {
    v38 = [objc_allocWithZone(GKReporter) init];
    [v38 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestAccepted];

    v39 = [objc_allocWithZone(GKAPIReporter) init];
    v40 = sub_100041AF0();
    v41 = sub_100041AF0();
    v42 = sub_100041AF0();
    sub_10003D1C0();
    v43 = sub_100041AF0();

    v44 = sub_100041AF0();
    [v39 recordClickWithAction:v40 targetId:v41 targetType:v42 pageId:v43 pageType:v44];

    sub_1000413E0();

    v45 = sub_100041400();
    v46 = sub_100041CC0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v57 = a2;
      aBlock[0] = v48;
      *v47 = 136315138;
      type metadata accessor for FriendInviteCardViewModel();

      v49 = sub_100041B40();
      v51 = sub_10003FBD0(v49, v50, aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "%s acceptButtonPressed - acceptFriendRequest succeed", v47, 0xCu);
      sub_10000E8A8(v48);
    }

    (*(v5 + 8))(v11, v4);
    v52 = [objc_opt_self() local];
    aBlock[4] = sub_100040578;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003A434;
    aBlock[3] = &unk_100057898;
    v53 = _Block_copy(aBlock);

    [v52 loadFriendsAsPlayersWithCompletionHandler:v53];
    _Block_release(v53);
  }
}

uint64_t sub_10003B618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100041A10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100041A30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) recipientAddresses];
  v15 = sub_100041C20();

  v16 = *(v15 + 16);

  if (v16 == 1)
  {
    v18 = *(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onAcceptInvite + 8);
    return (*(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onAcceptInvite))(v17);
  }

  else
  {
    sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
    v20 = sub_100041D50();
    aBlock[4] = sub_100040580;
    aBlock[5] = a3;
    v25 = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012BD4;
    aBlock[3] = &unk_1000578C0;
    v21 = _Block_copy(aBlock);
    v24 = v9;
    v22 = v21;

    sub_100041A20();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100040FF0(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002D08(&qword_10005CA20, qword_100045D00);
    sub_100003214(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
    sub_100041E60();
    v23 = v25;
    sub_100041D60();
    _Block_release(v22);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v24);
  }
}

void sub_10003B95C()
{
  if ([objc_opt_self() _gkIsOnline])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_100041460();
    v1 = [*(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) recipientAddresses];
    v2 = sub_100041C20();

    if (v2[2])
    {
      v4 = v2[4];
      v3 = v2[5];
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    v22 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel);
    if (v22)
    {

      v23 = v22;
      sub_1000131E8(v4, v3, sub_100040568, v0);
    }
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
    v5 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert + 8);
    v7 = GKGameCenterUIFrameworkBundle();
    v24._countAndFlagsBits = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000016;
    v28._object = 0x8000000100044140;
    v30.value._countAndFlagsBits = 0;
    v30.value._object = 0;
    v8.super.isa = v7;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v9 = sub_100041180(v28, v30, v8, v32, v24);
    v11 = v10;

    v12 = GKGameCenterUIFrameworkBundle();
    v25._countAndFlagsBits = 0xE000000000000000;
    v29._countAndFlagsBits = 0xD000000000000018;
    v29._object = 0x8000000100043F40;
    v31.value._countAndFlagsBits = 0;
    v31.value._object = 0;
    v13.super.isa = v12;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v14 = sub_100041180(v29, v31, v13, v33, v25);
    v16 = v15;

    v6(v9, v11, v14, v16);

    v17 = [objc_allocWithZone(GKAPIReporter) init];
    v18 = sub_100041AF0();
    v19 = sub_100041AF0();
    v20 = sub_100041AF0();
    sub_10003D1C0();
    v21 = sub_100041AF0();

    v26 = sub_100041AF0();
    [v17 recordClickWithAction:v18 targetId:v19 targetType:v20 pageId:v21 pageType:v26];
  }
}

uint64_t sub_10003BCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041410();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v57 - v9;
  v11 = [objc_allocWithZone(GKReporter) init];
  v12 = v11;
  if (a1)
  {
    v57 = v4;
    [v11 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestExpiredError];

    v13 = [objc_allocWithZone(GKAPIReporter) init];
    v14 = sub_100041AF0();
    v15 = sub_100041AF0();
    v16 = sub_100041AF0();
    sub_10003D1C0();
    v17 = sub_100041AF0();

    v18 = sub_100041AF0();
    [v13 recordClickWithAction:v14 targetId:v15 targetType:v16 pageId:v17 pageType:v18];

    sub_1000413D0();

    swift_errorRetain();
    v19 = sub_100041400();
    v20 = sub_100041CE0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v59 = a2;
      v60 = v22;
      *v21 = 136315394;
      type metadata accessor for FriendInviteCardViewModel();

      v23 = sub_100041B40();
      v25 = sub_10003FBD0(v23, v24, &v60);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v59 = a1;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v26 = sub_100041B40();
      v28 = sub_10003FBD0(v26, v27, &v60);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s ignoreAction - ignoreFriendRequest error: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    (*(v58 + 8))(v8, v57);
    v30 = *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
    v29 = *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert + 8);
    v31 = GKGameCenterUIFrameworkBundle();
    v55._countAndFlagsBits = 0xE000000000000000;
    v61._countAndFlagsBits = 0x525F444E45495246;
    v61._object = 0xEE00545345555145;
    v63.value._countAndFlagsBits = 0;
    v63.value._object = 0;
    v32.super.isa = v31;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v33 = sub_100041180(v61, v63, v32, v65, v55);
    v35 = v34;

    v36 = GKGameCenterUIFrameworkBundle();
    v56._countAndFlagsBits = 0xE000000000000000;
    v62._countAndFlagsBits = 0xD000000000000024;
    v62._object = 0x8000000100043F90;
    v64.value._countAndFlagsBits = 0;
    v64.value._object = 0;
    v37.super.isa = v36;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    v38 = sub_100041180(v62, v64, v37, v66, v56);
    v40 = v39;

    v30(v33, v35, v38, v40);

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v60) = 0;

    return sub_100041460();
  }

  else
  {
    [v11 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestAccepted];

    v42 = [objc_allocWithZone(GKAPIReporter) init];
    v43 = sub_100041AF0();
    v44 = sub_100041AF0();
    v45 = sub_100041AF0();
    sub_10003D1C0();
    v46 = sub_100041AF0();

    v47 = sub_100041AF0();
    [v42 recordClickWithAction:v43 targetId:v44 targetType:v45 pageId:v46 pageType:v47];

    sub_1000413E0();

    v48 = sub_100041400();
    v49 = sub_100041CC0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = a2;
      v60 = v51;
      *v50 = 136315138;
      type metadata accessor for FriendInviteCardViewModel();

      v52 = sub_100041B40();
      v54 = sub_10003FBD0(v52, v53, &v60);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "%s ignoreAction - ignoreFriendRequest succeed", v50, 0xCu);
      sub_10000E8A8(v51);
    }

    return (*(v58 + 8))(v10, v4);
  }
}

void sub_10003C384()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v7 = sub_100041400();
  v8 = sub_100041CC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v1;
    v21 = v10;
    *v9 = 136315138;
    type metadata accessor for FriendInviteCardViewModel();

    v11 = sub_100041B40();
    v13 = sub_10003FBD0(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s retry", v9, 0xCu);
    sub_10000E8A8(v10);
  }

  (*(v3 + 8))(v6, v2);
  v14 = [objc_allocWithZone(GKAPIReporter) init];
  v15 = sub_100041AF0();
  v16 = sub_100041AF0();
  v17 = sub_100041AF0();
  sub_10003D1C0();
  v18 = sub_100041AF0();

  v19 = sub_100041AF0();
  [v14 recordClickWithAction:v15 targetId:v16 targetType:v17 pageId:v18 pageType:v19];

  sub_10003D788();
}

uint64_t sub_10003C630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v11 = sub_100041400();
  v12 = sub_100041CC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = a1;
    v16 = v15;
    v29 = v3;
    v30 = v15;
    *v14 = 136315138;
    type metadata accessor for FriendInviteCardViewModel();

    v17 = sub_100041B40();
    v19 = sub_10003FBD0(v17, v18, &v30);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s present profile", v14, 0xCu);
    sub_10000E8A8(v16);
    a1 = v27;

    a2 = v28;
  }

  (*(v7 + 8))(v10, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  if (((1 << v32) & 0x178) != 0)
  {
    sub_1000334F0(v30, v31, v32);
    goto LABEL_7;
  }

  if (((1 << v32) & 7) == 0)
  {
LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    v24 = v32;
    if (v32 <= 2u)
    {
      if (v32 >= 2u)
      {
        v24 = 2;
      }
    }

    else
    {
      if (v32 < 7u)
      {
        sub_1000334F0(v30, v31, v32);
        v20 = [objc_allocWithZone(GKReporter) init];
        v21 = v20;
        v22 = GKReporterDomainImprovedFriendingUIInteractions;
        v23 = &GKReceiverTappedViewPlayerProfileButton;
        goto LABEL_10;
      }

      if (v32 != 8)
      {
        goto LABEL_16;
      }
    }

    sub_1000334F0(v30, v31, v24);
    goto LABEL_16;
  }

  sub_1000334F0(v30, v31, v32);
  v20 = [objc_allocWithZone(GKReporter) init];
  v21 = v20;
  v22 = GKReporterDomainImprovedFriendingUIInteractions;
  v23 = &GKSenderTappedViewPlayerProfileButton;
LABEL_10:
  [v20 reportEvent:v22 type:*v23];

LABEL_16:
  v25 = *(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile + 8);
  return (*(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile))(a1, a2);
}

uint64_t sub_10003C9A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v11 = sub_100041400();
  v12 = sub_100041CC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = a1;
    v16 = v15;
    v25 = v3;
    v26 = v15;
    *v14 = 136315138;
    type metadata accessor for FriendInviteCardViewModel();

    v17 = sub_100041B40();
    v19 = sub_10003FBD0(v17, v18, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s present friend profile", v14, 0xCu);
    sub_10000E8A8(v16);
    a1 = v23;

    a2 = v24;
  }

  (*(v7 + 8))(v10, v6);
  v20 = [objc_allocWithZone(GKReporter) init];
  [v20 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKViewFriendProfileButtonTapped];

  v21 = *(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile + 8);
  return (*(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile))(a1, a2);
}

uint64_t sub_10003CBF0()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v7 = sub_100041400();
  v8 = sub_100041CC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v1;
    v18 = v10;
    *v9 = 136315138;
    type metadata accessor for FriendInviteCardViewModel();

    v11 = sub_100041B40();
    v13 = sub_10003FBD0(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s present friend list", v9, 0xCu);
    sub_10000E8A8(v10);
  }

  (*(v3 + 8))(v6, v2);
  v14 = [objc_allocWithZone(GKReporter) init];
  [v14 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKViewFriendListButtonTapped];

  v15 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentFriendsList + 8);
  return (*(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentFriendsList))();
}

void *sub_10003CE18(void *a1)
{
  v2 = [a1 internal];
  v3 = [v2 friendsVisibility];

  if (v3)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100002D08(&qword_10005E5F8, qword_1000476C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100047430;
  [a1 stats];
  v6 = v33;
  v7 = GKGameCenterUIFrameworkBundle();
  v30._countAndFlagsBits = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000001CLL;
  v36._object = 0x8000000100043EB0;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v8.super.isa = v7;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_100041180(v36, v39, v8, v42, v30);

  sub_100002D08(&qword_10005C9C0, &qword_100045CD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100045AE0;
  [a1 stats];
  v10 = v33;
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = v10;
  v11 = sub_100041B30();
  v13 = v12;

  *(v5 + 32) = v6;
  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
  [a1 stats];
  v14 = v35;
  v15 = GKGameCenterUIFrameworkBundle();
  v31._countAndFlagsBits = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000018;
  v37._object = 0x8000000100043ED0;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v16.super.isa = v15;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_100041180(v37, v40, v16, v43, v31);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100045AE0;
  [a1 stats];
  v18 = v35;
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v18;
  v19 = sub_100041B30();
  v21 = v20;

  *(v5 + 56) = v14;
  *(v5 + 64) = v19;
  *(v5 + 72) = v21;
  [a1 stats];
  v22 = v34;
  v23 = GKGameCenterUIFrameworkBundle();
  v32._countAndFlagsBits = 0xE000000000000000;
  v38._object = 0x8000000100043EF0;
  v38._countAndFlagsBits = 0xD000000000000011;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v24.super.isa = v23;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_100041180(v38, v41, v24, v44, v32);

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100045AE0;
  [a1 stats];
  v26 = v34;
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v26;
  v27 = sub_100041B30();
  v29 = v28;

  result = v5;
  *(v5 + 80) = v22;
  *(v5 + 88) = v27;
  *(v5 + 96) = v29;
  return result;
}

uint64_t sub_10003D1C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  if (v11 <= 4u)
  {
    if (v11 < 3u)
    {
      v1 = 0x7265646E6573;
LABEL_8:
      sub_1000334F0(v9, v10, v11);
      goto LABEL_9;
    }

LABEL_7:
    v1 = 0x6E65697069636572;
    goto LABEL_8;
  }

  if (v11 <= 6u)
  {
    goto LABEL_7;
  }

  v1 = 0x6E65697069636572;
  if (v11 == 8)
  {
    goto LABEL_8;
  }

LABEL_9:
  v2 = [*(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) recipientAddresses];
  v3 = sub_100041C20();

  v4 = *(v3 + 16);

  v5 = v4 > 1;
  if (v4 <= 1)
  {
    v6 = 0x7564697669646E69;
  }

  else
  {
    v6 = 0x70756F7267;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEA00000000006C61;
  }

  v12._countAndFlagsBits = 95;
  v12._object = 0xE100000000000000;
  sub_100041B80(v12);
  v13._countAndFlagsBits = v6;
  v13._object = v7;
  sub_100041B80(v13);

  return v1;
}

void sub_10003D358()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v7 = sub_100041400();
  v8 = sub_100041CC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v1;
    *v9 = 136315394;
    type metadata accessor for FriendInviteCardViewModel();

    v10 = sub_100041B40();
    v12 = sub_10003FBD0(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    v13 = sub_100041B40();
    v15 = sub_10003FBD0(v13, v14, &v23);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s state is set to %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v6, v2);
  v16 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent;
  if ((v1[OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    if (v26 <= 6u)
    {
      if (v26 - 3 >= 4)
      {
        sub_1000334F0(v24, v25, v26);
        v17 = [*&v1[OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation] recipientAddresses];
      }

      else
      {
        sub_1000334F0(v24, v25, v26);

        v17 = [objc_allocWithZone(GKReporter) init];
        [v17 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKFriendInviteViewedByReceiver];
      }

      v18 = [objc_allocWithZone(GKAPIReporter) init];
      sub_10003D1C0();
      v19 = sub_100041AF0();

      v20 = sub_100041AF0();
      v21 = sub_100041AF0();
      [v18 recordPageWithID:v19 pageContext:v20 pageType:v21];

      v1[v16] = 1;
    }

    else if (v26 == 8)
    {
      sub_1000334F0(v24, v25, 8u);
    }
  }
}

void sub_10003D788()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  sub_1000413E0();

  v10 = sub_100041400();
  v11 = sub_100041CC0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v1;
    v39[0] = v37;
    *v12 = 136315138;
    type metadata accessor for FriendInviteCardViewModel();

    v13 = sub_100041B40();
    v15 = v1;
    v16 = v2;
    v17 = v7;
    v18 = v3;
    v19 = sub_10003FBD0(v13, v14, v39);

    *(v12 + 4) = v19;
    v3 = v18;
    v7 = v17;
    v2 = v16;
    v1 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s loadState", v12, 0xCu);
    sub_10000E8A8(v37);
  }

  v20 = v3[1];
  v20(v9, v2);
  v21 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel);
  if (v21)
  {
    v22 = *&v21[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8];
    if (v22 && ((v22 & 0x2000000000000000) != 0 ? (v23 = HIBYTE(v22) & 0xF) : (v23 = *&v21[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode] & 0xFFFFFFFFFFFFLL), v23))
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      *(v24 + 24) = v21;
      v25 = v21;

      v26 = v25;
      sub_1000123C8(sub_1000404DC, v24);
    }

    else
    {
      v27 = v21;
      sub_10003EC08(v27);
    }
  }

  else
  {
    sub_1000413E0();

    v28 = sub_100041400();
    v29 = sub_100041CC0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v1;
      v39[0] = v31;
      *v30 = 136315138;
      type metadata accessor for FriendInviteCardViewModel();
      v37 = v3;

      v32 = sub_100041B40();
      v34 = sub_10003FBD0(v32, v33, v39);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s expected a playerModel", v30, 0xCu);
      sub_10000E8A8(v31);
    }

    v20(v7, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v39[0] = 0;
    v39[1] = 0;
    v40 = 7;

    sub_100041460();
    sub_10003D358();
    v35 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
    (*(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay))();
  }
}

void sub_10003DBE0(void **a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = sub_100041410();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = objc_opt_self();
    v13 = a1;
    v14 = [v12 unknownPlayer];
    sub_10000EA78(0, &qword_10005CA38, GKPlayer_ptr);
    v15 = sub_100041DB0();

    if (v15)
    {

      goto LABEL_4;
    }

    v31 = a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState];
    if (v31 > 2)
    {
      if (v31 - 4 < 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v80 = 0;
        v32 = 8;
        goto LABEL_15;
      }

      v76 = a3;
      v34 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
      swift_beginAccess();
      v35 = *&a4[v34];
      if (v35)
      {
        v36 = *(v35 + 16);
        v73 = v13;

        if (v36)
        {
          v37 = 0;
          v78 = v36;
          v74 = v36 - 1;
          v75 = v35 + 40;
          v77 = _swiftEmptyArrayStorage;
          do
          {
            v38 = (v75 + 16 * v37);
            v39 = v37;
            while (1)
            {
              if (v39 >= *(v35 + 16))
              {
                __break(1u);
                return;
              }

              v41 = *(v38 - 1);
              v40 = *v38;
              v42 = objc_opt_self();

              v43 = [v42 local];
              v44 = [v43 internal];

              v45 = [v44 playerID];
              v46 = sub_100041B20();
              v48 = v47;

              if (v41 == v46 && v40 == v48)
              {
                break;
              }

              v50 = sub_100041FC0();

              if (v50)
              {
                goto LABEL_30;
              }

              ++v39;

              v38 += 2;
              if (v78 == v39)
              {
                goto LABEL_47;
              }
            }

LABEL_30:
            v51 = v77;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100040178(0, v77[2] + 1, 1);
              v77 = aBlock;
            }

            v54 = v77[2];
            v53 = v77[3];
            if (v54 >= v53 >> 1)
            {
              sub_100040178((v53 > 1), v54 + 1, 1);
              v77 = aBlock;
            }

            v37 = v39 + 1;
            v55 = v77;
            v77[2] = (v54 + 1);
            v56 = &v55[2 * v54];
            v56[4] = v41;
            v56[5] = v40;
          }

          while (v74 != v39);
        }

        else
        {
          v77 = _swiftEmptyArrayStorage;
        }

LABEL_47:

        v68 = v77[2];

        if (v68)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          aBlock = a1;
          v80 = 0;
          LOBYTE(v81) = 5;
          v69 = v73;

          sub_100041460();
          sub_10003D358();

          return;
        }
      }

      else
      {
        v62 = v13;
      }

      v63 = [objc_opt_self() local];
      v70 = swift_allocObject();
      v71 = v76;
      v70[2] = v13;
      v70[3] = v71;
      v70[4] = v13;
      v83 = sub_1000404E8;
      v84 = v70;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81 = sub_10003A434;
      v82 = &unk_100057820;
      v65 = _Block_copy(&aBlock);
      v66 = v13;
    }

    else
    {
      if (!a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v80 = 0;
        v32 = 5;
        goto LABEL_15;
      }

      if (v31 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v80 = 0;
        v32 = 6;
LABEL_15:
        LOBYTE(v81) = v32;
        v33 = v13;

        sub_100041460();
LABEL_16:
        sub_10003D358();

        return;
      }

      v57 = a3;
      if (a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount + 8])
      {
        v58 = 0;
      }

      else
      {
        v58 = *&a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount];
      }

      if (v58 < 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v80 = 0;
        LOBYTE(v81) = 0;
        goto LABEL_44;
      }

      v59 = [*(v57 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) recipientAddresses];
      v60 = sub_100041C20();

      v61 = *(v60 + 16);

      if (v61 >= 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v80 = v58;
        LOBYTE(v81) = 2;
LABEL_44:
        v33 = v13;

        sub_100041460();
        goto LABEL_16;
      }

      v63 = [objc_opt_self() local];
      v64 = swift_allocObject();
      v64[2] = a4;
      v64[3] = v57;
      v64[4] = v13;
      v83 = sub_100040554;
      v84 = v64;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81 = sub_10003A434;
      v82 = &unk_100057870;
      v65 = _Block_copy(&aBlock);
      v66 = v13;

      v67 = a4;
    }

    [v63 loadFriendsAsPlayersWithCompletionHandler:v65];

    _Block_release(v65);
    return;
  }

LABEL_4:
  sub_1000413E0();

  v16 = a4;
  v17 = sub_100041400();
  v18 = sub_100041CC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v78 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v19 = 136315394;
    v85 = a3;
    type metadata accessor for FriendInviteCardViewModel();

    v23 = sub_100041B40();
    v25 = sub_10003FBD0(v23, v24, &aBlock);
    v77 = v7;
    v26 = a3;
    v27 = v25;

    *(v19 + 4) = v27;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v21 = v16;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s Could not find a valid player using playerModel: %@", v19, 0x16u);
    sub_10000E9F0(v21, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v22);

    (*(v78 + 8))(v11, v77);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v26 = a3;
  }

  v29 = v16[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v29;
  v80 = 0;
  LOBYTE(v81) = 7;

  sub_100041460();
  sub_10003D358();
  v30 = *(v26 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
  (*(v26 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay))();
}

void sub_10003E550(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 >> 62)
  {
LABEL_24:
    v23 = a3;
    v24 = sub_100041F50();
    a3 = v23;
    v7 = v24;
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v35 = a5;
      a5 = 0;
      v34 = a3;
      v8 = (a3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname);
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = sub_100041EC0();
        }

        else
        {
          if (a5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v9 = *(a1 + 8 * a5 + 32);
        }

        v10 = v9;
        v11 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v12 = v8;
        sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
        v13 = [v10 friendBiDirectional];
        isa = sub_100041DA0(1).super.super.isa;
        v15 = sub_100041DB0();

        if (v15)
        {
          v16 = [v10 alias];
          v17 = sub_100041B20();
          v19 = v18;

          v8 = v12;
          v20 = v12[1];
          if (!v20)
          {

            goto LABEL_6;
          }

          if (v17 == *v12 && v20 == v19)
          {

LABEL_18:
            sub_100041EF0();
            v22 = _swiftEmptyArrayStorage[2];
            sub_100041F10();
            sub_100041F20();
            sub_100041F00();
            goto LABEL_5;
          }

          v21 = sub_100041FC0();

          if (v21)
          {
            goto LABEL_18;
          }
        }

LABEL_5:
        v8 = v12;
LABEL_6:
        ++a5;
        if (v11 == v7)
        {
          a5 = v35;
          a3 = v34;
          if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_32;
        }
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_28;
    }

LABEL_33:
    v29 = a3;

    v30 = *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer);
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = [objc_opt_self() playerFromPlayerID:GKUnknownPlayerID];
    }

    v26 = v31;
    goto LABEL_37;
  }

LABEL_32:
  v27 = a3;
  v28 = sub_100041F50();
  a3 = v27;
  if (!v28)
  {
    goto LABEL_33;
  }

LABEL_28:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v25 = sub_100041EC0();
    goto LABEL_31;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v25 = _swiftEmptyArrayStorage[4];
LABEL_31:
    v26 = v25;

LABEL_37:
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v26;
    v33 = a5;

    sub_100041460();
    sub_10003D358();

    return;
  }

  __break(1u);
}

void sub_10003E8C8(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  if (a1 >> 62)
  {
LABEL_23:
    v7 = sub_100041F50();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v30 = a5;
      a5 = 0;
      v8 = v6 & 0xC000000000000001;
      v34 = v6 & 0xFFFFFFFFFFFFFF8;
      v31 = v7;
      v32 = v6;
      while (1)
      {
        if (v8)
        {
          v9 = sub_100041EC0();
        }

        else
        {
          if (a5 >= *(v34 + 16))
          {
            goto LABEL_22;
          }

          v9 = *(v6 + 8 * a5 + 32);
        }

        v10 = v9;
        v11 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
        v12 = [v10 friendBiDirectional];
        isa = sub_100041DA0(1).super.super.isa;
        v14 = sub_100041DB0();

        if (v14)
        {
          break;
        }

LABEL_5:
        ++a5;
        if (v11 == v7)
        {
          a5 = v30;
          if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_28;
        }
      }

      v15 = v8;
      v16 = [v10 internal];
      v17 = [v16 playerID];

      v18 = sub_100041B20();
      v20 = v19;

      v21 = [a3 internal];
      v22 = [v21 playerID];

      v23 = sub_100041B20();
      v25 = v24;

      if (v18 == v23 && v20 == v25)
      {

        v8 = v15;
      }

      else
      {
        v26 = sub_100041FC0();

        v8 = v15;
        if ((v26 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      sub_100041EF0();
      v27 = *(&_swiftEmptyArrayStorage + 2);
      sub_100041F10();
      sub_100041F20();
      sub_100041F00();
LABEL_17:
      v7 = v31;
      v6 = v32;
      goto LABEL_5;
    }
  }

  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  if ((&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_28:
    sub_100041F50();
  }

  else
  {
    v28 = *(&_swiftEmptyArrayStorage + 2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v29 = a5;

  sub_100041460();
  sub_10003D358();
}

uint64_t sub_10003EC08(void *a1)
{
  v2 = v1;
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v9 = sub_100041400();
  v10 = sub_100041CC0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20[0] = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20[1] = v2;
    *&v21 = v13;
    *v12 = 136315138;
    type metadata accessor for FriendInviteCardViewModel();

    v14 = sub_100041B40();
    v16 = sub_10003FBD0(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s creating friend request", v12, 0xCu);
    sub_10000E8A8(v13);

    a1 = v20[0];
  }

  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = xmmword_100047440;
  v22 = 9;

  sub_100041460();
  sub_10003D358();
  v17 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
  (*(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay))();

  v18 = a1;
  sub_100018B4C(v18, v18, v2);
}

void sub_10003EE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100041410();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v42 - v15;
  v17 = sub_100041200();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 || !*(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8))
  {
LABEL_2:
    sub_1000413E0();

    swift_errorRetain();
    v22 = sub_100041400();
    v23 = sub_100041CC0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = a3;
      v47[0] = v25;
      *v24 = 136315394;
      type metadata accessor for FriendInviteCardViewModel();

      v26 = sub_100041B40();
      v28 = sub_10003FBD0(v26, v27, v47);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v46 = a1;
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v29 = sub_100041E10();
      v31 = sub_10003FBD0(v29, v30, v47);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s failed to create friend request with %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    (*(v44 + 8))(v10, v45);
    v32 = *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType);
    swift_getKeyPath();
    swift_getKeyPath();
    v47[0] = v32;
    v47[1] = 0;
    v48 = 7;

    sub_100041460();
    sub_10003D358();
    return;
  }

  sub_10001287C(1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000E9F0(v16, &qword_10005CA30, &unk_100046380);
    goto LABEL_2;
  }

  (*(v18 + 32))(v21, v16, v17);
  v33 = [objc_allocWithZone(GKReporter) init];
  [v33 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestCreated];

  sub_1000413E0();

  v34 = sub_100041400();
  v35 = sub_100041CC0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = a3;
    v47[0] = v43;
    *v36 = 136315138;
    type metadata accessor for FriendInviteCardViewModel();

    v37 = sub_100041B40();
    v39 = sub_10003FBD0(v37, v38, v47);

    *(v36 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s friend request created", v36, 0xCu);
    sub_10000E8A8(v43);
  }

  (*(v44 + 8))(v12, v45);
  v40 = *(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onMessageUrlCreated + 8);
  v41 = (*(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onMessageUrlCreated))(v21);
  sub_10003D788(v41);
  (*(v18 + 8))(v21, v17);
}

uint64_t sub_10003F424()
{
  v1 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__state;
  v2 = sub_100002D08(&unk_10005DB48, &qword_100046F98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__isProcessingAction;
  v4 = sub_100002D08(&qword_10005DB40, &qword_100046F90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile + 8);

  v6 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentFriendsList + 8);

  v7 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onAcceptInvite + 8);

  v8 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert + 8);

  v9 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onMessageUrlCreated + 8);

  v10 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);

  v11 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver);

  return v0;
}

uint64_t sub_10003F584()
{
  sub_10003F424();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for FriendInviteCardViewModel()
{
  result = qword_10005E3F8;
  if (!qword_10005E3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003F630()
{
  sub_10003F754(319, &qword_10005E408);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10003F754(319, &unk_10005E410);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003F754(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100041470();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10003F7A0(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 sub_10003F7BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003F7D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003F818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003F85C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10003F890@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FriendInviteCardViewModel();
  result = sub_100041420();
  *a1 = result;
  return result;
}

double sub_10003F8D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

void sub_10003F95C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10003347C(v2, v3, v5);
  sub_100041460();
  sub_10003D358();
}

uint64_t sub_10003F9FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  *a2 = v5;
  return result;
}

uint64_t sub_10003FA7C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100041460();
}

uint64_t sub_10003FAF0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_10003FB3C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10003FB74(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10003FBD0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10003FBD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003FC9C(v11, 0, 0, 1, a1, a2);
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
    sub_100012320(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000E8A8(v11);
  return v7;
}

unint64_t sub_10003FC9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003FDA8(a5, a6);
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
    result = sub_100041EE0();
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

char *sub_10003FDA8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003FDF4(a1, a2);
  sub_10003FF24(&off_1000557F0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10003FDF4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100040010(v5, 0);
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

  result = sub_100041EE0();
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
        v10 = sub_100041B90();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100040010(v10, 0);
        result = sub_100041EA0();
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

uint64_t sub_10003FF24(uint64_t result)
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

  result = sub_100040084(result, v12, 1, v3);
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

void *sub_100040010(uint64_t a1, uint64_t a2)
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

  sub_100002D08(&qword_10005E5E8, &unk_100047660);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100040084(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D08(&qword_10005E5E8, &unk_100047660);
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

char *sub_100040178(char *a1, int64_t a2, char a3)
{
  result = sub_1000401B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100040198(size_t a1, int64_t a2, char a3)
{
  result = sub_1000402C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000401B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D08(&qword_10005CF00, &unk_100046F40);
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

size_t sub_1000402C4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002D08(&qword_10005E5F0, &qword_1000476C0);
  v10 = *(sub_100041100() - 8);
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
  v15 = *(sub_100041100() - 8);
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

uint64_t sub_10004049C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000404F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004050C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040584(void *a1, void *a2, int a3)
{
  v87 = a3;
  v85 = a1;
  v86 = a2;
  v3 = sub_100002D08(&qword_10005DB18, &qword_100046F68);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v83 = &v73 - v5;
  v6 = sub_100002D08(&qword_10005DB20, &qword_100046F70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v79 = &v73 - v8;
  v9 = sub_100041E00();
  v10 = *(v9 - 8);
  v89 = v9;
  v90 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v78 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002D08(&qword_10005DB28, &qword_100046F78);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v74 = &v73 - v15;
  v16 = sub_100041D80();
  v17 = *(v16 - 8);
  v75 = v16;
  v76 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100002D08(&qword_10005DB30, &qword_100046F80);
  v22 = *(v21 - 8);
  v80 = v21;
  v81 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v88 = &v73 - v24;
  v82 = sub_100002D08(&qword_10005DB38, &qword_100046F88);
  v84 = *(v82 - 8);
  v25 = *(v84 + 64);
  __chkstk_darwin(v82);
  v77 = &v73 - v26;
  v27 = sub_100002D08(&qword_10005DB40, &qword_100046F90);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v73 - v30;
  v32 = sub_100002D08(&unk_10005DB48, &qword_100046F98);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v73 - v35;
  v37 = [objc_allocWithZone(MSConversation) init];
  v38 = type metadata accessor for FriendInviteCardViewModel();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__state;
  v91 = 0;
  v92 = 0;
  v93 = 9;
  sub_100041430();
  (*(v33 + 32))(v41 + v42, v36, v32);
  v43 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__isProcessingAction;
  LOBYTE(v91) = 0;
  sub_100041430();
  (*(v28 + 32))(v41 + v43, v31, v27);
  v44 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel;
  *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent) = 0;
  *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver) = 0;
  *(v41 + v44) = 0;
  *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) = v37;
  v45 = (v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile);
  *v45 = nullsub_1;
  v45[1] = 0;
  v46 = (v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentFriendsList);
  *v46 = nullsub_1;
  v46[1] = 0;
  v47 = (v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onAcceptInvite);
  *v47 = nullsub_1;
  v47[1] = 0;
  v48 = (v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
  *v48 = nullsub_1;
  v48[1] = 0;
  v49 = (v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onMessageUrlCreated);
  *v49 = nullsub_1;
  v49[1] = 0;
  v50 = (v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
  *v50 = nullsub_1;
  v50[1] = 0;
  v73 = v37;
  sub_10003D788();
  v51 = [objc_opt_self() defaultCenter];
  v52 = sub_100041AF0();
  sub_100041D90();

  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v53 = sub_100041D50();
  v91 = v53;
  v54 = sub_100041D30();
  v55 = v74;
  (*(*(v54 - 8) + 56))(v74, 1, 1, v54);
  sub_100040FF0(&qword_10005DB58, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_100033668(&qword_10005DB60, &qword_10005CA10, OS_dispatch_queue_ptr);
  v56 = v55;
  v57 = v75;
  sub_100041490();
  sub_10000E9F0(v56, &qword_10005DB28, &qword_100046F78);
  (*(v76 + 8))(v20, v57);

  v58 = v78;
  sub_100041DF0();
  v59 = v79;
  (*(v90 + 56))(v79, 1, 1, v89);
  v60 = [objc_opt_self() mainRunLoop];
  v91 = v60;
  v61 = sub_100041DE0();
  v62 = v83;
  (*(*(v61 - 8) + 56))(v83, 1, 1, v61);
  sub_10000EA78(0, &qword_10005DB68, NSRunLoop_ptr);
  sub_100003214(&qword_10005DB70, &qword_10005DB30, &qword_100046F80);
  sub_100033668(&qword_10005DB78, &qword_10005DB68, NSRunLoop_ptr);
  v63 = v77;
  v64 = v59;
  v65 = v80;
  v66 = v88;
  sub_100041480();
  sub_10000E9F0(v62, &qword_10005DB18, &qword_100046F68);
  sub_10000E9F0(v64, &qword_10005DB20, &qword_100046F70);
  (*(v90 + 8))(v58, v89);
  (*(v81 + 8))(v66, v65);

  swift_allocObject();
  swift_weakInit();
  sub_100003214(&qword_10005DB80, &qword_10005DB38, &qword_100046F88);
  v67 = v82;
  v68 = sub_1000414A0();

  (*(v84 + 8))(v63, v67);
  v69 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver);
  *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver) = v68;

  *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v85;
  v70 = v86;
  v91 = v85;
  v92 = v86;
  LOBYTE(v67) = v87;
  v93 = v87;

  sub_10003347C(v71, v70, v67);
  sub_100041460();
  sub_10003D358();
  return v41;
}

uint64_t sub_100040FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100041038()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}