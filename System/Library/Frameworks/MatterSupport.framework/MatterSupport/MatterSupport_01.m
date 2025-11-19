unint64_t sub_23983AC4C()
{
  result = qword_27DF7C9D0;
  if (!qword_27DF7C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9D0);
  }

  return result;
}

unint64_t sub_23983ACA4()
{
  result = qword_27DF7C9D8;
  if (!qword_27DF7C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9D8);
  }

  return result;
}

uint64_t sub_23983ACF8()
{
  v0 = sub_239856ED4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t MatterAddDeviceRequest.Home.init(displayName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MatterAddDeviceRequest.Home.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MatterAddDeviceRequest.Home.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static MatterAddDeviceRequest.Home.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_239857054();
  }
}

uint64_t sub_23983AE04(uint64_t a1)
{
  v2 = sub_23983AFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23983AE40(uint64_t a1)
{
  v2 = sub_23983AFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.Home.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9E0, &qword_23985C3A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23983AFB8();
  sub_239857144();
  sub_239856FB4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23983AFB8()
{
  result = qword_27DF7C9E8;
  if (!qword_27DF7C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9E8);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.Home.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_239856C64();
}

uint64_t MatterAddDeviceRequest.Home.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_239857094();
  sub_239856C64();
  return sub_2398570E4();
}

uint64_t MatterAddDeviceRequest.Home.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9F0, &qword_23985C3A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23983AFB8();
  sub_239857134();
  if (!v2)
  {
    v11 = sub_239856F14();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23983B1D8()
{
  result = qword_27DF7C9F8;
  if (!qword_27DF7C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9F8);
  }

  return result;
}

uint64_t sub_23983B244(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9E0, &qword_23985C3A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23983AFB8();
  sub_239857144();
  sub_239856FB4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23983B3A4()
{
  result = qword_27DF7CA00;
  if (!qword_27DF7CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CA00);
  }

  return result;
}

unint64_t sub_23983B3FC()
{
  result = qword_27DF7CA08;
  if (!qword_27DF7CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CA08);
  }

  return result;
}

unint64_t sub_23983B454()
{
  result = qword_27DF7CA10;
  if (!qword_27DF7CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CA10);
  }

  return result;
}

id MatterAddDeviceExtensionRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MatterAddDeviceExtensionRequestHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAddDeviceExtensionRequestHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MatterAddDeviceExtensionRequestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAddDeviceExtensionRequestHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.validateDeviceCredential(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23982F208;

  return v8(a1);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.selectWiFiNetwork(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23982F208;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.selectThreadNetwork(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23982F208;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.commissionDevice(in:onboardingPayload:commissioningID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x68);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23982EDE8;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.rooms(in:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23983BF90;

  return v8(a1);
}

uint64_t sub_23983BF90(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.configureDevice(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x78);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23982EDE8;

  return v12(a1, a2, a3);
}

uint64_t sub_23983C1E4(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  sub_23982A730(a1, v9);
  type metadata accessor for MatterAddDeviceExtensionRequestHandler();
  if (swift_dynamicCast())
  {
    *&v1[OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler] = v8;
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v4;
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_239856E14();
    MEMORY[0x23EE78C90](0xD000000000000054, 0x800000023985D530);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_239857044();
    MEMORY[0x23EE78C90](10272, 0xE200000000000000);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v6 = sub_239857174();
    MEMORY[0x23EE78C90](v6);

    MEMORY[0x23EE78C90](41, 0xE100000000000000);
    result = sub_239856EB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_23983C3C0(void *a1)
{
  v2 = v1;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v4 = sub_239856B34();
  __swift_project_value_buffer(v4, qword_27DF82E80);
  v5 = a1;
  v6 = sub_239856B14();
  v7 = sub_239856D34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_239824000, v6, v7, "Accepting XPC connection: %@", v8, 0xCu);
    sub_23982F038(v9, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v9, -1, -1);
    MEMORY[0x23EE79A40](v8, -1, -1);
  }

  v11 = [objc_opt_self() mts_deviceSetupExtensionInterface];
  [v5 setExportedInterface_];

  [v5 setExportedObject_];
  [v5 activate];
  return 1;
}

uint64_t sub_23983C5B4(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_23983C5D4, 0, 0);
}

char *sub_23983C5D4()
{
  v42 = v0;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_239856B34();
  __swift_project_value_buffer(v2, qword_27DF82E80);

  v3 = sub_239856B14();
  v4 = sub_239856D34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41 = v7;
    *v6 = 136315138;
    v8 = sub_23982EAE8(0, &qword_27DF7CB20, off_278AA14F8);
    v9 = MEMORY[0x23EE78CD0](v5, v8);
    v11 = sub_2398407F4(v9, v10, &v41);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_239824000, v3, v4, "Selecting WiFi network from WiFi scan results: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EE79A40](v7, -1, -1);
    MEMORY[0x23EE79A40](v6, -1, -1);
  }

  v12 = v0[6];
  v13 = *(v0[7] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v35 = v0[6];
    }

    v14 = sub_239856EC4();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_239841154(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v38 = v0;
    v39 = v12 & 0xC000000000000001;
    v36 = v13;
    v37 = v0[6] + 32;
    v15 = v41;
    v18 = v14;
    do
    {
      if (v39)
      {
        v19 = MEMORY[0x23EE78E40](v17, v38[6]);
      }

      else
      {
        v19 = *(v37 + 8 * v17);
      }

      v20 = v19;
      v21 = [v19 ssid];
      v22 = sub_239856AB4();
      v24 = v23;

      v25 = [v20 rssi];
      v26 = sub_239857074();

      v27 = [v20 security];
      v28 = [v20 band];

      v41 = v15;
      v30 = *(v15 + 16);
      v29 = *(v15 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_239841154((v29 > 1), v30 + 1, 1);
        v15 = v41;
      }

      ++v17;
      *(v15 + 16) = v30 + 1;
      v31 = v15 + 24 * v30;
      *(v31 + 32) = v22;
      *(v31 + 40) = v24;
      *(v31 + 48) = v26;
      *(v31 + 49) = v27;
      *(v31 + 50) = v28;
    }

    while (v18 != v17);
    v0 = v38;
    v13 = v36;
  }

  v0[8] = v15;
  v32 = *((*MEMORY[0x277D85000] & *v13) + 0x58);
  v40 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  v0[9] = v34;
  *v34 = v0;
  v34[1] = sub_23983C9FC;

  return (v40)(v0 + 2, v15);
}

uint64_t sub_23983C9FC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23983CC54;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_23983CB18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23983CB18()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  if (v2 >> 60 == 15)
  {
    sub_239828288(v0[2], v0[3], v0[4], v0[5]);
    v5 = 0;
  }

  else
  {
    v6 = objc_allocWithZone(MTSWiFiNetworkAssociation);
    sub_239828190(v1, v2, v4, v3);
    v7 = sub_239856AA4();
    v8 = sub_239856AA4();
    v9 = [v6 initWithSSID:v7 credentials:v8];
    sub_239828288(v1, v2, v4, v3);
    sub_2398282D8(v1, v2);
    sub_2398282D8(v4, v3);

    v5 = v9;
  }

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_23983CC54()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_23983CE40(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_23982EAE8(0, &qword_27DF7CB20, off_278AA14F8);
  v5 = sub_239856CA4();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23983CF28;

  return sub_23983C5B4(v5);
}

uint64_t sub_23983CF28(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_239856A84();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_23983D0E4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23983D104, 0, 0);
}

char *sub_23983D104()
{
  v34 = v0;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_239856B34();
  __swift_project_value_buffer(v2, qword_27DF82E80);

  v3 = sub_239856B14();
  v4 = sub_239856D34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v32[0] = v7;
    *v6 = 136315138;
    v8 = sub_23982EAE8(0, &qword_27DF7CB10, off_278AA14E8);
    v9 = MEMORY[0x23EE78CD0](v5, v8);
    v11 = sub_2398407F4(v9, v10, v32);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_239824000, v3, v4, "Selecting Thread network from Thread scan results: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EE79A40](v7, -1, -1);
    MEMORY[0x23EE79A40](v6, -1, -1);
  }

  v12 = v0[4];
  v13 = *(v0[5] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v29 = v0[4];
    }

    v14 = sub_239856EC4();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_239841174(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v15 = v31;
    v18 = v0[4] + 32;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x23EE78E40](v17, v0[4]);
      }

      else
      {
        v19 = *(v18 + 8 * v17);
      }

      sub_23982FDD0(v19, v32);
      v21 = *(v31 + 16);
      v20 = *(v31 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_239841174((v20 > 1), v21 + 1, 1);
      }

      ++v17;
      *(v31 + 16) = v21 + 1;
      v22 = (v31 + (v21 << 6));
      v23 = v32[0];
      v24 = v32[1];
      v25 = v33[0];
      *(v22 + 75) = *(v33 + 11);
      v22[3] = v24;
      v22[4] = v25;
      v22[2] = v23;
    }

    while (v14 != v17);
  }

  v0[6] = v15;
  v26 = *((*MEMORY[0x277D85000] & *v13) + 0x60);
  v30 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v0[7] = v28;
  *v28 = v0;
  v28[1] = sub_23983D498;

  return (v30)(v0 + 2, v15);
}

uint64_t sub_23983D498()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_23983D660;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_23983D5B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23983D5B4()
{
  if (*(v0 + 24))
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = objc_allocWithZone(MTSThreadNetworkAssociation);
    v4 = sub_239857114();
    v5 = [v3 initWithExtendedPANID_];

    v1 = v5;
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_23983D660()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_23983D84C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_23982EAE8(0, &qword_27DF7CB10, off_278AA14E8);
  v5 = sub_239856CA4();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2398417DC;

  return sub_23983D0E4(v5);
}

uint64_t sub_23983D934(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_23983D954, 0, 0);
}

uint64_t sub_23983D954()
{
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_239856B34();
  __swift_project_value_buffer(v2, qword_27DF82E80);
  v3 = v1;
  v4 = sub_239856B14();
  v5 = sub_239856D34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_239824000, v4, v5, "Validating device credential: %@", v7, 0xCu);
    sub_23982F038(v8, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v8, -1, -1);
    MEMORY[0x23EE79A40](v7, -1, -1);
  }

  v10 = v0[8];
  v11 = v0[9];

  v12 = *(v11 + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  v13 = [v10 certificationDeclaration];
  v14 = sub_239856AB4();
  v16 = v15;

  v17 = [v10 deviceAttestationCertificate];
  v18 = sub_239856AB4();
  v20 = v19;

  v21 = [v10 productAttestationIntermediateCertificate];
  v22 = sub_239856AB4();
  v24 = v23;

  v0[2] = v14;
  v0[3] = v16;
  v0[4] = v18;
  v0[5] = v20;
  v0[6] = v22;
  v0[7] = v24;
  v25 = *((*MEMORY[0x277D85000] & *v12) + 0x50);
  v29 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v0[10] = v27;
  *v27 = v0;
  v27[1] = sub_23983DC54;

  return v29(v0 + 2);
}

uint64_t sub_23983DC54()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  v4 = v3[4];
  v5 = v3[5];
  v7 = v3[6];
  v6 = v3[7];
  sub_2398282D8(v3[2], v3[3]);
  sub_2398282D8(v4, v5);
  sub_2398282D8(v7, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23983DDC8, 0, 0);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_23983DF68(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_23983E02C;

  return sub_23983D934(v6);
}

uint64_t sub_23983E02C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_239856A84();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_23983E1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_239856AF4();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23983E290, 0, 0);
}

uint64_t sub_23983E290()
{
  v41 = v0;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = sub_239856B34();
  __swift_project_value_buffer(v7, qword_27DF82E80);
  (*(v2 + 16))(v1, v4, v3);
  v8 = v6;

  v9 = sub_239856B14();
  v10 = sub_239856D34();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  v38 = v8;
  if (v11)
  {
    v35 = v0[5];
    v36 = v0[6];
    v15 = v0[4];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v16 = 138412802;
    *(v16 + 4) = v8;
    *v17 = v15;
    *(v16 + 12) = 2080;
    v18 = v8;
    *(v16 + 14) = sub_2398407F4(v35, v36, &v40);
    *(v16 + 22) = 2080;
    sub_239840F54();
    v19 = sub_239857034();
    v21 = v20;
    (*(v13 + 8))(v12, v14);
    v22 = sub_2398407F4(v19, v21, &v40);

    *(v16 + 24) = v22;
    _os_log_impl(&dword_239824000, v9, v10, "Pairing device in home: %@, onboarding payload: %s, uuid: %s", v16, 0x20u);
    sub_23982F038(v17, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EE79A40](v37, -1, -1);
    MEMORY[0x23EE79A40](v16, -1, -1);

    if (v0[4])
    {
LABEL_5:
      v23 = [v38 name];
      v24 = sub_239856C34();
      v26 = v25;

      goto LABEL_8;
    }
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    if (v0[4])
    {
      goto LABEL_5;
    }
  }

  v24 = 0;
  v26 = 0;
LABEL_8:
  v0[12] = v26;
  v27 = *(v0[8] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  v0[2] = v24;
  v0[3] = v26;
  v28 = *((*MEMORY[0x277D85000] & *v27) + 0x68);
  v39 = v28 + *v28;
  v29 = v28[1];
  v30 = swift_task_alloc();
  v0[13] = v30;
  *v30 = v0;
  v30[1] = sub_23983E670;
  v31 = v0[6];
  v32 = v0[7];
  v33 = v0[5];

  return (v39)(v0 + 2, v33, v31, v32);
}

uint64_t sub_23983E670()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23983E7B8, 0, 0);
  }

  else
  {
    v5 = v3[11];
    v4 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23983E7B8()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_23983E9C8(void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v9 = sub_239856AF4();
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[6] = v12;
  v5[7] = _Block_copy(a4);
  v13 = sub_239856C34();
  v15 = v14;
  v5[8] = v14;
  sub_239856AE4();
  v16 = a1;
  a5;
  v17 = swift_task_alloc();
  v5[9] = v17;
  *v17 = v5;
  v17[1] = sub_23983EB2C;

  return sub_23983E1C8(a1, v13, v15, v12);
}

uint64_t sub_23983EB2C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 72);
  v18 = *(*v1 + 64);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 16);
  v11 = *v1;

  (*(v7 + 8))(v6, v8);

  v12 = *(v3 + 56);
  if (v2)
  {
    v13 = sub_239856A84();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 56), 0);
  }

  v15 = v4 + 48;
  v14 = *(v4 + 48);
  _Block_release(*(v15 + 8));

  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_23983ED58(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23983ED78, 0, 0);
}

uint64_t sub_23983ED78()
{
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_239856B34();
  __swift_project_value_buffer(v2, qword_27DF82E80);
  v3 = v1;
  v4 = sub_239856B14();
  v5 = sub_239856D34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v3;
    *v8 = v6;
    v9 = v3;
    _os_log_impl(&dword_239824000, v4, v5, "Fetching rooms in home: %@", v7, 0xCu);
    sub_23982F038(v8, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v8, -1, -1);
    MEMORY[0x23EE79A40](v7, -1, -1);
  }

  v10 = v0[4];

  if (v10)
  {
    v11 = [v3 name];
    v12 = sub_239856C34();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[6] = v14;
  v15 = *(v0[5] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  v0[2] = v12;
  v0[3] = v14;
  v16 = *((*MEMORY[0x277D85000] & *v15) + 0x70);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_23983F028;

  return v20(v0 + 2);
}

uint64_t sub_23983F028(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_23983F148, 0, 0);
}

uint64_t sub_23983F148()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_239856E84();
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = objc_allocWithZone(MTSDeviceSetupRoom);

      v7 = sub_239856C24();
      [v6 initWithName_];

      sub_239856E64();
      v8 = *(v14 + 16);
      sub_239856E94();
      sub_239856EA4();
      sub_239856E74();
      v3 += 2;
      --v2;
    }

    while (v2);
    v9 = *(v0 + 64);

    v10 = v14;
  }

  else
  {
    v11 = *(v0 + 64);

    v10 = MEMORY[0x277D84F90];
  }

  v12 = *(v0 + 8);

  return v12(v10);
}

uint64_t sub_23983F41C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_23983F4DC;

  return sub_23983ED58(a1);
}

uint64_t sub_23983F4DC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_239856A84();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_23982EAE8(0, &qword_27DF7CB00, off_278AA14C0);
    v11 = sub_239856C94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_23983F698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_23983F6BC, 0, 0);
}

uint64_t sub_23983F6BC()
{
  v27 = v0;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_239856B34();
  __swift_project_value_buffer(v3, qword_27DF82E80);
  v4 = v1;

  v5 = sub_239856B14();
  v6 = sub_239856D34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_2398407F4(v9, v7, &v26);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v4;
    *v11 = v8;
    v13 = v4;
    _os_log_impl(&dword_239824000, v5, v6, "Configuring device with name: %s, room: %@", v10, 0x16u);
    sub_23982F038(v11, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23EE79A40](v12, -1, -1);
    MEMORY[0x23EE79A40](v10, -1, -1);
  }

  if (v0[6])
  {
    v14 = [v4 name];
    v15 = sub_239856C34();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v0[8] = v17;
  v18 = *(v0[7] + OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler);
  v0[2] = v15;
  v0[3] = v17;
  v19 = *((*MEMORY[0x277D85000] & *v18) + 0x78);
  v25 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[9] = v21;
  *v21 = v0;
  v21[1] = sub_23983F9D8;
  v23 = v0[4];
  v22 = v0[5];

  return (v25)(v23, v22, v0 + 2);
}

uint64_t sub_23983F9D8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23983FC7C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_239856C34();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_23983FD68;

  return sub_23983F698(v7, v9, a2);
}

uint64_t sub_23983FD68()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 32);
  if (v2)
  {
    v11 = sub_239856A84();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v12 = *(v9 + 8);

  return v12();
}

id sub_23983FF58()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23983FFC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23982F208;

  return sub_23983FC7C(v2, v3, v5, v4);
}

uint64_t sub_239840084(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23982F208;

  return v7();
}

uint64_t sub_23984016C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23982F208;

  return sub_239840084(v2, v3, v5);
}

uint64_t sub_23984022C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23982EDE8;

  return v8();
}

uint64_t sub_239840314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23982F208;

  return sub_23984022C(a1, v4, v5, v7);
}

uint64_t sub_2398403E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2398406CC(a3, v25 - v11);
  v13 = sub_239856D14();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23982F038(v12, &qword_27DF7C508, &qword_23985C690);
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

  sub_239856D04();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_239856CC4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_239856C54() + 32;
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

    sub_23982F038(a3, &qword_27DF7C508, &qword_23985C690);

    return v23;
  }

LABEL_8:
  sub_23982F038(a3, &qword_27DF7C508, &qword_23985C690);
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

uint64_t sub_2398406CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23984073C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23982F208;

  return sub_23982D5A0(a1, v5);
}

uint64_t sub_2398407F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2398408C0(v11, 0, 0, 1, a1, a2);
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
    sub_23982A730(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2398408C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2398409CC(a5, a6);
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
    result = sub_239856E54();
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

uint64_t sub_2398409CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_239840A18(a1, a2);
  sub_239840B48(&unk_284C446C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_239840A18(uint64_t a1, unint64_t a2)
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

  v6 = sub_239840C34(v5, 0);
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

  result = sub_239856E54();
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
        v10 = sub_239856C84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_239840C34(v10, 0);
        result = sub_239856E04();
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

uint64_t sub_239840B48(uint64_t result)
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

  result = sub_239840CA8(result, v12, 1, v3);
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

void *sub_239840C34(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CAF8, &qword_23985C6F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_239840CA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CAF8, &qword_23985C6F0);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_239840DD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_23983F41C(v2, v3, v4);
}

uint64_t sub_239840E8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23982F208;

  return sub_23983E9C8(v2, v3, v4, v5, v6);
}

unint64_t sub_239840F54()
{
  result = qword_27DF7CB08;
  if (!qword_27DF7CB08)
  {
    sub_239856AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CB08);
  }

  return result;
}

uint64_t sub_239840FAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_23983DF68(v2, v3, v4);
}

uint64_t sub_239841060()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_23983D84C(v2, v3, v4);
}

size_t sub_239841114(size_t a1, int64_t a2, char a3)
{
  result = sub_239841194(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_239841134(char *a1, int64_t a2, char a3)
{
  result = sub_23984136C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_239841154(char *a1, int64_t a2, char a3)
{
  result = sub_239841478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_239841174(char *a1, int64_t a2, char a3)
{
  result = sub_239841594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_239841194(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CB30, &qword_23985C7D0);
  v10 = *(type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_23984136C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CB38, &qword_23985C7D8);
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

char *sub_239841478(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CB28, &qword_23985C7C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_239841594(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CB18, &qword_23985C798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t objectdestroy_38Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2398416E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23982F208;

  return sub_23983CE40(v2, v3, v4);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2398417E0()
{
  v0 = sub_239856B34();
  __swift_allocate_value_buffer(v0, qword_27DF82E80);
  __swift_project_value_buffer(v0, qword_27DF82E80);
  v1 = *MEMORY[0x277D0F1A8];
  sub_239856C34();
  return sub_239856B24();
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

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.certificationDeclaration.getter()
{
  v1 = *v0;
  sub_239826330(*v0, *(v0 + 8));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.certificationDeclaration.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.deviceAttestationCertificate.getter()
{
  v1 = *(v0 + 16);
  sub_239826330(v1, *(v0 + 24));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.deviceAttestationCertificate.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.productAttestationIntermediateCertificate.getter()
{
  v1 = *(v0 + 32);
  sub_239826330(v1, *(v0 + 40));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.productAttestationIntermediateCertificate.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.init(certificationDeclaration:deviceAttestationCertificate:productAttestationIntermediateCertificate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static MatterAddDeviceExtensionRequestHandler.DeviceCredential.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_239827F9C(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_239827F9C(v2, v3, v6, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_239827F9C(v4, v5, v8, v9);
}

unint64_t sub_239841B20()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_239841B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_239842814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_239841BAC(uint64_t a1)
{
  v2 = sub_23984243C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239841BE8(uint64_t a1)
{
  v2 = sub_23984243C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CBA0, &qword_23985C7E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239826330(v8, v9);
  sub_23984243C();
  sub_239857144();
  v23 = v8;
  v24 = v9;
  v25 = 0;
  sub_239828988();
  v13 = v22;
  sub_239856FE4();
  sub_2398282D8(v23, v24);
  if (!v13)
  {
    v15 = v18;
    v14 = v19;
    v23 = v21;
    v24 = v20;
    v25 = 1;
    sub_239826330(v21, v20);
    sub_239856FE4();
    sub_2398282D8(v23, v24);
    v23 = v14;
    v24 = v15;
    v25 = 2;
    sub_239826330(v14, v15);
    sub_239856FE4();
    sub_2398282D8(v23, v24);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_239856AC4();
  sub_239856AC4();

  return sub_239856AC4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_239857094();
  sub_239856AC4();
  sub_239856AC4();
  sub_239856AC4();
  return sub_2398570E4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.DeviceCredential.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7CBB0, &qword_23985C7E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23984243C();
  sub_239857134();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  sub_239828A30();
  sub_239856F44();
  v20 = v22;
  v21 = v23;
  v24 = 1;
  sub_239856F44();
  v18 = v22;
  v19 = v23;
  v24 = 2;
  sub_239856F44();
  (*(v6 + 8))(v9, v5);
  v11 = v22;
  v12 = v23;
  v14 = v20;
  v13 = v21;
  *a2 = v20;
  a2[1] = v13;
  v16 = v18;
  v15 = v19;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v11;
  a2[5] = v12;
  sub_239826330(v14, v13);
  sub_239826330(v16, v15);
  sub_239826330(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_2398282D8(v14, v13);
  sub_2398282D8(v16, v15);
  return sub_2398282D8(v11, v12);
}

uint64_t sub_2398421EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_239857094();
  sub_239856AC4();
  sub_239856AC4();
  sub_239856AC4();
  return sub_2398570E4();
}

uint64_t sub_239842270()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_239856AC4();
  sub_239856AC4();

  return sub_239856AC4();
}

uint64_t sub_2398422DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_239857094();
  sub_239856AC4();
  sub_239856AC4();
  sub_239856AC4();
  return sub_2398570E4();
}

uint64_t sub_23984238C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_239827F9C(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_239827F9C(v2, v3, v6, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_239827F9C(v4, v5, v8, v9);
}

unint64_t sub_23984243C()
{
  result = qword_27DF7CBA8;
  if (!qword_27DF7CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBA8);
  }

  return result;
}

unint64_t sub_239842494()
{
  result = qword_27DF7CBB8;
  if (!qword_27DF7CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBB8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2398424FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_239842550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s16DeviceCredentialV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s16DeviceCredentialV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_239842710()
{
  result = qword_27DF7CBC0;
  if (!qword_27DF7CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBC0);
  }

  return result;
}

unint64_t sub_239842768()
{
  result = qword_27DF7CBC8;
  if (!qword_27DF7CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBC8);
  }

  return result;
}

unint64_t sub_2398427C0()
{
  result = qword_27DF7CBD0;
  if (!qword_27DF7CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CBD0);
  }

  return result;
}

uint64_t sub_239842814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000023985D5B0 == a2 || (sub_239857054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000023985D5D0 == a2 || (sub_239857054() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000029 && 0x800000023985D5F0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_239857054();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_239844BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23985160C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2398541BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_239856024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock((v20 + v22));
  _Unwind_Resume(a1);
}

void sub_2398562E8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_239856370(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}