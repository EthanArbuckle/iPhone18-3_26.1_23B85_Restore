uint64_t sub_1010B96B8()
{
  if (*(v0[126] + v0[147]) == 1)
  {
    v0[166] = static MainActor.shared.getter();
    v1 = swift_task_alloc();
    v0[167] = v1;
    *v1 = v0;
    v1[1] = sub_1010B97B0;
    v2 = v0[129];

    return sub_1010C90E8(v2);
  }

  else
  {

    v4 = v0[136];
    v5 = v0[135];

    return _swift_task_switch(sub_101107D00, v5, v4);
  }
}

uint64_t sub_1010B97B0()
{
  *(*v1 + 1344) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1010BA120;
  }

  else
  {
    v4 = sub_1010B9908;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1010B9908()
{

  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);

  return _swift_task_switch(sub_1010B9970, v2, v1);
}

uint64_t sub_1010B9970()
{

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);

  return _swift_task_switch(sub_1010B99D8, v2, v1);
}

uint64_t sub_1010B99D8()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1096);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Joined share deletion for: %{public}@", 37, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  while (1)
  {
    v16 = sub_10003D87C(*(v0 + 1032), type metadata accessor for CRLBoardIdentifier);
    v19 = *(v0 + 1200);
    v20 = *(v0 + 1192);
    if (!v20)
    {
      break;
    }

    v21 = *(v0 + 1168);
LABEL_13:
    v26 = *(v0 + 1048);
    v27 = *(v0 + 1040);
    v28 = (v20 - 1) & v20;
    v29 = __clz(__rbit64(v20)) | (v19 << 6);
    sub_10005006C(*(v21 + 48) + *(*(v0 + 1016) + 72) * v29, v27, type metadata accessor for CRLBoardIdentifier);
    LOBYTE(v29) = *(*(v21 + 56) + v29);
    v30 = sub_1005B981C(&unk_101A23C30);
    v31 = *(v30 + 48);
    sub_100025738(v27, v26, type metadata accessor for CRLBoardIdentifier);
    *(v26 + v31) = v29;
    (*(*(v30 - 8) + 56))(v26, 0, 1, v30);
    v24 = v19;
LABEL_14:
    *(v0 + 1200) = v24;
    *(v0 + 1192) = v28;
    v32 = *(v0 + 1056);
    sub_10003DFF8(*(v0 + 1048), v32, &qword_101A23C28);
    v33 = sub_1005B981C(&unk_101A23C30);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {

      v38 = *(v0 + 952);
      *(v0 + 1352) = v38;
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = *(v0 + 1096);
        v41 = *(v0 + 1008);
        v42 = swift_initStackObject();
        *(v42 + 16) = xmmword_10146C6B0;
        *(v42 + 56) = &type metadata for Int;
        *(v42 + 64) = &protocol witness table for Int;
        *(v42 + 32) = v39;
        v43 = static os_log_type_t.default.getter();
        sub_100005404(v40, &_mh_execute_header, v43, "Encountered error while deleting %d board(s). Adding them to the list of boards to retry deletion.", 98, 2, v42);
        swift_setDeallocating();
        sub_100005070(v42 + 32);
        *(v0 + 1360) = *(v41 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
        v44 = sub_1010BAA78;
      }

      else
      {
        v59 = *(v0 + 1000);

        sub_1012D515C(v38);
        *(v0 + 1392) = v59;
        v51 = *(v59 + 16);
        if (v51)
        {
          v52 = *(v0 + 1096);
          v53 = *(v0 + 1008);
          v54 = swift_initStackObject();
          *(v54 + 16) = xmmword_10146C6B0;
          *(v54 + 56) = &type metadata for Int;
          *(v54 + 64) = &protocol witness table for Int;
          *(v54 + 32) = v51;
          v55 = static os_log_type_t.default.getter();
          sub_100005404(v52, &_mh_execute_header, v55, "Successfully deleted %d boards", 30, 2, v54);
          swift_setDeallocating();
          sub_100005070(v54 + 32);
          *(v0 + 1400) = *(v53 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          v44 = sub_1010BAF74;
        }

        else
        {

          *(v0 + 1432) = *(*(v0 + 1008) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          *(v0 + 1440) = *(v0 + 960);
          v44 = sub_1010BB330;
        }
      }

      v16 = v44;
      v17 = 0;
      v18 = 0;
      goto LABEL_29;
    }

    v34 = *(v0 + 1056);
    v35 = *(v34 + *(v33 + 48));
    sub_100025738(v34, *(v0 + 1032), type metadata accessor for CRLBoardIdentifier);
    if (v35 <= 1)
    {
      v7 = *(v0 + 1112);
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1040);
      v10 = *(v0 + 1032);
      v11 = *(v0 + 1024);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146C6B0;
      v13 = UUID.uuidString.getter();
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = v7;
      *(v12 + 32) = v13;
      *(v12 + 40) = v14;
      v15 = static os_log_type_t.default.getter();
      sub_100005404(v8, &_mh_execute_header, v15, "Local deletion for: %{public}@", 30, 2, v12);
      swift_setDeallocating();
      sub_100005070(v12 + 32);
      sub_10005006C(v10, v11, type metadata accessor for CRLBoardIdentifier);
      sub_100031F10(v9, v11);
      sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      if (v35 != 4)
      {
        v45 = *(v0 + 1040);
        v46 = *(v0 + 1024);
        sub_10005006C(*(v0 + 1032), v46, type metadata accessor for CRLBoardIdentifier);
        sub_100031F10(v45, v46);
        sub_10003D87C(v45, type metadata accessor for CRLBoardIdentifier);
        v47 = static MainActor.shared.getter();
        if (v35 == 2)
        {
          *(v0 + 1208) = v47;
          v48 = dispatch thunk of Actor.unownedExecutor.getter();
          v18 = v49;
          *(v0 + 1216) = v48;
          *(v0 + 1224) = v49;
          v50 = sub_1010B7F78;
        }

        else
        {
          *(v0 + 1304) = v47;
          v48 = dispatch thunk of Actor.unownedExecutor.getter();
          v18 = v56;
          *(v0 + 1312) = v48;
          *(v0 + 1320) = v56;
          v50 = sub_1010B96B8;
        }

        v16 = v50;
        v17 = v48;
LABEL_29:

        return _swift_task_switch(v16, v17, v18);
      }

      LOBYTE(v58) = 2;
      sub_10098EE94("Do not call method", 18, 2, &_mh_execute_header, "deleteBoards(boardIdentifiers:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardLibrary.swift", 87, v58, 1505);
    }
  }

  v22 = ((1 << *(v0 + 1504)) + 63) >> 6;
  if (v22 <= (v19 + 1))
  {
    v23 = v19 + 1;
  }

  else
  {
    v23 = ((1 << *(v0 + 1504)) + 63) >> 6;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      v36 = *(v0 + 1048);
      v37 = sub_1005B981C(&unk_101A23C30);
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
      v28 = 0;
      goto LABEL_14;
    }

    v21 = *(v0 + 1168);
    v20 = *(v21 + 8 * v25 + 64);
    ++v19;
    if (v20)
    {
      v19 = v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1010BA120()
{

  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);

  return _swift_task_switch(sub_1010BA188, v2, v1);
}

uint64_t sub_1010BA188()
{

  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = v0[139];
  v2 = static OS_os_log.shareState;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Unable to unshare board before deleting due to error, will reattempt again later %@", 83, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = v0[136];
  v8 = v0[135];

  return _swift_task_switch(sub_1010BA2DC, v8, v7);
}

uint64_t sub_1010BA2DC()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "Joined share deletion failed, retrying: %{public}@", 50, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_10005006C(v4, v5, type metadata accessor for CRLBoardIdentifier);
  sub_100031F10(v3, v5);
  sub_10003D87C(v3, type metadata accessor for CRLBoardIdentifier);
  while (1)
  {
    v19 = sub_10003D87C(*(v0 + 1032), type metadata accessor for CRLBoardIdentifier);
    v22 = *(v0 + 1200);
    v23 = *(v0 + 1192);
    if (!v23)
    {
      break;
    }

    v24 = *(v0 + 1168);
LABEL_13:
    v29 = *(v0 + 1048);
    v30 = *(v0 + 1040);
    v31 = (v23 - 1) & v23;
    v32 = __clz(__rbit64(v23)) | (v22 << 6);
    sub_10005006C(*(v24 + 48) + *(*(v0 + 1016) + 72) * v32, v30, type metadata accessor for CRLBoardIdentifier);
    LOBYTE(v32) = *(*(v24 + 56) + v32);
    v33 = sub_1005B981C(&unk_101A23C30);
    v34 = *(v33 + 48);
    sub_100025738(v30, v29, type metadata accessor for CRLBoardIdentifier);
    *(v29 + v34) = v32;
    (*(*(v33 - 8) + 56))(v29, 0, 1, v33);
    v27 = v22;
LABEL_14:
    *(v0 + 1200) = v27;
    *(v0 + 1192) = v31;
    v35 = *(v0 + 1056);
    sub_10003DFF8(*(v0 + 1048), v35, &qword_101A23C28);
    v36 = sub_1005B981C(&unk_101A23C30);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {

      v41 = *(v0 + 952);
      *(v0 + 1352) = v41;
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = *(v0 + 1096);
        v44 = *(v0 + 1008);
        v45 = swift_initStackObject();
        *(v45 + 16) = xmmword_10146C6B0;
        *(v45 + 56) = &type metadata for Int;
        *(v45 + 64) = &protocol witness table for Int;
        *(v45 + 32) = v42;
        v46 = static os_log_type_t.default.getter();
        sub_100005404(v43, &_mh_execute_header, v46, "Encountered error while deleting %d board(s). Adding them to the list of boards to retry deletion.", 98, 2, v45);
        swift_setDeallocating();
        sub_100005070(v45 + 32);
        *(v0 + 1360) = *(v44 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
        v47 = sub_1010BAA78;
      }

      else
      {
        v62 = *(v0 + 1000);

        sub_1012D515C(v41);
        *(v0 + 1392) = v62;
        v54 = *(v62 + 16);
        if (v54)
        {
          v55 = *(v0 + 1096);
          v56 = *(v0 + 1008);
          v57 = swift_initStackObject();
          *(v57 + 16) = xmmword_10146C6B0;
          *(v57 + 56) = &type metadata for Int;
          *(v57 + 64) = &protocol witness table for Int;
          *(v57 + 32) = v54;
          v58 = static os_log_type_t.default.getter();
          sub_100005404(v55, &_mh_execute_header, v58, "Successfully deleted %d boards", 30, 2, v57);
          swift_setDeallocating();
          sub_100005070(v57 + 32);
          *(v0 + 1400) = *(v56 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          v47 = sub_1010BAF74;
        }

        else
        {

          *(v0 + 1432) = *(*(v0 + 1008) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
          *(v0 + 1440) = *(v0 + 960);
          v47 = sub_1010BB330;
        }
      }

      v19 = v47;
      v20 = 0;
      v21 = 0;
      goto LABEL_29;
    }

    v37 = *(v0 + 1056);
    v38 = *(v37 + *(v36 + 48));
    sub_100025738(v37, *(v0 + 1032), type metadata accessor for CRLBoardIdentifier);
    if (v38 <= 1)
    {
      v10 = *(v0 + 1112);
      v11 = *(v0 + 1096);
      v12 = *(v0 + 1040);
      v13 = *(v0 + 1032);
      v14 = *(v0 + 1024);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_10146C6B0;
      v16 = UUID.uuidString.getter();
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = v10;
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
      v18 = static os_log_type_t.default.getter();
      sub_100005404(v11, &_mh_execute_header, v18, "Local deletion for: %{public}@", 30, 2, v15);
      swift_setDeallocating();
      sub_100005070(v15 + 32);
      sub_10005006C(v13, v14, type metadata accessor for CRLBoardIdentifier);
      sub_100031F10(v12, v14);
      sub_10003D87C(v12, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      if (v38 != 4)
      {
        v48 = *(v0 + 1040);
        v49 = *(v0 + 1024);
        sub_10005006C(*(v0 + 1032), v49, type metadata accessor for CRLBoardIdentifier);
        sub_100031F10(v48, v49);
        sub_10003D87C(v48, type metadata accessor for CRLBoardIdentifier);
        v50 = static MainActor.shared.getter();
        if (v38 == 2)
        {
          *(v0 + 1208) = v50;
          v51 = dispatch thunk of Actor.unownedExecutor.getter();
          v21 = v52;
          *(v0 + 1216) = v51;
          *(v0 + 1224) = v52;
          v53 = sub_1010B7F78;
        }

        else
        {
          *(v0 + 1304) = v50;
          v51 = dispatch thunk of Actor.unownedExecutor.getter();
          v21 = v59;
          *(v0 + 1312) = v51;
          *(v0 + 1320) = v59;
          v53 = sub_1010B96B8;
        }

        v19 = v53;
        v20 = v51;
LABEL_29:

        return _swift_task_switch(v19, v20, v21);
      }

      LOBYTE(v61) = 2;
      sub_10098EE94("Do not call method", 18, 2, &_mh_execute_header, "deleteBoards(boardIdentifiers:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardLibrary.swift", 87, v61, 1505);
    }
  }

  v25 = ((1 << *(v0 + 1504)) + 63) >> 6;
  if (v25 <= (v22 + 1))
  {
    v26 = v22 + 1;
  }

  else
  {
    v26 = ((1 << *(v0 + 1504)) + 63) >> 6;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      v39 = *(v0 + 1048);
      v40 = sub_1005B981C(&unk_101A23C30);
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      v31 = 0;
      goto LABEL_14;
    }

    v24 = *(v0 + 1168);
    v23 = *(v24 + 8 * v28 + 64);
    ++v22;
    if (v23)
    {
      v22 = v28;
      goto LABEL_13;
    }
  }

  __break(1u);
  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1010BAA78()
{
  v1 = v0[170];
  v2 = v0[169];
  v3 = swift_task_alloc();
  v0[171] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[172] = v4;
  *v4 = v0;
  v4[1] = sub_1010BAB70;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000021, 0x80000001015C2550, sub_101107358, v3, &type metadata for () + 8);
}

uint64_t sub_1010BAB70()
{
  *(*v1 + 1384) = v0;

  if (v0)
  {
    v2 = sub_1010BAC8C;
  }

  else
  {

    v2 = sub_1010BADD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010BAC8C()
{

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);

  return _swift_task_switch(sub_1010BAD10, v2, v1);
}

uint64_t sub_1010BAD10()
{

  sub_1010E83E4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010BADF0()
{
  v1 = v0[169];
  v2 = v0[125];
  if (*(v1 + 16) <= v2[2] >> 3)
  {
    v11 = v0[125];

    sub_1012D515C(v1);
    v3 = v11;
  }

  else
  {

    v3 = sub_1012D77B4(v1, v2);
  }

  v0[174] = v3;
  v4 = v3[2];
  if (v4)
  {
    v5 = v0[137];
    v6 = v0[126];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v4;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v5, &_mh_execute_header, v8, "Successfully deleted %d boards", 30, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v0[175] = *(v6 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
    v9 = sub_1010BAF74;
  }

  else
  {

    v0[179] = *(v0[126] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
    v0[180] = v0[120];
    v9 = sub_1010BB330;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1010BAF74()
{
  v1 = swift_task_alloc();
  *(v0 + 1408) = v1;
  *(v1 + 16) = *(v0 + 1392);
  v2 = swift_task_alloc();
  *(v0 + 1416) = v2;
  *v2 = v0;
  v2[1] = sub_1010BB060;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000026, 0x80000001015C25A0, sub_101107360, v1, &type metadata for () + 8);
}

uint64_t sub_1010BB060()
{
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v2 = sub_1010BB1DC;
  }

  else
  {

    v2 = sub_1010BB188;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010BB1A4()
{
  v0[179] = *(v0[126] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  v0[180] = v0[120];
  return _swift_task_switch(sub_1010BB330, 0, 0);
}

uint64_t sub_1010BB1DC()
{

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);

  return _swift_task_switch(sub_1010BB26C, v2, v1);
}

uint64_t sub_1010BB26C()
{

  sub_1010E83E4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010BB330()
{
  v1 = swift_task_alloc();
  *(v0 + 1448) = v1;
  *(v1 + 16) = *(v0 + 1432);
  *(v1 + 32) = 1;
  v2 = swift_task_alloc();
  *(v0 + 1456) = v2;
  *v2 = v0;
  v2[1] = sub_1010BB430;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000034, 0x80000001015C25D0, sub_101107368, v1, &type metadata for () + 8);
}

uint64_t sub_1010BB430()
{
  *(*v1 + 1464) = v0;

  if (v0)
  {
    v2 = sub_1010BB784;
  }

  else
  {

    v2 = sub_1010BB54C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010BB570()
{
  v1 = v0[184];
  v2 = v0[179];
  v3 = swift_task_alloc();
  v0[185] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[186] = v4;
  *v4 = v0;
  v4[1] = sub_1010BB668;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000002ALL, 0x80000001015C2610, sub_101107374, v3, &type metadata for () + 8);
}

uint64_t sub_1010BB668()
{
  *(*v1 + 1496) = v0;

  if (v0)
  {
    v2 = sub_1010BB8D0;
  }

  else
  {

    v2 = sub_1010BBA28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010BB784()
{

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);

  return _swift_task_switch(sub_1010BB80C, v2, v1);
}

uint64_t sub_1010BB80C()
{

  sub_1010E83E4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010BB8D0()
{

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);

  return _swift_task_switch(sub_1010BB964, v2, v1);
}

uint64_t sub_1010BB964()
{

  sub_1010E83E4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010BBA44()
{
  v1 = v0[125];

  v2 = sub_1010A8B04(v1);

  v3 = [objc_opt_self() defaultCenter];
  if (qword_1019F28A8 != -1)
  {
    swift_once();
  }

  v4 = v0[126];
  v5 = qword_101AD8F68;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[116] = 0xD000000000000019;
  v0[117] = 0x80000001015C2640;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for CRLDeletedBoardsModel;
  *(inited + 72) = v2;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v3 postNotificationName:v5 object:v4 userInfo:isa];

  sub_1010E83E4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1010BBCA0(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.realTimeSync;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "activateOpportunisticRealTimeCollaboration(boardIdentifier:) attempting to start opportunistic real-time collaboration.", 119, 2, _swiftEmptyArrayStorage);
  v12 = sub_1010BEDF8(a1);
  if (v12 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();

    if (v41)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13)
    {
      goto LABEL_8;
    }
  }

  v46 = a1;
  v47 = v4;
  v48 = v1;
  v45 = objc_opt_self();
  v14 = [v45 _atomicIncrementAssertCount];
  v49 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v49);
  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v15 lastPathComponent];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v17;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v14;
  v20 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v20;
  v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v21;
  v22 = v44;
  *(inited + 72) = v44;
  *(inited + 136) = &type metadata for String;
  v23 = sub_1000053B0();
  v24 = v42;
  *(inited + 112) = v43;
  *(inited + 120) = v24;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v23;
  *(inited + 152) = 2265;
  v25 = v49;
  *(inited + 216) = v20;
  *(inited + 224) = v21;
  *(inited + 192) = v25;
  v26 = v22;
  v27 = v25;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v29, "Collaboration can only be started on a board that is already open", 65, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v30 = swift_allocObject();
  v30[2] = 8;
  v30[3] = 0;
  v30[4] = 0;
  v30[5] = 0;
  v31 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  [v45 handleFailureInFunction:v32 file:v33 lineNumber:2265 isFatal:0 format:v34 args:v31];

  v1 = v48;
  v4 = v47;
  a1 = v46;
LABEL_8:
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  sub_10005006C(a1, &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for MainActor();
  v36 = v1;
  v37 = static MainActor.shared.getter();
  v38 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = &protocol witness table for MainActor;
  v39[4] = v36;
  sub_100025738(v6, v39 + v38, type metadata accessor for CRLBoardIdentifier);
  sub_100796D54(0, 0, v9, &unk_1014C5F38, v39);
}

uint64_t sub_1010BC334(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1010BC3CC, v4, v3);
}

uint64_t sub_1010BC3FC()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1010B5E0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001ALL, 0x80000001015C2440, sub_1011072EC, v3, &type metadata for () + 8);
}

NSString sub_1010BC4F4()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8F60 = result;
  return result;
}

NSString sub_1010BC52C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8F68 = result;
  return result;
}

id sub_1010BC564()
{
  ObjectType = swift_getObjectType();
  sub_1010BC5AC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1010BC5AC()
{
  v1 = [objc_opt_self() defaultCenter];
  v3 = v1;
  if (qword_1019F2520 != -1)
  {
    swift_once();
    v1 = v3;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  [v1 removeObserver:v0 name:qword_101AD8568 object:v2];
  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  [v3 removeObserver:v0 name:qword_101AD8570 object:v2];
  if (qword_1019F2530 != -1)
  {
    swift_once();
  }

  [v3 removeObserver:v0 name:qword_101AD8578 object:v2];
  if (qword_1019F2538 != -1)
  {
    swift_once();
  }

  [v3 removeObserver:v0 name:qword_101AD8580 object:v2];
  if (qword_1019F2540 != -1)
  {
    swift_once();
  }

  [v3 removeObserver:v0 name:qword_101AD8588 object:v2];
}

uint64_t sub_1010BCA34()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_networkReachabilityListener;
  swift_beginAccess();
  sub_10000BE14(v0 + v2, &v26, &qword_1019FD580);
  if (!v28)
  {
    return sub_10000CAAC(&v26, &qword_1019FD580);
  }

  sub_100050F74(&v26, v25);
  sub_100020E58(v25, v25[3]);
  type metadata accessor for CRLNetworkReachabilityListener();
  sub_100BEB694();
  v6 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_networkReachabilityListenerSubscriptionSet;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v22 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_101104B20(&qword_1019FB8C0, &type metadata accessor for AnyCancellable);
    Set.Iterator.init(_cocoa:)();
    v8 = *(&v26 + 1);
    v9 = v26;
    v10 = v27;
    v11 = v28;
    v12 = v29;
  }

  else
  {
    v13 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);
    v9 = *(v1 + v6);
    swift_bridgeObjectRetain_n();
    v11 = 0;
  }

  v16 = (v10 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_15:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
LABEL_21:
      sub_100035F90();

      *(v1 + v22) = _swiftEmptySetSingleton;

      v24 = 0;
      memset(v23, 0, sizeof(v23));
      swift_beginAccess();
      sub_10002C638(v23, v1 + v2, &qword_1019FD580);
      swift_endAccess();
      return sub_100005070(v25);
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v11 = v19;
      v12 = v20;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_17:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v19 = v11;
        v20 = v12;
        if (*&v23[0])
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_21;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  swift_once();
  v3 = static OS_os_log.crlBoardLibrary;
  v4 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "Failed to stop network reachability listener. We will continue to get network reachability status updates.", 106, 2, _swiftEmptyArrayStorage);

  return sub_100005070(v25);
}

uint64_t sub_1010BCDE4()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v50 = &v46 - v2;
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v48 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A2ADC8);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v51 = v0;
  v12 = *&v0[v11];
  v15 = *(v12 + 64);
  v14 = v12 + 64;
  v13 = v15;
  v16 = 1 << *(*&v0[v11] + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v49 = *&v0[v11];

  v21 = 0;
  v22 = v7;
  v46 = v7;
  v52 = v10;
  if (v18)
  {
    while (1)
    {
      v23 = v21;
LABEL_12:
      v26 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v49;
      v29 = v47;
      sub_10005006C(*(v49 + 48) + *(v48 + 72) * v27, v47, type metadata accessor for CRLBoardIdentifier);
      v30 = *(*(v28 + 56) + 8 * v27);
      v31 = sub_1005B981C(&qword_101A2ADD0);
      v32 = *(v31 + 48);
      v33 = v29;
      v34 = v46;
      sub_100025738(v33, v46, type metadata accessor for CRLBoardIdentifier);
      *(v34 + v32) = v30;
      (*(*(v31 - 8) + 56))(v34, 0, 1, v31);

      v25 = v23;
      v35 = v34;
      v10 = v52;
LABEL_13:
      v22 = v35;
      sub_10003DFF8(v35, v10, &qword_101A2ADC8);
      v36 = sub_1005B981C(&qword_101A2ADD0);
      if ((*(*(v36 - 8) + 48))(v10, 1, v36) == 1)
      {
      }

      v21 = v25;
      v37 = *(*(*&v10[*(v36 + 48)] + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      v38 = type metadata accessor for TaskPriority();
      v39 = v50;
      (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
      type metadata accessor for MainActor();
      v40 = v37;
      v41 = v51;
      v42 = static MainActor.shared.getter();
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = &protocol witness table for MainActor;
      *(v43 + 32) = v40;
      *(v43 + 40) = 1;
      *(v43 + 48) = v41;
      v44 = v39;
      v10 = v52;
      sub_10064191C(0, 0, v44, &unk_1014C61E0, v43);

      sub_1010BD2EC(v40);

      result = sub_10003D87C(v10, type metadata accessor for CRLBoardIdentifier);
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v19 <= v21 + 1)
    {
      v24 = v21 + 1;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v45 = sub_1005B981C(&qword_101A2ADD0);
        (*(*(v45 - 8) + 56))(v22, 1, 1, v45);
        v35 = v22;
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v14 + 8 * v23);
      ++v21;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1010BD2EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v14 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v15 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v14 + v15, v6, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v6, type metadata accessor for CRLBoardCRDTData);
  v16 = (*(a1 + v13) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v17 = *v16;
  v18 = v16[1];

  sub_10084BD4C(v9, v17, v18, v12);
  v19 = sub_1010BEEBC(v12);
  v20 = v19;
  if (v19 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v22 = v2;
    if (!i)
    {
      break;
    }

    v23 = 0;
    v2 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v24 = *(v20 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      sub_1010AFB50(v24);

      ++v23;
      if (v26 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  sub_10003D87C(v12, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_1010BD5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 426) = a6;
  *(v7 + 425) = a5;
  *(v7 + 232) = a4;
  *(v7 + 240) = a7;
  sub_1005B981C(&unk_1019FA3E0);
  *(v7 + 248) = swift_task_alloc();
  v8 = _s5BoardVMa(0);
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  *(v7 + 280) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v7 + 288) = swift_task_alloc();
  v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  *(v7 + 296) = v9;
  *(v7 + 304) = *(v9 + 64);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 336) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 344) = v11;
  *(v7 + 352) = v10;

  return _swift_task_switch(sub_1010BD7D8, v11, v10);
}

uint64_t sub_1010BD7D8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 232);
  v5 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v6 + v7, v2, type metadata accessor for CRLBoardCRDTData);
  *(v0 + 360) = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v2, type metadata accessor for CRLBoardCRDTData);
  v8 = (*(v4 + v5) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v9 = *v8;
  v10 = v8[1];

  sub_10084BD4C(v3, v9, v10, v1);
  v11 = *(*(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v11)
  {
    v12 = v11;
    [v12 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    sub_100006370(0, &qword_1019F52C0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 224);
      *(v0 + 368) = v13;
      v14 = [v13 currentUserParticipant];
      v15 = *(v0 + 425);
      if (v14)
      {
        v16 = v14;
        v17 = [v14 role];

        v18 = 0;
        if (v17 == 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v15;
        }

        if (!v15 || v17 == 1)
        {
          goto LABEL_42;
        }
      }

      else if (!*(v0 + 425))
      {
        v18 = 0;
        v19 = 0;
        goto LABEL_42;
      }

      v49 = *(v0 + 426);
      v19 = 0;
      if (v49 == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = v49 ^ 1;
      }

LABEL_42:
      *(v0 + 428) = v19;
      *(v0 + 427) = v18 & 1;
      v50 = *(v0 + 232);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 424;
      *(v0 + 24) = sub_1010BDFB8;
      v51 = swift_continuation_init();
      *(v0 + 136) = sub_1005B981C(&unk_101A15B50);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = *"";
      *(v0 + 96) = sub_100C0A9A0;
      *(v0 + 104) = &unk_1018B0F90;
      *(v0 + 112) = v51;
      [v50 hasUnsyncedChangesWithCompletionHandler:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  v20 = sub_1010BEDF8(*(v0 + 328));
  *(v0 + 376) = v20;
  if (v20 >> 62)
  {
    goto LABEL_47;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 384) = v21;
  if (v21)
  {
    do
    {
      v22 = *(v0 + 376);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v23 = *(v22 + 32);
      }

      v24 = v23;
      if (qword_1019F2130 != -1)
      {
        swift_once();
      }

      v25 = static OS_os_log.crlBoardLibrary;
      v26 = static os_log_type_t.default.getter();
      sub_100005404(v25, &_mh_execute_header, v26, "Close view controller because the board has been deleted or removed.", 68, 2, _swiftEmptyArrayStorage);
      sub_1010AB99C(*(v0 + 328), *(v0 + 248));
      v27 = *(v0 + 272);
      v29 = *(v0 + 248);
      v28 = *(v0 + 256);
      v30 = *(*(v0 + 264) + 56);
      v31 = 1;
      v30(v29, 0, 1, v28);
      sub_100025738(v29, v27, _s5BoardVMa);
      LOBYTE(v28) = *(v27 + *(v28 + 72));
      sub_10003D87C(v27, _s5BoardVMa);
      if (v28)
      {
LABEL_19:
        *(v0 + 400) = v24;
        *(v0 + 408) = v31;
        *(v0 + 392) = 0;
        sub_10101542C();
        v32 = swift_task_alloc();
        *(v0 + 416) = v32;
        *v32 = v0;
        v32[1] = sub_1010BE7F0;

        return sub_101026F10();
      }

      v34 = *(v0 + 384);
      sub_10102ADC0(*(v0 + 328));

      if (v34 == 1)
      {
        break;
      }

      v37 = 5;
      while (1)
      {
        v39 = v37 - 4;
        v40 = *(v0 + 376);
        if ((v40 & 0xC000000000000001) != 0)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v41 = *(v40 + 8 * v37);
        }

        v24 = v41;
        v31 = v37 - 3;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (qword_1019F2130 != -1)
        {
          swift_once();
        }

        v42 = *(v0 + 328);
        v43 = *(v0 + 248);
        v44 = static OS_os_log.crlBoardLibrary;
        v45 = static os_log_type_t.default.getter();
        sub_100005404(v44, &_mh_execute_header, v45, "Close view controller because the board has been deleted or removed.", 68, 2, _swiftEmptyArrayStorage);
        sub_1010AB99C(v42, v43);
        v46 = *(v0 + 272);
        v48 = *(v0 + 248);
        v47 = *(v0 + 256);
        v30(v48, 0, 1, v47);
        sub_100025738(v48, v46, _s5BoardVMa);
        LODWORD(v47) = *(v46 + *(v47 + 72));
        sub_10003D87C(v46, _s5BoardVMa);
        if (v47 == 1)
        {
          goto LABEL_19;
        }

        v38 = *(v0 + 384);
        sub_10102ADC0(*(v0 + 328));

        ++v37;
        if (v31 == v38)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v52 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 384) = v52;
    }

    while (v52);
  }

LABEL_23:
  v35 = *(v0 + 328);

  sub_10003D87C(v35, type metadata accessor for CRLBoardIdentifier);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1010BDFB8()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);

  return _swift_task_switch(sub_1010BE0C0, v2, v1);
}

uint64_t sub_1010BE0C0()
{
  if (*(v0 + 424))
  {
    LOBYTE(v1) = *(v0 + 428) ^ 1 | *(v0 + 427);
  }

  else
  {
    LOBYTE(v1) = *(v0 + 427);
  }

  v2 = sub_1010BEDF8(*(v0 + 328));
  *(v0 + 376) = v2;
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 384) = v3;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_19:
    v30 = *(v0 + 328);

    sub_10003D87C(v30, type metadata accessor for CRLBoardIdentifier);

    v31 = *(v0 + 8);

    return v31();
  }

LABEL_39:
  v47 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 384) = v47;
  if (!v47)
  {
    goto LABEL_19;
  }

LABEL_6:
  v4 = 0;
  while (1)
  {
    v5 = *(v0 + 376);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v6 = *(v5 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v51 = v4 + 1;
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlBoardLibrary;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Close view controller because the board has been deleted or removed.", 68, 2, _swiftEmptyArrayStorage);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v10 = *(v0 + 320);
    v48 = *(v0 + 312);
    v49 = *(v0 + 296);
    v11 = *(v0 + 280);
    v12 = *(v0 + 288);
    v50 = v7;
    v13 = v4;
    v14 = *(*&v7[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v16 = *&v14[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10005006C(v16 + v17, v11, type metadata accessor for CRLBoardCRDTData);
    v18 = v14;
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v11, type metadata accessor for CRLBoardCRDTData);
    v19 = (*&v14[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v20 = *v19;
    v21 = v19[1];

    sub_10084BD4C(v12, v20, v21, v10);

    sub_10005006C(v10, v48, type metadata accessor for CRLBoardIdentifier);
    v22 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = v50;
    sub_100025738(v48, v1 + v22, type metadata accessor for CRLBoardIdentifier);
    v23 = v50;
    sub_10102B288(sub_101105EF0, v1);

    sub_10003D87C(v10, type metadata accessor for CRLBoardIdentifier);

    LOBYTE(v1) = 0;
    v4 = v13 + 1;
    if (v51 == *(v0 + 384))
    {
      goto LABEL_19;
    }
  }

  sub_1010AB99C(*(v0 + 328), *(v0 + 248));
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v1 = *(v0 + 256);
  v26 = *(*(v0 + 264) + 56);
  v26(v25, 0, 1, v1);
  sub_100025738(v25, v24, _s5BoardVMa);
  v27 = *(v24 + *(v1 + 72));
  sub_10003D87C(v24, _s5BoardVMa);
  v28 = v4 + 1;
  if ((v27 & 1) == 0)
  {
    v29 = *(v0 + 384);
    sub_10102ADC0(*(v0 + 328));

    if (v51 == v29)
    {
      goto LABEL_19;
    }

    v33 = v4 + 5;
    while (1)
    {
      v35 = v33 - 4;
      v36 = *(v0 + 376);
      if ((v36 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v28 = v33 - 3;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v35 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v37 = *(v36 + 8 * v33);
        v28 = v33 - 3;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_37;
        }
      }

      v38 = v37;
      if (qword_1019F2130 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 328);
      v40 = *(v0 + 248);
      v41 = static OS_os_log.crlBoardLibrary;
      v42 = static os_log_type_t.default.getter();
      sub_100005404(v41, &_mh_execute_header, v42, "Close view controller because the board has been deleted or removed.", 68, 2, _swiftEmptyArrayStorage);
      sub_1010AB99C(v39, v40);
      v43 = *(v0 + 272);
      v44 = *(v0 + 248);
      v1 = *(v0 + 256);
      v26(v44, 0, 1, v1);
      sub_100025738(v44, v43, _s5BoardVMa);
      v45 = *(v43 + *(v1 + 72));
      sub_10003D87C(v43, _s5BoardVMa);
      if (v45 == 1)
      {
        break;
      }

      v34 = *(v0 + 384);
      sub_10102ADC0(*(v0 + 328));

      ++v33;
      if (v28 == v34)
      {
        goto LABEL_19;
      }
    }

    v7 = v38;
  }

  *(v0 + 400) = v7;
  *(v0 + 408) = v28;
  *(v0 + 392) = 0;
  sub_10101542C();
  v46 = swift_task_alloc();
  *(v0 + 416) = v46;
  *v46 = v0;
  v46[1] = sub_1010BE7F0;

  return sub_101026F10();
}

uint64_t sub_1010BE7F0()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return _swift_task_switch(sub_1010BE910, v3, v2);
}

uint64_t sub_1010BE910()
{
  v3 = *(v1 + 408);
  if (v3 == *(v1 + 384))
  {
LABEL_15:
    v18 = *(v1 + 328);

    sub_10003D87C(v18, type metadata accessor for CRLBoardIdentifier);

    v19 = *(v1 + 8);

    return v19();
  }

  v4 = *(v1 + 392);
  v5 = *(v1 + 376);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v6 = *(v5 + 8 * v3 + 32);
  }

  v0 = v6;
  v2 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_29;
  }

  if (qword_1019F2130 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v7 = static OS_os_log.crlBoardLibrary;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "Close view controller because the board has been deleted or removed.", 68, 2, _swiftEmptyArrayStorage);
    sub_1010AB99C(*(v1 + 328), *(v1 + 248));
    if (v4)
    {
      v9 = *(v1 + 256);
      v10 = *(v1 + 264);
      v11 = *(v1 + 248);

      v12 = *(v10 + 56);
      v12(v11, 1, 1, v9);
      sub_10000CAAC(v11, &unk_1019FA3E0);
      goto LABEL_14;
    }

    v13 = *(v1 + 272);
    v15 = *(v1 + 248);
    v14 = *(v1 + 256);
    v12 = *(*(v1 + 264) + 56);
    v12(v15, 0, 1, v14);
    sub_100025738(v15, v13, _s5BoardVMa);
    LOBYTE(v14) = *(v13 + *(v14 + 72));
    sub_10003D87C(v13, _s5BoardVMa);
    if (v14)
    {
      break;
    }

LABEL_14:
    v4 = *(v1 + 384);
    sub_10102ADC0(*(v1 + 328));

    if (v2 == v4)
    {
      goto LABEL_15;
    }

    v20 = (v3 + 5);
    v3 = _swiftEmptyArrayStorage;
    while (1)
    {
      v21 = v20 - 4;
      v22 = *(v1 + 376);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v23 = *(v22 + 8 * v20);
      }

      v0 = v23;
      v2 = v20 - 3;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (qword_1019F2130 != -1)
      {
        swift_once();
      }

      v24 = *(v1 + 328);
      v25 = *(v1 + 248);
      v26 = static OS_os_log.crlBoardLibrary;
      v27 = static os_log_type_t.default.getter();
      sub_100005404(v26, &_mh_execute_header, v27, "Close view controller because the board has been deleted or removed.", 68, 2, _swiftEmptyArrayStorage);
      sub_1010AB99C(v24, v25);
      v28 = *(v1 + 272);
      v30 = *(v1 + 248);
      v29 = *(v1 + 256);
      v12(v30, 0, 1, v29);
      sub_100025738(v30, v28, _s5BoardVMa);
      LODWORD(v29) = *(v28 + *(v29 + 72));
      sub_10003D87C(v28, _s5BoardVMa);
      if (v29 == 1)
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 384);
      sub_10102ADC0(*(v1 + 328));

      ++v20;
      if (v2 == v4)
      {
        goto LABEL_15;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_11:
  *(v1 + 400) = v0;
  *(v1 + 408) = v2;
  *(v1 + 392) = 0;
  sub_10101542C();
  v16 = swift_task_alloc();
  *(v1 + 416) = v16;
  *v16 = v1;
  v16[1] = sub_1010BE7F0;

  return sub_101026F10();
}

void *sub_1010BEDF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_1000486F0(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = [*(v7 + 24) allObjects];
    type metadata accessor for CRLiOSBoardViewController();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  else
  {
    swift_endAccess();
    return _swiftEmptyArrayStorage;
  }
}

void *sub_1010BEEBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_1000486F0(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = [*(v7 + 32) allObjects];
    type metadata accessor for CRLBoardLibraryHeadlessController();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  else
  {
    swift_endAccess();
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1010BEF80(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v4;
  v2[18] = v3;

  return _swift_task_switch(sub_1010BF018, v4, v3);
}

uint64_t sub_1010BF018()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_1000486F0(v0[14]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = UUID.uuidString.getter();
    v11 = v10;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v12, "Reusing existing BoardInfo for identifier: %{public}@", 53, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v13 = v0[1];

    return v13(v6);
  }

  else
  {
    swift_endAccess();
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_1010BF234;
    v16 = v0[14];

    return sub_1010BF958(v16);
  }
}

uint64_t sub_1010BF234(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[17];
    v6 = v4[18];
    v7 = sub_1010BF3C4;
  }

  else
  {
    v4[21] = a1;
    v5 = v4[17];
    v6 = v4[18];
    v7 = sub_1010BF35C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010BF35C()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1010BF3C4()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1010BF428(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = [objc_allocWithZone(CRLInteractiveCanvasController) init];
  v14 = [objc_allocWithZone(CRLiOSCanvasViewController) init];
  objc_allocWithZone(type metadata accessor for CRLiOSBoardViewController());
  v15 = v12;
  v16 = sub_101014204(v15, a2, v13, v14);
  [*(*&v15[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_selectionDispatcher] + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_receivers) addObject:v16];
  v17 = *(a1 + 24);
  [v17 addObject:v16];
  if ([v17 count] >= 2)
  {
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(0);
    sub_100006370(0, &qword_1019F54D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 sendEventInDomain:v19 lazily:1 eventPayload:isa];
  }

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v45 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v22 = v16;
  v23 = [v22 description];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(inited + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  *(inited + 64) = v27;
  *(inited + 32) = v24;
  *(inited + 40) = v26;
  v28 = *&v15[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
  v29 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v30 = *&v28[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v32 = v30 + v31;
  v33 = v46;
  sub_10005006C(v32, v46, type metadata accessor for CRLBoardCRDTData);
  v34 = v28;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v33, type metadata accessor for CRLBoardCRDTData);
  v35 = (*&v28[v29] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v36 = *v35;
  v37 = v35[1];

  sub_10084BD4C(v8, v36, v37, v11);

  v39 = v47;
  v38 = v48;
  (*(v47 + 16))(v8, v11, v48);
  sub_10003D87C(v11, type metadata accessor for CRLBoardIdentifier);
  v40 = UUID.uuidString.getter();
  v42 = v41;
  (*(v39 + 8))(v8, v38);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v27;
  *(inited + 72) = v40;
  *(inited + 80) = v42;
  v43 = static os_log_type_t.default.getter();
  sub_100005404(v45, &_mh_execute_header, v43, "Created view controller %@ for identifier: %{public}@", 53, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  return v22;
}

uint64_t sub_1010BF958(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[51] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[52] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[53] = v4;
  v2[54] = v3;

  return _swift_task_switch(sub_1010BFA1C, v4, v3);
}

uint64_t sub_1010BFA1C()
{
  v35 = v0;
  v1 = v0[50];
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  v0[55] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (sub_1000486F0(v0[49]), (v3 & 1) != 0))
  {
    swift_endAccess();
    v33 = objc_opt_self();
    v4 = [v33 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 3137;
    v16 = v34;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Duplicate boardIdentifier.", 26, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v33 handleFailureInFunction:v23 file:v24 lineNumber:3137 isFatal:0 format:v25 args:v22];
  }

  else
  {
    swift_endAccess();
  }

  v26 = v0[50];
  sub_10005006C(v0[49], v0[51], type metadata accessor for CRLBoardIdentifier);
  v27 = *(v26 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  v28 = *(v26 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_syncPriorityProvider);
  type metadata accessor for CRLBoardLibrary.BoardInfo();
  swift_allocObject();
  v29 = v27;

  v30 = swift_task_alloc();
  v0[56] = v30;
  *v30 = v0;
  v30[1] = sub_1010BFF0C;
  v31 = v0[51];

  return sub_1010D875C(v31, v29, v28);
}

uint64_t sub_1010BFF0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 456) = a1;
  *(v4 + 464) = v1;

  v5 = *(v3 + 432);
  v6 = *(v3 + 424);
  if (v1)
  {
    v7 = sub_1010C02E8;
  }

  else
  {
    v7 = sub_1010C0050;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1010C0050()
{
  v1 = v0[55];
  v2 = v0[50];
  swift_beginAccess();
  v3 = *(v2 + v1);
  if (*(v3 + 16) && (v4 = sub_1000486F0(v0[49]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = UUID.uuidString.getter();
    v11 = v10;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v12, "Dropping BoardInfo to reuse recently created BoardInfo for identifier: %{public}@", 81, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);

    v13 = v0[1];

    return v13(v6);
  }

  else
  {
    v15 = v0[57];
    v16 = v0[55];
    v17 = v0[49];
    v18 = v0[50];
    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v18 + v16);
    *(v18 + v16) = 0x8000000000000000;
    sub_100A9D88C(v15, v17, isUniquelyReferenced_nonNull_native);
    *(v18 + v16) = v21;
    swift_endAccess();
    v20 = swift_task_alloc();
    v0[59] = v20;
    *v20 = v0;
    v20[1] = sub_1010C0354;

    return sub_1010D906C();
  }
}

uint64_t sub_1010C02E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C0354()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return _swift_task_switch(sub_1010C0474, v3, v2);
}

uint64_t sub_1010C0474()
{

  v1 = *(v0 + 456);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1010C04E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(a1 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v14 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v15 = *&v13[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v15 + v16, v6, type metadata accessor for CRLBoardCRDTData);
  v17 = v13;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v6, type metadata accessor for CRLBoardCRDTData);
  v18 = (*&v13[v14] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v19 = *v18;
  v20 = v18[1];

  sub_10084BD4C(v9, v19, v20, v12);
  v21 = *(v2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v22 + 16));
  v23 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v24 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v24)
  {
    v25 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v41 = type metadata accessor for CRLAssetManager();
    v26 = objc_allocWithZone(v41);
    v40 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v27 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v28 = v17;
    v29 = swift_allocObject();
    v39 = v21;
    v30 = swift_slowAlloc();
    *v30 = 0;
    *(v29 + 16) = v30;
    atomic_thread_fence(memory_order_acq_rel);
    *&v26[v27] = v29;
    v17 = v28;
    *&v26[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v31 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v26[v31] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v26[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v32 = v39;
    swift_unknownObjectWeakAssign();
    v42.receiver = v26;
    v42.super_class = v41;
    v33 = objc_msgSendSuper2(&v42, "init");

    v34 = *&v21[v23];
    *&v21[v23] = v33;
    v25 = v33;

    v24 = 0;
  }

  v35 = *(v22 + 16);
  v36 = v24;
  os_unfair_lock_unlock(v35);
  sub_100C7F350(v17);

  sub_1010C08C0(v12);
  sub_1010E4B9C();
  sub_1010DD1F8();
  swift_beginAccess();
  sub_1006F6B68(v12);
  swift_endAccess();

  return sub_10003D87C(v12, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_1010C08C0(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v11 = UUID.uuidString.getter();
  v13 = v12;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v14, "deactivateOpportunisticRealTimeCollaboration() for %{public}@", 61, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_10005006C(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for MainActor();
  v16 = v21;
  v17 = static MainActor.shared.getter();
  v18 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v16;
  sub_100025738(v5, v19 + v18, type metadata accessor for CRLBoardIdentifier);
  sub_100796D54(0, 0, v8, &unk_1014C5F08, v19);
}

uint64_t sub_1010C0B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 600) = v5;
  *(v6 + 785) = a5;
  *(v6 + 592) = a4;
  *(v6 + 584) = a3;
  *(v6 + 576) = a2;
  *(v6 + 568) = a1;
  sub_1005B981C(&qword_1019F33E0);
  *(v6 + 608) = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  *(v6 + 616) = swift_task_alloc();
  v7 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  *(v6 + 624) = v7;
  *(v6 + 632) = *(v7 + 64);
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  *(v6 + 656) = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770);
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 704) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 712) = v9;
  *(v6 + 720) = v8;

  return _swift_task_switch(sub_1010C0DC4, v9, v8);
}

uint64_t sub_1010C0DC4()
{
  v107 = v0;
  v1 = *(v0 + 568);
  v2 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  if (*v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[1] == 0xE000000000000000;
  }

  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    sub_1006A3EB0();
    swift_allocError();
    *v58 = 9;
    swift_willThrow();
LABEL_43:

    v74 = *(v0 + 8);

    return v74();
  }

  v4 = *(v0 + 696);
  v5 = *(v0 + 600);
  v6 = *(v0 + 576);
  v7 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v8 = *(v5 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;

  sub_10003CF3C(1, sub_101107D10, v9, v8, v4);

  v10 = _s4NodeVMa(0);
  inited = *(v10 - 1);
  v104 = *(inited + 48);
  if (v104(v4, 1, v10) == 1)
  {
    v12 = *(v0 + 696);
    v13 = *(v0 + 672);
    v14 = *(v0 + 576);

    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10005006C(v14, v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v15 = sub_10006A888();
    v17 = v16;
    sub_10003D87C(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    *(inited + 56) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 32) = v15;
    *(inited + 64) = v18;
    *(inited + 40) = v17;
    if (v104(v12, 1, v10) == 1)
    {
      v104 = (inited + 32);
      v98 = objc_opt_self();
      LODWORD(v5) = [v98 _atomicIncrementAssertCount];
      v106 = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v106);
      StaticString.description.getter();
      aBlock = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v19 = String._bridgeToObjectiveC()();

      v20 = [v19 lastPathComponent];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v22;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_56;
      }

      while (1)
      {
        v23 = static OS_os_log.crlAssert;
        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_10146CA70;
        *(v24 + 56) = &type metadata for Int32;
        *(v24 + 64) = &protocol witness table for Int32;
        *(v24 + 32) = v5;
        v25 = sub_100006370(0, &qword_1019F4D30);
        *(v24 + 96) = v25;
        v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v24 + 72) = aBlock;
        *(v24 + 136) = &type metadata for String;
        *(v24 + 144) = v18;
        *(v24 + 104) = v26;
        *(v24 + 112) = v21;
        *(v24 + 120) = v100;
        *(v24 + 176) = &type metadata for UInt;
        *(v24 + 184) = &protocol witness table for UInt;
        *(v24 + 152) = 3166;
        v27 = v106;
        *(v24 + 216) = v25;
        *(v24 + 224) = v26;
        *(v24 + 192) = v27;
        v28 = aBlock;
        v29 = v27;
        v30 = static os_log_type_t.error.getter();
        sub_100005404(v23, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v31 = static os_log_type_t.error.getter();
        sub_100005404(v23, &_mh_execute_header, v31, "Filter not found: %@", 20, 2, inited);

        type metadata accessor for __VaListBuilder();
        v32 = swift_allocObject();
        v32[2] = 8;
        v32[3] = 0;
        v7 = v32 + 3;
        v32[4] = 0;
        v32[5] = 0;
        aBlock = inited;
        v33 = *(inited + 16);
        v21 = v104;
        if (!v33)
        {
LABEL_41:
          v68 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v69 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v70 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v71 = String._bridgeToObjectiveC()();

          [v98 handleFailureInFunction:v69 file:v70 lineNumber:3166 isFatal:0 format:v71 args:v68];

          break;
        }

        v34 = 0;
        inited = 40;
        while (1)
        {
          v35 = (v21 + 40 * v34);
          v10 = v35[3];
          v18 = sub_100020E58(v35, v10);
          v36 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v5 = *v7;
          v37 = *(v36 + 16);
          v38 = __OFADD__(*v7, v37);
          v39 = *v7 + v37;
          if (v38)
          {
            break;
          }

          v18 = v32[4];
          if (v18 >= v39)
          {
            goto LABEL_26;
          }

          if (v18 + 0x4000000000000000 < 0)
          {
            goto LABEL_54;
          }

          v10 = v32[5];
          if (2 * v18 > v39)
          {
            v39 = 2 * v18;
          }

          v32[4] = v39;
          if ((v39 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_55;
          }

          v40 = v36;
          v41 = swift_slowAlloc();
          v42 = v41;
          v32[5] = v41;
          if (v10)
          {
            if (v41 != v10 || v41 >= &v10[8 * v5])
            {
              memmove(v41, v10, 8 * v5);
            }

            v18 = v32;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v36 = v40;
            v21 = v104;
LABEL_26:
            v42 = v32[5];
            if (!v42)
            {
              goto LABEL_33;
            }

            goto LABEL_27;
          }

          v36 = v40;
          v21 = v104;
          if (!v42)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_27:
          v44 = *(v36 + 16);
          if (v44)
          {
            v45 = (v36 + 32);
            v46 = *v7;
            while (1)
            {
              v47 = *v45++;
              *&v42[8 * v46] = v47;
              v46 = *v7 + 1;
              if (__OFADD__(*v7, 1))
              {
                break;
              }

              *v7 = v46;
              if (!--v44)
              {
                goto LABEL_11;
              }
            }

            __break(1u);
            break;
          }

LABEL_11:

          if (++v34 == v33)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
      }
    }

    v72 = *(v0 + 696);
    sub_1006A3EB0();
    swift_allocError();
    *v73 = 1;
    swift_willThrow();
    sub_10000CAAC(v72, &unk_1019FB770);
    goto LABEL_43;
  }

LABEL_34:
  v48 = *(v0 + 680);
  v49 = *(v0 + 672);
  v50 = *(v7 + v5);
  v51 = sub_1005B981C(&qword_1019F3480);
  *(v0 + 728) = v51;
  v52 = *(v51 - 8);
  *(v0 + 736) = v52;
  aBlocka = *(v52 + 56);
  aBlocka(v49, 1, 5, v51);
  v53 = swift_task_alloc();
  *(v53 + 16) = v49;

  sub_10003CF3C(1, sub_101107D10, v53, v50, v48);

  sub_10003D87C(v49, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v54 = v104(v48, 1, v10);
  v55 = *(v0 + 688);
  v56 = *(v0 + 680);
  if (v54 == 1)
  {
    v57 = *(v0 + 656);
    aBlocka(v57, 1, 5, v51);
    swift_storeEnumTagMultiPayload();
    sub_10003CB2C(v57, _swiftEmptyArrayStorage, v55);
    if (v104(v56, 1, v10) != 1)
    {
      sub_10000CAAC(*(v0 + 680), &unk_1019FB770);
    }
  }

  else
  {
    sub_100025738(*(v0 + 680), *(v0 + 688), _s4NodeVMa);
  }

  v59 = *(v0 + 688);
  v60 = *(v0 + 600);
  v61 = *(v0 + 592);
  v62 = *(v0 + 584);
  v63 = *(v0 + 576);
  (*(inited + 56))(v59, 0, 1, v10);
  v64 = sub_1010CA2A8(v59);
  *(v0 + 744) = v64;
  sub_10000CAAC(v59, &unk_1019FB770);
  v65 = *(v60 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  *(v0 + 752) = v65;
  v66 = v65;
  v67 = sub_1007B1254(v62, v61, v63, 0, v66, v64);
  v105 = sub_100EDC418(v66, *(v0 + 568), v67, v76);
  *(v0 + 760) = v105;

  v77 = [objc_opt_self() defaultCenter];
  v101 = v77;
  if (qword_1019F1EA0 != -1)
  {
    swift_once();
  }

  v78 = *(v0 + 640);
  v79 = *(v0 + 624);
  v80 = *(v0 + 600);
  v99 = *(v0 + 785);
  v81 = *(v0 + 568);
  v97 = qword_101AD7858;
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10005006C(v81, v78, type metadata accessor for CRLBoardIdentifier);
  v83 = (*(v79 + 80) + 24) & ~*(v79 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v82;
  sub_100025738(v78, v84 + v83, type metadata accessor for CRLBoardIdentifier);
  *(v0 + 480) = sub_1011059A8;
  *(v0 + 488) = v84;
  *(v0 + 448) = _NSConcreteStackBlock;
  *(v0 + 456) = *"";
  *(v0 + 464) = sub_100059694;
  *(v0 + 472) = &unk_1018B0DD8;
  v85 = _Block_copy((v0 + 448));

  v86 = [v101 addObserverForName:v97 object:0 queue:0 usingBlock:v85];
  _Block_release(v85);

  *(v80 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_databaseSyncObserver) = v86;
  swift_unknownObjectRelease();
  v87 = v105;
  v88 = sub_100822664(v87, (v99 & 1) == 0);
  *(v0 + 768) = v88;

  v89 = v87;
  sub_1010F83A4(v89, 2, v88);

  (*(*v88 + 720))();

  [v89 fixUp];
  v90 = *&v89[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
  v91 = *(v90 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v92 = swift_allocObject();
  *(v92 + 16) = v88;
  *(v92 + 24) = v90;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_100896980;
  *(v93 + 24) = v92;
  *(v0 + 528) = sub_10002AAE0;
  *(v0 + 536) = v93;
  *(v0 + 496) = _NSConcreteStackBlock;
  *(v0 + 504) = *"";
  *(v0 + 512) = sub_10002AAB8;
  *(v0 + 520) = &unk_1018B0E50;
  v94 = _Block_copy((v0 + 496));
  swift_retain_n();

  dispatch_sync(v91, v94);
  _Block_release(v94);
  LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

  if (v88)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 784;
    *(v0 + 24) = sub_1010C1D5C;
    v96 = swift_continuation_init();
    *(v0 + 440) = sub_1005B981C(&qword_101A2ACE0);
    *(v0 + 384) = _NSConcreteStackBlock;
    *(v0 + 392) = *"";
    *(v0 + 400) = sub_1010CEDC0;
    *(v0 + 408) = &unk_1018B0E78;
    *(v0 + 416) = v96;
    [v89 asyncSavePendingChangesWithCompletionHandler:v0 + 384];
    v95 = v0 + 16;
  }

  return _swift_continuation_await(v95);
}

uint64_t sub_1010C1D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 776) = v2;
  v3 = *(v1 + 720);
  v4 = *(v1 + 712);
  if (v2)
  {
    v5 = sub_1010C214C;
  }

  else
  {
    v5 = sub_1010C1E8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010C1E8C()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 664);
  v4 = *(v0 + 576);

  sub_10005006C(v4, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if ((*(v1 + 48))(v3, 5, v2))
  {
    v5 = *(v0 + 664);

    v6 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v7 = v5;
  }

  else
  {
    v8 = *(v0 + 752);
    v9 = *(v0 + 640);
    v10 = *(v0 + 616);
    v11 = *(v0 + 608);
    v12 = *(v0 + 568);
    sub_100025738(*(v0 + 664), v10, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_10005006C(v12, v9, type metadata accessor for CRLBoardIdentifier);
    sub_10005006C(v10, v11, type metadata accessor for CRLFolderIdentifier);
    v13 = type metadata accessor for CRLFolderIdentifier(0);
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
    swift_beginAccess();
    sub_100BC2A38(v11, v9);
    swift_endAccess();

    v6 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
    v7 = v10;
  }

  sub_10003D87C(v7, v6);
  sub_10000CAAC(*(v0 + 696), &unk_1019FB770);

  v14 = *(v0 + 8);
  v15 = *(v0 + 760);

  return v14(v15);
}

uint64_t sub_1010C214C()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[87];

  swift_willThrow();

  sub_10000CAAC(v3, &unk_1019FB770);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1010C2284(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v7 = swift_beginAccess();
  if (*(a2 + 16))
  {
    v7 = [a3 removeObserver:?];
  }

  return a4(v7);
}

uint64_t sub_1010C22F4()
{
  v1 = sub_100BEB81C();
  v4[3] = type metadata accessor for CRLNetworkReachabilityListener();
  v4[4] = &off_101899BB0;
  v4[0] = v1;
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_networkReachabilityListener;
  swift_beginAccess();
  sub_10002C638(v4, v0 + v2, &qword_1019FD580);
  swift_endAccess();
  return sub_1010C24B0();
}

uint64_t sub_1010C24B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_networkReachabilityListener;
  swift_beginAccess();
  sub_10000BE14(v1 + v2, &v6, &qword_1019FD580);
  if (v7)
  {
    sub_100050F74(&v6, v8);
    sub_100020E58(v8, v9);
    type metadata accessor for CRLNetworkReachabilityListener();
    *&v6 = sub_100BEB6DC();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1005B981C(&qword_1019FD588);
    sub_10001A2F8(&qword_1019FD590, &qword_1019FD588);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_100020E58(v8, v9);
    sub_100BEB64C();
    return sub_100005070(v8);
  }

  else
  {
    sub_10000CAAC(&v6, &qword_1019FD580);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlBoardLibrary;
    v5 = static os_log_type_t.error.getter();
    return sub_100005404(v4, &_mh_execute_header, v5, "networkReachabilityListener not set-up, will not get the listeners", 66, 2, _swiftEmptyArrayStorage);
  }
}

void sub_1010C279C(unsigned __int8 *a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v5)
    {
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      type metadata accessor for MainActor();
      v9 = v7;
      v10 = static MainActor.shared.getter();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v9;
      sub_100796D54(0, 0, v4, &unk_1014C6188, v11);
    }

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v22 = 0;
    v23 = 0xE000000000000000;
    if (v5)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v5)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = v15;
    String.append(_:)(*&v14);

    v17 = v22;
    v18 = v23;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v17;
    *(inited + 40) = v18;
    v19 = static os_log_type_t.info.getter();
    sub_100005404(v12, &_mh_execute_header, v19, "networkReachabilityListener update isReachable: %{public}@", 58, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v20 = v7[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_isNetworkReachable];
    v7[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_isNetworkReachable] = v5;
    if (v5 != v20)
    {
      v21 = [objc_opt_self() defaultCenter];
      if (qword_1019F28A0 != -1)
      {
        swift_once();
      }

      [v21 postNotificationName:qword_101AD8F60 object:{v7, v22, v23}];
    }
  }
}

uint64_t sub_1010C2AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1010C2B38, v6, v5);
}

uint64_t sub_1010C2B68()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_1005B981C(&unk_101A22E80);
  *v3 = v0;
  v3[1] = sub_1010C2C70;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000021, 0x80000001015C2F90, sub_101107474, v2, v4);
}

uint64_t sub_1010C2C70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1010C2F64;
  }

  else
  {

    v2 = sub_1010C2D8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010C2D8C()
{
  v1 = v0[2];
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1010C2E28;

  return sub_1010B719C(v1);
}

uint64_t sub_1010C2E28()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1010C3038;
  }

  else
  {
    v5 = sub_1010C2FC8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010C2F64()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_101107CC4, v1, v2);
}

uint64_t sub_1010C2FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C3038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C30A4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[19] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v4;
  v2[21] = v3;

  return _swift_task_switch(sub_1010C3194, v4, v3);
}

uint64_t sub_1010C3194()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_10005006C(v0[15], v2, type metadata accessor for CRLBoardIdentifier);
  sub_1005B981C(&unk_101A19BD0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  v0[22] = v5;
  *(v5 + 16) = xmmword_10146C6B0;
  sub_100025738(v2, v5 + v4, type metadata accessor for CRLBoardIdentifier);
  v0[23] = *(v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);

  return _swift_task_switch(sub_1010C3290, 0, 0);
}

uint64_t sub_1010C3290()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = swift_task_alloc();
  v0[24] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  v4 = swift_task_alloc();
  v0[25] = v4;
  v5 = type metadata accessor for CRLBoardDatabaseFetchResult();
  *v4 = v0;
  v4[1] = sub_1010C3394;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 14, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_101107C9C, v3, v5);
}

uint64_t sub_1010C3394()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1010C36A0;
  }

  else
  {

    v2 = sub_1010C34BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010C34DC()
{
  v1 = v0[27];

  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    v2 = v0[15];

    sub_1000486F0(v2);
    if (v3)
    {

      v4 = 1;
      goto LABEL_8;
    }
  }

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v5, &_mh_execute_header, v10, "board identifier not found: %@", 30, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v4 = 0;
LABEL_8:

  v11 = v0[1];

  return v11(v4);
}

uint64_t sub_1010C36A0()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_1010C3710, v1, v2);
}

uint64_t sub_1010C3710()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1010C3780(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 560) = v3;
  *(v4 + 688) = a3;
  *(v4 + 552) = a2;
  *(v4 + 544) = a1;
  v5 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  *(v4 + 568) = v5;
  *(v4 + 576) = *(v5 - 8);
  *(v4 + 584) = swift_task_alloc();
  sub_1005B981C(&qword_101A08DF0);
  *(v4 + 592) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 600) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 608) = v7;
  *(v4 + 616) = v6;

  return _swift_task_switch(sub_1010C38BC, v7, v6);
}

uint64_t sub_1010C38BC()
{
  v1 = *(v0 + 560);
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16) || (v4 = sub_1000486F0(*(v0 + 544)), (v5 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_7;
  }

  v6 = *(v0 + 552);
  v7 = *(*(v3 + 56) + 8 * v4);
  swift_endAccess();
  v8 = *(*(v7 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  *(v0 + 624) = v8;
  v9 = &qword_1019F2000;
  v10 = &unk_10146C000;
  if (v6)
  {
    v11 = *(v0 + 552);
    v12 = v8;
    static CKShare.SystemFieldKey.title.getter();
    v13 = CKRecord.subscript.getter();

    if (v13)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v15 = *(*&v12[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16);
      if (v15 && (v16 = v15, [v16 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v16, sub_100006370(0, &qword_1019F52C0), (swift_dynamicCast() & 1) != 0))
      {
        v64 = v6;
        v17 = *(v0 + 528);
        static CKShare.SystemFieldKey.title.getter();
        v18 = CKRecord.subscript.getter();

        if (v18)
        {
          v63 = v17;
          static CKShare.SystemFieldKey.title.getter();
          swift_unknownObjectRetain();
          CKRecord.subscript.setter();

          if (qword_1019F22C8 != -1)
          {
            swift_once();
          }

          v62 = static OS_os_log.shareState;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          *(v0 + 536) = v18;
          swift_unknownObjectRetain();
          sub_1005B981C(&qword_101A1B0B0);
          v20 = swift_dynamicCast();
          v21 = *(v0 + 480);
          v22 = *(v0 + 488);
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          v23 = 7104878;
          if ((v20 & (v22 != 0)) != 0)
          {
            v23 = v21;
          }

          v24 = 0xE300000000000000;
          if ((v20 & (v22 != 0)) != 0)
          {
            v24 = v22;
          }

          *(inited + 32) = v23;
          *(inited + 40) = v24;
          v25 = static os_log_type_t.default.getter();
          sub_100005404(v62, &_mh_execute_header, v25, "New share did not contain a title, using previous title: %@", 59, 2, inited);

          swift_unknownObjectRelease();
          swift_setDeallocating();
          sub_100005070(inited + 32);
          v6 = v64;
          v10 = &unk_10146C000;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v26 = v11;
    static CKShare.SystemFieldKey.thumbnailImageData.getter();
    v27 = CKRecord.subscript.getter();

    if (v27)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v28 = *(*&v12[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16);
      if (v28 && (v29 = v28, [v29 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v29, sub_100006370(0, &qword_1019F52C0), (swift_dynamicCast() & 1) != 0))
      {
        v30 = *(v0 + 520);
        static CKShare.SystemFieldKey.thumbnailImageData.getter();
        v31 = CKRecord.subscript.getter();

        if (v31)
        {
          static CKShare.SystemFieldKey.thumbnailImageData.getter();
          swift_unknownObjectRetain();
          CKRecord.subscript.setter();

          if (qword_1019F22C8 != -1)
          {
            swift_once();
          }

          v32 = static OS_os_log.shareState;
          v33 = static os_log_type_t.default.getter();
          sub_100005404(v32, &_mh_execute_header, v33, "New share did not contain a thumbnail, using previous thumbnail", 63, 2, _swiftEmptyArrayStorage);
          swift_unknownObjectRelease();

          v10 = &unk_10146C000;
        }

        else
        {

          v10 = &unk_10146C000;
        }
      }

      else
      {
      }
    }

    v34 = v26;
    static CKShare.SystemFieldKey.shareType.getter();
    v35 = CKRecord.subscript.getter();

    if (v35)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v36 = *(*&v12[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16);
      if (v36 && (v37 = v36, [v37 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v37, sub_100006370(0, &qword_1019F52C0), (swift_dynamicCast() & 1) != 0))
      {
        v38 = *(v0 + 512);
        static CKShare.SystemFieldKey.shareType.getter();
        v39 = CKRecord.subscript.getter();

        if (!v39)
        {

          goto LABEL_45;
        }

        static CKShare.SystemFieldKey.shareType.getter();
        swift_unknownObjectRetain();
        CKRecord.subscript.setter();

        if (qword_1019F22C8 != -1)
        {
          swift_once();
        }

        v40 = static OS_os_log.shareState;
        v41 = static os_log_type_t.default.getter();
        sub_100005404(v40, &_mh_execute_header, v41, "New share did not contain a share type, using previous share type", 65, 2, _swiftEmptyArrayStorage);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

LABEL_45:
    v9 = &qword_1019F2000;
    goto LABEL_46;
  }

  v14 = v8;
LABEL_46:
  if (v9[89] != -1)
  {
    swift_once();
  }

  v42 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  v43 = swift_initStackObject();
  v44 = v43;
  *(v43 + 16) = v10[107];
  v45 = *(v0 + 552);
  v46 = v6;
  if (v6)
  {
    *(v0 + 296) = sub_100006370(0, &qword_1019F52C0);
    *(v0 + 304) = sub_10000FDE0(&qword_101A1BA40, &qword_1019F52C0);
    *(v0 + 272) = v45;
    sub_100050F74((v0 + 272), v44 + 32);
  }

  else
  {
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_1000053B0();
    *(v44 + 32) = 7104878;
    *(v44 + 40) = 0xE300000000000000;
  }

  v47 = *(v0 + 592);
  v48 = *(v0 + 576);
  v49 = *(v0 + 568);
  v50 = *(v0 + 552);
  v51 = v45;
  v52 = static os_log_type_t.default.getter();
  sub_100005404(v42, &_mh_execute_header, v52, "Updating board share state for new share: %@", 44, 2, v44);
  swift_setDeallocating();
  sub_100005070(v44 + 32);

  sub_10123C0AC(v50);

  v53 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v8 + v53, v47, &qword_101A08DF0);
  v54 = (*(v48 + 48))(v47, 1, v49);
  v55 = *(v0 + 592);
  if (v54)
  {
    sub_10000CAAC(v55, &qword_101A08DF0);
    if (v46)
    {
LABEL_53:
      v56 = swift_task_alloc();
      *(v0 + 632) = v56;
      *v56 = v0;
      v56[1] = sub_1010C4310;
      v57 = *(v0 + 544);

      return sub_1010C4C18(v57);
    }
  }

  else
  {
    v58 = *(v0 + 584);
    v59 = *(v0 + 552);
    v60 = *(v0 + 592);
    sub_10005006C(v55, v58, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    sub_10000CAAC(v60, &qword_101A08DF0);

    sub_10003D87C(v58, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    sub_1007DDD40(v59);

    if (v46)
    {
      goto LABEL_53;
    }
  }

LABEL_7:
  *(v0 + 648) = *(*(v0 + 560) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);

  return _swift_task_switch(sub_1010C44C8, 0, 0);
}

uint64_t sub_1010C4310()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 616);
  v4 = *(v2 + 608);
  if (v0)
  {
    v5 = sub_1010C4948;
  }

  else
  {
    v5 = sub_1010C444C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010C444C()
{
  *(v0 + 648) = *(*(v0 + 560) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);

  return _swift_task_switch(sub_1010C44C8, 0, 0);
}

uint64_t sub_1010C44C8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 688);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = swift_task_alloc();
  *(v0 + 656) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_task_alloc();
  *(v0 + 664) = v6;
  v7 = sub_1005B981C(&qword_101A21F40);
  *v6 = v0;
  v6[1] = sub_1010C45EC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 496, 0, 0, 0xD000000000000033, 0x80000001015C0AD0, sub_101104980, v5, v7);
}

uint64_t sub_1010C45EC()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_1010C49D8;
  }

  else
  {

    v2 = sub_1010C4708;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010C4708()
{
  v1 = swift_task_alloc();
  *(v0 + 680) = v1;
  *v1 = v0;
  v1[1] = sub_1010C47AC;

  return sub_1010C56AC(2, _swiftEmptySetSingleton);
}

uint64_t sub_1010C47AC()
{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return _swift_task_switch(sub_1010C48CC, v3, v2);
}

uint64_t sub_1010C48CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C4948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C49D8()
{

  v1 = *(v0 + 616);
  v2 = *(v0 + 608);

  return _swift_task_switch(sub_1010C4A40, v2, v1);
}

uint64_t sub_1010C4A40()
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v3 = UUID.description.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Unable to update CKShare for board %@ with error %@", 51, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = swift_task_alloc();
  *(v0 + 680) = v10;
  *v10 = v0;
  v10[1] = sub_1010C47AC;

  return sub_1010C56AC(2, _swiftEmptySetSingleton);
}

uint64_t sub_1010C4C18(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[27] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[28] = v4;
  v2[29] = v3;

  return _swift_task_switch(sub_1010C4CDC, v4, v3);
}

uint64_t sub_1010C4CDC()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_1000486F0(v0[24]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    v7 = *(v6 + 16);
    v0[34] = v7;
    v8 = *&v7[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];
    v9 = type metadata accessor for CRLCommandDirtyBoard();
    v10 = v7;
    v11 = objc_allocWithZone(v9);
    v32 = v10;
    v12 = v8;
    v13 = [v11 init];
    v14 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
    swift_beginAccess();
    v15 = *&v12[v14];
    v16 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v14] = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_100B36334(0, v15[2] + 1, 1, v15);
      *&v12[v14] = v15;
    }

    v19 = v15[2];
    v18 = v15[3];
    if (v19 >= v18 >> 1)
    {
      v15 = sub_100B36334((v18 > 1), v19 + 1, 1, v15);
    }

    v15[2] = v19 + 1;
    v20 = &v15[2 * v19];
    v20[4] = v16;
    *(v20 + 40) = 1;
    *&v12[v14] = v15;
    swift_endAccess();
    sub_10088DA18();

    v21 = *&v32[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
    v0[35] = v21;
    v22 = v21;

    v0[2] = v0;
    v0[7] = v0 + 37;
    v0[3] = sub_1010C5470;
    v23 = swift_continuation_init();
    v0[17] = sub_1005B981C(&qword_101A2ACE0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = *"";
    v0[12] = sub_1010CEDC0;
    v0[13] = &unk_1018B0BF8;
    v0[14] = v23;
    [v22 asyncSavePendingChangesWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v25 = v0[25];
    v24 = v0[26];
    v26 = v0[24];
    swift_endAccess();
    sub_10005006C(v26, v24, type metadata accessor for CRLBoardIdentifier);
    v27 = *(v25 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
    v0[30] = v27;
    v28 = v27;
    v29 = swift_task_alloc();
    v0[31] = v29;
    *v29 = v0;
    v29[1] = sub_1010C506C;
    v30 = v0[26];

    return sub_10092DE14(v30, v28, 0);
  }
}

uint64_t sub_1010C506C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 256) = v1;

  if (v1)
  {
    v5 = *(v4 + 224);
    v6 = *(v4 + 232);
    v7 = sub_1010C5404;
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = *(v4 + 224);
    v6 = *(v4 + 232);
    v7 = sub_1010C51B0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010C51B0()
{
  v1 = v0[33];
  v0[34] = v1;
  v2 = *&v1[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];
  v3 = objc_allocWithZone(type metadata accessor for CRLCommandDirtyBoard());
  v17 = v1;
  v4 = v2;
  v5 = [v3 init];
  v6 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
  swift_beginAccess();
  v7 = *&v4[v6];
  v8 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v6] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100B36334(0, v7[2] + 1, 1, v7);
    *&v4[v6] = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_100B36334((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  *(v12 + 40) = 1;
  *&v4[v6] = v7;
  swift_endAccess();
  sub_10088DA18();

  v13 = *&v17[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
  v0[35] = v13;
  v14 = v13;

  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_1010C5470;
  v15 = swift_continuation_init();
  v0[17] = sub_1005B981C(&qword_101A2ACE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = *"";
  v0[12] = sub_1010CEDC0;
  v0[13] = &unk_1018B0BF8;
  v0[14] = v15;
  [v14 asyncSavePendingChangesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1010C5404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C5470()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_1010C5624;
  }

  else
  {
    v5 = sub_1010C55A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010C55A0()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010C5624()
{
  v1 = v0[35];
  v2 = v0[34];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1010C56AC(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  sub_1005B981C(&qword_1019FB750);
  v3[37] = swift_task_alloc();
  v3[38] = type metadata accessor for MainActor();
  v3[39] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010C5784, v5, v4);
}

uint64_t sub_1010C5784()
{
  v42 = v0;
  v1 = v0[34];

  if (!v1)
  {
    v40 = objc_opt_self();
    v7 = [v40 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 3363;
    v19 = v41;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "Nothing to update", 17, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v40 handleFailureInFunction:v26 file:v27 lineNumber:3363 isFatal:0 format:v28 args:v25];

    goto LABEL_12;
  }

  v2 = v0[36];
  if (!*&v2[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount])
  {
    if (qword_1019F2130 != -1)
    {
      swift_once();
      v2 = v0[36];
    }

    v29 = v0[37];
    v31 = v0[34];
    v30 = v0[35];
    v32 = static OS_os_log.crlBoardLibrary;
    v33 = static os_log_type_t.default.getter();
    sub_100005404(v32, &_mh_execute_header, v33, "Requesting rate-limited snapshot update", 39, 2, _swiftEmptyArrayStorage);
    sub_1010C9804();
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
    v35 = v2;

    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v35;
    v37[5] = v31;
    v37[6] = v30;
    sub_100796D54(0, 0, v29, &unk_1014C5D80, v37);
LABEL_12:

    goto LABEL_13;
  }

  if (qword_1019F2130 != -1)
  {
    swift_once();
    v2 = v0[36];
  }

  v3 = v0[34];
  v4 = static OS_os_log.crlBoardLibrary;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Skipping snapshot update because we're paused.", 46, 2, _swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pendingUpdateOptions] |= v3;
  swift_beginAccess();

  sub_100636CB4(v6);
  swift_endAccess();
LABEL_13:

  v38 = v0[1];

  return v38();
}

void *sub_1010C5D84()
{
  sub_1005B981C(&qword_101A002B8);
  OS_dispatch_queue.sync<A>(execute:)();
  v0 = v2;
  v2 = _swiftEmptyDictionarySingleton;
  sub_1010AA0EC(v0, &v2);

  return v2;
}

void *sub_1010C5EB8(uint64_t a1)
{
  v3 = sub_1010C5D84();
  if (v3[2] && (v4 = sub_1000486F0(a1), (v5 & 1) != 0))
  {
    v6 = v3[7] + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v10 = *(*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
  __chkstk_darwin(v9);
  v13[2] = a1;

  v11 = sub_1010AA984(sub_100F794EC, v13, v10);

  if (v7)
  {
  }

  return v11;
}

void sub_1010C5FF0(uint64_t a1, uint64_t a2)
{
  v4 = [*(v2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers) allObjects];
  sub_1005B981C(&qword_101A2ADC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v7 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    ++v7;
    v9 = _convertErrorToNSError(_:)();
    [v8 shareFailedWithError:v9 recordID:a2];
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:
}

void sub_1010C613C()
{
  v1 = v0;
  v2 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardShareController) + 112) + 112);
  v3 = objc_allocWithZone(CKSystemSharingUIObserver);
  v4 = v2;
  v5 = [v3 initWithContainer:v4];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.setter();

  v6 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_cloudKitObserver);
  *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_cloudKitObserver) = v5;
}

void sub_1010C6274(uint64_t a1, void *a2, char a3, void *a4)
{
  v38 = a2;
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a3)
    {
      v21 = [objc_opt_self() defaultCenter];
      if (qword_1019F2890 != -1)
      {
        swift_once();
      }

      [v21 postNotificationName:qword_101AD8F50 object:v20];

      if (qword_1019F22C8 != -1)
      {
        swift_once();
      }

      v22 = static OS_os_log.shareState;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = sub_100006370(0, &qword_1019F6E98);
      *(inited + 64) = sub_10000FDE0(&qword_101A22E90, &qword_1019F6E98);
      *(inited + 32) = a4;
      v24 = a4;
      v25 = static os_log_type_t.default.getter();
      sub_100005404(v22, &_mh_execute_header, v25, "Share UI failed to save. recordID: %@", 37, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      sub_1010C5FF0(v38, v24);
    }

    else
    {
      v26 = [v38 recordID];
      v27 = [v26 zoneID];

      sub_100EE9190(v11);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {

        sub_10000CAAC(v11, &unk_1019F52D0);
      }

      else
      {
        sub_100025738(v11, v18, type metadata accessor for CRLBoardIdentifier);
        if (qword_1019F22C8 != -1)
        {
          swift_once();
        }

        v28 = static OS_os_log.shareState;
        sub_1005B981C(&qword_1019F54E0);
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_10146C6B0;
        *(v29 + 56) = sub_100006370(0, &qword_1019F52C0);
        *(v29 + 64) = sub_10000FDE0(&qword_101A1BA40, &qword_1019F52C0);
        v30 = v38;
        *(v29 + 32) = v38;
        v37 = v30;
        v31 = static os_log_type_t.default.getter();
        sub_100005404(v28, &_mh_execute_header, v31, "Share UI saved successfully. share: %@", 38, 2, v29);
        swift_setDeallocating();
        sub_100005070(v29 + 32);
        v32 = type metadata accessor for TaskPriority();
        (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
        sub_10005006C(v18, v16, type metadata accessor for CRLBoardIdentifier);
        type metadata accessor for MainActor();
        sub_1006CE2EC(v30, 0);
        v33 = v20;
        v34 = static MainActor.shared.getter();
        v35 = (*(v13 + 80) + 40) & ~*(v13 + 80);
        v36 = swift_allocObject();
        v36[2] = v34;
        v36[3] = &protocol witness table for MainActor;
        v36[4] = v33;
        sub_100025738(v16, v36 + v35, type metadata accessor for CRLBoardIdentifier);
        *(v36 + ((v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
        sub_100796D54(0, 0, v8, &unk_1014C61B0, v36);

        sub_10003D87C(v18, type metadata accessor for CRLBoardIdentifier);
      }
    }
  }
}

uint64_t sub_1010C68C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_10085FA90;

  return sub_1010A9CB4(a5, a6, 0);
}

uint64_t sub_1010C6988(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v29 = a8;
  v26 = a6;
  v27 = a7;
  v25 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for DispatchQoS();
  v13 = *(v30 - 8);
  __chkstk_darwin(v30);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100006370(0, &qword_1019F2D90);
  v28 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a2;
  v19 = v25 & 1;
  *(v18 + 32) = v19;
  *(v18 + 40) = a1;
  aBlock[4] = v26;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v27;
  v20 = _Block_copy(aBlock);

  v29(a2, v19);
  v21 = a1;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_101104B20(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v28;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v31 + 8))(v12, v10);
  (*(v13 + 8))(v15, v30);
}

void sub_1010C6CFC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a3)
    {
      if (qword_1019F22C8 != -1)
      {
        swift_once();
      }

      v21 = static OS_os_log.shareState;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = sub_100006370(0, &qword_1019F6E98);
      *(inited + 64) = sub_10000FDE0(&qword_101A22E90, &qword_1019F6E98);
      *(inited + 32) = a4;
      v23 = a4;
      v24 = static os_log_type_t.default.getter();
      sub_100005404(v21, &_mh_execute_header, v24, "Share UI failed to stop. recordID: %@", 37, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      sub_1010C5FF0(a2, v23);
    }

    else
    {
      v25 = [a4 zoneID];
      sub_100EE9190(v12);

      if ((*(v36 + 48))(v12, 1, v13) == 1)
      {

        sub_10000CAAC(v12, &unk_1019F52D0);
      }

      else
      {
        sub_100025738(v12, v18, type metadata accessor for CRLBoardIdentifier);
        if (qword_1019F22C8 != -1)
        {
          swift_once();
        }

        v26 = static OS_os_log.shareState;
        sub_1005B981C(&qword_1019F54E0);
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_10146C6B0;
        *(v27 + 56) = sub_100006370(0, &qword_1019F6E98);
        *(v27 + 64) = sub_10000FDE0(&qword_101A22E90, &qword_1019F6E98);
        *(v27 + 32) = a4;
        v28 = a4;
        v29 = static os_log_type_t.default.getter();
        sub_100005404(v26, &_mh_execute_header, v29, "Share UI stopped successfully. recordID: %@", 43, 2, v27);
        swift_setDeallocating();
        sub_100005070(v27 + 32);
        v30 = type metadata accessor for TaskPriority();
        (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
        sub_10005006C(v18, v16, type metadata accessor for CRLBoardIdentifier);
        type metadata accessor for MainActor();
        v31 = v20;
        v32 = static MainActor.shared.getter();
        v33 = (*(v36 + 80) + 40) & ~*(v36 + 80);
        v34 = swift_allocObject();
        v34[2] = v32;
        v34[3] = &protocol witness table for MainActor;
        v34[4] = v31;
        sub_100025738(v16, v34 + v33, type metadata accessor for CRLBoardIdentifier);
        sub_100796D54(0, 0, v9, &unk_1014C6198, v34);

        sub_10003D87C(v18, type metadata accessor for CRLBoardIdentifier);
      }
    }
  }
}

uint64_t sub_1010C7288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10085E048;

  return sub_1010A9CB4(a5, 0, 1);
}

uint64_t sub_1010C737C()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_1010C73E0, v1, v2);
}

uint64_t sub_1010C73E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C7454()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1010C783C;
  }

  else
  {
    v5 = sub_1010C7590;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010C7590()
{
  sub_10003D87C(*(v0 + 112), type metadata accessor for CRLBoardIdentifier);
  v1 = *(v0 + 200);
  v2 = (*(v0 + 192) - 1) & *(v0 + 192);
  if (v2)
  {
    v3 = *(v0 + 184);
LABEL_7:
    *(v0 + 192) = v2;
    *(v0 + 200) = v1;
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    sub_10005006C(*(v3 + 48) + *(*(v0 + 104) + 72) * (__clz(__rbit64(v2)) | (v1 << 6)), v5, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(v5, v6, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2130 != -1)
    {
LABEL_15:
      swift_once();
    }

    v7 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = UUID.uuidString.getter();
    v11 = v10;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v12, "Found discardable board %{public}@, marking as not discardable", 62, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_1010C7454;
    v14 = *(v0 + 112);

    return sub_1010C4C18(v14);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      v3 = *(v0 + 184);
      if (v4 >= (((1 << *(v0 + 224)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1010C783C()
{
  v1 = *(v0 + 112);

  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1010C78DC()
{
  v1 = [objc_opt_self() defaultCenter];
  v3 = v1;
  if (qword_1019F2520 != -1)
  {
    swift_once();
    v1 = v3;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  [v1 addObserver:v0 selector:? name:? object:?];
  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v0 selector:"updateBoardMetadataForNotification:" name:qword_101AD8570 object:v2];
  if (qword_1019F2530 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v0 selector:"updateBoardMetadataForNotification:" name:qword_101AD8578 object:v2];
  if (qword_1019F2538 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v0 selector:"updateBoardMetadataForNotification:" name:qword_101AD8580 object:v2];
  if (qword_1019F2540 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v0 selector:"updateBoardMetadataForNotification:" name:qword_101AD8588 object:v2];
  if (qword_1019F2548 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v0 selector:"updateBoardMetadataForNotification:" name:qword_101AD8590 object:v2];
}

uint64_t sub_1010C7B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1005B981C(&qword_101A2AD50);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1005B981C(&qword_101A2AD60);
  v4[19] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_101A2AD68);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v4[25] = v7;
  v8 = *(v7 - 8);
  v4[26] = v8;
  v4[27] = *(v8 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = type metadata accessor for MainActor();
  v4[31] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[32] = v10;
  v4[33] = v9;

  return _swift_task_switch(sub_1010C7DB8, v10, v9);
}

uint64_t sub_1010C7DB8()
{
  v36 = *(v0 + 208);
  v1 = *(v0 + 96);
  sub_101104B20(&qword_101A01D20, type metadata accessor for CRLBoardIdentifier);
  v32 = Dictionary.init(minimumCapacity:)();
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v35 = v1;

  v11 = 0;
  v33 = v6;
  v34 = v1 + 56;
  while (v5)
  {
LABEL_11:
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 192);
    v38 = *(v0 + 184);
    v37 = *(v0 + 104);
    sub_10005006C(*(v35 + 48) + *(v36 + 72) * (__clz(__rbit64(v5)) | (v11 << 6)), v15, type metadata accessor for CRLBoardIdentifier);
    v18 = type metadata accessor for TaskPriority();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v17, 1, 1, v18);
    sub_100025738(v15, v16, type metadata accessor for CRLBoardIdentifier);
    v20 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v37;
    sub_100025738(v16, v21 + v20, type metadata accessor for CRLBoardIdentifier);
    sub_10000BE14(v17, v38, &qword_1019FB750);
    LODWORD(v20) = (*(v19 + 48))(v38, 1, v18);
    v22 = v37;
    v23 = *(v0 + 184);
    if (v20 == 1)
    {
      sub_10000CAAC(*(v0 + 184), &qword_1019FB750);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v19 + 8))(v23, v18);
    }

    if (v21[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = **(v0 + 88);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_1014C5EB0;
    *(v28 + 24) = v21;

    if (v26 | v24)
    {
      v12 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v24;
      *(v0 + 40) = v26;
    }

    else
    {
      v12 = 0;
    }

    v5 &= v5 - 1;
    v13 = *(v0 + 192);
    *(v0 + 48) = 1;
    *(v0 + 56) = v12;
    *(v0 + 64) = v27;
    swift_task_create();

    v7 = sub_10000CAAC(v13, &qword_1019FB750);
    v6 = v33;
    v2 = v34;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v7, v8, v9, v10);
    }

    if (v14 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v14);
    ++v11;
    if (v5)
    {
      v11 = v14;
      goto LABEL_11;
    }
  }

  TaskGroup.makeAsyncIterator()();
  *(v0 + 272) = v32;
  v29 = static MainActor.shared.getter();
  *(v0 + 280) = v29;
  v30 = swift_task_alloc();
  *(v0 + 288) = v30;
  *v30 = v0;
  v30[1] = sub_1010C8260;
  v7 = *(v0 + 152);
  v10 = *(v0 + 160);
  v9 = &protocol witness table for MainActor;
  v8 = v29;

  return TaskGroup.Iterator.next(isolation:)(v7, v8, v9, v10);
}

uint64_t sub_1010C8260()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(sub_1010C83A4, v3, v2);
}

uint64_t sub_1010C83A4()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = (*(v0[15] + 48))(v1, 1, v2);
  v4 = v0[34];
  if (v3 == 1)
  {
    v5 = v0[10];
    (*(v0[21] + 8))(v0[22], v0[20]);

    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v11 = *(v2 + 48);
  v12 = *(v1 + v11);
  sub_100025738(v1, v8, type metadata accessor for CRLBoardIdentifier);
  *(v8 + v11) = v12;
  v13 = &qword_101A2AD50;
  sub_10000BE14(v8, v9, &qword_101A2AD50);
  sub_10000BE14(v8, v10, &qword_101A2AD50);
  v14 = *(v10 + *(v2 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[9] = v4;
  v16 = sub_1000486F0(v9);
  v18 = *(v4 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v13) = v17;
  if (*(v0[34] + 24) >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_12:
      v24 = v0[9];
      if (v13)
      {
LABEL_13:
        v25 = v0[18];
        *(v24[7] + v16) = v14;
        sub_10000CAAC(v25, &qword_101A2AD50);
        goto LABEL_18;
      }

LABEL_16:
      v27 = v0[26];
      v28 = v0[17];
      v29 = v0[18];
      v24[(v16 >> 6) + 8] |= 1 << v16;
      v30 = v16;
      sub_10005006C(v28, v24[6] + *(v27 + 72) * v16, type metadata accessor for CRLBoardIdentifier);
      *(v24[7] + v30) = v14;
      v31 = sub_10000CAAC(v29, &qword_101A2AD50);
      v35 = v24[2];
      v20 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v20)
      {
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(v31, v32, v33, v34);
      }

      v24[2] = v36;
LABEL_18:
      v37 = v0[16];
      sub_10003D87C(v0[17], type metadata accessor for CRLBoardIdentifier);
      sub_10003D87C(v37, type metadata accessor for CRLBoardIdentifier);
      v0[34] = v24;
      v38 = static MainActor.shared.getter();
      v0[35] = v38;
      v39 = swift_task_alloc();
      v0[36] = v39;
      *v39 = v0;
      v39[1] = sub_1010C8260;
      v31 = v0[19];
      v34 = v0[20];
      v33 = &protocol witness table for MainActor;
      v32 = v38;

      return TaskGroup.Iterator.next(isolation:)(v31, v32, v33, v34);
    }

LABEL_15:
    v26 = v16;
    sub_100AAD5DC();
    v16 = v26;
    v24 = v0[9];
    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v22 = v0[17];
  sub_100A990BC(v21, isUniquelyReferenced_nonNull_native);
  v16 = sub_1000486F0(v22);
  if ((v13 & 1) == (v23 & 1))
  {
    goto LABEL_12;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1010C8798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1010C8838;

  return sub_1010C89DC(a5);
}

uint64_t sub_1010C8838(char a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1010C8938, 0, 0);
}

uint64_t sub_1010C8938()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_1005B981C(&qword_101A2AD50) + 48);
  sub_10005006C(v3, v2, type metadata accessor for CRLBoardIdentifier);
  *(v2 + v4) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1010C89DC(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  sub_1005B981C(&qword_1019F33D0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = _s5BoardVMa(0);
  v2[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[30] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010C8AE8, v4, v3);
}

uint64_t sub_1010C8AE8()
{
  v1 = v0[24];

  v2 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  if (*v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[1] == 0xE000000000000000;
  }

  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_15:
    v13 = 3;
    goto LABEL_16;
  }

  sub_1010AB99C(v0[24], v0[29]);
  v4 = v0[29];
  v5 = v0[27];
  v6 = *(v0[28] + 80);
  sub_10000BE14(v4 + v6, v5, &qword_1019F33D0);
  v7 = _s5BoardV13ShareMetadataVMa(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    v15 = v0[27];
    v16 = *(v15 + *(v7 + 28));
    sub_10003D87C(v15, _s5BoardV13ShareMetadataVMa);
    if (v16 == 1)
    {
      sub_10003D87C(v0[29], _s5BoardVMa);
      v13 = 2;
      goto LABEL_16;
    }

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v23 = v0[29];
    v17 = v0[26];
    v22 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10000BE14(v4 + v6, v17, &qword_1019F33D0);
    v8(v17, 1, v7);
    sub_10000CAAC(v17, &qword_1019F33D0);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = 0;
    *(inited + 40) = 0xE000000000000000;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v19, "Board identifier says we're the owner but existing share metadata does not: %@", 78, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_10003D87C(v23, _s5BoardVMa);
    goto LABEL_15;
  }

  v9 = v0[27];
  sub_10003D87C(v0[29], _s5BoardVMa);
  sub_10000CAAC(v9, &qword_1019F33D0);
  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  v12 = [v11 BOOLForKey:@"CRLDidShowDeleteConfirmationAlert"];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v10 standardUserDefaults];
    v13 = 1;
    [v14 setBool:1 forKey:@"CRLDidShowDeleteConfirmationAlert"];
  }

LABEL_16:

  v20 = v0[1];

  return v20(v13);
}

uint64_t sub_1010C90E8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_1010C91AC;

  return sub_1010A91B4(a1, 0);
}

uint64_t sub_1010C91AC(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v5;
  v3[19] = v4;
  if (v1)
  {
    v6 = sub_1010C9734;
  }

  else
  {
    v6 = sub_1010C9310;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1010C9310()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[11];
    v3 = *(*(v0[12] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;

    v5 = sub_1010AA984(sub_100F794EC, v4, v3);

    if (v5)
    {
      if (*(v5 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted) == 1)
      {
        sub_1005EE20C(v5);
      }
    }

    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1010C958C;
    v7 = v0[11];

    return sub_10123B834(v7, v1);
  }

  else
  {

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v11 = UUID.uuidString.getter();
    v13 = v12;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v11;
    *(inited + 40) = v13;
    v14 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v14, "No CKShare for shared-to-me board: %{public}@", 45, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1010C958C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1010C9798;
  }

  else
  {
    v5 = sub_1010C96C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010C96C8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010C9734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C9798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C9804()
{
  v1 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v0 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount) = v4;
  if (v4 == 1)
  {
    if (qword_1019F2130 == -1)
    {
LABEL_4:
      v5 = static OS_os_log.crlBoardLibrary;
      v6 = static os_log_type_t.default.getter();

      return sub_100005404(v5, &_mh_execute_header, v6, "Pausing snapshot updates", 24, 2, _swiftEmptyArrayStorage);
    }

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v10 = *(v0 + v1);
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v11, "Snapshot update pause counter incremented to: %d", 48, 2, inited);
  swift_setDeallocating();
  return sub_100005070(inited + 32);
}

uint64_t sub_1010C999C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1010C9A34, v4, v3);
}

uint64_t sub_1010C9A64()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1010C9B5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000026, 0x80000001015C2460, sub_101107348, v3, &type metadata for () + 8);
}

uint64_t sub_1010C9B5C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1010C9EA8;
  }

  else
  {

    v2 = sub_1010C9C78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010C9C94()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1010C9D8C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000002BLL, 0x80000001015C2490, sub_101107350, v3, &type metadata for () + 8);
}

uint64_t sub_1010C9D8C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1010C9F70;
  }

  else
  {

    v2 = sub_1010B5F28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010C9EA8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1010C9F0C, v1, v2);
}

uint64_t sub_1010C9F0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010C9F70()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1010C9FD4, v1, v2);
}

uint64_t sub_1010C9FD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010CA038(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1010CA0D0, v4, v3);
}

uint64_t sub_1010CA0D0()
{
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = static OS_os_log.crlBoardLibrary;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "Called hideFromRecentlyDeleted in board library", 47, 2, _swiftEmptyArrayStorage);
  *(v0 + 56) = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);

  return _swift_task_switch(sub_1010CA1B0, 0, 0);
}

uint64_t sub_1010CA1B0()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1010B5E0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000035, 0x80000001015C28E0, sub_101107384, v3, &type metadata for () + 8);
}

uint64_t sub_1010CA2A8(uint64_t a1)
{
  v56 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v56);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = _s5BoardVMa(0);
  __chkstk_darwin(v59);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v54);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - v10;
  v12 = _s4NodeVMa(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  sub_10000BE14(a1, v11, &unk_1019FB770);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000CAAC(v11, &unk_1019FB770);
    return 0;
  }

  else
  {
    sub_100025738(v11, v18, _s4NodeVMa);
    v20 = *(v12 + 20);
    v53 = v18;
    v21 = *&v18[v20];
    v60 = _swiftEmptySetSingleton;
    v22 = *(v21 + 16);
    if (v22)
    {
      v52 = v1;
      v23 = v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v24 = *(v13 + 72);
      do
      {
        sub_10005006C(v23, v15, _s4NodeVMa);
        sub_10005006C(v15, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v25 = v57;
            sub_100025738(v8, v57, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v27 = sub_10006A888();
            v28 = v31;
            v29 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
          }

          else
          {
            v25 = v58;
            sub_100025738(v8, v58, _s5BoardVMa);
            v26 = (v25 + *(v59 + 6));
            v27 = *v26;
            v28 = v26[1];

            v29 = _s5BoardVMa;
          }

          sub_10003D87C(v25, v29);
        }

        else if (*v8)
        {
          v28 = 0xE700000000000000;
          v27 = 0x737265646C6F46;
        }

        else
        {
          v32 = [objc_opt_self() mainBundle];
          v33 = String._bridgeToObjectiveC()();
          v34 = String._bridgeToObjectiveC()();
          v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v36;
        }

        sub_100E6DE34(&v63, v27, v28);

        sub_10003D87C(v15, _s4NodeVMa);
        v23 += v24;
        --v22;
      }

      while (v22);
      v59 = v60;
      v1 = v52;
    }

    else
    {
      v59 = _swiftEmptySetSingleton;
    }

    v37 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
    swift_beginAccess();
    v38 = *(v1 + v37);
    v62 = _swiftEmptySetSingleton;
    v39 = 1 << *(v38 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v38 + 64);
    v42 = (v39 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v41; result = )
    {
      v44 = i;
LABEL_24:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = *(*(*(*(*(v38 + 56) + ((v44 << 9) | (8 * v45))) + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
      v47 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v48 = v46 + v47;
      v49 = v55;
      sub_10005006C(v48, v55, type metadata accessor for CRLBoardCRDTData);

      sub_1005B981C(&qword_101A1A020);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v49, type metadata accessor for CRLBoardCRDTData);
      sub_100E6DE34(v61, v61[0], v61[1]);
    }

    while (1)
    {
      v44 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v44 >= v42)
      {

        v50 = sub_1010ACCC0(v62, v59);
        sub_10003D87C(v53, _s4NodeVMa);
        return v50;
      }

      v41 = *(v38 + 64 + 8 * v44);
      ++i;
      if (v41)
      {
        i = v44;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1010CA9B8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 720) = v4;
  *(v5 + 1321) = a4;
  *(v5 + 1320) = a3;
  *(v5 + 712) = a2;
  *(v5 + 704) = a1;
  *(v5 + 728) = type metadata accessor for CRLBoardIdentifierAndValue(0);
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = swift_task_alloc();
  v6 = _s5BoardVMa(0);
  *(v5 + 752) = v6;
  *(v5 + 760) = *(v6 - 8);
  *(v5 + 768) = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0);
  *(v5 + 776) = swift_task_alloc();
  *(v5 + 784) = swift_task_alloc();
  *(v5 + 792) = swift_task_alloc();
  *(v5 + 800) = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  *(v5 + 808) = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  *(v5 + 816) = swift_task_alloc();
  *(v5 + 824) = type metadata accessor for CRLBoardIdentifierStorage(0);
  *(v5 + 832) = swift_task_alloc();
  *(v5 + 840) = type metadata accessor for CRLBoardCRDTData(0);
  *(v5 + 848) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 856) = v7;
  *(v5 + 864) = *(v7 - 8);
  *(v5 + 872) = swift_task_alloc();
  *(v5 + 880) = swift_task_alloc();
  *(v5 + 888) = swift_task_alloc();
  *(v5 + 896) = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  *(v5 + 904) = swift_task_alloc();
  *(v5 + 912) = swift_task_alloc();
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = swift_task_alloc();
  *(v5 + 936) = swift_task_alloc();
  *(v5 + 944) = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770);
  *(v5 + 952) = swift_task_alloc();
  *(v5 + 960) = swift_task_alloc();
  *(v5 + 968) = swift_task_alloc();
  *(v5 + 976) = type metadata accessor for MainActor();
  *(v5 + 984) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 992) = v9;
  *(v5 + 1000) = v8;

  return _swift_task_switch(sub_1010CAD64, v9, v8);
}

uint64_t sub_1010CAD64()
{
  v171 = v0;
  v1 = v0;
  v2 = v0[121];
  v3 = v0[90];
  v4 = v0[89];
  v149 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v150 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;

  sub_10003CF3C(1, sub_101107D10, v6, v5, v2);

  v7 = _s4NodeVMa(0);
  v151 = *(v7 - 8);
  LODWORD(v8) = v151 + 48;
  v9 = *(v151 + 48);
  v157 = v1;
  if ((v9)(v2, 1, v7) == 1)
  {
    v10 = v1[121];
    v11 = v1[102];
    v12 = v1[89];

    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10005006C(v12, v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v14 = sub_10006A888();
    v16 = v15;
    sub_10003D87C(v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    *(inited + 56) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 32) = v14;
    v166 = inited + 32;
    *(inited + 64) = v17;
    *(inited + 40) = v16;
    if ((v9)(v10, 1, v7) != 1)
    {
LABEL_62:

      sub_1006A3EB0();
      swift_allocError();
      *v114 = 1;
      swift_willThrow();
      sub_10000CAAC(v1[121], &unk_1019FB770);

      v139 = v1[1];

      return v139();
    }

    v159 = objc_opt_self();
    LODWORD(v8) = [v159 _atomicIncrementAssertCount];
    v170[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v170);
    StaticString.description.getter();
    v163 = inited;
    v161 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v21;

    if (qword_1019F20A0 == -1)
    {
LABEL_4:
      v22 = static OS_os_log.crlAssert;
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_10146CA70;
      *(v23 + 56) = &type metadata for Int32;
      *(v23 + 64) = &protocol witness table for Int32;
      *(v23 + 32) = v8;
      v24 = sub_100006370(0, &qword_1019F4D30);
      *(v23 + 96) = v24;
      v25 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v23 + 72) = v161;
      *(v23 + 136) = &type metadata for String;
      *(v23 + 144) = v17;
      *(v23 + 104) = v25;
      *(v23 + 112) = v20;
      *(v23 + 120) = v5;
      *(v23 + 176) = &type metadata for UInt;
      *(v23 + 184) = &protocol witness table for UInt;
      *(v23 + 152) = 1606;
      v26 = v170[0];
      *(v23 + 216) = v24;
      *(v23 + 224) = v25;
      *(v23 + 192) = v26;
      v27 = v161;
      v28 = v26;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v30, "Filter not found: %@", 20, 2, v163);

      type metadata accessor for __VaListBuilder();
      v31 = swift_allocObject();
      v31[2] = 8;
      v31[3] = 0;
      v8 = v31 + 3;
      v31[4] = 0;
      v31[5] = 0;
      v7 = *(v163 + 16);
      if (v7)
      {
        v32 = 0;
        v9 = 40;
        while (1)
        {
          v33 = (v166 + 40 * v32);
          v5 = v33[4];
          sub_100020E58(v33, v33[3]);
          v34 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v35 = *v8;
          v36 = *(v34 + 16);
          v37 = __OFADD__(*v8, v36);
          v38 = *v8 + v36;
          if (v37)
          {
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            v49 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_31;
          }

          v39 = v31[4];
          if (v39 >= v38)
          {
            goto LABEL_21;
          }

          if (v39 + 0x4000000000000000 < 0)
          {
            goto LABEL_76;
          }

          v5 = v31[5];
          if (2 * v39 > v38)
          {
            v38 = 2 * v39;
          }

          v31[4] = v38;
          if ((v38 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_77;
          }

          v40 = v34;
          v41 = swift_slowAlloc();
          v42 = v41;
          v31[5] = v41;
          if (v5)
          {
            break;
          }

          v34 = v40;
          v1 = v157;
          if (!v42)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_22:
          v44 = *(v34 + 16);
          if (v44)
          {
            v45 = (v34 + 32);
            v46 = *v8;
            while (1)
            {
              v47 = *v45++;
              v42[v46] = v47;
              v46 = *v8 + 1;
              if (__OFADD__(*v8, 1))
              {
                break;
              }

              *v8 = v46;
              if (!--v44)
              {
                goto LABEL_6;
              }
            }

            __break(1u);
            goto LABEL_75;
          }

LABEL_6:

          if (++v32 == v7)
          {
            goto LABEL_61;
          }
        }

        if (v41 != v5 || v41 >= &v5[v35])
        {
          memmove(v41, v5, 8 * v35);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v34 = v40;
        v1 = v157;
LABEL_21:
        v42 = v31[5];
        if (!v42)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }

LABEL_61:
      v110 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v111 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v112 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v113 = String._bridgeToObjectiveC()();

      [v159 handleFailureInFunction:v111 file:v112 lineNumber:1606 isFatal:0 format:v113 args:v110];

      goto LABEL_62;
    }

LABEL_80:
    swift_once();
    goto LABEL_4;
  }

LABEL_29:
  v48 = v1[88];
  v145 = v48 >> 62;
  v148 = v48;
  if (v48 >> 62)
  {
    goto LABEL_78;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  v20 = _swiftEmptyArrayStorage;
  v147 = v7;
  v146 = v9;
  if (v49)
  {
    v170[0] = _swiftEmptyArrayStorage;
    v17 = v170;
    sub_100034080(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_80;
    }

    v50 = 0;
    v51 = v1[108];
    v155 = v1[103];
    v20 = v170[0];
    v152 = v1[88] + 32;
    v167 = (v51 + 16);
    v153 = (v51 + 32);
    v154 = (v51 + 8);
    v156 = v49;
    do
    {
      v164 = v20;
      if ((v148 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v52 = *(v152 + 8 * v50);
      }

      v53 = v52;
      v54 = v1[111];
      v55 = v1[110];
      v56 = v1[107];
      v57 = v1[106];
      v58 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v59 = *&v52[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
      v60 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10005006C(v59 + v60, v57, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v57, type metadata accessor for CRLBoardCRDTData);
      v160 = v53;
      v61 = (*&v53[v58] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v63 = *v61;
      v62 = v61[1];
      v64 = *v167;
      (*v167)(v55, v54, v56);
      v66 = v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v65;
      v162 = v50;
      v158 = v64;
      if (v66 || (v67 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v67 & 1) != 0))
      {

        v63 = 0;
        v62 = 0xE000000000000000;
      }

      v68 = v1[118];
      v69 = v1[117];
      v70 = v1[111];
      v71 = v1[110];
      v72 = v1[109];
      v73 = v1[107];
      v74 = v1[104];
      v75 = *v154;
      (*v154)(v70, v73);
      (*v153)(v74, v71, v73);
      v76 = (v74 + *(v155 + 20));
      *v76 = v63;
      v76[1] = v62;
      sub_100025738(v74, v69, type metadata accessor for CRLBoardIdentifierStorage);
      sub_100025738(v69, v68, type metadata accessor for CRLBoardIdentifier);
      v158(v72, v68, v73);
      sub_10003D87C(v68, type metadata accessor for CRLBoardIdentifier);
      v77 = UUID.uuidString.getter();
      v79 = v78;
      v75(v72, v73);

      v20 = v164;
      v170[0] = v164;
      v81 = v164[2];
      v80 = v164[3];
      if (v81 >= v80 >> 1)
      {
        sub_100034080((v80 > 1), v81 + 1, 1);
        v20 = v170[0];
      }

      ++v50;
      v20[2] = v81 + 1;
      v82 = &v20[2 * v81];
      v82[4] = v77;
      v82[5] = v79;
      v1 = v157;
    }

    while (v156 != v162 + 1);
  }

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v83 = v1[119];
  v84 = v1[102];
  v85 = static OS_os_log.crlBoardLibrary;
  v1[126] = static OS_os_log.crlBoardLibrary;
  v1[127] = sub_1005B981C(&qword_1019F54E0);
  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_10146BDE0;
  v87 = v20[2];
  *(v86 + 56) = &type metadata for Int;
  *(v86 + 64) = &protocol witness table for Int;
  *(v86 + 32) = v87;
  v157[81] = v20;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v88 = BidirectionalCollection<>.joined(separator:)();
  v90 = v89;

  *(v86 + 96) = &type metadata for String;
  v91 = sub_1000053B0();
  v157[128] = v91;
  *(v86 + 104) = v91;
  *(v86 + 72) = v88;
  *(v86 + 80) = v90;
  v92 = static os_log_type_t.default.getter();
  sub_100005404(v85, &_mh_execute_header, v92, "Duplicating %d board(s): %@", 27, 2, v86);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_1010C9804();
  v157[82] = _swiftEmptySetSingleton;
  v157[83] = _swiftEmptySetSingleton;
  v157[84] = _swiftEmptySetSingleton;
  v157[85] = _swiftEmptySetSingleton;
  v157[86] = _swiftEmptySetSingleton;
  v93 = *(v150 + v149);
  v94 = sub_1005B981C(&qword_1019F3480);
  v95 = (*(v94 - 8) + 56);
  v168 = *v95;
  (*v95)(v84, 1, 5, v94);
  v96 = swift_task_alloc();
  *(v96 + 16) = v84;

  sub_10003CF3C(1, sub_101107D10, v96, v93, v83);

  sub_10003D87C(v84, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v97 = v146(v83, 1, v147);
  v98 = v157[120];
  v99 = v157[119];
  if (v97 == 1)
  {
    v100 = v157[101];
    v168(v100, 1, 5, v94);
    swift_storeEnumTagMultiPayload();
    sub_10003CB2C(v100, _swiftEmptyArrayStorage, v98);
    if (v146(v99, 1, v147) != 1)
    {
      sub_10000CAAC(v157[119], &unk_1019FB770);
    }
  }

  else
  {
    sub_100025738(v157[119], v157[120], _s4NodeVMa);
  }

  v101 = v157[120];
  (*(v151 + 56))(v101, 0, 1, v147);
  v102 = sub_1010CA2A8(v101);
  sub_10000CAAC(v101, &unk_1019FB770);
  v157[87] = v102;
  if (v145)
  {
    v104 = _CocoaArrayWrapper.endIndex.getter();
    v157[129] = v104;
    if (v104)
    {
LABEL_55:
      v105 = v157[88];
      v157[130] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store;
      v157[131] = _swiftEmptyArrayStorage;
      if ((v105 & 0xC000000000000001) != 0)
      {
        v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v104, v105, v103);
        }

        v106 = *(v105 + 32);
      }

      v115 = v106;
      v157[132] = v106;
      v157[133] = 1;
      v116 = *(v157 + 1320);
      v117 = *(v157[95] + 56);
      v117(v157[99], 1, 1, v157[94]);
      if (v116 == 1)
      {
        v118 = v157[116];
        v119 = v157[109];
        v120 = v157[106];
        v165 = v157[98];
        v121 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
        v122 = *&v115[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
        v123 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        sub_10005006C(v122 + v123, v120, type metadata accessor for CRLBoardCRDTData);
        v124 = v115;
        sub_1005B981C(&unk_1019F5250);
        CRRegister.wrappedValue.getter();
        sub_10003D87C(v120, type metadata accessor for CRLBoardCRDTData);
        v125 = (*&v115[v121] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
        v126 = *v125;
        v127 = v125[1];

        sub_10084BD4C(v119, v126, v127, v118);

        sub_1010AB99C(v118, v165);
        v128 = v157[99];
        v129 = v157[98];
        v130 = v157[94];
        sub_10003D87C(v157[116], type metadata accessor for CRLBoardIdentifier);
        sub_10000CAAC(v128, &unk_1019FA3E0);
        v117(v129, 0, 1, v130);
        sub_10003DFF8(v129, v128, &unk_1019FA3E0);
      }

      v131 = v157[106];
      v132 = *(v157 + 1321);
      v169 = v157[89];
      v133 = *&v115[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
      v157[134] = v133;
      v134 = v157[87];
      v157[135] = v134;
      v135 = *&v115[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
      v136 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10005006C(v135 + v136, v131, type metadata accessor for CRLBoardCRDTData);

      v137 = v133;
      sub_1005B981C(&qword_101A1A020);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v131, type metadata accessor for CRLBoardCRDTData);
      v157[136] = sub_1007B1254(v157[75], v157[76], v169, (v132 & 1) == 0, v137, v134);
      v157[137] = v138;
      v140 = v157[115];
      v141 = v157[109];

      UUID.init()();
      sub_10084BD4C(v141, 0, 0xE000000000000000, v140);
      v157[138] = static MainActor.shared.getter();
      v142 = dispatch thunk of Actor.unownedExecutor.getter();
      v144 = v142;
      v103 = v143;
      v157[139] = v142;
      v157[140] = v143;
      v104 = sub_1010CC274;
      v105 = v144;

      return _swift_task_switch(v104, v105, v103);
    }
  }

  else
  {
    v104 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v157[129] = v104;
    if (v104)
    {
      goto LABEL_55;
    }
  }

  v157[149] = _swiftEmptyArrayStorage;
  v107 = v157[82];
  v157[150] = v107;
  v108 = swift_task_alloc();
  v157[151] = v108;
  *v108 = v157;
  v108[1] = sub_1010CD8C0;

  return sub_1010B58EC(v107);
}

uint64_t sub_1010CC274()
{
  v1 = v0[128];
  v2 = v0[126];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Creating new board with Board UUID (%@).", 40, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = swift_task_alloc();
  v0[141] = v7;
  *v7 = v0;
  v7[1] = sub_1010CC3A4;
  v8 = v0[137];
  v9 = v0[136];
  v10 = v0[115];
  v11 = v0[89];

  return sub_1010C0B98(v10, v11, v9, v8, 0);
}

uint64_t sub_1010CC3A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1136) = v1;

  if (v1)
  {

    v5 = v4[140];
    v6 = v4[139];
    v7 = sub_1010CC500;
  }

  else
  {
    v4[143] = a1;
    v5 = v4[140];
    v6 = v4[139];
    v7 = sub_1010CC7A8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1010CC500()
{

  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);

  return _swift_task_switch(sub_1010CC574, v2, v1);
}

uint64_t sub_1010CC574()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 920);
  v3 = *(v0 + 792);

  sub_10003D87C(v2, type metadata accessor for CRLBoardIdentifier);
  sub_10000CAAC(v3, &unk_1019FA3E0);

  sub_1010E83E4();
  sub_10000CAAC(*(v0 + 968), &unk_1019FB770);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1010CC7A8()
{
  v1 = v0[143];

  v2 = v0[125];
  v3 = v0[124];

  return _swift_task_switch(sub_1010CC818, v3, v2);
}

uint64_t sub_1010CC818()
{
  if (*(v0 + 1320) == 1)
  {
    v1 = *(v0 + 776);
    v2 = *(v0 + 760);
    v3 = *(v0 + 752);
    sub_10000BE14(*(v0 + 792), v1, &unk_1019FA3E0);
    if ((*(v2 + 48))(v1, 1, v3) == 1)
    {
      sub_10000CAAC(*(v0 + 776), &unk_1019FA3E0);
    }

    else
    {
      v4 = *(v0 + 920);
      v5 = *(v0 + 768);
      v6 = *(v0 + 752);
      v7 = *(v0 + 744);
      v8 = *(v0 + 736);
      v9 = *(v0 + 728);
      sub_100025738(*(v0 + 776), v5, _s5BoardVMa);
      v10 = *(v5 + v6[14]);
      sub_10005006C(v4, v8, type metadata accessor for CRLBoardIdentifier);
      *(v8 + *(v9 + 20)) = v10;
      sub_100E6F088(v7, v8);
      sub_10003D87C(v7, type metadata accessor for CRLBoardIdentifierAndValue);
      v11 = *(v5 + v6[11]);
      sub_10005006C(v4, v8, type metadata accessor for CRLBoardIdentifier);
      *(v8 + *(v9 + 20)) = v11;
      sub_100E6F088(v7, v8);
      sub_10003D87C(v7, type metadata accessor for CRLBoardIdentifierAndValue);
      v12 = *(v5 + v6[12]);
      sub_10005006C(v4, v8, type metadata accessor for CRLBoardIdentifier);
      *(v8 + *(v9 + 20)) = v12;
      sub_100E6F088(v7, v8);
      sub_10003D87C(v7, type metadata accessor for CRLBoardIdentifierAndValue);
      v13 = *(v5 + v6[16]);
      sub_10005006C(v4, v8, type metadata accessor for CRLBoardIdentifier);
      *(v8 + *(v9 + 20)) = v13;
      sub_100E6F088(v7, v8);
      sub_10003D87C(v7, type metadata accessor for CRLBoardIdentifierAndValue);
      v14 = *(v5 + v6[9]);
      sub_10005006C(v4, v8, type metadata accessor for CRLBoardIdentifier);
      *(v8 + *(v9 + 20)) = v14;
      sub_100E6F088(v7, v8);
      sub_10003D87C(v7, type metadata accessor for CRLBoardIdentifierAndValue);
      sub_10003D87C(v5, _s5BoardVMa);
    }
  }

  v15 = *(v0 + 1056);
  v16 = *(v0 + 1040);
  v17 = *(v0 + 920);
  v18 = *(v0 + 912);
  v19 = *(v0 + 720);
  v20 = type metadata accessor for CRLCommandDuplicateBoard();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC8Freeform24CRLCommandDuplicateBoard_boardToDuplicate] = v15;
  *(v0 + 616) = v21;
  *(v0 + 624) = v20;
  v22 = v15;
  *(v0 + 1152) = objc_msgSendSuper2((v0 + 616), "init");
  sub_10005006C(v17, v18, type metadata accessor for CRLBoardIdentifier);
  v23 = *(v19 + v16);
  *(v0 + 1160) = v23;
  v24 = v23;
  v25 = swift_task_alloc();
  *(v0 + 1168) = v25;
  *v25 = v0;
  v25[1] = sub_1010CCB90;
  v26 = *(v0 + 912);

  return sub_10092DE14(v26, v24, 0);
}

uint64_t sub_1010CCB90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1176) = a1;
  *(v3 + 1184) = v1;

  if (v1)
  {

    v4 = *(v3 + 1000);
    v5 = *(v3 + 992);
    v6 = sub_1010CD684;
  }

  else
  {
    v4 = *(v3 + 1000);
    v5 = *(v3 + 992);
    v6 = sub_1010CCD08;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1010CCD08()
{
  v1 = *(v0 + 1152);
  v2 = *(*(v0 + 1176) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
  v3 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = v2;
  v6 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v2[v3] = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100B36334(0, v4[2] + 1, 1, v4);
    *&v2[v3] = v4;
  }

  v9 = v4[2];
  v8 = v4[3];
  if (v9 >= v8 >> 1)
  {
    v4 = sub_100B36334((v8 > 1), v9 + 1, 1, v4);
  }

  v10 = *(v0 + 1176);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 920);
  v13 = *(v0 + 904);
  v4[2] = v9 + 1;
  v14 = &v4[2 * v9];
  v14[4] = v11;
  *(v14 + 40) = 1;
  *&v2[v3] = v4;
  swift_endAccess();
  sub_10088DA18();

  [*(v10 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) savePendingChanges];
  sub_10005006C(v12, v13, type metadata accessor for CRLBoardIdentifier);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + 1048);
  if ((v15 & 1) == 0)
  {
    v16 = sub_100B36BE4(0, v16[2] + 1, 1, *(v0 + 1048));
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_100B36BE4(v17 > 1, v18 + 1, 1, v16);
  }

  v19 = *(v0 + 1080);
  v20 = *(v0 + 904);
  v21 = *(v0 + 896);
  v16[2] = v18 + 1;
  sub_100025738(v20, v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for CRLBoardIdentifier);
  v22 = *(v0 + 1176);
  v23 = *(v0 + 1152);
  if (v19)
  {
    v24 = *(v0 + 1072);
    v25 = *(v0 + 1056);
    sub_100E6DE34((v0 + 632), *(v0 + 1088), *(v0 + 1096));
  }

  else
  {
    v26 = *(v0 + 1056);
  }

  v27 = *(v0 + 1064);
  v28 = *(v0 + 1032);
  v29 = *(v0 + 920);
  v30 = *(v0 + 792);

  sub_10003D87C(v29, type metadata accessor for CRLBoardIdentifier);
  v31 = sub_10000CAAC(v30, &unk_1019FA3E0);
  if (v27 == v28)
  {
    *(v0 + 1192) = v16;
    v33 = *(v0 + 656);
    *(v0 + 1200) = v33;
    v34 = swift_task_alloc();
    *(v0 + 1208) = v34;
    *v34 = v0;
    v34[1] = sub_1010CD8C0;

    return sub_1010B58EC(v33);
  }

  v36 = *(v0 + 1184);
  v37 = *(v0 + 1064);
  *(v0 + 1048) = v16;
  v38 = *(v0 + 704);
  v74 = v36;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v37 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      __break(1u);
      return _swift_task_switch(v31, v38, v32);
    }

    v31 = *(v38 + 8 * v37 + 32);
  }

  v39 = v31;
  *(v0 + 1056) = v31;
  *(v0 + 1064) = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v40 = *(v0 + 1320);
  v41 = *(*(v0 + 760) + 56);
  v41(*(v0 + 792), 1, 1, *(v0 + 752));
  if (v40 != 1)
  {
LABEL_25:
    v57 = *(v0 + 848);
    v58 = *(v0 + 1321);
    v73 = *(v0 + 712);
    v59 = *(v39 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
    *(v0 + 1072) = v59;
    v60 = *(v0 + 696);
    *(v0 + 1080) = v60;
    v61 = *(v39 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v62 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10005006C(v61 + v62, v57, type metadata accessor for CRLBoardCRDTData);

    v63 = v59;
    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v57, type metadata accessor for CRLBoardCRDTData);
    *(v0 + 1088) = sub_1007B1254(*(v0 + 600), *(v0 + 608), v73, (v58 & 1) == 0, v63, v60);
    *(v0 + 1096) = v64;
    if (v74)
    {
      v65 = *(v0 + 792);

      sub_10000CAAC(v65, &unk_1019FA3E0);

      goto LABEL_27;
    }

    v67 = *(v0 + 920);
    v68 = *(v0 + 872);

    UUID.init()();
    sub_10084BD4C(v68, 0, 0xE000000000000000, v67);
    *(v0 + 1104) = static MainActor.shared.getter();
    v69 = dispatch thunk of Actor.unownedExecutor.getter();
    v32 = v70;
    *(v0 + 1112) = v69;
    *(v0 + 1120) = v70;
    v31 = sub_1010CC274;
    v38 = v69;

    return _swift_task_switch(v31, v38, v32);
  }

  v71 = v41;
  v42 = *(v0 + 928);
  v43 = *(v0 + 872);
  v44 = *(v0 + 848);
  v72 = *(v0 + 784);
  v45 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v46 = *(v39 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v47 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v46 + v47, v44, type metadata accessor for CRLBoardCRDTData);
  v48 = v39;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v44, type metadata accessor for CRLBoardCRDTData);
  v49 = (*(v39 + v45) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v50 = *v49;
  v51 = v49[1];

  sub_10084BD4C(v43, v50, v51, v42);

  sub_1010AB99C(v42, v72);
  if (!v74)
  {
    v54 = *(v0 + 792);
    v55 = *(v0 + 784);
    v56 = *(v0 + 752);
    sub_10003D87C(*(v0 + 928), type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v54, &unk_1019FA3E0);
    v71(v55, 0, 1, v56);
    sub_10003DFF8(v55, v54, &unk_1019FA3E0);
    v74 = 0;
    goto LABEL_25;
  }

  v52 = *(v0 + 928);
  v53 = *(v0 + 792);

  sub_10003D87C(v52, type metadata accessor for CRLBoardIdentifier);
  sub_10000CAAC(v53, &unk_1019FA3E0);

LABEL_27:

  sub_1010E83E4();
  sub_10000CAAC(*(v0 + 968), &unk_1019FB770);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1010CD684()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 920);
  v4 = *(v0 + 792);

  sub_10003D87C(v3, type metadata accessor for CRLBoardIdentifier);
  sub_10000CAAC(v4, &unk_1019FA3E0);

  sub_1010E83E4();
  sub_10000CAAC(*(v0 + 968), &unk_1019FB770);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1010CD8C0()
{
  v2 = *v1;
  v2[152] = v0;

  if (v0)
  {

    v3 = v2[125];
    v4 = v2[124];

    return _swift_task_switch(sub_1010CE2C8, v4, v3);
  }

  else
  {

    v5 = v2[83];
    v2[153] = v5;
    v6 = swift_task_alloc();
    v2[154] = v6;
    *v6 = v2;
    v6[1] = sub_1010CDA80;

    return sub_1010B5C4C(v5);
  }
}

uint64_t sub_1010CDA80()
{
  v2 = *v1;
  v2[155] = v0;

  if (v0)
  {

    v3 = v2[125];
    v4 = v2[124];

    return _swift_task_switch(sub_1010CE4A0, v4, v3);
  }

  else
  {

    v5 = v2[84];
    v2[156] = v5;
    v6 = swift_task_alloc();
    v2[157] = v6;
    *v6 = v2;
    v6[1] = sub_1010CDC38;

    return sub_1010B5FA4(v5);
  }
}

uint64_t sub_1010CDC38()
{
  v2 = *v1;
  v2[158] = v0;

  if (v0)
  {

    v3 = v2[125];
    v4 = v2[124];

    return _swift_task_switch(sub_1010CE678, v4, v3);
  }

  else
  {

    v5 = v2[85];
    v2[159] = v5;
    v6 = swift_task_alloc();
    v2[160] = v6;
    *v6 = v2;
    v6[1] = sub_1010CDDE8;

    return sub_1010BC334(v5);
  }
}

uint64_t sub_1010CDDE8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 1288) = v0;

  if (v0)
  {

    v4 = v2[125];
    v5 = v2[124];

    return _swift_task_switch(sub_1010CE850, v5, v4);
  }

  else
  {

    v6 = v2[86];
    v2[162] = v6;
    v7 = swift_task_alloc();
    v2[163] = v7;
    *v7 = v3;
    v7[1] = sub_1010CDFA4;

    return sub_1010CEC00(v6);
  }
}

uint64_t sub_1010CDFA4()
{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {

    v3 = *(v2 + 1000);
    v4 = *(v2 + 992);
    v5 = sub_1010CEA28;
  }

  else
  {
    v3 = *(v2 + 1000);
    v4 = *(v2 + 992);
    v5 = sub_1010CE0F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010CE0F4()
{
  v1 = v0[121];

  sub_1010E83E4();
  sub_10000CAAC(v1, &unk_1019FB770);

  v2 = v0[1];
  v3 = v0[149];

  return v2(v3);
}

uint64_t sub_1010CE2C8()
{

  sub_1010E83E4();
  sub_10000CAAC(*(v0 + 968), &unk_1019FB770);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010CE4A0()
{

  sub_1010E83E4();
  sub_10000CAAC(*(v0 + 968), &unk_1019FB770);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010CE678()
{

  sub_1010E83E4();
  sub_10000CAAC(*(v0 + 968), &unk_1019FB770);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010CE850()
{

  sub_1010E83E4();
  sub_10000CAAC(*(v0 + 968), &unk_1019FB770);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010CEA28()
{

  sub_1010E83E4();
  sub_10000CAAC(*(v0 + 968), &unk_1019FB770);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010CEC00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1010CEC98, v4, v3);
}

uint64_t sub_1010CECC8()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1010B5E0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000020, 0x8000000101579D60, sub_10092E734, v3, &type metadata for () + 8);
}

uint64_t sub_1010CEDC0(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100020E58((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1005B981C(&unk_1019F6B40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1010CEE8C(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v32 = &v33[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33[-1] - v6;
  v8 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-1] - v9;
  v11 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (*(v12 + 16) && (v13 = sub_1000486F0(a1), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = a1;
    v17 = *(v12 + 56);
    v18 = _s5BoardVMa(0);
    v19 = *(v18 - 8);
    v20 = v17 + *(v19 + 72) * v15;
    a1 = v16;
    sub_10005006C(v20, v10, _s5BoardVMa);
    (*(v19 + 56))(v10, 0, 1, v18);
  }

  else
  {
    v18 = _s5BoardVMa(0);
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  swift_endAccess();
  _s5BoardVMa(0);
  v21 = *(*(v18 - 8) + 48);
  v22 = v21(v10, 1, v18);
  result = sub_10000CAAC(v10, &unk_1019FA3E0);
  if (v22 != 1)
  {
    sub_10005006C(a1, v7, type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v24 = sub_1011259F8(v33, v7);
    v26 = v25;
    if (!v21(v25, 1, v18))
    {
      v27 = &v26[*(v18 + 76)];
      *v27 = 0;
      v27[8] = 1;
    }

    (v24)(v33, 0);
    swift_endAccess();
    sub_10003D87C(v7, type metadata accessor for CRLBoardIdentifier);
    v28 = v32;
    sub_10005006C(a1, v32, type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v29 = sub_1011259F8(v33, v28);
    v31 = v30;
    if (!v21(v30, 1, v18))
    {
      v31[*(v18 + 72)] = 0;
    }

    (v29)(v33, 0);
    swift_endAccess();
    return sub_10003D87C(v28, type metadata accessor for CRLBoardIdentifier);
  }

  return result;
}

void sub_1010CF278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[1] = a4;
  v6 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v6);
  v53 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v52 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UUID();
  v10 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = v45 - v13;
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v14 - 8);
  v51 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v45 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v48 = (v10 + 16);
    v49 = CKCurrentUserDefaultName;
    v46 = (v10 + 32);
    v47 = (v10 + 8);
    v20 = (a1 + 56);
    v50 = a3;
    while (1)
    {
      v21 = v18;
      v22 = v6;
      v23 = *(v20 - 3);
      v24 = *(v20 - 2);
      v25 = *v20;
      v26 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v27 = v23 + v26;
      v28 = v52;
      sub_10005006C(v27, v52, type metadata accessor for CRLBoardCRDTData);
      v54 = v25;
      swift_retain_n();
      v55 = v24;

      sub_1005B981C(&unk_1019F5250);
      v29 = v56;
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v28, type metadata accessor for CRLBoardCRDTData);
      v30 = *(v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v31 = *(v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);
      (*v48)(v57, v29, v58);
      v33 = v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32;
      if (v33 || (v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v34 & 1) != 0))
      {

        v30 = 0;
        v31 = 0xE000000000000000;
      }

      v35 = v58;
      (*v47)(v56, v58);
      v36 = v53;
      (*v46)(v53, v57, v35);
      v6 = v22;
      v37 = (v36 + *(v22 + 20));
      *v37 = v30;
      v37[1] = v31;
      v38 = v51;
      sub_100025738(v36, v51, type metadata accessor for CRLBoardIdentifierStorage);
      v18 = v21;
      sub_100025738(v38, v21, type metadata accessor for CRLBoardIdentifier);
      v39 = v50;
      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      sub_10003D87C(v21, type metadata accessor for CRLBoardIdentifier);
LABEL_4:
      v20 += 5;
      if (!--v19)
      {
        return;
      }
    }

    v40 = *(v6 + 20);
    v41 = *(v21 + v40);
    v42 = *(v21 + v40 + 8);
    v43 = (v39 + v40);
    if (v41 == *v43 && v42 == v43[1])
    {
      sub_10003D87C(v21, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10003D87C(v21, type metadata accessor for CRLBoardIdentifier);
      if ((v44 & 1) == 0)
      {
LABEL_17:

        goto LABEL_4;
      }
    }

    *(v23 + 24) = sub_10001FF1C();
    sub_1010CEE8C(v39);
    goto LABEL_17;
  }
}

uint64_t sub_1010CF78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a2;
  v6[27] = a4;
  v6[25] = a1;
  sub_1005B981C(&unk_1019FB770);
  v6[30] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = type metadata accessor for CRLFolderCRDTData();
  v6[36] = swift_task_alloc();
  v6[37] = type metadata accessor for CRLFolder();
  v6[38] = swift_task_alloc();
  sub_1005B981C(&unk_101A15B20);
  v6[39] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33E0);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6[46] = v9;
  v6[47] = *(v9 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[51] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[52] = v11;
  v6[53] = v10;

  return _swift_task_switch(sub_1010CFA84, v11, v10);
}

uint64_t sub_1010CFA84()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  sub_10000BE14(*(v0 + 208), v3, &qword_1019F33E0);
  v4 = &off_101A2A000;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000CAAC(*(v0 + 328), &qword_1019F33E0);
LABEL_5:
    **(v0 + 392) = 1;
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

  v5 = *(v0 + 376);
  v41 = *(v0 + 368);
  v6 = *(v0 + 360);
  v7 = *(v0 + 312);
  v8 = *(v0 + 232);
  sub_100025738(*(v0 + 328), v6, type metadata accessor for CRLFolderIdentifier);
  v10 = *(v8 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v9 = *(v8 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 16);
  *(v0 + 48) = *(v8 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 32);
  *(v0 + 80) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
  *(v0 + 16) = v10;
  *(v0 + 32) = v9;
  v11 = *(v0 + 32);
  *(v0 + 112) = vextq_s8(*(v0 + 16), *(v0 + 16), 8uLL);
  *(v0 + 96) = vextq_s8(v11, v11, 8uLL);
  sub_10000BE14(v0 + 120, v0 + 152, &unk_101A23CC0);
  sub_10000BE14(v0 + 112, v0 + 160, &unk_101A23CC0);
  sub_10000BE14(v0 + 104, v0 + 168, &qword_1019F66A8);
  sub_10000BE14(v0 + 96, v0 + 176, &unk_101A23CD0);
  sub_10000BE14(v0 + 88, v0 + 184, &qword_1019FFF30);
  sub_10000BE14(v0 + 80, v0 + 192, &unk_101A23CE0);
  sub_100825120(v6, v7);
  sub_10000CAAC(v0 + 120, &unk_101A23CC0);
  sub_10000CAAC(v0 + 112, &unk_101A23CC0);
  sub_10000CAAC(v0 + 104, &qword_1019F66A8);
  sub_10000CAAC(v0 + 96, &unk_101A23CD0);
  sub_10000CAAC(v0 + 88, &qword_1019FFF30);
  sub_10000CAAC(v0 + 80, &unk_101A23CE0);
  sub_10003D87C(v6, type metadata accessor for CRLFolderIdentifier);
  if ((*(v5 + 48))(v7, 1, v41) == 1)
  {
    sub_10000CAAC(*(v0 + 312), &unk_101A15B20);
    v4 = &off_101A2A000;
    goto LABEL_5;
  }

  v12 = *(v0 + 384);
  v13 = *(v0 + 392);
  sub_100025738(*(v0 + 312), v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100025738(v12, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v4 = &off_101A2A000;
LABEL_7:
  v14 = *(v0 + 400);
  v39 = *(v0 + 344);
  v40 = *(v0 + 336);
  v34 = *(v0 + 352);
  v35 = *(v0 + 304);
  v36 = *(v0 + 296);
  v31 = *(v0 + 280);
  v32 = *(v0 + 288);
  v33 = *(v0 + 272);
  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v17 = *(v0 + 216);
  v37 = *(v0 + 208);
  v38 = *(v0 + 320);
  sub_100025738(*(v0 + 392), v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v18 = v4[236];
  *(v0 + 432) = v18;
  v19 = *&v18[v15 + 24];

  v20 = sub_10083122C(v17, v16, v14, v19);

  static Date.timeIntervalSinceReferenceDate.getter();
  v22 = v21;
  static Date.timeIntervalSinceReferenceDate.getter();
  v24 = v23;
  *(v32 + *(v31 + 32)) = _swiftEmptyDictionarySingleton;
  *(v0 + 64) = v17;
  *(v0 + 72) = v16;

  CRRegister.init(wrappedValue:)();
  *(v0 + 128) = v22;
  CRRegister.init(wrappedValue:)();
  *(v0 + 136) = v24;
  CRMaxRegister.init(wrappedValue:)();
  *(v0 + 144) = v20;
  sub_100039E08();
  CRRegister.init(wrappedValue:)();
  UUID.init()();
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C004(v33, v25, v26, v34);
  sub_10005006C(v34, v35, type metadata accessor for CRLFolderIdentifier);
  sub_10005006C(v32, v35 + v36[7], type metadata accessor for CRLFolderCRDTData);
  sub_10000BE14(v37, v38, &qword_1019F33E0);
  sub_10003D87C(v34, type metadata accessor for CRLFolderIdentifier);
  sub_10003D87C(v32, type metadata accessor for CRLFolderCRDTData);
  v27 = v36[5];
  (*(v39 + 56))(v35 + v27, 1, 1, v40);
  v28 = v36[6];
  sub_10002C638(v38, v35 + v27, &qword_1019F33E0);
  *(v35 + v28) = 0;
  v29 = v35 + v36[8];
  *v29 = 0x4000000000000;
  *(v29 + 8) = 0x4000000000000;
  *(v29 + 16) = 0x4000000000000;
  *(v29 + 24) = 0;
  *(v29 + 32) = 1;
  *(v0 + 440) = *(v15 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);

  return _swift_task_switch(sub_1010D00F4, 0, 0);
}

uint64_t sub_1010D00F4()
{
  v1 = v0[55];
  v2 = v0[38];
  v3 = swift_task_alloc();
  v0[56] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v4[1] = sub_1010D01EC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x80000001015C2D20, sub_10110738C, v3, &type metadata for () + 8);
}

uint64_t sub_1010D01EC()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1010D0308;
  }

  else
  {

    v2 = sub_1010D04C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010D0308()
{

  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  return _swift_task_switch(sub_1010D036C, v1, v2);
}

uint64_t sub_1010D036C()
{

  v1 = v0[38];
  sub_10003D87C(v0[50], type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10003D87C(v1, type metadata accessor for CRLFolder);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1010D04C0()
{
  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_1010D055C;

  return sub_10007CEB8(_swiftEmptySetSingleton);
}

uint64_t sub_1010D055C()
{
  v1 = *v0;

  v2 = *(v1 + 424);
  v3 = *(v1 + 416);

  return _swift_task_switch(sub_1010D067C, v3, v2);
}

uint64_t sub_1010D067C()
{
  v1 = v0[54];
  v2 = v0[38];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[29];

  v7 = *(v6 + v1 + 24);
  (*(v3 + 16))(v4, v2, v5);
  v8 = v0[33];
  if (*(v7 + 16))
  {

    v9 = sub_10003E994(v8);
    v10 = v0[32];
    v11 = v0[33];
    v12 = v0[30];
    v13 = v0[31];
    if (v14)
    {
      v15 = v9;
      v29 = *(v7 + 56);
      v30 = v0[31];
      v31 = v0[33];
      v16 = _s4NodeVMa(0);
      v17 = v12;
      v18 = *(v16 - 8);
      v19 = v29 + *(v18 + 72) * v15;
      v20 = v17;
      sub_10005006C(v19, v17, _s4NodeVMa);
      (*(v10 + 8))(v31, v30);

      (*(v18 + 56))(v20, 0, 1, v16);
    }

    else
    {

      (*(v10 + 8))(v11, v13);
      v16 = _s4NodeVMa(0);
      (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    }
  }

  else
  {
    v21 = v0[30];
    (*(v0[32] + 8))(v0[33], v0[31]);
    v16 = _s4NodeVMa(0);
    (*(*(v16 - 8) + 56))(v21, 1, 1, v16);
  }

  v22 = v0[30];
  _s4NodeVMa(0);
  if ((*(*(v16 - 8) + 48))(v22, 1, v16) == 1)
  {
    sub_10000CAAC(v22, &unk_1019FB770);
    sub_1006A3EB0();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    v24 = v0[38];
    sub_10003D87C(v0[50], type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003D87C(v24, type metadata accessor for CRLFolder);
  }

  else
  {
    v26 = v0[38];
    v27 = v0[25];
    sub_10003D87C(v0[50], type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003D87C(v26, type metadata accessor for CRLFolder);
    sub_100025738(v22, v27, _s4NodeVMa);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_1010D0BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[47] = a4;
  v5[48] = v4;
  v5[45] = a2;
  v5[46] = a3;
  v5[44] = a1;
  v5[49] = type metadata accessor for CRLFolderIdentifier(0);
  v5[50] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[51] = v6;
  v5[52] = *(v6 - 8);
  v5[53] = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770);
  v5[54] = swift_task_alloc();
  v7 = type metadata accessor for CRLFolder();
  v5[55] = v7;
  v5[56] = *(v7 - 8);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[60] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[61] = v9;
  v5[62] = v8;

  return _swift_task_switch(sub_1010D0D90, v9, v8);
}

uint64_t sub_1010D0D90()
{
  v1 = *(v0 + 384);
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folders;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_1007C88C4(*(v0 + 360)), (v5 & 1) != 0))
  {
    v7 = *(v0 + 464);
    v6 = *(v0 + 472);
    v8 = *(v0 + 456);
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);
    v11 = *(v0 + 368);
    sub_10005006C(*(v3 + 56) + *(*(v0 + 448) + 72) * v4, v7, type metadata accessor for CRLFolder);
    sub_100025738(v7, v6, type metadata accessor for CRLFolder);
    swift_endAccess();
    sub_10005006C(v6, v8, type metadata accessor for CRLFolder);
    *(v0 + 232) = v11;
    *(v0 + 240) = v9;

    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.setter();
    v12 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
    *(v0 + 504) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
    v13 = (v10 + v12);
    v14 = v13[2];
    v15 = *v13;
    *(v0 + 176) = v13[1];
    *(v0 + 192) = v14;
    *(v0 + 160) = v15;
    v16 = vextq_s8(*(v0 + 160), *(v0 + 160), 8uLL);
    *(v0 + 264) = vextq_s8(*(v0 + 176), *(v0 + 176), 8uLL);
    *(v0 + 280) = v16;
    *(v0 + 248) = vextq_s8(*(v0 + 192), *(v0 + 192), 8uLL);
    sub_10000BE14(v0 + 288, v0 + 296, &unk_101A23CC0);
    sub_10000BE14(v0 + 280, v0 + 304, &unk_101A23CC0);
    sub_10000BE14(v0 + 272, v0 + 312, &qword_1019F66A8);
    sub_10000BE14(v0 + 264, v0 + 320, &unk_101A23CD0);
    sub_10000BE14(v0 + 256, v0 + 328, &qword_1019FFF30);
    sub_10000BE14(v0 + 248, v0 + 336, &unk_101A23CE0);
    v17 = sub_100827084(v8, v11, v9);
    sub_10000CAAC(v0 + 288, &unk_101A23CC0);
    sub_10000CAAC(v0 + 280, &unk_101A23CC0);
    sub_10000CAAC(v0 + 272, &qword_1019F66A8);
    sub_10000CAAC(v0 + 264, &unk_101A23CD0);
    sub_10000CAAC(v0 + 256, &qword_1019FFF30);
    sub_10000CAAC(v0 + 248, &unk_101A23CE0);
    *(v0 + 344) = v17;
    type metadata accessor for CRLFolderCRDTData();
    sub_1005B981C(&qword_1019F4860);
    CRRegister.wrappedValue.setter();
    *(v0 + 512) = *(v10 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);

    return _swift_task_switch(sub_1010D1294, 0, 0);
  }

  else
  {
    swift_endAccess();

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 400);
    v19 = *(v0 + 360);
    v20 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10005006C(v19, v18, type metadata accessor for CRLFolderIdentifier);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v22;
    *(inited + 40) = v24;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v25, "Trying to rename a folder, but could not find node with folder identifier %@.", 77, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_1006A3EB0();
    swift_allocError();
    *v26 = 3;
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1010D1294()
{
  v1 = v0[64];
  v2 = v0[57];
  v3 = swift_task_alloc();
  v0[65] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[66] = v4;
  *v4 = v0;
  v4[1] = sub_1010D138C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000010, 0x80000001015C3260, sub_101107900, v3, &type metadata for () + 8);
}

uint64_t sub_1010D138C()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_1010D14A8;
  }

  else
  {

    v2 = sub_1010D15EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010D14A8()
{

  v1 = *(v0 + 488);
  v2 = *(v0 + 496);

  return _swift_task_switch(sub_1010D150C, v1, v2);
}

uint64_t sub_1010D150C()
{
  v1 = v0[59];
  v2 = v0[57];

  sub_10003D87C(v1, type metadata accessor for CRLFolder);
  sub_10003D87C(v2, type metadata accessor for CRLFolder);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1010D15EC()
{
  v1 = swift_task_alloc();
  *(v0 + 544) = v1;
  *v1 = v0;
  v1[1] = sub_1010D1688;

  return sub_10007CEB8(_swiftEmptySetSingleton);
}

uint64_t sub_1010D1688()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return _swift_task_switch(sub_1010D17A8, v3, v2);
}

uint64_t sub_1010D17A8()
{
  v1 = v0[63];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  v5 = v0[48];
  v6 = v0[45];

  v7 = *(v5 + v1 + 24);
  (*(v3 + 16))(v2, v6, v4);
  if (*(v7 + 16))
  {
    v8 = v0[53];

    v9 = sub_10003E994(v8);
    v10 = v0[53];
    v11 = v0[54];
    v13 = v0[51];
    v12 = v0[52];
    if (v14)
    {
      v15 = v9;
      v38 = *(v7 + 56);
      v39 = v0[51];
      v40 = v0[53];
      v16 = _s4NodeVMa(0);
      v17 = v11;
      v18 = *(v16 - 8);
      v19 = v38 + *(v18 + 72) * v15;
      v20 = v17;
      sub_10005006C(v19, v17, _s4NodeVMa);
      (*(v12 + 8))(v40, v39);

      (*(v18 + 56))(v20, 0, 1, v16);
    }

    else
    {

      (*(v12 + 8))(v10, v13);
      v16 = _s4NodeVMa(0);
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    }
  }

  else
  {
    v21 = v0[54];
    (*(v0[52] + 8))(v0[53], v0[51]);
    v16 = _s4NodeVMa(0);
    (*(*(v16 - 8) + 56))(v21, 1, 1, v16);
  }

  v22 = v0[54];
  _s4NodeVMa(0);
  if ((*(*(v16 - 8) + 48))(v22, 1, v16) == 1)
  {
    sub_10000CAAC(v22, &unk_1019FB770);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v23 = v0[59];
    v24 = v0[57];
    v25 = v0[50];
    v26 = v0[45];
    v27 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10005006C(v26, v25, type metadata accessor for CRLFolderIdentifier);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v29;
    *(inited + 40) = v31;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v32, "Tried to rename a folder, but could not find node with folder identifier %@.", 76, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_1006A3EB0();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();
    sub_10003D87C(v23, type metadata accessor for CRLFolder);
    sub_10003D87C(v24, type metadata accessor for CRLFolder);

    v34 = v0[1];
  }

  else
  {
    v35 = v0[57];
    v36 = v0[44];
    sub_10003D87C(v0[59], type metadata accessor for CRLFolder);
    sub_10003D87C(v35, type metadata accessor for CRLFolder);
    sub_100025738(v22, v36, _s4NodeVMa);

    v34 = v0[1];
  }

  return v34();
}

uint64_t sub_1010D1D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 1016) = v5;
  *(v6 + 881) = a5;
  *(v6 + 1008) = a4;
  *(v6 + 1000) = a3;
  *(v6 + 992) = a2;
  *(v6 + 984) = a1;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  *(v6 + 1024) = v7;
  *(v6 + 1032) = *(v7 - 8);
  *(v6 + 1040) = swift_task_alloc();
  _s5BoardVMa(0);
  *(v6 + 1048) = swift_task_alloc();
  sub_1005B981C(&qword_101A21CB0);
  *(v6 + 1056) = swift_task_alloc();
  v8 = type metadata accessor for CRLFolder();
  *(v6 + 1064) = v8;
  *(v6 + 1072) = *(v8 - 8);
  *(v6 + 1080) = swift_task_alloc();
  sub_1005B981C(&qword_101A03A00);
  *(v6 + 1088) = swift_task_alloc();
  *(v6 + 1096) = swift_task_alloc();
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  *(v6 + 1104) = v9;
  *(v6 + 1112) = *(v9 - 8);
  *(v6 + 1120) = swift_task_alloc();
  *(v6 + 1128) = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  *(v6 + 1136) = swift_task_alloc();
  *(v6 + 1144) = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  *(v6 + 1152) = swift_task_alloc();
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();
  *(v6 + 1176) = swift_task_alloc();
  *(v6 + 1184) = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770);
  *(v6 + 1192) = swift_task_alloc();
  *(v6 + 1200) = swift_task_alloc();
  v10 = _s4NodeVMa(0);
  *(v6 + 1208) = v10;
  *(v6 + 1216) = *(v10 - 8);
  *(v6 + 1224) = swift_task_alloc();
  *(v6 + 1232) = swift_task_alloc();
  *(v6 + 1240) = swift_task_alloc();
  *(v6 + 1248) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v6 + 1256) = v11;
  *(v6 + 1264) = *(v11 - 8);
  *(v6 + 1272) = swift_task_alloc();
  *(v6 + 1280) = swift_task_alloc();
  *(v6 + 1288) = swift_task_alloc();
  v12 = type metadata accessor for CRLFolderIdentifier(0);
  *(v6 + 1296) = v12;
  *(v6 + 1304) = *(v12 - 8);
  *(v6 + 1312) = swift_task_alloc();
  *(v6 + 1320) = swift_task_alloc();
  *(v6 + 1328) = swift_task_alloc();
  *(v6 + 1336) = swift_task_alloc();
  *(v6 + 1344) = swift_task_alloc();
  *(v6 + 1352) = swift_task_alloc();
  *(v6 + 1360) = sub_1005B981C(&qword_1019F33E0);
  *(v6 + 1368) = swift_task_alloc();
  *(v6 + 1376) = swift_task_alloc();
  *(v6 + 1384) = swift_task_alloc();
  *(v6 + 1392) = swift_task_alloc();
  *(v6 + 1400) = swift_task_alloc();
  *(v6 + 1408) = type metadata accessor for MainActor();
  *(v6 + 1416) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1424) = v14;
  *(v6 + 1432) = v13;

  return _swift_task_switch(sub_1010D2270, v14, v13);
}

uint64_t sub_1010D2270()
{
  v200 = v0;
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1400);
  v195 = *(v0 + 881);
  v190 = *(v0 + 1008);
  v183 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = static OS_os_log.crlBoardLibrary;
  *(v0 + 1440) = static OS_os_log.crlBoardLibrary;
  *(v0 + 1448) = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v5 = Array.description.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(v0 + 1456) = v8;
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  sub_10000BE14(v183, v1, &qword_1019F33E0);
  v9 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  *(v0 + 872) = v190;
  *(v0 + 880) = v195 & 1;
  sub_1005B981C(&qword_101A21D10);
  v11 = String.init<A>(describing:)();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v8;
  *(inited + 112) = v11;
  *(inited + 120) = v12;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v13, "moveItems(itemIdentifiers: %@, to parentFolderIdentifier: %@, at index: %@)", 75, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v14 = *(v2 + 16);

  v16 = sub_100E93A84(v15);

  v17 = *(v16 + 16);

  if (v14 != v17)
  {

    v95 = static os_log_type_t.error.getter();
    sub_100005404(v3, &_mh_execute_header, v95, "moveItems(_:to:at:): Duplicate identifiers passed in, unable to determine valid position for item(s)", 100, 2, _swiftEmptyArrayStorage);
    sub_1006A3EB0();
    swift_allocError();
    *v96 = 5;
    swift_willThrow();
LABEL_34:

    v97 = *(v0 + 8);

    return v97();
  }

  v18 = *(v0 + 1392);
  v19 = *(v0 + 1304);
  v20 = *(v0 + 1296);
  sub_10000BE14(*(v0 + 1000), v18, &qword_1019F33E0);
  v21 = *(v19 + 48);
  *(v0 + 1464) = v21;
  *(v0 + 1472) = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v22 = v21(v18, 1, v20);
  v23 = *(v0 + 1392);
  if (v22 == 1)
  {
    sub_10000CAAC(v23, &qword_1019F33E0);
    v24 = &off_101A2A000;
    if (v14)
    {
LABEL_6:
      v196 = v14;
      v187 = v24[236] + *(v0 + 1016);
      v25 = *(v0 + 1264);
      v26 = *(v25 + 16);
      v25 += 16;
      v27 = *(v0 + 992) + ((*(v25 + 64) + 32) & ~*(v25 + 64));
      v28 = *(v0 + 1216);
      v181 = (v28 + 56);
      v182 = v26;
      v176 = v28;
      v179 = (v25 - 8);
      v180 = (v28 + 48);
      v172 = (v0 + 1136);
      v178 = *(v25 + 56);
      v177 = _swiftEmptyArrayStorage;
      while (1)
      {
        v191 = v27;
        v182(*(v0 + 1288));
        v30 = *(v187 + 3);
        if (*(v30 + 16))
        {
          v31 = *(v0 + 1288);

          v32 = sub_10003E994(v31);
          if (v33)
          {
            v34 = *(v0 + 1208);
            v35 = *(v0 + 1192);
            sub_10005006C(*(v30 + 56) + *(v176 + 72) * v32, v35, _s4NodeVMa);

            (*(v176 + 56))(v35, 0, 1, v34);
            goto LABEL_16;
          }
        }

        (*v181)(*(v0 + 1192), 1, 1, *(v0 + 1208));
        v184 = objc_opt_self();
        v36 = [v184 _atomicIncrementAssertCount];
        v199[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v199);
        StaticString.description.getter();
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        v39 = [v38 lastPathComponent];

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v43 = static OS_os_log.crlAssert;
        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_10146CA70;
        *(v44 + 56) = &type metadata for Int32;
        *(v44 + 64) = &protocol witness table for Int32;
        *(v44 + 32) = v36;
        v45 = sub_100006370(0, &qword_1019F4D30);
        *(v44 + 96) = v45;
        v46 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v44 + 72) = v37;
        *(v44 + 136) = &type metadata for String;
        *(v44 + 144) = v8;
        *(v44 + 104) = v46;
        *(v44 + 112) = v40;
        *(v44 + 120) = v42;
        *(v44 + 176) = &type metadata for UInt;
        *(v44 + 152) = 2009;
        v47 = v199[0];
        *(v44 + 216) = v45;
        *(v44 + 224) = v46;
        *(v44 + 184) = &protocol witness table for UInt;
        *(v44 + 192) = v47;
        v48 = v37;
        v49 = v47;
        v50 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
        swift_setDeallocating();
        swift_arrayDestroy();
        v51 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v51, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v52 = swift_allocObject();
        v52[2] = 8;
        v52[3] = 0;
        v52[4] = 0;
        v52[5] = 0;
        v53 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v55 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v56 = String._bridgeToObjectiveC()();

        [v184 handleFailureInFunction:v54 file:v55 lineNumber:2009 isFatal:0 format:v56 args:v53];

LABEL_16:
        v57 = *(v0 + 1208);
        v58 = *(v0 + 1200);
        sub_10003DFF8(*(v0 + 1192), v58, &unk_1019FB770);
        if ((*v180)(v58, 1, v57) == 1)
        {
          v29 = *(v0 + 1200);
          (*v179)(*(v0 + 1288), *(v0 + 1256));
          sub_10000CAAC(v29, &unk_1019FB770);
        }

        else
        {
          v59 = *(v0 + 1232);
          v60 = *(v0 + 1184);
          sub_100025738(*(v0 + 1200), v59, _s4NodeVMa);
          sub_10005006C(v59, v60, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v61 = _s5BoardVMa;
            v62 = (v0 + 1184);
          }

          else
          {
            v68 = *(v0 + 1232);
            v69 = *(v0 + 1176);
            sub_10003D87C(*(v0 + 1184), type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10005006C(v68, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v71 = *(v0 + 1176);
            if (EnumCaseMultiPayload != 1)
            {
              sub_10003D87C(v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
              goto LABEL_28;
            }

            v72 = *v172;
            sub_100025738(v71, *v172, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v73 = sub_1005B981C(&qword_1019F3480);
            if ((*(*(v73 - 8) + 48))(v72, 5, v73))
            {
              sub_10003D87C(*v172, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_28:
              v185 = objc_opt_self();
              v74 = [v185 _atomicIncrementAssertCount];
              v199[0] = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, v199);
              StaticString.description.getter();
              v75 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v76 = String._bridgeToObjectiveC()();

              v77 = [v76 lastPathComponent];

              v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v80 = v79;

              if (qword_1019F20A0 != -1)
              {
                swift_once();
              }

              v174 = *(v0 + 1256);
              v175 = *(v0 + 1288);
              v173 = *(v0 + 1232);
              v81 = static OS_os_log.crlAssert;
              v82 = swift_initStackObject();
              *(v82 + 16) = xmmword_10146CA70;
              *(v82 + 56) = &type metadata for Int32;
              *(v82 + 64) = &protocol witness table for Int32;
              *(v82 + 32) = v74;
              v83 = sub_100006370(0, &qword_1019F4D30);
              *(v82 + 96) = v83;
              v84 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
              *(v82 + 72) = v75;
              *(v82 + 136) = &type metadata for String;
              *(v82 + 144) = v8;
              *(v82 + 104) = v84;
              *(v82 + 112) = v78;
              *(v82 + 120) = v80;
              *(v82 + 176) = &type metadata for UInt;
              *(v82 + 152) = 2013;
              v85 = v199[0];
              *(v82 + 216) = v83;
              *(v82 + 224) = v84;
              *(v82 + 184) = &protocol witness table for UInt;
              *(v82 + 192) = v85;
              v86 = v75;
              v87 = v85;
              v88 = static os_log_type_t.error.getter();
              sub_100005404(v81, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v82);
              swift_setDeallocating();
              swift_arrayDestroy();
              v89 = static os_log_type_t.error.getter();
              sub_100005404(v81, &_mh_execute_header, v89, "Item %@ is a type that cannot be moved.", 39, 2, _swiftEmptyArrayStorage);

              type metadata accessor for __VaListBuilder();
              v90 = swift_allocObject();
              v90[2] = 8;
              v90[3] = 0;
              v90[4] = 0;
              v90[5] = 0;
              v91 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v92 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v93 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v94 = String._bridgeToObjectiveC()();

              [v185 handleFailureInFunction:v92 file:v93 lineNumber:2013 isFatal:0 format:v94 args:v91];

              sub_10003D87C(v173, _s4NodeVMa);
              (*v179)(v175, v174);
              goto LABEL_8;
            }

            v61 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
            v62 = (v0 + 1136);
          }

          v63 = *v62;
          (*v179)(*(v0 + 1288), *(v0 + 1256));
          sub_10003D87C(v63, v61);
          sub_100025738(*(v0 + 1232), *(v0 + 1240), _s4NodeVMa);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v64 = v177;
          }

          else
          {
            v64 = sub_10003DFD0(0, v177[2] + 1, 1, v177);
          }

          v66 = v64[2];
          v65 = v64[3];
          if (v66 >= v65 >> 1)
          {
            v64 = sub_10003DFD0(v65 > 1, v66 + 1, 1, v64);
          }

          v67 = *(v0 + 1240);
          v64[2] = v66 + 1;
          v177 = v64;
          sub_100025738(v67, v64 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v66, _s4NodeVMa);
        }

LABEL_8:
        v27 = v191 + v178;
        if (!--v196)
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_40;
  }

  v99 = *(v0 + 1352);
  v100 = *(v0 + 992);
  sub_100025738(v23, v99, type metadata accessor for CRLFolderIdentifier);
  if (sub_1012CD63C(v99, v100))
  {
    v101 = *(v0 + 1352);
    v102 = *(v0 + 1344);

    v103 = swift_initStackObject();
    *(v103 + 16) = xmmword_10146C6B0;
    sub_10005006C(v101, v102, type metadata accessor for CRLFolderIdentifier);
    v104 = String.init<A>(describing:)();
    *(v103 + 56) = &type metadata for String;
    *(v103 + 64) = v8;
    *(v103 + 32) = v104;
    *(v103 + 40) = v105;
    v106 = static os_log_type_t.error.getter();
    sub_100005404(v3, &_mh_execute_header, v106, "moveItems(_:to:at:): Cannot parent folder with identifier %@ to itself", 70, 2, v103);
    swift_setDeallocating();
    sub_100005070(v103 + 32);
    sub_1006A3EB0();
    swift_allocError();
    *v107 = 5;
    swift_willThrow();
    sub_10003D87C(v101, type metadata accessor for CRLFolderIdentifier);
    goto LABEL_34;
  }

  sub_10003D87C(*(v0 + 1352), type metadata accessor for CRLFolderIdentifier);
  v24 = &off_101A2A000;
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_40:
  v177 = _swiftEmptyArrayStorage;
LABEL_41:
  *(v0 + 1480) = v177;
  v108 = v177[2];
  *(v0 + 1488) = v108;
  v109 = _swiftEmptyArrayStorage;
  if (v108)
  {
    v110 = *(v0 + 1216);
    v111 = *(v0 + 1112);
    v112 = v177 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
    v188 = v111;
    v192 = (v111 + 56);
    v113 = (v111 + 48);
    v197 = *(v110 + 72);
    v114 = &qword_101A03A00;
    v115 = &unk_101480610;
    do
    {
      v116 = v109;
      v117 = v115;
      v118 = v114;
      v119 = *(v0 + 1248);
      v120 = *(v0 + 1168);
      sub_10005006C(v112, v119, _s4NodeVMa);
      sub_10005006C(v119, v120, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003D87C(v119, _s4NodeVMa);
      v121 = swift_getEnumCaseMultiPayload();
      v122 = *(v0 + 1168);
      if (v121 == 1)
      {
        v123 = sub_1005B981C(&qword_1019F3480);
        if (!(*(*(v123 - 8) + 48))(v122, 5, v123))
        {
          sub_100025738(v122, *(v0 + 1088), type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v125 = 0;
          goto LABEL_50;
        }

        v124 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v124 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003D87C(v122, v124);
      v125 = 1;
LABEL_50:
      v126 = *(v0 + 1104);
      v127 = *(v0 + 1096);
      v128 = *(v0 + 1088);
      (*v192)(v128, v125, 1, v126);
      v129 = v128;
      v114 = v118;
      v130 = v118;
      v115 = v117;
      sub_10003DFF8(v129, v127, v130);
      if ((*v113)(v127, 1, v126) == 1)
      {
        sub_10000CAAC(*(v0 + 1096), v114);
        v109 = v116;
      }

      else
      {
        sub_100025738(*(v0 + 1096), *(v0 + 1128), type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v109 = v116;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_100B36D24(0, v116[2] + 1, 1, v116);
        }

        v132 = v109[2];
        v131 = v109[3];
        if (v132 >= v131 >> 1)
        {
          v109 = sub_100B36D24(v131 > 1, v132 + 1, 1, v109);
        }

        v133 = *(v0 + 1128);
        v109[2] = v132 + 1;
        sub_100025738(v133, v109 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v132, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v112 += v197;
      --v108;
    }

    while (v108);
  }

  v134 = v109[2];
  if (v134)
  {
    v135 = *(v0 + 1304);
    v136 = *(v0 + 1112);
    v199[0] = _swiftEmptyArrayStorage;
    sub_1007768C4(0, v134, 0);
    v137 = v199[0];
    v138 = v109 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v139 = *(v136 + 72);
    do
    {
      v140 = *(v0 + 1328);
      v141 = *(v0 + 1120);
      sub_10005006C(v138, v141, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10005006C(v141, v140, type metadata accessor for CRLFolderIdentifier);
      sub_10003D87C(v141, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v199[0] = v137;
      v143 = v137[2];
      v142 = v137[3];
      if (v143 >= v142 >> 1)
      {
        sub_1007768C4(v142 > 1, v143 + 1, 1);
        v137 = v199[0];
      }

      v144 = *(v0 + 1328);
      v137[2] = v143 + 1;
      sub_100025738(v144, v137 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v143, type metadata accessor for CRLFolderIdentifier);
      v138 += v139;
      --v134;
    }

    while (v134);
  }

  else
  {

    v137 = _swiftEmptyArrayStorage;
  }

  v145 = v137[2];
  if (v145)
  {
    v146 = *(v0 + 1304);
    v193 = *(v0 + 1016);
    v147 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folders;
    v148 = v137 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
    v186 = *(v0 + 1072);
    v189 = *(v146 + 72);
    v198 = _swiftEmptyArrayStorage;
    do
    {
      sub_10005006C(v148, *(v0 + 1336), type metadata accessor for CRLFolderIdentifier);
      swift_beginAccess();
      v149 = *(v193 + v147);
      if (*(v149 + 16) && (v150 = sub_1007C88C4(*(v0 + 1336)), (v151 & 1) != 0))
      {
        sub_10005006C(*(v149 + 56) + *(v186 + 72) * v150, *(v0 + 1056), type metadata accessor for CRLFolder);
        v152 = 0;
      }

      else
      {
        v152 = 1;
      }

      v153 = *(v0 + 1336);
      v154 = *(v0 + 1064);
      v155 = *(v0 + 1056);
      (*(v186 + 56))(v155, v152, 1, v154);
      swift_endAccess();
      sub_10003D87C(v153, type metadata accessor for CRLFolderIdentifier);
      if ((*(v186 + 48))(v155, 1, v154) == 1)
      {
        sub_10000CAAC(*(v0 + 1056), &qword_101A21CB0);
      }

      else
      {
        sub_100025738(*(v0 + 1056), *(v0 + 1080), type metadata accessor for CRLFolder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v198 = sub_100B37428(0, v198[2] + 1, 1, v198);
        }

        v157 = v198[2];
        v156 = v198[3];
        if (v157 >= v156 >> 1)
        {
          v198 = sub_100B37428(v156 > 1, v157 + 1, 1, v198);
        }

        v158 = *(v0 + 1080);
        v198[2] = v157 + 1;
        sub_100025738(v158, v198 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v157, type metadata accessor for CRLFolder);
      }

      v148 += v189;
      --v145;
    }

    while (v145);
  }

  else
  {
    v198 = _swiftEmptyArrayStorage;
  }

  v194 = *(v0 + 1016);
  v159 = *(v0 + 881);
  v160 = *(v0 + 1008);
  v161 = *(v0 + 1000);
  v162 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  *(v0 + 1496) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v163 = (v194 + v162);
  v164 = *v163;
  v165 = v163[2];
  *(v0 + 792) = v163[1];
  *(v0 + 808) = v165;
  *(v0 + 776) = v164;
  *(v0 + 928) = *(v0 + 776);
  v166 = vextq_s8(*(v0 + 784), *(v0 + 784), 8uLL);
  *(v0 + 896) = vextq_s8(*(v0 + 800), *(v0 + 800), 8uLL);
  *(v0 + 912) = v166;
  *(v0 + 888) = *(v0 + 816);
  sub_10000BE14(v0 + 928, v0 + 936, &unk_101A23CC0);
  sub_10000BE14(v0 + 920, v0 + 944, &unk_101A23CC0);
  sub_10000BE14(v0 + 912, v0 + 952, &qword_1019F66A8);
  sub_10000BE14(v0 + 904, v0 + 960, &unk_101A23CD0);
  sub_10000BE14(v0 + 896, v0 + 968, &qword_1019FFF30);
  sub_10000BE14(v0 + 888, v0 + 976, &unk_101A23CE0);
  v167 = sub_100827E48(v137, v161, v160, v159 & 1);

  sub_10000CAAC(v0 + 928, &unk_101A23CC0);
  sub_10000CAAC(v0 + 920, &unk_101A23CC0);
  sub_10000CAAC(v0 + 912, &qword_1019F66A8);
  sub_10000CAAC(v0 + 904, &unk_101A23CD0);
  sub_10000CAAC(v0 + 896, &qword_1019FFF30);
  sub_10000CAAC(v0 + 888, &unk_101A23CE0);
  v168 = swift_task_alloc();
  *(v168 + 16) = v161;
  v169 = sub_101104E5C(v198, v167, sub_101107958, v168);
  *(v0 + 1504) = v169;

  *(v0 + 1512) = static MainActor.shared.getter();
  v170 = swift_task_alloc();
  *(v0 + 1520) = v170;
  *(v170 + 16) = v169;
  *(v170 + 24) = v194;
  v171 = swift_task_alloc();
  *(v0 + 1528) = v171;
  *v171 = v0;
  v171[1] = sub_1010D3E94;
  v202 = &type metadata for () + 8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1010D3E94()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 1432);
    v5 = *(v2 + 1424);

    return _swift_task_switch(sub_1010D3FE8, v5, v4);
  }
}

unint64_t sub_1010D3FE8()
{
  result = v0[185];
  if (!v0[186])
  {
LABEL_26:

    v51 = swift_task_alloc();
    v0[192] = v51;
    *v51 = v0;
    v51[1] = sub_1010D4614;

    return sub_10007CEB8(_swiftEmptySetSingleton);
  }

  v2 = 0;
  v3 = v0[152];
  v52 = v0[129];
  v4 = v0[127];
  v5 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardToParentFolderMapping;
  v6 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v53 = (v0[163] + 56);
  v54 = v0[163];
  v7 = &qword_1019F33E0;
  v55 = v6;
  v56 = v3;
  while (1)
  {
    if (v2 >= *(v0[185] + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v10 = v0[153];
    v11 = v0[145];
    sub_10005006C(v6 + *(v3 + 72) * v2, v10, _s4NodeVMa);
    sub_10005006C(v10, v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      break;
    }

    v8 = v0[145];
    sub_10003D87C(v0[153], _s4NodeVMa);
    v9 = type metadata accessor for CRLBoardLibraryViewModel.Item;
LABEL_4:
    result = sub_10003D87C(v8, v9);
    if (++v2 == v0[186])
    {
      goto LABEL_26;
    }
  }

  v57 = v0[183];
  v12 = v0[172];
  v13 = v0[162];
  v14 = v0[131];
  v15 = v0[130];
  v16 = v7;
  v17 = v5;
  v18 = v4;
  v19 = v0[125];
  sub_100025738(v0[145], v14, _s5BoardVMa);
  sub_10005006C(v14, v15, type metadata accessor for CRLBoardIdentifier);
  v20 = v19;
  v4 = v18;
  v5 = v17;
  v7 = v16;
  sub_10000BE14(v20, v12, v16);
  swift_beginAccess();
  v21 = v57(v12, 1, v13);
  v22 = v0[172];
  if (v21 == 1)
  {
    v23 = v0[130];
    sub_10000CAAC(v22, v16);
    v24 = sub_1000486F0(v23);
    if (v25)
    {
      v26 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v4 + v5);
      *(v4 + v5) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA5CA8();
      }

      v29 = v0[171];
      v30 = v0[130];
      sub_10003D87C(*(v28 + 48) + *(v52 + 72) * v26, type metadata accessor for CRLBoardIdentifier);
      sub_100025738(*(v28 + 56) + *(v54 + 72) * v26, v29, type metadata accessor for CRLFolderIdentifier);
      sub_100BCE340(v26, v28);
      sub_10003D87C(v30, type metadata accessor for CRLBoardIdentifier);
      *(v4 + v5) = v28;

      v31 = 0;
    }

    else
    {
      sub_10003D87C(v0[130], type metadata accessor for CRLBoardIdentifier);
      v31 = 1;
    }

    v43 = v0[171];
    (*v53)(v43, v31, 1, v0[162]);
    sub_10000CAAC(v43, v16);
LABEL_25:
    v6 = v55;
    v3 = v56;
    v8 = v0[153];
    v49 = v0[131];
    swift_endAccess();
    sub_10003D87C(v49, _s5BoardVMa);
    v9 = _s4NodeVMa;
    goto LABEL_4;
  }

  v32 = v0[130];
  sub_100025738(v22, v0[164], type metadata accessor for CRLFolderIdentifier);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v4 + v5);
  *(v4 + v5) = 0x8000000000000000;
  result = sub_1000486F0(v32);
  v36 = v34[2];
  v37 = (v35 & 1) == 0;
  v38 = __OFADD__(v36, v37);
  v39 = v36 + v37;
  if (v38)
  {
    goto LABEL_33;
  }

  v40 = v35;
  if (v34[3] >= v39)
  {
    if ((v33 & 1) == 0)
    {
      v50 = result;
      sub_100AA5CA8();
      result = v50;
    }

    goto LABEL_20;
  }

  v41 = v0[130];
  sub_100A8C818(v39, v33);
  result = sub_1000486F0(v41);
  if ((v40 & 1) == (v42 & 1))
  {
LABEL_20:
    v44 = v0[164];
    v45 = v0[130];
    if (v40)
    {
      sub_101107A14(v0[164], v34[7] + *(v54 + 72) * result, type metadata accessor for CRLFolderIdentifier);
      sub_10003D87C(v45, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      v34[(result >> 6) + 8] |= 1 << result;
      v46 = result;
      sub_10005006C(v45, v34[6] + *(v52 + 72) * result, type metadata accessor for CRLBoardIdentifier);
      sub_100025738(v44, v34[7] + *(v54 + 72) * v46, type metadata accessor for CRLFolderIdentifier);
      result = sub_10003D87C(v45, type metadata accessor for CRLBoardIdentifier);
      v47 = v34[2];
      v38 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v38)
      {
        goto LABEL_34;
      }

      v34[2] = v48;
    }

    *(v4 + v5) = v34;

    goto LABEL_25;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1010D4614()
{
  v1 = *v0;

  v2 = *(v1 + 1432);
  v3 = *(v1 + 1424);

  return _swift_task_switch(sub_1010D4734, v3, v2);
}

uint64_t sub_1010D4734()
{
  v1 = v0[183];
  v2 = v0[173];
  v3 = v0[162];
  v4 = v0[125];

  sub_10000BE14(v4, v2, &qword_1019F33E0);
  v5 = v1(v2, 1, v3);
  v6 = v0[173];
  if (v5 == 1)
  {
    v7 = v0[159];
    v8 = v0[144];
    sub_10000CAAC(v6, &qword_1019F33E0);
    *v8 = 1;
    swift_storeEnumTagMultiPayload();
    sub_100F87E04(v7);
    v9 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v10 = v8;
  }

  else
  {
    v11 = v0[165];
    v12 = v0[159];
    v13 = v0[158];
    v14 = v0[157];
    sub_100025738(v6, v11, type metadata accessor for CRLFolderIdentifier);
    (*(v13 + 16))(v12, v11, v14);
    v9 = type metadata accessor for CRLFolderIdentifier;
    v10 = v11;
  }

  sub_10003D87C(v10, v9);
  v15 = v0[127] + v0[187];
  (*(v0[158] + 32))(v0[160], v0[159], v0[157]);
  v16 = *(v15 + 24);
  if (*(v16 + 16))
  {
    v17 = v0[160];

    v18 = sub_10003E994(v17);
    if (v19)
    {
      v20 = v0[160];
      v21 = v0[158];
      v22 = v0[157];
      sub_10005006C(*(v16 + 56) + *(v0[152] + 72) * v18, v0[123], _s4NodeVMa);
      (*(v21 + 8))(v20, v22);

      v23 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v24 = v0[182];
  v25 = v0[180];
  v26 = v0[160];
  v27 = v0[158];
  v28 = v0[157];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  sub_101104B20(&qword_101A02180, &type metadata accessor for UUID);
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v24;
  *(inited + 32) = v30;
  *(inited + 40) = v31;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v32, "Tried to move items, but could not find destination node with item identifier %@.", 81, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_1006A3EB0();
  swift_allocError();
  *v33 = 5;
  swift_willThrow();
  (*(v27 + 8))(v26, v28);

  v23 = v0[1];
LABEL_10:

  return v23();
}

uint64_t sub_1010D4EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_10005006C(a1, a3, type metadata accessor for CRLFolder);
  v5 = type metadata accessor for CRLFolder();
  type metadata accessor for CRLFolderCRDTData();

  sub_1005B981C(&qword_1019F4860);
  CRRegister.wrappedValue.setter();
  return sub_101107B74(a2, a3 + *(v5 + 20));
}

uint64_t sub_1010D4FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(type metadata accessor for CRLFolder() - 8);
  v4[12] = v5;
  v4[13] = *(v5 + 64);
  v4[14] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010D50E4, v7, v6);
}

uint64_t sub_1010D50E4()
{
  v1 = *(v0 + 80);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 96);
    v27 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = *(v0 + 80) + ((v4 + 32) & ~v4);
    v26 = *(v3 + 72);
    v25 = (v4 + 40) & ~v4;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v24 = *(v7 + 56);
    v23 = (v7 + 48);
    v22 = (v7 + 8);
    do
    {
      v28 = v2;
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v12 = *(v0 + 112);
      v13 = *(v0 + 88);
      v24(v10, 1, 1, v6);
      sub_10005006C(v5, v12, type metadata accessor for CRLFolder);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v13;
      sub_100025738(v12, v14 + v25, type metadata accessor for CRLFolder);
      sub_10000BE14(v10, v11, &qword_1019FB750);
      LODWORD(v11) = (*v23)(v11, 1, v6);
      v15 = v13;
      v16 = *(v0 + 120);
      if (v11 == 1)
      {
        sub_10000CAAC(*(v0 + 120), &qword_1019FB750);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v22)(v16, v6);
      }

      if (v14[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      if (v19 | v17)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v27;
      swift_task_create();

      sub_10000CAAC(v9, &qword_1019FB750);
      v5 += v26;
      v2 = v28 - 1;
    }

    while (v28 != 1);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1010D544C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1010D546C, 0, 0);
}

uint64_t sub_1010D546C()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100798910;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000010, 0x80000001015C3260, sub_101107D0C, v3, &type metadata for () + 8);
}

uint64_t sub_1010D556C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_1010D5608, v4, v3);
}

uint64_t sub_1010D5608()
{
  v1 = sub_1005B981C(&qword_101A2AD50);
  v7 = *(v0 + 24);
  v2 = static MainActor.shared.getter();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v7;
  v4 = sub_1005B981C(&qword_101A2AD58);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1010D5748;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v4, v2, &protocol witness table for MainActor, &unk_1014C5E88, v3, v1);
}

uint64_t sub_1010D5748()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1010D58A8, v3, v2);
}

uint64_t sub_1010D58A8()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1010D5910()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1005F1164;

  return sub_1010C56AC(3, _swiftEmptySetSingleton);
}

uint64_t sub_1010D5A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1010D5AE0, v6, v5);
}

uint64_t sub_1010D5AE0()
{
  v1 = v0[5] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_realTimeCollaborationDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  v3 = *(v1 + 8);
  v0[10] = v3;
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v0[11] = ObjectType;
    v10 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1010D5CA0;
    v6 = v0[4];

    return v10(v6, ObjectType, v3);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_1010D6104;
    v9 = v0[4];

    return sub_1010D6310(v9);
  }
}

uint64_t sub_1010D5CA0(char a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_1010D5DC8, v4, v3);
}

uint64_t sub_1010D5DC8()
{
  if (*(v0 + 136) == 1)
  {
    v10 = (*(*(v0 + 80) + 16) + **(*(v0 + 80) + 16));
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_1010D5F5C;
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    return v10(v6, v4, v5, v2, v3);
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_1010D6104;
    v9 = *(v0 + 32);

    return sub_1010D6310(v9);
  }
}

uint64_t sub_1010D5F5C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1010D6240;
  }

  else
  {
    v5 = sub_1010D6098;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010D6098()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D6104()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1010D62AC;
  }

  else
  {
    v5 = sub_1006DB154;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010D6240()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D62AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D6310(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v2[51] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[52] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[53] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[54] = v4;
  v2[55] = v3;

  return _swift_task_switch(sub_1010D6400, v4, v3);
}

uint64_t sub_1010D6400()
{
  v1 = *(v0 + 408);
  (*(**(v0 + 392) + 192))();
  sub_100020E58((v0 + 304), *(v0 + 328));
  sub_100CB6748(v1);
  v2 = swift_task_alloc();
  *(v0 + 448) = v2;
  *v2 = v0;
  v2[1] = sub_1010D64F4;
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);

  return sub_1012393D8(v3, v4);
}

uint64_t sub_1010D64F4()
{
  v2 = *v1;
  (*v1)[57] = v0;

  sub_10003D87C(v2[51], type metadata accessor for CRLGloballyScopedBoardIdentifier);
  if (v0)
  {
    v3 = v2[54];
    v4 = v2[55];
    v5 = sub_1010D6D64;
  }

  else
  {
    sub_100005070((v2 + 38));
    v3 = v2[54];
    v4 = v2[55];
    v5 = sub_1010D6648;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1010D6648()
{
  v1 = sub_1010BEDF8(v0[52]);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v17 = v0[52];
    v32 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v34 = UUID.uuidString.getter();
    v36 = v35;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v34;
    *(inited + 40) = v36;
    v37 = static os_log_type_t.default.getter();
    sub_100005404(v32, &_mh_execute_header, v37, "Cannot accept collaboration because the board is not open. Board %{public}@", 75, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_1006A3EB0();
    swift_allocError();
    *v38 = 6;
    goto LABEL_17;
  }

  v31 = _CocoaArrayWrapper.endIndex.getter();

  if (!v31)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v3 = v0[50];
  v4 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10146C6B0;
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000053B0();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v10, "Start real time collaboration for board %{public}@", 50, 2, v5);
  swift_setDeallocating();
  sub_100005070(v5 + 32);
  v11 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (!*(v12 + 16) || (v13 = sub_1000486F0(v0[52]), (v14 & 1) == 0))
  {
    v17 = v0[52];
    swift_endAccess();

    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_10146C6B0;
    v24 = UUID.uuidString.getter();
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v9;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v4, &_mh_execute_header, v26, "Cannot accept collaboration because the board info corresponding the given board identifier was not found. Board %{public}@", 123, 2, v23);
    swift_setDeallocating();
    sub_100005070(v23 + 32);
    sub_1006A3EB0();
    swift_allocError();
    *v27 = 0;
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v0[58] = v15;
  swift_endAccess();
  v16 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession;
  swift_beginAccess();
  if (*(v15 + v16))
  {
    v17 = v0[52];

    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146C6B0;
    v19 = UUID.uuidString.getter();
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v9;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v21 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v21, "Not activating standard real-time session because a real-time session already exists for board %{public}@", 105, 2, v18);
    swift_setDeallocating();
    sub_100005070(v18 + 32);
    sub_1009F9FB8();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

LABEL_18:
    sub_10003D87C(v17, type metadata accessor for CRLBoardIdentifier);

    v39 = v0[1];

    return v39();
  }

  v28 = swift_task_alloc();
  v0[59] = v28;
  *v28 = v0;
  v28[1] = sub_1010D6B80;
  v29 = v0[49];

  return sub_1010E16B8(v29);
}

uint64_t sub_1010D6B80()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_1010D6DE0;
  }

  else
  {
    v5 = sub_1010D6CBC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010D6CBC()
{
  v1 = *(v0 + 416);

  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010D6D64()
{

  sub_100005070(v0 + 304);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D6DE0()
{
  v1 = *(v0 + 416);

  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010D6E7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  if (*(*(v4 + v8) + 16) && (sub_1000486F0(a1), (v9 & 1) != 0))
  {
    swift_endAccess();
    v10 = *(v4 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_opportunisticGroupSessionManager);
    swift_beginAccess();
    if (!*(*(v10 + 88) + 16) || (, sub_1007C8484(a2), v12 = v11, , (v12 & 1) == 0))
    {
      v19 = sub_100CB9458(a2, a3 & 1) ^ 1;
      return v19 & 1;
    }

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = static os_log_type_t.default.getter();
    sub_100005404(v13, &_mh_execute_header, v18, "Currently leaving activtiy for %{public}@, should not activate new one.", 71, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
  }

  else
  {
    swift_endAccess();
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1010D7048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v5[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[42] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v7;
  v5[44] = v6;

  return _swift_task_switch(sub_1010D710C, v7, v6);
}

void sub_1010D710C()
{
  v1 = v0[39];
  v2 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_1000486F0(v0[40]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v0[45] = v6;
    swift_endAccess();
    v7 = *(v6 + 16);
    v8 = objc_opt_self();

    v9 = v7;
    v10 = [v8 sharedApplication];
    v11 = [v10 delegate];

    if (v11)
    {
      type metadata accessor for CRLiOSAppDelegate();
      v12 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

      swift_unknownObjectRelease();
      swift_beginAccess();
      v13 = *(v12 + 80);
      v14 = *(*(v12 + 72) + 16);

      os_unfair_lock_lock(v14);
      os_unfair_lock_unlock(v14);

      v9[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_realTimeSessionNeedsAccountUpgrade] = (v13 & 2) == 0;

      v0[46] = *(*(*(v6 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState);

      v15 = swift_task_alloc();
      v0[47] = v15;
      *v15 = v0;
      v15[1] = sub_1010D7478;
      v17 = v0[40];
      v16 = v0[41];

      sub_10123993C(v16, v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v20;
    *(inited + 40) = v22;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v23, "Cannot start opportunistic activity. Did not find the board with id %{public}@", 78, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);

    v24 = v0[1];

    v24();
  }
}