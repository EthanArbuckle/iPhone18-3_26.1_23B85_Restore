uint64_t sub_23D5FBA68()
{
  MEMORY[0x23EEE54F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D5FBAA4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D5FBAF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D5FBB94()
{
  MEMORY[0x23EEE54F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D5FBBCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D5FBBDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D5FBC14()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D5FBC58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D5FBC90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_23D604A9C(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D5FBCD4()
{
  MEMORY[0x23EEE54F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D5FBD0C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D5FBD5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D5FBD94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D5FBDD8()
{
  v0 = sub_23D60C1D0();
  __swift_allocate_value_buffer(v0, qword_280D9E8E8);
  __swift_project_value_buffer(v0, qword_280D9E8E8);
  return sub_23D60C1C0();
}

uint64_t GPLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D60C1D0();
  v3 = __swift_project_value_buffer(v2, qword_280D9E8E8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t GPLog.setter(uint64_t a1)
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D60C1D0();
  v3 = __swift_project_value_buffer(v2, qword_280D9E8E8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*GPLog.modify())()
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v0 = sub_23D60C1D0();
  __swift_project_value_buffer(v0, qword_280D9E8E8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

id AXGuestPassSharedInstance.getter()
{
  if (qword_280D9E900 != -1)
  {
    swift_once();
  }

  v1 = qword_280D9E908;

  return v1;
}

id sub_23D5FC134()
{
  result = [objc_allocWithZone(type metadata accessor for AXGuestPassService()) init];
  qword_280D9E908 = result;
  return result;
}

id static AXGuestPassService.sharedInstance.getter()
{
  if (qword_280D9E900 != -1)
  {
    swift_once();
  }

  v1 = qword_280D9E908;

  return v1;
}

id static AXGuestPassService.guestPassRepresentation.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_computerName_obj();

    if (v2)
    {
      v3 = sub_23D60C400();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    sub_23D60C560();
    v6 = MEMORY[0x23EEE4D90]();
    v7 = MEMORY[0x23EEE4D90]();
    v8 = [v7 managedAssetsRepresentation];

    sub_23D60C3E0();
    v9 = sub_23D60C3D0();

    v10 = [v6 filterManagedAssetsRepresentationForGuestPassTransfer_];

    v11 = sub_23D60C3E0();
    v18 = v11;
    swift_beginAccess();
    v15 = xmmword_27E2DF2A0;

    v12 = MEMORY[0x277D837D0];
    sub_23D60C5E0();
    if (v5)
    {
      v16 = v12;
      *&v15 = v3;
      *(&v15 + 1) = v5;
      sub_23D6036AC(&v15, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_23D603BD4(v14, v17, isUniquelyReferenced_nonNull_native);
      sub_23D603658(v17);
      return v11;
    }

    else
    {
      sub_23D60356C(v17, &v15);
      sub_23D604F20(&v15, &qword_27E2DF2B8, &unk_23D60D0B0);
      sub_23D603658(v17);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AXGuestPassService.AXGuestPassDeviceDescriptionKey.getter()
{
  swift_beginAccess();
  v0 = xmmword_27E2DF2A0;

  return v0;
}

uint64_t static AXGuestPassService.AXGuestPassDeviceDescriptionKey.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *&xmmword_27E2DF2A0 = a1;
  *(&xmmword_27E2DF2A0 + 1) = a2;
}

uint64_t sub_23D5FC55C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *(&xmmword_27E2DF2A0 + 1);
  *a1 = xmmword_27E2DF2A0;
  a1[1] = v2;
}

uint64_t sub_23D5FC5AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *&xmmword_27E2DF2A0 = v2;
  *(&xmmword_27E2DF2A0 + 1) = v1;
}

id sub_23D5FC610()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___AXGuestPassService_syncFiredTimer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277CBEBB8]) init];
  *&v0[OBJC_IVAR___AXGuestPassService__client] = 0;
  v3 = OBJC_IVAR___AXGuestPassService__clientLock;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&v0[OBJC_IVAR___AXGuestPassService_pinPairingObserverToken] = -1;
  *&v0[OBJC_IVAR___AXGuestPassService_cloudKitAccountChangesObserverToken] = -1;
  v0[OBJC_IVAR___AXGuestPassService_initialized] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_23D5FC6F4()
{
  v1 = v0;
  v2 = OBJC_IVAR___AXGuestPassService__clientLock;
  [*(v0 + OBJC_IVAR___AXGuestPassService__clientLock) lock];
  v3 = OBJC_IVAR___AXGuestPassService__client;
  v4 = *(v0 + OBJC_IVAR___AXGuestPassService__client);
  if (v4)
  {
    goto LABEL_4;
  }

  sub_23D60C600();

  v5 = [objc_opt_self() processInfo];
  [v5 processIdentifier];

  v6 = sub_23D60C650();
  MEMORY[0x23EEE4CD0](v6);

  v7 = *MEMORY[0x277CE7BF8];
  sub_23D60C400();
  v8 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v9 = sub_23D60C3F0();

  v10 = sub_23D60C3F0();

  v11 = [v8 initWithIdentifier:v9 serviceBundleName:v10];

  v12 = *(v1 + v3);
  *(v1 + v3) = v11;

  result = *(v1 + v3);
  if (!result)
  {
    goto LABEL_5;
  }

  result = [result setDelegate_];
  v4 = *(v1 + v3);
  if (v4)
  {
LABEL_4:
    v14 = *(v1 + v2);
    v15 = v4;
    [v14 unlock];
    return v15;
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AXGuestPassService.initializeMonitor()()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v35 - v3;
  v5 = sub_23D60C1D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___AXGuestPassService_initialized;
  if ((v1[OBJC_IVAR___AXGuestPassService_initialized] & 1) == 0)
  {
    v11 = sub_23D60C1A0();
    v39 = v11;
    v40 = sub_23D603D20();
    v12 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277CE67D0], v11);
    LOBYTE(v11) = sub_23D60C180();
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    if (v11)
    {
      if (qword_280D9E8E0 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v5, qword_280D9E8E8);
      swift_beginAccess();
      (*(v6 + 16))(v9, v13, v5);
      v14 = sub_23D60C1B0();
      v15 = sub_23D60C570();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_23D5FA000, v14, v15, "Initialize monitoring for Guest Pass", v16, 2u);
        MEMORY[0x23EEE5480](v16, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      v17 = [objc_opt_self() sharedInstance];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = sub_23D603DDC;
      v41 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_23D5FD164;
      v39 = &block_descriptor;
      v19 = _Block_copy(&aBlock);

      [v17 registerUpdateBlock:v19 forRetrieveSelector:sub_23D60C170() withListener:v1];
      _Block_release(v19);

      v20 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v20, v1, sub_23D5FD1A8, *MEMORY[0x277D81BF8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      sub_23D603DFC();
      v21 = sub_23D60C5A0();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = sub_23D603E48;
      v41 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_23D5FD3B8;
      v39 = &block_descriptor_4;
      v23 = _Block_copy(&aBlock);

      v24 = OBJC_IVAR___AXGuestPassService_pinPairingObserverToken;
      swift_beginAccess();
      notify_register_dispatch("com.apple.rapport.application-service-pairing", &v1[v24], v21, v23);
      swift_endAccess();
      _Block_release(v23);

      v25 = sub_23D60C5A0();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = sub_23D603E50;
      v41 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_23D5FD3B8;
      v39 = &block_descriptor_8;
      v27 = _Block_copy(&aBlock);

      v28 = OBJC_IVAR___AXGuestPassService_cloudKitAccountChangesObserverToken;
      swift_beginAccess();
      notify_register_dispatch("com.apple.cloudd.accountChanged", &v1[v28], v25, v27);
      swift_endAccess();
      _Block_release(v27);

      v29 = sub_23D60C4D0();
      v30 = *(*(v29 - 8) + 56);
      v30(v4, 1, 1, v29);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v1;
      v32 = v1;
      sub_23D5FE148(0, 0, v4, &unk_23D60D0C8, v31);

      v30(v4, 1, 1, v29);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v32;
      v34 = v32;
      sub_23D5FE148(0, 0, v4, &unk_23D60D0D8, v33);

      v1[v10] = 1;
    }
  }
}

void sub_23D5FCF48()
{
  v0 = sub_23D60C1D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 guestPassSessionIsActive];

  if (v6)
  {
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v0, qword_280D9E8E8);
    swift_beginAccess();
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_23D60C1B0();
    v9 = sub_23D60C570();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23D5FA000, v8, v9, "Guest Pass session is active. Initializing client.", v10, 2u);
      MEMORY[0x23EEE5480](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
    }
  }
}

uint64_t sub_23D5FD164(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_23D5FD1B0()
{
  v0 = sub_23D60C1D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280D9E8E8);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_23D60C1B0();
  v7 = sub_23D60C590();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23D5FA000, v6, v7, "got pairing notification, installing PIN gestures", v8, 2u);
    MEMORY[0x23EEE5480](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v10 = [objc_opt_self() server];
    [v10 installGuestPassPINGesture];
  }
}

uint64_t sub_23D5FD3B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_23D5FD40C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v16[-v1];
  v3 = sub_23D60C1D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_280D9E8E8);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_23D60C1B0();
  v10 = sub_23D60C590();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23D5FA000, v9, v10, "iCloud account status changed", v11, 2u);
    MEMORY[0x23EEE5480](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_23D60C4D0();
    (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    sub_23D5FE148(0, 0, v2, &unk_23D60D370, v15);
  }

  return result;
}

uint64_t sub_23D5FD6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF408, &qword_23D60D360);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DF410, &qword_23D60D368);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D5FD7E8, 0, 0);
}

uint64_t sub_23D5FD7E8()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_23D60C560();
  v5 = MEMORY[0x23EEE4D90]();
  v6 = *MEMORY[0x277CE7990];
  swift_beginAccess();
  v7 = *&v5[v6];

  sub_23D60C540();
  sub_23D60C190();

  sub_23D60C4E0();
  (*(v3 + 8))(v2, v4);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_23D5FD938;
  v10 = v0[11];
  v11 = v0[9];

  return MEMORY[0x2822003E8](v0 + 13, 0, 0, v11);
}

uint64_t sub_23D5FD938()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23D5FDA34, 0, 0);
}

uint64_t sub_23D5FDA34()
{
  v1 = *(v0 + 104);
  if (v1 == 2)
  {
    v2 = *(v0 + 64);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 40);
    if (v1)
    {
      sub_23D5FDB5C();
    }

    else
    {
      sub_23D5FDE80();
    }

    v6 = *(MEMORY[0x277D85798] + 4);
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_23D5FD938;
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);

    return MEMORY[0x2822003E8](v0 + 104, 0, 0, v9);
  }
}

void sub_23D5FDB5C()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v22[-v3];
  v5 = sub_23D60C1D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D60C560();
  v10 = MEMORY[0x23EEE4D90]();
  v11 = *MEMORY[0x277CE7990];
  swift_beginAccess();
  v12 = *(v10 + v11);

  LOBYTE(v10) = sub_23D60C520();
  if (v10)
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 guestPassSessionIsActive];

    if ((v14 & 1) == 0)
    {
      if (qword_280D9E8E0 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v5, qword_280D9E8E8);
      swift_beginAccess();
      (*(v6 + 16))(v9, v15, v5);
      v16 = sub_23D60C1B0();
      v17 = sub_23D60C570();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23D5FA000, v16, v17, "Asking UIServer to sync guest pass payload to iCloud", v18, 2u);
        MEMORY[0x23EEE5480](v18, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      v19 = sub_23D60C4D0();
      (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v1;
      v21 = v1;
      sub_23D5FE148(0, 0, v4, &unk_23D60D260, v20);
    }
  }
}

void sub_23D5FDE80()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v19 - v3;
  v5 = sub_23D60C1D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 guestPassSessionIsActive];

  if ((v11 & 1) == 0)
  {
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v5, qword_280D9E8E8);
    swift_beginAccess();
    (*(v6 + 16))(v9, v12, v5);
    v13 = sub_23D60C1B0();
    v14 = sub_23D60C570();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23D5FA000, v13, v14, "Asking UIServer to delete guest pass payload from iCloud", v15, 2u);
      MEMORY[0x23EEE5480](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v16 = sub_23D60C4D0();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v1;
    v18 = v1;
    sub_23D5FE148(0, 0, v4, &unk_23D60D238, v17);
  }
}

uint64_t sub_23D5FE148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23D605370(a3, v26 - v10, &qword_27E2DF2C0, &qword_23D60D420);
  v12 = sub_23D60C4D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23D604F20(v11, &qword_27E2DF2C0, &qword_23D60D420);
  }

  else
  {
    sub_23D60C4C0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23D60C470();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23D60C420() + 32;
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

      sub_23D604F20(a3, &qword_27E2DF2C0, &qword_23D60D420);

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

  sub_23D604F20(a3, &qword_27E2DF2C0, &qword_23D60D420);
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

uint64_t AXGuestPassService.beginGuestPassTransfer()()
{
  v1[5] = v0;
  v2 = sub_23D60C1D0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D5FE550, 0, 0);
}

uint64_t sub_23D5FE550()
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_280D9E8E8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23D60C1B0();
  v6 = sub_23D60C590();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23D5FA000, v5, v6, "Beginning guest pass transfer.", v7, 2u);
    MEMORY[0x23EEE5480](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *(v12 + 16) = v11;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_23D5FE750;
  v15 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 12, 0, 0, 0xD000000000000018, 0x800000023D60D5F0, sub_23D603FC0, v12, v15);
}

uint64_t sub_23D5FE750()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_23D5FE8D8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_23D5FE86C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23D5FE86C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23D5FE8D8()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3(0);
}

uint64_t sub_23D5FE948(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23D60C3E0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_23D5FEB68(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23D5FEC10;

  return AXGuestPassService.beginGuestPassTransfer()();
}

uint64_t sub_23D5FEC10(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_23D60C110();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t AXGuestPassService.endGuestPassTransfer()()
{
  v1[5] = v0;
  v2 = sub_23D60C1D0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D5FEE60, 0, 0);
}

uint64_t sub_23D5FEE60()
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_280D9E8E8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23D60C1B0();
  v6 = sub_23D60C590();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23D5FA000, v5, v6, "Ending guest pass transfer.", v7, 2u);
    MEMORY[0x23EEE5480](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *(v12 + 16) = v11;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_23D5FF060;
  v15 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 12, 0, 0, 0xD000000000000016, 0x800000023D60D610, sub_23D604004, v12, v15);
}

uint64_t sub_23D5FF060()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_23D605854;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_23D605884;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23D5FF17C(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v6 = sub_23D60C1D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v6, qword_280D9E8E8);
    swift_beginAccess();
    (*(v7 + 16))(v10, v12, v6);
    v13 = a2;
    v14 = sub_23D60C1B0();
    v15 = sub_23D60C580();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_23D5FA000, v14, v15, a4, v16, 0xCu);
      sub_23D604F20(v17, &unk_27E2DF3E0, &qword_23D60D460);
      MEMORY[0x23EEE5480](v17, -1, -1);
      MEMORY[0x23EEE5480](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v21 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF400, &qword_23D60D340);
    return sub_23D60C480();
  }

  else
  {
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF400, &qword_23D60D340);
    return sub_23D60C490();
  }
}

uint64_t sub_23D5FF578(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23D605850;

  return AXGuestPassService.endGuestPassTransfer()();
}

uint64_t AXGuestPassService.beginGuestPassSession(with:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_23D60C1D0();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D5FF6E4, 0, 0);
}

uint64_t sub_23D5FF6E4()
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v3, qword_280D9E8E8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23D60C1B0();
  v6 = sub_23D60C590();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23D5FA000, v5, v6, "Beginning guest pass session.", v7, 2u);
    MEMORY[0x23EEE5480](v7, -1, -1);
  }

  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[7];
  v10 = v0[8];
  v13 = v0[5];
  v12 = v0[6];

  (*(v9 + 8))(v8, v10);
  v14 = swift_task_alloc();
  v0[11] = v14;
  v14[2] = v11;
  v14[3] = v13;
  v14[4] = v12;
  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_23D5FF8F4;
  v17 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 14, 0, 0, 0xD00000000000001CLL, 0x800000023D60D630, sub_23D604048, v14, v17);
}

uint64_t sub_23D5FF8F4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_23D5FFA7C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_23D5FFA10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23D5FFA10()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23D5FFA7C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3(0);
}

void sub_23D5FFAEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF400, &qword_23D60D340);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock - v10;
  v12 = sub_23D5FC6F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2E8, &qword_23D60D110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D60D0A0;
  strcpy(&aBlock, "guestPassData");
  HIWORD(aBlock) = -4864;
  sub_23D60C5E0();
  *(inited + 96) = MEMORY[0x277CC9318];
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  sub_23D60544C(a3, a4);
  sub_23D6045A4(inited);
  swift_setDeallocating();
  sub_23D604F20(inited + 32, &qword_27E2DF2F0, &qword_23D60D118);
  v14 = sub_23D60C3D0();

  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v11, v7);
  v21 = sub_23D6054A0;
  v22 = v16;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v19 = sub_23D5FE948;
  v20 = &block_descriptor_155;
  v17 = _Block_copy(&aBlock);

  [v12 sendAsynchronousMessage:v14 withIdentifier:1 targetAccessQueue:0 completion:v17];
  _Block_release(v17);
}

uint64_t sub_23D5FFF34(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_23D60C160();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_23D600010;

  return AXGuestPassService.beginGuestPassSession(with:)(v7, v9);
}

uint64_t sub_23D600010(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[3];
  sub_23D604A9C(v5[4], v5[5]);
  if (v3)
  {
    v11 = sub_23D60C110();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t AXGuestPassService.endGuestPassSession()()
{
  v1[5] = v0;
  v2 = sub_23D60C1D0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D60028C, 0, 0);
}

uint64_t sub_23D60028C()
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_280D9E8E8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23D60C1B0();
  v6 = sub_23D60C590();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23D5FA000, v5, v6, "Ending guest pass session", v7, 2u);
    MEMORY[0x23EEE5480](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *(v12 + 16) = v11;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_23D5FF060;
  v15 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 12, 0, 0, 0xD000000000000015, 0x800000023D60D650, sub_23D604054, v12, v15);
}

uint64_t sub_23D600600(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23D605850;

  return AXGuestPassService.endGuestPassSession()();
}

uint64_t AXGuestPassService.resumeGuestPassSession()()
{
  v1[5] = v0;
  v2 = sub_23D60C1D0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D600768, 0, 0);
}

uint64_t sub_23D600768()
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_280D9E8E8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23D60C1B0();
  v6 = sub_23D60C590();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23D5FA000, v5, v6, "Resuming guest pass session", v7, 2u);
    MEMORY[0x23EEE5480](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *(v12 + 16) = v11;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_23D5FF060;
  v15 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 12, 0, 0, 0xD000000000000018, 0x800000023D60D670, sub_23D604098, v12, v15);
}

void sub_23D600968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF400, &qword_23D60D340);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - v13;
  v15 = sub_23D5FC6F4();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D5FE948;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [v15 sendAsynchronousMessage:0 withIdentifier:a6 targetAccessQueue:0 completion:v18];
  _Block_release(v18);
}

uint64_t sub_23D600CA0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23D605850;

  return AXGuestPassService.resumeGuestPassSession()();
}

uint64_t sub_23D600D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_23D60C1D0();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D600E08, 0, 0);
}

uint64_t sub_23D600E08()
{
  v1 = v0[22];
  v2 = sub_23D5FC6F4();
  v0[26] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_23D600F3C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF3D8, &unk_23D60D240);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23D60104C;
  v0[13] = &block_descriptor_51;
  v0[14] = v3;
  [v2 sendAsynchronousMessage:0 withIdentifier:6 targetAccessQueue:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23D600F3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_23D605860;
  }

  else
  {
    v3 = sub_23D605828;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D60104C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF5D0, &qword_23D60D250);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_23D60C3E0();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_23D601184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_23D60C1D0();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D601244, 0, 0);
}

uint64_t sub_23D601244()
{
  v1 = v0[22];
  v2 = sub_23D5FC6F4();
  v0[26] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_23D601378;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF3D8, &unk_23D60D240);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23D60104C;
  v0[13] = &block_descriptor_44;
  v0[14] = v3;
  [v2 sendAsynchronousMessage:0 withIdentifier:7 targetAccessQueue:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23D601378()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_23D6014F8;
  }

  else
  {
    v3 = sub_23D601488;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D601488()
{
  v1 = v0[26];
  v2 = v0[21];

  v3 = v0[25];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23D6014F8()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = __swift_project_value_buffer(v6, qword_280D9E8E8);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_23D60C1B0();
  v10 = sub_23D60C580();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[27];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_23D5FA000, v9, v10, "Error asking UIServer to sync latest guest pass data: %@", v13, 0xCu);
    sub_23D604F20(v14, &unk_27E2DF3E0, &qword_23D60D460);
    MEMORY[0x23EEE5480](v14, -1, -1);
    MEMORY[0x23EEE5480](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);
  v17 = v0[25];

  v18 = v0[1];

  return v18();
}

uint64_t sub_23D601740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_23D60C1D0();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D601800, 0, 0);
}

uint64_t sub_23D601800()
{
  v1 = v0[22];
  v2 = sub_23D5FC6F4();
  v0[26] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_23D601934;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF3D8, &unk_23D60D240);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23D60104C;
  v0[13] = &block_descriptor_170;
  v0[14] = v3;
  [v2 sendAsynchronousMessage:0 withIdentifier:8 targetAccessQueue:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23D601934()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_23D601A44;
  }

  else
  {
    v3 = sub_23D605828;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D601A44()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = __swift_project_value_buffer(v5, qword_280D9E8E8);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_23D60C1B0();
  v8 = sub_23D60C580();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[23];
  if (v9)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_23D5FA000, v7, v8, "Error asking UIServer to initialize sync engine", v14, 2u);
    MEMORY[0x23EEE5480](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);
  v15 = v0[25];

  v16 = v0[1];

  return v16();
}

Swift::OpaquePointer_optional __swiftcall AXGuestPassService.getSyncedProfiles()()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = sub_23D5FC6F4();
  v12[0] = 0;
  v1 = [v0 sendSynchronousMessage:0 withIdentifier:9 error:v12];

  v2 = v12[0];
  if (!v1)
  {
    v9 = v12[0];
    v10 = sub_23D60C120();

    swift_willThrow();
    goto LABEL_11;
  }

  v3 = sub_23D60C3E0();
  v4 = v2;

  if (!v3)
  {
LABEL_11:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_12;
  }

  sub_23D60C5E0();
  if (!*(v3 + 16) || (v5 = sub_23D6036BC(v12), (v6 & 1) == 0))
  {

    sub_23D603658(v12);
    goto LABEL_11;
  }

  sub_23D6040DC(*(v3 + 56) + 32 * v5, &v13);
  sub_23D603658(v12);

  if (!*(&v14 + 1))
  {
LABEL_12:
    sub_23D604F20(&v13, &qword_27E2DF2B8, &unk_23D60D0B0);
    v8 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2E0, &qword_23D60D108);
  if (swift_dynamicCast())
  {
    v8 = v12[0];
  }

  else
  {
    v8 = 0;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  result.value._rawValue = v8;
  result.is_nil = v7;
  return result;
}

id AXGuestPassService.getSyncedProfileData(_:)(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_23D5FC6F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2E8, &qword_23D60D110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D60D0A0;
  v18[1] = 0xE900000000000044;
  v6 = MEMORY[0x277D837D0];
  sub_23D60C5E0();
  *(inited + 96) = v6;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  sub_23D6045A4(inited);
  swift_setDeallocating();
  sub_23D604F20(inited + 32, &qword_27E2DF2F0, &qword_23D60D118);
  v7 = sub_23D60C3D0();

  v18[0] = 0;
  v8 = [v4 sendSynchronousMessage:v7 withIdentifier:10 error:v18];

  v9 = v18[0];
  if (!v8)
  {
    v15 = v18[0];
    v16 = sub_23D60C120();

    swift_willThrow();
    goto LABEL_12;
  }

  v10 = sub_23D60C3E0();
  v11 = v9;

  if (!v10)
  {
LABEL_12:
    v19 = 0u;
    v20 = 0u;
    goto LABEL_13;
  }

  sub_23D60C5E0();
  if (!*(v10 + 16) || (v12 = sub_23D6036BC(v18), (v13 & 1) == 0))
  {

    sub_23D603658(v18);
    goto LABEL_12;
  }

  sub_23D6040DC(*(v10 + 56) + 32 * v12, &v19);
  sub_23D603658(v18);

  if (!*(&v20 + 1))
  {
LABEL_13:
    sub_23D604F20(&v19, &qword_27E2DF2B8, &unk_23D60D0B0);
    result = 0;
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    result = v18[0];
  }

  else
  {
    result = 0;
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

id AXGuestPassService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void AXGuestPassService.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(id a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v6 = &v33 - v5;
  v7 = sub_23D60C1D0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = sub_23D5FC6F4();

  if (a1 && v15 == a1)
  {
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v7, qword_280D9E8E8);
    swift_beginAccess();
    v35 = v8[2];
    v35(v14, v16, v7);
    v17 = sub_23D60C1B0();
    v18 = sub_23D60C570();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = v12;
      v20 = v6;
      v21 = v2;
      v22 = v19;
      *v19 = 0;
      _os_log_impl(&dword_23D5FA000, v17, v18, "Connection to Guest Pass UI Service was interrupted", v19, 2u);
      v23 = v22;
      v2 = v21;
      v6 = v20;
      v12 = v34;
      MEMORY[0x23EEE5480](v23, -1, -1);
    }

    v24 = v8[1];
    v24(v14, v7);
    sub_23D60C560();
    v25 = MEMORY[0x23EEE4D90]();
    v26 = [v25 guestPassSessionIsActive];

    if (v26)
    {
      v35(v12, v16, v7);
      v27 = sub_23D60C1B0();
      v28 = sub_23D60C570();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_23D5FA000, v27, v28, "Guest Pass session was still active. Will attempt to re-enable", v29, 2u);
        MEMORY[0x23EEE5480](v29, -1, -1);
      }

      v24(v12, v7);
      v30 = sub_23D60C4D0();
      (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v2;
      v32 = v2;
      sub_23D5FE148(0, 0, v6, &unk_23D60D128, v31);
    }
  }
}

uint64_t sub_23D6026FC()
{
  v1 = sub_23D60C1D0();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_23D6027E8;

  return AXGuestPassService.resumeGuestPassSession()();
}

uint64_t sub_23D6027E8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23D602924, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23D602924()
{
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v4, qword_280D9E8E8);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_23D60C1B0();
  v8 = sub_23D60C580();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_23D5FA000, v7, v8, "Error resuming guest pass session after connection was interrupted: %@", v11, 0xCu);
    sub_23D604F20(v12, &unk_27E2DF3E0, &qword_23D60D460);
    MEMORY[0x23EEE5480](v12, -1, -1);
    MEMORY[0x23EEE5480](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t AXGuestPassError.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t AXGuestPassError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D60C600();

  MEMORY[0x23EEE4CD0](v1, v2);
  return 0xD000000000000012;
}

unint64_t sub_23D602C48()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D60C600();

  MEMORY[0x23EEE4CD0](v1, v2);
  return 0xD000000000000012;
}

uint64_t sub_23D602CC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D602DBC;

  return v7(a1);
}

uint64_t sub_23D602DBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23D602EB4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23D605858;

  return v7();
}

uint64_t sub_23D602F9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23D603084;

  return v8();
}

uint64_t sub_23D603084()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23D603178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_23D605370(a3, v24 - v10, &qword_27E2DF2C0, &qword_23D60D420);
  v12 = sub_23D60C4D0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23D604F20(v11, &qword_27E2DF2C0, &qword_23D60D420);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23D60C4C0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_23D60C470();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_23D60C420() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_23D604F20(a3, &qword_27E2DF2C0, &qword_23D60D420);

    return v22;
  }

LABEL_8:
  sub_23D604F20(a3, &qword_27E2DF2C0, &qword_23D60D420);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23D603474(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D60585C;

  return v7(a1);
}

double sub_23D60356C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23D6036BC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D604334();
      v11 = v13;
    }

    sub_23D603658(*(v11 + 48) + 40 * v8);
    sub_23D6036AC((*(v11 + 56) + 32 * v8), a2);
    sub_23D603A30(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

_OWORD *sub_23D6036AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23D6036BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D60C5C0();

  return sub_23D6041B4(a1, v5);
}

unint64_t sub_23D603700(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23D60C6E0();
  sub_23D60C430();
  v6 = sub_23D60C6F0();

  return sub_23D60427C(a1, a2, v6);
}

uint64_t sub_23D603778(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF3F8, &qword_23D60D338);
  result = sub_23D60C630();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_23D6036AC((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_23D6053D8(v24, &v38);
        sub_23D6040DC(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_23D60C5C0();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_23D6036AC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_23D603A30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D60C5B0() + 1) & ~v5;
    do
    {
      sub_23D6053D8(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_23D60C5C0();
      result = sub_23D603658(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_23D603BD4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23D6036BC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23D604334();
      goto LABEL_7;
    }

    sub_23D603778(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_23D6036BC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23D6053D8(a2, v22);
      return sub_23D604138(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_23D60C680();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_23D6036AC(a1, v17);
}

unint64_t sub_23D603D20()
{
  result = qword_280D9E8A0;
  if (!qword_280D9E8A0)
  {
    sub_23D60C1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9E8A0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D603DFC()
{
  result = qword_280D9E898;
  if (!qword_280D9E898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D9E898);
  }

  return result;
}

uint64_t sub_23D603E58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D605858;

  return sub_23D5FD6B4(a1, v4, v5, v6);
}

uint64_t sub_23D603F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D605858;

  return sub_23D601740(a1, v4, v5, v6);
}

uint64_t sub_23D6040DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_23D604138(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_23D6036AC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_23D6041B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D6053D8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEE4E60](v9, a1);
      sub_23D603658(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23D60427C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D60C660())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_23D604334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF3F8, &qword_23D60D338);
  v2 = *v0;
  v3 = sub_23D60C620();
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
        v18 = 40 * v17;
        sub_23D6053D8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23D6040DC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23D6036AC(v22, (*(v4 + 56) + v17));
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

void sub_23D6044D8(char *a1)
{
  if (a1)
  {
    v1 = OBJC_IVAR___AXGuestPassService_syncFiredTimer;
    v2 = *&a1[OBJC_IVAR___AXGuestPassService_syncFiredTimer];
    v4 = a1;
    [v2 invalidate];
    v5 = [objc_opt_self() scheduledTimerWithTimeInterval:v4 target:sel_syncLatestDataToiCloud selector:0 userInfo:0 repeats:300.0];
    v6 = *&a1[v1];
    *&a1[v1] = v5;
  }
}

unint64_t sub_23D6045A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF3F8, &qword_23D60D338);
    v3 = sub_23D60C640();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D605370(v4, v13, &qword_27E2DF2F0, &qword_23D60D118);
      result = sub_23D6036BC(v13);
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
      result = sub_23D6036AC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D6046E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF3F0, &qword_23D60D330);
    v3 = sub_23D60C640();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23D603700(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s19AXGuestPassServices0aB7ServiceC19isTransferUIShowingSbyF_0()
{
  sub_23D60C560();
  v0 = MEMORY[0x23EEE4D90]();
  v1 = MEMORY[0x277CE7990];
  v2 = *MEMORY[0x277CE7990];
  swift_beginAccess();
  v3 = *(v0 + v2);

  LOBYTE(v0) = sub_23D60C530();
  if (v0 & 1) != 0 || (v4 = MEMORY[0x23EEE4D90](), v5 = *v1, swift_beginAccess(), v6 = *(v4 + v5), v4, LOBYTE(v4) = sub_23D60C510(), v6, (v4))
  {
    v7 = 1;
  }

  else
  {
    v8 = MEMORY[0x23EEE4D90]();
    v9 = *v1;
    swift_beginAccess();
    v10 = *&v8[v9];

    v7 = sub_23D60C550();
  }

  return v7 & 1;
}

uint64_t sub_23D604910()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23D605858;

  return sub_23D6026FC();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D6049F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D604A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D604A88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23D604A9C(a1, a2);
  }

  return a1;
}

uint64_t sub_23D604A9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23D604AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D605858;

  return sub_23D601184(a1, v4, v5, v6);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23D604C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D605858;

  return sub_23D600D48(a1, v4, v5, v6);
}

uint64_t sub_23D604CE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D605858;

  return sub_23D600CA0(v2, v3);
}

uint64_t sub_23D604D94()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D605858;

  return sub_23D602EB4(v2, v3, v5);
}

uint64_t sub_23D604E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D605858;

  return sub_23D602F9C(a1, v4, v5, v7);
}

uint64_t sub_23D604F20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D604F80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D605858;

  return sub_23D603474(a1, v5);
}

uint64_t sub_23D605038()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D605858;

  return sub_23D600600(v2, v3);
}

uint64_t sub_23D6050E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23D603084;

  return sub_23D5FFF34(v2, v3, v4);
}

uint64_t sub_23D605198()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D605858;

  return sub_23D5FF578(v2, v3);
}

uint64_t objectdestroy_53Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D605284()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D605858;

  return sub_23D5FEB68(v2, v3);
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D605370(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D60544C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_139Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF400, &qword_23D60D340);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23D60560C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D605858;

  return sub_23D602CC4(a1, v5);
}

uint64_t sub_23D6056C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D603084;

  return sub_23D602CC4(a1, v5);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

Swift::Void __swiftcall AXGuestPassNetworkListener.listen()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF480, &unk_23D60D3B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v26[0] = v26 - v2;
  v3 = sub_23D60C1F0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23D60C1D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v26[2] = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_280D9E8E8);
  swift_beginAccess();
  (*(v6 + 16))(v11, v12, v5);
  v13 = sub_23D60C1B0();
  v14 = sub_23D60C590();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23D5FA000, v13, v14, "AXGuestPassNetworkListener: Started listening...", v15, 2u);
    MEMORY[0x23EEE5480](v15, -1, -1);
  }

  (*(v6 + 8))(v11, v5);
  sub_23D60C360();
  sub_23D60C340();
  sub_23D60C350();
  nw_parameters_set_server_mode();
  swift_unknownObjectRelease();
  sub_23D60C350();
  nw_parameters_set_attach_protocol_listener();
  swift_unknownObjectRelease();
  sub_23D60C330();
  sub_23D60C1E0();
  v16 = sub_23D60C280();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_23D60C240();
  v20 = *MEMORY[0x277CE7BF8];
  sub_23D60C400();
  v21 = v26[0];
  sub_23D60C250();
  v22 = sub_23D60C260();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  sub_23D60C270();
  swift_allocObject();
  v23 = v26[1];
  swift_unknownObjectWeakInit();

  sub_23D5FBBCC(sub_23D609260);
  sub_23D60C210();

  sub_23D5FBBCC(sub_23D607684);
  sub_23D60C200();
  sub_23D603DFC();
  v24 = sub_23D60C5A0();
  sub_23D60C230();

  v25 = *(v23 + OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_listener);
  *(v23 + OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_listener) = v19;
}

void sub_23D605E28(uint64_t a1)
{
  v2 = sub_23D60C1D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connection);
    *&v8[OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connection] = a1;

    v10 = qword_280D9E8E0;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v2, qword_280D9E8E8);
    swift_beginAccess();
    (*(v3 + 16))(v6, v11, v2);

    v12 = sub_23D60C1B0();
    v13 = sub_23D60C590();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = v3;
      v15 = v14;
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_23D60C2C0();
      v19 = sub_23D609194(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_23D5FA000, v12, v13, "AXGuestPassNetworkListener: Setting connection %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x23EEE5480](v16, -1, -1);
      MEMORY[0x23EEE5480](v15, -1, -1);

      (*(v23 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a1;

    sub_23D5FBBCC(sub_23D609360);
    sub_23D60C2D0();

    sub_23D603DFC();
    v22 = sub_23D60C5A0();
    sub_23D60C300();
  }
}

uint64_t sub_23D60616C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v97 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v81 - v5;
  v87 = sub_23D60C380();
  v86 = *(v87 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_23D60C2F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v96 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v81 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v81 - v17;
  v98 = sub_23D60C1D0();
  v19 = *(v98 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v98);
  v94 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v81 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v88 = &v81 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v81 - v28;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v31 = result;
  v83 = v25;
  v84 = v6;
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v32 = v98;
  v33 = __swift_project_value_buffer(v98, qword_280D9E8E8);
  swift_beginAccess();
  v34 = *(v19 + 16);
  v91 = v19 + 16;
  v92 = v33;
  v90 = v34;
  v34(v29, v33, v32);
  v95 = v10;
  v35 = *(v10 + 16);
  v35(v18, v97, v9);
  v36 = sub_23D60C1B0();
  v37 = sub_23D60C590();
  v93 = v19;
  v38 = v37;
  if (os_log_type_enabled(v36, v37))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v82 = v31;
    v41 = v40;
    v99[0] = v40;
    *v39 = 136315138;
    v35(v16, v18, v9);
    v42 = sub_23D60C410();
    v81 = v35;
    v44 = v43;
    v45 = v18;
    v46 = *(v95 + 8);
    v46(v45, v9);
    v47 = sub_23D609194(v42, v44, v99);
    v35 = v81;

    *(v39 + 4) = v47;
    _os_log_impl(&dword_23D5FA000, v36, v38, "AXGuestPassNetworkListener: New listener connection state %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v48 = v41;
    v31 = v82;
    MEMORY[0x23EEE5480](v48, -1, -1);
    MEMORY[0x23EEE5480](v39, -1, -1);

    v49 = *(v93 + 8);
    v49(v29, v98);
    v50 = v95;
  }

  else
  {

    v51 = v95;
    v52 = v18;
    v46 = *(v95 + 8);
    v46(v52, v9);
    v49 = *(v93 + 8);
    v49(v29, v98);
    v50 = v51;
  }

  v53 = OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connectionState;
  swift_beginAccess();
  v54 = &v31[v53];
  v55 = v97;
  (*(v50 + 24))(v54, v97, v9);
  swift_endAccess();
  v56 = v96;
  v35(v96, v55, v9);
  v57 = (*(v50 + 88))(v56, v9);
  if (v57 != *MEMORY[0x277CD8DE0])
  {
    if (v57 != *MEMORY[0x277CD8DD0])
    {
      if (v57 != *MEMORY[0x277CD8DF0])
      {

        return (v46)(v56, v9);
      }

      goto LABEL_9;
    }

    v69 = v31;
    sub_23D606B10();
    sub_23D60C3B0();
    sub_23D60C370();
    v70 = sub_23D60C320();

    v71 = v88;
    if (v70)
    {
      sub_23D60C3A0();
      if (swift_dynamicCastClass())
      {
        v72 = v85;
        *v85 = 1;
        (*(v86 + 104))(v72, *MEMORY[0x277CD8EA0], v87);
        sub_23D60C390();
        v73 = v83;
        v90(v83, v92, v98);
        v74 = sub_23D60C1B0();
        v75 = sub_23D60C590();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_23D5FA000, v74, v75, "AXGuestPassNetworkListener: Setting connection keep alive timer to 1 seconds.", v76, 2u);
          MEMORY[0x23EEE5480](v76, -1, -1);
        }

        else
        {
        }

        v80 = v73;
        return (v49)(v80, v98);
      }
    }

    v90(v71, v92, v98);
    v77 = sub_23D60C1B0();
    v78 = sub_23D60C580();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_23D5FA000, v77, v78, "AXGuestPassNetworkListener: Failed to retrieve metadata from connection.", v79, 2u);
      MEMORY[0x23EEE5480](v79, -1, -1);
    }

    else
    {
    }

    v80 = v71;
    return (v49)(v80, v98);
  }

  v46(v56, v9);
LABEL_9:
  v58 = v94;
  v90(v94, v92, v98);
  v59 = sub_23D60C1B0();
  v60 = sub_23D60C570();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v31;
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_23D5FA000, v59, v60, "AXGuestPassNetworkListener: Ending guest pass session due to severed connection. Physical device range likely too far.", v62, 2u);
    v63 = v62;
    v31 = v61;
    MEMORY[0x23EEE5480](v63, -1, -1);
  }

  v49(v58, v98);
  v64 = sub_23D60C4D0();
  v65 = v84;
  (*(*(v64 - 8) + 56))(v84, 1, 1, v64);
  sub_23D60C4B0();
  v66 = sub_23D60C4A0();
  v67 = swift_allocObject();
  v68 = MEMORY[0x277D85700];
  *(v67 + 16) = v66;
  *(v67 + 24) = v68;
  sub_23D5FE148(0, 0, v65, &unk_23D60D430, v67);
}

uint64_t sub_23D606B10()
{
  v64 = *MEMORY[0x277D85DE8];
  v57 = sub_23D60C2B0();
  v56 = *(v57 - 8);
  v0 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v2 = (&v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_23D60C1D0();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D60C0B0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_23D60C0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF4B8, &qword_23D60D438);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D60D390;
  *(inited + 32) = 0x6C43656369766564;
  *(inited + 40) = 0xEB00000000737361;
  v11 = objc_opt_self();
  v12 = [v11 deviceClassForBuddy];
  if (v12)
  {
    v13 = v12;
    v14 = sub_23D60C400();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 64) = 0x6E6F6973726576;
  *(inited + 72) = 0xE700000000000000;
  v17 = [v11 productVersionForBuddy];
  if (v17)
  {
    v18 = v17;
    v19 = sub_23D60C400();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(inited + 80) = v19;
  *(inited + 88) = v21;
  v22 = sub_23D6046E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF4C0, &qword_23D60D440);
  swift_arrayDestroy();
  v60 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF4C8, &qword_23D60D448);
  sub_23D609ABC();
  v23 = sub_23D60C090();
  v25 = v24;
  v26 = v23;

  v28 = *&v59[OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connection];
  if (v28)
  {
    if (v25 >> 60 != 15)
    {
      v29 = qword_280D9E8E0;
      v30 = *&v59[OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connection];

      if (v29 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v3, qword_280D9E8E8);
      swift_beginAccess();
      (*(v58 + 16))(v6, v31, v3);
      v32 = sub_23D60C1B0();
      v33 = sub_23D60C590();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_23D5FA000, v32, v33, "AXGuestPassNetworkListener: Attempting to send device class", v34, 2u);
        MEMORY[0x23EEE5480](v34, -1, -1);
      }

      (*(v58 + 8))(v6, v3);
      v35 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        if (v35 != 2)
        {
          goto LABEL_25;
        }

        v37 = *(v26 + 16);
        v38 = *(v26 + 24);
        v39 = __OFSUB__(v38, v37);
        v36 = v38 - v37;
        if (!v39)
        {
LABEL_23:
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          __break(1u);
LABEL_25:
          v36 = 0;
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v35)
      {
        v36 = BYTE6(v25);
LABEL_26:
        v60 = bswap64(v36);
        v40 = sub_23D607A1C(&v60, v61);
        v42 = v41;
        v62 = v40;
        v63 = v41;
        v58 = v40;
        v55 = v41;
        v61[2] = MEMORY[0x277CC9318];
        v61[3] = MEMORY[0x277CC9300];
        v43 = v26;
        v60 = v26;
        v61[0] = v25;
        v44 = __swift_project_boxed_opaque_existential_0(&v60, MEMORY[0x277CC9318]);
        v45 = *v44;
        v46 = v44[1];
        sub_23D60544C(v40, v42);
        sub_23D609C0C(v26, v25);
        sub_23D6098F0(v45, v46);
        __swift_destroy_boxed_opaque_existential_1Tm(&v60);
        v47 = v62;
        v48 = v63;
        sub_23D60C2A0();
        sub_23D60C290();
        v49 = swift_allocObject();
        v50 = v59;
        *(v49 + 16) = v28;
        *(v49 + 24) = v50;
        *v2 = sub_23D609C20;
        v2[1] = v49;
        v51 = v56;
        v52 = v57;
        (*(v56 + 104))(v2, *MEMORY[0x277CD8DB0], v57);

        v53 = v50;
        sub_23D60C2E0();

        sub_23D604A9C(v47, v48);

        sub_23D604A88(v43, v25);
        sub_23D604A9C(v58, v55);
        result = (*(v51 + 8))(v2, v52);
        goto LABEL_27;
      }

      LODWORD(v36) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        __break(1u);
      }

      v36 = v36;
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_23D604A88(v26, v25);
  }

LABEL_27:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23D607198()
{
  v1 = sub_23D60C1D0();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  sub_23D60C4B0();
  v0[8] = sub_23D60C4A0();
  v5 = sub_23D60C470();
  v0[9] = v5;
  v0[10] = v4;

  return MEMORY[0x2822009F8](sub_23D607288, v5, v4);
}

uint64_t sub_23D607288()
{
  if (qword_280D9E900 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_23D607350;

  return AXGuestPassService.endGuestPassSession()();
}

uint64_t sub_23D607350()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_23D6074F4;
  }

  else
  {
    v7 = sub_23D60748C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23D60748C()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23D6074F4()
{
  v1 = v0[8];

  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v4, qword_280D9E8E8);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_23D60C1B0();
  v7 = sub_23D60C580();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  if (v8)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23D5FA000, v6, v7, "AXGuestPassNetworkListener: Failed to end guest pass session.", v13, 2u);
    MEMORY[0x23EEE5480](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_23D607684(uint64_t a1)
{
  v2 = sub_23D60C220();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = sub_23D60C1D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_280D9E8E8);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = *(v3 + 16);
  v15(v8, a1, v2);
  v16 = sub_23D60C1B0();
  v17 = sub_23D60C590();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v9;
    v19 = v18;
    v26 = swift_slowAlloc();
    v27 = v10;
    v30 = v26;
    *v19 = 136315138;
    v15(v29, v8, v2);
    v20 = sub_23D60C410();
    v22 = v21;
    (*(v3 + 8))(v8, v2);
    v23 = sub_23D609194(v20, v22, &v30);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_23D5FA000, v16, v17, "AXGuestPassNetworkListener: New listener state %s", v19, 0xCu);
    v24 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x23EEE5480](v24, -1, -1);
    MEMORY[0x23EEE5480](v19, -1, -1);

    return (*(v27 + 8))(v13, v28);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_23D607A1C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_23D609E00(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_23D609F3C(v3, v4);
    }

    else
    {
      v6 = sub_23D609EB8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_23D607AD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v4 = sub_23D60C1D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF4E8, &qword_23D60D458);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - v14;
  v16 = sub_23D60C3C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  sub_23D609C28(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_23D604F20(v15, &qword_27E2DF4E8, &qword_23D60D458);
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_280D9E8E8);
    swift_beginAccess();
    (*(v5 + 16))(v9, v24, v4);

    v25 = sub_23D60C1B0();
    v26 = sub_23D60C590();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = v28;
      *v27 = 136315138;
      v29 = sub_23D60C2C0();
      v31 = sub_23D609194(v29, v30, &v52);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_23D5FA000, v25, v26, "AXGuestPassNetworkConnection: sent device class to %s! Will not wait for guest pass data message.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x23EEE5480](v28, -1, -1);
      MEMORY[0x23EEE5480](v27, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return sub_23D6080F8();
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v33 = v4;
    v34 = __swift_project_value_buffer(v4, qword_280D9E8E8);
    swift_beginAccess();
    v35 = v5;
    (*(v5 + 16))(v11, v34, v33);
    v36 = *(v17 + 16);
    v36(v21, v23, v16);
    v37 = sub_23D60C1B0();
    LODWORD(v51) = sub_23D60C580();
    if (os_log_type_enabled(v37, v51))
    {
      v38 = swift_slowAlloc();
      v49 = v37;
      v39 = v38;
      v47 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v39 = 136315394;
      *(v39 + 4) = sub_23D609194(0xD000000000000014, 0x800000023D60D8A0, &v52);
      *(v39 + 12) = 2112;
      sub_23D609C98();
      swift_allocError();
      v48 = v33;
      v36(v40, v21, v16);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v17 + 8);
      v42(v21, v16);
      *(v39 + 14) = v41;
      v43 = v47;
      *v47 = v41;
      v44 = v49;
      _os_log_impl(&dword_23D5FA000, v49, v51, "AXGuestPassNetworkConnection: %s %@", v39, 0x16u);
      sub_23D604F20(v43, &unk_27E2DF3E0, &qword_23D60D460);
      MEMORY[0x23EEE5480](v43, -1, -1);
      v45 = v50;
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x23EEE5480](v45, -1, -1);
      MEMORY[0x23EEE5480](v39, -1, -1);

      (*(v35 + 8))(v11, v48);
    }

    else
    {

      v42 = *(v17 + 8);
      v42(v21, v16);
      (*(v35 + 8))(v11, v33);
    }

    return (v42)(v23, v16);
  }
}

uint64_t sub_23D6080F8()
{
  v1 = sub_23D60C1D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connection);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    swift_retain_n();

    sub_23D60C310();
  }

  else
  {
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v1, qword_280D9E8E8);
    swift_beginAccess();
    (*(v2 + 16))(v5, v10, v1);
    v11 = sub_23D60C1B0();
    v12 = sub_23D60C580();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23D5FA000, v11, v12, "AXGuestPassNetworkListener: No Connection", v13, 2u);
      MEMORY[0x23EEE5480](v13, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

void sub_23D608368(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2 >> 60 == 15)
    {
LABEL_28:

      return;
    }

    v6 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_27;
      }

      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
LABEL_13:
        sub_23D60544C(a1, a2);
        if (v9 == 8)
        {
LABEL_14:
          v10 = a1;
          if (v6)
          {
            if (v6 == 2)
            {
              v11 = *(a1 + 16);
              v12 = sub_23D60C0D0();
              if (!v12)
              {
LABEL_35:
                sub_23D60C0E0();
LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

              v13 = v12;
              v14 = sub_23D60C0F0();
              if (__OFSUB__(v11, v14))
              {
                goto LABEL_33;
              }

              v15 = (v11 - v14 + v13);
              sub_23D60C0E0();
              if (!v15)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (a1 > a1 >> 32)
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

              v16 = sub_23D60C0D0();
              if (!v16)
              {
LABEL_37:
                sub_23D60C0E0();
                __break(1u);
                goto LABEL_38;
              }

              v17 = v16;
              v18 = sub_23D60C0F0();
              if (__OFSUB__(a1, v18))
              {
                goto LABEL_34;
              }

              v15 = (a1 - v18 + v17);
              sub_23D60C0E0();
              if (!v15)
              {
LABEL_38:
                __break(1u);
                return;
              }
            }

            v10 = *v15;
          }

          v19 = bswap64(v10);
          if ((v19 & 0x8000000000000000) == 0)
          {
            v20 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v21 = swift_allocObject();
            *(v21 + 16) = v20;
            *(v21 + 24) = v19;

            sub_23D60C310();

            goto LABEL_27;
          }

          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_27:
        sub_23D604A88(a1, a2);
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v6)
    {
      if (BYTE6(a2) != 8)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_31;
    }

    v9 = HIDWORD(a1) - a1;
    goto LABEL_13;
  }
}

void sub_23D608590(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37[-v12];
  v14 = sub_23D60C1D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2 >> 60 == 15)
    {
      goto LABEL_22;
    }

    v21 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        if ((a7 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v22 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
LABEL_13:
        sub_23D60544C(a1, a2);
        if ((a7 & 0x8000000000000000) == 0)
        {
LABEL_14:
          if (v22 == a7)
          {
            if (qword_280D9E8E0 != -1)
            {
              swift_once();
            }

            v25 = __swift_project_value_buffer(v14, qword_280D9E8E8);
            swift_beginAccess();
            (*(v15 + 16))(v18, v25, v14);
            sub_23D60544C(a1, a2);
            a7 = sub_23D60C1B0();
            v26 = sub_23D60C590();
            if (!os_log_type_enabled(a7, v26))
            {
              goto LABEL_25;
            }

            v27 = swift_slowAlloc();
            *v27 = 134217984;
            if (v21 > 1)
            {
              if (v21 != 2)
              {
                v28 = 0;
                goto LABEL_33;
              }

              v30 = *(a1 + 16);
              v29 = *(a1 + 24);
              v31 = __OFSUB__(v29, v30);
              v28 = v29 - v30;
              if (!v31)
              {
                goto LABEL_33;
              }

              __break(1u);
            }

            else if (!v21)
            {
              v28 = BYTE6(a2);
LABEL_33:
              *(v27 + 4) = v28;
              v32 = v27;
              sub_23D604A88(a1, a2);
              _os_log_impl(&dword_23D5FA000, a7, v26, "AXGuestPassNetworkListener: Retrieved data... %ld bytes", v32, 0xCu);
              MEMORY[0x23EEE5480](v32, -1, -1);
              goto LABEL_34;
            }

            LODWORD(v28) = HIDWORD(a1) - a1;
            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v28 = v28;
              goto LABEL_33;
            }

LABEL_37:
            __break(1u);
            return;
          }

          sub_23D604A88(a1, a2);
LABEL_22:

          return;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        sub_23D604A88(a1, a2);
LABEL_34:

        (*(v15 + 8))(v18, v14);
        v33 = sub_23D60C4D0();
        (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
        sub_23D60C4B0();
        sub_23D60544C(a1, a2);
        v34 = sub_23D60C4A0();
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D85700];
        v35[2] = v34;
        v35[3] = v36;
        v35[4] = a1;
        v35[5] = a2;
        sub_23D5FE148(0, 0, v13, &unk_23D60D470, v35);

        sub_23D604A88(a1, a2);

        return;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(a2);
      if (a7 < 0)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v22 = HIDWORD(a1) - a1;
    goto LABEL_13;
  }
}

uint64_t sub_23D608994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_23D60C1D0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_23D60C4B0();
  v5[10] = sub_23D60C4A0();
  v10 = sub_23D60C470();
  v5[11] = v10;
  v5[12] = v9;

  return MEMORY[0x2822009F8](sub_23D608A88, v10, v9);
}

uint64_t sub_23D608A88()
{
  if (qword_280D9E900 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_23D608B58;
  v3 = v0[5];
  v2 = v0[6];

  return AXGuestPassService.beginGuestPassSession(with:)(v3, v2);
}

uint64_t sub_23D608B58()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_23D608CFC;
  }

  else
  {
    v7 = sub_23D608C94;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23D608C94()
{
  v1 = v0[10];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23D608CFC()
{
  v1 = v0[10];

  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = __swift_project_value_buffer(v5, qword_280D9E8E8);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_23D60C1B0();
  v9 = sub_23D60C580();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23D5FA000, v8, v9, "Error beginning guest pass session after retrieving data: %@", v12, 0xCu);
    sub_23D604F20(v13, &unk_27E2DF3E0, &qword_23D60D460);
    MEMORY[0x23EEE5480](v13, -1, -1);
    MEMORY[0x23EEE5480](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

id AXGuestPassNetworkListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXGuestPassNetworkListener.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_listener] = 0;
  *&v0[OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connection] = 0;
  v2 = OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_connectionState;
  v3 = *MEMORY[0x277CD8DD8];
  v4 = sub_23D60C2F0();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  *&v0[OBJC_IVAR____TtC19AXGuestPassServices26AXGuestPassNetworkListener_data] = xmmword_23D60D3A0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AXGuestPassNetworkListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D609194(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D609414(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23D6040DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t type metadata accessor for AXGuestPassNetworkListener()
{
  result = qword_27E2DF4A8;
  if (!qword_27E2DF4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D6092BC()
{
  result = sub_23D60C2F0();
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

uint64_t sub_23D609368()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D605858;

  return sub_23D607198();
}

unint64_t sub_23D609414(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D609520(a5, a6);
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
    result = sub_23D60C610();
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

uint64_t sub_23D609520(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D60956C(a1, a2);
  sub_23D60969C(&unk_284FA80E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D60956C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23D609788(v5, 0);
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

  result = sub_23D60C610();
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
        v10 = sub_23D60C450();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D609788(v10, 0);
        result = sub_23D60C5F0();
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

uint64_t sub_23D60969C(uint64_t result)
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

  result = sub_23D6097FC(result, v12, 1, v3);
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

void *sub_23D609788(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF4F8, &qword_23D60D478);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D6097FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF4F8, &qword_23D60D478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23D6098F0(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_23D60C140();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_23D609A28(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23D609A28(uint64_t a1, uint64_t a2)
{
  result = sub_23D60C0D0();
  if (!result || (result = sub_23D60C0F0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23D60C0E0();
      return sub_23D60C140();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23D609ABC()
{
  result = qword_27E2DF4D0;
  if (!qword_27E2DF4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DF4C8, &qword_23D60D448);
    sub_23D609B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DF4D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_23D609B90()
{
  result = qword_27E2DF4D8;
  if (!qword_27E2DF4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DF4E0, &qword_23D60D450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DF4D8);
  }

  return result;
}

uint64_t sub_23D609C0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23D60544C(a1, a2);
  }

  return a1;
}

uint64_t sub_23D609C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF4E8, &qword_23D60D458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D609C98()
{
  result = qword_27E2DF4F0;
  if (!qword_27E2DF4F0)
  {
    sub_23D60C3C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DF4F0);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23D609D30(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_23D608368(a1, a2);
}

uint64_t sub_23D609D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D603084;

  return sub_23D608994(a1, v4, v5, v7, v6);
}

uint64_t sub_23D609E00(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23D609EB8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_23D60C100();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_23D60C0C0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23D609F3C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_23D60C100();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_23D60C0C0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23D60C130();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

id sub_23D609FBC()
{
  result = [objc_allocWithZone(type metadata accessor for AXGuestPassAssertionManager()) init];
  qword_27E2DF500 = result;
  return result;
}

id AXGuestPassAssertionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXGuestPassAssertionManager.shared.getter()
{
  if (qword_27E2DF2B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27E2DF500;

  return v0;
}

void static AXGuestPassAssertionManager.shared.setter(uint64_t a1)
{
  if (qword_27E2DF2B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E2DF500;
  qword_27E2DF500 = a1;
}

uint64_t (*static AXGuestPassAssertionManager.shared.modify())()
{
  if (qword_27E2DF2B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_23D60A1AC@<X0>(void *a1@<X8>)
{
  if (qword_27E2DF2B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E2DF500;
  *a1 = qword_27E2DF500;

  return v2;
}

void sub_23D60A238(id *a1)
{
  v1 = qword_27E2DF2B0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27E2DF500;
  qword_27E2DF500 = v2;
}

void sub_23D60A2C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23D60C1D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = aBlock - v14;
  v16 = OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_activeAction;
  v17 = *(v4 + OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_activeAction);
  if (v17)
  {
    if ([v17 isValid])
    {
      if (qword_280D9E8E0 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v8, qword_280D9E8E8);
      swift_beginAccess();
      (*(v9 + 16))(v13, v18, v8);
      v19 = sub_23D60C1B0();
      v20 = sub_23D60C580();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23D5FA000, v19, v20, "Tried to take out an accept gesture assertion when one is already active, invalidating", v21, 2u);
        MEMORY[0x23EEE5480](v21, -1, -1);
      }

      (*(v9 + 8))(v13, v8);
      [a1 invalidate];
      return;
    }

    v22 = *(v4 + v16);
  }

  else
  {
    v22 = 0;
  }

  *(v4 + v16) = a1;
  v23 = a1;

  v24 = *(v4 + OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_listener);
  AXGuestPassNetworkListener.listen()();

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = a2;
  v26[4] = a3;
  aBlock[4] = sub_23D60A94C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D5FD164;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);
  sub_23D5FBBCC(a2);

  [v23 setNullificationHandler_];
  _Block_release(v27);
  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v8, qword_280D9E8E8);
  swift_beginAccess();
  (*(v9 + 16))(v15, v28, v8);
  v29 = sub_23D60C1B0();
  v30 = sub_23D60C590();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_23D5FA000, v29, v30, "Received guest pass gesture assertion, installing recognizer in SB", v31, 2u);
    MEMORY[0x23EEE5480](v31, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  v32 = [objc_opt_self() server];
  [v32 installGuestPassAcceptDialogGesture];
}

void sub_23D60A718(uint64_t a1, void (*a2)(void))
{
  v3 = sub_23D60C1D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_activeAction];
    *&Strong[OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_activeAction] = 0;
  }

  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_280D9E8E8);
  swift_beginAccess();
  (*(v4 + 16))(v7, v10, v3);
  v11 = sub_23D60C1B0();
  v12 = sub_23D60C590();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23D5FA000, v11, v12, "Assertion invalidated, removing gesture handler in SB", v13, 2u);
    MEMORY[0x23EEE5480](v13, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v14 = [objc_opt_self() server];
  [v14 removeGuestPassAcceptDialogGesture];

  if (a2)
  {
    a2();
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23D60A970()
{
  v1 = sub_23D60C1D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_activeAction);
  if (v6)
  {
    v7 = v6;
    if ([v7 canSendResponse])
    {
      v8 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
      [v8 setFlag:1 forSetting:5000];
      v14 = [objc_opt_self() responseWithInfo_];
      [v7 sendResponse_];

      v9 = v14;

      return;
    }
  }

  if (qword_280D9E8E0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v1, qword_280D9E8E8);
  swift_beginAccess();
  (*(v2 + 16))(v5, v10, v1);
  v11 = sub_23D60C1B0();
  v12 = sub_23D60C580();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23D5FA000, v11, v12, "Got a gesture fired event, but there was no action to receive it", v13, 2u);
    MEMORY[0x23EEE5480](v13, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

id AXGuestPassAssertionManager.init()()
{
  *&v0[OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_activeAction] = 0;
  v1 = OBJC_IVAR____TtC19AXGuestPassServices27AXGuestPassAssertionManager_listener;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for AXGuestPassNetworkListener()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXGuestPassAssertionManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AXGuestPassAssertionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXGuestPassAssertionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *AXGuestPassAcceptGestureAssertion.init(gestureFiredHandler:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_invalidated] = 0;
  *&v2[OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_monitorGestureAction] = 0;
  v3 = &v2[OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_gestureFiredHandler];
  *v3 = a1;
  v3[1] = a2;
  v33.receiver = v2;
  v33.super_class = type metadata accessor for AXGuestPassAcceptGestureAssertion();

  v4 = objc_msgSendSuper2(&v33, sel_init);
  v5 = objc_allocWithZone(type metadata accessor for AXGuestPassMonitorAcceptGestureAction());
  v6 = v4;
  v7 = sub_23D60B8D8(v6);
  v8 = OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_monitorGestureAction;
  v9 = *&v6[OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_monitorGestureAction];
  *&v6[OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_monitorGestureAction] = v7;

  v10 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2E8, &qword_23D60D110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D60D390;
  v12 = *MEMORY[0x277D0ABD0];
  v27 = sub_23D60C400();
  v28 = v13;
  sub_23D60C5E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF540, &qword_23D60D4C8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23D60D0A0;
  v15 = *&v6[v8];
  *(v14 + 32) = v15;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DF548, &unk_23D60D4D0);
  *(inited + 72) = v14;
  v16 = *MEMORY[0x277D0ABF0];
  v27 = sub_23D60C400();
  v28 = v17;
  v18 = v15;
  sub_23D60C5E0();
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  sub_23D6045A4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2F0, &qword_23D60D118);
  swift_arrayDestroy();
  v19 = sub_23D60C3D0();

  v20 = [objc_opt_self() optionsWithDictionary_];

  if (v10)
  {
    v21 = v10;
    v22 = sub_23D60C3F0();
    v23 = swift_allocObject();
    *(v23 + 16) = v10;
    v31 = sub_23D60BF28;
    v32 = v23;
    v27 = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_23D60B688;
    v30 = &block_descriptor_1;
    v24 = _Block_copy(&v27);
    v25 = v21;

    [v25 openApplication:v22 withOptions:v20 completion:v24];

    _Block_release(v24);
    v20 = v25;
  }

  else
  {

    v22 = v6;
  }

  return v6;
}

uint64_t sub_23D60B204(uint64_t a1, void *a2)
{
  v4 = sub_23D60C1D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  if (a1)
  {
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_280D9E8E8);
    swift_beginAccess();
    (*(v5 + 16))(v14, v15, v4);
    v16 = sub_23D60C1B0();
    v17 = sub_23D60C590();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23D5FA000, v16, v17, "Successfully acquired guest pass accept gesture assertion.", v18, 2u);
      MEMORY[0x23EEE5480](v18, -1, -1);
    }

    v9 = v14;
  }

  else if (a2 && (v31[1] = a2, v19 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF5D0, &qword_23D60D250), sub_23D60BFC0(), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v31[0];
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_280D9E8E8);
    swift_beginAccess();
    (*(v5 + 16))(v9, v21, v4);
    v22 = v20;
    v16 = sub_23D60C1B0();
    v23 = sub_23D60C590();

    if (os_log_type_enabled(v16, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v22;
      *v25 = v22;
      v26 = v22;
      _os_log_impl(&dword_23D5FA000, v16, v23, "Failed to get accept gesture assertion with error:%@", v24, 0xCu);
      sub_23D60C00C(v25);
      MEMORY[0x23EEE5480](v25, -1, -1);
      MEMORY[0x23EEE5480](v24, -1, -1);
    }

    else
    {
      v26 = v16;
      v16 = v22;
    }
  }

  else
  {
    if (qword_280D9E8E0 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, qword_280D9E8E8);
    swift_beginAccess();
    (*(v5 + 16))(v12, v27, v4);
    v16 = sub_23D60C1B0();
    v28 = sub_23D60C590();
    if (os_log_type_enabled(v16, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23D5FA000, v16, v28, "Failed to get accept gesture assertion", v29, 2u);
      MEMORY[0x23EEE5480](v29, -1, -1);
    }

    v9 = v12;
  }

  return (*(v5 + 8))(v9, v4);
}

void sub_23D60B688(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_23D60B714()
{
  *(v0 + OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_invalidated) = 1;
  v1 = OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_monitorGestureAction;
  v2 = *(v0 + OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_monitorGestureAction);
  if (v2)
  {
    [*(v2 + OBJC_IVAR____TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction_responder) annul];
    v3 = *(v0 + v1);
    if (v3)
    {

      [v3 invalidate];
    }
  }
}

id AXGuestPassAcceptGestureAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23D60B8D8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction_responder;
  *&v1[OBJC_IVAR____TtC19AXGuestPassServices37AXGuestPassMonitorAcceptGestureAction_responder] = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = ObjectType;
  aBlock[4] = sub_23D60C074;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D60BAFC;
  aBlock[3] = &block_descriptor_28;
  v6 = _Block_copy(aBlock);
  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 responderWithHandler_];
  _Block_release(v6);

  v10 = *&v1[v4];
  *&v1[v4] = v9;

  v11 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v12 = *&v1[v4];
  v16.receiver = v1;
  v16.super_class = type metadata accessor for AXGuestPassMonitorAcceptGestureAction();
  v13 = v12;
  v14 = objc_msgSendSuper2(&v16, sel_initWithInfo_responder_, v11, v13);

  return v14;
}

void sub_23D60BA58(void *a1, uint64_t a2)
{
  v3 = [a1 info];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLForSetting_];

    if (v5)
    {
      v6 = a2 + OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_gestureFiredHandler;
      v7 = *(a2 + OBJC_IVAR____TtC19AXGuestPassServices33AXGuestPassAcceptGestureAssertion_gestureFiredHandler);
      v8 = *(v6 + 8);

      v7(v9);
    }
  }
}

void sub_23D60BAFC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id AXGuestPassMonitorAcceptGestureAction.__allocating_init(info:responder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

id AXGuestPassMonitorAcceptGestureAction.__allocating_init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_23D60BAFC;
    v13[3] = &block_descriptor_3;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithInfo:a1 timeout:a2 forResponseOnQueue:v10 withHandler:a5];
  _Block_release(v10);

  return v11;
}

id sub_23D60BEE0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D60BFC0()
{
  result = qword_27E2DF5D8;
  if (!qword_27E2DF5D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2DF5D8);
  }

  return result;
}

uint64_t sub_23D60C00C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DF3E0, &qword_23D60D460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}