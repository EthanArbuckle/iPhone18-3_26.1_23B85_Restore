uint64_t sub_24119C450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534118, &qword_2411ADA40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24119C4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_2411ABDA8();
  v6[5] = sub_2411ABD98();
  v8 = sub_2411ABD48();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_24119C55C, v8, v7);
}

uint64_t sub_24119C55C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[8] = v3;
  swift_weakInit();
  v4 = swift_allocObject();
  v0[9] = v4;
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_24119C69C;
  v8 = v0[2];
  v7 = v0[3];

  return sub_241195418(v7, sub_24119D4B0, v5);
}

uint64_t sub_24119C69C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v9 = *v0;

  v6 = *(v1 + 56);
  v7 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24119C820, v7, v6);
}

uint64_t sub_24119C820()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24119C880(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 72);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = Strong;
    if (v4)
    {
      if (!Strong)
      {
      }

      type metadata accessor for HostSendAskToQuestionFlowCoordinator();
      v7 = v4;
      v8 = sub_2411ABEB8();

      if ((v8 & 1) == 0)
      {
      }
    }

    else if (Strong)
    {
    }

    v9 = *(v3 + 72);
    *(v3 + 72) = 0;

    sub_24119CC54(a1);
  }

  return result;
}

void sub_24119C96C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  sub_2411AB958();
  [v3 setObject:a1 forSetting:sub_2411AB938()];
  v4 = [objc_opt_self() responseWithInfo_];
  swift_beginAccess();
  sub_24119D390(v1 + 80, v19);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    v8 = *(v5 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v11);
    sub_241186CE4(v19, &qword_27E534118, &qword_2411ADA40);
    v12 = (*(v6 + 8))(v5, v6);
    (*(v8 + 8))(v11, v5);
    if (v12)
    {
      v13 = sub_24119B5C0(v12);

      if (v13)
      {
        [v13 sendResponse:v4];
        v14 = v3;
        v3 = v13;
        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_241186CE4(v19, &qword_27E534118, &qword_2411ADA40);
  }

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v15 = sub_2411AB5A8();
  __swift_project_value_buffer(v15, qword_27E535AC0);
  v14 = sub_2411AB588();
  v16 = sub_2411ABE28();
  if (os_log_type_enabled(v14, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24117E000, v14, v16, "No BSAction in configuration context", v17, 2u);
    MEMORY[0x245CDDA90](v17, -1, -1);
  }

LABEL_10:
}

uint64_t sub_24119CC54(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 120);
  if (v4)
  {
    v5 = objc_allocWithZone(sub_2411AB958());
    v6 = v4;
    v7 = a1;
    v8 = sub_2411AB948();
    sub_24119C96C(v8);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v9 = sub_2411AB5A8();
    __swift_project_value_buffer(v9, qword_27E535AC0);
    v8 = sub_2411AB588();
    v10 = sub_2411ABE28();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24117E000, v8, v10, "No Request payload. This is quite unexpected...", v11, 2u);
      MEMORY[0x245CDDA90](v11, -1, -1);
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(a1, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SceneBasedSendAskFlowController.deinit()
{
  sub_24119D130(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  sub_241186CE4(v0 + 80, &qword_27E534118, &qword_2411ADA40);
  return v0;
}

uint64_t SceneBasedSendAskFlowController.__deallocating_deinit()
{
  sub_24119D130(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  sub_241186CE4(v0 + 80, &qword_27E534118, &qword_2411ADA40);

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t (*sub_24119CE9C(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24119D710;
}

void sub_24119CF30(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t sub_24119CFD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24119D018()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24119D068(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2411862D8;

  return sub_24119C4C0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_24119D15C()
{
  result = qword_27E534128;
  if (!qword_27E534128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534128);
  }

  return result;
}

uint64_t sub_24119D1B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24119D200(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24119D390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534118, &qword_2411ADA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24119D400()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24119D438()
{
  MEMORY[0x245CDDB60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24119D470()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24119D4B0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_24119C880(a1);
}

uint64_t sub_24119D4B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_24119D4C4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x245CDD380](a1, a2, v7);
      sub_24119D6C4();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24119D6C4();
    if (sub_2411ABF18() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2411ABF28();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2411ABEA8();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2411ABEB8();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t sub_24119D6C4()
{
  result = qword_27E534130;
  if (!qword_27E534130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E534130);
  }

  return result;
}

uint64_t sub_24119D714()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534138, &qword_2411ADB80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2411AD060;
  v2 = sub_24119DD84();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534150, &qword_2411ADB90);
  *(v1 + 32) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_2411ABD38();

  v5 = [v3 initWithArray_];

  sub_2411ABE08();
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v6 = sub_2411AB5A8();
  __swift_project_value_buffer(v6, qword_27E535AC0);
  v7 = sub_2411AB588();
  v8 = sub_2411ABE38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24117E000, v7, v8, "[hostSendAskToQuestionFlowExportedInterface] Unable to create NSXPCInterface replyAllowedClasses set", v9, 2u);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  return 0;
}

uint64_t sub_24119D95C()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534138, &qword_2411ADB80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2411AD060;
  v2 = sub_2411AB678();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534140, &qword_2411ADB88);
  *(v1 + 32) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_2411ABD38();

  v5 = [v3 initWithArray_];

  sub_2411ABE08();
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v6 = sub_2411AB5A8();
  __swift_project_value_buffer(v6, qword_27E535AC0);
  v7 = sub_2411AB588();
  v8 = sub_2411ABE38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24117E000, v7, v8, "Unable to create NSXPCInterface messageComposeRequestAllowedClasses set", v9, 2u);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  return 0;
}

unint64_t sub_24119DD84()
{
  result = qword_27E534148;
  if (!qword_27E534148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E534148);
  }

  return result;
}

void ATPayload.newMessage(sessionId:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534158, &qword_2411ADBA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v136 = &v122 - v6;
  v137 = sub_2411AB3D8();
  v139 = *(v137 - 8);
  v7 = v139[8];
  MEMORY[0x28223BE20](v137);
  v130 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FA0, &qword_2411AD2E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v133 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v122 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v122 - v16;
  v18 = sub_2411AB428();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v128 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v129 = &v122 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v122 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v122 - v28;
  v31 = v30;
  sub_241186C60(a1, v17, &qword_27E533FA0, &qword_2411AD2E0);
  v32 = *(v19 + 48);
  v33 = v32(v17, 1, v31);
  v134 = v19;
  v131 = v32;
  v132 = v19 + 48;
  if (v33 == 1)
  {
    sub_241186CE4(v17, &qword_27E533FA0, &qword_2411AD2E0);
    v34 = sub_2411ABCA8();
    sub_2411AB5D8();

    v35 = v2;
    if (v32(v15, 1, v31) == 1)
    {
      sub_241186CE4(v15, &qword_27E533FA0, &qword_2411AD2E0);
      if (qword_27E533C28 != -1)
      {
        swift_once();
      }

      v36 = sub_2411AB5A8();
      __swift_project_value_buffer(v36, qword_27E535AD8);
      v37 = sub_2411AB588();
      v38 = sub_2411ABE28();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v139;
      if (v39)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_24117E000, v37, v38, "AskTo question ID was not a valid UUID. Will not breadcrumb.", v41, 2u);
        MEMORY[0x245CDDA90](v41, -1, -1);
      }

      v42 = [objc_allocWithZone(MEMORY[0x277CD6920]) init];
      goto LABEL_23;
    }

    (*(v134 + 32))(v27, v15, v31);
    v138[3] = &type metadata for AskToFeatures;
    v138[4] = sub_24119FA1C();
    v46 = sub_2411AB4F8();
    __swift_destroy_boxed_opaque_existential_0(v138);
    if ((v46 & 1) == 0)
    {
      v40 = v139;
      if (qword_27E533C28 != -1)
      {
        swift_once();
      }

      v70 = sub_2411AB5A8();
      __swift_project_value_buffer(v70, qword_27E535AD8);
      v71 = sub_2411AB588();
      v72 = sub_2411ABE48();
      v73 = os_log_type_enabled(v71, v72);
      v48 = v134;
      if (v73)
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_24117E000, v71, v72, "AskTo breadcrumbing is not enabled", v74, 2u);
        MEMORY[0x245CDDA90](v74, -1, -1);
      }

      v75 = [objc_allocWithZone(MEMORY[0x277CD6920]) init];
      goto LABEL_22;
    }

    if (qword_27E533C28 != -1)
    {
      swift_once();
    }

    v47 = sub_2411AB5A8();
    __swift_project_value_buffer(v47, qword_27E535AD8);
    v48 = v134;
    v49 = v129;
    (*(v134 + 16))(v129, v27, v31);
    v50 = v35;
    v51 = sub_2411AB588();
    v52 = sub_2411ABE48();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v123 = v53;
      v126 = swift_slowAlloc();
      v138[0] = v126;
      *v53 = 136315394;
      v125 = v52;
      v54 = sub_2411ABCA8();
      v127 = v27;
      v55 = v128;
      sub_2411AB668();

      sub_24119FA70();
      v56 = sub_2411ABF78();
      v57 = v35;
      v59 = v58;
      v124 = v51;
      v60 = *(v48 + 8);
      v61 = v55;
      v27 = v127;
      v60(v61, v31);
      v62 = sub_24119F950(v56, v59, v138);
      v35 = v57;

      v63 = v123;
      *(v123 + 1) = v62;
      *(v63 + 6) = 2080;
      v64 = sub_2411ABF78();
      v66 = v65;
      v60(v49, v31);
      v48 = v134;
      v67 = sub_24119F950(v64, v66, v138);

      *(v63 + 14) = v67;
      v68 = v124;
      _os_log_impl(&dword_24117E000, v124, v125, "Breadcrumbing question with system ID %s using content hash %s", v63, 0x16u);
      v69 = v126;
      swift_arrayDestroy();
      MEMORY[0x245CDDA90](v69, -1, -1);
      MEMORY[0x245CDDA90](v63, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v49, v31);
    }

    v40 = v139;
    v76 = objc_allocWithZone(MEMORY[0x277CD6920]);
    v77 = sub_2411AB408();
    v78 = [v76 initWithIdentifier_];

    v75 = v78;
    if (v78)
    {
LABEL_22:
      v79 = *(v48 + 8);
      v42 = v75;
      v79(v27, v31);
      goto LABEL_23;
    }

LABEL_48:
    __break(1u);
    return;
  }

  (*(v19 + 32))(v29, v17, v31);
  v43 = objc_allocWithZone(MEMORY[0x277CD6920]);
  v44 = sub_2411AB408();
  v45 = [v43 initWithIdentifier_];

  if (!v45)
  {
    __break(1u);
    goto LABEL_48;
  }

  (*(v19 + 8))(v29, v31);
  v42 = v45;
  v35 = v2;
  v40 = v139;
LABEL_23:
  v80 = [objc_allocWithZone(MEMORY[0x277CD68F8]) initWithSession_];
  v139 = v42;

  [v80 setRequiresValidation_];
  v81 = ATPayload.fallbackLinkPreview()();
  if (v81)
  {
    v82 = v81;
    v83 = [objc_allocWithZone(MEMORY[0x277CD6908]) initWithLinkMetadata_];
    v84 = [objc_allocWithZone(MEMORY[0x277CD6900]) initWithAlternateLayout_];
  }

  else
  {
    v82 = [objc_allocWithZone(MEMORY[0x277CD6910]) init];
    v85 = sub_2411ABCA8();
    sub_2411AB638();

    v86 = sub_2411ABCD8();

    [v82 setCaption_];

    v87 = sub_2411ABCA8();
    sub_2411AB658();

    v88 = sub_2411ABCD8();

    [v82 setSubcaption_];

    v84 = [objc_allocWithZone(MEMORY[0x277CD6900]) initWithAlternateLayout_];
  }

  if ([v84 respondsToSelector_])
  {
    v89 = sub_2411ABD38();
    [v84 setRequiredCapabilities_];
  }

  else
  {
    if (qword_27E533C28 != -1)
    {
      swift_once();
    }

    v90 = sub_2411AB5A8();
    __swift_project_value_buffer(v90, qword_27E535AD8);
    v89 = sub_2411AB588();
    v91 = sub_2411ABE28();
    if (os_log_type_enabled(v89, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_24117E000, v89, v91, "MSMessage does not respond to #selector(setter: MSMessage.requiredCapabilities)!", v92, 2u);
      MEMORY[0x245CDDA90](v92, -1, -1);
    }
  }

  [v80 setLayout_];
  v93 = sub_2411ABCA8();
  sub_2411AB618();
  v95 = v94;

  if (!v95)
  {
    v96 = sub_2411ABCA8();
    sub_2411AB5F8();
    v98 = v97;

    if (!v98)
    {
      v99 = sub_2411ABCA8();
      sub_2411AB638();
    }
  }

  v100 = sub_2411ABCD8();

  [v80 setSummaryText_];

  v102 = v135;
  v101 = v136;
  sub_2411ABC28();
  v103 = v137;
  if (v102)
  {

    (v40[7])(v101, 1, 1, v103);
  }

  else if ((v40[6])(v101, 1, v137) != 1)
  {
    v120 = v130;
    (v40[4])(v130, v101, v103);
    v121 = sub_2411AB3A8();
    [v80 setURL_];

    (v40[1])(v120, v103);
    return;
  }

  v104 = v31;
  sub_241186CE4(v101, &qword_27E534158, &qword_2411ADBA0);
  if (qword_27E533C28 != -1)
  {
    swift_once();
  }

  v105 = sub_2411AB5A8();
  __swift_project_value_buffer(v105, qword_27E535AD8);
  v106 = v35;
  v107 = sub_2411AB588();
  v108 = sub_2411ABE28();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v138[0] = v110;
    *v109 = 136315650;
    *(v109 + 4) = sub_24119F950(0xD000000000000021, 0x80000002411AEE30, v138);
    *(v109 + 12) = 2080;
    *(v109 + 14) = sub_24119F950(0xD000000000000016, 0x80000002411AEE60, v138);
    *(v109 + 22) = 2080;
    v111 = sub_2411ABCA8();
    v112 = v133;
    sub_2411AB5D8();

    if (v131(v112, 1, v104) == 1)
    {
      sub_241186CE4(v112, &qword_27E533FA0, &qword_2411AD2E0);
      v113 = 0xE500000000000000;
      v114 = 0x3E6C696E3CLL;
    }

    else
    {
      v115 = sub_2411AB3F8();
      v116 = v112;
      v117 = v115;
      v113 = v118;
      (*(v134 + 8))(v116, v104);
      v114 = v117;
    }

    v119 = sub_24119F950(v114, v113, v138);

    *(v109 + 24) = v119;
    _os_log_impl(&dword_24117E000, v107, v108, "%s.%s: Failed to create ATURL for payload: %s", v109, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CDDA90](v110, -1, -1);
    MEMORY[0x245CDDA90](v109, -1, -1);
  }

  sub_24119F8FC();
  swift_allocError();
  swift_willThrow();
}

LPLinkMetadata_optional __swiftcall ATPayload.fallbackLinkPreview()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534158, &qword_2411ADBA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v49[0] = v49 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FD0, &unk_2411AD390);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v49 - v16;
  v18 = sub_2411ABCA8();
  sub_2411AB5B8();

  v19 = sub_2411AB608();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v17, 1, v19) == 1)
  {
    sub_241186CE4(v17, &qword_27E533FD0, &unk_2411AD390);
  }

  else
  {
    v22 = (*(v20 + 88))(v17, v19);
    v49[1] = v1;
    v23 = *MEMORY[0x277CEEAD0];
    (*(v20 + 8))(v17, v19);
    if (v22 == v23)
    {
      v24 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
      v25 = sub_2411ABCA8();
      sub_2411AB638();

      v26 = sub_2411ABCD8();

      [v24 setTitle_];

      sub_2411AB3C8();
      v27 = sub_2411AB3D8();
      v28 = *(v27 - 8);
      v29 = 0;
      if ((*(v28 + 48))(v10, 1, v27) != 1)
      {
        v29 = sub_2411AB3A8();
        (*(v28 + 8))(v10, v27);
      }

      goto LABEL_18;
    }
  }

  v30 = sub_2411ABCA8();
  sub_2411AB5B8();

  if (v21(v15, 1, v19) == 1)
  {
    sub_241186CE4(v15, &qword_27E533FD0, &unk_2411AD390);
    v24 = 0;
    goto LABEL_20;
  }

  v32 = (*(v20 + 88))(v15, v19);
  v33 = *MEMORY[0x277CEEAD8];
  (*(v20 + 8))(v15, v19);
  if (v32 != v33)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v34 = sub_2411ABCA8();
  sub_2411AB638();

  v35 = sub_2411ABCD8();

  [v24 setTitle_];

  v36 = sub_2411ABCA8();
  sub_2411AB5E8();

  v37 = sub_2411AB3D8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v6, 1, v37) == 1)
  {
    v40 = v49[0];
    sub_2411AB3C8();
    if (v39(v6, 1, v37) != 1)
    {
      sub_241186CE4(v6, &qword_27E534158, &qword_2411ADBA0);
    }
  }

  else
  {
    v40 = v49[0];
    (*(v38 + 32))(v49[0], v6, v37);
    (*(v38 + 56))(v40, 0, 1, v37);
  }

  if (v39(v40, 1, v37) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_2411AB3A8();
    (*(v38 + 8))(v40, v37);
  }

LABEL_18:
  [v24 setURL_];

  v41 = sub_24119F574();
  if (v31 >> 60 != 15)
  {
    v42 = v41;
    v43 = v31;
    v44 = objc_allocWithZone(MEMORY[0x277CD46B0]);
    sub_24119FAC8(v42, v43);
    v45 = sub_2411AB3E8();
    v46 = sub_2411ABCD8();
    v47 = [v44 initWithData:v45 MIMEType:v46];

    sub_24119FB1C(v42, v43);
    [v24 setImage_];

    sub_24119FB1C(v42, v43);
  }

LABEL_20:
  v48 = v24;
  result.is_nil = v31;
  result.value.super.isa = v48;
  return result;
}

uint64_t sub_24119F38C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2411AB428();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FA0, &qword_2411AD2E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18[-v12];
  if (a3)
  {
    sub_2411AB418();
    (*(v6 + 32))(v13, v9, v5);
    (*(v6 + 56))(v13, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v13, 1, 1, v5);
  }

  v14 = a1;
  ATPayload.newMessage(sessionId:)(v13);
  v16 = v15;
  sub_241186CE4(v13, &qword_27E533FA0, &qword_2411AD2E0);

  return v16;
}

uint64_t sub_24119F574()
{
  v26 = sub_2411ABC18();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534180, &qword_2411ADC68);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_2411ABA08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_2411AB9F8();
  v18 = sub_2411ABCA8();
  v19 = sub_2411AB5C8();

  if (v19)
  {
    sub_2411AB9C8();
  }

  else
  {
    sub_2411AB9D8();
  }

  v20 = v26;
  (*(v0 + 56))(v9, 0, 1, v26);
  (*(v11 + 16))(v15, v17, v10);
  sub_241186C60(v9, v7, &qword_27E534180, &qword_2411ADC68);
  if ((*(v0 + 48))(v7, 1, v20) == 1)
  {
    v21 = 0;
  }

  else
  {
    v22 = v25;
    (*(v0 + 32))(v25, v7, v20);
    v21 = sub_2411AB9E8();
    (*(v0 + 8))(v22, v20);
  }

  sub_241186CE4(v9, &qword_27E534180, &qword_2411ADC68);
  v23 = *(v11 + 8);
  v23(v17, v10);
  v23(v15, v10);
  return v21;
}

id sub_24119F8B8(void *a1)
{
  v1 = a1;
  v2 = ATPayload.fallbackLinkPreview()();

  return v2;
}

unint64_t sub_24119F8FC()
{
  result = qword_27E534160;
  if (!qword_27E534160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534160);
  }

  return result;
}

uint64_t sub_24119F950(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24119FB98(v11, 0, 0, 1, a1, a2);
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
    sub_241192420(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24119FA1C()
{
  result = qword_27E534168;
  if (!qword_27E534168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534168);
  }

  return result;
}

unint64_t sub_24119FA70()
{
  result = qword_27E534170;
  if (!qword_27E534170)
  {
    sub_2411AB428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534170);
  }

  return result;
}

uint64_t sub_24119FAC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24119FB1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24119BB78(a1, a2);
  }

  return a1;
}

unint64_t sub_24119FB44()
{
  result = qword_27E534178;
  if (!qword_27E534178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534178);
  }

  return result;
}

unint64_t sub_24119FB98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24119FCA4(a5, a6);
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
    result = sub_2411ABF68();
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

uint64_t sub_24119FCA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_24119FCF0(a1, a2);
  sub_24119FE20(&unk_2852EED10);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24119FCF0(uint64_t a1, unint64_t a2)
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

  v6 = sub_24119FF0C(v5, 0);
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

  result = sub_2411ABF68();
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
        v10 = sub_2411ABD28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24119FF0C(v10, 0);
        result = sub_2411ABF58();
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

uint64_t sub_24119FE20(uint64_t result)
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

  result = sub_24119FF80(result, v12, 1, v3);
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

void *sub_24119FF0C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534188, &unk_2411ADC70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24119FF80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534188, &unk_2411ADC70);
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

uint64_t sub_2411A00D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v5);
  return a3(v5, v6);
}

uint64_t ErrorView.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];

  return v1;
}

uint64_t ErrorView.onDismiss.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ErrorView.init(title:error:onDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v14 = type metadata accessor for ErrorView();
  result = (*(*(a8 - 8) + 32))(a9 + *(v14 + 36), a5, a8);
  v16 = (a9 + *(v14 + 40));
  *v16 = a6;
  v16[1] = a7;
  return result;
}

uint64_t ErrorView.body.getter(uint64_t a1)
{
  sub_2411AB8D8();
  sub_2411AB818();
  v6 = v1[1];
  v7 = *v1;
  v5 = *(v1 + 16);
  v4 = v1[3];
  sub_2411AB928();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534190, &unk_2411ADC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D70, &qword_2411ACE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534198, &qword_2411ADC90);
  sub_2411A0EFC();
  sub_241186A54(&qword_27E533D80, &qword_27E533D70, &qword_2411ACE78);
  sub_2411A0FB4();
  sub_2411AB8A8();
}

uint64_t sub_2411A0458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a3;
  v17 = a4;
  v15 = a2;
  v5 = type metadata accessor for ErrorView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2411AB7A8();
  (*(v6 + 16))(v9, a1, v5);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v12 = v16;
  *(v11 + 16) = v15;
  *(v11 + 24) = v12;
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_2411AB908();
}

uint64_t sub_2411A0640(uint64_t a1)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + *(type metadata accessor for ErrorView() + 40);
  v3 = *(v2 + 8);
  (*v2)();
}

__n128 sub_2411A070C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v51 = a1;
  v50 = a3;
  v4 = sub_2411AB798();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v49[1] = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v49[0] = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v49 - v13;
  sub_2411ABDA8();
  v49[2] = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(type metadata accessor for ErrorView() + 36);
  v16 = *(v9 + 16);
  v16(v14, v51 + v15, a2);
  v17 = sub_2411ABF88();
  if (v17)
  {
    v18 = v17;
    (*(v9 + 8))(v14, a2);
  }

  else
  {
    v18 = swift_allocError();
    (*(v9 + 32))(v19, v14, a2);
  }

  *&v52 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534258, &qword_2411ADD38);
  if (swift_dynamicCast())
  {
    if (*(&v60 + 1))
    {
      sub_24119B9F4(&v59, &v55);
      sub_24119B9F4(&v55, &v59);
      goto LABEL_11;
    }
  }

  else
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
  }

  sub_241186CE4(&v59, &qword_27E534260, &qword_2411ADD40);
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
LABEL_11:
  sub_2411A15F0(&v59, &v55);
  if (v56.n128_u64[1])
  {
    __swift_project_boxed_opaque_existential_1Tm(&v55, v56.n128_i64[1]);
    v20 = sub_2411AB338();
    v22 = v21;
    sub_2411A1670(&v55);
    if (v22)
    {
      *&v55 = v20;
      *(&v55 + 1) = v22;
      sub_2411869E8();
      v23 = sub_2411AB848();
      v25 = v23;
      v26 = v24;
      *&v52 = v23;
      *(&v52 + 1) = v24;
      v28 = v27 & 1;
      v53.n128_u64[0] = v27 & 1;
      v53.n128_u64[1] = v29;
      LOBYTE(v54) = 0;
LABEL_18:
      sub_2411A1660(v23, v24, v28);

      sub_2411AB7D8();
      v52 = v55;
      v53 = v56;
      v54 = v57;
      goto LABEL_26;
    }
  }

  else
  {
    sub_241186CE4(&v55, &qword_27E534268, &qword_2411ADD48);
  }

  sub_2411A15F0(&v59, &v55);
  if (v56.n128_u64[1])
  {
    __swift_project_boxed_opaque_existential_1Tm(&v55, v56.n128_i64[1]);
    sub_2411AB328();
    v31 = v30;
    sub_2411A1670(&v55);
    if (v31)
    {
      sub_2411AB788();
      sub_2411AB778();
      sub_2411AB768();

      sub_2411AB778();
      sub_2411AB7B8();
      v23 = sub_2411AB828();
      v25 = v23;
      v26 = v24;
      *&v52 = v23;
      *(&v52 + 1) = v24;
      v28 = v32 & 1;
      v53.n128_u64[0] = v32 & 1;
      v53.n128_u64[1] = v33;
      LOBYTE(v54) = 1;
      goto LABEL_18;
    }
  }

  else
  {
    sub_241186CE4(&v55, &qword_27E534268, &qword_2411ADD48);
  }

  if (os_variant_has_internal_ui())
  {
    sub_2411AB788();
    sub_2411AB778();
    v34 = v49[0];
    v16(v49[0], v51 + v15, a2);
    v35 = sub_2411ABF88();
    if (v35)
    {
      v36 = v35;
      (*(v9 + 8))(v34, a2);
    }

    else
    {
      v36 = swift_allocError();
      (*(v9 + 32))(v40, v34, a2);
    }

    v41 = sub_2411AB358();

    sub_24119DD84();
    sub_2411AB758();

    sub_2411AB778();
    sub_2411AB7B8();
    v25 = sub_2411AB828();
    v26 = v42;
    *&v52 = v25;
    *(&v52 + 1) = v42;
    v28 = v43 & 1;
    v53.n128_u64[0] = v43 & 1;
    v53.n128_u64[1] = v44;
    LOBYTE(v54) = 0;
    sub_2411A1660(v25, v42, v43 & 1);

    sub_2411AB7D8();
    v52 = v55;
    v53 = v56;
    LOBYTE(v54) = v57;
    HIBYTE(v54) = 1;
  }

  else
  {
    sub_2411AB7A8();
    v25 = sub_2411AB828();
    v26 = v37;
    v28 = v38 & 1;
    *&v52 = v25;
    *(&v52 + 1) = v37;
    v53.n128_u64[0] = v38 & 1;
    v53.n128_u64[1] = v39;
    LOBYTE(v54) = 1;
    sub_2411A1660(v25, v37, v38 & 1);

    sub_2411AB7D8();
    v52 = v55;
    v53 = v56;
    LOBYTE(v54) = v57;
    HIBYTE(v54) = 1;
  }

LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E5341C8, &qword_2411ADCA0);
  sub_2411A1038();
  sub_2411AB7D8();
  sub_241185B0C(v25, v26, v28);

  sub_241186CE4(&v59, &qword_27E534268, &qword_2411ADD48);

  result = v56;
  v46 = v57;
  v47 = v58;
  v48 = v50;
  *v50 = v55;
  v48[1] = result;
  v48[2].n128_u8[0] = v46;
  v48[2].n128_u8[1] = v47;
  return result;
}

double sub_2411A0EF0@<D0>(__n128 *a1@<X8>)
{
  v2 = v1[3];
  *&result = sub_2411A070C(v1[4], v1[2], a1).n128_u64[0];
  return result;
}

unint64_t sub_2411A0EFC()
{
  result = qword_27E5341A0;
  if (!qword_27E5341A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E534190, &unk_2411ADC80);
    sub_241186A54(&qword_27E5341A8, &qword_27E5341B0, &qword_2411ADC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5341A0);
  }

  return result;
}

unint64_t sub_2411A0FB4()
{
  result = qword_27E5341B8;
  if (!qword_27E5341B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E534198, &qword_2411ADC90);
    sub_2411A1038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5341B8);
  }

  return result;
}

unint64_t sub_2411A1038()
{
  result = qword_27E5341C0;
  if (!qword_27E5341C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E5341C8, &qword_2411ADCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5341C0);
  }

  return result;
}

unint64_t sub_2411A1104(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2411A14B8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2411A119C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_2411A12E4(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 32) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[2] = 0;
        result[3] = 0;
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_2411A14B8()
{
  result = qword_27E534250;
  if (!qword_27E534250)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E534250);
  }

  return result;
}

uint64_t sub_2411A1508()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E534190, &unk_2411ADC80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533D70, &qword_2411ACE78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E534198, &qword_2411ADC90);
  sub_2411A0EFC();
  sub_241186A54(&qword_27E533D80, &qword_27E533D70, &qword_2411ACE78);
  sub_2411A0FB4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2411A15F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534268, &qword_2411ADD48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2411A1660(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2411A16A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for ErrorView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v5 + 24);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v9 = *(v0 + v5 + v3[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2411A17A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ErrorView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2411A0640(v4);
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

uint64_t sub_2411A1840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2411A1888(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2411A18E4()
{
  result = qword_27E534270;
  if (!qword_27E534270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534270);
  }

  return result;
}

void sub_2411A1938(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2411A19A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2411A1A4C(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2411A1AB8()
{
  v1 = (v0 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_2411A1B08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_2411A1BC8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_currentQuestion;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2411A1C28()
{
  v1 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_currentQuestion;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2411A1C7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_currentQuestion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2411A1D34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onAnswer);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2411A6620;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2411927DC(v4);
}

uint64_t sub_2411A1DD4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2411A65E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onAnswer);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_2411927DC(v3);
  return sub_2411A1F58(v8);
}

uint64_t sub_2411A1E9C()
{
  v1 = (v0 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onAnswer);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_2411927DC(v3);
  return v3;
}

uint64_t sub_2411A1EF8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onAnswer);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2411A1F58(v6);
}

uint64_t sub_2411A1F58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id HostResponseUIFlowCoordinator.__allocating_init(extensionBundleIdentifier:question:onAnswer:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for RemoteController();
  v10 = swift_allocObject();
  v10[7] = a2;
  v10[8] = 0;
  v10[2] = 0xD00000000000001ALL;
  v10[3] = 0x80000002411AEF90;
  v10[4] = 0x65736E6F70736552;
  v10[5] = 0xEF656E6563534955;
  v10[6] = a1;
  v11 = objc_allocWithZone(type metadata accessor for HostResponseUIFlowCoordinator());

  return sub_2411A52F0(v10, a3, a4, a5, v11);
}

void static RemoteController.ExtensionIdentity.showResponseUIExtension.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x80000002411AEF90;
  a1[2] = 0x65736E6F70736552;
  a1[3] = 0xEF656E6563534955;
}

uint64_t sub_2411A2124()
{
  v1[5] = v0;
  sub_2411ABDA8();
  v1[6] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2411A21BC, v3, v2);
}

uint64_t sub_2411A21BC()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_state;
  v0[9] = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_state;
  if (*(v1 + v2))
  {
    v3 = v0[6];

    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v4 = sub_2411AB5A8();
    __swift_project_value_buffer(v4, qword_27E535AF0);
    v5 = sub_2411AB588();
    v6 = sub_2411ABE48();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24117E000, v5, v6, "ResponseFlow (Host): tried to load remote view while it is already loading or loaded", v7, 2u);
      MEMORY[0x245CDDA90](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v10 = sub_2411AB5A8();
    v0[10] = __swift_project_value_buffer(v10, qword_27E535AF0);
    v11 = sub_2411AB588();
    v12 = sub_2411ABE48();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24117E000, v11, v12, "ResponseFlow (Host): loading remote view...", v13, 2u);
      MEMORY[0x245CDDA90](v13, -1, -1);
    }

    v14 = v0[5];

    *(v1 + v2) = 1;
    v15 = (v14 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController);
    swift_beginAccess();
    v0[11] = *v15;
    v16 = v15[1];
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 72);
    swift_unknownObjectRetain();
    v21 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = sub_2411A24EC;

    return v21(ObjectType, v16);
  }
}

uint64_t sub_2411A24EC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_2411A2718;
  }

  else
  {
    v7 = sub_2411A2628;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2411A2628()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  swift_unknownObjectRelease();
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24117E000, v4, v5, "ResponseFlow (Host): loaded extension", v6, 2u);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  v7 = v0[9];
  v8 = v0[5];

  *(v8 + v7) = 2;
  v9 = v0[1];

  return v9();
}

uint64_t sub_2411A2718()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[6];

  swift_unknownObjectRelease();
  v5 = v1;
  v6 = sub_2411AB588();
  v7 = sub_2411ABE28();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24117E000, v6, v7, "ResponseFlow (Host): Error loading remote view: %@ Calling dismiss...", v9, 0xCu);
    sub_241186CE4(v10, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v10, -1, -1);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  v13 = v0[13];
  v14 = v0[5];

  v15 = v13;
  sub_2411A2898(v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2411A2898(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534028, &unk_2411AD520);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v11 = sub_2411AB5A8();
  __swift_project_value_buffer(v11, qword_27E535AF0);
  v12 = sub_2411AB588();
  v13 = sub_2411ABE48();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24117E000, v12, v13, "ResponseFlow (Host): dismissing flow", v14, 2u);
    MEMORY[0x245CDDA90](v14, -1, -1);
  }

  if (a1)
  {
    v15 = a1;
    v16 = sub_2411AB588();
    v17 = sub_2411ABE28();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24117E000, v16, v17, "ResponseFlow (Host): Flow ended with error: %@", v18, 0xCu);
      sub_241186CE4(v19, &unk_27E533D50, &qword_2411AD1C0);
      MEMORY[0x245CDDA90](v19, -1, -1);
      MEMORY[0x245CDDA90](v18, -1, -1);
    }

    else
    {
    }
  }

  v23 = *(v2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_dismissBlock);
  v22 = *(v2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_dismissBlock + 8);

  v23(v24);

  v25 = (v2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  ObjectType = swift_getObjectType();
  v29 = *(v27 + 64);
  swift_unknownObjectRetain();
  v30 = v29(ObjectType, v27);
  swift_unknownObjectRelease();
  [v30 setDelegate_];

  v31 = *v25;
  v32 = v25[1];
  v33 = swift_getObjectType();
  v34 = *(v32 + 64);
  swift_unknownObjectRetain();
  v35 = v34(v33, v32);
  swift_unknownObjectRelease();
  sub_2411ABE78();

  v36 = sub_2411ABE68();
  v37 = *(v36 - 8);
  LODWORD(v31) = (*(v37 + 48))(v10, 1, v36);
  sub_241186CE4(v10, &qword_27E534028, &unk_2411AD520);
  if (v31 != 1)
  {
    v38 = *v25;
    v39 = v25[1];
    v40 = swift_getObjectType();
    v41 = *(v39 + 64);
    swift_unknownObjectRetain();
    v42 = v41(v40, v39);
    swift_unknownObjectRelease();
    (*(v37 + 56))(v8, 1, 1, v36);
    sub_2411ABE88();
  }

  sub_2411A3A88();
  *(v2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_state) = 0;
  v43 = v2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onEnd;
  v45 = *(v2 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onEnd);
  v44 = *(v43 + 8);

  v45(a1);
}

void sub_2411A2D08()
{
  v1 = v0;
  v32[6] = *MEMORY[0x277D85DE8];
  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AF0);
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "ResponseFlow (Host): establishing XPC connection", v5, 2u);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }

  v6 = (v1 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 64);
  swift_unknownObjectRetain();
  v11 = v10(ObjectType, v8);
  swift_unknownObjectRelease();
  v32[0] = 0;
  v12 = [v11 makeXPCConnectionWithError_];

  v13 = v32[0];
  if (v12)
  {
    [v12 setExportedObject_];
    v14 = objc_opt_self();
    v15 = [v14 interfaceWithProtocol_];
    [v12 setExportedInterface_];

    v16 = [v14 interfaceWithProtocol_];
    [v12 setRemoteObjectInterface_];

    [v12 resume];
    v17 = *(v1 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_xpcConnection);
    *(v1 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_xpcConnection) = v12;
    v18 = v12;

    v19 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_currentQuestion;
    swift_beginAccess();
    v20 = *(v1 + v19);
    sub_2411A30D8(v20);
  }

  else
  {
    v21 = v13;
    v22 = sub_2411AB368();

    swift_willThrow();
    v23 = v22;
    v24 = sub_2411AB588();
    v25 = sub_2411ABE28();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v22;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_24117E000, v24, v25, "ResponseFlow (Host): Failed to establish XPC connection: %@", v26, 0xCu);
      sub_241186CE4(v27, &unk_27E533D50, &qword_2411AD1C0);
      MEMORY[0x245CDDA90](v27, -1, -1);
      MEMORY[0x245CDDA90](v26, -1, -1);
    }

    v30 = v22;
    sub_2411A2898(v22);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2411A30D8(uint64_t a1)
{
  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v3 = sub_2411AB5A8();
  __swift_project_value_buffer(v3, qword_27E535AF0);
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24117E000, v4, v5, "ResponseFlow (Host): sending question to extension", v6, 2u);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  v7 = *(v1 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_xpcConnection);
  if (v7)
  {
    v21 = sub_2411A3424;
    v22 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2411A1938;
    v20 = &block_descriptor_1;
    v8 = _Block_copy(&aBlock);
    v9 = v7;
    v10 = [v9 remoteObjectProxyWithErrorHandler_];
    _Block_release(v8);
    sub_2411ABED8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E534330, &qword_2411ADF38);
    if (swift_dynamicCast())
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = sub_2411A64D8;
      v22 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_2411A19A0;
      v20 = &block_descriptor_55;
      v12 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v16 beginApprovalFlowWith:a1 completion:v12];

      swift_unknownObjectRelease_n();
      _Block_release(v12);
    }

    else
    {
    }
  }

  else
  {
    oslog = sub_2411AB588();
    v13 = sub_2411ABE28();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24117E000, oslog, v13, "ResponseFlow (Host): No XPC connection available", v14, 2u);
      MEMORY[0x245CDDA90](v14, -1, -1);
    }
  }
}

void sub_2411A3424(void *a1)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AF0);
  v3 = a1;
  oslog = sub_2411AB588();
  v4 = sub_2411ABE28();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24117E000, oslog, v4, "ResponseFlow (Host): XPC proxy error: %@", v5, 0xCu);
    sub_241186CE4(v6, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v6, -1, -1);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }
}

void sub_2411A35EC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  if (a1)
  {
    v8 = a1;
    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v9 = sub_2411AB5A8();
    __swift_project_value_buffer(v9, qword_27E535AF0);
    v10 = a1;
    v11 = sub_2411AB588();
    v12 = sub_2411ABE28();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24117E000, v11, v12, "ResponseFlow (Host): Extension failed to begin approval flow: %@", v13, 0xCu);
      sub_241186CE4(v14, &unk_27E533D50, &qword_2411AD1C0);
      MEMORY[0x245CDDA90](v14, -1, -1);
      MEMORY[0x245CDDA90](v13, -1, -1);
    }

    v17 = sub_2411ABDD8();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    sub_2411ABDA8();
    v18 = a1;

    v19 = sub_2411ABD98();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = a2;
    v20[5] = a1;
    sub_241192E70(0, 0, v7, &unk_2411ADF48, v20);
  }

  else
  {
    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v22 = sub_2411AB5A8();
    __swift_project_value_buffer(v22, qword_27E535AF0);
    v27 = sub_2411AB588();
    v23 = sub_2411ABE48();
    if (os_log_type_enabled(v27, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24117E000, v27, v23, "ResponseFlow (Host): Extension successfully began approval flow", v24, 2u);
      MEMORY[0x245CDDA90](v24, -1, -1);
    }

    v25 = v27;
  }
}

uint64_t sub_2411A3948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_2411ABDA8();
  v5[8] = sub_2411ABD98();
  v7 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_2411A39E4, v7, v6);
}

uint64_t sub_2411A39E4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_2411A2898(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_2411A3A88()
{
  v1 = v0;
  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AF0);
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "ResponseFlow (Host): cleaning up XPC connection", v5, 2u);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_xpcConnection;
  [*(v1 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_xpcConnection) invalidate];
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;
}

uint64_t sub_2411A3B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_2411ABDA8();
  v4[6] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_2411A3C30, v6, v5);
}

uint64_t sub_2411A3C30()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  v0[10] = v6;
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_241195034;
  v9 = v0[5];

  return sub_2411A4308(sub_2411A5628, v5, sub_2411A5668, v6, sub_241197430, v7);
}

void sub_2411A3D94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = *(a2 + 64);
  v9 = v8(ObjectType, a2);
  v10 = [v9 presentationController];

  if (v10)
  {
    [v10 setDelegate_];
    oslog = v8(ObjectType, a2);
    [a4 presentViewController_animated_completion_];
  }

  else
  {
    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v11 = sub_2411AB5A8();
    __swift_project_value_buffer(v11, qword_27E535AF0);
    oslog = sub_2411AB588();
    v12 = sub_2411ABE28();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24117E000, oslog, v12, "ResponseFlow (Host): presentationController is nil - cannot set delegate for dismissal detection", v13, 2u);
      MEMORY[0x245CDDA90](v13, -1, -1);
    }
  }
}

void sub_2411A3F40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 64);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    v8 = [v7 presentingViewController];

    if (v8)
    {
      [v8 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_2411A404C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_2411ABDA8();
  v4[7] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2411A40E8, v6, v5);
}

uint64_t sub_2411A40E8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v0 + 2;
  v5 = swift_allocObject();
  v0[11] = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;

  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_241195628;
  v8 = v0[6];

  return sub_2411A4308(sub_2411A5670, v4, sub_241197460, v5, sub_24119858C, v6);
}

void sub_2411A425C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(a2 + 64))(ObjectType, a2);
    [v4 setRootViewController_];

    [v4 makeKeyAndVisible];
  }
}

uint64_t sub_2411A4308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  sub_2411ABDA8();
  v7[12] = sub_2411ABD98();
  v9 = sub_2411ABD48();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x2822009F8](sub_2411A43AC, v9, v8);
}

uint64_t sub_2411A43AC()
{
  if (*(v0[11] + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_state))
  {
    v1 = v0[12];

    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v2 = sub_2411AB5A8();
    __swift_project_value_buffer(v2, qword_27E535AF0);
    v3 = sub_2411AB588();
    v4 = sub_2411ABE48();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24117E000, v3, v4, "ResponseFlow (Host): tried to show remote flow while it is already loading or loaded", v5, 2u);
      MEMORY[0x245CDDA90](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v8 = sub_2411AB5A8();
    __swift_project_value_buffer(v8, qword_27E535AF0);
    v9 = sub_2411AB588();
    v10 = sub_2411ABE48();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24117E000, v9, v10, "ResponseFlowPresenter (Host): Begin presentation...", v11, 2u);
      MEMORY[0x245CDDA90](v11, -1, -1);
    }

    v12 = v0[10];
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[9];
    v16 = v0[7];

    v17 = (v13 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_dismissBlock);
    v18 = *(v13 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_dismissBlock + 8);
    *v17 = v16;
    v17[1] = v14;

    v19 = (v13 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onEnd);
    v20 = *(v13 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onEnd + 8);
    *v19 = v15;
    v19[1] = v12;

    v21 = sub_2411AB588();
    v22 = sub_2411ABE48();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24117E000, v21, v22, "ResponseFlow (Host): running appearance presentation...", v23, 2u);
      MEMORY[0x245CDDA90](v23, -1, -1);
    }

    v24 = v0[11];
    v26 = v0[5];
    v25 = v0[6];

    v27 = (v24 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController);
    swift_beginAccess();
    v29 = *v27;
    v28 = v27[1];
    v30 = swift_unknownObjectRetain();
    v26(v30, v28);
    swift_unknownObjectRelease();
    v31 = swift_task_alloc();
    v0[15] = v31;
    *v31 = v0;
    v31[1] = sub_241195D84;
    v32 = v0[11];

    return sub_2411A2124();
  }
}

id HostResponseUIFlowCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HostResponseUIFlowCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostResponseUIFlowCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2411A48F4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t HostResponseUIFlowCoordinator.didSelectAnswerChoice(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_2411ABDD8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2411ABDA8();
  v8 = a1;
  v9 = v1;
  v10 = sub_2411ABD98();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_241192B80(0, 0, v6, &unk_2411ADE40, v11);
}

uint64_t sub_2411A4BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_2411ABDA8();
  v5[7] = sub_2411ABD98();
  v7 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_2411A4C90, v7, v6);
}

uint64_t sub_2411A4C90()
{
  v1 = v0[7];

  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_2411AB5A8();
  __swift_project_value_buffer(v3, qword_27E535AF0);
  v4 = v2;
  v5 = sub_2411AB588();
  v6 = sub_2411ABE48();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_24117E000, v5, v6, "ResponseFlow (Host): received answer choice: %@", v8, 0xCu);
    sub_241186CE4(v9, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v9, -1, -1);
    MEMORY[0x245CDDA90](v8, -1, -1);
  }

  v11 = v0[6];

  v12 = v11 + OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onAnswer;
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = v0[5];
    v15 = *(v12 + 8);

    v13(v14);
    sub_2411A1F58(v13);
  }

  v16 = v0[6];
  sub_2411A2898(0);
  v17 = v0[1];

  return v17();
}

Swift::Void __swiftcall HostResponseUIFlowCoordinator.dismiss()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v6 = sub_2411AB5A8();
  __swift_project_value_buffer(v6, qword_27E535AF0);
  v7 = sub_2411AB588();
  v8 = sub_2411ABE48();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24117E000, v7, v8, "ResponseFlow (Host): extension requested dismiss", v9, 2u);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  v10 = sub_2411ABDD8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_2411ABDA8();
  v11 = v1;
  v12 = sub_2411ABD98();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_241192B80(0, 0, v5, &unk_2411ADE50, v13);
}

uint64_t sub_2411A51A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2411ABDA8();
  *(v4 + 24) = sub_2411ABD98();
  v6 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_2411A5240, v6, v5);
}

uint64_t sub_2411A5240()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_2411A2898(0);
  v3 = v0[1];

  return v3();
}

id sub_2411A52F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  a5[OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_state] = 0;
  v10 = &a5[OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_dismissBlock];
  *v10 = nullsub_1;
  v10[1] = 0;
  v11 = &a5[OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onEnd];
  *v11 = nullsub_1;
  v11[1] = 0;
  *&a5[OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_xpcConnection] = 0;
  v12 = &a5[OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_onAnswer];
  *v12 = 0;
  v12[1] = 0;
  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v13 = sub_2411AB5A8();
  __swift_project_value_buffer(v13, qword_27E535AF0);
  v14 = sub_2411AB588();
  v15 = sub_2411ABE48();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24117E000, v14, v15, "ResponseFlow (Host): initialized flow coordinator", v16, 2u);
    MEMORY[0x245CDDA90](v16, -1, -1);
  }

  v17 = &a5[OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController];
  *v17 = a1;
  v17[1] = &protocol witness table for RemoteController;
  *&a5[OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_currentQuestion] = a2;
  swift_beginAccess();
  v18 = *v12;
  v19 = v12[1];
  *v12 = a3;
  v12[1] = a4;

  v20 = a2;
  sub_2411927DC(a3);
  sub_2411A1F58(v18);
  v24.receiver = a5;
  v24.super_class = type metadata accessor for HostResponseUIFlowCoordinator();
  v21 = objc_msgSendSuper2(&v24, sel_init);
  v22 = sub_2411989B4();
  [v22 setDelegate_];

  sub_2411A1F58(a3);

  return v21;
}

uint64_t sub_2411A5538()
{
  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v0 = sub_2411AB5A8();
  __swift_project_value_buffer(v0, qword_27E535AF0);
  v1 = sub_2411AB588();
  v2 = sub_2411ABE48();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24117E000, v1, v2, "ResponseFlow (Host): Sheet dismissed via gesture", v3, 2u);
    MEMORY[0x245CDDA90](v3, -1, -1);
  }

  return sub_2411A2898(0);
}

uint64_t sub_2411A5630()
{
  MEMORY[0x245CDDB60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2411A5678()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void _s7AskToUI29HostResponseUIFlowCoordinatorC29hostViewControllerDidActivateyySo06EXHostiJ0CF_0()
{
  if (qword_27E533C30 != -1)
  {
    swift_once();
  }

  v0 = sub_2411AB5A8();
  __swift_project_value_buffer(v0, qword_27E535AF0);
  v1 = sub_2411AB588();
  v2 = sub_2411ABE48();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24117E000, v1, v2, "ResponseFlow (Host): Extension view controller activated", v3, 2u);
    MEMORY[0x245CDDA90](v3, -1, -1);
  }

  sub_2411A2D08();
}

uint64_t sub_2411A579C(id a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v3 = sub_2411AB5A8();
    __swift_project_value_buffer(v3, qword_27E535AF0);
    v4 = a1;
    v5 = sub_2411AB588();
    v6 = sub_2411ABE28();

    if (!os_log_type_enabled(v5, v6))
    {

      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24119F950(0xD00000000000002ALL, 0x80000002411AEC50, &v22);
    *(v7 + 12) = 2080;
    ErrorValue = swift_getErrorValue();
    v10 = *(*(v21[2] - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v12 + 16))(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = sub_2411ABD08();
    v15 = sub_24119F950(v13, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_24117E000, v5, v6, "ResponseFlow (Host): %s, error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDDA90](v8, -1, -1);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  else
  {
    if (qword_27E533C30 != -1)
    {
      swift_once();
    }

    v16 = sub_2411AB5A8();
    __swift_project_value_buffer(v16, qword_27E535AF0);
    v5 = sub_2411AB588();
    v17 = sub_2411ABE48();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_24119F950(0xD00000000000002ALL, 0x80000002411AEC50, &v22);
      _os_log_impl(&dword_24117E000, v5, v17, "ResponseFlow (Host): %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x245CDDA90](v19, -1, -1);
      MEMORY[0x245CDDA90](v18, -1, -1);
    }
  }

LABEL_12:
  sub_2411A3A88();
  return sub_2411A2898(a1);
}

uint64_t sub_2411A5B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_241186E60;

  return sub_2411A4BF8(a1, v4, v5, v7, v6);
}

uint64_t sub_2411A5BE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2411A5C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return sub_2411A51A8(a1, v4, v5, v6);
}

uint64_t sub_2411A5CDC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_remoteController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

id sub_2411A5D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7AskToUI29HostResponseUIFlowCoordinator_currentQuestion;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t dispatch thunk of HostResponseUIFlowCoordinator.loadRemoteView()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x140);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_241186E60;

  return v6();
}

uint64_t dispatch thunk of HostResponseUIFlowCoordinator.showRemoteFlow(presentingViewController:onFlowEnd:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_241186E60;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HostResponseUIFlowCoordinator.showRemoteFlowAsRootIn(window:onFlowEnd:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x170);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_241186E60;

  return v12(a1, a2, a3);
}

unint64_t sub_2411A6424()
{
  result = qword_27E534328;
  if (!qword_27E534328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534328);
  }

  return result;
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2411A64E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2411A6528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2411862D8;

  return sub_2411A3948(a1, v4, v5, v7, v6);
}

uint64_t sub_2411A65E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2411A6620(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2411A66C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2411AB5A8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2411AB598();
}

uint64_t sub_2411A6748()
{
  v0 = sub_2411AB5A8();
  __swift_allocate_value_buffer(v0, qword_27E535AF0);
  __swift_project_value_buffer(v0, qword_27E535AF0);
  return sub_2411AB598();
}

uint64_t sub_2411A67D0()
{
  v0 = sub_2411AB5A8();
  __swift_allocate_value_buffer(v0, qword_27E535B08);
  __swift_project_value_buffer(v0, qword_27E535B08);
  return sub_2411AB598();
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

uint64_t sub_2411A68BC()
{
  v0 = sub_2411AB5A8();
  __swift_allocate_value_buffer(v0, qword_27E535B20);
  __swift_project_value_buffer(v0, qword_27E535B20);
  return sub_2411AB598();
}

uint64_t MessagesCompose.Error.hashValue.getter()
{
  sub_2411ABFF8();
  MEMORY[0x245CDD450](0);
  return sub_2411AC018();
}

uint64_t sub_2411A69B8()
{
  v3 = &type metadata for HostSendAskToQuestionFlowCoordinatorFactory;
  v4 = &protocol witness table for HostSendAskToQuestionFlowCoordinatorFactory;
  type metadata accessor for MessagesCompose();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = sub_24119B9F4(&v2, v0 + 24);
  qword_27E534340 = v0;
  return result;
}

uint64_t MessagesCompose.__allocating_init()()
{
  v3 = &type metadata for HostSendAskToQuestionFlowCoordinatorFactory;
  v4 = &protocol witness table for HostSendAskToQuestionFlowCoordinatorFactory;
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_24119B9F4(&v2, v0 + 24);
  return v0;
}

uint64_t static MessagesCompose.shared.getter()
{
  if (qword_27E533C48 != -1)
  {
    swift_once();
  }
}

uint64_t MessagesCompose.show(staging:in:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = sub_2411ABDA8();
  v3[11] = sub_2411ABD98();
  v5 = sub_2411ABD48();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x2822009F8](sub_2411A6B78, v5, v4);
}

uint64_t sub_2411A6B78()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  v3 = v1;
  if (v2)
  {
    v4 = v2;
    sub_241194A90(0);

    v3 = v0[9];
  }

  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = sub_2411ABAF8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v6;
  v12 = sub_2411ABAC8();
  v0[14] = v12;
  sub_2411920FC(v3 + 24, (v0 + 2));
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v13);
  v15 = (*(v14 + 8))(v12, v13, v14);
  v0[15] = v15;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v16 = *(v1 + 16);
  *(v1 + 16) = v15;
  v17 = v15;

  v18 = swift_allocObject();
  v0[16] = v18;
  swift_weakInit();
  v19 = swift_allocObject();
  v0[17] = v19;
  swift_unknownObjectWeakInit();

  v20 = swift_allocObject();
  v0[18] = v20;
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v7;

  v21 = v7;
  v0[19] = sub_2411ABD98();
  v23 = sub_2411ABD48();
  v0[20] = v23;
  v0[21] = v22;

  return MEMORY[0x2822009F8](sub_2411A6D74, v23, v22);
}

uint64_t sub_2411A6D74()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v0[22] = v4;
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  v0[23] = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v0[24] = v6;
  *(v6 + 16) = sub_2411A7314;
  *(v6 + 24) = v1;

  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_2411A6EEC;
  v8 = v0[15];

  return sub_241195A80(sub_2411973E8, v4, sub_241197428, v5, sub_2411A7358, v6);
}

uint64_t sub_2411A6EEC()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 176);
  v9 = *v0;

  v6 = *(v1 + 168);
  v7 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_2411A7074, v7, v6);
}

uint64_t sub_2411A7074()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[12];
  v6 = v0[13];

  return MEMORY[0x2822009F8](sub_2411A70FC, v5, v6);
}

uint64_t sub_2411A70FC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2411A7174()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2411A71AC()
{
  MEMORY[0x245CDDB60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2411A71E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 16);
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      if (!v9 || (v10 = v9, v9, v10 != v8))
      {
        if (a1)
        {
LABEL_6:
          v11 = a1;
          sub_2411A746C(a1, a4);

          return;
        }

        goto LABEL_10;
      }
    }

    else if (v9)
    {
      goto LABEL_9;
    }

    v9 = *(v7 + 16);
    *(v7 + 16) = 0;
LABEL_9:

    if (a1)
    {
      goto LABEL_6;
    }

LABEL_10:
  }
}

uint64_t sub_2411A72CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2411A7320()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t MessagesCompose.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_2411A73CC()
{
  result = qword_27E534348;
  if (!qword_27E534348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534348);
  }

  return result;
}

void sub_2411A746C(void *a1, void *a2)
{
  sub_2411AB7A8();
  *(swift_allocObject() + 16) = a2;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E534350, &qword_2411AE048));
  v4 = a2;
  v5 = a1;
  v6 = sub_2411AB7C8();
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    [v6 setModalPresentationStyle_];
    [v4 presentViewController:v6 animated:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2411A75EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t ResponseUIConfiguration.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *(a2 - 8);
  (*(v11 + 16))(a3, a1, a2);
  if (qword_27E533C40 != -1)
  {
    swift_once();
  }

  v5 = sub_2411AB5A8();
  __swift_project_value_buffer(v5, qword_27E535B20);
  v6 = sub_2411AB588();
  v7 = sub_2411ABE48();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24117E000, v6, v7, "Initialized ResponseUIConfiguration", v8, 2u);
    MEMORY[0x245CDDA90](v8, -1, -1);
  }

  v9 = *(v11 + 8);

  return v9(a1, a2);
}

uint64_t sub_2411A77B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2411ABDA8();
  *(v4 + 24) = sub_2411ABD98();
  v6 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_2411A7850, v6, v5);
}

uint64_t sub_2411A7850()
{
  isa = v0[3].super.isa;

  if (qword_27E533C50 != -1)
  {
    swift_once();
  }

  ResponseUIFlowStore.setup(connection:)(v0[2]);
  v2 = v0[1].super.isa;

  return v2();
}

uint64_t ResponseUIScene.sceneID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void ResponseUIScene.init(content:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27E533C40 != -1)
  {
    swift_once();
  }

  v6 = sub_2411AB5A8();
  __swift_project_value_buffer(v6, qword_27E535B20);
  v7 = sub_2411AB588();
  v8 = sub_2411ABE48();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24117E000, v7, v8, "ResponseUIScene initialized", v9, 2u);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  *a3 = 0x65736E6F70736552;
  a3[1] = 0xEF656E6563534955;
  a3[2] = a1;
  a3[3] = a2;
}

uint64_t ResponseUIScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = swift_allocObject();
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v5 + 16) = v7;
  *(v5 + 24) = v6;
  *(v5 + 32) = v3;
  *(v5 + 40) = *(v1 + 1);
  *(v5 + 56) = v4;
  swift_bridgeObjectRetain_n();

  return sub_2411AB4B8();
}

uint64_t sub_2411A7B18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27E533C40 != -1)
  {
    swift_once();
  }

  v4 = sub_2411AB5A8();
  __swift_project_value_buffer(v4, qword_27E535B20);
  v5 = sub_2411AB588();
  v6 = sub_2411ABE48();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24117E000, v5, v6, "ResponseUIScene primitive body", v7, 2u);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  a3();
}

uint64_t sub_2411A7C8C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_2411ABDD8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2411ABDA8();
  v7 = a1;
  v8 = sub_2411ABD98();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_241192B80(0, 0, v5, &unk_2411AE1C0, v9);

  return 1;
}

uint64_t sub_2411A7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2411ABDA8();
  *(v4 + 24) = sub_2411ABD98();
  v6 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_2411A7E50, v6, v5);
}

uint64_t sub_2411A7E50()
{
  isa = v0[3].super.isa;

  if (qword_27E533C40 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535B20);
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "ResponseUIScene connection established", v5, 2u);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }

  if (qword_27E533C50 != -1)
  {
    swift_once();
  }

  ResponseUIFlowStore.setup(connection:)(v0[2]);
  v6 = v0[1].super.isa;

  return v6();
}

uint64_t ResponseUIExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v27 = type metadata accessor for ResponseUIConfiguration();
  v6 = sub_2411ABEC8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v28 = &v27 - v9;
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  if (qword_27E533C40 != -1)
  {
    swift_once();
  }

  v16 = sub_2411AB5A8();
  __swift_project_value_buffer(v16, qword_27E535B20);
  v17 = sub_2411AB588();
  v18 = sub_2411ABE48();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24117E000, v17, v18, "Returning ResponseUI extension configuration", v19, 2u);
    MEMORY[0x245CDDA90](v19, -1, -1);
  }

  v20 = *(v10 + 16);
  v20(v15, v4, a1);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;
  (*(v10 + 32))(v22 + v21, v15, a1);
  v20(v13, v4, a1);
  v24 = v28;
  ResponseUIConfiguration.init(_:)(v13, a1, v28);
  (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
  swift_getAssociatedTypeWitness();
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getWitnessTable();
  return sub_2411AB4C8();
}

void ResponseUIExtension.makeScene<A>(content:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  ResponseUIScene.init(content:)(a1, a2, a3);
}

uint64_t _s7AskToUI23ResponseUIConfigurationV6accept10connectionSbSo15NSXPCConnectionC_tF_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  if (qword_27E533C40 != -1)
  {
    swift_once();
  }

  v6 = sub_2411AB5A8();
  __swift_project_value_buffer(v6, qword_27E535B20);
  v7 = sub_2411AB588();
  v8 = sub_2411ABE48();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24117E000, v7, v8, "ResponseUIConfiguration: accepting XPC connection", v9, 2u);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  v10 = sub_2411ABDD8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_2411ABDA8();
  v11 = a1;
  v12 = sub_2411ABD98();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_241192B80(0, 0, v5, &unk_2411AE1D0, v13);

  return 1;
}

uint64_t sub_2411A8534()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2411A8574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  return sub_2411A7B18(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t sub_2411A859C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2411A861C()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t sub_2411A8684(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2411A870C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2411A877C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2411A88BC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2411A8AC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2411A8B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2411862D8;

  return sub_2411A7DB8(a1, v4, v5, v6);
}

uint64_t sub_2411A8BF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return sub_2411A77B8(a1, v4, v5, v6);
}

void sub_2411A8CA8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2411AB358();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

Swift::Bool __swiftcall ResponseUIFlowStore.setup(connection:)(NSXPCConnection connection)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  if (qword_27E533C38 != -1)
  {
    swift_once();
  }

  v8 = sub_2411AB5A8();
  __swift_project_value_buffer(v8, qword_27E535B08);
  v9 = sub_2411AB588();
  v10 = sub_2411ABE48();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24117E000, v9, v10, "ResponseUIFlowStore: configuring XPC connection", v11, 2u);
    MEMORY[0x245CDDA90](v11, -1, -1);
  }

  [(objc_class *)connection.super.isa setExportedObject:v2];
  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol_];
  [(objc_class *)connection.super.isa setExportedInterface:v13];

  v14 = [v12 interfaceWithProtocol_];
  [(objc_class *)connection.super.isa setRemoteObjectInterface:v14];

  [(objc_class *)connection.super.isa resume];
  v15 = sub_2411ABDD8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_2411ABDA8();
  v16 = connection.super.isa;
  v17 = v2;
  v18 = sub_2411ABD98();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v19[5] = v16;
  sub_241192B80(0, 0, v7, &unk_2411AE1E0, v19);

  return 1;
}

id sub_2411A8FA4()
{
  result = [objc_allocWithZone(type metadata accessor for ResponseUIFlowStore()) init];
  qword_27E534458 = result;
  return result;
}

id ResponseUIFlowStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ResponseUIFlowStore.shared.getter()
{
  if (qword_27E533C50 != -1)
  {
    swift_once();
  }

  v1 = qword_27E534458;

  return v1;
}

void *ResponseUIFlowStore.connection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__connection);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

void *ResponseUIFlowStore.currentQuestion.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_2411AAA88();
  sub_2411AB468();

  v1 = OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__currentQuestion;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_2411A9130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2411AAA88();
  sub_2411AB468();

  v4 = OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__currentQuestion;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_2411A91D4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  ResponseUIFlowStore.currentQuestion.setter(v2);
}

void ResponseUIFlowStore.currentQuestion.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__currentQuestion;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2411AAA88();
    sub_2411AB458();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_2411AB678();
  v6 = v5;
  v7 = a1;
  v8 = sub_2411ABEB8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_2411A9350(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__currentQuestion;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*ResponseUIFlowStore.currentQuestion.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2411AAA88();
  sub_2411AB468();

  *v4 = v1;
  swift_getKeyPath();
  sub_2411AB488();

  swift_beginAccess();
  return sub_2411A94D8;
}

void sub_2411A94D8(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_2411AB478();

  free(v1);
}

uint64_t sub_2411A955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2411ABDA8();
  v5[4] = sub_2411ABD98();
  v7 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_2411A95F4, v7, v6);
}

uint64_t sub_2411A95F4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__connection);
  *(v3 + OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__connection) = v2;

  v7 = v0[1];
  v5 = v2;

  return v7();
}

uint64_t sub_2411A9680()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2411A96C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_241186E60;

  return sub_2411A955C(a1, v4, v5, v7, v6);
}

uint64_t sub_2411A9788()
{
  v1 = *(v0 + OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__connection);
  if (v1)
  {
    v11[4] = sub_2411A9994;
    v11[5] = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_2411A1938;
    v11[3] = &block_descriptor_2;
    v2 = _Block_copy(v11);
    v3 = v1;
    v4 = [v3 remoteObjectProxyWithErrorHandler_];
    _Block_release(v2);

    sub_2411ABED8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534498, &qword_2411AE3E0);
    if (swift_dynamicCast())
    {
      return v11[0];
    }
  }

  if (qword_27E533C38 != -1)
  {
    swift_once();
  }

  v6 = sub_2411AB5A8();
  __swift_project_value_buffer(v6, qword_27E535B08);
  v7 = sub_2411AB588();
  v8 = sub_2411ABE28();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24117E000, v7, v8, "ResponseUIFlowStore: host proxy is nil", v9, 2u);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  sub_2411AB17C();
  swift_allocError();
  *v10 = 0;
  return swift_willThrow();
}

void sub_2411A9994(void *a1)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27E533C38 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535B08);
  v3 = a1;
  oslog = sub_2411AB588();
  v4 = sub_2411ABE28();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24117E000, oslog, v4, "ResponseUIFlowStore: proxy error during call: %@", v5, 0xCu);
    sub_2411AAD54(v6);
    MEMORY[0x245CDDA90](v6, -1, -1);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }
}

void sub_2411A9B50()
{
  v1 = v0;
  if (qword_27E533C38 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535B08);
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "ResponseUIFlowStore: invalidating", v5, 2u);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__connection;
  v7 = *(v1 + OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__connection);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v8 invalidate];

  v9 = *(v1 + v6);
  *(v1 + v6) = 0;
}

uint64_t ResponseUIFlowStore.dismissWithChoice(choice:)(void *a1)
{
  if (qword_27E533C38 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535B08);
  v3 = a1;
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = sub_2411AB688();
    v10 = sub_24119F950(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24117E000, v4, v5, "ResponseUIFlowStore: sending answer choice: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CDDA90](v7, -1, -1);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  [sub_2411A9788() didSelectAnswerChoice_];

  return swift_unknownObjectRelease();
}

id ResponseUIFlowStore.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__connection] = 0;
  *&v0[OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__currentQuestion] = 0;
  sub_2411AB498();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id ResponseUIFlowStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2411AA168()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2411AAA88();
  sub_2411AB468();

  v2 = OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__currentQuestion;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t ResponseUIFlowStore.beginApprovalFlow(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  if (qword_27E533C38 != -1)
  {
    swift_once();
  }

  v12 = sub_2411AB5A8();
  __swift_project_value_buffer(v12, qword_27E535B08);
  v13 = sub_2411AB588();
  v14 = sub_2411ABE48();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24117E000, v13, v14, "ResponseUIFlowStore: beginApprovalFlow called", v15, 2u);
    MEMORY[0x245CDDA90](v15, -1, -1);
  }

  v16 = sub_2411ABDD8();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_2411ABDA8();
  v17 = v4;
  v18 = a1;

  v19 = sub_2411ABD98();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = a2;
  v20[7] = a3;
  sub_241192B80(0, 0, v11, &unk_2411AE220, v20);
}

uint64_t sub_2411AA44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_2411ABDA8();
  v7[6] = sub_2411ABD98();
  v9 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_2411AA4E8, v9, v8);
}

uint64_t sub_2411AA4E8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = v3;
  ResponseUIFlowStore.currentQuestion.setter(v3);
  v4(0);
  v7 = v0[1];

  return v7();
}

Swift::Void __swiftcall ResponseUIFlowStore.requestDismiss()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  if (qword_27E533C38 != -1)
  {
    swift_once();
  }

  v6 = sub_2411AB5A8();
  __swift_project_value_buffer(v6, qword_27E535B08);
  v7 = sub_2411AB588();
  v8 = sub_2411ABE48();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24117E000, v7, v8, "ResponseUIFlowStore: requestDismiss called", v9, 2u);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  v10 = sub_2411ABDD8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_2411ABDA8();
  v11 = v1;
  v12 = sub_2411ABD98();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_241192B80(0, 0, v5, &unk_2411AE230, v13);
}

uint64_t sub_2411AA7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2411ABDA8();
  *(v4 + 24) = sub_2411ABD98();
  v6 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_2411AA88C, v6, v5);
}

uint64_t sub_2411AA88C()
{
  v2 = v0[2];
  v1 = v0[3];

  _s7AskToUI19ResponseUIFlowStoreC7dismiss16propagatingErrorys0I0_pSg_tF_0();
  v3 = v0[1];

  return v3();
}

id EnvironmentValues.responseUIFlowStore.getter@<X0>(void *a1@<X8>)
{
  if (qword_27E533C50 != -1)
  {
    swift_once();
  }

  v3 = qword_27E534458;
  a1[3] = type metadata accessor for ResponseUIFlowStore();
  a1[4] = &protocol witness table for ResponseUIFlowStore;
  *a1 = v3;

  return v3;
}

uint64_t ResponseUIFlowError.hashValue.getter()
{
  v1 = *v0;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v1);
  return sub_2411AC018();
}

void sub_2411AAA58(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  ResponseUIFlowStore.currentQuestion.setter(v2);
}

unint64_t sub_2411AAA88()
{
  result = qword_27E534470;
  if (!qword_27E534470)
  {
    type metadata accessor for ResponseUIFlowStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534470);
  }

  return result;
}

uint64_t type metadata accessor for ResponseUIFlowStore()
{
  result = qword_27E534488;
  if (!qword_27E534488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s7AskToUI19ResponseUIFlowStoreC7dismiss16propagatingErrorys0I0_pSg_tF_0()
{
  if (qword_27E533C38 != -1)
  {
    swift_once();
  }

  v0 = sub_2411AB5A8();
  __swift_project_value_buffer(v0, qword_27E535B08);
  v1 = sub_2411AB588();
  v2 = sub_2411ABE48();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24117E000, v1, v2, "ResponseUIFlowStore: requesting dismiss", v3, 2u);
    MEMORY[0x245CDDA90](v3, -1, -1);
  }

  [sub_2411A9788() dismiss];
  swift_unknownObjectRelease();

  sub_2411A9B50();
}

uint64_t sub_2411AAD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E533D50, &qword_2411AD1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2411AADBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2411AAE0C(uint64_t a1)
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
  v10[1] = sub_241186E60;

  return sub_2411AA44C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2411AAEE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2411AAF20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2411862D8;

  return sub_2411AA7F4(a1, v4, v5, v6);
}

unint64_t sub_2411AAFD8()
{
  result = qword_27E534480;
  if (!qword_27E534480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534480);
  }

  return result;
}

uint64_t sub_2411AB034()
{
  result = sub_2411AB4A8();
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

uint64_t sub_2411AB12C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2411AB17C()
{
  result = qword_27E5344A0;
  if (!qword_27E5344A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5344A0);
  }

  return result;
}

unint64_t sub_2411AB1E4()
{
  result = qword_27E5344A8;
  if (!qword_27E5344A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5344A8);
  }

  return result;
}

id sub_2411AB2A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Localization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}