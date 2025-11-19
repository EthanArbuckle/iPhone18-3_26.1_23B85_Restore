unint64_t sub_2237F5CC0()
{
  result = qword_27D09A678;
  if (!qword_27D09A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A678);
  }

  return result;
}

unint64_t sub_2237F5D18()
{
  result = qword_27D09A680;
  if (!qword_27D09A680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A688, &qword_223805480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A680);
  }

  return result;
}

unint64_t sub_2237F5D80()
{
  result = qword_27D09A690;
  if (!qword_27D09A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A690);
  }

  return result;
}

unint64_t sub_2237F5DD8()
{
  result = qword_27D09A698;
  if (!qword_27D09A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A698);
  }

  return result;
}

unint64_t sub_2237F5E30()
{
  result = qword_27D09A6A0;
  if (!qword_27D09A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6A0);
  }

  return result;
}

unint64_t sub_2237F5E88()
{
  result = qword_27D09A6A8;
  if (!qword_27D09A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6A8);
  }

  return result;
}

unint64_t sub_2237F5EDC()
{
  result = qword_27D09A6B0;
  if (!qword_27D09A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6B0);
  }

  return result;
}

unint64_t sub_2237F5F30()
{
  result = qword_27D09A6B8;
  if (!qword_27D09A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6B8);
  }

  return result;
}

unint64_t sub_2237F5F88()
{
  result = qword_27D09A6C0;
  if (!qword_27D09A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6C0);
  }

  return result;
}

unint64_t sub_2237F6048()
{
  result = qword_27D09A6C8;
  if (!qword_27D09A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6C8);
  }

  return result;
}

uint64_t sub_2237F609C(uint64_t a1)
{
  v2 = sub_2237F6048();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2237F60EC()
{
  result = qword_27D09A6D0;
  if (!qword_27D09A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6D0);
  }

  return result;
}

unint64_t sub_2237F6144()
{
  result = qword_27D09A6D8;
  if (!qword_27D09A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6D8);
  }

  return result;
}

unint64_t sub_2237F619C()
{
  result = qword_27D09A6E0;
  if (!qword_27D09A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6E0);
  }

  return result;
}

uint64_t sub_2237F61F0()
{
  if (qword_27D09A408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_2237F6268(uint64_t a1)
{
  v2 = sub_2237F5F88();

  return MEMORY[0x28210C300](a1, v2);
}

id sub_2237F62CC(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_223800FA0();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223800F40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A7D0, "rt");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v14 = *(*(v63 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v63);
  v65 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v60 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  v69 = v7;
  v28 = *(v7 + 56);
  v28(&v60 - v26, 1, 1, v6);
  if (a2)
  {
    sub_223800F10();
    sub_2237F7D88(v25, v27, &unk_27D09A9C0, &qword_223804B08);
  }

  v64 = OBJC_IVAR____TtC8Announce15IntentPerformer_announce;
  v29 = *(v70 + OBJC_IVAR____TtC8Announce15IntentPerformer_announce);
  if (v29)
  {
    v61 = v25;
    v30 = v29;
    v31 = [v30 endpointIdentifier];
    if (v31)
    {
      v32 = v31;
      sub_223800F30();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v28(v22, v33, 1, v6);
    v34 = *(v10 + 48);
    sub_2237F0D34(v22, v13, &unk_27D09A9C0, &qword_223804B08);
    sub_2237F0D34(v27, &v13[v34], &unk_27D09A9C0, &qword_223804B08);
    v35 = v69;
    v36 = *(v69 + 48);
    if (v36(v13, 1, v6) == 1)
    {
      sub_2237F0360(v22, &unk_27D09A9C0, &qword_223804B08);
      if (v36(&v13[v34], 1, v6) == 1)
      {
        sub_2237F0360(v13, &unk_27D09A9C0, &qword_223804B08);
        goto LABEL_19;
      }
    }

    else
    {
      sub_2237F0D34(v13, v19, &unk_27D09A9C0, &qword_223804B08);
      if (v36(&v13[v34], 1, v6) != 1)
      {
        v56 = &v13[v34];
        v57 = v62;
        (*(v35 + 32))(v62, v56, v6);
        sub_2237F7D10();
        v58 = sub_223800FC0();
        v59 = *(v35 + 8);
        v59(v57, v6);
        sub_2237F0360(v22, &unk_27D09A9C0, &qword_223804B08);
        v59(v19, v6);
        sub_2237F0360(v13, &unk_27D09A9C0, &qword_223804B08);
        if (v58)
        {
          goto LABEL_19;
        }

        v25 = v61;
        goto LABEL_14;
      }

      sub_2237F0360(v22, &unk_27D09A9C0, &qword_223804B08);
      (*(v35 + 8))(v19, v6);
    }

    v25 = v61;
    sub_2237F0360(v13, &unk_27D09A7D0, "rt");
  }

LABEL_14:
  v37 = v25;
  v38 = v66;
  sub_2237F6C2C(v66);
  v39 = sub_223800F80();
  v40 = sub_223801110();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    swift_beginAccess();
    sub_2237F0D34(v27, v37, &unk_27D09A9C0, &qword_223804B08);
    v43 = sub_223800FF0();
    v45 = sub_2237EF884(v43, v44, aBlock);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_2237C8000, v39, v40, "EndpointID = %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x223DEC5C0](v42, -1, -1);
    MEMORY[0x223DEC5C0](v41, -1, -1);
  }

  (*(v67 + 8))(v38, v68);
  v46 = v69;
  v47 = v65;
  swift_beginAccess();
  sub_2237F0D34(v27, v47, &unk_27D09A9C0, &qword_223804B08);
  v48 = 0;
  if ((*(v46 + 48))(v47, 1, v6) != 1)
  {
    v48 = sub_223800F20();
    (*(v46 + 8))(v47, v6);
  }

  v49 = [objc_allocWithZone(ANAnnounce) initWithEndpointIdentifier_];

  v50 = v70;
  v51 = sub_2237F6B24();
  [v49 setDelegate_];

  v52 = *(v50 + v64);
  *(v50 + v64) = v49;
  v30 = v49;

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2237F7D68;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2237F469C;
  aBlock[3] = &block_descriptor_3;
  v54 = _Block_copy(aBlock);

  [v30 prewarmWithHandler_];
  _Block_release(v54);
LABEL_19:
  sub_2237F0360(v27, &unk_27D09A9C0, &qword_223804B08);
  return v30;
}

id sub_2237F6B60(uint64_t *a1, uint64_t (*a2)(void), void *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = a2(0);
    v13 = objc_allocWithZone(v12);
    v14 = &v13[*a3];
    *v14 = a4;
    *(v14 + 1) = v11;
    v19.receiver = v13;
    v19.super_class = v12;
    v15 = objc_msgSendSuper2(&v19, sel_init);
    v16 = *(v4 + v5);
    *(v4 + v5) = v15;
    v7 = v15;

    v6 = 0;
  }

  v17 = v6;
  return v7;
}

uint64_t sub_2237F6C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A7C8, "Xt") - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___logger;
  swift_beginAccess();
  sub_2237F0D34(v1 + v9, v8, &qword_27D09A7C8, "Xt");
  v10 = sub_223800FA0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  v12 = sub_2237F0360(v8, &qword_27D09A7C8, "Xt");
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v12);
  sub_223800F90();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_2237F7D88(v6, v1 + v9, &qword_27D09A7C8, "Xt");
  return swift_endAccess();
}

id sub_2237F6E84(void *a1, uint64_t a2)
{
  v49 = a1;
  v3 = sub_223800F40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A7D0, "rt");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v45[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v45[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v45[-v23];
  v25 = *(v4 + 56);
  v25(&v45[-v23], 1, 1, v3);
  if (a2)
  {
    sub_223800F10();
    sub_2237F0360(v24, &unk_27D09A9C0, &qword_223804B08);
    sub_2237F32E8(v22, v24);
  }

  v26 = OBJC_IVAR____TtC8Announce15IntentPerformer_localPlaybackSession;
  v27 = *(v51 + OBJC_IVAR____TtC8Announce15IntentPerformer_localPlaybackSession);
  if (!v27)
  {
    goto LABEL_14;
  }

  v49 = v27;
  v28 = [v49 endpointIdentifier];
  if (v28)
  {
    v29 = v28;
    sub_223800F30();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v25(v19, v30, 1, v3);
  v31 = *(v7 + 48);
  sub_2237F0D34(v19, v10, &unk_27D09A9C0, &qword_223804B08);
  sub_2237F0D34(v24, &v10[v31], &unk_27D09A9C0, &qword_223804B08);
  v32 = *(v4 + 48);
  if (v32(v10, 1, v3) == 1)
  {
    sub_2237F0360(v19, &unk_27D09A9C0, &qword_223804B08);
    if (v32(&v10[v31], 1, v3) == 1)
    {
      sub_2237F0360(v10, &unk_27D09A9C0, &qword_223804B08);
LABEL_19:
      sub_2237F0360(v24, &unk_27D09A9C0, &qword_223804B08);
      return v49;
    }

    goto LABEL_13;
  }

  v33 = v48;
  sub_2237F0D34(v10, v48, &unk_27D09A9C0, &qword_223804B08);
  if (v32(&v10[v31], 1, v3) == 1)
  {

    sub_2237F0360(v19, &unk_27D09A9C0, &qword_223804B08);
    (*(v4 + 8))(v33, v3);
LABEL_13:
    sub_2237F0360(v10, &unk_27D09A7D0, "rt");
    goto LABEL_14;
  }

  v42 = v47;
  (*(v4 + 32))(v47, &v10[v31], v3);
  sub_2237F7D10();
  v46 = sub_223800FC0();
  v43 = v33;
  v44 = *(v4 + 8);
  v44(v42, v3);
  sub_2237F0360(v19, &unk_27D09A9C0, &qword_223804B08);
  v44(v43, v3);
  sub_2237F0360(v10, &unk_27D09A9C0, &qword_223804B08);
  if (v46)
  {
    goto LABEL_19;
  }

LABEL_14:
  v34 = v50;
  sub_2237F0D34(v24, v50, &unk_27D09A9C0, &qword_223804B08);
  if ((*(v4 + 48))(v34, 1, v3) == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_223800F20();
    (*(v4 + 8))(v34, v3);
  }

  v36 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier_];

  v37 = v51;
  v38 = sub_2237F6AE8();
  [v36 setDelegate_];

  sub_2237F0360(v24, &unk_27D09A9C0, &qword_223804B08);
  v39 = *(v37 + v26);
  *(v37 + v26) = v36;
  v40 = v36;

  return v40;
}

void sub_2237F745C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *a2;
    v6 = *(Strong + v5);
    if (v6)
    {
      [v6 setDelegate_];
      v7 = *&v4[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v4[v5] = 0;
  }
}

id IntentPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntentPerformer.init()()
{
  *&v0[OBJC_IVAR____TtC8Announce15IntentPerformer_localPlaybackSession] = 0;
  *&v0[OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___playbackSessionDelegate] = 0;
  *&v0[OBJC_IVAR____TtC8Announce15IntentPerformer_announce] = 0;
  *&v0[OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___announceDelegate] = 0;
  v1 = OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___logger;
  v2 = sub_223800FA0();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IntentPerformer();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t type metadata accessor for IntentPerformer()
{
  result = qword_27D09A730;
  if (!qword_27D09A730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2237F77A0()
{
  sub_2237F7858();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2237F7858()
{
  if (!qword_27D09A740)
  {
    sub_223800FA0();
    v0 = sub_223801140();
    if (!v1)
    {
      atomic_store(v0, &qword_27D09A740);
    }
  }
}

uint64_t sub_2237F7930(void *a1)
{
  v2 = sub_223800FA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result;
      v12 = a1;
      sub_2237F6C2C(v9);

      v13 = a1;
      v14 = sub_223800F80();
      v15 = sub_223801100();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26 = v17;
        *v16 = 136446210;
        swift_getErrorValue();
        v18 = sub_223801290();
        v20 = sub_2237EF884(v18, v19, &v26);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_2237C8000, v14, v15, "Prewarm Completed with Error %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x223DEC5C0](v17, -1, -1);
        MEMORY[0x223DEC5C0](v16, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v9, v2);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = result;
      sub_2237F6C2C(v7);

      v22 = sub_223800F80();
      v23 = sub_223801110();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2237C8000, v22, v23, "Prewarm Completed", v24, 2u);
        MEMORY[0x223DEC5C0](v24, -1, -1);
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

id sub_2237F7C50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2237F7D10()
{
  result = qword_27D09A7E0;
  if (!qword_27D09A7E0)
  {
    sub_223800F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A7E0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2237F7D88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2237F7E00()
{
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F7F14()
{
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F8044()
{
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F8154(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x73736563637573;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (a1 != 4)
  {
    v8 = 0xD000000000000019;
    v7 = 0x80000002238095E0;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7964616572;
  if (a1 != 1)
  {
    v10 = 0x6572676F72506E69;
    v9 = 0xEA00000000007373;
  }

  if (!a1)
  {
    v10 = 0x6669636570736E75;
    v9 = 0xEB00000000646569;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x73736563637573)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6572756C696166)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x80000002238095E0;
      if (v11 != 0xD000000000000019)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x7964616572)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6572676F72506E69;
      v2 = 0xEA00000000007373;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_223801270();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_2237F832C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0xE500000000000000;
    v8 = 0x7964616572;
    if (a1 != 1)
    {
      v8 = 0x6572676F72506E69;
      v7 = 0xEA00000000007373;
    }

    if (a1)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v4 == 5)
    {
      v6 = 0x80000002238095E0;
    }

    else
    {
      v6 = 0x8000000223809780;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6572756C696166;
    }

    v6 = 0xE700000000000000;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v5 != 0x7964616572)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v3 = 0x6572676F72506E69;
      v2 = 0xEA00000000007373;
    }

    if (v5 != v3)
    {
LABEL_43:
      v10 = sub_223801270();
      goto LABEL_44;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v9 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v2 = 0x80000002238095E0;
    }

    else
    {
      v2 = 0x8000000223809780;
    }

    if (v5 != v9)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v5 != 0x73736563637573)
      {
        goto LABEL_43;
      }
    }

    else if (v5 != 0x6572756C696166)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v6 != v2)
  {
    goto LABEL_43;
  }

  v10 = 1;
LABEL_44:

  return v10 & 1;
}

uint64_t sub_2237F8550()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0x73736563637573;
  v4 = 0x6572756C696166;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7964616572;
  if (v1 != 1)
  {
    v5 = 0x6572676F72506E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Announce::StopAnnouncementIntentResponseCode_optional __swiftcall StopAnnouncementIntentResponseCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223801240();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2237F8694()
{
  *v0;
  *v0;
  *v0;
  sub_223801020();
}

void sub_2237F87A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xE700000000000000;
  v6 = 0x73736563637573;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (v2 != 4)
  {
    v8 = 0xD000000000000019;
    v7 = 0x80000002238095E0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7964616572;
  if (v2 != 1)
  {
    v10 = 0x6572676F72506E69;
    v9 = 0xEA00000000007373;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2237F88BC(uint64_t a1)
{
  v2 = sub_2237F9690();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2237F890C(uint64_t a1)
{
  v2 = sub_2237F95EC();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2237F8958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A4F0, &qword_223804938);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A948, &unk_223805AB0);
    v8 = sub_223801230();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2237F0D34(v10, v6, &qword_27D09A4F0, &qword_223804938);
      result = sub_2237E5770(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_223800E70();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2237F8B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A650, &qword_223805378);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A940, &unk_223805AA0);
    v8 = sub_223801230();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2237F0D34(v10, v6, &qword_27D09A650, &qword_223805378);
      result = sub_2237E5840(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_223800E70();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2237F8D28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A6F0, &unk_2238056A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A938, &unk_223805A90);
    v8 = sub_223801230();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2237F0D34(v10, v6, &unk_27D09A6F0, &unk_2238056A8);
      result = sub_2237E5884(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_223800E70();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2237F8F10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A928, &qword_223805A78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A930, &unk_223805A80);
    v8 = sub_223801230();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2237F0D34(v10, v6, &qword_27D09A928, &qword_223805A78);
      result = sub_2237E5930(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_223800E70();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _s8Announce34StopAnnouncementIntentResponseCodeO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A920, &qword_223805A70);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A928, &qword_223805A78);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_223805750;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_223800E60();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_223800E60();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_223800E60();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_223800E60();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_223800E60();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_223800E60();
  v11 = sub_2237F8F10(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v11;
}

unint64_t sub_2237F9324()
{
  result = qword_27D09A8B0;
  if (!qword_27D09A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8B0);
  }

  return result;
}

unint64_t sub_2237F937C()
{
  result = qword_27D09A8B8;
  if (!qword_27D09A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A8C0, &qword_223805800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8B8);
  }

  return result;
}

unint64_t sub_2237F93E4()
{
  result = qword_27D09A8C8;
  if (!qword_27D09A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8C8);
  }

  return result;
}

unint64_t sub_2237F943C()
{
  result = qword_27D09A8D0;
  if (!qword_27D09A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8D0);
  }

  return result;
}

unint64_t sub_2237F9494()
{
  result = qword_27D09A8D8;
  if (!qword_27D09A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8D8);
  }

  return result;
}

unint64_t sub_2237F94EC()
{
  result = qword_27D09A8E0;
  if (!qword_27D09A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8E0);
  }

  return result;
}

unint64_t sub_2237F9540()
{
  result = qword_27D09A8E8;
  if (!qword_27D09A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8E8);
  }

  return result;
}

unint64_t sub_2237F9594()
{
  result = qword_27D09A8F0;
  if (!qword_27D09A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8F0);
  }

  return result;
}

unint64_t sub_2237F95EC()
{
  result = qword_27D09A8F8;
  if (!qword_27D09A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8F8);
  }

  return result;
}

unint64_t sub_2237F9690()
{
  result = qword_27D09A900;
  if (!qword_27D09A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A900);
  }

  return result;
}

unint64_t sub_2237F96E8()
{
  result = qword_27D09A908;
  if (!qword_27D09A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A908);
  }

  return result;
}

unint64_t sub_2237F9740()
{
  result = qword_27D09A910;
  if (!qword_27D09A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A910);
  }

  return result;
}

unint64_t sub_2237F9798()
{
  result = qword_27D09A918;
  if (!qword_27D09A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StopAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StopAnnouncementIntentResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2237F9964@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v79 = a5;
  v83 = sub_223800FA0();
  v85 = *(v83 - 8);
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](v83);
  v81 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v78 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v78 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v78 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v78 - v22;
  v84 = v5;
  v80 = sub_2237F62CC(a3, a4);
  v24 = [v80 unplayedAnnouncements];
  sub_2237FBD04();
  v25 = sub_223801070();

  v90 = v25;
  if (v25 >> 62)
  {
    v33 = sub_223801200();
    v88 = a1;
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_10:
    v34 = [v80 receivedAnnouncements];
    v35 = sub_223801070();

    v32 = v35;
    v90 = v35;
    sub_2237F6C2C(v23);
    v27 = sub_223800F80();
    LOBYTE(v36) = sub_223801110();
    if (!os_log_type_enabled(v27, v36))
    {
      v31 = 64;
      goto LABEL_16;
    }

    v29 = v15;
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    if (v32 >> 62)
    {
      goto LABEL_54;
    }

    v37 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v88 = a1;
  if (!v26)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_2237F6C2C(v21);
  v27 = sub_223800F80();
  v28 = sub_223801110();
  if (!os_log_type_enabled(v27, v28))
  {
    v31 = 128;
    v23 = v21;
    v32 = v25;
    goto LABEL_16;
  }

  v29 = v15;
  v15 = swift_slowAlloc();
  *v15 = 134217984;
  if (v25 >> 62)
  {
    v30 = sub_223801200();
  }

  else
  {
    v30 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v15 + 4) = v30;
  _os_log_impl(&dword_2237C8000, v27, v28, "Unheard Announcements (%ld)", v15, 0xCu);
  v31 = 128;
  v23 = v21;
  v32 = v25;
  while (1)
  {
    MEMORY[0x223DEC5C0](v15, -1, -1);
    v15 = v29;
LABEL_16:

    v29 = (v85 + 8);
    v38 = *(v85 + 8);
    v85 += 8;
    v82 = v38;
    v38(v23, v83);
    *(v84 + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions) = v31;
    if (!a2)
    {
      goto LABEL_24;
    }

    sub_2237F6C2C(v18);

    v39 = sub_223800F80();
    v40 = sub_223801110();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v89[0] = v32;
      *v41 = 136315138;
      v42 = v88;
      *(v41 + 4) = sub_2237EF884(v88, a2, v89);
      _os_log_impl(&dword_2237C8000, v39, v40, "Single Announcement identifier %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223DEC5C0](v32, -1, -1);
      MEMORY[0x223DEC5C0](v41, -1, -1);

      v82(v18, v83);
    }

    else
    {

      v82(v18, v83);
      v42 = v88;
    }

    swift_beginAccess();

    v43 = sub_2237FC1D0(&v90, v42, a2);

    if (!(v90 >> 62))
    {
      v44 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44 < v43)
      {
        break;
      }

      goto LABEL_22;
    }

    v44 = sub_223801200();
    if (v44 < v43)
    {
      break;
    }

LABEL_22:
    sub_2237FC590(v43, v44);
    swift_endAccess();
    v32 = v90;
    if (v90 >> 62)
    {
      goto LABEL_48;
    }

    if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_24:
    if (v32 >> 62)
    {
      v36 = sub_223801200();
    }

    else
    {
      v36 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = MEMORY[0x277D84F90];
    if (!v36)
    {
      goto LABEL_39;
    }

    v89[0] = MEMORY[0x277D84F90];
    v18 = (v36 & ~(v36 >> 63));

    v27 = v89;
    sub_2237FBDF0(0, v18, 0);
    if ((v36 & 0x8000000000000000) == 0)
    {
      v46 = 0;
      v47 = v32;
      v86 = v32 & 0xC000000000000001;
      v87 = v36;
      v45 = v89[0];
      v88 = v32;
      do
      {
        if (v86)
        {
          v48 = MEMORY[0x223DEBB90](v46, v47);
        }

        else
        {
          v48 = *(v47 + 8 * v46 + 32);
        }

        v49 = v48;
        v50 = [v48 announcementID];
        v51 = sub_223800FE0();
        v53 = v52;

        v54 = [v49 audioFileDuration];
        v55 = v54;
        if (v54)
        {
          [v54 doubleValue];
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        v58 = [v49 homeName];
        v59 = sub_223800FE0();
        v61 = v60;

        v89[0] = v45;
        v63 = *(v45 + 16);
        v62 = *(v45 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_2237FBDF0((v62 > 1), v63 + 1, 1);
          v45 = v89[0];
        }

        ++v46;
        *(v45 + 16) = v63 + 1;
        v64 = v45 + 56 * v63;
        *(v64 + 32) = v51;
        *(v64 + 40) = v53;
        *(v64 + 48) = v57;
        *(v64 + 56) = v55 == 0;
        *(v64 + 64) = v59;
        *(v64 + 72) = v61;
        *(v64 + 80) = 0;
        v47 = v88;
      }

      while (v87 != v46);

LABEL_39:
      if (qword_27D09A400 != -1)
      {
        swift_once();
      }

      v65 = off_27D09A5B8;
      swift_beginAccess();
      v66 = v65[2];
      v65[2] = v45;

      sub_2237F6C2C(v81);

      v67 = sub_223800F80();
      v68 = sub_223801110();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        v70 = *(v45 + 16);

        *(v69 + 4) = v70;

        _os_log_impl(&dword_2237C8000, v67, v68, "Created %ld announcement records", v69, 0xCu);
        MEMORY[0x223DEC5C0](v69, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v71 = v79;
      v82(v81, v83);

      v73 = 1;
      goto LABEL_52;
    }

    __break(1u);
LABEL_54:
    v37 = sub_223801200();
LABEL_13:
    *(v15 + 4) = v37;
    _os_log_impl(&dword_2237C8000, v27, v36, "All Announcements (%ld)", v15, 0xCu);
    v31 = 64;
  }

  __break(1u);
LABEL_48:
  if (sub_223801200())
  {
    goto LABEL_24;
  }

LABEL_49:
  sub_2237F6C2C(v15);

  v74 = sub_223800F80();
  v75 = sub_223801110();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v89[0] = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_2237EF884(v42, a2, v89);
    _os_log_impl(&dword_2237C8000, v74, v75, "No announcement found with identifier %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x223DEC5C0](v77, -1, -1);
    MEMORY[0x223DEC5C0](v76, -1, -1);
  }

  v82(v15, v83);

  v71 = v79;
  v73 = 6;
LABEL_52:
  *v71 = v73;
  return result;
}

uint64_t sub_2237FA31C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 131) = a6;
  *(v7 + 130) = a5;
  *(v7 + 129) = a4;
  *(v7 + 56) = a3;
  *(v7 + 64) = v6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  v8 = sub_223800FA0();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237FA404, 0, 0);
}

uint64_t sub_2237FA404()
{
  if (qword_27D09A400 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v1 = off_27D09A5B8;
    swift_beginAccess();
    v2 = v1[2];
    v3 = *(v2 + 16);
    if (!v3)
    {
      v12 = *(v0 + 88);
      v13 = *(v0 + 64);

      sub_2237F6C2C(v12);

      v14 = sub_223800F80();
      v15 = sub_223801110();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        v17 = *(v2 + 16);

        *(v16 + 4) = v17;

        _os_log_impl(&dword_2237C8000, v14, v15, "No announcements to play back. (%ld)", v16, 0xCu);
        MEMORY[0x223DEC5C0](v16, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      v22 = MEMORY[0x277D84F90];
      v23 = 6;
      goto LABEL_37;
    }

    v4 = *(v0 + 129);
    v5 = objc_opt_self();

    v6 = [v5 sharedInstance];
    v7 = [v6 BOOLForDefault_];

    v8 = *(v0 + 64);
    if (v4 != 1)
    {
      break;
    }

    sub_2237F6C2C(*(v0 + 104));

    v9 = sub_223800F80();
    v10 = sub_223801110();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v2 + 16);

      _os_log_impl(&dword_2237C8000, v9, v10, "Requesting playback (CarPlay) for announcements (%ld)", v11, 0xCu);
      MEMORY[0x223DEC5C0](v11, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 80) + 8))(*(v0 + 104), *(v0 + 72));
    v24 = 0;
    v22 = MEMORY[0x277D84F90];
LABEL_14:
    v25 = (v2 + 40 + 56 * v24);
    while (1)
    {
      if (v3 == v24)
      {

        goto LABEL_32;
      }

      if (v24 >= *(v2 + 16))
      {
        break;
      }

      v26 = v25 + 7;
      ++v24;
      v27 = *v25;
      v25 += 7;
      if (v27)
      {
        v28 = *(v26 - 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2237FB9D0(0, *(v22 + 16) + 1, 1, v22);
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v33 = sub_2237FB9D0((v29 > 1), v30 + 1, 1, v22);
          v31 = v30 + 1;
          v22 = v33;
        }

        *(v22 + 16) = v31;
        v32 = v22 + 16 * v30;
        *(v32 + 32) = v28;
        *(v32 + 40) = v27;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

  sub_2237F6C2C(*(v0 + 96));

  v18 = sub_223800F80();
  v19 = sub_223801110();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = *(v2 + 16);

    *(v20 + 4) = v21;

    _os_log_impl(&dword_2237C8000, v18, v19, "Requesting playback for announcements (%ld)", v20, 0xCu);
    MEMORY[0x223DEC5C0](v20, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v34 = *(v0 + 56);
  (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  if (v34)
  {
    v35 = *(v0 + 48);
    v36 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A460, &unk_223805AE0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_223805AC0;
    *(v22 + 32) = v35;
    *(v22 + 40) = v36;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  if (*(v0 + 131) == 1)
  {
    v37 = *(v0 + 64);
    v38 = *(v37 + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions);
    if ((v38 & 0x20) == 0)
    {
      *(v37 + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions) = v38 | 0x20;
    }
  }

  v39 = *(v0 + 56);

LABEL_32:
  *(v0 + 112) = v22;
  if (*(v0 + 130) == 1)
  {
    v40 = swift_task_alloc();
    *(v0 + 120) = v40;
    *v40 = v0;
    v40[1] = sub_2237FA9BC;
    v41 = *(v0 + 64);

    return sub_2237FAB44(v0 + 128, v22, v7);
  }

  v23 = 1;
LABEL_37:
  v44 = *(v0 + 96);
  v43 = *(v0 + 104);
  v45 = *(v0 + 88);
  **(v0 + 40) = v23;

  v46 = *(v0 + 8);

  return v46(v22);
}

uint64_t sub_2237FA9BC()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2237FAAB8, 0, 0);
}

uint64_t sub_2237FAAB8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  **(v0 + 40) = *(v0 + 128);

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_2237FAB44(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = sub_223800FA0();
  *(v4 + 48) = v6;
  v7 = *(v6 - 8);
  *(v4 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237FAC44, 0, 0);
}

uint64_t sub_2237FAC44()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = objc_opt_self();
  v5 = *(v3 + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions);
  v6 = sub_223801060();
  v7 = [v4 playCommandWithOptions:v5 announcementIdentifiers:v6];
  *(v0 + 72) = v7;

  if (v1 == 1)
  {
    v8 = *(v0 + 32);
    sub_2237F6C2C(*(v0 + 64));
    v9 = sub_223800F80();
    v10 = sub_223801110();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2237C8000, v9, v10, "Not waiting for playback to complete. Returning success early.", v11, 2u);
      MEMORY[0x223DEC5C0](v11, -1, -1);
    }

    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);

    (*(v13 + 8))(v12, v15);
    v18 = sub_2238010E0();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v16;
    v19[5] = v7;
    v20 = v16;
    v21 = v7;
    sub_2237FD9AC(0, 0, v14, &unk_223805B70, v19);

    *v17 = 3;
    v22 = *(v0 + 64);
    v23 = *(v0 + 40);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = swift_task_alloc();
    *(v0 + 80) = v26;
    *v26 = v0;
    v26[1] = sub_2237FAF00;
    v27 = *(v0 + 32);
    v28 = *(v0 + 16);

    return sub_2237FB224(v28, v7);
  }
}

uint64_t sub_2237FAF00()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2237FAFFC, 0, 0);
}

uint64_t sub_2237FAFFC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2237FB070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2237FB114;

  return sub_2237FB224(v5 + 24, a5);
}

uint64_t sub_2237FB114()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2237FB210, 0, 0);
}

uint64_t sub_2237FB224(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_223800FA0();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237FB2F4, 0, 0);
}

uint64_t sub_2237FB2F4()
{
  v1 = v0[23];
  v2 = v0[24] + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_endpointIdentifier;
  v3 = *v2;
  v4 = *(v2 + 8);

  v5 = sub_2237F6E84(v3, v4);
  v0[29] = v5;

  v0[2] = v0;
  v0[3] = sub_2237FB448;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9D0, &qword_223804DD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2237F30D4;
  v0[13] = &block_descriptor_4;
  v0[14] = v6;
  [v5 sendPlaybackCommand:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2237FB448()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_2237FB680;
  }

  else
  {
    v3 = sub_2237FB558;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2237FB558()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);

  sub_2237F6C2C(v1);
  v3 = sub_223800F80();
  v4 = sub_223801110();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2237C8000, v3, v4, "Playback Completed", v9, 2u);
    MEMORY[0x223DEC5C0](v9, -1, -1);
  }

  (*(v8 + 8))(v6, v7);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  **(v0 + 176) = 3;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2237FB680()
{
  v28 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  swift_willThrow();

  sub_2237F6C2C(v3);
  v5 = v1;
  v6 = sub_223800F80();
  v7 = sub_223801100();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 208);
    v26 = *(v0 + 216);
    v10 = *(v0 + 200);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = sub_223801290();
    v18 = sub_2237EF884(v16, v17, &v27);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2237C8000, v6, v7, "Playback Error: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DEC5C0](v12, -1, -1);
    MEMORY[0x223DEC5C0](v11, -1, -1);

    (*(v9 + 8))(v26, v10);
  }

  else
  {
    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v21 = *(v0 + 200);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  **(v0 + 176) = 4;

  v24 = *(v0 + 8);

  return v24();
}

id ReadAnnouncementsIntentPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadAnnouncementsIntentPerformer.init()()
{
  *&v0[OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions] = 0;
  v1 = &v0[OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_endpointIdentifier];
  AnnouncementsIntentPerformer = type metadata accessor for ReadAnnouncementsIntentPerformer();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = AnnouncementsIntentPerformer;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ReadAnnouncementsIntentPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadAnnouncementsIntentPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2237FB9D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A460, &unk_223805AE0);
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

char *sub_2237FBADC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A980, qword_223805B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2237FBC00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A970, &qword_223805B58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_2237FBD04()
{
  result = qword_27D09A950;
  if (!qword_27D09A950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D09A950);
  }

  return result;
}

uint64_t sub_2237FBD50(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_223801200();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2238011E0();
  *v1 = result;
  return result;
}

char *sub_2237FBDF0(char *a1, int64_t a2, char a3)
{
  result = sub_2237FBE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2237FBE10(char *a1, int64_t a2, char a3)
{
  result = sub_2237FBF54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2237FBE30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A980, qword_223805B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2237FBF54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A460, &unk_223805AE0);
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

unint64_t sub_2237FC060(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_20:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_223801200();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v18 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DEBB90](v6, a1);
    }

    else
    {
      if (v6 >= *(v17 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 announcementID];
    v11 = sub_223800FE0();
    v13 = v12;

    if (v11 == a2 && v13 == a3)
    {
    }

    else
    {
      v15 = sub_223801270();

      if ((v15 & 1) == 0)
      {
        return v6;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_19;
    }
  }

  return 0;
}

unint64_t sub_2237FC1D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  result = sub_2237FC060(*a1, a2, a3);
  v10 = result;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_223801200();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = 0;
  v32 = a1;
  v11 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v33 = a3;
  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_223801200())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223DEBB90](v11, v7);
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v15 = *(v7 + 8 * v11 + 32);
LABEL_16:
    v16 = v15;
    v17 = [v15 announcementID];
    v18 = sub_223800FE0();
    v20 = v19;

    if (v18 == a2 && v20 == v33)
    {

      if (v10 != v11)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    v22 = sub_223801270();

    if (v22)
    {
      if (v10 != v11)
      {
LABEL_24:
        if ((v7 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x223DEBB90](v10, v7);
          v24 = MEMORY[0x223DEBB90](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v25)
          {
            goto LABEL_52;
          }

          if (v11 >= v25)
          {
            goto LABEL_53;
          }

          v26 = *(v7 + 32 + 8 * v11);
          v23 = *(v7 + 32 + 8 * v10);
          v24 = v26;
        }

        v27 = v24;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_2238008A4(v7);
          v28 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v28) = 0;
        }

        v29 = v7 & 0xFFFFFFFFFFFFFF8;
        v30 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v27;

        if ((v7 & 0x8000000000000000) != 0 || v28)
        {
          v7 = sub_2238008A4(v7);
          v29 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v11 >= *(v29 + 16))
        {
          goto LABEL_50;
        }

        v12 = v29 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v23;

        *v32 = v7;
      }

LABEL_8:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_49;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return sub_223801200();
}

uint64_t sub_2237FC490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2237FBD04();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_223801200();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_223801200();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2237FC590(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_223801200();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_223801200();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2237FBD50(result);

  return sub_2237FC490(v4, v2, 0);
}

uint64_t type metadata accessor for ReadAnnouncementsIntentPerformer()
{
  result = qword_27D09A960;
  if (!qword_27D09A960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ReadAnnouncementsIntentPerformer.performIntent(startAnnouncementIdentifier:isCarPlay:startPlayback:continuePlaying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x277D85000] & *v6) + 0x140);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2237FC8D4;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2237FC8D4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2237FC9E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2237F0BFC;

  return sub_2237FB070(a1, v4, v5, v7, v6);
}

uint64_t sub_2237FCAA8(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 216) = a3;
  *(v4 + 144) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237FCB64, 0, 0);
}

uint64_t sub_2237FCB64()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 144);
    sub_223800F10();
    v3 = sub_223800F40();
    (*(*(v3 - 8) + 48))(v1, 1, v3);
    sub_2237F0360(v1, &unk_27D09A9C0, &qword_223804B08);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = sub_223800F40();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v4, 1, 1, v6);
  v8 = sub_223800F80();
  v9 = sub_223801110();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 216);
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v10;
    _os_log_impl(&dword_2237C8000, v8, v9, "AnnouncePlaybackHelper playing sent tone with Siri audio session ID: %u", v11, 8u);
    MEMORY[0x223DEC5C0](v11, -1, -1);
  }

  v12 = *(v0 + 184);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);

  v15 = sub_2237FD6AC();
  *(v0 + 192) = v15;
  sub_2237F3064(v12, v14);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    v16 = 0;
  }

  else
  {
    v17 = *(v0 + 168);
    v16 = sub_223800F20();
    (*(v7 + 8))(v17, v6);
  }

  *(v0 + 200) = v16;
  v18 = *(v0 + 216);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2237FCE78;
  v19 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9D0, &qword_223804DD0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2237F30D4;
  *(v0 + 104) = &block_descriptor_5;
  *(v0 + 112) = v19;
  [v15 playTone:0 audioSessionID:v18 endpointUUID:v16 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2237FCE78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_2237FD038;
  }

  else
  {
    v3 = sub_2237FCF88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2237FCF88()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[21];
  sub_2237F0360(v0[23], &unk_27D09A9C0, &qword_223804B08);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2237FD038()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  swift_willThrow();
  sub_2237F0360(v3, &unk_27D09A9C0, &qword_223804B08);

  v7 = v0[1];
  v8 = v0[26];

  return v7();
}

id sub_2237FD0F4()
{
  v0 = sub_223800F40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A7D0, "rt");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = &v43 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  if (v22)
  {
    sub_223800F10();
    (*(v1 + 48))(v19, 1, v0);
    sub_2237F0360(v19, &unk_27D09A9C0, &qword_223804B08);
  }

  v23 = *(v1 + 56);
  v23(v21, 1, 1, v0);
  v24 = OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession;
  v25 = v48;
  v26 = *(v48 + OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession);
  if (!v26)
  {
    goto LABEL_14;
  }

  v45 = v26;
  v27 = [v45 endpointIdentifier];
  if (v27)
  {
    v28 = v27;
    sub_223800F30();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v47;
  v23(v16, v29, 1, v0);
  v31 = *(v4 + 48);
  sub_2237F3064(v16, v7);
  sub_2237F3064(v21, &v7[v31]);
  v32 = *(v1 + 48);
  if (v32(v7, 1, v0) == 1)
  {
    sub_2237F0360(v16, &unk_27D09A9C0, &qword_223804B08);
    v33 = v32(&v7[v31], 1, v0);
    v25 = v48;
    if (v33 == 1)
    {
      sub_2237F0360(v7, &unk_27D09A9C0, &qword_223804B08);
LABEL_19:
      sub_2237F0360(v21, &unk_27D09A9C0, &qword_223804B08);
      return v45;
    }

    goto LABEL_13;
  }

  sub_2237F3064(v7, v30);
  if (v32(&v7[v31], 1, v0) == 1)
  {

    sub_2237F0360(v16, &unk_27D09A9C0, &qword_223804B08);
    (*(v1 + 8))(v30, v0);
    v25 = v48;
LABEL_13:
    sub_2237F0360(v7, &unk_27D09A7D0, "rt");
    goto LABEL_14;
  }

  v40 = v44;
  (*(v1 + 32))(v44, &v7[v31], v0);
  sub_2237F7D10();
  v41 = sub_223800FC0();
  v42 = *(v1 + 8);
  v42(v40, v0);
  sub_2237F0360(v16, &unk_27D09A9C0, &qword_223804B08);
  v42(v47, v0);
  sub_2237F0360(v7, &unk_27D09A9C0, &qword_223804B08);
  if (v41)
  {
    goto LABEL_19;
  }

  v25 = v48;
LABEL_14:
  [*(v25 + v24) invalidate];
  v34 = v46;
  sub_2237F3064(v21, v46);
  if ((*(v1 + 48))(v34, 1, v0) == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_223800F20();
    (*(v1 + 8))(v34, v0);
  }

  v36 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier_];

  [v36 setDelegate_];
  sub_2237F0360(v21, &unk_27D09A9C0, &qword_223804B08);
  v37 = *(v25 + v24);
  *(v25 + v24) = v36;
  v38 = v36;

  return v38;
}

id sub_2237FD6AC()
{
  v1 = OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer;
  v2 = *(v0 + OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer);
  }

  else
  {
    v4 = [objc_allocWithZone(ANTonePlayerService) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2237FD750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnnouncePlaybackHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AnnouncePlaybackHelper()
{
  result = qword_27D09A9A8;
  if (!qword_27D09A9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2237FD868()
{
  result = sub_223800FA0();
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

void sub_2237FD904(char *a1)
{
  v2 = OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession;
  v3 = *&a1[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession];
  v4 = a1;
  if (v3)
  {
    [v3 setDelegate_];
    v5 = *&a1[v2];
  }

  else
  {
    v5 = 0;
  }

  *&a1[v2] = 0;
}

uint64_t sub_2237FD9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2238005F0(a3, v27 - v11);
  v13 = sub_2238010E0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_223800660(v12);
  }

  else
  {
    sub_2238010D0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2238010B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_223801000() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_223800660(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223800660(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t (*sub_2237FDC9C(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ANXPCManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_223800A58;
}

id sub_2237FDD40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_2237FDDA4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2237FDDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2237FDE58(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2237FDEB4(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ANXPCManager_checkInProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2237FDF4C;
}

void sub_2237FDF50(uint64_t a1, char a2)
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

void sub_2237FDFD0(char a1)
{
  v3 = *(v1 + OBJC_IVAR___ANXPCManager_lock);
  [v3 lock];
  *(v1 + OBJC_IVAR___ANXPCManager__needsCheckIn) = a1;
  [v3 unlock];
  oslog = sub_223800F80();
  v4 = sub_223801110();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_2237C8000, oslog, v4, "Needs Check in = %{BOOL}d", v5, 8u);
    MEMORY[0x223DEC5C0](v5, -1, -1);
  }
}

id XPCManager.__allocating_init(machServiceName:remoteObjectInterface:exportedInterface:exportedObject:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v23 = a2;
  v9 = sub_223800FA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14[OBJC_IVAR___ANXPCManager__needsCheckIn] = 1;
  *&v14[OBJC_IVAR___ANXPCManager__connection] = 0;
  swift_unknownObjectWeakInit();
  sub_223800F90();
  (*(v10 + 32))(&v14[OBJC_IVAR___ANXPCManager_logger], v13, v9);
  v14[OBJC_IVAR___ANXPCManager_isConnectionValid] = 0;
  *&v14[OBJC_IVAR___ANXPCManager_notifyRegisterToken] = -1;
  *&v14[OBJC_IVAR___ANXPCManager_checkInObservers] = MEMORY[0x277D84F90];
  v15 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&v14[OBJC_IVAR___ANXPCManager_lock] = v15;
  v16 = &v14[OBJC_IVAR___ANXPCManager_machServiceName];
  v17 = v23;
  *v16 = a1;
  v16[1] = v17;
  *&v14[OBJC_IVAR___ANXPCManager_remoteObjectInterface] = a3;
  *&v14[OBJC_IVAR___ANXPCManager_exportedInterface] = a4;
  swift_unknownObjectWeakAssign();
  v24.receiver = v14;
  v24.super_class = v5;
  v18 = a3;
  v19 = a4;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  sub_2237FDFD0(1);
  sub_2237FE604();

  swift_unknownObjectRelease();
  return v20;
}

id XPCManager.init(machServiceName:remoteObjectInterface:exportedInterface:exportedObject:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = sub_223800FA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR___ANXPCManager__needsCheckIn] = 1;
  *&v4[OBJC_IVAR___ANXPCManager__connection] = 0;
  swift_unknownObjectWeakInit();
  sub_223800F90();
  (*(v10 + 32))(&v4[OBJC_IVAR___ANXPCManager_logger], v13, v9);
  v4[OBJC_IVAR___ANXPCManager_isConnectionValid] = 0;
  *&v4[OBJC_IVAR___ANXPCManager_notifyRegisterToken] = -1;
  *&v4[OBJC_IVAR___ANXPCManager_checkInObservers] = MEMORY[0x277D84F90];
  v14 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&v4[OBJC_IVAR___ANXPCManager_lock] = v14;
  v15 = &v4[OBJC_IVAR___ANXPCManager_machServiceName];
  *v15 = a1;
  v15[1] = a2;
  *&v4[OBJC_IVAR___ANXPCManager_remoteObjectInterface] = a3;
  *&v4[OBJC_IVAR___ANXPCManager_exportedInterface] = a4;
  swift_unknownObjectWeakAssign();
  v16 = type metadata accessor for XPCManager();
  v21.receiver = v4;
  v21.super_class = v16;
  v17 = a3;
  v18 = a4;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_2237FDFD0(1);
  sub_2237FE604();

  swift_unknownObjectRelease();
  return v19;
}

void sub_2237FE604()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR___ANXPCManager_notifyRegisterToken;
  if (*(v0 + OBJC_IVAR___ANXPCManager_notifyRegisterToken) == -1)
  {
    v2 = v0;
    out_token = -1;
    sub_223800FE0();
    sub_2238004E8();
    v3 = sub_223801120();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[4] = sub_223800534;
    v9[5] = v4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_2237FF43C;
    v9[3] = &block_descriptor_30;
    v5 = _Block_copy(v9);

    v6 = sub_223801000();

    v7 = notify_register_dispatch((v6 + 32), &out_token, v3, v5);

    _Block_release(v5);

    if (!v7)
    {
      *(v2 + v1) = out_token;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t type metadata accessor for XPCManager()
{
  result = qword_280FB28B8;
  if (!qword_280FB28B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id XPCManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___ANXPCManager__connection];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for XPCManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2237FEA1C()
{
  v1 = *(v0 + OBJC_IVAR___ANXPCManager_lock);
  [v1 lock];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09AA08, &qword_223805BD0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2 = OBJC_IVAR___ANXPCManager_checkInObservers;
  v3 = swift_beginAccess();
  MEMORY[0x223DEBA10](v3);
  if (*((*(v0 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*(v0 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_223801090();
  }

  sub_2238010A0();
  swift_endAccess();
  return [v1 unlock];
}

id sub_2237FEBE0()
{
  v1 = v0;
  v2 = OBJC_IVAR___ANXPCManager__connection;
  v3 = *&v0[OBJC_IVAR___ANXPCManager__connection];
  if (v3 && v0[OBJC_IVAR___ANXPCManager_isConnectionValid] == 1)
  {

    return v3;
  }

  else
  {
    v5 = v0;
    v6 = sub_223800F80();
    v7 = sub_223801110();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2237EF884(*&v5[OBJC_IVAR___ANXPCManager_machServiceName], *&v5[OBJC_IVAR___ANXPCManager_machServiceName + 8], &v21);
      _os_log_impl(&dword_2237C8000, v6, v7, "Creating connection for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DEC5C0](v9, -1, -1);
      MEMORY[0x223DEC5C0](v8, -1, -1);
    }

    v10 = *&v5[OBJC_IVAR___ANXPCManager_machServiceName];
    v11 = *&v5[OBJC_IVAR___ANXPCManager_machServiceName + 8];
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_223800FD0();
    v14 = [v12 initWithMachServiceName:v13 options:4096];

    [v14 setRemoteObjectInterface_];
    [v14 setExportedInterface_];
    [v14 setExportedObject_];
    swift_unknownObjectRelease();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = sub_2237FF0C4;
    v26 = v15;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2237FF0CC;
    v24 = &block_descriptor_6;
    v16 = _Block_copy(&v21);

    [v14 setInterruptionHandler_];
    _Block_release(v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = sub_2237FF210;
    v26 = v17;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2237FF0CC;
    v24 = &block_descriptor_4;
    v18 = _Block_copy(&v21);

    [v14 setInvalidationHandler_];
    _Block_release(v18);
    sub_2237FE604();
    sub_2237FDFD0(0);
    [v14 resume];
    v5[OBJC_IVAR___ANXPCManager_isConnectionValid] = 1;
    v19 = *&v1[v2];
    *&v1[v2] = v14;
    v20 = v14;

    return v20;
  }
}

void sub_2237FEF9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_223800F80();
    v3 = sub_223801110();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2237C8000, v2, v3, "Connection to daemon was interrupted", v4, 2u);
      MEMORY[0x223DEC5C0](v4, -1, -1);
    }

    sub_2237FDFD0(1);
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 managerDidInterruptConnection_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_2237FF0CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2237FF128()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_223800F80();
    v3 = sub_223801110();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2237C8000, v2, v3, "Connection to daemon was invalidated", v4, 2u);
      MEMORY[0x223DEC5C0](v4, -1, -1);
    }

    sub_2237FDFD0(1);
    v1[OBJC_IVAR___ANXPCManager_isConnectionValid] = 0;
  }
}

id XPCManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2237FF2AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___ANXPCManager_lock);
    [v6 lock];
    v7 = v5[OBJC_IVAR___ANXPCManager__needsCheckIn];
    [v6 unlock];
    if (v7 == 1)
    {
      v8 = sub_2238010E0();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v9;
      sub_2237FD9AC(0, 0, v3, &unk_223805C70, v10);
    }
  }
}

uint64_t sub_2237FF43C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2237FF4B0()
{
  v27 = v0;
  v1 = v0[28];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v0[30] = OBJC_IVAR___ANXPCManager_logger;
    v3 = sub_223800F80();
    v4 = sub_223801110();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2237C8000, v3, v4, "Checking in with daemon...", v5, 2u);
      MEMORY[0x223DEC5C0](v5, -1, -1);
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    v0[31] = v6;
    if (v6)
    {
      v7 = v6;
      v0[2] = v0;
      v0[3] = sub_2237FF810;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9D0, &qword_223804DD0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2237F30D4;
      v0[13] = &block_descriptor_48;
      v0[14] = v8;
      [v7 checkInWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    sub_223800838();
    v9 = swift_allocError();
    swift_willThrow();
    v11 = v0[29];
    v10 = v0[30];
    v12 = v9;
    v13 = sub_223800F80();
    v14 = sub_223801100();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v18 = v0[24];
      v17 = v0[25];
      v19 = v0[26];
      v20 = sub_223801290();
      v22 = sub_2237EF884(v20, v21, &v26);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_2237C8000, v13, v14, "Failed to check in with daemon: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DEC5C0](v16, -1, -1);
      MEMORY[0x223DEC5C0](v15, -1, -1);
    }

    v23 = v0[29];
    sub_2237FDFD0(1);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2237FF810()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_2237FFA50;
  }

  else
  {
    v3 = sub_2237FF920;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2237FF920()
{
  v1 = v0[29] + v0[30];
  v2 = sub_223800F80();
  v3 = sub_223801110();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2237C8000, v2, v3, "Checked in with daemon", v4, 2u);
    MEMORY[0x223DEC5C0](v4, -1, -1);
  }

  v5 = v0[31];
  v6 = v0[29];

  sub_2237FDFD0(0);
  v7 = *&v6[OBJC_IVAR___ANXPCManager_lock];
  [v7 lock];
  sub_2237FFBDC(v6);
  [v7 unlock];
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2237FFA50()
{
  v21 = v0;
  v1 = v0[31];
  v2 = v0[32];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v3;
  v7 = sub_223800F80();
  v8 = sub_223801100();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[26];
    v14 = sub_223801290();
    v16 = sub_2237EF884(v14, v15, &v20);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2237C8000, v7, v8, "Failed to check in with daemon: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DEC5C0](v10, -1, -1);
    MEMORY[0x223DEC5C0](v9, -1, -1);
  }

  v17 = v0[29];
  sub_2237FDFD0(1);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2237FFBDC(uint64_t a1)
{
  v2 = OBJC_IVAR___ANXPCManager_checkInObservers;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_223801200())
  {

    if (i)
    {
      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      do
      {
        v8 = v6;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DEBB90](v8, v3);
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v8 >= *(v4 + 16))
            {
              goto LABEL_28;
            }

            v9 = *(v3 + 8 * v8 + 32);

            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_27;
            }
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            break;
          }

          [Strong managerDidPerformDaemonCheckIn_];
          swift_unknownObjectRelease();

          ++v8;
          if (v6 == i)
          {
            goto LABEL_22;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2237FBC00(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_2237FBC00((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        *&v7[8 * v12 + 32] = v8;
      }

      while (v6 != i);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

LABEL_22:

    v13 = *(v7 + 2);
    if (!v13)
    {
      break;
    }

    while (v13 <= *(v7 + 2))
    {
      v4 = v13 - 1;
      v14 = *&v7[8 * v13 + 24];
      v15 = sub_2237FE0D0();
      v3 = v16;
      sub_2237FFE10(v14);

      (v15)(v18, 0);
      v13 = v4;
      if (!v4)
      {
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }
}

uint64_t sub_2237FFE10(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2238008A8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2237FFEA8()
{
  sub_2238012E0();
  MEMORY[0x223DEBCB0](0);
  return sub_223801300();
}

uint64_t sub_2237FFF14()
{
  sub_2238012E0();
  MEMORY[0x223DEBCB0](0);
  return sub_223801300();
}

uint64_t sub_2237FFF7C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223800074;

  return v7(a1);
}

uint64_t sub_223800074()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_223800224()
{
  result = sub_223800FA0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_2238004E8()
{
  result = qword_280FB28B0;
  if (!qword_280FB28B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FB28B0);
  }

  return result;
}

uint64_t sub_22380053C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2237F0BFC;

  return sub_2237FF490(a1, v4, v5, v6);
}

uint64_t sub_2238005F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223800660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2238006C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2237F0E1C;

  return sub_2237FFF7C(a1, v5);
}

uint64_t sub_223800780(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2237F0BFC;

  return sub_2237FFF7C(a1, v5);
}

unint64_t sub_223800838()
{
  result = qword_27D09AA10;
  if (!qword_27D09AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09AA10);
  }

  return result;
}

uint64_t sub_2238008A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_223801200();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2238011E0();
}

uint64_t getEnumTagSinglePayload for XPCManager.XPCManagerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for XPCManager.XPCManagerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2238009F4()
{
  result = qword_27D09AA18;
  if (!qword_27D09AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09AA18);
  }

  return result;
}