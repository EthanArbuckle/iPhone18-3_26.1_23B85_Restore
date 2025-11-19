id ControlCenterModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ControlCenterModule.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_29C9C6484();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s33HomeControlCenterSingleTileModule0bcF0C22moduleUniqueIdentifier33_5E8AC97B6834A1F8CFE2911C562B275DLL10Foundation4UUIDVvpfi_0();
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_lockState] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion] = 0;
  *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation] = 0;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v23, sel_init);
  sub_29C9C6464();
  v13 = sub_29C9C6474();
  v14 = sub_29C9C66E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_29C9BD000, v13, v14, "Initializing ControlCenterModule", v15, 2u);
    MEMORY[0x29ED50000](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v16 = [objc_opt_self() sharedManager];
  [v16 bootstrap];

  type metadata accessor for LockStateHandler();
  v17 = swift_allocObject();
  *(v17 + 16) = -1;
  *(v17 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 32) = &off_2A23EDD68;
  swift_unknownObjectWeakAssign();
  v18 = v12;
  sub_29C9C56C8();
  v19 = *&v18[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_lockState];
  *&v18[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_lockState] = v17;

  v20 = sub_29C9C66A4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v18;
  sub_29C9BF164(0, 0, v6, &unk_29C9C7200, v21);

  return v18;
}

uint64_t sub_29C9BEF7C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_29C9BEFFC()
{
  sub_29C9C65C4();
  *(v0 + 24) = sub_29C9C65A4();
  *(v0 + 32) = sub_29C9C5270(&qword_2A179B1B8, type metadata accessor for ControlCenterModule);
  sub_29C9C5270(&qword_2A179B1C0, MEMORY[0x29EDC5428]);
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9BF0F8, v2, v1);
}

uint64_t sub_29C9BF0F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_29C9C65B4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_29C9BF164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = v26 - v10;
  sub_29C9C5448(a3, v26 - v10);
  v12 = sub_29C9C66A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29C9C54B8(v11, &qword_2A179AF20, &qword_29C9C71F0);
  }

  else
  {
    sub_29C9C6694();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29C9C6664();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_29C9C6624() + 32;
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

      sub_29C9C54B8(a3, &qword_2A179AF20, &qword_29C9C71F0);

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

  sub_29C9C54B8(a3, &qword_2A179AF20, &qword_29C9C71F0);
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

id ControlCenterModule.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion;
  v3 = *&v0[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion];
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 sharedDispatcher];
    v6 = [v5 homeManager];

    [v6 _endActiveAssertion_];
    swift_unknownObjectRelease();
    v7 = *&v0[v2];
  }

  *&v0[v2] = 0;
  swift_unknownObjectRelease();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t ControlCenterModule.moduleDescription.getter()
{
  v0 = sub_29C9C6604();
  v1 = HULocalizedString();

  v2 = sub_29C9C6614();
  return v2;
}

id ControlCenterModule.setContentModuleContext(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context);
  *(v1 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context) = a1;

  return a1;
}

void *ControlCenterModule.contentModuleContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context);
  v2 = v1;
  return v1;
}

uint64_t sub_29C9BF8A0()
{
  v1 = sub_29C9C6484();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v6 = v0;
  v7 = sub_29C9C6474();
  v8 = sub_29C9C66E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_29C9BD000, v7, v8, "%@:CharacteristicRegistration canceling scheduled characteristic deregistration", v9, 0xCu);
    sub_29C9C54B8(v10, &qword_2A179AF78, &qword_29C9C7230);
    MEMORY[0x29ED50000](v10, -1, -1);
    MEMORY[0x29ED50000](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  v12 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation;
  v13 = *&v6[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation];
  if (v13)
  {
    [v13 cancel];
    v14 = *&v6[v12];
  }

  *&v6[v12] = 0;
  return swift_unknownObjectRelease();
}

void sub_29C9BFA60()
{
  v1 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion;
  if (!*&v0[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion])
  {
    v2 = v0;
    swift_getObjectType();
    sub_29C9C67C4();
    MEMORY[0x29ED4FA30](58, 0xE100000000000000);
    v3 = [v0 description];
    v4 = sub_29C9C6614();
    v6 = v5;

    MEMORY[0x29ED4FA30](v4, v6);

    v7 = [objc_opt_self() sharedDispatcher];
    v8 = [v7 homeManager];

    if (v8)
    {
      v9 = sub_29C9C6604();

      v10 = [v8 _beginActiveAssertionWithReason_];
    }

    else
    {

      v10 = 0;
    }

    v11 = *&v2[v1];
    *&v2[v1] = v10;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_29C9BFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_29C9C6404();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29C9BFCA4, 0, 0);
}

uint64_t sub_29C9BFCA4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v0[8];
  v3 = v0[9];
  if (Strong)
  {
    v5 = Strong;
    v6 = v0[6];
    v7 = v0[7];
    v8 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_moduleUniqueIdentifier;
    v9 = sub_29C9C63F4();
    (*(*(v9 - 8) + 16))(v4, &v5[v8], v9);

    (*(v7 + 104))(v4, *MEMORY[0x29EDC5410], v6);
    (*(v7 + 32))(v3, v4, v6);
    v0[10] = sub_29C9C6444();
    v0[11] = sub_29C9C6684();
    v0[12] = sub_29C9C6674();
    v11 = sub_29C9C6664();

    return MEMORY[0x2A1C73D48](sub_29C9BFE5C, v11, v10);
  }

  else
  {
    v12 = v0[9];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_29C9BFE5C()
{
  v1 = v0[12];
  v2 = v0[10];

  v0[13] = sub_29C9C6434();

  return MEMORY[0x2A1C73D48](sub_29C9BFED0, 0, 0);
}

uint64_t sub_29C9BFED0()
{
  v1 = *(v0 + 88);
  *(v0 + 112) = sub_29C9C6674();
  v3 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9BFF5C, v3, v2);
}

uint64_t sub_29C9BFF5C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  sub_29C9C6414();

  return MEMORY[0x2A1C73D48](sub_29C9BFFD4, 0, 0);
}

uint64_t sub_29C9BFFD4()
{
  (*(v0[7] + 8))(v0[9], v0[6]);
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

void ControlCenterModule.controlCenterModuleViewController(_:didChangeDisplayedItems:)(void *a1, uint64_t a2)
{
  v5 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v25[-1] - v7;
  v9 = [a1 itemManager];
  v24 = [v9 home];

  if (v24)
  {
    if ([a1 allowsCharacteristicNotifications] && (v10 = objc_msgSend(objc_opt_self(), sel_sharedDispatcher), v11 = objc_msgSend(v10, sel_homeManager), v10, v11))
    {

      v12 = sub_29C9C66A4();
      v13 = *(*(v12 - 8) + 56);
      v13(v8, 1, 1, v12);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = a2;
      v14[5] = v24;

      v15 = v24;
      sub_29C9BF164(0, 0, v8, &unk_29C9C7210, v14);

      sub_29C9C6574();
      v25[3] = sub_29C9BEF7C(&qword_2A179AF60, &qword_29C9C7218);
      v25[4] = sub_29C9C46A8();
      v25[0] = a2;

      v16 = sub_29C9C6534();
      sub_29C9C4D80(v25);
      v17 = *(v2 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration);
      v13(v8, 1, 1, v12);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_29C9C64E4();
      swift_retain_n();

      v19 = v15;

      v20 = sub_29C9C64D4();
      v21 = sub_29C9C5270(&qword_2A179AF70, MEMORY[0x29EDC52D0]);
      v22 = swift_allocObject();
      v22[2] = v20;
      v22[3] = v21;
      v22[4] = v17;
      v22[5] = v16;
      v22[6] = a2;
      v22[7] = v18;
      v22[8] = v19;

      sub_29C9BF164(0, 0, v8, &unk_29C9C7228, v22);
    }

    else
    {
      v23 = v24;
    }
  }
}

uint64_t sub_29C9C0440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2A1C73D48](sub_29C9C0460, 0, 0);
}

uint64_t sub_29C9C0460()
{
  sub_29C9C64C4();
  v0[4] = sub_29C9C64B4();
  v1 = *(MEMORY[0x29EDC52C8] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_29C9C0510;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x2A1C67B60](v4, v3);
}

uint64_t sub_29C9C0510()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_29C9C0620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_29C9C6594();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v11 = *(v10 + 64) + 15;
  v8[23] = swift_task_alloc();
  sub_29C9C64E4();
  v8[24] = sub_29C9C64D4();
  sub_29C9C5270(&qword_2A179AF70, MEMORY[0x29EDC52D0]);
  v13 = sub_29C9C6664();
  v8[25] = v13;
  v8[26] = v12;

  return MEMORY[0x2A1C73D48](sub_29C9C074C, v13, v12);
}

uint64_t sub_29C9C074C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[16];
    v4 = sub_29C9C6504();
    sub_29C9C31C4(v4, v2);
    LOBYTE(v2) = v5;

    if (v2)
    {
LABEL_30:
      v30 = v0[24];
      v31 = v0[17];

      sub_29C9C64F4();

      v32 = v0[23];

      v33 = v0[1];

      return v33();
    }
  }

  v6 = v0[17];
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = v0[17];
    }

    if ((sub_29C9C6754() & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v8 = *(v6 + 16);
LABEL_9:
  v52 = v1;
  v9 = v0[18];
  if ((v9 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = v0[18];
    }

    swift_unknownObjectRetain();
    sub_29C9C6744();
    sub_29C9C52B8(0, &qword_2A179B180, 0x29EDC53A0);
    sub_29C9C4EC4();
    v11 = sub_29C9C66C4();
    v9 = v0[2];
    v12 = v0[3];
    v13 = v0[4];
    v14 = v0[5];
    v15 = v0[6];
  }

  else
  {
    v16 = -1 << *(v9 + 32);
    v12 = v9 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v9 + 56);
    v19 = v0[18];

    v14 = 0;
  }

  v20 = (v13 + 64) >> 6;
  while ((v9 & 0x8000000000000000) == 0)
  {
    v23 = v14;
    v24 = v15;
    if (!v15)
    {
      while (1)
      {
        v14 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v14 >= v20)
        {
          goto LABEL_28;
        }

        v24 = *(v12 + 8 * v14);
        ++v23;
        if (v24)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      return MEMORY[0x2A1C67BC0](v11);
    }

LABEL_18:
    v15 = (v24 - 1) & v24;
    v21 = *(*(v9 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v21)
    {
      goto LABEL_28;
    }

LABEL_19:
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();

    if (v22)
    {
      goto LABEL_28;
    }
  }

  v25 = sub_29C9C6774();
  if (v25)
  {
    v0[15] = v25;
    sub_29C9C52B8(0, &qword_2A179B180, 0x29EDC53A0);
    swift_dynamicCast();
    v21 = v0[14];
    if (v21)
    {
      goto LABEL_19;
    }
  }

LABEL_28:
  sub_29C9C5268();
  v26 = v0[22];
  v27 = v0[23];
  v28 = v0[21];
  sub_29C9C6584();
  sub_29C9C5270(&qword_2A179B198, MEMORY[0x29EDC5420]);
  sub_29C9C6454();
  (*(v26 + 8))(v27, v28);
  if (v52)
  {
    v29 = v0[16];
    goto LABEL_30;
  }

  v35 = v0[19];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {
    v40 = v0[19];
    v39 = v0[20];
    v41 = v0[17];
    v42 = sub_29C9C6524();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();

    v45 = v39;
    v46 = sub_29C9C6514();
    v0[31] = v46;
    swift_beginAccess();
    v47 = swift_unknownObjectWeakLoadStrong();
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration);
      *(v47 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration) = v46;
      v49 = v47;
    }

    sub_29C9C6574();
    v0[32] = sub_29C9C6564();
    v50 = *(MEMORY[0x29EDC52E0] + 4);
    v51 = swift_task_alloc();
    v0[33] = v51;
    *v51 = v0;
    v51[1] = sub_29C9C0ECC;
    v11 = v46;

    return MEMORY[0x2A1C67BC0](v11);
  }

  sub_29C9C6684();
  v0[28] = sub_29C9C6674();
  v38 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C0C5C, v38, v37);
}

uint64_t sub_29C9C0C5C()
{
  v2 = v0[27];
  v1 = v0[28];

  v3 = *(v2 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
  if (v3 && (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
  {
    v5 = v4;
    v6 = v0[27];
    v7 = v3;
    v8 = [v5 fullDescription];
    v9 = sub_29C9C6614();
    v11 = v10;
  }

  else
  {
    v8 = v0[27];
    v0[13] = v3;
    v7 = v3;
    sub_29C9BEF7C(&qword_2A179B1A0, &qword_29C9C7330);
    v9 = sub_29C9C6734();
    v11 = v12;
  }

  v0[29] = v11;
  v0[30] = v9;
  v13 = v0[25];
  v14 = v0[26];

  return MEMORY[0x2A1C73D48](sub_29C9C0D7C, v13, v14);
}

uint64_t sub_29C9C0D7C()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = sub_29C9C6524();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = v3;
  v10 = sub_29C9C6514();
  v0[31] = v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration);
    *(Strong + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration) = v10;
    v13 = Strong;
  }

  sub_29C9C6574();
  v0[32] = sub_29C9C6564();
  v14 = *(MEMORY[0x29EDC52E0] + 4);
  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_29C9C0ECC;

  return MEMORY[0x2A1C67BC0](v10);
}

uint64_t sub_29C9C0ECC()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2A1C73D48](sub_29C9C1010, v5, v4);
}

uint64_t sub_29C9C1010()
{
  v1 = v0[31];
  v2 = v0[24];

  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29C9C1124()
{
  v1 = v0;
  v2 = sub_29C9C6484();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation;
  v8 = *&v1[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation];
  if (v8)
  {
    [v8 cancel];
  }

  sub_29C9C6464();
  v9 = v1;
  v10 = sub_29C9C6474();
  v11 = sub_29C9C66E4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_29C9BD000, v10, v11, "%@:CharacteristicRegistration scheduling characteristic deregistration", v12, 0xCu);
    sub_29C9C54B8(v13, &qword_2A179AF78, &qword_29C9C7230);
    MEMORY[0x29ED50000](v13, -1, -1);
    MEMORY[0x29ED50000](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v15 = [objc_opt_self() mainThreadScheduler];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29C9C5140;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29C9C220C;
  aBlock[3] = &unk_2A23EDDA0;
  v17 = _Block_copy(aBlock);

  v18 = [v15 afterDelay:v17 performBlock:5.0];
  swift_unknownObjectRelease();
  _Block_release(v17);
  v19 = *&v1[v7];
  *&v1[v7] = v18;
  return swift_unknownObjectRelease();
}

uint64_t sub_29C9C13F8()
{
  sub_29C9C64C4();
  sub_29C9C64B4();
  sub_29C9C64A4();

  v0[3] = sub_29C9C6444();
  v0[4] = sub_29C9C6684();
  v0[5] = sub_29C9C6674();
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C14BC, v2, v1);
}

uint64_t sub_29C9C14BC()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[6] = sub_29C9C6434();

  return MEMORY[0x2A1C73D48](sub_29C9C1530, 0, 0);
}

uint64_t sub_29C9C1530()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = sub_29C9C6674();
  v3 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C15BC, v3, v2);
}

uint64_t sub_29C9C15BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  sub_29C9C6424();

  v4 = v0[1];

  return v4();
}

void ControlCenterModule.controlCenterModuleViewController(_:didStartDisplaying:)(void *a1, void *a2)
{
  v5 = sub_29C9C6484();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v10 = a2;
  v11 = a1;
  v12 = v2;
  v13 = sub_29C9C6474();
  v14 = sub_29C9C66E4();

  v15 = 0x29F33C000uLL;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = v10;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v5;
    v19 = v18;
    *v17 = 138413058;
    *(v17 + 4) = v12;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v11;
    *v18 = v12;
    v18[1] = v11;
    *(v17 + 22) = 2112;
    *(v17 + 24) = v16;
    v18[2] = a2;
    *(v17 + 32) = 1024;
    v20 = v12;
    v21 = v16;
    *(v17 + 34) = [v11 allowsCharacteristicNotifications];

    _os_log_impl(&dword_29C9BD000, v13, v14, "%@: controlCenterModuleViewController:%@ didStartDisplayingHome %@ allowsCharacteristicNotifications:%{BOOL}d", v17, 0x26u);
    sub_29C9BEF7C(&qword_2A179AF78, &qword_29C9C7230);
    swift_arrayDestroy();
    v22 = v19;
    v5 = v29;
    MEMORY[0x29ED50000](v22, -1, -1);
    v23 = v17;
    v10 = v16;
    v15 = 0x29F33C000;
    MEMORY[0x29ED50000](v23, -1, -1);
  }

  else
  {

    v13 = v11;
  }

  (*(v6 + 8))(v9, v5);
  if ([v11 *(v15 + 2160)] && (v24 = -[NSObject itemManager](v11, sel_itemManager), v25 = objc_msgSend(v24, sel_home), v24, v25))
  {
  }

  else
  {
    v10 = 0;
  }

  v26 = [objc_opt_self() sharedManager];
  v27 = sub_29C9C63D4();
  [v26 setModuleWithIdentifier:v27 subscribedToHome:v10];
}

uint64_t ControlCenterModule.launchHomeApp(for:)(void *a1)
{
  v2 = v1;
  v4 = sub_29C9C6484();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29C9BEF7C(&unk_2A179AF80, &qword_29C9C7238);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_29C9C63A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6394();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_29C9C54B8(v12, &unk_2A179AF80, &qword_29C9C7238);
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_29C9C6464();
  v19 = a1;
  v20 = sub_29C9C6474();
  v21 = sub_29C9C66E4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = v2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v32 = v4;
    v25 = v24;
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v19;
    v26 = v19;
    _os_log_impl(&dword_29C9BD000, v20, v21, "Launching Home app for moduleViewController %@", v23, 0xCu);
    sub_29C9C54B8(v25, &qword_2A179AF78, &qword_29C9C7230);
    v27 = v25;
    v4 = v32;
    MEMORY[0x29ED50000](v27, -1, -1);
    v28 = v23;
    v2 = v33;
    MEMORY[0x29ED50000](v28, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v29 = *(v2 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_context);
  if (v29)
  {
    v30 = v29;
    v31 = sub_29C9C6384();
    [v30 openURL:v31 completionHandler:0];
  }

  return (*(v14 + 8))(v17, v13);
}

char *sub_29C9C1E04()
{
  v0 = sub_29C9C6484();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29C9C6464();

  v5 = sub_29C9C6474();
  v6 = sub_29C9C66E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v7 + 4) = Strong;
    *v8 = Strong;
    _os_log_impl(&dword_29C9BD000, v5, v6, "%@:CharacteristicRegistration deregistering characteristic notifications", v7, 0xCu);
    sub_29C9C54B8(v8, &qword_2A179AF78, &qword_29C9C7230);
    MEMORY[0x29ED50000](v8, -1, -1);
    MEMORY[0x29ED50000](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_29C9C20DC();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion;
    v15 = *(v12 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_homeKitActiveAssertion);
    if (v15)
    {
      v16 = objc_opt_self();
      swift_unknownObjectRetain();
      v17 = [v16 sharedDispatcher];
      v18 = [v17 homeManager];

      [v18 _endActiveAssertion_];
      swift_unknownObjectRelease();
      v19 = *&v13[v14];
    }

    *&v13[v14] = 0;

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *&result[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation];
    *&result[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_scheduledRegistrationCancelation] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29C9C20DC()
{
  v1 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x2A1C7C4A8](v1 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration;
  v7 = *&v0[OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_registration];
  if (v7)
  {
    v8 = sub_29C9C66A4();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v0;
    v9[5] = v7;

    v10 = v0;
    sub_29C9BF164(0, 0, v5, &unk_29C9C7328, v9);

    v11 = *&v0[v6];
    *&v0[v6] = 0;
  }

  return result;
}

uint64_t sub_29C9C220C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_29C9C2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_29C9C6404();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29C9C2310, 0, 0);
}

uint64_t sub_29C9C2310()
{
  v0[7] = sub_29C9C6444();
  v0[8] = sub_29C9C6684();
  v0[9] = sub_29C9C6674();
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C23B4, v2, v1);
}

uint64_t sub_29C9C23B4()
{
  v1 = v0[9];
  v2 = v0[7];

  v0[10] = sub_29C9C6434();

  return MEMORY[0x2A1C73D48](sub_29C9C2428, 0, 0);
}

uint64_t sub_29C9C2428()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_moduleUniqueIdentifier;
  v7 = sub_29C9C63F4();
  (*(*(v7 - 8) + 16))(v2, v5 + v6, v7);
  (*(v3 + 104))(v2, *MEMORY[0x29EDC5410], v4);
  v0[11] = sub_29C9C6674();
  v9 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C2538, v9, v8);
}

uint64_t sub_29C9C2538()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  sub_29C9C6424();

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2A1C73D48](sub_29C9C25D4, 0, 0);
}

uint64_t sub_29C9C25D4()
{
  *(v0 + 96) = sub_29C9C6574();
  sub_29C9C64E4();
  *(v0 + 104) = sub_29C9C64D4();
  sub_29C9C5270(&qword_2A179AF70, MEMORY[0x29EDC52D0]);
  v2 = sub_29C9C6664();

  return MEMORY[0x2A1C73D48](sub_29C9C26A4, v2, v1);
}

uint64_t sub_29C9C26A4()
{
  v2 = v0[12];
  v1 = v0[13];

  v0[14] = sub_29C9C6564();
  v3 = *(MEMORY[0x29EDC52E8] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_29C9C2750;
  v5 = v0[3];

  return MEMORY[0x2A1C67BC8](v5);
}

uint64_t sub_29C9C2750()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t ControlCenterModule.configuration.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_29C9C6484();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29C9C2948, 0, 0);
}

uint64_t sub_29C9C2948()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
  v0[8] = v1;
  if (v1 && (objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (v0[9] = v2) != 0))
  {
    v0[10] = sub_29C9C6684();
    v3 = v1;
    v0[11] = sub_29C9C6674();
    v5 = sub_29C9C6664();

    return MEMORY[0x2A1C73D48](sub_29C9C2AA0, v5, v4);
  }

  else
  {
    v6 = v0[7];
    v7 = v0[2];
    v8 = sub_29C9C65F4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_29C9C2AA0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  v0[12] = [v3 itemManager];

  return MEMORY[0x2A1C73D48](sub_29C9C2B2C, 0, 0);
}

uint64_t sub_29C9C2B2C()
{
  v33 = v0;
  v1 = v0[12];
  sub_29C9C65E4();
  v2 = swift_dynamicCastClass();
  v0[13] = v2;
  if (v2)
  {
    v3 = v0[10];
    v0[14] = sub_29C9C6674();
    v5 = sub_29C9C6664();

    return MEMORY[0x2A1C73D48](sub_29C9C2E18, v5, v4);
  }

  else
  {
    v6 = v0[7];
    sub_29C9C6464();
    v7 = v1;
    v8 = sub_29C9C6474();
    v9 = sub_29C9C66D4();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[12];
    v12 = v0[7];
    v13 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    if (v10)
    {
      v16 = v0[4];
      v31 = v0[7];
      v17 = swift_slowAlloc();
      v30 = v13;
      v18 = swift_slowAlloc();
      v29 = v15;
      v19 = swift_slowAlloc();
      v32 = v19;
      *v17 = 136315394;
      v20 = sub_29C9C67C4();
      v22 = sub_29C9C372C(v20, v21, &v32);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v11;
      *v18 = v11;
      v23 = v11;
      _os_log_impl(&dword_29C9BD000, v8, v9, "%s: Failed to unwrap item manager to ControlCenterModuleItemManager: %@", v17, 0x16u);
      sub_29C9C54B8(v18, &qword_2A179AF78, &qword_29C9C7230);
      MEMORY[0x29ED50000](v18, -1, -1);
      sub_29C9C4D80(v19);
      MEMORY[0x29ED50000](v19, -1, -1);
      MEMORY[0x29ED50000](v17, -1, -1);

      (*(v14 + 8))(v31, v29);
    }

    else
    {

      (*(v14 + 8))(v12, v15);
    }

    v24 = v0[7];
    v25 = v0[2];
    v26 = sub_29C9C65F4();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_29C9C2E18()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[2];

  sub_29C9C65D4();

  return MEMORY[0x2A1C73D48](sub_29C9C2E8C, 0, 0);
}

uint64_t sub_29C9C2E8C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = sub_29C9C65F4();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29C9C2F44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29C9C2FDC;

  return ControlCenterModule.configuration.getter(a1);
}

uint64_t sub_29C9C2FDC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29C9C30D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C9C3110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29C9C56C4;

  return sub_29C9BEFDC(a1, v4, v5, v6);
}

void sub_29C9C31C4(uint64_t a1, uint64_t a2)
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

LABEL_43:
      MEMORY[0x2A1C72B38](v5, v4);
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

    sub_29C9C343C(v8, v7);
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
    v5 = sub_29C9C52B8(0, &qword_2A179B1A8, 0x29EDBB0C8);
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
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_29C9C6714();
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
        v27 = sub_29C9C6724();

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

void sub_29C9C343C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_29C9C6754())
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
      v13 = sub_29C9C6784();

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

uint64_t sub_29C9C353C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29C9C3634;

  return v7(a1);
}

uint64_t sub_29C9C3634()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29C9C372C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29C9C37F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29C9C4F2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29C9C4D80(v11);
  return v7;
}

unint64_t sub_29C9C37F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29C9C3904(a5, a6);
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
    result = sub_29C9C67A4();
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

uint64_t sub_29C9C3904(uint64_t a1, unint64_t a2)
{
  v4 = sub_29C9C3950(a1, a2);
  sub_29C9C3A80(&unk_2A23EDCA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29C9C3950(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29C9C3B6C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29C9C67A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29C9C6644();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29C9C3B6C(v10, 0);
        result = sub_29C9C6794();
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

uint64_t sub_29C9C3A80(uint64_t result)
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

  result = sub_29C9C3BE0(result, v12, 1, v3);
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

void *sub_29C9C3B6C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29C9BEF7C(&qword_2A179B190, &qword_29C9C7308);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29C9C3BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29C9BEF7C(&qword_2A179B190, &qword_29C9C7308);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t _s33HomeControlCenterSingleTileModule0bcF0C21contentViewController3forSo011CCUIContentf7ContenthI0_So06UIViewI0CXcSo0kF19PresentationContextCSg_tF_0()
{
  v48[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController;
  v2 = *(v0 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
LABEL_10:
    v38 = v2;
    v39 = *MEMORY[0x29EDCA608];
    return v3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = objc_allocWithZone(MEMORY[0x29EDC7678]);
  v7 = sub_29C9C6604();
  v8 = [v6 initWithName:v7 bundle:v5];

  if (v8)
  {
    v46 = v8;
    v47 = v1;
    v9 = [v8 data];
    v10 = sub_29C9C63C4();
    v12 = v11;

    v13 = *MEMORY[0x29EDBBB20];
    sub_29C9C6614();
    v14 = sub_29C9C63B4();
    v15 = sub_29C9C6604();

    v48[0] = 0;
    v16 = [objc_opt_self() packageWithData:v14 type:v15 options:0 error:v48];

    if (v16)
    {
      v17 = v48[0];
      sub_29C9C53F4(v10, v12);
      v18 = objc_opt_self();
      v44 = [v18 previewWithPackage:v16 forGridSize:{1, 2}];
      v43 = [v18 previewWithPackage:v16 forGridSize:{1, 4}];
      v45 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:25.0];
      v19 = [objc_allocWithZone(MEMORY[0x29EDC5398]) initWithSystemImageNamed:*MEMORY[0x29EDC5330] configuration:v45];
      v20 = objc_opt_self();
      v21 = [v20 systemWhiteColor];
      v22 = sub_29C9C6604();
      v23 = HULocalizedString();

      if (!v23)
      {
        sub_29C9C6614();
        v23 = sub_29C9C6604();
      }

      v24 = [v18 previewWithTemplate:v19 tintColor:v21 title:v23 subtitle:0 forGridSize:{2, 2}];

      v25 = [v20 systemWhiteColor];
      v26 = sub_29C9C6604();
      v27 = HULocalizedString();

      if (!v27)
      {
        sub_29C9C6614();
        v27 = sub_29C9C6604();
      }

      v28 = [v18 previewWithTemplate:v19 tintColor:v25 title:v27 subtitle:0 forGridSize:{2, 4}];

      sub_29C9BEF7C(&qword_2A179B1B0, &qword_29C9C7348);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_29C9C71E0;
      *(v29 + 32) = v44;
      *(v29 + 40) = v43;
      *(v29 + 48) = v24;
      *(v29 + 56) = v28;
      v30 = objc_allocWithZone(MEMORY[0x29EDC54A0]);
      sub_29C9C6704();
      v31 = v44;
      v32 = v43;
      v33 = v24;
      v34 = v28;
      v35 = sub_29C9C6654();

      v36 = [v30 initWithDelegate:v0 ofKind:1 withPreviews:v35];

      v37 = *(v0 + v47);
      *(v0 + v47) = v36;
      v3 = v36;

      v2 = 0;
      goto LABEL_10;
    }

    v41 = v48[0];
    v42 = sub_29C9C6374();

    swift_willThrow();
    sub_29C9C53F4(v10, v12);
  }

  result = sub_29C9C67B4();
  __break(1u);
  return result;
}

uint64_t _s33HomeControlCenterSingleTileModule0bcF0C07controlcF14ViewController_16moduleWillAppearySo09HUControlcfhI0C_SbtF_0()
{
  v1 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_29C9C6484();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v10 = v0;
  v11 = sub_29C9C6474();
  v12 = sub_29C9C66E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v22 = v5;
    v23 = v15;
    v16 = v10;
    *(v13 + 14) = sub_29C9C372C(0xD000000000000036, 0x800000029C9C7D30, &v23);
    _os_log_impl(&dword_29C9BD000, v11, v12, "%@-%s delegate called", v13, 0x16u);
    sub_29C9C54B8(v14, &qword_2A179AF78, &qword_29C9C7230);
    MEMORY[0x29ED50000](v14, -1, -1);
    sub_29C9C4D80(v15);
    MEMORY[0x29ED50000](v15, -1, -1);
    MEMORY[0x29ED50000](v13, -1, -1);

    (*(v6 + 8))(v9, v22);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_29C9BF8A0();
  sub_29C9BFA60();
  v17 = [objc_opt_self() sharedManager];
  [v17 enterModuleViewWillAppear];

  v18 = sub_29C9C66A4();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v19;
  sub_29C9BF164(0, 0, v4, &unk_29C9C7340, v20);
}

uint64_t sub_29C9C45A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29C9C45E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C9C56C4;

  return sub_29C9C0440(a1, v4, v5, v7, v6);
}

unint64_t sub_29C9C46A8()
{
  result = qword_2A179AF68;
  if (!qword_2A179AF68)
  {
    sub_29C9C470C(&qword_2A179AF60, &qword_29C9C7218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A179AF68);
  }

  return result;
}

uint64_t sub_29C9C470C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_29C9C4754()
{
  MEMORY[0x29ED50080](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C9C478C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29C9C47EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29C9C56C4;

  return sub_29C9C0620(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _s33HomeControlCenterSingleTileModule0bcF0C07controlcF14ViewController_18moduleDidDisappearySo09HUControlcfhI0C_SbtF_0()
{
  v1 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v35 - v3;
  v5 = sub_29C9C6404();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v40 = v9;
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v35 - v10;
  v12 = sub_29C9C6484();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v16 = v0;
  v17 = sub_29C9C6474();
  v18 = sub_29C9C66E4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v11;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v4;
    v23 = v22;
    v42 = v22;
    *v19 = 138412546;
    *(v19 + 4) = v16;
    *v21 = v16;
    *(v19 + 12) = 2080;
    v36 = v12;
    v24 = v16;
    *(v19 + 14) = sub_29C9C372C(0xD000000000000038, 0x800000029C9C7CF0, &v42);
    _os_log_impl(&dword_29C9BD000, v17, v18, "%@-%s delegate called", v19, 0x16u);
    sub_29C9C54B8(v21, &qword_2A179AF78, &qword_29C9C7230);
    v25 = v21;
    v11 = v37;
    MEMORY[0x29ED50000](v25, -1, -1);
    sub_29C9C4D80(v23);
    v26 = v23;
    v4 = v38;
    MEMORY[0x29ED50000](v26, -1, -1);
    MEMORY[0x29ED50000](v19, -1, -1);

    (*(v39 + 8))(v15, v36);
  }

  else
  {

    (*(v39 + 8))(v15, v12);
  }

  v27 = [objc_opt_self() sharedManager];
  [v27 exitModuleViewDidDisappear];

  sub_29C9C1124();
  v28 = OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_moduleUniqueIdentifier;
  v29 = sub_29C9C63F4();
  (*(*(v29 - 8) + 16))(v11, &v16[v28], v29);
  (*(v6 + 104))(v11, *MEMORY[0x29EDC5410], v5);
  v30 = sub_29C9C66A4();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  v31 = v41;
  (*(v6 + 16))(v41, v11, v5);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  (*(v6 + 32))(v33 + v32, v31, v5);
  sub_29C9BF164(0, 0, v4, &unk_29C9C7318, v33);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_29C9C4D80(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for ControlCenterModule()
{
  result = qword_2A179AFF0;
  if (!qword_2A179AFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29C9C4E20()
{
  result = sub_29C9C63F4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_29C9C4EC4()
{
  result = qword_2A179B188;
  if (!qword_2A179B188)
  {
    sub_29C9C52B8(255, &qword_2A179B180, 0x29EDC53A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A179B188);
  }

  return result;
}

uint64_t sub_29C9C4F2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29C9C4F8C()
{
  v1 = sub_29C9C6404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29C9C5050(uint64_t a1)
{
  v4 = *(sub_29C9C6404() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C9C56C4;

  return sub_29C9C13D8(a1, v6, v7, v1 + v5);
}

uint64_t sub_29C9C5148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29C9C5160()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29C9C51A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C9C56C4;

  return sub_29C9C2250(a1, v4, v5, v7, v6);
}

uint64_t sub_29C9C5270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29C9C52B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_29C9C5300()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C9C5340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29C9C2FDC;

  return sub_29C9BFBD8(a1, v4, v5, v6);
}

uint64_t sub_29C9C53F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29C9C5448(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C9BEF7C(&qword_2A179AF20, &qword_29C9C71F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C9C54B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29C9BEF7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29C9C5518()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C9C5550(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29C9C56C4;

  return sub_29C9C353C(a1, v5);
}

uint64_t sub_29C9C5608(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29C9C2FDC;

  return sub_29C9C353C(a1, v5);
}

void sub_29C9C56C8()
{
  v1 = v0;
  v2 = sub_29C9C6484();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v7 = sub_29C9C6474();
  v8 = sub_29C9C66E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29C9BD000, v7, v8, "Registering for lock state notifications", v9, 2u);
    MEMORY[0x29ED50000](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  if (*(v1 + 16) == -1)
  {
    v10 = *MEMORY[0x29EDC5D48];
    sub_29C9C5F98();
    v11 = sub_29C9C66F4();
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_29C9C601C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29C9C5D38;
    aBlock[3] = &unk_2A23EDE90;
    v13 = _Block_copy(aBlock);

    swift_beginAccess();
    notify_register_dispatch(v10, (v1 + 16), v11, v13);
    swift_endAccess();
    _Block_release(v13);
  }
}

uint64_t sub_29C9C5918()
{
  v1 = v0;
  v2 = sub_29C9C6484();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C9C6464();
  v7 = sub_29C9C6474();
  v8 = sub_29C9C66E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29C9BD000, v7, v8, "Unregistering lock state notifications", v9, 2u);
    MEMORY[0x29ED50000](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  result = *(v1 + 16);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(v1 + 16) = -1;
  }

  return result;
}

uint64_t sub_29C9C5A88()
{
  *(v0 + 32) = 0;
  swift_unknownObjectWeakAssign();
  sub_29C9C5918();
  sub_29C9C5AF8(v0 + 24);

  return MEMORY[0x2A1C73398](v0, 40, 7);
}

uint64_t sub_29C9C5B20()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29C9C5B78();
  }

  return result;
}

uint64_t sub_29C9C5B78()
{
  v0 = sub_29C9C6484();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29C9C603C();
  sub_29C9C6464();
  v6 = sub_29C9C6474();
  v7 = sub_29C9C66E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v5;
    _os_log_impl(&dword_29C9BD000, v6, v7, "Access allowed for current lock state is %{BOOL}d, updating delegate", v8, 8u);
    MEMORY[0x29ED50000](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(result + OBJC_IVAR____TtC33HomeControlCenterSingleTileModule19ControlCenterModule_viewController);
    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v10;
        [v12 setAccessAllowedForCurrentLockState_];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29C9C5D38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

BOOL sub_29C9C5D8C()
{
  v0 = sub_29C9C6484();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x2A1C7C4A8])();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v18 - v6;
  sub_29C9C6464();
  v8 = sub_29C9C6474();
  v9 = sub_29C9C66E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29C9BD000, v8, v9, "Checking if device is unlocked", v10, 2u);
    MEMORY[0x29ED50000](v10, -1, -1);
  }

  v11 = *(v1 + 8);
  v11(v7, v0);
  v12 = MKBGetDeviceLockState();
  sub_29C9C6464();
  v13 = sub_29C9C6474();
  v14 = sub_29C9C66E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v12;
    _os_log_impl(&dword_29C9BD000, v13, v14, "Lock state is %d", v15, 8u);
    MEMORY[0x29ED50000](v15, -1, -1);
  }

  v11(v5, v0);
  return !v12 || v12 == 3;
}

unint64_t sub_29C9C5F98()
{
  result = qword_2A179B1C8;
  if (!qword_2A179B1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A179B1C8);
  }

  return result;
}

uint64_t sub_29C9C5FE4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C9C6024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_29C9C603C()
{
  v0 = sub_29C9C6484();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v26 - v7;
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v26 - v9;
  sub_29C9C6464();
  v11 = sub_29C9C6474();
  v12 = sub_29C9C66E4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_29C9BD000, v11, v12, "Checking if access is allowed for current lock state", v13, 2u);
    MEMORY[0x29ED50000](v13, -1, -1);
  }

  v14 = *(v1 + 8);
  v14(v10, v0);
  v15 = [objc_opt_self() sharedDispatcher];
  v16 = [v15 homeManager];

  if (v16 && (v17 = [v16 isAccessAllowedWhenLocked], v16, v17))
  {
    sub_29C9C6464();
    v18 = sub_29C9C6474();
    v19 = sub_29C9C66E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_29C9BD000, v18, v19, "Home manager doesn't care about lock state, returning YES", v20, 2u);
      MEMORY[0x29ED50000](v20, -1, -1);
    }

    v14(v8, v0);
    return 1;
  }

  else
  {
    sub_29C9C6464();
    v22 = sub_29C9C6474();
    v23 = sub_29C9C66E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_29C9BD000, v22, v23, "Home manager does care, checking lock state", v24, 2u);
      MEMORY[0x29ED50000](v24, -1, -1);
    }

    v14(v5, v0);
    return sub_29C9C5D8C();
  }
}