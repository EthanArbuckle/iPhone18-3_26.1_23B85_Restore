int main(int argc, const char **argv, const char **envp)
{
  qword_100010DB0 = [objc_allocWithZone(type metadata accessor for PassKitWrapperXPCServiceUIDelegate()) init];
  qword_100010DB8 = [objc_opt_self() serviceListener];
  [qword_100010DB8 setDelegate:qword_100010DB0];
  [qword_100010DB8 resume];
  return 0;
}

char *sub_100001AF0()
{
  v1 = [objc_allocWithZone(type metadata accessor for DynamicPaymentButtonDrawer()) init];
  v2 = [objc_allocWithZone(UISSlotMachine) initWithSlotDrawer:v1 options:0];

  *&v0[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI34PassKitWrapperXPCServiceUIDelegate_slotMachine] = v2;
  v3 = [objc_opt_self() serviceListener];
  *&v0[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI34PassKitWrapperXPCServiceUIDelegate_slotMachineListener] = v3;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PassKitWrapperXPCServiceUIDelegate();
  v4 = objc_msgSendSuper2(&v6, "init");
  [*&v4[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI34PassKitWrapperXPCServiceUIDelegate_slotMachineListener] setDelegate:v4];
  return v4;
}

void sub_100001BF0()
{
  sub_100006A40();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_100001C70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100001CB4()
{
  sub_100006A40();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

id sub_100001D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassKitWrapperXPCServiceUIDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void type metadata accessor for CGImage()
{
  if (!qword_100010A68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010A68);
    }
  }
}

uint64_t sub_100001E64(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___UISSlotMachineProtocol];
  sub_100002260(0, &qword_100010AD0, NSSet_ptr);
  sub_100002218(&qword_100010AD8, &qword_100007528);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000074A0;
  v6 = sub_100002260(0, &qword_100010AE0, PKPaymentRequest_ptr);
  *(v5 + 56) = sub_100002218(&qword_100010AE8, &qword_100007530);
  *(v5 + 32) = v6;
  v7 = sub_100006BE0();
  *(v5 + 88) = sub_100002218(&qword_100010AF0, &qword_100007538);
  *(v5 + 64) = v7;
  v8 = sub_100002260(0, &qword_100010AF8, NSString_ptr);
  *(v5 + 120) = sub_100002218(&qword_100010B00, &qword_100007540);
  *(v5 + 96) = v8;
  v9 = sub_100002260(0, &qword_100010B08, NSNumber_ptr);
  *(v5 + 152) = sub_100002218(&unk_100010B10, qword_100007548);
  *(v5 + 128) = v9;
  v10 = sub_100006D60();
  v17 = 0;
  sub_100006D20();

  isa = sub_100006D10().super.isa;

  [v4 setClasses:isa forSelector:"getRemoteContentForLayerContextWithId:style:tag:reply:" argumentIndex:2 ofReply:0];

  [a1 setExportedInterface:v4];
  [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI34PassKitWrapperXPCServiceUIDelegate_slotMachine)];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1000022E0;
  v22 = v12;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100001C70;
  v20 = &unk_10000C778;
  v13 = _Block_copy(&v17);

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_100002300;
  v22 = v14;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100001C70;
  v20 = &unk_10000C7A0;
  v15 = _Block_copy(&v17);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
  [a1 resume];

  return 1;
}

uint64_t sub_100002218(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002260(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000022A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000022E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100002350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassKitWrapperXPCServiceUI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id DynamicPaymentButtonDrawer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DynamicPaymentButtonDrawer.getImageWith(_:tag:forRemote:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100002218(&qword_100010BB0, &qword_1000075E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = sub_100006D00();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a4;
  v13[7] = a5;
  v14 = a2;
  v15 = a1;

  sub_100002F20(0, 0, v11, &unk_1000075F0, v13);
}

uint64_t sub_100002508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100006B20();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v11 = sub_100006B40();
  v7[18] = v11;
  v12 = *(v11 - 8);
  v7[19] = v12;
  v13 = *(v12 + 64) + 15;
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_100002628, 0, 0);
}

uint64_t sub_100002628()
{
  super_class = v0[5].super_class;
  sub_100006BE0();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    receiver = v0[6].receiver;
    v5 = type metadata accessor for DynamicPaymentButtonDrawing();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_tag] = v3;
    *&v6[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_slotStyle] = receiver;
    v0[4].receiver = v6;
    v0[4].super_class = v5;
    v7 = super_class;
    v8 = receiver;
    v0[10].super_class = objc_msgSendSuper2(v0 + 4, "init");
    v9 = swift_task_alloc();
    v0[11].receiver = v9;
    *v9 = v0;
    v9[1] = sub_100002924;

    return DynamicPaymentButtonDrawing.renderImage(tag:style:)(v3, v8);
  }

  else
  {
    v12 = v0[9].super_class;
    v11 = v0[10].receiver;
    v13 = v0[8].super_class;
    v23 = v0[9].receiver;
    v14 = v0[7].super_class;
    v15 = v0[8].receiver;
    v17 = v0[6].super_class;
    v16 = v0[7].receiver;
    sub_100002260(0, &qword_100010D78, OS_dispatch_queue_ptr);
    v22 = sub_100006D40();
    v18 = swift_allocObject();
    *(v18 + 2) = v17;
    *(v18 + 3) = v16;
    *(v18 + 4) = 0;
    v0[3].receiver = sub_1000066A0;
    v0[3].super_class = v18;
    v0[1].receiver = _NSConcreteStackBlock;
    v0[1].super_class = 1107296256;
    v0[2].receiver = sub_100001C70;
    v0[2].super_class = &unk_10000C8E0;
    v19 = _Block_copy(&v0[1]);

    sub_100006B30();
    v0[5].receiver = &_swiftEmptyArrayStorage;
    sub_1000066C4();
    sub_100002218(&qword_100010D88, &qword_1000076D0);
    sub_10000671C();
    sub_100006D70();
    sub_100006D50();
    _Block_release(v19);

    v15[1](v13, v14);
    (*(v12 + 1))(v11, v23);
    v20 = v0[3].super_class;

    v21 = v0->super_class;

    return v21();
  }
}

uint64_t sub_100002924(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100002A24, 0, 0);
}

uint64_t sub_100002A24()
{
  v1 = v0[23];
  v2 = v0[11];

  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[17];
  v17 = v0[19];
  v18 = v0[18];
  v6 = v0[15];
  v16 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  sub_100002260(0, &qword_100010D78, OS_dispatch_queue_ptr);
  v9 = v1;
  v10 = sub_100006D40();
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v3;
  v0[6] = sub_1000066A0;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100001C70;
  v0[5] = &unk_10000C8E0;
  v12 = _Block_copy(v0 + 2);

  sub_100006B30();
  v0[10] = &_swiftEmptyArrayStorage;
  sub_1000066C4();
  sub_100002218(&qword_100010D88, &qword_1000076D0);
  sub_10000671C();
  sub_100006D70();
  sub_100006D50();
  _Block_release(v12);

  (*(v16 + 8))(v5, v6);
  (*(v17 + 8))(v4, v18);
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100002C50(uint64_t a1)
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
  v10[1] = sub_1000069D8;

  return sub_100002508(a1, v4, v5, v6, v7, v9, v8);
}

id DynamicPaymentButtonDrawing.__allocating_init(tag:slotStyle:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_tag] = a1;
  *&v5[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_slotStyle] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100002D8C(void (*a1)(uint64_t, id), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    sub_100002218(&qword_100010D98, &qword_1000076D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000075B0;
    *(inited + 32) = sub_100006C50();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v7;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x8000000100007F50;
    sub_1000067C8(inited);
    swift_setDeallocating();
    sub_1000068F8(inited + 32, &qword_100010DA0, &qword_1000076E0);
    v8 = objc_allocWithZone(NSError);
    v9 = sub_100006C40();
    isa = sub_100006C30().super.isa;

    v5 = [v8 initWithDomain:v9 code:1 userInfo:isa];
  }

  a1(a3, v5);
}

uint64_t sub_100002F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100002218(&qword_100010BB0, &qword_1000075E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100006958(a3, v26 - v10, &qword_100010BB0, &qword_1000075E0);
  v12 = sub_100006D00();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000068F8(v11, &qword_100010BB0, &qword_1000075E0);
  }

  else
  {
    sub_100006CF0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100006CC0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100006C70() + 32;
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

      sub_1000068F8(a3, &qword_100010BB0, &qword_1000075E0);

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

  sub_1000068F8(a3, &qword_100010BB0, &qword_1000075E0);
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

void sub_100003378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100006A00();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id DynamicPaymentButtonDrawer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicPaymentButtonDrawer();
  return objc_msgSendSuper2(&v2, "init");
}

id DynamicPaymentButtonDrawing.init(tag:slotStyle:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_tag] = a1;
  *&v2[OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_slotStyle] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DynamicPaymentButtonDrawing();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t DynamicPaymentButtonDrawing.renderImage(tag:style:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_100006AC0();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = sub_100002218(&qword_100010BC8, &qword_100007600);
  v3[15] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_100006CE0();
  v3[18] = sub_100006CD0();
  v10 = sub_100006CC0();
  v3[19] = v10;
  v3[20] = v9;

  return _swift_task_switch(sub_100003654, v10, v9);
}

uint64_t sub_100003654()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = objc_opt_self();
  *(v0 + 168) = v3;
  [v3 begin];
  [v3 setDisableActions:1];
  *(v0 + 176) = sub_100006BC0();
  *(v0 + 184) = sub_100006BD0();
  if (v2)
  {
    v4 = [*(v0 + 72) displayScale];
  }

  else
  {
    PKUIScreenScale();
  }

  *(v0 + 192) = v4;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_100003754;

  return sub_100004C34();
}

uint64_t sub_100003754(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return _swift_task_switch(sub_10000387C, v5, v4);
}

uint64_t sub_10000387C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  if (v1)
  {
    v3 = *(v0 + 80);
    DynamicPaymentButtonDrawing.passSnapshot(tag:style:)(*(v0 + 64), *(v0 + 72));
    v5 = v4;
    goto LABEL_9;
  }

  v6 = *(v0 + 64);
  result = sub_100006BC0();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 64);
  sub_100006B70();
  if (v9)
  {
    v10 = sub_100006C40();
  }

  else
  {
    v10 = 0;
  }

  PKAnalyticsReportPaymentButtonRequest();

  v5 = 0;
LABEL_9:
  v11 = *(v0 + 192);
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 64);
  v18 = v5;
  sub_100006BA0();
  sub_100006B60();
  sub_100006B50();
  sub_100006B80();
  sub_100006B90();
  sub_100006B10();
  sub_100006AD0();
  v19 = (v15 + *(v16 + 36));
  v20 = *(v0 + 16);
  v21 = *(v0 + 48);
  v19[1] = *(v0 + 32);
  v19[2] = v21;
  *v19 = v20;
  sub_100006958(v15, v14, &qword_100010BC8, &qword_100007600);
  v22 = sub_100002218(&qword_100010BD0, &qword_100007610);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_100006B00();
  sub_100006AF0();
  v25 = sub_100006AE0();
  v46 = v25;
  if (v25)
  {
    v26 = v25;
    v28 = (v0 + 112);
    v27 = *(v0 + 112);
    sub_100006AA0();
    v29 = v26;
    v30 = sub_100006AB0();
    v31 = sub_100006D30();
    if (!os_log_type_enabled(v30, v31))
    {

      goto LABEL_16;
    }

    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = CGImageGetWidth(v29);
    *(v32 + 12) = 2048;
    Height = CGImageGetHeight(v29);

    *(v32 + 14) = Height;
    _os_log_impl(&_mh_execute_header, v30, v31, "Successfully returning CGImage of the button with size: %ld x %ld", v32, 0x16u);
    goto LABEL_14;
  }

  v28 = (v0 + 104);
  v34 = *(v0 + 104);
  sub_100006AA0();
  v30 = sub_100006AB0();
  v35 = sub_100006D30();
  if (os_log_type_enabled(v30, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v30, v35, "Failed to render CGImage of the button", v36, 2u);
LABEL_14:
  }

LABEL_16:

  v37 = *v28;
  v38 = *(v0 + 168);
  v40 = *(v0 + 128);
  v39 = *(v0 + 136);
  v42 = *(v0 + 104);
  v41 = *(v0 + 112);
  v43 = *(v0 + 88);
  v44 = *(v0 + 96);

  (*(v44 + 8))(v37, v43);
  sub_1000068F8(v39, &qword_100010BC8, &qword_100007600);
  [v38 commit];

  v45 = *(v0 + 8);

  return v45(v46);
}

void DynamicPaymentButtonDrawing.passSnapshot(tag:style:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100006AC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedInstance];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = sub_100006BB0();
  sub_100005800(v13, v12);
  v15 = v14;

  if (!v15)
  {
    sub_100006AA0();
    v19 = a1;
    v20 = sub_100006AB0();
    v21 = sub_100006D30();

    if (os_log_type_enabled(v20, v21))
    {
      v49 = v21;
      v22 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v22 = 136315138;
      v23 = sub_100006BB0();
      if (v23)
      {
        v24 = v23;
        v25 = [v23 merchantIdentifier];

        v26 = sub_100006C50();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v50 = v26;
      v51 = v28;
      sub_100002218(&qword_100010BD8, &qword_100007618);
      v42 = sub_100006C60();
      v44 = sub_10000455C(v42, v43, &v52);

      *(v22 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v20, v49, "No valid pass found to render card art for payment request: %s", v22, 0xCu);
      sub_100005F70(v48);
    }

    (*(v7 + 8))(v10, v6);
    v45 = sub_100006BC0();
    if (v45 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v45 <= 0x7FFFFFFF)
    {
      sub_100006B70();
      if (v46)
      {
        v40 = sub_100006C40();
      }

      else
      {
        v40 = 0;
      }

      PKAnalyticsReportPaymentButtonRequest();

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_40;
  }

  v16 = sub_100006C40();
  v17 = [v12 passWithUniqueID:v16];

  if (!v17)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v18 = [v17 paymentPass];

  if (!v18)
  {

    return;
  }

  if (sub_100006BC0())
  {
    sub_100006BF0();
  }

  else
  {
    sub_100006C00();
  }

  sub_100006B80();
  sub_100006B90();
  sub_100006C20();
  [*(v3 + OBJC_IVAR____TtC26PassKitWrapperXPCServiceUI27DynamicPaymentButtonDrawing_slotStyle) displayScale];
  PKSizeRoundToPixelWithScale();
  sub_100006C10();
  PKPassFrontFaceContentSize();
  PKSizeAspectFit();
  v30 = v29;
  v32 = v31;
  if (a2)
  {
    [a2 displayScale];
  }

  else
  {
    PKUIScreenScale();
  }

  v33 = sub_100005FBC(v18, v30, v32);
  if (!v33)
  {
    v38 = sub_100006BC0();
    if (v38 < 0xFFFFFFFF80000000)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v38 > 0x7FFFFFFF)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    sub_100006B70();
    if (v39)
    {
      v40 = sub_100006C40();
    }

    else
    {
      v40 = 0;
    }

    PKAnalyticsReportPaymentButtonRequest();

LABEL_36:
    return;
  }

  v34 = v33;
  v35 = sub_100006BC0();
  if (v35 < 0xFFFFFFFF80000000)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v35 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_100006B70();
  if (v36)
  {
    v37 = sub_100006C40();
  }

  else
  {
    v37 = 0;
  }

  v41 = [v18 paymentPass];
  PKAnalyticsReportPaymentButtonRequest();

  [v34 CGImage];
}

uint64_t sub_1000041FC(uint64_t a1, void *a2)
{
  v3 = sub_100006474((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

id sub_1000042D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000436C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004464;

  return v7(a1);
}

uint64_t sub_100004464()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000455C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004628(v11, 0, 0, 1, a1, a2);
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
    sub_1000063FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005F70(v11);
  return v7;
}

unint64_t sub_100004628(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004734(a5, a6);
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
    result = sub_100006DA0();
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

char *sub_100004734(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004780(a1, a2);
  sub_1000048B0(&off_10000C6F8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004780(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000499C(v5, 0);
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

  result = sub_100006DA0();
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
        v10 = sub_100006C90();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000499C(v10, 0);
        result = sub_100006D80();
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

uint64_t sub_1000048B0(uint64_t result)
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

  result = sub_100004A10(result, v12, 1, v3);
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

void *sub_10000499C(uint64_t a1, uint64_t a2)
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

  sub_100002218(&qword_100010D38, &qword_100007688);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004A10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002218(&qword_100010D38, &qword_100007688);
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

unint64_t sub_100004B04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100006DE0();
  sub_100006C80();
  v6 = sub_100006DF0();

  return sub_100004B7C(a1, a2, v6);
}

unint64_t sub_100004B7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006DD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100004C34()
{
  v1 = sub_100006AC0();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();
  v4 = sub_100006A30();
  v0[22] = v4;
  v5 = *(v4 - 8);
  v0[23] = v5;
  v6 = *(v5 + 64) + 15;
  v0[24] = swift_task_alloc();
  v7 = *(*(sub_100002218(&qword_100010D48, &qword_100007690) - 8) + 64) + 15;
  v0[25] = swift_task_alloc();
  v8 = *(*(sub_100002218(&qword_100010D50, &qword_100007698) - 8) + 64) + 15;
  v0[26] = swift_task_alloc();
  v9 = sub_1000069F0();
  v0[27] = v9;
  v10 = *(v9 - 8);
  v0[28] = v10;
  v11 = *(v10 + 64) + 15;
  v0[29] = swift_task_alloc();
  v12 = sub_100006A50();
  v0[30] = v12;
  v13 = *(v12 - 8);
  v0[31] = v13;
  v14 = *(v13 + 64) + 15;
  v0[32] = swift_task_alloc();
  v15 = sub_100006A80();
  v0[33] = v15;
  v16 = *(v15 - 8);
  v0[34] = v16;
  v17 = *(v16 + 64) + 15;
  v0[35] = swift_task_alloc();
  v18 = *(*(sub_100002218(&qword_100010D58, &qword_1000076A0) - 8) + 64) + 15;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();

  return _swift_task_switch(sub_100004F14, 0, 0);
}

uint64_t sub_100004F14()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v34 = v0[28];
  v8 = v0[26];
  v37 = v0[37];
  v38 = v0[27];
  v9 = v0[24];
  v32 = v0[25];
  v39 = v0[36];
  v40 = v0[23];
  v36 = v0[22];
  v35 = [objc_allocWithZone(PKPaymentTransactionRequest) init];
  v0[38] = v35;
  (*(v5 + 104))(v4, enum case for Calendar.Identifier.gregorian(_:), v6);
  sub_100006A60();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 56))(v8, 1, 1, v3);
  v10 = sub_100006A90();
  (*(*(v10 - 8) + 56))(v32, 1, 1, v10);
  LOBYTE(v31) = 1;
  LOBYTE(v30) = 1;
  LOBYTE(v29) = 1;
  LOBYTE(v28) = 1;
  LOBYTE(v27) = 1;
  LOBYTE(v26) = 1;
  LOBYTE(v25) = 1;
  LOBYTE(v24) = 1;
  LOBYTE(v23) = 1;
  LOBYTE(v22) = 1;
  LOBYTE(v21) = 1;
  sub_1000069E0();
  sub_100006A20();
  sub_100006A70();
  v33 = *(v40 + 8);
  v33(v9, v36);
  (*(v34 + 8))(v7, v38);
  (*(v2 + 8))(v1, v3);
  sub_100002218(&unk_100010D60, &qword_1000076A8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000075C0;
  *(v11 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:{0, 0, v21, 0, v22, 0, v23, 0, v24, 0, v25, 0, v26, 0, v27, 0, v28, 0, v29, 0, v30, 0, v31}];
  sub_100002260(0, &qword_100010B08, NSNumber_ptr);
  isa = sub_100006CA0().super.isa;

  [v35 setTransactionTypes:isa];

  sub_100006958(v37, v39, &qword_100010D58, &qword_1000076A0);
  v13 = 0;
  if ((*(v40 + 48))(v39, 1, v36) != 1)
  {
    v14 = v0[36];
    v15 = v0[22];
    v13 = sub_100006A10().super.isa;
    v33(v14, v15);
  }

  [v35 setStartDate:v13];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000075D0;
  *(v16 + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:2];
  *(v16 + 40) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:3];
  v17 = sub_100006CA0().super.isa;

  [v35 setTransactionSources:v17];

  [v35 setHasBackingData:0];
  [v35 setOriginatedByDevice:1];
  v18 = [objc_allocWithZone(PKPaymentService) init];
  v0[39] = v18;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100005450;
  v19 = swift_continuation_init();
  v0[17] = sub_100002218(&qword_100010D70, &qword_1000076B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000041FC;
  v0[13] = &unk_10000C840;
  v0[14] = v19;
  [v18 transactionCountForRequest:v35 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100005450()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100005530, 0, 0);
}

uint64_t sub_100005530()
{
  v38 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 168);

    v3 = [v1 integerValue];
    v36 = v3 < 1;
    sub_100006AA0();
    v4 = sub_100006AB0();
    v5 = sub_100006D30();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 312);
    v35 = *(v0 + 304);
    v8 = *(v0 + 296);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 152);
    if (v6)
    {
      v34 = *(v0 + 152);
      v12 = swift_slowAlloc();
      v33 = v8;
      v13 = swift_slowAlloc();
      v37 = v13;
      *v12 = 136315138;
      if (v3 >= 1)
      {
        v14 = 20302;
      }

      else
      {
        v14 = 5457241;
      }

      if (v3 >= 1)
      {
        v15 = 0xE200000000000000;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v32 = v9;
      v16 = sub_10000455C(v14, v15, &v37);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Inactive Apple Pay User: %s", v12, 0xCu);
      sub_100005F70(v13);

      (*(v10 + 8))(v32, v34);
      v17 = v33;
    }

    else
    {

      (*(v10 + 8))(v9, v11);
      v17 = v8;
    }

    sub_1000068F8(v17, &qword_100010D58, &qword_1000076A0);
    v20 = v36;
  }

  else
  {
    v18 = *(v0 + 304);
    v19 = *(v0 + 312);
    sub_1000068F8(*(v0 + 296), &qword_100010D58, &qword_1000076A0);

    v20 = 0;
  }

  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v23 = *(v0 + 280);
  v24 = *(v0 + 256);
  v25 = *(v0 + 232);
  v27 = *(v0 + 200);
  v26 = *(v0 + 208);
  v28 = *(v0 + 192);
  v29 = *(v0 + 168);

  v30 = *(v0 + 8);

  return v30(v20);
}

void sub_100005800(void *a1, void *a2)
{
  v4 = sub_100006AC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v66 - v11;
  __chkstk_darwin(v10);
  v14 = &v66 - v13;
  if (!a1)
  {
    v44 = [a2 _defaultPaymentPassWithoutPaymentRequest];
    if (!v44)
    {
      return;
    }

    v45 = v44;
    v46 = [v44 devicePrimaryPaymentApplication];
    if (v46)
    {
      v47 = v46;
      v48 = [v46 supportsInAppPayment];

      if (!v48)
      {

        return;
      }

      sub_100006AA0();
      v22 = v45;
      v49 = sub_100006AB0();
      v50 = sub_100006D30();
      if (os_log_type_enabled(v49, v50))
      {
        v67 = v5;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v69 = v52;
        *v51 = 136315138;
        v53 = [v22 uniqueID];

        if (!v53)
        {
LABEL_53:
          __break(1u);
          return;
        }

        v54 = sub_100006C50();
        v56 = v55;

        v57 = sub_10000455C(v54, v56, &v69);

        *(v51 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v49, v50, "Default pass valid to display on dynamic button: %s", v51, 0xCu);
        sub_100005F70(v52);

        (v67)[1](v9, v4);
      }

      else
      {

        (*(v5 + 8))(v9, v4);
      }

      v64 = [v22 uniqueID];
      if (v64)
      {
        v65 = v64;
        sub_100006C50();

        return;
      }

      goto LABEL_42;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v15 = a1;
  v16 = [a2 _defaultPaymentPassForPaymentRequest:v15];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v18 = v16;
  v19 = [v18 devicePrimaryPaymentApplication];
  if (!v19)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = v19;
  v21 = [v19 supportsInAppPayment];

  if (v21)
  {
    v68 = v15;
    sub_100006AA0();
    v22 = v18;
    v23 = sub_100006AB0();
    v24 = sub_100006D30();
    v25 = &PassKitWrapperXPCServiceUIDelegate;
    if (!os_log_type_enabled(v23, v24))
    {

      (*(v5 + 8))(v14, v4);
      goto LABEL_31;
    }

    v67 = v5;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v69 = v27;
    *v26 = 136315138;
    v28 = [v22 uniqueID];

    if (v28)
    {
      v29 = sub_100006C50();
      v31 = v30;

      v32 = sub_10000455C(v29, v31, &v69);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "Default pass valid to display on dynamic button: %s", v26, 0xCu);
      sub_100005F70(v27);

      (v67)[1](v14, v4);
      v25 = &PassKitWrapperXPCServiceUIDelegate;
LABEL_31:
      v61 = [v22 v25[167].count];
      if (v61)
      {
        v62 = v61;
        sub_100006C50();

        return;
      }

LABEL_42:
      return;
    }

    goto LABEL_52;
  }

LABEL_8:
  v33 = [a2 _sortedPaymentPassesForPaymentRequest:v15];
  if (!v33)
  {
    sub_100006AA0();
    v58 = sub_100006AB0();
    v59 = sub_100006D30();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "No passes valid for dynamic button", v60, 2u);
    }

    else
    {
    }

    (*(v5 + 8))(v12, v4);
    return;
  }

  v34 = v33;
  v67 = v17;
  sub_100002260(0, &qword_100010D40, PKPaymentPass_ptr);
  v35 = sub_100006CB0();

  v68 = v15;
  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_11;
    }

LABEL_47:

    return;
  }

LABEL_46:
  v36 = sub_100006DB0();
  if (!v36)
  {
    goto LABEL_47;
  }

LABEL_11:
  v37 = 0;
  while (1)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v38 = sub_100006D90();
    }

    else
    {
      if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v38 = *(v35 + 8 * v37 + 32);
    }

    v39 = v38;
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v41 = [v38 devicePrimaryPaymentApplication];
    if (!v41)
    {
      __break(1u);
      goto LABEL_50;
    }

    v42 = v41;
    v43 = [v41 supportsInAppPayment];

    if (v43)
    {
      break;
    }

    ++v37;
    if (v40 == v36)
    {
      goto LABEL_47;
    }
  }

  v63 = [v39 uniqueID];

  if (v63)
  {
    sub_100006C50();
  }
}

uint64_t sub_100005F70(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_100005FBC(uint64_t a1, double a2, double a3)
{
  v6 = sub_100006AC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(PKPassView) initWithPass:a1 content:4 suppressedContent:2039];
  v12 = v11;
  if (v11 && (v13 = [v11 snapshotOfFrontFaceWithRequestedSize:{a2, a3}]) != 0)
  {
    v14 = v13;

    return v14;
  }

  else
  {
    sub_100006AA0();
    v16 = sub_100006AB0();
    v17 = sub_100006D30();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Did not get snapshot of front face.", v18, 2u);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }
}

uint64_t sub_1000061A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000061E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100006234(uint64_t a1)
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
  v10[1] = sub_100006308;

  return sub_100002508(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100006308()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000063FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100006474(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000064B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000064F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000069D8;

  return sub_10000436C(a1, v5);
}

uint64_t sub_1000065A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006308;

  return sub_10000436C(a1, v5);
}

uint64_t sub_100006660()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000066AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000066C4()
{
  result = qword_100010D80;
  if (!qword_100010D80)
  {
    sub_100006B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010D80);
  }

  return result;
}

unint64_t sub_10000671C()
{
  result = qword_100010D90;
  if (!qword_100010D90)
  {
    sub_100006780(&qword_100010D88, &qword_1000076D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010D90);
  }

  return result;
}

uint64_t sub_100006780(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000067C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002218(&qword_100010DA8, &qword_1000076E8);
    v3 = sub_100006DC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006958(v4, &v13, &qword_100010DA0, &qword_1000076E0);
      v5 = v13;
      v6 = v14;
      result = sub_100004B04(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000069C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1000068F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002218(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002218(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1000069C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}