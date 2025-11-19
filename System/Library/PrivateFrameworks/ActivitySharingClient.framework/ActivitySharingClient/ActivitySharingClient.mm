uint64_t sub_23E55FAB8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_23E57A478;
  }

  else
  {
    v3 = sub_23E55FBCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E55FBCC()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[2];
    (*(v0[6] + 8))(v1, v0[5]);
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  else
  {
    v5 = v0[4];
    v6 = v0[2];
    v6[3] = v2;
    v6[4] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  }

  v8 = v0[7];

  v9 = v0[1];

  return v9();
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

uint64_t sub_23E55FD64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E55FE58()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 184) = v0;

  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = *(v2 + 144);

    v6 = sub_23E57C56C;
  }

  else
  {
    v5 = *(v2 + 144);

    v6 = sub_23E55FF84;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23E55FF84()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[23];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = (*(v3 + 8))(v1, v3);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v6 = v0[1];

      return v6();
    }

    v10 = v4;
    v11 = v5;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v9 = v11;
    v8 = v10;
  }

  else
  {
    sub_23E57D2DC((v0 + 2));
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v12 = v0[1];

  return v12(v8, v9);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23E560114()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E576440;

  return v8(v2, v3);
}

uint64_t sub_23E560238()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005FLL, 0x800000023E5D08D0, 0x6574617669746361, 0xEA00000000002928);
  if (!*(v1 + 128))
  {
    v3 = v0[8];
    v4 = *(v3 + 112);
    [v4 setExportedObject_];
    v0[6] = sub_23E5B2CEC;
    v0[7] = 0;
    v5 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_23E5B2964;
    v0[5] = &block_descriptor_3;
    v6 = _Block_copy(v0 + 2);
    [v4 setInterruptionHandler_];
    _Block_release(v6);
    v0[6] = sub_23E5B2FB4;
    v0[7] = v3;
    v0[2] = v5;
    v0[3] = 1107296256;
    v0[4] = sub_23E5B2964;
    v0[5] = &block_descriptor_3;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];

    [v4 setInvalidationHandler_];
    _Block_release(v7);
    [v4 resume];
    *(v1 + 128) = 1;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_23E560450()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E55FD60;

  return XPCClient.activate()();
}

uint64_t sub_23E560500(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23E5C8EB0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23E5C8EA0();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23E560634(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_23E5609AC();
  v8 = (sub_23E5C9230() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_23E560A00(46, 0xE100000000000000, a1, a2);
  v10 = sub_23E5C8FD0();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x23EF0D160](v10, v12, v14, v16);
  v19 = v18;

  sub_23E560A00(40, 0xE100000000000000, a3, a4);
  v20 = sub_23E5C8FD0();
  v21 = MEMORY[0x23EF0D160](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_23E5C9410();
  MEMORY[0x23EF0D190](v25);

  MEMORY[0x23EF0D190](8285, 0xE200000000000000);
  MEMORY[0x23EF0D190](v17, v19);

  MEMORY[0x23EF0D190](14906, 0xE200000000000000);
  MEMORY[0x23EF0D190](v21, v23);

  return 91;
}

void sub_23E560890(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_23E560634(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_23E5C8E90();
  v7 = sub_23E5C9170();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_23E560AF0(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_23E55E000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EF0DE00](v9, -1, -1);
    MEMORY[0x23EF0DE00](v8, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_23E5609AC()
{
  result = qword_280C090F8;
  if (!qword_280C090F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C090F8);
  }

  return result;
}

unint64_t sub_23E560A00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_23E5C8FC0() != a1 || v9 != a2)
  {
    v10 = sub_23E5C9430();

    if (v10)
    {
      return v8;
    }

    v8 = sub_23E5C8F90();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23E560AF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E560C18(v11, 0, 0, 1, a1, a2);
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
    sub_23E560BBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_23E560BBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23E560C18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23E585FAC(a5, a6);
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
    result = sub_23E5C92F0();
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

uint64_t sub_23E560D88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return Array<A>.activitySharingTransportData()();
}

uint64_t Array<A>.activitySharingTransportData()()
{

  CodableObjectArray.init(value:)(&v2);
  type metadata accessor for CodableObjectArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v0 = TransportSerializable<>.activitySharingTransportData()();

  return v0;
}

uint64_t CodableObjectArray.init(value:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23E5C9040();

  *a1 = v2;
  return result;
}

uint64_t sub_23E560ED4()
{
  v6 = *v0;
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  v4 = sub_23E5C8B20();

  return v4;
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

uint64_t sub_23E560FB4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = v6[11];
    v10 = sub_23E5A275C;
  }

  else
  {
    v6[14] = a2;
    v6[15] = a1;
    v10 = sub_23E5610F4;
    v9 = 0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_23E5610F4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  (*(v0 + 72))(v1, v2, 0);
  sub_23E56121C(v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

void sub_23E561184(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_23E5C8B80();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_23E5C8BA0();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_23E56121C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23E561230(a1, a2);
  }

  return a1;
}

uint64_t sub_23E561230(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23E561284()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E56158C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);
  if (v2 >> 60 != 15)
  {
    sub_23E561230(*(v0 + 48), v2);
  }

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroyTm_1()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23E5616A8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_23E5C8BB0();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_23E56121C(v4, v9);
}

uint64_t sub_23E561754(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
    return sub_23E5C90E0();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_23E561880(a1, a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
    return sub_23E5C90F0();
  }
}

uint64_t sub_23E5617EC(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0) - 8) + 80);

  return sub_23E561754(a1, a2, a3);
}

uint64_t sub_23E561880(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_23E56191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v35 = a5;
  v36 = a3;
  v33[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
  v8 = *(v7 - 8);
  v38 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = *(a2 + 112);
  v12 = [v11 serviceName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_23E5C8F40();
    v16 = v15;
  }

  else
  {
    v16 = 0xE900000000000029;
    v14 = 0x6E776F6E6B6E7528;
  }

  v17 = *(v8 + 16);
  v37 = a1;
  v34 = v17;
  v17(v10, a1, v7);
  v18 = *(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  v20 = *(v8 + 32);
  v20(v19 + ((v18 + 32) & ~v18), v10, v7);
  v44 = sub_23E5B4BA8;
  v45 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_23E5B2C78;
  v43 = &block_descriptor_48;
  v21 = _Block_copy(&aBlock);

  v22 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v21);
  sub_23E5C9260();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346A40, &unk_23E5CE2E0);
  if (swift_dynamicCast())
  {
    v23 = v39;
    if (v35 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_23E5C8BA0();
    }

    v34(v10, v37, v7);
    v31 = swift_allocObject();
    v20(v31 + ((v18 + 16) & ~v18), v10, v7);
    v44 = sub_23E5617EC;
    v45 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_23E5616A8;
    v43 = &block_descriptor_54;
    v32 = _Block_copy(&aBlock);

    [v23 transportRequest:v36 data:v24 completion:v32];
    _Block_release(v32);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_280C09100 != -1)
    {
      swift_once();
    }

    v25 = sub_23E5C8EB0();
    __swift_project_value_buffer(v25, qword_280C09128);
    v26 = sub_23E5C8E90();
    v27 = sub_23E5C9160();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23E55E000, v26, v27, "Invalid proxy", v28, 2u);
      MEMORY[0x23EF0DE00](v28, -1, -1);
    }

    sub_23E56D8C8();
    v29 = swift_allocError();
    *v30 = 4;
    aBlock = v29;
    sub_23E5C90E0();
  }
}

uint64_t sub_23E561DAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E561E7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E561F14()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_23E59B5E8;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 64);

    v5 = sub_23E56203C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23E56203C()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v3 + 16);
  sub_23E562570(v5, v6);
  v7(v5, v6, v4, v3);
  if (v1)
  {
    goto LABEL_4;
  }

  v8 = v0[11];
  v9 = v0[6];
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v0[10] + 8))(v8, v0[9]);
    sub_23E56D8C8();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
LABEL_4:
    sub_23E56121C(v5, v6);
    v12 = v0[11];

    v13 = v0[1];
    goto LABEL_5;
  }

  v15 = v0[4];
  sub_23E56121C(v5, v6);
  (*(v10 + 32))(v15, v8, v9);

  v13 = v0[1];
LABEL_5:

  return v13();
}

uint64_t sub_23E562214(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 2;
  }

  v6 = sub_23E5C8B10();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_23E561880(a1, a2);
  sub_23E5C8B00();
  sub_23E5C8AF0();

  sub_23E56121C(a1, a2);
  result = sub_23E56121C(a1, a2);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t CodableObjectArray.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_23E5629F0(a1, a2, type metadata accessor for CodableObjectArray.CodingKeys);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E562510(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23E562570(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23E561880(a1, a2);
  }

  return a1;
}

uint64_t sub_23E562584@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E562214(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_23E5625B0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_23E596BC8;
  }

  else
  {
    v3 = sub_23E5626C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5626C8()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 48), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t InvitationDestinationCache.__allocating_init(invitationDestinationMap:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_23E5627D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SecureCloudClient.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCClient();
  swift_allocObject();
  result = XPCClient.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for XPCClient;
  *a1 = result;
  return result;
}

uint64_t XPCClient.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE9330] options:0];
  *(v0 + 112) = v1;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  return v0;
}

uint64_t TransportSerializable<>.activitySharingTransportData()()
{
  v0 = sub_23E5C8B40();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  v3 = sub_23E5C8B20();

  return v3;
}

uint64_t sub_23E5629F0(void *a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v23[2] = *MEMORY[0x277D85DE8];
  a3(255, *(a2 + 16));
  swift_getWitnessTable();
  v22 = sub_23E5C93F0();
  v5 = *(v22 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v21 - v7;
  v9 = *v3;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5C9510();
  v11 = objc_opt_self();
  v23[0] = 0;
  v12 = [v11 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v23];
  v13 = v23[0];
  if (v12)
  {
    v14 = sub_23E5C8BB0();
    v16 = v15;

    v23[0] = v14;
    v23[1] = v16;
    sub_23E568E0C();
    v17 = v22;
    sub_23E5C93E0();
    (*(v5 + 8))(v8, v17);
    result = sub_23E561230(v14, v16);
  }

  else
  {
    v19 = v13;
    sub_23E5C8B90();

    swift_willThrow();
    result = (*(v5 + 8))(v8, v22);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E562C34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD60;

  return sub_23E562CEC(a1, v5);
}

uint64_t sub_23E562CEC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E561284;

  return v7(a1);
}

uint64_t sub_23E562DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23E55FD60;

  return sub_23E562EB0(a1, v4, v5, v7);
}

uint64_t sub_23E562EB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23E55FD64;

  return v8();
}

uint64_t sub_23E562F98()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E55FD60;

  return sub_23E563058(v2, v3, v5);
}

uint64_t sub_23E563058(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23E55FD60;

  return v7();
}

uint64_t sub_23E563140()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E5631F4(v2, v3, v4);
}

uint64_t sub_23E5631F4(uint64_t a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_23E563270, 0, 0);
}

void sub_23E563270()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 40) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  v4 = *(v3 + 64);
  v8 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_23E58EEA4;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E5633EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23E55FD64;

  return XPCClient.sendItem<A, B>(_:payload:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t XPCClient.sendItem<A, B>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = sub_23E5C9210();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = sub_23E5C9210();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E563608, v7, 0);
}

{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = sub_23E5C9210();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E5B40C8, v7, 0);
}

uint64_t sub_23E563608()
{
  v1 = v0 + 15;
  v2 = v0[17];
  v3 = v0[7];
  (*(v0[16] + 16))(v2, v0[6], v0[15]);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
    v4 = v0[16];
    v6 = 0xF000000000000000;
  }

  else
  {
    v7 = v0[17];
    v5 = (*(v0[9] + 8))(v0[7]);
    v6 = v8;
    v1 = v0 + 7;
  }

  v9 = *v1;
  v0[18] = v5;
  v0[19] = v6;
  v10 = v0[11];
  (*(v4 + 8))(v0[17], v9);
  if (*(v10 + 128) == 1)
  {
    v11 = v0[11];
    v12 = v0[5];
    v13 = sub_23E563978();
    v14 = swift_task_alloc();
    v0[20] = v14;
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v5;
    v14[5] = v6;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    v0[21] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
    *v16 = v0;
    v16[1] = sub_23E5B4514;

    return MEMORY[0x2822008A0](v0 + 2, v11, v13, 0xD000000000000019, 0x800000023E5D01C0, sub_23E5639E4, v14, v17);
  }

  else
  {
    sub_23E56D8C8();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_23E56121C(v0[18], v0[19]);
    v19 = v0[17];
    v20 = v0[14];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_23E5638E4()
{
  v6 = *v0;
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  v4 = sub_23E5C8B20();

  return v4;
}

unint64_t sub_23E563978()
{
  result = qword_280C090F0;
  if (!qword_280C090F0)
  {
    type metadata accessor for XPCClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C090F0);
  }

  return result;
}

uint64_t sub_23E5639FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8CD0();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23E563AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8CD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_23E563BA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = TransportSerializable<>.init(activitySharingTransportData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_23E563BD4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v5 = a1 + *(result + 20);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E563C20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23E563C74@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v5 = (a1 + *(result + 36));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E563CBC(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_23E563CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8CD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23E563E38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8CD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23E563F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8C20();
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

uint64_t sub_23E56402C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8C20();
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

uint64_t sub_23E5640E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8C20();
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

uint64_t sub_23E5641A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8C20();
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

uint64_t sub_23E564264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8C20();
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

uint64_t sub_23E564324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8C20();
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

uint64_t sub_23E5643E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8C20();
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

uint64_t sub_23E5644A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8C20();
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

uint64_t sub_23E56455C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E564598@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v5 = a1 + *(result + 20);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E5645E4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23E564630@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 32));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_23E562570(v4, v5);
}

uint64_t sub_23E564694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v5 = (a1 + *(result + 36));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t sub_23E5646EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v6 = a2 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t sub_23E564738@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v5 = (a1 + *(result + 40));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E564780(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_23E5647BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8CD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23E564888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8CD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_23E564944()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E56497C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E5649B4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23E564A18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 20));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_23E562570(v4, v5);
}

uint64_t sub_23E564A7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 24));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_23E562570(v4, v5);
}

uint64_t sub_23E564AE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 28));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_23E562570(v4, v5);
}

uint64_t sub_23E564B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8CD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23E564C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8CD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_23E564CD4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v5 = a1 + *(result + 20);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E564D20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23E564D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v5 = (a1 + *(result + 32));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t sub_23E564DC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v6 = a2 + *(result + 32);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t sub_23E564E18@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v5 = (a1 + *(result + 40));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E564E60(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_23E564E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8CD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23E564FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8CD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23E565114()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E565154()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23E5652DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23E56533C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_23E56539C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E5653D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E56540C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E5654B0@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v5 = a1 + *(result + 20);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E5654FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23E565540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 28));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_23E562570(v4, v5);
}

uint64_t sub_23E5655A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v5 = (a1 + *(result + 32));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t sub_23E5655FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v6 = a2 + *(result + 32);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t sub_23E565648@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v5 = (a1 + *(result + 36));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E565690(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_23E5656CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8CD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23E565798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8CD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_23E565854()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E565894()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E5659D4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v5 = a1 + *(result + 20);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23E565A20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23E565A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8CD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23E565B30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8CD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_23E565BEC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E565C24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E565C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8CD0();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23E565D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8CD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_23E565DFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E565E34()
{
  MEMORY[0x23EF0DE80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E565E6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E565EAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_23E565F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E5C8C20();
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

uint64_t sub_23E56603C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E5C8C20();
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

uint64_t SecureCloudPingRequestProtobuf.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for SecureCloudPingRequestProtobuf()
{
  result = qword_27E346130;
  if (!qword_27E346130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E5664C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E566528(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t SecureCloudPingRequestProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SecureCloudPingRequestProtobuf.identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E566674;
}

void sub_23E566674(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall SecureCloudPingRequestProtobuf.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SecureCloudPingRequestProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudPingRequestProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SecureCloudPingRequestProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  sub_23E5C8CC0();
  result = type metadata accessor for SecureCloudPingRequestProtobuf();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_23E5668AC()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E3460A8);
  __swift_project_value_buffer(v0, qword_27E3460A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CA3C0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23E5C8E60();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_23E5C8E70();
}

uint64_t static SecureCloudPingRequestProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E3460A0 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E3460A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SecureCloudPingRequestProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20);
      sub_23E5C8D70();
    }
  }

  return result;
}

uint64_t SecureCloudPingRequestProtobuf.traverse<A>(visitor:)()
{
  v2 = (v0 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  if (!v2[1])
  {
    return sub_23E5C8CB0();
  }

  v3 = *v2;
  result = sub_23E5C8E30();
  if (!v1)
  {
    return sub_23E5C8CB0();
  }

  return result;
}

uint64_t SecureCloudPingRequestProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudPingRequestProtobuf();
  sub_23E5673AC(&qword_27E346110, type metadata accessor for SecureCloudPingRequestProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t sub_23E566C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23E5C8CC0();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_23E566CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23E566D28(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_23E566DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E5673AC(&qword_27E346148, type metadata accessor for SecureCloudPingRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E566E64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E3460A0 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E3460A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E566F0C(uint64_t a1)
{
  v2 = sub_23E5673AC(&qword_27E346120, type metadata accessor for SecureCloudPingRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E566F78()
{
  sub_23E5C94D0();
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t sub_23E566FD0()
{
  sub_23E5673AC(&qword_27E346120, type metadata accessor for SecureCloudPingRequestProtobuf);

  return sub_23E5C8DE0();
}

uint64_t sub_23E56704C()
{
  sub_23E5C94D0();
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t _s21ActivitySharingClient30SecureCloudPingRequestProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_23E5C9430() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_23E5C8CD0();
    sub_23E5673AC(&qword_27E346150, MEMORY[0x277D216C8]);
    return sub_23E5C8F20() & 1;
  }

  return 0;
}

void sub_23E5672D8()
{
  sub_23E5C8CD0();
  if (v0 <= 0x3F)
  {
    sub_23E56735C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E56735C()
{
  if (!qword_27E346140)
  {
    v0 = sub_23E5C9210();
    if (!v1)
    {
      atomic_store(v0, &qword_27E346140);
    }
  }
}

uint64_t sub_23E5673AC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_23E567440@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    v8 = sub_23E5C8B10();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_23E561880(a1, a2);
    sub_23E5C8B00();
    sub_23E5691A8();
    sub_23E5C8AF0();

    sub_23E56121C(a1, a2);
    sub_23E56121C(a1, a2);
    if (!v3)
    {
      *a3 = v11;
      a3[1] = v12;
      result = *&v13;
      a3[2] = v13;
      a3[3] = v14;
    }
  }

  return result;
}

double sub_23E567530@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v8 = sub_23E5C8B10();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_23E561880(a1, a2);
    sub_23E5C8B00();
    sub_23E568D10();
    sub_23E5C8AF0();

    sub_23E56121C(a1, a2);
    sub_23E56121C(a1, a2);
    if (!v3)
    {
      *a3 = v11;
      *(a3 + 16) = v12;
      *(a3 + 32) = v13;
      result = *&v14;
      *(a3 + 40) = v14;
    }
  }

  return result;
}

uint64_t sub_23E567630(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    return v3 > 0xE;
  }

  v6 = sub_23E5C8B10();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_23E561880(a1, a2);
  sub_23E5C8B00();
  sub_23E569250();
  sub_23E5C8AF0();

  sub_23E56121C(a1, a2);
  result = sub_23E56121C(a1, a2);
  if (!v2)
  {
    return v3 > 0xE;
  }

  return result;
}

uint64_t sub_23E5676F8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void (*a3)(void)@<X2>, void *a4@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v7 = result;
    v9 = sub_23E5C8B10();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_23E561880(v7, a2);
    sub_23E5C8B00();
    a3();
    sub_23E5C8AF0();

    sub_23E56121C(v7, a2);
    result = sub_23E56121C(v7, a2);
    if (!v4)
    {
      *a4 = v12;
      a4[1] = v13;
      a4[2] = v14;
    }
  }

  return result;
}

double sub_23E5677F4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v8 = sub_23E5C8B10();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_23E561880(a1, a2);
    sub_23E5C8B00();
    sub_23E569058();
    sub_23E5C8AF0();

    sub_23E56121C(a1, a2);
    sub_23E56121C(a1, a2);
    if (!v3)
    {
      result = *&v11;
      *a3 = v11;
      *(a3 + 16) = v12;
      *(a3 + 32) = v13;
    }
  }

  return result;
}

double sub_23E5678E4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v8 = sub_23E5C8B10();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_23E561880(a1, a2);
    sub_23E5C8B00();
    sub_23E568FB0();
    sub_23E5C8AF0();

    sub_23E56121C(a1, a2);
    sub_23E56121C(a1, a2);
    if (!v3)
    {
      result = *&v11;
      *a3 = v11;
      *(a3 + 16) = v12;
      *(a3 + 32) = v13;
      *(a3 + 40) = v14;
    }
  }

  return result;
}

uint64_t sub_23E5679D4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = 3;
  }

  else
  {
    v5 = result;
    v7 = sub_23E5C8B10();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_23E561880(v5, a2);
    sub_23E5C8B00();
    sub_23E568E60();
    sub_23E5C8AF0();

    sub_23E56121C(v5, a2);
    result = sub_23E56121C(v5, a2);
    if (!v3)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t sub_23E567AB4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = result;
    v7 = sub_23E5C8B10();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_23E561880(v5, a2);
    sub_23E5C8B00();
    sub_23E568C68();
    sub_23E5C8AF0();

    sub_23E56121C(v5, a2);
    result = sub_23E56121C(v5, a2);
    if (!v3)
    {
      *a3 = v10;
      *(a3 + 8) = 0;
    }
  }

  return result;
}

double sub_23E567B9C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  else
  {
    v7 = sub_23E5C8B10();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_23E561880(a1, a2);
    sub_23E5C8B00();
    sub_23E568DB8();
    sub_23E5C8AF0();

    sub_23E56121C(a1, a2);
    sub_23E56121C(a1, a2);
    if (!v3)
    {
      result = *&v11;
      *a3 = v11;
    }
  }

  return result;
}

uint64_t sub_23E567C80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v6 = sub_23E5C8B10();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_23E561880(a1, a2);
  sub_23E5C8B00();
  sub_23E5C8AF0();

  sub_23E56121C(a1, a2);
  result = sub_23E56121C(a1, a2);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_23E567D58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v6 = sub_23E5C8B10();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_23E561880(a1, a2);
  sub_23E5C8B00();
  sub_23E5C8AF0();

  sub_23E56121C(a1, a2);
  result = sub_23E56121C(a1, a2);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t TransportSerializable<>.init(activitySharingTransportData:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20]();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 >> 60 == 15)
  {
    return (*(v5 + 56))(a2, 1, 1, a1);
  }

  v12 = v7;
  v13 = v8;
  v14 = sub_23E5C8B10();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_23E561880(v12, v13);
  sub_23E5C8B00();
  sub_23E5C8AF0();

  sub_23E56121C(v12, v13);
  result = sub_23E56121C(v12, v13);
  if (!v2)
  {
    (*(v5 + 32))(a2, v10, a1);
    return (*(v5 + 56))(a2, 0, 1, a1);
  }

  return result;
}

void *TransportSerializable<>.activitySharingTransportData()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_23E5C8BB0();
  }

  else
  {
    v3 = v2;
    sub_23E5C8B90();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t TransportSerializable<>.init(activitySharingTransportData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  sub_23E568148();
  v6 = sub_23E5C9180();
  result = sub_23E56121C(a1, a2);
  if (!v2)
  {
    result = v6;
    if (!v6)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23E568148()
{
  result = qword_280C08FF8[0];
  if (!qword_280C08FF8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280C08FF8);
  }

  return result;
}

uint64_t sub_23E5681E4()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  sub_23E5691FC();
  v4 = sub_23E5C8B20();

  return v4;
}

uint64_t sub_23E568340()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 4);
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  sub_23E5690AC();
  v4 = sub_23E5C8B20();

  return v4;
}

uint64_t sub_23E5683F4()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 4);
  v9 = *(v0 + 5);
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  sub_23E569004();
  v4 = sub_23E5C8B20();

  return v4;
}

uint64_t sub_23E5684A8()
{
  v0 = sub_23E5C8B40();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  sub_23E5692A4();
  v3 = sub_23E5C8B20();

  return v3;
}

uint64_t sub_23E568528@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E567630(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_23E568558()
{
  v6 = *v0;
  v7 = v0[1];
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  v4 = sub_23E5C8B20();

  return v4;
}

uint64_t sub_23E5685EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23E567C80(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_23E568644(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v10 = *v3;
  v11 = *(v3 + 1);
  v12 = *(v3 + 2);
  v5 = sub_23E5C8B40();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  a3();
  v8 = sub_23E5C8B20();

  return v8;
}

uint64_t sub_23E56871C()
{
  v6 = *v0;
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  sub_23E568EB4();
  v4 = sub_23E5C8B20();

  return v4;
}

uint64_t sub_23E5687C8()
{
  v6 = *v0;
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  sub_23E568E0C();
  v4 = sub_23E5C8B20();

  return v4;
}

uint64_t sub_23E5688BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_23E567D58(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_23E5688F8()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 4);
  v9 = *(v0 + 40);
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  sub_23E568D64();
  v4 = sub_23E5C8B20();

  return v4;
}

uint64_t sub_23E5689B8()
{
  v6 = *v0;
  v1 = sub_23E5C8B40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  sub_23E568CBC();
  v4 = sub_23E5C8B20();

  return v4;
}

uint64_t sub_23E568B4C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return TransportSerializable<>.activitySharingTransportData()();
}

uint64_t sub_23E568BE4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return TransportSerializable<>.init(activitySharingTransportData:)(a1, a2);
}

unint64_t sub_23E568C68()
{
  result = qword_27E346168;
  if (!qword_27E346168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346168);
  }

  return result;
}

unint64_t sub_23E568CBC()
{
  result = qword_27E346170;
  if (!qword_27E346170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346170);
  }

  return result;
}

unint64_t sub_23E568D10()
{
  result = qword_27E346178;
  if (!qword_27E346178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346178);
  }

  return result;
}

unint64_t sub_23E568D64()
{
  result = qword_27E346180;
  if (!qword_27E346180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346180);
  }

  return result;
}

unint64_t sub_23E568DB8()
{
  result = qword_280C08CE0;
  if (!qword_280C08CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C08CE0);
  }

  return result;
}

unint64_t sub_23E568E0C()
{
  result = qword_280C08CF0;
  if (!qword_280C08CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C08CF0);
  }

  return result;
}

unint64_t sub_23E568E60()
{
  result = qword_27E346188;
  if (!qword_27E346188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346188);
  }

  return result;
}

unint64_t sub_23E568EB4()
{
  result = qword_27E346190;
  if (!qword_27E346190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346190);
  }

  return result;
}

unint64_t sub_23E568F08()
{
  result = qword_27E346198;
  if (!qword_27E346198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346198);
  }

  return result;
}

unint64_t sub_23E568F5C()
{
  result = qword_27E3461A0;
  if (!qword_27E3461A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461A0);
  }

  return result;
}

unint64_t sub_23E568FB0()
{
  result = qword_27E3461A8;
  if (!qword_27E3461A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461A8);
  }

  return result;
}

unint64_t sub_23E569004()
{
  result = qword_27E3461B0;
  if (!qword_27E3461B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461B0);
  }

  return result;
}

unint64_t sub_23E569058()
{
  result = qword_27E3461B8;
  if (!qword_27E3461B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461B8);
  }

  return result;
}

unint64_t sub_23E5690AC()
{
  result = qword_27E3461C0;
  if (!qword_27E3461C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461C0);
  }

  return result;
}

unint64_t sub_23E569100()
{
  result = qword_27E3461C8;
  if (!qword_27E3461C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461C8);
  }

  return result;
}

unint64_t sub_23E569154()
{
  result = qword_27E3461D0;
  if (!qword_27E3461D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461D0);
  }

  return result;
}

unint64_t sub_23E5691A8()
{
  result = qword_27E3461D8;
  if (!qword_27E3461D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461D8);
  }

  return result;
}

unint64_t sub_23E5691FC()
{
  result = qword_27E3461E0;
  if (!qword_27E3461E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461E0);
  }

  return result;
}

unint64_t sub_23E569250()
{
  result = qword_27E3461E8;
  if (!qword_27E3461E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461E8);
  }

  return result;
}

unint64_t sub_23E5692A4()
{
  result = qword_27E3461F0;
  if (!qword_27E3461F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3461F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InvitationDestinationConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for InvitationDestinationConstants(_WORD *result, int a2, int a3)
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

uint64_t sub_23E569428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23E5CA610;
  *(v0 + 32) = 0xD00000000000002ELL;
  *(v0 + 40) = 0x800000023E5CFB50;
  v1 = *MEMORY[0x277CE9340];
  *(v0 + 48) = sub_23E5C8F40();
  *(v0 + 56) = v2;
  v3 = *MEMORY[0x277CE9348];
  result = sub_23E5C8F40();
  *(v0 + 64) = result;
  *(v0 + 72) = v5;
  qword_280C09120 = v0;
  return result;
}

double SecureCloudInviteRequestProtobuf.date.getter()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t type metadata accessor for SecureCloudInviteRequestProtobuf()
{
  result = qword_27E346240;
  if (!qword_27E346240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudInviteRequestProtobuf.date.setter(double a1)
{
  result = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SecureCloudInviteRequestProtobuf.date.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_23E569668;
}

uint64_t sub_23E569668(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall SecureCloudInviteRequestProtobuf.clearDate()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t SecureCloudInviteRequestProtobuf.handshakeToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_23E569734@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E569798(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t SecureCloudInviteRequestProtobuf.handshakeToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SecureCloudInviteRequestProtobuf.handshakeToken.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E56BC24;
}

Swift::Void __swiftcall SecureCloudInviteRequestProtobuf.clearHandshakeToken()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SecureCloudInviteRequestProtobuf.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_23E5699A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E569A04(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t SecureCloudInviteRequestProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SecureCloudInviteRequestProtobuf.identifier.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E569B50;
}

Swift::Void __swiftcall SecureCloudInviteRequestProtobuf.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SecureCloudInviteRequestProtobuf.userInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  sub_23E56A028(v1 + *(v6 + 32), v5);
  v7 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_23E56A098(v5, a1);
  }

  sub_23E5C8CC0();
  *(a1 + v7[5]) = xmmword_23E5CA6B0;
  *(a1 + v7[6]) = xmmword_23E5CA6B0;
  *(a1 + v7[7]) = xmmword_23E5CA6B0;
  v9 = (a1 + v7[8]);
  *v9 = 0;
  v9[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_23E562510(v5, &qword_27E346210, &unk_23E5CA6D0);
  }

  return result;
}

uint64_t sub_23E569D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  sub_23E56A028(a1 + *(v7 + 32), v6);
  v8 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_23E56A098(v6, a2);
  }

  sub_23E5C8CC0();
  *(a2 + v8[5]) = xmmword_23E5CA6B0;
  *(a2 + v8[6]) = xmmword_23E5CA6B0;
  *(a2 + v8[7]) = xmmword_23E5CA6B0;
  v10 = (a2 + v8[8]);
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_23E562510(v6, &qword_27E346210, &unk_23E5CA6D0);
  }

  return result;
}

uint64_t sub_23E569E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E56A428(a1, v8);
  v9 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 32);
  sub_23E562510(a2 + v9, &qword_27E346210, &unk_23E5CA6D0);
  sub_23E56A098(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t SecureCloudInviteRequestProtobuf.userInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 32);
  sub_23E562510(v1 + v3, &qword_27E346210, &unk_23E5CA6D0);
  sub_23E56A098(a1, v1 + v3);
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_23E56A028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E56A098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*SecureCloudInviteRequestProtobuf.userInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 32);
  *(v5 + 12) = v15;
  sub_23E56A028(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_23E5C8CC0();
    *(v14 + v9[5]) = xmmword_23E5CA6B0;
    *(v14 + v9[6]) = xmmword_23E5CA6B0;
    *(v14 + v9[7]) = xmmword_23E5CA6B0;
    v17 = (v14 + v9[8]);
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_23E562510(v8, &qword_27E346210, &unk_23E5CA6D0);
    }
  }

  else
  {
    sub_23E56A098(v8, v14);
  }

  return sub_23E56A310;
}

void sub_23E56A310(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_23E56A428((*a1)[5], v4);
    sub_23E562510(v9 + v3, &qword_27E346210, &unk_23E5CA6D0);
    sub_23E56A098(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_23E56A48C(v5);
  }

  else
  {
    sub_23E562510(v9 + v3, &qword_27E346210, &unk_23E5CA6D0);
    sub_23E56A098(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_23E56A428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E56A48C(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL SecureCloudInviteRequestProtobuf.hasUserInfo.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  v4 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  sub_23E56A028(v0 + *(v4 + 32), v3);
  v5 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_23E562510(v3, &qword_27E346210, &unk_23E5CA6D0);
  return v6;
}

Swift::Void __swiftcall SecureCloudInviteRequestProtobuf.clearUserInfo()()
{
  v1 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 32);
  sub_23E562510(v0 + v1, &qword_27E346210, &unk_23E5CA6D0);
  v2 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t SecureCloudInviteRequestProtobuf.version.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SecureCloudInviteRequestProtobuf.version.setter(int a1)
{
  result = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*SecureCloudInviteRequestProtobuf.version.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_23E56A734;
}

uint64_t sub_23E56A734(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall SecureCloudInviteRequestProtobuf.clearVersion()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t SecureCloudInviteRequestProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudInviteRequestProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SecureCloudInviteRequestProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  sub_23E5C8CC0();
  v2 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[8];
  v7 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  result = (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_23E56A974()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E3461F8);
  __swift_project_value_buffer(v0, qword_27E3461F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CA6C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23E5C8E60();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handshakeToken";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "userInfo";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "version";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t static SecureCloudInviteRequestProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E3460C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E3461F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SecureCloudInviteRequestProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v6 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 20);
        sub_23E5C8D60();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 24);
        goto LABEL_14;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v5 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 28);
LABEL_14:
          v0 = 0;
          sub_23E5C8D70();
          break;
        case 5:
          sub_23E56ADF4();
          break;
        case 6:
          v3 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 36);
          sub_23E5C8D80();
          break;
      }
    }
  }
}

uint64_t sub_23E56ADF4()
{
  v0 = *(type metadata accessor for SecureCloudInviteRequestProtobuf() + 32);
  type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  sub_23E56BBDC(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  return sub_23E5C8D90();
}

uint64_t SecureCloudInviteRequestProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v22 - v6;
  v8 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20]();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v13 = (v2 + v12[5]);
  if ((v13[1] & 1) != 0 || (v14 = *v13, result = sub_23E5C8E20(), !v3))
  {
    v16 = (v2 + v12[6]);
    if (!v16[1] || (v17 = *v16, result = sub_23E5C8E30(), !v3))
    {
      v18 = (v2 + v12[7]);
      if (!v18[1] || (v19 = *v18, result = sub_23E5C8E30(), !v3))
      {
        v22[1] = a2;
        sub_23E56A028(v2 + v12[8], v7);
        if ((*(v23 + 48))(v7, 1, v8) == 1)
        {
          sub_23E562510(v7, &qword_27E346210, &unk_23E5CA6D0);
        }

        else
        {
          sub_23E56A098(v7, v11);
          sub_23E56BBDC(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
          sub_23E5C8E50();
          result = sub_23E56A48C(v11);
          if (v3)
          {
            return result;
          }
        }

        v20 = (v2 + v12[9]);
        if (v20[1])
        {
          return sub_23E5C8CB0();
        }

        v21 = *v20;
        result = sub_23E5C8E40();
        if (!v3)
        {
          return sub_23E5C8CB0();
        }
      }
    }
  }

  return result;
}

uint64_t SecureCloudInviteRequestProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudInviteRequestProtobuf();
  sub_23E56BBDC(&qword_27E346220, type metadata accessor for SecureCloudInviteRequestProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t sub_23E56B1F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23E5C8CC0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  result = (*(*(v9 - 8) + 56))(a2 + v7, 1, 1, v9);
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_23E56B2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E56BBDC(&qword_27E346268, type metadata accessor for SecureCloudInviteRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E56B368@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E3460C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E3461F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E56B410(uint64_t a1)
{
  v2 = sub_23E56BBDC(&qword_27E346230, type metadata accessor for SecureCloudInviteRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E56B47C()
{
  sub_23E56BBDC(&qword_27E346230, type metadata accessor for SecureCloudInviteRequestProtobuf);

  return sub_23E5C8DE0();
}

uint64_t _s21ActivitySharingClient32SecureCloudInviteRequestProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346270, &qword_23E5CBE40);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v49 - v14;
  v16 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v17 = v16[5];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 8);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      goto LABEL_29;
    }
  }

  v22 = v16[6];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_29;
    }

    if (*v23 != *v25 || v24 != v26)
    {
      v28 = v16;
      v29 = sub_23E5C9430();
      v16 = v28;
      if ((v29 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v26)
  {
    goto LABEL_29;
  }

  v30 = v16[7];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_29;
    }

    if (*v31 != *v33 || v32 != v34)
    {
      v35 = v16;
      v36 = sub_23E5C9430();
      v16 = v35;
      if ((v36 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v34)
  {
    goto LABEL_29;
  }

  v37 = v16;
  v38 = v16[8];
  v39 = *(v12 + 48);
  sub_23E56A028(a1 + v38, v15);
  sub_23E56A028(a2 + v38, &v15[v39]);
  v40 = *(v5 + 48);
  if (v40(v15, 1, v4) != 1)
  {
    sub_23E56A028(v15, v11);
    if (v40(&v15[v39], 1, v4) != 1)
    {
      sub_23E56A098(&v15[v39], v8);
      v43 = _s21ActivitySharingClient33SecureCloudInviteUserInfoProtobufV2eeoiySbAC_ACtFZ_0(v11, v8);
      sub_23E56A48C(v8);
      sub_23E56A48C(v11);
      sub_23E562510(v15, &qword_27E346210, &unk_23E5CA6D0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    sub_23E56A48C(v11);
LABEL_28:
    sub_23E562510(v15, &qword_27E346270, &qword_23E5CBE40);
    goto LABEL_29;
  }

  if (v40(&v15[v39], 1, v4) != 1)
  {
    goto LABEL_28;
  }

  sub_23E562510(v15, &qword_27E346210, &unk_23E5CA6D0);
LABEL_32:
  v44 = v37[9];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 4);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 4);
  if ((v46 & 1) == 0)
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

LABEL_38:
    sub_23E5C8CD0();
    sub_23E56BBDC(&qword_27E346150, MEMORY[0x277D216C8]);
    v41 = sub_23E5C8F20();
    return v41 & 1;
  }

  if (v48)
  {
    goto LABEL_38;
  }

LABEL_29:
  v41 = 0;
  return v41 & 1;
}

void sub_23E56BA3C()
{
  sub_23E5C8CD0();
  if (v0 <= 0x3F)
  {
    sub_23E56BB90(319, &qword_27E346250);
    if (v1 <= 0x3F)
    {
      sub_23E56BB90(319, &qword_27E346140);
      if (v2 <= 0x3F)
      {
        sub_23E56BB38();
        if (v3 <= 0x3F)
        {
          sub_23E56BB90(319, &qword_27E346260);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23E56BB38()
{
  if (!qword_27E346258)
  {
    type metadata accessor for SecureCloudInviteUserInfoProtobuf();
    v0 = sub_23E5C9210();
    if (!v1)
    {
      atomic_store(v0, &qword_27E346258);
    }
  }
}

void sub_23E56BB90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23E5C9210();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_23E56BBDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SecureCloudPingRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SecureCloudPingRequest.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for SecureCloudPingRequestProtobuf();
  sub_23E56BE40(&qword_27E346120);
  return sub_23E5C8DF0();
}

uint64_t SecureCloudPingRequest.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  v6 = *v4;
  v5 = v4[1];

  result = sub_23E56BD7C(a1);
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v5)
  {
    v9 = v5;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_23E56BD7C(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudPingRequestProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E56BE40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecureCloudPingRequestProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E56BE84()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for SecureCloudPingRequestProtobuf();
  sub_23E56BE40(&qword_27E346120);
  return sub_23E5C8DF0();
}

uint64_t sub_23E56BF20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  v6 = *v4;
  v5 = v4[1];

  result = sub_23E56BD7C(a1);
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v5)
  {
    v9 = v5;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23E56BFA0(uint64_t a1, int a2)
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

uint64_t sub_23E56BFE8(uint64_t result, int a2, int a3)
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

uint64_t sub_23E56C034(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (a1 + *(type metadata accessor for SecureCloudPingRequestProtobuf() + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t SecureCloudInviteRequest.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8C20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudInviteRequest.handshakeToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteRequest() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SecureCloudInviteRequest()
{
  result = qword_280C08CD0;
  if (!qword_280C08CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudInviteRequest.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

id SecureCloudInviteRequest.userInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SecureCloudInviteRequest() + 28);
  v4 = *(v3 + 8);
  v11 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  v8 = v6;
  v9 = v7;

  return v11;
}

__n128 SecureCloudInviteRequest.init(date:handshakeToken:identifier:userInfo:version:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = *a6;
  v16 = *(a6 + 2);
  v17 = sub_23E5C8C20();
  v23 = *(a6 + 24);
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  v18 = type metadata accessor for SecureCloudInviteRequest();
  v19 = (a8 + v18[5]);
  *v19 = a2;
  v19[1] = a3;
  v20 = (a8 + v18[6]);
  *v20 = a4;
  v20[1] = a5;
  v21 = a8 + v18[7];
  result = v23;
  *v21 = v24;
  *(v21 + 16) = v16;
  *(v21 + 24) = v23;
  *(a8 + v18[8]) = a7;
  return result;
}

uint64_t SecureCloudInviteRequest.protobuf()()
{
  type metadata accessor for SecureCloudInviteRequestProtobuf();
  sub_23E56CD40(&qword_27E346230, type metadata accessor for SecureCloudInviteRequestProtobuf);
  return sub_23E5C8DF0();
}

uint64_t sub_23E56C418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v30[0] = *(v4 - 8);
  v5 = *(v30[0] + 64);
  MEMORY[0x28223BE20]();
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E5C8BE0();
  v9 = v8;
  v10 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v11 = a1 + v10[5];
  *v11 = v9;
  *(v11 + 8) = 0;
  v12 = type metadata accessor for SecureCloudInviteRequest();
  v13 = (a2 + v12[5]);
  v15 = *v13;
  v14 = v13[1];
  v16 = (a1 + v10[6]);
  v17 = v16[1];

  *v16 = v15;
  v16[1] = v14;
  v18 = (a2 + v12[6]);
  v20 = *v18;
  v19 = v18[1];
  v21 = (a1 + v10[7]);
  v22 = v21[1];

  *v21 = v20;
  v21[1] = v19;
  v23 = a2 + v12[7];
  v24 = *(v23 + 16);
  v31[0] = *v23;
  v31[1] = v24;
  v32 = *(v23 + 32);
  v30[4] = v31;
  sub_23E56CD40(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  v25 = v30[1];
  result = sub_23E5C8DF0();
  if (!v25)
  {
    v27 = v10[8];
    sub_23E56CA58(a1 + v27);
    sub_23E56A098(v7, a1 + v27);
    result = (*(v30[0] + 56))(a1 + v27, 0, 1, v4);
    v28 = *(a2 + v12[8]);
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v28))
    {
      v29 = a1 + v10[9];
      *v29 = v28;
      *(v29 + 4) = 0;
      return result;
    }

    __break(1u);
  }

  return result;
}

double SecureCloudInviteRequest.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v37 - v4;
  v6 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_23E5C8C20();
  v44 = *(v49 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v15 = a1 + v14[5];
  v16 = *v15;
  *(v15 + 8);
  v43 = v13;
  sub_23E5C8BD0();
  v17 = (a1 + v14[6]);
  v18 = v17[1];
  if (v18)
  {
    v39 = *v17;
    v42 = v18;
  }

  else
  {
    v39 = 0;
    v42 = 0xE000000000000000;
  }

  v19 = (a1 + v14[7]);
  v20 = v19[1];
  if (v20)
  {
    v38 = *v19;
    v41 = v20;
  }

  else
  {
    v38 = 0;
    v41 = 0xE000000000000000;
  }

  sub_23E56A028(a1 + v14[8], v5);
  v21 = *(v7 + 48);
  if (v21(v5, 1, v6) == 1)
  {

    sub_23E5C8CC0();
    *&v10[v6[5]] = xmmword_23E5CA6B0;
    *&v10[v6[6]] = xmmword_23E5CA6B0;
    *&v10[v6[7]] = xmmword_23E5CA6B0;
    v22 = &v10[v6[8]];
    *v22 = 0;
    *(v22 + 1) = 0;
    if (v21(v5, 1, v6) != 1)
    {
      sub_23E56CA58(v5);
    }
  }

  else
  {
    sub_23E56A098(v5, v10);
  }

  v23 = v45;
  SecureCloudInviteUserInfo.init(_:)(v10, &v46);
  if (v23)
  {

    sub_23E56CAC0(a1);
    (*(v44 + 8))(v43, v49);
  }

  else
  {
    v45 = v46;
    v25 = v47;
    v37 = v48;
    v26 = (a1 + v14[9]);
    v27 = *v26;
    v28 = *(v26 + 4);
    sub_23E56CAC0(a1);
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    v30 = v40;
    (*(v44 + 32))(v40, v43, v49);
    v31 = type metadata accessor for SecureCloudInviteRequest();
    v32 = (v30 + v31[5]);
    v33 = v42;
    *v32 = v39;
    v32[1] = v33;
    v34 = (v30 + v31[6]);
    v35 = v41;
    *v34 = v38;
    v34[1] = v35;
    v36 = v30 + v31[7];
    *v36 = v45;
    *(v36 + 16) = v25;
    result = *&v37;
    *(v36 + 24) = v37;
    *(v30 + v31[8]) = v29;
  }

  return result;
}

uint64_t sub_23E56CA58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E56CAC0(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E56CBAC()
{
  type metadata accessor for SecureCloudInviteRequestProtobuf();
  sub_23E56CD40(&qword_27E346230, type metadata accessor for SecureCloudInviteRequestProtobuf);
  return sub_23E5C8DF0();
}

uint64_t sub_23E56CC94()
{
  result = sub_23E5C8C20();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23E56CD40(unint64_t *a1, void (*a2)(uint64_t))
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

ActivitySharingClient::SecureCloudUpgradeMessage::MessageType_optional __swiftcall SecureCloudUpgradeMessage.MessageType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SecureCloudUpgradeMessage.MessageType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_23E56CDE8()
{
  v1 = *v0;
  sub_23E5C94D0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x23EF0D6D0](v2);
  return sub_23E5C94F0();
}

uint64_t sub_23E56CE38()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x23EF0D6D0](v1);
}

uint64_t sub_23E56CE70()
{
  v1 = *v0;
  sub_23E5C94D0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x23EF0D6D0](v2);
  return sub_23E5C94F0();
}

void *sub_23E56CEBC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_23E56CEDC(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t SecureCloudUpgradeMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8C20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudUpgradeMessage.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudUpgradeMessage() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SecureCloudUpgradeMessage()
{
  result = qword_280C08AE8;
  if (!qword_280C08AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudUpgradeMessage.messageType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SecureCloudUpgradeMessage();
  *a1 = *(v1 + *(result + 24));
  return result;
}

id SecureCloudUpgradeMessage.secureCloudShareItem.getter()
{
  v1 = *(v0 + *(type metadata accessor for SecureCloudUpgradeMessage() + 28));

  return v1;
}

uint64_t SecureCloudUpgradeMessage.upgradeToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudUpgradeMessage() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *SecureCloudUpgradeMessage.init(date:messageType:secureCloudShareItem:upgradeToken:version:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a2;
  v18 = sub_23E5C8C20();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  result = type metadata accessor for SecureCloudUpgradeMessage();
  v20 = (a9 + result[5]);
  *v20 = a7;
  v20[1] = a8;
  *(a9 + result[6]) = v17;
  v21 = (a9 + result[8]);
  *v21 = a4;
  v21[1] = a5;
  *(a9 + result[9]) = a6;
  *(a9 + result[7]) = a3;
  return result;
}

uint64_t SecureCloudUpgradeMessage.protobuf()()
{
  type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  sub_23E56DA38(&qword_27E346278);
  return sub_23E5C8DF0();
}

uint64_t sub_23E56D2CC(uint64_t a1, uint64_t a2)
{
  sub_23E5C8BE0();
  v5 = v4;
  v6 = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v7 = a1 + v6[5];
  *v7 = v5;
  *(v7 + 8) = 0;
  v8 = type metadata accessor for SecureCloudUpgradeMessage();
  v9 = (a2 + v8[8]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + v6[6]);
  v13 = v12[1];

  *v12 = v11;
  v12[1] = v10;
  v14 = (a2 + v8[5]);
  v16 = *v14;
  v15 = v14[1];
  v17 = (a1 + v6[7]);
  v18 = v17[1];

  *v17 = v16;
  v17[1] = v15;
  v20 = *(a2 + v8[9]);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v20))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v21 = a1 + v6[10];
  *v21 = v20;
  *(v21 + 4) = 0;
  v22 = [*(a2 + v8[7]) codableShareItem];
  if (v22 && (v23 = v22, v24 = [v22 data], v23, v24))
  {
    v25 = sub_23E5C8BB0();
    v27 = v26;

    v28 = a1 + v6[8];
    result = sub_23E56121C(*v28, *(v28 + 8));
    *v28 = v25;
    *(v28 + 8) = v27;
    v29 = a1 + v6[9];
    *v29 = (*(a2 + v8[6]) & 1) != 0;
    *(v29 + 8) = 1;
  }

  else
  {
    sub_23E56D8C8();
    swift_allocError();
    *v30 = 1;
    return swift_willThrow();
  }

  return result;
}

int *SecureCloudUpgradeMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_23E5C8C50();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20]();
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23E5C8C20();
  v52 = *(v53 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v11 = a1 + v10[5];
  v12 = *v11;
  *(v11 + 8);
  sub_23E5C8BD0();
  v13 = (a1 + v10[6]);
  v14 = v13[1];
  v50 = v2;
  if (v14)
  {
    v45 = *v13;
    v51 = v14;
  }

  else
  {
    v45 = 0;
    v51 = 0xE000000000000000;
  }

  v15 = (a1 + v10[10]);
  if (*(v15 + 4))
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15;
  }

  v44 = v16;
  v17 = (a1 + v10[8]);
  v19 = *v17;
  v18 = v17[1];
  if (v18 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = *v17;
  }

  if (v18 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  else
  {
    v21 = v17[1];
  }

  v22 = objc_allocWithZone(MEMORY[0x277CE90C0]);

  sub_23E562570(v19, v18);
  v23 = sub_23E5C8BA0();
  sub_23E561230(v20, v21);
  v24 = [v22 initWithData_];

  if (!v24)
  {
    goto LABEL_18;
  }

  v25 = [objc_opt_self() shareItemWithCodableShareItem_];
  if (!v25)
  {

LABEL_18:

    sub_23E56D8C8();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  v26 = v25;
  v27 = a1 + v10[9];
  if ((*(v27 + 9) & 1) == 0)
  {
    if (*(v27 + 8))
    {
      v43 = *v27 != 0;
      goto LABEL_22;
    }

    sub_23E56D8C8();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();

LABEL_19:
    sub_23E56D91C(a1);
    return (*(v52 + 8))(v9, v53);
  }

  v43 = 0;
LABEL_22:
  v30 = v52;
  v31 = v49;
  v32 = v53;
  (*(v52 + 16))(v49, v9, v53);
  v33 = v46;
  sub_23E5C8C40();
  v34 = sub_23E5C8C30();
  v42 = v35;

  sub_23E56D91C(a1);
  (*(v47 + 8))(v33, v48);
  (*(v30 + 8))(v9, v32);
  result = type metadata accessor for SecureCloudUpgradeMessage();
  v36 = (v31 + result[5]);
  v37 = v42;
  *v36 = v34;
  v36[1] = v37;
  *(v31 + result[6]) = v43;
  v38 = (v31 + result[8]);
  v39 = v51;
  *v38 = v45;
  v38[1] = v39;
  *(v31 + result[9]) = v44;
  *(v31 + result[7]) = v26;
  return result;
}

unint64_t sub_23E56D8C8()
{
  result = qword_27E346280;
  if (!qword_27E346280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346280);
  }

  return result;
}

uint64_t sub_23E56D91C(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E56D97C()
{
  result = qword_27E346288;
  if (!qword_27E346288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346288);
  }

  return result;
}

uint64_t sub_23E56DA38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecureCloudUpgradeMessageProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E56DA7C()
{
  type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  sub_23E56DA38(&qword_27E346278);
  return sub_23E5C8DF0();
}

unint64_t sub_23E56DB50()
{
  result = sub_23E5C8C20();
  if (v1 <= 0x3F)
  {
    result = sub_23E56DBFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23E56DBFC()
{
  result = qword_280C088D0;
  if (!qword_280C088D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C088D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureCloudUpgradeMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureCloudUpgradeMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E56DDB8()
{
  result = qword_27E346298;
  if (!qword_27E346298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346298);
  }

  return result;
}

ActivitySharingClient::SecureCloudPingResponseType_optional __swiftcall SecureCloudPingResponseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E5C9370();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SecureCloudPingResponseType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656E696C636564;
  }

  else
  {
    result = 0x747065636361;
  }

  *v0;
  return result;
}

uint64_t sub_23E56DEC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656E696C636564;
  }

  else
  {
    v4 = 0x747065636361;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x656E696C636564;
  }

  else
  {
    v6 = 0x747065636361;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23E5C9430();
  }

  return v9 & 1;
}

unint64_t sub_23E56DF68()
{
  result = qword_27E3462A0;
  if (!qword_27E3462A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3462A0);
  }

  return result;
}

uint64_t sub_23E56DFBC()
{
  v1 = *v0;
  sub_23E5C94D0();
  sub_23E5C8F80();

  return sub_23E5C94F0();
}

uint64_t sub_23E56E03C()
{
  *v0;
  sub_23E5C8F80();
}

uint64_t sub_23E56E0A8()
{
  v1 = *v0;
  sub_23E5C94D0();
  sub_23E5C8F80();

  return sub_23E5C94F0();
}

uint64_t sub_23E56E124@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23E5C9370();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_23E56E184(uint64_t *a1@<X8>)
{
  v2 = 0x747065636361;
  if (*v1)
  {
    v2 = 0x656E696C636564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

ActivitySharingClient::SecureCloudInviteResponseType_optional __swiftcall SecureCloudInviteResponseType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23E56E200()
{
  v1 = *v0;
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](v1);
  return sub_23E5C94F0();
}

uint64_t sub_23E56E274()
{
  v1 = *v0;
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](v1);
  return sub_23E5C94F0();
}

uint64_t SecureCloudInviteResponse.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8C20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudInviteResponse.handshakeToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteResponse() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SecureCloudInviteResponse()
{
  result = qword_280C08B90;
  if (!qword_280C08B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudInviteResponse.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteResponse() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SecureCloudInviteResponse.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SecureCloudInviteResponse();
  *a1 = *(v1 + *(result + 28));
  return result;
}

id SecureCloudInviteResponse.userInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SecureCloudInviteResponse() + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_23E56E48C(v4, v5, v6, v7, v8);
}

id sub_23E56E48C(id result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (result)
  {
    v9 = result;

    v7 = a4;
    v8 = a5;

    return v9;
  }

  return result;
}

__n128 SecureCloudInviteResponse.init(date:handshakeToken:type:userInfo:version:identifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a4;
  v18 = *(a5 + 32);
  v19 = sub_23E5C8C20();
  v25 = *(a5 + 16);
  v26 = *a5;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for SecureCloudInviteResponse();
  v21 = (a9 + v20[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + v20[6]);
  *v22 = a7;
  v22[1] = a8;
  *(a9 + v20[7]) = v17;
  v23 = a9 + v20[8];
  result = v26;
  *v23 = v26;
  *(v23 + 16) = v25;
  *(v23 + 32) = v18;
  *(a9 + v20[9]) = a6;
  return result;
}

uint64_t SecureCloudInviteResponse.protobuf()()
{
  type metadata accessor for SecureCloudInviteResponseProtobuf();
  sub_23E56F380(&qword_27E3462A8, type metadata accessor for SecureCloudInviteResponseProtobuf);
  return sub_23E5C8DF0();
}

uint64_t sub_23E56E6A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v38 = *(v43 - 8);
  v6 = *(v38 + 64);
  (MEMORY[0x28223BE20])();
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E5C8BE0();
  v9 = v8;
  v10 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v11 = a1 + v10[5];
  *v11 = v9;
  *(v11 + 8) = 0;
  v12 = type metadata accessor for SecureCloudInviteResponse();
  v13 = (a2 + v12[5]);
  v15 = *v13;
  v14 = v13[1];
  v16 = (a1 + v10[6]);
  v17 = v16[1];

  *v16 = v15;
  v16[1] = v14;
  v18 = (a2 + v12[6]);
  v20 = *v18;
  v19 = v18[1];
  v21 = (a1 + v10[7]);
  v22 = v21[1];

  *v21 = v20;
  v21[1] = v19;
  v24 = a2 + v12[8];
  v25 = *v24;
  if (*v24)
  {
    v37 = a1;
    v27 = *(v24 + 24);
    v26 = *(v24 + 32);
    v39 = v3;
    v28 = *(v24 + 16);
    v40 = *(v24 + 8);
    v41 = &v37;
    v44[0] = v25;
    v44[1] = v40;
    v44[2] = v28;
    v44[3] = v27;
    v44[4] = v26;
    MEMORY[0x28223BE20](result);
    *(&v37 - 2) = v44;
    sub_23E56F380(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    v29 = v25;

    v30 = v27;
    v31 = v26;
    v32 = v39;
    sub_23E5C8DF0();
    result = sub_23E56EF10(v25, v40, v28, v27, v26);
    if (v32)
    {
      return result;
    }

    v33 = v10[9];
    a1 = v37;
    sub_23E56CA58(v37 + v33);
    sub_23E56A098(v42, a1 + v33);
    result = (*(v38 + 56))(a1 + v33, 0, 1, v43);
  }

  v34 = *(a2 + v12[9]);
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(v34))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v35 = a1 + v10[10];
  *v35 = v34;
  *(v35 + 4) = 0;
  v36 = a1 + v10[8];
  *v36 = qword_23E5CAE00[*(a2 + v12[7])];
  *(v36 + 8) = 1;
  return result;
}

int *SecureCloudInviteResponse.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v14 = sub_23E5C8C20();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v19 = (a1 + v18[5]);
  v20 = *v19;
  *(v19 + 8);
  v61 = v17;
  sub_23E5C8BD0();
  v21 = a1;
  v22 = (a1 + v18[6]);
  v23 = v22[1];
  if (v23)
  {
    v56 = *v22;
    v60 = v23;
  }

  else
  {
    v56 = 0;
    v60 = 0xE000000000000000;
  }

  v24 = (v21 + v18[7]);
  v25 = v24[1];
  v65 = v2;
  if (v25)
  {
    v55 = *v24;
    v59 = v25;
  }

  else
  {
    v55 = 0;
    v59 = 0xE000000000000000;
  }

  v58 = v18;
  v26 = v18[9];
  sub_23E56A028(v21 + v26, v13);
  v27 = *(v5 + 48);
  v28 = v4;
  v29 = v27(v13, 1, v4);

  sub_23E56CA58(v13);
  if (v29 == 1)
  {
    v30 = v21;
    v54 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v30 = v21;
    v35 = v21 + v26;
    v36 = v53;
    sub_23E56A028(v35, v53);
    v37 = v27(v36, 1, v28);
    v38 = v65;
    if (v37 == 1)
    {
      v39 = v54;
      sub_23E5C8CC0();
      *&v39[v28[5]] = xmmword_23E5CA6B0;
      *&v39[v28[6]] = xmmword_23E5CA6B0;
      *&v39[v28[7]] = xmmword_23E5CA6B0;
      v40 = &v39[v28[8]];
      *v40 = 0;
      *(v40 + 1) = 0;
      if (v27(v36, 1, v28) != 1)
      {
        sub_23E56CA58(v36);
      }
    }

    else
    {
      v39 = v54;
      sub_23E56A098(v36, v54);
    }

    SecureCloudInviteUserInfo.init(_:)(v39, v64);
    if (v38)
    {

      goto LABEL_25;
    }

    v31 = v64[1];
    v54 = v64[0];
    v32 = v64[2];
    v33 = v64[3];
    v34 = v64[4];
  }

  v41 = (v30 + v58[10]);
  if (*(v41 + 4))
  {
    v42 = 0;
  }

  else
  {
    v42 = *v41;
  }

  v43 = (v30 + v58[8]);
  if (v43[9])
  {
    LOBYTE(v44) = 0;
LABEL_23:
    sub_23E56EEB4(v30);
    v45 = v57;
    (*(v62 + 32))(v57, v61, v63);
    result = type metadata accessor for SecureCloudInviteResponse();
    v47 = (v45 + result[5]);
    v48 = v60;
    *v47 = v56;
    v47[1] = v48;
    v49 = (v45 + result[6]);
    v50 = v59;
    *v49 = v55;
    v49[1] = v50;
    *(v45 + result[7]) = v44;
    v51 = (v45 + result[8]);
    *v51 = v54;
    v51[1] = v31;
    v51[2] = v32;
    v51[3] = v33;
    v51[4] = v34;
    *(v45 + result[9]) = v42;
    return result;
  }

  if (v43[8])
  {
    v44 = 0x403010200uLL >> (8 * *v43);
    goto LABEL_23;
  }

  sub_23E56D8C8();
  swift_allocError();
  *v52 = 1;
  swift_willThrow();
  sub_23E56EF10(v54, v31, v32, v33, v34);
LABEL_25:
  sub_23E56EEB4(v30);
  return (*(v62 + 8))(v61, v63);
}

uint64_t sub_23E56EEB4(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_23E56EF10(void *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23E56EF6C()
{
  result = qword_27E3462B0;
  if (!qword_27E3462B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3462B0);
  }

  return result;
}

uint64_t sub_23E56F050()
{
  type metadata accessor for SecureCloudInviteResponseProtobuf();
  sub_23E56F380(&qword_27E3462A8, type metadata accessor for SecureCloudInviteResponseProtobuf);
  return sub_23E5C8DF0();
}

uint64_t getEnumTagSinglePayload for SecureCloudInviteResponseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureCloudInviteResponseType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23E56F290()
{
  sub_23E5C8C20();
  if (v0 <= 0x3F)
  {
    sub_23E56F330();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E56F330()
{
  if (!qword_280C08AF8[0])
  {
    v0 = sub_23E5C9210();
    if (!v1)
    {
      atomic_store(v0, qword_280C08AF8);
    }
  }
}

uint64_t sub_23E56F380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SecureCloudInviteUserInfo.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  sub_23E56FA24(&qword_27E346218);
  return sub_23E5C8DF0();
}

uint64_t SecureCloudInviteUserInfo.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v4 = (a1 + v3[8]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *v4 & 0xFFFFFFFFFFFFLL;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v6)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    v42 = v11;
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v45 = v12;
  }

  else
  {
    v42 = 0;
    v45 = 0;
  }

  v13 = (a1 + v3[5]);
  v14 = *v13;
  v15 = v13[1];
  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v13;
  }

  if (v15 >> 60 == 15)
  {
    v17 = 0xC000000000000000;
  }

  else
  {
    v17 = v13[1];
  }

  v18 = objc_allocWithZone(MEMORY[0x277CE9040]);
  sub_23E562570(v14, v15);
  v19 = sub_23E5C8BA0();
  sub_23E561230(v16, v17);
  v20 = [v18 initWithData_];

  if (v20)
  {
    v44 = v20;
    v21 = (a1 + v3[7]);
    v22 = *v21;
    v23 = v21[1];
    if (v23 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v24 = *v21;
    }

    if (v23 >> 60 == 15)
    {
      v25 = 0xC000000000000000;
    }

    else
    {
      v25 = v21[1];
    }

    v26 = objc_allocWithZone(MEMORY[0x277CE90C8]);
    sub_23E562570(v22, v23);
    v27 = sub_23E5C8BA0();
    sub_23E561230(v24, v25);
    v28 = [v26 initWithData_];

    if (v28)
    {
      v29 = (a1 + v3[6]);
      v30 = *v29;
      v31 = v29[1];
      if (v31 >> 60 == 15)
      {
        v32 = 0;
      }

      else
      {
        v32 = *v29;
      }

      if (v31 >> 60 == 15)
      {
        v33 = 0xC000000000000000;
      }

      else
      {
        v33 = v29[1];
      }

      v34 = objc_allocWithZone(MEMORY[0x277CE90C0]);
      sub_23E562570(v30, v31);
      v35 = sub_23E5C8BA0();
      sub_23E561230(v32, v33);
      v36 = [v34 initWithData_];

      if (v36)
      {
        v37 = [objc_opt_self() shareItemWithCodableShareItem_];

        if (v37)
        {
          result = sub_23E56A48C(a1);
          *a2 = v44;
          a2[1] = v42;
          a2[2] = v45;
          a2[3] = v28;
          a2[4] = v37;
          return result;
        }
      }

      sub_23E56D8C8();
      swift_allocError();
      *v40 = 1;
      swift_willThrow();
    }

    else
    {

      sub_23E56D8C8();
      swift_allocError();
      *v41 = 1;
      swift_willThrow();
    }
  }

  else
  {

    sub_23E56D8C8();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
  }

  return sub_23E56A48C(a1);
}

uint64_t SecureCloudInviteUserInfo.cloudKitAddress.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SecureCloudInviteUserInfo.init(activityDataPreview:cloudKitAddress:legacyShareLocations:secureCloudShareItem:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id sub_23E56F81C(uint64_t a1, uint64_t a2)
{
  result = [*a2 data];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = sub_23E5C8BB0();
  v8 = v7;

  v9 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v10 = a1 + v9[5];
  sub_23E56121C(*v10, *(v10 + 8));
  *v10 = v6;
  *(v10 + 8) = v8;
  result = [*(a2 + 24) data];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = sub_23E5C8BB0();
  v14 = v13;

  v15 = a1 + v9[7];
  sub_23E56121C(*v15, *(v15 + 8));
  *v15 = v12;
  *(v15 + 8) = v14;
  v16 = [*(a2 + 32) codableShareItem];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 data];

  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = sub_23E5C8BB0();
  v21 = v20;

  v22 = a1 + v9[6];
  sub_23E56121C(*v22, *(v22 + 8));
  *v22 = v19;
  *(v22 + 8) = v21;
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = *(a2 + 8);
    v25 = (a1 + v9[8]);
    v26 = v25[1];

    *v25 = v24;
    v25[1] = v23;
  }

  else
  {
LABEL_7:
    sub_23E56D8C8();
    swift_allocError();
    *v27 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23E56FA24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecureCloudInviteUserInfoProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E56FA68()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  sub_23E56FA24(&qword_27E346218);
  return sub_23E5C8DF0();
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

uint64_t sub_23E56FB38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23E56FB80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t SecureCloudPingResponse.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SecureCloudPingResponse.requestIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

ActivitySharingClient::SecureCloudPingResponse __swiftcall SecureCloudPingResponse.init(requestIdentifier:identifier:)(Swift::String requestIdentifier, Swift::String identifier)
{
  *v2 = identifier;
  v2[1] = requestIdentifier;
  result.requestIdentifier = identifier;
  result.identifier = requestIdentifier;
  return result;
}

uint64_t SecureCloudPingResponse.protobuf()()
{
  v4 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  type metadata accessor for SecureCloudPingResponseProtobuf();
  sub_23E56FF28(&qword_27E3462C8);
  return sub_23E5C8DF0();
}

uint64_t sub_23E56FCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SecureCloudPingResponseProtobuf();
  v11 = (a1 + *(v10 + 20));
  v12 = v11[1];

  *v11 = a2;
  v11[1] = a3;
  v13 = (a1 + *(v10 + 24));
  v14 = v13[1];

  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t SecureCloudPingResponse.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SecureCloudPingResponseProtobuf();
  v5 = (a1 + *(v4 + 20));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = (a1 + *(v4 + 24));
  v10 = *v8;
  v9 = v8[1];

  result = sub_23E56FE64(a1);
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  *a2 = v6;
  a2[1] = v7;
  if (v9)
  {
    v13 = v9;
  }

  a2[2] = v12;
  a2[3] = v13;
  return result;
}

uint64_t sub_23E56FE64(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudPingResponseProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E56FF28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecureCloudPingResponseProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E56FF6C()
{
  v4 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  type metadata accessor for SecureCloudPingResponseProtobuf();
  sub_23E56FF28(&qword_27E3462C8);
  return sub_23E5C8DF0();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E57003C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23E570084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23E570114()
{
  result = qword_27E3462D8;
  if (!qword_27E3462D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3462D8);
  }

  return result;
}

uint64_t sub_23E570168()
{
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](1);
  return sub_23E5C94F0();
}

uint64_t sub_23E5701D4()
{
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](1);
  return sub_23E5C94F0();
}

unint64_t sub_23E5702FC()
{
  result = qword_27E3462E0;
  if (!qword_27E3462E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3462E0);
  }

  return result;
}

uint64_t SecureCloudWithdrawRequest.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8C20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudWithdrawRequest.handshakeToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudWithdrawRequest() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SecureCloudWithdrawRequest()
{
  result = qword_280C08988;
  if (!qword_280C08988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudWithdrawRequest.init(date:handshakeToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23E5C8C20();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SecureCloudWithdrawRequest();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t SecureCloudWithdrawRequest.protobuf()()
{
  type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  sub_23E570824(&qword_27E3462E8);
  return sub_23E5C8DF0();
}

uint64_t sub_23E57055C(uint64_t a1, uint64_t a2)
{
  sub_23E5C8BE0();
  v5 = v4;
  v6 = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v7 = a1 + *(v6 + 20);
  *v7 = v5;
  *(v7 + 8) = 0;
  v8 = (a2 + *(type metadata accessor for SecureCloudWithdrawRequest() + 20));
  v10 = *v8;
  v9 = v8[1];
  v11 = (a1 + *(v6 + 24));
  v12 = v11[1];

  *v11 = v10;
  v11[1] = v9;
  return result;
}

uint64_t SecureCloudWithdrawRequest.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23E5C8C20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v10 = a1 + *(v9 + 20);
  v11 = *v10;
  *(v10 + 8);
  sub_23E5C8BD0();
  v12 = (a1 + *(v9 + 24));
  v14 = *v12;
  v13 = v12[1];

  sub_23E570760(a1);
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  (*(v5 + 32))(a2, v8, v4);
  result = type metadata accessor for SecureCloudWithdrawRequest();
  v17 = (a2 + *(result + 20));
  *v17 = v15;
  v17[1] = v13;
  return result;
}

uint64_t sub_23E570760(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E570824(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecureCloudWithdrawRequestProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E570868()
{
  type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  sub_23E570824(&qword_27E3462E8);
  return sub_23E5C8DF0();
}

uint64_t sub_23E5708FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23E5C8C20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v12 = a1 + *(v11 + 20);
  v13 = *v12;
  *(v12 + 8);
  sub_23E5C8BD0();
  v14 = (a1 + *(v11 + 24));
  v16 = *v14;
  v15 = v14[1];

  sub_23E570760(a1);
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v15)
  {
    v15 = 0xE000000000000000;
  }

  result = (*(v7 + 32))(a3, v10, v6);
  v19 = (a3 + *(a2 + 20));
  *v19 = v17;
  v19[1] = v15;
  return result;
}

uint64_t sub_23E570A74()
{
  result = sub_23E5C8C20();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TransportDispatching.register(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_23E570B28, 0, 0);
}

uint64_t sub_23E570B28()
{
  v1 = v0[10];
  v2 = (*(v0[9] + 8))(v0[8]);
  v0[11] = v2;

  return MEMORY[0x2822009F8](sub_23E570BA8, v2, 0);
}

uint64_t sub_23E570BA8()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CB710;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_23E571874(&unk_23E5CB170, v6, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v11;
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

uint64_t TransportDispatching.register<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_23E570D14, 0, 0);
}

{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_23E570E08, 0, 0);
}

{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_23E570EFC, 0, 0);
}

{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_23E570FF0, 0, 0);
}

uint64_t sub_23E570D14()
{
  v1 = v0[9];
  v0[10] = (*(v0[7] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_23E571ED0;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_23E578D14(v7, v5, v6, v4, v3);
}

uint64_t sub_23E570E08()
{
  v1 = v0[9];
  v0[10] = (*(v0[7] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_23E571ED0;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_23E5792F8(v7, v5, v6, v4, v3);
}

uint64_t sub_23E570EFC()
{
  v1 = v0[9];
  v0[10] = (*(v0[7] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_23E571ED0;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_23E5799E8(v7, v5, v6, v4, v3);
}

uint64_t sub_23E570FF0()
{
  v1 = v0[9];
  v0[10] = (*(v0[7] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_23E5710B8;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_23E57A1A8(v7, v5, v6, v4, v3);
}

uint64_t sub_23E5710B8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t TransportDispatching.register<A, B>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v11;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  return MEMORY[0x2822009F8](sub_23E571200, 0, 0);
}

{
  v9[10] = v11;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  return MEMORY[0x2822009F8](sub_23E571410, 0, 0);
}

uint64_t sub_23E571200()
{
  v1 = v0[11];
  v0[12] = (*(v0[8] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_23E5712C8;
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_23E57A4DC(v9, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_23E5712C8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23E571410()
{
  v1 = v0[11];
  v0[12] = (*(v0[8] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_23E571ED4;
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_23E57AC60(v9, v7, v8, v5, v6, v3, v4);
}

uint64_t TransportDispatching.unregister(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_23E5714FC, 0, 0);
}

uint64_t sub_23E5714FC()
{
  v1 = v0[8];
  v2 = (*(v0[7] + 8))(v0[6]);
  v0[9] = v2;

  return MEMORY[0x2822009F8](sub_23E57157C, v2, 0);
}

uint64_t sub_23E57157C()
{
  v1 = v0[9];
  v2 = v0[5];
  swift_beginAccess();
  sub_23E5717A0(0, 0, v2);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23E57161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E55FD60;

  return sub_23E578C2C(a1, a2, a3, v9);
}

uint64_t sub_23E5716DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E55FD64;

  return sub_23E57B4EC(a1, a2, a3, v9);
}

unint64_t sub_23E5717A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_23E571874(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_23E57C5F0(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_23E57D178();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_23E57C718(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t sub_23E571874(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_23E57C5F0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23E5C2F04(v16, a4 & 1);
      v20 = *v5;
      result = sub_23E57C5F0(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_23E5C9470();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_23E57D178();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_23E5719E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23E57C65C(a2, a3);
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
      sub_23E5C3194(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23E57C65C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_23E5C9470();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23E57E53C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_23E571B64(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23E57C65C(a2, a3);
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
      sub_23E5C31A8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23E57C65C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_23E5C9470();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23E57E550();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 6);

    return sub_23E571E74(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + (v11 << 6));
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v26[2] = a1[2];
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t sub_23E571CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_23E57C65C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_23E5C34FC(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_23E57C65C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_23E5C9470();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_23E57E6F0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_23E571ED8(uint64_t a1)
{
  v4 = type metadata accessor for SecureCloudPingRequestProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  v9 = sub_23E574890();
  v10 = v12;
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_23E574780(&qword_27E346120, type metadata accessor for SecureCloudPingRequestProtobuf);
    v10 = sub_23E5C8DC0();
    sub_23E574830(v7, type metadata accessor for SecureCloudPingRequestProtobuf);
  }

  return v10;
}

uint64_t TransportProtobufSerializable.activitySharingTransportData()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a2 + 32))(a1, a2);
  if (!v3)
  {
    swift_getAssociatedConformanceWitness();
    v2 = sub_23E5C8DC0();
    (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  return v2;
}

uint64_t sub_23E5721B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_23E5C8CF0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for SecureCloudPingRequestProtobuf();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v16 = 3;
    return swift_willThrow();
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_23E561880(a1, a2);
    sub_23E5C8CE0();
    sub_23E574780(&qword_27E346120, type metadata accessor for SecureCloudPingRequestProtobuf);
    sub_23E5C8DB0();
    result = sub_23E56121C(a1, a2);
    if (!v3)
    {
      sub_23E5747C8(v15, v13, type metadata accessor for SecureCloudPingRequestProtobuf);
      v18 = &v13[*(v9 + 20)];
      v20 = *v18;
      v19 = *(v18 + 1);

      result = sub_23E574830(v13, type metadata accessor for SecureCloudPingRequestProtobuf);
      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = 0xE000000000000000;
      if (v19)
      {
        v22 = v19;
      }

      *a3 = v21;
      a3[1] = v22;
    }
  }

  return result;
}

uint64_t sub_23E5723E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for SecureCloudInviteRequest();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E5C8CF0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v19 = 3;
    return swift_willThrow();
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_23E561880(a1, a2);
    sub_23E5C8CE0();
    sub_23E574780(&qword_27E346230, type metadata accessor for SecureCloudInviteRequestProtobuf);
    sub_23E5C8DB0();
    if (v3)
    {
      return sub_23E56121C(a1, a2);
    }

    else
    {
      sub_23E574718(v18, v16, type metadata accessor for SecureCloudInviteRequestProtobuf);
      SecureCloudInviteRequest.init(_:)(v16, v9);
      sub_23E574830(v18, type metadata accessor for SecureCloudInviteRequestProtobuf);
      sub_23E56121C(a1, a2);
      v21 = v27;
      sub_23E5747C8(v9, v27, type metadata accessor for SecureCloudInviteRequest);
      return (*(v23 + 56))(v21, 0, 1, v6);
    }
  }
}

uint64_t sub_23E5726E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for SecureCloudUpgradeMessage();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E5C8CF0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v19 = 3;
    return swift_willThrow();
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_23E561880(a1, a2);
    sub_23E5C8CE0();
    sub_23E574780(&qword_27E346278, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    sub_23E5C8DB0();
    if (v3)
    {
      return sub_23E56121C(a1, a2);
    }

    else
    {
      sub_23E574718(v18, v16, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
      SecureCloudUpgradeMessage.init(_:)(v16, v9);
      sub_23E574830(v18, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
      sub_23E56121C(a1, a2);
      v21 = v27;
      sub_23E5747C8(v9, v27, type metadata accessor for SecureCloudUpgradeMessage);
      return (*(v23 + 56))(v21, 0, 1, v6);
    }
  }
}

uint64_t sub_23E5729E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for SecureCloudInviteResponse();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E5C8CF0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v19 = 3;
    return swift_willThrow();
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_23E561880(a1, a2);
    sub_23E5C8CE0();
    sub_23E574780(&qword_27E3462A8, type metadata accessor for SecureCloudInviteResponseProtobuf);
    sub_23E5C8DB0();
    if (v3)
    {
      return sub_23E56121C(a1, a2);
    }

    else
    {
      sub_23E574718(v18, v16, type metadata accessor for SecureCloudInviteResponseProtobuf);
      SecureCloudInviteResponse.init(_:)(v16, v9);
      sub_23E574830(v18, type metadata accessor for SecureCloudInviteResponseProtobuf);
      sub_23E56121C(a1, a2);
      v21 = v27;
      sub_23E5747C8(v9, v27, type metadata accessor for SecureCloudInviteResponse);
      return (*(v23 + 56))(v21, 0, 1, v6);
    }
  }
}

uint64_t sub_23E572CDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_23E5C8CF0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v16 = 3;
    return swift_willThrow();
  }

  else
  {
    memset(v18, 0, 40);
    sub_23E561880(a1, a2);
    sub_23E5C8CE0();
    sub_23E574780(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    sub_23E5C8DB0();
    if (v3)
    {
      return sub_23E56121C(a1, a2);
    }

    else
    {
      sub_23E574718(v15, v13, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      SecureCloudInviteUserInfo.init(_:)(v13, v18);
      sub_23E574830(v15, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      result = sub_23E56121C(a1, a2);
      *a3 = *&v18[0];
      *(a3 + 8) = *(v18 + 8);
      *(a3 + 24) = *(&v18[1] + 8);
    }
  }

  return result;
}

uint64_t sub_23E572F2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_23E5C8CF0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for SecureCloudPingResponseProtobuf();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v16 = 3;
    return swift_willThrow();
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_23E561880(a1, a2);
    sub_23E5C8CE0();
    sub_23E574780(&qword_27E3462C8, type metadata accessor for SecureCloudPingResponseProtobuf);
    sub_23E5C8DB0();
    result = sub_23E56121C(a1, a2);
    if (!v3)
    {
      sub_23E5747C8(v15, v13, type metadata accessor for SecureCloudPingResponseProtobuf);
      v18 = &v13[*(v9 + 20)];
      if (*(v18 + 1))
      {
        v19 = *v18;
        v20 = *(v18 + 1);
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      v21 = &v13[*(v9 + 24)];
      v23 = *v21;
      v22 = *(v21 + 1);

      result = sub_23E574830(v13, type metadata accessor for SecureCloudPingResponseProtobuf);
      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = 0xE000000000000000;
      *a3 = v19;
      a3[1] = v20;
      if (v22)
      {
        v25 = v22;
      }

      a3[2] = v24;
      a3[3] = v25;
    }
  }

  return result;
}

uint64_t sub_23E573190@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_23E5C8C20();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SecureCloudWithdrawRequest();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23E5C8CF0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v22 = 3;
    return swift_willThrow();
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_23E561880(a1, a2);
    sub_23E5C8CE0();
    sub_23E574780(&qword_27E3462E8, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
    v24 = v40;
    sub_23E5C8DB0();
    if (v24)
    {
      return sub_23E56121C(a1, a2);
    }

    else
    {
      sub_23E574718(v21, v19, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
      v25 = &v19[*(v15 + 20)];
      v26 = *v25;
      v25[8];
      sub_23E5C8BD0();
      sub_23E56121C(a1, a2);
      sub_23E574830(v21, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
      v27 = &v19[*(v15 + 24)];
      v29 = *v27;
      v28 = *(v27 + 1);

      sub_23E574830(v19, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
      if (v28)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (!v28)
      {
        v28 = 0xE000000000000000;
      }

      (*(v34 + 32))(v12, v8, v35);
      v31 = &v12[*(v9 + 20)];
      *v31 = v30;
      *(v31 + 1) = v28;
      v32 = v36;
      sub_23E5747C8(v12, v36, type metadata accessor for SecureCloudWithdrawRequest);
      return (*(v33 + 56))(v32, 0, 1, v9);
    }
  }
}

uint64_t sub_23E573568@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for SecureCloudRepairMessage();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E5C8CF0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v19 = 3;
    return swift_willThrow();
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_23E561880(a1, a2);
    sub_23E5C8CE0();
    sub_23E574780(&qword_27E3462F8, type metadata accessor for SecureCloudRepairMessageProtobuf);
    sub_23E5C8DB0();
    if (v3)
    {
      return sub_23E56121C(a1, a2);
    }

    else
    {
      sub_23E574718(v18, v16, type metadata accessor for SecureCloudRepairMessageProtobuf);
      SecureCloudRepairMessage.init(_:)(v16, v9);
      sub_23E574830(v18, type metadata accessor for SecureCloudRepairMessageProtobuf);
      sub_23E56121C(a1, a2);
      v21 = v27;
      sub_23E5747C8(v9, v27, type metadata accessor for SecureCloudRepairMessage);
      return (*(v23 + 56))(v21, 0, 1, v6);
    }
  }
}

uint64_t TransportProtobufSerializable.init(activitySharingTransportData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a1;
  v29 = a5;
  v28 = *(a3 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E5C8CF0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = v27 - v19;
  if (a2 >> 60 == 15)
  {
    sub_23E56D8C8();
    swift_allocError();
    *v21 = 3;
    return swift_willThrow();
  }

  else
  {
    v27[0] = v18;
    v27[1] = v5;
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_23E561880(v35, a2);
    swift_getAssociatedConformanceWitness();
    sub_23E5C8CE0();
    v23 = v31;
    sub_23E5C8DB0();
    if (v23)
    {
      return sub_23E56121C(v35, a2);
    }

    else
    {
      v24 = v27[0];
      (*(v27[0] + 16))(v17, v20, AssociatedTypeWitness);
      (*(a4 + 40))(v17, a3, a4);
      (*(v24 + 8))(v20, AssociatedTypeWitness);
      sub_23E56121C(v35, a2);
      v26 = v28;
      v25 = v29;
      (*(v28 + 32))(v29, v30, a3);
      return (*(v26 + 56))(v25, 0, 1, a3);
    }
  }
}

uint64_t sub_23E573BCC(uint64_t a1)
{
  v4 = type metadata accessor for SecureCloudInviteRequestProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E574780(&qword_27E346330, type metadata accessor for SecureCloudInviteRequest);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_23E574780(&qword_27E346230, type metadata accessor for SecureCloudInviteRequestProtobuf);
    v1 = sub_23E5C8DC0();
    sub_23E574830(v7, type metadata accessor for SecureCloudInviteRequestProtobuf);
  }

  return v1;
}

uint64_t sub_23E573D4C(uint64_t a1)
{
  v4 = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E574780(&qword_27E346328, type metadata accessor for SecureCloudUpgradeMessage);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_23E574780(&qword_27E346278, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    v1 = sub_23E5C8DC0();
    sub_23E574830(v7, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  }

  return v1;
}

uint64_t sub_23E573ECC(uint64_t a1)
{
  v4 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E574780(&qword_27E346320, type metadata accessor for SecureCloudInviteResponse);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_23E574780(&qword_27E3462A8, type metadata accessor for SecureCloudInviteResponseProtobuf);
    v1 = sub_23E5C8DC0();
    sub_23E574830(v7, type metadata accessor for SecureCloudInviteResponseProtobuf);
  }

  return v1;
}

uint64_t *sub_23E57404C(uint64_t a1)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v8 = *(v1 + 3);
  v14 = *(v1 + 1);
  v15 = v8;
  v9 = sub_23E5746C4();
  v10 = &v13;
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_23E574780(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    v10 = sub_23E5C8DC0();
    sub_23E574830(v7, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  }

  return v10;
}

__int128 *sub_23E5741B8(uint64_t a1)
{
  v4 = type metadata accessor for SecureCloudPingResponseProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v13 = *v1;
  v14 = v8;
  v15 = v9;
  v10 = sub_23E574670();
  v11 = &v13;
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_23E574780(&qword_27E3462C8, type metadata accessor for SecureCloudPingResponseProtobuf);
    v11 = sub_23E5C8DC0();
    sub_23E574830(v7, type metadata accessor for SecureCloudPingResponseProtobuf);
  }

  return v11;
}

uint64_t sub_23E574320(uint64_t a1)
{
  v4 = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E574780(&qword_27E346308, type metadata accessor for SecureCloudWithdrawRequest);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_23E574780(&qword_27E3462E8, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
    v1 = sub_23E5C8DC0();
    sub_23E574830(v7, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
  }

  return v1;
}

uint64_t sub_23E5744F0(uint64_t a1)
{
  v4 = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E574780(&qword_27E346300, type metadata accessor for SecureCloudRepairMessage);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_23E574780(&qword_27E3462F8, type metadata accessor for SecureCloudRepairMessageProtobuf);
    v1 = sub_23E5C8DC0();
    sub_23E574830(v7, type metadata accessor for SecureCloudRepairMessageProtobuf);
  }

  return v1;
}

unint64_t sub_23E574670()
{
  result = qword_27E346310;
  if (!qword_27E346310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346310);
  }

  return result;
}

unint64_t sub_23E5746C4()
{
  result = qword_27E346318;
  if (!qword_27E346318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346318);
  }

  return result;
}

uint64_t sub_23E574718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E574780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E5747C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E574830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E574890()
{
  result = qword_27E346338;
  if (!qword_27E346338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346338);
  }

  return result;
}

uint64_t TransportPayload.serializedPayload.getter()
{
  v1 = *(v0 + 8);
  sub_23E561880(v1, *(v0 + 16));
  return v1;
}

uint64_t TransportPayload.init(transportItem:serializedPayload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E57495C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23E5749B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t TestClient.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCClient();
  swift_allocObject();
  result = XPCClient.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for XPCClient;
  *a1 = result;
  return result;
}

uint64_t sub_23E574AA8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E574BCC;

  return v8(v2, v3);
}

uint64_t sub_23E574BCC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E574CE0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E574BCC;

  return v8(1001, v2, v3);
}

uint64_t TestClient.submit(input:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23E574E28, 0, 0);
}

uint64_t sub_23E574E28()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  v5 = *(v4 + 32);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_23E574F78;
  v8 = MEMORY[0x277D83B88];

  return (v10)(1004, v0 + 16, v8, &protocol witness table for Int, v3, v4);
}

uint64_t sub_23E574F78()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E576448, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t TestClient.submitOptional(input:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  return MEMORY[0x2822009F8](sub_23E5750D0, 0, 0);
}

uint64_t sub_23E5750D0()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 16) = v3;
  *(v0 + 24) = v1 & 1;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_23E575230;
  v9 = MEMORY[0x277D83B88];

  return (v11)(1005, v0 + 16, v9, &protocol witness table for Int, v4, v5);
}

uint64_t sub_23E575230()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E575364, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23E57539C()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_23E5754DC;
  v7 = MEMORY[0x277D837D0];

  return (v9)(v0 + 16, 1002, v7, &protocol witness table for String, v2, v3);
}

uint64_t sub_23E5754DC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23E57560C;
  }

  else
  {
    v3 = sub_23E5755F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E575644()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 40);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_23E575784;
  v7 = MEMORY[0x277D837D0];

  return (v9)(v0 + 16, 1003, v7, &protocol witness table for String, v2, v3);
}

uint64_t sub_23E575784()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23E57644C;
  }

  else
  {
    v3 = sub_23E576444;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t TestClient.subtractOne(from:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_23E5758B8, 0, 0);
}

void sub_23E5758B8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  v4 = *(v3 + 64);
  v8 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_23E575A20;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E575A20()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_23E575B50;
  }

  else
  {
    v3 = sub_23E575B34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t TestClient.subtractOneOptionalInput(from:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  return MEMORY[0x2822009F8](sub_23E575B8C, 0, 0);
}

void sub_23E575B8C()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  *(v0 + 16) = v3;
  *(v0 + 24) = v1 & 1;
  v5 = *(v4 + 64);
  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_23E575D00;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E575D00()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_23E576438;
  }

  else
  {
    v3 = sub_23E576450;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t TestClient.subtractOneOptionalOutput(from:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_23E575E34, 0, 0);
}

void sub_23E575E34()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  v4 = *(v3 + 56);
  v8 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_23E575F9C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E575F9C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_23E5760D0;
  }

  else
  {
    v3 = sub_23E5760B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t TestClient.subtractOneOptionalInputAndOutput(from:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  return MEMORY[0x2822009F8](sub_23E57610C, 0, 0);
}

void sub_23E57610C()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  *(v0 + 32) = v3;
  *(v0 + 40) = v1 & 1;
  v5 = *(v4 + 56);
  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_23E576280;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E576280()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_23E57643C;
  }

  else
  {
    v3 = sub_23E576434;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}