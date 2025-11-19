uint64_t sub_10031FDC4(uint64_t a1)
{
  sub_10032626C(&v9);
  if (v9)
  {
    sub_1000089F8(v10, &v6, &qword_10118B990);
    sub_1000095E8(&v9, &unk_10118B930);
  }

  else
  {
    sub_1000095E8(&v9, &unk_10118B930);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  v9 = a1;
  v10[0] = v6;
  v10[1] = v7;
  v11 = v8;
  sub_1000089F8(&v9, &v6, &unk_10118B930);
  if (v6)
  {
    sub_100327244(&v6, &v5);
    v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_10032727C(&v6);
  }

  else
  {
    v3 = 0;
  }

  [v1 setLocalObject:v3];
  swift_unknownObjectRelease();
  return sub_1000095E8(&v9, &unk_10118B930);
}

uint64_t sub_10031FF04(uint64_t a1)
{
  sub_10032626C(v8);
  v3 = *&v8[0];
  if (*&v8[0])
  {

    sub_1000095E8(v8, &unk_10118B930);
  }

  else
  {
    sub_1000095E8(v8, &unk_10118B930);
    v3 = _swiftEmptyArrayStorage;
  }

  sub_1000089F8(a1, v8 + 8, &qword_10118B990);
  *&v8[0] = v3;
  sub_1000089F8(v8, v7, &unk_10118B930);
  if (v7[0])
  {
    sub_100327244(v7, &v6);
    v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_10032727C(v7);
  }

  else
  {
    v4 = 0;
  }

  [v1 setLocalObject:v4];
  swift_unknownObjectRelease();
  sub_1000095E8(a1, &qword_10118B990);
  return sub_1000095E8(v8, &unk_10118B930);
}

void sub_10032004C(void *a1, void *a2)
{
  v5 = v2[13];
  v6 = v2[14];
  v2[13] = a1;
  v2[14] = a2;
  sub_1003275E0(a1, a2);
  sub_1003274BC(v5, v6);
  v7 = v2[9];
  if (v7)
  {
    v8 = v2[13];
    v9 = v2[14];
    sub_100030444(v2[9]);
    sub_1003275E0(v8, v9);
    v7(v8, v9);
    sub_1003274BC(a1, a2);
    sub_100020438(v7);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = a1;
    v11 = a2;
  }

  sub_1003274BC(v10, v11);
}

double sub_100320424(void *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  if (v3)
  {
    v5 = v3;
    sub_10032626C(v10);
    if (*&v10[0])
    {
      sub_1000089F8(v10 + 8, &v11, &qword_10118B990);
      sub_1000095E8(v10, &unk_10118B930);
    }

    else
    {
      sub_1000095E8(v10, &unk_10118B930);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    v6 = sub_1007A411C(&v11);
    if ([a1 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v6 == 4 || v9 != v6)
        {

          return result;
        }

LABEL_19:
        sub_10010FC20(&qword_101183990);
        v8 = swift_allocObject();
        *&result = 1;
        *(v8 + 16) = xmmword_100EBC6C0;
        *(v8 + 32) = v5;
        return result;
      }
    }

    else
    {
      sub_1000095E8(v10, &unk_101183F30);
    }

    if (v6 == 4)
    {
      v7 = 0;
    }

    else
    {
      LOBYTE(v10[0]) = v6;
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [a1 setLocalContext:v7];
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1003207B8(uint64_t a1)
{
  v3 = [v1 localDragSession];
  if (v3)
  {
    v23 = a1;
    v4 = [v3 items];
    swift_unknownObjectRelease();
    sub_100009F78(0, &qword_10118B920);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      v8 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_1007E97DC(v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v9 localObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = 0u;
          v25 = 0u;
        }

        v29 = v24;
        v30 = v25;
        if (*(&v25 + 1))
        {
          if ((swift_dynamicCast() & 1) != 0 && v26)
          {
            v29 = v26;
            v30 = v27;
            v31 = v28;
            v12 = v26;

            goto LABEL_20;
          }
        }

        else
        {
          sub_1000095E8(&v29, &unk_101183F30);
        }

        v31 = 0u;
        v12 = _swiftEmptyArrayStorage;
        v29 = 0u;
        v30 = 0u;
LABEL_20:
        sub_1000095E8(&v29, &unk_10118B930);

        v13 = v12[2];
        v14 = v8[2];
        v15 = v14 + v13;
        if (__OFADD__(v14, v13))
        {
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v15 <= v8[3] >> 1)
        {
          if (v12[2])
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v14 <= v15)
          {
            v17 = v14 + v13;
          }

          else
          {
            v17 = v14;
          }

          v8 = sub_100499B64(isUniquelyReferenced_nonNull_native, v17, 1, v8);
          if (v12[2])
          {
LABEL_29:
            if ((v8[3] >> 1) - v8[2] < v13)
            {
              goto LABEL_39;
            }

            sub_10010FC20(&qword_10119E600);
            swift_arrayInitWithCopy();

            if (v13)
            {
              v18 = v8[2];
              v19 = __OFADD__(v18, v13);
              v20 = v18 + v13;
              if (v19)
              {
                goto LABEL_40;
              }

              v8[2] = v20;
            }

            goto LABEL_6;
          }
        }

        if (v13)
        {
          goto LABEL_38;
        }

LABEL_6:
        ++v7;
        if (v11 == i)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v8 = _swiftEmptyArrayStorage;
LABEL_43:

    a1 = v23;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v21 = sub_100326348(a1);
  *&v29 = v8;
  sub_1001253DC(v21);
  return v29;
}

id sub_100320B08(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr))
{
  v5 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:0];
  a3(&v17);
  if (v18)
  {
    sub_100059A8C(&v17, v19);
    ObjectType = swift_getObjectType();
    v7 = sub_1003207B8(ObjectType);
    v8 = v20;
    v9 = v21;
    sub_10000954C(v19, v20);
    if (sub_10017BC1C(v7, v8, v9))
    {
      v10 = v20;
      v11 = v21;
      sub_10000954C(v19, v20);
      v12 = sub_10017BAC0(v7, v10, v11);
    }

    else
    {

      v12 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:1];
    }

    v5 = v12;
    sub_10000959C(v19);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectRetain();
      v16 = v5;
      sub_10032004C(a1, v5);

      return v16;
    }

    else
    {
    }
  }

  else
  {
    sub_1000095E8(&v17, &unk_10119E610);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = v5;
      v14 = swift_unknownObjectRetain();
      sub_10032004C(v14, v5);

      return v13;
    }
  }

  return v5;
}

uint64_t sub_100320D00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10032004C(0, 0);
  }

  return result;
}

void sub_100320D60(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
  }

  else
  {
    v8 = 0;
  }

  ObjectType = swift_getObjectType();
  v10 = sub_1003207B8(ObjectType);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, qword_1012186C8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v29 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v15 = 136446210;
    sub_10010FC20(&qword_10119E600);
    v16 = Array.description.getter();
    v18 = a3;
    v19 = v8;
    v20 = sub_1000105AC(v16, v17, v32);

    *(v15 + 4) = v20;
    v8 = v19;
    a3 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Will perform drop with intents=%{public}s.", v15, 0xCu);
    sub_10000959C(v28);
  }

  a3(&v30);
  if (v31)
  {
    sub_100059A8C(&v30, v32);
    static TaskPriority.userInitiated.getter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
    sub_100008FE4(v32, &v30);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    sub_100059A8C(&v30, (v22 + 4));
    v22[9] = v29;
    v22[10] = v8;
    v23 = v8;
    sub_10035EB10(0, 0, v6, &unk_100EC7218, v22);

    sub_1000095E8(v6, &unk_101181520);
    sub_10000959C(v32);
  }

  else
  {

    sub_1000095E8(&v30, &unk_10119E610);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to locate destination.", v26, 2u);
    }
  }
}

uint64_t sub_100321150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for Notice(0);
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  sub_10010FC20(&unk_10118B980);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_100321258, 0, 0);
}

uint64_t sub_100321258()
{
  v23 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v1[3];
  v4 = v1[4];
  sub_10000954C(v1, v3);
  if (sub_10017BC1C(v2, v3, v4))
  {
    v6 = v1[3];
    v5 = v1[4];
    sub_10000954C(v0[23], v6);
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = sub_100321518;
    v8 = v0[30];
    v9 = v0[24];

    return sub_10017BE34(v8, v9, v6, v5);
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v11 = v0[23];
    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_1012186C8);
    sub_100008FE4(v11, (v0 + 2));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      sub_100008FE4((v0 + 2), (v0 + 7));
      sub_10010FC20(&unk_10119E5F0);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      sub_10000959C((v0 + 2));
      v20 = sub_1000105AC(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Dropping to destination=%{public}s is unsupported.", v15, 0xCu);
      sub_10000959C(v16);
    }

    else
    {

      sub_10000959C((v0 + 2));
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100321518()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100321AB8;
  }

  else
  {
    v2 = sub_10032162C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032162C()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_1000089F8(v0[30], v1, &unk_10118B980);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[29];
    sub_1000095E8(v0[30], &unk_10118B980);
LABEL_8:
    sub_1000095E8(v4, &unk_10118B980);

    v8 = v0[1];

    return v8();
  }

  v5 = v0[25];
  sub_1003270AC(v0[29], v0[28], type metadata accessor for Notice);
  if (!v5)
  {
    v4 = v0[30];
    sub_100327114(v0[28], type metadata accessor for Notice);
    goto LABEL_8;
  }

  v0[33] = type metadata accessor for MainActor();
  v0[34] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003217D8, v7, v6);
}

uint64_t sub_1003217D8()
{

  *(v0 + 280) = UIView.noticePresenter.getter();

  return _swift_task_switch(sub_10032184C, 0, 0);
}

uint64_t sub_10032184C()
{
  v1 = v0[35];
  if (v1)
  {
    v2 = *v1 + 200;
    v0[36] = *v2;
    v0[37] = v2 & 0xFFFFFFFFFFFFLL | 0x72F0000000000000;
    v0[38] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100321980, v4, v3);
  }

  else
  {
    v5 = v0[30];
    sub_100327114(v0[28], type metadata accessor for Notice);
    sub_1000095E8(v5, &unk_10118B980);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100321980()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);

  v1(v2, 0);

  return _swift_task_switch(sub_100321A0C, 0, 0);
}

uint64_t sub_100321A0C()
{
  v1 = v0[30];
  sub_100327114(v0[28], type metadata accessor for Notice);
  sub_1000095E8(v1, &unk_10118B980);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100321AB8()
{
  v18 = v0;
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012186C8);
  sub_100008FE4(v1, (v0 + 12));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    sub_100008FE4((v0 + 12), (v0 + 17));
    sub_10010FC20(&unk_10119E5F0);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_10000959C((v0 + 12));
    v11 = sub_1000105AC(v8, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v0[22] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v17);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform drop on destination=%{public}s. Error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C((v0 + 12));
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100321D34()
{
  sub_100020438(*(v0 + 24));
  sub_100020438(*(v0 + 40));
  sub_100020438(*(v0 + 56));
  sub_100020438(*(v0 + 72));
  swift_unknownObjectRelease();
  sub_1003274BC(*(v0 + 104), *(v0 + 112));

  return v0;
}

uint64_t sub_100321DA4()
{
  sub_100321D34();

  return swift_deallocClassInstance();
}

void sub_100321DD8()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 24);
    if (v1)
    {
      v2 = *(v0 + 32);
      v3 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate;
      v4 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
      if (v4)
      {

        v5 = v4;
      }

      else
      {
        v8 = objc_allocWithZone(type metadata accessor for CollectionViewDragDropController.DragDelegate());

        v5 = [v8 init];
      }

      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = v2;
      v10 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider];
      v11 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider];
      *v10 = sub_10032723C;
      v10[1] = v9;
      v12 = v4;
      sub_100020438(v11);
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionWillBegin];
      v15 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionWillBegin];
      *v14 = sub_1003277A0;
      v14[1] = v13;

      sub_100020438(v15);

      v16 = swift_allocObject();
      swift_weakInit();
      v17 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd];
      v18 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd];
      *v17 = sub_1003277A4;
      v17[1] = v16;

      sub_100020438(v18);

      v21 = *(v0 + v3);
      *(v0 + v3) = v5;
      v19 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
      v20 = v5;
      if (v19)
      {
        if (v19 == v21)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!v21)
        {
LABEL_18:

          goto LABEL_19;
        }

        v19 = 0;
      }

      [*(v0 + 16) setDragDelegate:v19];
      goto LABEL_18;
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
  *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  v7 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
  if (v7)
  {
    if (v7 == v6)
    {
      goto LABEL_20;
    }

    v21 = v6;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    v21 = v6;
    v7 = 0;
  }

  [*(v0 + 16) setDragDelegate:v7];
LABEL_19:
  v6 = v21;
LABEL_20:
}

void sub_100322048()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = *(v0 + 48);
      v3 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate;
      v4 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
      if (v4)
      {

        v5 = v4;
      }

      else
      {
        v8 = objc_allocWithZone(type metadata accessor for CollectionViewDragDropController.DropDelegate());

        v5 = [v8 init];
      }

      v9 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession];
      v10 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession];
      *v9 = sub_10032779C;
      *(v9 + 1) = 0;
      v11 = v4;
      sub_100020438(v10);
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      *(v13 + 2) = v12;
      *(v13 + 3) = v1;
      *(v13 + 4) = v2;
      v14 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop];
      v15 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop];
      *v14 = sub_1003261DC;
      v14[1] = v13;
      sub_100030444(v1);

      sub_100020438(v15);

      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 2) = v16;
      *(v17 + 3) = v1;
      *(v17 + 4) = v2;
      v18 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate];
      v19 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate];
      *v18 = sub_1003261E8;
      v18[1] = v17;

      sub_100020438(v19);

      v20 = swift_allocObject();
      swift_weakInit();
      v21 = &v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd];
      v22 = *&v5[OBJC_IVAR____TtCC5Music32CollectionViewDragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd];
      *v21 = sub_1003261F4;
      v21[1] = v20;

      sub_100020438(v22);

      v25 = *(v0 + v3);
      *(v0 + v3) = v5;
      v23 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
      v24 = v5;
      if (v23)
      {
        if (v23 == v25)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!v25)
        {
LABEL_18:

          goto LABEL_19;
        }

        v23 = 0;
      }

      [*(v0 + 16) setDropDelegate:v23];
      goto LABEL_18;
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
  *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  v7 = *(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
  if (v7)
  {
    if (v7 == v6)
    {
      goto LABEL_20;
    }

    v25 = v6;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    v25 = v6;
    v7 = 0;
  }

  [*(v0 + 16) setDropDelegate:v7];
LABEL_19:
  v6 = v25;
LABEL_20:
}

void sub_10032234C(char a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  if (v2 == (a1 & 1))
  {
    return;
  }

  if (a1)
  {
    sub_100321DD8();

    sub_100322048();
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
  *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  v4 = *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate);
  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_13;
    }

    v4 = 0;
    goto LABEL_12;
  }

  if (v4 != v3)
  {
LABEL_12:
    [*(v1 + 16) setDragDelegate:v4];
  }

LABEL_13:

  v5 = *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
  *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  v6 = *(v1 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate);
  if (v6)
  {
    if (v6 != v5)
    {
      v7 = v5;
LABEL_18:
      [*(v1 + 16) setDropDelegate:v6];
      v5 = v7;
    }
  }

  else if (v5)
  {
    v7 = v5;
    v6 = 0;
    goto LABEL_18;
  }
}

uint64_t sub_10032245C(uint64_t a1)
{
  *(v1 + 96) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  if (v2)
  {
    sub_100030444(*(v1 + 56));
    v3 = swift_unknownObjectRetain();
    v2(v3);
    swift_unknownObjectRelease();
    sub_100020438(v2);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1003224FC(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_10118B910);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  swift_beginAccess();
  sub_1003261FC(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + 72);
  if (v7)
  {
    sub_1000089F8(v1 + v6, v5, &unk_10118B910);

    v7(v5);
    sub_100020438(v7);
    sub_1000095E8(a1, &unk_10118B910);
    a1 = v5;
  }

  return sub_1000095E8(a1, &unk_10118B910);
}

id sub_100322B34()
{
  v0 = [objc_allocWithZone(_UIDragSessionProperties) init];
  [v0 set_supportsSystemDrag:0];

  return v0;
}

uint64_t sub_100322C08(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), void *a5, void *a6)
{
  a4(*(a1 + *a3), *(a1 + *a3 + 8));
  sub_100020438(*(a1 + *a5));
  v9 = *(a1 + *a6);

  return sub_100020438(v9);
}

double sub_100322C78(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a3(a2);
  if (v4)
  {
    v6 = v4;
    sub_10032626C(v11);
    if (*&v11[0])
    {
      sub_1000089F8(v11 + 8, &v12, &qword_10118B990);
      sub_1000095E8(v11, &unk_10118B930);
    }

    else
    {
      sub_1000095E8(v11, &unk_10118B930);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    v7 = sub_1007A411C(&v12);
    if ([a1 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v11[0] = v12;
    v11[1] = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v7 == 4 || v10 != v7 || v7 == 3)
        {

          return result;
        }

LABEL_20:
        sub_10010FC20(&qword_101183990);
        v9 = swift_allocObject();
        *&result = 1;
        *(v9 + 16) = xmmword_100EBC6C0;
        *(v9 + 32) = v6;
        return result;
      }
    }

    else
    {
      sub_1000095E8(v11, &unk_101183F30);
    }

    if (v7 == 4)
    {
      v8 = 0;
    }

    else
    {
      LOBYTE(v11[0]) = v7;
      v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [a1 setLocalContext:v8];
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100322E74()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = swift_unknownObjectRetain();
    sub_10032245C(v1);
  }

  return result;
}

uint64_t sub_100322ED8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10032245C(0);
  }

  return result;
}

uint64_t sub_100322F40(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *&a1[*a5];
  if (v5)
  {
    swift_unknownObjectRetain();
    v8 = a1;
    sub_100030444(v5);
    v9 = v5(a4);
    swift_unknownObjectRelease();

    sub_100020438(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1003231E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void (*)(uint64_t), uint64_t), uint64_t (*a7)(void (*)(uint64_t), uint64_t))
{
  v7 = result + *a5;
  v8 = *v7;
  if (*v7)
  {
    v11 = result;
    v12 = *(v7 + 8);
    swift_unknownObjectRetain();
    v13 = v11;
    a6(v8, v12);
    v8(a4);
    swift_unknownObjectRelease();

    return a7(v8, v12);
  }

  return result;
}

id sub_100323350(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_10032340C()
{
  ObjectType = swift_getObjectType();
  v1 = *(sub_1003207B8(ObjectType) + 16);

  return v1 != 0;
}

void sub_100323444(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, char *), uint64_t a4)
{
  v116 = a3;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v114 = v99 - v7;
  v8 = type metadata accessor for IndexPath();
  v117 = *(v8 - 8);
  __chkstk_darwin(v8);
  v106 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10010FC20(&unk_10118B970);
  __chkstk_darwin(v108);
  v109 = v99 - v10;
  v11 = sub_10010FC20(&unk_10118B910);
  __chkstk_darwin(v11 - 8);
  v113 = v99 - v12;
  v112 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v14 = v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v15);
  v107 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = v99 - v18;
  __chkstk_darwin(v19);
  v21 = v99 - v20;
  __chkstk_darwin(v22);
  v24 = v99 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v26 = Strong;
  v27 = [a1 session];
  ObjectType = swift_getObjectType();
  v119 = sub_1003207B8(ObjectType);
  swift_unknownObjectRelease();
  v29 = [a1 destinationIndexPath];
  v103 = v14;
  if (v29)
  {
    v30 = v29;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v117 + 56);
  v100 = v8;
  v32(v24, v31, 1, v8);
  v33 = swift_allocBox();
  v118 = v34;
  sub_100326F64(v24, v34);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_1000060E4(v35, qword_1012186C8);
  swift_unknownObjectRetain();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  v104 = v38;
  v39 = os_log_type_enabled(v37, v38);
  v99[1] = v15;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v101 = v36;
    v41 = v40;
    v42 = swift_slowAlloc();
    v115 = v21;
    v122 = v42;
    *v41 = 136446722;
    v43 = [a1 proposal];
    v102 = a4;
    v44 = v43;
    v45 = [v43 intent];
    v105 = v33;
    v46 = v45;

    *&v120 = v46;
    type metadata accessor for Intent(0);
    v47 = String.init<A>(describing:)();
    v49 = sub_1000105AC(v47, v48, &v122);

    *(v41 + 4) = v49;
    *(v41 + 12) = 2082;
    v50 = v118;
    swift_beginAccess();
    sub_1000089F8(v50, v115, &unk_10118BCE0);
    v51 = String.init<A>(describing:)();
    v53 = sub_1000105AC(v51, v52, &v122);

    *(v41 + 14) = v53;
    *(v41 + 22) = 2082;
    sub_10010FC20(&qword_10119E600);
    v54 = Array.description.getter();
    v56 = sub_1000105AC(v54, v55, &v122);
    a4 = v102;

    *(v41 + 24) = v56;
    v33 = v105;
    _os_log_impl(&_mh_execute_header, v37, v104, "Will perform drop with intent=%{public}s, destination indexPath=%{public}s, and intents=%{public}s.", v41, 0x20u);
    swift_arrayDestroy();
    v21 = v115;

    v36 = v101;
  }

  v57 = [a1 proposal];
  v58 = [v57 intent];

  if (v58 == 2)
  {
    v59 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
    swift_beginAccess();
    v60 = v113;
    sub_1000089F8(v26 + v59, v113, &unk_10118B910);
    v61 = v112;
    if ((*(v111 + 48))(v60, 1, v112) == 1)
    {
      sub_1000095E8(v60, &unk_10118B910);
      goto LABEL_26;
    }

    v62 = a4;
    v115 = v21;
    v105 = v33;
    v63 = v103;
    sub_1003270AC(v60, v103, type metadata accessor for CollectionViewDragDropController.DropContext);
    v64 = *(v61 + 24);
    v65 = v110;
    sub_1000089F8(v63 + v64, v110, &unk_10118BCE0);
    v66 = *(v117 + 48);
    v67 = v100;
    if (v66(v65, 1, v100) != 1)
    {
      sub_100327114(v63, type metadata accessor for CollectionViewDragDropController.DropContext);
      sub_1000095E8(v65, &unk_10118BCE0);
      v33 = v105;
      v21 = v115;
      goto LABEL_26;
    }

    v101 = v36;
    v102 = v62;
    sub_1000095E8(v65, &unk_10118BCE0);
    v68 = v118;
    swift_beginAccess();
    v69 = *(v108 + 48);
    v70 = v68;
    v71 = v109;
    sub_1000089F8(v70, v109, &unk_10118BCE0);
    v113 = v64;
    sub_1000089F8(v63 + v64, v71 + v69, &unk_10118BCE0);
    if (v66(v71, 1, v67) == 1)
    {
      v72 = v66(v71 + v69, 1, v67);
      v21 = v115;
      v73 = v118;
      if (v72 == 1)
      {
        sub_1000095E8(v71, &unk_10118BCE0);
LABEL_24:
        sub_100327114(v103, type metadata accessor for CollectionViewDragDropController.DropContext);
LABEL_25:
        v33 = v105;
        goto LABEL_26;
      }
    }

    else
    {
      v74 = v107;
      sub_1000089F8(v71, v107, &unk_10118BCE0);
      v75 = v67;
      if (v66(v71 + v69, 1, v67) != 1)
      {
        v84 = v117;
        v85 = v106;
        (*(v117 + 32))(v106, v71 + v69, v67);
        sub_1003271E4();
        v86 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87 = *(v84 + 8);
        v87(v85, v75);
        v87(v74, v75);
        sub_1000095E8(v71, &unk_10118BCE0);
        v21 = v115;
        v73 = v118;
        if (v86)
        {
          goto LABEL_24;
        }

LABEL_20:

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v122 = v79;
          *v78 = 136446210;
          sub_1000089F8(v73, v21, &unk_10118BCE0);
          v80 = String.init<A>(describing:)();
          v82 = sub_1000105AC(v80, v81, &v122);

          *(v78 + 4) = v82;
          v21 = v115;
          _os_log_impl(&_mh_execute_header, v76, v77, "Changed destination indexPath from %{public}s to nil.", v78, 0xCu);
          sub_10000959C(v79);
        }

        v83 = v103;
        sub_1000089F8(&v103[v113], v21, &unk_10118BCE0);
        sub_100327114(v83, type metadata accessor for CollectionViewDragDropController.DropContext);
        sub_100327174(v21, v73);
        goto LABEL_25;
      }

      (*(v117 + 8))(v74, v67);
      v21 = v115;
      v73 = v118;
    }

    sub_1000095E8(v71, &unk_10118B970);
    goto LABEL_20;
  }

LABEL_26:
  v88 = v118;
  swift_beginAccess();
  sub_1000089F8(v88, v21, &unk_10118BCE0);
  v116(&v120, v21);
  sub_1000095E8(v21, &unk_10118BCE0);
  if (v121)
  {
    sub_100059A8C(&v120, &v122);
    v89 = v114;
    static TaskPriority.userInitiated.getter();
    v90 = type metadata accessor for TaskPriority();
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    sub_100008FE4(&v122, &v120);
    v91 = swift_allocObject();
    v91[2] = 0;
    v91[3] = 0;
    sub_100059A8C(&v120, (v91 + 4));
    v91[9] = v119;
    v91[10] = v33;
    v91[11] = a1;
    v91[12] = v26;
    swift_unknownObjectRetain();

    sub_10035EB10(0, 0, v89, &unk_100EC71F0, v91);

    sub_1000095E8(v89, &unk_101181520);
    sub_10000959C(&v122);
  }

  else
  {

    sub_1000095E8(&v120, &unk_10119E610);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v122 = v95;
      *v94 = 136446210;
      sub_1000089F8(v118, v21, &unk_10118BCE0);
      v96 = String.init<A>(describing:)();
      v98 = sub_1000105AC(v96, v97, &v122);

      *(v94 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v92, v93, "Failed to locate destination at index path=%{public}s.", v94, 0xCu);
      sub_10000959C(v95);
    }
  }
}

uint64_t sub_100324364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a4;
  v8[27] = a5;
  v9 = type metadata accessor for Notice(0);
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  sub_10010FC20(&unk_10118BCE0);
  v8[33] = swift_task_alloc();
  v10 = type metadata accessor for IndexPath();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  sub_10010FC20(&unk_10118B980);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_projectBox();

  return _swift_task_switch(sub_100324510, 0, 0);
}

uint64_t sub_100324510()
{
  v23 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v1[3];
  v4 = v1[4];
  sub_10000954C(v1, v3);
  if (sub_10017BC1C(v2, v3, v4))
  {
    v6 = v1[3];
    v5 = v1[4];
    sub_10000954C(v0[26], v6);
    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = sub_1003247E4;
    v8 = v0[38];
    v9 = v0[27];

    return sub_10017BE34(v8, v9, v6, v5);
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v11 = v0[26];
    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_1012186C8);
    sub_100008FE4(v11, (v0 + 2));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      sub_100008FE4((v0 + 2), (v0 + 7));
      sub_10010FC20(&unk_10119E5F0);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      sub_10000959C((v0 + 2));
      v20 = sub_1000105AC(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Dropping to destination=%{public}s is unsupported.", v15, 0xCu);
      sub_10000959C(v16);
    }

    else
    {

      sub_10000959C((v0 + 2));
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1003247E4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1003255D8;
  }

  else
  {
    v2 = sub_1003248F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003248F8()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  swift_beginAccess();
  sub_1000089F8(v1, v4, &unk_10118BCE0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(v0[33], &unk_10118BCE0);
    v5 = v0[37];
    v6 = v0[30];
    v7 = v0[31];
    sub_1000089F8(v0[38], v5, &unk_10118B980);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      v8 = v0[37];
      sub_1000095E8(v0[38], &unk_10118B980);
      sub_1000095E8(v8, &unk_10118B980);

      v9 = v0[1];

      return v9();
    }

    v15 = v0[29];
    sub_1003270AC(v0[37], v0[32], type metadata accessor for Notice);
    v0[53] = *(v15 + 16);
    v0[54] = type metadata accessor for MainActor();
    v0[55] = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v16;
    v14 = sub_1003252BC;
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    v0[42] = type metadata accessor for MainActor();
    v0[43] = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_100324B74;
  }

  return _swift_task_switch(v14, v11, v13);
}

uint64_t sub_100324B74()
{
  v1 = *(v0 + 224);

  *(v0 + 352) = [v1 session];

  return _swift_task_switch(sub_100324BFC, 0, 0);
}

uint64_t sub_100324BFC()
{
  *(v0 + 360) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100324C88, v2, v1);
}

uint64_t sub_100324C88()
{
  v1 = *(v0 + 352);

  *(v0 + 368) = [v1 items];
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100324D14, 0, 0);
}

uint64_t sub_100324D14()
{
  v1 = *(v0 + 368);
  sub_100009F78(0, &qword_10118B920);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 376) = v2;

  if (v2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 384) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 384) = v5;
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
        return _swift_task_switch(v5, v3, v4);
      }

      *(v0 + 392) = 0;
      v6 = *(v0 + 376);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007E97DC(0, v6);
      }

      else
      {
        v7 = *(v6 + 32);
      }

      *(v0 + 400) = v7;
      *(v0 + 408) = IndexPath._bridgeToObjectiveC()();
      *(v0 + 416) = static MainActor.shared.getter();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v9;
      v11 = sub_100324FC0;
LABEL_14:
      v5 = v11;
      v3 = v8;
      v4 = v10;

      return _swift_task_switch(v5, v3, v4);
    }
  }

  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  v14 = *(v0 + 272);

  (*(v13 + 8))(v12, v14);
  v15 = *(v0 + 296);
  v16 = *(v0 + 240);
  v17 = *(v0 + 248);
  sub_1000089F8(*(v0 + 304), v15, &unk_10118B980);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v21 = *(v0 + 232);
    sub_1003270AC(*(v0 + 296), *(v0 + 256), type metadata accessor for Notice);
    *(v0 + 424) = *(v21 + 16);
    *(v0 + 432) = type metadata accessor for MainActor();
    *(v0 + 440) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v22;
    v11 = sub_1003252BC;
    goto LABEL_14;
  }

  v18 = *(v0 + 296);
  sub_1000095E8(*(v0 + 304), &unk_10118B980);
  sub_1000095E8(v18, &unk_10118B980);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100324FC0()
{
  v1 = v0[51];
  v2 = v0[50];
  v3 = v0[28];

  v4 = [v3 dropItem:v2 toItemAtIndexPath:v1];
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100325060, 0, 0);
}

uint64_t sub_100325060()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 384);

  if (v1 + 1 == v2)
  {
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    v5 = *(v0 + 272);

    (*(v4 + 8))(v3, v5);
    v6 = *(v0 + 296);
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    sub_1000089F8(*(v0 + 304), v6, &unk_10118B980);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v9 = *(v0 + 296);
      sub_1000095E8(*(v0 + 304), &unk_10118B980);
      sub_1000095E8(v9, &unk_10118B980);

      v10 = *(v0 + 8);

      return v10();
    }

    v15 = *(v0 + 232);
    sub_1003270AC(*(v0 + 296), *(v0 + 256), type metadata accessor for Notice);
    *(v0 + 424) = *(v15 + 16);
    *(v0 + 432) = type metadata accessor for MainActor();
    *(v0 + 440) = static MainActor.shared.getter();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    v19 = sub_1003252BC;
  }

  else
  {
    v12 = *(v0 + 392) + 1;
    *(v0 + 392) = v12;
    v13 = *(v0 + 376);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_1007E97DC(v12, v13);
    }

    else
    {
      v14 = *(v13 + 8 * v12 + 32);
    }

    *(v0 + 400) = v14;
    *(v0 + 408) = IndexPath._bridgeToObjectiveC()();
    *(v0 + 416) = static MainActor.shared.getter();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v20;
    v19 = sub_100324FC0;
  }

  return _swift_task_switch(v19, v16, v18);
}

uint64_t sub_1003252BC()
{

  *(v0 + 448) = UIView.noticePresenter.getter();

  return _swift_task_switch(sub_100325330, 0, 0);
}

uint64_t sub_100325330()
{
  v1 = v0[56];
  if (v1)
  {
    v2 = *v1 + 200;
    v0[57] = *v2;
    v0[58] = v2 & 0xFFFFFFFFFFFFLL | 0x72F0000000000000;
    v0[59] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100325484, v4, v3);
  }

  else
  {
    v5 = v0[38];
    sub_100327114(v0[32], type metadata accessor for Notice);
    sub_1000095E8(v5, &unk_10118B980);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100325484()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 256);

  v1(v2, 0);

  return _swift_task_switch(sub_100325510, 0, 0);
}

uint64_t sub_100325510()
{
  v1 = v0[38];
  sub_100327114(v0[32], type metadata accessor for Notice);
  sub_1000095E8(v1, &unk_10118B980);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1003255D8()
{
  v18 = v0;
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012186C8);
  sub_100008FE4(v1, (v0 + 12));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    sub_100008FE4((v0 + 12), (v0 + 17));
    sub_10010FC20(&unk_10119E5F0);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_10000959C((v0 + 12));
    v11 = sub_1000105AC(v8, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v0[25] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v17);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform drop on destination=%{public}s. Error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C((v0 + 12));
  }

  v15 = v0[1];

  return v15();
}

id sub_100325868(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t))
{
  v7 = sub_10010FC20(&unk_10118B910);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
  v29 = v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    a4(&v24, a2);
    if (v25)
    {
      sub_100059A8C(&v24, v26);
      ObjectType = swift_getObjectType();
      v14 = sub_1003207B8(ObjectType);
      v15 = v27;
      v16 = v28;
      sub_10000954C(v26, v27);
      if (sub_10017BC1C(v14, v15, v16))
      {
        v17 = v27;
        v18 = v28;
        sub_10000954C(v26, v27);
        v19 = sub_10017BAC0(v14, v17, v18);

        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {

          v20 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
        }

        sub_10000959C(v26);
      }

      else
      {

        v22 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];

        v29 = v22;
        v10 = v22;
        sub_10000959C(v26);
        v20 = v10;
      }
    }

    else
    {
      sub_1000095E8(&v24, &unk_10119E610);
      v21 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
      (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
      sub_1003224FC(v9);
      v10 = v10;
      v20 = v10;
    }

    sub_100325B08(v12, a1, &v29, a2);

    return v20;
  }

  return v10;
}

uint64_t sub_100325B08(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v8 = sub_10010FC20(&unk_10118B910);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v20 - v12);
  v14 = *a3;
  v15 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  sub_1000089F8(a4, v13 + *(v15 + 24), &unk_10118BCE0);
  *v13 = a2;
  v13[1] = v14;
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  v16 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  swift_beginAccess();
  v17 = v14;
  swift_unknownObjectRetain();
  sub_1003261FC(v13, a1 + v16);
  swift_endAccess();
  v18 = *(a1 + 72);
  if (v18)
  {
    sub_1000089F8(a1 + v16, v10, &unk_10118B910);

    v18(v10);
    sub_100020438(v18);
    sub_1000095E8(v10, &unk_10118B910);
  }

  return sub_1000095E8(v13, &unk_10118B910);
}

uint64_t sub_100325CE8()
{
  v0 = sub_10010FC20(&unk_10118B910);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_1003224FC(v2);
  }

  return result;
}

uint64_t sub_100325DD0()
{
  sub_100020438(*(v0 + 24));
  sub_100020438(*(v0 + 40));
  sub_100020438(*(v0 + 56));
  sub_100020438(*(v0 + 72));
  swift_unknownObjectRelease();
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext, &unk_10118B910);

  return v0;
}

uint64_t sub_100325E58()
{
  sub_100325DD0();

  return swift_deallocClassInstance();
}

void sub_100325ED8()
{
  sub_100326178(319, &unk_10118B648, type metadata accessor for CollectionViewDragDropController.DropContext);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10032604C()
{
  sub_100326114();
  if (v0 <= 0x3F)
  {
    sub_100009F78(319, qword_10118B8D0);
    if (v1 <= 0x3F)
    {
      sub_100326178(319, &unk_101192480, &type metadata accessor for IndexPath);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100326114()
{
  result = qword_10118B8C8;
  if (!qword_10118B8C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10118B8C8);
  }

  return result;
}

void sub_100326178(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003261FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118B910);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10032626C@<D0>(_OWORD *a1@<X8>)
{
  if ([v1 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v8)
    {
      v3 = v9;
      *a1 = v8;
      a1[1] = v3;
      result = *&v10;
      a1[2] = v10;
      return result;
    }
  }

  else
  {
    sub_1000095E8(v7, &unk_101183F30);
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *sub_100326348(uint64_t a1)
{
  v43 = a1;
  v2 = sub_10010FC20(&unk_10118B940);
  __chkstk_darwin(v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for SuggestedSong(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for GenericMusicItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &selRef_setPhotosHeaderMetadata_;
  v16 = [v1 localDragSession];
  v17 = &selRef_setPhotosHeaderMetadata_;
  if (!v16)
  {
    v49 = 0u;
    v50 = 0u;
LABEL_9:
    sub_1000095E8(&v49, &unk_101183F30);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_10;
  }

  v18 = [v16 localContext];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  v17 = &selRef_setPhotosHeaderMetadata_;
  v15 = &selRef_setPhotosHeaderMetadata_;
  if (!*(&v48 + 1))
  {
    goto LABEL_9;
  }

  v19 = swift_dynamicCast();
  (*(v12 + 56))(v10, v19 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v20 = sub_1007973A8(0);
    (*(v12 + 8))(v14, v11);
    return v20;
  }

LABEL_10:
  sub_1000095E8(v10, &unk_101189DA0);
  v21 = [v1 v15[343]];
  if (!v21)
  {
    v49 = 0u;
    v50 = 0u;
LABEL_18:
    sub_1000095E8(&v49, &unk_101183F30);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_19;
  }

  v22 = [v21 v17[345]];
  swift_unknownObjectRelease();
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {
    goto LABEL_18;
  }

  v23 = swift_dynamicCast();
  (*(v6 + 56))(v4, v23 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v24 = v44;
    sub_1003270AC(v4, v44, type metadata accessor for SuggestedSong);
    v20 = sub_100236928(0);
    sub_100327114(v24, type metadata accessor for SuggestedSong);
    return v20;
  }

LABEL_19:
  sub_1000095E8(v4, &unk_10118B940);
  v25 = [v1 v15[343]];
  if (!v25)
  {
    v47 = 0u;
    v48 = 0u;
LABEL_45:
    sub_1000095E8(&v47, &unk_101183F30);
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
    goto LABEL_47;
  }

  v26 = [v25 v17[345]];
  swift_unknownObjectRelease();
  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    goto LABEL_45;
  }

  sub_10010FC20(&qword_10118B958);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_47;
  }

  v27 = *(&v50 + 1);
  if (!*(&v50 + 1))
  {
LABEL_47:
    sub_1000095E8(&v49, &qword_10118B950);
    return _swiftEmptyArrayStorage;
  }

  v28 = v51;
  v29 = sub_10000954C(&v49, *(&v50 + 1));
  __chkstk_darwin(v29);
  *(&v42 - 6) = v43;
  *(&v42 - 5) = v27;
  *(&v42 - 4) = v28;
  *(&v42 - 3) = sub_100326B0C;
  *(&v42 - 2) = 0;
  sub_10010FC20(&unk_10118B960);
  result = Sequence.compactMap<A>(_:)();
  v31 = result;
  v32 = result[2];
  if (!v32)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_50:

    sub_10000959C(&v49);
    return v20;
  }

  v33 = 0;
  v20 = _swiftEmptyArrayStorage;
  while (v33 < v31[2])
  {
    v34 = v31[v33 + 4];
    v35 = *(v34 + 16);
    v36 = v20[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_52;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v37 <= v20[3] >> 1)
    {
      if (*(v34 + 16))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v38 = v36 + v35;
      }

      else
      {
        v38 = v36;
      }

      result = sub_100499B64(result, v38, 1, v20);
      v20 = result;
      if (*(v34 + 16))
      {
LABEL_41:
        if ((v20[3] >> 1) - v20[2] < v35)
        {
          goto LABEL_54;
        }

        sub_10010FC20(&qword_10119E600);
        swift_arrayInitWithCopy();

        if (v35)
        {
          v39 = v20[2];
          v40 = __OFADD__(v39, v35);
          v41 = v39 + v35;
          if (v40)
          {
            goto LABEL_55;
          }

          v20[2] = v41;
        }

        goto LABEL_30;
      }
    }

    if (v35)
    {
      goto LABEL_53;
    }

LABEL_30:
    if (v32 == ++v33)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_100326B0C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118B940);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = type metadata accessor for SuggestedSong(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22[-v10];
  v12 = type metadata accessor for GenericMusicItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000DD18(a1, v22);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v11, 0, 1, v12);
    (*(v13 + 32))(v15, v11, v12);
    v18 = sub_1007973A8(0);
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v17(v11, 1, 1, v12);
    sub_1000095E8(v11, &unk_101189DA0);
    sub_10000DD18(a1, v22);
    v19 = swift_dynamicCast();
    v20 = *(v6 + 56);
    if (v19)
    {
      v20(v4, 0, 1, v5);
      sub_1003270AC(v4, v8, type metadata accessor for SuggestedSong);
      v18 = sub_100236928(0);
      sub_100327114(v8, type metadata accessor for SuggestedSong);
    }

    else
    {
      v20(v4, 1, 1, v5);
      sub_1000095E8(v4, &unk_10118B940);
      return 0;
    }
  }

  return v18;
}

uint64_t sub_100326E78@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v7 = sub_10001C8B8(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(v7, a1, AssociatedTypeWitness);
  *a3 = a2(v9);
  return sub_10000959C(v9);
}

uint64_t sub_100326F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118BCE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100326FD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100324364(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_1003270AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100327114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100327174(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118BCE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003271E4()
{
  result = qword_101192840;
  if (!qword_101192840)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192840);
  }

  return result;
}

id sub_1003272AC(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForItemAtIndexPath:isa];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 window];
  if (v4)
  {

    v5 = [objc_allocWithZone(UIDragPreviewParameters) init];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = v5;
    if (v6)
    {
      v8 = 0.0;
      v9 = Corner.extraSmall.unsafeMutableAddressor();
    }

    else
    {
      v8 = 8.0;
      v9 = Corner.large.unsafeMutableAddressor();
    }

    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 16);
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    NSDirectionalEdgeInsets.init(edge:length:)(v13, v8);
    [v3 bounds];
    [v3 effectiveUserInterfaceLayoutDirection];
    CGRect.outset(by:for:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = Corner.radius(in:)(v10, v14, v16, v18, v20, v11, v12);
    v23 = [objc_opt_self() bezierPathWithRoundedRect:v15 cornerRadius:{v17, v19, v21, v22}];
    [v7 setVisiblePath:v23];
  }

  else
  {

    return 0;
  }

  return v7;
}

void sub_1003274BC(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10032751C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100321150(a1, v4, v5, (v1 + 4), v6, v7);
}

id sub_1003275E0(id result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return a2;
  }

  return result;
}

uint64_t sub_100327670(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100327688(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003276D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100327730()
{
  result = qword_10118B9A8;
  if (!qword_10118B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118B9A8);
  }

  return result;
}

id sub_1003277A8()
{
  v0 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-1] - v1;
  MusicPin.genericMusicItem.getter(&v12[-1] - v1);
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = &unk_101189DA0;
    v6 = v2;
  }

  else
  {
    GenericMusicItem.innerMusicItem.getter(v12);
    (*(v4 + 8))(v2, v3);
    v7 = v13;
    if (v13)
    {
      sub_10000954C(v12, v13);
      MusicItem.artworkPlaceholder.getter(v7, v14);
      v8 = v15;
      v18 = v14[0];
      v9 = v15;
      sub_1000095E8(&v18, &unk_1011951E0);
      v17 = v14[1];
      sub_1000095E8(&v17, &unk_1011951E0);

      sub_10000959C(v12);
      return v8;
    }

    v5 = &qword_10118B990;
    v6 = v12;
  }

  sub_1000095E8(v6, v5);
  return 0;
}

void *sub_100327974(void *a1, uint64_t a2)
{
  v188 = type metadata accessor for Song();
  v180 = *(v188 - 8);
  v4 = __chkstk_darwin(v188);
  v179 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v187 = &v179 - v7;
  __chkstk_darwin(v6);
  v186 = &v179 - v8;
  v9 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v9 - 8);
  v184 = &v179 - v10;
  v192 = type metadata accessor for MusicVideo();
  v190 = *(v192 - 8);
  v11 = __chkstk_darwin(v192);
  v185 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v193 = &v179 - v14;
  v15 = __chkstk_darwin(v13);
  v191 = &v179 - v16;
  __chkstk_darwin(v15);
  v189 = &v179 - v17;
  v197 = type metadata accessor for Artist();
  v196 = *(v197 - 1);
  v18 = __chkstk_darwin(v197);
  v194 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v195 = &v179 - v20;
  v183 = type metadata accessor for Playlist();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v22 - 8);
  v202 = &v179 - v23;
  v24 = sub_10010FC20(&qword_101183A20);
  v25 = __chkstk_darwin(v24 - 8);
  v201 = &v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v205 = &v179 - v28;
  __chkstk_darwin(v27);
  v212 = &v179 - v29;
  v203 = type metadata accessor for ContainerDetail.Source(0);
  v30 = __chkstk_darwin(v203);
  v200 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v204 = &v179 - v33;
  __chkstk_darwin(v32);
  v206 = &v179 - v34;
  v35 = type metadata accessor for Album();
  v209 = *(v35 - 8);
  v210 = v35;
  v36 = __chkstk_darwin(v35);
  v198 = (&v179 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __chkstk_darwin(v36);
  v199 = &v179 - v39;
  v40 = __chkstk_darwin(v38);
  v208 = (&v179 - v41);
  __chkstk_darwin(v40);
  v207 = &v179 - v42;
  v43 = type metadata accessor for MusicPin.Item();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for MusicPin();
  v48 = *(v47 - 8);
  v49 = __chkstk_darwin(v47);
  v51 = &v179 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v49);
  v54 = &v179 - v53;
  __chkstk_darwin(v52);
  v213 = &v179 - v55;
  _s6PinTabCMa(0);
  v56 = swift_dynamicCastClass();
  v211 = v48;
  if (v56)
  {
    v57 = v56;
    v58 = v46;
    v59 = v44;
    v60 = v43;
    v61 = a1;
    v62 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    swift_beginAccess();
    v63 = v57 + v62;
    v64 = v213;
    a1 = v61;
    v43 = v60;
    v44 = v59;
    v46 = v58;
    v65 = *(v48 + 16);
    v65(v54, v63, v47);
    (*(v48 + 32))(v64, v54, v47);
  }

  else
  {
    v66 = a2;
    v65 = *(v48 + 16);
    v65(v213, v66, v47);
  }

  v67 = [a1 tabBarController];
  if (!v67 || (v68 = v67, v69 = [v67 traitCollection], v68, !v69))
  {
    v69 = [objc_opt_self() currentTraitCollection];
  }

  MusicPin.item.getter();
  v70 = (*(v44 + 88))(v46, v43);
  if (v70 == enum case for MusicPin.Item.album(_:))
  {
    (*(v44 + 96))(v46, v43);
    v71 = v209;
    v72 = *(v209 + 32);
    v73 = v207;
    v196 = v47;
    v74 = v210;
    v72(v207, v46, v210);
    v197 = v69;
    v75 = *(v71 + 16);
    v76 = v208;
    v75(v208, v73, v74);
    v77 = sub_10010FC20(&qword_10118A430);
    v78 = *(v77 + 48);
    v79 = *(v77 + 64);
    v80 = _s6AlbumsV5ScopeOMa(0);
    v82 = v205;
    v81 = v206;
    swift_storeEnumTagMultiPayload();
    (*(*(v80 - 8) + 56))(v81, 0, 1, v80);
    *(v81 + v78) = 0;
    *(v81 + v79) = 0;
    swift_storeEnumTagMultiPayload();
    v83 = type metadata accessor for URL();
    v84 = v212;
    (*(*(v83 - 8) + 56))(v212, 1, 1, v83);
    v85 = v199;
    v75(v199, v76, v74);
    v86 = v204;
    sub_10032EB6C(v81, v204, type metadata accessor for ContainerDetail.Source);
    v87 = v84;
    v88 = v82;
    sub_1000089F8(v87, v82, &qword_101183A20);
    v89 = v198;
    v75(v198, v85, v74);
    v90 = v200;
    sub_10032EB6C(v86, v200, type metadata accessor for ContainerDetail.Source);
    v91 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    v92 = v202;
    (*(*(v91 - 8) + 56))(v202, 1, 1, v91);
    v93 = v88;
    v94 = v88;
    v95 = v201;
    sub_1000089F8(v93, v201, &qword_101183A20);
    v96 = sub_1004E34D0(v89, v90, v92, v95);
    sub_1000095E8(v94, &qword_101183A20);
    sub_10032EBD4(v86, type metadata accessor for ContainerDetail.Source);
    v97 = *(v209 + 8);
    v98 = v85;
    v99 = v210;
    v97(v98, v210);
    v100 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v101 = v96;
    v102 = sub_100137F64(v101, v100);

    sub_1000095E8(v212, &qword_101183A20);
    sub_10032EBD4(v81, type metadata accessor for ContainerDetail.Source);
    v97(v208, v99);
    v97(v207, v99);
    (v211)[1](v213, v196);
    return v102;
  }

  if (v70 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v44 + 96))(v46, v43);
    v103 = v196;
    v104 = v195;
    v105 = v197;
    (*(v196 + 32))(v195, v46, v197);
    v106 = v194;
    (*(v103 + 16))(v194, v104, v105);
    v107 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
    v108 = sub_1001FAE8C(v106, 0);
LABEL_11:
    v102 = v108;

    (*(v103 + 8))(v104, v105);
LABEL_12:
    (v211)[1](v213, v47);
    return v102;
  }

  if (v70 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v44 + 96))(v46, v43);
    v110 = v190;
    v111 = *(v190 + 16);
    v112 = v189;
    v113 = v192;
    v111(v189, v46, v192);
    if (MusicPin.isSingleMusicVideo.getter())
    {
      v114 = v184;
      v111(v184, v112, v113);
      (*(v110 + 56))(v114, 0, 1, v113);
      v115 = objc_allocWithZone(type metadata accessor for LibraryMusicVideosViewController());
      v102 = sub_100507278(0, v114);

      v116 = *(v110 + 8);
      v116(v112, v113);
      (v211)[1](v213, v47);
      v116(v46, v113);
      return v102;
    }

    v117 = *(v110 + 8);
    v209 = v110 + 8;
    v210 = v117;
    v117(v112, v113);
    v118 = v191;
    (*(v110 + 32))(v191, v46, v113);
    v111(v193, v118, v113);
    v119 = sub_10010FC20(&qword_10118A430);
    v120 = *(v119 + 48);
    v121 = *(v119 + 64);
    v122 = _s6AlbumsV5ScopeOMa(0);
    v123 = v113;
    v124 = v206;
    swift_storeEnumTagMultiPayload();
    (*(*(v122 - 8) + 56))(v124, 0, 1, v122);
    *(v124 + v120) = 0;
    *(v124 + v121) = 0;
    swift_storeEnumTagMultiPayload();
    v125 = type metadata accessor for URL();
    v126 = v212;
    (*(*(v125 - 8) + 56))(v212, 1, 1, v125);
    v127 = v185;
    v111(v185, v193, v123);
    v128 = v204;
    sub_10032EB6C(v124, v204, type metadata accessor for ContainerDetail.Source);
    v129 = v205;
    sub_1000089F8(v126, v205, &qword_101183A20);
    v130 = sub_1004E42B0(v127, v128, v129);
    v131 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v132 = v130;
    v102 = sub_100137F64(v132, v131);

    sub_1000095E8(v126, &qword_101183A20);
    sub_10032EBD4(v124, type metadata accessor for ContainerDetail.Source);
    v133 = v210;
    v210(v193, v123);
    v133(v191, v123);
    goto LABEL_12;
  }

  if (v70 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v44 + 96))(v46, v43);
    v103 = v182;
    v104 = v181;
    v105 = v183;
    (*(v182 + 32))(v181, v46, v183);
    v108 = sub_100736798(a1, v104);
    goto LABEL_11;
  }

  if (v70 == enum case for MusicPin.Item.song(_:))
  {
    (*(v44 + 96))(v46, v43);
    v134 = v180;
    v135 = v186;
    v136 = v188;
    (*(v180 + 32))(v186, v46, v188);
    v210 = *(v134 + 16);
    v137 = v187;
    (v210)(v187, v135, v136);
    v138 = sub_10010FC20(&qword_10118A430);
    v139 = *(v138 + 48);
    v140 = *(v138 + 64);
    v141 = _s6AlbumsV5ScopeOMa(0);
    v142 = v206;
    swift_storeEnumTagMultiPayload();
    (*(*(v141 - 8) + 56))(v142, 0, 1, v141);
    *(v142 + v139) = 0;
    *(v142 + v140) = 0;
    swift_storeEnumTagMultiPayload();
    v143 = type metadata accessor for URL();
    v144 = v212;
    (*(*(v143 - 8) + 56))(v212, 1, 1, v143);
    v145 = v179;
    v146 = v137;
    v147 = v188;
    (v210)(v179, v146, v188);
    v148 = v204;
    sub_10032EB6C(v142, v204, type metadata accessor for ContainerDetail.Source);
    v149 = v205;
    sub_1000089F8(v144, v205, &qword_101183A20);
    v150 = sub_1004E484C(v145, v148, v149);
    v151 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v152 = v150;
    v102 = sub_100137F64(v152, v151);

    sub_1000095E8(v144, &qword_101183A20);
    sub_10032EBD4(v142, type metadata accessor for ContainerDetail.Source);
    v153 = *(v134 + 8);
    v153(v187, v147);
    v153(v186, v147);
    goto LABEL_12;
  }

  v212 = v43;
  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v154 = type metadata accessor for Logger();
  sub_1000060E4(v154, qword_101218E00);
  v155 = v211;
  v65(v51, v213, v47);
  v156 = a1;
  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    LODWORD(v209) = v158;
    v160 = v159;
    v210 = swift_slowAlloc();
    v214 = v210;
    *v160 = 136446466;
    sub_10032EC34(&qword_10118BB00, &type metadata accessor for MusicPin);
    v208 = v157;
    v161 = dispatch thunk of CustomStringConvertible.description.getter();
    v197 = v69;
    v163 = v162;
    v164 = v155[1];
    v211 = v156;
    v164(v51, v47);
    v165 = v164;
    v166 = sub_1000105AC(v161, v163, &v214);

    *(v160 + 4) = v166;
    *(v160 + 12) = 2082;
    v167 = v211;
    v168 = [v167 description];
    v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v170 = v47;
    v172 = v171;

    v173 = v169;
    v69 = v197;
    v174 = sub_1000105AC(v173, v172, &v214);

    *(v160 + 14) = v174;
    v175 = v208;
    _os_log_impl(&_mh_execute_header, v208, v209, "Unhandled pinned item type %{public}s — Return All Songs view controller tab=%{public}s", v160, 0x16u);
    swift_arrayDestroy();

    v176 = v170;
  }

  else
  {

    v177 = v155[1];
    v177(v51, v47);
    v165 = v177;
    v176 = v47;
  }

  v178 = objc_allocWithZone(type metadata accessor for LibrarySongsViewController());
  v102 = sub_100522954(0);

  v165(v213, v176);
  (*(v44 + 8))(v46, v212);
  return v102;
}

uint64_t sub_100328F50(uint64_t a1)
{
  v54 = a1;
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6365532E736E6950;
  v4 = sub_10010FC20(&qword_10118BAF0);
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v52 = &v52 - v5;
  v6 = sub_10010FC20(&unk_101197210);
  __chkstk_darwin(v6 - 8);
  v58 = &v52 - v7;
  v8 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab12PinsTabGroup_token;
  v15 = type metadata accessor for NSNotificationCenter.ObservationToken();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v53 = v1;
  v57 = v15;
  v56 = v17;
  v55 = v16 + 56;
  (v17)(&v1[v14], 1, 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() systemImageNamed:v21];

  strcpy(v68, "Pins.Section");
  BYTE5(v68[1]) = 0;
  HIWORD(v68[1]) = -5120;
  aBlock = 0xD000000000000014;
  v62 = 0x8000000100E3E560;
  (*(v12 + 56))(v10, 1, 1, v11);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v24 = v23;
  LOBYTE(v21) = v25;
  result = sub_1000095E8(v10, &unk_101182EA0);
  if (v21)
  {
    v27 = 0x8000000100E47020;
    v28 = 0xD000000000000020;
  }

  else
  {
    if (v24 >> 14 > 0x30)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();
    v29 = static String._fromSubstring(_:)();
    v31 = v30;

    v28 = 0x6365532E736E6950;
    v27 = 0xEC0000006E6F6974;
    v3 = v29;
    v2 = v31;
  }

  v68[0] = v28;
  v68[1] = v27;
  v68[2] = v3;
  v68[3] = v2;
  v68[4] = v18;
  v68[5] = v20;
  v70 = 0;
  v71 = 0;
  v69 = v22;
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101181F70);
  v34.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v70)
  {
    v65 = v70;
    v66 = v71;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_10003640C;
    v64 = &unk_1010A6FE8;
    v35 = _Block_copy(&aBlock);
  }

  else
  {
    v35 = 0;
  }

  v36 = v69;
  v37 = type metadata accessor for MusicTab.Group();
  v67.receiver = v53;
  v67.super_class = v37;
  v38 = objc_msgSendSuper2(&v67, "initWithTitle:image:identifier:children:viewControllerProvider:", v32, v36, v33, v34.super.isa, v35);
  _Block_release(v35);

  sub_100036360(v68);
  v39 = *(v54 + 16);
  v40 = v38;

  [v40 setHidden:v39 == 0];
  [v40 setPreferredPlacement:6];
  v41 = v40;
  [v41 setAllowsHiding:0];
  [v41 setAllowsReordering:1];

  v42 = AccessibilityIdentifier.libraryPins.unsafeMutableAddressor();
  v43 = *v42;
  v44 = v42[1];
  _s12PinsTabGroupCMa(0);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v43, v44);
  v45 = v41;
  v46 = String._bridgeToObjectiveC()();
  [v45 setPlayActivityFeatureName:v46];

  v47 = [objc_opt_self() defaultCenter];
  type metadata accessor for LibraryPinsController();
  sub_10032E7E0();
  v48 = v52;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10032E83C();
  v49 = v58;
  v50 = v60;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v59 + 8))(v48, v50);
  v56(v49, 0, 1, v57);
  v51 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab12PinsTabGroup_token;
  swift_beginAccess();
  sub_10006B010(v49, v45 + v51, &unk_101197210);
  swift_endAccess();

  return v45;
}

void sub_100329728()
{
  if (qword_10117F678 != -1)
  {
    swift_once();
  }

  v0 = sub_10010BA00(&off_10109A650);
  sub_1003C6340(v0);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1003297D8();
  }
}

uint64_t sub_1003297D8()
{
  v1 = [v0 children];
  sub_100009F78(0, &qword_101181F70);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007E914C(v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      _s6PinTabCMa(0);
      if (swift_dynamicCastClass())
      {
        sub_10032A8A4();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
}

void sub_1003299C0()
{
  sub_100329A50();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100329A50()
{
  if (!qword_10118BAB0)
  {
    type metadata accessor for NSNotificationCenter.ObservationToken();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10118BAB0);
    }
  }
}

void sub_100329AA8(void *a1)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for Artwork();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101191420);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = type metadata accessor for MusicPin();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101188920);
  v14 = __chkstk_darwin(v13 - 8);
  v39 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v35 - v17;
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  sub_10032A8A4();
  MusicPin.artwork.getter();
  v21 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v22 = *(v10 + 16);
  v36 = v2;
  v22(v12, &v2[v21], v9);
  MusicPin.artwork.getter();
  (*(v10 + 8))(v12, v9);
  v23 = *(v6 + 56);
  v24 = v37;
  sub_1000089F8(v20, v8, &unk_101188920);
  v25 = v38;
  sub_1000089F8(v18, &v8[v23], &unk_101188920);
  v26 = *(v24 + 48);
  if (v26(v8, 1, v25) == 1)
  {
    sub_1000095E8(v18, &unk_101188920);
    sub_1000095E8(v20, &unk_101188920);
    if (v26(&v8[v23], 1, v25) == 1)
    {
      sub_1000095E8(v8, &unk_101188920);
      return;
    }
  }

  else
  {
    sub_1000089F8(v8, v39, &unk_101188920);
    if (v26(&v8[v23], 1, v25) != 1)
    {
      v31 = v35;
      (*(v24 + 32))(v35, &v8[v23], v25);
      sub_10032EC34(&unk_10118D3D0, &type metadata accessor for Artwork);
      v32 = v39;
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v24 + 8);
      v34(v31, v25);
      sub_1000095E8(v18, &unk_101188920);
      sub_1000095E8(v20, &unk_101188920);
      v34(v32, v25);
      sub_1000095E8(v8, &unk_101188920);
      v27 = v36;
      if (v33)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000095E8(v18, &unk_101188920);
    sub_1000095E8(v20, &unk_101188920);
    (*(v24 + 8))(v39, v25);
  }

  sub_1000095E8(v8, &unk_101191420);
  v27 = v36;
LABEL_7:
  v28 = [v27 tabBarController];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 sidebar];

    [v30 reconfigureItemForTab:v27];
  }
}

uint64_t sub_100329FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v4 = type metadata accessor for MusicPin();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10032A06C(uint64_t a1)
{
  v24 = v1;
  v3 = type metadata accessor for MusicPin();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v79 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v80 = &v76 - v8;
  v9 = __chkstk_darwin(v7);
  v77 = &v76 - v10;
  __chkstk_darwin(v9);
  v12 = &v76 - v11;
  v13 = type metadata accessor for MusicPin.Item();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v76 - v18;
  v83 = a1;
  MusicPin.item.getter();
  v20 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v21 = *(v4 + 16);
  v84 = v24;
  v76 = v20;
  v81 = v21;
  v21(v12, v24 + v20, v3);
  MusicPin.item.getter();
  v78 = v4;
  v23 = *(v4 + 8);
  v22 = v4 + 8;
  v82 = v3;
  v85 = v23;
  v23(v12, v3);
  sub_10032EC34(&qword_10118BB10, &type metadata accessor for MusicPin.Item);
  sub_10032EC34(&qword_10118BB18, &type metadata accessor for MusicPin.Item);
  LODWORD(v24) = static MusicItem<>.==~ infix(_:_:)();
  v25 = *(v14 + 8);
  v25(v17, v13);
  v25(v19, v13);
  if (v24)
  {
    LODWORD(v79) = v24;
    v26 = v82;
    v27 = v83;
    v28 = v81;
    v81(v12, v83, v82);
    v29 = v84;
    v31 = v76;
    v30 = v77;
    v28(v77, &v84[v76], v26);
    swift_beginAccess();
    (*(v78 + 24))(&v29[v31], v12, v26);
    swift_endAccess();
    sub_100329AA8(v30);
    v32 = v85;
    v85(v30, v26);
    v32(v12, v26);
    v33 = v28;
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000060E4(v34, qword_101218E18);
    v35 = v80;
    v33(v80, v27, v26);
    v36 = v29;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v39 = 136446466;
      v40 = v36;
      v41 = [v40 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v22;
      v43 = v32;
      v44 = v42;
      v46 = v45;

      v47 = sub_1000105AC(v44, v46, v86);

      *(v39 + 4) = v47;
      *(v39 + 12) = 2082;
      sub_10032EC34(&qword_10118BB00, &type metadata accessor for MusicPin);
      v48 = v80;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v43(v48, v26);
      v52 = sub_1000105AC(v49, v51, v86);

      *(v39 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v37, v38, "🔁 Updated PinTab=%{public}s with matching pin=%{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v32(v35, v26);
    }

    LOBYTE(v24) = v79;
  }

  else
  {
    v53 = v83;
    v54 = v84;
    v78 = v22;
    v56 = v81;
    v55 = v82;
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000060E4(v57, qword_101218E18);
    v58 = v79;
    v56(v79, v53, v55);
    v59 = v54;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v62 = 136446466;
      v63 = v59;
      v64 = [v63 description];
      v65 = v24;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = v24;
      LOBYTE(v24) = v65;
      v69 = sub_1000105AC(v68, v67, v86);

      *(v62 + 4) = v69;
      *(v62 + 12) = 2082;
      sub_10032EC34(&qword_10118BB00, &type metadata accessor for MusicPin);
      v70 = v79;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v85(v70, v55);
      v74 = sub_1000105AC(v71, v73, v86);

      *(v62 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v60, v61, "🔁 Attempted to update tab=%{public}s with unrelated pin=%{public}s", v62, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v85(v58, v55);
    }
  }

  return v24 & 1;
}

void sub_10032A8A4()
{
  v1 = v0;
  v58 = type metadata accessor for ContentRating();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v47 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10010FC20(&qword_1011819C0);
  __chkstk_darwin(v54);
  v57 = &v46 - v3;
  v4 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v4 - 8);
  v53 = &v46 - v5;
  v6 = sub_10010FC20(&unk_10118D2F0);
  v7 = __chkstk_darwin(v6 - 8);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v60 = &v46 - v10;
  __chkstk_darwin(v9);
  v55 = &v46 - v11;
  v12 = type metadata accessor for MusicPin();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v19 = *(v13 + 16);
  v19(v17, &v0[v18], v12);
  MusicPin.title.getter();
  v20 = *(v13 + 8);
  v20(v17, v12);
  v21 = String._bridgeToObjectiveC()();

  [v1 setTitle:v21];

  v49 = v18;
  v51 = v19;
  v19(v17, &v1[v18], v12);
  v22 = sub_1003124C4(2);
  v24 = v23;
  v50 = v20;
  v20(v17, v12);
  _s6PinTabCMa(0);
  v59 = v1;
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v22, v24);
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  v25 = v59;
  v26 = v49;
  v27 = v51;
  v51(v17, &v59[v49], v12);
  v28 = sub_100428914();
  v29 = v50;
  v50(v17, v12);
  [v25 setEnabled:v28 & 1];
  v30 = v52;
  v27(v52, &v25[v26], v12);
  v31 = v53;
  sub_1003121A8(v53);
  v29(v30, v12);
  v32 = type metadata accessor for Track();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_1000095E8(v31, &qword_10118A530);
    v35 = v55;
    v34 = v56;
    v36 = v58;
    (*(v56 + 56))(v55, 1, 1, v58);
    v37 = v57;
  }

  else
  {
    v35 = v55;
    Track.contentRating.getter();
    (*(v33 + 8))(v31, v32);
    v37 = v57;
    v36 = v58;
    v34 = v56;
  }

  v38 = v60;
  (*(v34 + 104))(v60, enum case for ContentRating.explicit(_:), v36);
  (*(v34 + 56))(v38, 0, 1, v36);
  v39 = *(v54 + 48);
  sub_1000089F8(v35, v37, &unk_10118D2F0);
  sub_1000089F8(v38, v37 + v39, &unk_10118D2F0);
  v40 = *(v34 + 48);
  if (v40(v37, 1, v36) != 1)
  {
    v41 = v48;
    sub_1000089F8(v37, v48, &unk_10118D2F0);
    if (v40(v37 + v39, 1, v36) != 1)
    {
      v42 = v47;
      (*(v34 + 32))(v47, v37 + v39, v36);
      sub_10032EC34(&qword_1011819D0, &type metadata accessor for ContentRating);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v34 + 8);
      v44(v42, v36);
      sub_1000095E8(v60, &unk_10118D2F0);
      sub_1000095E8(v35, &unk_10118D2F0);
      v44(v41, v36);
      sub_1000095E8(v37, &unk_10118D2F0);
      if ((v43 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1000095E8(v60, &unk_10118D2F0);
    sub_1000095E8(v35, &unk_10118D2F0);
    (*(v34 + 8))(v41, v36);
LABEL_11:
    sub_1000095E8(v37, &qword_1011819C0);
    return;
  }

  sub_1000095E8(v38, &unk_10118D2F0);
  sub_1000095E8(v35, &unk_10118D2F0);
  if (v40(v37 + v39, 1, v36) != 1)
  {
    goto LABEL_11;
  }

  sub_1000095E8(v37, &unk_10118D2F0);
LABEL_13:
  ExplicitRestrictionsController.shared.unsafeMutableAddressor();
  swift_beginAccess();

  v45 = String._bridgeToObjectiveC()();

  [v59 setBadgeValue:v45];
}

uint64_t sub_10032B10C()
{
  v0 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for UICellAccessory.DeleteOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICellAccessory.DisplayedState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184740);
  type metadata accessor for UICellAccessory();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6B0;
  (*(v8 + 104))(v10, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);

  UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  static UICellAccessory.delete(displayed:options:actionHandler:)();

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);

  return v11;
}

void sub_10032B434()
{
  v0 = sub_10010FC20(&unk_101197070);
  __chkstk_darwin(v0);
  v2 = &v34[-v1 - 8];
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v34[-v4 - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = Strong;
    v9 = [v8 tabBarController];
    if (v9)
    {
      v10 = v9;
      v44 = v7;
      v45 = 0u;
      v46 = 0u;
      v47 = 2;
      PresentationSource.Position.init(source:permittedArrowDirections:)(&v44, 12, v36);
      v40[0] = v36[0];
      v40[1] = v36[1];
      v41 = v37;
      v42 = v38;
      v43 = v39;
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v8;
      v13 = v8;
      PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(v10, v40, 0, 0, sub_10032EC84, v12, v35);
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      sub_10012B7A8(v35, v34);
      type metadata accessor for MainActor();
      v15 = v13;
      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;
      sub_10012B828(v34, (v17 + 5));
      sub_1001F4CB8(0, 0, v5, &unk_100EC7348, v17);

      sub_10012BA6C(v35);
      return;
    }
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_101218E00);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v40[0] = v22;
    *v21 = 136446210;
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
      v25 = v23;
      swift_beginAccess();
      v26 = type metadata accessor for MusicPin();
      v27 = *(v26 - 8);
      v33 = v22;
      v28 = v27;
      (*(v27 + 16))(v2, &v25[v24], v26);

      (*(v28 + 56))(v2, 0, 1, v26);
      v22 = v33;
    }

    else
    {
      v29 = type metadata accessor for MusicPin();
      (*(*(v29 - 8) + 56))(v2, 1, 1, v29);
    }

    v30 = String.init<A>(describing:)();
    v32 = sub_1000105AC(v30, v31, v40);

    *(v21 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to unpin pin=%{public}s. No presentation source provided.", v21, 0xCu);
    sub_10000959C(v22);
  }
}

uint64_t sub_10032B934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1001AB600;

  return sub_10032B9F0(a4, a5);
}

uint64_t sub_10032B9F0(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v2[23] = type metadata accessor for Notice.Variant(0);
  v2[24] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v2[25] = swift_task_alloc();
  v2[26] = sub_10010FC20(&qword_10118BB08);
  v2[27] = swift_task_alloc();
  sub_10010FC20(&unk_1011838F0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for MusicPin();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  type metadata accessor for Actions.Unpin.Context(0);
  v2[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v5;
  v2[37] = v4;

  return _swift_task_switch(sub_10032BC24, v5, v4);
}

uint64_t sub_10032BC24()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[21];
  v5 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v5], v3);
  v6 = [v4 managingTabGroup];
  if (v6)
  {
    v7 = v6;
    _s3TabCMa();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v40 = *(v8 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

      goto LABEL_6;
    }
  }

  type metadata accessor for MusicLibrary();
  v40 = static MusicLibrary.shared.getter();
LABEL_6:
  v9 = v0[28];
  v10 = v0[29];
  sub_10012B7A8(v0[22], (v0 + 2));
  v11 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_10032EB6C(v11, v10, type metadata accessor for MetricsEvent.Page);
  v12 = type metadata accessor for MetricsEvent.Page(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  sub_1000089F8(v10, v9, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v14 = sub_10053771C();
  v34 = v15;
  v35 = v14;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v36 = v0[34];
  v37 = v0[33];
  v16 = v0[30];
  v18 = v0[28];
  v17 = v0[29];
  v38 = v0[31];
  v39 = v0[27];
  v19 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v20 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v17, &unk_1011838F0);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v19 + v21);
  v23 = type metadata accessor for Actions.MetricsReportingContext();
  v24 = v23[5];
  v13(v16 + v24, 1, 1, v12);
  v25 = v23[7];
  v26 = (v16 + v23[6]);
  v27 = v23[8];
  *v16 = xmmword_100EBEF60;
  sub_10006B010(v18, v16 + v24, &unk_1011838F0);
  *v26 = v35;
  v26[1] = v34;
  *(v16 + v25) = 0;
  *(v16 + v27) = 0;
  v28 = v16 + v23[9];
  *v28 = v33 & 1;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  (*(*(v23 - 1) + 56))(v16, 0, 1, v23);
  v29 = sub_10032EC34(&unk_1011970F0, &type metadata accessor for MusicPin);
  Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v37, v40, (v0 + 2), v16, 0, 0, v38, v29, v36);
  static Actions.Unpin.action(context:)(v36, v39);
  v30 = swift_task_alloc();
  v0[38] = v30;
  *v30 = v0;
  v30[1] = sub_10032BFF0;
  v31 = v0[26];

  return Action.execute(checkSupportedStatus:)(v30, 1, v31);
}

uint64_t sub_10032BFF0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_10032C2EC;
  }

  else
  {
    v5 = sub_10032C12C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10032C12C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = UIViewController.noticePresenter.getter(), v2, v3))
  {
    v4 = v0[34];
    v5 = v0[27];
    v7 = v0[24];
    v6 = v0[25];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v7, v6);
    sub_10032EBD4(v7, type metadata accessor for Notice.Variant);
    (*(*v3 + 200))(v6, 0);

    sub_10032EBD4(v6, type metadata accessor for Notice);
  }

  else
  {
    v4 = v0[34];
    v5 = v0[27];
  }

  sub_1000095E8(v5, &qword_10118BB08);
  sub_10032EBD4(v4, type metadata accessor for Actions.Unpin.Context);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10032C2EC()
{
  v24 = v0;
  v1 = v0[34];
  v2 = v0[27];

  sub_1000095E8(v2, &qword_10118BB08);
  sub_10032EBD4(v1, type metadata accessor for Actions.Unpin.Context);
  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101218E00);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[39];
  if (v8)
  {
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = v10;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1000105AC(v14, v16, &v23);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    v0[20] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000105AC(v18, v19, &v23);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to unpin tab=%{public}s with error=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10032C5D0(uint64_t a1)
{
  v3 = _s11ArtworkInfoV10PropertiesVMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1;
  sub_10032C700(v6, v5);
  v7 = [v6 managingTabGroup];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  _s3TabCMa();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(v9 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_artworkCache);

LABEL_6:
  sub_10053BCD4(v5, v10, a1);

  return sub_10032EBD4(v5, _s11ArtworkInfoV10PropertiesVMa);
}

uint64_t sub_10032C700@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v3 = type metadata accessor for UIView.Corner();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicPin.Item();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for MusicPin();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Artwork();
  (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  v18 = _s11ArtworkInfoV10PropertiesVMa(0);
  v19 = a2 + v18[6];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v18[7];
  v21 = UIView.Corner.extraSmall.unsafeMutableAddressor();
  v43 = v4;
  v44 = v3;
  v22 = *(v4 + 16);
  v41 = v20;
  v22(a2 + v20, v21, v3);
  v23 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  v24 = v49;
  swift_beginAccess();
  v25 = *(v12 + 16);
  v25(v16, &v24[v23], v11);
  MusicPin.artwork.getter();
  v26 = *(v12 + 8);
  v26(v16, v11);
  sub_10006B010(v10, a2, &unk_101188920);
  v27 = [objc_opt_self() defaultMetrics];
  [v27 scaledValueForValue:28.0];
  v29 = v28;
  [v27 scaledValueForValue:28.0];
  v31 = v30;

  v32 = (a2 + v18[5]);
  *v32 = v29;
  v32[1] = v31;
  v33 = &v49[v23];
  v34 = v49;
  v35 = v45;
  v25(v45, v33, v11);
  v36 = v46;
  MusicPin.item.getter();
  v37 = v47;
  v26(v35, v11);
  v38 = v48;
  if ((*(v37 + 88))(v36, v48) == enum case for MusicPin.Item.artist(_:))
  {
    (*(v37 + 8))(v36, v38);
    v39 = v42;
    static UIView.Corner.rounded.getter();

    return (*(v43 + 40))(a2 + v41, v39, v44);
  }

  else
  {

    return (*(v37 + 8))(v36, v38);
  }
}

id sub_10032CB80()
{
  v1 = [v0 tabBarController];
  if (!v1)
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_101218E00);
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136446210;
      v22 = v17;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_1000105AC(v24, v26, v35);

      *(v20 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "No presentation source provided for pin tab=%{public}s", v20, 0xCu);
      sub_10000959C(v21);
    }

    return 0;
  }

  v2 = v1;
  v44 = v0;
  v45 = 0u;
  v46 = 0u;
  v47 = 2;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v44, 12, v36);
  v40[0] = v36[0];
  v40[1] = v36[1];
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v5 = v0;
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10012B7A8(v35, v34);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    sub_10012B828(v34, v10 + 24);
    v11 = objc_opt_self();
    v32 = sub_10032E8A8;
    v33 = v8;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100747E6C;
    v31 = &unk_1010A70D8;
    v12 = _Block_copy(&v28);
    v13 = v5;

    v32 = sub_10032E8B0;
    v33 = v10;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100747EBC;
    v31 = &unk_1010A7100;
    v14 = _Block_copy(&v28);

    v15 = [v11 configurationWithIdentifier:v7 previewProvider:v12 actionProvider:v14];

    _Block_release(v14);
    _Block_release(v12);
    sub_10012BA6C(v35);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032CFF8(uint64_t a1)
{
  v2 = type metadata accessor for MusicPin();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  return sub_1007350F8(v5, 1);
}

uint64_t sub_10032D0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v169 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPin.Action();
  v157 = *(v7 - 8);
  v158 = v7;
  __chkstk_darwin(v7);
  v154 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v153 = &v141 - v10;
  v11 = type metadata accessor for MusicPin.Item();
  v155 = *(v11 - 8);
  v156 = v11;
  __chkstk_darwin(v11);
  v152 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Actions.PlaybackContext();
  v14 = *(v13 - 8);
  v176 = v13;
  v177 = v14;
  __chkstk_darwin(v13);
  v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v15;
  __chkstk_darwin(v17);
  v19 = &v141 - v18;
  v20 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v20 - 8);
  v163 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v162 = &v141 - v23;
  v24 = sub_10010FC20(&unk_1011838D0);
  v165 = *(v24 - 8);
  __chkstk_darwin(v24 - 8);
  v166 = v25;
  v167 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v179 = (&v141 - v27);
  v28 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v28 - 8);
  v171 = &v141 - v29;
  v30 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v30 - 8);
  v159 = &v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v161 = &v141 - v33;
  __chkstk_darwin(v34);
  v36 = &v141 - v35;
  v37 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v37 - 8);
  v170 = &v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v178 = &v141 - v40;
  v41 = type metadata accessor for MusicPin();
  v174 = *(v41 - 8);
  __chkstk_darwin(v41);
  v173 = &v141 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v42;
  __chkstk_darwin(v43);
  v180 = &v141 - v44;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v46 = result;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v147 = a3;
  v47 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v149 = *(v174 + 16);
  v150 = v174 + 16;
  v149(v180, &v46[v47], v41);
  v48 = [v46 managingTabGroup];
  if (!v48)
  {
    goto LABEL_8;
  }

  v49 = v48;
  _s3TabCMa();
  v50 = swift_dynamicCastClass();
  if (!v50)
  {

LABEL_8:
    type metadata accessor for MusicLibrary();
    v148 = static MusicLibrary.shared.getter();
    goto LABEL_9;
  }

  v148 = *(v50 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

LABEL_9:
  v172 = v41;
  v151 = v16;
  v160 = v19;
  v51 = qword_10117F608;
  v52 = v46;
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = qword_101218AD8;
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v55 = result;
    v145 = v6;
    v146 = v4;
    v56 = *(result + 8);
    v57 = v52;
    v58 = v53;
    v59 = v171;
    v56(ObjectType, v55);

    PlaybackIntentDescriptor.IntentType.init(_:)(v59, v36);
    v60 = UITab.combinedPlayActivityFeatureName.getter();
    v62 = MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(v60, v61, 0, 0xF000000000000000);
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = sub_100009F78(0, &qword_101181F70);
    v191[4] = &protocol witness table for UITab;
    v191[3] = v69;
    v144 = v57;
    v191[0] = v57;
    v70 = v178;
    v141 = v58;
    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v58, v36, v62, v64, v66, v68, v191, v178);
    (*(v177 + 56))(v70, 0, 1, v176);
    sub_10012B7A8(v147, v191);
    v71 = type metadata accessor for MetricsEvent.Page(0);
    v72 = *(*(v71 - 8) + 56);
    v73 = v162;
    v72(v162, 1, 1, v71);
    v74 = v163;
    sub_1000089F8(v73, v163, &unk_1011838F0);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v147 = sub_10053771C();
    v143 = v75;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v76 = qword_101218AD0;
    v142 = GroupActivitiesManager.hasJoined.getter();
    v77 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v73, &unk_1011838F0);
    v78 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v79 = *(v76 + v78);
    v80 = type metadata accessor for Actions.MetricsReportingContext();
    v81 = v80[5];
    v82 = v179;
    v72(v179 + v81, 1, 1, v71);
    v83 = v80[7];
    v84 = (v82 + v80[6]);
    v85 = v80[8];
    *v82 = xmmword_100EBEF60;
    sub_10006B010(v74, v82 + v81, &unk_1011838F0);
    v86 = v143;
    *v84 = v147;
    v84[1] = v86;
    *(v82 + v83) = 0;
    *(v82 + v85) = 0;
    v87 = v82 + v80[9];
    *v87 = v142 & 1;
    *(v87 + 1) = v77;
    *(v87 + 2) = v79;
    (*(*(v80 - 1) + 56))(v82, 0, 1, v80);
    sub_1000089F8(v191, v188, &unk_1011845E0);
    if (v189 == 1)
    {
      v193 = 0;
      memset(v192, 0, sizeof(v192));
      v194 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(Strong, v192, v190);
      v88 = v160;
      v89 = v170;
      if (v189 != 1)
      {
        sub_1000095E8(v188, &unk_1011845E0);
      }
    }

    else
    {
      sub_10012B828(v188, v190);
      v88 = v160;
      v89 = v170;
    }

    sub_1000089F8(v178, v89, &unk_10118AB20);
    v90 = v177 + 48;
    v91 = *(v177 + 48);
    if ((v91)(v89, 1, v176) == 1)
    {
      v162 = v91;
      v163 = v90;
      if (qword_10117F6D8 != -1)
      {
        swift_once();
      }

      v92 = v152;
      v93 = v180;
      MusicPin.item.getter();
      v94 = v153;
      MusicPin.action.getter();
      v96 = v157;
      v95 = v158;
      v97 = v154;
      (*(v157 + 104))(v154, enum case for MusicPin.Action.shuffle(_:), v158);
      v98 = static MusicPin.Action.== infix(_:_:)();
      v99 = *(v96 + 8);
      v99(v97, v95);
      v99(v94, v95);
      v100 = v171;
      sub_10042BAAC(v92, v98 & 1, v171);
      (*(v155 + 8))(v92, v156);
      v101 = v161;
      PlaybackIntentDescriptor.IntentType.init(_:)(v100, v161);
      sub_10010FC20(&unk_101183930);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_100EBDC20;
      v188[0] = Strong;
      v103 = Strong;
      v104 = String.init<A>(reflecting:)();
      *(v102 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v102 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v102 + 32) = v104;
      *(v102 + 40) = v105;
      v106 = v172;
      *(v102 + 96) = v172;
      *(v102 + 104) = &protocol witness table for MusicPin;
      v107 = sub_10001C8B8((v102 + 72));
      v149(v107, v93, v106);
      v108 = static Player.CommandIssuer<>.combining(_:)();
      v110 = v109;

      v188[3] = &type metadata for Player.CommandIssuerIdentity;
      v188[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v188[0] = v108;
      v188[1] = v110;
      v111 = v159;
      sub_1000089F8(v101, v159, &unk_1011838E0);
      v112 = v141;
      v113 = UIViewController.playActivityInformation.getter();
      v115 = v114;
      v117 = v116;
      v119 = v118;
      sub_1000089F8(v188, &v185, &unk_101183910);
      if (v186)
      {
        sub_100188D80(&v185, v187);
        v88 = v160;
      }

      else
      {
        v184 = v103;
        sub_100009F78(0, &qword_101183D40);
        v120 = v103;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100188D80(&v181, v187);
          v88 = v160;
        }

        else
        {
          v183 = 0;
          v181 = 0u;
          v182 = 0u;
          v187[0] = v120;
          v121 = v120;
          v122 = String.init<A>(reflecting:)();
          v187[3] = &type metadata for Player.CommandIssuerIdentity;
          v187[4] = &protocol witness table for Player.CommandIssuerIdentity;
          v187[0] = v122;
          v187[1] = v123;
          v88 = v160;
          if (*(&v182 + 1))
          {
            sub_1000095E8(&v181, &unk_101183910);
          }
        }

        v111 = v159;
        if (v186)
        {
          sub_1000095E8(&v185, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v112, v111, v113, v115, v117, v119, v187, v88);
      sub_1000095E8(v161, &unk_1011838E0);
      sub_1000095E8(v188, &unk_101183910);
      v124 = v170;
      if ((v162)(v170, 1, v176) != 1)
      {
        sub_1000095E8(v124, &unk_10118AB20);
      }
    }

    else
    {
      sub_100314A80(v89, v88);
    }

    sub_10032EC34(&qword_10118BB00, &type metadata accessor for MusicPin);
    v125 = v180;
    v126 = v172;
    v176 = dispatch thunk of CustomStringConvertible.description.getter();
    v171 = v127;
    v170 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v149(v173, v125, v126);
    sub_10032EB6C(v88, v151, type metadata accessor for Actions.PlaybackContext);
    v128 = v167;
    sub_1000089F8(v179, v167, &unk_1011838D0);
    sub_10012B7A8(v190, v188);
    v129 = v174;
    v130 = (*(v174 + 80) + 16) & ~*(v174 + 80);
    v131 = (v164 + *(v177 + 80) + v130) & ~*(v177 + 80);
    v132 = (v168 + *(v165 + 80) + v131) & ~*(v165 + 80);
    v133 = (v166 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
    v134 = (v133 + 103) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    (*(v129 + 32))(v135 + v130, v173, v172);
    sub_100314A80(v151, v135 + v131);
    sub_10032E8BC(v128, v135 + v132);
    sub_10012B828(v188, v135 + v133);
    *(v135 + v134) = v148;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v170;

    v136 = v145;
    UUID.init()();
    v137 = UUID.uuidString.getter();
    v139 = v138;
    (*(v169 + 8))(v136, v146);
    type metadata accessor for ActionMenu();
    swift_allocObject();
    v195._countAndFlagsBits = v176;
    v195._object = v171;
    ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v137, v139, 0, 0, 0, v195, 0, sub_10032E92C, v135);

    v140 = ActionMenu.uiMenu(excluding:includeUnsupported:)(&off_10109A678, 0);

    sub_10032EBD4(v160, type metadata accessor for Actions.PlaybackContext);
    sub_10012BA6C(v190);
    sub_1000095E8(v191, &unk_1011845E0);
    sub_1000095E8(v178, &unk_10118AB20);
    (*(v129 + 8))(v180, v172);
    sub_1000095E8(v179, &unk_1011838D0);
    return v140;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032E26C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicPin.Action();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for MusicPin.Item();
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicPin();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isEnabled])
  {
    v25 = a1;
    v18 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    swift_beginAccess();
    (*(v14 + 16))(v17, &v1[v18], v13);
    if (qword_10117F6D8 != -1)
    {
      swift_once();
    }

    v24[1] = qword_101218C40;
    MusicPin.item.getter();
    MusicPin.action.getter();
    (*(v4 + 104))(v6, enum case for MusicPin.Action.shuffle(_:), v3);
    v19 = static MusicPin.Action.== infix(_:_:)();
    v20 = *(v4 + 8);
    v20(v6, v3);
    v20(v9, v3);
    sub_10042BAAC(v12, v19 & 1, v25);
    (*(v26 + 8))(v12, v27);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v22 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

uint64_t sub_10032E5EC()
{
  v1 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  v2 = type metadata accessor for MusicPin();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10032E66C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10032E740()
{
  result = type metadata accessor for MusicPin();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10032E7E0()
{
  result = qword_101197270;
  if (!qword_101197270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197270);
  }

  return result;
}

unint64_t sub_10032E83C()
{
  result = qword_10118BAF8;
  if (!qword_10118BAF8)
  {
    sub_1001109D0(&qword_10118BAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118BAF8);
  }

  return result;
}

uint64_t sub_10032E8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011838D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032E92C()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 103) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10);
  v12 = *(v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100492FA8(v0 + v2, v0 + v5, v0 + v8, v0 + v9, v11, v12);
}

uint64_t sub_10032EAAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10032B934(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10032EB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032EBD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10032EC34(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10032EC90()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v2 - 8);
  v4 = &v53 - v3;
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v53 - v9;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v57 = _swiftEmptyArrayStorage;
  v58 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  if (v0[OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal] == 1)
  {
    v14 = v5;
    sub_100009F78(0, &qword_101181580);
    sub_100009F78(0, &qword_1011839A0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v59.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v59.is_nil = 0;
    v15.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v59, v60).super.super.isa;
    v16 = [v0 navigationController];
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = v16;
    v18 = [v16 viewControllers];

    sub_100009F78(0, &qword_101183D40);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v19 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = sub_10004056C(0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_41;
        }

        v20 = *(v19 + 32);
      }

      v21 = v20;

      v22 = v1;
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        v15.super.super.isa = v15.super.super.isa;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_10:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v13 = v58;
LABEL_16:
          v5 = v14;
          goto LABEL_17;
        }

LABEL_41:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_10;
      }

LABEL_13:
      v24 = v15.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v13 = _swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_17:
  v55 = v13;
  v56 = v4;
  v25 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_song;
  v26 = *(v6 + 16);
  v26(v12, &v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_song], v5);
  Song.catalogID.getter();
  v28 = v27;
  v29 = v5;
  v30 = *(v6 + 8);
  v31 = v29;
  v30(v12);
  if (v28)
  {

    sub_1001EBB88();
    if (v32)
    {
LABEL_30:
      v43 = v56;
      goto LABEL_31;
    }
  }

  else
  {
    sub_10032F4EC();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_1001EBB88();
    if (v33)
    {
      goto LABEL_30;
    }
  }

  v34 = [objc_opt_self() currentTraitCollection];
  v35 = [v34 userInterfaceIdiom];

  if (v35 == 6)
  {
    goto LABEL_30;
  }

  v36 = v54;
  v37 = v31;
  v26(v54, &v1[v25], v31);
  Song.catalogID.getter();
  v39 = v38;
  (v30)(v36, v37);
  if (!v39)
  {
    goto LABEL_30;
  }

  v40 = v53;
  v26(v53, &v1[v25], v37);
  v41 = Song.hasLyrics.getter();
  (v30)(v40, v37);
  if ((v41 & 1) == 0)
  {
    goto LABEL_30;
  }

  v26(v40, &v1[v25], v37);
  v42 = Song.hasTimeSyncedLyrics.getter();
  (v30)(v40, v37);
  v43 = v56;
  if (v42)
  {
    sub_100334D08();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_31:
  v44 = *(*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController] + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics);
  if (!v44)
  {
    v48 = type metadata accessor for Lyrics.Translation(0);
    (*(*(v48 - 8) + 56))(v43, 1, 1, v48);
    goto LABEL_37;
  }

  v45 = *(*v44 + 288);

  v45(v46);

  v47 = type metadata accessor for Lyrics.Translation(0);
  if ((*(*(v47 - 8) + 48))(v43, 1, v47) == 1)
  {
LABEL_37:
    sub_1000095E8(v43, &qword_101189A18);
    goto LABEL_38;
  }

  sub_1000095E8(v43, &qword_101189A18);
  sub_100335290();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_38:
  v49 = [v1 navigationItem];
  sub_100009F78(0, &qword_101181580);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 setLeftBarButtonItems:isa animated:0];

  v51 = [v1 navigationItem];
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v51 setRightBarButtonItems:v52 animated:0];
}

id sub_10032F4EC()
{
  v1 = OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v6 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_100337384, v4);

    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_10032F5D0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v4 - 8);
  v108 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = &v90 - v7;
  v8 = sub_10010FC20(&unk_1011838D0);
  v112 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v9;
  __chkstk_darwin(v11);
  v115 = (&v90 - v12);
  v13 = sub_10010FC20(&unk_1011845D0);
  v110 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v14;
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  v19 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v19 - 8);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v90 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v101 = v15;
  v102 = v10;
  v104 = v3;
  v105 = v1;
  v106 = v0;
  v26 = Strong;
  v27 = sub_10032F4EC();
  PresentationSource.Position.init(sourceItem:permittedArrowDirections:)(v27, 15, v131);
  v28 = v26;
  PresentationSource.init(viewController:position:)(v28, v131, v130);
  sub_10010FC20(&unk_101183900);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBC6B0;
  v30 = type metadata accessor for Song();
  *(v29 + 56) = v30;
  *(v29 + 64) = &protocol witness table for Song;
  v31 = sub_10001C8B8((v29 + 32));
  (*(*(v30 - 8) + 16))(v31, v28 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v30);
  v32 = [v28 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v100 = v129[0];
  v33 = type metadata accessor for Actions.PlaybackContext();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v24, 1, 1, v33);
  v35 = type metadata accessor for PlaylistContext();
  (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
  sub_10012B7A8(v130, v129);
  v36 = v115;
  sub_1003335B0(v115);
  v37 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  sub_10012B7A8(v130, v128);
  v38 = swift_allocObject();
  *(v38 + 16) = v28;
  v99 = v38;
  sub_10012B828(v128, v38 + 24);
  sub_100008FE4(v29 + 32, v127);
  v39 = v28;

  sub_1000089F8(v129, &v122, &unk_1011845E0);
  v40 = v24;
  if (v125 == 1)
  {
    v136 = 0;
    memset(v135, 0, sizeof(v135));
    v137 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v39, v135, v126);
    v41 = v39;
    if (v125 != 1)
    {
      sub_1000095E8(&v122, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v122, v126);
    v41 = v39;
  }

  swift_getObjectType();
  v43 = swift_conformsToProtocol2();
  if (v43)
  {
    v96 = v43;
    v44 = v41;
    v97 = v41;
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  v98 = swift_allocBox();
  v46 = v45;
  sub_1000089F8(v40, v21, &unk_10118AB20);
  v47 = *(v34 + 48);
  v48 = v47(v21, 1, v33);
  v114 = v18;
  v103 = v40;
  v107 = v41;
  if (v48 == 1)
  {
    v49 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v50 = v109;
    (*(*(v49 - 8) + 56))(v109, 1, 1, v49);
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v51 = qword_101218AD8;
    sub_1000089F8(v50, v108, &unk_1011838E0);
    v95 = v51;
    v52 = UIViewController.playActivityInformation.getter();
    v93 = v54;
    v94 = v53;
    v56 = v55;
    sub_1000089F8(&v122, &v120, &unk_101183910);
    if (v121)
    {
      sub_100059A8C(&v120, &v132);
    }

    else
    {
      v91 = v46;
      v92 = v52;
      v119 = v41;
      sub_100009F78(0, &qword_101183D40);
      v57 = v41;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v116, &v132);
        v46 = v91;
      }

      else
      {
        v118 = 0;
        v116 = 0u;
        v117 = 0u;
        *&v132 = v57;
        v58 = v57;
        v59 = String.init<A>(reflecting:)();
        *(&v133 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v134 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v132 = v59;
        *(&v132 + 1) = v60;
        v46 = v91;
        if (*(&v117 + 1))
        {
          sub_1000095E8(&v116, &unk_101183910);
        }
      }

      v41 = v107;
      v52 = v92;
      if (v121)
      {
        sub_1000095E8(&v120, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v95, v108, v52, v94, v93, v56, &v132, v46);
    sub_1000095E8(&v122, &unk_101183910);
    sub_1000095E8(v109, &unk_1011838E0);
    if (v47(v21, 1, v33) != 1)
    {
      sub_1000095E8(v21, &unk_10118AB20);
    }
  }

  else
  {
    sub_100337398(v21, v46, type metadata accessor for Actions.PlaybackContext);
  }

  v61 = *(v33 + 28);
  sub_1000089F8(&v46[v61], &v132, &unk_101183910);
  if (*(&v133 + 1))
  {
    sub_100059A8C(&v132, &v122);
  }

  else
  {
    *&v122 = v41;
    v62 = v41;
    v63 = String.init<A>(reflecting:)();
    *(&v123 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v124 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v122 = v63;
    *(&v122 + 1) = v64;
    if (*(&v133 + 1))
    {
      sub_1000095E8(&v132, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100EBDC20;
  *(v65 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v65 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v65 + 32) = 0x4D747865746E6F43;
  *(v65 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v122, v65 + 72);
  v66 = static Player.CommandIssuer<>.combining(_:)();
  v68 = v67;

  sub_10000959C(&v122);
  *(&v123 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v124 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v122 = v66;
  *(&v122 + 1) = v68;
  sub_10006B010(&v122, &v46[v61], &unk_101183910);
  sub_100008FE4(v127, &v122);
  sub_10010FC20(&unk_10118AB50);
  v69 = String.init<A>(describing:)();
  v108 = v70;
  v109 = v69;
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v127, &v120);
  sub_10012B7A8(v126, &v122);
  v71 = v102;
  sub_1000089F8(v115, v102, &unk_1011838D0);
  v72 = v101;
  sub_1000089F8(v114, v101, &unk_1011845D0);
  v73 = (*(v112 + 80) + 160) & ~*(v112 + 80);
  v74 = (v113 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = (*(v110 + 80) + v75 + 8) & ~*(v110 + 80);
  v113 = (v76 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v76 + v111 + 31) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  sub_100059A8C(&v120, v78 + 16);
  *(v78 + 56) = v100;
  sub_10012B828(&v122, v78 + 64);
  sub_10003D17C(v71, v78 + v73, &unk_1011838D0);
  *(v78 + v74) = v95;
  *(v78 + v75) = v98;
  sub_10003D17C(v72, v78 + v76, &unk_1011845D0);
  v79 = v78 + v113;
  v80 = v96;
  *v79 = v97;
  *(v79 + 8) = v80;
  *(v79 + 16) = 2;
  v81 = (v78 + v77);
  v82 = v99;
  *v81 = sub_10033738C;
  v81[1] = v82;
  swift_unknownObjectRetain();

  v83 = v104;
  UUID.init()();
  v84 = UUID.uuidString.getter();
  v86 = v85;
  (*(v105 + 8))(v83, v106);
  v138._object = v108;
  v138._countAndFlagsBits = v109;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v138, v84, v86, sub_1001CFB84, v78, &v132);
  swift_unknownObjectRelease();
  sub_10012BA6C(v126);
  sub_10000959C(v127);

  v87 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(&off_10109A6A0, 0);
  v126[0] = v132;
  sub_100015BB0(v126);
  v122 = v133;
  sub_100015BB0(&v122);

  sub_1000095E8(v115, &unk_1011838D0);
  sub_1000095E8(v129, &unk_1011845E0);
  sub_1000095E8(v114, &unk_1011845D0);
  sub_1000095E8(v103, &unk_10118AB20);
  if (v87)
  {
    v88 = [v87 children];
    sub_100009F78(0, &qword_10118CDE0);
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
    v88 = v107;
  }

  sub_10012BA6C(v130);
  return v42;
}

uint64_t sub_1003303D0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v3 - 8);
  v38 = (&v35 - v4);
  v5 = type metadata accessor for Lyrics.Translation(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v12, v14);
  v36 = Song.id.getter();
  v18 = v17;
  (*(v13 + 8))(v16, v12);
  v39 = a1;
  v19 = *(a1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController);
  v20 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  swift_beginAccess();
  sub_1000089F8(v19 + v20, v11, &qword_101189A18);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_1000095E8(v11, &qword_101189A18);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    sub_10033731C(v11, v8, type metadata accessor for Lyrics.Translation);
    sub_1000095E8(v11, &qword_101189A18);
    v23 = &v8[*(v5 + 20)];
    v21 = *v23;
    v22 = *(v23 + 1);

    sub_100337588(v8, type metadata accessor for Lyrics.Translation);
  }

  v53 = v21;
  v54 = v22;
  v55 = 0u;
  v56 = 0u;
  v24 = Lyrics.ReportConcernData.dictionaryRepresentation()();

  v25 = sub_100363D38(v24);

  sub_10012B7A8(v37, v51);
  v26 = v38;
  sub_1003335B0(v38);
  v27 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 16) = v36;
  *(v28 + 24) = v18;
  *(v28 + 32) = 2;
  *(v28 + 40) = v25;
  sub_10012B828(v51, v28 + 48);
  Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v29, v18, 1735290739, 0xE400000000000000, 40, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v50, v28, v26);
  static Actions.ReportConcern.action(context:)(v50, v51);

  v44 = v51[4];
  v45 = v51[5];
  v46 = v51[6];
  v47 = v52;
  v40 = v51[0];
  v41 = v51[1];
  v42 = v51[2];
  v43 = v51[3];
  v30 = static ActionBuilder.buildExpression<A, B>(_:)(&v40, &type metadata for Actions.ReportConcern.Context, &type metadata for () + 8, &protocol witness table for Actions.ReportConcern.Context);
  v48[4] = v44;
  v48[5] = v45;
  v48[6] = v46;
  v49 = v47;
  v48[0] = v40;
  v48[1] = v41;
  v48[2] = v42;
  v48[3] = v43;
  sub_1000095E8(v48, &qword_1011839B0);
  sub_10010FC20(&unk_101183940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v30;
  v32 = inited + 32;
  v33 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v32, &unk_10118AB80);
  return v33;
}

void sub_10033097C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v153 = &v153 - v3;
  v4 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v4 - 8);
  v154 = (&v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Song();
  v156 = *(v6 - 8);
  v157 = v6;
  __chkstk_darwin(v6);
  v155 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v153 - v9;
  v11 = type metadata accessor for StaticLyricsViewController();
  v160.receiver = v0;
  v160.super_class = v11;
  objc_msgSendSuper2(&v160, "viewDidLoad");
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_32;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 systemBackgroundColor];
  [v13 setBackgroundColor:v15];

  v16 = [v1 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  v17 = type metadata accessor for TaskPriority();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v19;

  sub_10086E3AC(0, 0, v10, &unk_100EC73F8, v21);

  v22 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
  v23 = [*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController] view];
  if (!v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = v23;
  [v23 setPreservesSuperviewLayoutMargins:1];

  v25 = [*&v1[v22] view];
  if (!v25)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = v25;
  [v25 setHidden:1];

  v159 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator;
  [*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator] startAnimating];
  v18(v10, 1, 1, v17);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v27;

  sub_10086E3AC(0, 0, v10, &unk_100EC7408, v29);

  v30 = [objc_allocWithZone(UIView) init];
  v31 = [v14 _barHairlineShadowColor];
  [v30 setBackgroundColor:v31];

  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal])
  {
    v32 = 32.0;
  }

  else
  {
    v32 = 20.0;
  }

  v33 = [v1 view];
  if (!v33)
  {
    goto LABEL_34;
  }

  v34 = v33;
  v35 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_stackView;
  [v33 addSubview:*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_stackView]];

  v36 = [v1 view];
  if (!v36)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v37 = v36;
  [v36 addSubview:v30];

  v38 = [v1 view];
  if (!v38)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = v38;
  v40 = [*&v1[v22] view];
  if (!v40)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v41 = v40;
  [v39 addSubview:v40];

  v42 = [v1 view];
  if (!v42)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v43 = v42;
  v158 = v30;
  [v42 addSubview:*&v1[v159]];

  [v1 addChildViewController:*&v1[v22]];
  [*&v1[v22] didMoveToParentViewController:v1];
  sub_10010FC20(&qword_101183990);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100EC3DF0;
  v45 = [*&v1[v35] leadingAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v47 = v46;
  v48 = [v46 safeAreaLayoutGuide];

  v49 = [v48 leadingAnchor];
  v50 = [v45 constraintEqualToAnchor:v49 constant:v32];

  *(v44 + 32) = v50;
  v51 = [*&v1[v35] topAnchor];
  v52 = [v1 view];
  if (!v52)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v53 = v52;
  v54 = [v52 safeAreaLayoutGuide];

  v55 = [v54 topAnchor];
  v56 = [v51 constraintEqualToAnchor:v55];

  *(v44 + 40) = v56;
  v57 = [*&v1[v35] trailingAnchor];
  v58 = [v1 view];
  if (!v58)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v59 = v58;
  v60 = [v58 safeAreaLayoutGuide];

  v61 = [v60 trailingAnchor];
  v62 = [v57 constraintEqualToAnchor:v61 constant:-v32];

  *(v44 + 48) = v62;
  v63 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView;
  v64 = [*&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView] widthAnchor];
  v65 = [v64 constraintEqualToConstant:60.0];

  *(v44 + 56) = v65;
  v66 = [*&v1[v63] heightAnchor];
  v67 = [*&v1[v63] widthAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v44 + 64) = v68;
  v69 = v158;
  v70 = [v158 topAnchor];
  v71 = [*&v1[v35] bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:16.0];

  *(v44 + 72) = v72;
  v73 = [v69 leadingAnchor];
  v74 = [v1 view];
  if (!v74)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v75 = v74;
  v76 = [v74 leadingAnchor];

  v77 = [v73 constraintEqualToAnchor:v76 constant:v32];
  *(v44 + 80) = v77;
  v78 = [v69 trailingAnchor];
  v79 = [v1 view];
  if (!v79)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v80 = v79;
  v81 = [v79 trailingAnchor];

  v82 = [v78 constraintEqualToAnchor:v81];
  *(v44 + 88) = v82;
  v83 = [v69 heightAnchor];
  v84 = [v1 traitCollection];
  [v84 displayScale];
  v86 = v85;

  v87 = [v83 constraintEqualToConstant:1.0 / v86];
  *(v44 + 96) = v87;
  v88 = [*&v1[v22] view];
  if (!v88)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v89 = v88;
  v90 = [v88 topAnchor];

  v91 = [v69 bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v44 + 104) = v92;
  v93 = [*&v1[v22] view];
  if (!v93)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v94 = v93;
  v95 = [v93 leadingAnchor];

  v96 = [v1 view];
  if (!v96)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v97 = v96;
  v98 = [v96 leadingAnchor];

  v99 = [v95 constraintEqualToAnchor:v98];
  *(v44 + 112) = v99;
  v100 = [*&v1[v22] view];
  if (!v100)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v101 = v100;
  v102 = [v100 trailingAnchor];

  v103 = [v1 view];
  if (!v103)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v104 = v103;
  v105 = [v103 trailingAnchor];

  v106 = [v102 constraintEqualToAnchor:v105];
  *(v44 + 120) = v106;
  v107 = [*&v1[v22] view];
  if (!v107)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v108 = v107;
  v109 = [v107 bottomAnchor];

  v110 = [v1 view];
  v111 = v159;
  if (!v110)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v112 = v110;
  v113 = [v110 bottomAnchor];

  v114 = [v109 constraintEqualToAnchor:v113];
  *(v44 + 128) = v114;
  v115 = [*&v1[v111] centerYAnchor];
  v116 = [v1 view];
  if (!v116)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v117 = v116;
  v118 = [v116 safeAreaLayoutGuide];

  v119 = [v118 centerYAnchor];
  v120 = [v115 constraintEqualToAnchor:v119];

  *(v44 + 136) = v120;
  v121 = [*&v1[v111] centerXAnchor];
  v122 = [v1 view];
  if (!v122)
  {
LABEL_52:
    __break(1u);
    return;
  }

  v123 = v122;
  v124 = objc_opt_self();
  v125 = [v123 safeAreaLayoutGuide];

  v126 = [v125 centerXAnchor];
  v127 = [v121 constraintEqualToAnchor:v126];

  *(v44 + 144) = v127;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v124 activateConstraints:isa];

  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationDidEnterBackgroundNotification, 0, 1, 1, sub_100337568, v129);

  v130 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_foregroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillEnterForegroundNotification, 0, 1, 1, sub_100337570, v130);

  v131 = UIPresentationControllerPresentationTransitionDidEndNotification;
  v132 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_presentationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v131, 0, 1, 1, sub_100337578, v132);

  v133 = UIPresentationControllerDismissalTransitionDidEndNotification;
  v134 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_dismissalObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v133, 0, 1, 1, sub_100337580, v134);

  v136 = v155;
  v135 = v156;
  v137 = v157;
  (*(v156 + 16))(v155, &v1[OBJC_IVAR____TtC5Music26StaticLyricsViewController_song], v157);
  v138 = Song.catalogID.getter();
  v140 = v139;
  (*(v135 + 8))(v136, v137);
  if (v140)
  {
    v141 = type metadata accessor for URL();
    v142 = v153;
    (*(*(v141 - 8) + 56))(v153, 1, 1, v141);
    v143 = v154;
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v138, v140, 0x73636972794CLL, 0xE600000000000000, v142, 0, 0, 0, v154, 1, 0, 0, 2);
    v144 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v145 = sub_10053771C();
    v147 = v146;
    v148 = v158;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v149 = qword_101218AD0;
    v150 = GroupActivitiesManager.hasJoined.getter();
    v151 = GroupActivitiesManager.participantsCount.getter();
    v152 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v144) + 0xA0))(v143, v145, v147, v150 & 1, v151, *(v149 + v152));

    sub_100337588(v143, type metadata accessor for MetricsEvent.Page);
  }

  else
  {
  }
}

uint64_t sub_100331C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10010FC20(&unk_101195200);
  v4[6] = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100331DF4, v7, v6);
}

uint64_t sub_100331DF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = Strong;
  (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v4);
  Song.artwork.getter();
  (*(v5 + 8))(v2, v4);
  v7 = type metadata accessor for Artwork();
  v0[16] = v7;
  v8 = *(v7 - 8);
  v0[17] = v8;
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    v9 = v0[11];

    sub_1000095E8(v9, &unk_101188920);
    v10 = v0[15];
    [*&v10[OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView] setImage:0];

LABEL_5:

    v11 = v0[1];

    return v11();
  }

  v13 = v0[6];
  v14 = v0[7];
  v15 = [v6 traitCollection];
  [v15 displayScale];
  v17 = v16;

  v18 = type metadata accessor for Artwork.CropStyle();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = swift_task_alloc();
  v0[18] = v20;
  *v20 = v0;
  v20[1] = sub_1003320FC;
  v22 = v0[6];
  v23 = v0[7];
  v24.n128_u64[0] = 0x404E000000000000;
  v25.n128_u64[0] = 0x404E000000000000;

  v21.n128_f64[0] = 1.0 / v17;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v23, v22, 0, 0, v24, v25, v21);
}

uint64_t sub_1003320FC(uint64_t a1)
{
  v4 = *v2;
  (*v2)[19] = v1;

  if (v1)
  {
    v5 = v4[7];
    sub_1000095E8(v4[6], &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v6 = v4[13];
    v7 = v4[14];
    v8 = sub_100332364;
  }

  else
  {
    v9 = v4[16];
    v10 = v4[17];
    v11 = v4[11];
    v12 = v4[6];
    v13 = v4[7];
    v4[20] = a1;
    sub_1000095E8(v12, &unk_101195200);
    sub_1000095E8(v13, &unk_101184060);
    (*(v10 + 8))(v11, v9);
    v6 = v4[13];
    v7 = v4[14];
    v8 = sub_1003322A8;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1003322A8()
{

  v1 = v0[20];
  v2 = v0[15];
  [*&v2[OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView] setImage:v1];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100332364()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];

  (*(v2 + 8))(v4, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10033242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  sub_10010FC20(&qword_101189A18);
  v4[12] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v7;
  v4[19] = v6;

  return _swift_task_switch(sub_100332590, v7, v6);
}

uint64_t sub_100332590()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsLoader);
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    v0[21] = v2;
    (*(v4 + 16))(v3, Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v5);
    v6 = *((swift_isaMask & *v2) + 0x70);
    v2;
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_100332784;
    v8 = v0[16];

    return v11(v8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100332784(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 168);
  v8 = *(*v4 + 128);
  v9 = *(*v4 + 120);
  v10 = *(*v4 + 112);
  *(v6 + 184) = a1;
  *(v6 + 192) = a2;
  *(v6 + 208) = a3;
  *(v6 + 200) = v3;

  (*(v9 + 8))(v8, v10);

  v11 = *(v5 + 152);
  v12 = *(v5 + 144);
  if (v3)
  {
    v13 = sub_100332C70;
  }

  else
  {
    v13 = sub_10033294C;
  }

  return _swift_task_switch(v13, v12, v11);
}

id sub_10033294C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  [*(v2 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator) stopAnimating];
  v3 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
  v4 = *(v2 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController);
  if (v1)
  {
    v5 = v4;
    v6 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v6) = v6(0);

    if (v6)
    {
      (*(**(v0 + 184) + 288))(v7);
    }

    else
    {
      v14 = *(v0 + 96);
      v15 = type metadata accessor for Lyrics.Translation(0);
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    }

    v16 = *(v0 + 96);
    sub_100782D34(*(v0 + 184), v16);

    sub_1000095E8(v16, &qword_101189A18);
    result = [*(v2 + v3) view];
    if (result)
    {
      v13 = result;
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = &v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText];
  *v10 = v8;
  v10[1] = v9;
  v11 = v4;
  sub_10021D0C0(v8, v9, 0);

  sub_100781890();

  result = [*(v2 + v3) view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
LABEL_9:
  v17 = *(v0 + 160);
  v18 = *(v0 + 104);

  [v13 setHidden:0];

  Date.init()();
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  v20 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_10006B010(v18, v17 + v20, &qword_101188C20);
  swift_endAccess();
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  v23 = *(v0 + 160);
  LOBYTE(v17) = *(v0 + 208);
  sub_10032EC90();
  sub_10011895C(v22, v21, v17 & 1);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100332C70()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100332D00()
{
  v0 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_1000089F8(&v11[v12], v5, &qword_101188C20);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v5, &qword_101188C20);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      Date.timeIntervalSinceNow.getter();
      v14 = v13;
      (*(v7 + 8))(v9, v6);
      *&v11[OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration] = *&v11[OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration] - v14;
      (*(v7 + 56))(v2, 1, 1, v6);
      swift_beginAccess();
      sub_10006B010(v2, &v11[v12], &qword_101188C20);
      swift_endAccess();
    }
  }
}

void sub_100332F88()
{
  v0 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    Date.init()();
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_10006B010(v2, v4 + v6, &qword_101188C20);
    swift_endAccess();
  }
}

void sub_1003330B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible) != 1)
    {
      goto LABEL_9;
    }

    Notification.object.getter();
    if (!v10)
    {

      sub_1000095E8(v9, &unk_101183F30);
      return;
    }

    sub_100009F78(0, &qword_101183D40);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_9:

      return;
    }

    v2 = [v1 parentViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v8 presentingViewController];
      if (v4)
      {
        v5 = v4;
        v6 = v3;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          sub_100333C48();

          return;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
  }
}

void sub_100333238()
{
  v0 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1 - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible) != 1)
    {
      goto LABEL_9;
    }

    Notification.object.getter();
    if (!v16)
    {

      sub_1000095E8(v15, &unk_101183F30);
      return;
    }

    sub_100009F78(0, &qword_101183D40);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_9:

      return;
    }

    v5 = v14;
    v6 = [v4 parentViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 presentingViewController];
      if (v8)
      {
        v9 = v8;
        v10 = v7;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          Date.init()();

          v12 = type metadata accessor for Date();
          (*(*(v12 - 8) + 56))(v2, 0, 1, v12);
          v13 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
          swift_beginAccess();
          sub_10006B010(v2, v4 + v13, &qword_101188C20);
          swift_endAccess();
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
  }
}

uint64_t sub_1003335B0@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_1011838D0);
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100337398(v8, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  sub_1000095E8(v8, &unk_1011838D0);
  sub_1003337BC(v1, a1);
  sub_10033731C(a1, v5, type metadata accessor for Actions.MetricsReportingContext);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_1011838D0);
  return swift_endAccess();
}

uint64_t sub_1003337BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = a2;
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v44 = &v40 - v4;
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v9 - 8);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v5);
  v19 = Song.catalogID.getter();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  if (v21)
  {
    sub_1000095E8(v16, &unk_1011838F0);
    v22 = type metadata accessor for URL();
    v23 = v44;
    (*(*(v22 - 8) + 56))(v44, 1, 1, v22);
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v19, v21, 0x73636972794CLL, 0xE600000000000000, v23, 0, 0, 0, v13, 1, 0, 0, 2);
    v18(v13, 0, 1, v17);
    sub_10003D17C(v13, v16, &unk_1011838F0);
  }

  v24 = v17;
  sub_1000089F8(v16, v13, &unk_1011838F0);
  v25 = v46;
  sub_1000089F8(v13, v46, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v26 = sub_10053771C();
  v43 = v27;
  v44 = v26;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v28 = qword_101218AD0;
  v42 = GroupActivitiesManager.hasJoined.getter();
  v41 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v13, &unk_1011838F0);
  sub_1000095E8(v16, &unk_1011838F0);
  v29 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v30 = *(v28 + v29);
  v31 = type metadata accessor for Actions.MetricsReportingContext();
  v32 = v31[5];
  v33 = v45;
  v18(v45 + v32, 1, 1, v24);
  v34 = v31[7];
  v35 = (v33 + v31[6]);
  v36 = v31[8];
  *v33 = xmmword_100EBEF60;
  result = sub_10006B010(v25, v33 + v32, &unk_1011838F0);
  v38 = v43;
  *v35 = v44;
  v35[1] = v38;
  *(v33 + v34) = 0;
  *(v33 + v36) = 0;
  v39 = v33 + v31[9];
  *v39 = v42 & 1;
  *(v39 + 1) = v41;
  *(v39 + 2) = v30;
  return result;
}

uint64_t sub_100333C48()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v16[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v7, &qword_101188C20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000095E8(v7, &qword_101188C20);
  }

  (*(v9 + 32))(v11, v7, v8);
  Date.timeIntervalSinceNow.getter();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) = *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) - v15;
  (*(v9 + 56))(v4, 1, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v12, &qword_101188C20);
  return swift_endAccess();
}

void sub_100333EB0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v98 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v99 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v87 - v9;
  v11 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v11 - 8);
  v97 = &v87 - v12;
  v13 = sub_10010FC20(&unk_101184010);
  __chkstk_darwin(v13 - 8);
  v15 = &v87 - v14;
  v16 = sub_10010FC20(&qword_101189A10);
  __chkstk_darwin(v16 - 8);
  v18 = &v87 - v17;
  v19 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v19 - 8);
  v21 = &v87 - v20;
  v22 = *(*(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController) + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics);
  if (!v22)
  {
    return;
  }

  v94 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
  v95 = v3;

  sub_100333C48();
  v23 = *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration);
  if (v23 > 0.0)
  {
    v92 = v7;
    *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) = 0;
    v24 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
    v25 = v99;
    v26 = *(v99 + 16);
    v88 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_song;
    v90 = v26;
    v91 = v99 + 16;
    v26(v21, v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v5);
    (*(v25 + 56))(v21, 0, 1, v5);
    v96 = v24;
    MPCReportingLyricsViewEvent.song.setter();
    v27 = v22[3];
    v93 = v2;
    if (v27)
    {

      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    v29 = v96;
    [v96 setLyricsID:v28];

    (*(*v22 + 232))([v29 setVisibleDuration:v23]);
    v30 = type metadata accessor for Locale.Language();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 48))(v15, 1, v30);
    v89 = v22;
    if (v32 == 1)
    {
      v33 = &unk_101184010;
      v34 = v15;
    }

    else
    {
      Locale.Language.languageCode.getter();
      (*(v31 + 8))(v15, v30);
      v35 = type metadata accessor for Locale.LanguageCode();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v18, 1, v35) != 1)
      {
        Locale.LanguageCode.identifier.getter();
        (*(v36 + 8))(v18, v35);
        v37 = String._bridgeToObjectiveC()();

        goto LABEL_15;
      }

      v33 = &qword_101189A10;
      v34 = v18;
    }

    sub_1000095E8(v34, v33);
    v37 = 0;
LABEL_15:
    v38 = v96;
    [v96 setLanguage:v37];

    [v38 setDisplayType:0];
    [v38 setModelPlayEvent:*(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_modelPlayEvent)];
    v39 = String._bridgeToObjectiveC()();
    [v38 setFeatureName:v39];

    v40 = *(v1 + v94);
    v41 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
    swift_beginAccess();
    v42 = v97;
    sub_1000089F8(v40 + v41, v97, &qword_101189A18);
    v43 = type metadata accessor for Lyrics.Translation(0);
    v44 = (*(*(v43 - 8) + 48))(v42, 1, v43) != 1;
    sub_1000095E8(v42, &qword_101189A18);
    [v38 setDisplayTranslationEnabled:v44];
    v45 = [objc_allocWithZone(MPCLyricsReportingController) init];
    [v45 recordLyricsViewEvent:v38];

    v101 = 0;
    v102 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v46 = v1;
    v87 = v1;
    v47 = v88;
    v48 = v90;
    v90(v10, v46 + v88, v5);
    v49 = Song.title.getter();
    v51 = v50;
    v99 = *(v99 + 8);
    (v99)(v10, v5);

    v101 = v49;
    v102 = v51;
    v52._countAndFlagsBits = 0x3D64692820;
    v52._object = 0xE500000000000000;
    String.append(_:)(v52);
    v53 = v87;
    v48(v10, v87 + v47, v5);
    v54 = Song.id.getter();
    v56 = v55;
    v57 = v10;
    v58 = v99;
    (v99)(v57, v5);
    v59._countAndFlagsBits = v54;
    v59._object = v56;
    String.append(_:)(v59);

    v60._countAndFlagsBits = 0x676F6C6174616320;
    v60._object = 0xEB000000003D4449;
    String.append(_:)(v60);
    v61 = v92;
    v48(v92, v53 + v47, v5);
    v62 = Song.catalogID.getter();
    v64 = v63;
    v58(v61, v5);
    if (v64)
    {
      v65 = v62;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0xE000000000000000;
    }

    v67 = v66;
    String.append(_:)(*&v65);

    v68._countAndFlagsBits = 41;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);
    v70 = v101;
    v69 = v102;
    v71 = Logger.lyrics.unsafeMutableAddressor();
    v72 = v95;
    v73 = v98;
    v74 = v93;
    (*(v95 + 16))(v98, v71, v93);
    v75 = v89;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v100 = v99;
      *v78 = 136446722;
      v79 = v75[3];
      v101 = v75[2];
      v102 = v79;

      sub_10010FC20(&qword_1011815E0);
      v80 = String.init<A>(describing:)();
      v82 = sub_1000105AC(v80, v81, &v100);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2082;
      v83 = Double.description.getter();
      v85 = sub_1000105AC(v83, v84, &v100);

      *(v78 + 14) = v85;
      *(v78 + 22) = 2082;
      v86 = sub_1000105AC(v70, v69, &v100);

      *(v78 + 24) = v86;
      _os_log_impl(&_mh_execute_header, v76, v77, "Recorded Static PAF Event with id=%{public}s; duration=%{public}ss; song=%{public}s", v78, 0x20u);
      swift_arrayDestroy();

      (*(v72 + 8))(v98, v93);
    }

    else
    {

      (*(v72 + 8))(v73, v74);
    }

    return;
  }
}

id sub_100334950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StaticLyricsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StaticLyricsViewController()
{
  result = qword_10118BBD0;
  if (!qword_10118BBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100334B2C()
{
  type metadata accessor for Song();
  if (v0 <= 0x3F)
  {
    sub_100334CB4(319, &qword_101184A60, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_100334CB4(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100334CB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_100334D08()
{
  v0 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v0 - 8);
  v2 = v37 - v1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  SymbolButton.Configuration.init()(v6);
  v10 = [objc_opt_self() currentTraitCollection];
  SymbolButton.Configuration.forBarButtonItem(_:)(v9);

  v38 = v6;
  sub_100337588(v6, type metadata accessor for SymbolButton.Configuration);
  static UIView.Corner.rounded.getter();
  v11 = type metadata accessor for UIView.Corner();
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  sub_10006B010(v2, &v9[*(v4 + 44)], &qword_101183A90);
  v12 = SymbolButton.Background.secondary.unsafeMutableAddressor();
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = *(v9 + 25);
  v18 = *(v9 + 26);

  v19 = v13;
  sub_100282F24(v17, v18);
  *(v9 + 25) = v14;
  *(v9 + 26) = v13;
  *(v9 + 27) = v15;
  *(v9 + 28) = v16;
  variable initialization expression of SymbolButton.Configuration.symbol(&v41);
  v20 = v43;
  v51 = v42;
  v52 = v49;
  v50 = v41;
  sub_1000095E8(&v50, &qword_1011815E0);
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v21 = qword_101218F90;
  sub_1000095E8(&v51, &qword_10118BBE0);
  LOBYTE(v56[0]) = 0;
  v22 = [objc_opt_self() secondaryLabelColor];
  sub_1000095E8(&v52, &unk_1011951E0);
  v23 = v56[0];
  v24 = *(v9 + 5);
  v56[4] = *(v9 + 4);
  v56[5] = v24;
  v56[6] = *(v9 + 6);
  v57 = *(v9 + 14);
  v25 = *(v9 + 1);
  v56[0] = *v9;
  v56[1] = v25;
  v26 = *(v9 + 3);
  v56[2] = *(v9 + 2);
  v56[3] = v26;
  sub_1001D223C(v56);
  *v9 = 0xD000000000000021;
  *(v9 + 1) = 0x8000000100E470D0;
  *(v9 + 2) = v21;
  *(v9 + 3) = v20;
  *(v9 + 4) = 0x4024000000000000;
  v9[40] = v23;
  *(v9 + 41) = v44[0];
  *(v9 + 11) = *(v44 + 3);
  *(v9 + 6) = 6;
  *(v9 + 56) = v45;
  *(v9 + 72) = v46;
  *(v9 + 88) = v47;
  *(v9 + 13) = v48;
  *(v9 + 14) = v22;
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  v55 = xmmword_100EBCEF0;
  v27 = v37[1];
  PresentationSource.init(viewController:position:)(v27, v53, v40);
  v28 = v38;
  sub_10033731C(v9, v38, type metadata accessor for SymbolButton.Configuration);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B7A8(v40, v39);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  sub_10012B828(v39, v30 + 24);
  v31 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v32 = SymbolButton.init(configuration:handler:)(v28, sub_100337300, v30);
  v33 = [v27 traitCollection];
  v34 = UITraitCollection.supportedMaterials.getter();

  LOBYTE(v33) = sub_100042A50(1, v34);

  (*((swift_isaMask & *v32) + 0x1B8))(v33 & 1);
  (*((swift_isaMask & *v32) + 0x108))(0xD000000000000012, 0x8000000100E47100);
  v35 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v32];

  sub_10012BA6C(v40);
  sub_100337588(v9, type metadata accessor for SymbolButton.Configuration);
  return v35;
}

id sub_100335290()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock - v3;
  v5 = [objc_allocWithZone(UIButton) init];
  v24 = sub_100335ECC;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10027D328;
  v23 = &unk_1010A7240;
  v6 = _Block_copy(&aBlock);
  [v5 setConfigurationUpdateHandler:v6];
  _Block_release(v6);
  sub_100009F78(0, &qword_1011839A0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v9 = v5;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v9 addAction:v10 forControlEvents:64];

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v24 = sub_100337314;
  v25 = v11;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1003366D4;
  v23 = &unk_1010A72B8;
  v12 = _Block_copy(&aBlock);
  v13 = v9;

  [v13 setAccessibilityValueBlock:v12];
  _Block_release(v12);

  v14 = *(v1 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController);
  v15 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  swift_beginAccess();
  sub_1000089F8(v14 + v15, v4, &qword_101189A18);
  v16 = type metadata accessor for Lyrics.Translation(0);
  v17 = (*(*(v16 - 8) + 48))(v4, 1, v16) != 1;
  sub_1000095E8(v4, &qword_101189A18);
  [v13 setSelected:v17];

  [v13 setNeedsUpdateConfiguration];
  v18 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v13];

  return v18;
}

void sub_100335628(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = a3;
  v62 = type metadata accessor for AppInterfaceContext.Activity(0);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v64 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v56 - v5;
  v61 = v7;
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v67 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v67);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lyrics.Translation(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v16 - 8);
  v18 = &v56 - v17;
  v19 = type metadata accessor for Song();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v60 = v10;
    v57 = v6;
    v59 = v20;
    v24 = *(v20 + 16);
    v25 = Strong;
    v68 = v19;
    v24(v22, Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_song, v19);
    sub_10012B7A8(v65, v70);
    v65 = v25;
    v26 = *&v25[OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController];
    v27 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
    swift_beginAccess();
    sub_1000089F8(v26 + v27, v18, &qword_101189A18);
    if ((*(v13 + 48))(v18, 1, v12))
    {
      sub_1000095E8(v18, &qword_101189A18);
      v28 = 0;
      v29 = 0;
    }

    else
    {
      sub_10033731C(v18, v15, type metadata accessor for Lyrics.Translation);
      sub_1000095E8(v18, &qword_101189A18);
      v30 = &v15[*(v12 + 20)];
      v28 = *v30;
      v29 = *(v30 + 1);

      sub_100337588(v15, type metadata accessor for Lyrics.Translation);
    }

    v58 = type metadata accessor for LyricsSharingActivityViewController();
    v31 = objc_allocWithZone(v58);
    v32 = &v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID];
    *v32 = 0;
    v32[1] = 0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager] = 0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader] = 0;
    v33 = &v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
    *(v33 + 1) = 0u;
    *(v33 + 2) = 0u;
    *v33 = xmmword_100EBCEE0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView] = 0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence] = 0;
    v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] = 0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] = 0;
    v34 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
    v35 = type metadata accessor for Date();
    (*(*(v35 - 8) + 56))(&v31[v34], 1, 1, v35);
    v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible] = 0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_backgroundObserver] = 0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_foregroundObserver] = 0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationObserver] = 0;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_dismissalObserver] = 0;
    v24(&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song], v22, v68);
    *v32 = 0;
    v32[1] = 0;
    sub_10012B7A8(v70, &v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource]);
    *v33 = v28;
    *(v33 + 1) = v29;
    type metadata accessor for LyricsSelectionViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v33 + 1) = 0u;
    *(v33 + 2) = 0u;
    v37 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController] = v37;
    v38 = [objc_allocWithZone(LPLinkMetadata) init];
    v39 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
    *&v31[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata] = v38;
    v40 = sub_100564124();
    v41 = [v40 specialization];

    v42 = v59;
    if (v41)
    {
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      v44 = v60;
      if (!v43)
      {
      }
    }

    else
    {
      v43 = 0;
      v44 = v60;
    }

    v45 = *&v31[v39];
    v46 = [v43 artwork];
    [v45 setImage:v46];

    isa = Array._bridgeToObjectiveC()().super.isa;
    v69.receiver = v31;
    v69.super_class = v58;
    v48 = objc_msgSendSuper2(&v69, "initWithActivityItems:applicationActivities:", isa, 0);

    v49 = v48;
    UIViewController.traitOverrides.getter();
    sub_100050078();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
    sub_1001E0BC4(1);

    sub_10012BA6C(v70);
    (*(v42 + 8))(v22, v68);
    v50 = v65;
    v51 = sub_10003169C();

    if (v51)
    {
      *v44 = v49;
      *(v44 + 8) = 1;
      *(v44 + 16) = &_swiftEmptySetSingleton;
      swift_storeEnumTagMultiPayload();
      v52 = v57;
      sub_10033731C(v44, v57, type metadata accessor for AppInterfaceContext.Activity);
      v53 = v64;
      sub_10033731C(v52, v64, type metadata accessor for AppInterfaceContext.Activity);
      v54 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      sub_100337398(v53, v55 + v54, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v52, sub_100115C18, v55);

      sub_100337588(v52, type metadata accessor for AppInterfaceContext.Activity);
      sub_100337588(v44, type metadata accessor for AppInterfaceContext.Activity);
    }

    else
    {
    }
  }
}

uint64_t sub_100335ECC(void *a1)
{
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-v3];
  v5 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.plain()();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v6);
  UIButton.Configuration.cornerStyle.setter();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  if ([a1 isSelected])
  {
    v14 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  else
  {
    v15 = [objc_opt_self() clearColor];
  }

  v16 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v16(v24, 0);
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17];

  UIButton.Configuration.image.setter();
  v19 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  LODWORD(v17) = [a1 isSelected];
  v20 = objc_opt_self();
  v21 = &selRef_whiteColor;
  if (!v17)
  {
    v21 = &selRef_secondaryLabelColor;
  }

  v22 = [v20 *v21];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v11 + 16))(v4, v13, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  UIButton.configuration.setter();
  return (*(v11 + 8))(v13, v10);
}

void sub_100336290(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v34 = a3;
    v15 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
    v16 = *(Strong + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController);
    v17 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
    swift_beginAccess();
    sub_1000089F8(v16 + v17, v12, &qword_101189A18);
    v18 = type metadata accessor for Lyrics.Translation(0);
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v12, 1, v18);
    sub_1000095E8(v12, &qword_101189A18);
    v21 = **LyricsOptionsManager.shared.unsafeMutableAddressor();
    if (v20 == 1)
    {
      v22 = *(v21 + 232);

      v22(0);

      v23 = *&v14[v15];
      v24 = *&v23[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics];
      if (v24)
      {
        v25 = *(*v24 + 288);
        v26 = v23;

        v25(v27);
      }

      else
      {
        (*(v19 + 56))(v9, 1, 1, v18);
        v31 = v23;
      }

      v30 = v9;
    }

    else
    {
      v28 = *(v21 + 240);

      v28(0);

      v29 = *&v14[v15];
      (*(v19 + 56))(v6, 1, 1, v18);
      v23 = v29;
      v30 = v6;
    }

    sub_100781E38(v30);
    v32 = v34;

    [v32 setSelected:v20 == 1];
  }
}

uint64_t sub_1003365B8(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  [a1 isSelected];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

id sub_1003366D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100336758(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v96[2] = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v96[3] = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal) = 0;
  v16 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_modelPlayEvent;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_modelPlayEvent) = 0;
  v17 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsLoader;
  *(v4 + v17) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) = 0;
  v18 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_backgroundObserver) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_foregroundObserver) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_presentationObserver) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_dismissalObserver) = 0;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem) = 0;
  v20 = OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___actionMetricsReportingContext;
  v21 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v21 - 8) + 56))(v4 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_song;
  v23 = type metadata accessor for Song();
  v98 = *(v23 - 8);
  v99 = v23;
  v24 = *(v98 + 16);
  v104 = a1;
  v24(v4 + v22, a1);
  v25 = *(v4 + v16);
  *(v4 + v16) = a2;
  v26 = a2;

  *(v4 + v15) = a3;
  v27 = [objc_allocWithZone(UIImageView) init];
  v28 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_artworkImageView) = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [*&v28[v4] layer];
  [v29 setCornerRadius:4.0];

  v103 = v28;
  v30 = [*&v28[v4] layer];
  [v30 setMasksToBounds:1];

  v31 = [objc_allocWithZone(UILabel) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = objc_opt_self();
  v33 = [v32 preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v31 setFont:v33];

  v34 = objc_opt_self();
  v35 = [v34 secondaryLabelColor];
  [v31 setTextColor:v35];

  v101 = v15;
  if ((*(v4 + v15) & 1) == 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v36 = String._bridgeToObjectiveC()();

    [v31 setText:v36];
  }

  v96[1] = v12;
  v37 = [objc_allocWithZone(UILabel) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v32 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v37 setFont:v38];

  v39 = [v34 labelColor];
  [v37 setTextColor:v39];

  v40 = [objc_allocWithZone(UILabel) init];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [v32 preferredFontForTextStyle:UIFontTextStyleBody];
  [v40 setFont:v41];

  v42 = [v34 secondaryLabelColor];
  [v40 setTextColor:v42];

  v102 = sub_10010FC20(&qword_101183990);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100EBE270;
  *(v43 + 32) = v31;
  *(v43 + 40) = v37;
  *(v43 + 48) = v40;
  v44 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v46 = [v44 initWithArrangedSubviews:isa];

  v47 = v46;
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v47 setAxis:1];
  [v47 setBaselineRelativeArrangement:1];
  result = [v37 font];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v49 = result;
  [result _scaledValueForValue:20.0];
  v51 = v50;

  v97 = v31;
  [v47 setCustomSpacing:v31 afterView:v51];
  v100 = v40;
  result = [v40 font];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v52 = result;
  [result _scaledValueForValue:22.0];
  v54 = v53;

  v55 = v37;
  [v47 setCustomSpacing:v37 afterView:v54];
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100EBC6D0;
  v57 = *&v103[v4];
  *(v56 + 32) = v57;
  *(v56 + 40) = v47;
  v58 = objc_allocWithZone(UIStackView);
  v59 = v57;
  v60 = Array._bridgeToObjectiveC()().super.isa;

  v61 = [v58 initWithArrangedSubviews:v60];

  v62 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_stackView;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_stackView) = v61;
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v4 + v62) setAxis:0];
  [*(v4 + v62) setSpacing:8.0];
  [*(v4 + v62) setAlignment:3];
  v63 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v64 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_activityIndicator) = v63;
  [v63 setHidesWhenStopped:1];
  [*(v4 + v64) setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for StaticLyricsContentViewController();
  v65 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v66 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController;
  *(v4 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_contentViewController) = v65;
  result = [v65 view];
  v67 = v104;
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v68 = result;
  v69 = v101;
  v70 = 20.0;
  if (*(v4 + v101))
  {
    v70 = 32.0;
  }

  [result setLayoutMargins:{0.0, v70, 0.0, v70}];

  result = [*(v4 + v66) view];
  v71 = v100;
  if (!result)
  {
    goto LABEL_28;
  }

  v72 = result;
  v103 = v47;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  LOBYTE(v72) = *(v4 + v69);
  v73 = *(v4 + v66);
  sub_1007820F8(v72);

  Song.title.getter();
  v74 = String._bridgeToObjectiveC()();

  [v55 setText:v74];

  v75 = Song.artistName.getter();
  v77 = v76;

  v78 = HIBYTE(v77) & 0xF;
  if ((v77 & 0x2000000000000000) == 0)
  {
    v78 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (v78)
  {
    Song.artistName.getter();
LABEL_13:
    v79 = String._bridgeToObjectiveC()();

    [v71 setText:v79];

    goto LABEL_14;
  }

  v88 = Song.composerName.getter();
  if (v89)
  {
    v90 = v88;
    v91 = v89;
    v92 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v92 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (v92)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v93._countAndFlagsBits = 2128194;
      v93._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v93);
      v94._countAndFlagsBits = v90;
      v94._object = v91;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v94);

      v95._countAndFlagsBits = 0;
      v95._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v95);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      goto LABEL_13;
    }
  }

LABEL_14:
  v80 = *(v4 + v66);
  v81 = Song.catalogID.getter();
  v83 = &v80[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier];
  if (v82)
  {
    v84 = v81;
  }

  else
  {
    v84 = 0;
  }

  *v83 = v84;
  v83[1] = v82;

  v85 = type metadata accessor for StaticLyricsViewController();
  v105.receiver = v4;
  v105.super_class = v85;
  v86 = objc_msgSendSuper2(&v105, "initWithNibName:bundle:", 0, 0);
  [v86 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v86 view];
  if (result)
  {
    v87 = result;
    [result setPreservesSuperviewLayoutMargins:1];

    UIViewController.playActivityFeatureIdentifier.setter(18);
    sub_10032EC90();

    (*(v98 + 8))(v67, v99);
    return v86;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10033731C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100337398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100337400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100331C58(a1, v4, v5, v6);
}

uint64_t sub_1003374B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10033242C(a1, v4, v5, v6);
}

uint64_t sub_100337588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003375E8()
{
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isInModal) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_modelPlayEvent) = 0;
  v1 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsLoader;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_visibleDuration) = 0;
  v2 = OBJC_IVAR____TtC5Music26StaticLyricsViewController_lyricsVisibilityStart;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_backgroundObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_foregroundObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_presentationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController_dismissalObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___contextBarButtonItem) = 0;
  v4 = OBJC_IVAR____TtC5Music26StaticLyricsViewController____lazy_storage___actionMetricsReportingContext;
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003377B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100338450();

  return static View<>._makeView(view:inputs:)(a1, a2, a3, v8, a4);
}

uint64_t sub_100337820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100338450();

  return static View<>._makeViewList(view:inputs:)(a1, a2, a3, v8, a4);
}

uint64_t sub_10033788C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  result = static Alignment.center.getter();
  *a1 = result;
  a1[1] = v8;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  a1[7] = v6;
  return result;
}

uint64_t sub_1003378D8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v1 = GraphicsContext.drawLayer(content:)();
  __chkstk_darwin(v1);
  return GraphicsContext.drawLayer(content:)();
}

uint64_t sub_100337A80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GraphicsContext.Shading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Path.init(ellipseIn:)();
  static Color.secondary.getter();
  static GraphicsContext.Shading.color(_:)();

  GraphicsContext.stroke(_:with:lineWidth:)();
  sub_100338684(v9);
  v7 = *(v4 + 8);
  result = v7(v6, v3);
  if (*(a2 + 32) > 0.0)
  {
    GraphicsContext.opacity.setter();
    Path.init(ellipseIn:)();
    static Color.white.getter();
    static GraphicsContext.Shading.color(_:)();

    GraphicsContext.stroke(_:with:lineWidth:)();
    sub_100338684(v10);
    v7(v6, v3);
    return GraphicsContext.opacity.setter();
  }

  return result;
}

uint64_t sub_100337C50()
{
  v1 = type metadata accessor for ColorRenderingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  (*(v2 + 104))(v4, enum case for ColorRenderingMode.nonLinear(_:), v1);
  return Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
}

uint64_t sub_100337D74@<X0>(uint64_t *a1@<X8>, double a2@<D1>, double a3@<D2>, double a4@<D3>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v8;
  v9 = sub_10010FC20(&qword_10118BC10);
  return sub_100337DF4(a1 + *(v9 + 44), a2, a3, a4);
}

uint64_t sub_100337DF4@<X0>(uint64_t a1@<X8>, double a2@<D1>, double a3@<D2>, double a4@<D3>)
{
  v8 = sub_10010FC20(&qword_10118BC18);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45[-1] - v10;
  v12 = sub_10010FC20(&qword_10118BC20);
  __chkstk_darwin(v12 - 8);
  v14 = &v45[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45[-1] - v16;
  __chkstk_darwin(v18);
  v20 = &v45[-1] - v19;
  __chkstk_darwin(v21);
  v23 = &v45[-1] - v22;
  GeometryProxy.size.getter();
  v25 = v24 * 0.5;
  GeometryProxy.size.getter();
  v27 = v26 * 0.5;
  GeometryProxy.size.getter();
  v29 = v28;
  GeometryProxy.size.getter();
  if (v30 >= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = v31 * 0.25;
  v33 = v31 * 0.15;
  v34 = v31 * 0.075;
  v35 = (v33 - v34) * a3;
  v36 = v33 - v35;
  if (a3 <= 0.0)
  {
    v36 = v33;
  }

  if (a2 <= 0.0)
  {
    v37 = 0;
    if (a3 <= 0.0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v37 = a3 < 0.5;
  if (a3 > 0.0)
  {
LABEL_10:
    v34 = v34 + v35;
  }

LABEL_11:
  v47[0] = v27 - v33;
  v47[1] = v25;
  v47[2] = v32 - v36 * 0.5;
  v47[3] = v36;
  v47[4] = a2;
  v48 = v37;
  v38 = v32 - v34 * 0.5;
  v39 = a3 > 0.5 && a4 > 0.0;
  v45[0] = v27 + v33;
  v45[1] = v25;
  v45[2] = v38;
  v45[3] = v34;
  v45[4] = a4;
  v46 = v39;
  if (v37)
  {
    sub_10033819C(v47, v11);
    sub_1003385F0(v11, v23);
    v40 = *(v9 + 56);
    v40(v23, 0, 1, v8);
  }

  else
  {
    v40 = *(v9 + 56);
    v40(v23, 1, 1, v8);
  }

  if (v39)
  {
    sub_10033819C(v45, v11);
    sub_1003385F0(v11, v20);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v40(v20, v41, 1, v8);
  sub_100338518(v23, v17);
  sub_100338518(v20, v14);
  sub_100338518(v17, a1);
  v42 = sub_10010FC20(&qword_10118BC28);
  sub_100338518(v14, a1 + *(v42 + 48));
  sub_100338588(v20);
  sub_100338588(v23);
  sub_100338588(v14);
  return sub_100338588(v17);
}

double sub_10033819C@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v5 = static Alignment.center.getter();
  v7 = v6;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = a1[4] * 0.6;
  v11 = *(sub_10010FC20(&qword_10118BC18) + 36);
  v12 = enum case for BlendMode.plusLighter(_:);
  v13 = type metadata accessor for BlendMode();
  (*(*(v13 - 8) + 104))(a2 + v11, v12, v13);
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v4;
  *(a2 + 48) = 256;
  *(a2 + 56) = v5;
  *(a2 + 64) = v7;
  *(a2 + 72) = v20;
  *(a2 + 88) = v21;
  result = *&v22;
  *(a2 + 104) = v22;
  *(a2 + 120) = v8;
  *(a2 + 128) = v9;
  *(a2 + 136) = 0x4008000000000000;
  *(a2 + 144) = 0;
  *(a2 + 152) = v10;
  return result;
}

__n128 sub_100338334@<Q0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  result = *v1;
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *a1 = sub_10033850C;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  return result;
}

__n128 sub_100338388@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 sub_100338394(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

void (*sub_1003383A0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return sub_10033840C;
}

void sub_10033840C(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *v2 = *v1;
  v2[1] = v3;
  free(v1);
}

unint64_t sub_100338450()
{
  result = qword_10118BBF8;
  if (!qword_10118BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118BBF8);
  }

  return result;
}

uint64_t sub_100338518(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118BC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100338588(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118BC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003385F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118BC18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003386D8()
{
  result = qword_10118BC30;
  if (!qword_10118BC30)
  {
    sub_1001109D0(&qword_10118BC38);
    sub_100020674(&qword_10118BC40, &qword_10118BC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118BC30);
  }

  return result;
}

uint64_t MusicPlayer.PlayabilityStatus.UnplayableReason.debugDescription.getter()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
  {
    return 0xD000000000000017;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.cellularRestricted(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.accountRequired(_:))
  {
    return 0x52746E756F636361;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    return 0xD000000000000014;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:))
  {
    return 0x726F707075736E75;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  v8._countAndFlagsBits = 0x286E776F6E6B6E75;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10 = v11[0];
  (*(v2 + 8))(v5, v1);
  return v10;
}

uint64_t sub_100338AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100338B0C()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for PresentationDonationTarget();
    v3 = swift_allocObject();
    *(v3 + 72) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 16) = 0x4C6C616974696E49;
    *(v3 + 24) = 0xEB00000000656E69;
    *(v3 + 32) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v3 + 40) = sub_10033F328;
    *(v3 + 48) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v3 + 88) = sub_10033F330;
    *(v3 + 96) = v5;
    *(v3 + 56) = UIScreen.Dimensions.size.getter;
    *(v3 + 64) = 0;
    sub_10010FC20(&qword_101183990);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBC6C0;
    *(v6 + 32) = v3;
    v7 = v0;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100338C4C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:230.0 damping:22.0 initialVelocity:{0.0, 0.0}];
  qword_101218A70 = result;
  return result;
}

id sub_100338C9C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:9300.0 damping:200.0 initialVelocity:{0.0, 0.0}];
  qword_101218A78 = result;
  return result;
}

id sub_100338CF0()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_101218A80 = result;
  return result;
}

id sub_100338D44()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:396.0 damping:32.0 initialVelocity:{0.0, 0.0}];
  qword_101218A88 = result;
  return result;
}

id sub_100338D98()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:100.0 damping:16.0 initialVelocity:{0.0, 0.0}];
  qword_101218A90 = result;
  return result;
}

id sub_100338DE4()
{
  v1 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_100338E48();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100338E48()
{
  swift_unknownObjectWeakInit();
  v0 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_100338FCC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010A7980;
  v1 = _Block_copy(aBlock);
  v2 = [v0 initWithSectionProvider:v1];
  _Block_release(v1);
  swift_unknownObjectWeakDestroy();

  v3 = [objc_allocWithZone(UICollectionView) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v4 = UIView.forAutolayout.getter();

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setHidden:1];
  return v6;
}

id sub_100338FCC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(_UICollectionViewListLayoutSectionConfiguration) initWithAppearanceStyle:0 layoutEnvironment:a2];
  [v3 setSeparatorStyle:0];
  [v3 setEstimatedRowHeight:108.0];
  v4 = [objc_allocWithZone(_UICollectionViewListLayoutSection) initWithConfiguration:v3 layoutEnvironment:a2];
  [v4 setContentInsets:{19.0, 0.0, 19.0, 0.0}];

  return v4;
}

id sub_10033908C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v94 - v3;
  v5 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for LyricsSelectionViewController();
  v97.receiver = v0;
  v97.super_class = v8;
  objc_msgSendSuper2(&v97, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor:v11];

  v12 = [objc_allocWithZone(UIView) init];
  v13 = UIView.forAutolayout.getter();

  [v13 setClipsToBounds:1];
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = result;
  [result addSubview:v13];

  v15 = sub_100338DE4();
  [v15 setDelegate:v1];

  v16 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v17 = [*&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView] layer];
  [v17 setMasksToBounds:0];

  v18 = *&v1[v16];
  _s8LineCellCMa();
  v19 = v18;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v20 = *&v1[v16];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = result;
  [result bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v20 setFrame:{v23, v25, v27, v29}];
  [v13 addSubview:*&v1[v16]];
  v30 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator;
  [*&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator] startAnimating];
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = result;
  v95 = v4;
  v96 = v30;
  [result addSubview:*&v1[v30]];

  v32 = *&v1[v16];
  *(swift_allocObject() + 16) = v1;
  v33 = objc_allocWithZone(sub_10010FC20(&qword_10118BD08));
  v34 = v1;
  v35 = v32;
  v36 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v37 = *&v34[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
  *&v34[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource] = v36;

  sub_10033A430();
  sub_10010FC20(&qword_101183990);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100EC56B0;
  v39 = [v13 leadingAnchor];
  result = [v34 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v40 = result;
  v41 = [result leadingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41];
  *(v38 + 32) = v42;
  v43 = [v13 trailingAnchor];
  result = [v34 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = result;
  v94 = v7;
  v45 = [result trailingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v38 + 40) = v46;
  v47 = [v13 topAnchor];
  result = [v34 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = result;
  v49 = [result topAnchor];

  v50 = [v47 constraintEqualToAnchor:v49];
  *(v38 + 48) = v50;
  v51 = [v13 bottomAnchor];
  result = [v34 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v52 = result;
  v53 = [result bottomAnchor];

  v54 = [v51 constraintEqualToAnchor:v53];
  *(v38 + 56) = v54;
  v55 = [*&v1[v16] leadingAnchor];
  v56 = [v13 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v38 + 64) = v57;
  v58 = [*&v1[v16] trailingAnchor];
  v59 = [v13 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v38 + 72) = v60;
  v61 = [*&v1[v16] topAnchor];
  v62 = [v13 topAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v38 + 80) = v63;
  v64 = [*&v1[v16] bottomAnchor];
  v65 = [v13 bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v38 + 88) = v66;
  v67 = v96;
  v68 = [*&v1[v96] centerYAnchor];
  result = [v34 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v69 = result;
  v70 = [result centerYAnchor];

  v71 = [v68 constraintEqualToAnchor:v70];
  *(v38 + 96) = v71;
  v72 = [*&v1[v67] centerXAnchor];
  result = [v34 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v73 = result;
  v74 = objc_opt_self();
  v75 = [v73 centerXAnchor];

  v76 = [v72 constraintEqualToAnchor:v75];
  *(v38 + 104) = v76;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints:isa];

  v78 = &v34[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties];
  v79 = *&v34[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties];
  v80 = *&v34[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties + 8];
  v81 = *&v34[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties + 16];
  v82 = *(v78 + 3);
  v83 = type metadata accessor for URL();
  v84 = v95;
  (*(*(v83 - 8) + 56))(v95, 1, 1, v83);
  v85 = v94;
  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v79, v80, v81, v82, v84, 0, 0, 0, v94, 1, 0, 0, 2);

  v86 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v87 = sub_10053771C();
  v89 = v88;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v90 = qword_101218AD0;
  v91 = GroupActivitiesManager.hasJoined.getter();
  v92 = GroupActivitiesManager.participantsCount.getter();
  v93 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v86) + 0xA0))(v85, v87, v89, v91 & 1, v92, *(v90 + v93));

  return sub_10033F754(v85, type metadata accessor for MetricsEvent.Page);
}

uint64_t sub_100339B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s8LineCellCMa();
  static UICollectionReusableView.reuseIdentifier.getter();
  v6 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

  v7 = type metadata accessor for Lyrics.TextLine(0);
  v8 = (*(a3 + *(v7 + 64)))();
  v9 = (v6 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_text);
  *v9 = v8;
  v9[1] = v10;

  v11 = OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label;
  v12 = *(v6 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_label);

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = *(a4 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (v15 && *(v15 + 32))
  {

    v16 = NSTextAlignment.init(languageCode:)();
    *(v6 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_textAlignment) = v16;
    [*(v6 + v11) setTextAlignment:v16];
  }

  return v6;
}

uint64_t sub_100339CAC(char a1)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LyricsSelectionViewController();
  v14.receiver = v1;
  v14.super_class = v7;
  result = objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  if ((v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition] & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset;
    if ((v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset] & 1) == 0)
    {
      v10 = *&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager];
      if (v10)
      {
        result = swift_beginAccess();
        v11 = *(v10 + 72);
        if (*(v11 + 16))
        {
          sub_10033F418(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v6, type metadata accessor for Lyrics.TextLine);
          v12 = sub_100338DE4();
          sub_100339E90();
          [v12 setContentOffset:0.0];

          result = sub_10033F754(v6, type metadata accessor for Lyrics.TextLine);
          v1[v9] = 1;
        }
      }
    }
  }

  return result;
}

void sub_100339E90()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &aBlock[-1] - v10;
  v12 = *&v0[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_10118BCE0);
    return;
  }

  (*(v6 + 32))(v11, v4, v5);
  if (IndexPath.item.getter() < 1)
  {
    (*(v6 + 8))(v11, v5);
    return;
  }

  if (__OFSUB__(IndexPath.item.getter(), 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  IndexPath.init(item:section:)();
  v14 = sub_100338DE4();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [v14 layoutAttributesForItemAtIndexPath:isa];

  if (!v16)
  {
    v29 = *(v6 + 8);
    v29(v8, v5);
    v29(v11, v5);
    return;
  }

  v32 = v16;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = &v32;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10033F744;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1001D3174;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010A7958;
  v20 = _Block_copy(aBlock);
  v21 = v1;

  [v17 performWithoutAnimation:v20];
  _Block_release(v20);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    goto LABEL_14;
  }

  v22 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v23 = *&v21[OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView];
  v24 = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v23 layoutAttributesForItemAtIndexPath:v24];

  if (v25)
  {
    v26 = v32;
    v32 = v25;
  }

  [*&v21[v22] contentSize];
  [*&v21[v22] frame];
  CGRectGetHeight(v33);
  [v32 frame];
  CGRectGetMaxY(v34);
  [v32 frame];
  CGRectGetHeight(v35);
  v27 = *(v6 + 8);
  v27(v8, v5);
  v27(v11, v5);
  v28 = v32;
}

void sub_10033A35C(void *a1, id *a2)
{
  v4 = sub_100338DE4();
  [*a2 frame];
  MaxY = CGRectGetMaxY(v9);
  [*a2 frame];
  [v4 setContentOffset:{0.0, MaxY + CGRectGetHeight(v10) * -0.5}];

  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10033A430()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v2);
  v3 = sub_10010FC20(&qword_10118BCF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = *&v0[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager];
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  type metadata accessor for Lyrics.TextLine(0);
  sub_1000296C8(&qword_10118BD00, type metadata accessor for Lyrics.TextLine);
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_101099730);
  aBlock = 0;
  v23 = 0;
  result = NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v10 = *&v0[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
  if (v10)
  {
    *(swift_allocObject() + 16) = v1;
    v11 = v10;
    v12 = v1;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v13 = v8[2];

    if (v13)
    {
      [*&v12[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator] setHidden:1];
      v14 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem;
      if (*&v12[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem])
      {

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      *&v12[v14] = 0;
    }

    else
    {
      v15 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem;
      if (*&v12[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem])
      {
LABEL_11:
        v20 = sub_100338DE4();
        [v20 setHidden:v13 == 0];

        return (*(v4 + 8))(v6, v3);
      }

      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      v26 = sub_10033F728;
      v27 = v16;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v24 = sub_10002BC98;
      v25 = &unk_1010A78E0;
      v21[2] = _Block_copy(&aBlock);
      v21[3] = _swiftEmptyArrayStorage;
      v21[1] = sub_1000296C8(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
      v17 = v12;
      sub_10010FC20(&qword_101182970);
      sub_10002489C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v18 = DispatchWorkItem.init(flags:block:)();

      sub_100009F78(0, &qword_101182960);
      v19 = static OS_dispatch_queue.main.getter();
      OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)();

      *&v12[v15] = v18;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_10033A884(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition) & 1) == 0)
  {
    v6 = *(a1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
    if (v6)
    {
      swift_beginAccess();
      v7 = *(v6 + 72);
      if (*(v7 + 16))
      {
        sub_10033F418(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, type metadata accessor for Lyrics.TextLine);
        v8 = sub_100338DE4();
        sub_100339E90();
        [v8 setContentOffset:0.0];

        sub_10033F754(v5, type metadata accessor for Lyrics.TextLine);
      }
    }
  }
}

uint64_t sub_10033A9D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (v2)
  {
    swift_beginAccess();
    v4 = *(v2 + 72);
    v5 = *(v4 + 16);

    v6 = 0;
    while (v5 != v6)
    {
      v7 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
      v8 = static Lyrics.TextLine.== infix(_:_:)(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6++, a1);
      if (v8)
      {

        return 1;
      }
    }

    swift_beginAccess();
    v10 = *(v2 + 80);

    v11 = sub_10048C144(a1, v10);

    if (v11)
    {
LABEL_11:

      return 2;
    }

    v12 = *(v2 + 72);
    v13 = *(v12 + 16);

    v14 = 0;
    while (v13 != v14)
    {
      v15 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
      v16 = static Lyrics.TextLine.== infix(_:_:)(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v14++, a1);
      if (v16)
      {

        goto LABEL_11;
      }
    }
  }

  return 4;
}

uint64_t sub_10033ABD0(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10010FC20(&qword_10118BCF0);
  __chkstk_darwin(v74);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  v12 = sub_10010FC20(&qword_101184020);
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v72 = &v62 - v14;
  __chkstk_darwin(v15);
  v73 = &v62 - v16;
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  __chkstk_darwin(v21);
  v25 = &v62 - v24;
  v26 = *(v1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (!v26)
  {
    return 0;
  }

  v70 = v23;
  v67 = v22;
  v68 = v6;
  swift_beginAccess();
  v27 = *(v26 + 72);
  v28 = *(v27 + 16);
  if (v28 < 2)
  {
    return 0;
  }

  v69 = v3;
  v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v71 = v4;
  v30 = *(v4 + 72);
  v65 = v8;
  v66 = v29;
  v31 = v27 + v29;

  v32 = v28 + 1;
  do
  {
    if (!--v32)
    {

      return 0;
    }

    v33 = static Lyrics.TextLine.== infix(_:_:)(v31, a1);
    v31 += v30;
  }

  while ((v33 & 1) == 0);

  sub_10033F418(a1, v25, type metadata accessor for Lyrics.TextLine);
  v34 = v71 + 56;
  v35 = *(v71 + 56);
  v36 = 1;
  v37 = v69;
  v35(v25, 0, 1, v69);
  v38 = *(v26 + 72);
  if (*(v38 + 16))
  {
    sub_10033F418(v38 + v66, v20, type metadata accessor for Lyrics.TextLine);
    v36 = 0;
  }

  v63 = v35;
  v64 = v34;
  v35(v20, v36, 1, v37);
  v39 = *(v74 + 48);
  sub_1000089F8(v25, v11, &qword_101184020);
  v40 = v39;
  v41 = v69;
  sub_1000089F8(v20, &v11[v39], &qword_101184020);
  v43 = v71 + 48;
  v42 = *(v71 + 48);
  v44 = v42(v11, 1, v41);
  v62 = v42;
  v71 = v43;
  if (v44 == 1)
  {
    sub_1000095E8(v20, &qword_101184020);
    sub_1000095E8(v25, &qword_101184020);
    if (v62(&v11[v40], 1, v41) == 1)
    {
      sub_1000095E8(v11, &qword_101184020);
LABEL_20:

      return 1;
    }
  }

  else
  {
    sub_1000089F8(v11, v70, &qword_101184020);
    if (v42(&v11[v40], 1, v41) != 1)
    {
      v53 = v68;
      sub_1001EC250(&v11[v40], v68);
      v54 = v70;
      v55 = static Lyrics.TextLine.== infix(_:_:)(v70, v53);
      sub_10033F754(v53, type metadata accessor for Lyrics.TextLine);
      sub_1000095E8(v20, &qword_101184020);
      sub_1000095E8(v25, &qword_101184020);
      sub_10033F754(v54, type metadata accessor for Lyrics.TextLine);
      sub_1000095E8(v11, &qword_101184020);
      v41 = v69;
      if (v55)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    sub_1000095E8(v20, &qword_101184020);
    sub_1000095E8(v25, &qword_101184020);
    sub_10033F754(v70, type metadata accessor for Lyrics.TextLine);
    v41 = v69;
  }

  sub_1000095E8(v11, &qword_10118BCF0);
LABEL_17:
  v46 = a1;
  v47 = v73;
  sub_10033F418(v46, v73, type metadata accessor for Lyrics.TextLine);
  v48 = 1;
  v63(v47, 0, 1, v41);
  v49 = *(v26 + 72);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v72;
    sub_10033F418(v49 + v66 + (v50 - 1) * v30, v72, type metadata accessor for Lyrics.TextLine);
    v48 = 0;
    v52 = v65;
  }

  else
  {
    v52 = v65;
    v51 = v72;
  }

  v63(v51, v48, 1, v41);
  v56 = *(v74 + 48);
  sub_1000089F8(v47, v52, &qword_101184020);
  sub_1000089F8(v51, v52 + v56, &qword_101184020);
  v57 = v62;
  if (v62(v52, 1, v41) == 1)
  {

    sub_1000095E8(v51, &qword_101184020);
    sub_1000095E8(v47, &qword_101184020);
    if (v57(v52 + v56, 1, v41) == 1)
    {
      sub_1000095E8(v52, &qword_101184020);
      return 3;
    }

    goto LABEL_27;
  }

  v58 = v67;
  sub_1000089F8(v52, v67, &qword_101184020);
  if (v57(v52 + v56, 1, v41) == 1)
  {

    sub_1000095E8(v51, &qword_101184020);
    sub_1000095E8(v47, &qword_101184020);
    sub_10033F754(v58, type metadata accessor for Lyrics.TextLine);
LABEL_27:
    sub_1000095E8(v52, &qword_10118BCF0);
    return 2;
  }

  v59 = v52 + v56;
  v60 = v68;
  sub_1001EC250(v59, v68);
  v61 = static Lyrics.TextLine.== infix(_:_:)(v58, v60);

  sub_10033F754(v60, type metadata accessor for Lyrics.TextLine);
  sub_1000095E8(v51, &qword_101184020);
  sub_1000095E8(v47, &qword_101184020);
  sub_10033F754(v58, type metadata accessor for Lyrics.TextLine);
  sub_1000095E8(v52, &qword_101184020);
  if (v61)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void sub_10033B470(uint64_t a1)
{
  v2 = v1;
  v91 = a1;
  v90 = sub_10010FC20(&unk_10118B970);
  __chkstk_darwin(v90);
  v89 = v75 - v3;
  v4 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v4 - 8);
  v77 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = v75 - v7;
  v8 = sub_10010FC20(&qword_101184020);
  __chkstk_darwin(v8 - 8);
  v10 = v75 - v9;
  v95 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(v95 - 8);
  __chkstk_darwin(v95);
  v13 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v76 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v96 = v75 - v18;
  __chkstk_darwin(v19);
  v21 = v75 - v20;
  v22 = sub_100338DE4();
  v23 = [v22 visibleCells];

  sub_100009F78(0, &unk_101184750);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
LABEL_46:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_47:

    return;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_47;
  }

LABEL_3:
  v88 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v87 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource;
  v94 = v24 & 0xC000000000000001;
  v93 = v24 & 0xFFFFFFFFFFFFFF8;
  v81 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager;
  v92 = v24 + 32;
  v99 = (v15 + 32);
  v85 = (v11 + 48);
  v80 = (v15 + 16);
  v79 = (v15 + 56);
  v78 = (v15 + 48);
  v100 = (v15 + 8);
  v15 = 0;
  v75[1] = v108;
  v83 = v10;
  v82 = v25;
  v98 = v13;
  v84 = v2;
  v105 = v21;
  v86 = v24;
  while (1)
  {
    if (v94)
    {
      v26 = sub_1007E97A0(v15, v24);
    }

    else
    {
      if (v15 >= *(v93 + 16))
      {
        goto LABEL_45;
      }

      v26 = *(v92 + 8 * v15);
    }

    v106 = v26;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v104 = v15;
    _s8LineCellCMa();
    v28 = swift_dynamicCastClass();
    if (!v28 || (v29 = v28, (v30 = [*(v2 + v88) indexPathForCell:v28]) == 0))
    {

      return;
    }

    v31 = v30;
    v32 = v96;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *v99;
    (*v99)(v21, v32, v14);
    v34 = *(v2 + v87);
    if (!v34)
    {
      break;
    }

    v35 = v34;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*v85)(v10, 1, v95) == 1)
    {
      (*v100)(v105, v14);

      sub_1000095E8(v10, &qword_101184020);
      return;
    }

    v97 = v33;
    sub_1001EC250(v10, v13);
    *(v29 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) = sub_10033ABD0(v13);
    sub_1007F3A40();
    v36 = *(v2 + v81);
    v103 = v29;
    if (v36)
    {
      v37 = v14;
      swift_beginAccess();
      v38 = *(v36 + 72);
      v39 = *(v38 + 16);

      v40 = 0;
      v41 = v78;
      while (v39 != v40)
      {
        v42 = v40 + 1;
        v43 = static Lyrics.TextLine.== infix(_:_:)(v38 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v40, v13);
        v40 = v42;
        if (v43)
        {

          v44 = 1;
          goto LABEL_27;
        }
      }

      swift_beginAccess();
      v45 = *(v36 + 80);

      v46 = sub_10048C144(v13, v45);

      if (v46)
      {
LABEL_25:

        v44 = 2;
      }

      else
      {
        v47 = *(v36 + 72);
        v48 = *(v47 + 16);

        v49 = 0;
        while (v48 != v49)
        {
          v50 = v49 + 1;
          v51 = static Lyrics.TextLine.== infix(_:_:)(v47 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v49, v13);
          v49 = v50;
          if (v51)
          {

            goto LABEL_25;
          }
        }

        v44 = 4;
      }

LABEL_27:
      v102 = v44;
      v14 = v37;
    }

    else
    {
      v102 = 4;
      v41 = v78;
    }

    v52 = v101;
    (*v80)(v101, v105, v14);
    (*v79)(v52, 0, 1, v14);
    v53 = *(v90 + 48);
    v54 = v89;
    sub_1000089F8(v91, v89, &unk_10118BCE0);
    sub_1000089F8(v52, v54 + v53, &unk_10118BCE0);
    v55 = v14;
    v56 = *v41;
    if ((*v41)(v54, 1, v55) != 1)
    {
      v59 = v77;
      sub_1000089F8(v54, v77, &unk_10118BCE0);
      if (v56(v54 + v53, 1, v55) == 1)
      {
        sub_1000095E8(v101, &unk_10118BCE0);
        (*v100)(v59, v55);
        v2 = v84;
        v14 = v55;
LABEL_34:
        sub_1000095E8(v54, &unk_10118B970);
        v10 = v83;
        v24 = v86;
        v13 = v98;
        if (v102 == *(v103 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state))
        {
          goto LABEL_5;
        }

        *(v103 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = v102;
      }

      else
      {
        v60 = v76;
        v97(v76, v54 + v53, v55);
        sub_1000296C8(&qword_101192840, &type metadata accessor for IndexPath);
        LODWORD(v97) = dispatch thunk of static Equatable.== infix(_:_:)();
        v61 = *v100;
        (*v100)(v60, v55);
        sub_1000095E8(v101, &unk_10118BCE0);
        v61(v59, v55);
        sub_1000095E8(v54, &unk_10118BCE0);
        v58 = v103;
        v2 = v84;
        v10 = v83;
        v14 = v55;
        v24 = v86;
        v13 = v98;
        if (v102 == *(v103 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state))
        {
          goto LABEL_5;
        }

        *(v103 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = v102;
        if (v97)
        {
          goto LABEL_38;
        }
      }

      sub_1007F31FC();
      goto LABEL_5;
    }

    sub_1000095E8(v52, &unk_10118BCE0);
    v57 = v56(v54 + v53, 1, v55);
    v2 = v84;
    v14 = v55;
    if (v57 != 1)
    {
      goto LABEL_34;
    }

    sub_1000095E8(v54, &unk_10118BCE0);
    v58 = v103;
    v10 = v83;
    v24 = v86;
    v13 = v98;
    if (v102 != *(v103 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state))
    {
      *(v103 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = v102;
LABEL_38:
      if (qword_10117FE28 != -1)
      {
        swift_once();
      }

      v62 = qword_101219768;
      v63 = objc_opt_self();
      [v62 settlingDuration];
      v65 = v64;
      [v62 mass];
      v67 = v66;
      [v62 stiffness];
      v69 = v68;
      [v62 damping];
      v71 = v70;
      v72 = swift_allocObject();
      *(v72 + 16) = v58;
      v108[2] = sub_10033F718;
      v108[3] = v72;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v108[0] = sub_10002BC98;
      v108[1] = &unk_1010A7868;
      v73 = _Block_copy(aBlock);
      v74 = v106;

      [v63 _animateUsingSpringWithDuration:6 delay:v73 options:0 mass:v65 stiffness:0.0 damping:v67 initialVelocity:v69 animations:v71 completion:0.0];
      _Block_release(v73);
      v13 = v98;
    }

LABEL_5:

    sub_10033F754(v13, type metadata accessor for Lyrics.TextLine);
    v21 = v105;
    (*v100)(v105, v14);
    v15 = v104;
    if (v104 == v82)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
}

id sub_10033C130(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  *&v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager] = 0;
  v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition] = 0;
  *&v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource] = 0;
  v10 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator;
  v11 = [objc_allocWithZone(UIActivityIndicatorView) init];
  v12 = UIView.forAutolayout.getter();

  *&v4[v10] = v12;
  *&v4[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem] = 0;
  v4[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset] = 0;
  *&v4[OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView] = 0;
  v13 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x685373636972794CLL, 0xED0000676E697261, 0x4D747865746E6F43, 0xEB00000000756E65, v9, 0, 0, 0, &v4[v13]);
  if (a2)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for LyricsSelectionViewController();
  v19.receiver = v4;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v15, a3);

  return v17;
}

id sub_10033C398(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  *&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager] = 0;
  v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition] = 0;
  *&v1[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource] = 0;
  v7 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_activityIndicator;
  v8 = [objc_allocWithZone(UIActivityIndicatorView) init];
  v9 = UIView.forAutolayout.getter();

  *&v2[v7] = v9;
  *&v2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_displayActivityIndicatorWorkItem] = 0;
  v2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset] = 0;
  *&v2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView] = 0;
  v10 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties;
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x685373636972794CLL, 0xED0000676E697261, 0x4D747865746E6F43, 0xEB00000000756E65, v6, 0, 0, 0, &v2[v10]);
  v12 = type metadata accessor for LyricsSelectionViewController();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id sub_10033C59C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsSelectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LyricsSelectionViewController()
{
  result = qword_10118BCC8;
  if (!qword_10118BCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10033C6BC()
{
  result = type metadata accessor for MetricsPageProperties();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10033C8C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v133 = type metadata accessor for Logger();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v130 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v136 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v11 - 8);
  v138 = (&v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v13 - 8);
  v139 = &v126 - v14;
  v15 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v15 - 8);
  v140 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v126 - v18;
  v20 = sub_10010FC20(&qword_101184020);
  __chkstk_darwin(v20 - 8);
  v22 = &v126 - v21;
  v23 = type metadata accessor for Lyrics.TextLine(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v135 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v134 = &v126 - v27;
  __chkstk_darwin(v28);
  v137 = &v126 - v29;
  __chkstk_darwin(v30);
  v32 = &v126 - v31;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:0];

  v34 = *&v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager];
  if (v34)
  {
    v35 = *&v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
    if (!v35)
    {
      __break(1u);
      return;
    }

    v36 = v35;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {

      sub_1000095E8(v22, &qword_101184020);
      return;
    }

    v129 = v3;
    v37 = v32;
    sub_1001EC250(v22, v32);
    swift_beginAccess();
    v38 = *(v34 + 72);
    if (*(v38 + 16) == 1)
    {
      v39 = v137;
      sub_10033F418(v38 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v137, type metadata accessor for Lyrics.TextLine);
      v40 = static Lyrics.TextLine.== infix(_:_:)(v32, v39);
      sub_10033F754(v39, type metadata accessor for Lyrics.TextLine);
      if (v40)
      {
        sub_10033FF60(v32);
        v41 = type metadata accessor for IndexPath();
        v42 = *(v41 - 8);
        v127 = v34;
        v43 = v42;
        (*(v42 + 16))(v19, a2, v41);
        (*(v43 + 56))(v19, 0, 1, v41);
        v44 = v129;
        sub_10033B470(v19);
        sub_1000095E8(v19, &unk_10118BCE0);
        aBlock[0] = *(v32 + 2);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        v48 = type metadata accessor for URL();
        v49 = v139;
        (*(*(v48 - 8) + 56))(v139, 1, 1, v48);
        v50 = v138;
        sub_10033F418(v44 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties, v138, type metadata accessor for MetricsPageProperties);
        v51 = v140;
        MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v45, v47, 14, 17, v49, 0, 0, 12, v140, 0, 0, 0xFF00u, v50, 0);
        v52 = *MetricsReportingController.shared.unsafeMutableAddressor();
        v53 = sub_10053771C();
        v55 = v54;
        if (qword_10117F600 != -1)
        {
          swift_once();
        }

        v56 = qword_101218AD0;
        v57 = GroupActivitiesManager.hasJoined.getter();
        v58 = GroupActivitiesManager.participantsCount.getter();
        v59 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
        swift_beginAccess();
        (*((swift_isaMask & *v52) + 0xB8))(v51, v53, v55, v57 & 1, v58, *(v56 + v59));

        [v44 accessibilityDidSelectItem];

        sub_10033F754(v51, type metadata accessor for MetricsEvent.Click);
        v60 = v37;
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    v61 = *(v34 + 80);

    v62 = v34;
    v63 = sub_10048C144(v32, v61);

    v128 = v32;
    if (v63)
    {
LABEL_15:
      sub_10033F820(v37);
      v69 = type metadata accessor for IndexPath();
      v70 = *(v69 - 8);
      (*(v70 + 16))(v19, a2, v69);
      (*(v70 + 56))(v19, 0, 1, v69);
      v71 = v129;
      sub_10033B470(v19);
      sub_1000095E8(v19, &unk_10118BCE0);
      aBlock[0] = *(v37 + 16);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v75 = type metadata accessor for URL();
      v76 = v139;
      (*(*(v75 - 8) + 56))(v139, 1, 1, v75);
      v77 = v138;
      sub_10033F418(v71 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties, v138, type metadata accessor for MetricsPageProperties);
      v78 = v140;
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v72, v74, 14, 44, v76, 0, 0, 12, v140, 0, 0, 0xFF00u, v77, 0);
      v79 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v80 = sub_10053771C();
      v82 = v81;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v83 = qword_101218AD0;
      v84 = GroupActivitiesManager.hasJoined.getter();
      v85 = GroupActivitiesManager.participantsCount.getter();
      v86 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v79) + 0xB8))(v78, v80, v82, v84 & 1, v85, *(v83 + v86));

      [v71 accessibilityDidSelectItem];

      sub_10033F754(v78, type metadata accessor for MetricsEvent.Click);
      goto LABEL_18;
    }

    v127 = v62;
    v64 = *(v62 + 72);
    v65 = *(v64 + 16);

    v66 = 0;
    while (v65 != v66)
    {
      v67 = v66 + 1;
      v68 = static Lyrics.TextLine.== infix(_:_:)(v64 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v66, v32);
      v66 = v67;
      if (v68)
      {

        v37 = v32;
        goto LABEL_15;
      }
    }

    (*&v32[*(v23 + 64)])(v87);
    v88 = String.count.getter();

    v89 = sub_1001EBB88();
    if (v90)
    {
      v91 = v134;
      v92 = v135;
      if (v88 <= 150)
      {
LABEL_23:
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v93 = String._bridgeToObjectiveC()();

        v94 = String._bridgeToObjectiveC()();

        v95 = [objc_opt_self() alertControllerWithTitle:v93 message:v94 preferredStyle:1];

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v96 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v97 = v32;
        v98 = v137;
        sub_10033F418(v97, v137, type metadata accessor for Lyrics.TextLine);
        v99 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v100 = swift_allocObject();
        v101 = v127;
        *(v100 + 16) = v96;
        *(v100 + 24) = v101;
        sub_1001EC250(v98, v100 + v99);

        v102 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_10033F480;
        aBlock[5] = v100;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10027D328;
        aBlock[3] = &unk_1010A7818;
        v103 = _Block_copy(aBlock);

        v104 = objc_opt_self();
        v105 = [v104 actionWithTitle:v102 style:2 handler:v103];
        _Block_release(v103);

        [v95 addAction:v105];
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v106 = String._bridgeToObjectiveC()();

        v107 = [v104 actionWithTitle:v106 style:1 handler:0];

        [v95 addAction:v107];
        [v129 presentViewController:v95 animated:1 completion:0];

LABEL_18:
        v60 = v128;
LABEL_19:
        sub_10033F754(v60, type metadata accessor for Lyrics.TextLine);
        return;
      }
    }

    else
    {
      v91 = v134;
      v92 = v135;
      if (v89 >= v88)
      {
        goto LABEL_23;
      }
    }

    v108 = Logger.lyrics.unsafeMutableAddressor();
    v109 = v132;
    v110 = v131;
    v111 = v133;
    (*(v132 + 16))(v131, v108, v133);
    sub_10033F418(v32, v91, type metadata accessor for Lyrics.TextLine);
    sub_10033F418(v32, v92, type metadata accessor for Lyrics.TextLine);
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = v91;
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      aBlock[0] = v116;
      *v115 = 136446722;
      v117 = (*(v114 + *(v23 + 64)))();
      v119 = v118;
      sub_10033F754(v114, type metadata accessor for Lyrics.TextLine);
      v120 = sub_1000105AC(v117, v119, aBlock);

      *(v115 + 4) = v120;
      *(v115 + 12) = 2050;
      (*(v92 + *(v23 + 64)))(v121);
      v122 = String.count.getter();

      sub_10033F754(v92, type metadata accessor for Lyrics.TextLine);
      *(v115 + 14) = v122;
      *(v115 + 22) = 2050;
      v123 = sub_1001EBB88();
      v125 = 150;
      if ((v124 & 1) == 0)
      {
        v125 = v123;
      }

      *(v115 + 24) = v125;
      _os_log_impl(&_mh_execute_header, v112, v113, "Trying to share a line that is too long to be shared (text=%{public}s, length=%{public}ld, maxCharacterCount=%{public}ld)", v115, 0x20u);
      sub_10000959C(v116);

      (*(v132 + 8))(v131, v133);
      v60 = v128;
    }

    else
    {
      sub_10033F754(v92, type metadata accessor for Lyrics.TextLine);

      (*(v109 + 8))(v110, v111);
      sub_10033F754(v91, type metadata accessor for Lyrics.TextLine);
      v60 = v32;
    }

    goto LABEL_19;
  }
}