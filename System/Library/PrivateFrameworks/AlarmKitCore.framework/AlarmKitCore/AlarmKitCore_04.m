uint64_t sub_22D71E484()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_22D71E4E4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12AlarmKitCore6Daemon_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_22D71E57C;
}

void sub_22D71E57C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

uint64_t sub_22D71E7C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager);
  if (v3)
  {
    v4 = *(v3 + 216);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
    sub_22D72E600();
  }

  else
  {
    v6 = sub_22D72D730();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

id Daemon.init(workloop:standaloneMode:)(uint64_t a1, int a2)
{
  v25 = a2;
  v26 = a1;
  v27 = sub_22D72E5F0();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E5D0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22D72E370();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationManager] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationServer] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_appEventObserver] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_activityManager] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmServer] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_stateCaptureServer] = 0;
  v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue_isStarted] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_subscriptions] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_sigtermSource] = 0;
  v24 = OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue;
  v11 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v22 = "lock_restrictions";
  v23 = v11;
  sub_22D72E350();
  v29 = MEMORY[0x277D84F90];
  v21 = sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  v12 = *MEMORY[0x277D85268];
  v13 = v3 + 104;
  v14 = *(v3 + 104);
  v18 = v6;
  v19 = v13;
  v14(v6, v12, v27);
  *&v2[v24] = sub_22D72E620();
  v24 = OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue;
  sub_22D72E350();
  v29 = MEMORY[0x277D84F90];
  sub_22D72E6E0();
  v14(v18, v12, v27);
  *&v2[v24] = sub_22D72E620();
  v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_standaloneMode] = v25;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_workloop] = v26;
  v15 = type metadata accessor for Daemon();
  v28.receiver = v2;
  v28.super_class = v15;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_22D71ED88()
{
  v1 = v0;
  v2 = sub_22D72E300();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E370();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_15;
  }

  v11 = swift_unknownObjectRelease();
  v12 = *&v0[OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue];
  MEMORY[0x28223BE20](v11);
  result = sub_22D72E600();
  if (aBlock)
  {
    return result;
  }

  sub_22D71FAA0();
  v14 = *&v0[OBJC_IVAR____TtC12AlarmKitCore6Daemon_stateCaptureServer];
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_listener);
    if (v15)
    {
      [v15 activate];
      goto LABEL_6;
    }

    __break(1u);
LABEL_15:
    result = sub_22D72E860();
    __break(1u);
    return result;
  }

LABEL_6:
  v46 = v7;
  v47 = v3;
  v48 = v2;
  if (v0[OBJC_IVAR____TtC12AlarmKitCore6Daemon_standaloneMode] == 1)
  {
    v55 = nullsub_1;
    v56 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_22D727328;
    v54 = &block_descriptor_21;
    v16 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v12, v16);
    _Block_release(v16);
    sub_22D71F4AC();
  }

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  dispatch_group_enter(v17);
  v18 = *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationManager];
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    *(v19 + 24) = v17;
    v20 = __swift_project_boxed_opaque_existential_1((v18 + 48), *(v18 + 72));
    v21 = swift_allocObject();
    v45 = v6;
    v22 = v21;
    v21[2] = v18;
    v21[3] = sub_22D720358;
    v21[4] = v19;
    v23 = *v20;
    v24 = __swift_project_boxed_opaque_existential_1((*v20 + 16), *(*v20 + 40));
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = sub_22D720390;
    v25[4] = v22;
    v26 = *v24;
    swift_retain_n();
    v27 = v1;
    v28 = v17;

    sub_22D7237B0(sub_22D72039C, v25);

    v6 = v45;
  }

  v29 = *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager];
  if (v29)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v1;
    *(v30 + 24) = v17;
    v31 = __swift_project_boxed_opaque_existential_1((v29 + 176), *(v29 + 200));
    v32 = v6;
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = sub_22D723B70;
    v33[4] = v30;
    v34 = *v31;
    v35 = __swift_project_boxed_opaque_existential_1((v34 + 16), *(v34 + 40));
    v36 = swift_allocObject();
    v36[2] = v34;
    v36[3] = sub_22D723BA8;
    v36[4] = v33;
    v37 = *v35;
    swift_retain_n();
    v38 = v1;
    v39 = v17;

    sub_22D723FF4(sub_22D723BF4, v36);

    v6 = v32;
  }

  v40 = *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_workloop];
  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  v55 = sub_22D7244C4;
  v56 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22D6C0FD8;
  v54 = &block_descriptor_11;
  v42 = _Block_copy(&aBlock);
  v43 = v1;
  sub_22D72E330();
  v50 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  v44 = v48;
  sub_22D72E6E0();
  sub_22D72E5C0();
  _Block_release(v42);

  (*(v47 + 8))(v6, v44);
  (*(v49 + 8))(v10, v46);
}

void sub_22D71F48C(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue_isStarted);
  *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue_isStarted) = 1;
  *a1 = v3;
}

void sub_22D71F4AC()
{
  v1 = v0;
  v24 = sub_22D72E300();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D72E370();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72E310();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72DBF0();
  signal(15, v15);
  sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  (*(v11 + 104))(v14, *MEMORY[0x277D851C8], v10);
  v16 = sub_22D72E630();
  (*(v11 + 8))(v14, v10);
  sub_22D6FCE80(0, &unk_27D9FF730, 0x277D85CA0);
  v17 = v16;
  v18 = sub_22D72E640();

  v19 = OBJC_IVAR____TtC12AlarmKitCore6Daemon_sigtermSource;
  v20 = *(v1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_sigtermSource);
  *(v1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_sigtermSource) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  aBlock[4] = j__xpc_transaction_exit_clean;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_177;
  v21 = _Block_copy(aBlock);
  sub_22D6FCC1C();
  sub_22D6FCC20();
  sub_22D72E650();
  _Block_release(v21);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v5, v24);
  (*(v6 + 8))(v9, v23);
  if (*(v1 + v19))
  {
    v22 = *(v1 + v19);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22D72E680();
    swift_unknownObjectRelease();
  }
}

void sub_22D71F83C(uint64_t a1, dispatch_group_t group, void *a3, void (*a4)(void))
{
  v5 = *(a1 + *a3);
  if (v5)
  {
    v7 = v5;
    a4();
  }

  dispatch_group_leave(group);
}

uint64_t sub_22D71F89C(uint64_t a1)
{
  v2 = sub_22D72E1D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_activityManager))
  {
    v7 = *(a1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_activityManager);

    sub_22D6BA8D4();
    sub_22D6BAEF8();
  }

  v8 = *(a1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_appEventObserver);
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_applicationWorkspace];
    v10 = v8;
    [v9 addObserver_];
    sub_22D71A1A0();
  }

  v11 = objc_opt_self();
  sub_22D72E1B0();
  sub_22D72E1C0();
  (*(v3 + 8))(v6, v2);
  v12 = sub_22D72E480();

  v13 = [v11 activateManualDomain_];
  swift_unknownObjectRelease();

  sub_22D72E1A0();
  v14 = sub_22D72E4D0();

  notify_post((v14 + 32));
}

uint64_t sub_22D71FAA0()
{
  v1 = v0;
  type metadata accessor for MobileKeybagFirstLockStateProvider();
  swift_allocObject();
  v86 = sub_22D6FA19C();
  v2 = objc_allocWithZone(type metadata accessor for AppEventObserver());

  v3 = [v2 init];
  v4 = *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_appEventObserver];
  *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_appEventObserver] = v3;
  v5 = v3;

  v6 = type metadata accessor for Daemon();
  *(&v89 + 1) = v6;
  v90 = &off_2840CDD48;
  *&v88 = v1;
  type metadata accessor for AuthorizationPersistentStore();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(&v88, v6);
  v9 = *(v6 - 8);
  v81[1] = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v81 - v82);
  v81[0] = *(v9 + 16);
  (v81[0])(v81 - v82);
  v12 = *v11;
  v13 = v1;
  v85 = sub_22D72A164(v12, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  v14 = v5;

  v16 = sub_22D72B168(v15, v14);
  v17 = *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationManager];
  *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationManager] = v16;

  v18 = *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_workloop];
  *(&v89 + 1) = type metadata accessor for AuthorizationManager();
  v90 = &off_2840CCBF0;
  *&v88 = v16;
  v19 = objc_allocWithZone(type metadata accessor for AuthorizationServer());
  v20 = *(&v89 + 1);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = v18;

  v28 = v27;
  v29 = v18;
  v30 = sub_22D72ACF0(v26, v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  v31 = *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationServer];
  *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationServer] = v30;
  v84 = v30;

  *(&v89 + 1) = v6;
  v90 = &off_2840CDD70;
  *&v88 = v13;
  v32 = type metadata accessor for AlarmPersistentStore();
  v33 = swift_allocObject();
  v83 = v6;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(&v88, v6);
  MEMORY[0x28223BE20](v34);
  v35 = (v81 - v82);
  (v81[0])(v81 - v82);
  v36 = *v35;
  v37 = v13;
  v38 = sub_22D729E9C(v36, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v87[3] = v32;
  v87[4] = &off_2840CCE58;
  v87[0] = v38;
  type metadata accessor for ActivityManager();
  v39 = swift_allocObject();
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v32);
  v41 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (v81 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = *v43;

  v46 = sub_22D72BA04(v86, v45, &v88, 0, 1, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  v47 = *&v37[OBJC_IVAR____TtC12AlarmKitCore6Daemon_activityManager];
  *&v37[OBJC_IVAR____TtC12AlarmKitCore6Daemon_activityManager] = v46;
  swift_retain_n();

  v48 = v14;
  v82 = v48;

  v49 = sub_22D72B33C(v46, v48, v16, v38);
  v50 = *&v37[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager];
  *&v37[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager] = v49;

  *(&v89 + 1) = type metadata accessor for AlarmManager();
  v90 = &off_2840CC640;
  *&v88 = v49;
  v51 = objc_allocWithZone(type metadata accessor for AlarmServer());
  v52 = *(&v89 + 1);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
  v54 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v56 = (v81 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = *v56;

  v59 = v29;
  v60 = sub_22D72A85C(v58, v29, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  v61 = *&v37[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmServer];
  *&v37[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmServer] = v60;

  v62 = type metadata accessor for StateCaptureService();
  swift_allocObject();
  v63 = sub_22D701B44();
  *(&v89 + 1) = v62;
  v90 = &off_2840CD308;
  *&v88 = v63;
  v64 = objc_allocWithZone(type metadata accessor for StateCaptureServer());
  v65 = *(&v89 + 1);
  v66 = __swift_mutable_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
  v67 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v69 = (v81 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69);
  v71 = *v69;

  v72 = sub_22D72A42C(v71, v59, v64);
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  v73 = *&v37[OBJC_IVAR____TtC12AlarmKitCore6Daemon_stateCaptureServer];
  *&v37[OBJC_IVAR____TtC12AlarmKitCore6Daemon_stateCaptureServer] = v72;

  sub_22D72B698(v74);

  sub_22D72B7BC(v75);

  sub_22D72B8E0(v76);

  v77 = v83;
  *(&v89 + 1) = v83;
  v90 = &off_2840CDD20;
  *&v88 = v37;
  swift_beginAccess();
  v78 = v37;
  sub_22D718B78(&v88, v46 + 16, &unk_27D9FFEA0, &qword_22D730138);
  swift_endAccess();
  *(&v89 + 1) = v77;
  v90 = &off_2840CDD38;
  v79 = v78;

  *&v88 = v79;

  swift_beginAccess();
  sub_22D718B78(&v88, v49 + 16, &qword_27D9FF500, &qword_22D730530);
  swift_endAccess();
}

id Daemon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Daemon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Daemon();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D72056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v278 = a3;
  v271 = a1;
  v7 = sub_22D72E300();
  v276 = *(v7 - 8);
  v277 = v7;
  v8 = *(v276 + 64);
  MEMORY[0x28223BE20](v7);
  v273 = v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72E370();
  v274 = *(v10 - 8);
  v275 = v10;
  v11 = *(v274 + 64);
  MEMORY[0x28223BE20](v10);
  v272 = v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_22D72D730();
  v254 = *(v255 - 8);
  v13 = *(v254 + 64);
  MEMORY[0x28223BE20](v255);
  v258 = v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_22D72D7A0();
  v260 = *(v269 - 8);
  v15 = *(v260 + 64);
  v16 = MEMORY[0x28223BE20](v269);
  v256 = v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v257 = v226 - v18;
  v268 = type metadata accessor for Alarm(0);
  v19 = *(*(v268 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v268);
  v270 = v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v241 = v226 - v23;
  MEMORY[0x28223BE20](v22);
  v245 = v226 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFE60, &qword_22D730570);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v231 = v226 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v239 = v226 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v253 = v226 - v32;
  v259 = sub_22D72E0D0();
  v252 = *(v259 - 8);
  v33 = *(v252 + 64);
  MEMORY[0x28223BE20](v259);
  v251 = v226 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_22D72DE40();
  v266 = *(v264 - 8);
  v35 = *(v266 + 64);
  v36 = MEMORY[0x28223BE20](v264);
  v240 = v226 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v244 = v226 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v236 = v226 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v250 = v226 - v43;
  MEMORY[0x28223BE20](v42);
  v248 = v226 - v44;
  v265 = sub_22D72DEA0();
  v267 = *(v265 - 8);
  v45 = *(v267 + 64);
  v46 = MEMORY[0x28223BE20](v265);
  v238 = v226 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v243 = v226 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v235 = v226 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v249 = v226 - v53;
  MEMORY[0x28223BE20](v52);
  v246 = v226 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF570, &qword_22D730578);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v237 = v226 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v242 = v226 - v60;
  MEMORY[0x28223BE20](v59);
  v247 = v226 - v61;
  v62 = sub_22D72D7D0();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v64 = sub_22D72E470();
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v234 = sub_22D72D5F0();
  v233 = *(v234 - 8);
  v66 = *(v233 + 64);
  v67 = MEMORY[0x28223BE20](v234);
  v69 = v226 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v67);
  v232 = v226 - v71;
  MEMORY[0x28223BE20](v70);
  v73 = v226 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF578, &unk_22D730580);
  v261 = *(v74 - 8);
  v75 = *(v261 + 64);
  MEMORY[0x28223BE20](v74);
  v77 = v226 - v76;
  swift_beginAccess();
  v279 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v262 = Strong;
    v263 = a4;
    v79 = sub_22D72D570();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v82 = sub_22D72D560();
    v84 = *(a2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData);
    v83 = *(a2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData + 8);
    sub_22D6D3F68(v84, v83);
    sub_22D6D58D4(&unk_27D9FF580, &qword_27D9FF578, &unk_22D730580);
    sub_22D72D550();
    v228 = v82;
    v229 = v77;
    v230 = v74;
    sub_22D6D5664(v84, v83);
    v95 = v271;
    v96 = v271 + v268[12];
    sub_22D72DB90();
    v97 = sub_22D72E4B0();
    v99 = v98;
    v100 = HIBYTE(v98) & 0xF;
    if ((v98 & 0x2000000000000000) == 0)
    {
      v100 = v97 & 0xFFFFFFFFFFFFLL;
    }

    if (v100)
    {
      v227 = v97;
    }

    else
    {

      sub_22D72E410();
      sub_22D72D7C0();
      v227 = sub_22D72E4A0();
      v99 = v101;
    }

    sub_22D72DDF0();
    v276 = sub_22D72DCC0();
    v277 = v103;

    v104 = v246;
    sub_22D72DDE0();
    v105 = v248;
    sub_22D72DE50();
    v106 = *(v267 + 8);
    v267 += 8;
    v274 = v106;
    v106(v104, v265);
    v107 = v247;
    sub_22D72DE10();
    v108 = *(v266 + 8);
    v266 += 8;
    v275 = v108;
    v108(v105, v264);
    v109 = v252;
    v110 = *(v252 + 48);
    v111 = v259;
    v270 = (v252 + 48);
    v248 = v110;
    v112 = (v110)(v107, 1, v259);
    v226[1] = v99;
    if (v112 == 1)
    {
      sub_22D6D5984(v107, &qword_27D9FF570, &qword_22D730578);
      v247 = 0;
      v273 = 0;
    }

    else
    {
      sub_22D72E0C0();
      (*(v109 + 8))(v107, v111);
      v113 = v233;
      v114 = v232;
      v115 = v234;
      (*(v233 + 32))(v232, v69, v234);
      (*(v113 + 16))(v73, v114, v115);
      v247 = sub_22D72E4B0();
      v273 = v116;
      (*(v113 + 8))(v114, v115);
    }

    v117 = v249;
    sub_22D72DDE0();
    v118 = v250;
    sub_22D72DE50();
    (v274)(v117, v265);
    v119 = v251;
    sub_22D72DE00();
    v120 = v118;
    v121 = v264;
    v275(v120, v264);
    sub_22D72E0C0();
    (*(v109 + 8))(v119, v111);
    v272 = sub_22D72E4B0();
    v123 = v122;
    v124 = v253;
    sub_22D6D5A4C(v95 + v268[8], v253, &qword_27D9FF4B0, &unk_22D7301A0);
    v125 = sub_22D72DDB0();
    v126 = (*(*(v125 - 8) + 48))(v124, 1, v125);
    sub_22D6D5984(v124, &qword_27D9FF4B0, &unk_22D7301A0);
    if (v126 == 1)
    {
      if (qword_27D9FF130 != -1)
      {
        swift_once();
      }

      v127 = sub_22D72DBE0();
      __swift_project_value_buffer(v127, qword_27DA01718);
      v128 = v241;
      sub_22D6F37E4(v95, v241);
      v129 = sub_22D72DBB0();
      v130 = sub_22D72E5A0();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        aBlock = v132;
        *v131 = 136446210;
        sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v133 = v269;
        v134 = sub_22D72E960();
        v135 = v128;
        v136 = v134;
        v138 = v137;
        sub_22D6F3848(v135);
        v139 = sub_22D72891C(v136, v138, &aBlock);

        *(v131 + 4) = v139;
        _os_log_impl(&dword_22D6B4000, v129, v130, "%{public}s: Requesting timer alert", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v132);
        MEMORY[0x2318D0420](v132, -1, -1);
        MEMORY[0x2318D0420](v131, -1, -1);
      }

      else
      {

        sub_22D6F3848(v128);
        v133 = v269;
      }

      v140 = v264;
      v147 = v271;
      (*(v260 + 16))(v256, v271, v133);
      v148 = v238;
      sub_22D72DDE0();
      v149 = v240;
      sub_22D72DE50();
      (v274)(v148, v265);
      v150 = v237;
      sub_22D72DE10();
      v275(v149, v140);
      v151 = (v248)(v150, 1, v259);
      sub_22D6D5984(v150, &qword_27D9FF570, &qword_22D730578);
      v152 = (v147 + v268[6]);
      v153 = *v152;
      v154 = v152[1];
      v155 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v158 = sub_22D72868C(v153, v154, 0);
      v159 = [v158 localizedName];
      v271 = sub_22D72E490();
      v275 = v160;

      v161 = v273;
      sub_22D6D3F68(v276, v277);
      v274 = sub_22D72D770();
      v162 = sub_22D72E480();

      if (v161)
      {
        v163 = sub_22D72E480();
      }

      else
      {
        v163 = 0;
      }

      v164 = v151 != 1;
      v165 = objc_allocWithZone(MEMORY[0x277CEA590]);
      v166 = sub_22D72E480();

      v167 = sub_22D72E480();
      v168 = sub_22D72D640();
      v169 = sub_22D72E480();
      v170 = sub_22D72E480();

      v171 = v274;
      v172 = [v165 initWithIdentifier:v274 displayTitle:v162 hasSecondaryAction:v164 secondaryButtonLabel:v163 stopButtonLabel:v166 actionUrlScheme:v167 tintColor:v168 bundleID:v169 localizedAppName:v170];

      v173 = v276;
      v174 = v277;
      sub_22D6D5664(v276, v277);
      (*(v260 + 8))(v256, v269);
      v175 = swift_allocObject();
      v176 = v278;
      v177 = v279;
      v175[2] = v279;
      v175[3] = v176;
      v175[4] = v263;
      v285 = sub_22D728D58;
      v286 = v175;
      aBlock = MEMORY[0x277D85DD0];
      v282 = 1107296256;
      v283 = sub_22D7227BC;
      v284 = &block_descriptor_116;
      v178 = _Block_copy(&aBlock);
      v179 = v177;

      [v262 requestTimerNotification:v172 completion:v178];

      _Block_release(v178);
      swift_unknownObjectRelease();

      v180 = v173;
    }

    else
    {
      v256 = v123;
      v141 = v235;
      sub_22D72DDE0();
      v142 = v236;
      sub_22D72DE50();
      (v274)(v141, v265);
      v143 = v239;
      sub_22D72DE30();
      v275(v142, v121);
      v144 = sub_22D72DE20();
      v145 = *(v144 - 8);
      if ((*(v145 + 48))(v143, 1, v144) == 1)
      {
        LODWORD(v253) = 0;
        v146 = v265;
      }

      else
      {
        v156 = v231;
        sub_22D6D5A4C(v143, v231, &qword_27D9FFE60, &qword_22D730570);
        v157 = (*(v145 + 88))(v156, v144);
        v146 = v265;
        if (v157 == *MEMORY[0x277CB99B8])
        {
          LODWORD(v253) = 1;
        }

        else
        {
          if (v157 != *MEMORY[0x277CB99B0])
          {
            (*(v145 + 8))(v156, v144);
          }

          LODWORD(v253) = 0;
        }
      }

      sub_22D6D5984(v143, &qword_27D9FFE60, &qword_22D730570);
      v181 = v245;
      if (qword_27D9FF130 != -1)
      {
        swift_once();
      }

      v182 = sub_22D72DBE0();
      __swift_project_value_buffer(v182, qword_27DA01718);
      sub_22D6F37E4(v95, v181);
      v183 = sub_22D72DBB0();
      v184 = sub_22D72E5A0();
      if (os_log_type_enabled(v183, v184))
      {
        v185 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        aBlock = v186;
        *v185 = 136446210;
        sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v187 = v269;
        v188 = sub_22D72E960();
        v189 = v181;
        v190 = v188;
        v192 = v191;
        sub_22D6F3848(v189);
        v193 = sub_22D72891C(v190, v192, &aBlock);

        *(v185 + 4) = v193;
        _os_log_impl(&dword_22D6B4000, v183, v184, "%{public}s: Requesting alarm alert", v185, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v186);
        MEMORY[0x2318D0420](v186, -1, -1);
        MEMORY[0x2318D0420](v185, -1, -1);
      }

      else
      {

        sub_22D6F3848(v181);
        v187 = v269;
      }

      v194 = v271;
      (*(v260 + 16))(v257, v271, v187);
      v195 = v268;
      (*(v254 + 16))(v258, v194 + v268[14], v255);
      v196 = v243;
      sub_22D72DDE0();
      v197 = v244;
      sub_22D72DE50();
      (v274)(v196, v146);
      v198 = v242;
      sub_22D72DE10();
      v275(v197, v264);
      v199 = (v248)(v198, 1, v259);
      sub_22D6D5984(v198, &qword_27D9FF570, &qword_22D730578);
      v200 = (v194 + v195[6]);
      v201 = *v200;
      v202 = v200[1];
      v203 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v204 = sub_22D72868C(v201, v202, 0);
      v275 = v201;
      v205 = v204;
      v206 = [v204 localizedName];
      v270 = sub_22D72E490();

      sub_22D6D3F68(v276, v277);
      v274 = sub_22D72D770();
      v271 = sub_22D72D6B0();
      v207 = sub_22D72E480();

      if (v273)
      {
        v208 = sub_22D72E480();
      }

      else
      {
        v208 = 0;
      }

      v209 = v199 != 1;
      v210 = objc_allocWithZone(MEMORY[0x277CEA578]);
      v211 = sub_22D72E480();

      v212 = sub_22D72E480();
      v213 = sub_22D72D640();
      v214 = sub_22D72E480();
      v215 = sub_22D72E480();

      v216 = v210;
      v217 = v274;
      v218 = v271;
      v219 = [v216 initWithIdentifier:v274 scheduledFireDate:v271 allowsSnooze:v253 displayTitle:v207 hasSecondaryAction:v209 secondaryButtonLabel:v208 stopButtonLabel:v211 actionUrlScheme:v212 tintColor:v213 bundleID:v214 localizedAppName:v215];

      v220 = v276;
      v174 = v277;
      sub_22D6D5664(v276, v277);
      (*(v254 + 8))(v258, v255);
      (*(v260 + 8))(v257, v269);
      v221 = swift_allocObject();
      v222 = v278;
      v223 = v279;
      v221[2] = v279;
      v221[3] = v222;
      v221[4] = v263;
      v285 = sub_22D728D9C;
      v286 = v221;
      aBlock = MEMORY[0x277D85DD0];
      v282 = 1107296256;
      v283 = sub_22D7227BC;
      v284 = &block_descriptor_122;
      v224 = _Block_copy(&aBlock);
      v225 = v223;

      [v262 requestAlarmNotification:v219 completion:v224];
      _Block_release(v224);
      swift_unknownObjectRelease();

      v180 = v220;
    }

    sub_22D6D5664(v180, v174);
    return (*(v261 + 8))(v229, v230);
  }

  else
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v85 = sub_22D72DBE0();
    __swift_project_value_buffer(v85, qword_27DA01718);
    v86 = sub_22D72DBB0();
    v87 = sub_22D72E580();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_22D6B4000, v86, v87, "Cannot request alert: daemon has no delegate", v88, 2u);
      MEMORY[0x2318D0420](v88, -1, -1);
    }

    v89 = *&v279[OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue];
    v90 = swift_allocObject();
    *(v90 + 16) = v278;
    *(v90 + 24) = a4;
    v285 = sub_22D72CB1C;
    v286 = v90;
    aBlock = MEMORY[0x277D85DD0];
    v282 = 1107296256;
    v283 = sub_22D6C0FD8;
    v284 = &block_descriptor_104;
    v91 = _Block_copy(&aBlock);

    v92 = v272;
    sub_22D72E330();
    v280 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v93 = v273;
    v94 = v277;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v92, v93, v91);
    _Block_release(v91);
    (*(v276 + 8))(v93, v94);
    (*(v274 + 8))(v92, v275);
  }
}

uint64_t sub_22D7227BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22D722810(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v11 = sub_22D72E300();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D72E370();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a1;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);

  sub_22D72E330();
  v28 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v27);
}

void sub_22D722AEC(uint64_t a1)
{
  v2 = sub_22D72D7A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v12 = sub_22D72DBE0();
    __swift_project_value_buffer(v12, qword_27DA01718);
    (*(v3 + 16))(v9, a1, v2);
    v13 = sub_22D72DBB0();
    v14 = sub_22D72E5A0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32[1] = a1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v18 = sub_22D72E960();
      v20 = v19;
      (*(v3 + 8))(v9, v2);
      v21 = sub_22D72891C(v18, v20, &v33);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_22D6B4000, v13, v14, "%{public}s: Dismissing alert", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2318D0420](v17, -1, -1);
      MEMORY[0x2318D0420](v16, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v31 = sub_22D72D770();
    [v11 dismissNotificationWithIdentifier_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v22 = sub_22D72DBE0();
    __swift_project_value_buffer(v22, qword_27DA01718);
    (*(v3 + 16))(v7, a1, v2);
    v23 = sub_22D72DBB0();
    v24 = sub_22D72E580();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v27 = sub_22D72E960();
      v29 = v28;
      (*(v3 + 8))(v7, v2);
      v30 = sub_22D72891C(v27, v29, &v33);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_22D6B4000, v23, v24, "%{public}s: Cannot dismiss alert: daemon has no delegate", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318D0420](v26, -1, -1);
      MEMORY[0x2318D0420](v25, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }
}

uint64_t sub_22D722F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v67 - v6;
  v8 = sub_22D72DD70();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v85 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v67 - v12;
  v13 = sub_22D72D7B0();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D72DD30();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v52 = sub_22D72D730();
    return (*(*(v52 - 8) + 56))(v89, 1, 1, v52);
  }

  v83 = Strong;
  sub_22D72DD90();
  v24 = (*(v19 + 88))(v22, v18);
  v25 = *MEMORY[0x277CB9958];
  if (v24 == *MEMORY[0x277CB9958])
  {
    v26 = *(v19 + 96);
    v74 = *MEMORY[0x277CB9958];
    v75 = v24;
    v26(v22, v18);
    v27 = *v22;
    v28 = *MEMORY[0x277CC96E0];
    v29 = v14[13];
    v81 = v14 + 13;
    v29(v17, v28, v13);
    v80 = v29;
    v30 = MEMORY[0x277CC9708];
    v31 = MEMORY[0x277CC9708];
    v76 = a1;
    v82 = MEMORY[0x277CC9708];
    v67 = MEMORY[0x277CC9718];
    v73 = sub_22D71E1F4(v17, v27, MEMORY[0x277CC9708], &qword_27D9FFE68, MEMORY[0x277CC9708]);
    v77 = v7;
    v32 = v14[1];
    v32(v17, v13);
    v29(v17, *MEMORY[0x277CC96D8], v13);
    LOBYTE(v29) = sub_22D71E1F4(v17, v27, v30, &qword_27D9FFE68, v31);
    v32(v17, v13);
    v33 = 2;
    if ((v29 & 1) == 0)
    {
      v33 = 0;
    }

    v72 = v33;
    v34 = v80;
    v80(v17, *MEMORY[0x277CC96E8], v13);
    v78 = v14 + 1;
    v79 = v31;
    v35 = sub_22D71E1F4(v17, v27, v82, &qword_27D9FFE68, v31);
    v32(v17, v13);
    v36 = 4;
    if (!v35)
    {
      v36 = 0;
    }

    v71 = v36;
    v34(v17, *MEMORY[0x277CC9700], v13);
    v37 = v27;
    v38 = v82;
    v39 = sub_22D71E1F4(v17, v27, v82, &qword_27D9FFE68, v31);
    v32(v17, v13);
    v40 = 8;
    if (!v39)
    {
      v40 = 0;
    }

    v70 = v40;
    v41 = v80;
    v80(v17, *MEMORY[0x277CC96F8], v13);
    v42 = v38;
    v43 = v79;
    v44 = sub_22D71E1F4(v17, v27, v42, &qword_27D9FFE68, v79);
    v32(v17, v13);
    v45 = 16;
    if (!v44)
    {
      v45 = 0;
    }

    v69 = v45;
    v41(v17, *MEMORY[0x277CC96D0], v13);
    v46 = v82;
    v47 = sub_22D71E1F4(v17, v37, v82, &qword_27D9FFE68, v43);
    v32(v17, v13);
    v48 = 32;
    if (!v47)
    {
      v48 = 0;
    }

    v68 = v48;
    v41(v17, *MEMORY[0x277CC96F0], v13);
    v49 = sub_22D71E1F4(v17, v37, v46, &qword_27D9FFE68, v79);

    v32(v17, v13);
    v7 = v77;
    v50 = 64;
    if (!v49)
    {
      v50 = 0;
    }

    v51 = v72 & 0xFFFFFFFFFFFFFFFELL | v73 | v71 | v70 | v69 | v68 | v50;
    v25 = v74;
    v24 = v75;
  }

  else
  {
    if (v24 != *MEMORY[0x277CB9950])
    {
      result = sub_22D72E970();
      __break(1u);
      return result;
    }

    v51 = 127;
  }

  v54 = v24 == v25;
  v55 = v84;
  sub_22D72DD80();
  v56 = sub_22D72DD50();
  v57 = *(v86 + 8);
  v58 = v55;
  v59 = v87;
  v57(v58, v87);
  v60 = v85;
  sub_22D72DD80();
  v61 = sub_22D72DD60();
  v57(v60, v59);
  v62 = [objc_allocWithZone(MEMORY[0x277CEA580]) initWithDays:v51 hour:v56 minute:v61 repeating:v54];
  v63 = sub_22D72D6B0();
  v64 = [v83 nextEventDateWithSchedule:v62 after:v63];

  if (v64)
  {
    sub_22D72D700();
    swift_unknownObjectRelease();

    v65 = 0;
    v62 = v64;
  }

  else
  {
    swift_unknownObjectRelease();
    v65 = 1;
  }

  v66 = sub_22D72D730();
  (*(*(v66 - 8) + 56))(v7, v65, 1, v66);
  return sub_22D718BE0(v7, v89);
}

uint64_t sub_22D7237B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D72E300();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72E370();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v27 = sub_22D72C988;
    v28 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_22D723F74;
    v26 = &block_descriptor_213;
    v18 = _Block_copy(&aBlock);

    [v16 authorizationStatesWithCompletion_];
    _Block_release(v18);
    return swift_unknownObjectRelease();
  }

  else
  {
    v22[1] = *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    v27 = sub_22D72C934;
    v28 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_22D6C0FD8;
    v26 = &block_descriptor_207;
    v22[0] = _Block_copy(&aBlock);

    sub_22D72E330();
    v22[2] = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    sub_22D72E6E0();
    v21 = v22[0];
    MEMORY[0x2318CF7A0](0, v14, v9, v22[0]);
    _Block_release(v21);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D723C04(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v42 = a3;
  v43 = a2;
  v4 = sub_22D72E100();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v42 - v10;
  v50 = a1;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v52 = (v9 + 32);
  v47 = v9;
  v44 = v9 + 40;

  v16 = 0;
  v17 = MEMORY[0x277D84F98];
  v45 = v15;
  v46 = a1 + 64;
  v48 = v4;
  while (v14)
  {
    v19 = v16;
LABEL_11:
    v20 = __clz(__rbit64(v14)) | (v19 << 6);
    v21 = (*(v50 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v50 + 56) + 8 * v20);
    swift_bridgeObjectRetain_n();
    v25 = v49;
    sub_22D72E0F0();
    v26 = v8;
    v51 = *v52;
    v51(v8, v25, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v17;
    v29 = sub_22D6CC714(v22, v23);
    v30 = v17[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v17[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22D6D02A4();
      }
    }

    else
    {
      sub_22D6CD854(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_22D6CC714(v22, v23);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_24;
      }

      v29 = v34;
    }

    v8 = v26;
    v14 &= v14 - 1;
    if (v33)
    {

      v17 = v53;
      v18 = v53[7] + *(v47 + 72) * v29;
      v4 = v48;
      (*(v47 + 40))(v18, v26, v48);
    }

    else
    {
      v17 = v53;
      v53[(v29 >> 6) + 8] |= 1 << v29;
      v36 = (v17[6] + 16 * v29);
      *v36 = v22;
      v36[1] = v23;
      v37 = v17[7] + *(v47 + 72) * v29;
      v4 = v48;
      v51(v37, v26, v48);

      v38 = v17[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_23;
      }

      v17[2] = v40;
    }

    v16 = v19;
    v15 = v45;
    v11 = v46;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v43(v17);
    }

    v14 = *(v11 + 8 * v19);
    ++v16;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22D72E9A0();
  __break(1u);
  return result;
}

uint64_t sub_22D723F74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_22D72E3C0();

  v2(v3);
}

uint64_t sub_22D723FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v5 = sub_22D72E300();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72E370();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_22D72D570();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_22D72D560();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v3;
    v21[4] = v43;
    v21[5] = a2;
    v49 = sub_22D72C8D8;
    v50 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_22D724F18;
    v48 = &block_descriptor_189;
    v22 = _Block_copy(&aBlock);

    v23 = v3;

    [v16 alarmsWithCompletion_];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = v6;
    v38 = v14;
    v39 = v9;
    v40 = v10;
    v41 = v11;
    v25 = v43;
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v42 = v24;
    v26 = sub_22D72DBE0();
    __swift_project_value_buffer(v26, qword_27DA01718);
    v27 = sub_22D72DBB0();
    v28 = sub_22D72E580();
    v29 = os_log_type_enabled(v27, v28);
    v30 = a2;
    v31 = v38;
    if (v29)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22D6B4000, v27, v28, "Cannot fetch alarms: daemon has no delegate", v32, 2u);
      MEMORY[0x2318D0420](v32, -1, -1);
    }

    v33 = *&v3[OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue];
    v34 = swift_allocObject();
    *(v34 + 16) = v25;
    *(v34 + 24) = v30;
    v49 = sub_22D72CB20;
    v50 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_22D6C0FD8;
    v48 = &block_descriptor_183;
    v35 = _Block_copy(&aBlock);

    sub_22D72E330();
    v44 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v36 = v39;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v31, v36, v35);
    _Block_release(v35);
    (*(v42 + 8))(v36, v5);
    (*(v41 + 8))(v31, v40);
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D7244E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D72452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v74 = a4;
  v73 = a3;
  v87 = a2;
  v6 = sub_22D72E300();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22D72E370();
  v78 = *(v79 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D72D7A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v92 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Alarm(0);
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v72 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v88 = (v12 + 16);
    v82 = v12;
    v83 = (v12 + 8);
    v24 = (a1 + 40);
    v25 = MEMORY[0x277D84F98];
    v84 = &v72 - v20;
    while (1)
    {
      v28 = *(v24 - 1);
      v27 = *v24;
      sub_22D6D3F68(v28, *v24);
      sub_22D7244E4(&qword_27D9FFE98, type metadata accessor for Alarm);
      sub_22D72D550();
      if (v23)
      {
        break;
      }

      v90 = 0;
      v91 = v27;
      v29 = v24;
      v89 = v22;
      v30 = *v88;
      v31 = v92;
      v32 = v11;
      (*v88)(v92, v21, v11);
      v23 = v19;
      sub_22D6F37E4(v21, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v25;
      v35 = sub_22D6CC49C(v31);
      v36 = v25[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v39 = v34;
      if (v25[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22D6CFC78();
        }
      }

      else
      {
        sub_22D6CCE7C(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_22D6CC49C(v92);
        if ((v39 & 1) != (v41 & 1))
        {
          result = sub_22D72E9A0();
          __break(1u);
          return result;
        }

        v35 = v40;
      }

      v11 = v32;
      v25 = aBlock;
      if (v39)
      {
        v26 = aBlock[7] + *(v85 + 72) * v35;
        v19 = v23;
        sub_22D6D430C(v23, v26);
        sub_22D6D5664(v28, v91);
        (*v83)(v92, v32);
        v21 = v84;
        sub_22D6F3848(v84);
      }

      else
      {
        aBlock[(v35 >> 6) + 8] |= 1 << v35;
        v42 = v82;
        v43 = v92;
        v30(v25[6] + *(v82 + 72) * v35, v92, v32);
        v44 = v25[7] + *(v85 + 72) * v35;
        v19 = v23;
        sub_22D6D3C4C(v23, v44);
        sub_22D6D5664(v28, v91);
        (*(v42 + 8))(v43, v32);
        v21 = v84;
        sub_22D6F3848(v84);
        v45 = v25[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_23;
        }

        v25[2] = v47;
      }

      v24 = v29 + 2;
      v23 = v90;
      v22 = v89 - 1;
      if (v89 == 1)
      {
        goto LABEL_16;
      }
    }

    sub_22D6D5664(v28, v27);

    if (qword_27D9FF130 == -1)
    {
      goto LABEL_18;
    }

LABEL_24:
    swift_once();
LABEL_18:
    v55 = sub_22D72DBE0();
    __swift_project_value_buffer(v55, qword_27DA01718);
    v56 = v23;
    v57 = sub_22D72DBB0();
    v58 = sub_22D72E580();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138543362;
      v61 = v23;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v62;
      *v60 = v62;
      _os_log_impl(&dword_22D6B4000, v57, v58, "Cannot decode alarms: %{public}@", v59, 0xCu);
      sub_22D6D5984(v60, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v60, -1, -1);
      MEMORY[0x2318D0420](v59, -1, -1);
    }

    v63 = *(v73 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
    v64 = swift_allocObject();
    v65 = v75;
    v64[2] = v74;
    v64[3] = v65;
    v64[4] = v23;
    v98 = sub_22D72CAFC;
    v99 = v64;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_22D6C0FD8;
    v97 = &block_descriptor_195;
    v66 = _Block_copy(&aBlock);
    v67 = v23;

    v68 = v76;
    sub_22D72E330();
    v93 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v69 = v77;
    v70 = v81;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v68, v69, v66);
    _Block_release(v66);

    (*(v80 + 8))(v69, v70);
    (*(v78 + 8))(v68, v79);
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
LABEL_16:
    v48 = *(v73 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
    v49 = swift_allocObject();
    v50 = v75;
    v49[2] = v74;
    v49[3] = v50;
    v49[4] = v25;
    v98 = sub_22D72CB00;
    v99 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_22D6C0FD8;
    v97 = &block_descriptor_201;
    v51 = _Block_copy(&aBlock);

    v52 = v76;
    sub_22D72E330();
    v93 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v53 = v77;
    v54 = v81;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v52, v53, v51);
    _Block_release(v51);
    (*(v80 + 8))(v53, v54);
    (*(v78 + 8))(v52, v79);
  }
}

uint64_t sub_22D724F18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_22D72E520();

  v2(v3);
}

void sub_22D724F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v4 = sub_22D72E300();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E370();
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D72D7A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  swift_beginAccess();
  v18 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = v56;
    sub_22D72D750();
    v22 = v58;
    v23 = sub_22D72E480();

    (*(v12 + 16))(v17, v21, v11);
    v24 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v25 = swift_allocObject();
    v26 = v57;
    *(v25 + 2) = v18;
    *(v25 + 3) = v26;
    *(v25 + 4) = v22;
    (*(v12 + 32))(&v25[v24], v17, v11);
    v64 = sub_22D728BC8;
    v65 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_22D726280;
    v63 = &block_descriptor_80;
    v27 = _Block_copy(&aBlock);
    v28 = v18;

    [v20 activityDataWithAlarmID:v23 completion:v27];
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = v56;
    v30 = v11;
    v31 = v10;
    v50 = v18;
    v51 = v7;
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v32 = sub_22D72DBE0();
    __swift_project_value_buffer(v32, qword_27DA01718);
    v33 = v12;
    v34 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v29, v11);
    v35 = sub_22D72DBB0();
    v36 = sub_22D72E580();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v39 = sub_22D72E960();
      v41 = v40;
      (*(v33 + 8))(v34, v30);
      v42 = sub_22D72891C(v39, v41, &aBlock);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_22D6B4000, v35, v36, "%{public}s: Cannot fetch alarm: daemon has no delegate", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x2318D0420](v38, -1, -1);
      MEMORY[0x2318D0420](v37, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v15, v11);
    }

    v43 = v57;
    v44 = *&v50[OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue];
    v45 = swift_allocObject();
    v46 = v58;
    *(v45 + 16) = v43;
    *(v45 + 24) = v46;
    v64 = sub_22D728BA8;
    v65 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_22D6C0FD8;
    v63 = &block_descriptor_74_0;
    v47 = _Block_copy(&aBlock);

    sub_22D72E330();
    v59 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v48 = v53;
    v49 = v55;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v31, v48, v47);
    _Block_release(v47);
    (*(v54 + 8))(v48, v49);
    (*(v52 + 8))(v31, v51);
  }
}

uint64_t sub_22D725644(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v11 = sub_22D72E300();
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D72E370();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D72D7A0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  v56 = a5;
  if (a2 >> 60 == 15)
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v23 = sub_22D72DBE0();
    __swift_project_value_buffer(v23, qword_27DA01718);
    (*(v18 + 16))(v22, a6, v17);
    v24 = sub_22D72DBB0();
    v25 = sub_22D72E580();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54 = a3;
      v27 = v26;
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v29 = sub_22D72E960();
      v31 = v30;
      (*(v18 + 8))(v22, v17);
      v32 = sub_22D72891C(v29, v31, &aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_22D6B4000, v24, v25, "%{public}s: Cannot fetch activity data", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2318D0420](v28, -1, -1);
      v33 = v27;
      a3 = v54;
      MEMORY[0x2318D0420](v33, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v22, v17);
    }

    v37 = *(a3 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
    v38 = swift_allocObject();
    v39 = v56;
    *(v38 + 16) = v55;
    *(v38 + 24) = v39;
    v67 = sub_22D728C50;
    v68 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v64 = 1107296256;
    v65 = sub_22D6C0FD8;
    v66 = &block_descriptor_86;
    v40 = _Block_copy(&aBlock);

    v41 = v57;
    sub_22D72E330();
    v62 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v42 = v58;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v41, v42, v40);
    _Block_release(v40);
    (*(v61 + 8))(v42, v11);
    (*(v59 + 8))(v41, v60);
  }

  else
  {
    v52 = a6;
    v53 = v11;
    v54 = a3;
    v34 = sub_22D72D570();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_22D6D3F68(a1, a2);
    sub_22D72D560();
    type metadata accessor for Alarm.ActivityData(0);
    sub_22D7244E4(&qword_27D9FFE50, type metadata accessor for Alarm.ActivityData);
    sub_22D72D550();
    v43 = aBlock;
    v54 = *(v54 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
    v44 = swift_allocObject();
    v45 = v56;
    v44[2] = v55;
    v44[3] = v45;
    v44[4] = v43;
    v52 = v43;
    v67 = sub_22D728CA4;
    v68 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v64 = 1107296256;
    v65 = sub_22D6C0FD8;
    v66 = &block_descriptor_98;
    v55 = _Block_copy(&aBlock);

    v46 = v57;
    sub_22D72E330();
    v62 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v47 = v58;
    v48 = v53;
    sub_22D72E6E0();
    v49 = v55;
    MEMORY[0x2318CF7A0](0, v46, v47, v55);
    _Block_release(v49);

    sub_22D718ABC(a1, a2);

    (*(v61 + 8))(v47, v48);
    (*(v59 + 8))(v46, v60);
  }
}

void sub_22D72620C(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  sub_22D728CD8();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

uint64_t sub_22D726280(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = sub_22D72D650();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_22D718ABC(v2, v7);
}

uint64_t sub_22D726318(char *a1, uint64_t a2, char *a3)
{
  v59 = a1;
  v60 = a2;
  v4 = sub_22D72E300();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72E370();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Alarm(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_22D72D5A0();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_22D72D590();
    aBlock = v60;
    type metadata accessor for Alarm.ActivityData(0);
    sub_22D7244E4(&qword_27D9FFE78, type metadata accessor for Alarm.ActivityData);
    v23 = sub_22D72D580();
    v25 = v24;
    sub_22D7244E4(&qword_27D9FFE70, type metadata accessor for Alarm);
    v44 = sub_22D72D580();
    v46 = v45;
    sub_22D72D750();
    v59 = objc_allocWithZone(MEMORY[0x277CEA570]);
    v60 = v44;
    sub_22D6D3F68(v44, v46);
    v47 = v25;
    sub_22D6D3F68(v23, v25);
    v48 = sub_22D72E480();

    v49 = sub_22D72D640();
    sub_22D6D5664(v44, v46);
    v50 = sub_22D72D640();
    sub_22D6D5664(v23, v47);
    v51 = [v59 initWithIdentifier:v48 data:v49 attributes:v50];

    v52 = swift_allocObject();
    v52[2] = a3;
    v52[3] = sub_22D6FB7A4;
    v52[4] = 0;
    v66 = sub_22D72C894;
    v67 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_22D726C60;
    v65 = &block_descriptor_167;
    v53 = _Block_copy(&aBlock);
    v54 = a3;

    [v19 createAlarm:v51 completion:v53];
    swift_unknownObjectRelease();

    _Block_release(v53);

    sub_22D6D5664(v60, v46);
    return sub_22D6D5664(v23, v47);
  }

  else
  {
    v56 = v13;
    v57 = v8;
    v26 = v10;
    v58 = v9;
    v60 = v5;
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v27 = sub_22D72DBE0();
    __swift_project_value_buffer(v27, qword_27DA01718);
    sub_22D6F37E4(v59, v17);
    v28 = sub_22D72DBB0();
    v29 = sub_22D72E580();
    v30 = v4;
    v31 = v26;
    if (os_log_type_enabled(v28, v29))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59 = a3;
      v34 = v33;
      aBlock = v33;
      *v32 = 136446210;
      sub_22D72D7A0();
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v35 = sub_22D72E960();
      v37 = v36;
      sub_22D6F3848(v17);
      v38 = sub_22D72891C(v35, v37, &aBlock);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_22D6B4000, v28, v29, "%{public}s: Cannot create alarm: daemon has no delegate", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v39 = v34;
      a3 = v59;
      MEMORY[0x2318D0420](v39, -1, -1);
      MEMORY[0x2318D0420](v32, -1, -1);
    }

    else
    {

      sub_22D6F3848(v17);
    }

    v41 = v56;
    v40 = v57;
    v42 = *&a3[OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue];
    v66 = sub_22D726AC4;
    v67 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_22D6C0FD8;
    v65 = &block_descriptor_161;
    v43 = _Block_copy(&aBlock);
    sub_22D72E330();
    v61 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v41, v40, v43);
    _Block_release(v43);
    (*(v60 + 8))(v40, v30);
    (*(v31 + 8))(v41, v58);
  }
}

void sub_22D726AC4()
{
  sub_22D728CD8();
  v0 = swift_allocError();
  *v1 = 0;
  v2 = v0;
  if (qword_27D9FF138 != -1)
  {
    swift_once();
  }

  v3 = sub_22D72DBE0();
  __swift_project_value_buffer(v3, qword_27DA01730);
  v4 = v0;
  v5 = sub_22D72DBB0();
  v6 = sub_22D72E580();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v0;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22D6B4000, v5, v6, "Failed to write alarm to database: %{public}@", v7, 0xCu);
    sub_22D6D5984(v8, &unk_27D9FF4D0, &qword_22D730180);
    MEMORY[0x2318D0420](v8, -1, -1);
    MEMORY[0x2318D0420](v7, -1, -1);
  }

  else
  {
  }
}

void sub_22D726C60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_22D726CCC(void (*a1)(void))
{
  sub_22D728CD8();
  v2 = swift_allocError();
  *v3 = 0;
  a1();
}

uint64_t sub_22D726D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v11 = sub_22D72E300();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22D72E370();
  v16 = *(v28 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v28);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  aBlock[4] = v25;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);

  v22 = a1;
  sub_22D72E330();
  v29 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v28);
}

void sub_22D72701C(uint64_t a1)
{
  v2 = sub_22D72D7A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_22D72D750();
    v9 = sub_22D72E480();

    [v8 deleteAlarmWithAlarmID_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v10 = sub_22D72DBE0();
    __swift_project_value_buffer(v10, qword_27DA01718);
    (*(v3 + 16))(v6, a1, v2);
    v11 = sub_22D72DBB0();
    v12 = sub_22D72E580();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v15 = sub_22D72E960();
      v17 = v16;
      (*(v3 + 8))(v6, v2);
      v18 = sub_22D72891C(v15, v17, &v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_22D6B4000, v11, v12, "%{public}s: Cannot delete alarm: daemon has no delegate", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2318D0420](v14, -1, -1);
      MEMORY[0x2318D0420](v13, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    sub_22D728CD8();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22D727328(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall Daemon.countdownAlarm(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF420, &qword_22D7302E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - v7;
  v9 = sub_22D72D7A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  sub_22D72D740();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22D6D5984(v8, &qword_27D9FF420, &qword_22D7302E0);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v17 = sub_22D72DBE0();
    __swift_project_value_buffer(v17, qword_27DA01718);

    v18 = sub_22D72DBB0();
    v19 = sub_22D72E580();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_22D72891C(countAndFlagsBits, object, &v43);
      _os_log_impl(&dword_22D6B4000, v18, v19, "Could not get alarm id for countdown identifier: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x2318D0420](v21, -1, -1);
      MEMORY[0x2318D0420](v20, -1, -1);
    }
  }

  else
  {
    v41 = object;
    v42 = countAndFlagsBits;
    (*(v10 + 32))(v16, v8, v9);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v22 = sub_22D72DBE0();
    v23 = __swift_project_value_buffer(v22, qword_27DA01718);
    (*(v10 + 16))(v14, v16, v9);
    v40 = v23;
    v24 = sub_22D72DBB0();
    v25 = sub_22D72E570();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v26 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v27 = sub_22D72E960();
      v38 = v2;
      v29 = v28;
      v30 = *(v10 + 8);
      v30(v14, v9);
      v31 = sub_22D72891C(v27, v29, &v43);
      v2 = v38;

      *(v26 + 4) = v31;
      _os_log_impl(&dword_22D6B4000, v24, v25, "Proceeding to countdown for %{public}s", v26, 0xCu);
      v32 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2318D0420](v32, -1, -1);
      MEMORY[0x2318D0420](v26, -1, -1);

      v34 = v30;
    }

    else
    {

      v34 = *(v10 + 8);
      v33 = v34(v14, v9);
    }

    v35 = *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager);
    if (v35)
    {
      v36 = *(v35 + 216);
      MEMORY[0x28223BE20](v33);
      *(&v37 - 2) = v35;
      *(&v37 - 1) = v16;

      sub_22D72E600();
    }

    v34(v16, v9);
  }
}

Swift::Void __swiftcall Daemon.dismissAlarm(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF420, &qword_22D7302E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - v7;
  v9 = sub_22D72D7A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  sub_22D72D740();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22D6D5984(v8, &qword_27D9FF420, &qword_22D7302E0);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v17 = sub_22D72DBE0();
    __swift_project_value_buffer(v17, qword_27DA01718);

    v18 = sub_22D72DBB0();
    v19 = sub_22D72E580();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_22D72891C(countAndFlagsBits, object, &v41);
      _os_log_impl(&dword_22D6B4000, v18, v19, "Could not get alarm id for dismiss identifier: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x2318D0420](v21, -1, -1);
      MEMORY[0x2318D0420](v20, -1, -1);
    }
  }

  else
  {
    v40 = countAndFlagsBits;
    (*(v10 + 32))(v16, v8, v9);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v39 = object;
    v22 = sub_22D72DBE0();
    v23 = __swift_project_value_buffer(v22, qword_27DA01718);
    (*(v10 + 16))(v14, v16, v9);
    v24 = sub_22D72DBB0();
    v25 = sub_22D72E570();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v36 = swift_slowAlloc();
      v41 = v36;
      *v27 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v28 = sub_22D72E960();
      v38 = v2;
      v30 = v29;
      v31 = *(v10 + 8);
      v31(v14, v9);
      v32 = sub_22D72891C(v28, v30, &v41);
      v2 = v38;

      *(v27 + 4) = v32;
      _os_log_impl(&dword_22D6B4000, v24, v25, "Proceeding to dismiss for %{public}s", v27, 0xCu);
      v33 = v36;
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318D0420](v33, -1, -1);
      MEMORY[0x2318D0420](v27, -1, -1);
    }

    else
    {

      v31 = *(v10 + 8);
      v31(v14, v9);
    }

    if (*(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager))
    {
      v34 = *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager);

      sub_22D6DD0CC(v16);
      v31(v16, v9);
    }

    else
    {
      v31(v16, v9);
    }
  }
}

Swift::Void __swiftcall Daemon.performSecondaryAction(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF420, &qword_22D7302E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_22D72D7A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D72D740();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22D6D5984(v8, &qword_27D9FF420, &qword_22D7302E0);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v14 = sub_22D72DBE0();
    __swift_project_value_buffer(v14, qword_27DA01718);

    v15 = sub_22D72DBB0();
    v16 = sub_22D72E580();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_22D72891C(countAndFlagsBits, object, &v27);
      _os_log_impl(&dword_22D6B4000, v15, v16, "Could not get alarm id for secondary action: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x2318D0420](v18, -1, -1);
      MEMORY[0x2318D0420](v17, -1, -1);
    }
  }

  else
  {
    v26 = countAndFlagsBits;
    (*(v10 + 32))(v13, v8, v9);
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v19 = sub_22D72DBE0();
    __swift_project_value_buffer(v19, qword_27DA01718);

    v20 = sub_22D72DBB0();
    v21 = sub_22D72E570();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22D72891C(v26, object, &v27);
      _os_log_impl(&dword_22D6B4000, v20, v21, "Proceeding to perform secondary action for %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x2318D0420](v23, -1, -1);
      MEMORY[0x2318D0420](v22, -1, -1);
    }

    if (*(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager))
    {
      v24 = *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager);

      sub_22D6DD710(v13);
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }
  }
}

uint64_t sub_22D728620(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_22D72E490();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

id sub_22D72868C(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22D72E480();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22D72D5D0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_22D728768(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22D7287B4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_22D728814(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22D728824(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_22D7288C0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22D72891C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22D72891C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22D728E10(v11, 0, 0, 1, a1, a2);
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
    sub_22D6D5270(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_22D7289EC()
{
  result = qword_27D9FFE40;
  if (!qword_27D9FFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFE40);
  }

  return result;
}

uint64_t sub_22D728BC8(uint64_t a1, unint64_t a2)
{
  v5 = *(sub_22D72D7A0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_22D725644(a1, a2, v6, v7, v8, v9);
}

unint64_t sub_22D728CD8()
{
  result = qword_27D9FFE58;
  if (!qword_27D9FFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFE58);
  }

  return result;
}

uint64_t sub_22D728D2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

unint64_t sub_22D728E10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22D728F1C(a5, a6);
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
    result = sub_22D72E7F0();
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

uint64_t sub_22D728F1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22D728F68(a1, a2);
  sub_22D729098(&unk_2840CBCE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22D728F68(uint64_t a1, unint64_t a2)
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

  v6 = sub_22D729184(v5, 0);
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

  result = sub_22D72E7F0();
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
        v10 = sub_22D72E510();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22D729184(v10, 0);
        result = sub_22D72E7B0();
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

uint64_t sub_22D729098(uint64_t result)
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

  result = sub_22D7291F8(result, v12, 1, v3);
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

void *sub_22D729184(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFE80, &unk_22D731950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22D7291F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFE80, &unk_22D731950);
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

uint64_t sub_22D7292EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = sub_22D72E5F0();
  v38 = *(v37 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72E5D0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_22D72E370();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v50 = type metadata accessor for ActivityManager();
  v51 = &off_2840CBDC8;
  *&v49 = a1;
  v47 = type metadata accessor for AppEventObserver();
  v48 = &off_2840CDAA8;
  *&v46 = a2;
  v44 = type metadata accessor for AuthorizationManager();
  v45 = &off_2840CCBF0;
  *&v43 = a3;
  v41 = type metadata accessor for AlarmPersistentStore();
  v42 = &off_2840CCE58;
  *&v40 = a4;
  v36 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v35 = "itCore.xpc.alarmServer";
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0;
  sub_22D72E330();
  v39 = MEMORY[0x277D84F90];
  v34 = sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v38 + 104);
  v38 += 104;
  v32 = v12;
  v19 = v37;
  v18(v12, v17, v37);
  *(a5 + 216) = sub_22D72E620();
  v35 = "e.AlarmKitCore.AlarmManager";
  sub_22D72E330();
  v39 = MEMORY[0x277D84F90];
  sub_22D72E6E0();
  v18(v32, v17, v19);
  v20 = sub_22D72E620();
  v21 = MEMORY[0x277D84FA0];
  *(a5 + 224) = v20;
  *(a5 + 232) = v21;
  *(a5 + 240) = -1;
  *(a5 + 248) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF598, &qword_22D730598);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(a5 + 256) = sub_22D72DC20();
  *(a5 + 264) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFF10, &qword_22D731960);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(a5 + 272) = sub_22D72DC20();
  *(a5 + 280) = 0;
  v28 = OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate;
  v29 = sub_22D72D730();
  (*(*(v29 - 8) + 56))(a5 + v28, 1, 1, v29);
  sub_22D6B6CF0(&v49, a5 + 56);
  sub_22D6B6CF0(&v46, a5 + 96);
  sub_22D6B6CF0(&v43, a5 + 136);
  sub_22D6B6CF0(&v40, a5 + 176);
  return a5;
}

void *sub_22D7297DC(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5E0, &qword_22D7305D0);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v36 - v11;
  v41 = sub_22D72E5F0();
  v48 = *(v41 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v41);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72E5D0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = sub_22D72E370();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v52[3] = type metadata accessor for AuthorizationPersistentStore();
  v52[4] = &off_2840CCF90;
  v52[0] = a1;
  v51[3] = type metadata accessor for AppEventObserver();
  v51[4] = &off_2840CDAA8;
  v51[0] = a2;
  v19 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v40 = "itCore.xpc.authorizationServer";
  sub_22D72E330();
  v49 = MEMORY[0x277D84F90];
  v39 = sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  v20 = *MEMORY[0x277D85260];
  v21 = *(v48 + 104);
  v48 += 104;
  v37 = v14;
  v22 = v41;
  v21(v14, v20, v41);
  v42 = v19;
  v23 = sub_22D72E620();
  v24 = v43;
  v43[2] = v23;
  v40 = "uthorizationManager";
  sub_22D72E330();
  v49 = MEMORY[0x277D84F90];
  sub_22D72E6E0();
  v21(v37, v20, v22);
  v24[3] = sub_22D72E620();
  v24[4] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF630, &unk_22D730700);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v24[5] = sub_22D72DC20();
  v24[16] = MEMORY[0x277D84FA0];
  sub_22D6D42A8(v52, (v24 + 6));
  sub_22D6D42A8(v51, (v24 + 11));
  v28 = *__swift_project_boxed_opaque_existential_1(v24 + 11, v24[14]);
  v49 = sub_22D719D58();
  v50 = v24[2];
  v29 = v50;
  v30 = sub_22D72E5E0();
  v31 = v44;
  (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
  v32 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFF30, &unk_22D7305D8);
  sub_22D6D58D4(&qword_281457230, &qword_27D9FFF30, &unk_22D7305D8);
  sub_22D72CA18();
  v33 = v45;
  sub_22D72DCA0();
  sub_22D6D5984(v31, &qword_27D9FF9B0, &qword_22D7302B0);

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_281457278, &qword_27D9FF5E0, &qword_22D7305D0);
  v34 = v46;
  sub_22D72DCB0();

  (*(v47 + 8))(v33, v34);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  return v24;
}

void *sub_22D729E9C(uint64_t a1, void *a2)
{
  v4 = sub_22D72E5F0();
  v16 = *(v4 - 8);
  v17 = v4;
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E5D0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22D72E370();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v20 = type metadata accessor for Daemon();
  v21 = &off_2840CDD70;
  *&v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = MEMORY[0x277D84F98];
  a2[7] = v12;
  a2[8] = v13;
  v15[1] = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E330();
  v18 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  (*(v16 + 104))(v7, *MEMORY[0x277D85260], v17);
  a2[9] = sub_22D72E620();
  sub_22D6B6CF0(&v19, (a2 + 2));
  return a2;
}

void *sub_22D72A164(uint64_t a1, void *a2)
{
  v4 = sub_22D72E5F0();
  v16 = *(v4 - 8);
  v17 = v4;
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E5D0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22D72E370();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v20 = type metadata accessor for Daemon();
  v21 = &off_2840CDD48;
  *&v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = MEMORY[0x277D84F98];
  a2[7] = v12;
  a2[8] = v13;
  v15[1] = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E330();
  v18 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  (*(v16 + 104))(v7, *MEMORY[0x277D85260], v17);
  a2[9] = sub_22D72E620();
  sub_22D6B6CF0(&v19, (a2 + 2));
  return a2;
}

uint64_t sub_22D72A42C(uint64_t a1, void *a2, char *a3)
{
  v26 = a2;
  v25 = sub_22D72E5F0();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72E5D0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_22D72E370();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v31[3] = type metadata accessor for StateCaptureService();
  v31[4] = &off_2840CD308;
  v31[0] = a1;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_listener] = 0;
  v13 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v24[0] = "v16@?0@NSDictionary8";
  v24[1] = v13;
  sub_22D72E350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v25);
  v14 = v26;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_requestProcessingQueue] = sub_22D72E620();
  sub_22D6D42A8(v31, &a3[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager]);
  v15 = type metadata accessor for StateCaptureServer();
  v30.receiver = a3;
  v30.super_class = v15;
  v16 = objc_msgSendSuper2(&v30, sel_init);
  v28 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22D72CA00;
  *(v17 + 24) = &v27;
  aBlock[4] = sub_22D713548;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_223;
  v18 = _Block_copy(aBlock);
  v19 = objc_opt_self();
  v20 = v16;

  v21 = [v19 listenerWithConfigurator_];
  _Block_release(v18);

  __swift_destroy_boxed_opaque_existential_1Tm(v31);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v23 = *&v20[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_listener];
    *&v20[OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_listener] = v21;

    return v20;
  }

  return result;
}

uint64_t sub_22D72A85C(uint64_t a1, void *a2, char *a3)
{
  v28 = a2;
  v5 = sub_22D72E5F0();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E5D0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22D72E370();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v33[3] = type metadata accessor for AlarmManager();
  v33[4] = &off_2840CC640;
  v33[0] = a1;
  v12 = OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&a3[v12] = v13;
  v14 = MEMORY[0x277D84FA0];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_clients] = MEMORY[0x277D84FA0];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_subscriptions] = v14;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_alarms] = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_listener] = 0;
  sub_22D6D42A8(v33, &a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager]);
  sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  (*(v26 + 104))(v25, *MEMORY[0x277D85268], v27);
  v15 = v28;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_queue] = sub_22D72E620();
  v16 = type metadata accessor for AlarmServer();
  v32.receiver = a3;
  v32.super_class = v16;
  v17 = objc_msgSendSuper2(&v32, sel_init);
  v30 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22D72CA08;
  *(v18 + 24) = &v29;
  aBlock[4] = sub_22D72CBB0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_230;
  v19 = _Block_copy(aBlock);
  v20 = objc_opt_self();
  v21 = v17;

  v22 = [v20 listenerWithConfigurator_];
  _Block_release(v19);

  __swift_destroy_boxed_opaque_existential_1Tm(v33);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v24 = *&v21[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_listener];
    *&v21[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_listener] = v22;

    return v21;
  }

  return result;
}

uint64_t sub_22D72ACF0(uint64_t a1, void *a2, char *a3)
{
  v29 = a2;
  v5 = sub_22D72E5F0();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72E5D0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_22D72E370();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v34[3] = type metadata accessor for AuthorizationManager();
  v34[4] = &off_2840CCBF0;
  v34[0] = a1;
  v13 = OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&a3[v13] = v14;
  v15 = MEMORY[0x277D84FA0];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock_clients] = MEMORY[0x277D84FA0];
  *&a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_subscriptions] = v15;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_listener] = 0;
  sub_22D6D42A8(v34, &a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager]);
  v26 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  (*(v27 + 104))(v8, *MEMORY[0x277D85268], v28);
  v16 = v29;
  *&a3[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_queue] = sub_22D72E620();
  v17 = type metadata accessor for AuthorizationServer();
  v33.receiver = a3;
  v33.super_class = v17;
  v18 = objc_msgSendSuper2(&v33, sel_init);
  v31 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22D72CA10;
  *(v19 + 24) = &v30;
  aBlock[4] = sub_22D72CBB0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_237;
  v20 = _Block_copy(aBlock);
  v21 = objc_opt_self();
  v22 = v18;

  v23 = [v21 listenerWithConfigurator_];
  _Block_release(v20);

  __swift_destroy_boxed_opaque_existential_1Tm(v34);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v25 = *&v22[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_listener];
    *&v22[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_listener] = v23;

    return v22;
  }

  return result;
}

void *sub_22D72B168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorizationPersistentStore();
  v22[3] = v4;
  v22[4] = &off_2840CCF90;
  v22[0] = a1;
  v20 = type metadata accessor for AppEventObserver();
  v21 = &off_2840CDAA8;
  v19[0] = a2;
  type metadata accessor for AuthorizationManager();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = v20;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_22D7297DC(*v9, *v15, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v17;
}

uint64_t sub_22D72B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActivityManager();
  v47[3] = v8;
  v47[4] = &off_2840CBDC8;
  v47[0] = a1;
  v45 = type metadata accessor for AppEventObserver();
  v46 = &off_2840CDAA8;
  v44[0] = a2;
  v42 = type metadata accessor for AuthorizationManager();
  v43 = &off_2840CCBF0;
  v41[0] = a3;
  v39 = type metadata accessor for AlarmPersistentStore();
  v40 = &off_2840CCE58;
  v38[0] = a4;
  v9 = type metadata accessor for AlarmManager();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v47, v8);
  v14 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v45;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v42;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v39;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = sub_22D7292EC(*v16, *v22, *v28, *v34, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return v36;
}

uint64_t sub_22D72B698(uint64_t a1)
{
  v8[3] = type metadata accessor for ActivityManager();
  v8[4] = &off_2840CBDB0;
  v8[0] = a1;
  v2 = qword_2814579C0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_2814579C8;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_22D6F5B28(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_22D72B7BC(uint64_t a1)
{
  v8[3] = type metadata accessor for AlarmManager();
  v8[4] = &off_2840CC628;
  v8[0] = a1;
  v2 = qword_2814579C0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_2814579C8;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_22D6F5B28(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_22D72B8E0(uint64_t a1)
{
  v8[3] = type metadata accessor for AuthorizationManager();
  v8[4] = &off_2840CCBD8;
  v8[0] = a1;
  v2 = qword_2814579C0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_2814579C8;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_22D6F4510(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_22D72BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v44 = a5;
  v45 = a4;
  v43 = a3;
  v40 = sub_22D72E5F0();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72E5D0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_22D72E370();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v52[3] = type metadata accessor for MobileKeybagFirstLockStateProvider();
  v52[4] = &off_2840CCDF0;
  v52[0] = a1;
  v51[3] = type metadata accessor for AlarmPersistentStore();
  v51[4] = &off_2840CCE58;
  v51[0] = a2;
  *(a6 + 184) = 0;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3C0, &qword_22D730270);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(a6 + 192) = sub_22D72DC20();
  *(a6 + 200) = 0;
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  *(a6 + 208) = sub_22D72DC20();
  v42 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v41 = "larmManager.callout";
  sub_22D72E330();
  *&v48 = MEMORY[0x277D84F90];
  v39 = sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230]);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  v22 = *MEMORY[0x277D85260];
  v23 = v9 + 104;
  v24 = *(v9 + 104);
  v37 = v23;
  v36 = v12;
  v25 = v40;
  v24(v12, v22, v40);
  *(a6 + 216) = sub_22D72E620();
  v41 = "e.AlarmKitCore.AlarmManager";
  sub_22D72E330();
  *&v48 = MEMORY[0x277D84F90];
  v26 = v43;
  sub_22D72E6E0();
  v24(v36, v22, v25);
  v27 = sub_22D72E620();
  v28 = MEMORY[0x277D84F98];
  *(a6 + 224) = v27;
  *(a6 + 232) = v28;
  *(a6 + 240) = MEMORY[0x277D84FA0];
  *(a6 + 288) = v28;
  sub_22D6D42A8(v52, a6 + 248);
  sub_22D6D42A8(v51, a6 + 96);
  sub_22D6D5A4C(v26, &v46, &unk_27D9FFF20, &unk_22D731968);
  if (v47)
  {
    sub_22D6D5984(v26, &unk_27D9FFF20, &unk_22D731968);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    sub_22D6B6CF0(&v46, &v48);
  }

  else
  {
    v29 = sub_22D72D8C0();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_22D72D8B0();
    v49 = v29;
    v50 = &off_2840CBD90;
    *&v48 = v32;
    sub_22D6D5984(v26, &unk_27D9FFF20, &unk_22D731968);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    if (v47)
    {
      sub_22D6D5984(&v46, &unk_27D9FFF20, &unk_22D731968);
    }
  }

  sub_22D6B6CF0(&v48, a6 + 136);
  v33 = 25;
  if ((v44 & 1) == 0)
  {
    v33 = v45;
  }

  *(a6 + 176) = v33;
  return a6;
}

uint64_t sub_22D72BF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a2;
  v7 = sub_22D72E300();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D72E370();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Alarm(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v52 = a3;
    v21 = sub_22D72D5A0();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_22D72D590();
    sub_22D7244E4(&qword_27D9FFE70, type metadata accessor for Alarm);
    v35 = sub_22D72D580();
    v37 = v36;
    sub_22D72D750();
    v38 = objc_allocWithZone(MEMORY[0x277CEA570]);
    sub_22D6D3F68(v35, v37);
    v39 = sub_22D72E480();

    v40 = sub_22D72D640();
    sub_22D6D5664(v35, v37);
    v41 = [v38 initWithIdentifier:v39 data:v40 attributes:0];

    v42 = swift_allocObject();
    v43 = v57;
    v42[2] = v4;
    v42[3] = v43;
    v42[4] = v52;
    v63 = sub_22D72C810;
    v64 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_22D726C60;
    v62 = &block_descriptor_152;
    v44 = _Block_copy(&aBlock);
    v45 = v4;

    [v20 updateAlarm:v41 completion:v44];
    swift_unknownObjectRelease();
    _Block_release(v44);

    sub_22D6D5664(v35, v37);
  }

  else
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v24 = sub_22D72DBE0();
    __swift_project_value_buffer(v24, qword_27DA01718);
    sub_22D6F37E4(a1, v18);
    v25 = sub_22D72DBB0();
    v26 = sub_22D72E580();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v52 = a3;
      v28 = v27;
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446210;
      sub_22D72D7A0();
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v30 = sub_22D72E960();
      v32 = v31;
      sub_22D6F3848(v18);
      v33 = sub_22D72891C(v30, v32, &aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_22D6B4000, v25, v26, "%{public}s: Cannot update alarm: daemon has no delegate", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2318D0420](v29, -1, -1);
      v34 = v28;
      a3 = v52;
      MEMORY[0x2318D0420](v34, -1, -1);
    }

    else
    {

      sub_22D6F3848(v18);
    }

    v46 = *&v4[OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue];
    v47 = swift_allocObject();
    *(v47 + 16) = v57;
    *(v47 + 24) = a3;
    v63 = sub_22D72C7D8;
    v64 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_22D6C0FD8;
    v62 = &block_descriptor_140_0;
    v48 = _Block_copy(&aBlock);

    sub_22D72E330();
    v58 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v49 = v56;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v14, v10, v48);
    _Block_release(v48);
    (*(v55 + 8))(v10, v49);
    (*(v53 + 8))(v14, v54);
  }
}

uint64_t objectdestroy_112Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_88Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_22D72C934()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_22D6D44C0(MEMORY[0x277D84F90]);
  v2();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_22D72CA18()
{
  result = qword_281457180;
  if (!qword_281457180)
  {
    sub_22D6FCE80(255, &qword_281457170, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281457180);
  }

  return result;
}

uint64_t sub_22D72CBD8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_22D72CC14(uint64_t a1)
{
  v2 = sub_22D72CF94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D72CC50(uint64_t a1)
{
  v2 = sub_22D72CF94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22D72CCB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFF58, &qword_22D731A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22D72CF94();
  sub_22D72EA60();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_22D72CE38()
{
  result = qword_27D9FFF38;
  if (!qword_27D9FFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF38);
  }

  return result;
}

unint64_t sub_22D72CE90()
{
  result = qword_27D9FFF40;
  if (!qword_27D9FFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF40);
  }

  return result;
}

unint64_t sub_22D72CEE8()
{
  result = qword_27D9FFF48;
  if (!qword_27D9FFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF48);
  }

  return result;
}

unint64_t sub_22D72CF40()
{
  result = qword_27D9FFF50;
  if (!qword_27D9FFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF50);
  }

  return result;
}

unint64_t sub_22D72CF94()
{
  result = qword_27D9FFF60;
  if (!qword_27D9FFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF60);
  }

  return result;
}

unint64_t sub_22D72CFFC()
{
  result = qword_27D9FFF68;
  if (!qword_27D9FFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF68);
  }

  return result;
}

unint64_t sub_22D72D054()
{
  result = qword_27D9FFF70;
  if (!qword_27D9FFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFF70);
  }

  return result;
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

uint64_t sub_22D72D1A8()
{
  v0 = sub_22D72DBE0();
  __swift_allocate_value_buffer(v0, qword_27DA016E8);
  __swift_project_value_buffer(v0, qword_27DA016E8);
  return sub_22D72DBC0();
}

uint64_t sub_22D72D228()
{
  v0 = sub_22D72DBE0();
  __swift_allocate_value_buffer(v0, qword_27DA01700);
  __swift_project_value_buffer(v0, qword_27DA01700);
  return sub_22D72DBC0();
}

uint64_t sub_22D72D340(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22D72DBE0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22D72DBC0();
}

unint64_t sub_22D72D3B8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x7974697669746361;
    v7 = 0x7265536D72616C61;
    v8 = 0x746E657645707061;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E614D6D72616C61;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x67616279656BLL;
    v2 = 0x7061436574617473;
    if (a1 != 9)
    {
      v2 = 1701536119;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    v4 = 0x6E6F6D656164;
    if (a1 != 6)
    {
      v4 = 0x6573616261746164;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}