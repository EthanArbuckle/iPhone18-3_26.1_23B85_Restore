uint64_t sub_23E8B59B8()
{
  sub_23E8B5880();

  return swift_deallocClassInstance();
}

unint64_t get_enum_tag_for_layout_string_10AirPlayKit26RemoteInspectorCoordinatorC5StateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E8B5A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 32))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23E8B5A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

void *sub_23E8B5AFC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_23E8B5B40(unint64_t result, void *a2)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

unint64_t sub_23E8B5BB8(unint64_t result, void *a2)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  v3 = result;
  v4 = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

unint64_t sub_23E8B5C30(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v22 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v1[11];
  os_unfair_lock_lock(*(v7 + 16));
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v7 + 16);
  sub_23E8B5BB8(v9, v8);
  os_unfair_lock_unlock(v12);
  if (v9 >> 62 == 1)
  {
    v20[2] = v3;
    v21 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    sub_23E8810DC((v1 + 6), v23);
    v13 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v10;
    v14[4] = v11;
    v15 = *v13;
    v16 = *(v15 + 40);
    v17 = *(v16 + 16);
    v18 = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v17);
    sub_23E8FB110(a1, v15, sub_23E8B7E78, v14);
    os_unfair_lock_unlock(*(v16 + 16));
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {

    return sub_23E8B5B40(v9, v8);
  }
}

void sub_23E8B6074(unint64_t *a1, id a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 40);
  if (v4 <= 2)
  {
    if (*(a1 + 40))
    {
      if (v4 == 1)
      {
        v12 = [a2 DOMAgent];
        v13 = [v12 dispatcher];

        [v13 childNodeRemovedWithParentNodeId:HIDWORD(v3) nodeId:v3];
      }

      else
      {
        v19 = [a2 DOMAgent];
        v20 = [v19 dispatcher];

        [v20 childNodeCountUpdatedWithNodeId:v3 childNodeCount:HIDWORD(v3)];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v17 = [a2 DOMAgent];
      v18 = [v17 dispatcher];

      [v18 childNodeInsertedWithParentNodeId:v2 previousNodeId:HIDWORD(v2) node:v3];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = a1[2];
    if (*(a1 + 40) <= 4u)
    {
      if (v4 == 3)
      {
        v7 = a1[3];
        v6 = a1[4];
        v8 = [a2 DOMAgent];
        v9 = [v8 dispatcher];

        v10 = sub_23E900854();
        v11 = sub_23E900854();
        [v9 attributeModifiedWithNodeId:v3 name:v10 value:v11];
        swift_unknownObjectRelease();

        return;
      }

      v21 = [a2 DOMAgent];
      v22 = [v21 dispatcher];

      v16 = sub_23E900854();
      [v22 attributeRemovedWithNodeId:v3 name:v16];
      goto LABEL_14;
    }

    if (v4 == 5)
    {
      v14 = [a2 DOMAgent];
      v15 = [v14 dispatcher];

      v16 = sub_23E900854();
      [v15 characterDataModifiedWithNodeId:v3 characterData:v16];
LABEL_14:
      swift_unknownObjectRelease();

      return;
    }

    v23 = [a2 DOMAgent];
    v24 = [v23 dispatcher];

    v25 = *(v3 + 16);
    if (v25)
    {
      v30 = MEMORY[0x277D84F90];
      sub_23E900D04();
      v26 = (v3 + 32);
      do
      {
        v27 = *v26++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_23E900CE4();
        v28 = *(v30 + 16);
        sub_23E900D14();
        sub_23E900D24();
        sub_23E900CF4();
        --v25;
      }

      while (v25);
    }

    sub_23E8B7F00();
    v29 = sub_23E9009A4();

    [v24 inlineStyleInvalidatedWithNodeIds_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_23E8B6458(void *a1)
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E908E60, 0xD000000000000016, 0x800000023E908F40);
  v3 = [a1 DOMAgent];
  v4 = [v3 dispatcher];

  [v4 documentUpdated];

  return swift_unknownObjectRelease();
}

id sub_23E8B6554()
{
  v1 = v0;
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E908E60, 0xD000000000000023, 0x800000023E908EF0);
  v3 = objc_allocWithZone(APKRemoteInspector);
  v4 = sub_23E900854();
  v5 = [v3 initWithName_];

  v6 = [v5 DOMAgent];
  [v6 setDelegate_];

  v7 = [v5 CSSAgent];
  [v7 setDelegate_];

  v8 = [v5 pageAgent];
  [v8 setDelegate_];

  v9 = [v5 networkAgent];
  [v9 setDelegate_];

  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  v12 = APKRemoteInspectorConnected();
  v13 = objc_opt_self();
  v14 = [v13 mainQueue];
  v15 = swift_allocObject();
  swift_weakInit();
  v27 = sub_23E8B7B34;
  v28 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_23E8B6A98;
  v26 = &block_descriptor_4;
  v16 = _Block_copy(&aBlock);

  [v11 addObserverForName:v12 object:0 queue:v14 usingBlock:v16];
  _Block_release(v16);

  v17 = [v10 defaultCenter];
  v18 = APKRemoteInspectorDisconnected();
  v19 = [v13 mainQueue];
  v20 = swift_allocObject();
  swift_weakInit();
  v27 = nullsub_1;
  v28 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_23E8B6A98;
  v26 = &block_descriptor_27;
  v21 = _Block_copy(&aBlock);

  [v17 addObserverForName:v18 object:0 queue:v19 usingBlock:v21];
  _Block_release(v21);

  return v5;
}

uint64_t sub_23E8B696C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 88);
    os_unfair_lock_lock(*(v2 + 16));
    v3 = v1[2];
    v4 = v1[3];
    v5 = v1[4];
    v6 = v1[5];
    v7 = *(v2 + 16);
    sub_23E8B5BB8(v3, v4);
    os_unfair_lock_unlock(v7);
    if (v3 >> 62)
    {
      sub_23E8B5B40(v3, v4);
    }

    else
    {
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v5;
      v8[4] = v6;
      v9 = v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_23E8D7B00(sub_23E8B7B58, v8);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23E8B6A98(uint64_t a1)
{
  v2 = sub_23E900514();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23E900504();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23E8B6B8C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23E8B5C30(a2);
  }

  return result;
}

uint64_t sub_23E8B6C0C()
{
  v9 = v0;
  v1 = v0[7];
  strcpy(v8, "AirPlayKit (");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v0[5] = v1;
  v2 = sub_23E9008D4();
  MEMORY[0x23EF17600](v2);

  MEMORY[0x23EF17600](41, 0xE100000000000000);
  v3 = v8[1];
  v0[8] = v8[0];
  v0[9] = v3;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = type metadata accessor for RunLoopWorkerThread();
  *v5 = v0;
  v5[1] = sub_23E8B6D50;

  return MEMORY[0x2822007B8](v0 + 6, 0, 0, 0x29287472617473, 0xE700000000000000, sub_23E8D7EDC, 0, v6);
}

uint64_t sub_23E8B6D50()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E8B6E4C, 0, 0);
}

uint64_t sub_23E8B6E4C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v0[11] = v3;
  v4 = v3;
  [v4 setQualityOfService_];
  v5 = sub_23E900854();
  [v4 setName_];

  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v6 = sub_23E900764();
  __swift_project_value_buffer(v6, qword_27E367168);
  v7 = sub_23E900744();
  v8 = sub_23E900B14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23E879000, v7, v8, "Configuring RunLoopWorkerThread...", v9, 2u);
    MEMORY[0x23EF18560](v9, -1, -1);
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  v13 = swift_allocObject();
  v0[12] = v13;
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = v10;

  v14 = swift_task_alloc();
  v0[13] = v14;
  v14[2] = v4;
  v14[3] = sub_23E8B7768;
  v14[4] = v13;
  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_23E8B7098;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_23E8B7908, v14, &type metadata for RemoteInspectorCoordinator.ActivationContext);
}

uint64_t sub_23E8B7098()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_23E8B72DC;
  }

  else
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 104);

    *(v2 + 128) = *(v2 + 16);
    *(v2 + 144) = *(v2 + 32);
    v4 = sub_23E8B71CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_23E8B71CC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[7];
  v7 = v6[11];
  os_unfair_lock_lock(*(v7 + 16));
  sub_23E8B7430(v5, v4, v1, v2, v6);
  if (v3)
  {

    v8 = *(v7 + 16);

    os_unfair_lock_unlock(v8);
  }

  else
  {
    v9 = v0[17];
    v10 = v0[18];
    v11 = v0[16];
    v12 = v0[11];
    os_unfair_lock_unlock(*(v7 + 16));

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v13 = v0[1];

    v13();
  }
}

uint64_t sub_23E8B72DC()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_23E8B737C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E888F34;

  return sub_23E8B6BEC(a1, v4, v5, v6);
}

unint64_t sub_23E8B7430(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v10 = sub_23E900764();
  __swift_project_value_buffer(v10, qword_27E367168);
  v11 = a1;
  v12 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_23E900744();
  v14 = sub_23E900B14();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v15 = a3;
  v16 = a4;
  if (os_log_type_enabled(v13, v14))
  {
    v17 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v17 = 136315394;
    log = v13;
    v18 = v11;
    v19 = v15;
    v37 = v14;
    v20 = [v18 description];
    v21 = sub_23E900884();
    v39 = v11;
    v23 = v22;

    v24 = sub_23E887B9C(v21, v23, &v41);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    v25 = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v26 = sub_23E9008D4();
    v28 = sub_23E887B9C(v26, v27, &v41);

    *(v17 + 14) = v28;
    _os_log_impl(&dword_23E879000, log, v37, "Activated on %s with %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v40, -1, -1);
    MEMORY[0x23EF18560](v17, -1, -1);

    v29 = v39;
  }

  else
  {

    v29 = v11;
    v19 = v15;
  }

  v30 = a5[2];
  v31 = a5[3];
  v32 = a5[4];
  v33 = a5[5];
  a5[2] = v29;
  a5[3] = v12;
  a5[4] = v19;
  a5[5] = v16;
  v34 = v29;
  v35 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_23E8B5B40(v30, v31);
}

uint64_t objectdestroyTm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

id sub_23E8B7768@<X0>(void *a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[2];
  result = sub_23E8B6554();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v8;
    a1[2] = v9;
  }

  return result;
}

uint64_t sub_23E8B77A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF28, &qword_23E905768);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);

  sub_23E8D7B00(sub_23E8B7A8C, v13);
}

uint64_t sub_23E8B7914(void (*a1)(__int128 *__return_ptr))
{
  a1(&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF28, &qword_23E905768);
  return sub_23E900A54();
}

uint64_t sub_23E8B79BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF28, &qword_23E905768);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E8B7A8C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF28, &qword_23E905768) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_23E8B7914(v2);
}

uint64_t sub_23E8B7AFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E8B7B58()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_23E8B6458(*(v0 + 16));
}

uint64_t sub_23E8B7B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8B7BD4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_23E9006D4();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[11]);

  v9 = v0 + v3 + v1[13];
  sub_23E881154(*v9, *(v9 + 8), *(v9 + 16) | (*(v9 + 20) << 32), *(v9 + 21));
  sub_23E881180(*(v6 + v1[14]), *(v6 + v1[14] + 8) | (*(v6 + v1[14] + 12) << 32), *(v6 + v1[14] + 13));
  sub_23E8811AC(*(v6 + v1[15]), *(v6 + v1[15] + 8));
  sub_23E881154(*(v6 + v1[16]), *(v6 + v1[16] + 8), *(v6 + v1[16] + 16), *(v6 + v1[16] + 24));
  sub_23E8811AC(*(v6 + v1[17]), *(v6 + v1[17] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E8B7D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8B7DC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_23E8B6B8C(v2, v3);
}

uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_23E8B7E78(unint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_23E8B6074(a1, *(v1 + 16));
}

uint64_t sub_23E8B7E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E8B7F00()
{
  result = qword_27E35EF30;
  if (!qword_27E35EF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35EF30);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E8B7F60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E8B7FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E8B8004()
{
  sub_23E900CB4();

  strcpy(v19, "Transaction (");
  HIWORD(v19[1]) = -4864;
  v1 = *(v0 + *(type metadata accessor for RenderTransactionAction() + 20));
  *&v16 = *(v1 + 16);
  v2 = sub_23E900DD4();
  MEMORY[0x23EF17600](v2);

  result = MEMORY[0x23EF17600](1528838697, 0xE400000000000000);
  v20 = v19[0];
  v21 = v19[1];
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v1 + 32;
    while (v5 < *(v1 + 16))
    {
      v19[0] = v5;
      sub_23E8810DC(v6, &v19[1]);
      sub_23E8810DC(&v19[1], &v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF38, &qword_23E9057E0);
      if (swift_dynamicCast())
      {
        v7 = *(&v17 + 1);
        v8 = v18;
        __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
        v9 = (*(v8 + 8))(v7, v8);
        v11 = v10;
        __swift_destroy_boxed_opaque_existential_1(&v16);
      }

      else
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        sub_23E87E458(&v16, &qword_27E35EF40, &qword_23E9057E8);
        v9 = 0;
        v11 = 0;
      }

      v14 = 2314;
      v15 = 0xE200000000000000;
      *&v16 = v5;
      v12 = sub_23E900DD4();
      MEMORY[0x23EF17600](v12);

      MEMORY[0x23EF17600](2108704, 0xE300000000000000);
      if (!v11)
      {
        sub_23E8810DC(&v19[1], &v16);
        v9 = sub_23E9008D4();
        v11 = v13;
      }

      ++v5;
      MEMORY[0x23EF17600](v9, v11);

      MEMORY[0x23EF17600](v14, v15);

      result = sub_23E87E458(v19, qword_27E35EF48, &unk_23E9057F0);
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    MEMORY[0x23EF17600](23818, 0xE200000000000000);
    return v20;
  }

  return result;
}

uint64_t sub_23E8B82D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ContainerContent.Child();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E9006D4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContainerContent.Child.id.getter(v11);
  sub_23E882004(a3, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = &qword_27E35E438;
      v14 = &unk_23E907E20;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v15 = sub_23E8A25C4();
    }

    else
    {
      v13 = &qword_27E35E430;
      v14 = &unk_23E902C80;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v15 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = &unk_27E35E440;
    v14 = &unk_23E902C90;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v15 = sub_23E8A26F8();
  }

  else
  {
    v13 = &unk_27E35E630;
    v14 = &qword_23E903300;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v15 = sub_23E8A2828();
  }

  v21 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_23E87E3F0(v7, boxed_opaque_existential_1, v13, v14);
  return sub_23E8F7C3C(v19, v11);
}

uint64_t RenderNode.withContentSemantic(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v7 = *(a2 + 16);
  KeyPath = swift_getKeyPath();
  v8 = v4;
  sub_23E8CCC04(KeyPath, &v8, a3);
}

uint64_t RenderNode.withPosition(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v11 = WORD2(a3);
  v8 = *(a4 + 16);
  KeyPath = swift_getKeyPath();
  sub_23E8CCC04(KeyPath, v9, a5);
}

uint64_t RenderNode.withSize(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 >> 40;
  v10 = *(a3 + 16);
  KeyPath = swift_getKeyPath();
  v11 = a1;
  v13 = BYTE4(a2);
  v12 = a2;
  v14 = v7;
  sub_23E8CCC04(KeyPath, &v11, a4);
}

uint64_t RenderNode.withTransform(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a5 + 16);
  KeyPath = swift_getKeyPath();
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v15 = a4;
  sub_23E8CCC04(KeyPath, v14, a6);
}

uint64_t sub_23E8B86CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 + 16);
  KeyPath = swift_getKeyPath();
  v10 = a1;
  v11 = a2;
  sub_23E8CCC04(KeyPath, &v10, a4);
}

uint64_t RenderNode.withBackgroundColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a4 + 16);
  KeyPath = swift_getKeyPath();
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  sub_23E8CCC04(KeyPath, v12, a5);
}

uint64_t RenderNode.withCornerRadius(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v7 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v8 = a3;
  sub_23E8CCC04(KeyPath, &v8, a2);
}

uint64_t RenderNode.withInsets(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  v13 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  *v14 = a3;
  *&v14[1] = a4;
  *&v14[2] = a5;
  *&v14[3] = a6;
  sub_23E8CCC04(KeyPath, v14, a2);
}

uint64_t sub_23E8B88D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v30 - v5;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_23E900BD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v30 - v17;
  v19 = *(a1 + 40);
  v20 = *(v6 + 32);
  v31 = v1;
  v20(v7, v6);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v14, v9);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 32) = 7955819;
    *(inited + 16) = xmmword_23E902EF0;
    *(inited + 40) = 0xE300000000000000;
    v23 = v31;
    v34[0] = sub_23E89CB38(*(v31 + *(a1 + 36)));
    v34[1] = v24;
    sub_23E900C64();
    *(inited + 88) = 0x65756C6176;
    *(inited + 96) = 0xE500000000000000;
    swift_getAssociatedConformanceWitness();
    sub_23E900D94();
    v25 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v26 = sub_23E9006D4();
    v27 = *(v26 - 8);
    v28 = v32;
    (*(v27 + 16))(v32, v23, v26);
    (*(v27 + 56))(v28, 0, 1, v26);
    v33 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
    swift_getWitnessTable();
    v29 = sub_23E8FD840(0x656C797473, 0xE500000000000000, v28, v34);
    sub_23E87E458(v34, &qword_27E35E6C8, &unk_23E9039A0);
    sub_23E87E458(v28, &unk_27E35F820, &qword_23E9064A0);
    (*(v15 + 8))(v18, AssociatedTypeWitness);
    return v29;
  }
}

uint64_t sub_23E8B8D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_23E9006B4() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for RenderStyleAction();
  v8 = *(v7 + 36);
  v9 = *(a2 + v8);
  v10 = sub_23E89CB38(*(a1 + v8));
  v12 = v11;
  if (v10 == sub_23E89CB38(v9) && v12 == v13)
  {
  }

  else
  {
    v15 = sub_23E900E04();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(v7 + 40);
  v18 = *(*(*(a4 + 8) + 8) + 8);
  return sub_23E900844() & 1;
}

uint64_t sub_23E8B8E60(uint64_t a1, uint64_t a2)
{
  sub_23E9006D4();
  sub_23E88206C();
  sub_23E900824();
  sub_23E89CB38(*(v2 + *(a2 + 36)));
  sub_23E900904();

  v4 = *(a2 + 16);
  v5 = *(*(*(a2 + 24) + 8) + 8);
  v6 = v2 + *(a2 + 40);
  return sub_23E900824();
}

uint64_t sub_23E8B8EF4(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E8B8E60(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8B8F48(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  sub_23E8B8E60(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8B8FB4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8B9010(uint64_t a1)
{
  result = sub_23E9006D4();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23E8B90A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23E9006D4() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0xE7)
  {
    v13 = 231;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = a1 + v10;
        if (v12 > 0xE7)
        {
          v25 = *(v8 + 48);

          return v25(&v23[v11 + 1] & ~v11, v9);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0x19)
          {
            return v24 - 24;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_23E8B9310(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23E9006D4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0xE7)
  {
    v15 = 231;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + v12 + 1) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12];
    if (v14 > 0xE7)
    {
      v25 = *(v10 + 56);

      v25(&v24[v13 + 1] & ~v13, a2, v11);
    }

    else
    {
      *v24 = a2 + 24;
    }
  }
}

uint64_t AirPlayOverlayAdaptor.__allocating_init(connectionProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E610, &qword_23E905A40);
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xC000000000000000;
  *(v2 + 56) = v3;
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_23E889AF4(a1, v2 + 16);
  return v2;
}

uint64_t AirPlayOverlayAdaptor.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 72);
  return result;
}

uint64_t AirPlayOverlayAdaptor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*AirPlayOverlayAdaptor.delegate.modify(uint64_t *a1))()
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
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_23E8B97C0;
}

uint64_t AirPlayOverlayAdaptor.init(connectionProvider:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E610, &qword_23E905A40);
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xC000000000000000;
  *(v1 + 56) = v3;
  *(v1 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_23E889AF4(a1, v1 + 16);
  return v1;
}

uint64_t sub_23E8B9858()
{
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_23E900764();
  v0[18] = __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0xD00000000000001FLL, 0x800000023E909030);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_23E8B99C4;

    return AirPlayOverlayAdaptor.connect()();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23E8B99C4()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E8B9B00, 0, 0);
  }

  else
  {
    v4 = v3[19];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23E8B9B00()
{
  v26 = v0;
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];

  v4 = v1;
  v5 = sub_23E900744();
  v6 = sub_23E900B04();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136446210;
    v0[16] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, &v25);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23E879000, v5, v6, "Failed to connect: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  v14 = v0[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    v18 = v0[21];
    if (v17)
    {
      v19 = *(v16 + 72);
      ObjectType = swift_getObjectType();
      v0[5] = type metadata accessor for AirPlayOverlayAdaptor();
      v0[6] = &protocol witness table for AirPlayOverlayAdaptor;
      v0[2] = v16;
      v21 = *(v19 + 16);

      v21(v0 + 2, v18, ObjectType, v19);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      goto LABEL_9;
    }

    v22 = v18;
  }

  else
  {
    v22 = v0[21];
  }

LABEL_9:
  v23 = v0[1];

  return v23();
}

uint64_t sub_23E8B9D74()
{
  v13 = v0;
  v1 = *(v0[6] + 56);
  v0[7] = v1;
  os_unfair_lock_lock((v1 + 48));
  sub_23E8BA7A0((v1 + 16), &v12);
  os_unfair_lock_unlock((v1 + 48));
  v2 = v12;
  v0[8] = v12;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = sub_23E900764();
  __swift_project_value_buffer(v4, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x287463656E6E6F63, 0xE900000000000029);
  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v5);
  v7 = *(v6 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_23E8BA060;

  return v11(v2, v5, v6);
}

uint64_t sub_23E8BA060(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 72);
  v7 = *v3;
  v5[10] = a1;
  v5[11] = v2;

  if (v2)
  {
    v8 = sub_23E8BA380;
  }

  else
  {
    v5[12] = a2;
    v8 = sub_23E8BA188;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_23E8BA188()
{
  v1 = v0[12];
  v15 = v0[11];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v1 + 16);

  v7(sub_23E8BB5B0, v6, ObjectType, v1);

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v1 + 40);

  v9(sub_23E8BB5B8, v8, ObjectType, v1);

  v10 = swift_task_alloc();
  v10[2] = v2;
  v10[3] = v1;
  v10[4] = v3;
  os_unfair_lock_lock(v4 + 12);
  sub_23E8BB5C0(&v4[4]);
  if (v15)
  {
    v11 = (v0[7] + 48);

    os_unfair_lock_unlock(v11);
  }

  else
  {
    v12 = v0[10];
    v13 = v0[8];
    os_unfair_lock_unlock((v0[7] + 48));
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_23E8BA380()
{
  v11 = v0;
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[11];
  v3 = v0[7];
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v3 + 12);
  sub_23E8BB508(&v3[4]);
  os_unfair_lock_unlock(v3 + 12);

  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[4];
  sub_23E8AD368(v0[3], v10);
  v6 = v10[0];
  if (v10[0] == 7)
  {
    swift_willThrow();
  }

  else
  {
    sub_23E8BB524();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

void sub_23E8BA4BC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1 + 2;
  v4 = a1[2];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  v9 = v8 >> 62;
  if ((v8 >> 62) - 1 < 2)
  {
    v22 = *a2;
    sub_23E8BC6F8(v6, v7, v4, v8);
    swift_unknownObjectRetain();
    v11 = v7;
    if ([v6 isExternalPlaybackActive])
    {
      swift_unknownObjectRelease();

      sub_23E8BB524();
      swift_allocError();
      v13 = 1;
    }

    else
    {
      sub_23E8BB6D8(v6, v7, v4, v8);
      *a1 = v6;
      a1[1] = v7;
      *v5 = 0;
      v5[1] = 0;
      if (v9 == 2)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v16 = a2[9];
          ObjectType = swift_getObjectType();
          v21[3] = v22;
          v21[4] = &protocol witness table for AirPlayOverlayAdaptor;
          v21[0] = a2;
          v18 = *(v16 + 24);

          v18(v21, ObjectType, v16);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      sub_23E8BB524();
      swift_allocError();
      v13 = 3;
    }

    *v12 = v13;
    swift_willThrow();
LABEL_12:
    sub_23E8BB6D8(v6, v7, v4, v8);
    return;
  }

  if (!v9)
  {
    sub_23E8BC6F8(*a1, v7, v4, v8);
    swift_unknownObjectRetain();
    v15 = v7;
    if ([v6 isExternalPlaybackActive])
    {
      sub_23E8BB6D8(v6, v7, v4, v8);

      swift_unknownObjectRelease();
      *a1 = v6;
      a1[1] = v7;
      *(a1 + 1) = xmmword_23E905A30;
      *a3 = v6;
      swift_unknownObjectRetain();
      return;
    }

    sub_23E8BB524();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  sub_23E8BB524();
  swift_allocError();
  *v19 = 2;
  swift_willThrow();
}

void *sub_23E8BA7BC(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = result[3] >> 62;
  v7 = *a2;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      return result;
    }

    v8 = result[2];
    swift_unknownObjectRelease();
  }

  else if (!v6)
  {
    return result;
  }

  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v9 = sub_23E900764();
  __swift_project_value_buffer(v9, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x2865736F6C436E6FLL, 0xE900000000000029);
  *v3 = v4;
  v3[1] = v5;
  v3[2] = 0;
  v3[3] = 0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = a2[9];
    ObjectType = swift_getObjectType();
    v13[3] = v7;
    v13[4] = &protocol witness table for AirPlayOverlayAdaptor;
    v13[0] = a2;
    v12 = *(v10 + 24);

    v12(v13, ObjectType, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

uint64_t AirPlayOverlayAdaptor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  sub_23E8BB5E0(v0 + 64);
  return v0;
}

uint64_t AirPlayOverlayAdaptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  sub_23E8BB5E0(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t AirPlayOverlayAdaptor.activate(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-v6];
  v8 = *(v2 + 56);
  v14 = a1;
  v15 = v2;
  os_unfair_lock_lock((v8 + 48));
  sub_23E8BB608((v8 + 16));
  os_unfair_lock_unlock((v8 + 48));
  v9 = sub_23E900A74();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_23E884370(0, 0, v7, &unk_23E905A60, v11);
}

void *sub_23E8BAB2C(void *result, void *a2)
{
  v4 = result[3];
  if (v4 >> 62 == 3 && v4 == 0xC000000000000000 && (result[1] | result[2] | *result) == 0)
  {
    v13[12] = v2;
    v13[13] = v3;
    v6 = result;
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v8 = sub_23E900764();
    __swift_project_value_buffer(v8, qword_27E367138);
    sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x6574617669746361, 0xEF293A6874697728);
    v9 = swift_allocObject();
    swift_weakInit();
    v13[4] = sub_23E8BC250;
    v13[5] = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_23E8906D8;
    v13[3] = &block_descriptor_5;
    v10 = _Block_copy(v13);

    v11 = a2;
    v12 = [a2 beginObserveringExternalPlaybackChangeWithChangeHandler_];
    _Block_release(v10);
    *v6 = v11;
    v6[1] = v12;
    v6[2] = 0;
    v6[3] = 0;
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_23E8BACF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_23E900A74();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_23E884370(0, 0, v3, &unk_23E905BA8, v7);
  }

  return result;
}

Swift::Void __swiftcall AirPlayOverlayAdaptor.deactivate()()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 48));
  sub_23E8BB6D8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x6176697463616564, 0xEC00000029286574);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xC000000000000000;

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t sub_23E8BAF34()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23E8BC344();
  }

  return result;
}

uint64_t sub_23E8BAFA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 56);
    os_unfair_lock_lock((v1 + 48));
    sub_23E8BC328((v1 + 16));
    os_unfair_lock_unlock((v1 + 48));
  }

  return result;
}

uint64_t sub_23E8BB020(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  if (*(result + 24) >> 62 == 1)
  {
    v31[13] = v4;
    v31[14] = v5;
    v10 = result;
    v11 = v6;
    v29 = *result;
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v12 = sub_23E900764();
    __swift_project_value_buffer(v12, qword_27E367138);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = sub_23E900744();
    v14 = sub_23E900B14();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v28 = a3;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EFE0, &qword_23E904D80);
      v17 = sub_23E9008D4();
      v27 = v11;
      v19 = sub_23E887B9C(v17, v18, v31);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v30[0] = a2;
      v30[1] = v28;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EFE8, qword_23E905BB8);
      v20 = sub_23E9008D4();
      v22 = sub_23E887B9C(v20, v21, v31);

      *(v15 + 14) = v22;
      v11 = v27;
      _os_log_impl(&dword_23E879000, v13, v14, "Updating state to connected to player %{public}s with %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v16, -1, -1);
      v23 = v15;
      a3 = v28;
      MEMORY[0x23EF18560](v23, -1, -1);
    }

    *v10 = v29;
    *(v10 + 16) = a2;
    *(v10 + 24) = a3 | 0x8000000000000000;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = a4[9];
      ObjectType = swift_getObjectType();
      v30[3] = v11;
      v30[4] = &protocol witness table for AirPlayOverlayAdaptor;
      v30[0] = a4;
      v26 = *(v24 + 8);
      swift_unknownObjectRetain();

      v26(v30, ObjectType, v24);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      return swift_unknownObjectRetain();
    }
  }

  return result;
}

void sub_23E8BB324(uint64_t a1, void *a2)
{
  if (*(a1 + 24) >> 62 == 1)
  {
    v18[9] = v2;
    v18[10] = v3;
    v6 = *a1;
    v7 = *(a1 + 8);
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v8 = sub_23E900764();
    __swift_project_value_buffer(v8, qword_27E367138);
    v9 = a2;
    v10 = sub_23E900744();
    v11 = sub_23E900B04();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136446210;
      v14 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
      v15 = sub_23E9008D4();
      v17 = sub_23E887B9C(v15, v16, v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_23E879000, v10, v11, "Unable to broker a connection on external playback changed: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x23EF18560](v13, -1, -1);
      MEMORY[0x23EF18560](v12, -1, -1);
    }

    if ([v6 isExternalPlaybackActive])
    {
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      swift_unknownObjectRelease();

      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0xC000000000000000;
    }
  }
}

unint64_t sub_23E8BB524()
{
  result = qword_27E35EFD8;
  if (!qword_27E35EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EFD8);
  }

  return result;
}

uint64_t sub_23E8BB578()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E8BB624(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E889AD8;

  return sub_23E8B9838(a1, v4, v5, v6);
}

void sub_23E8BB6D8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if ((a4 >> 62) > 1)
  {
    if (a4 >> 62 == 2)
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_23E8BB774()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 72);
  return result;
}

uint64_t sub_23E8BB7BC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_23E8BB820(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_23E8BC798;
}

void sub_23E8BB8B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
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

void sub_23E8BB960()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock((v1 + 48));
  sub_23E8BB6D8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x6176697463616564, 0xEC00000029286574);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xC000000000000000;

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t sub_23E8BBA4C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E889AD8;

  return AirPlayOverlayAdaptor.connect()();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AirPlayOverlayAdaptor.assertConnected()()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 40) >> 62 != 2)
  {
    sub_23E8BB524();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
  }

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t AirPlayOverlayAdaptor.sendAction(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23E8BBB74, 0, 0);
}

uint64_t sub_23E8BBB74()
{
  v1 = *(v0[3] + 56);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 40);
  if (v2 >> 62 == 2)
  {
    v0[4] = *(v1 + 32);
    v3 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v1 + 48));
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 64);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_23E8BBD4C;
    v8 = v0[2];

    return v12(v8, ObjectType, v3);
  }

  else
  {
    sub_23E8BB524();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    os_unfair_lock_unlock((v1 + 48));
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23E8BBD4C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23E8BBEC4;
  }

  else
  {
    v3 = sub_23E8BBE60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E8BBE60()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E8BBEC4()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

void sub_23E8BBF28()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 40) >> 62 != 2)
  {
    sub_23E8BB524();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
  }

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t sub_23E8BBFA4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E888F34;

  return AirPlayOverlayAdaptor.sendAction(_:)(a1);
}

uint64_t sub_23E8BC03C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23E8BC08C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t get_enum_tag_for_layout_string_10AirPlayKit0aB14OverlayAdaptorC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23E8BC150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 32))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 24) >> 57) >> 5) | (4 * ((*(a1 + 24) >> 57) & 0x18 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23E8BC1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_23E8BC214(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[3] = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0xC000000000000000;
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E8BC274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E888F34;

  return sub_23E8B9838(a1, v4, v5, v6);
}

void sub_23E8BC344()
{
  v29[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_23E900614();
  v28[0] = 0;
  v2 = [v0 propertyListWithData:v1 options:0 format:0 error:v28];

  v3 = v28[0];
  if (v2)
  {
    sub_23E900C04();
    swift_unknownObjectRelease();
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v4 = sub_23E900764();
    __swift_project_value_buffer(v4, qword_27E367138);
    sub_23E889154(v29, v28);
    v5 = sub_23E900744();
    v6 = sub_23E900B14();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27 = v8;
      *v7 = 136446210;
      sub_23E889154(v28, v26);
      v9 = sub_23E9008D4();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v28);
      v12 = sub_23E887B9C(v9, v11, &v27);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_23E879000, v5, v6, "Incoming message: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x23EF18560](v8, -1, -1);
      MEMORY[0x23EF18560](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v13 = v3;
    v14 = sub_23E900564();

    swift_willThrow();
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v15 = sub_23E900764();
    __swift_project_value_buffer(v15, qword_27E367138);
    v16 = v14;
    v17 = sub_23E900744();
    v18 = sub_23E900B04();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136446210;
      v28[0] = v14;
      v21 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
      v22 = sub_23E9008D4();
      v24 = sub_23E887B9C(v22, v23, v29);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_23E879000, v17, v18, "Unable to deserialize incoming property list message: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x23EF18560](v20, -1, -1);
      MEMORY[0x23EF18560](v19, -1, -1);
    }

    else
    {
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_23E8BC6F8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if ((a4 >> 62) > 1)
  {
    if (a4 >> 62 == 2)
    {
      swift_unknownObjectRetain();
      v5 = a2;

      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_unknownObjectRetain();

    v4 = a2;
  }
}

uint64_t dispatch thunk of AirPlayConnectionProviding.makeAirPlayConnection(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23E889970;

  return v11(a1, a2, a3);
}

uint64_t sub_23E8BC8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v37 = MEMORY[0x277D84F90];
  sub_23E8AF97C(0, v1, 0);
  v2 = v37;
  v4 = -1 << *(a1 + 32);
  v30 = a1 + 64;
  result = sub_23E900C24();
  if (result < 0 || (v6 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v29 = v1;
    v7 = *(a1 + 36);
    v8 = 1;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v30 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      v10 = *(a1 + 56) + 72 * v6;
      v32 = *v10;
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 16);
      v36 = *(v10 + 64);
      v34 = v12;
      v35 = v11;
      v33 = v13;
      result = sub_23E88FEB4(&v32, v31);
      v37 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_23E8AF97C((v14 > 1), v15 + 1, 1);
        v2 = v37;
      }

      *(v2 + 16) = v15 + 1;
      v16 = (v2 + (v15 << 6));
      v17 = v32;
      v18 = v33;
      v19 = v35;
      v16[4] = v34;
      v16[5] = v19;
      v16[2] = v17;
      v16[3] = v18;
      v20 = 1 << *(a1 + 32);
      if (v6 >= v20)
      {
        goto LABEL_25;
      }

      v21 = *(v30 + 8 * v9);
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v6 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v23 = v29;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v23 = v29;
        v26 = (a1 + 72 + 8 * v9);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_23E889730(v6, v7, 0);
            v6 = __clz(__rbit64(v27)) + v24;
            goto LABEL_18;
          }
        }

        result = sub_23E889730(v6, v7, 0);
        v6 = v20;
      }

LABEL_18:
      if (v8 == v23)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(a1 + 36);
        ++v8;
        if (v6 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23E8BCB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[31] = a1;
  v4[32] = a2;
  return MEMORY[0x2822009F8](sub_23E8BCB6C, v3, 0);
}

uint64_t sub_23E8BCB6C()
{
  v1 = *(v0 + 272);
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  v5 = sub_23E88CA70(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v7 = *(v2 + 56) + 72 * v5;
  *(v0 + 16) = *v7;
  v8 = *(v7 + 16);
  v9 = *(v7 + 32);
  v10 = *(v7 + 48);
  *(v0 + 80) = *(v7 + 64);
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  *(v0 + 32) = v8;
  v11 = *(v0 + 16);
  v26 = *(v0 + 24);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 80);
  sub_23E88FEB4(v0 + 16, v0 + 88);

  if (v26)
  {
    v19 = *(v0 + 248);
    *(v0 + 88) = v11;
    *(v0 + 96) = v26;
    *(v0 + 104) = v13;
    *(v0 + 112) = v12;
    *(v0 + 120) = v15;
    *(v0 + 128) = v14;
    *(v0 + 136) = v17;
    *(v0 + 144) = v16;
    *(v0 + 16) = v11;
    *(v0 + 24) = v26;
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 48) = v15;
    *(v0 + 56) = v14;
    *(v0 + 64) = v17;
    *(v0 + 72) = v16;
    *(v0 + 80) = v18;
    sub_23E895FE4(v0 + 88, v0 + 160);
    sub_23E87E458(v0 + 16, &qword_27E35F020, &qword_23E905D48);
    v20 = *(v0 + 104);
    v21 = *(v0 + 136);
    v22 = *(v0 + 88);
    v19[2] = *(v0 + 120);
    v19[3] = v21;
    *v19 = v22;
    v19[1] = v20;
    goto LABEL_8;
  }

LABEL_7:
  v23 = *(v0 + 248);
  *(v0 + 16) = v11;
  *(v0 + 24) = 0;
  *(v0 + 32) = v13;
  *(v0 + 40) = v12;
  *(v0 + 48) = v15;
  *(v0 + 56) = v14;
  *(v0 + 64) = v17;
  *(v0 + 72) = v16;
  *(v0 + 80) = v18;
  sub_23E87E458(v0 + 16, &qword_27E35F020, &qword_23E905D48);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
LABEL_8:
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23E8BCD88(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_23E8AF7BC(0, v12, 0);
    v13 = v25;
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_23E8891B4(v14, v11, a2, a3);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23E8AF7BC((v16 > 1), v17 + 1, 1);
        v13 = v25;
      }

      v23 = v7;
      v24 = sub_23E8C4DA0(v21, a2, a3);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      sub_23E8891B4(v11, boxed_opaque_existential_1, a2, a3);
      *(v13 + 16) = v17 + 1;
      sub_23E881028(&v22, v13 + 40 * v17 + 32);
      sub_23E87E458(v11, a2, a3);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_23E8BCFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_23E8AF95C(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_23E8810DC(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23E8AF95C((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23E8BD124(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  v21[1] = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v25 = MEMORY[0x277D84F90];
    sub_23E8AF7BC(0, v13, 0);
    v14 = v25;
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_23E8C4DF4(v15, v12, a3);
      v25 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_23E8AF7BC((v17 > 1), v18 + 1, 1);
        v14 = v25;
      }

      v23 = v8;
      v24 = sub_23E8C4E5C(a4, a3);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      sub_23E8C4DF4(v12, boxed_opaque_existential_1, a3);
      *(v14 + 16) = v18 + 1;
      sub_23E881028(&v22, v14 + 40 * v18 + 32);
      sub_23E8C4EA4(v12, a3);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_23E8BD2DC(uint64_t a1)
{
  v2 = type metadata accessor for ContainerContent.Child();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_23E8AFA38(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_23E8C4DF4(v9, v6, type metadata accessor for ContainerContent.Child);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_23E8AFA38((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_23E8C4E5C(&qword_27E35F050, type metadata accessor for ContainerContent.Child);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_23E8C4DF4(v6, boxed_opaque_existential_1, type metadata accessor for ContainerContent.Child);
      *(v8 + 16) = v12 + 1;
      sub_23E881028(&v15, v8 + 40 * v12 + 32);
      sub_23E8C4EA4(v6, type metadata accessor for ContainerContent.Child);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_23E8BD4C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_23E900D04();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_23E900E94();
      sub_23E900CE4();
      v6 = *(v7 + 16);
      sub_23E900D14();
      sub_23E900D24();
      sub_23E900CF4();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_23E8BD568(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 544) = a3;
  *(v3 + 400) = a1;
  *(v3 + 408) = a2;
  v4 = type metadata accessor for RenderAssetAction();
  *(v3 + 416) = v4;
  v5 = *(v4 - 8);
  *(v3 + 424) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 432) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0);
  *(v3 + 440) = v7;
  v8 = *(v7 - 8);
  *(v3 + 448) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F008, &qword_23E905D10) - 8) + 64) + 15;
  *(v3 + 480) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F010, &unk_23E905D18);
  *(v3 + 488) = v11;
  v12 = *(v11 - 8);
  *(v3 + 496) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 504) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750) - 8) + 64) + 15;
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8BD790, 0, 0);
}

uint64_t sub_23E8BD790()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 408);
  v47 = sub_23E88A574(0, *(v2 + 16), 0, MEMORY[0x277D84F90]);
  v3 = v2 + 56;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = (63 - v5) >> 6;
  v48 = v1 & 1;
  v51 = v2;

  v13 = 0;
  v49 = v7;
  v50 = v2 + 56;
  while (v6)
  {
LABEL_11:
    v18 = *(v0 + 520);
    v19 = *(v0 + 512);
    v20 = (*(v51 + 48) + ((v13 << 12) | (__clz(__rbit64(v6)) << 6)));
    v21 = v20[3];
    v23 = *v20;
    v22 = v20[1];
    *(v0 + 48) = v20[2];
    *(v0 + 64) = v21;
    *(v0 + 16) = v23;
    *(v0 + 32) = v22;
    v24 = sub_23E900A74();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v18, 1, 1, v24);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = (v26 + 16);
    *(v26 + 24) = 0;
    v28 = *(v0 + 32);
    *(v26 + 32) = *(v0 + 16);
    *(v26 + 48) = v28;
    v29 = *(v0 + 64);
    *(v26 + 64) = *(v0 + 48);
    *(v26 + 80) = v29;
    *(v26 + 96) = v48;
    sub_23E8891B4(v18, v19, &qword_27E35E5E0, &qword_23E905750);
    v30 = (*(v25 + 48))(v19, 1, v24);
    v31 = *(v0 + 512);
    if (v30 == 1)
    {
      sub_23E895FE4(v0 + 16, v0 + 80);
      sub_23E895FE4(v0 + 16, v0 + 144);
      sub_23E87E458(v31, &qword_27E35E5E0, &qword_23E905750);
    }

    else
    {
      sub_23E895FE4(v0 + 16, v0 + 208);
      sub_23E895FE4(v0 + 16, v0 + 272);
      sub_23E900A64();
      (*(v25 + 8))(v31, v24);
    }

    v7 = v49;
    if (*v27)
    {
      v32 = *(v26 + 24);
      v33 = *v27;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v34 = sub_23E900A34();
      v36 = v35;
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = **(v0 + 400);

    if (v36 | v34)
    {
      v14 = v0 + 336;
      *(v0 + 336) = 0;
      *(v0 + 344) = 0;
      *(v0 + 352) = v34;
      *(v0 + 360) = v36;
    }

    else
    {
      v14 = 0;
    }

    v6 &= v6 - 1;
    v15 = *(v0 + 520);
    v16 = *(v0 + 440);
    *(v0 + 368) = 1;
    *(v0 + 376) = v14;
    *(v0 + 384) = v37;
    swift_task_create();

    sub_23E899A78(v0 + 16);
    v8 = sub_23E87E458(v15, &qword_27E35E5E0, &qword_23E905750);
    v3 = v50;
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822004E8](v8, v9, v10, v11, v12);
    }

    if (v17 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v17);
    ++v13;
    if (v6)
    {
      v13 = v17;
      goto LABEL_11;
    }
  }

  v38 = *(v0 + 504);
  v39 = *(v0 + 440);
  v41 = *(v0 + 400);
  v40 = *(v0 + 408);

  v42 = *v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
  sub_23E900A84();
  *(v0 + 528) = v47;
  v43 = *(MEMORY[0x277D85828] + 4);
  v44 = swift_task_alloc();
  *(v0 + 536) = v44;
  *v44 = v0;
  v44[1] = sub_23E8BDBC8;
  v45 = *(v0 + 504);
  v8 = *(v0 + 480);
  v11 = *(v0 + 488);
  v12 = v0 + 392;
  v9 = 0;
  v10 = 0;

  return MEMORY[0x2822004E8](v8, v9, v10, v11, v12);
}

uint64_t sub_23E8BDBC8()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 528);

    v5 = sub_23E8BE064;
  }

  else
  {
    v5 = sub_23E8BDCE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E8BDCE0()
{
  v1 = v0[60];
  v2 = (*(v0[56] + 48))(v1, 1, v0[55]);
  v3 = v0[66];
  if (v2 == 1)
  {
    (*(v0[62] + 8))(v0[63], v0[61]);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[56];
      v6 = v0[66] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v37 = v0[53];
      v38 = *(v5 + 72);
      v7 = MEMORY[0x277D84F90];
      do
      {
        v9 = v0[57];
        v8 = v0[58];
        v10 = v0[52];
        sub_23E8891B4(v6, v8, &qword_27E35E658, &qword_23E905CE0);
        sub_23E8C4878(v8, v9);
        v11 = (*(v37 + 48))(v9, 1, v10);
        v12 = v0[57];
        if (v11 == 1)
        {
          sub_23E87E458(v12, &qword_27E35E658, &qword_23E905CE0);
        }

        else
        {
          sub_23E8C48E8(v12, v0[54]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_23E88A54C(0, v7[2] + 1, 1, v7);
          }

          v14 = v7[2];
          v13 = v7[3];
          if (v14 >= v13 >> 1)
          {
            v7 = sub_23E88A54C(v13 > 1, v14 + 1, 1, v7);
          }

          v15 = v0[54];
          v7[2] = v14 + 1;
          sub_23E8C48E8(v15, v7 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v14);
        }

        v6 += v38;
        --v4;
      }

      while (v4);
      v26 = v0[66];
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    v27 = v0[65];
    v29 = v0[63];
    v28 = v0[64];
    v31 = v0[59];
    v30 = v0[60];
    v33 = v0[57];
    v32 = v0[58];
    v34 = v0[54];

    v35 = v0[1];

    return v35(v7);
  }

  else
  {
    sub_23E8C4878(v1, v0[59]);
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    v18 = v0[66];
    if (v17 >= v16 >> 1)
    {
      v18 = sub_23E88A574(v16 > 1, v17 + 1, 1, v0[66]);
    }

    v19 = v0[59];
    v20 = v0[56];
    *(v18 + 16) = v17 + 1;
    sub_23E8C4878(v19, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17);
    v0[66] = v18;
    v21 = *(MEMORY[0x277D85828] + 4);
    v22 = swift_task_alloc();
    v0[67] = v22;
    *v22 = v0;
    v22[1] = sub_23E8BDBC8;
    v23 = v0[63];
    v24 = v0[60];
    v25 = v0[61];

    return MEMORY[0x2822004E8](v24, 0, 0, v25, v0 + 49);
  }
}

uint64_t sub_23E8BE064()
{
  v1 = v0[65];
  v2 = v0[64];
  v4 = v0[59];
  v3 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[54];
  (*(v0[62] + 8))(v0[63], v0[61]);
  v8 = v0[49];

  v9 = v0[1];

  return v9();
}

uint64_t sub_23E8BE14C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_23E87E458(v0 + 152, &unk_27E35F5B0, &unk_23E903040);
  v1 = *(v0 + 192);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23E8BE1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_23E8BE234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E8BE298()
{
  v1[127] = v0;
  v2 = type metadata accessor for RenderTransactionAction();
  v1[128] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[129] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8BE32C, v0, 0);
}

uint64_t sub_23E8BE32C()
{
  v70 = v0;
  v1 = *(v0 + 1016);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v4 = 0;
  (*(v3 + 8))(v2, v3);
  v15 = *(v0 + 1016);
  swift_beginAccess();
  v16 = *(v15 + 192);

  v18 = sub_23E8C2D60(v17, 0);

  v19 = sub_23E8BC8DC(v18);

  v20 = sub_23E8C45C8(v19);
  *(v0 + 1040) = v20;

  v21 = v20 + 56;
  v22 = -1;
  v23 = -1 << *(v20 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v20 + 56);
  v25 = (63 - v23) >> 6;
  v64 = v20;

  v26 = 0;
  v63 = v15;
  while (v24)
  {
LABEL_14:
    v35 = (*(v64 + 48) + ((v26 << 12) | (__clz(__rbit64(v24)) << 6)));
    v36 = *v35;
    v37 = v35[1];
    v38 = v35[3];
    *(v0 + 192) = v35[2];
    *(v0 + 208) = v38;
    *(v0 + 160) = v36;
    *(v0 + 176) = v37;
    v39 = *(v0 + 160);
    v4 = *(v0 + 168);
    v40 = v35[1];
    v65 = *v35;
    v66 = v40;
    v41 = v35[3];
    v67 = v35[2];
    v68 = v41;
    swift_beginAccess();
    sub_23E895FE4(v0 + 160, v0 + 224);
    sub_23E895FE4(v0 + 160, v0 + 288);
    v42 = *(v15 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v15 + 192);
    v44 = v69;
    *(v15 + 192) = 0x8000000000000000;
    v45 = sub_23E88CA70(v39, v4);
    v47 = v44[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      swift_once();
      v5 = sub_23E900764();
      __swift_project_value_buffer(v5, qword_27E367120);
      v6 = v4;
      v7 = sub_23E900744();
      v8 = sub_23E900B04();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v65 = v10;
        *v9 = 136446210;
        *(v0 + 992) = v4;
        v11 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
        v12 = sub_23E9008D4();
        v14 = sub_23E887B9C(v12, v13, &v65);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_23E879000, v7, v8, "Unable to update remote store: %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x23EF18560](v10, -1, -1);
        MEMORY[0x23EF18560](v9, -1, -1);
      }

      else
      {
      }

      v60 = *(v0 + 1032);

      v61 = *(v0 + 8);

      return v61();
    }

    v51 = v46;
    if (v44[3] < v50)
    {
      sub_23E88D584(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_23E88CA70(v39, v4);
      if ((v51 & 1) != (v52 & 1))
      {

        return sub_23E900E44();
      }

LABEL_19:
      if (v51)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v59 = v45;
    sub_23E8CFE28();
    v45 = v59;
    if (v51)
    {
LABEL_7:
      v27 = v69;
      v28 = v69[7] + 72 * v45;
      *(v0 + 16) = *v28;
      v30 = *(v28 + 32);
      v29 = *(v28 + 48);
      v31 = *(v28 + 16);
      *(v0 + 80) = *(v28 + 64);
      *(v0 + 48) = v30;
      *(v0 + 64) = v29;
      *(v0 + 32) = v31;
      v32 = v68;
      *(v28 + 32) = v67;
      *(v28 + 48) = v32;
      v33 = v66;
      *v28 = v65;
      *(v28 + 16) = v33;
      *(v28 + 64) = 1;
      sub_23E8C4674(v0 + 16);
      goto LABEL_8;
    }

LABEL_20:
    v27 = v69;
    v69[(v45 >> 6) + 8] |= 1 << v45;
    v53 = (v27[6] + 16 * v45);
    *v53 = v39;
    v53[1] = v4;
    v54 = v27[7] + 72 * v45;
    v55 = v66;
    *v54 = v65;
    *(v54 + 16) = v55;
    v56 = v68;
    *(v54 + 32) = v67;
    *(v54 + 48) = v56;
    *(v54 + 64) = 1;
    v57 = v27[2];
    v49 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v49)
    {
      goto LABEL_36;
    }

    v27[2] = v58;

LABEL_8:
    v24 &= v24 - 1;
    v15 = v63;
    *(v63 + 192) = v27;
    swift_endAccess();
    sub_23E899A78(v0 + 160);
  }

  while (1)
  {
    v34 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v34 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v34);
    ++v26;
    if (v24)
    {
      v26 = v34;
      goto LABEL_14;
    }
  }

  *(v0 + 1000) = v64;

  return MEMORY[0x2822009F8](sub_23E8BE898, 0, 0);
}

uint64_t sub_23E8BE898()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0);
  v2 = swift_task_alloc();
  *(v0 + 1048) = v2;
  *(v2 + 16) = v0 + 1000;
  *(v2 + 24) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EFF0, &unk_23E905CF8);
  v4 = *(MEMORY[0x277D859B8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 1056) = v5;
  *v5 = v0;
  v5[1] = sub_23E8BE9B8;

  return MEMORY[0x282200740](v0 + 1008, v1, v3, 0, 0, &unk_23E905CF0, v2, v1);
}

uint64_t sub_23E8BE9B8()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v7 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v4 = sub_23E8BEDE8;
  }

  else
  {
    v5 = *(v2 + 1048);

    v4 = sub_23E8BEAD4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E8BEAD4()
{
  v1 = v0[127];
  v0[134] = v0[126];
  return MEMORY[0x2822009F8](sub_23E8BEAF8, v1, 0);
}

uint64_t sub_23E8BEAF8()
{
  v1 = v0[129];
  v2 = v0[128];
  v3 = sub_23E8BD124(v0[134], type metadata accessor for RenderAssetAction, type metadata accessor for RenderAssetAction, &qword_27E35F000, &unk_23E906308);
  _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
  *(v1 + *(v2 + 20)) = v3;
  if (qword_27E35E170 != -1)
  {
    swift_once();
  }

  v4 = v0[134];
  v5 = sub_23E900764();
  v0[135] = __swift_project_value_buffer(v5, qword_27E367120);

  v6 = sub_23E900744();
  v7 = sub_23E900B14();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[134];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v9 + 16);

    _os_log_impl(&dword_23E879000, v6, v7, "Attemping to send %ld asset actions", v10, 0xCu);
    MEMORY[0x23EF18560](v10, -1, -1);
  }

  else
  {
    v11 = v0[134];
  }

  v12 = v0[129];
  v13 = v0[128];
  v14 = v0[127];
  v15 = v14[17];
  v16 = v14[18];
  __swift_project_boxed_opaque_existential_1(v14 + 14, v15);
  v0[103] = v13;
  v0[104] = sub_23E8C4E5C(&qword_27E35EFF8, type metadata accessor for RenderTransactionAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 100);
  sub_23E8C4DF4(v12, boxed_opaque_existential_1, type metadata accessor for RenderTransactionAction);
  v18 = *(v16 + 16);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[136] = v20;
  *v20 = v0;
  v20[1] = sub_23E8BF038;

  return v22(v0 + 100, v15, v16);
}

uint64_t sub_23E8BEDE8()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[127];

  return MEMORY[0x2822009F8](sub_23E8BEE60, v3, 0);
}

uint64_t sub_23E8BEE60()
{
  v16 = v0;
  v1 = v0[133];
  if (qword_27E35E170 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367120);
  v3 = v1;
  v4 = sub_23E900744();
  v5 = sub_23E900B04();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[124] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v9 = sub_23E9008D4();
    v11 = sub_23E887B9C(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23E879000, v4, v5, "Unable to update remote store: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EF18560](v7, -1, -1);
    MEMORY[0x23EF18560](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[129];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23E8BF038()
{
  v2 = *v1;
  v3 = (*v1)[136];
  v8 = *v1;
  (*v1)[137] = v0;

  if (v0)
  {
    v4 = v2[134];
    v5 = v2[127];

    v6 = sub_23E8BF4CC;
  }

  else
  {
    v5 = v2[127];
    __swift_destroy_boxed_opaque_existential_1(v2 + 100);
    v6 = sub_23E8BF164;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23E8BF164()
{
  v43 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);

  v3 = sub_23E900744();
  v4 = sub_23E900B14();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1072);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    _os_log_impl(&dword_23E879000, v3, v4, "Successfully sent %ld asset actions", v7, 0xCu);
    MEMORY[0x23EF18560](v7, -1, -1);
  }

  else
  {
    v9 = *(v0 + 1072);
    swift_bridgeObjectRelease_n();
  }

  sub_23E8891B4(*(v0 + 1016) + 152, v0 + 840, &unk_27E35F5B0, &unk_23E903040);
  v10 = *(v0 + 864);
  if (v10)
  {
    v11 = *(v0 + 1032);
    v12 = *(v0 + 1024);
    v13 = *(v0 + 872);
    __swift_project_boxed_opaque_existential_1((v0 + 840), *(v0 + 864));
    *(v0 + 904) = v12;
    *(v0 + 912) = &off_28511E6A0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 880));
    sub_23E8C4DF4(v11, boxed_opaque_existential_1, type metadata accessor for RenderTransactionAction);
    (*(v13 + 24))(v0 + 880, v10, v13);
    __swift_destroy_boxed_opaque_existential_1((v0 + 880));
    __swift_destroy_boxed_opaque_existential_1((v0 + 840));
  }

  else
  {
    sub_23E87E458(v0 + 840, &unk_27E35F5B0, &unk_23E903040);
  }

  v15 = *(v0 + 1040);
  v16 = -1;
  v17 = -1 << *(v15 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v15 + 56);
  v19 = (63 - v17) >> 6;
  v20 = *(v0 + 1096);

  v22 = 0;
  if (v18)
  {
    while (1)
    {
      v23 = *(v0 + 1040);
LABEL_15:
      v25 = *(v0 + 1016);
      v26 = (*(v23 + 48) + ((v22 << 12) | (__clz(__rbit64(v18)) << 6)));
      v27 = v26[3];
      v29 = *v26;
      v28 = v26[1];
      *(v0 + 576) = v26[2];
      *(v0 + 592) = v27;
      *(v0 + 544) = v29;
      *(v0 + 560) = v28;
      v30 = v26[1];
      v39 = *v26;
      v40 = v30;
      v31 = v26[3];
      v41 = v26[2];
      v42 = v31;
      sub_23E895FE4(v0 + 544, v0 + 608);
      sub_23E8BF998(&v39, v25);
      if (v20)
      {
        break;
      }

      v18 &= v18 - 1;
      v32 = v40;
      *(v0 + 736) = v39;
      *(v0 + 752) = v32;
      v33 = v42;
      *(v0 + 768) = v41;
      *(v0 + 784) = v33;
      result = sub_23E899A78(v0 + 736);
      if (!v18)
      {
        goto LABEL_11;
      }
    }

    v36 = *(v0 + 1040);

    v37 = v40;
    *(v0 + 672) = v39;
    *(v0 + 688) = v37;
    v38 = v42;
    *(v0 + 704) = v41;
    *(v0 + 720) = v38;

    return sub_23E899A78(v0 + 672);
  }

  else
  {
    while (1)
    {
LABEL_11:
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return result;
      }

      v23 = *(v0 + 1040);
      if (v24 >= v19)
      {
        break;
      }

      v18 = *(v23 + 8 * v24 + 56);
      ++v22;
      if (v18)
      {
        v22 = v24;
        goto LABEL_15;
      }
    }

    sub_23E8C4EA4(*(v0 + 1032), type metadata accessor for RenderTransactionAction);

    v34 = *(v0 + 1032);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_23E8BF4CC()
{
  v64 = v1;
  v2 = *(v1 + 1040);
  __swift_destroy_boxed_opaque_existential_1((v1 + 800));
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;

  v7 = 0;
  while (v5)
  {
    v15 = *(v1 + 1040);
LABEL_12:
    v17 = *(v1 + 1016);
    v18 = (*(v15 + 48) + ((v7 << 12) | (__clz(__rbit64(v5)) << 6)));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    *(v1 + 384) = v18[2];
    *(v1 + 400) = v21;
    *(v1 + 352) = v19;
    *(v1 + 368) = v20;
    v22 = *(v1 + 352);
    v0 = *(v1 + 360);
    v23 = v18[1];
    v59 = *v18;
    v60 = v23;
    v24 = v18[3];
    v61 = v18[2];
    v62 = v24;
    swift_beginAccess();
    sub_23E895FE4(v1 + 352, v1 + 416);
    sub_23E895FE4(v1 + 352, v1 + 480);
    v25 = *(v17 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v17 + 192);
    v27 = v63;
    *(v17 + 192) = 0x8000000000000000;
    v28 = sub_23E88CA70(v22, v0);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_23;
    }

    v34 = v29;
    if (v27[3] < v33)
    {
      sub_23E88D584(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_23E88CA70(v22, v0);
      if ((v34 & 1) != (v35 & 1))
      {

        return sub_23E900E44();
      }

LABEL_17:
      if (v34)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v42 = v28;
    sub_23E8CFE28();
    v28 = v42;
    if (v34)
    {
LABEL_4:
      v8 = v63;
      v9 = v63[7] + 72 * v28;
      *(v1 + 88) = *v9;
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 64);
      *(v1 + 104) = *(v9 + 16);
      *(v1 + 152) = v12;
      *(v1 + 136) = v10;
      *(v1 + 120) = v11;
      v13 = v62;
      *(v9 + 32) = v61;
      *(v9 + 48) = v13;
      v14 = v60;
      *v9 = v59;
      *(v9 + 16) = v14;
      *(v9 + 64) = 0;
      sub_23E8C4674(v1 + 88);
      goto LABEL_5;
    }

LABEL_18:
    v8 = v63;
    v63[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v8[6] + 16 * v28);
    *v36 = v22;
    v36[1] = v0;
    v37 = v8[7] + 72 * v28;
    v38 = v60;
    *v37 = v59;
    *(v37 + 16) = v38;
    v39 = v62;
    *(v37 + 32) = v61;
    *(v37 + 48) = v39;
    *(v37 + 64) = 0;
    v40 = v8[2];
    v32 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v32)
    {
      goto LABEL_34;
    }

    v8[2] = v41;

LABEL_5:
    v5 &= v5 - 1;
    *(*(v1 + 1016) + 192) = v8;
    swift_endAccess();
    sub_23E899A78(v1 + 352);
  }

  while (1)
  {
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v16 >= v6)
    {
      break;
    }

    v15 = *(v1 + 1040);
    v5 = *(v15 + 8 * v16 + 56);
    ++v7;
    if (v5)
    {
      v7 = v16;
      goto LABEL_12;
    }
  }

  v43 = *(v1 + 1096);
  v44 = *(v1 + 1040);
  v45 = *(v1 + 1032);

  swift_willThrow();
  sub_23E8C4EA4(v45, type metadata accessor for RenderTransactionAction);
  v0 = *(v1 + 1096);
  if (qword_27E35E170 != -1)
  {
    goto LABEL_35;
  }

LABEL_23:
  v46 = sub_23E900764();
  __swift_project_value_buffer(v46, qword_27E367120);
  v47 = v0;
  v48 = sub_23E900744();
  v49 = sub_23E900B04();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v59 = v51;
    *v50 = 136446210;
    *(v1 + 992) = v0;
    v52 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v53 = sub_23E9008D4();
    v55 = sub_23E887B9C(v53, v54, &v59);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_23E879000, v48, v49, "Unable to update remote store: %{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x23EF18560](v51, -1, -1);
    MEMORY[0x23EF18560](v50, -1, -1);
  }

  else
  {
  }

  v56 = *(v1 + 1032);

  v57 = *(v1 + 8);

  return v57();
}

void sub_23E8BF998(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v24 = *a1;
  v25 = v3;
  v4 = a1[3];
  v26 = a1[2];
  v27 = v4;
  v5 = v24;
  v22[0] = v24;
  v22[1] = v3;
  v22[2] = v26;
  v22[3] = v4;
  v23 = 2;
  swift_beginAccess();

  sub_23E895FE4(&v24, v21);
  v6 = *(a2 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v21[0] = *(a2 + 192);
  *(a2 + 192) = 0x8000000000000000;
  sub_23E8FC65C(v22, v5, *(&v5 + 1), isUniquelyReferenced_nonNull_native);

  *(a2 + 192) = *&v21[0];
  swift_endAccess();
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_23E900854();
  v10 = [v8 BOOLForKey_];

  if (v10)
  {
    if (qword_27E35E170 != -1)
    {
      swift_once();
    }

    v11 = sub_23E900764();
    __swift_project_value_buffer(v11, qword_27E367120);
    sub_23E895FE4(&v24, v21);
    v12 = sub_23E900744();
    v13 = sub_23E900B14();
    sub_23E899A78(&v24);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v21[0] = v24;
      v21[1] = v25;
      v21[2] = v26;
      v21[3] = v27;
      sub_23E895FE4(&v24, v19);
      v16 = sub_23E9008D4();
      v18 = sub_23E887B9C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_23E879000, v12, v13, "Sent %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x23EF18560](v15, -1, -1);
      MEMORY[0x23EF18560](v14, -1, -1);
    }
  }
}

uint64_t sub_23E8BFC24(uint64_t a1)
{
  *(v2 + 328) = a1;
  *(v2 + 336) = v1;
  return MEMORY[0x2822009F8](sub_23E8BFC44, v1, 0);
}

uint64_t sub_23E8BFC44()
{
  v71 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  swift_beginAccess();
  v3 = *(v2 + 192);

  v5 = sub_23E8BC8DC(v4);

  v6 = sub_23E8C45C8(v5);

  isUniquelyReferenced_nonNull_native = sub_23E8C4B08(v7, v6);

  if (*(isUniquelyReferenced_nonNull_native + 16) <= *(v6 + 16) >> 3)
  {
    *&v66 = v6;
    sub_23E8C324C(isUniquelyReferenced_nonNull_native);
    if (!*(v6 + 16))
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  else if (!*(sub_23E8C3390(isUniquelyReferenced_nonNull_native, v6) + 16))
  {
    goto LABEL_9;
  }

  if (qword_27E35E170 != -1)
  {
LABEL_39:
    swift_once();
  }

  v9 = sub_23E900764();
  __swift_project_value_buffer(v9, qword_27E367120);

  v10 = sub_23E900744();
  v11 = sub_23E900B04();

  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_9;
  }

  v12 = v2;
  v13 = swift_slowAlloc();
  v14 = isUniquelyReferenced_nonNull_native;
  v15 = swift_slowAlloc();
  *&v66 = v15;
  *v13 = 136446210;
  sub_23E8C494C();
  v16 = sub_23E900AB4();
  v18 = v17;

  v19 = sub_23E887B9C(v16, v18, &v66);

  *(v13 + 4) = v19;
  _os_log_impl(&dword_23E879000, v10, v11, "There are already registered asset(s): %{public}s", v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v15);
  v20 = v15;
  isUniquelyReferenced_nonNull_native = v14;
  MEMORY[0x23EF18560](v20, -1, -1);
  v21 = v13;
  v2 = v12;
  MEMORY[0x23EF18560](v21, -1, -1);

LABEL_10:
  v22 = isUniquelyReferenced_nonNull_native + 56;
  v23 = -1;
  v24 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & *(isUniquelyReferenced_nonNull_native + 56);
  v26 = (63 - v24) >> 6;

  v27 = 0;
  v64 = isUniquelyReferenced_nonNull_native + 56;
  v65 = v2;
  while (v25)
  {
LABEL_20:
    v36 = isUniquelyReferenced_nonNull_native;
    v37 = (*(isUniquelyReferenced_nonNull_native + 48) + ((v27 << 12) | (__clz(__rbit64(v25)) << 6)));
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    *(v0 + 136) = v37[3];
    *(v0 + 120) = v40;
    *(v0 + 104) = v39;
    *(v0 + 88) = v38;
    v42 = *(v0 + 88);
    v41 = *(v0 + 96);
    v43 = v37[1];
    v66 = *v37;
    v67 = v43;
    v44 = v37[3];
    v68 = v37[2];
    v69 = v44;
    swift_beginAccess();
    sub_23E895FE4(v0 + 88, v0 + 152);
    sub_23E895FE4(v0 + 88, v0 + 216);
    v45 = *(v2 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v2 + 192);
    v46 = v70;
    *(v2 + 192) = 0x8000000000000000;
    v47 = sub_23E88CA70(v42, v41);
    v49 = v46[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v2 = v48;
    if (v46[3] < v52)
    {
      sub_23E88D584(v52, isUniquelyReferenced_nonNull_native);
      v47 = sub_23E88CA70(v42, v41);
      if ((v2 & 1) != (v53 & 1))
      {

        return sub_23E900E44();
      }

LABEL_25:
      isUniquelyReferenced_nonNull_native = v36;
      if (v2)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v60 = v47;
    sub_23E8CFE28();
    v47 = v60;
    isUniquelyReferenced_nonNull_native = v36;
    if (v2)
    {
LABEL_13:
      v28 = v70;
      v29 = v70[7] + 72 * v47;
      *(v0 + 16) = *v29;
      v31 = *(v29 + 32);
      v30 = *(v29 + 48);
      v32 = *(v29 + 16);
      *(v0 + 80) = *(v29 + 64);
      *(v0 + 48) = v31;
      *(v0 + 64) = v30;
      *(v0 + 32) = v32;
      v33 = v69;
      *(v29 + 32) = v68;
      *(v29 + 48) = v33;
      v34 = v67;
      *v29 = v66;
      *(v29 + 16) = v34;
      *(v29 + 64) = 0;
      sub_23E8C4674(v0 + 16);
      goto LABEL_14;
    }

LABEL_26:
    v28 = v70;
    v70[(v47 >> 6) + 8] |= 1 << v47;
    v54 = (v28[6] + 16 * v47);
    *v54 = v42;
    v54[1] = v41;
    v55 = v28[7] + 72 * v47;
    v56 = v67;
    *v55 = v66;
    *(v55 + 16) = v56;
    v57 = v69;
    *(v55 + 32) = v68;
    *(v55 + 48) = v57;
    *(v55 + 64) = 0;
    v58 = v28[2];
    v51 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v51)
    {
      goto LABEL_38;
    }

    v28[2] = v59;

LABEL_14:
    v25 &= v25 - 1;
    v2 = v65;
    *(v65 + 192) = v28;
    swift_endAccess();
    sub_23E899A78(v0 + 88);
    v22 = v64;
  }

  while (1)
  {
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v35 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v35);
    ++v27;
    if (v25)
    {
      v27 = v35;
      goto LABEL_20;
    }
  }

  v61 = swift_task_alloc();
  *(v0 + 344) = v61;
  *v61 = v0;
  v61[1] = sub_23E8C01BC;
  v62 = *(v0 + 336);

  return sub_23E8BE298();
}

uint64_t sub_23E8C01BC()
{
  v1 = *(*v0 + 344);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E8C02B0(float32x4_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v29 = *a1;
  v30 = a1[1];
  v31 = a1[2];
  v32 = a1[3];
  sub_23E900EB4();
  RenderAsset.hash(into:)();
  v5 = sub_23E900F14();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v28 = ~v6;
  v8 = a1->i64[0];
  v9 = a1->i64[1];
  if (a1[2].i8[9])
  {
    v10 = 0x504A2F6F65646976;
  }

  else
  {
    v10 = 0x6E702F6567616D69;
  }

  v26 = v10;
  if (a1[2].i8[9])
  {
    v11 = 0xEA00000000004745;
  }

  else
  {
    v11 = 0xE900000000000067;
  }

  v27 = v11;
  while (1)
  {
    v12 = *(a2 + 48) + (v7 << 6);
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    v16 = *(v12 + 40);
    v17 = *(v12 + 41);
    v18 = *v12 == v8 && *(v12 + 8) == v9;
    if (!v18 && (sub_23E900E04() & 1) == 0)
    {
      goto LABEL_10;
    }

    v19 = a1[2].i8[8];
    if (v16)
    {
      if ((a1[2].i8[8] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (a1[2].i8[8])
      {
        goto LABEL_10;
      }

      v20.i64[0] = v13;
      v20.i64[1] = v14;
      if ((vminv_u16(vmovn_s32(vceqq_f32(a1[1], v20))) & 1) == 0 || v15 != a1[2].i64[0])
      {
        goto LABEL_10;
      }
    }

    v21 = v17 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v22 = v17 ? 0xEA00000000004745 : 0xE900000000000067;
    if (v21 == v26 && v22 == v27)
    {
      break;
    }

    v24 = sub_23E900E04();

    if (v24)
    {
      return 1;
    }

LABEL_10:
    v7 = (v7 + 1) & v28;
    if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23E8C04F8(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  v4 = type metadata accessor for RenderAssetAction();
  v3[65] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8C0590, v2, 0);
}

uint64_t sub_23E8C0590()
{
  v37 = v0;
  v1 = *(v0 + 512);
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (!*(v2 + 16))
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v1 + 192);

  v6 = sub_23E88CA70(v4, v3);
  if ((v7 & 1) == 0)
  {

LABEL_7:
    sub_23E8896DC();
    v12 = swift_allocError();
    *v13 = 1;
    swift_willThrow();
    if (qword_27E35E170 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 504);
    v15 = sub_23E900764();
    __swift_project_value_buffer(v15, qword_27E367120);

    v16 = v12;
    v17 = sub_23E900744();
    v18 = sub_23E900B04();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 496);
      v19 = *(v0 + 504);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v35[0] = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_23E887B9C(v20, v19, v35);
      *(v21 + 12) = 2082;
      *(v0 + 488) = v12;
      v23 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
      v24 = sub_23E9008D4();
      v26 = sub_23E887B9C(v24, v25, v35);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_23E879000, v17, v18, "Unable to unregister %{public}s: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v22, -1, -1);
      MEMORY[0x23EF18560](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v8 = *(v2 + 56) + 72 * v6;
  *(v0 + 16) = *v8;
  v9 = *(v8 + 16);
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  *(v0 + 80) = *(v8 + 64);
  *(v0 + 48) = v10;
  *(v0 + 64) = v11;
  *(v0 + 32) = v9;
  sub_23E88FEB4(v0 + 16, v0 + 88);

  if (!*(v0 + 80))
  {
    v28 = *(v0 + 496);
    v27 = *(v0 + 504);
    swift_beginAccess();
    sub_23E8FB7F0(v28, v27, v35);
    swift_endAccess();
    sub_23E8C4674(v0 + 16);
    v29 = v35[3];
    *(v0 + 336) = v35[2];
    *(v0 + 352) = v29;
    *(v0 + 368) = v36;
    v30 = v35[1];
    *(v0 + 304) = v35[0];
    *(v0 + 320) = v30;
    sub_23E87E458(v0 + 304, &qword_27E35F020, &qword_23E905D48);
    goto LABEL_13;
  }

  if (*(v0 + 80) == 1)
  {
    sub_23E8C4674(v0 + 16);
LABEL_13:
    v31 = *(v0 + 528);

    v32 = *(v0 + 8);

    return v32();
  }

  v34 = *(v0 + 24);
  *(v0 + 536) = *(v0 + 16);
  *(v0 + 544) = v34;
  sub_23E88FEB4(v0 + 16, v0 + 160);

  return MEMORY[0x2822009F8](sub_23E8C094C, 0, 0);
}

uint64_t sub_23E8C094C()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[64];

  _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
  sub_23E8C4674((v0 + 2));
  v6 = (v3 + *(v4 + 20));
  *v6 = v2;
  v6[1] = v1;
  v6[5] = 0;
  v6[9] = 0;

  return MEMORY[0x2822009F8](sub_23E8C09FC, v5, 0);
}

uint64_t sub_23E8C09FC()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v3[17];
  v5 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v4);
  v0[50] = v2;
  v0[51] = sub_23E8C4E5C(&qword_27E35F000, type metadata accessor for RenderAssetAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 47);
  sub_23E8C4DF4(v1, boxed_opaque_existential_1, type metadata accessor for RenderAssetAction);
  v7 = *(v5 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[69] = v9;
  *v9 = v0;
  v9[1] = sub_23E8C0B94;

  return v11(v0 + 47, v4, v5);
}

uint64_t sub_23E8C0B94()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v8 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 512);
    v5 = sub_23E8C0DC4;
  }

  else
  {
    v6 = *(v2 + 512);
    __swift_destroy_boxed_opaque_existential_1((v2 + 376));
    v5 = sub_23E8C0CBC;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23E8C0CBC()
{
  v12 = v0;
  v1 = *(v0 + 528);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);
  swift_beginAccess();
  sub_23E8FB7F0(v4, v3, v10);
  swift_endAccess();
  sub_23E8C4674(v0 + 16);
  v5 = v10[0];
  *(v0 + 248) = v10[1];
  v6 = v10[3];
  *(v0 + 264) = v10[2];
  *(v0 + 280) = v6;
  *(v0 + 296) = v11;
  *(v0 + 232) = v5;
  sub_23E87E458(v0 + 232, &qword_27E35F020, &qword_23E905D48);
  sub_23E8C4EA4(v1, type metadata accessor for RenderAssetAction);
  v7 = *(v0 + 528);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23E8C0DC4()
{
  v20 = v0;
  v1 = v0[66];
  sub_23E8C4674((v0 + 2));
  sub_23E8C4EA4(v1, type metadata accessor for RenderAssetAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  v2 = v0[70];
  if (qword_27E35E170 != -1)
  {
    swift_once();
  }

  v3 = v0[63];
  v4 = sub_23E900764();
  __swift_project_value_buffer(v4, qword_27E367120);

  v5 = v2;
  v6 = sub_23E900744();
  v7 = sub_23E900B04();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[62];
    v8 = v0[63];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_23E887B9C(v9, v8, &v19);
    *(v10 + 12) = 2082;
    v0[61] = v2;
    v12 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v13 = sub_23E9008D4();
    v15 = sub_23E887B9C(v13, v14, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_23E879000, v6, v7, "Unable to unregister %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v11, -1, -1);
    MEMORY[0x23EF18560](v10, -1, -1);
  }

  else
  {
  }

  v16 = v0[66];

  v17 = v0[1];

  return v17();
}

uint64_t sub_23E8C100C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889AD8;

  return sub_23E8BFC24(a1);
}

uint64_t sub_23E8C10A4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E888F34;

  return sub_23E8C04F8(a1, a2);
}

uint64_t sub_23E8C114C(char a1)
{
  *(v2 + 48) = a1;
  v3 = *v1;
  *(v2 + 40) = *v1;
  return MEMORY[0x2822009F8](sub_23E8C1170, v3, 0);
}

uint64_t sub_23E8C1170()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v1 + 192);

  v5 = sub_23E8C2D60(v4, v2);

  v6 = sub_23E8BC8DC(v5);

  v7 = sub_23E8C45C8(v6);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_23E8C123C()
{
  v2 = *v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](sub_23E8C125C, v2, 0);
}

uint64_t sub_23E8C125C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 192);

  v4 = sub_23E8BC8DC(v3);

  v5 = sub_23E8C45C8(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_23E8C130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23E889AD8;

  return sub_23E8BCB48(a1, a2, a3);
}

uint64_t sub_23E8C13C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E889AD8;

  return sub_23E8BE298();
}

uint64_t sub_23E8C1450()
{
  v2 = *v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](sub_23E8C1470, v2, 0);
}

uint64_t sub_23E8C1470()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 192);
  *(v1 + 192) = MEMORY[0x277D84F98];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23E8C14F4(__int128 *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 16);
  v45[0] = *a2;
  v45[1] = v6;
  v7 = *(a2 + 48);
  v45[2] = *(a2 + 32);
  v45[3] = v7;
  sub_23E900EB4();
  RenderAsset.hash(into:)();
  v8 = sub_23E900F14();
  v42 = v4 + 56;
  v43 = v4;
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_33:
    v29 = *v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45[0] = *v40;
    sub_23E895FE4(a2, v44);
    sub_23E8C1F24(a2, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *&v45[0];
    v31 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v31;
    v32 = *(a2 + 48);
    a1[2] = *(a2 + 32);
    a1[3] = v32;
    return 1;
  }

  v11 = ~v9;
  v12 = *a2;
  v13 = *(a2 + 8);
  while (1)
  {
    v14 = *(v43 + 48) + (v10 << 6);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);
    v18 = *(v14 + 40);
    v19 = *(v14 + 41);
    v20 = *v14 == v12 && *(v14 + 8) == v13;
    if (!v20 && (sub_23E900E04() & 1) == 0)
    {
      goto LABEL_3;
    }

    v21 = *(a2 + 40);
    if (v18)
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (*(a2 + 40))
      {
        goto LABEL_3;
      }

      v22.i64[0] = v15;
      v22.i64[1] = v16;
      if ((vminv_u16(vmovn_s32(vceqq_f32(*(a2 + 16), v22))) & 1) == 0 || v17 != *(a2 + 32))
      {
        goto LABEL_3;
      }
    }

    v23 = v19 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v24 = v19 ? 0xEA00000000004745 : 0xE900000000000067;
    v25 = *(a2 + 41) ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v26 = *(a2 + 41) ? 0xEA00000000004745 : 0xE900000000000067;
    if (v23 == v25 && v24 == v26)
    {
      break;
    }

    v28 = sub_23E900E04();

    if (v28)
    {
      goto LABEL_35;
    }

LABEL_3:
    v10 = (v10 + 1) & v11;
    if (((*(v42 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  sub_23E899A78(a2);
  v34 = (*(v43 + 48) + (v10 << 6));
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[3];
  v44[2] = v34[2];
  v44[3] = v37;
  v44[0] = v35;
  v44[1] = v36;
  v38 = v34[1];
  *a1 = *v34;
  a1[1] = v38;
  v39 = v34[3];
  a1[2] = v34[2];
  a1[3] = v39;
  sub_23E895FE4(v44, v45);
  return 0;
}

uint64_t sub_23E8C1788(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_23E900EB4();
  v38[0] = *a2;
  *(v38 + 13) = *(a2 + 13);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  *v36 = *a2;
  *&v36[13] = *(a2 + 13);
  TextAttribute.hash(into:)(v37);
  v33 = v6;
  MEMORY[0x23EF17B90](v6);
  v32 = v7;
  MEMORY[0x23EF17B90](v7);
  v8 = sub_23E900F14();
  v9 = v4 + 56;
  v34 = v4;
  v10 = -1 << *(v4 + 32);
  v11 = v8 & ~v10;
  if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v34 + 48) + 40 * v11;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v18 = *(v13 + 24);
      v17 = *(v13 + 32);
      v19 = *(v13 + 20);
      *v36 = *v13;
      v14 = *v36;
      *&v36[8] = v15;
      *&v36[16] = v16;
      v36[20] = v19;
      *v35 = v38[0];
      *&v35[13] = *(v38 + 13);
      sub_23E896040(a2, v37);
      sub_23E88FDE0(v14, v15, v16, v19);
      LOBYTE(v14) = _s10AirPlayKit13TextAttributeO2eeoiySbAC_ACtFZ_0(v36, v35);
      sub_23E88FDF8(*v35, *&v35[8], *&v35[16], v35[20]);
      sub_23E88FDF8(*v36, *&v36[8], *&v36[16], v36[20]);
      if ((v14 & 1) != 0 && v18 == v33 && v17 == v32)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_23E895F90(a2);
    v21 = *(v34 + 48) + 40 * v11;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    *a1 = *v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    v25 = *(v21 + 20);
    *(a1 + 20) = v25;
    *(a1 + 24) = *(v21 + 24);
    sub_23E88FDE0(v22, v23, v24, v25);
    return 0;
  }

  else
  {
LABEL_11:
    v27 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v36 = *v30;
    sub_23E896040(a2, v37);
    sub_23E8C21F0(a2, v11, isUniquelyReferenced_nonNull_native);
    *v30 = *v36;
    v29 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v29;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_23E8C19D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E868, &unk_23E905D30);
  result = sub_23E900C84();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + ((v16 | (v7 << 6)) << 6));
      v31 = *v19;
      v32 = v19[1];
      v33 = v19[2];
      v34 = v19[3];
      v20 = *(v6 + 40);
      v30 = *v19;
      sub_23E900EB4();
      RenderAsset.hash(into:)();
      result = sub_23E900F14();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + (v14 << 6));
      *v15 = v31;
      v15[1] = v32;
      v15[2] = v33;
      v15[3] = v34;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23E8C1C58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E870, &unk_23E905D90);
  v5 = sub_23E900C84();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v35 = v2;
    v36 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    v37 = v3;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v15 | (v7 << 6));
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 20);
      v25 = *(v19 + 24);
      v24 = *(v19 + 32);
      v26 = *(v6 + 40);
      sub_23E900EB4();
      TextAttribute.hash(into:)(v39);
      MEMORY[0x23EF17B90](v25);
      MEMORY[0x23EF17B90](v24);
      result = sub_23E900F14();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v10 = v38;
      *v14 = v21;
      *(v14 + 8) = v20;
      *(v14 + 16) = v22;
      *(v14 + 20) = v23;
      *(v14 + 24) = v25;
      *(v14 + 32) = v24;
      ++*(v6 + 16);
      v3 = v37;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23E8C1F24(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23E8C19D4(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_23E8C241C();
        goto LABEL_40;
      }

      sub_23E8C2718(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    v41 = *v5;
    v42 = *(v5 + 16);
    v43 = *(v5 + 32);
    v44 = *(v5 + 48);
    sub_23E900EB4();
    RenderAsset.hash(into:)();
    result = sub_23E900F14();
    v39 = v8 + 56;
    v40 = v8;
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v12 = *v5;
      v13 = *(v5 + 8);
      if (*(v5 + 41))
      {
        v14 = 0x504A2F6F65646976;
      }

      else
      {
        v14 = 0x6E702F6567616D69;
      }

      v37 = v14;
      if (*(v5 + 41))
      {
        v15 = 0xEA00000000004745;
      }

      else
      {
        v15 = 0xE900000000000067;
      }

      v38 = v15;
      do
      {
        v16 = *(v40 + 48) + (a2 << 6);
        result = *v16;
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        v19 = *(v16 + 32);
        v20 = *(v16 + 40);
        v21 = *(v16 + 41);
        if (*v16 != v12 || *(v16 + 8) != v13)
        {
          result = sub_23E900E04();
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v23 = *(v5 + 40);
        if (v20)
        {
          if ((*(v5 + 40) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (*(v5 + 40))
          {
            goto LABEL_16;
          }

          v24.i64[0] = v18;
          v24.i64[1] = v17;
          if ((vminv_u16(vmovn_s32(vceqq_f32(*(v5 + 16), v24))) & 1) == 0 || v19 != *(v5 + 32))
          {
            goto LABEL_16;
          }
        }

        if (v21)
        {
          v25 = 0x504A2F6F65646976;
        }

        else
        {
          v25 = 0x6E702F6567616D69;
        }

        if (v21)
        {
          v26 = 0xEA00000000004745;
        }

        else
        {
          v26 = 0xE900000000000067;
        }

        if (v25 == v37 && v26 == v38)
        {
          goto LABEL_43;
        }

        v28 = sub_23E900E04();

        if (v28)
        {
          goto LABEL_44;
        }

LABEL_16:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v39 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_40:
  v29 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = (*(v29 + 48) + (a2 << 6));
  v31 = *(v5 + 16);
  *v30 = *v5;
  v30[1] = v31;
  v32 = *(v5 + 48);
  v30[2] = *(v5 + 32);
  v30[3] = v32;
  v33 = *(v29 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_43:

LABEL_44:
    result = sub_23E900E34();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v35;
  }

  return result;
}

uint64_t sub_23E8C21F0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_23E8C1C58(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_23E8C25A0();
      goto LABEL_18;
    }

    sub_23E8C2978(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_23E900EB4();
  v33[0] = *v5;
  *(v33 + 13) = *(v5 + 13);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  *v31 = *v5;
  *&v31[13] = *(v5 + 13);
  TextAttribute.hash(into:)(v32);
  MEMORY[0x23EF17B90](v10);
  MEMORY[0x23EF17B90](v11);
  result = sub_23E900F14();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (1)
    {
      v14 = *(v8 + 48) + 40 * a2;
      v15 = *(v14 + 8);
      v16 = *(v14 + 16);
      v18 = *(v14 + 24);
      v17 = *(v14 + 32);
      v19 = *(v14 + 20);
      *v31 = *v14;
      *&v31[8] = v15;
      *&v31[16] = v16;
      v31[20] = v19;
      *v30 = v33[0];
      *&v30[13] = *(v33 + 13);
      sub_23E88FDE0(*v31, v15, v16, v19);
      sub_23E896040(v5, v32);
      v20 = _s10AirPlayKit13TextAttributeO2eeoiySbAC_ACtFZ_0(v31, v30);
      sub_23E88FDF8(*v30, *&v30[8], *&v30[16], v30[20]);
      result = sub_23E88FDF8(*v31, *&v31[8], *&v31[16], v31[20]);
      if (v20 && v18 == v10 && v17 == v11)
      {
        break;
      }

      a2 = (a2 + 1) & v13;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = sub_23E900E34();
    __break(1u);
  }

LABEL_18:
  v22 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = *(v22 + 48) + 40 * a2;
  v24 = *v5;
  v25 = *(v5 + 16);
  *(v23 + 32) = *(v5 + 32);
  *v23 = v24;
  *(v23 + 16) = v25;
  v26 = *(v22 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v28;
  }

  return result;
}

void *sub_23E8C241C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E868, &unk_23E905D30);
  v2 = *v0;
  v3 = sub_23E900C74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_23E895FE4(v27, &v26);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_23E8C25A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E870, &unk_23E905D90);
  v2 = *v0;
  v3 = sub_23E900C74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 24);
        v24 = *(v18 + 20);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 20) = v24;
        *(v22 + 24) = v23;
        result = sub_23E88FDE0(v19, v20, v21, v24);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_23E8C2718(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E868, &unk_23E905D30);
  result = sub_23E900C84();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v21 = (*(v3 + 48) + ((v18 | (v7 << 6)) << 6));
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[3];
      v43 = v21[2];
      v44 = v24;
      v41 = v23;
      v42 = v22;
      v25 = *(v6 + 40);
      v26 = v21[1];
      v37 = *v21;
      v38 = v26;
      v27 = v21[3];
      v39 = v21[2];
      v40 = v27;
      sub_23E900EB4();
      sub_23E895FE4(&v41, v36);
      RenderAsset.hash(into:)();
      result = sub_23E900F14();
      v28 = -1 << *(v6 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + (v13 << 6));
      v15 = v41;
      v16 = v42;
      v17 = v44;
      v14[2] = v43;
      v14[3] = v17;
      *v14 = v15;
      v14[1] = v16;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v20 = *(v3 + 56 + 8 * v7);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23E8C2978(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E870, &unk_23E905D90);
  result = sub_23E900C84();
  v37 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v33 = (v8 + 63) >> 6;
    v34 = v3;
    v11 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_17:
      v17 = *(v3 + 48) + 40 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 20);
      v22 = *(v17 + 24);
      v23 = *(v17 + 32);
      v24 = *(v37 + 40);
      sub_23E900EB4();
      sub_23E88FDE0(v18, v19, v20, v21);
      TextAttribute.hash(into:)(v38);
      v35 = v22;
      MEMORY[0x23EF17B90](v22);
      MEMORY[0x23EF17B90](v23);
      result = sub_23E900F14();
      v25 = -1 << *(v37 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v37 + 48) + 40 * v12;
      *v13 = v18;
      v3 = v34;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 20) = v21;
      *(v13 + 24) = v35;
      *(v13 + 32) = v23;
      ++*(v37 + 16);
      v10 = v36;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v33)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v37;
  }

  return result;
}

unint64_t *sub_23E8C2C3C(unint64_t *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23E8C2ECC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_23E8C2CC4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_23E8C49A0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_23E8C2D60(uint64_t a1, unsigned __int8 a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_23E8C2ECC(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_23E8C2C3C(v11, v6, v4, a2);
  result = MEMORY[0x23EF18560](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_23E8C2ECC(unint64_t *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_12:
    if (*(*(a3 + 56) + 72 * v11 + 64) == a4)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_23E8C2FC8(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_23E8C2FC8(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8C2FC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E710, &qword_23E903468);
  result = sub_23E900D64();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v40 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 72 * v16);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v46 = *(v21 + 64);
    v44 = v23;
    v45 = v24;
    v42 = *v21;
    v43 = v22;
    v25 = *(v9 + 40);
    sub_23E900EB4();

    sub_23E88FEB4(&v42, v41);
    sub_23E900904();
    result = sub_23E900F14();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v9 + 48) + 16 * v29);
    *v34 = v19;
    v34[1] = v20;
    v35 = *(v9 + 56) + 72 * v29;
    *v35 = v42;
    v36 = v43;
    v37 = v44;
    v38 = v45;
    *(v35 + 64) = v46;
    *(v35 + 32) = v37;
    *(v35 + 48) = v38;
    *(v35 + 16) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v40;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23E8C324C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_23E87E458(v16, &qword_27E35E620, &qword_23E9032F0))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v2 + 48) + ((v9 << 12) | (v10 << 6)));
      v12 = v11[3];
      v14 = *v11;
      v13 = v11[1];
      v17[2] = v11[2];
      v17[3] = v12;
      v17[0] = v14;
      v17[1] = v13;
      sub_23E895FE4(v17, v16);
      sub_23E8C3C00(v17, v15);
      sub_23E899A78(v17);
      v16[0] = v15[0];
      v16[1] = v15[1];
      v16[2] = v15[2];
      v16[3] = v15[3];
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8C3390(uint64_t a1, uint64_t a2)
{
  v133 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    result = MEMORY[0x277D84FA0];
    goto LABEL_124;
  }

  v2 = a1;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = -1 << *(a1 + 32);
  v108 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (63 - v5) >> 6;
  v116 = a2;
  v117 = (a2 + 56);

  v10 = 0;
  v106 = 0;
  v110 = v9;
  v111 = v8;
  v109 = v4;
  while (1)
  {
LABEL_6:
    if (!v7)
    {
      v12 = v10;
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          sub_23E8A237C();
          result = v116;
          goto LABEL_124;
        }

        v7 = *(v4 + 8 * v11);
        ++v12;
        if (v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v11 = v10;
LABEL_12:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v2 + 48) + ((v11 << 12) | (v13 << 6)));
    v15 = v14[3];
    v17 = *v14;
    v16 = v14[1];
    v126 = v14[2];
    v127 = v15;
    v124 = v17;
    v125 = v16;
    v18 = *(v116 + 40);
    v120 = *v14;
    v121 = v14[1];
    v122 = v14[2];
    v123 = v14[3];
    sub_23E900EB4();
    sub_23E895FE4(&v124, v119);
    RenderAsset.hash(into:)();
    v19 = sub_23E900F14();
    v20 = -1 << *(v116 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & v117[v21 >> 6]) != 0)
    {
      break;
    }

    sub_23E899A78(&v124);
    v10 = v11;
    v8 = v111;
  }

  v24 = v116;
  v112 = v7;
  v113 = v11;
  v26 = *(&v124 + 1);
  v25 = v124;
  v114 = v124;
  v115 = ~v20;
  while (1)
  {
    v27 = *(v24 + 48) + (v21 << 6);
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
    v30 = *(v27 + 32);
    v31 = *(v27 + 40);
    v32 = *(v27 + 41);
    if (*v27 != v25 || *(v27 + 8) != v26)
    {
      v34 = sub_23E900E04();
      v25 = v114;
      v24 = v116;
      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (v31)
    {
      if ((BYTE8(v126) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (BYTE8(v126))
      {
        goto LABEL_14;
      }

      v35 = *&v28 == *&v125 && *(&v28 + 1) == *(&v125 + 1);
      v36 = v35 && *&v29 == *(&v125 + 2);
      v37 = v36 && *(&v29 + 1) == *(&v125 + 3);
      if (!v37 || v30 != v126)
      {
        goto LABEL_14;
      }
    }

    v39 = v32 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v40 = v32 ? 0xEA00000000004745 : 0xE900000000000067;
    v41 = BYTE9(v126) ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v42 = BYTE9(v126) ? 0xEA00000000004745 : 0xE900000000000067;
    if (v39 == v41 && v40 == v42)
    {
      break;
    }

    v44 = sub_23E900E04();

    v25 = v114;
    v24 = v116;
    if (v44)
    {
      v46 = v109;
      v48 = v112;
      v47 = v113;
      v130 = v108;
      v131 = v113;
      v132 = v112;
      v49 = v110;
      v128 = v110;
      v129 = v109;
      goto LABEL_61;
    }

LABEL_14:
    v21 = (v21 + 1) & v115;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if ((v117[v21 >> 6] & (1 << v21)) == 0)
    {
      sub_23E899A78(&v124);
      v7 = v112;
      v10 = v113;
      v4 = v109;
      v2 = v110;
      v8 = v111;
      goto LABEL_6;
    }
  }

  v46 = v109;
  v130 = v108;
  v131 = v113;
  v132 = v112;
  v49 = v110;
  v128 = v110;
  v129 = v109;

  v48 = v112;
  v47 = v113;

LABEL_61:
  v50 = sub_23E899A78(&v124);
  v51 = v116;
  v52 = *(v116 + 32);
  v53 = v52 & 0x3F;
  v54 = ((1 << v52) + 63) >> 6;
  v103 = v54;
  if (v53 > 0xD)
  {
    v100 = 8 * v54;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v101 = swift_slowAlloc();
      memcpy(v101, v117, v100);
      v98 = sub_23E8C3E98(v101, v103, v116, v21, &v128);

      MEMORY[0x23EF18560](v101, -1, -1);
      v108 = v130;
      goto LABEL_123;
    }

    v47 = v113;
  }

  v104 = &v102;
  MEMORY[0x28223BE20](v50);
  v56 = &v102 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v56, v117, v55);
  v57 = *&v56[8 * v22] & ~v23;
  v58 = *(v51 + 16);
  v107 = v56;
  *&v56[8 * v22] = v57;
  v105 = v58 - 1;
  v59 = v111;
  while (2)
  {
    v60 = v47;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (!v48)
          {
            v63 = v60;
            v62 = v116;
            while (1)
            {
              v61 = v63 + 1;
              if (__OFADD__(v63, 1))
              {
                goto LABEL_126;
              }

              if (v61 >= v59)
              {
                v98 = sub_23E894BE0(v107, v103, v105, v116);
                goto LABEL_123;
              }

              v48 = *(v46 + 8 * v61);
              ++v63;
              if (v48)
              {
                goto LABEL_71;
              }
            }
          }

          v61 = v60;
          v62 = v116;
LABEL_71:
          v64 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v65 = (*(v49 + 48) + ((v61 << 12) | (v64 << 6)));
          v66 = v65[3];
          v68 = *v65;
          v67 = v65[1];
          v122 = v65[2];
          v123 = v66;
          v120 = v68;
          v121 = v67;
          v69 = *(v62 + 40);
          v119[0] = *v65;
          v119[1] = v65[1];
          v119[2] = v65[2];
          v119[3] = v65[3];
          sub_23E900EB4();
          sub_23E895FE4(&v120, &v118);
          RenderAsset.hash(into:)();
          v70 = sub_23E900F14();
          v71 = v116;
          v72 = -1 << *(v116 + 32);
          v73 = v61;
          v74 = v70 & ~v72;
          v75 = v74 >> 6;
          v76 = 1 << v74;
          if (((1 << v74) & v117[v74 >> 6]) == 0)
          {
            sub_23E899A78(&v120);
            v60 = v73;
            v59 = v111;
            continue;
          }

          break;
        }

        v112 = v48;
        v113 = v73;
        v78 = *(&v120 + 1);
        v77 = v120;
        v114 = v120;
        v115 = ~v72;
LABEL_74:
        v79 = *(v71 + 48) + (v74 << 6);
        v80 = *(v79 + 16);
        v81 = *(v79 + 24);
        v82 = *(v79 + 32);
        v83 = *(v79 + 40);
        v84 = *(v79 + 41);
        if (*v79 != v77 || *(v79 + 8) != v78)
        {
          v86 = sub_23E900E04();
          v77 = v114;
          v71 = v116;
          if ((v86 & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        if (v83)
        {
          if (BYTE8(v122))
          {
            goto LABEL_97;
          }

LABEL_73:
          v74 = (v74 + 1) & v115;
          v75 = v74 >> 6;
          v76 = 1 << v74;
          if ((v117[v74 >> 6] & (1 << v74)) == 0)
          {
            sub_23E899A78(&v120);
            v48 = v112;
            v60 = v113;
            v46 = v109;
            v49 = v110;
            v59 = v111;
            continue;
          }

          goto LABEL_74;
        }

        break;
      }

      if (BYTE8(v122))
      {
        goto LABEL_73;
      }

      v87 = *&v80 == *&v121 && *(&v80 + 1) == *(&v121 + 1);
      v88 = v87 && *&v81 == *(&v121 + 2);
      v89 = v88 && *(&v81 + 1) == *(&v121 + 3);
      if (!v89 || v82 != v122)
      {
        goto LABEL_73;
      }

LABEL_97:
      if (v84)
      {
        v91 = 0x504A2F6F65646976;
      }

      else
      {
        v91 = 0x6E702F6567616D69;
      }

      if (v84)
      {
        v92 = 0xEA00000000004745;
      }

      else
      {
        v92 = 0xE900000000000067;
      }

      if (BYTE9(v122))
      {
        v93 = 0x504A2F6F65646976;
      }

      else
      {
        v93 = 0x6E702F6567616D69;
      }

      if (BYTE9(v122))
      {
        v94 = 0xEA00000000004745;
      }

      else
      {
        v94 = 0xE900000000000067;
      }

      if (v91 != v93 || v92 != v94)
      {
        v96 = sub_23E900E04();

        v77 = v114;
        v71 = v116;
        if (v96)
        {
          goto LABEL_117;
        }

        goto LABEL_73;
      }

LABEL_117:
      sub_23E899A78(&v120);
      v97 = v107[v75];
      v107[v75] = v97 & ~v76;
      v46 = v109;
      v48 = v112;
      if ((v97 & v76) == 0)
      {
        v60 = v113;
        v49 = v110;
        v59 = v111;
        continue;
      }

      break;
    }

    v49 = v110;
    v59 = v111;
    v47 = v113;
    if (__OFSUB__(v105, 1))
    {
      __break(1u);
    }

    if (v105 != 1)
    {
      --v105;
      continue;
    }

    break;
  }

LABEL_127:

  v98 = MEMORY[0x277D84FA0];
LABEL_123:
  sub_23E8A237C();
  result = v98;
LABEL_124:
  v99 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23E8C3C00@<X0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v40 = *a1;
  v41 = a1[1];
  v42 = a1[2];
  v43 = a1[3];
  sub_23E900EB4();
  RenderAsset.hash(into:)();
  result = sub_23E900F14();
  v37 = v4 + 56;
  v38 = v4;
  v7 = -1 << *(v4 + 32);
  v8 = result & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_33:
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v9 = ~v7;
  v10 = a1->i64[0];
  v11 = a1->i64[1];
  if (a1[2].i8[9])
  {
    v12 = 0x504A2F6F65646976;
  }

  else
  {
    v12 = 0x6E702F6567616D69;
  }

  v35 = v12;
  if (a1[2].i8[9])
  {
    v13 = 0xEA00000000004745;
  }

  else
  {
    v13 = 0xE900000000000067;
  }

  v36 = v13;
  while (1)
  {
    v14 = *(v38 + 48) + (v8 << 6);
    result = *v14;
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    v17 = *(v14 + 32);
    v18 = *(v14 + 40);
    v19 = *(v14 + 41);
    if (*v14 != v10 || *(v14 + 8) != v11)
    {
      result = sub_23E900E04();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v21 = a1[2].i8[8];
    if (v18)
    {
      if ((a1[2].i8[8] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (a1[2].i8[8])
      {
        goto LABEL_9;
      }

      v22.i64[0] = v16;
      v22.i64[1] = v15;
      if ((vminv_u16(vmovn_s32(vceqq_f32(a1[1], v22))) & 1) == 0 || v17 != a1[2].i64[0])
      {
        goto LABEL_9;
      }
    }

    v23 = v19 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v24 = v19 ? 0xEA00000000004745 : 0xE900000000000067;
    if (v23 == v35 && v24 == v36)
    {
      break;
    }

    v26 = sub_23E900E04();

    if (v26)
    {
      goto LABEL_35;
    }

LABEL_9:
    v8 = (v8 + 1) & v9;
    if (((*(v37 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  v27 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v33;
  v39 = *v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23E8C241C();
    v29 = v39;
  }

  v30 = (*(v29 + 48) + (v8 << 6));
  v31 = v30[1];
  *a2 = *v30;
  a2[1] = v31;
  v32 = v30[3];
  a2[2] = v30[2];
  a2[3] = v32;
  result = sub_23E8C4210(v8);
  *v33 = v39;
  return result;
}

uint64_t sub_23E8C3E98(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = *(a3 + 16);
  v50 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v64 = a3;
  v54 = a3 + 56;
LABEL_2:
  v49 = v7;
LABEL_4:
  while (1)
  {
    v8 = v5[3];
    v9 = v5[4];
    if (!v9)
    {
      break;
    }

    v10 = v5[3];
LABEL_10:
    v13 = (*(*v5 + 48) + ((v10 << 12) | (__clz(__rbit64(v9)) << 6)));
    v15 = v13[2];
    v14 = v13[3];
    v16 = v13[1];
    v60 = *v13;
    v17 = v60;
    v61 = v16;
    v62 = v15;
    v63 = v14;
    v5[3] = v10;
    v5[4] = (v9 - 1) & v9;
    v18 = v64;
    v19 = *(v64 + 40);
    v56 = v17;
    v57 = v16;
    v58 = v15;
    v59 = v14;
    sub_23E900EB4();
    sub_23E895FE4(&v60, v55);
    RenderAsset.hash(into:)();
    v20 = sub_23E900F14();
    v21 = -1 << *(v18 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v54 + 8 * (v22 >> 6))) != 0)
    {
      v26 = *(&v60 + 1);
      v25 = v60;
      v52 = v60;
      v53 = ~v21;
      while (1)
      {
        v27 = *(v64 + 48) + (v22 << 6);
        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        v30 = *(v27 + 32);
        v31 = *(v27 + 40);
        v32 = *(v27 + 41);
        if (*v27 != v25 || *(v27 + 8) != v26)
        {
          v34 = sub_23E900E04();
          v25 = v52;
          if ((v34 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v31)
        {
          if ((BYTE8(v62) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (BYTE8(v62))
          {
            goto LABEL_12;
          }

          v35 = *&v29 == *&v61 && *(&v29 + 1) == *(&v61 + 1);
          v36 = v35 && *&v28 == *(&v61 + 2);
          v37 = v36 && *(&v28 + 1) == *(&v61 + 3);
          if (!v37 || v30 != v62)
          {
            goto LABEL_12;
          }
        }

        if (v32)
        {
          v39 = 0x504A2F6F65646976;
        }

        else
        {
          v39 = 0x6E702F6567616D69;
        }

        if (v32)
        {
          v40 = 0xEA00000000004745;
        }

        else
        {
          v40 = 0xE900000000000067;
        }

        if (BYTE9(v62))
        {
          v41 = 0x504A2F6F65646976;
        }

        else
        {
          v41 = 0x6E702F6567616D69;
        }

        if (BYTE9(v62))
        {
          v42 = 0xEA00000000004745;
        }

        else
        {
          v42 = 0xE900000000000067;
        }

        if (v39 == v41 && v40 == v42)
        {

LABEL_56:
          result = sub_23E899A78(&v60);
          v45 = v50[v23];
          v50[v23] = v45 & ~v24;
          if ((v45 & v24) == 0)
          {
LABEL_57:
            v5 = a5;
            goto LABEL_4;
          }

          v7 = v49 - 1;
          v5 = a5;
          if (__OFSUB__(v49, 1))
          {
LABEL_66:
            __break(1u);
            return result;
          }

          if (v49 == 1)
          {
            return MEMORY[0x277D84FA0];
          }

          goto LABEL_2;
        }

        v44 = sub_23E900E04();

        v25 = v52;
        if (v44)
        {
          goto LABEL_56;
        }

LABEL_12:
        v22 = (v22 + 1) & v53;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if ((*(v54 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          result = sub_23E899A78(&v60);
          goto LABEL_57;
        }
      }
    }

    result = sub_23E899A78(&v60);
  }

  v11 = (v5[2] + 64) >> 6;
  v12 = v5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v46 = v8 + 1;
  }

  else
  {
    v46 = (v5[2] + 64) >> 6;
  }

  v5[3] = v46 - 1;
  v5[4] = 0;
  v47 = v64;

  return sub_23E894BE0(v50, a2, v49, v47);
}

unint64_t sub_23E8C4210(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_23E900C34();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v14 = (*(v3 + 48) + (v6 << 6));
        v16 = *v14;
        v15 = v14[1];
        v17 = v14[3];
        v34[2] = v14[2];
        v34[3] = v17;
        v34[0] = v16;
        v34[1] = v15;
        v18 = *(v3 + 40);
        v19 = v14[1];
        v30 = *v14;
        v31 = v19;
        v20 = v14[3];
        v32 = v14[2];
        v33 = v20;
        sub_23E900EB4();
        sub_23E895FE4(v34, v29);
        RenderAsset.hash(into:)();
        v21 = sub_23E900F14();
        sub_23E899A78(v34);
        v22 = v21 & v7;
        if (v2 >= v10)
        {
          if (v22 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v22 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v22)
        {
LABEL_11:
          v23 = *(v3 + 48);
          v24 = (v23 + (v2 << 6));
          v25 = (v23 + (v6 << 6));
          if (v2 != v6 || v24 >= v25 + 4)
          {
            v11 = *v25;
            v12 = v25[1];
            v13 = v25[3];
            v24[2] = v25[2];
            v24[3] = v13;
            *v24 = v11;
            v24[1] = v12;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23E8C4408(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_23E8C44B8;

  return sub_23E8BD568(a2, v7, a4 & 1);
}

uint64_t sub_23E8C44B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_23E8C45C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23E8C494C();
  result = MEMORY[0x23EF17790](v2, &type metadata for RenderAsset, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v11[0] = *v5;
      v11[1] = v6;
      v7 = v5[3];
      v11[2] = v5[2];
      v11[3] = v7;
      sub_23E895FE4(v11, v9);
      sub_23E8C14F4(v8, v11);
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      sub_23E899A78(v9);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_23E8C46A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E888F34;

  return sub_23E8C4408(a1, a2, v6, v7);
}

uint64_t sub_23E8C4770()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_23E8C47B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E889AD8;

  return sub_23E899388(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_23E8C4878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8C48E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenderAssetAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E8C494C()
{
  result = qword_27E35F018;
  if (!qword_27E35F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F018);
  }

  return result;
}

unint64_t *sub_23E8C49A0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + (v16 << 6));
    v18 = v17[3];
    v20 = *v17;
    v19 = v17[1];
    v25[2] = v17[2];
    v25[3] = v18;
    v25[0] = v20;
    v25[1] = v19;
    sub_23E895FE4(v25, v24);
    v21 = sub_23E8C02B0(v25, a4);
    result = sub_23E899A78(v25);
    if ((v21 & 1) == 0)
    {
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_23E894BE0(v26, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_15;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8C4B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29 = v8;
    v30 = v3;
    v28 = &v28;
    MEMORY[0x28223BE20](v10);
    v11 = &v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v9);
    v31 = 0;
    v3 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(a1 + 56);
    v14 = (v12 + 63) >> 6;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v9 = v15 | (v3 << 6);
      v18 = (*(a1 + 48) + (v9 << 6));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v33[2] = v18[2];
      v33[3] = v19;
      v33[0] = v21;
      v33[1] = v20;
      sub_23E895FE4(v33, v32);
      v22 = sub_23E8C02B0(v33, a2);
      sub_23E899A78(v33);
      if ((v22 & 1) == 0)
      {
        *&v11[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_23E894BE0(v11, v29, v31, a1);

          goto LABEL_17;
        }
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v14)
      {
        goto LABEL_16;
      }

      v17 = *(a1 + 56 + 8 * v3);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v24 = sub_23E8C2CC4(v27, v8, a1, a2);

  MEMORY[0x23EF18560](v27, -1, -1);

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_23E8C4DA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23E8C4DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8C4E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E8C4EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TextAttribute.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 20);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      goto LABEL_18;
    }

    v9 = 0;
  }

  else
  {
    if (v7 <= 4)
    {
      if (v7 != 3)
      {
        MEMORY[0x23EF17B90](4);
        if (v5)
        {
          MEMORY[0x23EF17B90](1);
          sub_23E900904();
        }

        else
        {
          MEMORY[0x23EF17B90](0);
        }

        return sub_23E900EE4();
      }

      v8 = 3;
LABEL_18:
      MEMORY[0x23EF17B90](v8);
      return sub_23E900EE4();
    }

    if (v7 != 5)
    {
      v8 = 6;
      goto LABEL_18;
    }

    v9 = 5;
  }

  MEMORY[0x23EF17B90](v9);

  return Color.hash(into:)(a1, v4, v5, v6);
}

uint64_t TextAttribute.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_23E900EB4();
  TextAttribute.hash(into:)(v4);
  return sub_23E900F14();
}

uint64_t sub_23E8C5078()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_23E900EB4();
  TextAttribute.hash(into:)(v4);
  return sub_23E900F14();
}

uint64_t sub_23E8C50D8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_23E900EB4();
  TextAttribute.hash(into:)(v4);
  return sub_23E900F14();
}

uint64_t TextAttributeRegion.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 3);
  v3 = *(v1 + 4);
  v5 = *v1;
  v6 = *(v1 + 4);
  v7 = *(v1 + 20);
  TextAttribute.hash(into:)(a1);
  MEMORY[0x23EF17B90](v2);
  return MEMORY[0x23EF17B90](v3);
}

uint64_t TextAttributeRegion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  v5 = v0[3];
  v6 = v0[4];
  sub_23E900EB4();
  TextAttribute.hash(into:)(v8);
  MEMORY[0x23EF17B90](v5);
  MEMORY[0x23EF17B90](v6);
  return sub_23E900F14();
}

uint64_t sub_23E8C5230()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  v5 = v0[3];
  v6 = v0[4];
  sub_23E900EB4();
  TextAttribute.hash(into:)(v8);
  MEMORY[0x23EF17B90](v5);
  MEMORY[0x23EF17B90](v6);
  return sub_23E900F14();
}

uint64_t sub_23E8C52C0(uint64_t a1)
{
  v2 = *(v1 + 3);
  v3 = *(v1 + 4);
  v5 = *v1;
  v6 = *(v1 + 4);
  v7 = *(v1 + 20);
  TextAttribute.hash(into:)(a1);
  MEMORY[0x23EF17B90](v2);
  return MEMORY[0x23EF17B90](v3);
}

uint64_t sub_23E8C5328()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  v5 = v0[3];
  v6 = v0[4];
  sub_23E900EB4();
  TextAttribute.hash(into:)(v8);
  MEMORY[0x23EF17B90](v5);
  MEMORY[0x23EF17B90](v6);
  return sub_23E900F14();
}

BOOL _s10AirPlayKit13TextAttributeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v37[0] = v3;
  v37[1] = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v42 = v9;
  v43 = v10;
  if (v6 <= 2)
  {
    if (!v6)
    {
      if (!v10)
      {
        v11 = v9;
        v12 = v5;
        if (!v5)
        {
          v28 = v8;
          v29 = v7;
          sub_23E89609C(v37);
          if (v11)
          {
            return 0;
          }

          v30 = *&v3 == *&v29 && *(&v3 + 1) == *(&v29 + 1);
          v31 = v30 && *&v4 == *&v28;
          return v31 && *(&v4 + 1) == *(&v28 + 1);
        }

LABEL_21:
        if (v12 == 1)
        {
          if (v11 != 1)
          {
LABEL_34:
            sub_23E89609C(v37);
            return 0;
          }

          v15 = sub_23E899FD8(v3, v7);
          sub_23E89609C(v37);
          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v26 = v8;
          v27 = v7;
          sub_23E89609C(v37);
          if (v11 != 2 || v26 | v27)
          {
            return 0;
          }
        }

        return 1;
      }

LABEL_33:
      sub_23E88FDE0(v7, v8, v9, v10);
      goto LABEL_34;
    }

    if (v6 == 1)
    {
      if (v10 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v10 != 2)
    {
      goto LABEL_33;
    }

LABEL_30:
    v20 = *&v7;
    sub_23E89609C(v37);
    return *&v3 == v20;
  }

  if (v6 > 4)
  {
    if (v6 == 5)
    {
      if (v10 == 5)
      {
        v11 = v9;
        v12 = v5;
        if (!v5)
        {
          v13 = v8;
          v14 = v7;
          sub_23E89609C(v37);
          return !v11 && *&v3 == *&v14 && *(&v3 + 1) == *(&v14 + 1) && *&v4 == *&v13 && *(&v4 + 1) == *(&v13 + 1);
        }

        goto LABEL_21;
      }

      goto LABEL_33;
    }

    if (v10 != 6)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v6 == 3)
  {
    if (v10 != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v10 != 4)
  {
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v24 = v10;

    LOBYTE(v10) = v24;
    v9 = v23;
    v8 = v22;
    v7 = v21;
    goto LABEL_33;
  }

  v35[0] = v3;
  v35[1] = v4;
  v36 = v5;
  v33[0] = v7;
  v33[1] = v8;
  v34 = v9;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_23E88FDE0(v7, v8, v9, 4);
  sub_23E88FDE0(v3, v4, v5, 4);
  sub_23E88FDE0(v16, v17, v18, 4);
  sub_23E88FDE0(v3, v4, v5, 4);
  v19 = _s10AirPlayKit4FontV2eeoiySbAC_ACtFZ_0(v35, v33);
  sub_23E89609C(v37);
  sub_23E88FDF8(v16, v17, v18, 4);
  sub_23E88FDF8(v3, v4, v5, 4);
  return v19;
}

BOOL _s10AirPlayKit19TextAttributeRegionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a1 + 20);
  v12 = *(a2 + 20);
  v21 = *a1;
  v22 = v2;
  v23 = v3;
  v24 = v11;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v12;
  sub_23E88FDE0(v21, v2, v3, v11);
  sub_23E88FDE0(v6, v7, v8, v12);
  v13 = _s10AirPlayKit13TextAttributeO2eeoiySbAC_ACtFZ_0(&v21, &v17);
  sub_23E88FDF8(v17, v18, v19, v20);
  sub_23E88FDF8(v21, v22, v23, v24);
  v15 = v4 == v9 && v5 == v10;
  return v13 && v15;
}

unint64_t sub_23E8C57A4()
{
  result = qword_27E35F058;
  if (!qword_27E35F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F058);
  }

  return result;
}

unint64_t sub_23E8C57FC()
{
  result = qword_27E35F060;
  if (!qword_27E35F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F060);
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_23E8C5870(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 21))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 20);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23E8C58B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
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

uint64_t sub_23E8C592C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 40))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 20);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23E8C5974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t RenderNodeError.hashValue.getter()
{
  sub_23E900EB4();
  MEMORY[0x23EF17B90](0);
  return sub_23E900F14();
}

unint64_t sub_23E8C5A48()
{
  result = qword_27E35F068;
  if (!qword_27E35F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F068);
  }

  return result;
}

unint64_t sub_23E8C5AAC(uint64_t a1)
{
  result = sub_23E8AC838();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E8C5AD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_23E900964() != a1 || v9 != a2)
  {
    v10 = sub_23E900E04();

    if (v10)
    {
      return v8;
    }

    v8 = sub_23E900924();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23E8C5BC4(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v48 - v14;
  v55 = type metadata accessor for ContainerContent.Child();
  v15 = *(*(v55 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v55);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v48 - v23;
  v53 = *(a2 + 16);
  v25 = 0;
  if (v53)
  {
    v26 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v52 = *(v22 + 72);
    while (1)
    {
      sub_23E8C8998(v26, v24, type metadata accessor for ContainerContent.Child);
      sub_23E900F24();
      sub_23E8C8998(v24, v21, type metadata accessor for ContainerContent.Child);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v32 = v50;
          v33 = &qword_27E35E438;
          v34 = &unk_23E907E20;
          sub_23E87E3F0(v21, v50, &qword_27E35E438, &unk_23E907E20);
          MEMORY[0x23EF17B90](2);
          sub_23E8AA7BC(v58);
        }

        else
        {
          v32 = v51;
          v33 = &qword_27E35E430;
          v34 = &unk_23E902C80;
          sub_23E87E3F0(v21, v51, &qword_27E35E430, &unk_23E902C80);
          MEMORY[0x23EF17B90](3);
          sub_23E8AA52C(v58);
        }

        v29 = v32;
        v30 = v33;
        v31 = v34;
      }

      else if (EnumCaseMultiPayload)
      {
        v35 = v49;
        sub_23E87E3F0(v21, v49, &unk_27E35E440, &unk_23E902C90);
        MEMORY[0x23EF17B90](1);
        sub_23E8AAA3C(v58);
        v29 = v35;
        v30 = &unk_27E35E440;
        v31 = &unk_23E902C90;
      }

      else
      {
        v28 = v48;
        sub_23E87E3F0(v21, v48, &unk_27E35E630, &qword_23E903300);
        MEMORY[0x23EF17B90](0);
        sub_23E8AACF8(v58);
        v29 = v28;
        v30 = &unk_27E35E630;
        v31 = &qword_23E903300;
      }

      sub_23E87E458(v29, v30, v31);
      sub_23E900F24();
      sub_23E8C8998(v54, v18, type metadata accessor for ContainerContent.Child);
      v36 = swift_getEnumCaseMultiPayload();
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v41 = v50;
          v42 = &qword_27E35E438;
          v43 = &unk_23E907E20;
          sub_23E87E3F0(v18, v50, &qword_27E35E438, &unk_23E907E20);
          MEMORY[0x23EF17B90](2);
          sub_23E8AA7BC(v56);
        }

        else
        {
          v41 = v51;
          v42 = &qword_27E35E430;
          v43 = &unk_23E902C80;
          sub_23E87E3F0(v18, v51, &qword_27E35E430, &unk_23E902C80);
          MEMORY[0x23EF17B90](3);
          sub_23E8AA52C(v56);
        }

        v38 = v41;
        v39 = v42;
        v40 = v43;
      }

      else if (v36)
      {
        v44 = v49;
        sub_23E87E3F0(v18, v49, &unk_27E35E440, &unk_23E902C90);
        MEMORY[0x23EF17B90](1);
        sub_23E8AAA3C(v56);
        v38 = v44;
        v39 = &unk_27E35E440;
        v40 = &unk_23E902C90;
      }

      else
      {
        v37 = v48;
        sub_23E87E3F0(v18, v48, &unk_27E35E630, &qword_23E903300);
        MEMORY[0x23EF17B90](0);
        sub_23E8AACF8(v56);
        v38 = v37;
        v39 = &unk_27E35E630;
        v40 = &qword_23E903300;
      }

      sub_23E87E458(v38, v39, v40);
      v67 = v58[2];
      v68 = v58[3];
      v69 = v59;
      v65 = v58[0];
      v66 = v58[1];
      v45 = sub_23E900F04();
      v62 = v56[2];
      v63 = v56[3];
      v64 = v57;
      v60 = v56[0];
      v61 = v56[1];
      v46 = sub_23E900F04();
      sub_23E8C87D4(v24, type metadata accessor for ContainerContent.Child);
      if (v45 == v46)
      {
        break;
      }

      ++v25;
      v26 += v52;
      if (v53 == v25)
      {
        return 0;
      }
    }
  }

  return v25;
}

uint64_t sub_23E8C61DC(uint64_t *a1, uint64_t a2)
{
  v178 = a2;
  v4 = type metadata accessor for RenderLayerType();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v171 = (&v168 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F070, &qword_23E906130);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v182 = &v168 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v188 = &v168 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v187 = &v168 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v186 = &v168 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v185 = &v168 - v24;
  v203 = sub_23E9006D4();
  v25 = *(v203 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v203);
  v177 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v179 = &v168 - v30;
  MEMORY[0x28223BE20](v29);
  v200 = &v168 - v31;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F078, &qword_23E906138);
  v175 = *(v174 - 8);
  v32 = *(v175 + 64);
  v33 = MEMORY[0x28223BE20](v174);
  v172 = &v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v173 = &v168 - v35;
  v36 = type metadata accessor for ContainerContent.Child();
  v197 = *(v36 - 8);
  v198 = v36;
  v37 = *(v197 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v181 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v176 = &v168 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v190 = &v168 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v180 = &v168 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v191 = &v168 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v201 = &v168 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v202 = (&v168 - v51);
  MEMORY[0x28223BE20](v50);
  v53 = &v168 - v52;
  v54 = *a1;
  v55 = *v2;
  v56 = v2[1];
  if (!*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F080, &qword_23E906140);
    v88 = (type metadata accessor for RenderLayerAction() - 8);
    v89 = *(*v88 + 72);
    v90 = (*(*v88 + 80) + 32) & ~*(*v88 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_23E903380;
    v92 = v91 + v90;
    v93 = v178;
    (*(v25 + 16))(v92, v178, v203);
    *(v92 + v88[7]) = v56;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RenderLayerActionType();
    v94 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v94);
    *(&v168 - 4) = v55;
    *(&v168 - 3) = v56;
    *(&v168 - 2) = v93;
    v95 = v195;
    v96 = sub_23E8C7E1C(MEMORY[0x277D84F90], sub_23E8C8798, (&v168 - 6), v55);
    if (v95)
    {
      swift_setDeallocating();
      sub_23E8C87D4(v92, type metadata accessor for RenderLayerAction);
      swift_deallocClassInstance();
    }

    else
    {
      v142 = v96;
      v143 = sub_23E8BD0DC(v91);
      swift_setDeallocating();
      sub_23E8C87D4(v92, type metadata accessor for RenderLayerAction);
      swift_deallocClassInstance();
      v204 = v143;
      sub_23E8EBFB4(v142);
      return v204;
    }

    return v91;
  }

  v184 = *v2;
  v183 = v56;
  v189 = v25;
  v169 = v8;
  v170 = v4;
  v168 = a1[1];
  v196 = v54;
  v57 = sub_23E88EFD8(MEMORY[0x277D84F90]);
  v58 = v196;
  v59 = v57;
  v194 = *(v196 + 16);
  if (!v194)
  {
    v62 = v195;
LABEL_28:
    v97 = v184;
    v204 = v184;
    v207 = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F088, &qword_23E906148);
    sub_23E8C88E0(&qword_27E35F090, &qword_27E35F088, &qword_23E906148);
    v98 = v173;
    sub_23E900834();

    sub_23E8C8834(&qword_27E35F098, type metadata accessor for ContainerContent.Child);
    v99 = v172;
    v100 = v174;
    v101 = sub_23E900D74();
    MEMORY[0x28223BE20](v101);
    v102 = v178;
    *(&v168 - 2) = v196;
    *(&v168 - 1) = v102;
    v103 = MEMORY[0x277D84F90];
    v104 = sub_23E8C7AE4(MEMORY[0x277D84F90], sub_23E8C87B8, (&v168 - 4));
    if (v62)
    {

      v91 = *(v175 + 8);
      (v91)(v99, v100);
      (v91)(v98, v100);
      return v91;
    }

    v199 = 0;
    v195 = v104;
    v105 = *(v175 + 8);
    v175 += 8;
    v194 = v105;
    v105(v99, v100);
    v204 = v103;
    v201 = *(v97 + 16);
    if (!v201)
    {

      v109 = v183;
LABEL_57:
      v144 = v204;
      v204 = v195;
      sub_23E8EBFB4(v144);
      v145 = v204;
      v146 = v204[2];
      if (v146)
      {
        v91 = sub_23E889F50(0, 1, 1, MEMORY[0x277D84F90]);
        v147 = v145 + 32;
        do
        {
          sub_23E8810DC(v147, &v204);
          v207 = v91;
          v149 = *(v91 + 16);
          v148 = *(v91 + 24);
          if (v149 >= v148 >> 1)
          {
            v91 = sub_23E889F50((v148 > 1), v149 + 1, 1, v91);
            v207 = v91;
          }

          v150 = v205;
          v151 = v206;
          v152 = __swift_mutable_project_boxed_opaque_existential_1(&v204, v205);
          v153 = *(*(v150 - 8) + 64);
          MEMORY[0x28223BE20](v152);
          v155 = &v168 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v156 + 16))(v155);
          sub_23E8F2C70(v149, v155, &v207, v150, v151);
          __swift_destroy_boxed_opaque_existential_1(&v204);
          v147 += 40;
          --v146;
        }

        while (v146);

        v109 = v183;
      }

      else
      {

        v91 = MEMORY[0x277D84F90];
      }

      v157 = v171;
      *v171 = v168;
      swift_storeEnumTagMultiPayload();
      v158 = v169;
      *v169 = v109;
      swift_storeEnumTagMultiPayload();
      v159 = sub_23E88EB14(v157, v158);
      v160 = v109;
      sub_23E8C87D4(v158, type metadata accessor for RenderLayerType);
      sub_23E8C87D4(v157, type metadata accessor for RenderLayerType);
      v161 = v178;
      v162 = v174;
      v163 = v173;
      if (v159)
      {
        v194(v173, v174);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
        v164 = swift_allocObject();
        *(v164 + 16) = xmmword_23E903380;
        v165 = type metadata accessor for RenderLayerAction();
        *(v164 + 56) = v165;
        *(v164 + 64) = sub_23E8C8834(&qword_27E35E848, type metadata accessor for RenderLayerAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v164 + 32));
        (*(v189 + 16))(boxed_opaque_existential_1, v161, v203);
        *(boxed_opaque_existential_1 + *(v165 + 20)) = v160;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RenderLayerActionType();
        swift_storeEnumTagMultiPayload();
        v204 = v164;
        sub_23E8EBFB4(v91);
        v194(v163, v162);
        return v204;
      }

      return v91;
    }

    v106 = 0;
    v200 = v97 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
    v107 = (v189 + 16);
    v202 = (v189 + 8);
    v196 = v197 + 56;
    v108 = v179;
    while (1)
    {
      if (v106 >= *(v184 + 16))
      {
        goto LABEL_72;
      }

      v110 = *(v197 + 72);
      v111 = v191;
      sub_23E8C8998(v200 + v110 * v106, v191, type metadata accessor for ContainerContent.Child);
      sub_23E8C8998(v111, v190, type metadata accessor for ContainerContent.Child);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (!EnumCaseMultiPayload)
      {
        v113 = v190;
        v114 = v187;
        v115 = v187;
        v116 = &unk_27E35E630;
        v117 = &unk_27E35E630;
        v118 = &qword_23E903300;
LABEL_42:
        sub_23E87E3F0(v113, v115, v117, v118);
        v120 = *v107;
        (*v107)(v108, v114, v203);
        v121 = v114;
        v122 = v116;
        v123 = v118;
        goto LABEL_43;
      }

      v119 = v186;
      sub_23E87E3F0(v190, v186, &unk_27E35E440, &unk_23E902C90);
      v120 = *v107;
      (*v107)(v108, v119, v203);
      v121 = v119;
      v122 = &unk_27E35E440;
      v123 = &unk_23E902C90;
LABEL_43:
      sub_23E87E458(v121, v122, v123);
      if (v59[2] && (v124 = sub_23E88C9D8(v108), (v125 & 1) != 0))
      {
        v126 = v176;
        sub_23E8C8998(v59[7] + v124 * v110, v176, type metadata accessor for ContainerContent.Child);
        v127 = *v202;
        (*v202)(v108, v203);
        v128 = v180;
        sub_23E88A940(v126, v180);
        v129 = v182;
        sub_23E8C8998(v128, v182, type metadata accessor for ContainerContent.Child);
        (*v196)(v129, 0, 1, v198);
        sub_23E8C8998(v191, v181, type metadata accessor for ContainerContent.Child);
        v130 = swift_getEnumCaseMultiPayload();
        if (v130 > 1)
        {
          v131 = v177;
          if (v130 == 2)
          {
            v132 = v181;
            v133 = v188;
            v134 = v188;
            v135 = &qword_27E35E438;
            v136 = &qword_27E35E438;
            v137 = &unk_23E907E20;
          }

          else
          {
            v132 = v181;
            v133 = v185;
            v134 = v185;
            v135 = &qword_27E35E430;
            v136 = &qword_27E35E430;
            v137 = &unk_23E902C80;
          }
        }

        else
        {
          v131 = v177;
          if (v130)
          {
            v132 = v181;
            v133 = v186;
            v134 = v186;
            v135 = &unk_27E35E440;
            v136 = &unk_27E35E440;
            v137 = &unk_23E902C90;
          }

          else
          {
            v132 = v181;
            v133 = v187;
            v134 = v187;
            v135 = &unk_27E35E630;
            v136 = &unk_27E35E630;
            v137 = &qword_23E903300;
          }
        }

        sub_23E87E3F0(v132, v134, v136, v137);
        v120(v131, v133, v203);
        sub_23E87E458(v133, v135, v137);
        v138 = v182;
        v139 = v199;
        v140 = sub_23E8F6C48(v182, v131);
        v199 = v139;
        if (v139)
        {

          v127(v131, v203);
          sub_23E87E458(v138, &qword_27E35F070, &qword_23E906130);
          v91 = type metadata accessor for ContainerContent.Child;
          sub_23E8C87D4(v180, type metadata accessor for ContainerContent.Child);
          sub_23E8C87D4(v191, type metadata accessor for ContainerContent.Child);

          v194(v173, v174);
          return v91;
        }

        v141 = v140;
        v127(v131, v203);
        sub_23E87E458(v138, &qword_27E35F070, &qword_23E906130);
        sub_23E8EBFB4(v141);
        sub_23E8C87D4(v180, type metadata accessor for ContainerContent.Child);
        v108 = v179;
      }

      else
      {
        (*v202)(v108, v203);
      }

      ++v106;
      sub_23E8C87D4(v191, type metadata accessor for ContainerContent.Child);
      v109 = v183;
      if (v201 == v106)
      {

        goto LABEL_57;
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      v113 = v190;
      v114 = v188;
      v115 = v188;
      v116 = &qword_27E35E438;
      v117 = &qword_27E35E438;
      v118 = &unk_23E907E20;
    }

    else
    {
      v113 = v190;
      v114 = v185;
      v115 = v185;
      v116 = &qword_27E35E430;
      v117 = &qword_27E35E430;
      v118 = &unk_23E902C80;
    }

    goto LABEL_42;
  }

  v60 = 0;
  v193 = v196 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
  v199 = (v189 + 16);
  v192 = (v189 + 8);
  v61 = v200;
  while (v60 < *(v58 + 16))
  {
    v63 = *(v197 + 72);
    sub_23E8C8998(v193 + v63 * v60, v53, type metadata accessor for ContainerContent.Child);
    sub_23E8C8998(v53, v202, type metadata accessor for ContainerContent.Child);
    v64 = swift_getEnumCaseMultiPayload();
    if (v64 > 1)
    {
      if (v64 == 2)
      {
        v65 = v202;
        v66 = v188;
        v67 = v188;
        v68 = &qword_27E35E438;
        v69 = &qword_27E35E438;
        v70 = &unk_23E907E20;
      }

      else
      {
        v65 = v202;
        v66 = v185;
        v67 = v185;
        v68 = &qword_27E35E430;
        v69 = &qword_27E35E430;
        v70 = &unk_23E902C80;
      }
    }

    else if (v64)
    {
      v65 = v202;
      v66 = v186;
      v67 = v186;
      v68 = &unk_27E35E440;
      v69 = &unk_27E35E440;
      v70 = &unk_23E902C90;
    }

    else
    {
      v65 = v202;
      v66 = v187;
      v67 = v187;
      v68 = &unk_27E35E630;
      v69 = &unk_27E35E630;
      v70 = &qword_23E903300;
    }

    sub_23E87E3F0(v65, v67, v69, v70);
    v71 = *v199;
    (*v199)(v61, v66, v203);
    sub_23E87E458(v66, v68, v70);
    sub_23E8C8998(v53, v201, type metadata accessor for ContainerContent.Child);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v204 = v59;
    v74 = sub_23E88C9D8(v61);
    v75 = v59[2];
    v76 = (v73 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
      goto LABEL_70;
    }

    v78 = v73;
    if (v59[3] >= v77)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v59 = v204;
        if (v73)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_23E8CF95C();
        v59 = v204;
        if (v78)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_23E88CE14(v77, isUniquelyReferenced_nonNull_native);
      v79 = sub_23E88C9D8(v200);
      if ((v78 & 1) != (v80 & 1))
      {
        goto LABEL_73;
      }

      v74 = v79;
      v59 = v204;
      if (v78)
      {
LABEL_4:
        sub_23E8C887C(v201, v59[7] + v74 * v63);
        v61 = v200;
        (*v192)(v200, v203);
        sub_23E8C87D4(v53, type metadata accessor for ContainerContent.Child);
        goto LABEL_5;
      }
    }

    v59[(v74 >> 6) + 8] |= 1 << v74;
    v81 = v189;
    v82 = v200;
    v83 = v203;
    v71(v59[6] + *(v189 + 72) * v74, v200, v203);
    v84 = v59[7] + v74 * v63;
    v61 = v82;
    sub_23E88A940(v201, v84);
    (*(v81 + 8))(v82, v83);
    sub_23E8C87D4(v53, type metadata accessor for ContainerContent.Child);
    v85 = v59[2];
    v86 = __OFADD__(v85, 1);
    v87 = v85 + 1;
    if (v86)
    {
      goto LABEL_71;
    }

    v59[2] = v87;
LABEL_5:
    ++v60;
    v62 = v195;
    v58 = v196;
    if (v194 == v60)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_23E900E44();
  __break(1u);
  return result;
}

uint64_t sub_23E8C773C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a5;
  v42 = a1;
  v7 = type metadata accessor for RenderLayerAction();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F070, &qword_23E906130);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = sub_23E9006D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  ContainerContent.Child.id.getter(v19);
  v20 = type metadata accessor for ContainerContent.Child();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = sub_23E8F6C48(v14, v19);
  if (v5)
  {
    sub_23E87E458(v14, &qword_27E35F070, &qword_23E906130);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v23 = v21;
    sub_23E87E458(v14, &qword_27E35F070, &qword_23E906130);
    (*(v16 + 8))(v19, v15);
    v24 = v42;
    sub_23E8EBFB4(v23);
    v25 = sub_23E8C5BC4(a2, v37);
    v27 = v10;
    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = v25;
    }

    (*(v16 + 16))(v27, v38, v15);
    v29 = v27;
    v30 = &v27[*(v7 + 20)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48);
    ContainerContent.Child.id.getter(v30);
    *(v30 + v31) = v28;
    type metadata accessor for RenderLayerActionType();
    swift_storeEnumTagMultiPayload();
    v32 = *v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_23E889F50(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = sub_23E889F50((v33 > 1), v34 + 1, 1, v32);
    }

    v40 = v7;
    v41 = sub_23E8C8834(&qword_27E35E848, type metadata accessor for RenderLayerAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
    sub_23E8C8998(v29, boxed_opaque_existential_1, type metadata accessor for RenderLayerAction);
    v32[2] = v34 + 1;
    sub_23E881028(&v39, &v32[5 * v34 + 4]);
    result = sub_23E8C87D4(v29, type metadata accessor for RenderLayerAction);
    *v24 = v32;
  }

  return result;
}

uint64_t sub_23E8C7AE4(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0A0, &qword_23E906150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F078, &qword_23E906138);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0A8, &qword_23E906158);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v26 = a1;
  v30 = a1;
  (*(v11 + 16))(v14, v3, v10);
  sub_23E8C88E0(&qword_27E35F0B0, &qword_27E35F078, &qword_23E906138);
  sub_23E900984();
  v20 = *(v16 + 44);
  sub_23E8C88E0(&qword_27E35F0B8, &qword_27E35F078, &qword_23E906138);
  sub_23E900AD4();
  if (*&v19[v20] == v29[0])
  {
    v21 = v26;
LABEL_6:
    sub_23E87E458(v19, &qword_27E35F0A8, &qword_23E906158);
  }

  else
  {
    while (1)
    {
      v22 = sub_23E900AF4();
      sub_23E8C8928(v23, v9);
      v22(v29, 0);
      sub_23E900AE4();
      v21 = v28;
      v27(&v30, v9);
      sub_23E87E458(v9, &qword_27E35F0A0, &qword_23E906150);
      if (v4)
      {
        break;
      }

      sub_23E900AD4();
      if (*&v19[v20] == v29[0])
      {
        v21 = v30;
        goto LABEL_6;
      }
    }

    sub_23E87E458(v19, &qword_27E35F0A8, &qword_23E906158);
  }

  return v21;
}