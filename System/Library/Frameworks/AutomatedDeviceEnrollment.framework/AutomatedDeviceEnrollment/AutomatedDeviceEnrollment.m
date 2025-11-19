uint64_t sub_236DE65D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();
}

uint64_t sub_236DE6650(uint64_t a1, uint64_t a2, int a3)
{
  v38 = a3;
  v36 = a1;
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84350, &qword_236DEF050);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v33 - v6;
  v7 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for AddDevicesExtensionStatus(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = type metadata accessor for AutomatedDeviceEnrollmentAdditionExtensionTerminal(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = sub_236DEE918();
  (*(*(v25 - 8) + 56))(v20, 1, 4, v25);
  sub_236DE8BEC(v20, v18, type metadata accessor for AddDevicesExtensionStatus);
  sub_236DEE558();
  sub_236DE8C54(v20, type metadata accessor for AddDevicesExtensionStatus);
  v26 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_addDevicesExtensionIdentity;
  v27 = sub_236DEE4E8();
  (*(*(v27 - 8) + 56))(v24 + v26, 1, 1, v27);
  *(v24 + OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_extensionXPCConnection) = 0;
  *(v3 + 16) = v24;
  if (MEMORY[0x277D84F90] >> 62 && sub_236DEE988())
  {
    v28 = sub_236DE92AC(MEMORY[0x277D84F90]);
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  *(v3 + 24) = v28;
  v29 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment46AddDevicesToAutomatedDeviceEnrollmentViewModel__viewTypeToPresent;
  swift_storeEnumTagMultiPayload();
  sub_236DE8BEC(v13, v11, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  v30 = v33;
  sub_236DEE558();
  sub_236DE8C54(v13, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  (*(v34 + 32))(v3 + v29, v30, v35);
  v31 = v37;
  *(v3 + 32) = v36;
  *(v3 + 40) = v31;
  *(v3 + 48) = v38 & 1;
  return v3;
}

uint64_t sub_236DE69B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84300, &qword_236DEEFA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84310, &qword_236DEF020);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84318, &qword_236DEF028);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84320, &unk_236DEF030);
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v27);
  v17 = &v26 - v16;
  v18 = *(v0 + 16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84328, &unk_236DEF190);
  sub_236DEE568();
  swift_endAccess();
  sub_236DE9078();
  v19 = sub_236DEE8F8();
  v29 = v19;
  v20 = sub_236DEE8E8();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_236DE9170(&qword_27DE84338, &qword_27DE84318, &qword_236DEF028);
  sub_236DE9540(&qword_27DE84340, sub_236DE9078);
  sub_236DEE5A8();
  sub_236DE910C(v8, &qword_27DE84310, &qword_236DEF020);

  (*(v10 + 8))(v13, v9);
  sub_236DE9170(&qword_27DE84348, &qword_27DE84320, &unk_236DEF030);

  v21 = v27;
  sub_236DEE5B8();

  (*(v14 + 8))(v17, v21);
  swift_beginAccess();
  sub_236DEE528();
  swift_endAccess();

  v22 = sub_236DEE898();
  v23 = v28;
  (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v1;

  sub_236DE7400(0, 0, v23, &unk_236DEF048, v24);
}

uint64_t sub_236DE6E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(sub_236DEE3F8() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = *(*(sub_236DEE7F8() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v4[6] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236DE6F44, 0, 0);
}

uint64_t sub_236DE6F44()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_236DE6FD8;

  return sub_236DE96E8();
}

uint64_t sub_236DE6FD8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236DE713C, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];
    v6 = v3[4];
    v7 = v3[5];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_236DE713C()
{
  v26 = v0;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_236DEE518();
  __swift_project_value_buffer(v2, qword_27DE84780);
  MEMORY[0x2383BDD70](v1);
  v3 = sub_236DEE4F8();
  v4 = sub_236DEE8C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    MEMORY[0x2383BDD70](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84308, &qword_236DEF018);
    v8 = sub_236DEE838();
    v10 = sub_236DEB998(v8, v9, &v25);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_236DE5000, v3, v4, "queryExtensionAndSetupConfiguration failed with error '%s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2383BDE90](v7, -1, -1);
    MEMORY[0x2383BDE90](v6, -1, -1);
  }

  v11 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[3];
  v17 = v0[4];
  sub_236DEE7E8();
  sub_236DEE3E8();
  *v12 = sub_236DEE828();
  v12[1] = v18;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DE8BEC(v12, v13, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  sub_236DEE588();

  sub_236DE8C54(v12, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  v20 = v0[7];
  v19 = v0[8];
  v22 = v0[4];
  v21 = v0[5];

  v23 = v0[1];

  return v23();
}

uint64_t sub_236DE7400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84300, &qword_236DEEFA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_236DE8E60(a3, v26 - v10);
  v12 = sub_236DEE898();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_236DE910C(v11, &qword_27DE84300, &qword_236DEEFA0);
  }

  else
  {
    sub_236DEE888();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_236DEE868();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_236DEE848() + 32;
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

      sub_236DE910C(a3, &qword_27DE84300, &qword_236DEEFA0);

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

  sub_236DE910C(a3, &qword_27DE84300, &qword_236DEEFA0);
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

uint64_t sub_236DE76F0(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_236DEE3F8() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_236DEE7F8() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84300, &qword_236DEEFA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v56 = &v52 - v10;
  v11 = sub_236DEE918();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  (MEMORY[0x28223BE20])();
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v15 = *(*(v59 - 8) + 64);
  v16 = (MEMORY[0x28223BE20])();
  v61 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v52 - v18);
  v20 = type metadata accessor for AddDevicesExtensionStatus(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v52 - v27;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v29 = sub_236DEE518();
  __swift_project_value_buffer(v29, qword_27DE84780);
  v60 = a1;
  sub_236DE8BEC(a1, v28, type metadata accessor for AddDevicesExtensionStatus);
  v30 = sub_236DEE4F8();
  v31 = sub_236DEE8B8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = v6;
    v33 = v32;
    v34 = swift_slowAlloc();
    v54 = v11;
    v35 = v34;
    v62[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_236DEB998(0xD000000000000028, 0x8000000236DEF5F0, v62);
    *(v33 + 12) = 2080;
    v53 = v12;
    v36 = v19;
    v37 = v2;
    sub_236DE8BEC(v28, v26, type metadata accessor for AddDevicesExtensionStatus);
    v38 = sub_236DEE838();
    v40 = v39;
    sub_236DE8C54(v28, type metadata accessor for AddDevicesExtensionStatus);
    v41 = sub_236DEB998(v38, v40, v62);

    *(v33 + 14) = v41;
    v2 = v37;
    v19 = v36;
    v12 = v53;
    _os_log_impl(&dword_236DE5000, v30, v31, "%s extension status updated to %s", v33, 0x16u);
    swift_arrayDestroy();
    v42 = v35;
    v11 = v54;
    MEMORY[0x2383BDE90](v42, -1, -1);
    MEMORY[0x2383BDE90](v33, -1, -1);
  }

  else
  {

    sub_236DE8C54(v28, type metadata accessor for AddDevicesExtensionStatus);
  }

  v43 = v58;
  sub_236DE8BEC(v60, v58, type metadata accessor for AddDevicesExtensionStatus);
  v44 = (*(v12 + 48))(v43, 4, v11);
  if ((v44 - 1) < 2)
  {
    goto LABEL_9;
  }

  if ((v44 - 3) < 2)
  {
    sub_236DEE7E8();
    sub_236DEE3E8();
    *v19 = sub_236DEE828();
    v19[1] = v45;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_236DE8BEC(v19, v61, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

    sub_236DEE588();
    return sub_236DE8C54(v19, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  }

  v47 = v55;
  (*(v12 + 32))(v55, v43, v11);
  (*(v12 + 16))(v19, v47, v11);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v48 = v12;
  swift_getKeyPath();
  sub_236DE8BEC(v19, v61, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  sub_236DEE588();
  sub_236DE8C54(v19, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  v49 = sub_236DEE898();
  v50 = v56;
  (*(*(v49 - 8) + 56))(v56, 1, 1, v49);
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v2;

  sub_236DE7400(0, 0, v50, &unk_236DEEFF8, v51);

  return (*(v48 + 8))(v47, v11);
}

uint64_t sub_236DE7E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(sub_236DEE3F8() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = *(*(sub_236DEE7F8() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v4[6] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236DE7F4C, 0, 0);
}

uint64_t sub_236DE7F4C()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_236DE7FE8;
  v3 = *(v0 + 24);

  return sub_236DEA334(v3);
}

uint64_t sub_236DE7FE8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236DE814C, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];
    v6 = v3[4];
    v7 = v3[5];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_236DE814C()
{
  v26 = v0;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_236DEE518();
  __swift_project_value_buffer(v2, qword_27DE84780);
  MEMORY[0x2383BDD70](v1);
  v3 = sub_236DEE4F8();
  v4 = sub_236DEE8C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    MEMORY[0x2383BDD70](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84308, &qword_236DEF018);
    v8 = sub_236DEE838();
    v10 = sub_236DEB998(v8, v9, &v25);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_236DE5000, v3, v4, "setupXPCConnectionWithExtension failed with error '%s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2383BDE90](v7, -1, -1);
    MEMORY[0x2383BDE90](v6, -1, -1);
  }

  v11 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[3];
  v17 = v0[4];
  sub_236DEE7E8();
  sub_236DEE3E8();
  *v12 = sub_236DEE828();
  v12[1] = v18;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DE8BEC(v12, v13, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  sub_236DEE588();

  sub_236DE8C54(v12, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  v20 = v0[7];
  v19 = v0[8];
  v22 = v0[4];
  v21 = v0[5];

  v23 = v0[1];

  return v23();
}

uint64_t sub_236DE8410()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v4 = *(v0 + 4);
  v3 = *(v0 + 5);

  v5 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment46AddDevicesToAutomatedDeviceEnrollmentViewModel__viewTypeToPresent;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84350, &qword_236DEF050);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

void sub_236DE8500()
{
  sub_236DE85B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_236DE85B8()
{
  if (!qword_27DE842E0)
  {
    type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(255);
    v0 = sub_236DEE598();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE842E0);
    }
  }
}

uint64_t sub_236DE8630(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236DE8668@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel(0);
  result = sub_236DEE548();
  *a1 = result;
  return result;
}

uint64_t sub_236DE86A8()
{
  v1 = v0;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v2 = sub_236DEE518();
  __swift_project_value_buffer(v2, qword_27DE84780);
  v3 = sub_236DEE4F8();
  v4 = sub_236DEE8D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_236DEB998(0xD000000000000033, 0x8000000236DEF520, v10);
    _os_log_impl(&dword_236DE5000, v3, v4, "%s Dismissing extension UI", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2383BDE90](v6, -1, -1);
    MEMORY[0x2383BDE90](v5, -1, -1);
  }

  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v10[1] = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE842F8, &qword_236DEEF98);
  return sub_236DEE7B8();
}

uint64_t sub_236DE88B4()
{
  result = sub_236DEE918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_236DE89A8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_236DE8AA0;

  return v7(a1);
}

uint64_t sub_236DE8AA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_236DE8BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_236DE8C54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_236DE8CB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_236DE8D6C;

  return sub_236DE7E54(a1, v4, v5, v6);
}

uint64_t sub_236DE8D6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_236DE8E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84300, &qword_236DEEFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236DE8ED0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236DE8F08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236DE9590;

  return sub_236DE89A8(a1, v5);
}

uint64_t sub_236DE8FC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_236DE8D6C;

  return sub_236DE89A8(a1, v5);
}

unint64_t sub_236DE9078()
{
  result = qword_27DE84330;
  if (!qword_27DE84330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE84330);
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

uint64_t sub_236DE910C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_236DE9170(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_236DE91F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_236DE9590;

  return sub_236DE6E4C(a1, v4, v5, v6);
}

unint64_t sub_236DE92AC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_236DEE988();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84358, &qword_236DEF058);
      result = sub_236DEE948();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_236DEE988();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x2383BDB20](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_236DEE538();
    sub_236DE9540(&qword_27DE84360, MEMORY[0x277CBCDA8]);
    result = sub_236DEE7C8();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_236DE9540(&qword_27DE84368, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_236DEE7D8();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_236DE9540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_236DE9594()
{
  v0 = sub_236DEE518();
  __swift_allocate_value_buffer(v0, qword_27DE84780);
  __swift_project_value_buffer(v0, qword_27DE84780);
  return sub_236DEE508();
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

uint64_t sub_236DE9670()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();
}

uint64_t sub_236DE96E8()
{
  v1[6] = v0;
  v2 = *(*(sub_236DEE418() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v4 = sub_236DEE4E8();
  v1[9] = v4;
  v5 = *(v4 - 8);
  v1[10] = v5;
  v6 = *(v5 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_236DEE438();
  v1[14] = v7;
  v8 = *(v7 - 8);
  v1[15] = v8;
  v9 = *(v8 + 64) + 15;
  v1[16] = swift_task_alloc();
  v10 = sub_236DEE448();
  v1[17] = v10;
  v11 = *(v10 - 8);
  v1[18] = v11;
  v12 = *(v11 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v13 = sub_236DEE468();
  v1[21] = v13;
  v14 = *(v13 - 8);
  v1[22] = v14;
  v15 = *(v14 + 64) + 15;
  v1[23] = swift_task_alloc();
  v16 = *(*(type metadata accessor for AddDevicesExtensionStatus(0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236DE997C, 0, 0);
}

uint64_t sub_236DE997C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v17 = v0[19];
  v18 = v0[16];
  v7 = v0[6];
  v8 = sub_236DEE918();
  v0[26] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[27] = v10;
  v0[28] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v1, 2, 4, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEBF88(v1, v2);

  sub_236DEE588();
  sub_236DEBFEC(v1);
  sub_236DEE428();
  sub_236DEE458();
  (*(v5 + 16))(v17, v4, v6);
  sub_236DEC0A8(&qword_27DE843D0, MEMORY[0x277CC5D98]);
  sub_236DEE8A8();
  v11 = sub_236DEC0A8(&qword_27DE843D8, MEMORY[0x277CC5D88]);
  v12 = *(MEMORY[0x277D856D0] + 4);
  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_236DE9BC0;
  v14 = v0[16];
  v15 = v0[14];

  return MEMORY[0x282200308](v0 + 5, v15, v11);
}

uint64_t sub_236DE9BC0()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 240) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_236DEA20C;
  }

  else
  {
    v6 = sub_236DE9D30;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_236DE9D30()
{
  v56 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  if (!v1)
  {
    (*(v4 + 8))(v2, v3);
LABEL_9:
    v23 = *(v0 + 224);
    v24 = *(v0 + 200);
    v25 = *(v0 + 192);
    v26 = *(v0 + 48);
    (*(v0 + 216))(v24, 3, 4, *(v0 + 208));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_236DEBF88(v24, v25);

    sub_236DEE588();
    sub_236DEBFEC(v24);
    goto LABEL_12;
  }

  (*(v4 + 8))(v2, v3);
  if (!*(v1 + 16))
  {

    goto LABEL_9;
  }

  v5 = *(v0 + 80);
  v6 = *(v5 + 16);
  (v6)(*(v0 + 104), v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), *(v0 + 72));

  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v10 = sub_236DEE518();
  __swift_project_value_buffer(v10, qword_27DE84780);
  v53 = v6;
  (v6)(v8, v7, v9);
  v11 = sub_236DEE4F8();
  v12 = sub_236DEE8D8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v55 = v18;
    *v17 = 136315138;
    v19 = sub_236DEE4D8();
    v21 = v20;
    v51 = *(v16 + 8);
    v51(v14, v15);
    v22 = sub_236DEB998(v19, v21, &v55);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_236DE5000, v11, v12, "Add devices extension found with bundle identifier: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2383BDE90](v18, -1, -1);
    MEMORY[0x2383BDE90](v17, -1, -1);
  }

  else
  {

    v51 = *(v16 + 8);
    v51(v14, v15);
  }

  v48 = *(v0 + 216);
  v49 = *(v0 + 224);
  v27 = *(v0 + 200);
  v50 = *(v0 + 192);
  v45 = *(v0 + 104);
  v29 = *(v0 + 80);
  v28 = *(v0 + 88);
  v46 = v28;
  v47 = *(v0 + 208);
  v31 = *(v0 + 64);
  v30 = *(v0 + 72);
  v33 = *(v0 + 48);
  v32 = *(v0 + 56);
  v53(v31);
  (*(v29 + 56))(v31, 0, 1, v30);
  v34 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_addDevicesExtensionIdentity;
  swift_beginAccess();
  sub_236DEC0F0(v31, v33 + v34);
  swift_endAccess();
  (v53)(v46, v45, v30);
  sub_236DEE408();
  sub_236DEE908();
  v48(v27, 0, 4, v47);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEBF88(v27, v50);

  sub_236DEE588();
  sub_236DEBFEC(v27);
  v51(v45, v30);
LABEL_12:
  v35 = *(v0 + 192);
  v36 = *(v0 + 200);
  v37 = *(v0 + 160);
  v38 = *(v0 + 152);
  v39 = *(v0 + 128);
  v41 = *(v0 + 96);
  v40 = *(v0 + 104);
  v42 = *(v0 + 88);
  v52 = *(v0 + 64);
  v54 = *(v0 + 56);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_236DEA20C()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v14 = v0[8];
  v15 = v0[7];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];
  v10 = v0[30];

  return v9();
}

uint64_t sub_236DEA334(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_236DEE4C8();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = sub_236DEE498();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v10 = sub_236DEE4E8();
  v2[20] = v10;
  v11 = *(v10 - 8);
  v2[21] = v11;
  v12 = *(v11 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236DEA4FC, 0, 0);
}

uint64_t sub_236DEA4FC()
{
  v37 = v0;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v1 = sub_236DEE518();
  v0[24] = __swift_project_value_buffer(v1, qword_27DE84780);
  v2 = sub_236DEE4F8();
  v3 = sub_236DEE8D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v36 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_236DEB998(0xD000000000000026, 0x8000000236DEF7B0, &v36);
    _os_log_impl(&dword_236DE5000, v2, v3, "Begin %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x2383BDE90](v5, -1, -1);
    MEMORY[0x2383BDE90](v4, -1, -1);
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[11];
  v10 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_addDevicesExtensionIdentity;
  swift_beginAccess();
  sub_236DEB748(v9 + v10, v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_236DEB7B8(v0[19]);
    v11 = sub_236DEE4F8();
    v12 = sub_236DEE8C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_236DEB998(0xD000000000000026, 0x8000000236DEF7B0, &v36);
      _os_log_impl(&dword_236DE5000, v11, v12, "%s called when there is no extension identity", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2383BDE90](v14, -1, -1);
      MEMORY[0x2383BDE90](v13, -1, -1);
    }

    v16 = v0[22];
    v15 = v0[23];
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[17];
    v20 = v0[14];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v24 = v0[22];
    v23 = v0[23];
    v25 = v0[20];
    v26 = v0[21];
    v27 = v0[18];
    v29 = v0[16];
    v28 = v0[17];
    v30 = v0[15];
    v31 = v0[11];
    (*(v26 + 32))(v23, v0[19], v25);
    (*(v26 + 16))(v24, v23, v25);
    swift_allocObject();
    swift_weakInit();
    sub_236DEE478();
    sub_236DEE3D8();
    sub_236DEE488();
    (*(v29 + 16))(v28, v27, v30);
    v32 = *(MEMORY[0x277CC5DB0] + 4);
    v33 = swift_task_alloc();
    v0[25] = v33;
    *v33 = v0;
    v33[1] = sub_236DEA928;
    v34 = v0[17];
    v35 = v0[14];

    return MEMORY[0x282116960](v35, v34);
  }
}

uint64_t sub_236DEA928()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_236DEAF94;
  }

  else
  {
    v3 = sub_236DEAA3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236DEAA3C()
{
  v60 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = sub_236DEE4B8();
  if (v1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);
    (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
    (*(v7 + 8))(v5, v6);

    v11 = *(v0 + 8);
  }

  else
  {
    v12 = v3;
    v13 = *(v0 + 192);
    v14 = *(v0 + 80);
    v15 = objc_opt_self();
    v16 = [v15 interfaceWithProtocol_];
    [v12 setExportedInterface_];

    [v12 setExportedObject_];
    [v12 resume];
    v17 = sub_236DEE4F8();
    v18 = sub_236DEE8D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v59[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_236DEB998(0xD000000000000026, 0x8000000236DEF7B0, v59);
      _os_log_impl(&dword_236DE5000, v17, v18, "%s Successfully setup XPC connection to extension", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2383BDE90](v20, -1, -1);
      MEMORY[0x2383BDE90](v19, -1, -1);
    }

    v21 = *(v0 + 88);
    v22 = *(v21 + OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_extensionXPCConnection);
    *(v21 + OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_extensionXPCConnection) = v12;
    v23 = v12;

    v24 = [v15 interfaceWithProtocol_];
    [v23 setRemoteObjectInterface_];

    v25 = [v23 remoteObjectProxy];
    sub_236DEE938();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843C0, &qword_236DEF138);
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 168);
      v55 = *(v0 + 160);
      v57 = *(v0 + 184);
      v27 = *(v0 + 144);
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      v30 = *(v0 + 104);
      v31 = *(v0 + 112);
      v32 = *(v0 + 96);
      [*(v0 + 72) extensionLoaded];
      swift_unknownObjectRelease();

      (*(v30 + 8))(v31, v32);
      (*(v28 + 8))(v27, v29);
      (*(v26 + 8))(v57, v55);
    }

    else
    {
      v33 = *(v0 + 192);
      v34 = sub_236DEE4F8();
      v35 = sub_236DEE8C8();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 184);
      v38 = *(v0 + 160);
      v39 = *(v0 + 168);
      v40 = *(v0 + 128);
      v56 = *(v0 + 120);
      v58 = *(v0 + 144);
      v41 = *(v0 + 104);
      v54 = *(v0 + 112);
      v42 = *(v0 + 96);
      if (v36)
      {
        v53 = *(v0 + 184);
        v43 = swift_slowAlloc();
        v52 = v38;
        v44 = swift_slowAlloc();
        v59[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_236DEB998(0xD000000000000026, 0x8000000236DEF7B0, v59);
        _os_log_impl(&dword_236DE5000, v34, v35, "%s Unable to retrieve extension XPC proxy", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x2383BDE90](v44, -1, -1);
        MEMORY[0x2383BDE90](v43, -1, -1);

        (*(v41 + 8))(v54, v42);
        (*(v40 + 8))(v58, v56);
        (*(v39 + 8))(v53, v52);
      }

      else
      {

        (*(v41 + 8))(v54, v42);
        (*(v40 + 8))(v58, v56);
        (*(v39 + 8))(v37, v38);
      }
    }

    v46 = *(v0 + 176);
    v45 = *(v0 + 184);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    v49 = *(v0 + 136);
    v50 = *(v0 + 112);

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_236DEAF94()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  (*(v0[16] + 8))(v0[18], v0[15]);
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

void sub_236DEB080()
{
  v0 = type metadata accessor for AddDevicesExtensionStatus(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v7 = sub_236DEE518();
  __swift_project_value_buffer(v7, qword_27DE84780);
  v8 = sub_236DEE4F8();
  v9 = sub_236DEE8C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_236DE5000, v8, v9, "Extension connection got interrupted", v10, 2u);
    MEMORY[0x2383BDE90](v10, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = sub_236DEE918();
    (*(*(v11 - 8) + 56))(v6, 4, 4, v11);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_236DEBF88(v6, v4);
    sub_236DEE588();
    sub_236DEBFEC(v6);
  }

  else
  {
    v12 = sub_236DEE4F8();
    v13 = sub_236DEE8D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_236DE5000, v12, v13, "Extension terminal got deallocated before we could handle XPC connection interruption", v14, 2u);
      MEMORY[0x2383BDE90](v14, -1, -1);
    }
  }
}

uint64_t sub_236DEB2F4()
{
  v1 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal__extensionStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84328, &unk_236DEF190);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_236DEB7B8(v0 + OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_addDevicesExtensionIdentity);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_236DEB3E4()
{
  sub_236DEB534(319, &qword_27DE84398, type metadata accessor for AddDevicesExtensionStatus, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_236DEB534(319, &qword_27DE843A0, MEMORY[0x277CC5DC0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_236DEB534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_236DEB5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_236DEE918();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236DEB62C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_236DEE918();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_236DEB6B0()
{
  v0 = sub_236DEE918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_236DEB708@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AutomatedDeviceEnrollmentAdditionExtensionTerminal(0);
  result = sub_236DEE548();
  *a1 = result;
  return result;
}

uint64_t sub_236DEB748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236DEB7B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236DEB820(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();
}

uint64_t sub_236DEB89C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AddDevicesExtensionStatus(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_236DEBF88(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEBF88(v10, v8);

  sub_236DEE588();
  return sub_236DEBFEC(v10);
}

uint64_t sub_236DEB998(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_236DEBA64(v11, 0, 0, 1, a1, a2);
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
    sub_236DEC048(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_236DEBA64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_236DEBB70(a5, a6);
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
    result = sub_236DEE978();
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

uint64_t sub_236DEBB70(uint64_t a1, unint64_t a2)
{
  v4 = sub_236DEBBBC(a1, a2);
  sub_236DEBCEC(&unk_2849D09C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_236DEBBBC(uint64_t a1, unint64_t a2)
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

  v6 = sub_236DEBDD8(v5, 0);
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

  result = sub_236DEE978();
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
        v10 = sub_236DEE858();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_236DEBDD8(v10, 0);
        result = sub_236DEE958();
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

uint64_t sub_236DEBCEC(uint64_t result)
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

  result = sub_236DEBE4C(result, v12, 1, v3);
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

void *sub_236DEBDD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843C8, &qword_236DEF188);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_236DEBE4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843C8, &qword_236DEF188);
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

uint64_t sub_236DEBF40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236DEBF88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddDevicesExtensionStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236DEBFEC(uint64_t a1)
{
  v2 = type metadata accessor for AddDevicesExtensionStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236DEC048(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236DEC0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_236DEC0F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_236DEC174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_236DEC1BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_236DEC230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v65 = type metadata accessor for AddDevicesExtensionView();
  v3 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_236DEE918();
  v56 = *(v58 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843E8, &qword_236DEF258);
  v7 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v9 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843F0, &qword_236DEF260);
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v63 = &v52 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843F8, &qword_236DEF268);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v52 - v13;
  v60 = sub_236DEE658();
  v53 = *(v60 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v60);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84400, &qword_236DEF270);
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84408, &qword_236DEF278);
  v54 = *(v62 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = (&v52 - v22);
  v23 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = *v26;
      v29 = v26[1];
      v31 = sub_236DEE628();
      v79 = 1;
      sub_236DECC04(v30, v29, &v70);
      v84 = v74;
      v85 = v75;
      v86 = v76;
      v87 = v77;
      v80 = v70;
      v81 = v71;
      v82 = v72;
      v83 = v73;
      v88 = v70;
      v89 = v71;
      v90 = v72;
      v91 = v73;
      v92 = v74;
      v93 = v75;
      v94 = v76;
      v95 = v77;
      sub_236DED5C8(&v80, &v69, &qword_27DE84410, &qword_236DEF2C8);
      sub_236DE910C(&v88, &qword_27DE84410, &qword_236DEF2C8);

      *&v78[71] = v84;
      *&v78[87] = v85;
      *&v78[103] = v86;
      *&v78[7] = v80;
      *&v78[23] = v81;
      *&v78[39] = v82;
      v78[119] = v87;
      *&v78[55] = v83;
      LOBYTE(v29) = v79;
      v32 = sub_236DEE6F8();
      v33 = *&v78[80];
      *(v9 + 81) = *&v78[64];
      *(v9 + 97) = v33;
      *(v9 + 113) = *&v78[96];
      v34 = *&v78[16];
      *(v9 + 17) = *v78;
      *(v9 + 33) = v34;
      v35 = *&v78[48];
      *(v9 + 49) = *&v78[32];
      *v9 = v31;
      *(v9 + 1) = 0;
      v9[16] = v29;
      *(v9 + 129) = *&v78[112];
      *(v9 + 65) = v35;
      v9[144] = v32;
      *(v9 + 168) = 0u;
      *(v9 + 152) = 0u;
      v9[184] = 1;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84418, &qword_236DEF2D0);
      sub_236DED174();
      sub_236DED338();
      return sub_236DEE638();
    }

    else
    {
      sub_236DEE5C8();
      sub_236DEE648();
      v44 = sub_236DE9170(&qword_27DE84428, &qword_27DE84400, &qword_236DEF270);
      v45 = sub_236DED2F0(&qword_27DE84430, MEMORY[0x277CDE330]);
      v46 = v59;
      v47 = v60;
      sub_236DEE778();
      (*(v53 + 8))(v16, v47);
      (*(v52 + 8))(v20, v17);
      v48 = v54;
      v49 = v46;
      v50 = v62;
      (*(v54 + 16))(v63, v49, v62);
      swift_storeEnumTagMultiPayload();
      *&v88 = v17;
      *(&v88 + 1) = v47;
      *&v89 = v44;
      *(&v89 + 1) = v45;
      swift_getOpaqueTypeConformance2();
      sub_236DED2F0(&qword_27DE84438, type metadata accessor for AddDevicesExtensionView);
      v51 = v64;
      sub_236DEE638();
      sub_236DED3F0(v51, v9);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84418, &qword_236DEF2D0);
      sub_236DED174();
      sub_236DED338();
      sub_236DEE638();
      sub_236DED460(v51);
      return (*(v48 + 8))(v59, v50);
    }
  }

  else
  {
    v37 = v55;
    v38 = v56;
    v39 = v58;
    (*(v56 + 32))(v55, v26, v58);
    v40 = v57;
    (*(v38 + 16))(v57, v37, v39);
    v59 = type metadata accessor for AddDevicesExtensionView;
    sub_236DED650(v40, v63, type metadata accessor for AddDevicesExtensionView);
    swift_storeEnumTagMultiPayload();
    v41 = sub_236DE9170(&qword_27DE84428, &qword_27DE84400, &qword_236DEF270);
    v42 = sub_236DED2F0(&qword_27DE84430, MEMORY[0x277CDE330]);
    *&v88 = v17;
    *(&v88 + 1) = v60;
    *&v89 = v41;
    *(&v89 + 1) = v42;
    swift_getOpaqueTypeConformance2();
    sub_236DED2F0(&qword_27DE84438, type metadata accessor for AddDevicesExtensionView);
    v43 = v64;
    sub_236DEE638();
    sub_236DED3F0(v43, v9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84418, &qword_236DEF2D0);
    sub_236DED174();
    sub_236DED338();
    sub_236DEE638();
    sub_236DED460(v43);
    sub_236DED6B8(v40, v59);
    return (*(v38 + 8))(v37, v39);
  }
}

uint64_t sub_236DECC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84458, &qword_236DEF2E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v30 = sub_236DEE7A8();
  v10 = sub_236DEE728();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_236DEE738();
  sub_236DE910C(v9, &qword_27DE84458, &qword_236DEF2E0);
  KeyPath = swift_getKeyPath();
  LOBYTE(v9) = sub_236DEE708();
  v13 = sub_236DEE718();
  sub_236DEE718();
  if (sub_236DEE718() != v9)
  {
    v13 = sub_236DEE718();
  }

  v48 = 1;
  *&v37 = a1;
  *(&v37 + 1) = a2;
  sub_236DED520();

  v14 = sub_236DEE748();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = swift_getKeyPath();
  v22 = v30;
  *&v32 = v30;
  *(&v32 + 1) = KeyPath;
  v23 = v11;
  *&v33 = v11;
  BYTE8(v33) = v13;
  *(&v33 + 9) = v49[0];
  HIDWORD(v33) = *(v49 + 3);
  v35 = 0u;
  v34 = 0u;
  v36 = 1;
  LOBYTE(v41) = 1;
  v39 = 0u;
  v40 = 0u;
  v37 = v32;
  v38 = v33;
  v18 &= 1u;
  v31 = v18;
  v24 = v32;
  v25 = v33;
  v26 = v41;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = v24;
  *(a3 + 16) = v25;
  *(a3 + 64) = v26;
  *(a3 + 72) = v14;
  *(a3 + 80) = v16;
  *(a3 + 88) = v18;
  *(a3 + 96) = v20;
  *(a3 + 104) = v21;
  *(a3 + 112) = 1;
  v27 = v22;
  sub_236DED5C8(&v32, v42, &qword_27DE84468, &qword_236DEF348);
  sub_236DED630(v14, v16, v18);

  sub_236DED640(v14, v16, v18);

  v42[0] = v27;
  v42[1] = KeyPath;
  v42[2] = v23;
  v43 = v13;
  *v44 = v49[0];
  *&v44[3] = *(v49 + 3);
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  return sub_236DE910C(v42, &qword_27DE84468, &qword_236DEF348);
}

uint64_t sub_236DECF68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_236DEE628();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843E0, &qword_236DEF250);
  return sub_236DEC230(v6, a1 + *(v4 + 44));
}

uint64_t sub_236DECFD4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();
}

uint64_t sub_236DED054(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_236DED650(a1, &v13 - v9, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DED650(v10, v8, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  sub_236DEE588();
  return sub_236DED6B8(v10, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
}

unint64_t sub_236DED174()
{
  result = qword_27DE84420;
  if (!qword_27DE84420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE843F8, &qword_236DEF268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE84400, &qword_236DEF270);
    sub_236DEE658();
    sub_236DE9170(&qword_27DE84428, &qword_27DE84400, &qword_236DEF270);
    sub_236DED2F0(&qword_27DE84430, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    sub_236DED2F0(&qword_27DE84438, type metadata accessor for AddDevicesExtensionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84420);
  }

  return result;
}

uint64_t sub_236DED2F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_236DED338()
{
  result = qword_27DE84440;
  if (!qword_27DE84440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE84418, &qword_236DEF2D0);
    sub_236DE9170(&qword_27DE84448, &qword_27DE84450, &qword_236DEF2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84440);
  }

  return result;
}

uint64_t sub_236DED3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843F8, &qword_236DEF268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236DED460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843F8, &qword_236DEF268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236DED4C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_236DEE608();
  *a1 = result;
  return result;
}

uint64_t sub_236DED4F4(uint64_t *a1)
{
  v1 = *a1;

  return sub_236DEE618();
}

unint64_t sub_236DED520()
{
  result = qword_27DE84460;
  if (!qword_27DE84460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84460);
  }

  return result;
}

uint64_t sub_236DED574@<X0>(_BYTE *a1@<X8>)
{
  result = sub_236DEE5E8();
  *a1 = result;
  return result;
}

uint64_t sub_236DED5C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_236DED630(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_236DED640(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_236DED650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_236DED6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.automatedDeviceEnrollmentAddition(isPresented:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84480, &unk_236DEF360);
  sub_236DED96C();
  sub_236DEE798();
}

uint64_t sub_236DED858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();
  sub_236DE6650(a1, a2, a3);
  sub_236DEDAC0();
  v11 = sub_236DEE5D8();
  v13 = v12;

  sub_236DE69B8();

  result = sub_236DEE6F8();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v11;
  *(a4 + 32) = v13;
  *(a4 + 40) = result;
  return result;
}

uint64_t sub_236DED920()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

unint64_t sub_236DED96C()
{
  result = qword_27DE84488;
  if (!qword_27DE84488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE84480, &unk_236DEF360);
    sub_236DED9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84488);
  }

  return result;
}

unint64_t sub_236DED9F8()
{
  result = qword_27DE84490;
  if (!qword_27DE84490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84490);
  }

  return result;
}

uint64_t sub_236DEDA4C(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE84480, &unk_236DEF360);
  sub_236DED96C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_236DEDAC0()
{
  result = qword_27DE84498;
  if (!qword_27DE84498)
  {
    type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84498);
  }

  return result;
}

uint64_t sub_236DEDB2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_236DEE918();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_236DEDBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_236DEE918();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AddDevicesExtensionView()
{
  result = qword_27DE844A0;
  if (!qword_27DE844A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236DEDC68()
{
  result = sub_236DEE918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_236DEDD08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE844B8, &unk_236DEF450);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  type metadata accessor for LightContentStatusBarEXHostViewController();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_236DEE918();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, v0, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = v5;
  sub_236DEE928();

  return v8;
}

uint64_t sub_236DEDE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236DEDFD0(&qword_27DE844B0);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_236DEDF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236DEDFD0(&qword_27DE844B0);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_236DEDF8C()
{
  sub_236DEDFD0(&qword_27DE844B0);
  sub_236DEE6C8();
  __break(1u);
}

uint64_t sub_236DEDFD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddDevicesExtensionView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_236DEE014()
{
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v0 = sub_236DEE518();
  __swift_project_value_buffer(v0, qword_27DE84780);
  oslog = sub_236DEE4F8();
  v1 = sub_236DEE8D8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_236DEB998(0xD000000000000022, 0x8000000236DEF850, &v5);
    _os_log_impl(&dword_236DE5000, oslog, v1, "%s Nothing to do here yet", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x2383BDE90](v3, -1, -1);
    MEMORY[0x2383BDE90](v2, -1, -1);
  }
}

id sub_236DEE380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}