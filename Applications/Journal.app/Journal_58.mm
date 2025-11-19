uint64_t sub_10063FDB8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 224);
  *(*v1 + 712) = a1;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 608);
  v8 = *(v2 + 600);

  return _swift_task_switch(sub_10063FF80, v8, v7);
}

uint64_t sub_10063FF80()
{
  v37 = v0;
  if (*(v0 + 712))
  {
    if (*(v0 + 712) == 1)
    {
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v1, v2))
      {
        v3 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v36 = v4;
        *v3 = 136315138;
        *(v3 + 4) = sub_100008458(0xD000000000000036, 0x80000001008FFA30, &v36);
        _os_log_impl(&_mh_execute_header, v1, v2, "cameraAddition - %s", v3, 0xCu);
        sub_10000BA7C(v4);
      }

      v5 = swift_task_alloc();
      *(v0 + 688) = v5;
      *v5 = v0;
      v6 = sub_10064061C;
    }

    else
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v36 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100008458(0xD000000000000035, 0x80000001008FF9F0, &v36);
        _os_log_impl(&_mh_execute_header, v26, v27, "cameraAddition - %s", v28, 0xCu);
        sub_10000BA7C(v29);
      }

      sub_100647A74();
      v5 = swift_task_alloc();
      *(v0 + 696) = v5;
      *v5 = v0;
      v6 = sub_10064073C;
    }

    v5[1] = v6;
    v30 = *(v0 + 536);
    v31 = *(v0 + 192);

    return sub_100653198(v31, v30, 0);
  }

  else
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100008458(0xD00000000000001FLL, 0x80000001008FF9D0, &v36);
      _os_log_impl(&_mh_execute_header, v7, v8, "cameraAddition - %s", v9, 0xCu);
      sub_10000BA7C(v10);
    }

    v34 = *(v0 + 672);
    v11 = *(v0 + 648);
    v12 = *(v0 + 576);
    v13 = *(v0 + 568);
    v14 = *(v0 + 552);
    v15 = *(v0 + 544);
    v33 = *(v0 + 536);
    v16 = *(v0 + 208);
    v17 = *(v0 + 216);
    v32 = v17;
    v18 = *(v0 + 200);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    (*(v14 + 16))(v13, v12, v15);
    v35 = v11;
    v20 = v16;

    v21 = static MainActor.shared.getter();
    v22 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = v21;
    *(v23 + 3) = &protocol witness table for MainActor;
    *(v23 + 4) = v20;
    *(v23 + 5) = v35;
    *(v23 + 6) = v18;
    (*(v14 + 32))(&v23[v22], v13, v15);
    sub_1003E9628(0, 0, v32, &unk_100960C28, v23);

    sub_100004F84(v33, &unk_100AD6DD0);
    (*(v14 + 8))(v12, v15);

    v24 = *(v0 + 8);

    return v24(v35);
  }
}

uint64_t sub_10064061C()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return _swift_task_switch(sub_100657058, v3, v2);
}

uint64_t sub_10064073C()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return _swift_task_switch(sub_10064085C, v3, v2);
}

uint64_t sub_10064085C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);

  sub_100004F84(v5, &unk_100AD6DD0);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_100640A94()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return _swift_task_switch(sub_100640BB4, v3, v2);
}

uint64_t sub_100640BB4()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[40];
  v6 = v0[36];
  v7 = v0[37];

  (*(v7 + 8))(v5, v6);
  sub_100004F84(v4, &unk_100AD6DD0);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_100640E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 265) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 32) = type metadata accessor for CanvasContentInputType();
  *(v6 + 40) = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 48) = v7;
  *(v6 + 56) = *(v7 - 8);
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = type metadata accessor for MainActor();
  *(v6 + 80) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 88) = v9;
  *(v6 + 96) = v8;

  return _swift_task_switch(sub_100640F30, v9, v8);
}

uint64_t sub_100640F30()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 80);

    if (v1)
    {
      swift_getObjectType();
      v2 = dispatch thunk of Actor.unownedExecutor.getter();
      v4 = v3;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    *(v0 + 104) = v2;
    *(v0 + 112) = v4;
    v8 = sub_1006410BC;
    goto LABEL_11;
  }

  *(v0 + 200) = 0;
  if (*(v0 + 265) != 1)
  {
    *(v0 + 216) = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
    *(v0 + 224) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v9;
    *(v0 + 232) = v2;
    *(v0 + 240) = v9;
    v8 = sub_100641DA0;
LABEL_11:

    return _swift_task_switch(v8, v2, v4);
  }

  **(v0 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_100641B08;
  v6 = *(v0 + 40);

  return sub_10063CE2C(v6, 0);
}

uint64_t sub_1006410BC()
{
  v1 = v0[2];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = v0[10];
    v1;
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_1006411B4;

    return sub_10078BBDC(v5, &protocol witness table for MainActor, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006411B4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1006412D4, v3, v2);
}

uint64_t sub_1006412D4()
{
  v1 = *(v0 + 80);

  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_100641390;

  return (sub_1001DA5A8)(v1, &protocol witness table for MainActor);
}

uint64_t sub_100641390()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1006414B0, v3, v2);
}

uint64_t sub_1006414B0()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_100641514, v1, v2);
}

uint64_t sub_100641514()
{
  v1 = v0[10];

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[17] = v2;
  v0[18] = v4;

  return _swift_task_switch(sub_1006415AC, v2, v4);
}

uint64_t sub_1006415AC()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_context);
  v0[19] = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO), (v0[20] = v3) != 0))
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    v7 = swift_allocObject();
    v0[21] = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = 0;
    (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
    v8 = v3;
    v2;
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_100641758;
    v10 = v0[8];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_1004F9184, v7, &type metadata for () + 8);
  }

  else
  {

    v0[24] = 0;
    v11 = v0[11];
    v12 = v0[12];

    return _swift_task_switch(sub_100641928, v11, v12);
  }
}

uint64_t sub_100641758()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v4 = v2[17];
    v5 = v2[18];

    return _swift_task_switch(sub_1006418B0, v4, v5);
  }
}

uint64_t sub_1006418B0()
{
  v1 = v0[19];
  v2 = v0[20];

  v0[24] = v0[23];
  v3 = v0[11];
  v4 = v0[12];

  return _swift_task_switch(sub_100641928, v3, v4);
}

uint64_t sub_100641928()
{
  *(v0 + 200) = *(v0 + 192);
  if (*(v0 + 265) == 1)
  {
    **(v0 + 40) = 1;
    swift_storeEnumTagMultiPayload();
    v1 = swift_task_alloc();
    *(v0 + 208) = v1;
    *v1 = v0;
    v1[1] = sub_100641B08;
    v2 = *(v0 + 40);

    return sub_10063CE2C(v2, 0);
  }

  else
  {
    v4 = *(v0 + 16);
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtC7Journal5Asset_isHidden) = 0;
      v5 = *(v4 + OBJC_IVAR____TtC7Journal5Asset_context);
      if (v5)
      {
        *(swift_task_alloc() + 16) = v4;
        v6 = v5;
        sub_1000F24EC(&qword_100AD38E0);
        NSManagedObjectContext.performAndWait<A>(_:)();
      }
    }

    *(v0 + 216) = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
    *(v0 + 224) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 232) = v8;
    *(v0 + 240) = v7;

    return _swift_task_switch(sub_100641DA0, v8, v7);
  }
}

uint64_t sub_100641B08()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_100656ED4(v2, type metadata accessor for CanvasContentInputType);
  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_100641C60, v4, v3);
}

uint64_t sub_100641C60()
{
  v1 = v0[2];
  if (v1)
  {
    *(v1 + OBJC_IVAR____TtC7Journal5Asset_isHidden) = 0;
    v2 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_context);
    if (v2)
    {
      *(swift_task_alloc() + 16) = v1;
      v3 = v2;
      sub_1000F24EC(&qword_100AD38E0);
      NSManagedObjectContext.performAndWait<A>(_:)();
    }
  }

  v0[27] = *(v0[3] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v0[28] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[29] = v5;
  v0[30] = v4;

  return _swift_task_switch(sub_100641DA0, v5, v4);
}

uint64_t sub_100641DA0()
{
  v1 = v0[2];
  if (v1)
  {
    sub_1000F24EC(&unk_100AD4780);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_100941D50;
    *(v2 + 4) = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[31] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_100641E88;
  v5 = v0[27];

  return sub_10065261C(v5);
}

uint64_t sub_100641E88()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_100641FCC, v3, v2);
}

uint64_t sub_100641FCC()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_100642030, v1, v2);
}

uint64_t sub_100642030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006420A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for AssetPlacement();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for AssetType();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v7;
  v3[13] = v6;

  return _swift_task_switch(sub_1006421FC, v7, v6);
}

uint64_t sub_1006421FC()
{
  (*(v0[9] + 104))(v0[10], enum case for AssetType.audio(_:), v0[8]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1006422BC;
  v2 = v0[10];
  v3 = v0[2];

  return sub_1006490C0(v3, v2);
}

uint64_t sub_1006422BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 120) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);

  return _swift_task_switch(sub_100642448, v7, v6);
}

uint64_t sub_100642448()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  *v2 = static AssetPlacement.maxGridCount.getter();
  (*(v3 + 104))(v2, enum case for AssetPlacement.grid(_:), v4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_100642550;
  v6 = v0[15];
  v7 = v0[7];
  v9 = v0[2];
  v8 = v0[3];

  return sub_10044C1DC(v1, &protocol witness table for MainActor, v8, v9, v6, v7, 1);
}

uint64_t sub_100642550(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 136) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);

  return _swift_task_switch(sub_1006426F8, v7, v6);
}

uint64_t sub_1006426F8()
{
  v1 = *(v0 + 136);

  if (v1 == 1)
  {
    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AEB9B0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 120);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "audioAddition - Failed to append new audio asset.", v7, 2u);
    }

    v8 = 0;
  }

  else
  {
    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AEB9B0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "audioAddition - Appended new audio asset to entry assets.", v12, 2u);
    }

    v13 = *(v0 + 120);
    v8 = *(v0 + 24);

    v14 = v8;
  }

  v15 = *(v0 + 8);

  return v15(v8);
}

uint64_t sub_100642904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 185) = a8;
  *(v8 + 184) = a7;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 40) = type metadata accessor for CanvasContentInputType();
  *(v8 + 48) = swift_task_alloc();
  v9 = type metadata accessor for AssetPlacement();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 96) = v11;
  *(v8 + 104) = v10;

  return _swift_task_switch(sub_100642A38, v11, v10);
}

uint64_t sub_100642A38()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  *(v0 + 112) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_100642AEC;
  v3 = *(v0 + 184);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_100643304(v1, v4, v5, v3);
}

uint64_t sub_100642AEC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return _swift_task_switch(sub_100642C14, v4, v3);
}

uint64_t sub_100642C14()
{
  if (v0[16] && (v2 = v0[8], v1 = v0[9], v3 = v0[7], (*(v2 + 104))(v1, enum case for AssetPlacement.hidden(_:), v3), sub_10000A5AC(&qword_100AE45B8, &type metadata accessor for AssetPlacement), v4 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v2 + 8))(v1, v3), (v4 & 1) == 0))
  {
    v7 = v0[6];
    sub_1001737C8(1, *(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator));
    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_100642DFC;
    v9 = v0[6];

    return sub_10063CE2C(v9, 0);
  }

  else
  {
    v0[18] = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[19] = v6;
    v0[20] = v5;

    return _swift_task_switch(sub_100642FE0, v6, v5);
  }
}

uint64_t sub_100642DFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  sub_100656ED4(v2, type metadata accessor for CanvasContentInputType);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_100642F54, v4, v3);
}

uint64_t sub_100642F54()
{
  v0[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v2;
  v0[20] = v1;

  return _swift_task_switch(sub_100642FE0, v2, v1);
}

uint64_t sub_100642FE0()
{
  v1 = v0[16];
  if (v1)
  {
    sub_1000F24EC(&unk_100AD4780);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_100941D50;
    *(v2 + 4) = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[21] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1006430C8;
  v5 = v0[14];

  return sub_10065261C(v5);
}

uint64_t sub_1006430C8()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10064320C, v3, v2);
}

uint64_t sub_10064320C()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_100643270, v1, v2);
}

uint64_t sub_100643270()
{
  v1 = *(v0 + 185);

  if (v1 == 1)
  {
    sub_1003BD54C();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100643304(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 160) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for AssetType();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = type metadata accessor for AssetSource();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 96) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 104) = v9;
  *(v5 + 112) = v8;

  return _swift_task_switch(sub_10064345C, v9, v8);
}

uint64_t sub_10064345C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(*(v0 + 80) + 104))(v1, enum case for AssetSource.locationPicker(_:), *(v0 + 72));
  sub_1000F24EC(&qword_100AD64A8);
  v4 = type metadata accessor for VisitAssetMetadata();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100940080;
  (*(v5 + 16))(v7 + v6, v2, v4);
  v8 = sub_10011CEC0(v1, v7);
  *(v0 + 120) = v8;
  if (*(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset))
  {
    *(v0 + 144) = 0;
    v9 = *(v0 + 96);
    v10 = v8;

    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_100643968;
    v12 = *(v0 + 120);
    v13 = *(v0 + 160);
    v14 = *(v0 + 32);
    v15 = *(v0 + 16);

    return sub_10044C1DC(v9, &protocol witness table for MainActor, v12, v15, 0, v14, v13);
  }

  else
  {
    (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for AssetType.multiPinMap(_:), *(v0 + 48));
    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    *v17 = v0;
    v17[1] = sub_1006436F0;
    v18 = *(v0 + 64);
    v19 = *(v0 + 16);

    return sub_1006490C0(v19, v18);
  }
}

uint64_t sub_1006436F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 136) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);

  return _swift_task_switch(sub_10064387C, v7, v6);
}

uint64_t sub_10064387C()
{
  v1 = *(v0 + 136);
  *(v0 + 144) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 120);

  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_100643968;
  v6 = *(v0 + 120);
  v7 = *(v0 + 160);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return sub_10044C1DC(v2, &protocol witness table for MainActor, v6, v9, v1, v8, v7);
}

uint64_t sub_100643968(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  *(*v1 + 161) = a1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);

  return _swift_task_switch(sub_100643ACC, v5, v4);
}

uint64_t sub_100643ACC()
{
  v24 = v0;
  v1 = *(v0 + 161);

  if (v1)
  {

    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AEB9B0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 161);
      v6 = *(v0 + 144);
      v7 = *(v0 + 120);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      if (v5 == 2)
      {
        v10 = 0xD00000000000001BLL;
      }

      else
      {
        v10 = 0xD00000000000001CLL;
      }

      if (v5 == 2)
      {
        v11 = "Failed to append placeholder (";
      }

      else
      {
        v11 = "processing failed";
      }

      v12 = sub_100008458(v10, v11 | 0x8000000000000000, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "locationAddition - Failed to append asset, %s.", v8, 0xCu);
      sub_10000BA7C(v9);
    }

    else
    {
      v19 = *(v0 + 144);
      v20 = *(v0 + 120);
    }

    v18 = 0;
  }

  else
  {
    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000617C(v13, qword_100AEB9B0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "locationAddition - Appended asset to entry assets.", v16, 2u);
    }

    v17 = *(v0 + 144);
    v18 = *(v0 + 120);
  }

  v21 = *(v0 + 8);

  return v21(v18);
}

uint64_t sub_100643D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for AssetSource();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for CanvasContentInputType();
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(sub_100643EC4, v8, v7);
}

uint64_t sub_100643EC4()
{
  **(v0 + 64) = 1;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_100643F74;
  v2 = *(v0 + 64);

  return sub_10063CE2C(v2, 0);
}

uint64_t sub_100643F74()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  sub_100656ED4(v2, type metadata accessor for CanvasContentInputType);
  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_1006440CC, v4, v3);
}

uint64_t sub_1006440CC()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v0[14] = v5;
  (*(v1 + 104))(v2, enum case for AssetSource.stateOfMindPicker(_:), v3);
  v6 = v4;
  v7 = sub_10019BB28(v2, 0, v4);
  v0[15] = v7;
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1006441C8;

  return sub_1006446B4(v5, v7);
}

uint64_t sub_1006441C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 136) = a1;

  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return _swift_task_switch(sub_100644310, v5, v4);
}

uint64_t sub_100644310()
{
  v0[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v2;
  v0[20] = v1;

  return _swift_task_switch(sub_10064439C, v2, v1);
}

uint64_t sub_10064439C()
{
  v1 = v0[17];
  if (v1)
  {
    sub_1000F24EC(&unk_100AD4780);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_100941D50;
    *(v2 + 4) = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[21] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100644484;
  v5 = v0[14];

  return sub_10065261C(v5);
}

uint64_t sub_100644484()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1006445C8, v3, v2);
}

uint64_t sub_1006445C8()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_10064462C, v1, v2);
}

uint64_t sub_10064462C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006446B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for AssetPlacement();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for AssetType();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v7;
  v3[13] = v6;

  return _swift_task_switch(sub_100644808, v7, v6);
}

uint64_t sub_100644808()
{
  (*(v0[9] + 104))(v0[10], enum case for AssetType.stateOfMind(_:), v0[8]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1006448C8;
  v2 = v0[10];
  v3 = v0[2];

  return sub_1006490C0(v3, v2);
}

uint64_t sub_1006448C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 120) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);

  return _swift_task_switch(sub_100644A54, v7, v6);
}

uint64_t sub_100644A54()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  *v2 = static AssetPlacement.maxGridCount.getter();
  (*(v3 + 104))(v2, enum case for AssetPlacement.grid(_:), v4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_100644B5C;
  v6 = v0[15];
  v7 = v0[7];
  v9 = v0[2];
  v8 = v0[3];

  return sub_10044C1DC(v1, &protocol witness table for MainActor, v8, v9, v6, v7, 1);
}

uint64_t sub_100644B5C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 136) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);

  return _swift_task_switch(sub_100644D04, v7, v6);
}

uint64_t sub_100644D04()
{
  v23 = v0;
  v1 = *(v0 + 136);

  if (v1)
  {
    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AEB9B0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 136);
      v6 = *(v0 + 120);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315138;
      if (v5 == 2)
      {
        v9 = 0xD00000000000001BLL;
      }

      else
      {
        v9 = 0xD00000000000001CLL;
      }

      if (v5 == 2)
      {
        v10 = "Failed to append placeholder (";
      }

      else
      {
        v10 = "processing failed";
      }

      v11 = sub_100008458(v9, v10 | 0x8000000000000000, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "stateOfMindAddition - Failed to append asset, %s.", v7, 0xCu);
      sub_10000BA7C(v8);
    }

    else
    {
      v19 = *(v0 + 120);
    }

    v17 = 0;
  }

  else
  {
    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100AEB9B0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "stateOfMindAddition - Appended asset to entry assets.", v15, 2u);
    }

    v16 = *(v0 + 120);
    v17 = *(v0 + 24);

    v18 = v17;
  }

  v20 = *(v0 + 8);

  return v20(v17);
}

uint64_t sub_100644FA8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for URL();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for AssetPlacement();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for FileStoreConfiguration();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for AssetAttachment.AssetType(0);
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for MainActor();
  v2[33] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[34] = v6;
  v2[35] = v7;

  return _swift_task_switch(sub_100645284, v6, v7);
}

uint64_t sub_100645284()
{
  v1 = *(v0 + 64);
  v2 = _swiftEmptyArrayStorage;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  *(v0 + 288) = v3;
  if (!v3)
  {
    *(v0 + 352) = v2;
    v7 = *(*(v0 + 72) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
    v8 = swift_task_alloc();
    *(v0 + 360) = v8;
    *v8 = v0;
    v8[1] = sub_1006477B8;

    return sub_10065261C(v7);
  }

  v4 = *(v0 + 64);
  v5 = *(*(v0 + 72) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  *(v0 + 368) = enum case for AssetPlacement.grid(_:);
  *(v0 + 372) = 1;
  *(v0 + 296) = v5;
  *(v0 + 304) = v2;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    v6 = *(v4 + 32);
  }

  v10 = v6;
  *(v0 + 312) = v6;
  *(v0 + 320) = 1;
  v2 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v51 = *(v2 + v10);
  v47 = v10;
  if (v51 >> 62)
  {
    v50 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v50 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v51 & 0xC000000000000001;

  v11 = 0;
  while (1)
  {
    if (v50 == v11)
    {
      goto LABEL_35;
    }

    if (v49)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v12 = *(v51 + 8 * v11 + 32);
    }

    sub_100656E6C(v12 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 168), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v31 = *(v0 + 168);

        sub_100656ED4(v31, type metadata accessor for AssetAttachment.AssetType);
        v25 = 1;
        goto LABEL_28;
      }

LABEL_23:
      sub_100656E04(*(v0 + 168), *(v0 + 192), type metadata accessor for AssetAttachment.AssetType.FilePathType);

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_23;
    }

    v14 = *(v0 + 192);
    v15 = *(v0 + 168);

    v16 = sub_1000F24EC(&qword_100AD33B8);
    sub_100656E04(v15 + *(v16 + 48), v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_24:
    sub_100656E6C(*(v0 + 192), *(v0 + 184), type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v17 = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 232);
    v19 = *(v0 + 184);
    v20 = *(v0 + 192);
    if (v17 == 1)
    {
      v21 = *(v0 + 80);
      v22 = *(v0 + 88);
      sub_100656ED4(*(v0 + 192), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*(v22 + 32))(v18, v19, v21);
    }

    else
    {
      v24 = *(v0 + 144);
      v23 = *(v0 + 152);
      v48 = *(v0 + 136);
      static FileStoreConfiguration.shared.getter();
      FileStoreConfiguration.getAttachmentURL(from:)();

      (*(v24 + 8))(v23, v48);
      sub_100656ED4(v20, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v25 = 0;
LABEL_28:
    v26 = *(v0 + 232);
    v27 = *(v0 + 240);
    v28 = *(v0 + 80);
    v29 = *(v0 + 88);
    (*(v29 + 56))(v26, v25, 1, v28);
    sub_100021CEC(v26, v27, &unk_100AD6DD0);

    v2 = (*(v29 + 48))(v27, 1, v28);
    sub_100004F84(*(v0 + 240), &unk_100AD6DD0);
    if (v2 != 1)
    {
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_49;
    }
  }

  v50 = v11;
LABEL_35:
  if (v51 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 == v32)
  {
    v33 = 1;
    goto LABEL_45;
  }

  if (v49)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_43;
  }

  if (v50 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_54:
    __break(1u);
  }

LABEL_43:
  v35 = *(v0 + 216);
  v34 = *(v0 + 224);
  v36 = *(v0 + 80);
  v37 = *(v0 + 88);

  sub_1000A7D30(v34);

  sub_1000082B4(v34, v35, &unk_100AD6DD0);
  result = (*(v37 + 48))(v35, 1, v36);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v0 + 224);
    (*(*(v0 + 88) + 32))(*(v0 + 248), *(v0 + 216), *(v0 + 80));
    sub_100004F84(v38, &unk_100AD6DD0);
    v33 = 0;
LABEL_45:
    v39 = *(v0 + 368);
    v40 = *(v0 + 264);
    v42 = *(v0 + 120);
    v41 = *(v0 + 128);
    v43 = *(v0 + 112);
    (*(*(v0 + 88) + 56))(*(v0 + 248), v33, 1, *(v0 + 80));

    *v41 = static AssetPlacement.maxGridCount.getter();
    (*(v42 + 104))(v41, v39, v43);
    v44 = swift_task_alloc();
    *(v0 + 328) = v44;
    *v44 = v0;
    v44[1] = sub_1006459D0;
    v45 = *(v0 + 296);
    v46 = *(v0 + 128);

    return sub_10044C1DC(v40, &protocol witness table for MainActor, v47, v45, 0, v46, 1);
  }

  return result;
}

uint64_t sub_1006459D0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 373) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 280);
  v7 = *(v2 + 272);

  return _swift_task_switch(sub_100645BAC, v7, v6);
}

uint64_t sub_100645BAC()
{
  if (*(v0 + 373))
  {
    if (*(v0 + 373) == 1)
    {
      *(v0 + 336) = static MainActor.shared.getter();
      v1 = dispatch thunk of Actor.unownedExecutor.getter();
      v3 = sub_1006465B4;
    }

    else
    {
      if (*(v0 + 372) == 1)
      {
        type metadata accessor for JurassicAlertController();
        if (qword_100AD05E0 != -1)
        {
          swift_once();
        }

        if (qword_100AD05E8 != -1)
        {
          swift_once();
        }

        v12 = String._bridgeToObjectiveC()();
        v13 = String._bridgeToObjectiveC()();
        v14 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

        if (qword_100AD0428 != -1)
        {
          swift_once();
        }

        v15 = String._bridgeToObjectiveC()();
        v16 = [objc_opt_self() actionWithTitle:v15 style:0 handler:0];

        [v14 addAction:v16];
        v17 = UIViewController.forPresenting.getter();
        [v17 presentViewController:v14 animated:1 completion:0];
      }

      *(v0 + 344) = static MainActor.shared.getter();
      v1 = dispatch thunk of Actor.unownedExecutor.getter();
      v3 = sub_100646EB4;
    }

    v18 = v1;
    v19 = v2;
    v20 = v3;
    v21 = v18;
    v22 = v19;

    return _swift_task_switch(v20, v21, v22);
  }

  v4 = *(v0 + 312);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_64;
  }

LABEL_5:
  v5 = *(v0 + 312);
  v6 = *(v0 + 248);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_100004F84(v6, &unk_100AD6DD0);
  v7 = *(v0 + 40);
  v8 = *(v0 + 320);
  if (v8 == *(v0 + 288))
  {
    *(v0 + 352) = v7;
    v9 = *(*(v0 + 72) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
    v10 = swift_task_alloc();
    *(v0 + 360) = v10;
    *v10 = v0;
    v10[1] = sub_1006477B8;

    return sub_10065261C(v9);
  }

  *(v0 + 304) = v7;
  v23 = *(v0 + 64);
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v8 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_69;
    }

    v24 = *(v23 + 8 * v8 + 32);
  }

  v25 = v24;
  *(v0 + 312) = v24;
  *(v0 + 320) = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_66;
  }

  v26 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v69 = *&v25[v26];
  v63 = v25;
  v64 = v69 >> 62;
  if (v69 >> 62)
  {
LABEL_66:
    v68 = v69 & 0xFFFFFFFFFFFFFF8;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_28;
  }

  v68 = v69 & 0xFFFFFFFFFFFFFF8;
  v27 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v67 = v69 & 0xC000000000000001;

  v28 = 0;
  v65 = v0;
  while (1)
  {
    if (v27 == v28)
    {
      goto LABEL_50;
    }

    if (v67)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v28 >= *(v68 + 16))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_5;
      }

      v29 = *(v69 + 8 * v28 + 32);
    }

    sub_100656E6C(v29 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 168), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v48 = *(v0 + 168);

        sub_100656ED4(v48, type metadata accessor for AssetAttachment.AssetType);
        v42 = 1;
        goto LABEL_43;
      }

LABEL_38:
      sub_100656E04(*(v0 + 168), *(v0 + 192), type metadata accessor for AssetAttachment.AssetType.FilePathType);

      goto LABEL_39;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_38;
    }

    v31 = *(v0 + 192);
    v32 = *(v0 + 168);

    v33 = sub_1000F24EC(&qword_100AD33B8);
    sub_100656E04(v32 + *(v33 + 48), v31, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_39:
    sub_100656E6C(*(v0 + 192), *(v0 + 184), type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v34 = swift_getEnumCaseMultiPayload();
    v35 = *(v0 + 232);
    v36 = *(v0 + 184);
    v37 = *(v0 + 192);
    if (v34 == 1)
    {
      v38 = *(v0 + 80);
      v39 = *(v0 + 88);
      sub_100656ED4(*(v0 + 192), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*(v39 + 32))(v35, v36, v38);
    }

    else
    {
      v41 = *(v0 + 144);
      v40 = *(v0 + 152);
      v66 = *(v0 + 136);
      static FileStoreConfiguration.shared.getter();
      v0 = v65;
      FileStoreConfiguration.getAttachmentURL(from:)();

      (*(v41 + 8))(v40, v66);
      sub_100656ED4(v37, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v42 = 0;
LABEL_43:
    v43 = *(v0 + 232);
    v44 = *(v0 + 240);
    v45 = *(v0 + 80);
    v46 = *(v0 + 88);
    (*(v46 + 56))(v43, v42, 1, v45);
    sub_100021CEC(v43, v44, &unk_100AD6DD0);

    LODWORD(v44) = (*(v46 + 48))(v44, 1, v45);
    sub_100004F84(*(v0 + 240), &unk_100AD6DD0);
    if (v44 != 1)
    {
      break;
    }

    if (__OFADD__(v28++, 1))
    {
      goto LABEL_63;
    }
  }

  v27 = v28;
LABEL_50:
  if (v64)
  {
    if (v27 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_58;
    }

LABEL_52:
    if (v67)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *(v68 + 16))
      {
        __break(1u);
LABEL_69:
        __break(1u);
      }
    }

    v50 = *(v0 + 216);
    v49 = *(v0 + 224);
    v51 = *(v0 + 80);
    v52 = *(v0 + 88);

    sub_1000A7D30(v49);

    sub_1000082B4(v49, v50, &unk_100AD6DD0);
    v20 = (*(v52 + 48))(v50, 1, v51);
    if (v20 != 1)
    {
      v53 = *(v0 + 224);
      (*(*(v0 + 88) + 32))(*(v0 + 248), *(v0 + 216), *(v0 + 80));
      sub_100004F84(v53, &unk_100AD6DD0);
      v54 = 0;
      goto LABEL_59;
    }

    __break(1u);
    return _swift_task_switch(v20, v21, v22);
  }

  if (v27 != *(v68 + 16))
  {
    goto LABEL_52;
  }

LABEL_58:
  v54 = 1;
LABEL_59:
  v55 = *(v0 + 368);
  v56 = *(v0 + 264);
  v58 = *(v0 + 120);
  v57 = *(v0 + 128);
  v59 = *(v0 + 112);
  (*(*(v0 + 88) + 56))(*(v0 + 248), v54, 1, *(v0 + 80));

  *v57 = static AssetPlacement.maxGridCount.getter();
  (*(v58 + 104))(v57, v55, v59);
  v60 = swift_task_alloc();
  *(v0 + 328) = v60;
  *v60 = v0;
  v60[1] = sub_1006459D0;
  v61 = *(v0 + 296);
  v62 = *(v0 + 128);

  return sub_10044C1DC(v56, &protocol witness table for MainActor, v63, v61, 0, v62, 1);
}

uint64_t sub_1006465B4()
{
  v1 = v0[26];
  v2 = v0[10];
  v3 = v0[11];
  sub_1000082B4(v0[31], v1, &unk_100AD6DD0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100004F84(v0[26], &unk_100AD6DD0);
  }

  else
  {
    (*(v0[11] + 32))(v0[13], v0[26], v0[10]);
    v4 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    v0[7] = 0;
    v8 = [v4 removeItemAtURL:v6 error:v0 + 7];

    v9 = v0[7];
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v11 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    (*(v0[11] + 8))(v0[13], v0[10]);
  }

  v12 = v0[34];
  v13 = v0[35];

  return _swift_task_switch(sub_100646780, v12, v13);
}

uint64_t sub_100646780()
{
  v1 = *(v0 + 248);

  sub_100004F84(v1, &unk_100AD6DD0);
  v2 = *(v0 + 320);
  if (v2 == *(v0 + 288))
  {
    *(v0 + 352) = *(v0 + 304);
    v3 = *(*(v0 + 72) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
    v4 = swift_task_alloc();
    *(v0 + 360) = v4;
    *v4 = v0;
    v4[1] = sub_1006477B8;

    return sub_10065261C(v3);
  }

  v6 = *(v0 + 64);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v7 = *(v6 + 8 * v2 + 32);
  }

  v8 = v7;
  *(v0 + 312) = v7;
  *(v0 + 320) = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v52 = *&v8[v9];
  v46 = v8;
  v47 = v52 >> 62;
  if (v52 >> 62)
  {
LABEL_50:
    v50 = v52 & 0xFFFFFFFFFFFFFF8;
    v51 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_12;
  }

  v50 = v52 & 0xFFFFFFFFFFFFFF8;
  v51 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v49 = v52 & 0xC000000000000001;

  v10 = 0;
  while (v51 != v10)
  {
    if (v49)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v50 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v11 = *(v52 + 8 * v10 + 32);
    }

    sub_100656E6C(v11 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 168), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
LABEL_22:
        sub_100656E04(*(v0 + 168), *(v0 + 192), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      else
      {
        v13 = *(v0 + 192);
        v14 = *(v0 + 168);

        v15 = sub_1000F24EC(&qword_100AD33B8);
        sub_100656E04(v14 + *(v15 + 48), v13, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      sub_100656E6C(*(v0 + 192), *(v0 + 184), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v16 = swift_getEnumCaseMultiPayload();
      v17 = *(v0 + 232);
      v18 = *(v0 + 184);
      v19 = *(v0 + 192);
      if (v16 == 1)
      {
        v20 = *(v0 + 80);
        v21 = *(v0 + 88);
        sub_100656ED4(*(v0 + 192), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v21 + 32))(v17, v18, v20);
      }

      else
      {
        v23 = *(v0 + 144);
        v22 = *(v0 + 152);
        v48 = *(v0 + 136);
        static FileStoreConfiguration.shared.getter();
        FileStoreConfiguration.getAttachmentURL(from:)();

        (*(v23 + 8))(v22, v48);
        sub_100656ED4(v19, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v24 = 0;
      goto LABEL_27;
    }

    if (!EnumCaseMultiPayload)
    {
      goto LABEL_22;
    }

    v30 = *(v0 + 168);

    sub_100656ED4(v30, type metadata accessor for AssetAttachment.AssetType);
    v24 = 1;
LABEL_27:
    v25 = *(v0 + 232);
    v26 = *(v0 + 240);
    v27 = *(v0 + 80);
    v28 = *(v0 + 88);
    (*(v28 + 56))(v25, v24, 1, v27);
    sub_100021CEC(v25, v26, &unk_100AD6DD0);

    LODWORD(v26) = (*(v28 + 48))(v26, 1, v27);
    sub_100004F84(*(v0 + 240), &unk_100AD6DD0);
    if (v26 != 1)
    {
      v51 = v10;
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_48;
    }
  }

  if (v47)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *(v50 + 16);
  }

  if (v51 == v31)
  {
    v32 = 1;
    goto LABEL_44;
  }

  if (v49)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_42;
  }

  if (v51 >= *(v50 + 16))
  {
    __break(1u);
LABEL_53:
    __break(1u);
  }

LABEL_42:
  v34 = *(v0 + 216);
  v33 = *(v0 + 224);
  v35 = *(v0 + 80);
  v36 = *(v0 + 88);

  sub_1000A7D30(v33);

  sub_1000082B4(v33, v34, &unk_100AD6DD0);
  result = (*(v36 + 48))(v34, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = *(v0 + 224);
    (*(*(v0 + 88) + 32))(*(v0 + 248), *(v0 + 216), *(v0 + 80));
    sub_100004F84(v37, &unk_100AD6DD0);
    v32 = 0;
LABEL_44:
    v38 = *(v0 + 368);
    v39 = *(v0 + 264);
    v41 = *(v0 + 120);
    v40 = *(v0 + 128);
    v42 = *(v0 + 112);
    (*(*(v0 + 88) + 56))(*(v0 + 248), v32, 1, *(v0 + 80));

    *v40 = static AssetPlacement.maxGridCount.getter();
    (*(v41 + 104))(v40, v38, v42);
    v43 = swift_task_alloc();
    *(v0 + 328) = v43;
    *v43 = v0;
    v43[1] = sub_1006459D0;
    v44 = *(v0 + 296);
    v45 = *(v0 + 128);

    return sub_10044C1DC(v39, &protocol witness table for MainActor, v46, v44, 0, v45, 1);
  }

  return result;
}

uint64_t sub_100646EB4()
{
  v1 = v0[25];
  v2 = v0[10];
  v3 = v0[11];
  sub_1000082B4(v0[31], v1, &unk_100AD6DD0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100004F84(v0[25], &unk_100AD6DD0);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[25], v0[10]);
    v4 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    v0[6] = 0;
    v8 = [v4 removeItemAtURL:v6 error:v0 + 6];

    v9 = v0[6];
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v11 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  v12 = v0[34];
  v13 = v0[35];

  return _swift_task_switch(sub_100647080, v12, v13);
}

uint64_t sub_100647080()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  v3 = *(v0 + 248);

  sub_100004F84(v3, &unk_100AD6DD0);
  if (v1 == v2)
  {
    *(v0 + 352) = *(v0 + 304);
    v4 = *(*(v0 + 72) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
    v5 = swift_task_alloc();
    *(v0 + 360) = v5;
    *v5 = v0;
    v5[1] = sub_1006477B8;

    return sub_10065261C(v4);
  }

  v7 = *(v0 + 320);
  *(v0 + 372) = 0;
  v8 = *(v0 + 64);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v9 = *(v8 + 8 * v7 + 32);
  }

  v10 = v9;
  *(v0 + 312) = v9;
  *(v0 + 320) = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v11 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v54 = *&v10[v11];
  v48 = v10;
  v49 = v54 >> 62;
  if (v54 >> 62)
  {
LABEL_50:
    v52 = v54 & 0xFFFFFFFFFFFFFF8;
    v53 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_12;
  }

  v52 = v54 & 0xFFFFFFFFFFFFFF8;
  v53 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v51 = v54 & 0xC000000000000001;

  v12 = 0;
  while (v53 != v12)
  {
    if (v51)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v52 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v13 = *(v54 + 8 * v12 + 32);
    }

    sub_100656E6C(v13 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 168), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
LABEL_22:
        sub_100656E04(*(v0 + 168), *(v0 + 192), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      else
      {
        v15 = *(v0 + 192);
        v16 = *(v0 + 168);

        v17 = sub_1000F24EC(&qword_100AD33B8);
        sub_100656E04(v16 + *(v17 + 48), v15, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      sub_100656E6C(*(v0 + 192), *(v0 + 184), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v18 = swift_getEnumCaseMultiPayload();
      v19 = *(v0 + 232);
      v20 = *(v0 + 184);
      v21 = *(v0 + 192);
      if (v18 == 1)
      {
        v22 = *(v0 + 80);
        v23 = *(v0 + 88);
        sub_100656ED4(*(v0 + 192), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v23 + 32))(v19, v20, v22);
      }

      else
      {
        v25 = *(v0 + 144);
        v24 = *(v0 + 152);
        v50 = *(v0 + 136);
        static FileStoreConfiguration.shared.getter();
        FileStoreConfiguration.getAttachmentURL(from:)();

        (*(v25 + 8))(v24, v50);
        sub_100656ED4(v21, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v26 = 0;
      goto LABEL_27;
    }

    if (!EnumCaseMultiPayload)
    {
      goto LABEL_22;
    }

    v32 = *(v0 + 168);

    sub_100656ED4(v32, type metadata accessor for AssetAttachment.AssetType);
    v26 = 1;
LABEL_27:
    v27 = *(v0 + 232);
    v28 = *(v0 + 240);
    v29 = *(v0 + 80);
    v30 = *(v0 + 88);
    (*(v30 + 56))(v27, v26, 1, v29);
    sub_100021CEC(v27, v28, &unk_100AD6DD0);

    LODWORD(v28) = (*(v30 + 48))(v28, 1, v29);
    sub_100004F84(*(v0 + 240), &unk_100AD6DD0);
    if (v28 != 1)
    {
      v53 = v12;
      break;
    }

    if (__OFADD__(v12++, 1))
    {
      goto LABEL_48;
    }
  }

  if (v49)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *(v52 + 16);
  }

  if (v53 == v33)
  {
    v34 = 1;
    goto LABEL_44;
  }

  if (v51)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_42;
  }

  if (v53 >= *(v52 + 16))
  {
    __break(1u);
LABEL_53:
    __break(1u);
  }

LABEL_42:
  v36 = *(v0 + 216);
  v35 = *(v0 + 224);
  v37 = *(v0 + 80);
  v38 = *(v0 + 88);

  sub_1000A7D30(v35);

  sub_1000082B4(v35, v36, &unk_100AD6DD0);
  result = (*(v38 + 48))(v36, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = *(v0 + 224);
    (*(*(v0 + 88) + 32))(*(v0 + 248), *(v0 + 216), *(v0 + 80));
    sub_100004F84(v39, &unk_100AD6DD0);
    v34 = 0;
LABEL_44:
    v40 = *(v0 + 368);
    v41 = *(v0 + 264);
    v43 = *(v0 + 120);
    v42 = *(v0 + 128);
    v44 = *(v0 + 112);
    (*(*(v0 + 88) + 56))(*(v0 + 248), v34, 1, *(v0 + 80));

    *v42 = static AssetPlacement.maxGridCount.getter();
    (*(v43 + 104))(v42, v40, v44);
    v45 = swift_task_alloc();
    *(v0 + 328) = v45;
    *v45 = v0;
    v45[1] = sub_1006459D0;
    v46 = *(v0 + 296);
    v47 = *(v0 + 128);

    return sub_10044C1DC(v41, &protocol witness table for MainActor, v48, v46, 0, v47, 1);
  }

  return result;
}

uint64_t sub_1006477B8()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_100647928, v3, v2);
}

uint64_t sub_100647928()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100647A74()
{
  type metadata accessor for JurassicAlertController();
  if (qword_100AD05E0 != -1)
  {
    swift_once();
  }

  if (qword_100AD05E8 != -1)
  {
    swift_once();
  }

  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  if (qword_100AD0428 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() actionWithTitle:v3 style:0 handler:0];

  [v2 addAction:v4];
  v5 = UIViewController.forPresenting.getter();
  [v5 presentViewController:v2 animated:1 completion:0];
}

void sub_100647C54(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_1000F24EC(&qword_100AE3BA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  type metadata accessor for JurassicAlertController();
  if (qword_100AD0598 != -1)
  {
    swift_once();
  }

  v28 = v5;
  if (qword_100AD05A0 != -1)
  {
    swift_once();
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v29 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  if (qword_100AD0440 != -1)
  {
    swift_once();
  }

  v26 = *(v4 + 16);
  v26(v7, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v25 = *(v4 + 32);
  v25(v11 + v10, v7, v3);
  v12 = String._bridgeToObjectiveC()();
  v34 = sub_100417344;
  v35 = v11;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v24 = &v32;
  v32 = sub_10016B4D8;
  v33 = &unk_100A76580;
  v13 = _Block_copy(&aBlock);

  v23 = objc_opt_self();
  v14 = a1;
  v15 = [v23 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v29 addAction:v15];
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v26(v7, v14, v3);
  v16 = swift_allocObject();
  v25(v16 + v10, v7, v3);
  v17 = String._bridgeToObjectiveC()();
  v34 = sub_100417340;
  v35 = v16;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10016B4D8;
  v33 = &unk_100A765D0;
  v18 = _Block_copy(&aBlock);

  v19 = [v23 actionWithTitle:v17 style:1 handler:v18];
  _Block_release(v18);

  v20 = v29;
  [v29 addAction:v19];

  v21 = UIViewController.forPresenting.getter();
  [v21 presentViewController:v20 animated:1 completion:0];
}

void sub_100648118(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v43 = a4;
  v44 = a1;
  v6 = sub_1000F24EC(&qword_100AE3BA8);
  v42 = *(v6 - 1);
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v45 = v7;
  if (a2 < 1)
  {
    if (qword_100AD05F0 != -1)
    {
      swift_once();
    }

    v17 = qword_100AD0600;

    if (v17 != -1)
    {
      swift_once();
    }

    v16 = v44;
  }

  else
  {
    v41 = v6;
    if (qword_100AD05F8 != -1)
    {
      swift_once();
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0x20796C6E4FLL;
    v13._object = 0xE500000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    aBlock = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v14._countAndFlagsBits = 543584032;
    v14._object = 0xE400000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    aBlock = a3;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v15._object = 0x80000001008FF1B0;
    v15._countAndFlagsBits = 0xD00000000000003ELL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v16 = v44;
    v6 = v41;
  }

  type metadata accessor for JurassicAlertController();
  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  if (a2 < 1)
  {
    if (qword_100AD0428 != -1)
    {
      swift_once();
    }

    v33 = v42;
    (*(v42 + 16))(v9, v16, v6);
    v34 = v6;
    v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v36 = swift_allocObject();
    (*(v33 + 32))(v36 + v35, v9, v34);
    v30 = String._bridgeToObjectiveC()();
    v50 = sub_100417340;
    v51 = v36;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_10016B4D8;
    v49 = &unk_100A763A0;
    v31 = _Block_copy(&aBlock);

    v32 = [objc_opt_self() actionWithTitle:v30 style:0 handler:v31];
  }

  else
  {
    v41 = v20;
    if (qword_100AD0430 != -1)
    {
      swift_once();
    }

    v22 = v42;
    v40 = *(v42 + 16);
    v40(v9, v16, v6);
    v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v24 = swift_allocObject();
    v42 = *(v22 + 32);
    (v42)(v24 + v23, v9, v6);
    v25 = String._bridgeToObjectiveC()();
    v50 = sub_100417344;
    v51 = v24;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v39 = &v48;
    v48 = sub_10016B4D8;
    v49 = &unk_100A763F0;
    v26 = _Block_copy(&aBlock);

    v27 = objc_opt_self();
    v28 = [v27 actionWithTitle:v25 style:0 handler:v26];
    _Block_release(v26);

    [v41 addAction:v28];
    if (qword_100AD0420 != -1)
    {
      swift_once();
    }

    v40(v9, v44, v6);
    v29 = swift_allocObject();
    (v42)(v29 + v23, v9, v6);
    v30 = String._bridgeToObjectiveC()();
    v50 = sub_100417340;
    v51 = v29;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_10016B4D8;
    v49 = &unk_100A76440;
    v31 = _Block_copy(&aBlock);

    v32 = [v27 actionWithTitle:v30 style:1 handler:v31];
    v20 = v41;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  v37 = v32;
  _Block_release(v31);

  [v20 p:v37 ivar:?lyt[360]];
  v38 = UIViewController.forPresenting.getter();
  [v38 presentViewController:v20 animated:1 completion:0];
}

void sub_100648970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v41 = a1;
  v4 = sub_1000F24EC(&qword_100AE3BA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = type metadata accessor for AssetType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  v15 = v14 == enum case for AssetType.photo(_:) || v14 == enum case for AssetType.livePhoto(_:);
  v38 = v6;
  if (v15)
  {
    if (qword_100AD05B8 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (v14 == enum case for AssetType.video(_:))
  {
    if (qword_100AD05C0 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (v14 == enum case for AssetType.music(_:))
  {
    if (qword_100AD05D0 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (v14 == enum case for AssetType.podcast(_:))
  {
    if (qword_100AD05C8 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (v14 == enum case for AssetType.workoutIcon(_:) || v14 == enum case for AssetType.workoutRoute(_:))
  {
    if (qword_100AD05D8 == -1)
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_34:
    swift_once();
    goto LABEL_23;
  }

  if (qword_100AD05B0 != -1)
  {
    swift_once();
  }

  v33 = *(v10 + 8);

  v33(v13, v9);
LABEL_24:
  type metadata accessor for JurassicAlertController();
  if (qword_100AD05A8 != -1)
  {
    swift_once();
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();

  v40 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  if (qword_100AD0440 != -1)
  {
    swift_once();
  }

  v36 = *(v5 + 16);
  v36(v8, v41, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = *(v5 + 32);
  v37 = v4;
  v35 = v21;
  v21(v20 + v19, v8, v4);
  v22 = String._bridgeToObjectiveC()();
  v46 = sub_100416C0C;
  v47 = v20;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v34 = &v44;
  v44 = sub_10016B4D8;
  v45 = &unk_100A76620;
  v23 = _Block_copy(&aBlock);

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v22 style:0 handler:v23];
  _Block_release(v23);

  [v40 addAction:v25];
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v26 = v37;
  v36(v8, v41, v37);
  v27 = swift_allocObject();
  v35(v27 + v19, v8, v26);
  v28 = String._bridgeToObjectiveC()();
  v46 = sub_100416D54;
  v47 = v27;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10016B4D8;
  v45 = &unk_100A76670;
  v29 = _Block_copy(&aBlock);

  v30 = [v24 actionWithTitle:v28 style:1 handler:v29];
  _Block_release(v29);

  v31 = v40;
  [v40 addAction:v30];

  v32 = UIViewController.forPresenting.getter();
  [v32 presentViewController:v31 animated:1 completion:0];
}

uint64_t sub_1006490C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100649160, v5, v4);
}

uint64_t sub_100649160()
{
  v1 = [*(v0 + 32) viewIfLoaded];
  v2 = [v1 window];

  if (!v2)
  {
    v3 = [*(v0 + 32) presentedViewController];
    if (!v3)
    {
      goto LABEL_25;
    }

    v2 = v3;
  }

  v4 = *(v0 + 32);

  if ([v4 isBeingDismissed])
  {
    goto LABEL_25;
  }

  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v7 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(v0 + 16);
  v10 = sub_10005AAB0(128);
  if (qword_100AD0A20 != -1)
  {
    v9 = v10;
    swift_once();
    LOBYTE(v10) = v9;
  }

  v13 = qword_100B30F68;
  if ((v10 & 1) != 0 && (v13 = qword_100B30F68 - 1, __OFSUB__(qword_100B30F68, 1)))
  {
    __break(1u);
  }

  else
  {
    if (v8 < v13)
    {
      goto LABEL_25;
    }

    v9 = *(v5 + v6);
    if (!(v9 >> 62))
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (v14)
  {
LABEL_14:
    v15 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      __break(1u);
    }

    else if ((v9 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v9 + 8 * v15 + 32);
        goto LABEL_19;
      }

      __break(1u);
      return _swift_task_switch(v14, v11, v12);
    }

    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v16 = v21;
LABEL_19:
    *(v0 + 72) = v16;
    *(v0 + 80) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v18;
    *(v0 + 88) = v17;
    *(v0 + 96) = v18;
    v14 = sub_1006493E8;
    v11 = v17;

    return _swift_task_switch(v14, v11, v12);
  }

LABEL_25:

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t sub_1006493E8()
{
  v5 = *(v0 + 24);
  v1 = static MainActor.shared.getter();
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *(v2 + 16) = v5;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1006494FC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 128, v1, &protocol witness table for MainActor, 0xD000000000000033, 0x80000001008FF380, sub_1006570C0, v2, &type metadata for Bool);
}

uint64_t sub_1006494FC()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10064965C, v3, v2);
}

uint64_t sub_10064965C()
{

  *(v0 + 129) = *(v0 + 128);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_1006496C8, v1, v2);
}

uint64_t sub_1006496C8()
{
  v1 = *(v0 + 129);

  v2 = *(v0 + 72);
  if (v1 != 1)
  {

    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100649740(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v28 = a3;
  v29 = a2;
  v6 = sub_1000F24EC(&qword_100AD4E78);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v27 = &v26 - v8;
  v10 = type metadata accessor for CanvasContentInputType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_100656E6C(a4, v13, type metadata accessor for CanvasContentInputType);
  v18 = v9;
  v19 = v6;
  (*(v7 + 16))(v18, a1, v6);
  type metadata accessor for MainActor();
  v20 = v28;
  v21 = static MainActor.shared.getter();
  v22 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v23 = (v12 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = &protocol witness table for MainActor;
  *(v24 + 32) = v29;
  *(v24 + 40) = v20;
  sub_100656E04(v13, v24 + v22, type metadata accessor for CanvasContentInputType);
  (*(v7 + 32))(v24 + v23, v27, v19);
  sub_1003E9628(0, 0, v16, &unk_100960BD0, v24);
}

uint64_t sub_100649A38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 136) = a4;
  v8 = sub_1000F24EC(&qword_100AD4E78);
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 + 64);
  *(v7 + 96) = swift_task_alloc();
  v10 = *(type metadata accessor for CanvasContentInputType() - 8);
  *(v7 + 104) = v10;
  *(v7 + 112) = *(v10 + 64);
  *(v7 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 128) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100649BA8, v12, v11);
}

uint64_t sub_100649BA8()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 48);
    sub_100656E6C(*(v0 + 56), v2, type metadata accessor for CanvasContentInputType);
    (*(v6 + 16))(v4, v8, v7);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + *(v6 + 80) + v10) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    sub_100656E04(v2, v12 + v10, type metadata accessor for CanvasContentInputType);
    (*(v6 + 32))(v12 + v11, v4, v7);
    v13 = v9;
    sub_100173A50(1, sub_100656690, v12);
  }

  else
  {
    *(v0 + 16) = 0u;
    v14 = *(v0 + 56);
    *(v0 + 32) = 0u;
    sub_1003B5E4C(v14, v0 + 16);
    sub_100004F84(v0 + 16, &qword_100AD13D0);
    CheckedContinuation.resume(returning:)();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100649D98(uint64_t a1, uint64_t a2)
{
  memset(v3, 0, sizeof(v3));
  sub_1003B5E4C(a2, v3);
  sub_100004F84(v3, &qword_100AD13D0);
  sub_1000F24EC(&qword_100AD4E78);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100649E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void (**a4)(char *, CGImageSource *)@<X8>)
{
  v122 = a3;
  v117 = a2;
  v6 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v6 - 8);
  v133 = v111 - v7;
  v132 = type metadata accessor for UTType();
  v127 = *(v132 - 8);
  __chkstk_darwin(v132);
  v9 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v126 = v111 - v11;
  v119 = type metadata accessor for Date();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v115 = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v13 - 8);
  v15 = (v111 - v14);
  v16 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v16 - 8);
  v18 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v121 = v111 - v20;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = v111 - v27;
  v29 = *(v22 + 16);
  v134 = v30;
  v130 = v29;
  v131 = v22 + 16;
  (v29)(v111 - v27, a1, v26);
  if (URL.pathExtension.getter() == 7632496 && v31 == 0xE300000000000000)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v33 = a4;
  v34 = v15;
  v120 = v18;
  v35 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v36);
  v38 = v37;
  v139 = 0;
  v39 = [v35 contentsOfDirectoryAtURL:v37 includingPropertiesForKeys:0 options:0 error:&v139];

  v40 = v139;
  if (v39)
  {
    v41 = v134;
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v40;
  }

  else
  {
    v43 = v139;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = _swiftEmptyArrayStorage;
    v41 = v134;
  }

  v44 = v121;
  v112 = *(v22 + 56);
  v112(v121, 1, 1, v41);
  v129 = *(v15 + 2);
  if (v129)
  {
    v111[1] = v22 + 56;
    v113 = v28;
    v116 = v34;
    v114 = v33;
    v45 = 0;
    v46 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v47 = (v127 + 48);
    v125 = (v127 + 32);
    v124 = (v127 + 8);
    a4 = (v22 + 8);
    v128 = v22;
    v123 = (v127 + 48);
    while (v45 < *(v15 + 2))
    {
      v130(v24, &v46[*(v22 + 72) * v45], v41);
      URL.pathExtension.getter();
      static UTType.data.getter();
      v48 = v133;
      UTType.init(filenameExtension:conformingTo:)();
      v49 = v132;
      if ((*v47)(v48, 1, v132) == 1)
      {
        sub_100004F84(v48, &unk_100AD7C40);
      }

      else
      {
        v50 = v46;
        v51 = v15;
        v52 = v24;
        v53 = v126;
        (*v125)(v126, v48, v49);
        static UTType.image.getter();
        LODWORD(v127) = UTType.conforms(to:)();
        v54 = *v124;
        (*v124)(v9, v49);
        v55 = v53;
        v24 = v52;
        v15 = v51;
        v46 = v50;
        v47 = v123;
        v54(v55, v49);
        if (v127)
        {
          v44 = v121;
          sub_100004F84(v121, &unk_100AD6DD0);

          v22 = v128;
          v41 = v134;
          (*(v128 + 32))(v44, v24, v134);
          v112(v44, 0, 1, v41);
          a4 = v114;
          v56 = v122;
          v15 = v116;
          v28 = v113;
          goto LABEL_18;
        }
      }

      ++v45;
      v41 = v134;
      (*a4)(v24, v134);
      v22 = v128;
      if (v129 == v45)
      {

        a4 = v114;
        v56 = v122;
        v15 = v116;
        v28 = v113;
        v44 = v121;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_73:
    (*(v22 + 8))(v47, v134);
LABEL_74:

    goto LABEL_39;
  }

  v56 = v122;
  v15 = v34;
  a4 = v33;
LABEL_18:
  v57 = v120;
  sub_1000082B4(v44, v120, &unk_100AD6DD0);
  if ((*(v22 + 48))(v57, 1, v41) == 1)
  {
    sub_100004F84(v57, &unk_100AD6DD0);
    sub_100653A04(0xD000000000000049, 0x80000001008FF7C0, v117, v56, &static os_log_type_t.error.getter);
    sub_100004F84(v44, &unk_100AD6DD0);
    (*(v22 + 8))(v28, v41);
    v58 = 1;
    (*(v118 + 56))(a4, 1, 1, v119);
    v59 = 0.0;
    v60 = 0.0;
LABEL_69:

    result = _s13PhotoMetadataVMa();
    v98 = (a4 + *(result + 20));
    *v98 = v59;
    *(v98 + 8) = v58;
    v99 = (a4 + *(result + 24));
    *v99 = v60;
    *(v99 + 8) = v58;
    return result;
  }

  sub_100004F84(v44, &unk_100AD6DD0);
  (*(v22 + 8))(v28, v41);
  (*(v22 + 32))(v28, v57, v41);
LABEL_21:
  sub_1005778EC();
  URL._bridgeToObjectiveC()(v61);
  v63 = v62;
  v41 = CGImageSourceCreateWithURL(v62, 0);

  if (!v41)
  {
    (*(v22 + 8))(v28, v134);
    v58 = 1;
    v60 = 0.0;
    v59 = 0.0;
LABEL_68:
    sub_100021CEC(v15, a4, &unk_100AD4790);
    goto LABEL_69;
  }

  v64 = CGImageSourceCopyPropertiesAtIndex(v41, 0, 0);
  if (!v64)
  {
    (*(v22 + 8))(v28, v134);
LABEL_39:

LABEL_41:
    v58 = 1;
    v60 = 0.0;
    v59 = 0.0;
    goto LABEL_68;
  }

  v65 = v64;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    (*(v22 + 8))(v28, v134);
    goto LABEL_41;
  }

  v66 = v28;
  v116 = v15;
  v67 = a4;
  v139 = 0;
  type metadata accessor for CFString(0);
  sub_10000A5AC(&qword_100AD1AA8, type metadata accessor for CFString);
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v68 = v139;
  if (!v139)
  {

    goto LABEL_43;
  }

  v15 = v116;
  if (!*(v139 + 2) || (v69 = sub_1000877E4(kCGImagePropertyExifDictionary), (v70 & 1) == 0) || (sub_10000BA20(v68[7] + 32 * v69, &v139), sub_1000F24EC(&qword_100AEB9E0), !swift_dynamicCast()))
  {
LABEL_48:
    if (v68[2] && (v85 = sub_1000877E4(kCGImagePropertyGPSDictionary), (v86 & 1) != 0))
    {
      sub_10000BA20(v68[7] + 32 * v85, &v139);

      sub_1000F24EC(&qword_100AEB9E0);
      if (swift_dynamicCast())
      {
        v87 = v137;
        a4 = v67;
        v47 = v66;
        if (!*(v137 + 16) || (v88 = sub_1000877E4(kCGImagePropertyGPSLatitudeRef), (v89 & 1) == 0))
        {

          (*(v22 + 8))(v66, v134);
          goto LABEL_41;
        }

        sub_10000BA20(*(v87 + 56) + 32 * v88, &v139);
        if (!swift_dynamicCast())
        {
          goto LABEL_73;
        }

        v90 = v138;
        if (!*(v87 + 16) || (v133 = v137, v91 = sub_1000877E4(kCGImagePropertyGPSLongitudeRef), (v92 & 1) == 0))
        {

          (*(v22 + 8))(v66, v134);
          goto LABEL_41;
        }

        sub_10000BA20(*(v87 + 56) + 32 * v91, &v139);
        if (!swift_dynamicCast())
        {
          (*(v22 + 8))(v66, v134);

          goto LABEL_74;
        }

        v93 = v138;
        if (*(v87 + 16) && (v132 = v137, v94 = sub_1000877E4(kCGImagePropertyGPSLatitude), (v95 & 1) != 0))
        {
          sub_10000BA20(*(v87 + 56) + 32 * v94, &v139);
          if (swift_dynamicCast())
          {
            if (*(v87 + 16))
            {
              v59 = *&v137;
              v96 = sub_1000877E4(kCGImagePropertyGPSLongitude);
              if (v97)
              {
                sub_10000BA20(*(v87 + 56) + 32 * v96, &v139);

                if (swift_dynamicCast())
                {
                  v60 = *&v137;
                  if (v133 == 78 && v90 == 0xE100000000000000)
                  {
                  }

                  else
                  {
                    v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v109 & 1) == 0)
                    {
                      v59 = -v59;
                    }
                  }

                  if (v132 == 69 && v93 == 0xE100000000000000)
                  {

                    (*(v22 + 8))(v66, v134);
                  }

                  else
                  {
                    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    (*(v22 + 8))(v66, v134);
                    if ((v110 & 1) == 0)
                    {
                      v60 = -v60;
                    }
                  }

                  v58 = 0;
                  goto LABEL_45;
                }

                (*(v22 + 8))(v66, v134);

LABEL_44:
                v58 = 1;
                v60 = 0.0;
                v59 = 0.0;
LABEL_45:
                a4 = v67;
LABEL_46:
                v15 = v116;
                goto LABEL_68;
              }
            }

LABEL_43:
            (*(v22 + 8))(v66, v134);
            goto LABEL_44;
          }

          (*(v22 + 8))(v66, v134);
        }

        else
        {

          (*(v22 + 8))(v66, v134);
        }

        v58 = 1;
        v60 = 0.0;
        v59 = 0.0;
        goto LABEL_46;
      }

      (*(v22 + 8))(v66, v134);
    }

    else
    {

      (*(v22 + 8))(v66, v134);
    }

    v58 = 1;
    v60 = 0.0;
    v59 = 0.0;
    a4 = v67;
    goto LABEL_68;
  }

  v71 = v137;
  if (!*(v137 + 16) || (v72 = sub_1000877E4(kCGImagePropertyExifDateTimeOriginal), (v73 & 1) == 0) || (sub_10000BA20(*(v71 + 56) + 32 * v72, &v139), !swift_dynamicCast()))
  {

    goto LABEL_48;
  }

  v139 = v137;
  v140 = v138;
  v137 = 32;
  v138 = 0xE100000000000000;
  sub_1000777B4();
  v74 = StringProtocol.components<A>(separatedBy:)();

  if (v74[2] != 2)
  {

    v15 = v116;
    goto LABEL_48;
  }

  v75 = v74[5];
  v139 = v74[4];
  v140 = v75;
  v137 = 58;
  v138 = 0xE100000000000000;
  v135 = 45;
  v136 = 0xE100000000000000;
  result = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  if (v74[2] >= 2uLL)
  {
    v78 = result;
    v79 = v77;
    v80 = v74[7];
    v133 = v74[6];

    if (*(v71 + 16) && (v81 = sub_1000877E4(kCGImagePropertyExifOffsetTimeOriginal), (v82 & 1) != 0))
    {
      sub_10000BA20(*(v71 + 56) + 32 * v81, &v139);

      if (swift_dynamicCast())
      {
        v84 = v137;
        v83 = v138;
        goto LABEL_81;
      }
    }

    else
    {
    }

    v83 = 0xE100000000000000;
    v84 = 90;
LABEL_81:
    v139 = v78;
    v140 = v79;

    v100._countAndFlagsBits = 84;
    v100._object = 0xE100000000000000;
    String.append(_:)(v100);

    v101._countAndFlagsBits = v133;
    v101._object = v80;
    String.append(_:)(v101);

    v102._countAndFlagsBits = v84;
    v102._object = v83;
    String.append(_:)(v102);

    v103 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    v104 = String._bridgeToObjectiveC()();

    v105 = [v103 dateFromString:v104];

    v15 = v116;
    if (v105)
    {
      v106 = v115;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100004F84(v15, &unk_100AD4790);
      v107 = v118;
      v108 = v119;
      (*(v118 + 32))(v15, v106, v119);
      (*(v107 + 56))(v15, 0, 1, v108);
    }

    goto LABEL_48;
  }

  __break(1u);
  return result;
}

uint64_t sub_10064B144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a1;
  v5[10] = a2;
  sub_1000F24EC(&unk_100AD4790);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v6;
  v5[18] = v7;

  return _swift_task_switch(sub_10064B25C, v6, v7);
}

uint64_t sub_10064B25C()
{
  sub_1005778EC();
  v1 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[19] = [v1 initWithURL:v3 options:0];

  sub_1000F24EC(&qword_100AEB9E8);
  v5 = static AVPartialAsyncProperty<A>.metadata.getter();
  v0[20] = v5;
  v6 = static MainActor.shared.getter();
  v0[21] = v6;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10064B3C0;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 6, v5, v6, &protocol witness table for MainActor);
}

uint64_t sub_10064B3C0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_10064BA04;
  }

  else
  {
    v6 = v2[19];

    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_10064B520;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10064B520()
{
  v1 = *(v0 + 48);
  *(v0 + 192) = v1;
  if (v1 >> 62)
  {
LABEL_34:
    v39 = v1;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v39;
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 200) = v2;
  v3 = 0;
  v4 = 0;
  if (!v2)
  {
    v6 = 1;
    v7 = 1;
LABEL_24:

    v30 = *(v0 + 72);
    sub_100021CEC(*(v0 + 112), v30, &unk_100AD4790);

    v31 = _s13PhotoMetadataVMa();
    v32 = v30 + *(v31 + 20);
    *v32 = v4;
    *(v32 + 8) = v7;
    v33 = v30 + *(v31 + 24);
    *v33 = v3;
    *(v33 + 8) = v6;

    v34 = *(v0 + 8);

    return v34();
  }

  v5 = 0;
  *(v0 + 208) = AVMetadataCommonKeyCreationDate;
  *(v0 + 216) = AVMetadataCommonKeyLocation;
  v6 = 1;
  v7 = 1;
  while (1)
  {
    *(v0 + 321) = v7 & 1;
    *(v0 + 320) = v6 & 1;
    *(v0 + 224) = v3;
    *(v0 + 232) = v4;
    v9 = *(v0 + 192);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v1 = *(v9 + 8 * v5 + 32);
    }

    *(v0 + 240) = v1;
    *(v0 + 248) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = [v1 commonKey];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {

LABEL_28:
        sub_1000F24EC(&qword_100AEB9F8);
        v36 = static AVPartialAsyncProperty<A>.dateValue.getter();
        *(v0 + 256) = v36;
        v37 = static MainActor.shared.getter();
        *(v0 + 264) = v37;
        v38 = swift_task_alloc();
        *(v0 + 272) = v38;
        *v38 = v0;
        v38[1] = sub_10064BBE8;
        v27 = *(v0 + 104);
        v28 = v36;
        v29 = v37;
        goto LABEL_29;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_28;
      }
    }

    v18 = [*(v0 + 240) commonKey];
    if (v18)
    {
      break;
    }

LABEL_6:

    v7 = *(v0 + 321);
    v6 = *(v0 + 320);
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v0 + 248);
    if (v5 == *(v0 + 200))
    {
      goto LABEL_24;
    }
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v22 != v23)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

LABEL_22:
  sub_1000F24EC(&qword_100AEB9F0);
  v24 = static AVPartialAsyncProperty<A>.stringValue.getter();
  *(v0 + 288) = v24;
  v25 = static MainActor.shared.getter();
  *(v0 + 296) = v25;
  v26 = swift_task_alloc();
  *(v0 + 304) = v26;
  *v26 = v0;
  v26[1] = sub_10064C4B8;
  v27 = v0 + 32;
  v28 = v24;
  v29 = v25;
LABEL_29:

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v27, v28, v29, &protocol witness table for MainActor);
}

uint64_t sub_10064BA04()
{
  v1 = v0[19];

  v2 = v0[23];
  v4 = v0[11];
  v3 = v0[12];
  _StringGuts.grow(_:)(39);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v5._object = 0x80000001008FF860;
  v5._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v5);
  v0[7] = v2;
  sub_1000F24EC(&qword_100AD5BC0);
  _print_unlocked<A, B>(_:_:)();
  sub_100653A04(v0[2], v0[3], v4, v3, &static os_log_type_t.error.getter);

  v6 = v0[9];
  sub_100021CEC(v0[14], v6, &unk_100AD4790);

  v7 = _s13PhotoMetadataVMa();
  v8 = v6 + *(v7 + 20);
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v6 + *(v7 + 24);
  *v9 = 0;
  *(v9 + 8) = 1;

  v10 = v0[1];

  return v10();
}

uint64_t sub_10064BBE8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_10064C2CC;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_10064BD88;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10064BD88()
{
  v1 = *(v0 + 104);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 112);
    sub_100004F84(v5, &unk_100AD4790);

    (*(v3 + 32))(v5, v1, v2);
    (*(v3 + 56))(v5, 0, 1, v2);
    goto LABEL_4;
  }

  sub_100004F84(v1, &unk_100AD4790);
  while (1)
  {
    v16 = [*(v0 + 240) commonKey];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {

LABEL_25:
        sub_1000F24EC(&qword_100AEB9F0);
        v34 = static AVPartialAsyncProperty<A>.stringValue.getter();
        *(v0 + 288) = v34;
        v35 = static MainActor.shared.getter();
        *(v0 + 296) = v35;
        v36 = swift_task_alloc();
        *(v0 + 304) = v36;
        *v36 = v0;
        v36[1] = sub_10064C4B8;
        v37 = v0 + 32;
        v38 = v34;
        v39 = v35;
LABEL_28:

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v37, v38, v39, &protocol witness table for MainActor);
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_25;
      }
    }

LABEL_4:
    v6 = *(v0 + 248);
    v7 = *(v0 + 192);
    if (v6 == *(v0 + 200))
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v8 = *(v7 + 8 * v6 + 32);
    }

    *(v0 + 240) = v8;
    *(v0 + 248) = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
    }

    v9 = [v8 commonKey];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

LABEL_27:
        sub_1000F24EC(&qword_100AEB9F8);
        v40 = static AVPartialAsyncProperty<A>.dateValue.getter();
        *(v0 + 256) = v40;
        v41 = static MainActor.shared.getter();
        *(v0 + 264) = v41;
        v42 = swift_task_alloc();
        *(v0 + 272) = v42;
        *v42 = v0;
        v42[1] = sub_10064BBE8;
        v37 = *(v0 + 104);
        v38 = v40;
        v39 = v41;
        goto LABEL_28;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_27;
      }
    }
  }

  v24 = *(v0 + 320);
  v25 = *(v0 + 224);
  v26 = *(v0 + 232);
  v27 = *(v0 + 321);

  v28 = *(v0 + 72);
  sub_100021CEC(*(v0 + 112), v28, &unk_100AD4790);

  v29 = _s13PhotoMetadataVMa();
  v30 = v28 + *(v29 + 20);
  *v30 = v26;
  *(v30 + 8) = v27;
  v31 = v28 + *(v29 + 24);
  *v31 = v25;
  *(v31 + 8) = v24;

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10064C2CC()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 321);
  v3 = *(v0 + 320);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  _StringGuts.grow(_:)(39);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v8._object = 0x80000001008FF860;
  v8._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v8);
  *(v0 + 56) = v1;
  sub_1000F24EC(&qword_100AD5BC0);
  _print_unlocked<A, B>(_:_:)();
  sub_100653A04(*(v0 + 16), *(v0 + 24), v7, v6, &static os_log_type_t.error.getter);

  v9 = *(v0 + 72);
  sub_100021CEC(*(v0 + 112), v9, &unk_100AD4790);

  v10 = _s13PhotoMetadataVMa();
  v11 = v9 + *(v10 + 20);
  *v11 = v5;
  *(v11 + 8) = v2;
  v12 = v9 + *(v10 + 24);
  *v12 = v4;
  *(v12 + 8) = v3;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10064C4B8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_10064CDEC;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_10064C658;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10064C658()
{
  if (*(v0 + 40))
  {
    v2 = objc_allocWithZone(NSRegularExpression);
    v3 = String._bridgeToObjectiveC()();
    *(v0 + 64) = 0;
    v4 = [v2 initWithPattern:v3 options:0 error:v0 + 64];

    v5 = *(v0 + 64);
    if (v4)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();
      v8 = [v4 matchesInString:v7 options:0 range:{0, String.UTF16View.count.getter()}];

      sub_1000065A8(0, &qword_100AD44D8);
      v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = v4;
      if (v1 >> 62)
      {
LABEL_62:
        v59 = v1 & 0xFFFFFFFFFFFFFF8;
        v61 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v59 = v1 & 0xFFFFFFFFFFFFFF8;
        v61 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = 0;
      v9 = 0;
      v10 = 0;
      v60 = v1 & 0xC000000000000001;
      LOBYTE(v11) = 1;
      v12 = 1;
LABEL_6:
      v13 = v9;
      v14 = v12;
LABEL_7:
      v12 = v14;
      v9 = v13;
      for (i = v10; v10 != v61; v1 = v16)
      {
        if (v60)
        {
          v16 = v1;
          v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (i >= *(v59 + 16))
          {
            goto LABEL_59;
          }

          v16 = v1;
          v1 = *(v1 + 8 * i + 32);
          v10 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        if (i >= 2)
        {

          goto LABEL_28;
        }

        [v1 range];
        Range<>.init(_:in:)();
        if (v17)
        {
        }

        else
        {
          String.subscript.getter();
          v13 = Double.init(_:)();
          v19 = v18;

          if ((v19 & 1) == 0)
          {
            v14 = 0;
            v1 = v16;
            if (!i)
            {
              goto LABEL_7;
            }

            if (i == 1)
            {
              LOBYTE(v11) = 0;
              v58 = v13;
            }

            goto LABEL_6;
          }
        }

        ++i;
      }

LABEL_28:

      v20 = v58;
    }

    else
    {
      v22 = *(v0 + 240);
      v23 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v9 = 0;
      v20 = 0;
      LOBYTE(v12) = 1;
      LOBYTE(v11) = 1;
    }

    v21 = v0 + 32;
  }

  else
  {

    LOBYTE(v12) = *(v0 + 321);
    v11 = *(v0 + 320);
    v20 = *(v0 + 224);
    v9 = *(v0 + 232);
    v21 = v0 + 32;
  }

  for (j = *(v0 + 248); j != *(v0 + 200); j = *(v0 + 248))
  {
    *(v21 + 289) = v12 & 1;
    *(v21 + 288) = v11 & 1;
    *(v0 + 224) = v20;
    *(v0 + 232) = v9;
    v32 = *(v0 + 192);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v33 = *(v32 + 8 * j + 32);
    }

    *(v0 + 240) = v33;
    *(v0 + 248) = j + 1;
    if (__OFADD__(j, 1))
    {
      goto LABEL_60;
    }

    v34 = [v33 commonKey];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
      if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
      {

LABEL_54:
        sub_1000F24EC(&qword_100AEB9F8);
        v54 = static AVPartialAsyncProperty<A>.dateValue.getter();
        *(v0 + 256) = v54;
        v55 = static MainActor.shared.getter();
        *(v0 + 264) = v55;
        v56 = swift_task_alloc();
        *(v0 + 272) = v56;
        *v56 = v0;
        v56[1] = sub_10064BBE8;
        v51 = *(v0 + 104);
        v52 = v54;
        v53 = v55;
LABEL_55:

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v51, v52, v53, &protocol witness table for MainActor);
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_54;
      }
    }

    v42 = [*(v0 + 240) commonKey];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
      if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
      {

LABEL_52:
        sub_1000F24EC(&qword_100AEB9F0);
        v48 = static AVPartialAsyncProperty<A>.stringValue.getter();
        *(v0 + 288) = v48;
        v49 = static MainActor.shared.getter();
        *(v0 + 296) = v49;
        v50 = swift_task_alloc();
        *(v0 + 304) = v50;
        *v50 = v0;
        v50[1] = sub_10064C4B8;
        v51 = v0 + 32;
        v52 = v48;
        v53 = v49;
        goto LABEL_55;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_52;
      }
    }

    v21 = v0 + 32;
    LOBYTE(v12) = *(v0 + 321);
    LOBYTE(v11) = *(v0 + 320);
    v20 = *(v0 + 224);
    v9 = *(v0 + 232);
  }

  v25 = *(v0 + 72);
  sub_100021CEC(*(v0 + 112), v25, &unk_100AD4790);

  v26 = _s13PhotoMetadataVMa();
  v27 = v25 + *(v26 + 20);
  *v27 = v9;
  *(v27 + 8) = v12 & 1;
  v28 = v25 + *(v26 + 24);
  *v28 = v20;
  *(v28 + 8) = v11 & 1;

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10064CDEC()
{

  v1 = *(v0 + 312);
  v2 = *(v0 + 321);
  v3 = *(v0 + 320);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  _StringGuts.grow(_:)(39);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v8._object = 0x80000001008FF860;
  v8._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v8);
  *(v0 + 56) = v1;
  sub_1000F24EC(&qword_100AD5BC0);
  _print_unlocked<A, B>(_:_:)();
  sub_100653A04(*(v0 + 16), *(v0 + 24), v7, v6, &static os_log_type_t.error.getter);

  v9 = *(v0 + 72);
  sub_100021CEC(*(v0 + 112), v9, &unk_100AD4790);

  v10 = _s13PhotoMetadataVMa();
  v11 = v9 + *(v10 + 20);
  *v11 = v5;
  *(v11 + 8) = v2;
  v12 = v9 + *(v10 + 24);
  *v12 = v4;
  *(v12 + 8) = v3;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10064CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6)
{
  v34 = a1;
  v11 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v11 - 8);
  v13 = v31 - v12;
  v35 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v35);
  v15 = v31 - v14;
  v16 = sub_1000F24EC(&qword_100AD5B20);
  v36 = *(v16 - 8);
  v37 = v16;
  __chkstk_darwin(v16);
  v18 = v31 - v17;
  v19 = type metadata accessor for PhotoLibraryAssetMetadata();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a4;
  if (*(a3 + *a4))
  {

    sub_100046ADC(v18);

    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v23, v18, v19);
      v25 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
      v31[6] = v26;
      v31[7] = v25;
      v31[4] = v13;
      PhotoLibraryAssetMetadata.date.getter();
      *&v31[3] = a5;
      *&v31[5] = a6;

      v27 = PhotoLibraryAssetMetadata.size.getter();
      v31[0] = v28;
      v31[1] = v27;
      v33 = a3;
      PhotoLibraryAssetMetadata.squareCropRect.getter();
      v31[2] = a2;
      PhotoLibraryAssetMetadata.landscapeCropRect.getter();
      v32 = v24;
      PhotoLibraryAssetMetadata.portraitCropRect.getter();
      PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
      (*(v20 + 8))(v23, v19);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&unk_100AEE0B0);
      v29 = swift_allocObject();
      (*(v36 + 56))(v29 + *(*v29 + 104), 1, 1, v37);
      *(v29 + *(*v29 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v15, v29 + *(*v29 + 120), &unk_100AEE0A0);
      *(v33 + v32) = v29;
    }
  }

  else
  {
    (*(v20 + 56))(v18, 1, 1, v19, v21);
  }

  return sub_100004F84(v18, &qword_100AD5B20);
}

uint64_t sub_10064D40C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000065A8(0, &qword_100AD5A90);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10064D4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = type metadata accessor for Date();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v4[30] = *(v6 + 64);
  v4[31] = swift_task_alloc();
  v7 = type metadata accessor for SettingsKey();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for MainActor();
  v4[36] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[37] = v9;
  v4[38] = v8;

  return _swift_task_switch(sub_10064D65C, v9, v8);
}

uint64_t sub_10064D65C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  sub_1000065A8(0, &qword_100AE1A30);
  v4 = static NSUserDefaults.shared.getter();
  (*(v2 + 104))(v1, enum case for SettingsKey.saveToPhotos(_:), v3);
  SettingsKey.rawValue.getter();
  (*(v2 + 8))(v1, v3);
  v5 = String._bridgeToObjectiveC()();

  LODWORD(v1) = [v4 BOOLForKey:v5];

  if (v1)
  {
    v6 = v0[30];
    v7 = v0[31];
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[25];
    v11 = v0[26];
    v12 = v0[24];
    v21 = [objc_opt_self() sharedPhotoLibrary];
    v0[39] = v21;
    (*(v8 + 16))(v7, v10, v9);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v8 + 32))(v14 + v13, v7, v9);
    *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
    v0[22] = sub_10065699C;
    v0[23] = v14;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100006C7C;
    v0[21] = &unk_100A76968;
    v15 = _Block_copy(v0 + 18);
    v0[40] = v15;
    v16 = v11;
    v17 = v12;

    v0[2] = v0;
    v0[3] = sub_10064D9CC;
    v18 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&unk_100AE1D70);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1006273FC;
    v0[13] = &unk_100A76990;
    v0[14] = v18;
    [v21 performChanges:v15 completionHandler:?];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10064D9CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);
  if (v2)
  {
    v5 = sub_10064DB80;
  }

  else
  {
    v5 = sub_10064DAFC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10064DAFC()
{
  v1 = v0[39];
  v2 = v0[40];

  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10064DB80()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);
  swift_willThrow();

  _Block_release(v1);
  if (qword_100AD00B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100AEB9B0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Exception thrown when saving camera photo to library: %@", v6, 0xCu);
    sub_100004F84(v7, &unk_100AD4BB0);
  }

  return _swift_task_switch(sub_10064DD2C, 0, 0);
}

uint64_t sub_10064DD2C()
{
  *(v0 + 336) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10064DDB8, v2, v1);
}

uint64_t sub_10064DDB8()
{
  v1 = v0[27];
  v2 = v0[24];

  UIImageWriteToSavedPhotosAlbum(v2, v1, 0, 0);
  v3 = v0[37];
  v4 = v0[38];

  return _swift_task_switch(sub_10064DE38, v3, v4);
}

uint64_t sub_10064DE38()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10064DEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() creationRequestForAssetFromImage:a1];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v5 setCreationDate:isa];

  [v5 setLocation:a3];
}

uint64_t sub_10064DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = type metadata accessor for Date();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v4[30] = *(v6 + 64);
  v4[31] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[32] = v7;
  v8 = *(v7 - 8);
  v4[33] = v8;
  v4[34] = *(v8 + 64);
  v4[35] = swift_task_alloc();
  v9 = type metadata accessor for SettingsKey();
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v11;
  v4[42] = v10;

  return _swift_task_switch(sub_10064E124, v11, v10);
}

uint64_t sub_10064E124()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  sub_1000065A8(0, &qword_100AE1A30);
  v4 = static NSUserDefaults.shared.getter();
  (*(v2 + 104))(v1, enum case for SettingsKey.saveToPhotos(_:), v3);
  SettingsKey.rawValue.getter();
  (*(v2 + 8))(v1, v3);
  v5 = String._bridgeToObjectiveC()();

  LODWORD(v1) = [v4 BOOLForKey:v5];

  if (v1)
  {
    v6 = v0[35];
    v8 = v0[32];
    v7 = v0[33];
    v9 = v0[31];
    v23 = v0[30];
    v24 = v0[34];
    v11 = v0[28];
    v10 = v0[29];
    v12 = v0[25];
    v25 = v0[26];
    v13 = v0[24];
    v26 = [objc_opt_self() sharedPhotoLibrary];
    v0[43] = v26;
    (*(v7 + 16))(v6, v13, v8);
    v14 = v11;
    (*(v10 + 16))(v9, v12, v11);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = (v24 + *(v10 + 80) + v15) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v7 + 32))(v17 + v15, v6, v8);
    (*(v10 + 32))(v17 + v16, v9, v14);
    *(v17 + ((v23 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
    v0[22] = sub_100656A2C;
    v0[23] = v17;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100006C7C;
    v0[21] = &unk_100A769E0;
    v18 = _Block_copy(v0 + 18);
    v0[44] = v18;
    v19 = v25;

    v0[2] = v0;
    v0[3] = sub_10064E508;
    v20 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&unk_100AE1D70);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1006273FC;
    v0[13] = &unk_100A76A08;
    v0[14] = v20;
    [v26 performChanges:v18 completionHandler:?];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10064E508()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  v3 = *(v1 + 336);
  v4 = *(v1 + 328);
  if (v2)
  {
    v5 = sub_10064E6C8;
  }

  else
  {
    v5 = sub_10064E638;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10064E638()
{
  v1 = v0[43];
  v2 = v0[44];

  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10064E6C8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  swift_willThrow();

  _Block_release(v1);
  if (qword_100AD00B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100AEB9B0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Exception thrown when saving camera video to library: %@", v6, 0xCu);
    sub_100004F84(v7, &unk_100AD4BB0);
  }

  return _swift_task_switch(sub_10064E874, 0, 0);
}

uint64_t sub_10064E874()
{
  *(v0 + 368) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10064E900, v2, v1);
}

uint64_t sub_10064E900()
{
  v1 = v0[27];

  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  UISaveVideoAtPathToSavedPhotosAlbum(v2, v1, 0, 0);

  v3 = v0[41];
  v4 = v0[42];

  return _swift_task_switch(sub_10064E9A4, v3, v4);
}

uint64_t sub_10064E9A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10064EA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v10 = [v4 creationRequestForAssetFromVideoAtFileURL:v6];

  if (v10)
  {
    v8 = v10;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v8 setCreationDate:isa];
  }

  [v10 setLocation:a3];
}

void sub_10064EB08(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_100AD00B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000617C(v8, qword_100AEB9B0);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100008458(a3, a4, &v12);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100008458(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, oslog, v9, "%s %s", v10, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10064ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = type metadata accessor for AssetType();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  v7[29] = type metadata accessor for SuggestionMergeConflict(0);
  v7[30] = swift_task_alloc();
  v7[31] = type metadata accessor for MainActor();
  v7[32] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[33] = v10;
  v7[34] = v9;

  return _swift_task_switch(sub_10064EDE0, v10, v9);
}

uint64_t sub_10064EDE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[35] = Strong;
  if (!Strong)
  {
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong viewIfLoaded];
  v4 = [v3 window];

  if (v4)
  {
LABEL_5:

    if ([v2 isBeingDismissed])
    {
      goto LABEL_6;
    }

    sub_100656E6C(v0[19], v0[30], type metadata accessor for SuggestionMergeConflict);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v23 = v0[23];

        v23(0xD000000000000023, 0x80000001008FF470);

        v24 = v0[25];
        swift_beginAccess();
        v7 = *(v24 + 16);
        goto LABEL_8;
      }

      v0[36] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v16;
      v0[37] = v13;
      v0[38] = v16;
      v15 = sub_10064F0E4;
    }

    else if (EnumCaseMultiPayload)
    {
      v17 = v0[30];
      v18 = *v17;
      v0[48] = *v17;
      v19 = v17[1];
      v0[49] = v19;
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        __break(1u);
        return _swift_task_switch(EnumCaseMultiPayload, v11, v12);
      }

      v0[50] = v21;
      v0[51] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v22;
      v0[52] = v13;
      v0[53] = v22;
      v15 = sub_10064F9B8;
    }

    else
    {
      (*(v0[27] + 32))(v0[28], v0[30], v0[26]);
      v0[42] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v14;
      v0[43] = v13;
      v0[44] = v14;
      v15 = sub_10064F53C;
    }

    EnumCaseMultiPayload = v15;
    v11 = v13;

    return _swift_task_switch(EnumCaseMultiPayload, v11, v12);
  }

  v5 = [v2 presentedViewController];
  if (v5)
  {
    v4 = v5;
    goto LABEL_5;
  }

LABEL_6:

LABEL_7:
  v6 = v0[21];

  v6(0xD00000000000002FLL, 0x80000001008FF320);
  v7 = 7;
LABEL_8:

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10064F0E4()
{
  v1 = v0[35];
  v2 = static MainActor.shared.getter();
  v0[39] = v2;
  v3 = swift_task_alloc();
  v0[40] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_10064F1F0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 458, v2, &protocol witness table for MainActor, 0xD000000000000026, 0x80000001008FF400, sub_100652FAC, v3, &type metadata for Bool);
}

uint64_t sub_10064F1F0()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return _swift_task_switch(sub_10064F350, v3, v2);
}

uint64_t sub_10064F350()
{

  *(v0 + 459) = *(v0 + 458);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_10064F3BC, v1, v2);
}

uint64_t sub_10064F3BC()
{
  v1 = *(v0 + 459);
  v2 = *(v0 + 280);
  v3 = *(v0 + 168);

  _StringGuts.grow(_:)(57);
  v4._object = 0x80000001008FF430;
  v4._countAndFlagsBits = 0xD000000000000037;
  String.append(_:)(v4);
  if (v1)
  {
    v5 = 1163219540;
  }

  else
  {
    v5 = 0x45534C4146;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v3(0, 0xE000000000000000);

  if (v1)
  {
    v8 = *(v0 + 200);
    swift_beginAccess();
    v9 = *(v8 + 16);
    if ((v9 & 1) == 0)
    {
      *(*(v0 + 200) + 16) = v9 | 1;
    }
  }

  v10 = *(v0 + 200);
  swift_beginAccess();
  v11 = *(v10 + 16);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_10064F53C()
{
  v1 = v0[35];
  v2 = v0[28];
  v3 = static MainActor.shared.getter();
  v0[45] = v3;
  v4 = swift_task_alloc();
  v0[46] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[47] = v5;
  *v5 = v0;
  v5[1] = sub_10064F654;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 457, v3, &protocol witness table for MainActor, 0xD000000000000033, 0x80000001008FF380, sub_100652FA4, v4, &type metadata for Bool);
}

uint64_t sub_10064F654()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return _swift_task_switch(sub_10064F7B4, v3, v2);
}

uint64_t sub_10064F7B4()
{

  *(v0 + 460) = *(v0 + 457);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_10064F820, v1, v2);
}

uint64_t sub_10064F820()
{
  v1 = *(v0 + 460);
  v2 = *(v0 + 280);
  v3 = *(v0 + 168);

  _StringGuts.grow(_:)(59);
  v4._object = 0x80000001008FF3C0;
  v4._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v4);
  if (v1)
  {
    v5 = 1163219540;
  }

  else
  {
    v5 = 0x45534C4146;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v3(0, 0xE000000000000000);

  if (v1)
  {
    v8 = *(v0 + 200);
    swift_beginAccess();
    v9 = *(v8 + 16);
    if ((v9 & 2) == 0)
    {
      *(*(v0 + 200) + 16) = v9 | 2;
    }
  }

  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v10 = *(v0 + 200);
  swift_beginAccess();
  v11 = *(v10 + 16);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_10064F9B8()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[35];
  v4 = static MainActor.shared.getter();
  v0[54] = v4;
  v5 = swift_task_alloc();
  v0[55] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_10064FAD8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 57, v4, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001008FF170, sub_10065709C, v5, &type metadata for Bool);
}

uint64_t sub_10064FAD8()
{
  v1 = *v0;

  v2 = *(v1 + 424);
  v3 = *(v1 + 416);

  return _swift_task_switch(sub_10064FC38, v3, v2);
}

uint64_t sub_10064FC38()
{

  *(v0 + 461) = *(v0 + 456);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_10064FCA4, v1, v2);
}

uint64_t sub_10064FCA4()
{
  v1 = *(v0 + 461);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = *(v0 + 280);
  v5 = *(v0 + 168);

  _StringGuts.grow(_:)(74);
  v6._object = 0x80000001008FF350;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v6);
  *(v0 + 136) = v2;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x6F6C667265766F20;
  v8._object = 0xEA00000000003D77;
  String.append(_:)(v8);
  *(v0 + 144) = v3;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6E7572546E616320;
  v10._object = 0xED00003D65746163;
  String.append(_:)(v10);
  if (v1)
  {
    v11 = 1163219540;
  }

  else
  {
    v11 = 0x45534C4146;
  }

  if (v1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v5(0, 0xE000000000000000);

  if (v1)
  {
    v14 = *(v0 + 200);
    swift_beginAccess();
    v15 = *(v14 + 16);
    if ((v15 & 4) == 0)
    {
      *(*(v0 + 200) + 16) = v15 | 4;
    }
  }

  v16 = *(v0 + 200);
  swift_beginAccess();
  v17 = *(v16 + 16);

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_10064FED8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1006570A0;

  return v8(a3);
}

uint64_t sub_10064FFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_100650080;

  return sub_100653C70(a5, 0);
}

uint64_t sub_100650080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006501C8, v6, v5);
}

uint64_t sub_1006501C8()
{
  v1 = *(v0 + 64);
  v5 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v5;
  *(v2 + 16) = v1;
  v3 = *(v0 + 8);

  return v3();
}

void sub_10065024C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, unint64_t, unint64_t), uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, unint64_t, unint64_t), uint64_t a7)
{
  v62 = a7;
  v63 = a6;
  v75 = type metadata accessor for PhotoLibraryAssetMetadata();
  v12 = *(v75 - 8);
  __chkstk_darwin(v75);
  v69 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v14 - 8);
  v61 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = v59 - v17;
  __chkstk_darwin(v18);
  v20 = v59 - v19;
  v21 = a1[1];
  v70 = *a1;
  v71 = v21;
  v22 = OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerActiveFetchRequests;
  swift_beginAccess();
  v23 = *(a2 + v22);
  v24 = *(v23 + 16);
  v64 = v7;
  v60 = a5;
  if (v24)
  {
    v25 = a3;

    v26 = v70;
    v27 = v71;
    v28 = sub_100094E98(v70, v71);
    if (v29)
    {
      v30 = a2;
      v31 = *(*(v23 + 56) + 16 * v28);

      v25(v26, v27, 0xD000000000000024, 0x80000001008FF8D0);
      swift_beginAccess();
      v32 = v31;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = *(v30 + v22);
      *(v30 + v22) = 0x8000000000000000;
      sub_100202DE8(v32, 0, v26, v27, isUniquelyReferenced_nonNull_native);

      *(v30 + v22) = v74;
      swift_endAccess();
      v34 = v32;
      v35 = v60;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_38;
    }
  }

  v36 = OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerLatestAssetAdditions;
  swift_beginAccess();
  v37 = *(a2 + v36);
  if (v37 >> 62)
  {
LABEL_41:
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (v38)
    {
      goto LABEL_9;
    }

LABEL_34:
    v63(v70, v71, 0xD000000000000030, 0x80000001008FF890);
    return;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_34;
  }

LABEL_9:
  v59[0] = v36;
  v59[1] = a2;
  v39 = v37 & 0xC000000000000001;
  v72 = v37 & 0xFFFFFFFFFFFFFF8;
  v73 = (v12 + 48);
  v66 = (v12 + 8);
  v67 = (v12 + 16);

  v12 = 0;
  v68 = v37 & 0xC000000000000001;
  while (1)
  {
    if (v39)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v72 + 16))
      {
        goto LABEL_40;
      }

      v40 = *(v37 + 8 * v12 + 32);
    }

    v41 = v40;
    type metadata accessor for LivePhotoAsset();
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v36 = *(v42 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata);
      if (!v36)
      {
        goto LABEL_18;
      }

      v43 = v41;

      sub_100046ADC(v20);

      v44 = v75;
      a2 = v20;
      if ((*v73)(v20, 1, v75))
      {
LABEL_17:

        sub_100004F84(a2, &qword_100AD5B20);
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      type metadata accessor for VideoAsset();
      v46 = swift_dynamicCastClass();
      if (v46)
      {
        v36 = *(v46 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata);
        if (!v36)
        {
          goto LABEL_18;
        }

        v47 = v41;

        a2 = v65;
      }

      else
      {
        type metadata accessor for PhotoAsset();
        v48 = swift_dynamicCastClass();
        if (!v48)
        {
          goto LABEL_18;
        }

        v36 = *(v48 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata);
        if (!v36)
        {
          goto LABEL_18;
        }

        v49 = v41;

        a2 = v61;
      }

      sub_100046ADC(a2);

      v44 = v75;
      if ((*v73)(a2, 1, v75))
      {
        goto LABEL_17;
      }
    }

    v50 = v37;
    v51 = v20;
    v52 = v38;
    v53 = v69;
    (*v67)(v69, a2, v44);
    sub_100004F84(a2, &qword_100AD5B20);
    a2 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
    v36 = v54;

    v55 = v53;
    v38 = v52;
    v20 = v51;
    v37 = v50;
    v39 = v68;
    (*v66)(v55, v44);
    if (!v36)
    {
      goto LABEL_18;
    }

    if (a2 == v70 && v36 == v71)
    {
      break;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {

      goto LABEL_36;
    }

LABEL_19:
    v45 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    ++v12;
    if (v45 == v38)
    {

      goto LABEL_34;
    }
  }

LABEL_36:
  swift_beginAccess();
  v57 = sub_100692B14(v12);
  swift_endAccess();
  v34 = v57;
  v58 = v60;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_38:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_100650928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[15] = a4;
  sub_1000F24EC(&unk_100AD6DD0);
  v7[18] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = type metadata accessor for MainActor();
  v7[23] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v7[24] = v10;
  *v10 = v7;
  v10[1] = sub_100650A74;

  return sub_100653C70(a5, 1);
}

uint64_t sub_100650A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[10] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = a3;
  v4[25] = a1;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v6;
  v4[27] = v5;

  return _swift_task_switch(sub_100650BC8, v6, v5);
}

uint64_t sub_100650BC8()
{
  if (v0[25])
  {
  }

  v1 = v0[16];
  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v2 = sub_100051964(UIImagePickerControllerOriginalImage);
  if (v3)
  {
    sub_10000BA20(*(v0[16] + 56) + 32 * v2, (v0 + 2));
    sub_1000065A8(0, &qword_100AE9450);
    if (swift_dynamicCast())
    {
      v4 = v0[14];
      v0[28] = v4;
      v5 = swift_task_alloc();
      v0[29] = v5;
      *v5 = v0;
      v5[1] = sub_100650ED8;
      v6 = v0[25];
      v7 = v0[17];

      return sub_10064D4FC(v4, v7, v6);
    }
  }

  if (!*(v1 + 16) || (v9 = sub_100051964(UIImagePickerControllerMediaURL), (v10 & 1) == 0))
  {
LABEL_13:
    v16 = v0[25];
    v17 = v0[19];
    v18 = v0[20];
    v19 = v0[18];

    (*(v18 + 56))(v19, 1, 1, v17);
    goto LABEL_14;
  }

  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[18];
  sub_10000BA20(*(v0[16] + 56) + 32 * v9, (v0 + 6));
  v14 = swift_dynamicCast();
  (*(v12 + 56))(v13, v14 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v15 = v0[25];

LABEL_14:
    sub_100004F84(v0[18], &unk_100AD6DD0);

    v20 = v0[1];

    return v20();
  }

  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  v21[1] = sub_10065107C;
  v22 = v0[25];
  v23 = v0[21];
  v24 = v0[17];

  return sub_10064DF60(v23, v24, v22);
}

uint64_t sub_100650ED8()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_100650FF8, v3, v2);
}

uint64_t sub_100650FF8()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10065107C()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_10065119C, v3, v2);
}

uint64_t sub_10065119C()
{
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

void sub_100651240(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_100651A20(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1000065A8(0, &qword_100AD43F0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1006514B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v33 - v9;
  v12 = __chkstk_darwin(v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_10000A5AC(&qword_100ADB7E8, &type metadata accessor for URL);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_10000A5AC(&unk_100ADE5B0, &type metadata accessor for URL);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100651868(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_100651A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100651B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100361E08(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100821380();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_1002009FC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = type metadata accessor for UUID();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_100651CF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100094E98(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100821978();
      v10 = v12;
    }

    sub_10002432C((*(v10 + 56) + 32 * v8), a3);
    sub_100200EC4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100651D9C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100362280(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1008229C0();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_100201224(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_100651E30(double a1, double a2)
{
  v3 = v2;
  v4 = sub_1003623A4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100823198();
    v8 = v12;
  }

  v9 = v6;
  v10 = *(*(v8 + 56) + 8 * v6);
  sub_100201678(v9, v8);
  *v3 = v8;
  return v10;
}

uint64_t sub_100651EB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100094E98(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10082447C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_100201AC4(v6, v8);
  *v3 = v8;
  return v9;
}

void *sub_100651F6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1006528B0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100652030(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = &_swiftEmptySetSingleton;
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  sub_1000F24EC(a5);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = v10[5];
    v18 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = NSObject._rawHashValue(seed:)(v17);
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v10[6] + 8 * v22) = v18;
    ++v10[2];
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10065221C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000F24EC(&qword_100ADB738);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100652470(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  if (qword_100AD00B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100AEB9B0);

  oslog = Logger.logObject.getter();
  v11 = a5();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100008458(a1, a2, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100008458(a3, a4, &v14);
    _os_log_impl(&_mh_execute_header, oslog, v11, "photoSubtraction [%s] %s", v12, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10065261C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1006526B4, v4, v3);
}

uint64_t sub_1006526B4()
{
  v1 = [*(v0 + 24) viewIfLoaded];
  v2 = [v1 window];

  if (!v2)
  {
    v3 = [*(v0 + 24) presentedViewController];
    if (!v3)
    {
LABEL_5:
      v5 = *(v0 + 32);

      v6 = swift_task_alloc();
      *(v0 + 56) = v6;
      *v6 = v0;
      v6[1] = sub_1002BFEDC;

      return sub_10062833C(v5);
    }

    v2 = v3;
  }

  v4 = *(v0 + 24);

  if ([v4 isBeingDismissed])
  {
    goto LABEL_5;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1006528B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v31 = v9;
    v29 = v12 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(a4 + 48) + 16 * v21);
        v24 = *v23 == v18 && v23[1] == v17;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v9 = v31;
    }

    else
    {
LABEL_22:

      v9 = v31;
      v15 = v29;
LABEL_23:
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_26:

        return sub_10065221C(v27, a2, v28, a3);
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_100652ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v33[0] = v3;
    v33[1] = v33;
    v34 = v8;
    __chkstk_darwin(v10);
    v35 = v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v9);
    v36 = 0;
    v37 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v15 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      if (!*(a2 + 16))
      {
        goto LABEL_24;
      }

      v38 = v16 | (v11 << 6);
      v39 = v14;
      v20 = (*(v5 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v23 = Hasher._finalize()();
      v24 = -1 << *(a2 + 32);
      v9 = v23 & ~v24;
      if ((*(v15 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v25 = ~v24;
        while (1)
        {
          v26 = (*(a2 + 48) + 16 * v9);
          v27 = *v26 == v22 && v26[1] == v21;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v25;
          if (((*(v15 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v5 = v37;
        v14 = v39;
      }

      else
      {
LABEL_23:

        v5 = v37;
        v19 = v38;
        v14 = v39;
LABEL_24:
        *&v35[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_27:
          v29 = sub_10065221C(v35, v34, v36, v5);

          return v29;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();

  v32 = sub_100651F6C(v31, v8, v5, a2);

  return v32;
}

uint64_t sub_100652E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1006570A0;

  return sub_10064ECAC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100652ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1006570A0;

  return sub_10064FED8(a1, a2, a3, v8);
}

uint64_t sub_100652FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10062F9D0(a1, v4, v5, v7, v6);
}

uint64_t sub_100653074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10063057C(a1, v4, v5, v6, v7, v8);
}

uint64_t _s13PhotoMetadataVMa()
{
  result = qword_100AEBA58;
  if (!qword_100AEBA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100653198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v6;

  return _swift_task_switch(sub_1006532FC, v5, v6);
}

uint64_t sub_1006532FC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1000082B4(v0[4], v3, &unk_100AD6DD0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[6], &unk_100AD6DD0);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    v4 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    v0[2] = 0;
    v8 = [v4 removeItemAtURL:v6 error:v0 + 2];

    v9 = v0[2];
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v11 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  v12 = v0[5];
  v13 = v0[10];
  if (v12)
  {
    v14 = v12;

    if (v13)
    {
      swift_getObjectType();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v0[13] = v15;
    v0[14] = v17;

    return _swift_task_switch(sub_100653570, v15, v17);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100653570()
{
  v1 = v0[10];
  v2 = v0[5];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v2 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[15] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_10065375C;

  return sub_10056824C(v1, &protocol witness table for MainActor, v7);
}

uint64_t sub_10065375C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1006538CC, v3, v2);
}

uint64_t sub_1006538CC()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_10065395C, v1, v2);
}

uint64_t sub_10065395C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100653A04(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  if (qword_100AD00B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100AEB9B0);

  oslog = Logger.logObject.getter();
  v11 = a5();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100008458(a3, a4, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100008458(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, oslog, v11, "%s %s", v12, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100653BB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10064FFCC(a1, v4, v5, v7, v6);
}

uint64_t sub_100653C70(uint64_t a1, char a2)
{
  *(v2 + 552) = a2;
  *(v2 + 160) = a1;
  type metadata accessor for Locale();
  *(v2 + 168) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v2 + 176) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  *(v2 + 184) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5B20);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v3 = type metadata accessor for PhotoLibraryAssetMetadata();
  *(v2 + 216) = v3;
  *(v2 + 224) = *(v3 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v4 = type metadata accessor for CLLocationUpdate();
  *(v2 + 256) = v4;
  *(v2 + 264) = *(v4 - 8);
  *(v2 + 272) = swift_task_alloc();
  sub_1000F24EC(&unk_100AEE0C0);
  *(v2 + 280) = swift_task_alloc();
  v5 = type metadata accessor for CLLocationUpdate.LiveConfiguration();
  *(v2 + 288) = v5;
  *(v2 + 296) = *(v5 - 8);
  *(v2 + 304) = swift_task_alloc();
  v6 = type metadata accessor for CLLocationUpdate.Updates();
  *(v2 + 312) = v6;
  *(v2 + 320) = *(v6 - 8);
  *(v2 + 328) = swift_task_alloc();
  v7 = type metadata accessor for CLLocationUpdate.Updates.Iterator();
  *(v2 + 336) = v7;
  *(v2 + 344) = *(v7 - 8);
  *(v2 + 352) = swift_task_alloc();
  v8 = type metadata accessor for CLServiceSession.AuthorizationRequirement();
  *(v2 + 360) = v8;
  *(v2 + 368) = *(v8 - 8);
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = type metadata accessor for MainActor();
  *(v2 + 392) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 400) = v10;
  *(v2 + 408) = v9;

  return _swift_task_switch(sub_10065405C, v10, v9);
}

uint64_t sub_10065405C()
{
  v1 = *(v0 + 160);
  type metadata accessor for PhotoAsset();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1006564EC;
LABEL_5:
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    goto LABEL_6;
  }

  type metadata accessor for LivePhotoAsset();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v3 = v5;
    v4 = sub_1006564C8;
    goto LABEL_5;
  }

  type metadata accessor for VideoAsset();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    goto LABEL_39;
  }

  v24 = v23;
  v6 = swift_allocObject();
  *(v6 + 16) = v24;
  v4 = sub_10065648C;
LABEL_6:
  *(v0 + 424) = v6;
  *(v0 + 432) = v4;
  *(v0 + 416) = v4;
  if (*(v0 + 552) == 1)
  {
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v77 = *(v0 + 312);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    (*(*(v0 + 368) + 104))(*(v0 + 376), enum case for CLServiceSession.AuthorizationRequirement.none(_:), *(v0 + 360));
    type metadata accessor for CLServiceSession();
    swift_allocObject();

    v12 = v1;
    CLServiceSession.init(authorization:)();

    (*(v9 + 104))(v10, enum case for CLLocationUpdate.LiveConfiguration.default(_:), v11);
    static CLLocationUpdate.liveUpdates(_:)();
    (*(v9 + 8))(v10, v11);
    CLLocationUpdate.Updates.makeAsyncIterator()();
    (*(v7 + 8))(v8, v77);
    *(v0 + 440) = static MainActor.shared.getter();
    v13 = sub_10000A5AC(&unk_100AEBE40, &type metadata accessor for CLLocationUpdate.Updates.Iterator);
    v14 = swift_task_alloc();
    *(v0 + 448) = v14;
    *v14 = v0;
    v14[1] = sub_100654AA0;
    v15 = *(v0 + 336);
    v16 = *(v0 + 280);

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, v15, v13);
  }

  v17 = v1;
  sub_100004DF8(v4);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v20 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = *(v0 + 208);
    if (!*(v18 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
    {
      (*(v19 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
      goto LABEL_17;
    }

    v22 = *(v0 + 160);

    sub_100046ADC(v21);

    if ((*(v19 + 48))(v21, 1, v20) == 1)
    {

LABEL_17:
      sub_100004F84(*(v0 + 208), &qword_100AD5B20);
      goto LABEL_18;
    }

    (*(*(v0 + 224) + 32))(*(v0 + 248), *(v0 + 208), *(v0 + 216));
    v40 = PhotoLibraryAssetMetadata.latitude.getter();
    if (v41)
    {
      v42 = *(v0 + 160);
      (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    }

    else
    {
      v52 = PhotoLibraryAssetMetadata.longitude.getter();
      v53 = *(v0 + 248);
      v55 = *(v0 + 216);
      v54 = *(v0 + 224);
      v56 = *(v0 + 160);
      if ((v57 & 1) == 0)
      {
        goto LABEL_48;
      }

      (*(v54 + 8))(*(v0 + 248), *(v0 + 216));
    }
  }

LABEL_18:
  v25 = *(v0 + 160);
  type metadata accessor for LivePhotoAsset();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v29 = *(v0 + 200);
    if (!*(v26 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
    {
      (*(v27 + 56))(*(v0 + 200), 1, 1, *(v0 + 216));
      goto LABEL_23;
    }

    v30 = v25;

    sub_100046ADC(v29);

    if ((*(v27 + 48))(v29, 1, v28) == 1)
    {

LABEL_23:
      sub_100004F84(*(v0 + 200), &qword_100AD5B20);
      goto LABEL_24;
    }

    (*(*(v0 + 224) + 32))(*(v0 + 240), *(v0 + 200), *(v0 + 216));
    v40 = PhotoLibraryAssetMetadata.latitude.getter();
    if (v43)
    {
      v44 = *(v0 + 160);
      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

      goto LABEL_24;
    }

    v52 = PhotoLibraryAssetMetadata.longitude.getter();
    v53 = *(v0 + 240);
    v55 = *(v0 + 216);
    v54 = *(v0 + 224);
    v56 = *(v0 + 160);
    if (v58)
    {
      (*(v54 + 8))(*(v0 + 240), *(v0 + 216));

      goto LABEL_24;
    }

LABEL_48:
    v59 = CLLocationCoordinate2DMake(*&v40, *&v52);
    latitude = v59.latitude;
    longitude = v59.longitude;

    (*(v54 + 8))(v53, v55);
    goto LABEL_50;
  }

LABEL_24:
  v31 = *(v0 + 160);
  type metadata accessor for VideoAsset();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    goto LABEL_38;
  }

  if (!*(v32 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
  {
    v38 = *(v0 + 216);
    v37 = *(v0 + 224);
    v39 = *(v0 + 192);

    (*(v37 + 56))(v39, 1, 1, v38);
    goto LABEL_30;
  }

  v34 = *(v0 + 216);
  v33 = *(v0 + 224);
  v35 = *(v0 + 192);
  v36 = v31;

  sub_100046ADC(v35);

  if ((*(v33 + 48))(v35, 1, v34) == 1)
  {

LABEL_30:
    sub_100004F84(*(v0 + 192), &qword_100AD5B20);
LABEL_40:

    v51 = *(v0 + 8);

    return v51(0, 0, 0);
  }

  (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 192), *(v0 + 216));
  v45 = PhotoLibraryAssetMetadata.latitude.getter();
  if (v46 & 1) != 0 || (v47 = *&v45, v48 = PhotoLibraryAssetMetadata.longitude.getter(), (v49))
  {
    v50 = *(v0 + 160);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

LABEL_38:

LABEL_39:

    goto LABEL_40;
  }

  v63 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 216);
  v65 = v47;
  v66 = *(v0 + 160);
  v67 = CLLocationCoordinate2DMake(v65, *&v48);
  latitude = v67.latitude;
  longitude = v67.longitude;

  (*(v63 + 8))(v62, v64);
LABEL_50:
  *(v0 + 464) = longitude;
  *(v0 + 472) = latitude;
  v68 = [objc_allocWithZone(CLLocation) initWithLatitude:latitude longitude:longitude];
  *(v0 + 480) = v68;
  v69 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v68];
  *(v0 + 488) = v69;
  if (v69)
  {
    v70 = v69;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1006557FC;
    v71 = swift_continuation_init();
    *(v0 + 136) = sub_1000F24EC(&unk_100AEBE50);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10064D40C;
    *(v0 + 104) = &unk_100A767B0;
    *(v0 + 112) = v71;
    [v70 getMapItemsWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    *(v0 + 504) = 0;
    *(v0 + 512) = 0;
    v72 = *(v0 + 392);
    (*(v0 + 416))(0, 0, *(v0 + 472), *(v0 + 464));

    if (v72)
    {
      swift_getObjectType();
      v73 = dispatch thunk of Actor.unownedExecutor.getter();
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    *(v0 + 528) = v75;
    *(v0 + 520) = v73;

    return _swift_task_switch(sub_100655CD0, v73, v75);
  }
}

uint64_t sub_100654AA0()
{
  v2 = *v1;
  v2[57] = v0;

  v3 = v2[55];
  if (v0)
  {
    sub_100004DF8(v2[54]);
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1006554BC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100654C40;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100654C40()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_100654CA4, v1, v2);
}

uint64_t sub_100654CA4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 432);
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

    sub_100004DF8(v4);
LABEL_23:

    v42 = *(v0 + 8);

    return v42(0, 0, 0);
  }

  (*(v3 + 32))(*(v0 + 272), v1, v2);
  v5 = CLLocationUpdate.location.getter();
  if (v5)
  {
    v6 = v5;
    sub_100004DF8(*(v0 + 432));
    [v6 coordinate];
    v8 = v7;
    v10 = v9;
    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100AEB9B0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 344);
    v15 = *(v0 + 352);
    v17 = *(v0 + 336);
    v18 = *(v0 + 264);
    v19 = *(v0 + 272);
    v20 = *(v0 + 256);
    if (v14)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Found current location for photo!", v21, 2u);
    }

    (*(v18 + 8))(v19, v20);
    (*(v16 + 8))(v15, v17);
    *(v0 + 464) = v10;
    *(v0 + 472) = v8;
    v22 = [objc_allocWithZone(CLLocation) initWithLatitude:v8 longitude:v10];
    *(v0 + 480) = v22;
    v23 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v22];
    *(v0 + 488) = v23;
    if (v23)
    {
      v24 = v23;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1006557FC;
      v25 = swift_continuation_init();
      *(v0 + 136) = sub_1000F24EC(&unk_100AEBE50);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10064D40C;
      *(v0 + 104) = &unk_100A767B0;
      *(v0 + 112) = v25;
      [v24 getMapItemsWithCompletionHandler:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      *(v0 + 504) = 0;
      *(v0 + 512) = 0;
      v38 = *(v0 + 392);
      (*(v0 + 416))(0, 0, *(v0 + 472), *(v0 + 464));

      if (v38)
      {
        swift_getObjectType();
        v39 = dispatch thunk of Actor.unownedExecutor.getter();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      *(v0 + 528) = v41;
      *(v0 + 520) = v39;

      return _swift_task_switch(sub_100655CD0, v39, v41);
    }
  }

  else
  {
    if (CLLocationUpdate.authorizationDenied.getter() & 1) != 0 || (CLLocationUpdate.authorizationDeniedGlobally.getter() & 1) != 0 || (CLLocationUpdate.authorizationRestricted.getter())
    {
      v26 = *(v0 + 432);

      sub_100004DF8(v26);
      if (qword_100AD00B8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000617C(v27, qword_100AEB9B0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = os_log_type_enabled(v28, v29);
      v32 = *(v0 + 344);
      v31 = *(v0 + 352);
      v33 = *(v0 + 336);
      v34 = *(v0 + 264);
      v35 = *(v0 + 272);
      v36 = *(v0 + 256);
      if (v30)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Location access denied or restricted, ending loop.", v37, 2u);
      }

      (*(v34 + 8))(v35, v36);
      (*(v32 + 8))(v31, v33);
      goto LABEL_23;
    }

    if (CLLocationUpdate.authorizationRequestInProgress.getter() & 1) != 0 || (CLLocationUpdate.serviceSessionRequired.getter() & 1) != 0 || (CLLocationUpdate.insufficientlyInUse.getter())
    {
      if (qword_100AD00B8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000617C(v43, qword_100AEB9B0);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Waiting for location authorization...", v46, 2u);
      }
    }

    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    *(v0 + 440) = static MainActor.shared.getter();
    v47 = sub_10000A5AC(&unk_100AEBE40, &type metadata accessor for CLLocationUpdate.Updates.Iterator);
    v48 = swift_task_alloc();
    *(v0 + 448) = v48;
    *v48 = v0;
    v48[1] = sub_100654AA0;
    v49 = *(v0 + 336);
    v50 = *(v0 + 280);

    return dispatch thunk of AsyncIteratorProtocol.next()(v50, v49, v47);
  }
}

uint64_t sub_1006554BC()
{
  v0[19] = v0[57];
  sub_1000F24EC(&qword_100AD5BC0);
  swift_willThrowTypedImpl();

  v1 = v0[50];
  v2 = v0[51];

  return _swift_task_switch(sub_100655558, v1, v2);
}

uint64_t sub_100655558()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  (*(v2 + 8))(v1, v3);
  if (qword_100AD00B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AEB9B0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error retrieving location using live updates: %@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0, 0, 0);
}

uint64_t sub_1006557FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 496) = v2;
  v3 = *(v1 + 408);
  v4 = *(v1 + 400);
  if (v2)
  {
    v5 = sub_1006563B0;
  }

  else
  {
    v5 = sub_10065592C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10065592C()
{
  v3 = *(v1 + 144);
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          swift_once();
LABEL_10:
          v22 = type metadata accessor for Logger();
          sub_10000617C(v22, qword_100AEB9B0);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();
          v25 = os_log_type_enabled(v23, v24);
          v26 = *(v1 + 488);
          if (v25)
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "Could not find a city and state/province name for asset location!", v27, 2u);
          }

          goto LABEL_16;
        }

        v4 = *(v3 + 32);
      }

      v2 = v4;

      v0 = [v2 placemark];
      v5 = [v0 locality];
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        v10 = [v0 administrativeArea];
        if (v10)
        {
          v33 = *(v1 + 488);
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v14._countAndFlagsBits = 0;
          v14._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
          v15._countAndFlagsBits = v7;
          v15._object = v9;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

          v16._countAndFlagsBits = 8236;
          v16._object = 0xE200000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
          v17._countAndFlagsBits = v11;
          v17._object = v13;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);

          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          v19 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
          v9 = v20;

          v21 = v19;
        }

        else
        {

          v21 = v7;
        }

        goto LABEL_17;
      }

      if (qword_100AD00B8 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_16:
  v21 = 0;
  v9 = 0;
LABEL_17:
  *(v1 + 504) = v21;
  *(v1 + 512) = v9;
  v28 = *(v1 + 392);
  (*(v1 + 416))(*(v1 + 472), *(v1 + 464));

  if (v28)
  {
    swift_getObjectType();
    v29 = dispatch thunk of Actor.unownedExecutor.getter();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *(v1 + 528) = v31;
  *(v1 + 520) = v29;

  return _swift_task_switch(sub_100655CD0, v29, v31);
}

uint64_t sub_100655CD0()
{
  v1 = v0[20];
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  v3 = v0[49];
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = swift_task_alloc();
    v0[68] = v5;
    *v5 = v0;
    v5[1] = sub_100656048;

    return (sub_1001DA5A8)(v3, &protocol witness table for MainActor);
  }

  else
  {
    v7 = v2;
    ObjectType = swift_getObjectType();
    v9 = v1;
    v10 = swift_task_alloc();
    v0[67] = v10;
    *v10 = v0;
    v10[1] = sub_100655E68;

    return sub_10078BBDC(v3, &protocol witness table for MainActor, ObjectType, v7);
  }
}

uint64_t sub_100655E68()
{
  v1 = *v0;

  v2 = *(v1 + 528);
  v3 = *(v1 + 520);

  return _swift_task_switch(sub_100655F88, v3, v2);
}

uint64_t sub_100655F88()
{
  v1 = *(v0 + 392);
  v2 = swift_task_alloc();
  *(v0 + 544) = v2;
  *v2 = v0;
  v2[1] = sub_100656048;

  return (sub_1001DA5A8)(v1, &protocol witness table for MainActor);
}

uint64_t sub_100656048()
{
  v1 = *v0;

  v2 = *(v1 + 528);
  v3 = *(v1 + 520);

  return _swift_task_switch(sub_100656168, v3, v2);
}

uint64_t sub_100656168()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_1006561CC, v1, v2);
}

uint64_t sub_1006561CC()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v8 = v0[60];
  v2 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v2 object:isa];

  v6 = v0[63];
  v7 = v0[64];

  v4 = v0[1];

  return v4(v8, v6, v7);
}

uint64_t sub_1006563B0()
{
  v1 = *(v0 + 488);
  swift_willThrow();

  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  v2 = *(v0 + 392);
  (*(v0 + 416))(0, 0, *(v0 + 472), *(v0 + 464));

  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 528) = v5;
  *(v0 + 520) = v3;

  return _swift_task_switch(sub_100655CD0, v3, v5);
}

uint64_t sub_10065651C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CanvasContentInputType() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000F24EC(&qword_100AD4E78) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100032ECC;

  return sub_100649A38(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_100656690()
{
  v1 = *(type metadata accessor for CanvasContentInputType() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_1000F24EC(&qword_100AD4E78);
  v3 = *(v0 + 16);

  return sub_100649D98(v3, v0 + v2);
}

uint64_t sub_100656788()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1006567D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10063C5F4(a1, v4, v5, v7, v6);
}

uint64_t sub_100656890(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032EC8;

  return sub_100650928(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_10065699C()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10064DEB8(v3, v0 + v2, v4);
}

void sub_100656A2C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10064EA30(v0 + v2, v0 + v5, v6);
}

uint64_t sub_100656B24()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032EC8;

  return sub_10062CCC4(v2);
}

uint64_t sub_100656BB8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_100564D88(a1, a2, v6);
}

uint64_t sub_100656C7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1005AD9F8;

  return sub_10062CE3C(a1, v4);
}

uint64_t sub_100656D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1006570A0;

  return sub_10062DC18(a1, a2, a3, v8);
}

uint64_t sub_100656E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100656E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100656ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100656F5C()
{
  sub_100008F84();
  if (v0 <= 0x3F)
  {
    sub_100656FE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100656FE0()
{
  if (!qword_100AE04F8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE04F8);
    }
  }
}

char *sub_100657168(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal35FullScreenPodcastCollectionViewCell_podcastAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal35FullScreenPodcastCollectionViewCell_podcastView;
  type metadata accessor for MediaAssetGridView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = type metadata accessor for FullScreenPodcastCollectionViewCell();
  v10 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  static UIView.Invalidating.subscript.setter();
  v12 = OBJC_IVAR____TtC7Journal35FullScreenPodcastCollectionViewCell_podcastView;
  v13 = *&v11[OBJC_IVAR____TtC7Journal35FullScreenPodcastCollectionViewCell_podcastView];
  v14 = v13[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v13[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v13[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v16 = v13;
LABEL_8:
    sub_1003B0D74();
    v13[v15] = 1;

    goto LABEL_9;
  }

  if (v14 > 3 && v14 > 6)
  {

    goto LABEL_9;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v18 = v13;

  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v19 = *&v11[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];

  [v19 addSubview:{*&v11[v12], 0x3FF0000000000000, 0x3FF2666666666666}];
  v20 = *&v11[v12];
  sub_100013178(0.0);

  return v11;
}

void sub_100657460()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal35FullScreenPodcastCollectionViewCell_podcastView);
}

id sub_1006574A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenPodcastCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenPodcastCollectionViewCell()
{
  result = qword_100AEBAC8;
  if (!qword_100AEBAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1006575C8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal35FullScreenPodcastCollectionViewCell_podcastView);
  v2 = v1;
  return v1;
}

void *sub_1006575FC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal35FullScreenPodcastCollectionViewCell_podcastAsset);
  v2 = v1;
  return v1;
}

void sub_100657630()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100658670();
  v7 = [v6 text];

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_100658B00();
  v12 = [v11 text];

  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v25[0] = v8;
  v25[1] = v10;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000777B4();
  v17 = StringProtocol.trimmingCharacters(in:)();
  v19 = v18;
  (*(v3 + 8))(v5, v2);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v21 = v20 == 0;
  v22 = objc_allocWithZone(type metadata accessor for CanvasPromptPickerController(0));
  v23 = sub_10033545C(v21);
  *&v23[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pickerDelegate + 8] = &off_100A76A48;
  swift_unknownObjectWeakAssign();
  v24 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v23];
  sub_100171DA0(v24, 1, 1, *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator));
}

uint64_t sub_100657890@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100670674(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100657940()
{
  swift_getKeyPath();
  sub_100670674(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100657A10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100670674(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__selectedType;
  swift_beginAccess();
  return sub_1000082B4(v3 + v4, a2, &qword_100AD57F0);
}

uint64_t sub_100657AE8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000082B4(a1, &v6 - v3, &qword_100AD57F0);
  return sub_1003C858C(v4);
}

uint64_t sub_100657B94(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100673954, v4);
}

void sub_100657C28(uint64_t a1, uint64_t a2)
{
  sub_1000065A8(0, &unk_100ADC630);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_100657CA4()
{
  v1 = v0;
  v2 = sub_100658670();
  v3 = [v0 isEditing];
  v4 = *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  if (v3)
  {
    v5 = *(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle);
  }

  else
  {
    v5 = sub_10005AAB0(2);
  }

  [v2 setHidden:(v5 & 1) == 0];

  v6 = *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerView];
  if ([v0 isEditing])
  {
    if (*(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) != 1)
    {
LABEL_6:
      v7 = 1;
      goto LABEL_9;
    }
  }

  else if ((sub_10005AAB0(2) & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = [v0 isEditing] ^ 1;
LABEL_9:
  [v6 setHidden:v7];
  if ([v0 isEditing])
  {
    if (*(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((sub_10005AAB0(2) & 1) == 0)
  {
LABEL_13:
    v8 = *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___bundleTitleView];
    v9 = String._bridgeToObjectiveC()();
    [v8 setText:v9];
  }

LABEL_14:
  v10 = sub_100658B00();
  sub_1007BBA50();

  v11 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___bundleTitleView];
  sub_10018FAE8();

  sub_1006612C0();
  sub_1005A723C(*(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner));
}

uint64_t sub_100657E64()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEBAE0);
  v1 = sub_10000617C(v0, qword_100AEBAE0);
  if (qword_100AD0220 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30100);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100657F2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AEBDC8);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CanvasViewController.State(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_100671244();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_100670674(&qword_100AD81F0, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10067304C(v11, v13, type metadata accessor for CanvasViewController.State);
  }

  return sub_10000BA7C(a1);
}

uint64_t sub_1006581E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4955557972746E65 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100658274(uint64_t a1)
{
  v2 = sub_100671244();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006582B0(uint64_t a1)
{
  v2 = sub_100671244();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100658304(void *a1)
{
  v2 = sub_1000F24EC(&unk_100AEBDE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_100671244();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_100670674(&qword_100AD8280, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10065847C()
{
  v0 = qword_100AEBAF8;

  return v0;
}

uint64_t sub_1006584B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CanvasViewController.State(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void (*sub_100658548(uint64_t *a1))(uint64_t *a1)
{
  v2 = *(*(sub_1000F24EC(&qword_100AE9040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(v2);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for CanvasViewController.State(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  return sub_100658610;
}

void sub_100658610(uint64_t *a1)
{
  v1 = *a1;
  sub_100004F84(*a1, &qword_100AE9040);

  free(v1);
}

id sub_100658690(char *a1)
{
  v2 = type metadata accessor for MergeableEntryAttributes();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_1000F24EC(&unk_100AE4C90);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for JournalFeatureFlags.enhancedSync(_:), v12, v14);
  v17 = JournalFeatureFlags.isEnabled.getter();
  (*(v13 + 8))(v16, v12);
  v18 = 0;
  if (v17)
  {
    v19 = [a1 traitCollection];
    v20 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
    v21 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v20 + v21, v8, &qword_100AD6260);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_100004F84(v8, &qword_100AD6260);
      v22 = 1;
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_100004F84(v8, &qword_100AD6260);
      MergeableEntryAttributes.title.getter();
      (*(v3 + 8))(v5, v2);
      v22 = 0;
    }

    v23 = sub_1000F24EC(&unk_100AD6240);
    (*(*(v23 - 8) + 56))(v11, v22, 1, v23);
    v18 = sub_100671588(v19, v11, 0.0, 0.0);

    sub_100004F84(v11, &unk_100AE4C90);
  }

  v24 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  v25 = type metadata accessor for CanvasMomentsTitleView();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC7Journal22CanvasMomentsTitleView_textViewFocusDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v26[OBJC_IVAR____TtC7Journal22CanvasMomentsTitleView_journalEntry] = v24;
  v32.receiver = v26;
  v32.super_class = v25;
  v27 = v18;

  v28 = objc_msgSendSuper2(&v32, "initWithFrame:textContainer:", v27, 0.0, 0.0, 0.0, 0.0);
  sub_10018F750();
  sub_10018FAE8();

  v29 = v28;
  [v29 setEditable:{objc_msgSend(a1, "isEditing")}];

  return v29;
}

id sub_100658B20(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_100658B84(char *a1)
{
  v2 = type metadata accessor for MergeableEntryAttributes();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - v7;
  v9 = sub_1000F24EC(&unk_100AEBE80);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for JournalFeatureFlags.enhancedSync(_:), v12);
  v16 = JournalFeatureFlags.isEnabled.getter();
  (*(v13 + 8))(v15, v12);
  v17 = 0;
  if (v16)
  {
    v18 = [a1 traitCollection];
    type metadata accessor for CustomAttributeProviderConcrete();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    Logger.init(subsystem:category:)();
    v20 = v19 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
    *(v20 + 4) = 0;
    *v20 = 2;
    swift_beginAccess();
    *(v19 + 16) = &_swiftEmptyDictionarySingleton;

    v21 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
    v22 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v21 + v22, v8, &qword_100AD6260);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_100004F84(v8, &qword_100AD6260);
      v23 = 1;
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_100004F84(v8, &qword_100AD6260);
      MergeableEntryAttributes.text.getter();
      (*(v3 + 8))(v5, v2);
      v23 = 0;
    }

    v24 = sub_1000F24EC(&qword_100AE4C80);
    (*(*(v24 - 8) + 56))(v11, v23, 1, v24);
    v17 = sub_100671BFC(v18, v19, v11, 0.0, 0.0);

    sub_100004F84(v11, &unk_100AEBE80);
  }

  type metadata accessor for CanvasTextView();
  v64 = v17;

  v26 = sub_1007BD68C(v25, v17);
  swift_unknownObjectWeakAssign();
  v27 = [a1 navigationController];
  v28 = v27;
  if (v27)
  {
    v29 = [v27 navigationBar];

    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v65.origin.x = v31;
    v65.origin.y = v33;
    v65.size.width = v35;
    v65.size.height = v37;
    Height = CGRectGetHeight(v65);
  }

  else
  {
    Height = 0.0;
  }

  v39 = &v26[OBJC_IVAR____TtC7Journal14CanvasTextView_navBarHeight];
  *v39 = Height;
  v39[8] = v28 == 0;
  v40 = v26;
  [v40 setKeyboardDismissMode:2];
  [v40 setAlwaysBounceVertical:1];

  [v40 setDelegate:a1];
  v41 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_scrollContentView];
  v42 = *&v40[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
  *&v40[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView] = v41;
  v43 = v41;
  v44 = v40;
  v45 = v43;
  sub_1007BD8C8(v42);

  result = [a1 view];
  if (result)
  {
    v47 = result;
    [result insertSubview:v44 atIndex:0];

    v48 = [v44 superview];
    if (v48)
    {
      v49 = v48;
      [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
      v50 = [v44 topAnchor];
      v51 = [v49 topAnchor];
      v52 = [v50 constraintEqualToAnchor:v51];

      [v52 setConstant:0.0];
      [v52 setActive:1];
    }

    v53 = [v44 superview];
    if (v53)
    {
      v54 = v53;
      [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
      v63 = a1;
      v55 = [v44 leadingAnchor];
      v56 = [v54 leadingAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];

      a1 = v63;
      [v57 setConstant:0.0];
      [v57 setActive:1];
    }

    v58 = [v44 superview];
    if (v58)
    {
      v59 = v58;
      [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
      v60 = [v44 trailingAnchor];
      v61 = [v59 trailingAnchor];
      v62 = [v60 constraintEqualToAnchor:v61];

      [v62 setConstant:0.0];
      [v62 setActive:1];
    }

    *&v44[OBJC_IVAR____TtC7Journal14CanvasTextView_canvasViewDelegate + 8] = &off_100A76A70;
    swift_unknownObjectWeakAssign();
    [v44 setEditable:{objc_msgSend(a1, "isEditing")}];

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006594BC()
{
  v1 = v0;
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isEditing])
  {
    (*(v3 + 104))(v6, enum case for JournalFeatureFlags.enhancedSync(_:), v2);
    v7 = JournalFeatureFlags.isEnabled.getter();
    (*(v3 + 8))(v6, v2);
    if (v7)
    {
      v8 = *(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
      if (v8)
      {
        v9 = *(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
        v10 = v8;
        return v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v13 = sub_100658B00();
      v14 = [v13 undoManager];

      return v14;
    }
  }

  else
  {
    v12 = type metadata accessor for CanvasViewController(0);
    v15.receiver = v1;
    v15.super_class = v12;
    return objc_msgSendSuper2(&v15, "undoManager");
  }
}

char *sub_100659694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v55 = &v54 - v6;
  v7 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TipGroup.Priority();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC7Journal20CanvasViewController_isInitialAppearance] = 1;
  v2[OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance] = 0;
  v2[OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay] = 0;
  v2[OBJC_IVAR____TtC7Journal20CanvasViewController_hasShownUnsupportedPreLuckDevicesDialog] = 0;
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_unsupportedPreLuckDevicesDialogPresentingController] = 0;
  v14 = OBJC_IVAR____TtC7Journal20CanvasViewController_cachedTipToDisplay;
  v15 = type metadata accessor for CanvasViewController.CachedTip(0);
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  type metadata accessor for CanvasBarItemCoordinator(0);
  UIViewController.ViewLoading.init()();
  v16 = OBJC_IVAR____TtC7Journal20CanvasViewController_scrollContentView;
  *&v3[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetView;
  type metadata accessor for SlimAssetView();
  *&v3[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = OBJC_IVAR____TtC7Journal20CanvasViewController_gridStackView;
  type metadata accessor for CanvasStackView();
  *&v3[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView;
  type metadata accessor for CanvasGridView();
  *&v3[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___bundleTitleView] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView] = 0;
  sub_1000065A8(0, &qword_100AEBC28);
  UIViewController.ViewLoading.init()();
  v20 = OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerView;
  type metadata accessor for JournalDividerView();
  *&v3[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_gridTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerTopConstraint] = 0;
  v3[OBJC_IVAR____TtC7Journal20CanvasViewController_focusedTextViewBeforeFullScreenAssetAppeared] = 2;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_playedVideoIds] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_locationUpdatesTask] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerLatestAssetAdditions] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerActiveFetchRequests] = &_swiftEmptyDictionarySingleton;
  v21 = OBJC_IVAR____TtC7Journal20CanvasViewController_initialJournalState;
  v22 = type metadata accessor for UserEngagement.StateSnapshot();
  (*(*(v22 - 8) + 56))(&v3[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator;
  type metadata accessor for CanvasLayoutCoordinator();
  swift_allocObject();
  *&v3[v23] = sub_1001743E8();
  _s15AutosaveManagerCMa();
  UIViewController.ViewLoading.init()();
  v24 = OBJC_IVAR____TtC7Journal20CanvasViewController_tipGroup;
  (*(v11 + 104))(v13, enum case for TipGroup.Priority.firstAvailable(_:), v10);
  type metadata accessor for TipGroup();
  swift_allocObject();
  *&v3[v24] = TipGroup.init(_:_:)();
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_tipGroupTask] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_tipPopoverController] = 0;
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_minimumVersionObservation] = 0;
  v25 = sub_100554A40();
  v26 = sub_1004F8D80(v25);
  *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] = v26;
  v27 = *&v26[OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager];
  if (v27)
  {
    [v27 removeAllActions];
  }

  v28 = v57;
  sub_1003BB3DC(v57, a1, v9);
  sub_10067304C(v9, &v3[OBJC_IVAR____TtC7Journal20CanvasViewController_initialInputType], type metadata accessor for CanvasContentInputType);
  v29 = type metadata accessor for CanvasViewController(0);
  v64.receiver = v3;
  v64.super_class = v29;
  v30 = objc_msgSendSuper2(&v64, "initWithNibName:bundle:", 0, 0);
  v31 = v30;
  if (*(a1 + 40) == 1)
  {
    v32 = v30;
    v33 = 1;
  }

  else
  {
    v34 = OBJC_IVAR____TtC7Journal20CanvasViewController_initialInputType;
    swift_storeEnumTagMultiPayload();
    v35 = v31;
    LOBYTE(v34) = sub_1001ED0B4(&v31[v34], v9);
    sub_1006730B4(v9, type metadata accessor for CanvasContentInputType);
    v33 = v34 ^ 1;
  }

  [v31 setEditing:v33 & 1];

  if ((*(a1 + 40) & 1) == 0 && ([v31 isEditing] & 1) == 0)
  {
    v36 = type metadata accessor for TaskPriority();
    v37 = v55;
    (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
    type metadata accessor for MainActor();

    v38 = static MainActor.shared.getter();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = &protocol witness table for MainActor;
    v39[4] = a1;
    sub_1003E9628(0, 0, v37, &unk_100961230, v39);
  }

  v40 = [v31 traitCollection];
  v41 = [v40 userInterfaceIdiom];

  if (v41 != 5)
  {
    v42 = [objc_allocWithZone(UIZoomTransitionOptions) init];
    [v42 set_recedesPresentingView:0];
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = sub_100673B20;
    v63 = v43;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1004B7420;
    v61 = &unk_100A772C8;
    v44 = _Block_copy(&aBlock);

    [v42 setInteractiveDismissShouldBegin:v44];
    _Block_release(v44);
    UIZoomTransitionOptions.alignmentRectProvider.setter();
    v45 = objc_opt_self();
    v62 = sub_10065AE40;
    v63 = 0;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100023FEC;
    v61 = &unk_100A772F0;
    v46 = _Block_copy(&aBlock);
    v47 = v42;
    v48 = [v45 _zoomWithOptions:v47 sourceItemProvider:v46];
    _Block_release(v46);

    [v31 setPreferredTransition:v48];
  }

  aBlock = *(*&v31[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] + 32);
  v49 = aBlock;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = v49;
  v51 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  sub_100004F84(v28, &qword_100AD57F0);

  v52 = *&v31[OBJC_IVAR____TtC7Journal20CanvasViewController_minimumVersionObservation];
  *&v31[OBJC_IVAR____TtC7Journal20CanvasViewController_minimumVersionObservation] = v51;

  return v31;
}

uint64_t sub_10065A018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_10065A118, v7, v6);
}

uint64_t sub_10065A118()
{
  v1 = v0[7];

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[10] = v2;
  v0[11] = v4;

  return _swift_task_switch(sub_10065A1B0, v2, v4);
}

uint64_t sub_10065A1B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v0 + 96) = *(*(v0 + 16) + 24);
  *(v0 + 184) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = *(v2 + 104);
  *(v0 + 104) = v3;
  *(v0 + 112) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);

  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_10065A2C0;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 188, v5, sub_100673C40, v6, &type metadata for Bool);
}

uint64_t sub_10065A2C0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[6];
    v5 = v2[3];
    v6 = v2[4];
    v7 = *(v6 + 8);
    v2[16] = v7;
    v2[17] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[10];
    v9 = v2[11];

    return _swift_task_switch(sub_10065A410, v8, v9);
  }
}

uint64_t sub_10065A410()
{

  *(v0 + 189) = *(v0 + 188);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_10065A47C, v1, v2);
}

uint64_t sub_10065A47C()
{
  v1 = *(v0 + 56);
  if (*(v0 + 189) == 1)
  {

    if (v1)
    {
      swift_getObjectType();
      v2 = dispatch thunk of Actor.unownedExecutor.getter();
      v4 = v3;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    *(v0 + 144) = v2;
    *(v0 + 152) = v4;

    return _swift_task_switch(sub_10065A568, v2, v4);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10065A568()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 184);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_allocObject();
  *(v0 + 160) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  v1(v3, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_10065A68C;
  v8 = *(v0 + 40);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v8, sub_100673C5C, v6, &type metadata for () + 8);
}

uint64_t sub_10065A68C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 128))(*(v2 + 40), *(v2 + 24));

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return _swift_task_switch(sub_10065A7D8, v4, v5);
  }
}

uint64_t sub_10065A7D8()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_10065A83C, v1, v2);
}

uint64_t sub_10065A83C()
{
  v1 = *(v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_10065A904;

  return sub_10062833C(v1);
}

uint64_t sub_10065A904()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10065AA48, v3, v2);
}

uint64_t sub_10065AA48()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10065AAB8(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [result isEditing];

    if (v4)
    {
      return 0;
    }

    else
    {
      return [a1 willBegin];
    }
  }

  return result;
}

void sub_10065AB40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 zoomedViewController];
  v5 = sub_1004B6AC0();

  if (v5)
  {
    sub_10065ABE4(a1);
    v13 = v6;
    v14 = v7;
    v12 = v8;
    v15 = v9;

    *&v11 = v12;
    *&v10 = v13;
    *(&v10 + 1) = v14;
    *(&v11 + 1) = v15;
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v5 == 0;
}

void sub_10065ABE4(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 bounds];
  rect = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 safeAreaInsets];
  v15 = v14;
  v17 = v16;

  v18 = [v1 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  v20 = 8.0;
  if (v19 != 5)
  {
    v21 = [v1 traitCollection];
    v22 = [v21 horizontalSizeClass];

    if (v22 == 2)
    {
      v20 = 18.0;
    }

    else
    {
      v20 = 14.0;
    }
  }

  v23 = sub_10007BDE0(rect, v7, v9, v11, v15, v17);
  recta = sub_10007BDE0(v23, v24, v25, v26, v20, 0.0);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [a1 sourceView];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v44.origin.x = recta;
  v44.origin.y = v28;
  v44.size.width = v30;
  v44.size.height = v32;
  CGRectGetMidX(v44);
  v45.origin.x = v35;
  v45.origin.y = v37;
  v45.size.width = v39;
  v45.size.height = v41;
  CGRectGetMidX(v45);
  v46.origin.x = recta;
  v46.origin.y = v28;
  v46.size.width = v30;
  v46.size.height = v32;
  CGRectGetMinY(v46);
  v47.origin.x = v35;
  v47.origin.y = v37;
  v47.size.width = v39;
  v47.size.height = v41;
  CGRectGetWidth(v47);
  v48.origin.x = v35;
  v48.origin.y = v37;
  v48.size.width = v39;
  v48.size.height = v41;
  CGRectGetHeight(v48);
}

uint64_t sub_10065AE40(void *a1)
{
  v2 = [a1 zoomedViewController];
  v3 = sub_1004B6AC0();

  if (v3)
  {
    v4 = [a1 sourceViewController];
    v5 = sub_1004B6F78();

    if (v5)
    {

      v7 = sub_100305ED0(v6);

      return v7;
    }
  }

  return 0;
}

id sub_10065AEFC()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver:v1];

  v4 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_minimumVersionObservation];
  if (v4)
  {
    v5 = v4;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v6 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];

  v7 = [v2 defaultCenter];
  [v7 removeObserver:v6];

  if (*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_locationUpdatesTask])
  {

    Task.cancel()();
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for CanvasViewController(0);
  return objc_msgSendSuper2(&v9, "dealloc");
}

void sub_10065B394()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AEBE00);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for CanvasViewController(0);
  v62.receiver = v0;
  v62.super_class = v11;
  objc_msgSendSuper2(&v62, "viewDidLoad");
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  [v13 setAccessibilityLabel:v14];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [objc_opt_self() systemBackgroundColor];
  [v16 setBackgroundColor:v17];

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"onEmptyRegionTapped:"];
  [v18 setDelegate:v1];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v20 = v19;
  v55 = v8;
  v56 = v5;
  v57 = v3;
  v58 = v2;
  v59 = v18;
  [v19 addGestureRecognizer:v18];

  sub_10065BD00();
  sub_10065BF0C();
  sub_10065C848(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_scrollContentView]);
  v21 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  if (*(v21 + 40) == 1)
  {
    sub_10065DEB0();
  }

  v22 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
  v23 = sub_100658670();
  v24 = sub_100658B00();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v22 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_delegate + 8) = &off_100A6A8C8;
  swift_unknownObjectWeakAssign();
  sub_1000F24EC(&unk_100AEBEC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100940050;
  *(v25 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v25 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v25 + 48) = type metadata accessor for UITraitUserInterfaceIdiom();
  *(v25 + 56) = &protocol witness table for UITraitUserInterfaceIdiom;
  *(&v61 + 1) = type metadata accessor for CanvasLayoutCoordinator();
  *&v60 = v22;

  UIViewController.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000BA7C(&v60);
  v26 = objc_opt_self();
  v27 = [v26 defaultCenter];
  [v27 addObserver:v22 selector:"onControllerEnvironmentChanges" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  v28 = [v26 defaultCenter];
  [v28 addObserver:v22 selector:"onControllerEnvironmentChanges" name:UIAccessibilitySwitchControlStatusDidChangeNotification object:0];

  *(v21 + 56) = &off_100A81B28;
  swift_unknownObjectWeakAssign();
  v29 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = (v29 + OBJC_IVAR____TtC7Journal14CanvasGridView_didDeletePhoto);
  *v31 = sub_100673930;
  v31[1] = v30;

  v32 = v56;
  static Date.now.getter();
  v33 = sub_100081D68();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  v37 = sub_1001D7928(v21);
  v38 = *(v21 + 40);
  v39 = v55;
  (*(v57 + 32))(v55, v32, v58);
  v40 = type metadata accessor for UserEngagement.StateSnapshot();
  v41 = (v39 + v40[5]);
  *v41 = v35;
  v41[1] = v36;
  *(v39 + v40[6]) = v37;
  *(v39 + v40[7]) = v38;
  (*(*(v40 - 1) + 56))(v39, 0, 1, v40);
  v42 = OBJC_IVAR____TtC7Journal20CanvasViewController_initialJournalState;
  swift_beginAccess();
  sub_100014318(v39, &v1[v42], &unk_100AEBE00);
  swift_endAccess();
  _s15AutosaveManagerCMa();
  swift_allocObject();

  v43 = sub_10021A134();

  swift_getKeyPath();
  swift_getKeyPath();
  *&v60 = v43;
  v44 = v1;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v45 = v60;
  v46 = [v44 isEditing];
  v47 = *(v45 + 40);
  *(v45 + 40) = v46;
  if (v46 != v47)
  {
    if (v46)
    {
      sub_100218550();
    }

    else if (*(v45 + 24))
    {

      sub_1000F24EC(&qword_100AD5BC0);
      Task.cancel()();
    }
  }

  v48 = [v44 navigationController];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 presentationController];

    if (v50)
    {
      [v50 setDelegate:v44];
    }
  }

  v51 = [v26 defaultCenter];
  if (qword_100ACFFD8 != -1)
  {
    swift_once();
  }

  [v51 addObserver:v44 selector:? name:? object:?];

  sub_10065E270();
  sub_1000065A8(0, &qword_100AE4350);
  v60 = 0u;
  v61 = 0u;
  v52 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  [v44 addKeyCommand:v52];

  v53 = [v26 defaultCenter];
  [v53 addObserver:v44 selector:"appWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
}