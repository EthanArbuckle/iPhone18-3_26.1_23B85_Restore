void sub_100001BCC(id a1)
{
  v1 = objc_alloc_init(IMTimingCollection);
  [v1 startTimingForKey:@"plugin-notif-imagent-connection"];
  v2 = +[IMDaemonController sharedController];
  [v2 addListenerID:@"MessagesPluginNotificationExtension" capabilities:CKListenerPaginatedChatRegistryCapabilities()];

  v3 = +[IMDaemonController sharedController];
  [v3 blockUntilConnected];

  v4 = +[IMDaemonController sharedController];
  [v4 _setBlocksConnectionAtResume:1];

  [v1 stopTimingForKey:@"plugin-notif-imagent-connection"];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Initialized imagent connection from custom plugin notification %@", &v6, 0xCu);
    }
  }
}

uint64_t sub_1000023D0()
{
  v0 = sub_1000066B4();
  sub_100004614(v0, qword_100010850);
  sub_1000044EC(v0, qword_100010850);
  return sub_1000066A4();
}

id sub_100002450()
{
  result = [objc_allocWithZone(type metadata accessor for AskToNotificationManager()) init];
  qword_100010870 = result;
  return result;
}

uint64_t sub_1000024DC(void *a1, void *a2)
{
  v3 = v2;
  v52 = sub_100005324(&_swiftEmptyArrayStorage);
  v5 = sub_1000067B4();
  isUniquelyReferenced_nonNull_native = sub_1000066C4();

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_25;
  }

  v7 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v47 = v3;
  if (v7)
  {
    while (1)
    {
      sub_1000067D4();
      if (v7 < 1)
      {
        break;
      }

      v8 = 0;
      v50 = a2;
      v51 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v48 = v7;
      v49 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v51)
        {
          v11 = sub_100006934();
        }

        else
        {
          v11 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
        }

        v12 = v11;
        sub_1000067B4();
        objc_allocWithZone(sub_100006724());
        v13 = v12;
        v14 = sub_100006714();
        v15 = sub_100006794();
        v16 = &_swiftEmptyArrayStorage;
        if (v15)
        {
          v16 = v15;
        }

        v53 = v16;
        v17 = v14;
        sub_100006854();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100006884();
        }

        sub_100006894();

        v18 = v17;
        v19 = a2;
        v20 = sub_1000067A4();
        v21 = v13;
        v22 = sub_1000066D4();
        v24 = v23;
        v3 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = sub_1000043DC(v22, v24);
        v27 = v52[2];
        v28 = (v25 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          break;
        }

        a2 = v25;
        if (v52[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10000508C();
          }
        }

        else
        {
          sub_100004AFC(v29, isUniquelyReferenced_nonNull_native);
          v30 = sub_1000043DC(v22, v24);
          if ((a2 & 1) != (v31 & 1))
          {
            goto LABEL_28;
          }

          v26 = v30;
        }

        if (a2)
        {
          v9 = v52[7];
          v10 = *(v9 + 8 * v26);
          *(v9 + 8 * v26) = v3;
        }

        else
        {
          v52[(v26 >> 6) + 8] |= 1 << v26;
          v32 = (v52[6] + 16 * v26);
          *v32 = v22;
          v32[1] = v24;
          *(v52[7] + 8 * v26) = v3;
          v33 = v52[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_24;
          }

          v52[2] = v35;

          v10 = v21;
        }

        ++v8;

        isUniquelyReferenced_nonNull_native = v49;
        a2 = v50;
        if (v48 == v8)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v7 = sub_100006954();
      v47 = v3;
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    result = sub_1000069A4();
    __break(1u);
  }

  else
  {
LABEL_26:

    v37 = [a1 request];
    v38 = [v37 identifier];

    v39 = sub_100006814();
    v41 = v40;

    v42 = OBJC_IVAR___CKAskToNotificationManager_actionIdentifierToResponsePayloadMap;
    swift_beginAccess();
    v43 = *&v47[v42];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *&v47[v42];
    *&v47[v42] = 0x8000000000000000;
    sub_100004DA0(v52, v39, v41, v44);

    *&v47[v42] = v54;
    return swift_endAccess();
  }

  return result;
}

void *sub_1000028C0(void *a1)
{
  v2 = sub_100006784();
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  __chkstk_darwin();
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_100003BFC(&qword_100010780, &qword_100007440) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v54 - v7;
  v9 = sub_100006684();
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin();
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 request];
  v14 = [v13 content];

  v15 = [v14 userInfo];
  v16 = sub_1000067E4();

  v63 = 0xD000000000000018;
  v64 = 0x8000000100007730;
  sub_100006914();
  if (!*(v16 + 16) || (v17 = sub_100004454(v65), (v18 & 1) == 0))
  {
    sub_100004498(v65);
    goto LABEL_7;
  }

  sub_100004570(*(v16 + 56) + 32 * v17, v66);
  sub_100004498(v65);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_100010848 != -1)
    {
      swift_once();
    }

    v20 = sub_1000066B4();
    sub_1000044EC(v20, qword_100010850);

    v21 = sub_100006694();
    v22 = sub_1000068D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v65[0] = v24;
      *v23 = 136315138;
      v25 = sub_1000067F4();
      v27 = v26;

      v28 = sub_100003E34(v25, v27, v65);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "User info didn't have URL. userInfo: %s", v23, 0xCu);
      sub_100004524(v24);
    }

    else
    {
    }

    return 0;
  }

  sub_100006674();

  v19 = v62;
  if ((*(v62 + 48))(v8, 1, v9) == 1)
  {
    sub_1000063B8(v8, &qword_100010780, &qword_100007440);
    goto LABEL_7;
  }

  (*(v19 + 32))(v12, v8, v9);
  sub_100006774();
  sub_1000067D4();
  sub_1000045CC(&qword_100010788);
  sub_1000045CC(&qword_100010790);
  sub_100006764();
  v56 = v2;
  v30 = v65[0];
  v31 = sub_1000067C4();
  if (v31)
  {

    if (qword_100010848 != -1)
    {
      swift_once();
    }

    v32 = sub_1000066B4();
    sub_1000044EC(v32, qword_100010850);
    v33 = sub_100006694();
    v34 = sub_1000068D4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Payload for notification not a request. Bailing.", v35, 2u);
    }

    (*(v61 + 8))(v5, v2);
    (*(v62 + 8))(v12, v9);
    return 0;
  }

  sub_1000024DC(a1, v30);
  v65[0] = &_swiftEmptyArrayStorage;
  v36 = sub_1000067B4();
  v37 = sub_1000066C4();

  v38 = v37;
  if (v37 >> 62)
  {
    v52 = sub_100006954();
    v38 = v37;
    v39 = v52;
    if (v52)
    {
      goto LABEL_23;
    }

LABEL_37:
    v51 = &_swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_37;
  }

LABEL_23:
  v40 = v38;
  v55 = v30;
  result = objc_opt_self();
  v60 = result;
  if (v39 < 1)
  {
    __break(1u);
    return result;
  }

  v41 = 0;
  v42 = v40;
  v57 = v40 & 0xC000000000000001;
  v58 = v39;
  v59 = v40;
  do
  {
    if (v57)
    {
      v43 = sub_100006934();
    }

    else
    {
      v43 = *(v42 + 8 * v41 + 32);
    }

    v44 = v43;
    sub_1000066F4();
    v45 = sub_1000066E4();
    if (v45 == sub_1000066E4())
    {
      v46 = 3;
    }

    else
    {
      v46 = 1;
    }

    sub_1000066D4();
    sub_100006704();
    v47 = sub_100006804();

    v48 = sub_100006804();

    v49 = [v60 actionWithIdentifier:v47 title:v48 options:v46];

    v50 = v49;
    sub_100006854();
    if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100006884();
    }

    ++v41;
    sub_100006894();

    v42 = v59;
  }

  while (v58 != v41);
  v51 = v65[0];
  v30 = v55;
LABEL_38:

  if (v51 >> 62)
  {
    v53 = sub_100006954();
  }

  else
  {
    v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v61 + 8))(v5, v56);
  (*(v62 + 8))(v12, v9);
  result = v51;
  if (!v53)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1000033A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000033C8, 0, 0);
}

uint64_t sub_1000033C8()
{
  v1 = sub_100006754();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[6] = sub_100006744();
  v4 = async function pointer to ATDaemonConnectionManager.sendResponsePayloadViaIDS(_:to:)[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100003484;
  v7 = v0[2];
  v6 = v0[3];

  return ATDaemonConnectionManager.sendResponsePayloadViaIDS(_:to:)(v7, v6);
}

uint64_t sub_100003484()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10000360C;
  }

  else
  {
    v3 = sub_100003598;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003598()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  (*(v0 + 32))(1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000360C()
{
  if (qword_100010848 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1000066B4();
  sub_1000044EC(v2, qword_100010850);
  swift_errorRetain();
  v3 = sub_100006694();
  v4 = sub_1000068E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error sending response payload: %@", v6, 0xCu);
    sub_1000063B8(v7, &qword_100010798, &qword_100007448);
  }

  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];

  v12(0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000037C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003BFC(&qword_1000107B8, &qword_100007468) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100006348(a3, v26 - v10);
  v12 = sub_1000068C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000063B8(v11, &qword_1000107B8, &qword_100007468);
  }

  else
  {
    sub_1000068B4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000068A4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100006824() + 32;
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

      sub_1000063B8(a3, &qword_1000107B8, &qword_100007468);

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

  sub_1000063B8(a3, &qword_1000107B8, &qword_100007468);
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

id sub_100003B94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AskToNotificationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003BFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003C44(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003D3C;

  return v7(a1);
}

uint64_t sub_100003D3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003E34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003F00(v11, 0, 0, 1, a1, a2);
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
    sub_100004570(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004524(v11);
  return v7;
}

unint64_t sub_100003F00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000400C(a5, a6);
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
    result = sub_100006944();
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

char *sub_10000400C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004058(a1, a2);
  sub_100004188(&off_10000C620);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004058(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004274(v5, 0);
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

  result = sub_100006944();
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
        v10 = sub_100006844();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004274(v10, 0);
        result = sub_100006924();
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

uint64_t sub_100004188(uint64_t result)
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

  result = sub_1000042E8(result, v12, 1, v3);
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

void *sub_100004274(uint64_t a1, uint64_t a2)
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

  sub_100003BFC(&qword_1000107A0, &qword_100007450);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000042E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BFC(&qword_1000107A0, &qword_100007450);
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

unint64_t sub_1000043DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000069B4();
  sub_100006834();
  v6 = sub_1000069C4();

  return sub_100004678(a1, a2, v6);
}

unint64_t sub_100004454(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000068F4(*(v2 + 40));

  return sub_100004730(a1, v4);
}

uint64_t sub_1000044EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004524(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004570(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000045CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000067D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100004614(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100004678(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006994())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100004730(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000047F8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100006904();
      sub_100004498(v8);
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

uint64_t sub_100004854(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003BFC(&qword_1000107B0, &qword_100007460);
  v38 = a2;
  result = sub_100006974();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1000069B4();
      sub_100006834();
      result = sub_1000069C4();
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
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_100004AFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003BFC(&qword_1000107A8, &qword_100007458);
  v39 = a2;
  result = sub_100006974();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1000069B4();
      sub_100006834();
      result = sub_1000069C4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100004DA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000043DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100004854(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000043DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1000069A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100004F1C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_100004F1C()
{
  v1 = v0;
  sub_100003BFC(&qword_1000107B0, &qword_100007460);
  v2 = *v0;
  v3 = sub_100006964();
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

id sub_10000508C()
{
  v1 = v0;
  sub_100003BFC(&qword_1000107A8, &qword_100007458);
  v2 = *v0;
  v3 = sub_100006964();
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

        result = v20;
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

char *sub_1000051F8(char *a1, int64_t a2, char a3)
{
  result = sub_100005218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005218(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BFC(&qword_1000107C8, &qword_100007498);
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

unint64_t sub_100005324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BFC(&qword_1000107A8, &qword_100007458);
    v3 = sub_100006984();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000043DC(v5, v6);
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

unint64_t sub_100005428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BFC(&qword_1000107B0, &qword_100007460);
    v3 = sub_100006984();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000043DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void sub_10000552C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = (*(*(sub_100003BFC(&qword_1000107B8, &qword_100007468) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v103 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  _Block_copy(a3);
  v10 = [a1 notification];
  v11 = [v10 request];

  v12 = [v11 content];
  v13 = [v12 userInfo];

  v14 = sub_1000067E4();
  v110 = 0xD00000000000001DLL;
  v111 = 0x8000000100007790;
  sub_100006914();
  if (!*(v14 + 16) || (v15 = sub_100004454(v112), (v16 & 1) == 0))
  {

    sub_100004498(v112);
    goto LABEL_21;
  }

  sub_100004570(*(v14 + 56) + 32 * v15, v113);
  sub_100004498(v112);

  if (!swift_dynamicCast())
  {
LABEL_21:
    if (qword_100010848 != -1)
    {
      swift_once();
    }

    v43 = sub_1000066B4();
    sub_1000044EC(v43, qword_100010850);
    v44 = a1;
    v45 = sub_100006694();
    v46 = sub_1000068E4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v112[0] = v48;
      *v47 = 136315138;
      v49 = [v44 notification];
      v50 = [v49 request];

      v51 = [v50 identifier];
      v52 = sub_100006814();
      v54 = v53;

      v55 = sub_100003E34(v52, v54, v112);

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Missing chat identifier for notification identifier: %s", v47, 0xCu);
      sub_100004524(v48);
    }

    a3[2](a3, 0);
    goto LABEL_26;
  }

  v108 = a3;
  v109 = v9;
  v18 = v110;
  v17 = v111;
  if (qword_100010848 != -1)
  {
    swift_once();
  }

  v19 = sub_1000066B4();
  v20 = sub_1000044EC(v19, qword_100010850);

  v107 = v20;
  v21 = sub_100006694();
  v22 = sub_1000068D4();

  v23 = os_log_type_enabled(v21, v22);
  v106 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v112[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_100003E34(v18, v17, v112);
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating chat controller for identifier: %s", v24, 0xCu);
    sub_100004524(v25);
  }

  v26 = [objc_opt_self() sharedRegistry];
  v27 = sub_100006804();
  v28 = [v26 existingChatWithChatIdentifier:v27];

  if (!v28)
  {

    v56 = sub_100006694();
    v57 = sub_1000068E4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v112[0] = v59;
      *v58 = 136315138;
      v60 = sub_100003E34(v18, v17, v112);

      *(v58 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v56, v57, "Couldn't find chat for identifier %s", v58, 0xCu);
      sub_100004524(v59);
    }

    else
    {
    }

    v108[2](v108, 0);
    goto LABEL_26;
  }

  v29 = [v28 participants];
  sub_1000065C0(0, &qword_1000107C0, IMHandle_ptr);
  v30 = sub_100006874();

  if (v30 >> 62)
  {
    v31 = sub_100006954();
    if (v31)
    {
      goto LABEL_11;
    }

LABEL_32:

    v33 = &_swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_32;
  }

LABEL_11:
  v103 = v28;
  v104 = v8;
  v105 = a1;
  v112[0] = &_swiftEmptyArrayStorage;
  sub_1000051F8(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
    return;
  }

  v32 = 0;
  v33 = v112[0];
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v34 = sub_100006934();
    }

    else
    {
      v34 = *(v30 + 8 * v32 + 32);
    }

    v35 = v34;
    v36 = [v34 ID];
    v37 = sub_100006814();
    v39 = v38;

    v112[0] = v33;
    v41 = v33[2];
    v40 = v33[3];
    if (v41 >= v40 >> 1)
    {
      sub_1000051F8((v40 > 1), v41 + 1, 1);
      v33 = v112[0];
    }

    ++v32;
    v33[2] = v41 + 1;
    v42 = &v33[2 * v41];
    *(v42 + 4) = v37;
    *(v42 + 5) = v39;
  }

  while (v31 != v32);

  v8 = v104;
  a1 = v105;
  v28 = v103;
LABEL_33:
  if (v33[2])
  {
    v61 = [a1 notification];
    v62 = [v61 request];

    v63 = [v62 identifier];
    v64 = sub_100006814();
    v66 = v65;

    v67 = OBJC_IVAR___CKAskToNotificationManager_actionIdentifierToResponsePayloadMap;
    v68 = v106;
    swift_beginAccess();
    v69 = *(v68 + v67);
    if (*(v69 + 16))
    {
      v70 = *(v68 + v67);

      v71 = sub_1000043DC(v64, v66);
      v73 = v72;

      if (v73)
      {
        v74 = *(*(v69 + 56) + 8 * v71);

        v75 = [a1 actionIdentifier];
        v76 = sub_100006814();
        v78 = v77;

        if (*(v74 + 16))
        {
          v79 = sub_1000043DC(v76, v78);
          v81 = v80;

          if (v81)
          {
            v82 = *(*(v74 + 56) + 8 * v79);

            v83 = sub_1000068C4();
            (*(*(v83 - 8) + 56))(v8, 1, 1, v83);
            v84 = swift_allocObject();
            v84[2] = 0;
            v84[3] = 0;
            v84[4] = v82;
            v84[5] = v33;
            v85 = v109;
            v84[6] = sub_100006144;
            v84[7] = v85;

            sub_1000037C0(0, 0, v8, &unk_100007478, v84);

LABEL_26:

            return;
          }
        }

        else
        {
        }
      }
    }

    v92 = a1;
    v93 = sub_100006694();
    v94 = sub_1000068E4();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v113[0] = v96;
      *v95 = 136315138;
      v97 = [v92 actionIdentifier];
      v98 = sub_100006814();
      v99 = v28;
      v101 = v100;

      v102 = sub_100003E34(v98, v101, v113);
      v28 = v99;

      *(v95 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "responsePayloadMap didn't have response payload for identifier %s", v95, 0xCu);
      sub_100004524(v96);
    }

    v108[2](v108, 0);
  }

  else
  {

    v86 = v28;
    v87 = sub_100006694();
    v88 = sub_1000068E4();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      *(v89 + 4) = v86;
      *v90 = v28;
      v91 = v86;
      _os_log_impl(&_mh_execute_header, v87, v88, "Recipient addresses was empty for chat %@", v89, 0xCu);
      sub_1000063B8(v90, &qword_100010798, &qword_100007448);
    }

    v108[2](v108, 0);
  }
}

uint64_t sub_10000610C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006158()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000061A8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100006254;

  return sub_1000033A4(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_100006254()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006348(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BFC(&qword_1000107B8, &qword_100007468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000063B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003BFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006418()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006450(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000665C;

  return sub_100003C44(a1, v5);
}

uint64_t sub_100006508(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006254;

  return sub_100003C44(a1, v5);
}

uint64_t sub_1000065C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void type metadata accessor for UNNotificationContentExtensionResponseOption()
{
  if (!qword_1000107D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000107D8);
    }
  }
}