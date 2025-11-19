void sub_22325FC54(void *a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v53 - v5;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v55 = &v53 - v8;
  v9 = sub_2232A9504();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v14 = sub_2232AAAD4();
  v15 = __swift_project_value_buffer(v14, qword_28131DB88);
  v16 = a1;
  v56 = v15;
  v17 = sub_2232AAAC4();
  v18 = sub_2232AAD84();

  v19 = os_log_type_enabled(v17, v18);
  v57 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v54 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v59[0] = v22;
    *v21 = 136315138;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0]);
    v23 = sub_2232AB064();
    v25 = v24;
    (*(v10 + 8))(v13, v57);
    v26 = sub_2232603D0(v23, v25, v59);
    v9 = v57;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_22325E000, v17, v18, "handling session started for session id: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DD8AC0](v22, -1, -1);
    v27 = v21;
    v6 = v54;
    MEMORY[0x223DD8AC0](v27, -1, -1);
  }

  v28 = v55;
  sub_2232AA614();
  (*(v10 + 56))(v28, 0, 1, v9);
  v29 = qword_28131DB58;
  swift_beginAccess();
  sub_223260794(v28, v2 + v29, &unk_27D0812C0, &qword_2232AD0C0);
  swift_endAccess();
  sub_2232A97E4();
  v30 = sub_2232AA794();
  (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
  v31 = qword_28131DB20;
  swift_beginAccess();
  sub_223260794(v6, v2 + v31, &unk_27D0814C0, &unk_2232AC480);
  swift_endAccess();
  sub_2232AAA34();
  __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_2232AA614();
  v32 = v57;
  sub_2232AA764();
  v35 = *(v10 + 8);
  v33 = (v10 + 8);
  v34 = v35;
  (v35)(v13, v32);
  v36 = qword_28131DB68;
  swift_beginAccess();
  sub_223260794(v58, v2 + v36, &unk_27D0818D8, ",6");
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  *(v2 + qword_28131DB28) = sub_2232A97D4() & 1;
  if (*(v2 + qword_28131D288) == 1)
  {
    sub_2232AA614();
    v37 = sub_2232AA634();
    sub_223260840(v13, v37, v38);

    (v34)(v13, v32);
  }

  v54 = v34;
  v55 = v33;
  v39 = v16;

  v40 = sub_2232AAAC4();
  v41 = sub_2232AAD84();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58[0] = v43;
    *v42 = 136315394;
    sub_223260E74(v2 + v36, v59, &unk_27D0818D8, ",6");
    v44 = v60;
    sub_223260EDC(v59, &unk_27D0818D8, ",6");
    if (v44)
    {
      v45 = 0;
    }

    else
    {
      v45 = 544501582;
    }

    if (v44)
    {
      v46 = 0xE000000000000000;
    }

    else
    {
      v46 = 0xE400000000000000;
    }

    v47 = sub_2232603D0(v45, v46, v58);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0]);
    v48 = v57;
    v49 = sub_2232AB064();
    v51 = v50;
    (v54)(v13, v48);
    v52 = sub_2232603D0(v49, v51, v58);

    *(v42 + 14) = v52;
    _os_log_impl(&dword_22325E000, v40, v41, "%sFound session state for session id %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v43, -1, -1);
    MEMORY[0x223DD8AC0](v42, -1, -1);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_223260388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2232603D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22326049C(v11, 0, 0, 1, a1, a2);
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
    sub_2232606EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_22326049C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_223260F3C(a5, a6);
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
    result = sub_2232AAF84();
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

unint64_t sub_2232605A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2232AB014();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2232A2C98(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_2232606A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2232606EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_223260794(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_223260840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v5 = sub_2232AADC4();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20]();
  v37 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_2232AADB4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = *(*(sub_2232AAB44() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = sub_2232A9504();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v11 + 16);
  v33(v14, a1, v10);
  v36 = v3;
  sub_2232AAA14();
  v35 = *(v3 + qword_28131D270);
  v34 = type metadata accessor for AttendingStatesServiceHandler();
  v15 = objc_allocWithZone(v34);
  v32 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue;
  v16 = sub_2232606A4(0, &qword_28131D1B0, 0x277D85C78);
  v31[1] = "attendingStatesServiceHandler";
  v31[2] = v16;
  sub_2232AAB34();
  v43 = MEMORY[0x277D84F90];
  sub_223260388(&unk_28131D1B8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818F0, &qword_2232AD040);
  sub_223260DAC();
  sub_2232AAEE4();
  (*(v38 + 104))(v37, *MEMORY[0x277D85260], v39);
  *&v15[v32] = sub_2232AADF4();
  v33(&v15[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId], v14, v10);
  v17 = &v15[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId];
  v18 = v41;
  *v17 = v40;
  *(v17 + 1) = v18;
  sub_223260E10(v44, &v15[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher]);
  *&v15[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_candidateRequestCacheManager] = v35;
  v42.receiver = v15;
  v42.super_class = v34;

  v19 = objc_msgSendSuper2(&v42, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  (*(v11 + 8))(v14, v10);
  v20 = v36;
  v21 = *(v36 + qword_28131DB30);
  *(v36 + qword_28131DB30) = v19;
  v22 = v20;
  v23 = v19;

  v24 = [objc_allocWithZone(MEMORY[0x277D24240]) initWithDelegate_];
  v25 = *(v22 + qword_28131DB60);
  *(v22 + qword_28131DB60) = v24;
  v26 = v24;

  [v26 startUpdateStates];
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v27 = sub_2232AAAD4();
  __swift_project_value_buffer(v27, qword_28131DB88);
  v28 = sub_2232AAAC4();
  v29 = sub_2232AAD84();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22325E000, v28, v29, "Successfully setup Attending handling in AsrBridge", v30, 2u);
    MEMORY[0x223DD8AC0](v30, -1, -1);
  }
}

uint64_t type metadata accessor for AttendingStatesServiceHandler()
{
  result = qword_28131D5A8;
  if (!qword_28131D5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_223260DAC()
{
  result = qword_28131D1F8;
  if (!qword_28131D1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D0818F0, &qword_2232AD040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D1F8);
  }

  return result;
}

uint64_t sub_223260E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223260E74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_223260EDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_223260F3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_223261168(a1, a2);
  sub_223260F88(&unk_28368CAB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_223260F88(uint64_t result)
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

  result = sub_223261074(result, v12, 1, v3);
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

char *sub_223261074(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081960, &qword_2232ACE98);
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

uint64_t sub_223261168(uint64_t a1, unint64_t a2)
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

  v6 = sub_2232644DC(v5, 0);
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

  result = sub_2232AAF84();
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
        v10 = sub_2232AAC64();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2232644DC(v10, 0);
        result = sub_2232AAF54();
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

void sub_2232612E0(void *a1)
{
  v70 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v60[-v4];
  v5 = sub_2232A9504();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v67 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v60[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v64 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v68 = &v60[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v60[-v23];
  v25 = qword_28131DB58;
  swift_beginAccess();
  v66 = v1;
  v63 = v25;
  sub_223260E74(v1 + v25, v24, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  v26 = v6[7];
  v26(v22, 0, 1, v5);
  v27 = *(v10 + 56);
  sub_223260E74(v24, v13, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v22, &v13[v27], &unk_27D0812C0, &qword_2232AD0C0);
  v69 = v6;
  v28 = v6[6];
  if (v28(v13, 1, v5) == 1)
  {
    v62 = v26;
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
    if (v28(&v13[v27], 1, v5) == 1)
    {
      sub_223260EDC(v13, &unk_27D0812C0, &qword_2232AD0C0);
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v44 = sub_2232AAAD4();
      __swift_project_value_buffer(v44, qword_28131DB88);
      v45 = sub_2232AAAC4();
      v46 = sub_2232AAD84();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v66;
      if (v47)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_22325E000, v45, v46, "setting sessionId and sessionState to nil", v49, 2u);
        MEMORY[0x223DD8AC0](v49, -1, -1);
      }

      v50 = v64;
      v62(v64, 1, 1, v5);
      v51 = v63;
      swift_beginAccess();
      sub_223260794(v50, v48 + v51, &unk_27D0812C0, &qword_2232AD0C0);
      swift_endAccess();
      v72 = 0;
      memset(v71, 0, sizeof(v71));
      v52 = qword_28131DB68;
      swift_beginAccess();
      sub_223260794(v71, v48 + v52, &unk_27D0818D8, ",6");
      swift_endAccess();
      v53 = sub_2232AA794();
      v54 = v65;
      (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
      v55 = qword_28131DB20;
      swift_beginAccess();
      sub_223260794(v54, v48 + v55, &unk_27D0814C0, &unk_2232AC480);
      swift_endAccess();
      *(v48 + qword_28131DB28) = 2;
      sub_2232605A8(MEMORY[0x277D84F90], &unk_27D081920, &qword_2232ACE70);
      sub_2232AA8B4();
      if (*(v48 + qword_28131D288) == 1)
      {
        v56 = sub_2232AA634();
        v58 = v57;
        v59 = v67;
        sub_2232AA614();
        sub_223261C98(v56, v58, v59);

        (v69[1])(v59, v5);
      }

      return;
    }

    goto LABEL_6;
  }

  sub_223260E74(v13, v68, &unk_27D0812C0, &qword_2232AD0C0);
  if (v28(&v13[v27], 1, v5) == 1)
  {
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
    (v69[1])(v68, v5);
LABEL_6:
    sub_223260EDC(v13, &unk_27D0818B8, "(6");
    goto LABEL_7;
  }

  v62 = v26;
  v40 = v69;
  v41 = v67;
  (v69[4])(v67, &v13[v27], v5);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0]);
  v42 = v68;
  v61 = sub_2232AABE4();
  v43 = v40[1];
  v43(v41, v5);
  sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
  v43(v42, v5);
  sub_223260EDC(v13, &unk_27D0812C0, &qword_2232AD0C0);
  if (v61)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v29 = sub_2232AAAD4();
  __swift_project_value_buffer(v29, qword_28131DB88);
  v30 = v70;
  v31 = sub_2232AAAC4();
  v32 = sub_2232AAD94();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v71[0] = v34;
    *v33 = 136315138;
    v35 = v67;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0]);
    v36 = sub_2232AB064();
    v38 = v37;
    (v69[1])(v35, v5);
    v39 = sub_2232603D0(v36, v38, v71);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_22325E000, v31, v32, "SessionId: %s is not the current session, ignoring", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x223DD8AC0](v34, -1, -1);
    MEMORY[0x223DD8AC0](v33, -1, -1);
  }
}

void sub_223261C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + qword_28131D270);
  sub_223261D0C(a1, a2, a3);
  v6 = qword_28131DB60;
  [*(v4 + qword_28131DB60) invalidate];
  v7 = *(v4 + v6);
  *(v4 + v6) = 0;

  v8 = *(v4 + qword_28131DB30);
  *(v4 + qword_28131DB30) = 0;
}

uint64_t sub_223261D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a2;
  v27 = sub_2232AAB14();
  v29 = *(v27 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2232AAB44();
  v26 = *(v28 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2232A9504();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + 16);
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v15, v14, v11);
  v18 = (v17 + v16);
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = sub_2232622E4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_6;
  v20 = _Block_copy(aBlock);

  sub_2232AAB24();
  v30 = MEMORY[0x277D84F90];
  sub_223262204(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_22326224C(&qword_28131D210, &qword_27D081AB0, &unk_2232AD010);
  v21 = v27;
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v10, v7, v20);
  _Block_release(v20);
  (*(v29 + 8))(v7, v21);
  (*(v26 + 8))(v10, v28);
}

uint64_t sub_2232620C4()
{
  v1 = sub_2232A9504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_223262204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22326224C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2232622A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2232622E4()
{
  v1 = *(sub_2232A9504() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_223262380(v0 + v2, v6, v7);
}

uint64_t sub_223262380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (type metadata accessor for CacheKey() - 8);
  v7 = *(*v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  v13 = sub_2232A9504();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  v14 = &v12[v6[7]];
  *v14 = a2;
  v14[1] = a3;
  sub_223262524(v12, v10);
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  swift_beginAccess();

  sub_223262588(&v17, v10);
  swift_endAccess();
  return sub_223262940(v12);
}

uint64_t type metadata accessor for CacheKey()
{
  result = qword_28131D318;
  if (!qword_28131D318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223262524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223262588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*a1 == 1)
  {
    v5 = *v2;
    v6 = sub_2232626FC(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v24[0] = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2232A5684();
        v11 = v24[0];
      }

      v12 = *(v11 + 48);
      v13 = type metadata accessor for CacheKey();
      sub_223262940(v12 + *(*(v13 - 8) + 72) * v8);
      v14 = *(v11 + 56) + 56 * v8;
      v15 = *(v14 + 48);

      sub_2232A4188(v8, v11);
      result = sub_223262940(a2);
      *v3 = v11;
    }

    else
    {

      return sub_223262940(a2);
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 24);
    v19 = *(a1 + 16);
    v20 = *(a1 + 8);
    v24[0] = *a1;
    v24[1] = v20;
    v25 = v19 & 1;
    v26 = v18;
    v27 = v17 & 1;
    v28 = *(a1 + 40);
    v21 = *v2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_2232A4B1C(v24, a2, v22);
    result = sub_223262940(a2);
    *v2 = v23;
  }

  return result;
}

unint64_t sub_2232626FC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2232AB0F4();
  sub_2232A9504();
  sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0]);
  sub_2232AABD4();
  v4 = (a1 + *(type metadata accessor for CacheKey() + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2232AAC44();
  v7 = sub_2232AB114();

  return sub_2232627CC(a1, v7);
}

unint64_t sub_2232627CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CacheKey();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    while (1)
    {
      sub_223262524(*(v2 + 48) + v13 * v11, v9);
      if (sub_2232A94E4())
      {
        v14 = *(v5 + 20);
        v15 = *&v9[v14];
        v16 = *&v9[v14 + 8];
        v17 = (a1 + v14);
        v18 = v15 == *v17 && v16 == v17[1];
        if (v18 || (sub_2232AB094() & 1) != 0)
        {
          break;
        }
      }

      sub_223262940(v9);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_223262940(v9);
  }

  return v11;
}

uint64_t sub_223262940(uint64_t a1)
{
  v2 = type metadata accessor for CacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_223262A4C(void *a1, const char *a2, SEL *a3, const char *a4, const char *a5)
{
  v75 = a5;
  v70 = a4;
  v71 = a2;
  v72 = a3;
  v80 = a1;
  v6 = sub_2232A9504();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v67[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v74 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v78 = &v67[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v67[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v67[-v24];
  v26 = qword_28131DB58;
  swift_beginAccess();
  v79 = v5;
  v73 = v26;
  sub_223260E74(v5 + v26, v25, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  (*(v7 + 56))(v23, 0, 1, v6);
  v27 = *(v11 + 56);
  sub_223260E74(v25, v14, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v23, &v14[v27], &unk_27D0812C0, &qword_2232AD0C0);
  v77 = v7;
  v28 = *(v7 + 48);
  if (v28(v14, 1, v6) == 1)
  {
    sub_223260EDC(v23, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v25, &unk_27D0812C0, &qword_2232AD0C0);
    if (v28(&v14[v27], 1, v6) == 1)
    {
      sub_223260EDC(v14, &unk_27D0812C0, &qword_2232AD0C0);
      v29 = v79;
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v46 = sub_2232AAAD4();
      __swift_project_value_buffer(v46, qword_28131DB88);
      v47 = v80;
      v48 = sub_2232AAAC4();
      v49 = sub_2232AAD84();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v81 = v51;
        *v50 = 136315138;
        v52 = v76;
        sub_2232AA614();
        v53 = sub_2232A94C4();
        v55 = v54;
        (*(v77 + 8))(v52, v6);
        v56 = sub_2232603D0(v53, v55, &v81);

        *(v50 + 4) = v56;
        _os_log_impl(&dword_22325E000, v48, v49, v71, v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x223DD8AC0](v51, -1, -1);
        MEMORY[0x223DD8AC0](v50, -1, -1);
      }

      v57 = *(v29 + qword_28131DB60);
      if (v57)
      {
        [v57 *v72];
      }

      else
      {
        v58 = sub_2232AAAC4();
        v59 = sub_2232AAD94();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_22325E000, v58, v59, v70, v60, 2u);
          MEMORY[0x223DD8AC0](v60, -1, -1);
        }
      }

      return;
    }

    goto LABEL_6;
  }

  sub_223260E74(v14, v78, &unk_27D0812C0, &qword_2232AD0C0);
  if (v28(&v14[v27], 1, v6) == 1)
  {
    sub_223260EDC(v23, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v25, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v77 + 8))(v78, v6);
LABEL_6:
    sub_223260EDC(v14, &unk_27D0818B8, "(6");
    v29 = v79;
    goto LABEL_7;
  }

  v39 = v6;
  v41 = v76;
  v40 = v77;
  (*(v77 + 32))(v76, &v14[v27], v39);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0]);
  v69 = v28;
  v42 = v78;
  v68 = sub_2232AABE4();
  v43 = v40;
  v6 = v39;
  v44 = *(v43 + 8);
  v44(v41, v39);
  sub_223260EDC(v23, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v25, &unk_27D0812C0, &qword_2232AD0C0);
  v45 = v42;
  v28 = v69;
  v44(v45, v39);
  sub_223260EDC(v14, &unk_27D0812C0, &qword_2232AD0C0);
  v29 = v79;
  if (v68)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v30 = sub_2232AAAD4();
  __swift_project_value_buffer(v30, qword_28131DB88);

  v31 = sub_2232AAAC4();
  v32 = sub_2232AAD84();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v81 = v34;
    *v33 = 136315138;
    v35 = v29 + v73;
    v36 = v74;
    sub_223260E74(v35, v74, &unk_27D0812C0, &qword_2232AD0C0);
    if (v28(v36, 1, v6))
    {
      sub_223260EDC(v36, &unk_27D0812C0, &qword_2232AD0C0);
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v61 = v6;
      v63 = v76;
      v62 = v77;
      (*(v77 + 16))(v76, v36, v61);
      sub_223260EDC(v36, &unk_27D0812C0, &qword_2232AD0C0);
      v64 = sub_2232A94C4();
      v37 = v65;
      (*(v62 + 8))(v63, v61);
      v38 = v64;
    }

    v66 = sub_2232603D0(v38, v37, &v81);

    *(v33 + 4) = v66;
    _os_log_impl(&dword_22325E000, v31, v32, v75, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x223DD8AC0](v34, -1, -1);
    MEMORY[0x223DD8AC0](v33, -1, -1);
  }
}

uint64_t sub_2232632C4@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081410, &qword_2232ACCA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v72 = v66 - v3;
  v4 = sub_2232AA714();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v69 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = v66 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v66 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081860, &qword_2232ACCA8);
  v14 = *(v5 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2232AC340;
  v17 = v16 + v15;
  v18 = *MEMORY[0x277D5D1D0];
  v71 = v6;
  v19 = *(v6 + 104);
  v19(v17, v18, v4);
  v20 = *MEMORY[0x277D5D1A8];
  v19(v17 + v14, v20, v4);
  v68 = *MEMORY[0x277D5D1C8];
  (v19)(v17 + 2 * v14);
  v21 = sub_223264760(v16);

  v73 = v19;
  v19(v13, v18, v4);
  if (*(v21 + 16) && (v22 = sub_223264408(v13), (v23 & 1) != 0))
  {
    sub_2232606EC(*(v21 + 56) + 32 * v22, v76);
    v24 = *(v71 + 8);
    v24(v13, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081870, &qword_2232AC5C8);
    if (swift_dynamicCast())
    {
      v25 = v75;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v24 = *(v71 + 8);
    v24(v13, v4);
    v25 = 0;
  }

  v26 = v67;
  v73(v67, v20, v4);
  if (*(v21 + 16) && (v27 = sub_223264408(v26), (v28 & 1) != 0))
  {
    sub_2232606EC(*(v21 + 56) + 32 * v27, v76);
    v24(v26, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
    if (swift_dynamicCast())
    {
      v29 = v75;
      goto LABEL_13;
    }
  }

  else
  {
    v24(v26, v4);
  }

  v29 = MEMORY[0x277D84F90];
LABEL_13:
  v67 = v24;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v30 = sub_2232AAAD4();
  v31 = __swift_project_value_buffer(v30, qword_28131DB88);

  v66[1] = v31;
  v32 = sub_2232AAAC4();
  v33 = sub_2232AAD84();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v66[0] = v25;
    v35 = v34;
    v36 = swift_slowAlloc();
    v76[0] = v36;
    *v35 = 136315138;
    v37 = MEMORY[0x223DD80A0](v29, MEMORY[0x277D837D0]);
    v39 = sub_2232603D0(v37, v38, v76);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_22325E000, v32, v33, "displayHintsFromSession: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x223DD8AC0](v36, -1, -1);
    v40 = v35;
    v25 = v66[0];
    MEMORY[0x223DD8AC0](v40, -1, -1);
  }

  v41 = v72;
  v42 = v74;
  v43 = v69;
  v73(v69, v68, v4);
  if (*(v21 + 16) && (v44 = sub_223264408(v43), (v45 & 1) != 0))
  {
    sub_2232606EC(*(v21 + 56) + 32 * v44, v76);
    (v67)(v43, v4);

    v46 = sub_2232A95E4();
    v47 = swift_dynamicCast();
    (*(*(v46 - 8) + 56))(v41, v47 ^ 1u, 1, v46);
  }

  else
  {

    (v67)(v43, v4);
    v48 = sub_2232A95E4();
    (*(*(v48 - 8) + 56))(v41, 1, 1, v48);
  }

  v49 = sub_223263B38(v25, v41);
  v50 = [objc_opt_self() isDictationAutoPunctuationEnabled];
  v51 = sub_22326779C(v25, v50);
  v52 = sub_22326B7AC(v25);
  v54 = v53;
  if (*(v42 + qword_28131D8D0))
  {

    v55 = sub_2232AAAC4();
    v56 = sub_2232AAD84();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_22325E000, v55, v56, "Sending empty JITLME for MUX enabled device for improving ASR performance.", v57, 2u);
      MEMORY[0x223DD8AC0](v57, -1, -1);
    }

    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v74 = v49;
    v59 = sub_2232AAAC4();
    v60 = sub_2232AAD84();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v25;
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_22325E000, v59, v60, "Attaching display Hints to ASR", v62, 2u);
      v63 = v62;
      v25 = v61;
      MEMORY[0x223DD8AC0](v63, -1, -1);
    }

    sub_2232AA944();
    v76[0] = v25;
    v76[1] = v29;
    sub_22326BF10();
    sub_22326C1EC();
    sub_22326C2DC();
    sub_22326C288();
    sub_2232A9514();

    v58 = v75;
    v41 = v72;
    v49 = v74;
  }

  result = sub_223260EDC(v41, &qword_27D081410, &qword_2232ACCA0);
  v65 = v70;
  *v70 = v49;
  *(v65 + 8) = v51 & 1;
  v65[2] = v58;
  v65[3] = v52;
  v65[4] = v54;
  return result;
}

uint64_t sub_223263B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2232A9664();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081410, &qword_2232ACCA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  v13 = sub_2232A95E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (*(v14 + 48))(a2, 1, v13) != 1)
  {
    v59 = a1;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AAAD4();
    __swift_project_value_buffer(v18, qword_28131DB88);
    v19 = sub_2232AAAC4();
    v20 = sub_2232AAD94();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v58 = v17;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_22325E000, v19, v20, "Both LegacyNLContext and SystemDialogActs are present for this request", v21, 2u);
      v23 = v22;
      v17 = v58;
      MEMORY[0x223DD8AC0](v23, -1, -1);
    }

    a1 = v59;
  }

  sub_2232646F0(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2232643A0(v12);
    if (a1)
    {
      v24 = *(a1 + 16);
      if (v24)
      {
        v27 = *(v5 + 16);
        v25 = v5 + 16;
        v26 = v27;
        v28 = (v25 - 8);
        v29 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
        v30 = *(v25 + 56);
        while (1)
        {
          v26(v8, v29, v4);
          if (sub_2232A9624())
          {
            break;
          }

          if (sub_2232A9634())
          {
            if (qword_28131D338 != -1)
            {
              swift_once();
            }

            v53 = sub_2232AAAD4();
            __swift_project_value_buffer(v53, qword_28131DB88);
            v54 = sub_2232AAAC4();
            v55 = sub_2232AAD84();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              *v56 = 0;
              _os_log_impl(&dword_22325E000, v54, v55, "SDA found indicating confirmation task type", v56, 2u);
              MEMORY[0x223DD8AC0](v56, -1, -1);
            }

            if (qword_28131D5D0 != -1)
            {
              swift_once();
            }

            v57 = byte_28131D5D8;
            (*v28)(v8, v4);
            v41 = v57 == 0;
            v51 = 9;
            v52 = 7;
            goto LABEL_49;
          }

          (*v28)(v8, v4);
          v29 += v30;
          if (!--v24)
          {
            goto LABEL_15;
          }
        }

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v46 = sub_2232AAAD4();
        __swift_project_value_buffer(v46, qword_28131DB88);
        v47 = sub_2232AAAC4();
        v48 = sub_2232AAD84();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_22325E000, v47, v48, "SDA found indicating SiriDictation task type", v49, 2u);
          MEMORY[0x223DD8AC0](v49, -1, -1);
        }

        if (qword_28131D5D0 != -1)
        {
          swift_once();
        }

        v50 = byte_28131D5D8;
        (*v28)(v8, v4);
        v41 = v50 == 0;
        goto LABEL_48;
      }

LABEL_15:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v31 = sub_2232AAAD4();
      __swift_project_value_buffer(v31, qword_28131DB88);
      v32 = sub_2232AAAC4();
      v33 = sub_2232AAD84();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_35;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "No relevant SDA found, using default task type";
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v44 = sub_2232AAAD4();
      __swift_project_value_buffer(v44, qword_28131DB88);
      v32 = sub_2232AAAC4();
      v33 = sub_2232AAD84();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_35;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "SystemDialogActs not present using default task type";
    }

    _os_log_impl(&dword_22325E000, v32, v33, v35, v34, 2u);
    MEMORY[0x223DD8AC0](v34, -1, -1);
LABEL_35:

    if (qword_28131D5D0 != -1)
    {
      swift_once();
    }

    v43 = byte_28131D5D8 == 0;
LABEL_38:
    if (v43)
    {
      return 0;
    }

    else
    {
      return 7;
    }
  }

  (*(v14 + 32))(v17, v12, v13);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v36 = sub_2232AAAD4();
  __swift_project_value_buffer(v36, qword_28131DB88);
  v37 = sub_2232AAAC4();
  v38 = sub_2232AAD84();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_22325E000, v37, v38, "LegacyNLContext is present, ignoring SystemDialogActs", v39, 2u);
    MEMORY[0x223DD8AC0](v39, -1, -1);
  }

  if ((sub_2232A95D4() & 1) == 0)
  {
    if (qword_28131D5D0 != -1)
    {
      swift_once();
    }

    v42 = byte_28131D5D8;
    (*(v14 + 8))(v17, v13);
    v43 = v42 == 0;
    goto LABEL_38;
  }

  if (qword_28131D5D0 != -1)
  {
    swift_once();
  }

  v40 = byte_28131D5D8;
  (*(v14 + 8))(v17, v13);
  v41 = v40 == 0;
LABEL_48:
  v51 = 2;
  v52 = 8;
LABEL_49:
  if (v41)
  {
    return v51;
  }

  else
  {
    return v52;
  }
}

uint64_t sub_2232643A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081410, &qword_2232ACCA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223264408(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2232AA714();
  v5 = MEMORY[0x277D5D1F0];
  sub_223262204(&unk_28131DAB0, MEMORY[0x277D5D1F0]);
  v6 = sub_2232AABC4();
  return sub_223264550(a1, v6, MEMORY[0x277D5D1F0], &qword_28131DAA8, v5, MEMORY[0x277D5D200]);
}

void *sub_2232644DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081960, &qword_2232ACE98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_223264550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_223262204(v24, v25);
      v20 = sub_2232AABE4();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_2232646F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081410, &qword_2232ACCA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223264760(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2232AA714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v67 = sub_2232AA794();
  v13 = *(v67 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v67);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  if (*(v1 + qword_28131D8D0) != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v37 = sub_2232AAAD4();
    __swift_project_value_buffer(v37, qword_28131DB88);

    v38 = sub_2232AAAC4();
    v39 = sub_2232AAD84();

    v40 = &unk_28131D000;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v66 = a1;
      v42 = v41;
      v43 = swift_slowAlloc();
      v68[0] = v43;
      *v42 = 136315138;
      v23 = v67;
      (*(v13 + 16))(v17, v1 + qword_28131DCE0, v67);
      sub_22326C240(&qword_28131DAA0, MEMORY[0x277D5D298]);
      v44 = sub_2232AB064();
      v46 = v45;
      (*(v13 + 8))(v17, v23);
      v47 = sub_2232603D0(v44, v46, v68);
      v40 = &unk_28131D000;

      *(v42 + 4) = v47;
      _os_log_impl(&dword_22325E000, v38, v39, "Fetching context for sessionUserId: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x223DD8AC0](v43, -1, -1);
      MEMORY[0x223DD8AC0](v42, -1, -1);
    }

    else
    {

      v23 = v67;
    }

    v48 = *(v2 + qword_28131D8C0 + 32);
    __swift_project_boxed_opaque_existential_1((v2 + qword_28131D8C0), *(v2 + qword_28131D8C0 + 24));
    (*(v13 + 16))(v17, v2 + v40[412], v23);
    goto LABEL_20;
  }

  v63 = v20;
  v64 = &v62 - v19;
  v66 = a1;
  v21 = *(v1 + qword_28131D8C0 + 24);
  v22 = *(v1 + qword_28131D8C0 + 32);
  v65 = (v1 + qword_28131D8C0);
  __swift_project_boxed_opaque_existential_1((v1 + qword_28131D8C0), v21);
  (*(v5 + 104))(v8, *MEMORY[0x277D5D1C0], v4);
  sub_2232AA734();
  (*(v5 + 8))(v8, v4);
  if (!v68[3])
  {
    sub_223260EDC(v68, &qword_27D081820, &qword_2232ACC70);
    v23 = v67;
    (*(v13 + 56))(v12, 1, 1, v67);
    goto LABEL_15;
  }

  v23 = v67;
  v24 = swift_dynamicCast();
  (*(v13 + 56))(v12, v24 ^ 1u, 1, v23);
  if ((*(v13 + 48))(v12, 1, v23) == 1)
  {
LABEL_15:
    sub_223260EDC(v12, &unk_27D0814C0, &unk_2232AC480);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v49 = sub_2232AAAD4();
    __swift_project_value_buffer(v49, qword_28131DB88);

    v50 = sub_2232AAAC4();
    v51 = sub_2232AADA4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v68[0] = v53;
      *v52 = 136315138;
      (*(v13 + 16))(v17, v1 + qword_28131DCE0, v23);
      sub_22326C240(&qword_28131DAA0, MEMORY[0x277D5D298]);
      v54 = sub_2232AB064();
      v56 = v55;
      (*(v13 + 8))(v17, v23);
      v57 = sub_2232603D0(v54, v56, v68);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_22325E000, v50, v51, "Could not find a previous user in the session because perhaps this is the first request of the session. Fetching context for sessionUserId: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x223DD8AC0](v53, -1, -1);
      MEMORY[0x223DD8AC0](v52, -1, -1);
    }

    v58 = v65[4];
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    (*(v13 + 16))(v17, v2 + qword_28131DCE0, v23);
LABEL_20:
    v59 = sub_2232AA754();
    (*(v13 + 8))(v17, v23);
    return v59;
  }

  v25 = v64;
  (*(v13 + 32))(v64, v12, v23);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v26 = sub_2232AAAD4();
  __swift_project_value_buffer(v26, qword_28131DB88);
  v27 = v63;
  (*(v13 + 16))(v63, v25, v23);
  v28 = sub_2232AAAC4();
  v29 = sub_2232AAD84();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v68[0] = v62;
    *v30 = 136315138;
    sub_22326C240(&qword_28131DAA0, MEMORY[0x277D5D298]);
    v31 = sub_2232AB064();
    v33 = v32;
    v34 = *(v13 + 8);
    v34(v27, v23);
    v35 = sub_2232603D0(v31, v33, v68);
    v25 = v64;

    *(v30 + 4) = v35;
    _os_log_impl(&dword_22325E000, v28, v29, "Fetching context for the user selected in previous request: %s", v30, 0xCu);
    v36 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x223DD8AC0](v36, -1, -1);
    MEMORY[0x223DD8AC0](v30, -1, -1);
  }

  else
  {

    v34 = *(v13 + 8);
    v34(v27, v23);
  }

  v61 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  v59 = sub_2232AA754();
  v34(v25, v23);
  return v59;
}

uint64_t sub_2232650D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2232650EC(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t (*a5)(id, uint64_t), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v104 = a7;
  v105 = a8;
  v102 = a5;
  v103 = a6;
  v98 = a4;
  v11 = sub_2232AA6B4();
  v106 = *(v11 - 8);
  v107 = v11;
  v12 = *(v106 + 64);
  MEMORY[0x28223BE20](v11);
  v97 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2232AA694();
  v100 = *(v14 - 8);
  v101 = v14;
  v15 = *(v100 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v99 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v108 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v93 - v21;
  v23 = sub_2232A9504();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v28 = sub_2232AAAD4();
  v29 = __swift_project_value_buffer(v28, qword_28131DB88);
  v30 = a1;
  v109 = v29;
  v31 = sub_2232AAAC4();
  v32 = sub_2232AAD84();

  v33 = os_log_type_enabled(v31, v32);
  v110 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = v23;
    v36 = v22;
    v37 = a3;
    v38 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v38 = v30;
    v39 = v30;
    _os_log_impl(&dword_22325E000, v31, v32, "AsrRequestProcessor received message: %@", v34, 0xCu);
    sub_223260EDC(v38, &qword_27D0812D0, &qword_2232AC4A0);
    v40 = v38;
    a3 = v37;
    v22 = v36;
    v23 = v35;
    a2 = v110;
    MEMORY[0x223DD8AC0](v40, -1, -1);
    MEMORY[0x223DD8AC0](v34, -1, -1);
  }

  v41 = *(a2 + qword_28131D900);
  if (a3())
  {
    v42 = sub_2232AA7A4();
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_2232AA904();
  v45 = v44;
  sub_2232AA954();
  sub_223265B48(v42, v43, v45, v27);
  v46 = v110;

  (*(v24 + 8))(v27, v23);
  if (*(v46 + qword_28131DCF8) == 1)
  {
    v47 = sub_2232AAAC4();
    v48 = sub_2232AADA4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22325E000, v47, v48, "Dropping the StartSpeechRequestMessage as we already ran this request in Candidate mode.", v49, 2u);
      MEMORY[0x223DD8AC0](v49, -1, -1);
    }
  }

  else
  {
    v51 = v106;
    v50 = v107;
    v52 = *(v106 + 104);
    v95 = *MEMORY[0x277D5CF40];
    v96 = v106 + 104;
    v94 = v52;
    v52(v22);
    v53 = 1;
    (*(v51 + 56))(v22, 0, 1, v50);
    v54 = qword_28131DD10;
    swift_beginAccess();
    sub_223260794(v22, v46 + v54, &unk_27D081810, &unk_2232ACC60);
    v55 = swift_endAccess();
    v98(v55);
    v57 = v99;
    v56 = v100;
    v58 = v101;
    (*(v100 + 104))(v99, *MEMORY[0x277D5CE90], v101);
    sub_223260388(&qword_28131DAD0, MEMORY[0x277D5CEA0]);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v113[0] != v111 || v113[1] != v112)
    {
      v53 = sub_2232AB094();
    }

    v59 = *(v56 + 8);
    v59(v57, v58);
    v59(v108, v58);

    *(v46 + qword_28131D8E0) = v53 & 1;
    sub_223268998(0);
    v60 = v102(v30, v46);
    v61 = v30;
    v62 = v60;
    v63 = sub_2232AAAC4();
    v64 = sub_2232AAD84();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v113[0] = v67;
      *v65 = 138412546;
      *(v65 + 4) = v62;
      *v66 = v62;
      *(v65 + 12) = 2080;
      v68 = v62;
      v69 = sub_2232AA5D4();
      v71 = sub_2232603D0(v69, v70, v113);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_22325E000, v63, v64, "RequestSettings: %@ for requestId: %s", v65, 0x16u);
      sub_223260EDC(v66, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v66, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x223DD8AC0](v67, -1, -1);
      MEMORY[0x223DD8AC0](v65, -1, -1);
    }

    if (v103())
    {
      v72 = v110;
      *(v110 + qword_28131DD18) = 1;
      v73 = v97;
      v74 = v107;
      v94(v97, v95, v107);
      v75 = sub_223291AA4(v73);
      (*(v106 + 8))(v73, v74);
      v76 = *(v72 + qword_28131DD20);
      *(v72 + qword_28131DD20) = v75;

      v77 = *(v72 + qword_28131D8B0);
      sub_2232AA5D4();
      v78 = sub_2232AABF4();

      [v77 disableLocalSpeechRecognitionForRequestId_];

      v79 = v61;
      v80 = sub_2232AAAC4();
      v81 = sub_2232AAD84();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v113[0] = v83;
        *v82 = 136315138;
        v84 = sub_2232AA5D4();
        v86 = sub_2232603D0(v84, v85, v113);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_22325E000, v80, v81, "#AsrOnServer ASR is being processed on server for requestId: %s. LocalSpeechRecognition is disabled.", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x223DD8AC0](v83, -1, -1);
        MEMORY[0x223DD8AC0](v82, -1, -1);
      }

      v87 = v110;
    }

    else
    {
      v87 = v110;
      v88 = *(v110 + qword_28131D850);
      v89 = [v62 speechRecognitionTask];
      sub_2232AA5D4();
      sub_22326BC40(v89);
    }

    [*(v87 + qword_28131D8B0) startSpeechRecognitionResultsWithSettings_];
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v90 = sub_2232AA8A4();
    __swift_project_value_buffer(v90, qword_28131DBA0);
    v91 = swift_allocObject();
    v91[2] = v87;
    v91[3] = v61;
    v91[4] = v105;
    v92 = v61;

    sub_2232AA874();
  }
}

uint64_t sub_223265B48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a1;
  v31 = a3;
  v29 = a2;
  v35 = sub_2232AAB14();
  v37 = *(v35 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2232AAB44();
  v34 = *(v36 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2232A9504();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v4 + 16);
  (*(v13 + 16))(v15, a4, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v16, v15, v12);
  v21 = (v20 + v17);
  v22 = v31;
  *v21 = v29;
  v21[1] = v22;
  *(v20 + v18) = v5;
  v23 = v30;
  *(v20 + v19) = v30;
  aBlock[4] = sub_2232A5B6C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_38;
  v24 = _Block_copy(aBlock);
  v25 = v23;

  sub_2232AAB24();
  v38 = MEMORY[0x277D84F90];
  sub_223262204(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_22326224C(&qword_28131D210, &qword_27D081AB0, &unk_2232AD010);
  v26 = v32;
  v27 = v35;
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v11, v26, v24);
  _Block_release(v24);
  (*(v37 + 8))(v26, v27);
  (*(v34 + 8))(v11, v36);
}

uint64_t sub_223265F28()
{
  v1 = sub_2232A9504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

NSObject *sub_22326608C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v153 = a6;
  v187 = a5;
  v155 = a3;
  v156 = a4;
  v174 = a2;
  v165 = a1;
  v159 = sub_2232AA6E4();
  v161 = *(v159 - 8);
  v8 = *(v161 + 64);
  MEMORY[0x28223BE20](v159);
  v158 = &v140[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v164 = &v140[-v12];
  v168 = sub_2232AA794();
  v166 = *(v168 - 8);
  v13 = *(v166 + 64);
  v14 = MEMORY[0x28223BE20](v168);
  v160 = &v140[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v170 = &v140[-v16];
  v17 = sub_2232A9504();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v173 = &v140[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v154 = &v140[-v23];
  MEMORY[0x28223BE20](v22);
  v167 = &v140[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v140[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v163 = &v140[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32);
  v169 = &v140[-v35];
  MEMORY[0x28223BE20](v34);
  v37 = &v140[-v36];
  v38 = qword_28131DB58;
  swift_beginAccess();
  v171 = *(v18 + 16);
  v172 = v18 + 16;
  v171(v37, v187, v17);
  (*(v18 + 56))(v37, 0, 1, v17);
  v39 = *(v26 + 56);
  v175 = v7;
  v162 = v38;
  sub_223260E74(v38 + v7, v29, &unk_27D0812C0, &qword_2232AD0C0);
  v40 = v17;
  sub_223260E74(v37, &v29[v39], &unk_27D0812C0, &qword_2232AD0C0);
  v176 = v18;
  v41 = *(v18 + 48);
  if (v41(v29, 1, v17) == 1)
  {
    sub_223260EDC(v37, &unk_27D0812C0, &qword_2232AD0C0);
    v42 = v41(&v29[v39], 1, v17);
    v43 = v175;
    if (v42 == 1)
    {
      sub_223260EDC(v29, &unk_27D0812C0, &qword_2232AD0C0);
      v44 = v170;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v45 = v169;
  sub_223260E74(v29, v169, &unk_27D0812C0, &qword_2232AD0C0);
  if (v41(&v29[v39], 1, v17) == 1)
  {
    sub_223260EDC(v37, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v176 + 8))(v45, v17);
    v43 = v175;
LABEL_6:
    v157 = v41;
    sub_223260EDC(v29, &unk_27D0818B8, "(6");
LABEL_7:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v46 = sub_2232AAAD4();
    __swift_project_value_buffer(v46, qword_28131DB88);
    v47 = v173;
    v171(v173, v187, v17);

    v48 = sub_2232AAAC4();
    v49 = sub_2232AAD94();

    if (os_log_type_enabled(v48, v49))
    {
      LODWORD(v187) = v49;
      v50 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v186[0] = v175;
      *v50 = 136315650;
      v51 = v163;
      sub_223260E74(v162 + v43, v163, &unk_27D0812C0, &qword_2232AD0C0);
      if (v157(v51, 1, v17))
      {
        sub_223260EDC(v51, &unk_27D0812C0, &qword_2232AD0C0);
        v52 = 0xE300000000000000;
        v53 = 7104878;
        v54 = v176;
      }

      else
      {
        v74 = v167;
        v171(v167, v51, v17);
        sub_223260EDC(v51, &unk_27D0812C0, &qword_2232AD0C0);
        v75 = sub_2232A94C4();
        v52 = v76;
        v54 = v176;
        (*(v176 + 8))(v74, v40);
        v53 = v75;
      }

      v77 = sub_2232603D0(v53, v52, v186);

      *(v50 + 4) = v77;
      *(v50 + 12) = 2080;
      sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0]);
      v78 = v173;
      v79 = sub_2232AB064();
      v81 = v80;
      (*(v54 + 8))(v78, v40);
      v82 = sub_2232603D0(v79, v81, v186);

      *(v50 + 14) = v82;
      *(v50 + 22) = 2080;
      *(v50 + 24) = sub_2232603D0(v165, v174, v186);
      _os_log_impl(&dword_22325E000, v48, v187, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v50, 0x20u);
      v49 = v175;
      swift_arrayDestroy();
      MEMORY[0x223DD8AC0](v49, -1, -1);
      MEMORY[0x223DD8AC0](v50, -1, -1);
    }

    else
    {

      (*(v176 + 8))(v47, v17);
    }

    sub_22329E88C();
    swift_allocError();
    *v83 = 0;
    goto LABEL_30;
  }

  v157 = v41;
  v55 = v176;
  v56 = v167;
  (*(v176 + 32))(v167, &v29[v39], v17);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0]);
  LODWORD(v152) = sub_2232AABE4();
  v57 = *(v55 + 8);
  v57(v56, v17);
  sub_223260EDC(v37, &unk_27D0812C0, &qword_2232AD0C0);
  v57(v45, v17);
  v44 = v170;
  sub_223260EDC(v29, &unk_27D0812C0, &qword_2232AD0C0);
  v43 = v175;
  if ((v152 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  v58 = qword_28131DB20;
  swift_beginAccess();
  v59 = v43 + v58;
  v60 = v164;
  sub_223260E74(v59, v164, &unk_27D0814C0, &unk_2232AC480);
  v61 = v166;
  v62 = v168;
  if ((*(v166 + 48))(v60, 1, v168) == 1)
  {
    sub_223260EDC(v60, &unk_27D0814C0, &unk_2232AC480);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v63 = sub_2232AAAD4();
    __swift_project_value_buffer(v63, qword_28131DB88);
    v49 = sub_2232AAAC4();
    v64 = sub_2232AAD94();
    if (os_log_type_enabled(v49, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_22325E000, v49, v64, "UserId has not been set for current session", v65, 2u);
      MEMORY[0x223DD8AC0](v65, -1, -1);
    }

    sub_22329E88C();
    swift_allocError();
    *v66 = 1;
LABEL_30:
    swift_willThrow();
    return v49;
  }

  (*(v61 + 32))(v44, v60, v62);
  v67 = qword_28131DB68;
  swift_beginAccess();
  sub_223260E74(v43 + v67, &v184, &unk_27D0818D8, ",6");
  if (v185)
  {
    sub_2232650D4(&v184, v186);
    v68 = v43;
    v69 = *(v43 + qword_28131DB28);
    if (v69 == 2)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v70 = sub_2232AAAD4();
      __swift_project_value_buffer(v70, qword_28131DB88);
      v49 = sub_2232AAAC4();
      v71 = sub_2232AAD94();
      if (os_log_type_enabled(v49, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_22325E000, v49, v71, "Unable to find isSystemAssistantExperienceEnabled to pass to AsrRequestProcessor", v72, 2u);
        MEMORY[0x223DD8AC0](v72, -1, -1);
      }

      sub_22329E88C();
      swift_allocError();
      *v73 = 3;
      swift_willThrow();
      (*(v61 + 8))(v44, v62);
      __swift_destroy_boxed_opaque_existential_1Tm(v186);
    }

    else
    {
      v151 = v17;
      v171(v167, v187, v17);
      v150 = *(v61 + 16);
      v150(v160, v44, v62);
      v187 = sub_2232AAA44();
      v175 = v89;
      sub_2232AAA14();
      v173 = sub_2232AAA04();
      sub_223260E10(v186, v183);
      __swift_project_boxed_opaque_existential_1(v186, v186[3]);
      sub_2232AA744();
      sub_223260E10(v68 + qword_28131D290, v180);
      v90 = [objc_allocWithZone(MEMORY[0x277D24250]) initWithDelegate_];
      v152 = *(v68 + qword_28131DB60);
      v91 = v152;
      v92 = *(v68 + qword_28131D270);
      v162 = v90;
      v163 = v92;
      v93 = *(v68 + qword_28131D278);
      v94 = *(v68 + qword_28131DB48 + 8);
      v149 = *(v68 + qword_28131DB48);
      v144 = v94;
      v145 = v93;
      v95 = *(v68 + qword_28131DB80);
      v141 = *(v68 + qword_28131DB70);
      v96 = *(v68 + qword_28131DB78);
      v147 = *(v68 + qword_28131D288);
      v148 = v96;

      v157 = v91;
      _s9ASRBridge9AsrBridgeC27configuredMaxEagerRCAllowedSivgZ_0();
      v146 = v97;
      v98 = objc_opt_self();
      v143 = [v98 isIdentityScoreConsumptionEnabled];
      v142 = [v98 isIdentityBridgeInstrumentationEnabled];
      v99 = qword_28131DB50;
      swift_beginAccess();
      v100 = v159;
      (*(v161 + 16))(v158, v68 + v99, v159);
      v101 = v181;
      v102 = __swift_mutable_project_boxed_opaque_existential_1(v180, v181);
      v169 = v140;
      v103 = *(*(v101 - 8) + 64);
      MEMORY[0x28223BE20](v102);
      v105 = &v140[-((v104 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v106 + 16))(v105);
      v107 = *v105;
      v108 = type metadata accessor for MyriadDecisionMonitor();
      v179[3] = v108;
      v179[4] = &off_28368D388;
      v179[0] = v107;
      v109 = type metadata accessor for AsrRequestProcessor();
      v110 = *(v109 + 48);
      v111 = *(v109 + 52);
      v112 = swift_allocObject();
      v113 = __swift_mutable_project_boxed_opaque_existential_1(v179, v108);
      v164 = v140;
      v114 = *(*(v108 - 8) + 64);
      MEMORY[0x28223BE20](v113);
      v116 = &v140[-((v115 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v117 + 16))(v116);
      v118 = *v116;
      v178[3] = v108;
      v178[4] = &off_28368D388;
      v178[0] = v118;
      v119 = qword_28131DD08;
      (*(v161 + 104))(v112 + qword_28131DD08, *MEMORY[0x277D5D0D0], v100);
      v120 = qword_28131DD10;
      v121 = sub_2232AA6B4();
      (*(*(v121 - 8) + 56))(v112 + v120, 1, 1, v121);
      *(v112 + qword_28131DD18) = 0;
      *(v112 + qword_28131DD20) = 0;
      *(v112 + qword_28131DD00) = 0;
      *(v112 + qword_28131DCF8) = 0;
      v122 = (v112 + qword_28131D878);
      *v122 = 0;
      v122[1] = 0;
      *(v112 + qword_28131D8E0) = 0;
      *(v112 + qword_28131D8F0) = v95;
      *(v112 + qword_28131D8D8) = v141;
      sub_223260E10(v183, v112 + qword_28131D8C0);
      sub_223260E10(v182, v112 + qword_28131D848);
      v150((v112 + qword_28131DCE0), v160, v168);
      *(v112 + qword_28131D850) = v145;
      sub_223260E10(&v184, v112 + qword_28131D858);
      sub_223260E10(v178, v112 + qword_28131D8A0);
      v123 = v144;
      *v122 = v149;
      v122[1] = v123;
      v124 = v147;
      *(v112 + qword_28131D8D0) = v148;
      *(v112 + qword_28131D898) = v124;
      *(v112 + qword_28131D830) = v69 & 1;
      *(v112 + qword_28131DD30) = v153 & 1;
      v125 = v146;
      *(v112 + qword_28131D868) = v146;
      v126 = v142;
      *(v112 + qword_28131DCF0) = v143;
      *(v112 + qword_28131DCE8) = v126;
      sub_223260E10(&v184, v177);
      type metadata accessor for BufferedResultCandidateHandler();
      v127 = swift_allocObject();
      v127[10] = 0;

      v128 = v174;

      v129 = MEMORY[0x277D84F90];
      v127[11] = sub_22326767C(MEMORY[0x277D84F90], &qword_27D081958, &qword_2232ACE90);
      v127[12] = 0;
      v127[7] = v165;
      v127[8] = v128;
      sub_2232650D4(v177, (v127 + 2));
      *(v112 + qword_28131D838) = v127;
      v130 = v162;
      *(v112 + qword_28131D8B0) = v162;
      *(v112 + qword_28131D888) = v152;
      v127[9] = v125;
      *(v112 + qword_28131D900) = v163;
      type metadata accessor for ASRMUXRequestContext();
      v131 = swift_allocObject();
      v157 = v157;

      v162 = v130;

      *(v131 + 24) = sub_2232605A8(v129, &qword_27D081950, &unk_2232AD030);
      *(v131 + 32) = sub_223268790(v129);
      *(v131 + 40) = 0;
      *(v131 + 16) = v127;
      *(v112 + qword_28131DD28) = v131;
      swift_beginAccess();
      v132 = v161;
      v133 = v112 + v119;
      v134 = v158;
      v135 = v159;
      (*(v161 + 24))(v133, v158, v159);
      swift_endAccess();
      v136 = v167;
      v137 = v151;
      v171(v154, v167, v151);
      sub_223260E10(&v184, v177);

      v49 = sub_2232AA974();

      (*(v132 + 8))(v134, v135);
      __swift_destroy_boxed_opaque_existential_1Tm(v182);
      __swift_destroy_boxed_opaque_existential_1Tm(v183);
      __swift_destroy_boxed_opaque_existential_1Tm(&v184);
      v138 = *(v166 + 8);
      v139 = v168;
      v138(v160, v168);
      (*(v176 + 8))(v136, v137);
      v138(v170, v139);
      __swift_destroy_boxed_opaque_existential_1Tm(v178);
      __swift_destroy_boxed_opaque_existential_1Tm(v179);
      __swift_destroy_boxed_opaque_existential_1Tm(v180);
      __swift_destroy_boxed_opaque_existential_1Tm(v186);
    }
  }

  else
  {
    sub_223260EDC(&v184, &unk_27D0818D8, ",6");
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v85 = sub_2232AAAD4();
    __swift_project_value_buffer(v85, qword_28131DB88);
    v49 = sub_2232AAAC4();
    v86 = sub_2232AAD94();
    if (os_log_type_enabled(v49, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_22325E000, v49, v86, "Unable to find SessionState to pass to AsrRequestProcessor", v87, 2u);
      MEMORY[0x223DD8AC0](v87, -1, -1);
    }

    sub_22329E88C();
    swift_allocError();
    *v88 = 2;
    swift_willThrow();
    (*(v61 + 8))(v44, v62);
  }

  return v49;
}

unint64_t sub_22326767C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2232AB014();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2232A2C98(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_22326779C(uint64_t a1, char a2)
{
  v33 = sub_2232A95A4();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2232A9664();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v26 = sub_2232AAAD4();
    __swift_project_value_buffer(v26, qword_28131DB88);
    v27 = sub_2232AAAC4();
    v28 = sub_2232AAD84();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_31;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Feature flag for auto-punctuation is off";
    goto LABEL_30;
  }

  if (qword_28131D5C8 != -1)
  {
    swift_once();
  }

  if (![qword_28131DCA0 dictationAutoPunctuationEnabled])
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v31 = sub_2232AAAD4();
    __swift_project_value_buffer(v31, qword_28131DB88);
    v27 = sub_2232AAAC4();
    v28 = sub_2232AAD84();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_31;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Auto-punctuation is disabled";
    goto LABEL_30;
  }

  if (!a1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v32 = sub_2232AAAD4();
    __swift_project_value_buffer(v32, qword_28131DB88);
    v27 = sub_2232AAAC4();
    v28 = sub_2232AAD84();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_31;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "SystemDialogActs are not present, disabling auto-punctuation";
LABEL_30:
    _os_log_impl(&dword_22325E000, v27, v28, v30, v29, 2u);
    MEMORY[0x223DD8AC0](v29, -1, -1);
LABEL_31:

    return 0;
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v15 = *(v9 + 16);
  v14 = v9 + 16;
  v34 = v15;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v17 = *(v14 + 56);
  v18 = (v14 - 8);
  v19 = (v4 + 8);
  v15(v12, v16, v8);
  while (1)
  {
    if ((sub_2232A9604() & 1) == 0)
    {
      (*v18)(v12, v8);
      goto LABEL_9;
    }

    sub_2232A9654();
    v20 = sub_2232A9594();
    (*v19)(v7, v33);
    (*v18)(v12, v8);
    if (v20)
    {
      break;
    }

LABEL_9:
    v16 += v17;
    if (!--v13)
    {
      return 0;
    }

    v34(v12, v16, v8);
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v21 = sub_2232AAAD4();
  __swift_project_value_buffer(v21, qword_28131DB88);
  v22 = sub_2232AAAC4();
  v23 = sub_2232AAD84();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22325E000, v22, v23, "Previous SDA contains a message payload prompt, enabling auto-punctuation", v24, 2u);
    MEMORY[0x223DD8AC0](v24, -1, -1);
  }

  return 1;
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

uint64_t sub_223267CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v98 = sub_2232AA7C4();
  v100 = *(v98 - 8);
  v3 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2232A9534();
  v77 = *(v5 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2232A9554();
  v9 = *(v84 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2232A95C4();
  v12 = *(v82 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2232A9584();
  v78 = *(v15 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15);
  v85 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2232A9684();
  v18 = *(v65 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2232A9664();
  v71 = *(v74 - 8);
  v21 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  result = a1[1];
  if (!*a1)
  {
    v101 = MEMORY[0x277D84F90];
LABEL_31:

    result = sub_22326865C(v58);
    *v60 = v101;
    return result;
  }

  v59[1] = a1[1];
  v70 = *(v26 + 16);
  if (!v70)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_30:
    v101 = v29;
    goto LABEL_31;
  }

  v73 = v24;
  v76 = v8;
  v27 = 0;
  v69 = v26 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
  v68 = v71 + 16;
  v66 = (v71 + 8);
  v62 = "systemDialogActs";
  v63 = (v18 + 8);
  v28 = v78;
  v89 = (v78 + 8);
  v90 = v78 + 16;
  v80 = (v12 + 8);
  v79 = (v9 + 8);
  v94 = (v100 + 8);
  v95 = v77 + 16;
  v29 = MEMORY[0x277D84F90];
  v93 = (v77 + 8);
  *&v22 = 136315138;
  v61 = v22;
  v96 = v5;
  v30 = v85;
  v75 = v15;
  v67 = v26;
  while (v27 < *(v26 + 16))
  {
    v31 = *(v71 + 72);
    v72 = v27;
    (*(v71 + 16))(v73, v69 + v31 * v27, v74);
    if (sub_2232A9614())
    {
      v32 = v64;
      sub_2232A95F4();
      v33 = sub_2232A9674();
      result = (*v63)(v32, v65);
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = 0;
        v91 = v33 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v86 = v34;
        v87 = v33;
        while (v35 < *(v33 + 16))
        {
          v36 = *(v28 + 72);
          v92 = v35;
          (*(v28 + 16))(v30, v91 + v36 * v35, v15);
          if (sub_2232A9564())
          {
            v37 = v81;
            sub_2232A9574();
            v38 = v83;
            sub_2232A95B4();
            (*v80)(v37, v82);
            v39 = sub_2232A9544();
            (*v79)(v38, v84);
            v40 = *(v39 + 16);
            if (v40)
            {
              v41 = (*(v77 + 80) + 32) & ~*(v77 + 80);
              v88 = v39;
              v42 = v39 + v41;
              v43 = *(v77 + 72);
              v99 = *(v77 + 16);
              v100 = v43;
              v44 = v76;
              do
              {
                v99(v44, v42, v5);
                v45 = v97;
                sub_2232A9524();
                v46 = sub_2232AA7B4();
                v48 = v47;
                (*v94)(v45, v98);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v29 = sub_22326888C(0, *(v29 + 2) + 1, 1, v29);
                }

                v50 = *(v29 + 2);
                v49 = *(v29 + 3);
                if (v50 >= v49 >> 1)
                {
                  v29 = sub_22326888C((v49 > 1), v50 + 1, 1, v29);
                }

                v5 = v96;
                (*v93)(v44, v96);
                *(v29 + 2) = v50 + 1;
                v51 = &v29[16 * v50];
                *(v51 + 4) = v46;
                *(v51 + 5) = v48;
                v42 += v100;
                --v40;
              }

              while (v40);

              v15 = v75;
              v28 = v78;
            }

            else
            {
            }

            v30 = v85;
            v34 = v86;
            v33 = v87;
          }

          v35 = v92 + 1;
          result = (*v89)(v30, v15);
          if (v35 == v34)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        break;
      }

LABEL_27:
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v52 = sub_2232AAAD4();
      __swift_project_value_buffer(v52, qword_28131DB88);
      v53 = sub_2232AAAC4();
      v54 = sub_2232AAD84();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v101 = v56;
        *v55 = v61;
        *(v55 + 4) = sub_2232603D0(0xD000000000000021, v62 | 0x8000000000000000, &v101);
        _os_log_impl(&dword_22325E000, v53, v54, "Not updating jitProfile for SDA: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        v57 = v56;
        v28 = v78;
        MEMORY[0x223DD8AC0](v57, -1, -1);
        MEMORY[0x223DD8AC0](v55, -1, -1);
      }
    }

    result = (*v66)(v73, v74);
    v27 = v72 + 1;
    v26 = v67;
    if (v72 + 1 == v70)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22326865C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22326888C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_223268790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081948, &unk_2232AD020);
    v3 = sub_2232AB014();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2232A2C98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

char *sub_22326888C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0810E8, &unk_2232AC930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_223268998(void *a1)
{
  v2 = v1;
  v197 = a1;
  v3 = sub_2232AA6B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v199 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  v7 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v201 = &v180 - v8;
  v212 = sub_2232AA794();
  v204 = *(v212 - 8);
  v9 = v204[8];
  v10 = MEMORY[0x28223BE20](v212);
  v203 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v210 = (&v180 - v12);
  v13 = sub_2232A9504();
  v205 = *(v13 - 8);
  v206 = v13;
  v14 = v205[8];
  v15 = MEMORY[0x28223BE20](v13);
  v196 = (&v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v202 = &v180 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v208 = &v180 - v20;
  MEMORY[0x28223BE20](v19);
  v209 = &v180 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v180 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v198 = &v180 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v180 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v180 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v180 - v38;
  v40 = qword_28131DD10;
  swift_beginAccess();
  v207 = v40;
  sub_223293AB8(v2 + v40, v39);
  v211 = v4;
  v41 = *(v4 + 48);
  v213 = v3;
  v42 = v3;
  v43 = v41;
  if (v41(v39, 1, v42) == 1)
  {
    goto LABEL_2;
  }

  sub_223293AB8(v39, v37);
  v51 = (v211[11])(v37, v213);
  if (v51 == *MEMORY[0x277D5CF40])
  {
LABEL_8:
    sub_223260EDC(v39, &unk_27D081810, &unk_2232ACC60);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v185 = v43;
    v52 = sub_2232AAAD4();
    v53 = __swift_project_value_buffer(v52, qword_28131DB88);

    v187 = v53;
    v54 = sub_2232AAAC4();
    v55 = sub_2232AAD84();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v231[0] = v57;
      *v56 = 136315138;
      v58 = sub_2232AA944();
      v60 = sub_2232603D0(v58, v59, v231);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_22325E000, v54, v55, "Setting speech client delegate for requestId = %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x223DD8AC0](v57, -1, -1);
      MEMORY[0x223DD8AC0](v56, -1, -1);
    }

    v61 = v213;
    sub_2232AA954();
    v62 = sub_2232AA904();
    v190 = v63;
    v191 = v62;
    v195 = sub_2232AA944();
    v189 = v64;
    v196 = v204[2];
    v186 = (v204 + 2);
    v196(v210, v2 + qword_28131DCE0, v212);
    sub_223260E10(v2 + qword_28131D858, v231);
    v193 = sub_2232AA924();
    sub_223260E10(v2 + qword_28131D8A0, v229);
    sub_223260E10(v2 + qword_28131D8C0, v227);
    sub_223260E10(v2 + qword_28131D848, v226);
    v188 = sub_2232AA914();
    v65 = *(v2 + qword_28131D838);
    v66 = *(v2 + qword_28131D8F0);
    v67 = *(v2 + qword_28131D8D8);
    LODWORD(v197) = *(v2 + qword_28131D8D0);
    v68 = *(v2 + qword_28131D898);
    v183 = *(v2 + qword_28131DD30);
    v184 = v68;
    v69 = *(v2 + qword_28131D8E0);
    v181 = v67;
    v182 = v69;
    v70 = v211;
    v211[13](v34, *MEMORY[0x277D5CF20], v61);
    (v70[7])(v34, 0, 1, v61);
    v71 = v201;
    v72 = *(v200 + 48);
    sub_223293AB8(v207 + v2, v201);
    sub_223293AB8(v34, v71 + v72);
    v73 = v185;
    v74 = v185(v71, 1, v61);
    v192 = v65;
    v194 = v66;
    if (v74 == 1)
    {

      sub_223260EDC(v34, &unk_27D081810, &unk_2232ACC60);
      v75 = v73(v71 + v72, 1, v61);
      v76 = v208;
      if (v75 == 1)
      {
        sub_223260EDC(v71, &unk_27D081810, &unk_2232ACC60);
        LODWORD(v200) = 1;
LABEL_36:
        v97 = v205;
        v98 = v212;
        LODWORD(v201) = *(v2 + qword_28131DCF0);
        LODWORD(v199) = *(v2 + qword_28131DCE8);
        LODWORD(v198) = *(v2 + qword_28131D830);
        v99 = v230;
        v100 = __swift_mutable_project_boxed_opaque_existential_1(v229, v230);
        v213 = &v180;
        v101 = *(*(v99 - 8) + 64);
        MEMORY[0x28223BE20](v100);
        v103 = (&v180 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v104 + 16))(v103);
        v105 = *v103;
        v106 = type metadata accessor for MyriadDecisionMonitor();
        v225[4] = &off_28368D388;
        v225[3] = v106;
        v225[0] = v105;
        v107 = v97[2];
        v185 = (v97 + 2);
        v180 = v107;
        v107(v76, v209, v206);
        v108 = v203;
        v196(v203, v210, v98);
        sub_223260E10(v231, v224);
        if (qword_28131DA80 != -1)
        {
          swift_once();
        }

        v186 = qword_28131DD40;
        sub_223260E10(v225, v222);
        sub_223260E10(v227, v221);
        sub_223260E10(v226, v220);
        v109 = v223;
        v110 = __swift_mutable_project_boxed_opaque_existential_1(v222, v223);
        v211 = &v180;
        v111 = *(*(v109 - 8) + 64);
        MEMORY[0x28223BE20](v110);
        v113 = (&v180 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v114 + 16))(v113);
        v115 = *v113;
        v218 = v106;
        v219 = &off_28368D388;
        v217[0] = v115;
        v116 = objc_allocWithZone(type metadata accessor for AssistantSpeechRecognizerResponseHandler());
        v117 = v218;
        v118 = __swift_mutable_project_boxed_opaque_existential_1(v217, v218);
        v207 = &v180;
        v119 = *(*(v117 - 8) + 64);
        MEMORY[0x28223BE20](v118);
        v121 = (&v180 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v122 + 16))(v121);
        v123 = *v121;
        v216[4] = &off_28368D388;
        v216[3] = v106;
        v216[0] = v123;
        *&v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg] = 0;
        *&v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard] = 0;
        *&v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_speechPartialResultsCache] = MEMORY[0x277D84F90];
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_didStopASR] = 0;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_hasfirstVoiceIdScoreCardArrived] = 0;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_havePostedSpeechPartialDeliveryStartedMessage] = 0;
        v124 = v189;

        v125 = sub_2232AAAC4();
        v126 = sub_2232AAD84();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v215[0] = v128;
          *v127 = 136315138;
          *(v127 + 4) = sub_2232603D0(v195, v124, v215);
          _os_log_impl(&dword_22325E000, v125, v126, "Result selection gate in place for requestId=%s", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v128);
          MEMORY[0x223DD8AC0](v128, -1, -1);
          MEMORY[0x223DD8AC0](v127, -1, -1);
        }

        v129 = v202;
        *&v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers] = v194;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isRMVEnabled] = v181;
        sub_223260E10(v216, &v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_myriadMonitor]);
        v130 = v188;
        *&v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_requestQueue] = v188;
        v196(&v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId], v108, v212);
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled] = v197;
        v131 = v183;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled] = v184;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isCandidateRequest] = v131;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isFFRequest] = v182;
        sub_223260E10(v221, &v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_sessionState]);
        sub_223260E10(v220, &v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_immutableSessionState]);
        *&v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_bufferedResultCandidateHandler] = v192;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isUOS] = v200 & 1;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityScoreConsumptionEnabled] = v201;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityBridgeInstrumentationEnabled] = v199;
        v116[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isSystemAssistantExperienceEnabled] = v198;
        v132 = v206;
        v133 = v180;
        v180(v129, v208, v206);
        sub_223260E10(v224, v215);
        v133(&v116[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId], v129, v132);
        v134 = &v116[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId];
        v135 = v190;
        *v134 = v191;
        v134[1] = v135;
        v136 = &v116[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
        *v136 = v195;
        v136[1] = v124;
        sub_223260E10(v215, &v116[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher]);
        *&v116[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper] = v193;
        *&v116[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil] = v186;
        v137 = type metadata accessor for SpeechRecognizerResponseHandler();
        v214.receiver = v116;
        v214.super_class = v137;

        v138 = v130;
        swift_unknownObjectRetain();

        v139 = objc_msgSendSuper2(&v214, sel_init);
        __swift_destroy_boxed_opaque_existential_1Tm(v215);
        v140 = v129;
        v141 = v205[1];
        v141(v140, v132);
        if (v197)
        {
          v142 = v139;
          v143 = v139;
          v205 = sub_2232777E8();

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v220);
          __swift_destroy_boxed_opaque_existential_1Tm(v221);
          __swift_destroy_boxed_opaque_existential_1Tm(v224);
          v144 = v204[1];
          v145 = v212;
          v144(v203, v212);
          v141(v208, v132);
          __swift_destroy_boxed_opaque_existential_1Tm(v226);
          __swift_destroy_boxed_opaque_existential_1Tm(v227);
          __swift_destroy_boxed_opaque_existential_1Tm(v231);
          v144(v210, v145);
          v141(v209, v132);
          __swift_destroy_boxed_opaque_existential_1Tm(v225);
          __swift_destroy_boxed_opaque_existential_1Tm(v216);
          v146 = *&v143[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard];
          *&v143[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard] = v205;

          v147 = v142;
        }

        else
        {

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v220);
          __swift_destroy_boxed_opaque_existential_1Tm(v221);
          __swift_destroy_boxed_opaque_existential_1Tm(v224);
          v147 = v139;
          v148 = v204[1];
          v149 = v212;
          v148(v203, v212);
          v141(v208, v132);
          __swift_destroy_boxed_opaque_existential_1Tm(v226);
          __swift_destroy_boxed_opaque_existential_1Tm(v227);
          __swift_destroy_boxed_opaque_existential_1Tm(v231);
          v148(v210, v149);
          v141(v209, v132);
          __swift_destroy_boxed_opaque_existential_1Tm(v225);
          __swift_destroy_boxed_opaque_existential_1Tm(v216);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v217);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        __swift_destroy_boxed_opaque_existential_1Tm(v229);
        v77 = &unk_28131D000;
        v150 = *(v2 + qword_28131DD00);
        *(v2 + qword_28131DD00) = v147;
LABEL_44:

LABEL_45:
        if (*(v2 + v77[416]))
        {
          [*(v2 + qword_28131D8B0) setLocalSpeechRecognizerClientDelegate_];
        }

        return;
      }
    }

    else
    {
      v207 = v34;
      v86 = v198;
      sub_223293AB8(v71, v198);
      if (v73(v71 + v72, 1, v61) != 1)
      {
        v92 = v86;
        v93 = v211;
        v94 = v199;
        v95 = v213;
        v211[4](v199, (v71 + v72), v213);
        sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58]);

        LODWORD(v200) = sub_2232AABE4();
        v96 = v93[1];
        v96(v94, v95);
        sub_223260EDC(v207, &unk_27D081810, &unk_2232ACC60);
        v96(v92, v95);
        sub_223260EDC(v71, &unk_27D081810, &unk_2232ACC60);
        v76 = v208;
        goto LABEL_36;
      }

      sub_223260EDC(v207, &unk_27D081810, &unk_2232ACC60);
      (v211[1])(v86, v213);
      v76 = v208;
    }

    sub_223260EDC(v71, &qword_27D081808, "H6");
    LODWORD(v200) = 0;
    goto LABEL_36;
  }

  if (v51 == *MEMORY[0x277D5CF28] || v51 == *MEMORY[0x277D5CF10] || v51 == *MEMORY[0x277D5CF08] || v51 == *MEMORY[0x277D5CF30])
  {
    goto LABEL_2;
  }

  if (v51 == *MEMORY[0x277D5CF20])
  {
    goto LABEL_8;
  }

  if (v51 == *MEMORY[0x277D5CF48] || v51 == *MEMORY[0x277D5CF38])
  {
LABEL_2:
    sub_223260EDC(v39, &unk_27D081810, &unk_2232ACC60);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v44 = sub_2232AAAD4();
    __swift_project_value_buffer(v44, qword_28131DB88);

    v45 = sub_2232AAAC4();
    v46 = sub_2232AAD84();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v231[0] = v210;
      *v47 = 136315138;
      v212 = v2;
      sub_223293AB8(v207 + v2, v29);
      v48 = v213;
      if (v43(v29, 1, v213))
      {
        v49 = 7104878;
        sub_223260EDC(v29, &unk_27D081810, &unk_2232ACC60);
        v50 = 0xE300000000000000;
      }

      else
      {
        v87 = v211;
        v88 = v199;
        v211[2](v199, v29, v48);
        sub_223260EDC(v29, &unk_27D081810, &unk_2232ACC60);
        v49 = sub_2232AA6A4();
        v50 = v89;
        (v87[1])(v88, v48);
      }

      v90 = sub_2232603D0(v49, v50, v231);

      *(v47 + 4) = v90;
      _os_log_impl(&dword_22325E000, v45, v46, "Not setting LocalSpeechRecognizerClientDelegate for requestType %s", v47, 0xCu);
      v91 = v210;
      __swift_destroy_boxed_opaque_existential_1Tm(v210);
      MEMORY[0x223DD8AC0](v91, -1, -1);
      MEMORY[0x223DD8AC0](v47, -1, -1);

      v77 = &unk_28131D000;
      v2 = v212;
    }

    else
    {

      v77 = &unk_28131D000;
    }

    goto LABEL_45;
  }

  if (v51 != *MEMORY[0x277D5CF50] && v51 != *MEMORY[0x277D5CF18])
  {
    v210 = v211[1];
    (v210)(v37, v213);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v78 = sub_2232AAAD4();
    __swift_project_value_buffer(v78, qword_28131DB88);

    v79 = sub_2232AAAC4();
    v80 = sub_2232AAD84();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = v43;
      v82 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v231[0] = v209;
      *v82 = 136315138;
      v212 = v2;
      sub_223293AB8(v207 + v2, v26);
      v83 = v213;
      if (v81(v26, 1, v213))
      {
        v84 = 7104878;
        sub_223260EDC(v26, &unk_27D081810, &unk_2232ACC60);
        v85 = 0xE300000000000000;
      }

      else
      {
        v176 = v199;
        v211[2](v199, v26, v83);
        sub_223260EDC(v26, &unk_27D081810, &unk_2232ACC60);
        v84 = sub_2232AA6A4();
        v85 = v177;
        (v210)(v176, v83);
      }

      v178 = sub_2232603D0(v84, v85, v231);

      *(v82 + 4) = v178;
      _os_log_impl(&dword_22325E000, v79, v80, "Not setting LocalSpeechRecognizerClientDelegate for requestType %s", v82, 0xCu);
      v179 = v209;
      __swift_destroy_boxed_opaque_existential_1Tm(v209);
      MEMORY[0x223DD8AC0](v179, -1, -1);
      MEMORY[0x223DD8AC0](v82, -1, -1);

      v77 = &unk_28131D000;
      v2 = v212;
    }

    else
    {

      v77 = &unk_28131D000;
    }

    sub_223260EDC(v39, &unk_27D081810, &unk_2232ACC60);
    goto LABEL_45;
  }

  sub_223260EDC(v39, &unk_27D081810, &unk_2232ACC60);
  if (v197)
  {
    v151 = v197;
    v152 = v202;
    sub_2232AA954();
    v153 = sub_2232AA904();
    v212 = v154;
    v213 = v153;
    v155 = sub_2232AA944();
    v210 = v156;
    v211 = v155;
    sub_223260E10(v2 + qword_28131D858, v231);
    v208 = sub_2232AA924();
    v157 = objc_allocWithZone(type metadata accessor for DictationSpeechRecognizerResponseHandler());
    *&v157[OBJC_IVAR____TtC9ASRBridge40DictationSpeechRecognizerResponseHandler_dictationOptions] = v151;
    v159 = v205;
    v158 = v206;
    v160 = v205[2];
    v161 = v196;
    v160(v196, v152, v206);
    sub_223260E10(v231, v229);
    v162 = qword_28131DA80;
    v209 = v151;
    if (v162 != -1)
    {
      swift_once();
    }

    v163 = qword_28131DD40;
    v160(&v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId], v161, v158);
    v164 = &v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId];
    v165 = v212;
    *v164 = v213;
    *(v164 + 1) = v165;
    v166 = &v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v167 = v210;
    *v166 = v211;
    *(v166 + 1) = v167;
    sub_223260E10(v229, &v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher]);
    *&v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper] = v208;
    *&v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil] = v163;
    v168 = type metadata accessor for SpeechRecognizerResponseHandler();
    v228.receiver = v157;
    v228.super_class = v168;

    v169 = objc_msgSendSuper2(&v228, sel_init);

    __swift_destroy_boxed_opaque_existential_1Tm(v229);
    v170 = v159[1];
    v170(v161, v158);
    __swift_destroy_boxed_opaque_existential_1Tm(v231);
    v170(v202, v158);
    v77 = &unk_28131D000;
    v150 = *(v2 + qword_28131DD00);
    *(v2 + qword_28131DD00) = v169;
    goto LABEL_44;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v171 = sub_2232AAAD4();
  __swift_project_value_buffer(v171, qword_28131DB88);
  v172 = sub_2232AAAC4();
  v173 = sub_2232AAD94();
  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v231[0] = v175;
    *v174 = 136315138;
    *(v174 + 4) = sub_2232603D0(0xD000000000000028, 0x80000002232AE0E0, v231);
    _os_log_impl(&dword_22325E000, v172, v173, "Unexpected nil dictationOptions when initializing %s", v174, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v175);
    MEMORY[0x223DD8AC0](v175, -1, -1);
    MEMORY[0x223DD8AC0](v174, -1, -1);
  }
}

void sub_22326A3C0(void *a1, uint64_t a2)
{
  v4 = sub_2232AA694();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2232632C4(&v59);
  v9 = *(a2 + qword_28131D8F0);
  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v40)
  {
    v51 = v8;
    if (!i)
    {
LABEL_15:
      LODWORD(v55) = sub_2232AA004();
      v53 = sub_2232AA5D4();
      v22 = v51;
      sub_2232AA014();
      sub_2232AA684();
      (*(v5 + 8))(v22, v4);
      if (sub_2232AA024())
      {
        v52 = sub_2232AA7A4();
      }

      else
      {
        v52 = 0;
      }

      v23 = *MEMORY[0x277D24258];
      v24 = sub_2232AA924();
      v25 = sub_2232AA944();
      v27 = sub_22326A9D4(v24, v25, v26);
      swift_unknownObjectRelease();

      v28 = v59;
      LODWORD(v54) = sub_22326B608(v59);
      aBlock = v61;
      v29 = sub_2232AABF4();

      v30 = sub_2232AABF4();

      v31 = sub_2232AACF4();
      sub_2232606A4(0, &qword_28131D1A0, 0x277CEF130);
      v32 = sub_2232AACF4();

      if (*(&aBlock + 1))
      {
        v33 = sub_2232AABF4();
      }

      else
      {
        v33 = 0;
      }

      v34 = (v27 != 2) ^ v27;
      if (v55)
      {
        v35 = 2;
      }

      else
      {
        v35 = 0;
      }

      v36 = v60;
      v37 = objc_allocWithZone(MEMORY[0x277D24248]);
      LOBYTE(v45) = 0;
      LOBYTE(v44) = 0;
      LOBYTE(v43) = 0;
      BYTE3(v42) = v36;
      BYTE2(v42) = 1;
      BYTE1(v42) = v54 & 1;
      LOBYTE(v42) = v34 & 1;
      LODWORD(v41) = 0;
      v38 = v52;
      [v37 initWithRequestId:v29 inputOrigin:v30 speechRecognitionTaskName:v28 speechRecognitionMode:v35 location:v52 jitGrammar:v31 overrideModelPath:v23 applicationName:0 detectUtterances:0 continuousListening:v41 shouldHandleCapitalization:0 secureOfflineOnly:v42 maximumRecognitionDuration:0 recognitionOverrides:v43 shouldStoreAudioOnDevice:0 deliverEagerPackage:v32 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v44 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:v45 powerContext:v33 shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];

      sub_223260EDC(&aBlock, &qword_27D081720, &qword_2232AC498);
      return;
    }

    v11 = v9;
    v58 = MEMORY[0x277D84F90];
    sub_2232AAFB4();
    if (i < 0)
    {
      break;
    }

    v47 = v5;
    v48 = v4;
    v49 = a1;
    v50 = a2;
    v12 = objc_opt_self();
    v5 = 0;
    v13 = v11;
    v54 = v12;
    v55 = v11 & 0xC000000000000001;
    v9 = v11 & 0xFFFFFFFFFFFFFF8;
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v57;
    v8 = v11;
    v14 = i;
    while (1)
    {
      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v55)
      {
        v16 = MEMORY[0x223DD8300](v5, v13);
      }

      else
      {
        if (v5 >= *(v52 + 16))
        {
          goto LABEL_27;
        }

        v16 = *&v13[8 * v5 + 32];
      }

      v17 = v16;
      a2 = swift_allocObject();
      *(a2 + 16) = v17;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_22328B1F4;
      *(v18 + 24) = a2;
      v57[2] = sub_22328B1FC;
      v57[3] = v18;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v57[0] = sub_223278834;
      v57[1] = &block_descriptor_5;
      a1 = _Block_copy(&aBlock);
      v19 = v17;

      v4 = [v54 newWithBuilder_];
      _Block_release(a1);
      if (!v4)
      {
        goto LABEL_30;
      }

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_26;
      }

      sub_2232AAF94();
      v21 = *(v58 + 16);
      sub_2232AAFC4();
      sub_2232AAFD4();
      sub_2232AAFA4();
      ++v5;
      v13 = v8;
      if (v15 == v14)
      {
        v4 = v48;
        v5 = v47;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v39 = v9;
    v40 = sub_2232AAFE4();
    v9 = v39;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_22326A984()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326A9D4(void *a1, uint64_t a2, unint64_t a3)
{
  v35 = a3;
  v5 = sub_2232AAAB4();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2232AAB64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 2;
  v17 = dispatch_semaphore_create(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;

  v19 = v17;
  sub_22326AE38(a1, a2, v35, sub_22328215C, v18);

  sub_2232AAB54();
  if (qword_28131D5C0 != -1)
  {
    swift_once();
  }

  v20 = sub_2232AAAF4();
  v21 = __swift_project_value_buffer(v20, qword_28131DC88);
  MEMORY[0x223DD7F00](v13, v21);
  v22 = *(v9 + 8);
  v22(v13, v8);
  sub_2232AAE54();
  v22(v15, v8);
  if (sub_2232AAB04())
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v23 = sub_2232AAAD4();
    __swift_project_value_buffer(v23, qword_28131DB88);
    v24 = sub_2232AAAC4();
    v25 = sub_2232AAD94();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22325E000, v24, v25, "Timed out fetching phoneCallState.", v26, 2u);
      MEMORY[0x223DD8AC0](v26, -1, -1);
    }

    sub_2232AAE44();
    if (qword_28131D968 != -1)
    {
      swift_once();
    }

    v27 = qword_28131DD38;
    v28 = v32;
    sub_2232AAAA4();
    v29 = 2;
    sub_2232AAA84();

    (*(v33 + 8))(v28, v34);
  }

  else
  {

    swift_beginAccess();
    v29 = *(v16 + 16);
  }

  return v29;
}

uint64_t sub_22326ADF8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326AE38(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v39 = a4;
  v40 = a2;
  v41 = sub_2232AAAB4();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v10 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v13 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v14 = qword_28131DD38;
  sub_2232AAA74();

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v15 = sub_2232AAAD4();
  __swift_project_value_buffer(v15, qword_28131DB88);

  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD84();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2232603D0(v40, a3, aBlock);
    _os_log_impl(&dword_22325E000, v16, v17, "Fetching isUserOnPhoneCall status for requestId: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x223DD8AC0](v19, -1, -1);
    MEMORY[0x223DD8AC0](v18, -1, -1);
  }

  if ([a1 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0810E8, &unk_2232AC930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2232AC370;
    v21 = *MEMORY[0x277CEEFD0];
    v22 = sub_2232AAC04();
    v37 = a1;
    *(inited + 32) = v22;
    *(inited + 40) = v23;
    sub_22326B3C0(inited);
    swift_setDeallocating();
    sub_22326B5B4(inited + 32);
    v24 = v41;
    (*(v7 + 16))(v10, v12, v41);
    v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    (*(v7 + 32))(v27 + v25, v10, v24);
    v28 = (v27 + v26);
    v29 = v39;
    *v28 = v40;
    v28[1] = a3;
    v30 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
    v31 = v38;
    *v30 = v29;
    v30[1] = v31;

    v32 = sub_2232AAD64();
    v33 = sub_2232AABF4();
    aBlock[4] = sub_223282210;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22328067C;
    aBlock[3] = &block_descriptor_1;
    v34 = _Block_copy(aBlock);

    [v37 fetchContextsForKeys:v32 forRequestID:v33 includesNearbyDevices:0 completion:v34];
    _Block_release(v34);
  }

  return (*(v7 + 8))(v12, v41);
}

uint64_t sub_22326B30C()
{
  v1 = sub_2232AAAB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_22326B3C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081418, &qword_2232AC940);
    v3 = sub_2232AAF44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2232AB0F4();

      sub_2232AAC44();
      result = sub_2232AB114();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2232AB094();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22326B528()
{
  v0 = sub_2232AA5D4();
  v2 = v1;
  if (v0 == sub_2232AA944() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2232AB094();
  }

  return v4 & 1;
}

uint64_t sub_22326B608(unint64_t a1)
{
  if (a1 > 0xA)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v7 = sub_2232AAAD4();
    __swift_project_value_buffer(v7, qword_28131DB88);
    v2 = sub_2232AAAC4();
    v3 = sub_2232AADA4();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected unknown taskName, setting deliverEager to true";
    goto LABEL_13;
  }

  if (((1 << a1) & 0x178) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x287) == 0)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v1 = sub_2232AAAD4();
    __swift_project_value_buffer(v1, qword_28131DB88);
    v2 = sub_2232AAAC4();
    v3 = sub_2232AADA4();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "unexpected spelling taskName, setting deliverEager to true";
LABEL_13:
    _os_log_impl(&dword_22325E000, v2, v3, v5, v4, 2u);
    MEMORY[0x223DD8AC0](v4, -1, -1);
LABEL_14:
  }

  return 1;
}

uint64_t sub_22326B7AC(uint64_t a1)
{
  v42 = sub_2232A95A4();
  v2 = *(v42 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2232A9664();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  if (!a1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v35 = sub_2232AAAD4();
    __swift_project_value_buffer(v35, qword_28131DB88);
    v36 = sub_2232AAAC4();
    v37 = sub_2232AAD84();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22325E000, v36, v37, "SDA not present - no payload target language exists returning nil", v38, 2u);
      MEMORY[0x223DD8AC0](v38, -1, -1);
    }

    return 0;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v41 = v9;
  v15 = *(v6 + 16);
  v14 = v6 + 16;
  v13 = v15;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v17 = (v2 + 8);
  v18 = (v14 - 8);
  v19 = *(v14 + 56);
  v15(v11, v16, v43);
  while (1)
  {
    if (sub_2232A9604())
    {
      sub_2232A9654();
      v21 = sub_2232A9594();
      (*v17)(v5, v42);
      if (v21)
      {
        break;
      }
    }

    v20 = v43;
    (*v18)(v11, v43);
    v16 += v19;
    if (!--v12)
    {
      return 0;
    }

    v13(v11, v16, v20);
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v22 = sub_2232AAAD4();
  __swift_project_value_buffer(v22, qword_28131DB88);
  v23 = v41;
  v24 = v43;
  v13(v41, v11, v43);
  v25 = sub_2232AAAC4();
  v26 = sub_2232AAD84();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v27 = 136315138;
    v28 = sub_2232A9644();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xD000000000000019;
    }

    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0x80000002232ADA30;
    }

    v32 = *v18;
    (*v18)(v23, v24);
    v33 = sub_2232603D0(v30, v31, &v44);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_22325E000, v25, v26, "SDA found - payload target language is: %s", v27, 0xCu);
    v34 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x223DD8AC0](v34, -1, -1);
    MEMORY[0x223DD8AC0](v27, -1, -1);
  }

  else
  {

    v32 = *v18;
    (*v18)(v23, v24);
  }

  v40 = sub_2232A9644();
  v32(v11, v24);
  return v40;
}

void sub_22326BC40(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v22 = [objc_allocWithZone(MEMORY[0x277D59590]) init];
  if (v22)
  {
    if (a1 > 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_2232AC554[a1];
    }

    [v22 setTaskType_];
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D59578]) init];
  [v21 setStartedOrChanged_];
  v9 = *(v2 + 24);
  v10 = sub_2232AA9B4();
  if (v10)
  {
    v11 = v10;
    [v10 setAsrBridgeContext_];
    [*(v2 + 16) emitMessage_];
    v12 = sub_2232AA994();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 captureSnapshot];

      if (v14)
      {
        v15 = [objc_opt_self() context];
        if (v15)
        {
          v16 = v15;
          sub_2232A94B4();
          v17 = sub_2232A9504();
          v18 = *(v17 - 8);
          v19 = 0;
          if ((*(v18 + 48))(v7, 1, v17) != 1)
          {
            v19 = sub_2232A94D4();
            (*(v18 + 8))(v7, v17);
          }

          [v14 logWithEventContext:v16 requestIdentifier:v19];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v20 = v22;
  }

  else
  {

    v20 = v21;
  }
}

unint64_t sub_22326BF10()
{
  result = qword_28131D938;
  if (!qword_28131D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D938);
  }

  return result;
}

uint64_t sub_22326BF64(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v24[0] = sub_2232A9504();
  v2 = *(v24[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24[0]);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = 4 * v7;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2232AC310;
  v11 = v10 + v8;
  v12 = (v11 + v6[14]);
  sub_2232AA7D4();
  *v12 = 0x6764697242525341;
  v12[1] = 0xE900000000000065;
  v13 = (v11 + v7 + v6[14]);
  sub_2232AA824();
  *v13 = 0xD00000000000001ALL;
  v13[1] = 0x80000002232AE170;
  v14 = (v11 + 2 * v7 + v6[14]);
  sub_2232AA7E4();
  *v14 = sub_2232AA904();
  v14[1] = v15;
  v16 = (v11 + 3 * v7 + v6[14]);
  sub_2232AA864();
  sub_2232AA954();
  sub_22326C240(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v17 = v24[0];
  v18 = sub_2232AB064();
  v20 = v19;
  (*(v2 + 8))(v5, v17);
  *v16 = v18;
  v16[1] = v20;
  v21 = (v11 + v9 + v6[14]);
  sub_2232AA854();
  *v21 = sub_2232AA5D4();
  v21[1] = v22;
  return v10;
}

unint64_t sub_22326C1EC()
{
  result = qword_28131D940;
  if (!qword_28131D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D940);
  }

  return result;
}

uint64_t sub_22326C240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22326C288()
{
  result = qword_28131D910;
  if (!qword_28131D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D910);
  }

  return result;
}

unint64_t sub_22326C2DC()
{
  result = qword_28131D908;
  if (!qword_28131D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D908);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22326C33C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = *MEMORY[0x277D5CDD8];
  v14 = sub_2232AA644();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_2232A9C34();
  v16 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v17 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9C24();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v8, a2 + v18, v19);
  (*(v20 + 56))(v8, 0, 1, v19);
  sub_2232A9C64();
  v21 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v23 = *(v21 + 8);

  sub_2232A9C54();
  v24 = [a3 lastTRPCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  return sub_2232A9C44();
}

uint64_t sub_22326C5C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = *MEMORY[0x277D5CDD8];
  v14 = sub_2232AA644();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_2232AA444();
  v16 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v17 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA434();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v8, a2 + v18, v19);
  (*(v20 + 56))(v8, 0, 1, v19);
  sub_2232AA474();
  v21 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v23 = *(v21 + 8);

  sub_2232AA464();
  v24 = [a3 lastTRPCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  return sub_2232AA454();
}

uint64_t sub_22326C848()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326C888()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326C8C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326C900()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22326C958()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22326C9A8()
{
  MEMORY[0x223DD8B00](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326C9E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326CA24()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22326CA64()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22326CAB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22326CAF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326CB3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326CB74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22326CC14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326CC50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326CC88()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22326CCD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22326CD28()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22326CD7C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326CDC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326CE10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326CE48()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22326CE98()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2232A9504();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22326CFB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2232A9504();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22326D06C()
{
  v1 = sub_2232A9504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_22326D140()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22326D180()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326D1B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326D1F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326D244(void *a1, uint64_t a2)
{
  v5 = sub_2232AAB14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2232AAB44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_requestQueue];
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_223278888;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_69;
  v17 = _Block_copy(aBlock);
  v18 = v2;
  v19 = a1;
  sub_2232AAB24();
  v21[1] = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v14, v9, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_22326D4F4(void *a1, void *a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_didStopASR;
  if (*(a1 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_didStopASR) == 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v5 = sub_2232AAAD4();
    __swift_project_value_buffer(v5, qword_28131DB88);
    v6 = a1;
    oslog = sub_2232AAAC4();
    v7 = sub_2232AADA4();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2232603D0(*&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v23);
      _os_log_impl(&dword_22325E000, oslog, v7, "ASR was already stopped for requestId = %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x223DD8AC0](v9, -1, -1);
      MEMORY[0x223DD8AC0](v8, -1, -1);
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v12 = sub_2232AAAD4();
    __swift_project_value_buffer(v12, qword_28131DB88);
    v13 = a1;
    v14 = sub_2232AAAC4();
    v15 = sub_2232AAD84();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2232603D0(*&v13[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v13[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v23);
      _os_log_impl(&dword_22325E000, v14, v15, "Going to stop ASR for requestId = %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x223DD8AC0](v17, -1, -1);
      MEMORY[0x223DD8AC0](v16, -1, -1);
    }

    *(a1 + v4) = 1;
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AA8A4();
    __swift_project_value_buffer(v18, qword_28131DBA0);
    *(swift_allocObject() + 16) = v13;
    v19 = v13;
    sub_2232AA874();

    v20 = *&v19[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v21 = *&v19[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
    oslog = sub_2232AABF4();
    [a2 stopSpeechRecognitionTaskAndInvalidateWithReason:a3 requestId:oslog completion:0];
  }
}

uint64_t sub_22326D854(uint64_t a1)
{
  v2 = sub_2232A9504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v24 = 4 * v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2232AC310;
  v11 = v10 + v9;
  v12 = (v11 + v7[14]);
  sub_2232AA7D4();
  *v12 = 0x6764697242525341;
  v12[1] = 0xE900000000000065;
  v13 = (v11 + v8 + v7[14]);
  sub_2232AA824();
  *v13 = 0xD00000000000001ALL;
  v13[1] = 0x80000002232AD200;
  v14 = (v11 + 2 * v8 + v7[14]);
  sub_2232AA7E4();
  v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v14 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + v7[14]);

  sub_2232AA864();
  (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v2);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v17 = sub_2232AB064();
  v19 = v18;
  (*(v3 + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + v24 + v7[14]);
  sub_2232AA854();
  v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v20[1] = v21;

  return v10;
}

void sub_22326DB24(id a1, unint64_t a2, char *a3, uint64_t a4, NSObject *a5, unint64_t a6)
{
  v81 = a4;
  v82 = a5;
  v79 = sub_2232A9504();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v79);
  v13 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28131D338 != -1)
  {
LABEL_42:
    swift_once();
  }

  v14 = sub_2232AAAD4();
  v80 = __swift_project_value_buffer(v14, qword_28131DB88);
  v15 = sub_2232AAAC4();
  v16 = sub_2232AAD84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22325E000, v15, v16, "Received partial result", v17, 2u);
    MEMORY[0x223DD8AC0](v17, -1, -1);
  }

  v19 = *&a3[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v20 = *&a3[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  v21 = v19 == a1 && v20 == a2;
  if (!v21)
  {
    v22 = *&a3[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v23 = *&a3[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
    v18 = sub_2232AB094();
    if ((v18 & 1) == 0)
    {

      v36 = a3;
      v82 = sub_2232AAAC4();
      v37 = sub_2232AAD94();

      if (os_log_type_enabled(v82, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock[0] = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_2232603D0(a1, a2, aBlock);
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_2232603D0(v19, v20, aBlock);
        _os_log_impl(&dword_22325E000, v82, v37, "Response requestId = %s does not match current requestId = %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v39, -1, -1);
        MEMORY[0x223DD8AC0](v38, -1, -1);
      }

      else
      {
        v58 = v82;
      }

      return;
    }
  }

  v24 = a3[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_havePostedSpeechPartialDeliveryStartedMessage];
  v78 = a3;
  if ((v24 & 1) == 0)
  {
    a3[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_havePostedSpeechPartialDeliveryStartedMessage] = 1;
    MEMORY[0x28223BE20](v18);
    *&v76[-16] = v25;
    v26 = objc_allocWithZone(sub_2232AA394());
    v27 = sub_2232A9D44();
    if (v27)
    {
      v28 = v27;
      v29 = sub_2232AAAC4();
      v30 = sub_2232AAD84();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22325E000, v29, v30, "Going to post speechPartialDeliveryStartedMessage", v31, 2u);
        MEMORY[0x223DD8AC0](v31, -1, -1);
      }

      v32 = *&v78[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 32];
      __swift_project_boxed_opaque_existential_1(&v78[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v78[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
      sub_2232AA624();
      v33 = sub_2232AAAC4();
      v34 = sub_2232AAD84();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22325E000, v33, v34, "Posted speechPartialDeliveryStartedMessage", v35, 2u);
        MEMORY[0x223DD8AC0](v35, -1, -1);
      }
    }

    else
    {

      v40 = sub_2232AAAC4();
      v41 = sub_2232AAD94();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v77 = v41;
        v43 = v42;
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_2232603D0(a1, a2, aBlock);
        _os_log_impl(&dword_22325E000, v40, v77, "Failed to create speechPartialDeliveryStartedMessage for request: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x223DD8AC0](v44, -1, -1);
        MEMORY[0x223DD8AC0](v43, -1, -1);
      }
    }
  }

  v45 = [objc_allocWithZone(MEMORY[0x277D47738]) init];
  sub_2232A94F4();
  sub_2232A94C4();
  v46 = *(v10 + 8);
  v10 += 8;
  v46(v13, v79);
  v47 = sub_2232AABF4();

  [v45 setAceId_];

  a1 = v45;
  v48 = sub_2232AABF4();
  [a1 setRefId_];

  v49 = sub_2232AABF4();
  [a1 setLanguage_];

  a2 = sub_2232606A4(0, &qword_28131D178, 0x277D477A0);
  v50 = sub_2232AACF4();
  [a1 setTokens_];

  if (!(a6 >> 62))
  {
    a3 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a3)
    {
      goto LABEL_23;
    }

LABEL_44:
    v59 = v78;
    if (v78[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isCandidateRequest])
    {

      v60 = v59;
      v61 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_speechPartialResultsCache;
      swift_beginAccess();
      v62 = a1;
      MEMORY[0x223DD8070]();
      if (*((*&v60[v61] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v60[v61] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v75 = *((*&v60[v61] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2232AAD24();
      }

      sub_2232AAD34();
      swift_endAccess();
    }

    else
    {
      v62 = a1;
      v63 = sub_2232AAAC4();
      v64 = sub_2232AAD84();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v65 = 136315138;
        v67 = [v62 tokens];
        if (v67)
        {
          v68 = v67;
          v69 = sub_2232AAD04();
        }

        else
        {
          v69 = 0;
        }

        v83 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812E0, &qword_2232AC4B0);
        v70 = sub_2232AAC14();
        v72 = sub_2232603D0(v70, v71, aBlock);

        *(v65 + 4) = v72;
        _os_log_impl(&dword_22325E000, v63, v64, "Submitting partial text: %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x223DD8AC0](v66, -1, -1);
        MEMORY[0x223DD8AC0](v65, -1, -1);
      }

      v73 = *&v59[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper];
      aBlock[4] = sub_22326E7D8;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22328BC90;
      aBlock[3] = &block_descriptor_225;
      v74 = _Block_copy(aBlock);
      [v73 handleCommand:v62 completion:v74];
      _Block_release(v74);
    }

    return;
  }

  a3 = sub_2232AAFE4();
  if (!a3)
  {
    goto LABEL_44;
  }

LABEL_23:
  v51 = 0;
  v81 = a6 & 0xFFFFFFFFFFFFFF8;
  v82 = (a6 & 0xC000000000000001);
  while (1)
  {
    if (v82)
    {
      v53 = a6;
      v54 = MEMORY[0x223DD8300](v51, a6);
    }

    else
    {
      if (v51 >= *(v81 + 16))
      {
        goto LABEL_41;
      }

      v53 = a6;
      v54 = *(a6 + 8 * v51 + 32);
    }

    v55 = v54;
    a6 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (![v54 aceToken])
    {
      break;
    }

    v56 = [a1 tokens];
    if (!v56)
    {
      goto LABEL_56;
    }

    v57 = v56;
    v13 = sub_2232AAD04();

    aBlock[0] = v13;
    MEMORY[0x223DD8070]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2232AAD24();
    }

    sub_2232AAD34();
    v10 = aBlock[0];
    if (aBlock[0])
    {
      v52 = sub_2232AACF4();
    }

    else
    {
      v52 = 0;
    }

    [a1 setTokens_];

    ++v51;
    v21 = a6 == a3;
    a6 = v53;
    if (v21)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_22326E5A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232AA5A4();
  v14 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v15 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA594();
  v16 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v17 = sub_2232A9504();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, a2 + v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_2232AA5C4();
  v19 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v20 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v21 = *(v19 + 8);

  return sub_2232AA5B4();
}

uint64_t sub_22326E8C8()
{
  v1 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_speechPartialResultsCache;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_2232AAFE4();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DD8300](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      aBlock[4] = sub_22326EA64;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22328BC90;
      aBlock[3] = &block_descriptor;
      v9 = _Block_copy(aBlock);
      v10 = v8;
      [v5 handleCommand:v10 completion:v9];
      _Block_release(v9);
    }

    while (v4 != v6);
  }

  return result;
}

void sub_22326EA70(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v5 = sub_2232AAD84();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22325E000, oslog, v5, a3, v6, 2u);
    MEMORY[0x223DD8AC0](v6, -1, -1);
  }
}

uint64_t sub_22326EBFC(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = sub_2232A9504();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2232AC320;
  v32 = v11;
  v12 = v11 + v10;
  v13 = (v12 + *(v8 + 48));
  sub_2232AA7D4();
  *v13 = 0x6764697242525341;
  v13[1] = 0xE900000000000065;
  v14 = (v12 + v9 + *(v8 + 48));
  sub_2232AA824();
  *v14 = 0xD00000000000001BLL;
  v14[1] = 0x80000002232AD220;
  v15 = (v12 + 2 * v9 + *(v8 + 48));
  sub_2232AA7E4();
  v16 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v15[1] = v16;
  v17 = (v12 + 3 * v9 + *(v8 + 48));

  sub_2232AA864();
  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v3);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v18 = sub_2232AB064();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  *v17 = v18;
  v17[1] = v20;
  v21 = (v12 + 4 * v9 + *(v8 + 48));
  sub_2232AA854();
  v22 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v21[1] = v22;
  v23 = v12 + 5 * v9;

  sub_2232AA834();
  v24 = 0xE000000000000000;
  v34 = 0;
  v35 = 0xE000000000000000;
  v25 = [v33 lastTRPCandidateId];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2232AAC04();
    v24 = v28;
  }

  else
  {
    v27 = 0;
  }

  v29 = (v23 + *(v8 + 48));
  MEMORY[0x223DD7FE0](v27, v24);

  v30 = v35;
  *v29 = v34;
  v29[1] = v30;
  return v32;
}

uint64_t sub_22326EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v34 = a4;
  v35 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v34 - v18;
  v20 = *MEMORY[0x277D5CDD8];
  v21 = sub_2232AA644();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  sub_2232A9E04();
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v24 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9DD4();
  v25 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v26 = sub_2232A9504();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v15, a2 + v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  sub_2232A9E34();
  v28 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v29 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);

  sub_2232A9E24();
  v30 = sub_2232AA794();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v11, a3, v30);
  (*(v31 + 56))(v11, 0, 1, v30);
  sub_2232A9E14();

  sub_2232A9DE4();
  v32 = *v35;

  return sub_2232A9DF4();
}

uint64_t sub_22326F2F8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = *MEMORY[0x277D5CDD8];
  v20 = sub_2232AA644();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_2232AA344();
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA324();
  v24 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v25 = sub_2232A9504();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v14, a2 + v24, v25);
  (*(v26 + 56))(v14, 0, 1, v25);
  sub_2232AA374();
  v27 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v28 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);

  sub_2232AA364();
  v29 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v30 = sub_2232AA794();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v10, a2 + v29, v30);
  (*(v31 + 56))(v10, 0, 1, v30);
  sub_2232AA354();
  v32 = [a3 multiUserTrpCandidateId];
  if (v32)
  {
    v33 = v32;
    sub_2232AAC04();
  }

  sub_2232AA334();
  v34 = *a4;

  return sub_2232AA314();
}

uint64_t sub_22326F664(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = *MEMORY[0x277D5CDD8];
  v20 = sub_2232AA644();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_2232AA2C4();
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA2A4();
  v24 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v25 = sub_2232A9504();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v14, a2 + v24, v25);
  (*(v26 + 56))(v14, 0, 1, v25);
  sub_2232AA2F4();
  v27 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v28 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);

  sub_2232AA2E4();
  v29 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v30 = sub_2232AA794();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v10, a2 + v29, v30);
  (*(v31 + 56))(v10, 0, 1, v30);
  sub_2232AA2D4();
  v32 = [a3 multiUserTrpCandidateId];
  if (v32)
  {
    v33 = v32;
    sub_2232AAC04();
  }

  sub_2232AA2B4();
  v34 = *a4;

  return sub_2232AA294();
}

uint64_t sub_22326FA48(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = *MEMORY[0x277D5CDD8];
  v20 = sub_2232AA644();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_2232AA0D4();
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA0A4();
  v24 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v25 = sub_2232A9504();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v14, a2 + v24, v25);
  (*(v26 + 56))(v14, 0, 1, v25);
  sub_2232AA104();
  v27 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v28 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);

  sub_2232AA0F4();
  v29 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v30 = sub_2232AA794();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v10, a2 + v29, v30);
  (*(v31 + 56))(v10, 0, 1, v30);
  sub_2232AA0E4();
  v32 = [a3 trpCandidateId];
  if (v32)
  {
    v33 = v32;
    sub_2232AAC04();
  }

  sub_2232AA0B4();
  v34 = *a4;

  return sub_2232AA0C4();
}

uint64_t sub_22326FDB4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = *MEMORY[0x277D5CDD8];
  v20 = sub_2232AA644();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_2232A98F4();
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A98C4();
  v24 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v25 = sub_2232A9504();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v14, a2 + v24, v25);
  (*(v26 + 56))(v14, 0, 1, v25);
  sub_2232A9924();
  v27 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v28 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);

  sub_2232A9914();
  v29 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v30 = sub_2232AA794();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v10, a2 + v29, v30);
  (*(v31 + 56))(v10, 0, 1, v30);
  sub_2232A9904();
  v32 = [a3 trpCandidateId];
  if (v32)
  {
    v33 = v32;
    sub_2232AAC04();
  }

  sub_2232A98D4();
  v34 = *a4;

  return sub_2232A98E4();
}

uint64_t sub_223270120(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = *MEMORY[0x277D5CDD8];
  v20 = sub_2232AA644();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_2232A9E04();
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9DD4();
  v24 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v25 = sub_2232A9504();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v14, a2 + v24, v25);
  (*(v26 + 56))(v14, 0, 1, v25);
  sub_2232A9E34();
  v27 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v28 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);

  sub_2232A9E24();
  v29 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v30 = sub_2232AA794();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v10, a2 + v29, v30);
  (*(v31 + 56))(v10, 0, 1, v30);
  sub_2232A9E14();
  v32 = [a3 trpCandidateId];
  if (v32)
  {
    v33 = v32;
    sub_2232AAC04();
  }

  sub_2232A9DE4();
  v34 = *a4;

  return sub_2232A9DF4();
}

uint64_t sub_22327048C(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = sub_2232A9504();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2232AC320;
  v32 = v11;
  v12 = v11 + v10;
  v13 = (v12 + *(v8 + 48));
  sub_2232AA7D4();
  *v13 = 0x6764697242525341;
  v13[1] = 0xE900000000000065;
  v14 = (v12 + v9 + *(v8 + 48));
  sub_2232AA824();
  *v14 = 0xD000000000000018;
  v14[1] = 0x80000002232AD270;
  v15 = (v12 + 2 * v9 + *(v8 + 48));
  sub_2232AA7E4();
  v16 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v15[1] = v16;
  v17 = (v12 + 3 * v9 + *(v8 + 48));

  sub_2232AA864();
  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v3);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v18 = sub_2232AB064();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  *v17 = v18;
  v17[1] = v20;
  v21 = (v12 + 4 * v9 + *(v8 + 48));
  sub_2232AA854();
  v22 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v21[1] = v22;
  v23 = v12 + 5 * v9;

  sub_2232AA834();
  v24 = 0xE000000000000000;
  v34 = 0;
  v35 = 0xE000000000000000;
  v25 = [v33 trpCandidateId];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2232AAC04();
    v24 = v28;
  }

  else
  {
    v27 = 0;
  }

  v29 = (v23 + *(v8 + 48));
  MEMORY[0x223DD7FE0](v27, v24);

  v30 = v35;
  *v29 = v34;
  v29[1] = v30;
  return v32;
}

void sub_22327084C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2232AAE24();
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v6 = qword_28131DD38;
  sub_2232AAA84();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v25 = sub_2232AAAD4();
    __swift_project_value_buffer(v25, qword_28131DB88);
    v26 = sub_2232AAAC4();
    v27 = sub_2232AADA4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22325E000, v26, v27, "Not posting StoppedListeningForSpeechContinuationMessage since self is already out of scope", v28, 2u);
      MEMORY[0x223DD8AC0](v28, -1, -1);
    }

    goto LABEL_60;
  }

  v8 = Strong;
  if ((a1 & 1) == 0)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v29 = sub_2232AAAD4();
    __swift_project_value_buffer(v29, qword_28131DB88);
    v30 = sub_2232AAAC4();
    v31 = sub_2232AADA4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22325E000, v30, v31, "Not posting StoppedListeningForSpeechContinuationMessage since myriad selection is lost", v32, 2u);
      MEMORY[0x223DD8AC0](v32, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v33 = sub_2232AA8A4();
    __swift_project_value_buffer(v33, qword_28131DBA0);
    v34 = swift_allocObject();
    *(v34 + 16) = v8;
    *(v34 + 24) = a4;
    v35 = v8;
    v36 = a4;
    goto LABEL_42;
  }

  if (*(Strong + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isSystemAssistantExperienceEnabled) != 1)
  {
    v37 = *(Strong + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled);
    MEMORY[0x28223BE20](Strong);
    if (v38 == 1)
    {
      v39 = objc_allocWithZone(sub_2232AA584());
      v40 = sub_2232AA424();
      if (!v40)
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v68 = sub_2232AAAD4();
        __swift_project_value_buffer(v68, qword_28131DB88);
        v54 = v8;
        v26 = sub_2232AAAC4();
        v55 = sub_2232AAD94();

        if (!os_log_type_enabled(v26, v55))
        {
          goto LABEL_59;
        }

        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v76[0] = v57;
        *v56 = 136315138;
        v69 = *&v54[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
        v70 = *&v54[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

        v71 = sub_2232603D0(v69, v70, v76);

        *(v56 + 4) = v71;
        v61 = "Failed to create MultiUserStoppedListeningForSpeechContinuationMessage for request: %s";
        goto LABEL_58;
      }

      v41 = v40;
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v42 = sub_2232AAAD4();
      __swift_project_value_buffer(v42, qword_28131DB88);
      v43 = sub_2232AAAC4();
      v44 = sub_2232AAD84();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Going to post MultiUserStoppedListeningForSpeechContinuationMessage";
LABEL_37:
        _os_log_impl(&dword_22325E000, v43, v44, v46, v45, 2u);
        MEMORY[0x223DD8AC0](v45, -1, -1);
      }
    }

    else
    {
      v47 = objc_allocWithZone(sub_2232AA484());
      v48 = sub_2232AA424();
      if (!v48)
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v72 = sub_2232AAAD4();
        __swift_project_value_buffer(v72, qword_28131DB88);
        v54 = v8;
        v26 = sub_2232AAAC4();
        v55 = sub_2232AAD94();

        if (!os_log_type_enabled(v26, v55))
        {
          goto LABEL_59;
        }

        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v76[0] = v57;
        *v56 = 136315138;
        v73 = *&v54[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
        v74 = *&v54[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

        v75 = sub_2232603D0(v73, v74, v76);

        *(v56 + 4) = v75;
        v61 = "Failed to create StoppedListeningForSpeechContinuationMessage for request: %s";
        goto LABEL_58;
      }

      v41 = v48;
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v49 = sub_2232AAAD4();
      __swift_project_value_buffer(v49, qword_28131DB88);
      v43 = sub_2232AAAC4();
      v44 = sub_2232AAD84();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Going to post StoppedListeningForSpeechContinuationMessage";
        goto LABEL_37;
      }
    }

    sub_223260E10(v8 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher, v76);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_2232AA624();

LABEL_39:
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v50 = sub_2232AA8A4();
    __swift_project_value_buffer(v50, qword_28131DBA0);
    v51 = swift_allocObject();
    *(v51 + 16) = v8;
    *(v51 + 24) = a4;
    v35 = v8;
    v52 = a4;
LABEL_42:
    sub_2232AA874();

    return;
  }

  MEMORY[0x28223BE20](Strong);
  v9 = objc_allocWithZone(sub_2232AA4F4());
  v10 = sub_2232AA494();
  if (!v10)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v53 = sub_2232AAAD4();
    __swift_project_value_buffer(v53, qword_28131DB88);
    v54 = v8;
    v26 = sub_2232AAAC4();
    v55 = sub_2232AAD94();

    if (!os_log_type_enabled(v26, v55))
    {
      goto LABEL_59;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v76[0] = v57;
    *v56 = 136315138;
    v58 = *&v54[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v59 = *&v54[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

    v60 = sub_2232603D0(v58, v59, v76);

    *(v56 + 4) = v60;
    v61 = "Failed to create StoppedListeningForSpeechContinuationForPlannerMessage for request: %s";
LABEL_58:
    _os_log_impl(&dword_22325E000, v26, v55, v61, v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x223DD8AC0](v57, -1, -1);
    MEMORY[0x223DD8AC0](v56, -1, -1);
LABEL_59:

    goto LABEL_60;
  }

  v11 = v10;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v12 = sub_2232AAAD4();
  __swift_project_value_buffer(v12, qword_28131DB88);
  v13 = sub_2232AAAC4();
  v14 = sub_2232AAD84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22325E000, v13, v14, "Going to post StoppedListeningForSpeechContinuationForPlannerMessage", v15, 2u);
    MEMORY[0x223DD8AC0](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher;
  sub_223260E10(v8 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher, v76);
  __swift_project_boxed_opaque_existential_1(v76, v77);
  v17 = v8;
  sub_2232AA624();
  v18 = __swift_destroy_boxed_opaque_existential_1Tm(v76);
  MEMORY[0x28223BE20](v18);
  v19 = objc_allocWithZone(sub_2232AA564());
  v20 = sub_2232AA504();
  if (v20)
  {
    v21 = v20;
    v22 = sub_2232AAAC4();
    v23 = sub_2232AAD84();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22325E000, v22, v23, "Going to post RootStoppedListeningForSpeechContinuationMessage", v24, 2u);
      MEMORY[0x223DD8AC0](v24, -1, -1);
    }

    sub_223260E10(v8 + v16, v76);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_2232AA624();

    goto LABEL_39;
  }

  v26 = sub_2232AAAC4();
  v62 = sub_2232AAD94();

  if (os_log_type_enabled(v26, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v76[0] = v64;
    *v63 = 136315138;
    v65 = *&v17[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v66 = *&v17[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

    v67 = sub_2232603D0(v65, v66, v76);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_22325E000, v26, v62, "Failed to create RootStoppedListeningForSpeechContinuationMessage for request: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x223DD8AC0](v64, -1, -1);
    MEMORY[0x223DD8AC0](v63, -1, -1);
  }

LABEL_60:
}

uint64_t sub_223271498(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = sub_2232A9504();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2232AC320;
  v32 = v11;
  v12 = v11 + v10;
  v13 = (v12 + *(v8 + 48));
  sub_2232AA7D4();
  *v13 = 0x6764697242525341;
  v13[1] = 0xE900000000000065;
  v14 = v12 + v9 + *(v8 + 48);
  sub_2232AA824();
  strcpy(v14, "asrMyriadLoss");
  *(v14 + 14) = -4864;
  v15 = (v12 + 2 * v9 + *(v8 + 48));
  sub_2232AA7E4();
  v16 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v15[1] = v16;
  v17 = (v12 + 3 * v9 + *(v8 + 48));

  sub_2232AA864();
  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v3);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v18 = sub_2232AB064();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  *v17 = v18;
  v17[1] = v20;
  v21 = (v12 + 4 * v9 + *(v8 + 48));
  sub_2232AA854();
  v22 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v21[1] = v22;
  v23 = v12 + 5 * v9;

  sub_2232AA834();
  v24 = 0xE000000000000000;
  v34 = 0;
  v35 = 0xE000000000000000;
  v25 = [v33 lastTRPCandidateId];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2232AAC04();
    v24 = v28;
  }

  else
  {
    v27 = 0;
  }

  v29 = (v23 + *(v8 + 48));
  MEMORY[0x223DD7FE0](v27, v24);

  v30 = v35;
  *v29 = v34;
  v29[1] = v30;
  return v32;
}

uint64_t sub_2232717E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = *MEMORY[0x277D5CDD8];
  v14 = sub_2232AA644();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_2232AA4B4();
  v16 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v17 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA4A4();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v8, a2 + v18, v19);
  (*(v20 + 56))(v8, 0, 1, v19);
  sub_2232AA4E4();
  v21 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v23 = *(v21 + 8);

  sub_2232AA4D4();
  v24 = [a3 lastTRPCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  return sub_2232AA4C4();
}

uint64_t sub_223271A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = *MEMORY[0x277D5CDD8];
  v14 = sub_2232AA644();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_2232AA524();
  v16 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v17 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA514();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v8, a2 + v18, v19);
  (*(v20 + 56))(v8, 0, 1, v19);
  sub_2232AA554();
  v21 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v23 = *(v21 + 8);

  sub_2232AA544();
  v24 = [a3 lastTRPCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  return sub_2232AA534();
}

uint64_t sub_223271CF0(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = sub_2232A9504();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2232AC320;
  v32 = v11;
  v12 = v11 + v10;
  v13 = (v12 + *(v8 + 48));
  sub_2232AA7D4();
  *v13 = 0x6764697242525341;
  v13[1] = 0xE900000000000065;
  v14 = (v12 + v9 + *(v8 + 48));
  sub_2232AA824();
  *v14 = 0xD00000000000002ELL;
  v14[1] = 0x80000002232AD240;
  v15 = (v12 + 2 * v9 + *(v8 + 48));
  sub_2232AA7E4();
  v16 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v15[1] = v16;
  v17 = (v12 + 3 * v9 + *(v8 + 48));

  sub_2232AA864();
  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v3);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v18 = sub_2232AB064();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  *v17 = v18;
  v17[1] = v20;
  v21 = (v12 + 4 * v9 + *(v8 + 48));
  sub_2232AA854();
  v22 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v21[1] = v22;
  v23 = v12 + 5 * v9;

  sub_2232AA834();
  v24 = 0xE000000000000000;
  v34 = 0;
  v35 = 0xE000000000000000;
  v25 = [v33 lastTRPCandidateId];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2232AAC04();
    v24 = v28;
  }

  else
  {
    v27 = 0;
  }

  v29 = (v23 + *(v8 + 48));
  MEMORY[0x223DD7FE0](v27, v24);

  v30 = v35;
  *v29 = v34;
  v29[1] = v30;
  return v32;
}

uint64_t sub_2232720B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232AA5F4();
  v14 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v15 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA5E4();
  v16 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v17 = sub_2232A9504();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, a2 + v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  return sub_2232AA604();
}

uint64_t sub_22327232C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2232AC310;
  v8 = v7 + v6;
  v9 = (v8 + v4[14]);
  sub_2232AA7D4();
  *v9 = 0x6764697242525341;
  v9[1] = 0xE900000000000065;
  v10 = (v8 + v5 + v4[14]);
  sub_2232AA804();
  *v10 = 0xD000000000000033;
  v10[1] = 0x80000002232AD820;
  v11 = (v8 + 2 * v5 + v4[14]);
  sub_2232AA824();
  *v11 = 0xD000000000000021;
  v11[1] = 0x80000002232AD100;
  v12 = (v8 + 3 * v5 + v4[14]);
  sub_2232AA854();
  *v12 = a1;
  v12[1] = a2;
  v13 = (v8 + 4 * v5 + v4[14]);

  sub_2232AA814();
  *v13 = sub_2232AB064();
  v13[1] = v14;
  return v7;
}

uint64_t sub_223272508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v34 - v17;
  v19 = *MEMORY[0x277D5CDD8];
  v20 = sub_2232AA644();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_2232A9B04();
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9AE4();
  v24 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v25 = sub_2232A9504();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v14, a2 + v24, v25);
  (*(v26 + 56))(v14, 0, 1, v25);
  sub_2232A9B34();
  v27 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v28 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);

  sub_2232A9B24();

  sub_2232A9AD4();
  v29 = a5;
  sub_2232A9AF4();
  v30 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v31 = sub_2232AA794();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v10, a2 + v30, v31);
  (*(v32 + 56))(v10, 0, 1, v31);
  return sub_2232A9B14();
}

uint64_t sub_223272848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v5 = sub_2232A9504();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2232AC320;
  v14 = v13 + v12;
  v15 = (v14 + v10[14]);
  sub_2232AA7D4();
  *v15 = 0x6764697242525341;
  v15[1] = 0xE900000000000065;
  v16 = (v14 + v11 + v10[14]);
  sub_2232AA824();
  *v16 = 0xD00000000000001ALL;
  v16[1] = 0x80000002232AD0E0;
  v17 = (v14 + 2 * v11 + v10[14]);
  sub_2232AA7E4();
  v18 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v17 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v17[1] = v18;
  v19 = (v14 + 3 * v11 + v10[14]);

  sub_2232AA864();
  (*(v6 + 16))(v9, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v5);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v20 = sub_2232AB064();
  v22 = v21;
  (*(v6 + 8))(v9, v5);
  *v19 = v20;
  v19[1] = v22;
  v23 = (v14 + 4 * v11 + v10[14]);
  sub_2232AA854();
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  v25 = (v14 + 5 * v11 + v10[14]);

  sub_2232AA814();
  v31 = v30;
  *v25 = sub_2232AB064();
  v25[1] = v26;
  return v13;
}

uint64_t sub_223272BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v5 = sub_2232A9504();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2232AC320;
  v14 = v13 + v12;
  v15 = (v14 + v10[14]);
  sub_2232AA7D4();
  *v15 = 0x6764697242525341;
  v15[1] = 0xE900000000000065;
  v16 = (v14 + v11 + v10[14]);
  sub_2232AA824();
  *v16 = 0xD00000000000001ALL;
  v16[1] = 0x80000002232AD130;
  v17 = (v14 + 2 * v11 + v10[14]);
  sub_2232AA7E4();
  v18 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v17 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v17[1] = v18;
  v19 = (v14 + 3 * v11 + v10[14]);

  sub_2232AA864();
  (*(v6 + 16))(v9, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v5);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v20 = sub_2232AB064();
  v22 = v21;
  (*(v6 + 8))(v9, v5);
  *v19 = v20;
  v19[1] = v22;
  v23 = (v14 + 4 * v11 + v10[14]);
  sub_2232AA854();
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  v25 = (v14 + 5 * v11 + v10[14]);

  sub_2232AA814();
  v31 = v30;
  *v25 = sub_2232AB064();
  v25[1] = v26;
  return v13;
}

uint64_t sub_223272EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v35 = a1;
  v36 = a3;
  v34 = a2;
  v6 = sub_2232A9504();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  v37 = v14;
  *(v14 + 16) = xmmword_2232AC330;
  v15 = v14 + v13;
  v16 = (v14 + v13 + v11[14]);
  sub_2232AA7D4();
  *v16 = 0x6764697242525341;
  v16[1] = 0xE900000000000065;
  v17 = (v15 + v12 + v11[14]);
  sub_2232AA804();
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_2232AAF64();
  MEMORY[0x223DD7FE0](0xD000000000000048, 0x80000002232AD7B0);
  MEMORY[0x223DD7FE0](a1, a2);
  MEMORY[0x223DD7FE0](0xD000000000000016, 0x80000002232AD800);
  v18 = v36;
  MEMORY[0x223DD7FE0](*(v36 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId), *(v36 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8));
  v19 = v40;
  *v17 = v39;
  v17[1] = v19;
  v20 = (v15 + 2 * v12 + v11[14]);
  sub_2232AA824();
  *v20 = 0xD000000000000021;
  v20[1] = 0x80000002232AD150;
  v21 = (v15 + 3 * v12 + v11[14]);
  sub_2232AA7E4();
  v22 = v18;
  v23 = *(v18 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v21 = *(v18 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v21[1] = v23;
  v24 = (v15 + 4 * v12 + v11[14]);

  sub_2232AA864();
  (*(v7 + 16))(v10, v22 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v6);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v25 = sub_2232AB064();
  v27 = v26;
  (*(v7 + 8))(v10, v6);
  *v24 = v25;
  v24[1] = v27;
  v28 = (v15 + 5 * v12 + v11[14]);
  sub_2232AA854();
  v29 = v34;
  *v28 = v35;
  v28[1] = v29;
  v30 = (v15 + 6 * v12 + v11[14]);

  sub_2232AA814();
  v39 = v38;
  *v30 = sub_2232AB064();
  v30[1] = v31;
  return v37;
}

uint64_t sub_223273298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v29 = a1;
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  v30 = v12;
  *(v12 + 16) = xmmword_2232AC330;
  v13 = v12 + v11;
  v14 = (v13 + v9[14]);
  sub_2232AA7D4();
  *v14 = 0x6764697242525341;
  v14[1] = 0xE900000000000065;
  v15 = (v13 + v10 + v9[14]);
  sub_2232AA804();
  *v15 = 0xD00000000000003FLL;
  v15[1] = 0x80000002232AD770;
  v16 = (v13 + 2 * v10 + v9[14]);
  sub_2232AA824();
  *v16 = 0xD000000000000021;
  v16[1] = 0x80000002232AD150;
  v17 = (v13 + 3 * v10 + v9[14]);
  sub_2232AA7E4();
  v18 = v29;
  v19 = *(v29 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v17 = *(v29 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v17[1] = v19;
  v20 = (v13 + 4 * v10 + v9[14]);

  sub_2232AA864();
  (*(v5 + 16))(v8, v18 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v4);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v21 = sub_2232AB064();
  v23 = v22;
  (*(v5 + 8))(v8, v4);
  *v20 = v21;
  v20[1] = v23;
  v24 = (v13 + 5 * v10 + v9[14]);
  sub_2232AA854();
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  v26 = (v13 + 6 * v10 + v9[14]);

  sub_2232AA814();
  v34 = v33;
  *v26 = sub_2232AB064();
  v26[1] = v27;
  return v30;
}

uint64_t sub_2232735C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v29[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v29 - v14;
  v16 = *MEMORY[0x277D5CDD8];
  v17 = sub_2232AA644();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_2232A9A04();
  v19 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v20 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A99C4();
  v21 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v22 = sub_2232A9504();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v11, a2 + v21, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  sub_2232A9A24();
  v24 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v25 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v26 = *(v24 + 8);

  sub_2232A9A14();

  sub_2232A99F4();
  sub_2232A99D4();
  v27 = a6;
  return sub_2232A99E4();
}

uint64_t sub_223273844(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232A97A4();
  v14 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v15 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9774();
  v16 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v17 = sub_2232A9504();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, a2 + v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_2232A97C4();
  v19 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v20 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v21 = *(v19 + 8);

  sub_2232A97B4();

  sub_2232A9794();
  return sub_2232A9784();
}

void sub_223273B3C()
{
  v1 = v0;
  v2 = sub_2232AAAB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = *&v0[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg];
  if (!v9)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v19 = sub_2232AAAD4();
    __swift_project_value_buffer(v19, qword_28131DB88);
    v20 = v0;
    v37 = sub_2232AAAC4();
    v21 = sub_2232AAD84();

    if (os_log_type_enabled(v37, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2232603D0(*&v20[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v20[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v38);
      _os_log_impl(&dword_22325E000, v37, v21, "No recognition candidate accepted yet for requestId: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x223DD8AC0](v23, -1, -1);
      MEMORY[0x223DD8AC0](v22, -1, -1);

      return;
    }

    goto LABEL_16;
  }

  v37 = v9;
  v10 = sub_2232AA5D4();
  v12 = v11;

  if (v10 == *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId] && v12 == *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8])
  {
  }

  else
  {
    v14 = sub_2232AB094();

    if ((v14 & 1) == 0)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v15 = sub_2232AAAD4();
      __swift_project_value_buffer(v15, qword_28131DB88);
      v16 = sub_2232AAAC4();
      v17 = sub_2232AAD94();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22325E000, v16, v17, "ResultSelectedMessage requestId does not match current requestId", v18, 2u);
        MEMORY[0x223DD8AC0](v18, -1, -1);
      }

LABEL_16:
      v24 = v37;

      return;
    }
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v25 = sub_2232AAAD4();
  __swift_project_value_buffer(v25, qword_28131DB88);
  v26 = sub_2232AAAC4();
  v27 = sub_2232AAD84();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22325E000, v26, v27, "Will wait on Myriad selection..", v28, 2u);
    MEMORY[0x223DD8AC0](v28, -1, -1);
  }

  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v29 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v30 = qword_28131DD38;
  sub_2232AAA74();

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v6, v8, v2);
  v32 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v33 = (v4 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v3 + 32))(v34 + v32, v6, v2);
  *(v34 + v33) = v31;
  v35 = v37;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v36 = v35;

  sub_22328019C(0x7065636341204352, 0xED000065636E6174, sub_22327A9C0, v34);

  (*(v3 + 8))(v8, v2);
}

void sub_223274124(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2232AAE24();
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v6 = qword_28131DD38;
  sub_2232AAA84();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = *(Strong + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_bufferedResultCandidateHandler);

      sub_223282C18(a4);

      sub_2232A9A34();
      v10 = swift_dynamicCastClass();
      v11 = *&v8[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil];
      v13 = *&v8[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
      v12 = *&v8[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

      v15 = sub_2232A9FB4();
      if (v10)
      {
        sub_22327FE1C(v13, v12, v15, v14);
      }

      else
      {
        sub_22327FDEC(v13, v12, v15, v14);
      }

      if (qword_28131D340 != -1)
      {
        swift_once();
      }

      v26 = sub_2232AA8A4();
      __swift_project_value_buffer(v26, qword_28131DBA0);
      *(swift_allocObject() + 16) = v8;
      v27 = v8;
      sub_2232AA874();

      v28 = *&v27[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg];
      *&v27[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg] = 0;
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v20 = sub_2232AAAD4();
      __swift_project_value_buffer(v20, qword_28131DB88);
      v21 = sub_2232AAAC4();
      v22 = sub_2232AADA4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_22325E000, v21, v22, "Not posting ResultSelected since myriad selection is lost", v23, 2u);
        MEMORY[0x223DD8AC0](v23, -1, -1);
      }

      if (qword_28131D340 != -1)
      {
        swift_once();
      }

      v24 = sub_2232AA8A4();
      __swift_project_value_buffer(v24, qword_28131DBA0);
      *(swift_allocObject() + 16) = v8;
      v25 = v8;
      sub_2232AA884();
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v16 = sub_2232AAAD4();
    __swift_project_value_buffer(v16, qword_28131DB88);
    v17 = sub_2232AAAC4();
    v18 = sub_2232AADA4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22325E000, v17, v18, "Not posting ResultSelected since self is already out-of-scope", v19, 2u);
      MEMORY[0x223DD8AC0](v19, -1, -1);
    }
  }
}

uint64_t sub_223274570(uint64_t a1)
{
  v2 = sub_2232A9504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v24 = 4 * v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2232AC310;
  v11 = v10 + v9;
  v12 = (v11 + v7[14]);
  sub_2232AA7D4();
  *v12 = 0x6764697242525341;
  v12[1] = 0xE900000000000065;
  v13 = v11 + v8 + v7[14];
  sub_2232AA824();
  strcpy(v13, "asrMyriadLoss");
  *(v13 + 14) = -4864;
  v14 = (v11 + 2 * v8 + v7[14]);
  sub_2232AA7E4();
  v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v14 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + v7[14]);

  sub_2232AA864();
  (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v2);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v17 = sub_2232AB064();
  v19 = v18;
  (*(v3 + 8))(v6, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + v24 + v7[14]);
  sub_2232AA854();
  v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v20[1] = v21;

  return v10;
}

uint64_t sub_223274848(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = 2 * v3;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2232AC340;
  v7 = v6 + v4;
  v8 = (v7 + v2[14]);
  sub_2232AA7D4();
  *v8 = 0x6764697242525341;
  v8[1] = 0xE900000000000065;
  v9 = (v7 + v3 + v2[14]);
  sub_2232AA824();
  *v9 = 0xD000000000000027;
  v9[1] = 0x80000002232AD180;
  v10 = (v7 + v5 + v2[14]);
  sub_2232AA854();
  v11 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v10[1] = v11;

  return v6;
}

void sub_2232749B0(uint64_t a1, void *a2, void *a3)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v5 = sub_2232AAAD4();
  __swift_project_value_buffer(v5, qword_28131DB88);
  v6 = a3;
  v7 = a2;
  v8 = sub_2232AAAC4();
  v9 = sub_2232AAD84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315650;
    v12 = [v6 aceId];
    if (v12)
    {
      v13 = v12;

      v14 = sub_2232AAC04();
      v16 = v15;

      v17 = sub_2232603D0(v14, v16, &v27);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2080;
      v18 = [v6 refId];
      if (v18)
      {
        v19 = v18;

        v20 = sub_2232AAC04();
        v22 = v21;

        v23 = sub_2232603D0(v20, v22, &v27);

        *(v10 + 14) = v23;
        *(v10 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081100, qword_2232AC440);
        v24 = sub_2232AAEA4();
        v26 = sub_2232603D0(v24, v25, &v27);

        *(v10 + 24) = v26;
        _os_log_impl(&dword_22325E000, v8, v9, "Sent voiceIdScoreCard to server with aceId: %s and refId:%s, error: %s", v10, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v11, -1, -1);
        MEMORY[0x223DD8AC0](v10, -1, -1);

        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_223274C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = *MEMORY[0x277D5CDD8];
  v14 = sub_2232AA644();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_2232A9994();
  v16 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v17 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9984();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v8, a2 + v18, v19);
  (*(v20 + 56))(v8, 0, 1, v19);
  sub_2232A9974();
  v21 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v23 = *(v21 + 8);

  sub_2232A9964();
  v24 = a3;
  return sub_2232A9954();
}

char *sub_223274EB4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v48 - v12;
  v14 = *MEMORY[0x277D5CDD8];
  v15 = sub_2232AA644();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_2232A9D04();
  v17 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v18 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9CC4();
  v19 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v20 = sub_2232A9504();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v9, a2 + v19, v20);
  (*(v21 + 56))(v9, 0, 1, v20);
  sub_2232A9D24();
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);

  sub_2232A9D14();
  v24 = a3;
  sub_2232A9CE4();
  [v24 userIdentityClassification];
  v48[1] = a1;
  sub_2232A9CF4();
  result = [v24 spIdKnownUserScores];
  if (result)
  {
    v26 = result;
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    v27 = sub_2232AAB94();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0812D8, &qword_2232AC4A8);
    result = sub_2232AAFF4();
    v28 = result;
    v29 = 0;
    v31 = v27 + 64;
    v30 = *(v27 + 64);
    v50 = v27;
    v32 = 1 << *(v27 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v30;
    v35 = (v32 + 63) >> 6;
    v49 = result + 64;
    if ((v33 & v30) != 0)
    {
      while (1)
      {
        v36 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
LABEL_11:
        v39 = v36 | (v29 << 6);
        v40 = (*(v50 + 48) + 16 * v39);
        v41 = *v40;
        v42 = v40[1];
        v43 = *(*(v50 + 56) + 8 * v39);

        result = [v43 integerValue];
        *&v49[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        v44 = (*(v28 + 6) + 16 * v39);
        *v44 = v41;
        v44[1] = v42;
        *(*(v28 + 7) + 8 * v39) = result;
        v45 = *(v28 + 2);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          break;
        }

        *(v28 + 2) = v47;
        if (!v34)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v37 = v29;
      while (1)
      {
        v29 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v29 >= v35)
        {

          return sub_2232A9CD4();
        }

        v38 = *(v31 + 8 * v29);
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v34 = (v38 - 1) & v38;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_223275538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2232A9504();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = *(*v10 + 72);
  v13 = swift_allocObject();
  v39 = v13;
  *(v13 + 16) = xmmword_2232AC320;
  v14 = v13 + v11;
  v15 = (v13 + v11 + v10[14]);
  sub_2232AA7D4();
  *v15 = 0x6764697242525341;
  v15[1] = 0xE900000000000065;
  v16 = (v14 + v12 + v10[14]);
  sub_2232AA804();
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_2232AAF64();
  MEMORY[0x223DD7FE0](0xD000000000000048, 0x80000002232AD7B0);
  v42 = a1;
  v43 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081720, &qword_2232AC498);
  v17 = sub_2232AAC14();
  MEMORY[0x223DD7FE0](v17);

  MEMORY[0x223DD7FE0](0xD000000000000016, 0x80000002232AD800);
  v18 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v37 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  v38 = v18;
  MEMORY[0x223DD7FE0]();
  v19 = v45;
  *v16 = v44;
  v16[1] = v19;
  v20 = v12;
  v21 = (v14 + 2 * v12 + v10[14]);
  sub_2232AA824();
  *v21 = 0xD00000000000001ELL;
  v21[1] = 0x80000002232AD1B0;
  v22 = (v14 + 3 * v12 + v10[14]);
  sub_2232AA7E4();
  v23 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v22 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v22[1] = v23;
  v12 *= 4;
  v24 = (v14 + v12 + v10[14]);

  sub_2232AA864();
  v25 = v40;
  v26 = a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v27 = v9;
  v28 = v9;
  v29 = v41;
  (*(v40 + 16))(v28, v26, v41);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v30 = sub_2232AB064();
  v32 = v31;
  (*(v25 + 8))(v27, v29);
  *v24 = v30;
  v24[1] = v32;
  v33 = (v14 + v12 + v20 + v10[14]);
  sub_2232AA854();
  v34 = v37;
  *v33 = v38;
  v33[1] = v34;

  return v39;
}

uint64_t sub_2232758D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v37 = a1;
  v7 = sub_2232A9504();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2232AC320;
  v38 = v15;
  v16 = v15 + v14;
  v17 = (v16 + *(v12 + 48));
  sub_2232AA7D4();
  *v17 = 0x6764697242525341;
  v17[1] = 0xE900000000000065;
  sub_2232AA804();
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_2232AAF64();
  MEMORY[0x223DD7FE0](0xD000000000000034, 0x80000002232AD910);
  if (a2)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    v41 = v37;
    sub_22327F678();
    v18 = sub_2232AAED4();
    v19 = v20;
  }

  v21 = (v16 + v13 + *(v12 + 48));
  MEMORY[0x223DD7FE0](v18, v19);

  v22 = v43;
  *v21 = v42;
  v21[1] = v22;
  v23 = (v16 + 2 * v13 + *(v12 + 48));
  sub_2232AA824();
  *v23 = 0xD00000000000001ELL;
  v23[1] = 0x80000002232AD1B0;
  v24 = (v16 + 3 * v13 + *(v12 + 48));
  sub_2232AA7E4();
  v25 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v24 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v24[1] = v25;
  v26 = a3;
  v27 = (v16 + 4 * v13 + *(v12 + 48));

  sub_2232AA864();
  (*(v8 + 16))(v11, v26 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v7);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v28 = sub_2232AB064();
  v30 = v29;
  (*(v8 + 8))(v11, v7);
  *v27 = v28;
  v27[1] = v30;
  sub_2232AA854();
  v42 = 0;
  v43 = 0xE000000000000000;
  if (v40)
  {
    v31 = v39;
  }

  else
  {
    v31 = 0;
  }

  if (v40)
  {
    v32 = v40;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = (v16 + 5 * v13 + *(v12 + 48));

  MEMORY[0x223DD7FE0](v31, v32);

  v34 = v43;
  *v33 = v42;
  v33[1] = v34;
  return v38;
}

uint64_t sub_223275C7C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6)
{
  v48 = a6;
  v41 = a5;
  v45 = a2;
  v46 = a4;
  v44 = a3;
  v42 = sub_2232A9504();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v43 = 8 * v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2232AC350;
  v47 = v14;
  v15 = v14 + v13;
  v16 = (v14 + v13 + *(v11 + 48));
  sub_2232AA7D4();
  *v16 = 0x6764697242525341;
  v16[1] = 0xE900000000000065;
  v17 = (v15 + v12 + *(v11 + 48));
  sub_2232AA804();
  *v17 = 0xD000000000000029;
  v17[1] = 0x80000002232AD860;
  v18 = (v15 + 2 * v12 + *(v11 + 48));
  sub_2232AA824();
  *v18 = 0xD000000000000025;
  v18[1] = 0x80000002232AD1D0;
  v19 = (v15 + 3 * v12 + *(v11 + 48));
  sub_2232AA7E4();
  v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v19 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v19[1] = v20;
  v21 = (v15 + 4 * v12 + *(v11 + 48));

  sub_2232AA864();
  v22 = a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v23 = v42;
  (*(v7 + 16))(v10, v22, v42);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v24 = sub_2232AB064();
  v26 = v25;
  (*(v7 + 8))(v10, v23);
  *v21 = v24;
  v21[1] = v26;
  sub_2232AA854();
  v27 = 0xE000000000000000;
  v50 = 0;
  v51 = 0xE000000000000000;
  if (v44)
  {
    v28 = v45;
  }

  else
  {
    v28 = 0;
  }

  if (v44)
  {
    v29 = v44;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  v30 = (v15 + 5 * v12 + *(v11 + 48));

  MEMORY[0x223DD7FE0](v28, v29);

  v31 = v51;
  *v30 = v50;
  v30[1] = v31;
  v32 = (v15 + 6 * v12 + *(v11 + 48));
  sub_2232AA844();
  v50 = [v46 code];
  *v32 = sub_2232AB064();
  v32[1] = v33;
  v34 = v15 + v43 - v12;
  sub_2232AA7F4();
  v50 = 0;
  v51 = 0xE000000000000000;
  if (v48)
  {
    v35 = 0;
  }

  else
  {
    v49 = v41;
    sub_22327F678();
    v35 = sub_2232AAED4();
    v27 = v36;
  }

  v37 = (v34 + *(v11 + 48));
  MEMORY[0x223DD7FE0](v35, v27);

  v38 = v51;
  *v37 = v50;
  v37[1] = v38;
  return v47;
}

uint64_t sub_223276060(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6)
{
  v48 = a6;
  v41 = a5;
  v45 = a2;
  v46 = a4;
  v44 = a3;
  v42 = sub_2232A9504();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v43 = 8 * v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2232AC350;
  v47 = v14;
  v15 = v14 + v13;
  v16 = (v14 + v13 + *(v11 + 48));
  sub_2232AA7D4();
  *v16 = 0x6764697242525341;
  v16[1] = 0xE900000000000065;
  v17 = (v15 + v12 + *(v11 + 48));
  sub_2232AA804();
  *v17 = 0xD000000000000038;
  v17[1] = 0x80000002232AD890;
  v18 = (v15 + 2 * v12 + *(v11 + 48));
  sub_2232AA824();
  *v18 = 0xD000000000000025;
  v18[1] = 0x80000002232AD1D0;
  v19 = (v15 + 3 * v12 + *(v11 + 48));
  sub_2232AA7E4();
  v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v19 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v19[1] = v20;
  v21 = (v15 + 4 * v12 + *(v11 + 48));

  sub_2232AA864();
  v22 = a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v23 = v42;
  (*(v7 + 16))(v10, v22, v42);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v24 = sub_2232AB064();
  v26 = v25;
  (*(v7 + 8))(v10, v23);
  *v21 = v24;
  v21[1] = v26;
  sub_2232AA854();
  v27 = 0xE000000000000000;
  v50 = 0;
  v51 = 0xE000000000000000;
  if (v44)
  {
    v28 = v45;
  }

  else
  {
    v28 = 0;
  }

  if (v44)
  {
    v29 = v44;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  v30 = (v15 + 5 * v12 + *(v11 + 48));

  MEMORY[0x223DD7FE0](v28, v29);

  v31 = v51;
  *v30 = v50;
  v30[1] = v31;
  v32 = (v15 + 6 * v12 + *(v11 + 48));
  sub_2232AA844();
  v50 = [v46 code];
  *v32 = sub_2232AB064();
  v32[1] = v33;
  v34 = v15 + v43 - v12;
  sub_2232AA7F4();
  v50 = 0;
  v51 = 0xE000000000000000;
  if (v48)
  {
    v35 = 0;
  }

  else
  {
    v49 = v41;
    sub_22327F678();
    v35 = sub_2232AAED4();
    v27 = v36;
  }

  v37 = (v34 + *(v11 + 48));
  MEMORY[0x223DD7FE0](v35, v27);

  v38 = v51;
  *v37 = v50;
  v37[1] = v38;
  return v47;
}

uint64_t sub_223276444(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, int a6)
{
  v56 = a6;
  v48 = a5;
  v53 = a4;
  v54 = a3;
  v51 = sub_2232A9504();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v52 = 8 * v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2232AC350;
  v55 = v14;
  v15 = v14 + v13;
  v16 = (v14 + v13 + *(v11 + 48));
  sub_2232AA7D4();
  *v16 = 0x6764697242525341;
  v16[1] = 0xE900000000000065;
  v17 = (v15 + v12 + *(v11 + 48));
  sub_2232AA804();
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_2232AAF64();

  v58 = 0xD000000000000013;
  v59 = 0x80000002232AD8D0;
  v50 = a1;
  v57 = [a1 code];
  v18 = sub_2232AB064();
  MEMORY[0x223DD7FE0](v18);

  MEMORY[0x223DD7FE0](32, 0xE100000000000000);
  v19 = [a1 description];
  v20 = sub_2232AAC04();
  v22 = v21;

  MEMORY[0x223DD7FE0](v20, v22);

  MEMORY[0x223DD7FE0](0xD00000000000001ALL, 0x80000002232AD8F0);
  v23 = v59;
  *v17 = v58;
  v17[1] = v23;
  v24 = (v15 + 2 * v12 + *(v11 + 48));
  sub_2232AA824();
  *v24 = 0xD000000000000025;
  v24[1] = 0x80000002232AD1D0;
  v25 = (v15 + 3 * v12 + *(v11 + 48));
  sub_2232AA7E4();
  v26 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v25 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v25[1] = v26;
  v27 = (v15 + 4 * v12 + *(v11 + 48));

  sub_2232AA864();
  v28 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v29 = v49;
  v30 = v51;
  (*(v8 + 16))(v49, v28, v51);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  v31 = sub_2232AB064();
  v33 = v32;
  (*(v8 + 8))(v29, v30);
  *v27 = v31;
  v27[1] = v33;
  sub_2232AA854();
  v58 = 0;
  v59 = 0xE000000000000000;
  if (v53)
  {
    v34 = v54;
  }

  else
  {
    v34 = 0;
  }

  if (v53)
  {
    v35 = v53;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v36 = (v15 + 5 * v12 + *(v11 + 48));

  v37 = v34;
  v38 = 0xE000000000000000;
  MEMORY[0x223DD7FE0](v37, v35);

  v39 = v59;
  *v36 = v58;
  v36[1] = v39;
  v40 = (v15 + 6 * v12 + *(v11 + 48));
  sub_2232AA844();
  v58 = [v50 code];
  *v40 = sub_2232AB064();
  v40[1] = v41;
  v42 = v15 + v52 - v12;
  sub_2232AA7F4();
  v58 = 0;
  v59 = 0xE000000000000000;
  if (v56)
  {
    v43 = 0;
  }

  else
  {
    v57 = v48;
    sub_22327F678();
    v43 = sub_2232AAED4();
    v38 = v44;
  }

  v45 = (v42 + *(v11 + 48));
  MEMORY[0x223DD7FE0](v43, v38);

  v46 = v59;
  *v45 = v58;
  v45[1] = v46;
  return v55;
}

void sub_223276910(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a1)
  {
    v8 = sub_2232AABF4();
    [a1 setMultiUserTrpCandidateId_];

    v9 = *a4;
    sub_2232606A4(0, &unk_27D0812B0, 0x277D5D2F8);

    v10 = sub_2232AACF4();

    [a1 setTrpCandidateList_];

    v11 = *(a5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
    v12 = *(a5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
    v13 = sub_2232AABF4();
    [a1 setRequestId_];
  }
}

void sub_223276A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = sub_2232AABF4();
    [a1 setLastTRPCandidateId_];

    v7 = *(a4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
    v8 = *(a4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
    v9 = sub_2232AABF4();
    [a1 setRequestId_];
  }
}

id sub_223276AB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v57 = a1;
  v58 = a3;
  v8 = sub_2232A9504();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = 0;
  v66 = 1;
  if ((v5[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isCandidateRequest] & 1) != 0 || v5[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isFFRequest] == 1)
  {
    v65 = 30;
    v66 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CEF480]) init];
  v14 = objc_allocWithZone(MEMORY[0x277CEF440]);
  v15 = v13;
  v16 = [v14 init];
  v17 = objc_allocWithZone(MEMORY[0x277CEF470]);
  v18 = v15;
  v19 = [v17 initWithRecognition:v18 rawRecognition:v18 audioAnalytics:v16 isFinal:0 utteranceStart:0.0];

  if (v19)
  {
    v55 = a4;
    v56 = a2;
    sub_2232A94F4();
    v20 = sub_2232A94C4();
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = swift_allocObject();
    v23[2] = v20;
    v23[3] = v22;
    v23[4] = v5;
    v23[5] = v19;
    v23[6] = &v65;
    v24 = objc_allocWithZone(MEMORY[0x277D5D2F0]);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_22327A978;
    *(v25 + 24) = v23;
    v63 = sub_22327A988;
    v64 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_22327F7FC;
    v62 = &block_descriptor_113;
    v26 = _Block_copy(&aBlock);
    v27 = v5;
    v28 = v19;

    v29 = [v24 initWithBuilder_];
    _Block_release(v26);
    if (v29)
    {
      v54 = v28;
      v30 = swift_allocObject();
      v31 = v56;
      v30[2] = v57;
      v30[3] = v31;
      v30[4] = v27;
      v30[5] = v29;
      v32 = v55;
      v30[6] = v58;
      v30[7] = v32;
      v58 = objc_allocWithZone(MEMORY[0x277D5D2F8]);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_22327A9B0;
      *(v33 + 24) = v30;
      v63 = sub_22327F800;
      v64 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v60 = 1107296256;
      v61 = sub_22327F7FC;
      v62 = &block_descriptor_122;
      v34 = _Block_copy(&aBlock);

      v35 = v27;

      v36 = v29;

      v37 = [v58 &off_2784D7178];
      _Block_release(v34);
      if (v37)
      {

        return v37;
      }

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v47 = sub_2232AAAD4();
      __swift_project_value_buffer(v47, qword_28131DB88);
      v48 = v35;
      v49 = sub_2232AAAC4();
      v50 = sub_2232AAD94();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_2232603D0(*&v48[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v48[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
        _os_log_impl(&dword_22325E000, v49, v50, "Failed to create fabricated TRPCandidate for request: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x223DD8AC0](v52, -1, -1);
        MEMORY[0x223DD8AC0](v51, -1, -1);
      }
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v43 = sub_2232AAAD4();
      __swift_project_value_buffer(v43, qword_28131DB88);
      v44 = sub_2232AAAC4();
      v45 = sub_2232AAD94();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_22325E000, v44, v45, "Could not create fabricated TCUPackage", v46, 2u);
        MEMORY[0x223DD8AC0](v46, -1, -1);
      }
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v39 = sub_2232AAAD4();
    __swift_project_value_buffer(v39, qword_28131DB88);
    v40 = sub_2232AAAC4();
    v41 = sub_2232AAD94();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22325E000, v40, v41, "Failed to create speechPackage", v42, 2u);
      MEMORY[0x223DD8AC0](v42, -1, -1);
    }
  }

  return 0;
}

id sub_223277184(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (result)
  {
    v9 = result;
    v10 = sub_2232AABF4();
    [v9 setTcuId_];

    v11 = *(a4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
    v12 = *(a4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
    v13 = sub_2232AABF4();
    [v9 setRequestId_];

    result = [v9 setSpeechPackage_];
    if ((a6[1] & 1) == 0)
    {
      v14 = *a6;

      return [v9 setSpeechEvent_];
    }
  }

  return result;
}

void sub_223277270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v11 = sub_2232AABF4();
    [a1 setTrpCandidateId_];

    v12 = *(a4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
    v13 = *(a4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
    v14 = sub_2232AABF4();
    [a1 setRequestId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0811C8, &qword_2232AC458);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2232AC360;
    *(v15 + 32) = a5;
    sub_2232606A4(0, &unk_28131D1D0, 0x277D5D2F0);
    v16 = a5;
    v17 = sub_2232AACF4();

    [a1 setTcuList_];

    if (a7)
    {
      v18 = sub_2232AABF4();
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [a1 setUserId_];
  }
}

void sub_2232773E4(int a1, int a2, id a3)
{
  v5 = [a3 description];
  if (!v5)
  {
    sub_2232AAC04();
    v5 = sub_2232AABF4();
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D47208]) initWithReason_];

  if (v6)
  {
    [v6 setErrorCode_];
    v7 = v6;
    v8 = sub_2232AABF4();
    [v7 setRefId_];

    v9 = *(v3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
    aBlock[4] = sub_223277650;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22328BC90;
    aBlock[3] = &block_descriptor_104;
    v10 = _Block_copy(aBlock);
    [v9 handleCommand:v7 completion:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v11 = sub_2232AAAD4();
    __swift_project_value_buffer(v11, qword_28131DB88);
    oslog = sub_2232AAAC4();
    v12 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22325E000, oslog, v12, "Could not create CommandFailed to fail the request, request will likely timeout", v13, 2u);
      MEMORY[0x223DD8AC0](v13, -1, -1);
    }
  }
}

void sub_223277650(uint64_t a1, void *a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v3 = sub_2232AAAD4();
  __swift_project_value_buffer(v3, qword_28131DB88);
  v4 = a2;
  oslog = sub_2232AAAC4();
  v5 = sub_2232AAD94();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081100, qword_2232AC440);
    v8 = sub_2232AAEA4();
    v10 = sub_2232603D0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22325E000, oslog, v5, "Sent CommandFailed to fail the request with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DD8AC0](v7, -1, -1);
    MEMORY[0x223DD8AC0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2232777E8()
{
  if (*(p_aBlock + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isRMVEnabled) != 1)
  {
    if (AFIsATV())
    {
      v21 = *(p_aBlock + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers);
      sub_2232AAA54();
      if (!v22)
      {
        v61 = sub_2232AAA64();
        if (v62)
        {
          v63 = v61;
          v64 = v62;
          if (qword_28131D338 != -1)
          {
            swift_once();
          }

          v65 = sub_2232AAAD4();
          __swift_project_value_buffer(v65, qword_28131DB88);
          v66 = sub_2232AAAC4();
          v67 = sub_2232AADA4();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_22325E000, v66, v67, "Generating default user voice ID score card", v68, 2u);
            MEMORY[0x223DD8AC0](v68, -1, -1);
          }

          v69 = swift_allocObject();
          *(v69 + 16) = v63;
          *(v69 + 24) = v64;
          v70 = objc_allocWithZone(MEMORY[0x277CEF520]);
          v71 = swift_allocObject();
          *(v71 + 16) = sub_2232789FC;
          *(v71 + 24) = v69;
          v83 = sub_22327F800;
          v84 = v71;
          aBlock = MEMORY[0x277D85DD0];
          v80 = 1107296256;
          v81 = sub_22327F7FC;
          v82 = &block_descriptor_91;
          v72 = _Block_copy(&aBlock);

          v60 = [v70 initWithBuilder_];
          _Block_release(v72);

          return v60;
        }

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v73 = sub_2232AAAD4();
        __swift_project_value_buffer(v73, qword_28131DB88);
        v33 = p_aBlock;
        v34 = sub_2232AAAC4();
        v35 = sub_2232AAD94();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 67109120;
          goto LABEL_26;
        }

LABEL_63:

        return 0;
      }
    }

    v23 = *(p_aBlock + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers);
    v24 = sub_2232AAA54();
    if (!v25)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v38 = sub_2232AAAD4();
      __swift_project_value_buffer(v38, qword_28131DB88);
      v33 = p_aBlock;
      v34 = sub_2232AAAC4();
      v35 = sub_2232AAD94();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109120;

        v37 = "Primary user is missing from homemebers list when RMV=%{BOOL}d";
        goto LABEL_31;
      }

      goto LABEL_63;
    }

    v26 = v24;
    v27 = v25;
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    v29 = objc_allocWithZone(MEMORY[0x277CEF520]);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_2232789D8;
    *(v30 + 24) = v28;
    v83 = sub_22327F800;
    v84 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v31 = &block_descriptor_81;
    goto LABEL_51;
  }

  v1 = *(p_aBlock + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers);
  v2 = sub_2232AAA64();
  if (!v3)
  {
    if (qword_28131D338 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

  v4 = v2;
  v5 = v3;
  if (v1 >> 62)
  {
    goto LABEL_71;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v19 = *(MEMORY[0x277D84F90] + 16);
    if (v19)
    {
      v75 = v5;
      v76 = v4;
LABEL_34:
      v39 = 0;
      v40 = MEMORY[0x277D84F98];
      v5 = v7 + 5;
      v77 = v19;
      v78 = v7;
      while (1)
      {
        if (v39 >= v7[2])
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v6 = sub_2232AAFE4();
          goto LABEL_5;
        }

        v44 = *(v5 - 1);
        v43 = *v5;
        sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);

        v45 = sub_2232AAE74();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v40;
        v4 = sub_2232A2C98(v44, v43);
        v48 = v40[2];
        v49 = (v47 & 1) == 0;
        v50 = v48 + v49;
        if (__OFADD__(v48, v49))
        {
          goto LABEL_67;
        }

        v1 = v47;
        if (v40[3] >= v50)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v40 = aBlock;
            if ((v47 & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          else
          {
            sub_2232A4FC8();
            v40 = aBlock;
            if ((v1 & 1) == 0)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          sub_2232A2E28(v50, isUniquelyReferenced_nonNull_native);
          v51 = sub_2232A2C98(v44, v43);
          if ((v1 & 1) != (v52 & 1))
          {
            goto LABEL_75;
          }

          v4 = v51;
          v40 = aBlock;
          if ((v1 & 1) == 0)
          {
LABEL_45:
            v40[(v4 >> 6) + 8] |= 1 << v4;
            v53 = (v40[6] + 16 * v4);
            *v53 = v44;
            v53[1] = v43;
            *(v40[7] + 8 * v4) = v45;
            v54 = v40[2];
            v55 = __OFADD__(v54, 1);
            v56 = v54 + 1;
            if (v55)
            {
              goto LABEL_69;
            }

            v40[2] = v56;
            goto LABEL_36;
          }
        }

        v41 = v40[7];
        v42 = *(v41 + 8 * v4);
        *(v41 + 8 * v4) = v45;

LABEL_36:
        ++v39;
        v5 += 2;
        v7 = v78;
        if (v77 == v39)
        {
          v5 = v75;
          v4 = v76;
          goto LABEL_50;
        }
      }
    }

    v40 = MEMORY[0x277D84F98];
LABEL_50:

    v57 = swift_allocObject();
    v57[2] = v40;
    v57[3] = v4;
    v57[4] = v5;
    v29 = objc_allocWithZone(MEMORY[0x277CEF520]);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_223278A40;
    *(v58 + 24) = v57;
    v83 = sub_22327F800;
    v84 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v31 = &block_descriptor_101;
LABEL_51:
    v81 = sub_22327F7FC;
    v82 = v31;
    v59 = _Block_copy(&aBlock);

    v60 = [v29 initWithBuilder_];
    _Block_release(v59);

    return v60;
  }

  v75 = v5;
  v76 = v4;
  aBlock = MEMORY[0x277D84F90];
  p_aBlock = &aBlock;
  sub_223278A20(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
LABEL_73:
    swift_once();
LABEL_24:
    v32 = sub_2232AAAD4();
    __swift_project_value_buffer(v32, qword_28131DB88);
    v33 = p_aBlock;
    v34 = sub_2232AAAC4();
    v35 = sub_2232AAD94();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67109120;
      *(v36 + 4) = 1;
LABEL_26:

      v37 = "Unknown user missing from homemebers list when RMV=%{BOOL}d";
LABEL_31:
      _os_log_impl(&dword_22325E000, v34, v35, v37, v36, 8u);
      MEMORY[0x223DD8AC0](v36, -1, -1);

      return 0;
    }

    goto LABEL_63;
  }

  v8 = 0;
  v7 = aBlock;
  v5 = (v1 & 0xC000000000000001);
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_68;
    }

    if (v5)
    {
      v10 = v7;
      v11 = MEMORY[0x223DD8300](v8, v1);
    }

    else
    {
      if (v8 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v10 = v7;
      v11 = *(v1 + 8 * v8 + 32);
    }

    v12 = v11;
    v13 = [v11 sharedUserId];
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v15 = sub_2232AAC04();
    v4 = v16;

    v7 = v10;
    aBlock = v10;
    v18 = v10[2];
    v17 = v10[3];
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      sub_223278A20((v17 > 1), v18 + 1, 1);
      v7 = aBlock;
    }

    v7[2] = v19;
    v20 = &v7[2 * v18];
    v20[4] = v15;
    v20[5] = v4;
    ++v8;
    if (v9 == v6)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_75:
  result = sub_2232AB0A4();
  __break(1u);
  return result;
}

id sub_223278104(id result)
{
  if (result)
  {
    v1 = result;
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    v2 = sub_2232AAE74();
    [v1 setSpIdAudioProcessedDuration_];

    v3 = sub_2232AAE74();
    [v1 setSpIdUnknownUserScore_];

    v4 = sub_2232AAB84();
    [v1 setSpIdKnownUserScores_];

    v5 = sub_2232AAE74();
    [v1 setSpIdUserScoresVersion_];

    [v1 setSpIdScoreThresholdingType_];
    [v1 setSpIdAssetVersion_];
    v6 = sub_2232AABF4();
    [v1 setUserClassified_];

    return [v1 setUserIdentityClassification_];
  }

  return result;
}

id sub_223278278(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    v9 = sub_2232AAE74();
    [v8 setSpIdAudioProcessedDuration_];

    v10 = sub_2232AAE74();
    [v8 setSpIdUnknownUserScore_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0810F0, &qword_2232AC430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2232AC370;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    *(inited + 48) = sub_2232AAE74();
    sub_22329DF2C(inited);
    swift_setDeallocating();
    sub_22327A910(inited + 32);
    v12 = sub_2232AAB84();

    [v8 setSpIdKnownUserScores_];

    v13 = sub_2232AAE74();
    [v8 setSpIdUserScoresVersion_];

    [v8 setSpIdScoreThresholdingType_];
    [v8 setSpIdAssetVersion_];
    v14 = sub_2232AABF4();
    [v8 setUserClassified_];

    return [v8 setUserIdentityClassification_];
  }

  return result;
}

uint64_t sub_223278464()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_myriadMonitor));
  v1 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v2 = sub_2232AA794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_sessionState));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_immutableSessionState));

  v3 = *(v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_speechPartialResultsCache);

  v4 = *(v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers);

  v5 = *(v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_bufferedResultCandidateHandler);
}

id sub_22327855C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssistantSpeechRecognizerResponseHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AssistantSpeechRecognizerResponseHandler()
{
  result = qword_28131D350;
  if (!qword_28131D350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2232786E4()
{
  result = sub_2232AA794();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_2232787D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v4(a2);
}

uint64_t sub_223278834(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
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

unint64_t sub_2232788DC()
{
  result = qword_28131D210;
  if (!qword_28131D210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D081AB0, &unk_2232AD010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D210);
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

uint64_t sub_223278990(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_223278A20(char *a1, int64_t a2, char a3)
{
  result = sub_223278A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_223278A40(id result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_223278104(result);
}

char *sub_223278A4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0810E8, &unk_2232AC930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223278B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_2232AAB14();
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2232AAB44();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v24);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v5[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_requestQueue];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v5;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  aBlock[4] = sub_22327F6EC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_222;
  v20 = _Block_copy(aBlock);

  v21 = v5;

  sub_2232AAB24();
  v26 = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v18, v14, v20);
  _Block_release(v20);
  (*(v25 + 8))(v14, v11);
  (*(v15 + 8))(v18, v24);
}

void sub_223278E34(uint64_t a1, unint64_t a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v5 = sub_2232AAAD4();
  __swift_project_value_buffer(v5, qword_28131DB88);
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22325E000, v6, v7, "Received final result", v8, 2u);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v10 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  if (v9 != a1 || v10 != a2)
  {
    v12 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v13 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
    if ((sub_2232AB094() & 1) == 0)
    {

      v14 = v2;
      oslog = sub_2232AAAC4();
      v15 = sub_2232AAD94();

      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_2232603D0(a1, a2, &v19);
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_2232603D0(v9, v10, &v19);
        _os_log_impl(&dword_22325E000, oslog, v15, "Response requestId = %s does not match current requestId = %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v17, -1, -1);
        MEMORY[0x223DD8AC0](v16, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_22327909C(void *a1)
{
  v2 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = sub_2232AAAC4();
  v6 = sub_2232AAD84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22325E000, v5, v6, "Received TRPDetected.", v7, 2u);
    MEMORY[0x223DD8AC0](v7, -1, -1);
  }

  if (v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled] != 1)
  {
    v42 = sub_2232AAAC4();
    v21 = sub_2232AAD94();
    if (os_log_type_enabled(v42, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Received TRPDetected from CoreSpeech when Medoc is not enabled.";
      goto LABEL_16;
    }

LABEL_17:

    return;
  }

  v8 = [a1 requestId];
  if (!v8)
  {
LABEL_12:
    v42 = sub_2232AAAC4();
    v21 = sub_2232AAD84();
    if (os_log_type_enabled(v42, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "TRPDetected requestId does not match current requestId";
LABEL_16:
      _os_log_impl(&dword_22325E000, v42, v21, v23, v22, 2u);
      MEMORY[0x223DD8AC0](v22, -1, -1);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = sub_2232AAC04();
  v12 = v11;

  v13 = v10;
  v14 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v15 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  if (v13 == v14 && v12 == v15)
  {
  }

  else
  {
    v17 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v18 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
    v19 = sub_2232AB094();

    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v24 = v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled];
  MEMORY[0x28223BE20](v20);
  if (v25 == 1)
  {
    v26 = objc_allocWithZone(sub_2232AA1E4());
    v27 = sub_2232A9C14();
    if (!v27)
    {
      v28 = v2;
      v29 = sub_2232AAAC4();
      v30 = sub_2232AAD94();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_2232603D0(v14, v15, &v43);
        v33 = "Failed to create MultiUserSpeechStopDetectedMessage for request: %s";
LABEL_31:
        _os_log_impl(&dword_22325E000, v29, v30, v33, v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x223DD8AC0](v32, -1, -1);
        MEMORY[0x223DD8AC0](v31, -1, -1);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v34 = objc_allocWithZone(sub_2232A9C74());
    v27 = sub_2232A9C14();
    if (!v27)
    {
      v41 = v2;
      v29 = sub_2232AAAC4();
      v30 = sub_2232AAD94();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_2232603D0(v14, v15, &v43);
        v33 = "Failed to create SpeechStopDetectedMessage for request: %s";
        goto LABEL_31;
      }

LABEL_32:

      return;
    }
  }

  v35 = v27;
  v36 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
  sub_2232AA624();

  if (qword_28131D340 != -1)
  {
    swift_once();
  }

  v37 = sub_2232AA8A4();
  __swift_project_value_buffer(v37, qword_28131DBA0);
  v38 = swift_allocObject();
  *(v38 + 16) = v2;
  *(v38 + 24) = a1;
  v39 = v2;
  v40 = a1;
  sub_2232AA874();
}

void sub_2232795D8(NSObject *a1)
{
  v2 = v1;
  v151 = sub_2232AA794();
  v155 = *(v151 - 8);
  v4 = *(v155 + 8);
  MEMORY[0x28223BE20](v151);
  v6 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
LABEL_78:
    swift_once();
  }

  v7 = sub_2232AAAD4();
  v8 = __swift_project_value_buffer(v7, qword_28131DB88);
  v9 = a1;
  v10 = sub_2232AAAC4();
  v11 = sub_2232AAD84();
  if (os_log_type_enabled(v10, v11))
  {
    v152 = v8;
    v12 = v6;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v159 = v14;
    *v13 = 136315138;
    v6 = [v9 multiUserTrpCandidateId];

    if (!v6)
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v15 = sub_2232AAC04();
    v17 = v16;

    v18 = sub_2232603D0(v15, v17, &v159);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22325E000, v10, v11, "Received MultiUserTRPCandidate with top level trpId: %s.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DD8AC0](v14, -1, -1);
    MEMORY[0x223DD8AC0](v13, -1, -1);

    v6 = v12;
    v8 = v152;
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled) != 1)
  {
    v158 = sub_2232AAAC4();
    v42 = sub_2232AAD94();
    if (os_log_type_enabled(v158, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22325E000, v158, v42, "MultiUserTRPCandidate received from ASR but Multi User is NOT enabled. Will ignore this message.", v43, 2u);
      MEMORY[0x223DD8AC0](v43, -1, -1);
    }

    goto LABEL_29;
  }

  v157 = v2;
  v19 = [v9 requestId];
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = v19;
  v21 = sub_2232AAC04();
  v23 = v22;

  v24 = v21;
  v26 = *&v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v25 = *&v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  if (v24 == v26 && v23 == v25)
  {
  }

  else
  {
    v28 = *&v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v29 = *&v157[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
    v30 = sub_2232AB094();

    if ((v30 & 1) == 0)
    {
LABEL_13:
      v31 = v9;
      v32 = v157;
      v158 = sub_2232AAAC4();
      v33 = sub_2232AAD84();
      if (os_log_type_enabled(v158, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v159 = v35;
        *v34 = 136315394;
        v36 = [v31 requestId];

        if (v36)
        {
          v37 = sub_2232AAC04();
          v39 = v38;

          v40 = sub_2232603D0(v37, v39, &v159);

          *(v34 + 4) = v40;
          *(v34 + 12) = 2080;
          *(v34 + 14) = sub_2232603D0(*&v32[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v32[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v159);
          _os_log_impl(&dword_22325E000, v158, v33, "MultiUserTRPCandidate requestId = %s does not match current requestId = %s.", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DD8AC0](v35, -1, -1);
          v41 = v34;
LABEL_28:
          MEMORY[0x223DD8AC0](v41, -1, -1);

          return;
        }

        goto LABEL_102;
      }

LABEL_29:
      v66 = v158;

      return;
    }
  }

  v44 = [v9 trpCandidateList];
  if (!v44)
  {
    v62 = v157;
    v158 = sub_2232AAAC4();
    v63 = sub_2232AAD94();

    if (os_log_type_enabled(v158, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v159 = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_2232603D0(v26, v25, &v159);
      _os_log_impl(&dword_22325E000, v158, v63, "Received MultiUserTRPCandidate with nil trpCandidateList for request: %s.", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x223DD8AC0](v65, -1, -1);
      v41 = v64;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v45 = v44;
  v146 = v26;
  v147 = v25;
  sub_2232606A4(0, &unk_27D0812B0, 0x277D5D2F8);
  v2 = sub_2232AAD04();

  swift_bridgeObjectRetain_n();
  v46 = v9;
  a1 = sub_2232AAAC4();
  v47 = sub_2232AAD84();
  v48 = os_log_type_enabled(a1, v47);
  v49 = &off_2232AC000;
  v50 = v2 >> 62;
  v149 = v2;
  v152 = v8;
  v139 = v46;
  if (v48)
  {
    v51 = v6;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v159 = v53;
    *v52 = 136315394;
    v54 = [v46 multiUserTrpCandidateId];
    v6 = v46;
    if (!v54)
    {
LABEL_103:
      swift_bridgeObjectRelease_n();

      __break(1u);
      return;
    }

    v55 = v54;

    v56 = sub_2232AAC04();
    v58 = v57;

    v59 = sub_2232603D0(v56, v58, &v159);

    *(v52 + 4) = v59;
    *(v52 + 12) = 2048;
    v2 = v149;
    if (v50)
    {
      v60 = sub_2232AAFE4();
    }

    else
    {
      v60 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v51;

    *(v52 + 14) = v60;

    _os_log_impl(&dword_22325E000, a1, v47, "Received MultiUserTRPCandidate with trpCandidateId: %s with %ld entries.", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x223DD8AC0](v53, -1, -1);
    MEMORY[0x223DD8AC0](v52, -1, -1);

    v61 = v157;
    v49 = &off_2232AC000;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v61 = v157;
  }

  v165 = sub_22329DF18(MEMORY[0x277D84F90]);
  if (v50)
  {
LABEL_81:
    v68 = sub_2232AAFE4();
    if (v68)
    {
      goto LABEL_35;
    }

LABEL_82:

    v116 = v61[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isSystemAssistantExperienceEnabled];
    MEMORY[0x28223BE20](v115);
    v117 = v139;
    *(&v138 - 4) = v61;
    *(&v138 - 3) = v117;
    *(&v138 - 2) = &v165;
    v118 = v147;
    v119 = v146;
    if (v120 == 1)
    {
      v121 = objc_allocWithZone(sub_2232AA3D4());
      v122 = sub_2232AA3C4();
      if (v122)
      {
        v123 = v122;
        v124 = sub_2232AAAC4();
        v125 = sub_2232AAD84();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          v127 = "Posting MultiUserRootTRPCandidateRequestMessage.";
LABEL_90:
          _os_log_impl(&dword_22325E000, v124, v125, v127, v126, 2u);
          MEMORY[0x223DD8AC0](v126, -1, -1);
        }

LABEL_91:

        v130 = *&v61[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 32];
        __swift_project_boxed_opaque_existential_1(&v61[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v61[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
        sub_2232AA624();

        goto LABEL_98;
      }

      v131 = v61;
      v132 = sub_2232AAAC4();
      v133 = sub_2232AAD94();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        *&v159 = v135;
        *v134 = 136315138;
        *(v134 + 4) = sub_2232603D0(v119, v118, &v159);
        v136 = "receivedMultiUserTRPCandidate: Failed to create MultiUserRootTRPCandidateRequestMessage for request: %s.";
LABEL_96:
        _os_log_impl(&dword_22325E000, v132, v133, v136, v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        MEMORY[0x223DD8AC0](v135, -1, -1);
        MEMORY[0x223DD8AC0](v134, -1, -1);
      }
    }

    else
    {
      v128 = objc_allocWithZone(sub_2232AA304());
      v129 = sub_2232AA284();
      if (v129)
      {
        v123 = v129;
        v124 = sub_2232AAAC4();
        v125 = sub_2232AAD84();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          v127 = "Posting MultiUserTRPCandidateRequestMessage.";
          goto LABEL_90;
        }

        goto LABEL_91;
      }

      v137 = v61;
      v132 = sub_2232AAAC4();
      v133 = sub_2232AAD94();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        *&v159 = v135;
        *v134 = 136315138;
        *(v134 + 4) = sub_2232603D0(v119, v118, &v159);
        v136 = "receivedMultiUserTRPCandidate: Failed to create MultiUserTRPCandidateRequestMessage for request: %s.";
        goto LABEL_96;
      }
    }

    goto LABEL_98;
  }

  v68 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v68)
  {
    goto LABEL_82;
  }

LABEL_35:
  v69 = 0;
  v156 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_sessionState;
  v153 = v2 & 0xC000000000000001;
  v158 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_immutableSessionState;
  v143 = v2 & 0xFFFFFFFFFFFFFF8;
  v142 = v2 + 32;
  v144 = (v155 + 8);
  *&v67 = 136315138;
  v141 = v67;
  *&v67 = *(v49 + 90);
  v140 = v67;
  v148 = v68;
  v145 = v6;
  while (1)
  {
    if (v153)
    {
      v70 = MEMORY[0x223DD8300](v69, v2);
    }

    else
    {
      if (v69 >= *(v143 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v70 = *(v142 + 8 * v69);
    }

    v71 = v70;
    if (__OFADD__(v69++, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    v73 = [v70 trpCandidateId];
    if (!v73)
    {
      v49 = v61;
      a1 = sub_2232AAAC4();
      v97 = sub_2232AAD94();

      if (os_log_type_enabled(a1, v97))
      {
        v49 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v159 = v98;
        *v49 = v141;
        *(v49 + 4) = sub_2232603D0(v146, v147, &v159);
        _os_log_impl(&dword_22325E000, a1, v97, "receivedMultiUserTRPCandidate: Failed to create TRPCandidateRequestMessage for request: %s as trpCandidateId was not populated in the TRPCandidate. This can have serious side effects.", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v98);
        v99 = v98;
        v68 = v148;
        MEMORY[0x223DD8AC0](v99, -1, -1);
        MEMORY[0x223DD8AC0](v49, -1, -1);
      }

      goto LABEL_37;
    }

    v74 = v73;
    v154 = sub_2232AAC04();
    v2 = v75;

    v76 = [v71 userId];
    v155 = v71;
    if (!v76)
    {
      v100 = v61;

      a1 = sub_2232AAAC4();
      v49 = sub_2232AAD94();

      if (os_log_type_enabled(a1, v49))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v159 = v102;
        *v101 = v140;
        *(v101 + 4) = sub_2232603D0(v146, v147, &v159);
        *(v101 + 12) = 2080;
        v103 = sub_2232603D0(v154, v2, &v159);

        *(v101 + 14) = v103;
        _os_log_impl(&dword_22325E000, a1, v49, "receivedMultiUserTRPCandidate: Failed to create TRPCandidateRequestMessage for request: %s as userId was not populated for the TRPCandidate: %s. This can have serious side effects.", v101, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v102, -1, -1);
        v104 = v101;
        v68 = v148;
        MEMORY[0x223DD8AC0](v104, -1, -1);
      }

      else
      {
      }

      v2 = v149;
      goto LABEL_37;
    }

    v150 = v2;
    v77 = v76;
    v49 = sub_2232AAC04();
    a1 = v78;

    sub_2232AA774();
    v164 = MEMORY[0x277D84F90];
    v79 = [v71 tcuList];
    if (!v79)
    {
      __break(1u);
      goto LABEL_101;
    }

    v80 = v79;

    sub_2232606A4(0, &unk_28131D1D0, 0x277D5D2F0);
    v81 = sub_2232AAD04();

    if (v81 >> 62)
    {
      v6 = sub_2232AAFE4();
      if (!v6)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v6 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_72;
      }
    }

    if (v6 < 1)
    {
      goto LABEL_80;
    }

    v82 = 0;
    v83 = MEMORY[0x277D84F90];
    do
    {
      if ((v81 & 0xC000000000000001) != 0)
      {
        v87 = MEMORY[0x223DD8300](v82, v81);
      }

      else
      {
        v87 = *(v81 + 8 * v82 + 32);
      }

      v88 = v87;
      v89 = [v87 prevTCUIds];
      if (v89)
      {

        *&v159 = v88;
        sub_223260E10(v158 + v61, &v159 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_223281EF0(0, v83[2] + 1, 1, v83);
        }

        v91 = v83[2];
        v90 = v83[3];
        if (v91 >= v90 >> 1)
        {
          v83 = sub_223281EF0((v90 > 1), v91 + 1, 1, v83);
        }

        v83[2] = v91 + 1;
        v84 = &v83[6 * v91];
        v85 = v159;
        v86 = v161;
        v84[3] = v160;
        v84[4] = v86;
        v84[2] = v85;
        v164 = v83;
      }

      else
      {
        sub_223260E10(&v61[v156], v163);
        __swift_project_boxed_opaque_existential_1(v163, v163[3]);
        sub_2232AA744();
        *&v159 = v88;
        sub_2232650D4(&v162, &v159 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_223281EF0(0, v83[2] + 1, 1, v83);
        }

        v93 = v83[2];
        v92 = v83[3];
        v61 = v157;
        if (v93 >= v92 >> 1)
        {
          v83 = sub_223281EF0((v92 > 1), v93 + 1, 1, v83);
        }

        v83[2] = v93 + 1;
        v94 = &v83[6 * v93];
        v95 = v159;
        v96 = v161;
        v94[3] = v160;
        v94[4] = v96;
        v94[2] = v95;
        v164 = v83;
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
      }

      ++v82;
    }

    while (v6 != v82);
LABEL_72:

    MEMORY[0x28223BE20](v105);
    v6 = v145;
    *(&v138 - 6) = v61;
    *(&v138 - 5) = v6;
    v49 = v150;
    *(&v138 - 4) = v154;
    *(&v138 - 3) = v49;
    *(&v138 - 2) = &v164;
    v106 = objc_allocWithZone(sub_2232A9E44());
    v107 = sub_2232A9DC4();

    if (!v107)
    {
      break;
    }

    v108 = sub_2232AA784();
    a1 = &v165;
    sub_2232A0C00(v107, v108, v109);

    (*v144)(v6, v151);
    v2 = v149;
    v68 = v148;
LABEL_37:
    if (v69 == v68)
    {
      goto LABEL_82;
    }
  }

  v110 = v61;
  v111 = sub_2232AAAC4();
  v112 = sub_2232AAD94();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v159 = v114;
    *v113 = v141;
    *(v113 + 4) = sub_2232603D0(v146, v147, &v159);
    _os_log_impl(&dword_22325E000, v111, v112, "receivedMultiUserTRPCandidate: Failed to create TRPCandidateRequestMessage for request: %s.", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    MEMORY[0x223DD8AC0](v114, -1, -1);
    MEMORY[0x223DD8AC0](v113, -1, -1);
  }

  (*v144)(v6, v151);
LABEL_98:
}