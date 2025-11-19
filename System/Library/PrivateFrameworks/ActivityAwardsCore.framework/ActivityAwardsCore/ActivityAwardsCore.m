id ActivityAwardsQuery.init(initialAwardsHandler:addedAwardsHandler:removedAwardsHandler:updatedAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection] = 0;
  v17 = sub_227781E28();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_lock] = sub_227781E18();
  v20 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_initialAwardsHandler];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_addedAwardsHandler];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_removedAwardsHandler];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_updatedAwardsHandler];
  *v23 = a7;
  *(v23 + 1) = a8;
  v25.receiver = v8;
  v25.super_class = type metadata accessor for ActivityAwardsQuery();
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_22776D974()
{
  v1 = v0;
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781ED8();
  v7 = sub_227781EF8();
  v8 = sub_227782008();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22776C000, v7, v8, "[ActivityAwardsQuery] activate", v9, 2u);
    MEMORY[0x22AA9AED0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *MEMORY[0x277CE8DD0];
  v11 = sub_227781F28();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  sub_22776DB68(v11, v13, sub_22776E914, v14);
}

uint64_t sub_22776DB30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22776DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v13 = [objc_opt_self() interfaceWithProtocol_];
  [v12 setRemoteObjectInterface_];

  v38 = sub_2277718CC;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C098;
  v37 = &block_descriptor_85;
  v14 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler_];
  _Block_release(v14);
  v38 = sub_2277718D0;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C098;
  v37 = &block_descriptor_88;
  v15 = _Block_copy(&aBlock);
  [v12 setInterruptionHandler_];
  _Block_release(v15);
  [v12 resume];
  v38 = sub_2277718D4;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C0DC;
  v37 = &block_descriptor_91;
  v16 = _Block_copy(&aBlock);
  v17 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v33, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v18 = v32;
    v19 = sub_227781F18();
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = a1;
    v21 = v30;
    v22 = v31;
    v20[4] = a2;
    v20[5] = v21;
    v20[6] = v22;
    v38 = sub_22776E168;
    v39 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_22776E0DC;
    v37 = &block_descriptor_97;
    v23 = _Block_copy(&aBlock);
    v24 = v4;

    [v18 createEndpointNamed:v19 completion:v23];
    _Block_release(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v25 = sub_227781EF8();
    v26 = sub_227782008();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22776C000, v25, v26, "Proxy does not conform to endpoint interface", v27, 2u);
      MEMORY[0x22AA9AED0](v27, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22776E030(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void sub_22776E0DC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_22776E198(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v45 = a7;
  v13 = sub_227781F08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x28223BE20])();
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  if (a1)
  {
    v44 = a6;
    v46 = v13;
    v21 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v22 = a1;
    v23 = [v21 initWithListenerEndpoint_];
    v24 = AACTransportInterface();
    [v23 setExportedInterface_];

    v25 = AACTransportInterface();
    [v23 setRemoteObjectInterface_];

    [v23 setExportedObject_];
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v51 = sub_227777E9C;
    v52 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22777C098;
    v50 = &block_descriptor_104;
    v27 = _Block_copy(&aBlock);

    [v23 setInvalidationHandler_];
    _Block_release(v27);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v51 = sub_227777EA0;
    v52 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22777C098;
    v50 = &block_descriptor_111;
    v29 = _Block_copy(&aBlock);

    [v23 setInterruptionHandler_];
    _Block_release(v29);
    [v23 resume];
    sub_227781EC8();

    v30 = sub_227781EF8();
    v31 = sub_227782008();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v30, v31, "XPC endpoint connection setup complete for %{public}s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9AED0](v33, -1, -1);
      MEMORY[0x22AA9AED0](v32, -1, -1);
    }

    (*(v14 + 8))(v20, v46);
    v44(v23);
  }

  else
  {
    sub_227781EC8();

    v34 = a2;
    v35 = sub_227781EF8();
    v36 = sub_227781FF8();

    if (os_log_type_enabled(v35, v36))
    {
      v46 = v13;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v37 = 136446466;
      *(v37 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v37 + 12) = 2114;
      if (a2)
      {
        v40 = a2;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = v41;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      *(v37 + 14) = v41;
      *v38 = v42;
      _os_log_impl(&dword_22776C000, v35, v36, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v37, 0x16u);
      sub_227776718(v38);
      MEMORY[0x22AA9AED0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9AED0](v39, -1, -1);
      MEMORY[0x22AA9AED0](v37, -1, -1);

      (*(v14 + 8))(v18, v46);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }
}

uint64_t sub_22776E6FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22776E73C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22776E808(v11, 0, 0, 1, a1, a2);
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
    sub_22776E030(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22776E808(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2277816BC(a5, a6);
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
    result = sub_227782058();
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

uint64_t sub_22776E980(char *a1, void *a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = *&a1[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection];
  *&a1[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection] = a2;
  v15 = a2;

  aBlock[4] = sub_2277792E8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777C0DC;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);
  v17 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_227782018();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  if (swift_dynamicCast())
  {
    v18 = aBlock[7];
    sub_227781FC8();
    v19 = sub_227781FE8();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = a1;
    swift_unknownObjectRetain();
    v21 = a1;
    sub_22777E970(0, 0, v13, &unk_227782CA0, v20);

    aBlock[0] = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = swift_allocObject();
    v43 = v2;
    *(v23 + 16) = sub_227779A28;
    *(v23 + 24) = v22;
    type metadata accessor for ActivityAwardsQuery();
    sub_227781EB8();
    sub_22776F040(&qword_280DD11C8, v24, type metadata accessor for ActivityAwardsQuery);
    v25 = v21;
    sub_227781E48();

    aBlock[0] = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_227779A4C;
    *(v27 + 24) = v26;
    v28 = v25;
    sub_227781E48();

    aBlock[0] = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_227770218;
    *(v30 + 24) = v29;
    v31 = v28;
    sub_227781E48();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v33 = sub_227781EF8();
    v34 = sub_227782008();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136446210;
      v37 = *MEMORY[0x277CE8DD0];
      v38 = sub_227781F28();
      v40 = sub_22776E73C(v38, v39, aBlock);
      v43 = v5;
      v41 = v40;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_22776C000, v33, v34, "XPC client-side connection failed to get expected proxy type for %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      MEMORY[0x22AA9AED0](v35, -1, -1);

      return (*(v6 + 8))(v9, v43);
    }

    else
    {

      return (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t sub_22776EF50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22776EF98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

uint64_t sub_22776F040(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22776F09C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FF20;

  return sub_22776F15C(a1, v4, v5, v7, v6);
}

uint64_t sub_22776F15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = a5;
  return MEMORY[0x2822009F8](sub_22776F17C, 0, 0);
}

uint64_t sub_22776F17C()
{
  v0[10] = 1;
  v1 = sub_227781E58();
  v0[22] = 0;
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v5 = v2;
    v3 = sub_227781DD8();
    sub_22776F3A4(v4, v5);
  }

  v0[23] = v3;
  v6 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22777051C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2277702B4;
  v0[13] = &block_descriptor_38;
  v0[14] = v7;
  [v6 transportRequest:2 data:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22776F3A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22776F3B8(a1, a2);
  }

  return a1;
}

uint64_t sub_22776F3B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22776F5A8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22776F5F8(uint64_t a1, const char *a2, void *a3)
{
  v6 = v3;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781ED8();

  v12 = sub_227781EF8();
  v13 = sub_227782008();
  if (os_log_type_enabled(v12, v13))
  {
    v22 = a3;
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = sub_227781E98();
    if (v15 >> 62)
    {
      v21 = v15;
      v16 = sub_227782068();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    _os_log_impl(&dword_22776C000, v12, v13, a2, v14, 0xCu);
    MEMORY[0x22AA9AED0](v14, -1, -1);

    a3 = v22;
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
  v17 = v6 + *a3;
  v19 = *v17;
  v18 = *(v17 + 8);
  sub_227781E98();
  v19();
}

uint64_t sub_22776F7F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22776F858(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22776FD64;

  return sub_22776FAB8(a1, v5);
}

uint64_t sub_22776F910()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22776FF20;

  return sub_227770014(v2, v3, v5, v4);
}

uint64_t sub_22776F9D0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22776FD64;

  return v7();
}

uint64_t sub_22776FAB8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22776FE28;

  return v7(a1);
}

uint64_t sub_22776FBB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22776FF20;

  return v8();
}

uint64_t sub_22776FC98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FD64;

  return sub_22776FBB0(a1, v4, v5, v7);
}

uint64_t sub_22776FD68()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22776FD64;

  return sub_22776F9D0(v2, v3, v5);
}

uint64_t sub_22776FE28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22776FF20()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227770014(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;
    v8 = a4;
    v9 = sub_227781DE8();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v4[5] = v9;
  v4[6] = v11;

  return MEMORY[0x2822009F8](sub_2277700CC, 0, 0);
}

uint64_t sub_2277700CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *&v4[OBJC_IVAR____TtC18ActivityAwardsCore9BaseQuery_transportDispatchService];
  v6 = sub_227781E68();
  v8 = v7;

  sub_22776F3A4(v2, v1);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = sub_227781DD8();
    sub_22776F3A4(v6, v8);
    v9 = v11;
    v10 = v11;
  }

  v12 = v0[4];
  v12[2](v12, v9, 0);

  _Block_release(v12);
  v13 = v0[1];

  return v13();
}

uint64_t sub_227770248(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2277702B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE530, &unk_227782BC8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_227781DE8();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2277703AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22777062C(a1, a2);
  }

  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_227770404()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  v4 = sub_227781EA8();
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  else
  {
    v7 = *(v0 + 168);
    sub_227770680(v4);
  }

  sub_22776F3A4(v2, v3);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22777051C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_227779490;
  }

  else
  {
    v3 = sub_227770404;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22777062C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_227770754(uint64_t a1)
{
  type metadata accessor for ActivityAwardsQuery();
  sub_22776F040(&qword_280DD11C8, v2, type metadata accessor for ActivityAwardsQuery);
  sub_227781E38();
  sub_227781E38();
  sub_227781E38();
  return [*(a1 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection) invalidate];
}

uint64_t sub_22777084C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2277708BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2277708F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22777093C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2277709A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2277709DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227770A2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227770A68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227770AB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id BaseQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseQuery.init()()
{
  v1 = sub_227781E88();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC18ActivityAwardsCore9BaseQuery_transportDispatchService] = sub_227781E78();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BaseQuery();
  return objc_msgSendSuper2(&v5, sel_init);
}

id BaseQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BaseQuery.transportRequest(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_227770C30, 0, 0);
}

uint64_t sub_227770C30()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0[5] + OBJC_IVAR____TtC18ActivityAwardsCore9BaseQuery_transportDispatchService);
  v5 = sub_227781E68();
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_227770DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_227771268(a3, v25 - v11);
  v13 = sub_227781FE8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22776F7F0(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_227781FD8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_227781F98();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_227781F38() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_22776F7F0(a3);

    return v23;
  }

LABEL_8:
  sub_22776F7F0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _s18ActivityAwardsCore9BaseQueryC14transportEvent_4dataySo16AACTransportItemV_10Foundation4DataVSgtF_0(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EE8();
  v7 = sub_227781EF8();
  v8 = sub_227781FF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    v11 = sub_227782158();
    v13 = sub_22776E73C(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = a1;
    _os_log_impl(&dword_22776C000, v7, v8, "Unexpectedly received a transport event for query %s with item: %lu", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9AED0](v10, -1, -1);
    MEMORY[0x22AA9AED0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
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

uint64_t sub_227771268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2277712D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22776FF20;

  return sub_22776FAB8(a1, v5);
}

void type metadata accessor for AACTransportItem()
{
  if (!qword_27D7CE428)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7CE428);
    }
  }
}

uint64_t sub_22777141C(const char *a1)
{
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v7 = sub_227781EF8();
  v8 = sub_227782008();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22776C000, v7, v8, a1, v9, 2u);
    MEMORY[0x22AA9AED0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227771558(void *a1)
{
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v7 = a1;
  v8 = sub_227781EF8();
  v9 = sub_227781FF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_2277820D8();
    v14 = sub_22776E73C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22776C000, v8, v9, "Error setting up proxy; unable to obtain query endpoint: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9AED0](v11, -1, -1);
    MEMORY[0x22AA9AED0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227771724(uint64_t a1, unint64_t a2, const char *a3)
{
  v6 = sub_227781F08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();

  v11 = sub_227781EF8();
  v12 = sub_227782008();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_22776E73C(a1, a2, &v17);
    _os_log_impl(&dword_22776C000, v11, v12, a3, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9AED0](v14, -1, -1);
    MEMORY[0x22AA9AED0](v13, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t QueryError.hashValue.getter()
{
  v1 = *v0;
  sub_227782128();
  MEMORY[0x22AA9AA40](v1);
  return sub_227782148();
}

uint64_t sub_22777197C()
{
  v1 = *v0;
  sub_227782128();
  MEMORY[0x22AA9AA40](v1);
  return sub_227782148();
}

uint64_t sub_2277719F0()
{
  v1 = *v0;
  sub_227782128();
  MEMORY[0x22AA9AA40](v1);
  return sub_227782148();
}

unint64_t sub_227771A38()
{
  result = qword_27D7CE490;
  if (!qword_27D7CE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_227771C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v13 = [objc_opt_self() interfaceWithProtocol_];
  [v12 setRemoteObjectInterface_];

  v38 = sub_2277718CC;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C098;
  v37 = &block_descriptor_117;
  v14 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler_];
  _Block_release(v14);
  v38 = sub_2277718D0;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C098;
  v37 = &block_descriptor_120;
  v15 = _Block_copy(&aBlock);
  [v12 setInterruptionHandler_];
  _Block_release(v15);
  [v12 resume];
  v38 = sub_2277718D4;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C0DC;
  v37 = &block_descriptor_123;
  v16 = _Block_copy(&aBlock);
  v17 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v33, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v18 = v32;
    v19 = sub_227781F18();
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = a1;
    v21 = v30;
    v22 = v31;
    v20[4] = a2;
    v20[5] = v21;
    v20[6] = v22;
    v38 = sub_2277767A8;
    v39 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_22776E0DC;
    v37 = &block_descriptor_129;
    v23 = _Block_copy(&aBlock);
    v24 = v4;

    [v18 createEndpointNamed:v19 completion:v23];
    _Block_release(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v25 = sub_227781EF8();
    v26 = sub_227782008();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22776C000, v25, v26, "Proxy does not conform to endpoint interface", v27, 2u);
      MEMORY[0x22AA9AED0](v27, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t sub_2277720B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v13 = [objc_opt_self() interfaceWithProtocol_];
  [v12 setRemoteObjectInterface_];

  v38 = sub_2277718CC;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C098;
  v37 = &block_descriptor_56;
  v14 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler_];
  _Block_release(v14);
  v38 = sub_2277718D0;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C098;
  v37 = &block_descriptor_59;
  v15 = _Block_copy(&aBlock);
  [v12 setInterruptionHandler_];
  _Block_release(v15);
  [v12 resume];
  v38 = sub_2277718D4;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C0DC;
  v37 = &block_descriptor_62;
  v16 = _Block_copy(&aBlock);
  v17 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v33, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v18 = v32;
    v19 = sub_227781F18();
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = a1;
    v21 = v30;
    v22 = v31;
    v20[4] = a2;
    v20[5] = v21;
    v20[6] = v22;
    v38 = sub_227776790;
    v39 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_22776E0DC;
    v37 = &block_descriptor_68;
    v23 = _Block_copy(&aBlock);
    v24 = v4;

    [v18 createEndpointNamed:v19 completion:v23];
    _Block_release(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v25 = sub_227781EF8();
    v26 = sub_227782008();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22776C000, v25, v26, "Proxy does not conform to endpoint interface", v27, 2u);
      MEMORY[0x22AA9AED0](v27, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t sub_227772550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v13 = [objc_opt_self() interfaceWithProtocol_];
  [v12 setRemoteObjectInterface_];

  v38 = sub_2277718CC;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C098;
  v37 = &block_descriptor_29;
  v14 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler_];
  _Block_release(v14);
  v38 = sub_2277718D0;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C098;
  v37 = &block_descriptor_32;
  v15 = _Block_copy(&aBlock);
  [v12 setInterruptionHandler_];
  _Block_release(v15);
  [v12 resume];
  v38 = sub_2277718D4;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22777C0DC;
  v37 = &block_descriptor_35;
  v16 = _Block_copy(&aBlock);
  v17 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v33, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v18 = v32;
    v19 = sub_227781F18();
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = a1;
    v21 = v30;
    v22 = v31;
    v20[4] = a2;
    v20[5] = v21;
    v20[6] = v22;
    v38 = sub_22777656C;
    v39 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_22776E0DC;
    v37 = &block_descriptor_41;
    v23 = _Block_copy(&aBlock);
    v24 = v4;

    [v18 createEndpointNamed:v19 completion:v23];
    _Block_release(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v25 = sub_227781EF8();
    v26 = sub_227782008();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22776C000, v25, v26, "Proxy does not conform to endpoint interface", v27, 2u);
      MEMORY[0x22AA9AED0](v27, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

void sub_2277729F0(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v45 = a7;
  v13 = sub_227781F08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  if (a1)
  {
    v44 = a6;
    v46 = v13;
    v21 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v22 = a1;
    v23 = [v21 initWithListenerEndpoint_];
    v24 = AACTransportInterface();
    [v23 setExportedInterface_];

    v25 = AACTransportInterface();
    [v23 setRemoteObjectInterface_];

    [v23 setExportedObject_];
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v51 = sub_227777E9C;
    v52 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22777C098;
    v50 = &block_descriptor_136;
    v27 = _Block_copy(&aBlock);

    [v23 setInvalidationHandler_];
    _Block_release(v27);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v51 = sub_227777EA0;
    v52 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22777C098;
    v50 = &block_descriptor_143;
    v29 = _Block_copy(&aBlock);

    [v23 setInterruptionHandler_];
    _Block_release(v29);
    [v23 resume];
    sub_227781EC8();

    v30 = sub_227781EF8();
    v31 = sub_227782008();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v30, v31, "XPC endpoint connection setup complete for %{public}s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9AED0](v33, -1, -1);
      MEMORY[0x22AA9AED0](v32, -1, -1);
    }

    (*(v14 + 8))(v20, v46);
    v44(v23);
  }

  else
  {
    sub_227781EC8();

    v34 = a2;
    v35 = sub_227781EF8();
    v36 = sub_227781FF8();

    if (os_log_type_enabled(v35, v36))
    {
      v46 = v13;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v37 = 136446466;
      *(v37 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v37 + 12) = 2114;
      if (a2)
      {
        v40 = a2;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = v41;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      *(v37 + 14) = v41;
      *v38 = v42;
      _os_log_impl(&dword_22776C000, v35, v36, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v37, 0x16u);
      sub_227776718(v38);
      MEMORY[0x22AA9AED0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9AED0](v39, -1, -1);
      MEMORY[0x22AA9AED0](v37, -1, -1);

      (*(v14 + 8))(v18, v46);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }
}

void sub_227772F54(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v45 = a7;
  v13 = sub_227781F08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  if (a1)
  {
    v44 = a6;
    v46 = v13;
    v21 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v22 = a1;
    v23 = [v21 initWithListenerEndpoint_];
    v24 = AACTransportInterface();
    [v23 setExportedInterface_];

    v25 = AACTransportInterface();
    [v23 setRemoteObjectInterface_];

    [v23 setExportedObject_];
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v51 = sub_227777E9C;
    v52 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22777C098;
    v50 = &block_descriptor_75;
    v27 = _Block_copy(&aBlock);

    [v23 setInvalidationHandler_];
    _Block_release(v27);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v51 = sub_227777EA0;
    v52 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22777C098;
    v50 = &block_descriptor_82;
    v29 = _Block_copy(&aBlock);

    [v23 setInterruptionHandler_];
    _Block_release(v29);
    [v23 resume];
    sub_227781EC8();

    v30 = sub_227781EF8();
    v31 = sub_227782008();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v30, v31, "XPC endpoint connection setup complete for %{public}s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9AED0](v33, -1, -1);
      MEMORY[0x22AA9AED0](v32, -1, -1);
    }

    (*(v14 + 8))(v20, v46);
    v44(v23);
  }

  else
  {
    sub_227781EC8();

    v34 = a2;
    v35 = sub_227781EF8();
    v36 = sub_227781FF8();

    if (os_log_type_enabled(v35, v36))
    {
      v46 = v13;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v37 = 136446466;
      *(v37 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v37 + 12) = 2114;
      if (a2)
      {
        v40 = a2;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = v41;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      *(v37 + 14) = v41;
      *v38 = v42;
      _os_log_impl(&dword_22776C000, v35, v36, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v37, 0x16u);
      sub_227776718(v38);
      MEMORY[0x22AA9AED0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9AED0](v39, -1, -1);
      MEMORY[0x22AA9AED0](v37, -1, -1);

      (*(v14 + 8))(v18, v46);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }
}

void sub_2277734B8(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v45 = a7;
  v13 = sub_227781F08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  if (a1)
  {
    v44 = a6;
    v46 = v13;
    v21 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v22 = a1;
    v23 = [v21 initWithListenerEndpoint_];
    v24 = AACTransportInterface();
    [v23 setExportedInterface_];

    v25 = AACTransportInterface();
    [v23 setRemoteObjectInterface_];

    [v23 setExportedObject_];
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v51 = sub_227776780;
    v52 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22777C098;
    v50 = &block_descriptor_47;
    v27 = _Block_copy(&aBlock);

    [v23 setInvalidationHandler_];
    _Block_release(v27);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v51 = sub_227776788;
    v52 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22777C098;
    v50 = &block_descriptor_53;
    v29 = _Block_copy(&aBlock);

    [v23 setInterruptionHandler_];
    _Block_release(v29);
    [v23 resume];
    sub_227781EC8();

    v30 = sub_227781EF8();
    v31 = sub_227782008();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v30, v31, "XPC endpoint connection setup complete for %{public}s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9AED0](v33, -1, -1);
      MEMORY[0x22AA9AED0](v32, -1, -1);
    }

    (*(v14 + 8))(v20, v46);
    v44(v23);
  }

  else
  {
    sub_227781EC8();

    v34 = a2;
    v35 = sub_227781EF8();
    v36 = sub_227781FF8();

    if (os_log_type_enabled(v35, v36))
    {
      v46 = v13;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v37 = 136446466;
      *(v37 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v37 + 12) = 2114;
      if (a2)
      {
        v40 = a2;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = v41;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      *(v37 + 14) = v41;
      *v38 = v42;
      _os_log_impl(&dword_22776C000, v35, v36, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v37, 0x16u);
      sub_227776718(v38);
      MEMORY[0x22AA9AED0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9AED0](v39, -1, -1);
      MEMORY[0x22AA9AED0](v37, -1, -1);

      (*(v14 + 8))(v18, v46);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }
}

id ActivityAwardsDateQuery.__allocating_init(dateComponents:initialAwardsHandler:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v5);
  *&v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection] = 0;
  v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive] = 0;
  v13 = sub_227781E28();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_lock] = sub_227781E18();
  v16 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  v17 = sub_227781DB8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v12[v16], a1, v17);
  v19 = &v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_initialAwardsHandler];
  *v19 = a2;
  v19[1] = a3;
  v20 = &v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_updateAwardsHandler];
  *v20 = a4;
  v20[1] = a5;
  v23.receiver = v12;
  v23.super_class = v6;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  (*(v18 + 8))(a1, v17);
  return v21;
}

id ActivityAwardsDateQuery.init(dateComponents:initialAwardsHandler:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection] = 0;
  v5[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive] = 0;
  v12 = sub_227781E28();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_lock] = sub_227781E18();
  v15 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  v16 = sub_227781DB8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v6[v15], a1, v16);
  v18 = &v6[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_initialAwardsHandler];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &v6[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_updateAwardsHandler];
  *v19 = a4;
  *(v19 + 1) = a5;
  v22.receiver = v6;
  v22.super_class = type metadata accessor for ActivityAwardsDateQuery();
  v20 = objc_msgSendSuper2(&v22, sel_init);
  (*(v17 + 8))(a1, v16);
  return v20;
}

uint64_t type metadata accessor for ActivityAwardsDateQuery()
{
  result = qword_280DD1190;
  if (!qword_280DD1190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227773D14()
{
  v1 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  v2 = sub_227781DB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_initialAwardsHandler + 8);

  v4 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_updateAwardsHandler + 8);

  v5 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_lock);
}

id ActivityAwardsDateQuery.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_lock];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ActivityAwardsDateQuery();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_227773FE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227781DB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227781DA8();
  v10 = ACHYearMonthDayStringFromDateComponents();

  if (v10)
  {

    (*(v5 + 16))(v8, a1, v4);
    v11 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
    swift_beginAccess();
    (*(v5 + 40))(&v2[v11], v8, v4);
    result = swift_endAccess();
    v13 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive;
    if (v2[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive] == 1)
    {
      v14 = *&v2[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_lock];
      MEMORY[0x28223BE20](result);
      *(&v22 - 2) = v2;
      sub_227781E08();
      v15 = *MEMORY[0x277CE8DC0];
      v16 = sub_227781F28();
      v18 = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = v2;
      v20 = v2;
      sub_227771C10(v16, v18, sub_227775D00, v19);

      v2[v13] = 1;
    }
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_227774250()
{
  v1[26] = v0;
  v2 = sub_227781DB8();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = sub_227781F08();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227774378, 0, 0);
}

uint64_t sub_227774378()
{
  v1 = v0[33];
  sub_227781EC8();
  v2 = sub_227781EF8();
  v3 = sub_227782008();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22776C000, v2, v3, "Running query immediately.", v4, 2u);
    MEMORY[0x22AA9AED0](v4, -1, -1);
  }

  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[26];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = *(v8 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_lock);
  v11 = swift_task_alloc();
  v11[2] = v8;
  v11[3] = sub_227774BCC;
  v11[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  sub_227781E08();
  v41 = v9;
  v17 = v0[32];

  v42 = v0[25];
  v0[34] = v42;
  sub_227781EC8();
  v18 = sub_227781EF8();
  v19 = sub_227782008();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22776C000, v18, v19, "Obtained proxy for query run. Sending transport request.", v20, 2u);
    MEMORY[0x22AA9AED0](v20, -1, -1);
  }

  v22 = v0[31];
  v21 = v0[32];
  v24 = v0[29];
  v23 = v0[30];
  v26 = v0[27];
  v25 = v0[28];
  v27 = v0[26];

  v41(v21, v23);
  v28 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  swift_beginAccess();
  (*(v25 + 16))(v24, v27 + v28, v26);
  v29 = sub_227781DA8();
  (*(v25 + 8))(v24, v26);
  v30 = ACHYearMonthDayStringFromDateComponents();

  if (v30)
  {
    v31 = sub_227781F28();
    v33 = v32;

    v0[21] = v31;
    v0[22] = v33;
    v34 = sub_227781E58();
    v0[35] = 0;
    v0[36] = v34;
    v0[37] = v35;
    v37 = v35;
    v38 = v34;

    if (v37 >> 60 == 15)
    {
      v39 = 0;
    }

    else
    {
      sub_22777062C(v38, v37);
      v39 = sub_227781DD8();
      sub_22776F3A4(v38, v37);
    }

    v0[38] = v39;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_227774844;
    v40 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2277702B4;
    v0[13] = &block_descriptor;
    v0[14] = v40;
    [v42 transportRequest:7 data:v39 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[29];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_227774844()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_227774B1C;
  }

  else
  {
    v3 = sub_227774954;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227774954()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  sub_227781EA8();
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 272);
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    sub_22776F3A4(v2, v3);
    sub_22776F3A4(v5, v4);
    swift_unknownObjectRelease();
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 232);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 232);
    v17 = sub_227781E98();

    sub_22776F3A4(v2, v3);
    sub_22776F3A4(v5, v4);
    swift_unknownObjectRelease();

    v16 = *(v0 + 8);

    return v16(v17);
  }
}

uint64_t sub_227774B1C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[34];
  swift_willThrow();
  sub_22776F3A4(v3, v4);
  swift_unknownObjectRelease();

  v6 = v0[39];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[29];

  v10 = v0[1];

  return v10();
}

uint64_t sub_227774BCC(void *a1)
{
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v7 = a1;
  v8 = sub_227781EF8();
  v9 = sub_227781FF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_2277820D8();
    v14 = sub_22776E73C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22776C000, v8, v9, "Unable to get proxy: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9AED0](v11, -1, -1);
    MEMORY[0x22AA9AED0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227774D98()
{
  v1 = *MEMORY[0x277CE8DC0];
  v2 = sub_227781F28();
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = v0;
  sub_227771C10(v2, v4, sub_227777F00, v5);

  v6[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive] = 1;
  return result;
}

uint64_t sub_227774E4C(char *a1, void *a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = *&a1[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection];
  *&a1[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection] = a2;
  v14 = a2;

  aBlock[4] = sub_2277752F8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777C0DC;
  aBlock[3] = &block_descriptor_146;
  v15 = _Block_copy(aBlock);
  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_227782018();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  if (swift_dynamicCast())
  {
    v17 = aBlock[7];
    sub_227781FC8();
    v18 = sub_227781FE8();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = a1;
    swift_unknownObjectRetain();
    v20 = a1;
    sub_22777E970(0, 0, v12, &unk_227782BE0, v19);

    aBlock[0] = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_22777689C;
    *(v22 + 24) = v21;
    type metadata accessor for ActivityAwardsDateQuery();
    sub_227781EB8();
    sub_2277768A4(&qword_27D7CE548, type metadata accessor for ActivityAwardsDateQuery);
    v23 = v20;
    sub_227781E48();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v25 = sub_227781EF8();
    v26 = sub_227782008();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      v29 = *MEMORY[0x277CE8DC0];
      v30 = sub_227781F28();
      v34 = v4;
      v32 = sub_22776E73C(v30, v31, aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_22776C000, v25, v26, "XPC client-side connection failed to get expected proxy type for %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AA9AED0](v28, -1, -1);
      MEMORY[0x22AA9AED0](v27, -1, -1);

      return (*(v5 + 8))(v8, v34);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_2277752F8()
{
  v0 = sub_227781F08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v5 = sub_227781EF8();
  v6 = sub_227782008();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = *MEMORY[0x277CE8DC0];
    v10 = sub_227781F28();
    v12 = sub_22776E73C(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22776C000, v5, v6, "XPC client-side connection failed to get proxy for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9AED0](v8, -1, -1);
    MEMORY[0x22AA9AED0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2277754A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_227781DB8();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227775560, 0, 0);
}

uint64_t sub_227775560()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = sub_227781DA8();
  (*(v2 + 8))(v1, v3);
  v7 = ACHYearMonthDayStringFromDateComponents();

  if (v7)
  {
    v8 = sub_227781F28();
    v10 = v9;

    v0[23] = v8;
    v0[24] = v10;
    v11 = sub_227781E58();
    v13 = v12;
    v0[30] = 0;

    if (v13 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_227781DD8();
      sub_22776F3A4(v11, v13);
    }

    v0[31] = v14;
    v19 = v0[25];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_227775818;
    v20 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2277702B4;
    v0[13] = &block_descriptor_162;
    v0[14] = v20;
    [v19 transportRequest:7 data:v14 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = v0[29];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_227775818()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_227775A90;
  }

  else
  {
    v3 = sub_227775928;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227775928()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  sub_227781EA8();
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    sub_22776F3A4(v2, v3);
    v5 = *(v0 + 232);
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 208);
    v9 = sub_227781E98();
    sub_227777640(v9);
    v11 = v10;

    v12 = *(v8 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_initialAwardsHandler + 8);
    (*(v8 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_initialAwardsHandler))(v11);

    sub_22776F3A4(v2, v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_227775A90()
{
  v1 = v0[31];
  v2 = v0[32];
  swift_willThrow();

  v3 = v0[32];
  v4 = v0[29];

  v5 = v0[1];

  return v5();
}

uint64_t sub_227775B08(uint64_t a1, uint64_t a2)
{
  v3 = sub_227781E98();
  sub_227777640(v3);
  v5 = v4;

  v6 = *(a2 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_updateAwardsHandler + 8);
  (*(a2 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_updateAwardsHandler))(v5);
}

unint64_t sub_227775BE8()
{
  result = qword_27D7CE4A0;
  if (!qword_27D7CE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE4A0);
  }

  return result;
}

id sub_227775C3C(uint64_t a1)
{
  type metadata accessor for ActivityAwardsDateQuery();
  sub_2277768A4(&qword_27D7CE548, type metadata accessor for ActivityAwardsDateQuery);
  sub_227781E38();
  return [*(a1 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection) invalidate];
}

void sub_227775D04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *MEMORY[0x277CE8DC0];
  v9 = sub_227781F28();
  sub_22777C144(v9, v10);

  v11 = *(a1 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection);
  if (v11)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22777C0DC;
    aBlock[3] = &block_descriptor_114;
    v12 = _Block_copy(aBlock);
    v13 = v11;

    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v12);
    sub_227782018();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
    if (swift_dynamicCast())
    {

      *a4 = v19;
    }

    else
    {
      v17 = sub_227781DF8();
      sub_2277768A4(&qword_27D7CE538, MEMORY[0x277CE8E10]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CE8E00], v17);
      swift_willThrow();
    }
  }

  else
  {
    v15 = sub_227781DF8();
    sub_2277768A4(&qword_27D7CE538, MEMORY[0x277CE8E10]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CE8E08], v15);
    swift_willThrow();
  }
}

id ActivityAwardsDateQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_227776068(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_227776128()
{
  result = sub_227781DB8();
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

uint64_t dispatch thunk of ActivityAwardsDateQuery.runQueryImmediately()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_227776384;

  return v6();
}

uint64_t sub_227776384(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

id sub_22777650C@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

char *sub_227776584(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE550, &qword_227782BE8);
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

void *sub_227776690(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE578, &qword_227782C00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_227776718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE528, &qword_227782BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2277767DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FF20;

  return sub_2277754A0(a1, v4, v5, v7, v6);
}

uint64_t sub_2277768A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2277768EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_227782128();
  sub_227781F48();
  v6 = sub_227782148();

  return sub_227776FBC(a1, a2, v6);
}

uint64_t sub_227776964(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_227776A10(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_227782068();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_227782068();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_227776B00(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2277771E0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_227776B00(uint64_t a1)
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
    sub_227782068();
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
  result = sub_227782048();
  *v1 = result;
  return result;
}

uint64_t sub_227776BA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE558, &unk_227782BF0);
  v39 = a2;
  result = sub_227782088();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_227782128();
      sub_227781F48();
      result = sub_227782148();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_227776E44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2277768EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_227776BA0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2277768EC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_2277820C8();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_227777074();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_227776FBC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2277820A8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_227777074()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE558, &unk_227782BF0);
  v2 = *v0;
  v3 = sub_227782078();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_2277771E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_227782068();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_227782068();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_227777D80();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE600, qword_227782C20);
            v9 = sub_227777360(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_227777D34();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_227777360(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA9A940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2277773E0;
  }

  __break(1u);
  return result;
}

void *sub_2277773E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22777753C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE558, &unk_227782BF0);
    v3 = sub_227782098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2277768EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_227777640(unint64_t a1)
{
  v65 = MEMORY[0x277D84F90];
  v2 = sub_22777753C(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_51;
  }

LABEL_3:
  v4 = 0;
  v61 = a1 & 0xC000000000000001;
  v57 = v2;
  v58 = a1 & 0xFFFFFFFFFFFFFF8;
  v62 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v60 = v3;
  v56 = a1;
  do
  {
    if (v61)
    {
      v5 = MEMORY[0x22AA9A940](v4, a1);
    }

    else
    {
      if (v4 >= *(v58 + 16))
      {
        goto LABEL_49;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      while (1)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v3 = sub_227782068();
        if (v3)
        {
          goto LABEL_3;
        }

LABEL_51:
        v59 = MEMORY[0x277D84F90];
        v48 = *(v2 + 16);
        if (!v48)
        {
          goto LABEL_52;
        }

LABEL_46:
        v49 = sub_227776690(v48, 0);
        v50 = sub_2277773E8(&v63, v49 + 4, v48, v2);
        a1 = v63;

        sub_227777CD0();
        if (v50 == v48)
        {
          goto LABEL_53;
        }

        __break(1u);
      }
    }

    v8 = [v5 template];
    v9 = [v8 uniqueName];

    if (v9)
    {
      v2 = sub_227781F28();
      v12 = v11;
    }

    else
    {
      v2 = 0;
      v12 = 0xE000000000000000;
    }

    v63 = v2;
    v64 = v12;
    MEMORY[0x28223BE20](v10);
    v52 = &v63;
    v13 = sub_227776964(sub_227777CB4, v51, &unk_283ADFD50);
    v14 = v13;
    v63 = v2;
    v64 = v12;
    MEMORY[0x28223BE20](v13);
    v52 = &v63;
    v15 = sub_227776964(sub_227777F1C, v51, &unk_283ADFDA0);
    if (v14)
    {
      v63 = v2;
      v64 = v12;
      MEMORY[0x28223BE20](v15);
      v52 = &v63;
      v16 = v62;
      if (sub_227776964(sub_227777F1C, v51, v62))
      {

        goto LABEL_5;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_227776584(0, *(v16 + 2) + 1, 1, v16);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      v62 = v18;
      if (v20 >= v19 >> 1)
      {
        v62 = sub_227776584((v19 > 1), v20 + 1, 1, v62);
      }

      v21 = v62;
      *(v62 + 2) = v20 + 1;
      v22 = &v21[16 * v20];
      *(v22 + 4) = v2;
      *(v22 + 5) = v12;
      goto LABEL_33;
    }

    if ((v15 & 1) == 0)
    {

LABEL_33:
      v45 = v6;
      MEMORY[0x22AA9A870]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_227781F78();
        a1 = v56;
      }

      sub_227781F88();

      v59 = v65;
      goto LABEL_5;
    }

    v23 = [v6 relevantEarnedInstance];
    if (!v23)
    {

      goto LABEL_5;
    }

    v24 = v23;
    v25 = [v23 value];
    if (!v25)
    {

LABEL_40:

      goto LABEL_5;
    }

    v26 = v25;
    v27 = [v6 template];
    v28 = [v27 canonicalUnit];

    if (!v28)
    {
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    [v26 doubleValueForUnit_];
    v30 = v29;

    a1 = v56;
    v31 = v57;
    if (!*(v57 + 16) || (v32 = sub_2277768EC(v2, v12), (v33 & 1) == 0))
    {
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v31;
      sub_227776E44(v6, v2, v12, v46);
      goto LABEL_38;
    }

    v57 = v31;
    v34 = *(*(v31 + 56) + 8 * v32);
    v35 = [v34 relevantEarnedInstance];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 value];
      if (!v37)
      {

        goto LABEL_40;
      }

      v53 = v37;
      v54 = v36;
      v55 = v34;
      v38 = [v6 template];
      v39 = [v38 canonicalUnit];

      if (!v39)
      {
        goto LABEL_55;
      }

      v40 = v53;
      [v53 doubleValueForUnit_];
      v42 = v41;

      a1 = v56;
      if (v42 < v30)
      {
        v43 = v57;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v63 = v43;
        sub_227776E44(v6, v2, v12, v44);

LABEL_38:

        v57 = v63;
        goto LABEL_5;
      }
    }

    else
    {
    }

LABEL_5:
    ++v4;
  }

  while (v7 != v60);

  v2 = v57;
  v48 = *(v57 + 16);
  if (v48)
  {
    goto LABEL_46;
  }

LABEL_52:
  v49 = MEMORY[0x277D84F90];
LABEL_53:
  v63 = v59;
  sub_227776A10(v49);
}

uint64_t sub_227777CD8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2277820A8() & 1;
  }
}

unint64_t sub_227777D34()
{
  result = qword_27D7CE560;
  if (!qword_27D7CE560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7CE560);
  }

  return result;
}

unint64_t sub_227777D80()
{
  result = qword_27D7CE570;
  if (!qword_27D7CE570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7CE600, qword_227782C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE570);
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

id ActivityAwardsQuery.__allocating_init(initialAwardsHandler:addedAwardsHandler:removedAwardsHandler:updatedAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  *&v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection] = 0;
  v17 = sub_227781E28();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_lock] = sub_227781E18();
  v20 = &v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_initialAwardsHandler];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_addedAwardsHandler];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_removedAwardsHandler];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_updatedAwardsHandler];
  *v23 = a7;
  *(v23 + 1) = a8;
  v26.receiver = v16;
  v26.super_class = v8;
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_227778064()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_lock);

  v2 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_initialAwardsHandler + 8);

  v3 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_addedAwardsHandler + 8);

  v4 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_removedAwardsHandler + 8);

  v5 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_updatedAwardsHandler + 8);
}

id ActivityAwardsQuery.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_lock];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ActivityAwardsQuery();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22777831C()
{
  v1[3] = v0;
  v2 = sub_227781F08();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277783DC, 0, 0);
}

uint64_t sub_2277783DC()
{
  v1 = v0[6];
  sub_227781ED8();
  v2 = sub_227781EF8();
  v3 = sub_227782008();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22776C000, v2, v3, "Running query immediately.", v4, 2u);
    MEMORY[0x22AA9AED0](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *(v9 + 16) = v8;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE600, qword_227782C20);
  *v11 = v0;
  v11[1] = sub_227778580;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x80000002277830A0, sub_227778F38, v9, v12);
}

uint64_t sub_227778580()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_227778708;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22777869C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22777869C()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_227778708()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_227778774(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v47 = sub_227781F08();
  v46 = *(v47 - 8);
  v3 = *(v46 + 64);
  v4 = MEMORY[0x28223BE20](v47);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v44 = (&v36 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = *(v10 + 16);
  v49 = a1;
  v15(&v36 - v13, a1, v9);
  v16 = *(v10 + 80);
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v48 = v9;
  v18(v17 + ((v16 + 16) & ~v16), v14, v9);
  v19 = *(v45 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_lock);
  v50 = v45;
  v51 = sub_227779A70;
  v52 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  sub_227781E08();
  v38 = v18;
  v39 = v11;
  v40 = v16;
  v44 = v15;
  v45 = (v16 + 16) & ~v16;
  v20 = v42;

  v21 = aBlock[0];
  aBlock[0] = 1;
  v22 = sub_227781E58();
  v24 = v23;
  v43 = v22;
  v37 = v21;
  sub_227781ED8();
  v25 = sub_227781EF8();
  v26 = sub_227782008();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22776C000, v25, v26, "Obtained proxy for query run. Sending transport request.", v27, 2u);
    MEMORY[0x22AA9AED0](v27, -1, -1);
  }

  (*(v46 + 8))(v20, v47);
  v28 = v38;
  if (v24 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_227781DD8();
  }

  v30 = v41;
  v31 = v45;
  v32 = v48;
  v44(v41, v49, v48);
  v33 = swift_allocObject();
  v28(v33 + v31, v30, v32);
  aBlock[4] = sub_227779BA0;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777EC0C;
  aBlock[3] = &block_descriptor_48;
  v34 = _Block_copy(aBlock);

  [v37 transportRequest:2 data:v29 completion:v34];
  _Block_release(v34);

  sub_22776F3A4(v43, v24);
  return swift_unknownObjectRelease();
}

uint64_t sub_227778F40(void *a1, uint64_t a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v9 = a1;
  v10 = sub_227781EF8();
  v11 = sub_227781FF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = sub_2277820D8();
    v17 = sub_22776E73C(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22776C000, v10, v11, "Unable to get proxy: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9AED0](v14, -1, -1);
    MEMORY[0x22AA9AED0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v21 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  return sub_227781FA8();
}

uint64_t sub_227779148(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_227781EB8();
      sub_2277703AC(a1, a2);
      sub_22777062C(a1, a2);
      sub_227781EA8();
      sub_227781E98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
      sub_227781FB8();
      sub_22776F3A4(a1, a2);
    }

    sub_227775BE8();
    swift_allocError();
    *v4 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  return sub_227781FA8();
}

uint64_t sub_2277792E8()
{
  v0 = sub_227781F08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v5 = sub_227781EF8();
  v6 = sub_227782008();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = *MEMORY[0x277CE8DD0];
    v10 = sub_227781F28();
    v12 = sub_22776E73C(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22776C000, v5, v6, "XPC client-side connection failed to get proxy for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9AED0](v8, -1, -1);
    MEMORY[0x22AA9AED0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_227779490()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

void sub_227779500(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *MEMORY[0x277CE8DD0];
  v9 = sub_227781F28();
  sub_22777C5D0(v9, v10);

  v11 = *(a1 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection);
  if (v11)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22777C0DC;
    aBlock[3] = &block_descriptor_51;
    v12 = _Block_copy(aBlock);
    v13 = v11;

    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v12);
    sub_227782018();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
    if (swift_dynamicCast())
    {

      *a4 = v19;
    }

    else
    {
      v17 = sub_227781DF8();
      sub_22776F040(&qword_27D7CE538, 255, MEMORY[0x277CE8E10]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CE8E00], v17);
      swift_willThrow();
    }
  }

  else
  {
    v15 = sub_227781DF8();
    sub_22776F040(&qword_27D7CE538, 255, MEMORY[0x277CE8E10]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CE8E08], v15);
    swift_willThrow();
  }
}

id ActivityAwardsQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t dispatch thunk of ActivityAwardsQuery.runQueryImmediately()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_227776384;

  return v6();
}

_BYTE **sub_227779998(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_2277799A8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

id sub_2277799C8@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_227779A70(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_227778F40(a1, v4);
}

uint64_t objectdestroy_41Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227779BA0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0) - 8) + 80);

  return sub_227779148(a1, a2, a3);
}

id ActivityAwardsTemplateNamesQuery.__allocating_init(templateNames:initialAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection] = 0;
  v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_isActive] = 0;
  v8 = sub_227781E28();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_lock] = sub_227781E18();
  *&v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames] = a1;
  v11 = &v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_initialAwardsHandler];
  *v11 = a2;
  v11[1] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ActivityAwardsTemplateNamesQuery.init(templateNames:initialAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection] = 0;
  v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_isActive] = 0;
  v7 = sub_227781E28();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_lock] = sub_227781E18();
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames] = a1;
  v10 = &v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_initialAwardsHandler];
  *v10 = a2;
  v10[1] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ActivityAwardsTemplateNamesQuery();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_227779DF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames);

  v2 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_initialAwardsHandler + 8);

  v3 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_lock);
}

id ActivityAwardsTemplateNamesQuery.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_lock];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ActivityAwardsTemplateNamesQuery();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22777A018()
{
  v1[3] = v0;
  v2 = sub_227781F08();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22777A0D8, 0, 0);
}

uint64_t sub_22777A0D8()
{
  v1 = v0[6];
  sub_227781EC8();
  v2 = sub_227781EF8();
  v3 = sub_227782008();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22776C000, v2, v3, "Running query immediately.", v4, 2u);
    MEMORY[0x22AA9AED0](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *(v9 + 16) = v8;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE600, qword_227782C20);
  *v11 = v0;
  v11[1] = sub_227778580;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x80000002277830A0, sub_22777AAB4, v9, v12);
}

uint64_t sub_22777A27C(uint64_t a1, uint64_t a2)
{
  v49 = sub_227781F08();
  v48 = *(v49 - 8);
  v4 = *(v48 + 64);
  v5 = MEMORY[0x28223BE20](v49);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v47 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v44 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = *(v11 + 16);
  v51 = a1;
  v43 = v16;
  v16(&v36 - v14, a1, v10);
  v17 = *(v11 + 80);
  v18 = swift_allocObject();
  v19 = *(v11 + 32);
  v50 = v10;
  v19(v18 + ((v17 + 16) & ~v17), v15, v10);
  v20 = *(a2 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_lock);
  v52 = a2;
  v53 = sub_22777BF7C;
  v54 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  sub_227781E08();
  v37 = v19;
  v38 = v11 + 32;
  v39 = v17;
  v40 = v12;
  v41 = v11 + 16;
  v42 = (v17 + 16) & ~v17;
  v21 = v45;

  v47 = aBlock[0];
  aBlock[0] = *(a2 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE610, &qword_227782D58);
  sub_22777BE74();
  sub_22777BEF8(&qword_280DD1170);
  sub_22777BEF8(&unk_280DD1178);
  v22 = sub_227781E58();
  v24 = v23;
  sub_227781ED8();
  v25 = sub_227781EF8();
  v26 = sub_227782008();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22776C000, v25, v26, "Obtained proxy for query run. Sending transport request.", v27, 2u);
    MEMORY[0x22AA9AED0](v27, -1, -1);
  }

  (*(v48 + 8))(v21, v49);
  v28 = v44;
  v29 = v42;
  v30 = v37;
  if (v24 >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_227781DD8();
  }

  v32 = v50;
  v43(v28, v51, v50);
  v33 = swift_allocObject();
  v30(v33 + v29, v28, v32);
  aBlock[4] = sub_227779BA0;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777EC0C;
  aBlock[3] = &block_descriptor_36;
  v34 = _Block_copy(aBlock);

  [v47 transportRequest:10 data:v31 completion:v34];
  _Block_release(v34);

  sub_22776F3A4(v22, v24);
  return swift_unknownObjectRelease();
}

uint64_t sub_22777AABC(void *a1, uint64_t a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v9 = a1;
  v10 = sub_227781EF8();
  v11 = sub_227781FF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = sub_2277820D8();
    v17 = sub_22776E73C(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22776C000, v10, v11, "Unable to get proxy: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9AED0](v14, -1, -1);
    MEMORY[0x22AA9AED0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v21 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  return sub_227781FA8();
}

uint64_t sub_22777ACC4()
{
  v1 = *MEMORY[0x277CE8DD8];
  v2 = sub_227781F28();
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = v0;
  sub_2277720B0(v2, v4, sub_22777BAEC, v5);

  v6[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_isActive] = 1;
  return result;
}

uint64_t sub_22777AD78(char *a1, void *a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = *&a1[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection];
  *&a1[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection] = a2;
  v14 = a2;

  aBlock[4] = sub_22777B130;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777C0DC;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);
  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_227782018();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  if (swift_dynamicCast())
  {
    v17 = aBlock[7];
    sub_227781FC8();
    v18 = sub_227781FE8();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = a1;
    v20 = a1;
    sub_22777E970(0, 0, v12, &unk_227782D50, v19);
  }

  else
  {
    sub_227781EC8();
    v22 = sub_227781EF8();
    v23 = sub_227782008();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      v26 = *MEMORY[0x277CE8DD8];
      v27 = sub_227781F28();
      v31 = v4;
      v29 = sub_22776E73C(v27, v28, aBlock);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_22776C000, v22, v23, "XPC client-side connection failed to get expected proxy type for %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9AED0](v25, -1, -1);
      MEMORY[0x22AA9AED0](v24, -1, -1);

      return (*(v5 + 8))(v8, v31);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_22777B130()
{
  v0 = sub_227781F08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v5 = sub_227781EF8();
  v6 = sub_227782008();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = *MEMORY[0x277CE8DD8];
    v10 = sub_227781F28();
    v12 = sub_22776E73C(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22776C000, v5, v6, "XPC client-side connection failed to get proxy for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9AED0](v8, -1, -1);
    MEMORY[0x22AA9AED0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22777B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = a5;
  return MEMORY[0x2822009F8](sub_22777B2F8, 0, 0);
}

uint64_t sub_22777B2F8()
{
  v0[10] = *(v0[21] + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE610, &qword_227782D58);
  sub_22777BE74();
  sub_22777BEF8(&qword_280DD1170);
  sub_22777BEF8(&unk_280DD1178);
  v1 = sub_227781E58();
  v0[22] = 0;
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v5 = v2;
    v3 = sub_227781DD8();
    sub_22776F3A4(v4, v5);
  }

  v0[23] = v3;
  v6 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22777B538;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2277702B4;
  v0[13] = &block_descriptor_26;
  v0[14] = v7;
  [v6 transportRequest:10 data:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22777B538()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_227779490;
  }

  else
  {
    v3 = sub_22777B648;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22777B648()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  sub_227781EA8();
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    v6 = *(v0 + 168) + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_initialAwardsHandler;
    v8 = *v6;
    v7 = *(v6 + 8);
    sub_227781E98();
    v8();
  }

  sub_22776F3A4(v2, v3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22777B78C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_lock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  return sub_227781E08();
}

void sub_22777B808(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *MEMORY[0x277CE8DD8];
  v9 = sub_227781F28();
  sub_22777CA5C(v9, v10);

  v11 = *(a1 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection);
  if (v11)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22777C0DC;
    aBlock[3] = &block_descriptor_39;
    v12 = _Block_copy(aBlock);
    v13 = v11;

    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v12);
    sub_227782018();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
    if (swift_dynamicCast())
    {

      *a4 = v19;
    }

    else
    {
      v17 = sub_227781DF8();
      sub_22777C018();
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CE8E00], v17);
      swift_willThrow();
    }
  }

  else
  {
    v15 = sub_227781DF8();
    sub_22777C018();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CE8E08], v15);
    swift_willThrow();
  }
}

id ActivityAwardsTemplateNamesQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t dispatch thunk of ActivityAwardsTemplateNamesQuery.runQueryImmediately()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_227776384;

  return v6();
}

id sub_22777BD38@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_22777BDB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FF20;

  return sub_22777B2D8(a1, v4, v5, v7, v6);
}

unint64_t sub_22777BE74()
{
  result = qword_280DD1188;
  if (!qword_280DD1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7CE610, &qword_227782D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD1188);
  }

  return result;
}

uint64_t sub_22777BEF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7CE610, &qword_227782D58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22777BF7C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22777AABC(a1, v4);
}

unint64_t sub_22777C018()
{
  result = qword_27D7CE538;
  if (!qword_27D7CE538)
  {
    sub_227781DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE538);
  }

  return result;
}

uint64_t sub_22777C098(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_22777C0DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22777C144(uint64_t a1, uint64_t a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v11 = [objc_opt_self() interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  v31 = sub_2277718CC;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C098;
  v30 = &block_descriptor_133;
  v12 = _Block_copy(&aBlock);
  [v10 setInvalidationHandler_];
  _Block_release(v12);
  v31 = sub_2277718D0;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C098;
  v30 = &block_descriptor_136_0;
  v13 = _Block_copy(&aBlock);
  [v10 setInterruptionHandler_];
  _Block_release(v13);
  [v10 resume];
  v31 = sub_2277718D4;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C0DC;
  v30 = &block_descriptor_139;
  v14 = _Block_copy(&aBlock);
  v15 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v26, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v16 = v25[1];
    v17 = sub_227781F18();
    v18 = swift_allocObject();
    v18[2] = v2;
    v18[3] = a1;
    v18[4] = a2;
    v31 = sub_227781CB8;
    v32 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_22776E0DC;
    v30 = &block_descriptor_145;
    v19 = _Block_copy(&aBlock);
    v20 = v2;

    [v16 createEndpointNamed:v17 completion:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v21 = sub_227781EF8();
    v22 = sub_227782008();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22776C000, v21, v22, "Proxy does not conform to endpoint interface", v23, 2u);
      MEMORY[0x22AA9AED0](v23, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_22777C5D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v11 = [objc_opt_self() interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  v31 = sub_2277718CC;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C098;
  v30 = &block_descriptor_104_0;
  v12 = _Block_copy(&aBlock);
  [v10 setInvalidationHandler_];
  _Block_release(v12);
  v31 = sub_2277718D0;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C098;
  v30 = &block_descriptor_107;
  v13 = _Block_copy(&aBlock);
  [v10 setInterruptionHandler_];
  _Block_release(v13);
  [v10 resume];
  v31 = sub_2277718D4;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C0DC;
  v30 = &block_descriptor_110;
  v14 = _Block_copy(&aBlock);
  v15 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v26, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v16 = v25[1];
    v17 = sub_227781F18();
    v18 = swift_allocObject();
    v18[2] = v2;
    v18[3] = a1;
    v18[4] = a2;
    v31 = sub_227781C6C;
    v32 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_22776E0DC;
    v30 = &block_descriptor_116;
    v19 = _Block_copy(&aBlock);
    v20 = v2;

    [v16 createEndpointNamed:v17 completion:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v21 = sub_227781EF8();
    v22 = sub_227782008();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22776C000, v21, v22, "Proxy does not conform to endpoint interface", v23, 2u);
      MEMORY[0x22AA9AED0](v23, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_22777CA5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v11 = [objc_opt_self() interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  v31 = sub_2277718CC;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C098;
  v30 = &block_descriptor_75_0;
  v12 = _Block_copy(&aBlock);
  [v10 setInvalidationHandler_];
  _Block_release(v12);
  v31 = sub_2277718D0;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C098;
  v30 = &block_descriptor_78;
  v13 = _Block_copy(&aBlock);
  [v10 setInterruptionHandler_];
  _Block_release(v13);
  [v10 resume];
  v31 = sub_2277718D4;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C0DC;
  v30 = &block_descriptor_81;
  v14 = _Block_copy(&aBlock);
  v15 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v26, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v16 = v25[1];
    v17 = sub_227781F18();
    v18 = swift_allocObject();
    v18[2] = v2;
    v18[3] = a1;
    v18[4] = a2;
    v31 = sub_227781C60;
    v32 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_22776E0DC;
    v30 = &block_descriptor_87;
    v19 = _Block_copy(&aBlock);
    v20 = v2;

    [v16 createEndpointNamed:v17 completion:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v21 = sub_227781EF8();
    v22 = sub_227782008();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22776C000, v21, v22, "Proxy does not conform to endpoint interface", v23, 2u);
      MEMORY[0x22AA9AED0](v23, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_22777CEE8(uint64_t a1, uint64_t a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v11 = [objc_opt_self() interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  v31 = sub_2277718CC;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C098;
  v30 = &block_descriptor_37;
  v12 = _Block_copy(&aBlock);
  [v10 setInvalidationHandler_];
  _Block_release(v12);
  v31 = sub_2277718D0;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C098;
  v30 = &block_descriptor_40;
  v13 = _Block_copy(&aBlock);
  [v10 setInterruptionHandler_];
  _Block_release(v13);
  [v10 resume];
  v31 = sub_2277718D4;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_22777C0DC;
  v30 = &block_descriptor_43;
  v14 = _Block_copy(&aBlock);
  v15 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v26, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v16 = v25[1];
    v17 = sub_227781F18();
    v18 = swift_allocObject();
    v18[2] = v2;
    v18[3] = a1;
    v18[4] = a2;
    v31 = sub_227781A8C;
    v32 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_22776E0DC;
    v30 = &block_descriptor_49;
    v19 = _Block_copy(&aBlock);
    v20 = v2;

    [v16 createEndpointNamed:v17 completion:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v21 = sub_227781EF8();
    v22 = sub_227782008();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22776C000, v21, v22, "Proxy does not conform to endpoint interface", v23, 2u);
      MEMORY[0x22AA9AED0](v23, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_22777D374(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_227781F08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  if (a1)
  {
    v43 = v10;
    v18 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v42 = a1;
    v19 = [v18 initWithListenerEndpoint_];
    v20 = AACTransportInterface();
    [v19 setExportedInterface_];

    v21 = AACTransportInterface();
    [v19 setRemoteObjectInterface_];

    [v19 setExportedObject_];
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v48 = sub_227777E9C;
    v49 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22777C098;
    v47 = &block_descriptor_152;
    v23 = _Block_copy(&aBlock);

    [v19 setInvalidationHandler_];
    _Block_release(v23);
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v48 = sub_227777EA0;
    v49 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22777C098;
    v47 = &block_descriptor_159;
    v25 = _Block_copy(&aBlock);

    [v19 setInterruptionHandler_];
    _Block_release(v25);
    [v19 resume];
    v26 = *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection);
    *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection) = v19;
    v27 = v19;

    sub_227781EC8();

    v28 = sub_227781EF8();
    v29 = sub_227782008();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v28, v29, "XPC endpoint setup complete for %{public}s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9AED0](v31, -1, -1);
      MEMORY[0x22AA9AED0](v30, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v17, v43);
  }

  else
  {
    sub_227781EC8();

    v32 = a2;
    v33 = sub_227781EF8();
    v34 = sub_227781FF8();

    if (os_log_type_enabled(v33, v34))
    {
      v43 = v10;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v35 = 136446466;
      *(v35 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v35 + 12) = 2114;
      if (a2)
      {
        v38 = a2;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v39;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *(v35 + 14) = v39;
      *v36 = v40;
      _os_log_impl(&dword_22776C000, v33, v34, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v35, 0x16u);
      sub_227781BE8(v36, &qword_27D7CE528, &qword_227782BC0);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9AED0](v37, -1, -1);
      MEMORY[0x22AA9AED0](v35, -1, -1);

      return (*(v11 + 8))(v15, v43);
    }

    else
    {

      return (*(v11 + 8))(v15, v10);
    }
  }
}

uint64_t sub_22777D8F4(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_227781F08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  if (a1)
  {
    v43 = v10;
    v18 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v42 = a1;
    v19 = [v18 initWithListenerEndpoint_];
    v20 = AACTransportInterface();
    [v19 setExportedInterface_];

    v21 = AACTransportInterface();
    [v19 setRemoteObjectInterface_];

    [v19 setExportedObject_];
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v48 = sub_227777E9C;
    v49 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22777C098;
    v47 = &block_descriptor_123_0;
    v23 = _Block_copy(&aBlock);

    [v19 setInvalidationHandler_];
    _Block_release(v23);
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v48 = sub_227777EA0;
    v49 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22777C098;
    v47 = &block_descriptor_130;
    v25 = _Block_copy(&aBlock);

    [v19 setInterruptionHandler_];
    _Block_release(v25);
    [v19 resume];
    v26 = *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection);
    *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection) = v19;
    v27 = v19;

    sub_227781EC8();

    v28 = sub_227781EF8();
    v29 = sub_227782008();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v28, v29, "XPC endpoint setup complete for %{public}s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9AED0](v31, -1, -1);
      MEMORY[0x22AA9AED0](v30, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v17, v43);
  }

  else
  {
    sub_227781EC8();

    v32 = a2;
    v33 = sub_227781EF8();
    v34 = sub_227781FF8();

    if (os_log_type_enabled(v33, v34))
    {
      v43 = v10;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v35 = 136446466;
      *(v35 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v35 + 12) = 2114;
      if (a2)
      {
        v38 = a2;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v39;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *(v35 + 14) = v39;
      *v36 = v40;
      _os_log_impl(&dword_22776C000, v33, v34, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v35, 0x16u);
      sub_227781BE8(v36, &qword_27D7CE528, &qword_227782BC0);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9AED0](v37, -1, -1);
      MEMORY[0x22AA9AED0](v35, -1, -1);

      return (*(v11 + 8))(v15, v43);
    }

    else
    {

      return (*(v11 + 8))(v15, v10);
    }
  }
}

uint64_t sub_22777DE74(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_227781F08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  if (a1)
  {
    v43 = v10;
    v18 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v42 = a1;
    v19 = [v18 initWithListenerEndpoint_];
    v20 = AACTransportInterface();
    [v19 setExportedInterface_];

    v21 = AACTransportInterface();
    [v19 setRemoteObjectInterface_];

    [v19 setExportedObject_];
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v48 = sub_227777E9C;
    v49 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22777C098;
    v47 = &block_descriptor_94;
    v23 = _Block_copy(&aBlock);

    [v19 setInvalidationHandler_];
    _Block_release(v23);
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v48 = sub_227777EA0;
    v49 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22777C098;
    v47 = &block_descriptor_101;
    v25 = _Block_copy(&aBlock);

    [v19 setInterruptionHandler_];
    _Block_release(v25);
    [v19 resume];
    v26 = *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection);
    *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection) = v19;
    v27 = v19;

    sub_227781EC8();

    v28 = sub_227781EF8();
    v29 = sub_227782008();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v28, v29, "XPC endpoint setup complete for %{public}s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9AED0](v31, -1, -1);
      MEMORY[0x22AA9AED0](v30, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v17, v43);
  }

  else
  {
    sub_227781EC8();

    v32 = a2;
    v33 = sub_227781EF8();
    v34 = sub_227781FF8();

    if (os_log_type_enabled(v33, v34))
    {
      v43 = v10;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v35 = 136446466;
      *(v35 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v35 + 12) = 2114;
      if (a2)
      {
        v38 = a2;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v39;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *(v35 + 14) = v39;
      *v36 = v40;
      _os_log_impl(&dword_22776C000, v33, v34, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v35, 0x16u);
      sub_227781BE8(v36, &qword_27D7CE528, &qword_227782BC0);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9AED0](v37, -1, -1);
      MEMORY[0x22AA9AED0](v35, -1, -1);

      return (*(v11 + 8))(v15, v43);
    }

    else
    {

      return (*(v11 + 8))(v15, v10);
    }
  }
}

uint64_t sub_22777E3F4(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_227781F08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  if (a1)
  {
    v43 = v10;
    v18 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v42 = a1;
    v19 = [v18 initWithListenerEndpoint_];
    v20 = AACTransportInterface();
    [v19 setExportedInterface_];

    v21 = AACTransportInterface();
    [v19 setRemoteObjectInterface_];

    [v19 setExportedObject_];
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v48 = sub_227776780;
    v49 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22777C098;
    v47 = &block_descriptor_55;
    v23 = _Block_copy(&aBlock);

    [v19 setInvalidationHandler_];
    _Block_release(v23);
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v48 = sub_227776788;
    v49 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22777C098;
    v47 = &block_descriptor_61;
    v25 = _Block_copy(&aBlock);

    [v19 setInterruptionHandler_];
    _Block_release(v25);
    [v19 resume];
    v26 = *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection);
    *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection) = v19;
    v27 = v19;

    sub_227781EC8();

    v28 = sub_227781EF8();
    v29 = sub_227782008();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v28, v29, "XPC endpoint setup complete for %{public}s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9AED0](v31, -1, -1);
      MEMORY[0x22AA9AED0](v30, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v17, v43);
  }

  else
  {
    sub_227781EC8();

    v32 = a2;
    v33 = sub_227781EF8();
    v34 = sub_227781FF8();

    if (os_log_type_enabled(v33, v34))
    {
      v43 = v10;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v35 = 136446466;
      *(v35 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v35 + 12) = 2114;
      if (a2)
      {
        v38 = a2;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v39;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *(v35 + 14) = v39;
      *v36 = v40;
      _os_log_impl(&dword_22776C000, v33, v34, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v35, 0x16u);
      sub_227781BE8(v36, &qword_27D7CE528, &qword_227782BC0);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9AED0](v37, -1, -1);
      MEMORY[0x22AA9AED0](v35, -1, -1);

      return (*(v11 + 8))(v15, v43);
    }

    else
    {

      return (*(v11 + 8))(v15, v10);
    }
  }
}

uint64_t sub_22777E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_227771268(a3, v24 - v10);
  v12 = sub_227781FE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_227781BE8(v11, &qword_27D7CE420, &qword_227782940);
  }

  else
  {
    sub_227781FD8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_227781F98();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_227781F38() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_227781BE8(a3, &qword_27D7CE420, &qword_227782940);

      return v22;
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

  sub_227781BE8(a3, &qword_27D7CE420, &qword_227782940);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22777EC0C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_227781DE8();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_22776F3A4(v4, v9);
}

id ActivityAwardsMonthlyChallengeQuery.__allocating_init(dateComponents:initialAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v3);
  *&v8[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection] = 0;
  v8[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive] = 0;
  v9 = sub_227781E28();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v8[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock] = sub_227781E18();
  v12 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  v13 = sub_227781DB8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v8[v12], a1, v13);
  v15 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_initialAwardsHandler];
  *v15 = a2;
  v15[1] = a3;
  v18.receiver = v8;
  v18.super_class = v4;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v14 + 8))(a1, v13);
  return v16;
}

id ActivityAwardsMonthlyChallengeQuery.init(dateComponents:initialAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection] = 0;
  v3[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive] = 0;
  v8 = sub_227781E28();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock] = sub_227781E18();
  v11 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  v12 = sub_227781DB8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v4[v11], a1, v12);
  v14 = &v4[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_initialAwardsHandler];
  *v14 = a2;
  *(v14 + 1) = a3;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ActivityAwardsMonthlyChallengeQuery();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a1, v12);
  return v15;
}

uint64_t type metadata accessor for ActivityAwardsMonthlyChallengeQuery()
{
  result = qword_280DD11D0;
  if (!qword_280DD11D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22777EF70()
{
  v1 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  v2 = sub_227781DB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_initialAwardsHandler + 8);

  v4 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock);
}

id ActivityAwardsMonthlyChallengeQuery.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ActivityAwardsMonthlyChallengeQuery();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22777F200(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227781DB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227781DA8();
  v10 = ACHYearMonthDayStringFromDateComponents();

  if (v10)
  {

    (*(v5 + 16))(v8, a1, v4);
    v11 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
    swift_beginAccess();
    (*(v5 + 40))(&v2[v11], v8, v4);
    result = swift_endAccess();
    v13 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive;
    if (v2[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive] == 1)
    {
      v14 = *&v2[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock];
      MEMORY[0x28223BE20](result);
      *(&v22 - 2) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
      sub_227781E08();
      v15 = *MEMORY[0x277CE8DC8];
      v16 = sub_227781F28();
      v18 = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = v2;
      v20 = v2;
      sub_227772550(v16, v18, sub_227780ED8, v19);

      v2[v13] = 1;
    }
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22777F480()
{
  v1[3] = v0;
  v2 = sub_227781F08();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22777F540, 0, 0);
}

uint64_t sub_22777F540()
{
  v1 = v0[6];
  sub_227781EC8();
  v2 = sub_227781EF8();
  v3 = sub_227782008();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22776C000, v2, v3, "Running query immediately.", v4, 2u);
    MEMORY[0x22AA9AED0](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *(v9 + 16) = v8;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE600, qword_227782C20);
  *v11 = v0;
  v11[1] = sub_227778580;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x80000002277830A0, sub_227780EDC, v9, v12);
}

uint64_t sub_22777F6E4(uint64_t a1, uint64_t a2)
{
  v77 = sub_227781F08();
  v76 = *(v77 - 8);
  v4 = *(v76 + 64);
  v5 = MEMORY[0x28223BE20](v77);
  v70 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v68 = v64 - v8;
  MEMORY[0x28223BE20](v7);
  v74 = v64 - v9;
  v72 = sub_227781DB8();
  v71 = *(v72 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v67 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v64 - v16;
  v18 = *(v13 + 16);
  v78 = a1;
  v18(v64 - v16, a1, v12);
  v19 = *(v13 + 80);
  v20 = swift_allocObject();
  v21 = *(v13 + 32);
  v75 = v12;
  v21(v20 + ((v19 + 16) & ~v19), v17, v12);
  v22 = *(a2 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock);
  v73 = a2;
  v79 = a2;
  v80 = sub_22778156C;
  v81 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  sub_227781E08();
  v64[0] = v21;
  v64[1] = v19;
  v65 = v18;
  v66 = v14;
  v74 = ((v19 + 16) & ~v19);
  v23 = v68;
  v24 = v70;

  v25 = aBlock;
  v26 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  v27 = v73;
  swift_beginAccess();
  v28 = v71;
  v29 = v27 + v26;
  v30 = v69;
  v31 = v72;
  (*(v71 + 16))(v69, v29, v72);
  v32 = sub_227781DA8();
  (*(v28 + 8))(v30, v31);
  v33 = ACHYearMonthDayStringFromDateComponents();

  if (v33)
  {
    v34 = sub_227781F28();
    v36 = v35;

    aBlock = v34;
    v83 = v36;
    v37 = sub_227781E58();
    v49 = v48;
    v73 = v37;

    sub_227781ED8();
    v50 = sub_227781EF8();
    v51 = sub_227782008();
    if (os_log_type_enabled(v50, v51))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22776C000, v50, v51, "Obtained proxy for query run. Sending transport request.", v53, 2u);
      MEMORY[0x22AA9AED0](v53, -1, -1);
    }

    (*(v76 + 8))(v23, v77);
    v54 = v74;
    if (v49 >> 60 == 15)
    {
      v55 = 0;
      v56 = v67;
      v57 = v65;
      v58 = v73;
    }

    else
    {
      v59 = v73;
      v55 = sub_227781DD8();
      v56 = v67;
      v58 = v59;
      v57 = v65;
    }

    v60 = v75;
    v57(v56, v78, v75);
    v61 = swift_allocObject();
    (v64[0])(&v54[v61], v56, v60);
    v86 = sub_227779BA0;
    v87 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = sub_22777EC0C;
    v85 = &block_descriptor_2;
    v62 = _Block_copy(&aBlock);

    [v25 transportRequest:9 data:v55 completion:v62];
    _Block_release(v62);

    sub_22776F3A4(v58, v49);
  }

  else
  {
    sub_227775BE8();
    v38 = swift_allocError();
    *v39 = 0;
    swift_willThrow();
    sub_227781EC8();
    v40 = v38;
    v41 = sub_227781EF8();
    v42 = sub_227781FF8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136446210;
      swift_getErrorValue();
      v45 = sub_2277820D8();
      v47 = sub_22776E73C(v45, v46, &aBlock);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_22776C000, v41, v42, "Invalid data: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AA9AED0](v44, -1, -1);
      MEMORY[0x22AA9AED0](v43, -1, -1);
    }

    (*(v76 + 8))(v24, v77);
    aBlock = v38;
    sub_227781FA8();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_227780040(void *a1, uint64_t a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v9 = a1;
  v10 = sub_227781EF8();
  v11 = sub_227781FF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = sub_2277820D8();
    v17 = sub_22776E73C(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22776C000, v10, v11, "Unable to get proxy: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9AED0](v14, -1, -1);
    MEMORY[0x22AA9AED0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v21 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  return sub_227781FA8();
}

uint64_t sub_227780248()
{
  v1 = *MEMORY[0x277CE8DC8];
  v2 = sub_227781F28();
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = v0;
  sub_227772550(v2, v4, sub_227781D8C, v5);

  v6[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive] = 1;
  return result;
}

uint64_t sub_2277802FC(char *a1, void *a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = *&a1[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection];
  *&a1[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection] = a2;
  v14 = a2;

  aBlock[4] = sub_2277806B4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777C0DC;
  aBlock[3] = &block_descriptor_64;
  v15 = _Block_copy(aBlock);
  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_227782018();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  if (swift_dynamicCast())
  {
    v17 = aBlock[7];
    sub_227781FC8();
    v18 = sub_227781FE8();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = a1;
    v20 = a1;
    sub_22777E970(0, 0, v12, &unk_227782E38, v19);
  }

  else
  {
    sub_227781EC8();
    v22 = sub_227781EF8();
    v23 = sub_227782008();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      v26 = *MEMORY[0x277CE8DC8];
      v27 = sub_227781F28();
      v31 = v4;
      v29 = sub_22776E73C(v27, v28, aBlock);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_22776C000, v22, v23, "XPC client-side connection failed to get expected proxy type for %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9AED0](v25, -1, -1);
      MEMORY[0x22AA9AED0](v24, -1, -1);

      return (*(v5 + 8))(v8, v31);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_2277806B4()
{
  v0 = sub_227781F08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v5 = sub_227781EF8();
  v6 = sub_227782008();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = *MEMORY[0x277CE8DC8];
    v10 = sub_227781F28();
    v12 = sub_22776E73C(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22776C000, v5, v6, "XPC client-side connection failed to get proxy for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9AED0](v8, -1, -1);
    MEMORY[0x22AA9AED0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22778085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_227781DB8();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22778091C, 0, 0);
}

uint64_t sub_22778091C()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = sub_227781DA8();
  (*(v2 + 8))(v1, v3);
  v7 = ACHYearMonthDayStringFromDateComponents();

  if (v7)
  {
    v8 = sub_227781F28();
    v10 = v9;

    v0[23] = v8;
    v0[24] = v10;
    v11 = sub_227781E58();
    v13 = v12;
    v0[30] = 0;

    if (v13 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_227781DD8();
      sub_22776F3A4(v11, v13);
    }

    v0[31] = v14;
    v19 = v0[25];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_227780BD4;
    v20 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2277702B4;
    v0[13] = &block_descriptor_71;
    v0[14] = v20;
    [v19 transportRequest:9 data:v14 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = v0[29];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_227780BD4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_227775A90;
  }

  else
  {
    v3 = sub_227780CE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227780CE4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  sub_227781EA8();
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    sub_22776F3A4(v2, v3);
    v5 = *(v0 + 232);
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 208) + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_initialAwardsHandler;
    v10 = *v8;
    v9 = *(v8 + 8);
    sub_227781E98();
    v10();

    sub_22776F3A4(v2, v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_227780E44()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  return sub_227781E08();
}

void sub_227780EE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *MEMORY[0x277CE8DC8];
  v9 = sub_227781F28();
  sub_22777CEE8(v9, v10);

  v11 = *(a1 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection);
  if (v11)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22777C0DC;
    aBlock[3] = &block_descriptor_34;
    v12 = _Block_copy(aBlock);
    v13 = v11;

    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v12);
    sub_227782018();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
    if (swift_dynamicCast())
    {

      *a4 = v19;
    }

    else
    {
      v17 = sub_227781DF8();
      sub_22777C018();
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CE8E00], v17);
      swift_willThrow();
    }
  }

  else
  {
    v15 = sub_227781DF8();
    sub_22777C018();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CE8E08], v15);
    swift_willThrow();
  }
}

id ActivityAwardsMonthlyChallengeQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22778123C()
{
  result = sub_227781DB8();
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

uint64_t dispatch thunk of ActivityAwardsMonthlyChallengeQuery.runQueryImmediately()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_227776384;

  return v6();
}

id sub_22778150C@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_22778156C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_227780040(a1, v4);
}

uint64_t sub_227781608(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_227781660(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22776E73C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2277816BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_227781708(a1, a2);
  sub_227781838(&unk_283ADFD28);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_227781708(uint64_t a1, unint64_t a2)
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

  v6 = sub_227781924(v5, 0);
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

  result = sub_227782058();
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
        v10 = sub_227781F58();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_227781924(v10, 0);
        result = sub_227782028();
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

uint64_t sub_227781838(uint64_t result)
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

  result = sub_227781998(result, v12, 1, v3);
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

void *sub_227781924(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE620, &qword_227782E28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_227781998(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE620, &qword_227782E28);
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

void sub_227781A98(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_227781B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FF20;

  return sub_22778085C(a1, v4, v5, v7, v6);
}

uint64_t sub_227781BE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_45Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}