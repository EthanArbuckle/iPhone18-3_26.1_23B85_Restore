uint64_t sub_100001D38()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100041AB8);
  v1 = sub_1000089D8(v0, qword_100041AB8);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100001FE0(unint64_t a1, void (*a2)(NSObject *))
{
  if (qword_100041AB0 != -1)
  {
    swift_once();
  }

  v5 = sub_100030664();
  sub_1000089D8(v5, qword_100041AB8);

  v6 = sub_100030654();
  LOBYTE(v7) = sub_100030884();
  v8 = a1 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_8;
  }

  v2 = swift_slowAlloc();
  *v2 = 134217984;
  if (v8)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100030CE4())
  {
    *(v2 + 4) = i;

    _os_log_impl(&_mh_execute_header, v6, v7, "Search dataSource returned %ld reminders", v2, 0xCu);

LABEL_8:
    if (v8)
    {
      if (sub_100030CE4() <= 9)
      {
LABEL_10:
        sub_100008D28(0, &unk_100041E90, INTask_ptr);
        a1 = sub_1000309D4();
        goto LABEL_13;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 9)
    {
      goto LABEL_10;
    }

LABEL_13:
    if (a1 >> 62)
    {
      v7 = sub_100030CE4();
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    v26 = &_swiftEmptyArrayStorage;
    v6 = &v26;
    sub_100030BF4();
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_35:
    ;
  }

  sub_100008D28(0, &unk_100041E90, INTask_ptr);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_100030BA4();
      sub_1000309E4();
      sub_100030BD4();
      v12 = v26[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      v10 = v11;
    }

    while (v7 != v11);
  }

  else
  {
    v13 = 32;
    do
    {
      v14 = *(a1 + v13);
      sub_1000309E4();
      sub_100030BD4();
      v15 = v26[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      v13 += 8;
      --v7;
    }

    while (v7);
  }

LABEL_24:

  v16 = [objc_allocWithZone(INSearchForNotebookItemsIntentResponse) initWithCode:3 userActivity:0];
  sub_100008D28(0, &unk_100041E90, INTask_ptr);
  isa = sub_100030784().super.isa;

  [v16 setTasks:isa];

  v25 = v16;
  v18 = sub_100030654();
  v19 = sub_100030884();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = -1;
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v22 = [v25 tasks];
    if (v22)
    {
      v23 = v22;
      v24 = sub_100030794();

      if (v24 >> 62)
      {
        v20 = sub_100030CE4();
      }

      else
      {
        v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    *(v21 + 4) = v20;

    _os_log_impl(&_mh_execute_header, v18, v19, "Return success search result {tasksCount: %ld}", v21, 0xCu);
  }

  else
  {

    v18 = v25;
  }

  a2(v25);
}

void sub_10000246C(uint64_t a1, uint64_t a2, void (*a3)(NSObject *))
{
  v4 = sub_1000303D4();
  v5 = sub_1000303B4();
  if (qword_100041AB0 != -1)
  {
    goto LABEL_52;
  }

LABEL_2:
  v6 = sub_100030664();
  v7 = sub_1000089D8(v6, qword_100041AB8);

  v8 = sub_100030654();
  v9 = sub_100030884();
  v10 = (v4 >> 62);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    if (!v10)
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  while (1)
  {

    v13 = sub_100030654();
    v9 = sub_100030884();
    v14 = v5 >> 62;
    if (os_log_type_enabled(v13, v9))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      if (v14)
      {
        v16 = sub_100030CE4();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v15 + 4) = v16;

      _os_log_impl(&_mh_execute_header, v13, v9, "Search dataSource returned %ld smartLists", v15, 0xCu);
    }

    else
    {
    }

    if (v10)
    {
      v11 = sub_100030CE4();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = &_swiftEmptyArrayStorage;
    v44 = v7;
    if (v11)
    {
      v50 = &_swiftEmptyArrayStorage;
      v8 = &v50;
      sub_100030BF4();
      if (v11 < 0)
      {
        __break(1u);
        goto LABEL_55;
      }

      v40 = v5 >> 62;
      v41 = v5;
      v17 = 0;
      v9 = OS_LOG_TYPE_DEFAULT;
      v18 = v4 & 0xC000000000000001;
      v19 = v4;
      v45 = (v4 & 0xFFFFFFFFFFFFFF8);
      do
      {
        v5 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v18)
        {
          v20 = sub_100030BA4();
        }

        else
        {
          if (v17 >= v45[2])
          {
            goto LABEL_50;
          }

          v20 = *(v19 + 8 * v17 + 32);
        }

        v21 = v20;
        v48 = v20;
        sub_100002AB8(&v48, a2, &v49);

        sub_100030BD4();
        v4 = v50[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        ++v17;
      }

      while (v5 != v11);
      v22 = v50;
      v7 = v44;
      v5 = v41;
      v4 = v19;
      v10 = &_swiftEmptyArrayStorage;
      v23 = v41 & 0xFFFFFFFFFFFFFF8;
      if (v40)
      {
        break;
      }

      goto LABEL_24;
    }

    v9 = OS_LOG_TYPE_DEFAULT;
    v22 = &_swiftEmptyArrayStorage;
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v14)
    {
      break;
    }

LABEL_24:
    v11 = *(v23 + 16);
    if (!v11)
    {
      goto LABEL_36;
    }

LABEL_25:
    v42 = v22;
    v50 = &_swiftEmptyArrayStorage;
    v8 = &v50;
    sub_100030BF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      v25 = v5 & 0xC000000000000001;
      v26 = v5;
      v46 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v5 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25)
        {
          v27 = sub_100030BA4();
        }

        else
        {
          if (v24 >= v46[2])
          {
            goto LABEL_51;
          }

          v27 = *(v26 + 8 * v24 + 32);
        }

        v28 = v27;
        v48 = v27;
        sub_100002EF4(&v48, a2, &v49);

        sub_100030BD4();
        v4 = v50[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        ++v24;
        if (v5 == v11)
        {

          v29 = v50;
          v22 = v42;
          goto LABEL_37;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
      goto LABEL_2;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v12 = sub_100030CE4();
LABEL_5:
    *(v11 + 4) = v12;

    _os_log_impl(&_mh_execute_header, v8, v9, "Search dataSource returned %ld lists", v11, 0xCu);
  }

  v11 = sub_100030CE4();
  if (v11)
  {
    goto LABEL_25;
  }

LABEL_36:

  v29 = &_swiftEmptyArrayStorage;
LABEL_37:
  v30 = [objc_allocWithZone(INSearchForNotebookItemsIntentResponse) initWithCode:3 userActivity:0];
  v50 = v22;
  sub_10000CD60(v29);
  sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
  isa = sub_100030784().super.isa;

  [v30 setTaskLists:isa];

  v47 = v30;
  v32 = sub_100030654();
  v33 = sub_100030884();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = -1;
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = [v47 taskLists];
    if (v36)
    {
      v37 = v36;
      v38 = sub_100030794();

      if (v38 >> 62)
      {
        v34 = sub_100030CE4();
      }

      else
      {
        v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = a3;
    }

    else
    {
      v39 = a3;
    }

    *(v35 + 4) = v34;

    _os_log_impl(&_mh_execute_header, v32, v33, "Return success search result {taskListsCount: %ld}", v35, 0xCu);
  }

  else
  {

    v32 = v47;
    v39 = a3;
  }

  v39(v47);
}

uint64_t sub_100002AB8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_100008944(&qword_100041C28, &qword_100033DD0);
  v5 = sub_100030354();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100033CE0;
  v10 = (v9 + v8);
  v11 = *(sub_100008944(&qword_100041C30, &qword_100033DD8) + 48);
  *v10 = [v4 objectID];
  v12 = enum case for REMSearchCriterion.Inclusion.includeForSiri(_:);
  v13 = sub_100030344();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  v14 = *(v6 + 104);
  v14(v10, enum case for REMSearchCriterion.listID(_:), v5);
  v10[v7] = 0;
  v14(&v10[v7], enum case for REMSearchCriterion.isCompleted(_:), v5);
  sub_100030414();
  v15 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_store);
  v16 = [objc_opt_self() defaultFetchOptions];
  sub_100030404();
  if (v32)
  {

    if (qword_100041AB0 != -1)
    {
      swift_once();
    }

    v17 = sub_100030664();
    sub_1000089D8(v17, qword_100041AB8);
    v18 = v4;
    swift_errorRetain();
    v19 = sub_100030654();
    v20 = sub_100030864();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v21 = 138412546;
      v24 = [v18 objectID];
      *(v21 + 4) = v24;
      *v22 = v24;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_100030D64();
      v27 = sub_10002B88C(v25, v26, &v34);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error fetching reminders for list {listID: %@, error: %s", v21, 0x16u);
      sub_100008BB8(v22, &unk_100041BF0, &unk_100033DB0);

      sub_100008D70(v23);
    }

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v28 = v18;
    v29 = sub_100030814();
  }

  else
  {

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v31 = v4;
    result = sub_100030824();
    v29 = result;
  }

  *a3 = v29;
  return result;
}

uint64_t sub_100002EF4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  sub_100030414();
  v7 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_store);
  sub_1000303F4();
  if (v3)
  {
    if (qword_100041AB0 != -1)
    {
      swift_once();
    }

    v8 = sub_100030664();
    sub_1000089D8(v8, qword_100041AB8);
    v9 = v6;
    swift_errorRetain();
    v10 = sub_100030654();
    v11 = sub_100030864();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v12 = 138412546;
      v14 = [v9 objectID];
      *(v12 + 4) = v14;
      *v13 = v14;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_100030D64();
      v17 = a3;
      v18 = sub_10002B88C(v15, v16, &v24);

      *(v12 + 14) = v18;
      a3 = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error fetching reminders for smartList {smartListID: %@, error: %s", v12, 0x16u);
      sub_100008BB8(v13, &unk_100041BF0, &unk_100033DB0);

      sub_100008D70(v23);
    }

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v19 = v9;
    v20 = sub_1000307F4();
  }

  else
  {
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v22 = v6;
    result = sub_1000307F4();
    v20 = result;
  }

  *a3 = v20;
  return result;
}

void sub_1000031B8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_10000327C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSearchForNotebookItemsIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id variable initialization expression of TTRIntentHandler.store()
{
  v0 = objc_allocWithZone(REMStore);

  return [v0 initUserInteractive:1];
}

__n128 initializeWithTake for TTRContactRepresentationResolver(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000033C4(uint64_t a1, int a2)
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

uint64_t sub_1000033E4(uint64_t result, int a2, int a3)
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

uint64_t sub_100003434(uint64_t a1, id *a2)
{
  result = sub_1000306D4();
  *a2 = 0;
  return result;
}

uint64_t sub_1000034AC(uint64_t a1, id *a2)
{
  v3 = sub_1000306E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000352C@<X0>(void *a1@<X8>)
{
  sub_1000306F4();
  v2 = sub_1000306C4();

  *a1 = v2;
  return result;
}

uint64_t sub_100003570(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000306F4();
  v6 = v5;
  if (v4 == sub_1000306F4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100030D44();
  }

  return v9 & 1;
}

void *sub_1000035F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000306C4();

  *a2 = v5;
  return result;
}

uint64_t sub_100003650@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000306F4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000367C(uint64_t a1)
{
  v2 = sub_100008E98(&qword_100041C70);
  v3 = sub_100008E98(&qword_100041C78);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003714()
{
  v1 = *v0;
  sub_1000306F4();
  v2 = sub_100030754();

  return v2;
}

uint64_t sub_100003750()
{
  v1 = *v0;
  sub_1000306F4();
  sub_100030734();
}

Swift::Int sub_1000037A4()
{
  v1 = *v0;
  sub_1000306F4();
  sub_100030D84();
  sub_100030734();
  v2 = sub_100030D94();

  return v2;
}

void sub_100003818(void *a1, uint64_t a2, void (**a3)(void, void))
{
  if (qword_100041AB0 != -1)
  {
    swift_once();
  }

  v5 = sub_100030664();
  sub_1000089D8(v5, qword_100041AB8);
  v6 = a1;
  v7 = sub_100030654();
  v8 = sub_100030884();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "SiriKit asked for resolving itemType {intent: %@}", v9, 0xCu);
    sub_100008BB8(v10, &unk_100041BF0, &unk_100033DB0);
  }

  v12 = [v6 itemType];
  if (v12 > 1)
  {
    if (v12 != 3)
    {
      if (v12 != 2)
      {
        goto LABEL_19;
      }

      if ((sub_100030984() & 1) == 0)
      {
        v13 = [objc_opt_self() successWithResolvedNotebookItemType:2];
        goto LABEL_13;
      }
    }

LABEL_12:
    v13 = [objc_opt_self() successWithResolvedNotebookItemType:3];
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  if (v12 != 1)
  {
LABEL_19:
    sub_1000216C8(&_swiftEmptyArrayStorage);
    sub_1000216C8(&_swiftEmptyArrayStorage);
    _Block_release(a3);
    sub_100026B5C("unknown item type", 17, 2);
    __break(1u);
    return;
  }

  sub_100008D28(0, &qword_100041C40, INNotebookItemTypeResolutionResult_ptr);
  v13 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_13:
  v19 = v13;
  v14 = sub_100030654();
  v15 = sub_100030884();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v19;
    *v17 = v19;
    v18 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "Resolved itemType {result: %@}", v16, 0xCu);
    sub_100008BB8(v17, &unk_100041BF0, &unk_100033DB0);
  }

  (a3)[2](a3, v19);
}

uint64_t sub_100003B78(void *a1, void *a2, void (**a3)(void, void))
{
  v609 = a2;
  v584 = sub_10002FF84();
  v583 = *(v584 - 8);
  v5 = *(v583 + 64);
  (__chkstk_darwin)();
  v582 = &v543 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_100008944(&unk_100041BA0, &qword_100033D68) - 8) + 64);
  v8 = (__chkstk_darwin)();
  v577 = &v543 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v548 = &v543 - v11;
  v12 = __chkstk_darwin(v10);
  v560 = &v543 - v13;
  v14 = __chkstk_darwin(v12);
  v559 = &v543 - v15;
  __chkstk_darwin(v14);
  v569 = &v543 - v16;
  v603 = sub_10002FE04();
  v616 = *(v603 - 8);
  v17 = *(v616 + 64);
  v18 = __chkstk_darwin(v603);
  v581 = &v543 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v570 = &v543 - v21;
  __chkstk_darwin(v20);
  v568 = &v543 - v22;
  v605 = sub_10002FEE4();
  v606 = *(v605 - 8);
  v23 = *(v606 + 64);
  v24 = __chkstk_darwin(v605);
  v563 = &v543 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v576 = &v543 - v27;
  v28 = __chkstk_darwin(v26);
  v575 = &v543 - v29;
  v30 = __chkstk_darwin(v28);
  v545 = &v543 - v31;
  v32 = __chkstk_darwin(v30);
  v547 = &v543 - v33;
  v34 = __chkstk_darwin(v32);
  v558 = &v543 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v543 - v37;
  v39 = __chkstk_darwin(v36);
  v595 = &v543 - v40;
  v41 = __chkstk_darwin(v39);
  v567 = &v543 - v42;
  v43 = __chkstk_darwin(v41);
  v619 = &v543 - v44;
  __chkstk_darwin(v43);
  v618 = &v543 - v45;
  v46 = sub_100008944(&unk_100042170, &unk_100033D70);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v586 = &v543 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v601 = &v543 - v50;
  v604 = sub_10002FF94();
  v602 = *(v604 - 8);
  v51 = *(v602 + 64);
  __chkstk_darwin(v604);
  v607 = &v543 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  v54 = *(*(v53 - 8) + 64);
  v55 = __chkstk_darwin(v53 - 8);
  v585 = &v543 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v592 = (&v543 - v58);
  v59 = __chkstk_darwin(v57);
  v591 = &v543 - v60;
  v61 = __chkstk_darwin(v59);
  v590 = (&v543 - v62);
  v63 = __chkstk_darwin(v61);
  v617 = (&v543 - v64);
  v65 = __chkstk_darwin(v63);
  v589 = &v543 - v66;
  v67 = __chkstk_darwin(v65);
  v611 = &v543 - v68;
  v69 = __chkstk_darwin(v67);
  v600 = &v543 - v70;
  v71 = __chkstk_darwin(v69);
  v588 = &v543 - v72;
  __chkstk_darwin(v71);
  v615 = &v543 - v73;
  v557 = sub_100008944(&qword_100041BB8, &qword_100033D80);
  v74 = *(*(v557 - 8) + 64);
  v75 = __chkstk_darwin(v557);
  v598 = &v543 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v75);
  v562 = &v543 - v78;
  v79 = __chkstk_darwin(v77);
  v626 = &v543 - v80;
  __chkstk_darwin(v79);
  v556 = &v543 - v81;
  v82 = sub_100008944(&unk_100041BC0, &qword_100033D88);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82 - 8);
  v587 = &v543 - v84;
  v627 = sub_100030584();
  v622 = *(v627 - 8);
  v85 = *(v622 + 64);
  v86 = __chkstk_darwin(v627);
  v566 = &v543 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __chkstk_darwin(v86);
  v553 = &v543 - v89;
  v90 = __chkstk_darwin(v88);
  v565 = &v543 - v91;
  __chkstk_darwin(v90);
  v612 = &v543 - v92;
  v624 = sub_100030354();
  v93 = *(v624 - 8);
  v94 = *(v93 + 64);
  v95 = __chkstk_darwin(v624);
  v579 = &v543 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __chkstk_darwin(v95);
  v574 = &v543 - v98;
  v99 = __chkstk_darwin(v97);
  v573 = &v543 - v100;
  v101 = __chkstk_darwin(v99);
  v561 = &v543 - v102;
  v103 = __chkstk_darwin(v101);
  v594 = &v543 - v104;
  v105 = __chkstk_darwin(v103);
  v593 = &v543 - v106;
  v107 = __chkstk_darwin(v105);
  v596 = &v543 - v108;
  v109 = __chkstk_darwin(v107);
  v597 = &v543 - v110;
  v111 = __chkstk_darwin(v109);
  v544 = &v543 - v112;
  v113 = __chkstk_darwin(v111);
  v572 = &v543 - v114;
  v115 = __chkstk_darwin(v113);
  v571 = &v543 - v116;
  v117 = __chkstk_darwin(v115);
  v580 = (&v543 - v118);
  v119 = __chkstk_darwin(v117);
  v621 = &v543 - v120;
  v121 = __chkstk_darwin(v119);
  v554 = (&v543 - v122);
  v123 = __chkstk_darwin(v121);
  v555 = (&v543 - v124);
  v125 = __chkstk_darwin(v123);
  v564 = &v543 - v126;
  v127 = __chkstk_darwin(v125);
  v614 = &v543 - v128;
  __chkstk_darwin(v127);
  v613 = &v543 - v129;
  v599 = swift_allocObject();
  *(v599 + 16) = a3;
  v578 = a3;
  _Block_copy(a3);
  if (qword_100041AB0 != -1)
  {
    swift_once();
  }

  v130 = sub_100030664();
  v131 = sub_1000089D8(v130, qword_100041AB8);
  sub_100008944(&qword_1000425E0, &unk_100033D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100033CF0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_100008D28(0, &unk_100041BD0, INSearchForNotebookItemsIntent_ptr);
  *(inited + 48) = a1;
  v133 = a1;
  sub_1000216C8(inited);
  swift_setDeallocating();
  sub_100008BB8(inited + 32, &unk_1000425F0, &qword_1000340B0);
  sub_100026D38();

  v134 = v133;
  v610 = v131;
  v135 = sub_100030654();
  v136 = sub_100030884();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v137 = 138412290;
    *(v137 + 4) = v134;
    *v138 = v134;
    v139 = v134;
    _os_log_impl(&_mh_execute_header, v135, v136, "SiriKit asked for handling search {intent: %@}", v137, 0xCu);
    sub_100008BB8(v138, &unk_100041BF0, &unk_100033DB0);
  }

  v631 = &_swiftEmptyArrayStorage;
  v140 = [v134 title];
  if (v140)
  {
    v141 = v140;
    v142 = [v140 spokenPhrase];

    v143 = sub_1000306F4();
    v145 = v144;
  }

  else
  {
    v143 = 0;
    v145 = 0;
  }

  v146 = [v134 content];
  if (v146)
  {
    v147 = v146;
    v148 = sub_1000306F4();
    v150 = v149;
  }

  else
  {
    v148 = 0;
    v150 = 0;
  }

  v151 = v626;
  v620 = v93;
  v623 = v134;
  v546 = v38;
  if (!(v145 | v150))
  {
    v152 = &_swiftEmptyArrayStorage;
    v608 = &_swiftEmptyArrayStorage;
    v153 = v624;
    v154 = v93;
    v155 = v627;
    v156 = v622;
    goto LABEL_36;
  }

  v157 = 0;
  v628 = v143;
  v629[0] = v145;
  v629[1] = v148;
  v629[2] = v150;
  v158 = &_swiftEmptyArrayStorage;
LABEL_14:
  v159 = &v629[2 * v157];
  while (++v157 != 3)
  {
    v160 = v159 + 2;
    v161 = *v159;
    v159 += 2;
    if (v161)
    {
      v162 = *(v160 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v158 = sub_10002B4F4(0, *(v158 + 2) + 1, 1, v158);
      }

      v164 = *(v158 + 2);
      v163 = *(v158 + 3);
      if (v164 >= v163 >> 1)
      {
        v158 = sub_10002B4F4((v163 > 1), v164 + 1, 1, v158);
      }

      *(v158 + 2) = v164 + 1;
      v165 = &v158[16 * v164];
      *(v165 + 4) = v162;
      *(v165 + 5) = v161;
      goto LABEL_14;
    }
  }

  sub_100008944(&qword_100041C00, &qword_100033DC0);
  swift_arrayDestroy();
  v630 = v158;
  sub_100008944(&qword_100041C08, &qword_100033DC8);
  sub_100008C18();
  v166 = sub_1000306B4();
  v167 = v93;
  v169 = v168;

  v170 = sub_100008944(&qword_100041BE8, &qword_100034130);
  v171 = *(v170 + 48);
  v172 = v613;
  v608 = v166;
  *v613 = v166;
  *(v172 + 1) = v169;
  v173 = enum case for REMStringMatchingStyle.prefix(_:);
  v174 = sub_100030474();
  v175 = *(*(v174 - 8) + 104);
  v175(&v172[v171], v173, v174);
  v176 = enum case for REMSearchCriterion.textualField(_:);
  v177 = *(v167 + 104);
  v552 = v167 + 104;
  v551 = v177;
  v177(v172, enum case for REMSearchCriterion.textualField(_:), v624);

  v625 = sub_10002B4CC(0, 1, 1, &_swiftEmptyArrayStorage);
  v179 = v625[2];
  v178 = v625[3];
  if (v179 >= v178 >> 1)
  {
    v625 = sub_10002B4CC(v178 > 1, v179 + 1, 1, v625);
  }

  v180 = v625;
  v625[2] = v179 + 1;
  v181 = *(v620 + 32);
  v550 = (*(v620 + 80) + 32) & ~*(v620 + 80);
  v549 = *(v620 + 72);
  v182 = v180 + v550 + v549 * v179;
  v183 = v613;
  v153 = v624;
  v613 = v181;
  (v181)(v182, v183, v624);
  v631 = v180;
  v184 = *(v170 + 48);
  v185 = v614;
  *v614 = v608;
  *(v185 + 1) = v169;
  v175(&v185[v184], v173, v174);
  v551(v185, v176, v153);
  v186 = sub_10002B4CC(0, 1, 1, &_swiftEmptyArrayStorage);
  v188 = v186[2];
  v187 = v186[3];
  if (v188 >= v187 >> 1)
  {
    v186 = sub_10002B4CC(v187 > 1, v188 + 1, 1, v186);
  }

  v151 = v626;
  v155 = v627;
  v156 = v622;
  v186[2] = v188 + 1;
  v608 = v186;
  (v613)(v186 + v550 + v188 * v549, v614, v153);
  v189 = [v623 title];
  v154 = v620;
  v152 = v625;
  if (v189)
  {
    v190 = v189;
    v191 = [v189 vocabularyIdentifier];

    if (v191)
    {
      v192 = sub_1000306F4();
      v194 = v193;

      if (v192 == 0xD000000000000011 && 0x8000000100034940 == v194)
      {

        v152 = v625;
        v195 = v564;
LABEL_32:
        v197 = enum case for REMSearchableListType.grocery(_:);
        v198 = sub_100030394();
        (*(*(v198 - 8) + 104))(v195, v197, v198);
        v551(v195, enum case for REMSearchCriterion.listType(_:), v153);
        v200 = v608[2];
        v199 = v608[3];
        if (v200 >= v199 >> 1)
        {
          v608 = sub_10002B4CC(v199 > 1, v200 + 1, 1, v608);
        }

        v201 = v608;
        v608[2] = v200 + 1;
        (v613)(v201 + v550 + v200 * v549, v195, v153);
        goto LABEL_35;
      }

      v196 = sub_100030D44();

      v152 = v625;
      v195 = v564;
      if (v196)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_35:
  v134 = v623;
LABEL_36:
  v202 = [v134 notebookItemIdentifier];
  if (!v202)
  {
    v215 = v134;
    v216 = sub_100030654();
    v217 = sub_100030864();

    if (os_log_type_enabled(v216, v217))
    {
      v218 = v151;
      v219 = v152;
      v220 = swift_slowAlloc();
      v221 = v154;
      v222 = swift_slowAlloc();
      *v220 = 138412290;
      *(v220 + 4) = v215;
      *v222 = v215;
      v223 = v215;
      _os_log_impl(&_mh_execute_header, v216, v217, "[Announce Reminders] notebookIdentifier not found in intent: %@", v220, 0xCu);
      sub_100008BB8(v222, &unk_100041BF0, &unk_100033DB0);
      v154 = v221;

      v152 = v219;
      v151 = v218;
    }

LABEL_65:
    v272 = [v134 status] == 2;
    v273 = v621;
    *v621 = v272;
    v274 = *(v154 + 104);
    v627 = v154 + 104;
    (v274)(v273, enum case for REMSearchCriterion.isCompleted(_:), v153);
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_10002B4CC(0, *(v152 + 16) + 1, 1, v152);
    }

    v276 = *(v152 + 16);
    v275 = *(v152 + 24);
    if (v276 >= v275 >> 1)
    {
      v152 = sub_10002B4CC(v275 > 1, v276 + 1, 1, v152);
    }

    *(v152 + 16) = v276 + 1;
    v277 = *(v154 + 32);
    v614 = ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v613 = *(v154 + 72);
    v622 = v154 + 32;
    v621 = v277;
    (v277)(&v614[v152 + v613 * v276], v273, v153);
    v631 = v152;
    swift_endAccess();
    v278 = [v134 location];
    v612 = v274;
    if (v278 && (v279 = v278, v280 = [v278 name], v279, v280))
    {
      v281 = sub_1000306F4();
      v283 = v282;

      if ([v134 locationSearchType] == 1)
      {
        v284 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
        v285 = v580;
        *v580 = v281;
        v285[1] = v283;
        v286 = enum case for REMStringMatchingStyle.prefix(_:);
        v287 = sub_100030474();
        (*(*(v287 - 8) + 104))(v285 + v284, v286, v287);
        (v274)(v285, enum case for REMSearchCriterion.location(_:), v153);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = sub_10002B4CC(0, *(v152 + 16) + 1, 1, v152);
        }

        v289 = *(v152 + 16);
        v288 = *(v152 + 24);
        v154 = v620;
        if (v289 >= v288 >> 1)
        {
          v152 = sub_10002B4CC(v288 > 1, v289 + 1, 1, v152);
        }

        *(v152 + 16) = v289 + 1;
        (v621)(&v614[v152 + v289 * v613], v580, v153);
        v290 = v152;
        v631 = v152;
        swift_endAccess();
      }

      else
      {
        v290 = v152;
      }
    }

    else
    {
      v290 = v152;
    }

    v292 = *(v154 + 56);
    v291 = (v154 + 56);
    v587 = v292;
    (v292)(v151, 1, 1, v153);
    v293 = [v134 temporalEventTriggerTypes];
    v294 = [v134 temporalEventTriggerTypes];
    v295 = (v294 & 2) == 0;
    v296 = [v134 temporalEventTriggerTypes];
    if (v293)
    {
      v297 = v603;
      v298 = v290;
      if ((v294 & 2) != 0)
      {
        if ((v296 & 4) == 0)
        {
          v301 = v291;
          v295 = 0;
          v300 = v612;
          goto LABEL_90;
        }

        goto LABEL_96;
      }

      if ((v296 & 4) != 0)
      {
        goto LABEL_96;
      }

      sub_100008BB8(v151, &qword_100041BB8, &qword_100033D80);
    }

    else
    {
      v297 = v603;
      if ((v294 & 2) == 0)
      {
        v298 = v290;
        if ((v296 & 4) != 0)
        {
          sub_100008BB8(v151, &qword_100041BB8, &qword_100033D80);
LABEL_87:
          *v151 = 1;
          v300 = v612;
          (v612)(v151, enum case for REMSearchCriterion.hasDueDate(_:), v153);
          v301 = v291;
          (v587)(v151, 0, 1, v153);
LABEL_90:
          v302 = v579;
          *v579 = v295;
          (v300)(v302, enum case for REMSearchCriterion.isRecurrent(_:), v153);
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v298 = sub_10002B4CC(0, *(v298 + 16) + 1, 1, v298);
          }

          v303 = v600;
          v305 = *(v298 + 16);
          v304 = *(v298 + 24);
          if (v305 >= v304 >> 1)
          {
            v298 = sub_10002B4CC(v304 > 1, v305 + 1, 1, v298);
          }

          *(v298 + 16) = v305 + 1;
          (v621)(&v614[v298 + v305 * v613], v302, v153);
          v631 = v298;
          swift_endAccess();
          v306 = v617;
          v291 = v301;
LABEL_97:
          v307 = [v134 dateTime];
          if (!v307)
          {
            goto LABEL_189;
          }

          v308 = v307;
          v309 = [v307 allDay];
          if (v309)
          {
            v310 = v308;
            v311 = v309;
            LODWORD(v580) = [v309 BOOLValue];

            v308 = v310;
          }

          else
          {
            LODWORD(v580) = 0;
          }

          v312 = v589;
          v600 = v308;
          v313 = [v308 startDateComponents];
          v625 = v298;
          if (v313)
          {
            v314 = v313;
            sub_10002FDA4();

            v315 = 0;
          }

          else
          {
            v315 = 1;
          }

          v579 = v291;
          v316 = v616;
          v317 = *(v616 + 56);
          v317(v303, v315, 1, v297);
          v318 = v588;
          sub_100008AE0(v303, v588);
          v319 = *(v316 + 48);
          v589 = (v316 + 48);
          v617 = v319;
          if (v319(v318, 1, v297) == 1)
          {
            sub_100008BB8(v318, &qword_100041BB0, &unk_1000340A0);
            v320 = 1;
            v321 = v615;
          }

          else
          {
            v321 = v615;
            sub_10002FD84();
            (*(v316 + 8))(v318, v297);
            v320 = 0;
          }

          v322 = v607;
          v323 = 1;
          v317(v321, v320, 1, v297);
          v324 = [v600 endDateComponents];
          if (v324)
          {
            v325 = v324;
            sub_10002FDA4();

            v323 = 0;
          }

          v317(v306, v323, 1, v297);
          sub_100008AE0(v306, v312);
          if (v617(v312, 1, v297) == 1)
          {
            sub_100008BB8(v312, &qword_100041BB0, &unk_1000340A0);
            v326 = 1;
            v327 = v611;
          }

          else
          {
            v327 = v611;
            sub_10002FD84();
            (*(v616 + 8))(v312, v297);
            v326 = 0;
          }

          v317(v327, v326, 1, v297);
          v328 = v590;
          sub_100008B50(v615, v590, &qword_100041BB0, &unk_1000340A0);
          v329 = v617(v328, 1, v297);
          v330 = v601;
          if (v329 == 1)
          {
            sub_100008BB8(v328, &qword_100041BB0, &unk_1000340A0);
            v331 = v602;
            v332 = v604;
            (*(v602 + 56))(v330, 1, 1, v604);
          }

          else
          {
            sub_10002FDF4();
            v327 = v611;
            (*(v616 + 8))(v328, v297);
            v331 = v602;
            v332 = v604;
            if ((*(v602 + 48))(v330, 1, v604) != 1)
            {
              (*(v331 + 32))(v322, v330, v332);
              goto LABEL_125;
            }
          }

          v333 = v585;
          sub_100008B50(v327, v585, &qword_100041BB0, &unk_1000340A0);
          if (v617(v333, 1, v297) == 1)
          {
            sub_100008BB8(v333, &qword_100041BB0, &unk_1000340A0);
            v334 = v586;
            (*(v331 + 56))(v586, 1, 1, v332);
          }

          else
          {
            v334 = v586;
            sub_10002FDF4();
            (*(v616 + 8))(v333, v297);
            v335 = *(v331 + 48);
            if (v335(v334, 1, v332) != 1)
            {
              (*(v331 + 32))(v322, v334, v332);
LABEL_123:
              v337 = v601;
              v338 = v335(v601, 1, v332);
              v327 = v611;
              if (v338 != 1)
              {
                sub_100008BB8(v337, &unk_100042170, &unk_100033D70);
              }

LABEL_125:
              sub_10002FE64();
              sub_10002FE74();
              v339 = v591;
              sub_100008B50(v615, v591, &qword_100041BB0, &unk_1000340A0);
              if (v617(v339, 1, v297) == 1)
              {
                sub_100008BB8(v339, &qword_100041BB0, &unk_1000340A0);
                v340 = v606;
              }

              else
              {
                v341 = v616;
                v342 = *(v616 + 32);
                v343 = v568;
                v342(v568, v339, v297);
                if (v580)
                {
                  v344 = v570;
                  sub_10002FD74();
                  (*(v341 + 8))(v343, v297);
                  v342(v343, v344, v297);
                }

                v345 = *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 32);
                sub_100008A10(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider, *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24));
                v346 = v595;
                sub_100030034();
                v347 = v569;
                sub_10002FF54();
                v348 = v606;
                v349 = *(v606 + 8);
                v350 = v605;
                v349(v346, v605);
                v351 = *(v348 + 48);
                if (v351(v347, 1, v350) == 1)
                {
                  v352 = v567;
                  sub_10002FE64();
                  (*(v616 + 8))(v343, v297);
                  v353 = v618;
                  v349(v618, v350);
                  v354 = v352;
                  v340 = v348;
                  if (v351(v347, 1, v350) != 1)
                  {
                    sub_100008BB8(v347, &unk_100041BA0, &qword_100033D68);
                  }
                }

                else
                {
                  (*(v616 + 8))(v343, v297);
                  v353 = v618;
                  v349(v618, v350);
                  v354 = v567;
                  (*(v348 + 32))(v567, v347, v350);
                  v340 = v348;
                }

                (*(v340 + 32))(v353, v354, v350);
                v134 = v623;
                v327 = v611;
                v297 = v603;
              }

              v355 = v327;
              v356 = v592;
              sub_100008B50(v355, v592, &qword_100041BB0, &unk_1000340A0);
              if (v617(v356, 1, v297) == 1)
              {
                sub_100008BB8(v356, &qword_100041BB0, &unk_1000340A0);
                v151 = v626;
                v357 = v605;
                v358 = &selRef_imageWithUIImage_;
                goto LABEL_150;
              }

              v359 = v616;
              v360 = *(v616 + 32);
              v361 = v581;
              v360(v581, v356, v297);
              if (v580)
              {
                v362 = v570;
                sub_10002FD74();
                v363 = *(v359 + 8);
                v363(v361, v297);
                v360(v361, v362, v297);
                v364 = *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 32);
                sub_100008A10(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider, *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24));
                v365 = v595;
                sub_100030034();
                v366 = v559;
                sub_10002FF54();
                v367 = v606;
                v368 = v359 + 8;
                v369 = v605;
                v617 = *(v606 + 8);
                (v617)(v365, v605);
                v601 = *(v367 + 48);
                if ((v601)(v366, 1, v369) != 1)
                {
                  v592 = v363;
                  v616 = v368;
                  v385 = *(v367 + 32);
                  v386 = v546;
                  v591 = v367 + 32;
                  v590 = v385;
                  (v385)(v546, v366, v369);
                  v387 = v583;
                  v388 = v582;
                  v389 = v584;
                  (*(v583 + 104))(v582, enum case for Calendar.Component.day(_:), v584);
                  v390 = v548;
                  sub_10002FF74();
                  v391 = v388;
                  v392 = v390;
                  (*(v387 + 8))(v391, v389);
                  if ((v601)(v390, 1, v369) == 1)
                  {
                    (v617)(v386, v369);
                    v592(v581, v603);
                    sub_100008BB8(v390, &unk_100041BA0, &qword_100033D68);
                    v393 = v619;
                    v394 = v619;
                  }

                  else
                  {
                    v394 = v545;
                    sub_10002FE84();
                    v395 = v617;
                    (v617)(v386, v369);
                    v592(v581, v603);
                    v393 = v619;
                    v395(v619, v369);
                    v395(v392, v369);
                  }

                  v151 = v626;
                  v134 = v623;
                  v358 = &selRef_imageWithUIImage_;
                  v396 = v547;
                  v397 = v590;
                  (v590)(v547, v394, v369);
                  v397(v393, v396, v369);
                  v357 = v369;
                  v340 = v606;
LABEL_150:
                  v398 = &v358[365][v609];
                  if (sub_100030984())
                  {
                    v399 = v595;
                    sub_10002FE64();
                    v400 = *(v340 + 8);
                    v401 = v618;
                    v400(v618, v357);
                    v617 = *(v340 + 32);
                    v617(v401, v399, v357);
                    v402 = *(v398 + 4);
                    sub_100008A10(v398, *(v398 + 3));
                    v403 = v605;
                    sub_100030034();
                    v404 = v575;
                    sub_10002FF44();
                    v400(v399, v403);
                    v405 = v583;
                    v406 = v582;
                    v407 = v404;
                    v408 = v584;
                    (*(v583 + 104))(v582, enum case for Calendar.Component.day(_:), v584);
                    v409 = v577;
                    sub_10002FF74();
                    (*(v405 + 8))(v406, v408);
                    v357 = v403;
                    v340 = v606;
                    if ((*(v606 + 48))(v409, 1, v357) == 1)
                    {
                      v400(v407, v357);
                      sub_100008BB8(v409, &unk_100041BA0, &qword_100033D68);
                      v410 = v619;
                      v411 = v619;
                    }

                    else
                    {
                      v411 = v563;
                      sub_10002FE84();
                      v400(v407, v357);
                      v410 = v619;
                      v400(v619, v357);
                      v400(v409, v357);
                    }

                    v412 = v576;
                    v413 = v617;
                    v617(v576, v411, v357);
                    v413(v410, v412, v357);
                    v151 = v626;
                    v134 = v623;
                  }

                  v414 = [v134 dateSearchType];
                  if (v414 <= 1)
                  {
                    v153 = v624;
                    v415 = v618;
                    if (!v414)
                    {

                      v416 = *(v340 + 8);
                      v416(v619, v357);
                      v416(v415, v357);
                      (*(v602 + 8))(v607, v604);
                      sub_100008BB8(v611, &qword_100041BB0, &unk_1000340A0);
                      sub_100008BB8(v615, &qword_100041BB0, &unk_1000340A0);
                      v417 = v620;
                      v418 = v597;
                      v298 = v625;
LABEL_196:
                      v495 = v598;
                      sub_100008B50(v151, v598, &qword_100041BB8, &qword_100033D80);
                      if ((*(v417 + 48))(v495, 1, v153) == 1)
                      {
                        sub_100008BB8(v495, &qword_100041BB8, &qword_100033D80);
                      }

                      else
                      {
                        (v621)(v418, v495, v153);
                        (*(v417 + 16))(v596, v418, v153);
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v298 = sub_10002B4CC(0, *(v298 + 16) + 1, 1, v298);
                        }

                        v497 = *(v298 + 16);
                        v496 = *(v298 + 24);
                        if (v497 >= v496 >> 1)
                        {
                          v298 = sub_10002B4CC(v496 > 1, v497 + 1, 1, v298);
                        }

                        *(v298 + 16) = v497 + 1;
                        (v621)(&v614[v298 + v497 * v613], v596, v153);
                        v631 = v298;
                        swift_endAccess();
                        (*(v417 + 8))(v418, v153);
                      }

                      v498 = v623;
                      v499 = [v623 taskPriority];
                      v500 = v608;
                      v501 = v612;
                      if (!v499)
                      {
LABEL_217:
                        v508 = [v498 itemType];
                        v509 = sub_100030654();
                        if (v508 == 2)
                        {
                          v523 = sub_100030884();
                          if (os_log_type_enabled(v509, v523))
                          {
                            v524 = swift_slowAlloc();
                            v525 = swift_slowAlloc();
                            v630 = v525;
                            *v524 = 136315138;

                            v526 = sub_1000307A4();
                            v528 = v527;

                            v529 = sub_10002B88C(v526, v528, &v630);

                            *(v524 + 4) = v529;
                            _os_log_impl(&_mh_execute_header, v509, v523, "Consulting Search datasource for lists {itemType: taskList, criteria: %s}", v524, 0xCu);
                            sub_100008D70(v525);
                          }

                          v530 = v609;
                          v531 = *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource + 24);
                          v532 = *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource + 32);
                          sub_100008A10(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource, v531);
                          v533 = swift_allocObject();
                          v533[2] = v530;
                          v533[3] = sub_1000089C4;
                          v533[4] = v599;
                          v534 = *(v532 + 32);

                          v535 = v530;
                          v534(v500, sub_100008A94, v533, v531, v532);
                        }

                        else
                        {
                          if (v508 != 3)
                          {
                            v536 = sub_100030874();
                            if (os_log_type_enabled(v509, v536))
                            {
                              v537 = swift_slowAlloc();
                              *v537 = 0;
                              _os_log_impl(&_mh_execute_header, v509, v536, "Unhandled itemType. Should have been cleaned up in resolve(). Return failure search result.", v537, 2u);
                            }

                            v538 = [objc_allocWithZone(INSearchForNotebookItemsIntentResponse) initWithCode:4 userActivity:0];
                            (v578)[2](v578, v538);

                            goto LABEL_229;
                          }

                          v510 = v298;
                          v511 = sub_100030884();
                          if (os_log_type_enabled(v509, v511))
                          {
                            v512 = swift_slowAlloc();
                            v513 = swift_slowAlloc();
                            v630 = v513;
                            *v512 = 136315138;

                            v514 = sub_1000307A4();
                            v516 = v515;

                            v517 = sub_10002B88C(v514, v516, &v630);

                            *(v512 + 4) = v517;
                            _os_log_impl(&_mh_execute_header, v509, v511, "Consulting Search datasource for reminders {itemType: task, criteria: %s}", v512, 0xCu);
                            sub_100008D70(v513);
                          }

                          v518 = *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource + 24);
                          v519 = *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource + 32);
                          sub_100008A10(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource, v518);
                          v520 = swift_allocObject();
                          v521 = v599;
                          *(v520 + 16) = sub_1000089C4;
                          *(v520 + 24) = v521;
                          v522 = *(v519 + 24);

                          v522(v510, sub_100008AD8, v520, v518, v519);
                        }

LABEL_229:
                        sub_100008BB8(v626, &qword_100041BB8, &qword_100033D80);
                      }

                      if (v499 == 1)
                      {
                        *v594 = 0;
                        v501();
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v298 = sub_10002B4CC(0, *(v298 + 16) + 1, 1, v298);
                        }

                        v503 = *(v298 + 16);
                        v502 = *(v298 + 24);
                        if (v503 >= v502 >> 1)
                        {
                          v298 = sub_10002B4CC(v502 > 1, v503 + 1, 1, v298);
                        }

                        *(v298 + 16) = v503 + 1;
                        v504 = &v614[v298 + v503 * v613];
                        v505 = &v626;
LABEL_216:
                        (v621)(v504, *(v505 - 32), v153);
                        v631 = v298;
                        swift_endAccess();
                        goto LABEL_217;
                      }

                      if (v499 == 2)
                      {
                        *v593 = 1;
                        v501();
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v298 = sub_10002B4CC(0, *(v298 + 16) + 1, 1, v298);
                        }

                        v507 = *(v298 + 16);
                        v506 = *(v298 + 24);
                        if (v507 >= v506 >> 1)
                        {
                          v298 = sub_10002B4CC(v506 > 1, v507 + 1, 1, v298);
                        }

                        *(v298 + 16) = v507 + 1;
                        v504 = &v614[v298 + v507 * v613];
                        v505 = &v625;
                        goto LABEL_216;
                      }

                      sub_1000216C8(&_swiftEmptyArrayStorage);
                      sub_1000216C8(&_swiftEmptyArrayStorage);

                      _Block_release(v578);
                      v541 = "unknown task priority";
                      v542 = 21;
                      goto LABEL_233;
                    }

                    v444 = v607;
                    if (v414 == 1)
                    {
                      v445 = v562;
                      sub_100008B50(v151, v562, &qword_100041BB8, &qword_100033D80);
                      v417 = v620;
                      v153 = v624;
                      v446 = (*(v620 + 48))(v445, 1, v624);
                      v447 = v561;
                      v448 = v612;
                      v449 = v600;
                      if (v446 == 1)
                      {
                        sub_100008BB8(v445, &qword_100041BB8, &qword_100033D80);
LABEL_191:
                        v483 = *(sub_100008944(&qword_100041BE0, &unk_100033DA0) + 48);
                        v484 = *(v340 + 16);
                        v484(v447, v618, v357);
                        v485 = *(v340 + 56);
                        v485(v447, 0, 1, v357);
                        v484(&v447[v483], v619, v357);
                        v485(&v447[v483], 0, 1, v357);
                        v153 = v624;
                        (v448)(v447, enum case for REMSearchCriterion.dueDate(_:), v624);
                        swift_beginAccess();
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v418 = v597;
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          v625 = sub_10002B4CC(0, v625[2] + 1, 1, v625);
                        }

                        v487 = v604;
                        v489 = v625[2];
                        v488 = v625[3];
                        v490 = v606;
                        if (v489 >= v488 >> 1)
                        {
                          v625 = sub_10002B4CC(v488 > 1, v489 + 1, 1, v625);
                        }

                        v491 = v625;
                        v625[2] = v489 + 1;
                        (v621)(&v614[v491 + v489 * v613], v447, v153);
                        v631 = v491;
                        swift_endAccess();

                        v492 = *(v490 + 8);
                        v493 = v605;
                        v492(v619, v605);
                        v492(v618, v493);
                        v494 = v487;
                        v298 = v491;
                        (*(v602 + 8))(v607, v494);
                        sub_100008BB8(v611, &qword_100041BB0, &unk_1000340A0);
                        sub_100008BB8(v615, &qword_100041BB0, &unk_1000340A0);
                        goto LABEL_196;
                      }

                      if ((*(v417 + 88))(v445, v153) != enum case for REMSearchCriterion.hasDueDate(_:))
                      {
                        (*(v417 + 8))(v445, v153);
                        goto LABEL_191;
                      }

                      (*(v417 + 96))(v445, v153);
                      if ((*v445 & 1) == 0)
                      {

                        v540 = *(v340 + 8);
                        v540(v619, v357);
                        v540(v618, v357);
                        (*(v602 + 8))(v444, v604);
                        sub_100008BB8(v611, &qword_100041BB0, &unk_1000340A0);
                        sub_100008BB8(v615, &qword_100041BB0, &unk_1000340A0);
                        v417 = v620;
                        v418 = v597;
                        v298 = v625;
                        goto LABEL_196;
                      }

                      v471 = *(sub_100008944(&qword_100041BE0, &unk_100033DA0) + 48);
                      v472 = *(v340 + 16);
                      v473 = v544;
                      v474 = v618;
                      v472(v544, v618, v357);
                      v475 = *(v340 + 56);
                      v475(v473, 0, 1, v357);
                      v472(&v473[v471], v619, v357);
                      v475(&v473[v471], 0, 1, v357);
                      v153 = v624;
                      (v448)(v473, enum case for REMSearchCriterion.dueDate(_:), v624);
                      swift_beginAccess();
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v625 = sub_10002B4CC(0, v625[2] + 1, 1, v625);
                      }

                      v476 = v604;
                      v478 = v625[2];
                      v477 = v625[3];
                      v479 = v606;
                      if (v478 >= v477 >> 1)
                      {
                        v625 = sub_10002B4CC(v477 > 1, v478 + 1, 1, v625);
                      }

                      v480 = v625;
                      v625[2] = v478 + 1;
                      (v621)(&v614[v480 + v478 * v613], v473, v153);
                      v631 = v480;
                      swift_endAccess();

                      v481 = *(v479 + 8);
                      v481(v619, v357);
                      v481(v474, v357);
                      v482 = v476;
                      v298 = v480;
                      (*(v602 + 8))(v607, v482);
                      sub_100008BB8(v611, &qword_100041BB0, &unk_1000340A0);
                      sub_100008BB8(v615, &qword_100041BB0, &unk_1000340A0);
                      sub_100008BB8(v151, &qword_100041BB8, &qword_100033D80);
                      (v587)(v151, 1, 1, v153);
LABEL_189:
                      v417 = v620;
                      v418 = v597;
                      goto LABEL_196;
                    }

LABEL_232:
                    sub_1000216C8(&_swiftEmptyArrayStorage);
                    sub_1000216C8(&_swiftEmptyArrayStorage);

                    _Block_release(v578);
                    v541 = "unknown date search type";
                    v542 = 24;
LABEL_233:
                    sub_100026B5C(v541, v542, 2);
                    __break(1u);
                    goto LABEL_234;
                  }

                  v419 = v618;
                  if (v414 == 2)
                  {
                    v420 = sub_100008944(&qword_100041BE0, &unk_100033DA0);
                    v421 = *(v420 + 48);
                    v422 = v357;
                    v423 = *(v340 + 16);
                    v424 = v571;
                    v423(v571, v419, v357);
                    v425 = *(v340 + 56);
                    v425(v424, 0, 1, v422);
                    v423(&v424[v421], v619, v422);
                    v425(&v424[v421], 0, 1, v422);
                    v426 = enum case for REMSearchCriterion.modifiedDate(_:);
                    (v612)(v424, enum case for REMSearchCriterion.modifiedDate(_:), v624);
                    swift_beginAccess();
                    v427 = v625;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v427 = sub_10002B4CC(0, v427[2] + 1, 1, v427);
                    }

                    v625 = v427;
                    v429 = v427[2];
                    v428 = v427[3];
                    if (v429 >= v428 >> 1)
                    {
                      v625 = sub_10002B4CC(v428 > 1, v429 + 1, 1, v625);
                    }

                    v430 = v625;
                    v625[2] = v429 + 1;
                    v431 = v624;
                    (v621)(&v614[v430 + v429 * v613], v571, v624);
                    v631 = v430;
                    swift_endAccess();
                    v432 = *(v420 + 48);
                    v433 = v573;
                    v434 = v605;
                    v423(v573, v618, v605);
                    v425(v433, 0, 1, v434);
                    v423(&v433[v432], v619, v434);
                    v153 = v431;
                    v425(&v433[v432], 0, 1, v434);
                    (v612)(v433, v426, v431);
                    v435 = v608;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v608 = sub_10002B4CC(0, v435[2] + 1, 1, v435);
                    }

                    v436 = v626;
                    v417 = v620;
                    v418 = v597;
                    v437 = v615;
                    v439 = v608[2];
                    v438 = v608[3];
                    if (v439 >= v438 >> 1)
                    {
                      v608 = sub_10002B4CC(v438 > 1, v439 + 1, 1, v608);
                    }

                    v440 = *(v606 + 8);
                    v440(v619, v434);
                    v440(v618, v434);
                    (*(v602 + 8))(v607, v604);
                    sub_100008BB8(v611, &qword_100041BB0, &unk_1000340A0);
                    sub_100008BB8(v437, &qword_100041BB0, &unk_1000340A0);
                    v441 = v608;
                    v608[2] = v439 + 1;
                    v442 = &v614[v441 + v439 * v613];
                    v443 = &v605;
                  }

                  else
                  {
                    if (v414 != 3)
                    {
                      goto LABEL_232;
                    }

                    v450 = sub_100008944(&qword_100041BE0, &unk_100033DA0);
                    v451 = *(v450 + 48);
                    v452 = v357;
                    v453 = *(v340 + 16);
                    v454 = v572;
                    v453(v572, v419, v357);
                    v455 = *(v340 + 56);
                    v455(v454, 0, 1, v452);
                    v453(&v454[v451], v619, v452);
                    v455(&v454[v451], 0, 1, v452);
                    v456 = enum case for REMSearchCriterion.creationDate(_:);
                    (v612)(v454, enum case for REMSearchCriterion.creationDate(_:), v624);
                    swift_beginAccess();
                    v457 = v625;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v457 = sub_10002B4CC(0, v457[2] + 1, 1, v457);
                    }

                    v625 = v457;
                    v459 = v457[2];
                    v458 = v457[3];
                    if (v459 >= v458 >> 1)
                    {
                      v625 = sub_10002B4CC(v458 > 1, v459 + 1, 1, v625);
                    }

                    v460 = v625;
                    v625[2] = v459 + 1;
                    v461 = v624;
                    (v621)(&v614[v460 + v459 * v613], v572, v624);
                    v631 = v460;
                    swift_endAccess();
                    v462 = *(v450 + 48);
                    v463 = v574;
                    v464 = v605;
                    v453(v574, v419, v605);
                    v455(v463, 0, 1, v464);
                    v453(&v463[v462], v619, v464);
                    v153 = v461;
                    v455(&v463[v462], 0, 1, v464);
                    (v612)(v463, v456, v461);
                    v465 = v608;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v608 = sub_10002B4CC(0, v465[2] + 1, 1, v465);
                    }

                    v436 = v626;
                    v417 = v620;
                    v418 = v597;
                    v466 = v615;
                    v468 = v608[2];
                    v467 = v608[3];
                    if (v468 >= v467 >> 1)
                    {
                      v608 = sub_10002B4CC(v467 > 1, v468 + 1, 1, v608);
                    }

                    v469 = *(v606 + 8);
                    v469(v619, v464);
                    v469(v618, v464);
                    (*(v602 + 8))(v607, v604);
                    sub_100008BB8(v611, &qword_100041BB0, &unk_1000340A0);
                    sub_100008BB8(v466, &qword_100041BB0, &unk_1000340A0);
                    v470 = v608;
                    v608[2] = v468 + 1;
                    v442 = &v614[v470 + v468 * v613];
                    v443 = &v606;
                  }

                  (v621)(v442, *(v443 - 32), v153);
                  v298 = v625;
                  v151 = v436;
                  goto LABEL_196;
                }

                v363(v361, v297);
                sub_100008BB8(v366, &unk_100041BA0, &qword_100033D68);
                v151 = v626;
                v357 = v369;
                v340 = v367;
                v134 = v623;
              }

              else
              {
                v370 = *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 32);
                sub_100008A10(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider, *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24));
                v371 = v359;
                v372 = v595;
                sub_100030034();
                v373 = v560;
                sub_10002FF54();
                v374 = v606;
                v375 = *(v606 + 8);
                v376 = v372;
                v377 = v373;
                v378 = v605;
                v375(v376, v605);
                v379 = v297;
                v357 = v378;
                (*(v371 + 8))(v361, v379);
                v380 = *(v374 + 48);
                if (v380(v377, 1, v378) == 1)
                {
                  v381 = *(v374 + 32);
                  v382 = v558;
                  v381(v558, v619, v378);
                  v383 = v380(v377, 1, v378);
                  v151 = v626;
                  if (v383 != 1)
                  {
                    sub_100008BB8(v377, &unk_100041BA0, &qword_100033D68);
                  }

                  v340 = v606;
                  v384 = v619;
                }

                else
                {
                  v384 = v619;
                  v375(v619, v357);
                  v381 = *(v374 + 32);
                  v382 = v558;
                  v381(v558, v377, v357);
                  v151 = v626;
                  v340 = v374;
                }

                v381(v384, v382, v357);
              }

              v358 = &selRef_imageWithUIImage_;
              goto LABEL_150;
            }
          }

          v336 = *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 32);
          sub_100008A10(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider, *(v609 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24));
          v332 = v604;
          sub_100030044();
          v335 = *(v331 + 48);
          if (v335(v334, 1, v332) != 1)
          {
            sub_100008BB8(v334, &unk_100042170, &unk_100033D70);
          }

          goto LABEL_123;
        }

LABEL_96:
        v306 = v617;
        v303 = v600;
        goto LABEL_97;
      }

      v299 = v296;
      sub_100008BB8(v151, &qword_100041BB8, &qword_100033D80);
      v298 = v290;
      if ((v299 & 4) == 0)
      {
        goto LABEL_87;
      }
    }

    *v151 = !(v293 & 1);
    (v612)(v151, enum case for REMSearchCriterion.hasDueDate(_:), v153);
    (v587)(v151, 0, 1, v153);
    goto LABEL_96;
  }

  v203 = v202;
  v204 = sub_1000306F4();
  v206 = v205;

  v207 = v587;
  sub_100030574();
  if ((*(v156 + 48))(v207, 1, v155) == 1)
  {
    v208 = v152;
    sub_100008BB8(v207, &unk_100041BC0, &qword_100033D88);

    v209 = sub_100030654();
    v210 = sub_100030864();

    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v212 = v151;
      v213 = swift_slowAlloc();
      v630 = v213;
      *v211 = 136315138;
      v214 = sub_10002B88C(v204, v206, &v630);

      *(v211 + 4) = v214;
      _os_log_impl(&_mh_execute_header, v209, v210, "[Announce Reminders] Unable to create itemIdentifier from %s", v211, 0xCu);
      sub_100008D70(v213);
      v151 = v212;

      v154 = v620;
    }

    else
    {
    }

    v152 = v208;
    goto LABEL_65;
  }

  v224 = v207;
  v225 = v612;
  (*(v156 + 32))(v612, v224, v155);
  v226 = v156;
  v227 = *(v156 + 16);
  v228 = v565;
  v227(v565, v225, v155);
  v229 = sub_100030654();
  v230 = sub_100030884();
  if (os_log_type_enabled(v229, v230))
  {
    v231 = swift_slowAlloc();
    v625 = v152;
    v232 = v231;
    v233 = swift_slowAlloc();
    v613 = v227;
    v234 = v233;
    v630 = v233;
    *v232 = 136446210;
    (v613)(v553, v228, v155);
    v235 = sub_100030704();
    v237 = v236;
    v614 = *(v226 + 8);
    (v614)(v228, v627);
    v238 = sub_10002B88C(v235, v237, &v630);
    v239 = v626;

    *(v232 + 4) = v238;
    v151 = v239;
    v155 = v627;
    _os_log_impl(&_mh_execute_header, v229, v230, "[Announce Reminders] requestIdentifier:%{public}s", v232, 0xCu);
    sub_100008D70(v234);
    v227 = v613;

    v152 = v625;
  }

  else
  {

    v614 = *(v226 + 8);
    (v614)(v228, v155);
  }

  v240 = v566;
  v227(v566, v612, v155);
  v241 = (*(v226 + 88))(v240, v155);
  if (v241 == enum case for REMNotificationIdentifier.objectID(_:))
  {

    (*(v226 + 96))(v240, v155);
    v242 = *v240;
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v243 = swift_allocObject();
    *(v243 + 16) = xmmword_100033D00;
    *(v243 + 32) = v242;
    v244 = v555;
    *v555 = v243;
    v245 = v620;
    (*(v620 + 104))(v244, enum case for REMSearchCriterion.objectID(_:), v624);
    v246 = v242;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_10002B4CC(0, *(v152 + 16) + 1, 1, v152);
    }

    v248 = *(v152 + 16);
    v247 = *(v152 + 24);
    v249 = v248 + 1;
    if (v248 >= v247 >> 1)
    {
      v152 = sub_10002B4CC(v247 > 1, v248 + 1, 1, v152);
    }

LABEL_59:
    *(v152 + 16) = v249;
    v253 = v245;
    v254 = v245 + 32;
    v255 = *(v245 + 32);
    v256 = (v152 + ((*(v245 + 80) + 32) & ~*(v245 + 80)));
    v257 = *(v254 + 40);
    v255(&v256[v257 * v248], v244, v624);
    v631 = v152;
    v258 = sub_100030654();
    v259 = sub_100030884();
    if (os_log_type_enabled(v258, v259))
    {
      v260 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      v262 = v152;
      v263 = v261;
      v630 = v261;
      *v260 = 136446210;
      v625 = v262;
      v264 = v262[2];
      if (v264)
      {
        v265 = &v256[v257 * (v264 - 1)];
        v266 = v253;
        v267 = v556;
        v153 = v624;
        (*(v253 + 16))(v556, v265, v624);
        v268 = 0;
      }

      else
      {
        v268 = 1;
        v153 = v624;
        v266 = v253;
        v267 = v556;
      }

      (*(v266 + 56))(v267, v268, 1, v153);
      v269 = sub_100030704();
      v271 = sub_10002B88C(v269, v270, &v630);
      v154 = v253;

      *(v260 + 4) = v271;
      _os_log_impl(&_mh_execute_header, v258, v259, "[Announce Reminders] Added %{public}s to search criteria", v260, 0xCu);
      sub_100008D70(v263);

      (v614)(v612, v627);
      v134 = v623;
      v152 = v625;
      v151 = v626;
    }

    else
    {

      (v614)(v612, v627);
      v153 = v624;
      v134 = v623;
      v154 = v253;
    }

    goto LABEL_65;
  }

  v250 = v624;
  v245 = v620;
  if (v241 == enum case for REMNotificationIdentifier.daCalendarItemUniqueIdentifier(_:))
  {

    (*(v226 + 96))(v240, v155);
    v251 = *(v240 + 1);
    v244 = v554;
    *v554 = *v240;
    v244[1] = v251;
    (*(v245 + 104))(v244, enum case for REMSearchCriterion.daCalendarItemUniqueIdentifier(_:), v250);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_10002B4CC(0, *(v152 + 16) + 1, 1, v152);
    }

    v248 = *(v152 + 16);
    v252 = *(v152 + 24);
    v249 = v248 + 1;
    if (v248 >= v252 >> 1)
    {
      v152 = sub_10002B4CC(v252 > 1, v248 + 1, 1, v152);
    }

    goto LABEL_59;
  }

LABEL_234:

  _Block_release(v578);
  result = sub_100030D34();
  __break(1u);
  return result;
}

uint64_t sub_100008944(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000898C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000089D8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100008A10(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008A54()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008AA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008B50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008944(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008BB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008944(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008C18()
{
  result = qword_100041C10;
  if (!qword_100041C10)
  {
    sub_100008C7C(&qword_100041C08, &qword_100033DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041C10);
  }

  return result;
}

uint64_t sub_100008C7C(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_100008CC4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100008D28(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100008D70(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100008DE4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100008E98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMSmartListType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008F14()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100041CE0);
  v1 = sub_1000089D8(v0, qword_100041CE0);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100008FDC(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_100030CE4();
    if (v4 > 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    if (qword_100041AD0 != -1)
    {
      swift_once();
    }

    v34 = sub_100030664();
    sub_1000089D8(v34, qword_100041CE0);
    v35 = sub_100030654();
    v36 = sub_100030884();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No reminder matches with the term {result: .unsupported}", v37, 2u);
    }

    sub_100008D28(0, &qword_100041EA8, INTaskResolutionResult_ptr);
    v33 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_35;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 <= 0)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v4 == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_100030BA4();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(a1 + 32);
    }

    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    isa = sub_1000309E4();
    if (qword_100041AD0 != -1)
    {
      swift_once();
    }

    v7 = sub_100030664();
    sub_1000089D8(v7, qword_100041CE0);

    v8 = sub_100030654();
    v9 = sub_100030884();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = sub_100030BA4();
      }

      else
      {
        v12 = *(a1 + 32);
      }

      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "One reminder matches with the term {result: .success(%@)}", v10, 0xCu);
      sub_100008BB8(v11, &unk_100041BF0, &unk_100033DB0);
    }

    v32 = [objc_opt_self() successWithResolvedTask:isa];
  }

  else
  {
    if (qword_100041AD0 != -1)
    {
      swift_once();
    }

    v13 = sub_100030664();
    sub_1000089D8(v13, qword_100041CE0);
    v14 = sub_100030654();
    v15 = sub_100030884();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Multiple reminders match with the term {result: .disambiguation}", v16, 2u);
    }

    v17 = sub_100030654();
    v18 = sub_100030884();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136315138;
      sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
      v21 = sub_1000307A4();
      v23 = sub_10002B88C(v21, v22, &v39);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Matching reminders: %s", v19, 0xCu);
      sub_100008D70(v20);
    }

    v39 = &_swiftEmptyArrayStorage;
    sub_100030BF4();
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v25 = v24 + 1;
        sub_100030BA4();
        sub_1000309E4();
        sub_100030BD4();
        v26 = v39[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        v24 = v25;
      }

      while (v4 != v25);
    }

    else
    {
      v27 = (a1 + 32);
      do
      {
        v28 = *v27++;
        v29 = v28;
        sub_1000309E4();
        sub_100030BD4();
        v30 = v39[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        --v4;
      }

      while (v4);
    }

    v31 = objc_opt_self();
    isa = sub_100030784().super.isa;

    v32 = [v31 disambiguationWithTasksToDisambiguate:isa];
  }

  v33 = v32;

LABEL_35:
  v38 = v33;
  a2();
}

void sub_1000096E4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v10 = a3;
  v9 = a1;
  a5(v10, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

void sub_100009778(void **a1, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v10 = *a1;
  if (*a1)
  {
    v11 = qword_100041AD0;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_100030664();
    sub_1000089D8(v13, qword_100041CE0);
    v14 = v12;
    v15 = sub_100030654();
    v16 = sub_100030884();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = a7;
      v19 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v19 = v10;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Populating contactRepresentation {contactRepresentation: %@}", v17, 0xCu);
      sub_100008BB8(v19, &unk_100041BF0, &unk_100033DB0);
      a7 = v18;
    }

    v21 = v14;
    sub_100030124();
  }

  v49 = 0;
  v22 = [a3 saveSynchronouslyWithError:&v49];
  v23 = v49;
  if (!v22)
  {
    goto LABEL_10;
  }

  sub_100030074();
  v24 = v23;
  sub_100030064();
  sub_100030054();

  v25 = *(a4 + OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_store);
  v49 = 0;
  v26 = [v25 fetchReminderWithObjectID:a5 error:&v49];
  v23 = v49;
  if (v26)
  {
    v27 = v26;
    v28 = objc_allocWithZone(INSetTaskAttributeIntentResponse);
    v29 = v23;
    v30 = [v28 initWithCode:3 userActivity:0];
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v31 = v27;
    v32 = sub_1000309E4();
    [v30 setModifiedTask:v32];

    v49 = a6;
    v33 = sub_100030104();
    v34 = [v33 accountCapabilities];

    sub_100008D28(0, &unk_100041E50, INSetTaskAttributeIntent_ptr);
    v35 = sub_1000302B4();

    [v30 setWarnings:v35];
    (a7)(v30);
  }

  else
  {
LABEL_10:
    v36 = v23;
    sub_10002FE24();

    swift_willThrow();
    if (qword_100041AD0 != -1)
    {
      swift_once();
    }

    v37 = sub_100030664();
    sub_1000089D8(v37, qword_100041CE0);
    swift_errorRetain();
    v38 = sub_100030654();
    v39 = sub_100030864();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = a7;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v43 = sub_100030D64();
      v45 = sub_10002B88C(v43, v44, &v49);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error saving saveRequest {error: %s}", v41, 0xCu);
      sub_100008D70(v42);

      a7 = v40;
    }

    v46 = [objc_allocWithZone(INSetTaskAttributeIntentResponse) initWithCode:4 userActivity:0];
    a7();
  }
}

void sub_100009CB0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_100009D74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSetTaskAttributeIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100009E60(void *a1, void *a2, void (**a3)(void, void))
{
  v47 = sub_100030354();
  v45 = *(v47 - 8);
  v6 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = swift_allocObject();
  *(v46 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AD0 != -1)
  {
    swift_once();
  }

  v8 = sub_100030664();
  sub_1000089D8(v8, qword_100041CE0);
  v9 = a1;
  v10 = sub_100030654();
  v11 = sub_100030884();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v42 = a2;
    v43 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v49 = v14;
    *v13 = 136315138;
    v15 = [v9 targetTask];
    v48 = v15;
    sub_100008944(&qword_100041E60, &qword_1000340B8);
    v16 = sub_100030A94();
    v18 = v17;

    v19 = sub_10002B88C(v16, v18, &v49);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "SiriKit asked for resolving target task {targetTask: %s}", v13, 0xCu);
    sub_100008D70(v14);

    a2 = v42;
    a3 = v43;
  }

  v20 = [v9 targetTask];
  if (v20)
  {
    v21 = v20;
    v22 = [v9 status] == 1;
    v23 = v44;
    v24 = v45;
    *v44 = v22;
    v25 = v47;
    (*(v24 + 104))(v23, enum case for REMSearchCriterion.isCompleted(_:), v47);
    v26 = (a2 + OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_dataSource);
    v27 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_dataSource + 24);
    v43 = v26[4];
    v42 = sub_100008A10(v26, v27);
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100033D00;
    *(inited + 32) = v21;
    sub_100008944(&qword_100041C28, &qword_100033DD0);
    v29 = *(v24 + 72);
    v30 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100033CF0;
    (*(v24 + 16))(v31 + v30, v23, v25);
    v32 = swift_allocObject();
    v33 = v46;
    *(v32 + 16) = sub_1000089C4;
    *(v32 + 24) = v33;
    v34 = v21;

    sub_10000B8D8(inited, v31, sub_10000B8C8, v32, v27, v43);

    swift_setDeallocating();
    v35 = *(inited + 16);
    swift_arrayDestroy();
    (*(v24 + 8))(v23, v47);
  }

  else
  {
    v36 = sub_100030654();
    v37 = sub_100030864();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "INSetTaskAttributeIntent contains nil targetTask, returning INTask.disambiguateWithIncompleteReminders", v38, 2u);
    }

    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v39 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_store);
    sub_100008D28(0, &qword_100041EA8, INTaskResolutionResult_ptr);
    v40 = sub_100030994();
    (a3)[2](a3, v40);
  }
}

uint64_t sub_10000A380(void *a1)
{
  v2 = [a1 contactEventTrigger];
  if (v2)
  {
    goto LABEL_2;
  }

  if ([a1 priority])
  {
    return 0;
  }

  v2 = [a1 spatialEventTrigger];
  if (v2)
  {
    goto LABEL_2;
  }

  if ([a1 status])
  {
    return 0;
  }

  v2 = [a1 taskTitle];
  if (v2 || (v2 = [a1 temporalEventTrigger]) != 0)
  {
LABEL_2:

    return 0;
  }

  return 1;
}

void sub_10000A448(void *a1, uint64_t a2)
{
  if (qword_100041AD0 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100041CE0);
  v5 = a1;
  v6 = sub_100030654();
  v7 = sub_100030884();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v30 = [v5 taskTitle];
    sub_100008944(&qword_100041EA0, &qword_1000340D8);
    v10 = sub_100030A94();
    v12 = v11;

    v13 = sub_10002B88C(v10, v12, &v31);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "SiriKit asked for resolving task title {taskTitle: %s}", v8, 0xCu);
    sub_100008D70(v9);
  }

  v14 = [v5 taskTitle];
  if (v14)
  {
    v15 = v14;
    v16 = v14;
    v17 = sub_100030654();
    v18 = sub_100030884();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v15;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Resolving TaskTitle, got new task title, returning success {taskTitle: %@}", v19, 0xCu);
      sub_100008BB8(v20, &unk_100041BF0, &unk_100033DB0);
    }

    v22 = [objc_opt_self() successWithResolvedString:v16];
    (*(a2 + 16))(a2, v22);
  }

  else
  {
    v23 = sub_10000A380(v5);
    v24 = sub_100030654();
    v25 = sub_100030884();
    v26 = os_log_type_enabled(v24, v25);
    if (v23)
    {
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving TaskTitle, nothing to do, returning .needsValue()", v27, 2u);
      }

      sub_100008D28(0, &qword_1000425A0, INSpeakableStringResolutionResult_ptr);
      v28 = [swift_getObjCClassFromMetadata() needsValue];
    }

    else
    {
      if (v26)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving TaskTitle, no title, other stuff to do, returning .notRequired()", v29, 2u);
      }

      sub_100008D28(0, &qword_1000425A0, INSpeakableStringResolutionResult_ptr);
      v28 = [swift_getObjCClassFromMetadata() notRequired];
    }

    v22 = v28;
    (*(a2 + 16))(a2, v22);
  }
}

void sub_10000A86C(void *a1, char *a2, void (**a3)(void, void))
{
  v125 = sub_100030234();
  v124 = *(v125 - 8);
  v6 = *(v124 + 64);
  __chkstk_darwin(v125);
  v119 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008944(&qword_1000425D0, &qword_100034098);
  v9 = *(*(v8 - 8) + 64);
  v10 = (__chkstk_darwin)(v8 - 8);
  v122 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v123 = &v116 - v12;
  v13 = sub_10002FE04();
  v127 = *(v13 - 8);
  v128 = v13;
  v14 = *(v127 + 64);
  __chkstk_darwin(v13);
  v126 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = (__chkstk_darwin)(v16 - 8);
  v121 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (__chkstk_darwin)(v18);
  v22 = &v116 - v21;
  __chkstk_darwin(v20);
  v129 = &v116 - v23;
  v130 = swift_allocObject();
  *(v130 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AD0 != -1)
  {
    swift_once();
  }

  v24 = sub_100030664();
  sub_1000089D8(v24, qword_100041CE0);
  sub_100008944(&qword_1000425E0, &unk_100033D90);
  inited = swift_initStackObject();
  v118 = xmmword_100033CF0;
  *(inited + 16) = xmmword_100033CF0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_100008D28(0, &unk_100041E50, INSetTaskAttributeIntent_ptr);
  *(inited + 48) = a1;
  v26 = a1;
  sub_1000216C8(inited);
  swift_setDeallocating();
  sub_100008BB8(inited + 32, &unk_1000425F0, &qword_1000340B0);
  sub_100026D38();

  v27 = v26;
  v28 = sub_100030654();
  v29 = sub_100030884();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "SiriKit asked for handling set task attribute intent {intent: %@}", v30, 0xCu);
    sub_100008BB8(v31, &unk_100041BF0, &unk_100033DB0);
  }

  v33 = [v27 targetTask];
  if (v33)
  {
    v34 = v33;
    v35 = *&a2[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_store];
    v36 = sub_1000309B4();

    if (v36)
    {
      v37 = [v36 objectID];
      v38 = [objc_allocWithZone(REMSaveRequest) initWithStore:v35];
      sub_1000301D4();
      v132 = v36;
      v39 = v38;
      v117 = v36;
      v116 = v39;
      sub_1000300F4();
      v40 = v131[0];
      v41 = [v27 taskTitle];
      v120 = a2;
      if (v41)
      {
        v42 = v41;
        v43 = [v41 spokenPhrase];
        if (!v43)
        {
          sub_1000306F4();
          v43 = sub_1000306C4();
        }

        v44 = [objc_allocWithZone(NSAttributedString) initWithString:v43];

        v45.super.isa = v44;
        v134.value._countAndFlagsBits = 0;
        v134.value._object = 0;
        sub_100030194(v45, v134, 1);
      }

      v46 = [v27 status];
      v47 = v128;
      if (v46)
      {
        if (v46 != 1 && v46 != 2)
        {
          sub_1000216C8(&_swiftEmptyArrayStorage);
          sub_1000216C8(&_swiftEmptyArrayStorage);

          _Block_release(a3);
          v114 = "unknown status";
          v115 = 14;
          goto LABEL_51;
        }

        sub_1000301B4();
      }

      v59 = sub_100030104();
      v60 = [v59 accountCapabilities];

      LODWORD(v59) = [v60 supportsFlagged];
      if (!v59 || (v61 = [v27 priority]) == 0)
      {
LABEL_26:
        v63 = [v27 spatialEventTrigger];
        v64 = v129;
        v65 = v127;
        if (v63)
        {
          v66 = v63;
          sub_100008D28(0, &qword_100041E78, REMAlarmLocationTrigger_ptr);
          v67 = v66;
          v68 = sub_100030964();
          if (v68)
          {
            v69 = v68;
            sub_100030144();
          }

          sub_100008D28(0, &unk_100041E80, REMAlarmVehicleTrigger_ptr);
          v70 = v67;
          v71 = sub_100030954();
          if (v71)
          {
            v72 = v71;
            sub_100030134();

            v70 = v72;
          }
        }

        v73 = [v27 temporalEventTrigger];
        if (v73)
        {
          v74 = v73;
          sub_100030934();
        }

        else
        {
          (*(v65 + 56))(v64, 1, 1, v47);
        }

        sub_100008B50(v64, v22, &qword_100041BB0, &unk_1000340A0);
        if ((*(v65 + 48))(v22, 1, v47) == 1)
        {
          v75 = &qword_100041BB0;
          v76 = &unk_1000340A0;
          v77 = v22;
        }

        else
        {
          v78 = v126;
          (*(v65 + 32))(v126, v22, v47);
          v79 = v121;
          (*(v65 + 16))(v121, v78, v47);
          (*(v65 + 56))(v79, 0, 1, v47);
          sub_100030164();
          sub_100008BB8(v79, &qword_100041BB0, &unk_1000340A0);
          if ([v27 temporalEventTrigger])
          {
            sub_10000B82C(&v120[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_timeProvider], v131);
            v80 = v123;
            sub_100030224();
            v81 = v125;
            v82 = v124;
          }

          else
          {
            v82 = v124;
            v80 = v123;
            v81 = v125;
            (*(v124 + 56))(v123, 1, 1, v125);
          }

          v83 = v122;
          sub_100008B50(v80, v122, &qword_1000425D0, &qword_100034098);
          if ((*(v82 + 48))(v83, 1, v81) != 1)
          {
            v84 = *(v82 + 32);
            v125 = v37;
            v85 = v80;
            v86 = v65;
            v87 = v119;
            v84(v119, v83, v81);
            sub_100008944(&qword_100041E70, &unk_1000340C8);
            v88 = *(v82 + 72);
            v89 = (*(v82 + 80) + 32) & ~*(v82 + 80);
            v90 = swift_allocObject();
            *(v90 + 1) = v118;
            (*(v82 + 16))(&v90[v89], v87, v81);
            v133.value._rawValue = v90;
            v133.is_nil = 0;
            sub_100030154(v133, v91);

            (*(v82 + 8))(v87, v81);
            v92 = v85;
            v37 = v125;
            sub_100008BB8(v92, &qword_1000425D0, &qword_100034098);
            (*(v86 + 8))(v126, v47);
LABEL_44:
            v93 = [v27 contactEventTrigger];
            v94 = v120;
            if (v93 && (v95 = v93, v96 = [v93 triggerContact], v95, v96))
            {
              v97 = sub_100008A10(&v94[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver], *&v94[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver + 24]);
              v98 = *v97;
              *&v99 = __chkstk_darwin(v97);
              *(&v116 - 2) = v99;
              *(&v116 - 2) = v96;
              v100 = sub_100008944(&qword_100041E68, &qword_1000340C0);
              v101 = *(v100 + 48);
              v102 = *(v100 + 52);
              swift_allocObject();
              v103 = v96;
              sub_100030624();
            }

            else
            {
              v131[0] = 0;
              v104 = sub_100008944(&qword_100041E68, &qword_1000340C0);
              v105 = *(v104 + 48);
              v106 = *(v104 + 52);
              swift_allocObject();
              sub_100030614();
              v103 = 0;
            }

            v107 = swift_allocObject();
            v108 = v116;
            v107[2] = v40;
            v107[3] = v108;
            v107[4] = v94;
            v107[5] = v37;
            v107[6] = v27;
            v107[7] = sub_10000B8D4;
            v107[8] = v130;
            v109 = v27;
            v110 = v108;

            v111 = v94;
            v112 = v37;

            v113 = sub_1000305B4();
            sub_1000305F4();

            sub_100008BB8(v129, &qword_100041BB0, &unk_1000340A0);

            return;
          }

          sub_100008BB8(v80, &qword_1000425D0, &qword_100034098);
          (*(v65 + 8))(v126, v47);
          v77 = v83;
          v75 = &qword_1000425D0;
          v76 = &qword_100034098;
        }

        sub_100008BB8(v77, v75, v76);
        goto LABEL_44;
      }

      if (v61 == 1)
      {
        v62 = 0;
LABEL_25:
        sub_1000301C4(v62);
        goto LABEL_26;
      }

      if (v61 == 2)
      {
        v62 = 1;
        goto LABEL_25;
      }

      sub_1000216C8(&_swiftEmptyArrayStorage);
      sub_1000216C8(&_swiftEmptyArrayStorage);

      _Block_release(a3);
      v114 = "unknown priority";
      v115 = 16;
LABEL_51:
      sub_100026B5C(v114, v115, 2);
      __break(1u);
      return;
    }
  }

  v48 = v27;
  v49 = sub_100030654();
  v50 = sub_100030864();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v131[0] = v52;
    *v51 = 136315138;
    v53 = [v48 targetTask];
    v132 = v53;
    sub_100008944(&qword_100041E60, &qword_1000340B8);
    v54 = sub_100030A94();
    v56 = v55;

    v57 = sub_10002B88C(v54, v56, v131);

    *(v51 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "Should have resolved targetTask into a reminder. {targetTask: %s}", v51, 0xCu);
    sub_100008D70(v52);
  }

  v58 = [objc_allocWithZone(INSetTaskAttributeIntentResponse) initWithCode:4 userActivity:0];
  (a3)[2](a3, v58);
}

uint64_t sub_10000B760()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B798()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000B82C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B890()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000B8D8(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v41 = a5;
  v51 = sub_100030354();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v51);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v14 = sub_100030CE4();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = a3;
  v45 = a4;
  v40 = a2;
  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    v15 = 0;
    v52 = a1 & 0xC000000000000001;
    v49 = enum case for REMStringMatchingStyle.prefix(_:);
    v48 = enum case for REMSearchCriterion.textualField(_:);
    v46 = v10 + 32;
    v47 = (v10 + 104);
    v16 = &_swiftEmptyArrayStorage;
    v50 = &_swiftEmptyArrayStorage;
    do
    {
      if (v52)
      {
        v18 = sub_100030BA4();
      }

      else
      {
        v18 = *(a1 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = sub_1000309A4();
      if (v20)
      {
        v17 = v20;
        sub_100030774();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000307B4();
        }

        sub_1000307C4();

        v50 = v54;
      }

      else
      {
        v21 = [v19 title];
        v22 = [v21 spokenPhrase];

        v23 = sub_1000306F4();
        v25 = v24;

        v26 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
        *v13 = v23;
        v13[1] = v25;
        v27 = sub_100030474();
        (*(*(v27 - 8) + 104))(v13 + v26, v49, v27);
        (*v47)(v13, v48, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_10002B4CC(0, v16[2] + 1, 1, v16);
        }

        v29 = v16[2];
        v28 = v16[3];
        if (v29 >= v28 >> 1)
        {
          v16 = sub_10002B4CC(v28 > 1, v29 + 1, 1, v16);
        }

        v16[2] = v29 + 1;
        (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v13, v51);
      }

      ++v15;
    }

    while (v14 != v15);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
    v50 = &_swiftEmptyArrayStorage;
  }

  v31 = v42;
  v30 = v43;
  v32 = v41;
  v33 = (*(v42 + 8))(v50, v41, v42);
  if (v16[2])
  {
    v34 = sub_100008944(&qword_100041F70, &qword_100034138);
    __chkstk_darwin(v34);
    *(&v39 - 4) = v32;
    *(&v39 - 3) = v31;
    v35 = v40;
    *(&v39 - 2) = v30;
    *(&v39 - 1) = v35;
    v36 = sub_10002806C(sub_10000D7C4, (&v39 - 6), v16);

    v53 = v36;
    sub_100008944(&qword_100041F78, &qword_100034140);
    sub_10000D87C(&qword_100041F80, &qword_100041F78, &qword_100034140);
    sub_1000305D4();

    v37 = swift_allocObject();
    v37[2] = v44;
    v37[3] = v45;
    v37[4] = v33;

    v38 = sub_1000305B4();
    sub_1000305F4();
  }

  else
  {

    v44(v33);
  }
}

uint64_t sub_10000BDF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100008944(&qword_100041C28, &qword_100033DD0);
  v3 = sub_100030354();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100033CF0;
  (*(v4 + 16))(v7 + v6, a1, v3);

  sub_10000CD78(v7);
  v8 = sub_10000BF44();

  *a2 = v8;
  return result;
}

uint64_t sub_10000BF44()
{
  v0 = sub_100008944(&qword_100041F70, &qword_100034138);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_100030624();
}

uint64_t sub_10000BFB0(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C04C(*a1);

  sub_10000CED4(v6, sub_10000D20C);
  a2(a4);
}

uint64_t sub_10000C04C(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v3 = &unk_100041F88;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_100030CE4();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_100030CE4();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_100030CE4();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_100030BB4();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_10000D87C(&qword_100041F90, v3, &unk_100034148);
      for (i = 0; i != v15; ++i)
      {
        sub_100008944(v3, &unk_100034148);
        v19 = v3;
        v20 = sub_10002C064(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_100030CE4();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10000C330(uint64_t a1)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = *(sub_1000303E4() - 8);
  v4 = &_swiftEmptyArrayStorage;
  v32 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v31 = *(v3 + 72);
  v5 = &unk_100041F50;
  while (1)
  {
    v7 = sub_1000303D4();
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? sub_100030CE4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v29 = sub_100030CE4();
      v13 = v29 + v10;
      if (__OFADD__(v29, v10))
      {
LABEL_34:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        sub_100030CE4();
        goto LABEL_17;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_17:
    result = sub_100030BB4();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v17 >> 1) - v16) < v37)
    {
      goto LABEL_38;
    }

    v34 = v2;
    v35 = v4;
    v20 = v14 + 8 * v16 + 32;
    v30 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_10000D87C(&qword_100041F58, v5, &qword_100034118);
      for (i = 0; i != v18; ++i)
      {
        sub_100008944(v5, &qword_100034118);
        v22 = v5;
        v23 = sub_10002C064(v36, i, v8);
        v25 = *v24;
        (v23)(v36, 0);
        v5 = v22;
        *(v20 + 8 * i) = v25;
      }
    }

    else
    {
      sub_100008D28(0, &qword_100041F48, REMList_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v34;
    v4 = v35;
    if (v37 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v37);
      v28 = v26 + v37;
      if (v27)
      {
        goto LABEL_39;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v4;
    }
  }

  v19 = v14;
  result = sub_100030CE4();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000C664(uint64_t a1)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = *(sub_1000303E4() - 8);
  v4 = &_swiftEmptyArrayStorage;
  v32 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v31 = *(v3 + 72);
  v5 = &unk_100041F38;
  while (1)
  {
    v7 = sub_1000303B4();
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? sub_100030CE4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v29 = sub_100030CE4();
      v13 = v29 + v10;
      if (__OFADD__(v29, v10))
      {
LABEL_34:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        sub_100030CE4();
        goto LABEL_17;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_17:
    result = sub_100030BB4();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v17 >> 1) - v16) < v37)
    {
      goto LABEL_38;
    }

    v34 = v2;
    v35 = v4;
    v20 = v14 + 8 * v16 + 32;
    v30 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_10000D87C(&qword_100041F40, v5, &qword_100034110);
      for (i = 0; i != v18; ++i)
      {
        sub_100008944(v5, &qword_100034110);
        v22 = v5;
        v23 = sub_10002C064(v36, i, v8);
        v25 = *v24;
        (v23)(v36, 0);
        v5 = v22;
        *(v20 + 8 * i) = v25;
      }
    }

    else
    {
      sub_100008D28(0, &qword_100041F30, REMSmartList_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v34;
    v4 = v35;
    if (v37 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v37);
      v28 = v26 + v37;
      if (v27)
      {
        goto LABEL_39;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v4;
    }
  }

  v19 = v14;
  result = sub_100030CE4();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10000D764;
  *(v14 + 24) = v13;
  v15 = *(a8 + 24);

  v15(a6, sub_10000D854, v14, a7, a8);
}

uint64_t sub_10000CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(a7 + 80);

  v12(sub_10000D730, v11, a6, a7);
}

uint64_t sub_10000CBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = sub_100008944(a3, a4);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_100030624();
}

uint64_t sub_10000CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10000D764;
  *(v12 + 24) = v11;
  v13 = *(a7 + 88);

  v13(sub_10000D79C, v12, a6, a7);
}

uint64_t sub_10000CCE8(uint64_t *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = sub_10000C330(*a1);
  v5 = sub_10000C664(v3);
  a2(v4, v5);
}

uint64_t sub_10000CD78(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10002B4CC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_100030354();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000CED4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_100030CE4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_100030CE4();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10000CFCC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10000CFCC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_100030CE4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_100030BB4();
  *v1 = result;
  return result;
}

uint64_t sub_10000D06C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100030CE4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100030CE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D87C(&qword_100041FA0, &qword_100041F98, &qword_100034158);
          for (i = 0; i != v6; ++i)
          {
            sub_100008944(&qword_100041F98, &qword_100034158);
            v9 = sub_10002C064(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D20C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100030CE4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100030CE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D87C(&qword_100041F90, &qword_100041F88, &unk_100034148);
          for (i = 0; i != v6; ++i)
          {
            sub_100008944(&qword_100041F88, &unk_100034148);
            v9 = sub_10002C064(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D3AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100030CE4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100030CE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D87C(&qword_100041F40, &qword_100041F38, &qword_100034110);
          for (i = 0; i != v6; ++i)
          {
            sub_100008944(&qword_100041F38, &qword_100034110);
            v9 = sub_10002C064(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008D28(0, &qword_100041F30, REMSmartList_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D54C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100030CE4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100030CE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D87C(&qword_100041F58, &qword_100041F50, &qword_100034118);
          for (i = 0; i != v6; ++i)
          {
            sub_100008944(&qword_100041F50, &qword_100034118);
            v9 = sub_10002C064(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008D28(0, &qword_100041F48, REMList_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D6F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000D764(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_10000D79C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000D7C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_10000BDF4(a1, a2);
}

uint64_t sub_10000D7E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000D87C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008C7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D8E0(uint64_t a1, unint64_t a2)
{
  v84 = sub_100030394();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v84);
  v83 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v67 - v8;
  v9 = sub_100030354();
  base_props = v9[-1].base_props;
  v11 = *(base_props + 8);
  __chkstk_darwin(v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v67 - v15;
  __chkstk_darwin(v16);
  v85 = &v67 - v17;
  __chkstk_darwin(v18);
  v20 = &v67 - v19;
  v21 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v22 < 2)
  {
    goto LABEL_12;
  }

  v68 = v21;
  v69 = v13;
  v71 = a1;
  v23 = *(a1 + 16);
  v73 = a2;

  v70 = v23;
  v24 = v85;
  if (!v23)
  {
LABEL_11:

    goto LABEL_12;
  }

  v26 = *(base_props + 2);
  v25 = base_props + 16;
  v91 = v26;
  v27 = v71 + ((v25[64] + 32) & ~v25[64]);
  v88 = *(v25 + 7);
  v90 = (v25 + 72);
  v28 = enum case for REMSearchCriterion.listType(_:);
  v81 = (v25 + 80);
  v78 = (v4 + 32);
  v77 = enum case for REMSearchableListType.grocery(_:);
  v76 = (v4 + 104);
  v75 = (v4 + 8);
  v89 = v25 - 8;
  v67 = v27;
  v29 = v27;
  v30 = v70;
  v79 = v20;
  v80 = v25;
  while (1)
  {
    v32 = v91;
    v91(v20, v29, v9);
    v32(v24, v20, v9);
    v33 = *v90;
    if ((*v90)(v24, v9) == v28)
    {
      break;
    }

    v31 = *v89;
    (*v89)(v24, v9);
LABEL_7:
    v31(v20, v9);
    v29 += v88;
    if (!--v30)
    {
      goto LABEL_11;
    }
  }

  v86 = v33;
  v74 = *v81;
  v74(v24, v9);
  v34 = v82;
  v35 = v24;
  v36 = v84;
  (*v78)(v82, v35, v84);
  v37 = v83;
  (*v76)(v83, v77, v36);
  v87 = sub_100030384();
  v38 = *v75;
  (*v75)(v37, v36);
  v38(v34, v36);
  v31 = *v89;
  if ((v87 & 1) == 0)
  {
    v20 = v79;
    v24 = v85;
    goto LABEL_7;
  }

  base_props = v9;
  v31(v79, v9);

  v21 = enum case for REMSearchCriterion.textualField(_:);
  v43 = v72;
  v44 = v67;
  v45 = v70;
  v46 = v74;
  while (1)
  {
    v91(v43, v44, base_props);
    if (v86(v43, base_props) == v21)
    {
      break;
    }

    v31(v43, base_props);
    v44 += v88;
    if (!--v45)
    {
      goto LABEL_11;
    }
  }

  v46(v43, base_props);
  v88 = *(v43 + 1);
  v47 = sub_100008944(&qword_100041BE8, &qword_100034130);
  v20 = v44;
  v48 = *(v47 + 48);
  v49 = sub_100030474();
  v50 = *(*(v49 - 8) + 8);
  v50(&v43[v48], v49);

  v51 = v69;
  v91(v69, v20, base_props);
  if (v86(v51, base_props) == v21)
  {
    v74(v51, base_props);
    v52 = *(v51 + 1);
    v90 = *v51;
    v91 = v52;
    v50(&v51[*(v47 + 48)], v49);

    v95 = &_swiftEmptyArrayStorage;
    a2 = v73;
    if (v68)
    {
      v4 = sub_100030CE4();
    }

    else
    {
      v4 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      v13 = 0;
      v53 = a2 & 0xC000000000000001;
      a1 = a2 & 0xFFFFFFFFFFFFFF8;
      v9 = &TTRBundleLookupObject__metaData;
      v54 = &TTRBundleLookupObject__metaData;
      v89 = v4;
      while (1)
      {
        if (v53)
        {
          v55 = sub_100030BA4();
        }

        else
        {
          if (v13 >= *(a1 + 16))
          {
            goto LABEL_49;
          }

          v55 = *(a2 + 8 * v13 + 32);
        }

        v21 = v55;
        base_props = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          v22 = sub_100030CE4();
          goto LABEL_3;
        }

        v56 = [v55 v9[52].ivars];
        if (v56)
        {
          v20 = v56;
          if ([v56 v54[52].weak_ivar_lyt])
          {
            v57 = a1;
            v58 = v53;
            v59 = v9;
            v60 = [v21 name];
            v61 = sub_1000306F4();
            v63 = v62;

            v94[0] = v61;
            v94[1] = v63;
            v92 = v90;
            v93 = v91;
            sub_10000FA88();
            v64 = sub_100030AA4();

            if (v64)
            {
            }

            else
            {
              sub_100030BD4();
              v20 = v95[2];
              sub_100030C04();
              sub_100030C14();
              sub_100030BE4();
            }

            a2 = v73;
            v9 = v59;
            v53 = v58;
            a1 = v57;
            v4 = v89;
            v54 = &TTRBundleLookupObject__metaData;
            goto LABEL_28;
          }
        }

LABEL_28:
        ++v13;
        if (base_props == v4)
        {
          v65 = v95;
          goto LABEL_42;
        }
      }
    }

    v65 = &_swiftEmptyArrayStorage;
LABEL_42:

    if ((v65 & 0x8000000000000000) != 0 || (v65 & 0x4000000000000000) != 0)
    {
      if (sub_100030CE4())
      {
LABEL_45:
        if (&_swiftEmptyArrayStorage >> 62 && sub_100030CE4())
        {
          sub_10000F634(&_swiftEmptyArrayStorage);
        }

        else
        {
          v66 = &_swiftEmptySetSingleton;
        }

        v94[0] = v66;
        v41 = sub_10000F900(v65, v94);

        goto LABEL_15;
      }
    }

    else if (*(v65 + 16))
    {
      goto LABEL_45;
    }

LABEL_12:
    if (&_swiftEmptyArrayStorage >> 62 && sub_100030CE4())
    {
      sub_10000F634(&_swiftEmptyArrayStorage);
    }

    else
    {
      v39 = &_swiftEmptySetSingleton;
    }

    v94[0] = v39;

    v41 = sub_10000F900(v40, v94);

LABEL_15:

    return v41;
  }

  result = (v31)(v51, base_props);
  __break(1u);
  return result;
}

uint64_t sub_10000E208(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100030B24();

    if (v9)
    {

      sub_10000FADC();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_100030B14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10000E570(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10000E750(v21 + 1);
    }

    v19 = v8;
    sub_10000EBD8(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10000FADC();
  v11 = sub_100030A54(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10000EC5C(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100030A64();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_10000E420(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100030D84();
  sub_100030734();
  v9 = sub_100030D94();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100030D44() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10000EDBC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10000E570(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100008944(&qword_100041FB0, &qword_100034160);
    v2 = sub_100030B64();
    v15 = v2;
    sub_100030B04();
    if (sub_100030B34())
    {
      sub_10000FADC();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000E750(v9 + 1);
        }

        v2 = v15;
        result = sub_100030A54(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_100030B34());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10000E750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008944(&qword_100041FB0, &qword_100034160);
  result = sub_100030B54();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_100030A54(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10000E978(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008944(&qword_100041FB8, &qword_100034168);
  result = sub_100030B54();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100030D84();
      sub_100030734();
      result = sub_100030D94();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10000EBD8(uint64_t a1, uint64_t a2)
{
  sub_100030A54(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_100030AF4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10000EC5C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000E750(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000EF3C();
      goto LABEL_12;
    }

    sub_10000F1E8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_100030A54(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000FADC();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100030A64();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100030D54();
  __break(1u);
}

Swift::Int sub_10000EDBC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000E978(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000F08C();
      goto LABEL_16;
    }

    sub_10000F3FC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100030D84();
  sub_100030734();
  result = sub_100030D94();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100030D44();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100030D54();
  __break(1u);
  return result;
}

id sub_10000EF3C()
{
  v1 = v0;
  sub_100008944(&qword_100041FB0, &qword_100034160);
  v2 = *v0;
  v3 = sub_100030B44();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_10000F08C()
{
  v1 = v0;
  sub_100008944(&qword_100041FB8, &qword_100034168);
  v2 = *v0;
  v3 = sub_100030B44();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10000F1E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008944(&qword_100041FB0, &qword_100034160);
  result = sub_100030B54();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_100030A54(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10000F3FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008944(&qword_100041FB8, &qword_100034168);
  result = sub_100030B54();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100030D84();

      sub_100030734();
      result = sub_100030D94();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_10000F634(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_100030CE4())
    {
LABEL_3:
      sub_100008944(&qword_100041FB0, &qword_100034160);
      v3 = sub_100030B74();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_100030CE4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100030BA4();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100030A54(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000FADC();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100030A64();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_100030A54(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000FADC();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100030A64();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_10000F900(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v20 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_16:
    v4 = sub_100030CE4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v8 = sub_100030BA4();
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
            return v20;
          }
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v3 + 8 * v5 + 32);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        v10 = v8;
        v11 = sub_10000E208(&v19, v10);

        if (v11)
        {
          sub_100030BD4();
          v12 = v6;
          v13 = v4;
          v14 = v3;
          v15 = a2;
          v16 = v20[2];
          sub_100030C04();
          a2 = v15;
          v3 = v14;
          v4 = v13;
          v6 = v12;
          v7 = v18;
          sub_100030C14();
          sub_100030BE4();
        }

        else
        {
        }

        ++v5;
        if (v9 == v4)
        {
          return v20;
        }
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_10000FA88()
{
  result = qword_100041FA8;
  if (!qword_100041FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041FA8);
  }

  return result;
}

unint64_t sub_10000FADC()
{
  result = qword_100041F48;
  if (!qword_100041F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041F48);
  }

  return result;
}

uint64_t sub_10000FB28()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100041FC0);
  v1 = sub_1000089D8(v0, qword_100041FC0);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000FBF0(uint64_t a1)
{
  v2 = v1;
  if (qword_100041AD8 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100041FC0);
  v5 = sub_100030654();
  v6 = sub_100030884();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[TTRIntentsHandlerStoreDataSource] Using the backup intents handler data source", v7, 2u);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_10000FCE0(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100030414();
  v4 = *(v2 + 16);
  v5 = [objc_opt_self() defaultFetchOptions];
  v6 = sub_100030404();

  a2(v6);
}

void *sub_10000FF24(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!sub_100030CE4())
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = *(v1 + 16);
  sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
  isa = sub_100030784().super.isa;
  v19 = 0;
  v4 = [v2 fetchRemindersWithObjectIDs:isa error:&v19];

  v5 = v19;
  if (v4)
  {
    sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
    sub_100012784();
    v6 = sub_100030684();
    v7 = v5;

    v8 = sub_10002BE34(v6);

    return v8;
  }

  v10 = v19;
  sub_10002FE24();

  swift_willThrow();
  if (qword_100041AD8 != -1)
  {
    swift_once();
  }

  v11 = sub_100030664();
  sub_1000089D8(v11, qword_100041FC0);

  v12 = sub_100030654();
  v13 = sub_100030864();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    v16 = sub_1000307A4();
    v18 = sub_10002B88C(v16, v17, &v19);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Error fetching reminders by objetIDs {objectIDs: %s}", v14, 0xCu);
    sub_100008D70(v15);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000101CC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v7 = sub_1000303E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  if (*(a1 + 16) <= 1uLL)
  {
    sub_100030414();
    v15 = *(v3 + 16);
    sub_1000303A4();
    a2(v12);
    return (*(v8 + 8))(v12, v7);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;

    sub_10002833C(a1, sub_100012834, v13);
  }
}

uint64_t sub_100010510(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_1000303E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000303C4();
  a3(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100010614(unint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v84 = a3;
  v83 = a2;
  v82 = sub_1000303E4();
  v81 = *(v82 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100030354();
  v95 = *(v100 - 8);
  v10 = *(v95 + 64);
  __chkstk_darwin(v100);
  v89 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v79 - v13;
  v102 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v14 = sub_100030CE4();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_3:
      if (v14 >= 1)
      {
        v15 = 0;
        v16 = a1 & 0xC000000000000001;
        v90 = enum case for REMSearchCriterion.textualField(_:);
        v91 = enum case for REMStringMatchingStyle.prefix(_:);
        v96 = (v95 + 32);
        v97 = (v95 + 104);
        v88 = 0x8000000100034940;
        v87 = enum case for REMSearchableListType.grocery(_:);
        v6 = &_swiftEmptyArrayStorage;
        v86 = enum case for REMSearchCriterion.listType(_:);
        v99 = &_swiftEmptyArrayStorage;
        v92 = a1 & 0xC000000000000001;
        v93 = v14;
        v94 = a1;
        while (1)
        {
          if (v16)
          {
            v17 = sub_100030BA4();
          }

          else
          {
            v17 = *(a1 + 8 * v15 + 32);
          }

          v18 = v17;
          v19 = sub_100030834();
          if (v19)
          {
            v20 = v19;
            sub_100030774();
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1000307B4();
            }

            sub_1000307C4();

            v99 = v102;
            goto LABEL_7;
          }

          v21 = [v18 title];
          v22 = [v21 spokenPhrase];

          v23 = sub_1000306F4();
          v25 = v24;

          v26 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
          v27 = v98;
          *v98 = v23;
          *(v27 + 1) = v25;
          v28 = sub_100030474();
          (*(*(v28 - 8) + 104))(&v27[v26], v91, v28);
          v29 = *v97;
          (*v97)(v27, v90, v100);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_10002B4CC(0, v6[2] + 1, 1, v6);
          }

          v31 = v6[2];
          v30 = v6[3];
          if (v31 >= v30 >> 1)
          {
            v6 = sub_10002B4CC(v30 > 1, v31 + 1, 1, v6);
          }

          v6[2] = v31 + 1;
          v32 = (*(v95 + 80) + 32) & ~*(v95 + 80);
          v33 = v6;
          v34 = v6 + v32;
          v35 = *(v95 + 72);
          v36 = &v34[v35 * v31];
          v37 = *(v95 + 32);
          v37(v36, v98, v100);
          v38 = [v18 title];
          v39 = [v38 vocabularyIdentifier];

          if (v39)
          {
            v40 = sub_1000306F4();
            v42 = v41;

            if (v40 == 0xD000000000000011 && v88 == v42)
            {

LABEL_24:
              v44 = sub_100030394();
              v45 = v89;
              (*(*(v44 - 8) + 104))(v89, v87, v44);
              v29(v45, v86, v100);
              v47 = v33[2];
              v46 = v33[3];
              if (v47 >= v46 >> 1)
              {
                v33 = sub_10002B4CC(v46 > 1, v47 + 1, 1, v33);
              }

              a1 = v94;

              v33[2] = v47 + 1;
              v48 = v33 + v32 + v47 * v35;
              v6 = v33;
              v37(v48, v89, v100);
              goto LABEL_6;
            }

            v43 = sub_100030D44();

            if (v43)
            {
              goto LABEL_24;
            }
          }

          v6 = v33;
          a1 = v94;
LABEL_6:
          v16 = v92;
          v14 = v93;
LABEL_7:
          if (v14 == ++v15)
          {
            goto LABEL_29;
          }
        }
      }

      __break(1u);
      goto LABEL_61;
    }
  }

  v6 = &_swiftEmptyArrayStorage;
  v99 = &_swiftEmptyArrayStorage;
LABEL_29:
  v5 = v99;
  if (!(v99 >> 62))
  {
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_58:
    v56 = &_swiftEmptyArrayStorage;
    v4 = &_swiftEmptyArrayStorage;
    if (v6[2])
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_57:
  if (!sub_100030CE4())
  {
    goto LABEL_58;
  }

LABEL_31:
  v3 = *(v85 + 16);
  v49 = sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);

  isa = sub_100030784().super.isa;

  v103 = 0;
  v51 = [v3 fetchListsWithObjectIDs:isa error:&v103];

  v52 = v103;
  v98 = v49;
  if (!v51)
  {
    v63 = v103;
    sub_10002FE24();

    swift_willThrow();
    v4 = &_swiftEmptyArrayStorage;
LABEL_48:
    if (qword_100041AD8 != -1)
    {
      swift_once();
    }

    v65 = sub_100030664();
    sub_1000089D8(v65, qword_100041FC0);
    v66 = sub_100030654();
    v67 = sub_100030864();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v103 = v69;
      *v68 = 136315138;

      v70 = v4;
      v71 = sub_1000307A4();
      v73 = v72;

      v74 = sub_10002B88C(v71, v73, &v103);

      *(v68 + 4) = v74;
      v4 = v70;
      _os_log_impl(&_mh_execute_header, v66, v67, "Error fetching lists by objetIDs {objectIDs: %s}", v68, 0xCu);
      sub_100008D70(v69);
    }

    v56 = &_swiftEmptyArrayStorage;
    goto LABEL_53;
  }

  sub_100008D28(0, &qword_100041F48, REMList_ptr);
  sub_100012784();
  v53 = sub_100030684();
  v54 = v52;

  v4 = sub_10002BEF4(v53);

  if (!(v5 >> 62))
  {
    v55 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

LABEL_61:
  v55 = sub_100030CE4();
LABEL_34:
  v56 = &_swiftEmptyArrayStorage;
  if (v55)
  {
    v96 = v4;
    v97 = v6;
    v103 = &_swiftEmptyArrayStorage;

    sub_100030BF4();
    if (v55 < 0)
    {
      __break(1u);
    }

    v57 = 0;
    v6 = (v5 & 0xC000000000000001);
    v100 = v5 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v6)
      {
        v59 = sub_100030BA4();
      }

      else
      {
        if (v57 >= *(v100 + 16))
        {
          goto LABEL_56;
        }

        v59 = *(v5 + 8 * v57 + 32);
      }

      v60 = v59;
      v101[0] = 0;
      if (![v3 fetchCustomSmartListWithObjectID:v59 error:v101])
      {
        v64 = v101[0];

        sub_10002FE24();

        swift_willThrow();

        v4 = v96;
        v6 = v97;
        goto LABEL_48;
      }

      v61 = v101[0];

      sub_100030BD4();
      v62 = v103[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      ++v57;
      v5 = v99;
    }

    while (v58 != v55);

    v56 = v103;
    v4 = v96;
    v6 = v97;
    if (v97[2])
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_53:
  if (v6[2])
  {
LABEL_54:
    v75 = swift_allocObject();
    v76 = v84;
    v75[2] = v83;
    v75[3] = v76;
    v75[4] = v4;
    v75[5] = v6;
    v75[6] = v56;

    sub_10002833C(v6, sub_100012774, v75);
  }

LABEL_59:

  v78 = v80;
  sub_1000303C4();
  v83(v78);
  (*(v81 + 8))(v78, v82);
}

uint64_t sub_1000110D0(unint64_t a1, unint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1000303E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;

  sub_10000CEBC(v15);
  sub_10000D8E0(a6, v19);

  v19 = a2;

  sub_10000CEA4(v16);
  sub_1000303C4();
  a3(v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100011234(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  v14[4] = sub_100012368;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100011B5C;
  v14[3] = &unk_10003D648;
  v10 = _Block_copy(v14);

  [v8 enumerateAllListsWithBlock:v10];
  _Block_release(v10);
  swift_beginAccess();
  v11 = *(v7 + 16);

  a3(v12);
}

void sub_1000113B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a1;
  if (![a1 isShared])
  {
    return;
  }

  v9 = [v8 sharedOwnerAddress];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000306F4();
    v13 = v12;

    if (sub_10001187C(v11, v13, a3))
    {
    }

    else
    {
      v14 = sub_10001187C(v11, v13, a4);

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if ([v8 isShared])
    {
      swift_beginAccess();
      v15 = v8;
      sub_100030774();
      if (*((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000307B4();
      }

      sub_1000307C4();
      swift_endAccess();
    }
  }

LABEL_10:
  v16 = [v8 shareeContext];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = [v16 sharees];

  sub_100008D28(0, &qword_1000420D8, REMSharee_ptr);
  v19 = sub_100030794();

  if (v19 >> 62)
  {
LABEL_34:
    v20 = sub_100030CE4();
    v42 = a4;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = a4;
    if (v20)
    {
LABEL_13:
      a4 = 0;
      v43 = &_swiftEmptyArrayStorage;
      v40 = v8;
      v41 = a5;
      while (2)
      {
        v8 = a4;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v21 = sub_100030BA4();
          }

          else
          {
            if (v8 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v21 = *(v19 + 8 * v8 + 32);
          }

          a5 = v21;
          a4 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v22 = [v21 status];
          if (v22 > 5)
          {
            if (qword_100041AD8 != -1)
            {
              swift_once();
            }

            v36 = sub_100030664();
            sub_1000089D8(v36, qword_100041FC0);
            sub_1000216C8(&_swiftEmptyArrayStorage);
            sub_1000216C8(&_swiftEmptyArrayStorage);
            sub_100026B5C("unknown status", 14, 2);
            __break(1u);
            return;
          }

          if (((1 << v22) & 0x1D) == 0)
          {
            v23 = [a5 address];
            if (v23)
            {
              break;
            }
          }

          ++v8;
          if (a4 == v20)
          {
            v8 = v40;
            a5 = v41;
            goto LABEL_36;
          }
        }

        v38 = v23;
        v24 = [v23 rem_removingMailto];

        v25 = sub_1000306F4();
        v37 = v26;
        v39 = v25;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = sub_10002B4F4(0, *(v43 + 2) + 1, 1, v43);
        }

        v29 = *(v43 + 2);
        v28 = *(v43 + 3);
        if (v29 >= v28 >> 1)
        {
          v43 = sub_10002B4F4((v28 > 1), v29 + 1, 1, v43);
        }

        *(v43 + 2) = v29 + 1;
        v30 = &v43[16 * v29];
        *(v30 + 4) = v39;
        *(v30 + 5) = v37;
        v8 = v40;
        a5 = v41;
        if (a4 != v20)
        {
          continue;
        }

        goto LABEL_36;
      }
    }
  }

  v43 = &_swiftEmptyArrayStorage;
LABEL_36:

  v31 = sub_100021AE0(v43);

  if (sub_100011974(v31, a3))
  {
    v32 = sub_100011974(v31, v42);

    if (v32)
    {
      return;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v33 = v8;
  sub_100030774();
  if (*((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000307B4();
  }

  sub_1000307C4();
  swift_endAccess();
}

uint64_t sub_10001187C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_100030D84();
  sub_100030734();
  v7 = sub_100030D94();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_100030D44() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100011974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_100030D84();

      sub_100030734();
      v20 = sub_100030D94();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_100030D44() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_100011B5C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_100011BD0()
{
  v1 = *(v0 + 16);
  v14 = 0;
  result = [v1 fetchDefaultListWithError:&v14];
  if (v14)
  {
    v3 = result;
    v4 = v14;

    swift_willThrow();
    if (qword_100041AD8 != -1)
    {
      swift_once();
    }

    v5 = sub_100030664();
    sub_1000089D8(v5, qword_100041FC0);
    v6 = v4;
    v7 = sub_100030654();
    v8 = sub_100030864();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_100030D64();
      v13 = sub_10002B88C(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching default list %s", v9, 0xCu);
      sub_100008D70(v10);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100011DB8(uint64_t a1)
{
  v19[0] = a1;
  v2 = sub_1000304A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030554();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008944(&qword_1000420D0, &unk_1000341E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v19 - v14;
  sub_100030564();
  v16 = *(v1 + 16);
  sub_100030494();
  sub_100030484();
  (*(v3 + 8))(v6, v2);
  sub_100030544();
  (*(v8 + 8))(v11, v7);
  v17 = sub_100030534();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  (v19[0])(v15);
  return sub_100012280(v15);
}

uint64_t sub_10001203C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100012198(void (*a1)(uint64_t))
{
  sub_100008944(&qword_1000426C0, &unk_100034550);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100034180;
  v3 = REMSmartListTypeToday;
  v4 = REMSmartListTypeScheduled;
  *(v2 + 32) = REMSmartListTypeToday;
  *(v2 + 40) = v4;
  v5 = REMSmartListTypeAll;
  v6 = REMSmartListTypeFlagged;
  *(v2 + 48) = REMSmartListTypeAll;
  *(v2 + 56) = v6;
  v7 = REMSmartListTypeAssigned;
  *(v2 + 64) = REMSmartListTypeAssigned;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  a1(v2);
}

uint64_t sub_100012280(uint64_t a1)
{
  v2 = sub_100008944(&qword_1000420D0, &unk_1000341E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000122E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012320()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001238C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_1000303E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  if (*(a1 + 16) < 2uLL)
  {
    sub_100030414();
    v17 = *(a2 + 16);

    sub_1000303A4();
    a3(v13);
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100012824;
    *(v15 + 24) = v14;

    sub_10002833C(a1, sub_10001282C, v15);
  }
}

uint64_t sub_100012724()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100012784()
{
  result = qword_100042150;
  if (!qword_100042150)
  {
    sub_100008D28(255, &unk_1000420E0, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042150);
  }

  return result;
}

uint64_t sub_1000127EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012840()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_1000420F0);
  v1 = sub_1000089D8(v0, qword_1000420F0);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100012908(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 tasks];
  if (v7)
  {
    v8 = v7;
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v9 = sub_100030794();

    v10 = *(v3 + OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_dataSource);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    sub_10002CFAC(v9, sub_100013CAC, v11);
  }

  else
  {
    v12 = *(v3 + OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_dataSource);
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a1;
    v14 = v12[6];
    v15 = v12[7];
    sub_100008A10(v12 + 3, v14);
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = sub_100013C1C;
    v16[4] = v13;
    v17 = *(v15 + 8);

    v18 = a1;

    v17(sub_100013C68, v16, v14, v15);
  }
}

void sub_100012AD4(unint64_t a1, void (*a2)(uint64_t))
{
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (qword_100041AE0 != -1)
    {
      swift_once();
    }

    v29 = sub_100030664();
    sub_1000089D8(v29, qword_1000420F0);
    v30 = sub_100030654();
    v31 = sub_100030844();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "No reminders found for searchTerm {result: .unsupported(.noTasksFound)}", v32, 2u);
    }

    v28 = [objc_opt_self() unsupportedForReason:1];
    goto LABEL_37;
  }

  if (!sub_100030CE4())
  {
    goto LABEL_32;
  }

  v5 = sub_100030CE4();
LABEL_3:
  if (v5 != 1)
  {
    if (qword_100041AE0 != -1)
    {
      swift_once();
    }

    v14 = sub_100030664();
    sub_1000089D8(v14, qword_1000420F0);

    v15 = sub_100030654();
    v16 = sub_100030844();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      if (v4)
      {
        v18 = sub_100030CE4();
      }

      else
      {
        v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v18;

      _os_log_impl(&_mh_execute_header, v15, v16, "Found %ld reminders found for searchTerm {result: .disambiguation}", v17, 0xCu);
    }

    else
    {
    }

    if (v5)
    {
      sub_100030BF4();
      if (v5 < 0)
      {
LABEL_42:
        __break(1u);
        return;
      }

      sub_100008D28(0, &unk_100041E90, INTask_ptr);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          v20 = v19 + 1;
          sub_100030BA4();
          sub_1000309E4();
          sub_100030BD4();
          v21 = _swiftEmptyArrayStorage[2];
          sub_100030C04();
          sub_100030C14();
          sub_100030BE4();
          v19 = v20;
        }

        while (v5 != v20);
      }

      else
      {
        v22 = (a1 + 32);
        do
        {
          v23 = *v22++;
          v24 = v23;
          sub_1000309E4();
          sub_100030BD4();
          v25 = _swiftEmptyArrayStorage[2];
          sub_100030C04();
          sub_100030C14();
          sub_100030BE4();
          --v5;
        }

        while (v5);
      }
    }

    v26 = objc_opt_self();
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    isa = sub_100030784().super.isa;

    v13 = [v26 disambiguationWithTasksToDisambiguate:isa];

    goto LABEL_29;
  }

  if (qword_100041AE0 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_1000420F0);
  v7 = sub_100030654();
  v8 = sub_100030844();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "One reminder found for searchTerm {result: .success}", v9, 2u);
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_100030BA4();
    goto LABEL_11;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v10 = *(a1 + 32);
LABEL_11:
  v11 = objc_opt_self();
  sub_100008D28(0, &unk_100041E90, INTask_ptr);
  v12 = sub_1000309E4();
  v13 = [v11 successWithResolvedTask:v12];

LABEL_29:
  v28 = [objc_allocWithZone(INSnoozeTasksTaskResolutionResult) initWithTaskResolutionResult:v13];

LABEL_37:
  sub_100008944(&unk_100041EB0, &unk_1000340E0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100033D00;
  *(v33 + 32) = v28;
  v34 = v28;
  a2(v33);
}

uint64_t sub_100013074(unint64_t a1, void (*a2)(uint64_t *), int a3, id a4)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v53 = a4;
    if (sub_100030CE4())
    {
      v54 = sub_100030CE4();
      a4 = v53;
      v7 = v54;
      if (v54 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

LABEL_45:
    if (qword_100041AE0 != -1)
    {
      swift_once();
    }

    v55 = sub_100030664();
    sub_1000089D8(v55, qword_1000420F0);
    v56 = sub_100030654();
    v57 = sub_100030884();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "No reminders to snooze. {result: .unsupported(.noTasksFound)}", v58, 2u);
    }

    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v25 = swift_allocObject();
    *(v25 + 1) = xmmword_100033D00;
    v25[4] = [objc_opt_self() unsupportedForReason:1];
    goto LABEL_50;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_45;
  }

  if (v7 == 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = [a4 all];
  if (!v8 || (v9 = v8, v10 = [v8 BOOLValue], v9, !v10))
  {
    if (qword_100041AE0 == -1)
    {
LABEL_12:
      v17 = sub_100030664();
      sub_1000089D8(v17, qword_1000420F0);

      v18 = sub_100030654();
      v19 = sub_100030864();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v61 = v21;
        *v20 = 136315138;
        sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
        v22 = sub_1000307A4();
        v24 = sub_10002B88C(v22, v23, &v61);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Multiple reminders match but user didn't say 'all'. Ask the user to disambiguate which reminder to snooze. {reminders: %s, result: .disambiguation}", v20, 0xCu);
        sub_100008D70(v21);
      }

      sub_100008944(&unk_100041EB0, &unk_1000340E0);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100033D00;
      if (!v7)
      {
        goto LABEL_41;
      }

      v61 = _swiftEmptyArrayStorage;
      result = sub_100030BF4();
      if ((v7 & 0x8000000000000000) == 0)
      {
        sub_100008D28(0, &unk_100041E90, INTask_ptr);
        if ((a1 & 0xC000000000000001) != 0)
        {
          v27 = 0;
          do
          {
            v28 = v27 + 1;
            sub_100030BA4();
            sub_1000309E4();
            sub_100030BD4();
            v29 = v61[2];
            sub_100030C04();
            sub_100030C14();
            sub_100030BE4();
            v27 = v28;
          }

          while (v7 != v28);
        }

        else
        {
          v46 = (a1 + 32);
          do
          {
            v47 = *v46++;
            v48 = v47;
            sub_1000309E4();
            sub_100030BD4();
            v49 = v61[2];
            sub_100030C04();
            sub_100030C14();
            sub_100030BE4();
            --v7;
          }

          while (v7);
        }

LABEL_41:
        sub_100008D28(0, &qword_100042148, INSnoozeTasksTaskResolutionResult_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_100008D28(0, &unk_100041E90, INTask_ptr);
        isa = sub_100030784().super.isa;

        v52 = [ObjCClassFromMetadata disambiguationWithTasksToDisambiguate:isa];

        v25[4] = v52;
        goto LABEL_50;
      }

      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

LABEL_55:
    swift_once();
    goto LABEL_12;
  }

LABEL_6:
  if (qword_100041AE0 != -1)
  {
    swift_once();
  }

  v11 = sub_100030664();
  sub_1000089D8(v11, qword_1000420F0);

  v12 = sub_100030654();
  v13 = sub_100030884();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v61 = v15;
    *v14 = 134218242;
    if (v6)
    {
      v16 = sub_100030CE4();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    if (v7)
    {
      v59 = v15;
      v60 = v13;
      result = sub_100030BF4();
      if (v7 < 0)
      {
        goto LABEL_57;
      }

      v30 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v31 = sub_100030BA4();
        }

        else
        {
          v31 = *(a1 + 8 * v30 + 32);
        }

        v32 = v31;
        ++v30;
        v33 = [v31 objectID];

        sub_100030BD4();
        v34 = _swiftEmptyArrayStorage[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      while (v7 != v30);
      v13 = v60;
      v15 = v59;
    }

    sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
    v35 = sub_1000307A4();
    v37 = v36;

    v38 = sub_10002B88C(v35, v37, &v61);

    *(v14 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v12, v13, "Resolved %ld tasks to snooze. {reminderIDs: %s, result: .success}", v14, 0x16u);
    sub_100008D70(v15);
  }

  else
  {
  }

  v25 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v61 = _swiftEmptyArrayStorage;
    sub_100030BF4();
    if ((v7 & 0x8000000000000000) == 0)
    {
      sub_100008D28(0, &qword_100042148, INSnoozeTasksTaskResolutionResult_ptr);
      v39 = swift_getObjCClassFromMetadata();
      sub_100008D28(0, &unk_100041E90, INTask_ptr);
      v40 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v41 = sub_100030BA4();
        }

        else
        {
          v41 = *(a1 + 8 * v40 + 32);
        }

        ++v40;
        v42 = v41;
        v43 = sub_1000309E4();
        v44 = [v39 successWithResolvedTask:v43];

        sub_100030BD4();
        v45 = v61[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      while (v7 != v40);
      a2(v61);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_50:
  a2(v25);
LABEL_51:
}

void sub_100013968(uint64_t a1, uint64_t a2)
{
  sub_100008D28(0, &qword_100042148, INSnoozeTasksTaskResolutionResult_ptr);
  isa = sub_100030784().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_100013B28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSnoozeTasksIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100013BDC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013C28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013C74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100013CB4(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_100030C64() == *(a4 + 36))
    {
      sub_100030C74();
      sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
      swift_dynamicCast();
      sub_100021234(v8);
      v6 = v5;

      if (v6)
      {
        sub_100030C44();
        sub_100030C94();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_100030AE4();
  v7 = *(a4 + 36);
}

void sub_100013E18(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100030CA4();
      sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_100030C64() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_100030C74();
  sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
  swift_dynamicCast();
  v5 = sub_100021234(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

void *sub_100013FA8(uint64_t a1, void *a2)
{
  v2 = a1;
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100030C84();
    result = _swiftEmptyArrayStorage;
    if (!v3)
    {
      return result;
    }

    v32 = _swiftEmptyArrayStorage;
    sub_100030BF4();
    result = sub_100030C24();
    v29 = result;
    v30 = v5;
    v31 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v2 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return result;
  }

  v32 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  v6 = -1 << *(v2 + 32);
  result = sub_100030AD4();
  v7 = *(v2 + 36);
  v29 = result;
  v30 = v7;
  v31 = 0;
LABEL_7:
  v8 = 0;
  v25 = v3;
  while (v8 < v3)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_20;
    }

    v17 = v29;
    v16 = v30;
    v18 = v31;
    sub_100013E18(v29, v30, v31, v2);
    v20 = v19;
    v21 = [a2 updateReminder:v19];

    sub_100030BD4();
    v22 = v2;
    v23 = v32[2];
    sub_100030C04();
    sub_100030C14();
    result = sub_100030BE4();
    if (v26)
    {
      if (!v18)
      {
        goto LABEL_21;
      }

      v2 = v22;
      if (sub_100030C54())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v25;
      sub_100008944(&qword_100042160, &qword_1000342B0);
      v24 = sub_1000306A4();
      sub_100030CD4();
      result = v24(v28, 0);
    }

    else
    {
      sub_100013CB4(v17, v16, v18, v22);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      result = sub_100015700(v17, v16, v18);
      v29 = v10;
      v30 = v12;
      v31 = v14 & 1;
      v2 = v22;
      v3 = v25;
    }

    ++v8;
    if (v15 == v3)
    {
      sub_100015700(v29, v30, v31);
      return v32;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10001422C(void *a1, uint64_t a2)
{
  v112 = a2;
  v3 = sub_100008944(&qword_100042168, &qword_1000342B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v106 - v5;
  v7 = sub_100008944(&unk_100042170, &unk_100033D70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v116 = &v106 - v9;
  v10 = sub_100008944(&unk_100041BA0, &qword_100033D68);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v106 - v15;
  __chkstk_darwin(v17);
  v109 = &v106 - v18;
  __chkstk_darwin(v19);
  v110 = &v106 - v20;
  v119 = sub_10002FEE4();
  v21 = *(v119 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v119);
  v108 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  __chkstk_darwin(v27);
  v29 = &v106 - v28;
  __chkstk_darwin(v30);
  v118 = &v106 - v31;
  if (qword_100041AE0 != -1)
  {
    swift_once();
  }

  v32 = sub_100030664();
  v33 = sub_1000089D8(v32, qword_1000420F0);
  v34 = a1;
  v111 = v33;
  v35 = sub_100030654();
  v36 = sub_100030884();

  v37 = os_log_type_enabled(v35, v36);
  v113 = v29;
  v117 = v6;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v121 = v115;
    *v38 = 136315138;
    v120 = [v34 nextTriggerTime];
    sub_100008944(&unk_100042180, &unk_1000342C0);
    v39 = sub_100030704();
    v41 = v26;
    v42 = v34;
    v43 = v21;
    v44 = v16;
    v45 = v13;
    v46 = sub_10002B88C(v39, v40, &v121);

    *(v38 + 4) = v46;
    v13 = v45;
    v16 = v44;
    v21 = v43;
    v34 = v42;
    v26 = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Resolving nextTriggerTime {nextTriggerTime: %s}", v38, 0xCu);
    sub_100008D70(v115);
    v29 = v113;
  }

  sub_10002FED4();
  sub_10002FED4();
  sub_10002FE84();
  v114 = *(v21 + 8);
  v115 = (v21 + 8);
  v114(v26, v119);
  v47 = [v34 nextTriggerTime];
  v48 = v110;
  if (v47)
  {
    v49 = v47;
    v50 = [v47 endDate];
    if (v50)
    {
      v51 = v50;
      sub_10002FEC4();

      v52 = *(v21 + 32);
      v53 = v13;
      v54 = v109;
      v107 = v49;
      v55 = v29;
      v56 = v48;
      v57 = v119;
      v52(v109, v26, v119);
      v58 = *(v21 + 56);
      v58(v54, 0, 1, v57);
      v59 = v54;
      v13 = v53;
      v52(v56, v59, v57);
      v60 = v56;
      v61 = v57;
      v48 = v56;
      v29 = v55;
      v49 = v107;
      v58(v60, 0, 1, v61);
      v62 = v108;
      v63 = (*(v21 + 48))(v48, 1, v119);
    }

    else
    {
      v64 = *(v21 + 56);
      v65 = 1;
      v64(v109, 1, 1, v119);
      v66 = [v49 startDate];
      if (v66)
      {
        v67 = v66;
        sub_10002FEC4();

        v65 = 0;
      }

      v62 = v108;
      v68 = v16;
      v69 = v65;
      v70 = v16;
      v71 = v119;
      v64(v68, v69, 1, v119);
      sub_10001570C(v70, v48);
      v72 = *(v21 + 48);
      v73 = v109;
      if (v72(v109, 1, v71) != 1)
      {
        sub_100008BB8(v73, &unk_100041BA0, &qword_100033D68);
      }

      v63 = v72(v48, 1, v119);
    }

    if (v63 == 1)
    {

      sub_100008BB8(v48, &unk_100041BA0, &qword_100033D68);
    }

    else
    {
      v74 = *(v21 + 32);
      v74(v62, v48, v119);
      v75 = sub_10002FEA4();

      if (v75)
      {
        v76 = v119;
        v114(v29, v119);
        v74(v29, v62, v76);
      }

      else
      {
        v114(v62, v119);
      }
    }
  }

  v77 = v119;
  (*(v21 + 16))(v13, v29, v119);
  (*(v21 + 56))(v13, 0, 1, v77);
  v78 = sub_10002FF94();
  v79 = v13;
  v80 = *(v78 - 8);
  (*(v80 + 56))(v116, 1, 1, v78);
  v81 = sub_10002FFC4();
  v82 = *(v81 - 8);
  (*(v82 + 56))(v117, 1, 1, v81);
  v83.super.isa = sub_10002FE94().super.isa;
  isa = 0;
  if ((*(v21 + 48))(v79, 1, v77) != 1)
  {
    isa = sub_10002FE94().super.isa;
    v114(v79, v119);
  }

  v85 = v116;
  if ((*(v80 + 48))(v116, 1, v78) == 1)
  {
    v86 = 0;
  }

  else
  {
    v86 = sub_10002FF64().super.isa;
    (*(v80 + 8))(v85, v78);
  }

  v87 = v117;
  if ((*(v82 + 48))(v117, 1, v81) == 1)
  {
    v88 = 0;
  }

  else
  {
    v88 = sub_10002FFB4().super.isa;
    (*(v82 + 8))(v87, v81);
  }

  v89 = [objc_allocWithZone(INDateComponentsRange) initWithStartDate:v83.super.isa endDate:isa onCalendar:v86 inTimeZone:v88];

  v90 = v89;
  v91 = sub_100030654();
  v92 = sub_100030884();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v121 = v94;
    *v93 = 136315138;
    v95 = v90;
    v96 = [v95 description];
    v97 = sub_1000306F4();
    v99 = v98;

    v100 = sub_10002B88C(v97, v99, &v121);

    *(v93 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v91, v92, "Resolved nextTriggerTime. {nextTriggerTime: %s, result: .success", v93, 0xCu);
    sub_100008D70(v94);
  }

  v101 = v113;
  v102 = [objc_opt_self() successWithResolvedDateComponentsRange:v90];
  (*(v112 + 16))(v112, v102);

  v103 = v119;
  v104 = v114;
  v114(v101, v119);
  return v104(v118, v103);
}

void sub_100014CD0(unint64_t a1, unint64_t a2, __objc2_class_ro *a3)
{
  v6 = sub_10002FEE4();
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = *(v91 + 64);
  __chkstk_darwin(v6);
  v9 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100041AE0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v10 = sub_100030664();
    sub_1000089D8(v10, qword_1000420F0);
    v11 = a1;
    v12 = sub_100030654();
    v13 = sub_100030884();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v9;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v11;
      *v16 = v11;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "SiriKit asked for handling snooze tasks intent {intent: %@}", v15, 0xCu);
      sub_100008BB8(v16, &unk_100041BF0, &unk_100033DB0);

      v9 = v14;
    }

    v18 = [v11 tasks];
    if (!v18)
    {
      v33 = sub_100030654();
      v34 = sub_100030864();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_38;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "No .tasks to snooze. Should have resolved this in resolve stage. Giving up";
      goto LABEL_37;
    }

    v19 = v18;
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v20 = sub_100030794();
    v21 = [v11 nextTriggerTime];
    if (!v21)
    {

      goto LABEL_35;
    }

    v22 = v21;
    v23 = [v21 endDate];
    if (!v23)
    {
      break;
    }

    v85 = v22;
    v87 = a3;
    v24 = v23;
    sub_10002FEC4();

    sub_10002FEB4();
    v26 = v25;
    v27 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_store);
    v28 = objc_allocWithZone(REMSaveRequest);
    v88 = v27;
    v89 = [v28 initWithStore:v27];
    v93 = _swiftEmptyArrayStorage;
    v86 = v9;
    a3 = (v20 & 0xFFFFFFFFFFFFFF8);
    if (v20 >> 62)
    {
      v29 = sub_100030CE4();
    }

    else
    {
      v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = 0;
    v84[2] = 0;
    v90 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v29 == a1)
      {

        v37 = sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
        isa = sub_100030784().super.isa;
        v93 = 0;
        v39 = [v88 fetchRemindersWithObjectIDs:isa error:&v93];

        v40 = v93;
        if (v39)
        {
          sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
          sub_100012784();
          v41 = sub_100030684();
          v42 = v40;

          v43 = v89;
          v44 = sub_100013FA8(v41, v43);

          v84[1] = v37;
          v88 = v43;
          if (v44 >> 62)
          {
            a1 = sub_100030CE4();
            if (a1)
            {
LABEL_25:
              a2 = 0;
              v9 = (v44 & 0xC000000000000001);
              a3 = &TTRBundleLookupObject__metaData;
              do
              {
                if (v9)
                {
                  v45 = sub_100030BA4();
                }

                else
                {
                  if (a2 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_45;
                  }

                  v45 = *(v44 + 8 * a2 + 32);
                }

                v46 = v45;
                v47 = a2 + 1;
                if (__OFADD__(a2, 1))
                {
                  goto LABEL_44;
                }

                [v45 snoozeFromNowForTimeInterval:v26];

                ++a2;
              }

              while (v47 != a1);
            }
          }

          else
          {
            a1 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a1)
            {
              goto LABEL_25;
            }
          }

          v93 = 0;
          v52 = v88;
          v53 = [v88 saveSynchronouslyWithError:&v93];
          v40 = v93;
          if (v53)
          {
            sub_100030074();
            v54 = v40;
            sub_100030064();
            sub_100030054();

            v55 = sub_100030654();
            v56 = sub_100030884();

            v57 = os_log_type_enabled(v55, v56);
            v58 = v87;
            if (v57)
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v93 = v60;
              *v59 = 136315138;
              v61 = sub_1000307A4();
              v63 = v62;

              v64 = sub_10002B88C(v61, v63, &v93);

              *(v59 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v55, v56, "Successfully snoozed reminders. {reminderIDs: %s}", v59, 0xCu);
              sub_100008D70(v60);
            }

            else
            {
            }

            v80 = v91;
            v79 = v92;
            v82 = v85;
            v81 = v86;
            v83 = [objc_allocWithZone(INSnoozeTasksIntentResponse) initWithCode:3 userActivity:0];
            [v83 setSnoozedTasks:v19];

            (v58->ivar_lyt)(v58, v83);
            (*(v80 + 8))(v81, v79);
            return;
          }

          v51 = v87;
        }

        else
        {
          v51 = v87;
        }

        v65 = v40;

        sub_10002FE24();
        swift_willThrow();

        v66 = sub_100030654();
        v67 = sub_100030864();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v93 = v69;
          *v68 = 136315138;
          v70 = sub_1000307A4();
          v72 = v71;

          v73 = sub_10002B88C(v70, v72, &v93);

          *(v68 + 4) = v73;
          _os_log_impl(&_mh_execute_header, v66, v67, "Error snoozing reminders {reminderIDs: %s}", v68, 0xCu);
          sub_100008D70(v69);
        }

        else
        {
        }

        v75 = v91;
        v74 = v92;
        v77 = v85;
        v76 = v86;
        v78 = [objc_allocWithZone(INSnoozeTasksIntentResponse) initWithCode:4 userActivity:0];
        (v51->ivar_lyt)(v51, v78);

        (*(v75 + 8))(v76, v74);
        return;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v30 = sub_100030BA4();
      }

      else
      {
        if (a1 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v30 = *(v20 + 8 * a1 + 32);
      }

      v31 = v30;
      a2 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v9 = sub_1000309A4();

      ++a1;
      if (v9)
      {
        sub_100030774();
        if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000307B4();
        }

        sub_1000307C4();
        v90 = v93;
        a1 = a2;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_35:
  v33 = sub_100030654();
  v34 = sub_100030864();
  if (!os_log_type_enabled(v33, v34))
  {
    goto LABEL_38;
  }

  v35 = swift_slowAlloc();
  *v35 = 0;
  v36 = "No nextTriggerTime.endDate. Should have resolved this in resolve stage. Giving up.";
LABEL_37:
  _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_38:

  v48 = [objc_allocWithZone(INSnoozeTasksIntentResponse) initWithCode:4 userActivity:0];
  ivar_lyt = a3->ivar_lyt;
  v92 = v48;
  ivar_lyt(a3);
  v50 = v92;
}

uint64_t sub_100015700(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001570C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&unk_100041BA0, &qword_100033D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001577C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000157BC()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042190);
  v1 = sub_1000089D8(v0, qword_100042190);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100015884()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TTRIntentHandler.handler(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  if (qword_100041AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_100030664();
  sub_1000089D8(v5, qword_100042190);
  v6 = a1;
  v7 = sub_100030654();
  v8 = sub_100030854();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "SiriKit asks for handler for intent: %@", v9, 0xCu);
    sub_1000169BC(v10);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___addTasksHandler;
    v13 = sub_100015F84;
LABEL_11:
    v14 = sub_100015C48(v12, v13);
LABEL_12:
    v15 = v14;
    result = swift_getObjectType();
LABEL_13:
    a2[3] = result;
    *a2 = v15;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___setTaskAttributeHandler;
    v13 = sub_100016374;
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___snoozeTasksHandler;
    v13 = sub_10001666C;
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = sub_100015CB0();
    goto LABEL_12;
  }

  sub_100030364();
  if (swift_dynamicCastClass())
  {
    v15 = sub_100015DDC();
    result = type metadata accessor for ConfigurationIntentHandler();
    goto LABEL_13;
  }

  v17 = v6;
  v18 = sub_100030654();
  v19 = sub_100030874();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "TTRIntentHandler does not know how to handle intent of class: %@", v20, 0xCu);
    sub_1000169BC(v21);
  }

  a2[3] = ObjectType;
  *a2 = v23;

  return v23;
}

uint64_t sub_100015C48(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

id sub_100015CB0()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler;
  if (*(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store);
    v4 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue);
    type metadata accessor for TTRIntentsHandlerStoreDataSource();
    swift_allocObject();
    v5 = v3;
    v6 = v0;
    v7 = sub_10000FBF0(v5);
    type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
    v8 = swift_allocObject();
    v9 = v5;
    v10 = v4;
    v11 = sub_100016A48(v9, v10, v7, v8);
    v12 = sub_100030214();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = v9;
    v16 = v10;
    v17 = sub_100030204();
    v2 = sub_100016E28(v15, v16, v11, v17);
    v18 = *(v6 + v1);
    *(v6 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_100015DDC()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___widgetListHandler;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___widgetListHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___widgetListHandler);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store);
    v5 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue);
    type metadata accessor for TTRIntentsHandlerStoreDataSource();
    swift_allocObject();
    v6 = v4;
    v7 = v0;
    v8 = sub_10000FBF0(v6);
    type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
    v9 = swift_allocObject();
    v10 = v6;
    v11 = v5;
    v12 = sub_100016A48(v10, v11, v8, v9);
    v13 = objc_allocWithZone(type metadata accessor for ConfigurationIntentHandler());
    v14 = sub_100016C94(v10, v11, v12, v13);
    v15 = *(v7 + v1);
    *(v7 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_100015F84(char *a1)
{
  v2 = sub_1000302D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302C4();
  v7 = *&a1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store];
  v8 = *&a1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue];
  type metadata accessor for TTRIntentsHandlerStoreDataSource();
  swift_allocObject();
  v9 = v7;
  v10 = sub_10000FBF0(v9);
  v11 = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v12 = swift_allocObject();
  v13 = v9;

  v14 = v8;
  v15 = sub_100016A48(v13, v14, v10, v12);
  v46[3] = v11;
  v46[4] = &off_10003DE48;

  v46[0] = v15;
  sub_10000B82C(v46, v45);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = sub_100030214();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = a1;
  v21 = sub_100030204();
  v43 = &type metadata for TTRContactRepresentationResolver;
  v44 = &off_10003DE38;
  v42[0] = sub_100016BA4;
  v42[1] = v16;
  v41[3] = v2;
  v41[4] = &protocol witness table for TTRCurrentUserActivityProvider;
  v22 = sub_100016BC8(v41);
  (*(v3 + 16))(v22, v6, v2);
  v40[3] = v17;
  v40[4] = &protocol witness table for TTRCurrentTimeProvider;
  v40[0] = v21;
  v23 = type metadata accessor for TTRAddTasksIntentHandler();
  v24 = objc_allocWithZone(v23);
  v25 = v43;
  v26 = sub_100016C2C(v42, v43);
  v27 = *(v25[-1].Description + 8);
  v28 = __chkstk_darwin(v26);
  v30 = (&v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v38 = &type metadata for TTRContactRepresentationResolver;
  v39 = &off_10003DE38;
  v37 = *v30;
  v24[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_didNotSpecifyTargetList] = 0;
  sub_10000B82C(v40, &v24[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider]);
  *&v24[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store] = v13;
  *&v24[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_queue] = v14;
  sub_10000B82C(v45, &v24[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource]);
  sub_10000B82C(&v37, &v24[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_contactRepresentationResolver]);
  sub_10000B82C(v41, &v24[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_userActivityProvider]);
  v36.receiver = v24;
  v36.super_class = v23;
  v32 = v13;
  v33 = v14;
  v34 = objc_msgSendSuper2(&v36, "init");
  sub_100008D70(v45);
  (*(v3 + 8))(v6, v2);
  sub_100008D70(v40);
  sub_100008D70(v41);
  sub_100008D70(&v37);
  sub_100008D70(v42);
  sub_100008D70(v46);
  return v34;
}

id sub_100016374(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store];
  v3 = *&a1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue];
  type metadata accessor for TTRIntentsHandlerStoreDataSource();
  swift_allocObject();
  v4 = v2;
  v5 = sub_10000FBF0(v4);
  v6 = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v7 = swift_allocObject();
  v8 = v4;

  v9 = v3;
  v10 = sub_100016A48(v8, v9, v5, v7);
  v34[3] = v6;
  v34[4] = &off_10003DE48;

  v34[0] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_10000B82C(v34, v33);
  v12 = sub_100030214();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = a1;
  v32[3] = &type metadata for TTRContactRepresentationResolver;
  v32[4] = &off_10003DE38;
  v32[0] = sub_100016F50;
  v32[1] = v11;
  v31[3] = v12;
  v31[4] = &protocol witness table for TTRCurrentTimeProvider;
  v31[0] = sub_100030204();
  v16 = type metadata accessor for TTRSetTaskAttributeIntentHandler();
  v17 = objc_allocWithZone(v16);
  v18 = sub_100016C2C(v32, &type metadata for TTRContactRepresentationResolver);
  v19 = __chkstk_darwin(v18);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v29 = &type metadata for TTRContactRepresentationResolver;
  v30 = &off_10003DE38;
  v28 = *v21;
  *&v17[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_store] = v8;
  *&v17[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_queue] = v9;
  sub_10000B82C(&v28, &v17[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver]);
  sub_10000B82C(v33, &v17[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_dataSource]);
  sub_10000B82C(v31, &v17[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_timeProvider]);
  v27.receiver = v17;
  v27.super_class = v16;
  v23 = v8;
  v24 = v9;
  v25 = objc_msgSendSuper2(&v27, "init");
  sub_100008D70(v33);
  sub_100008D70(v31);
  sub_100008D70(&v28);
  sub_100008D70(v32);
  sub_100008D70(v34);
  return v25;
}

id sub_10001666C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UNUserNotificationCenter) initWithBundleIdentifier:REMAppBundleIdentifier];
  v3 = *(a1 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store);
  v13 = sub_100008D28(0, &unk_100042340, UNUserNotificationCenter_ptr);
  v14 = &off_10003E060;
  *&v12 = v2;
  type metadata accessor for TTRIntentsHandlerNotificationCenterDataSource();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_100016C7C(&v12, v4 + 24);
  v5 = *(a1 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue);
  v6 = type metadata accessor for TTRSnoozeTasksIntentHandler();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_store] = v3;
  *&v7[OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_queue] = v5;
  *&v7[OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_dataSource] = v4;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v3;
  v9 = v5;
  return objc_msgSendSuper2(&v11, "init");
}

id TTRIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIntentHandler.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store;
  *&v1[v3] = [objc_allocWithZone(REMStore) initUserInteractive:1];
  v4 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue;
  sub_100008D28(0, &qword_1000421C0, OS_dispatch_queue_ptr);
  *&v1[v4] = sub_100030904();
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___contactStore] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___addTasksHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___setTaskAttributeHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___snoozeTasksHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___widgetListHandler] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id TTRIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000169BC(uint64_t a1)
{
  v2 = sub_100008944(&unk_100041BF0, &unk_100033DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = type metadata accessor for TTRIntentsHandlerStoreDataSource();
  v15 = &off_10003D598;
  *&v13 = a3;
  if (qword_100041B30 != -1)
  {
    swift_once();
  }

  v8 = sub_100030664();
  sub_1000089D8(v8, qword_100042728);
  v9 = sub_100030654();
  v10 = sub_100030884();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[TTRIntentsHandlerSpotlightDataSource] Using the Spotlight intents handler data source", v11, 2u);
  }

  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_100016C7C(&v13, a4 + 32);
  return a4;
}

uint64_t sub_100016B6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100016BC8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100016C2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100016C7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_100016C94(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v16[3] = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v16[4] = &off_10003DE48;
  v16[0] = a3;
  *&a4[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_badgeSize] = vdupq_n_s64(0x4040000000000000uLL);
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v9 = sub_100030664();
  sub_1000089D8(v9, qword_100042350);
  v10 = sub_100030654();
  v11 = sub_100030884();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "ConfigurationIntentHandler Created", v12, 2u);
  }

  *&a4[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_store] = a1;
  *&a4[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_queue] = a2;
  sub_10000B82C(v16, &a4[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource]);
  v15.receiver = a4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_100008D70(v16);
  return v13;
}