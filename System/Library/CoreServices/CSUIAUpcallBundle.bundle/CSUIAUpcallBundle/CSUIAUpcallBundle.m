id CSUIGetIconChangeRemoteAlertInterface()
{
  if (qword_19970 != -1)
  {
    sub_D778();
  }

  v1 = qword_19978;

  return v1;
}

void sub_1494(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIIconChangeRemoteAlert];
  v2 = qword_19978;
  qword_19978 = v1;

  v3 = qword_19978;
  v4 = objc_opt_class();

  [v3 setClass:v4 forSelector:"waitForUserAcknowledgementWithCompletion:" argumentIndex:0 ofReply:1];
}

id CSUIGetRemoteAlertRootInterface()
{
  if (qword_19980 != -1)
  {
    sub_D78C();
  }

  v1 = qword_19988;

  return v1;
}

void sub_1554(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIRemoteAlertRoot];
  v2 = qword_19988;
  qword_19988 = v1;

  [qword_19988 setClass:objc_opt_class() forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:0 ofReply:0];
  v3 = qword_19988;
  v4 = CSUIGetIconChangeRemoteAlertInterface();
  [v3 setInterface:v4 forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:0 ofReply:1];

  v5 = qword_19988;
  v6 = objc_opt_class();

  [v5 setClass:v6 forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:1 ofReply:1];
}

id CSUIGetRemoteAlertInvokerInterface()
{
  if (qword_19990 != -1)
  {
    sub_D7A0();
  }

  v1 = qword_19998;

  return v1;
}

void sub_1674(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIRemoteAlertInvoker];
  v2 = qword_19998;
  qword_19998 = v1;

  v3 = qword_19998;
  v4 = CSUIGetRemoteAlertRootInterface();
  [v3 setInterface:v4 forSelector:"checkinRemoteAlertRoot:" argumentIndex:0 ofReply:0];
}

void sub_1854(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = upcallBundleLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "CSUIAUpcallBundle: result for icon change alert for %@: %d %@", &v8, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1950()
{
  v1 = v0 + OBJC_IVAR____TtC17CSUIAUpcallBundle23IconChangeAlertObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_19A0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17CSUIAUpcallBundle23IconChangeAlertObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A0C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17CSUIAUpcallBundle23IconChangeAlertObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1AAC;
}

void sub_1AAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1B34()
{
  v1 = (*(*(sub_1C70(&qword_19388, &qword_ECC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin();
  v4 = &v11 - v3;
  result = (*(&stru_20.maxprot + (swift_isaMask & *v0)))(v2);
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_D8E4();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;
    sub_1F6C(0, 0, v4, &unk_ECD0, v10);
  }

  return result;
}

uint64_t sub_1C70(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = *(a5 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DDC;

  return v12(ObjectType, a5);
}

uint64_t sub_1DDC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1ED4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4964;

  return sub_1CB8(v4, v5, v6, v2, v3);
}

uint64_t sub_1F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1C70(&qword_19388, &qword_ECC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_46E8(a3, v26 - v10, &qword_19388, &qword_ECC0);
  v12 = sub_D8E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_4750(v11, &qword_19388, &qword_ECC0);
  }

  else
  {
    sub_D8D4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_D894();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_D864() + 32;
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

      sub_4750(a3, &qword_19388, &qword_ECC0);

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

  sub_4750(a3, &qword_19388, &qword_ECC0);
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

uint64_t sub_2400(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_1C70(&qword_19388, &qword_ECC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin();
  v7 = &v14 - v6;
  result = (*(&stru_20.maxprot + (swift_isaMask & *v2)))(v5);
  if (result)
  {
    v10 = result;
    v11 = v9;
    v12 = sub_D8E4();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v11;
    v13[6] = a2;
    swift_errorRetain();
    sub_1F6C(0, 0, v7, &unk_ECE0, v13);
  }

  return result;
}

uint64_t sub_2558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return _swift_task_switch(sub_257C, 0, 0);
}

uint64_t sub_257C()
{
  if (v0[14])
  {
    v1 = v0[14];
  }

  else
  {
    sub_1C70(&qword_19528, &qword_EDA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_ECA0;
    *(inited + 32) = sub_D854();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v3;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x800000000000F600;
    v4 = NSPOSIXErrorDomain;
    sub_41C8(inited);
    swift_setDeallocating();
    sub_4750(inited + 32, &qword_19530, &qword_EDB0);
    v5 = objc_allocWithZone(NSError);
    isa = sub_D834().super.isa;

    v1 = [v5 initWithDomain:v4 code:54 userInfo:isa];
  }

  v0[15] = v1;
  v7 = v0[12];
  v16 = v0[13];
  ObjectType = swift_getObjectType();
  v9 = *(v16 + 16);
  swift_errorRetain();
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_27E0;
  v13 = v0[12];
  v12 = v0[13];

  return v15(v1, ObjectType, v12);
}

uint64_t sub_27E0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_28F0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_4964;

  return sub_2558(v5, v6, v7, v2, v3, v4);
}

id IconChangeAlertManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2B8C()
{
  *&v0[OBJC_IVAR____TtC17CSUIAUpcallBundle23IconChangeAlertObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconChangeAlertObserver();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_2C54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconChangeAlertObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_2CC0()
{
  v0 = objc_allocWithZone(type metadata accessor for IconChangeAlertObserver());

  return [v0 init];
}

void *sub_2D04()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_2D48(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*sub_2E8C(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = (*(&stru_20.maxprot + (swift_isaMask & *v3)))();
  a1[1] = v4;
  return sub_2F08;
}

uint64_t sub_2F08(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = *(&stru_20.nsects + (swift_isaMask & **(a1 + 16)));
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  v5 = *a1;
  v6 = swift_unknownObjectRetain();
  v4(v6, v2);

  return swift_unknownObjectRelease();
}

void sub_2FBC()
{
  v1 = (*(*v0 + 96))();
  [v1 invalidate];
}

id sub_3020(void *a1, void *a2)
{
  v3 = v2;
  v38 = a1;
  v5 = sub_D7D4();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D844();
  v10 = [objc_opt_self() identityForApplicationJobLabel:v9];

  v11 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v12 = v10;
  v13 = sub_D844();
  v14 = [v11 initWithSceneProvidingProcess:v12 configurationIdentifier:v13];
  v39 = v12;

  v15 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  sub_1C70(&qword_19390, &qword_ECE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_ECA0;
  strcpy(v42, "identityString");
  HIBYTE(v42[1]) = -18;
  sub_D9C4();
  v17 = [a2 identityString];
  v18 = sub_D854();
  v20 = v19;

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v18;
  *(inited + 80) = v20;
  sub_42F8(inited);
  swift_setDeallocating();
  sub_4750(inited + 32, &qword_19398, &qword_ECF0);
  isa = sub_D834().super.isa;

  [v15 setUserInfo:isa];

  [v15 setXpcEndpoint:v38];
  v22 = objc_opt_self();
  v38 = v14;
  v23 = [v22 newHandleWithDefinition:v14 configurationContext:v15];
  v24 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v23 registerObserver:v3[2]];
  [v23 activateWithContext:v24];
  v25 = sub_C86C();
  (*(v40 + 16))(v8, v25, v41);

  v37 = v8;
  v26 = sub_D7C4();
  v27 = sub_D924();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42[0] = v29;
    *v28 = 136315138;
    v30 = *v3;
    v31 = sub_DA74();
    v33 = sub_39E4(v31, v32, v42);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_0, v26, v27, "%s Activated remote alert", v28, 0xCu);
    sub_4434(v29);

    v34 = v38;
  }

  else
  {

    v34 = v39;
  }

  (*(v40 + 8))(v37, v41);
  return v23;
}

uint64_t sub_34BC()
{
  v1 = (*(*v0 + 152))();
  v2 = *(*v0 + 104);

  return v2(v1);
}

uint64_t sub_354C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_358C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for IconChangeAlertObserver()) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_35D8()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for IconChangeAlertObserver()) init];
  *(v0 + 24) = 0;
  return v0;
}

void (*sub_3690(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(**v1 + 136))();
  return sub_3724;
}

void sub_3724(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_37F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_38EC;

  return v7(a1);
}

uint64_t sub_38EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_39E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3AB0(v11, 0, 0, 1, a1, a2);
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
    sub_45C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4434(v11);
  return v7;
}

unint64_t sub_3AB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3BBC(a5, a6);
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
    result = sub_DA04();
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

char *sub_3BBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_3C08(a1, a2);
  sub_3D38(&off_146F8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3C08(uint64_t a1, unint64_t a2)
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

  v6 = sub_3E24(v5, 0);
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

  result = sub_DA04();
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
        v10 = sub_D884();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3E24(v10, 0);
        result = sub_D9D4();
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

uint64_t sub_3D38(uint64_t result)
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

  result = sub_3E98(result, v12, 1, v3);
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

void *sub_3E24(uint64_t a1, uint64_t a2)
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

  sub_1C70(&qword_19930, &qword_ED98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3E98(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C70(&qword_19930, &qword_ED98);
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

unint64_t sub_3F8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_DA54();
  sub_D874();
  v6 = sub_DA64();

  return sub_4048(a1, a2, v6);
}

unint64_t sub_4004(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D9A4(*(v2 + 40));

  return sub_4100(a1, v4);
}

unint64_t sub_4048(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_DA34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_4100(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4638(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_D9B4();
      sub_4694(v8);
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

unint64_t sub_41C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C70(&qword_19538, &qword_EDB8);
    v3 = sub_DA24();
    v4 = a1 + 32;

    while (1)
    {
      sub_46E8(v4, &v13, &qword_19530, &qword_EDB0);
      v5 = v13;
      v6 = v14;
      result = sub_3F8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_4628(&v15, (v3[7] + 32 * result));
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

unint64_t sub_42F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C70(&qword_19520, &qword_EDA0);
    v3 = sub_DA24();
    v4 = a1 + 32;

    while (1)
    {
      sub_46E8(v4, v13, &qword_19398, &qword_ECF0);
      result = sub_4004(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_4628(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_4434(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_44A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_44F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4530()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DDC;

  return sub_1CB8(v4, v5, v6, v2, v3);
}

uint64_t sub_45C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_4628(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_46E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_4750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_47B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_47E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4964;

  return sub_37F4(a1, v5);
}

uint64_t sub_48A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DDC;

  return sub_37F4(a1, v5);
}

uint64_t sub_4968()
{
  v0 = sub_D944();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_D934() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_D804() - 8) + 64);
  __chkstk_darwin();
  sub_C574();
  sub_D7F4();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_C5C0(&qword_19940, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1C70(&qword_19948, qword_F028);
  sub_C608();
  sub_D994();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_D954();
  qword_199A8 = result;
  return result;
}

uint64_t sub_4BE8()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_4C48(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_4CE0;
}

void sub_4CE0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *sub_4D60()
{
  v1 = OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_serviceConnection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_4DAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_serviceConnection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_4EE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_4F88(uint64_t a1)
{
  v37[1] = a1;
  v2 = sub_D7D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v37 - v8;
  v10 = sub_1C70(&qword_19388, &qword_ECC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v37 - v12;
  v14 = sub_D814();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_199A0 != -1)
  {
    swift_once();
  }

  v19 = qword_199A8;
  *v18 = qword_199A8;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = sub_D824();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    if ((*(&stru_68.offset + (swift_isaMask & *v1)))(result))
    {
      swift_unknownObjectRelease();
      v22 = sub_C86C();
      (*(v3 + 16))(v7, v22, v2);
      v23 = sub_D7C4();
      v24 = sub_D914();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "service tried to checkin twice", v25, 2u);
      }

      return (*(v3 + 8))(v7, v2);
    }

    else
    {
      v26 = (*&stru_68.sectname[swift_isaMask & *v1])();
      if (v26)
      {
        v27 = v26;
        v28 = *(&stru_68.reloff + (swift_isaMask & *v1));
        v29 = swift_unknownObjectRetain();
        v28(v29);
        v30 = sub_D8E4();
        (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
        v31 = swift_allocObject();
        v31[2] = 0;
        v31[3] = 0;
        v31[4] = v27;
        v31[5] = v1;
        v32 = v1;
        sub_1F6C(0, 0, v13, &unk_EE60, v31);
      }

      else
      {
        v33 = sub_C86C();
        (*(v3 + 16))(v9, v33, v2);
        v34 = sub_D7C4();
        v35 = sub_D914();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_0, v34, v35, "No delegate set when remote alert checked in", v36, 2u);
        }

        return (*(v3 + 8))(v9, v2);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_5464, 0, 0);
}

uint64_t sub_5464()
{
  v1 = (*(&stru_68.offset + (swift_isaMask & **(v0 + 24))))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    v4 = *v2 + 256;
    *(v0 + 40) = *v4;
    *(v0 + 48) = v4 & 0xFFFFFFFFFFFFLL | 0xF660000000000000;
    v1 = sub_552C;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_552C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  (*(v0 + 40))(*(v0 + 32));
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_5608()
{
  v1 = (*&stru_68.segname[(swift_isaMask & *v0) + 8])();
  [v1 invalidate];

  v2 = *&stru_68.segname[(swift_isaMask & *v0) + 16];

  return v2(0);
}

id sub_56B0()
{
  swift_weakInit();
  *&v0[OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_serviceConnection] = 0;
  *&v0[OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_remoteAlertRoot] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconChangeAlertOperationXPCInvokerProxy();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_57F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IconChangeAlertiOSPlatformExpert();
  result = sub_358C();
  *a1 = result;
  return result;
}

uint64_t sub_582C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_platformExpert;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_5884(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_platformExpert;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

id sub_593C()
{
  v0 = objc_allocWithZone(type metadata accessor for IconChangeAlertOperationXPCInvokerProxy());

  return [v0 init];
}

void *sub_5980()
{
  v1 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_listener;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_59CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_listener;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_5A90(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_5AE0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_5B94()
{
  type metadata accessor for IconChangeAlertOperation.Status(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_5BD8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_status;
  swift_beginAccess();
  return sub_B8A0(v1 + v3, a1);
}

uint64_t sub_5C30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_status;
  swift_beginAccess();
  sub_B904(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_5CF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_5DB4;

  return (sub_B968)(a1);
}

uint64_t sub_5DB4(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_5EC8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_C74C;

  return (sub_B968)(a1);
}

uint64_t sub_5F78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy;
  v3 = *(v0 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy);
  v4 = *&stru_B8.segname[(swift_isaMask & *v3) - 8];
  v5 = v3;
  v4();

  v6 = *(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_platformExpert);

  v7 = *(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_remoteAlertRoot);
  swift_unknownObjectRelease();
  sub_BBA4(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_status);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_6050()
{
  sub_5F78();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_607C()
{
  (*(*v0 + 136))(&v2);
  type metadata accessor for IconChangeAlertiOSPlatformExpert();
  sub_376C();
}

uint64_t sub_6114(uint64_t a1)
{
  v2 = v1;
  v90 = a1;
  v3 = sub_D7D4();
  v93 = *(v3 - 8);
  v4 = *(v93 + 64);
  v5 = __chkstk_darwin(v3);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v85 = &v83 - v8;
  __chkstk_darwin(v7);
  v94 = &v83 - v9;
  v10 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v89 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = &v83 - v15;
  __chkstk_darwin(v14);
  v18 = &v83 - v17;
  v19 = sub_1C70(&qword_195C0, &qword_EE80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v88 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v86 = &v83 - v25;
  __chkstk_darwin(v24);
  v27 = &v83 - v26;
  v28 = sub_1C70(&qword_195C8, &qword_EE88);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v95 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v96 = &v83 - v32;
  v97 = v20;
  v91 = *(v20 + 56);
  v92 = v20 + 56;
  v33 = v91();
  v34 = *(*v2 + 208);
  v34(v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v87 = v10;
    v86 = *(v97 + 32);
    (v86)(v27, v18, v19);
    v35 = sub_C86C();
    v36 = v93;
    (*(v93 + 16))(v94, v35, v3);

    v37 = sub_D7C4();
    v38 = sub_D904();

    v39 = v19;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v84 = v27;
      v85 = v3;
      v42 = v41;
      v98 = v41;
      *v40 = 136315138;
      v43 = *v2;
      v44 = sub_DA74();
      v46 = v2;
      v47 = v39;
      v48 = sub_39E4(v44, v45, &v98);

      *(v40 + 4) = v48;
      v39 = v47;
      v2 = v46;
      _os_log_impl(&dword_0, v37, v38, "%s alert invalidated while waiting for result", v40, 0xCu);
      sub_4434(v42);
      v27 = v84;

      (*(v36 + 8))(v94, v85);
    }

    else
    {

      (*(v36 + 8))(v94, v3);
    }

    v62 = v96;
    sub_4750(v96, &qword_195C8, &qword_EE88);
    v63 = v95;
    (v86)(v62, v27, v39);
    (v91)(v62, 0, 1, v39);
  }

  else
  {
    v49 = v93;
    v94 = v19;
    v50 = sub_BBA4(v18);
    v34(v50);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_BBA4(v16);
      v51 = sub_C86C();
      v52 = v87;
      (*(v49 + 16))(v87, v51, v3);

      v53 = sub_D7C4();
      v54 = sub_D8F4();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v85 = v3;
        v56 = v55;
        v57 = swift_slowAlloc();
        v98 = v57;
        *v56 = 136315138;
        v58 = *v2;
        v59 = sub_DA74();
        v61 = sub_39E4(v59, v60, &v98);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_0, v53, v54, "%s alert invalidated while not waiting for result or connection", v56, 0xCu);
        sub_4434(v57);

        (*(v49 + 8))(v52, v85);
      }

      else
      {

        (*(v49 + 8))(v52, v3);
      }

      v39 = v94;
      v63 = v95;
      v62 = v96;
    }

    else
    {
      v87 = v10;
      v39 = v94;
      v84 = *(v97 + 32);
      (v84)(v86, v16, v94);
      v64 = sub_C86C();
      v65 = v85;
      (*(v49 + 16))(v85, v64, v3);

      v66 = sub_D7C4();
      v67 = sub_D904();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v98 = v69;
        *v68 = 136315138;
        v70 = *v2;
        v71 = sub_DA74();
        v72 = v3;
        v74 = sub_39E4(v71, v73, &v98);

        *(v68 + 4) = v74;
        _os_log_impl(&dword_0, v66, v67, "%s alert invalidated while waiting for connection", v68, 0xCu);
        sub_4434(v69);
        v39 = v94;

        (*(v49 + 8))(v85, v72);
      }

      else
      {

        (*(v49 + 8))(v65, v3);
      }

      v75 = v96;
      sub_4750(v96, &qword_195C8, &qword_EE88);
      v63 = v95;
      (v84)(v75, v86, v39);
      (v91)(v75, 0, 1, v39);
      v62 = v75;
    }
  }

  sub_46E8(v62, v63, &qword_195C8, &qword_EE88);
  if ((*(v97 + 48))(v63, 1, v39) == 1)
  {
    sub_4750(v62, &qword_195C8, &qword_EE88);
    v76 = v63;
  }

  else
  {
    v77 = v97;
    v78 = v88;
    (*(v97 + 32))(v88, v63, v39);
    v79 = v89;
    v80 = v90;
    *v89 = v90;
    swift_storeEnumTagMultiPayload();
    v81 = *(*v2 + 216);
    swift_errorRetain();
    v81(v79);
    v98 = v80;
    swift_errorRetain();
    sub_D8A4();
    (*(v77 + 8))(v78, v39);
    v76 = v62;
  }

  return sub_4750(v76, &qword_195C8, &qword_EE88);
}

uint64_t sub_6B24(uint64_t a1)
{
  v2 = v1;
  v38[1] = a1;
  v3 = sub_D7D4();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v38 - v8;
  v10 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C70(&qword_195C0, &qword_EE80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v38 - v18;
  (*(*v1 + 208))(v17);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_BBA4(v13);
    v20 = sub_C86C();
    v21 = v39;
    (*(v39 + 16))(v7, v20, v3);

    v22 = sub_D7C4();
    v23 = sub_D914();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      v26 = *v2;
      v27 = sub_DA74();
      v29 = sub_39E4(v27, v28, &v40);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v22, v23, "%s Somehow got service connection when we weren't waiting for it?", v24, 0xCu);
      sub_4434(v25);
    }

    return (*(v21 + 8))(v7, v3);
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    v31 = sub_C86C();
    v32 = v39;
    (*(v39 + 16))(v9, v31, v3);
    v33 = sub_D7C4();
    v34 = sub_D924();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "remote alert checked in", v35, 2u);
    }

    (*(v32 + 8))(v9, v3);
    v36 = *(*v2 + 192);
    v37 = swift_unknownObjectRetain();
    v36(v37);
    sub_D8B4();
    return (*(v15 + 8))(v19, v14);
  }
}

id sub_6F7C()
{
  v1 = [objc_opt_self() anonymousListener];
  v2 = (*(*v0 + 168))(v1);
  v3 = *(*v0 + 160);
  result = (v3)(v2);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result setDelegate:*(v0 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy)];

  result = v3();
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  if (qword_199A0 != -1)
  {
    swift_once();
  }

  [v6 _setQueue:qword_199A8];

  result = v3();
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = result;
  [result resume];

  result = v3();
  if (result)
  {
    v8 = result;
    v9 = [result endpoint];

    return v9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_70F4()
{
  v1[2] = v0;
  v2 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_7188, v0, 0);
}

uint64_t sub_7188()
{
  v1 = *(v0 + 16);
  sub_C5C0(&qword_195D0, type metadata accessor for IconChangeAlertOperation);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_72A0;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_72A0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_746C;
  }

  else
  {
    v6 = sub_73CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_73CC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  swift_storeEnumTagMultiPayload();
  (*(*v3 + 216))(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_746C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_74D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_1C70(&qword_195C0, &qword_EE80);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 216))(v7);
}

uint64_t sub_75FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_761C, 0, 0);
}

uint64_t sub_761C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_770C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_770C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_C770;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_C754;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a3;
  v4 = sub_1C70(&qword_195C0, &qword_EE80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v29 = &OBJC_PROTOCOL___NSXPCProxyCreating;
  v9 = swift_dynamicCastObjCProtocolUnconditional();
  v19 = *(v5 + 16);
  v19(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v18 = *(v5 + 32);
  v18(v11 + v10, v8, v4);
  v27 = sub_C76C;
  v28 = v11;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_7B4C;
  v26 = &unk_149E8;
  v12 = _Block_copy(&aBlock);

  v13 = [v9 remoteObjectProxyWithErrorHandler:v12];
  _Block_release(v12);
  sub_D984();
  swift_unknownObjectRelease();
  sub_1C70(&qword_19920, &unk_F000);
  swift_dynamicCast();
  v14 = v22;
  v19(v8, v20, v4);
  v15 = swift_allocObject();
  v18(v15 + v10, v8, v4);
  v27 = sub_C2B8;
  v28 = v15;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_7FA4;
  v26 = &unk_14A38;
  v16 = _Block_copy(&aBlock);

  [v14 presentIconChangeRemoteAlertForIdentity:v21 completion:v16];
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

void sub_7B4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_7BB4(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = sub_1C70(&qword_195C0, &qword_EE80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  if (a1)
  {
    v34 = &OBJC_PROTOCOL___NSXPCProxyCreating;
    v12 = swift_dynamicCastObjCProtocolUnconditional();
    v26 = *(v7 + 16);
    v26(v11, a3, v6);
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v13 = v22;
    v14 = swift_allocObject();
    v23 = a3;
    v15 = v14;
    v25 = *(v7 + 32);
    v25(v14 + v13, v11, v6);
    v32 = sub_C344;
    v33 = v15;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v24 = &v30;
    v30 = sub_7B4C;
    v31 = &unk_14A88;
    v16 = _Block_copy(&aBlock);
    swift_unknownObjectRetain_n();

    v17 = [v12 remoteObjectProxyWithErrorHandler:v16];
    swift_unknownObjectRelease();
    _Block_release(v16);
    sub_D984();
    swift_unknownObjectRelease();
    sub_1C70(&qword_19928, qword_F010);
    swift_dynamicCast();
    v18 = v27;
    v26(v11, v23, v6);
    v19 = v22;
    v20 = swift_allocObject();
    v25(v20 + v19, v11, v6);
    v32 = sub_C488;
    v33 = v20;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_7F38;
    v31 = &unk_14AD8;
    v21 = _Block_copy(&aBlock);

    [v18 waitForUserAcknowledgementWithCompletion:v21];
    swift_unknownObjectRelease();
    _Block_release(v21);
    return swift_unknownObjectRelease();
  }

  else if (a2)
  {
    aBlock = a2;
    swift_errorRetain();
    return sub_D8A4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_7F38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_7FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_8024(uint64_t a1)
{
  v2 = v1;
  v51 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v4 = *(*(v51 - 8) + 64);
  v5 = __chkstk_darwin(v51);
  v49 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v50 = sub_1C70(&qword_195C0, &qword_EE80);
  v48 = *(v50 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v43 - v10;
  v11 = sub_D7D4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_C86C();
  v45 = v12[2];
  v46 = v19;
  v45(v18);
  v20 = sub_D7C4();
  v21 = sub_D924();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = v12;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "handle present and wait error", v22, 2u);
    v12 = v44;
  }

  v23 = v12[1];
  v24 = v23(v18, v11);
  (*(*v2 + 208))(v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v47;
    v25 = v48;
    v27 = v50;
    (*(v48 + 32))(v47, v8, v50);
    v28 = v49;
    *v49 = a1;
    swift_storeEnumTagMultiPayload();
    v29 = *(*v2 + 216);
    swift_errorRetain();
    v29(v28);
    v52 = a1;
    swift_errorRetain();
    sub_D8A4();
    return (*(v25 + 8))(v26, v27);
  }

  else
  {
    sub_BBA4(v8);
    (v45)(v16, v46, v11);

    v31 = sub_D7C4();
    v32 = sub_D924();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52 = v34;
      *v33 = 136315138;
      v35 = *v2;
      v36 = sub_DA74();
      v38 = v16;
      v39 = v11;
      v40 = sub_39E4(v36, v37, &v52);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_0, v31, v32, "%s Got alert error while not waiting for it, serivce may have failed after dismissal", v33, 0xCu);
      sub_4434(v34);

      v41 = v38;
      v42 = v39;
    }

    else
    {

      v41 = v16;
      v42 = v11;
    }

    return v23(v41, v42);
  }
}

uint64_t sub_8504()
{
  v1 = v0;
  v2 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  v8 = sub_1C70(&qword_195C0, &qword_EE80);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = sub_D7D4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v19 = sub_C86C();
  v42 = v12[2];
  v43 = v19;
  v42(v18);
  v20 = sub_D7C4();
  v21 = sub_D924();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = v12;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "handle present and wait success", v22, 2u);
    v12 = v41;
  }

  v23 = v12[1];
  v24 = v23(v18, v11);
  (*(*v1 + 208))(v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v44;
    v25 = v45;
    v27 = v46;
    (*(v45 + 32))(v44, v7, v46);
    v28 = v47;
    swift_storeEnumTagMultiPayload();
    (*(*v1 + 216))(v28);
    sub_D8B4();
    return (*(v25 + 8))(v26, v27);
  }

  else
  {
    sub_BBA4(v7);
    (v42)(v16, v43, v11);

    v30 = sub_D7C4();
    v31 = v11;
    v32 = sub_D924();

    if (os_log_type_enabled(v30, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v16;
      v35 = swift_slowAlloc();
      v48 = v35;
      *v33 = 136315138;
      v36 = *v1;
      v37 = sub_DA74();
      v39 = sub_39E4(v37, v38, &v48);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_0, v30, v32, "%s Got alert success while not waiting for it, serivce may have finished after dismissal", v33, 0xCu);
      sub_4434(v35);

      v40 = v34;
    }

    else
    {

      v40 = v16;
    }

    return v23(v40, v31);
  }
}

uint64_t sub_89B8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_8A00, v0, 0);
}

uint64_t sub_8A00()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_C5C0(&qword_195D0, type metadata accessor for IconChangeAlertOperation);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_8B34;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_8B34()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_746C;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_8C5C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_8C74(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1C70(&qword_19388, &qword_ECC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_1C70(&qword_195C0, &qword_EE80);
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  swift_storeEnumTagMultiPayload();
  v15 = (*(*a2 + 216))(v13);
  result = (*(*a2 + 184))(v15);
  if (result)
  {
    v17 = result;
    v18 = a2[14];
    v19 = sub_D8E4();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v20 = sub_C5C0(&qword_195D0, type metadata accessor for IconChangeAlertOperation);
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = v20;
    v21[4] = v18;
    v21[5] = v17;
    v21[6] = a2;
    v21[7] = a3;
    swift_retain_n();
    v22 = v18;
    sub_1F6C(0, 0, v9, &unk_EFF8, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_8F30, 0, 0);
}

uint64_t sub_8F30()
{
  v1 = swift_task_alloc();
  v0[2].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_9020;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_9020()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_91E0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_913C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9158()
{
  (*(**(v0 + 32) + 288))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_91E0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_9248, v2, 0);
}

uint64_t sub_9248()
{
  (*(**(v0 + 32) + 280))(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_92E0()
{
  v1[4] = v0;
  v2 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = sub_D7D4();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_940C, v0, 0);
}

uint64_t sub_940C()
{
  v62 = v0;
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[4];
  v5 = sub_C86C();
  v0[15] = v5;
  v6 = *(v2 + 16);
  v0[16] = v6;
  v0[17] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58 = v6;
  v59 = v5;
  (v6)(v1);

  v7 = sub_D7C4();
  v8 = sub_D924();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v13 = v0[4];
    v56 = v0[14];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v61 = v15;
    *v14 = 136315138;
    v16 = *v13;
    v17 = sub_DA74();
    v19 = sub_39E4(v17, v18, &v61);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "%s begin running", v14, 0xCu);
    sub_4434(v15);

    v20 = *(v11 + 8);
    v21 = v20(v56, v12);
  }

  else
  {

    v20 = *(v11 + 8);
    v21 = v20(v10, v12);
  }

  v0[18] = v20;
  v22 = v0[7];
  v23 = v0[5];
  (*(*v0[4] + 208))(v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_BBA4(v22);
  if (EnumCaseMultiPayload != 3)
  {
    return sub_DA14();
  }

  v54 = v0[13];
  v55 = v0[8];
  v57 = v20;
  v25 = v0[5];
  v26 = v0[6];
  v27 = v0[4];
  swift_storeEnumTagMultiPayload();
  v28 = *(*v27 + 216);
  v29 = (*v27 + 216) & 0xFFFFFFFFFFFFLL | 0xD438000000000000;
  v0[19] = v28;
  v0[20] = v29;
  v30 = v28(v26);
  v31 = (*(*v27 + 264))(v30);
  v0[21] = v31;
  v32 = *(*v27 + 136);
  v33 = (*v27 + 136) & 0xFFFFFFFFFFFFLL | 0x6497000000000000;
  v0[22] = v32;
  v0[23] = v33;
  v32(&v61);
  v0[2] = v61;
  v34 = [v31 _endpoint];
  v35 = v27[14];
  v0[24] = type metadata accessor for IconChangeAlertiOSPlatformExpert();
  sub_37B0();
  swift_unknownObjectRelease();

  v58(v54, v59, v55);

  v36 = sub_D7C4();
  v37 = sub_D924();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[13];
  v40 = v0[8];
  v41 = v0[9];
  if (v38)
  {
    v42 = v0[4];
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v61 = v44;
    *v43 = 136315138;
    v45 = *v42;
    v46 = sub_DA74();
    v48 = sub_39E4(v46, v47, &v61);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_0, v36, v37, "%s Activated remote alert", v43, 0xCu);
    sub_4434(v44);
  }

  v57(v39, v40);
  v49 = *(*v0[4] + 272);
  v60 = (v49 + *v49);
  v50 = v49[1];
  v51 = swift_task_alloc();
  v0[25] = v51;
  *v51 = v0;
  v51[1] = sub_99FC;
  v52 = v0[4];

  return v60();
}

uint64_t sub_99FC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_A334;
  }

  else
  {
    v6 = sub_9B28;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_9B28()
{
  v25 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 120), *(v0 + 64));

  v3 = sub_D7C4();
  v4 = sub_D924();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  v7 = *(v0 + 96);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  if (v5)
  {
    v10 = *(v0 + 32);
    v22 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = *v10;
    v14 = sub_DA74();
    v16 = sub_39E4(v14, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v3, v4, "%s got connection from service", v11, 0xCu);
    sub_4434(v12);

    v22(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v17 = *(**(v0 + 32) + 296);
  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_9DD0;
  v20 = *(v0 + 32);

  return v23();
}

uint64_t sub_9DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_A3F8;
  }

  else
  {
    v6 = sub_9EFC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_9EFC()
{
  v62 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  (*(v0 + 128))(*(v0 + 88), *(v0 + 120), *(v0 + 64));

  v3 = sub_D7C4();
  v4 = sub_D924();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  if (v5)
  {
    v10 = *(v0 + 32);
    v57 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v61 = v12;
    *v11 = 136315138;
    v13 = *v10;
    v14 = sub_DA74();
    v16 = sub_39E4(v14, v15, &v61);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v3, v4, "%s got alert result", v11, 0xCu);
    sub_4434(v12);

    v57(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v55 = *(v0 + 128);
  v58 = *(v0 + 136);
  v54 = *(v0 + 120);
  v22 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  v26 = *(v0 + 32);
  swift_storeEnumTagMultiPayload();
  v27 = v20(v25);
  v19(&v61, v27);
  *(v0 + 24) = v61;
  sub_376C();

  v55(v22, v54, v23);

  v28 = sub_D7C4();
  v29 = sub_D924();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 144);
  v33 = *(v0 + 72);
  v32 = *(v0 + 80);
  v34 = *(v0 + 64);
  if (v30)
  {
    v35 = *(v0 + 32);
    v59 = *(v0 + 144);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v61 = v37;
    *v36 = 136315138;
    v38 = *v35;
    v39 = sub_DA74();
    v41 = sub_39E4(v39, v40, &v61);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_0, v28, v29, "%s invalidated alert", v36, 0xCu);
    sub_4434(v37);

    v59(v32, v34);
  }

  else
  {

    v31(v32, v34);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 168);
  v44 = *(v0 + 152);
  v46 = *(v0 + 104);
  v45 = *(v0 + 112);
  v48 = *(v0 + 88);
  v47 = *(v0 + 96);
  v49 = *(v0 + 48);
  v56 = *(v0 + 80);
  v60 = *(v0 + 56);
  v51 = *(v0 + 32);
  v50 = *(v0 + 40);
  swift_storeEnumTagMultiPayload();
  v44(v49);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_A334()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_A3F8()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_A4E8()
{
  (*(**(v0 + 16) + 240))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A568(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_A588, v1, 0);
}

uint64_t sub_A588()
{
  (*(**(v0 + 24) + 248))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id IconChangeAlertManager.__allocating_init(identity:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17CSUIAUpcallBundle22IconChangeAlertManager_identity] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id IconChangeAlertManager.init(identity:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17CSUIAUpcallBundle22IconChangeAlertManager_identity] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IconChangeAlertManager();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_A720()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC17CSUIAUpcallBundle22IconChangeAlertManager_identity);
  v0[3] = v1;
  v2 = type metadata accessor for IconChangeAlertOperation(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_A804;

  return sub_B968(v5);
}

uint64_t sub_A804(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v11 = *v1;
  *(v3 + 40) = a1;

  v9 = (*a1 + 304);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v3 + 48) = v7;
  *v7 = v11;
  v7[1] = sub_A9EC;

  return v10();
}

uint64_t sub_A9EC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_AB64;
  }

  else
  {
    v3 = sub_AB00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AB00()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_AB64()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t IconChangeAlertManager.showAlert(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C70(&qword_19388, &qword_ECC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_D8E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_1F6C(0, 0, v8, &unk_EEC0, v10);
}

uint64_t sub_ACE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = *(&stru_20.nsects + (swift_isaMask & *a4));
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_AE10;

  return v11();
}

uint64_t sub_AE10()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_AF90;
  }

  else
  {
    v3 = sub_AF24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AF24()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_AF90()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_B168(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_D7B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_B250(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_B298(void *a1)
{
  v2 = v1;
  v4 = sub_D7D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = sub_D814();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_199A0 != -1)
  {
    swift_once();
  }

  v17 = qword_199A8;
  *v16 = qword_199A8;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v35 = v17;
  LOBYTE(v17) = sub_D824();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = (*&stru_68.segname[(swift_isaMask & *v2) + 8])(result);
    v20 = v19;
    if (v19)
    {

      v21 = sub_C86C();
      (*(v5 + 16))(v9, v21, v4);
      v22 = sub_D7C4();
      v23 = sub_D904();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v22, v23, "new connection but already have remote alert root (?)", v24, 2u);
      }

      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v25 = sub_C86C();
      (*(v5 + 16))(v11, v25, v4);
      v26 = sub_D7C4();
      v27 = sub_D924();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "Incoming connection to remote alert invoker", v28, 2u);
      }

      (*(v5 + 8))(v11, v4);
      [a1 _setQueue:v35];
      v29 = CSUIGetRemoteAlertInvokerInterface();
      [a1 setExportedInterface:v29];

      [a1 setExportedObject:v2];
      v30 = *&stru_68.segname[(swift_isaMask & *v2) + 16];
      v31 = a1;
      v30(a1);
      [v31 resume];
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_C6A4;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_4EE4;
      aBlock[3] = &unk_14B78;
      v33 = _Block_copy(aBlock);

      [v31 setInvalidationHandler:v33];
      _Block_release(v33);
    }

    return v20 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B77C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B7C4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4964;

  return sub_5444(v4, v5, v6, v2, v3);
}

uint64_t sub_B8A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconChangeAlertOperation.Status(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconChangeAlertOperation.Status(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_B968(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_B988, 0, 0);
}

uint64_t sub_B988()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_platformExpert;
  v0[7] = type metadata accessor for IconChangeAlertiOSPlatformExpert();
  *(v1 + v3) = sub_358C();
  v4 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for IconChangeAlertOperationXPCInvokerProxy()) init];
  *(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_listener) = 0;
  *(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_remoteAlertRoot) = 0;
  type metadata accessor for IconChangeAlertOperation.Status(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + 112) = v2;
  v5 = v2;

  return _swift_task_switch(sub_BA80, v1, 0);
}

uint64_t sub_BA80()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();

  sub_364C();
  swift_endAccess();
  v3 = *(v2 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy);
  v4 = *&stru_68.segname[(swift_isaMask & *v3) - 8];

  v5 = v3;
  v4(v2);

  v6 = v0[1];
  v7 = v0[6];

  return v6(v7);
}

uint64_t sub_BBA4(uint64_t a1)
{
  v2 = type metadata accessor for IconChangeAlertOperation.Status(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BC20(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BC98()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_4964;

  return sub_ACE8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_BD48()
{
  result = type metadata accessor for IconChangeAlertiOSPlatformExpert();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for IconChangeAlertOperation.Status(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_BE88()
{
  sub_BEFC();
  if (v0 <= 0x3F)
  {
    sub_C004();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_BEFC()
{
  if (!qword_19850)
  {
    sub_BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19850);
    }
  }
}

void sub_BF44()
{
  if (!qword_19858)
  {
    sub_BFBC(&qword_19860, &qword_EFC8);
    v0 = sub_D8C4();
    if (!v1)
    {
      atomic_store(v0, &qword_19858);
    }
  }
}

uint64_t sub_BFBC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_C004()
{
  result = qword_19868;
  if (!qword_19868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_19868);
  }

  return result;
}

uint64_t sub_C074()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C0B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_C0FC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DDC;

  return sub_ACE8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_C1A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_C1F4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_4964;

  return sub_8F0C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_C2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C2B8(uint64_t a1, void **a2)
{
  v5 = *(sub_1C70(&qword_195C0, &qword_EE80) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_7BB4(a1, a2, v6);
}

uint64_t sub_C348()
{
  v0 = *(sub_1C70(&qword_195C0, &qword_EE80) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  swift_errorRetain();
  sub_1C70(&qword_195C0, &qword_EE80);
  return sub_D8A4();
}

uint64_t sub_C3F4()
{
  v1 = sub_1C70(&qword_195C0, &qword_EE80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_C488(uint64_t a1)
{
  v2 = sub_1C70(&qword_195C0, &qword_EE80);
  v3 = a1;
  v4 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  if (!v3)
  {
    return sub_D8B4();
  }

  swift_errorRetain();
  sub_1C70(&qword_195C0, &qword_EE80);
  return sub_D8A4();
}

uint64_t sub_C53C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_C574()
{
  result = qword_19938;
  if (!qword_19938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19938);
  }

  return result;
}

uint64_t sub_C5C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C608()
{
  result = qword_19950;
  if (!qword_19950)
  {
    sub_BFBC(&qword_19948, qword_F028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19950);
  }

  return result;
}

uint64_t sub_C66C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_C6A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*&stru_68.segname[(swift_isaMask & *Strong) + 16])(0);
  }
}

uint64_t sub_C778()
{
  sub_CA68();
  result = sub_D964();
  qword_19A58 = result;
  return result;
}

uint64_t sub_C7E0()
{
  v0 = sub_D7D4();
  sub_CAB4(v0, qword_19B90);
  sub_C8D0(v0, qword_19B90);
  if (qword_19A50 != -1)
  {
    swift_once();
  }

  v1 = qword_19A58;
  return sub_D7E4();
}

uint64_t sub_C86C()
{
  if (qword_19A60 != -1)
  {
    swift_once();
  }

  v0 = sub_D7D4();

  return sub_C8D0(v0, qword_19B90);
}

uint64_t sub_C8D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_C908@<X0>(uint64_t a1@<X8>)
{
  if (qword_19A60 != -1)
  {
    swift_once();
  }

  v2 = sub_D7D4();
  v3 = sub_C8D0(v2, qword_19B90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id upcallBundleLogger()
{
  if (qword_19A50 != -1)
  {
    swift_once();
  }

  v1 = qword_19A58;

  return v1;
}

id upcallBundleLogger()()
{
  if (qword_19A50 != -1)
  {
    swift_once();
  }

  v1 = qword_19A58;

  return v1;
}

unint64_t sub_CA68()
{
  result = qword_19960;
  if (!qword_19960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19960);
  }

  return result;
}

uint64_t *sub_CAB4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_CB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_D974();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_CB88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_D974();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t sub_CC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D974();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_CCC0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_CD00(a1);
  return v2;
}

void *sub_CD00(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_D974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Parcel.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = *(v3 - 8);
  (*(v14 + 32))(v8, a1, v3);
  (*(v14 + 56))(v8, 0, 1, v3);
  (*(v5 + 32))(v13, v8, v4);
  v15 = sub_D050();
  (*(v10 + 8))(v13, v9);
  v1[2] = v15;
  return v1;
}

uint64_t sub_CF18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];

  v8 = *(v3 + 80);
  sub_D974();
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_D0CC(v4 + v5, a1);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t sub_CFF8()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_D018()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_D050()
{
  type metadata accessor for os_unfair_lock_s();
  sub_D9F4();
  return sub_D9E4();
}

uint64_t sub_D0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_D974();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
}

uint64_t sub_D1E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_D974();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D258(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_D3D8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_19968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_19968);
    }
  }
}

uint64_t sub_D654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

uint64_t sub_D72C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D74C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}