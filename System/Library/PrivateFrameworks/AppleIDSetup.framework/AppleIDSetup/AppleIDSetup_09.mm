uint64_t sub_24064D50C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for MessageSessionTransport();
  v3 = type metadata accessor for BluetoothBaseState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  swift_storeEnumTagMultiPayload();
  sub_24064F4EC(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24064D610(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for MessageSessionTransport();
  v5 = type metadata accessor for BluetoothBaseState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  *v9 = a1;
  v9[8] = 1;
  swift_storeEnumTagMultiPayload();
  v10 = a1;
  sub_24064F4EC(v9);
  return (*(v6 + 8))(v9, v5);
}

void sub_24064D734(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_24075A084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  aBlock = 0xD000000000000010;
  v12 = 0x8000000240787C90;
  sub_24075A814();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_2405BD674(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
  v7 = sub_240759F54();

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v4 + 80);
  v9[3] = *(v4 + 88);
  v9[4] = v8;
  v15 = sub_240650144;
  v16 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24064E048;
  v14 = &block_descriptor_166;
  v10 = _Block_copy(&aBlock);

  [a1 registerRequestID:v5 options:v7 handler:v10];
  _Block_release(v10);
}

void sub_24064D96C(uint64_t a1, uint64_t a2, void (*a3)(void *, unint64_t, unint64_t))
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v4 = sub_240759AE4();
  __swift_project_value_buffer(v4, qword_27E4B9F78);

  v5 = sub_240759AC4();
  v6 = sub_24075A5D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39[0] = v8;
    *v7 = 136315138;
    v9 = sub_240759F84();
    v11 = sub_2405BBA7C(v9, v10, v39);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_240579000, v5, v6, "Received tag exchange request: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  sub_24075A814();
  if (*(a2 + 16) && (v12 = sub_2405BB338(v39), (v13 & 1) != 0))
  {
    sub_2405BD1CC(*(a2 + 56) + 32 * v12, &v40);
    sub_2405BD160(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1D8, &qword_24076E1B0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v14 = sub_24064E240(1936154996);

        v15 = sub_240759AC4();
        v16 = sub_24075A5D4();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v40 = v18;
          *v17 = 136315394;
          v19 = MEMORY[0x245CC5FF0](1936154996, MEMORY[0x277CC9318]);
          v21 = v20;

          v22 = sub_2405BBA7C(v19, v21, &v40);

          *(v17 + 4) = v22;
          *(v17 + 12) = 1024;
          *(v17 + 14) = v14 & 1;
          _os_log_impl(&dword_240579000, v15, v16, "Evaluated tags: %s with filter and decided: %{BOOL}d", v17, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v18);
          MEMORY[0x245CC76B0](v18, -1, -1);
          MEMORY[0x245CC76B0](v17, -1, -1);
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_240765570;
        v40 = 0xD000000000000010;
        v41 = 0x8000000240787C90;
        sub_24075A814();
        v34 = MEMORY[0x277D839B0];
        *(inited + 96) = MEMORY[0x277D839B0];
        *(inited + 72) = 1;
        v35 = sub_2405BD674(inited);
        swift_setDeallocating();
        sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_240765570;
        v40 = 0x747065636361;
        v41 = 0xE600000000000000;
        sub_24075A814();
        *(v36 + 96) = v34;
        *(v36 + 72) = 1;
        v37 = sub_2405BD674(v36);
        swift_setDeallocating();
        sub_2405B8A50(v36 + 32, &unk_27E4B73D0, &qword_240770790);
        a3(0, v35, v37);

        return;
      }
    }
  }

  else
  {
    sub_2405BD160(v39);
  }

  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_240579000, v23, v24, "Failed to parse tag exchange request", v25, 2u);
    MEMORY[0x245CC76B0](v25, -1, -1);
  }

  sub_2405B8998();
  v26 = swift_allocError();
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_240765570;
  v40 = 0xD000000000000010;
  v41 = 0x8000000240787C90;
  sub_24075A814();
  v29 = MEMORY[0x277D839B0];
  *(v28 + 96) = MEMORY[0x277D839B0];
  *(v28 + 72) = 1;
  v30 = sub_2405BD674(v28);
  swift_setDeallocating();
  sub_2405B8A50(v28 + 32, &unk_27E4B73D0, &qword_240770790);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_240765570;
  v40 = 0x747065636361;
  v41 = 0xE600000000000000;
  sub_24075A814();
  *(v31 + 96) = v29;
  *(v31 + 72) = 0;
  v32 = sub_2405BD674(v31);
  swift_setDeallocating();
  sub_2405B8A50(v31 + 32, &unk_27E4B73D0, &qword_240770790);
  a3(v26, v30, v32);
}

uint64_t sub_24064E048(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    v7 = sub_240759F74();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_240759F74();
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v6(v7, v8, sub_240650150, v10);
}

void sub_24064E15C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = sub_2407595C4();
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    a2 = sub_240759F54();
  }

  if (a3)
  {
    v8 = sub_240759F54();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

uint64_t sub_24064E240(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (a1 + 40);
    v5 = 1;
    while ((v5 & 1) != 0)
    {
      v9 = *(v3 + 152);
      if (v9)
      {
        v6 = *(v4 - 1);
        v7 = *v4;
        v8 = *(v3 + 160);
        sub_2405BB9D4(v6, *v4);
        v5 = v9(v6, v7);
        sub_2405BCD98(v6, v7);
      }

      else
      {
        v5 = 1;
      }

      v4 += 2;
      if (!--v2)
      {
        return v5 & 1;
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_24064E30C()
{
  sub_24075AE64();
  sub_24057C4E4(v2, *v0);
  return sub_24075AED4();
}

uint64_t sub_24064E358()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405CE450;

  return sub_24064A268();
}

id BLEDevice.into()()
{
  v1 = sub_2407597B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FC0, &qword_24076DC78);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  if (v0[1])
  {
    v16 = *v0;

    sub_240759754();

    sub_24064F870(v13, v15);
    sub_2405B044C(v15, v10, &qword_27E4B9FC0, &qword_24076DC78);
    if ((*(v2 + 48))(v10, 1, v1) != 1)
    {
      (*(v2 + 32))(v5, v10, v1);
      v22 = [objc_allocWithZone(MEMORY[0x277D54C48]) init];
      v23 = sub_240759774();
      [v22 setIdentifier_];

      (*(v2 + 8))(v5, v1);
      sub_2405B8A50(v15, &qword_27E4B9FC0, &qword_24076DC78);
      return v22;
    }

    sub_2405B8A50(v15, &qword_27E4B9FC0, &qword_24076DC78);
    sub_2405B8A50(v10, &qword_27E4B9FC0, &qword_24076DC78);
  }

  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v17 = sub_240759AE4();
  __swift_project_value_buffer(v17, qword_27E4B9F78);
  v18 = sub_240759AC4();
  v19 = sub_24075A5E4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_240579000, v18, v19, "Cannot transform BLEDevice: into SFDevice", v20, 2u);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  return 0;
}

BOOL sub_24064E760()
{
  v1 = v0;
  v2 = *(v0 + 16);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  if (v3)
  {

    sub_24064E848();
    v4 = *(v1 + 16);
    MEMORY[0x28223BE20](v5);

    os_unfair_lock_lock((v4 + 24));
    sub_2406514F0((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }

  return v3 != 0;
}

void sub_24064E848()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v4 = v3;
  os_unfair_lock_unlock((v2 + 24));

  v12 = 0;
  v5 = *(v1 + 24);

  os_unfair_lock_lock((v5 + 24));
  sub_2406513C4((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  v6 = *(v1 + 16);

  os_unfair_lock_lock((v6 + 32));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_24065140C;
    *(v10 + 24) = v9;
    v11 = sub_240651448;
  }

  else
  {
    v11 = 0;
  }

  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  os_unfair_lock_unlock((v6 + 32));

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    v12 = v4;
    v11(&v12);
    sub_24058CA60(v11);
LABEL_7:

    return;
  }

  sub_24058CA60(v11);
}

void sub_24064EA4C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  *(v1 + 232) = a1;
  v4 = a1;

  sub_240644E40();
}

uint64_t sub_24064EAA4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for AnyTransportBuilder();
  v6 = type metadata accessor for BluetoothBaseState();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v9, v1 + 30, v6);
  swift_beginAccess();
  (*(v7 + 24))(v1 + 30, a1, v6);
  swift_endAccess();
  sub_240645170(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24064ECCC(void *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_240646C88(a1, a2);
}

void sub_24064EE08(void *a1, int a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_240647960(a1, a2);
}

uint64_t sub_24064EE2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v2 + 42);
  v11[0] = a1;
  v11[1] = a2;
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v6;
  v12 = 0;
  v13 = 1;

  sub_24064EAA4(v11);
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  type metadata accessor for AnyTransportBuilder();
  v9 = type metadata accessor for BluetoothBaseState();
  return (*(*(v9 - 8) + 8))(v11, v9);
}

uint64_t sub_24064EF10()
{
  v1 = *v0;
  sub_24064EA4C(0);
  v6 = 4;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v10, 0, 25);
  v10[25] = 4;
  sub_24064EAA4(&v6);
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for AnyTransportBuilder();
  v4 = type metadata accessor for BluetoothBaseState();
  return (*(*(v4 - 8) + 8))(&v6, v4);
}

void sub_24064EFD0(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);
  v36 = *(v5 - 8);
  v37 = v5;
  v33 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - v6;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v7 = sub_240759AE4();
  __swift_project_value_buffer(v7, qword_27E4B9F78);

  v8 = a2;
  v9 = sub_240759AC4();
  v10 = sub_24075A5D4();

  v11 = os_log_type_enabled(v9, v10);
  v32 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v12 = 136315394;
    v15 = MEMORY[0x245CC5FF0](a1, MEMORY[0x277CC9318]);
    v17 = sub_2405BBA7C(v15, v16, &v38);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    v18 = v8;
    _os_log_impl(&dword_240579000, v9, v10, "Exchanging tags: %s with session: %@", v12, 0x16u);
    sub_2405B8A50(v13, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  v31 = sub_24075A084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
  inited = swift_initStackObject();
  v30 = xmmword_240765570;
  *(inited + 16) = xmmword_240765570;
  v38 = 0xD000000000000010;
  v39 = 0x8000000240787C90;
  sub_24075A814();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_2405BD674(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
  v20 = sub_240759F54();

  v21 = swift_initStackObject();
  *(v21 + 16) = v30;
  v38 = 1936154996;
  v39 = 0xE400000000000000;
  sub_24075A814();
  *(v21 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1D8, &qword_24076E1B0);
  *(v21 + 72) = a1;

  sub_2405BD674(v21);
  swift_setDeallocating();
  sub_2405B8A50(v21 + 32, &unk_27E4B73D0, &qword_240770790);
  v22 = sub_240759F54();

  v23 = v36;
  v24 = v34;
  v25 = v37;
  (*(v36 + 16))(v34, v35, v37);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = swift_allocObject();
  (*(v23 + 32))(v27 + v26, v24, v25);
  v42 = sub_2406501F8;
  v43 = v27;
  v38 = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_240648E68;
  v41 = &block_descriptor_180;
  v28 = _Block_copy(&v38);

  v29 = v31;
  [v32 sendRequestID:v31 options:v20 request:v22 responseHandler:v28];
  _Block_release(v28);
}

uint64_t sub_24064F4EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  type metadata accessor for MessageSessionTransport();
  v6 = type metadata accessor for BluetoothBaseState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  v11 = *(v3 + 160);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v6);
  swift_beginAccess();
  (*(v7 + 24))(v1 + v11, a1, v6);
  swift_endAccess();
  sub_240649CD0(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_24064F674(int a1, int a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_24064AFFC(a1, a2);
}

uint64_t sub_24064F870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FC0, &qword_24076DC78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24064F8E4()
{
  result = qword_27E4B9FC8[0];
  if (!qword_27E4B9FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E4B9FC8);
  }

  return result;
}

uint64_t dispatch thunk of SharingServerBase.activate()()
{
  v2 = *(*v0 + 344);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return v6();
}

uint64_t sub_24064FCD4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for MessageSessionTransport();
  result = type metadata accessor for BluetoothBaseState();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SharingClientBase.activate()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405CE450;

  return v6();
}

uint64_t getEnumTagSinglePayload for AppleIDSetupFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleIDSetupFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2406500F0()
{
  result = qword_27E4BA1D0;
  if (!qword_27E4BA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA1D0);
  }

  return result;
}

void sub_240650144(uint64_t a1, uint64_t a2, void (*a3)(void *, unint64_t, unint64_t))
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  sub_24064D96C(a1, a2, a3);
}

void sub_240650158(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_24064D080(*(v2 + 32), a1, a2);
}

uint64_t sub_240650188(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_240650198(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_240649060(*(v2 + 32), a1, a2);
}

void sub_2406501BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 88);
  sub_24064EFD0(*(v1 + 24), *(v1 + 32), a1);
}

uint64_t sub_2406501F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8) - 8) + 80);

  return sub_240648AA8(a1, a2, a3);
}

uint64_t sub_24065028C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_240648550(a1, v4, v5, v7, v6);
}

uint64_t sub_24065034C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_24064BCD4(a1, v4, v5, v7, v6);
}

uint64_t sub_24065040C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_24064B8F4(a1, v4, v5, v6);
}

uint64_t sub_2406504C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_24064B6EC(a1, v4, v5, v6);
}

uint64_t sub_240650574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_24064B668(a1, v4, v5, v6);
}

uint64_t sub_240650628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_24064B5F0(a1, v4, v5, v6);
}

uint64_t sub_2406506DC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  type metadata accessor for MessageSessionTransport();
  v7 = type metadata accessor for BluetoothBaseState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 2) = 1;
  v11[40] = 0;
  swift_storeEnumTagMultiPayload();

  sub_24064F4EC(v11);
  return (*(v8 + 8))(v11, v7);
}

void sub_24065080C()
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v0 = sub_240759AE4();
  __swift_project_value_buffer(v0, qword_27E4B9F78);
  oslog = sub_240759AC4();
  v1 = sub_24075A5E4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_240579000, oslog, v1, "Received PIN hide but not supported yet", v2, 2u);
    MEMORY[0x245CC76B0](v2, -1, -1);
  }
}

uint64_t sub_2406508F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2405DA4B0;

  return sub_24064B568(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2406509CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 44);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_24064B20C(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_240650A94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_24064C9A0(a1, v4, v5, v6);
}

unint64_t sub_240650B50()
{
  result = qword_27E4B7458;
  if (!qword_27E4B7458)
  {
    sub_2407597B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7458);
  }

  return result;
}

uint64_t objectdestroy_200Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240650BF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_2406474A0(a1, v4, v5, v7, v6);
}

uint64_t sub_240650CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240647338(a1, v4, v5, v6);
}

uint64_t sub_240650D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240647318(a1, v4, v5, v6);
}

uint64_t sub_240650E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_240647298(a1, v4, v5, v7, v6);
}

uint64_t sub_240650ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_240646F3C(a1, v4, v5, v6);
}

uint64_t objectdestroy_182Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240650FE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_240646BA0(a1, v4, v5, v7, v6);
}

uint64_t sub_2406510A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240646B84(a1, v4, v5, v6);
}

uint64_t objectdestroy_220Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2406511A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2405DA4B0;

  return sub_240646A80(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_204Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2406512C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_240648158(a1, v4, v5, v6);
}

uint64_t sub_24065137C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

id sub_2406513C4(id *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_24065140C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_240651448(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_2406515BC()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_240651654()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA208, &unk_24076E300);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  *(v1 + v14) = 1;
  v15 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedContinuation;
  swift_beginAccess();
  sub_240651894(v1 + v15, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_240651904(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_24075A364();
  (*(v10 + 8))(v13, v9);
  (*(v10 + 56))(v6, 1, 1, v9);
  swift_beginAccess();
  sub_24065196C(v6, v1 + v15);
  return swift_endAccess();
}

uint64_t sub_240651894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240651904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24065196C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_240651A24()
{
  v1[5] = v0;
  sub_24075A3A4();
  v1[6] = sub_24075A394();
  v3 = sub_24075A344();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_240651ABC, v3, v2);
}

uint64_t sub_240651ABC()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = v0[6];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[5];
    v0[9] = sub_240652334();
    v7 = *(MEMORY[0x277D857E0] + 4);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_240651BCC;

    return MEMORY[0x282200460]();
  }
}

uint64_t sub_240651BCC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_240651D10, v5, v4);
}

uint64_t sub_240651D10()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240651EE4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_24075A3A4();
  v2[8] = sub_24075A394();
  v4 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_240651F80, v4, v3);
}

uint64_t sub_240651F80()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v0[9] = _Block_copy(v3);
  v5 = v4;
  v0[10] = sub_24075A394();
  v7 = sub_24075A344();
  v0[11] = v7;
  v0[12] = v6;

  return MEMORY[0x2822009F8](sub_24065202C, v7, v6);
}

uint64_t sub_24065202C()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 80);

    v4 = *(v0 + 72);
    v4[2](v4);
    _Block_release(v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 48);
    *(v0 + 104) = sub_240652334();
    v8 = *(MEMORY[0x277D857E0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_240652168;

    return MEMORY[0x282200460]();
  }
}

uint64_t sub_240652168()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2406522AC, v5, v4);
}

uint64_t sub_2406522AC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 72);
  v2[2](v2);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240652334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask;
  if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask);
  }

  else
  {
    v7 = sub_24075A3D4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v6 = sub_240602F08(0, 0, v4, &unk_24076E3B0, v9);
    v10 = *(v0 + v5);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_2406524A8()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
LABEL_4:
    v5 = v0[1];

    return v5();
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  swift_beginAccess();
  if (*(v3 + v4) == 1)
  {

    goto LABEL_4;
  }

  v7 = swift_task_alloc();
  v0[10] = v7;
  *(v7 + 16) = v3;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_240652624;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_240652624()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24065273C, 0, 0);
}

uint64_t sub_24065273C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24065279C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA200, &qword_24076E2F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA208, &unk_24076E300);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedContinuation;
  swift_beginAccess();
  sub_24065196C(v7, a2 + v10);
  return swift_endAccess();
}

id AISFlowTask.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask])
  {
    v1 = *&v0[OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask];

    sub_24075A4A4();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AISFlowTask();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for AISFlowTask()
{
  result = qword_27E4BA220;
  if (!qword_27E4BA220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AISFlowTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISFlowTask.init()()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA208, &unk_24076E300);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_cachedTask] = 0;
  v0[OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AISFlowTask();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t AISFlowTaskInfoProtocol_Internal.complete(after:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_24075A3D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = v2;
  v10[6] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_240602F08(0, 0, v8, &unk_24076E320, v10);
}

uint64_t sub_240652D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_240652D50, 0, 0);
}

uint64_t sub_240652D50()
{
  if ([*(v0 + 144) completed])
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_240652EA8;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA238, &qword_24076E3A0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_240653414;
    *(v0 + 104) = &block_descriptor_7;
    *(v0 + 112) = v4;
    [v3 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_240652EA8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240652F88, 0, 0);
}

uint64_t sub_240652F88()
{
  [*(v0 + 144) complete];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240652FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_240652D30(a1, v4, v5, v7, v8);
}

void sub_2406530C0()
{
  sub_240653304();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AISFlowTask.waitUntilLoaded()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return v6();
}

void sub_240653304()
{
  if (!qword_27E4BA230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BA208, &unk_24076E300);
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4BA230);
    }
  }
}

uint64_t sub_240653368()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240651EE4(v2, v3);
}

uint64_t sub_240653414(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_240653460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_240652488(a1, v4, v5, v6);
}

uint64_t sub_240653534()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2406535D4;

  return sub_240653864();
}

uint64_t sub_2406535D4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2406536D4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_2406537C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240653E30;

  return sub_240653864();
}

uint64_t sub_240653880()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2406539B8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA240, &unk_24076E460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2406536D4;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2406539B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_240653B30;
  }

  else
  {
    v3 = sub_240653AC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240653AC8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240653B30()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t dispatch thunk of FamilyCircleProviderProtocol.fetchFamilyCircle()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24063DDE8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FamilyCircleProvider.fetchFamilyCircle()()
{
  v2 = *(*v0 + 88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24063D29C;

  return v6();
}

id SimpleRepairModelExchange.queue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SimpleRepairModelExchange.init(queue:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t SimpleRepairModelExchange.receiveModelUpdate(_:with:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return v1();
}

uint64_t Message.Metrics.epochsByStage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Message.Metrics.init(sourceSendEpoch:destinationReceiveEpoch:destinationSendEpoch:sourceReceiveEpoch:)@<X0>(uint64_t *a1@<X8>)
{
  v1 = type metadata accessor for Message.Metrics.EpochStage();
  v2 = MEMORY[0x277D84D38];
  swift_getTupleTypeMetadata2();
  v3 = sub_24075A2E4();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_2405D487C(v3, v1, v2, WitnessTable);

  v13 = v5;
  v9 = 0;
  v6 = type metadata accessor for Message.Metrics();
  Message.Metrics.updatingEpoch(for:to:)(&v9, v6, &v10);
  LOBYTE(v13) = 1;
  Message.Metrics.updatingEpoch(for:to:)(&v13, v6, &v11);
  LOBYTE(v13) = 2;
  Message.Metrics.updatingEpoch(for:to:)(&v13, v6, &v12);
  v9 = 3;
  result = Message.Metrics.updatingEpoch(for:to:)(&v9, v6, &v13);
  *a1 = v13;
  return result;
}

uint64_t Message.Metrics.updatingEpoch(for:to:)@<X0>(char *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  *a3 = *v3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for Message.Metrics.EpochStage();
  swift_getWitnessTable();
  sub_240759FA4();
  return sub_240759FE4();
}

uint64_t sub_24065417C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for Message.Metrics.EpochStage();
  swift_getWitnessTable();
  sub_240759FD4();
  return v6;
}

unint64_t sub_240654254(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v6 = *v3;
  v7 = a2();
  if (v8)
  {
    return 0;
  }

  v9 = v7;
  result = a3(a1);
  if (v11)
  {
    return 0;
  }

  if (result >= v9)
  {
    return 1000000000000000 * (result - v9);
  }

  __break(1u);
  return result;
}

uint64_t Message.Metrics.roundtripDuration.getter(uint64_t a1)
{
  v3 = *v1;
  Message.Metrics.onewaySendDuration.getter(a1);
  if (v4)
  {
    return 0;
  }

  Message.Metrics.onewayReceiveDuration.getter(a1);
  if (v5)
  {
    return 0;
  }

  else
  {
    return sub_24075AF94();
  }
}

uint64_t Message.Metrics.updateEpoch(for:to:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v8 = *v4;
  v7 = v5;
  result = Message.Metrics.updatingEpoch(for:to:)(&v7, a4, &v9);
  *v4 = v9;
  return result;
}

uint64_t static Message.Metrics.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for Message.Metrics.EpochStage();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277D84D38];
  v7 = MEMORY[0x277D84D58];

  return MEMORY[0x2821FB928](v2, v3, v4, v6, WitnessTable, v7);
}

uint64_t sub_24065449C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79427368636F7065 && a2 == 0xED00006567617453)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24075ACF4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_240654540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_24065449C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_240654574(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406545C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.Metrics.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v12[0] = *(a2 + 24);
  v12[1] = v4;
  _s14descr285266561O7MetricsV10CodingKeysOMa();
  swift_getWitnessTable();
  v5 = sub_24075AC24();
  v13 = *(v5 - 8);
  v6 = *(v13 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = *v2;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_24075AF74();
  v16 = v9;
  type metadata accessor for Message.Metrics.EpochStage();
  swift_getWitnessTable();
  sub_240759FA4();
  WitnessTable = swift_getWitnessTable();
  v15 = MEMORY[0x277D84D40];
  swift_getWitnessTable();
  sub_24075ABE4();

  return (*(v13 + 8))(v8, v5);
}

uint64_t Message.Metrics.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for Message.Metrics.EpochStage();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277D84D38];
  v10 = MEMORY[0x277D84D48];

  return MEMORY[0x2821FB920](a1, v4, v7, v9, WitnessTable, v10);
}

uint64_t Message.Metrics.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_24075AE64();
  Message.Metrics.hash(into:)(v4, a1);
  return sub_24075AED4();
}

uint64_t Message.Metrics.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  _s14descr285266561O7MetricsV10CodingKeysOMa();
  swift_getWitnessTable();
  v15 = sub_24075AB44();
  v13 = *(v15 - 8);
  v4 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v6 = &v12 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF34();
  if (!v2)
  {
    v9 = v13;
    v8 = v14;
    type metadata accessor for Message.Metrics.EpochStage();
    swift_getWitnessTable();
    sub_240759FA4();
    WitnessTable = swift_getWitnessTable();
    v17 = MEMORY[0x277D84D68];
    swift_getWitnessTable();
    v10 = v15;
    sub_24075AAF4();
    (*(v9 + 8))(v6, v10);
    *v8 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_240654B60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return Message.Metrics.init(from:)(a1, a3);
}

uint64_t sub_240654B98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static Message.Metrics.== infix(_:_:)(a1, a2);
}

uint64_t sub_240654BAC(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  Message.Metrics.hash(into:)(v4, a2);
  return sub_24075AED4();
}

uint64_t sub_240654C04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553656372756F73 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240787E70 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEF646E65536E6F69 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552656372756F73 && a2 == 0xED00006576696563)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_240654D88(unsigned __int8 a1)
{
  v1 = 0x6553656372756F73;
  v2 = 0x74616E6974736564;
  if (a1 != 2)
  {
    v2 = 0x6552656372756F73;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_240654E24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_240654D88(*v1);
}

uint64_t sub_240654E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_240654C04(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_240654E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240654EB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240654F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240654F74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240654FC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24065501C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240655070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406550C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240655118@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_240655164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406551B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.Metrics.EpochStage.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = _s14descr285266561O7MetricsV10EpochStageO23SourceReceiveCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v53 = v7;
  v8 = sub_24075AC24();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v35 - v10;
  v11 = _s14descr285266561O7MetricsV10EpochStageO25DestinationSendCodingKeysOMa();
  v12 = swift_getWitnessTable();
  v48 = v11;
  v46 = v12;
  v47 = sub_24075AC24();
  v45 = *(v47 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v35 - v14;
  v15 = _s14descr285266561O7MetricsV10EpochStageO28DestinationReceiveCodingKeysOMa();
  v16 = swift_getWitnessTable();
  v43 = v15;
  v41 = v16;
  v42 = sub_24075AC24();
  v40 = *(v42 - 8);
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v35 - v18;
  _s14descr285266561O7MetricsV10EpochStageO20SourceSendCodingKeysOMa();
  v37 = swift_getWitnessTable();
  v38 = sub_24075AC24();
  v36 = *(v38 - 8);
  v19 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - v20;
  _s14descr285266561O7MetricsV10EpochStageO10CodingKeysOMa();
  swift_getWitnessTable();
  v54 = sub_24075AC24();
  v21 = *(v54 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v54);
  v24 = &v35 - v23;
  v25 = *v3;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v27 = (v21 + 8);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v57 = 2;
      v30 = v44;
      v31 = v54;
      sub_24075AB54();
      (*(v45 + 8))(v30, v47);
    }

    else
    {
      v58 = 3;
      v34 = v49;
      v31 = v54;
      sub_24075AB54();
      (*(v50 + 8))(v34, v51);
    }

    return (*v27)(v24, v31);
  }

  else
  {
    if (v25)
    {
      v56 = 1;
      v32 = v39;
      v29 = v54;
      sub_24075AB54();
      (*(v40 + 8))(v32, v42);
    }

    else
    {
      v55 = 0;
      v28 = v35;
      v29 = v54;
      sub_24075AB54();
      (*(v36 + 8))(v28, v38);
    }

    return (*v27)(v24, v29);
  }
}

uint64_t Message.Metrics.EpochStage.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t Message.Metrics.EpochStage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v69 = a3;
  v5 = _s14descr285266561O7MetricsV10EpochStageO23SourceReceiveCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v68 = v5;
  v58 = sub_24075AB44();
  v57 = *(v58 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v66 = &v48 - v7;
  v8 = _s14descr285266561O7MetricsV10EpochStageO25DestinationSendCodingKeysOMa();
  v64 = swift_getWitnessTable();
  v65 = v8;
  v56 = sub_24075AB44();
  v55 = *(v56 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v63 = &v48 - v10;
  v11 = _s14descr285266561O7MetricsV10EpochStageO28DestinationReceiveCodingKeysOMa();
  v61 = swift_getWitnessTable();
  v62 = v11;
  v54 = sub_24075AB44();
  v53 = *(v54 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v60 = &v48 - v13;
  v14 = _s14descr285266561O7MetricsV10EpochStageO20SourceSendCodingKeysOMa();
  v59 = swift_getWitnessTable();
  v52 = sub_24075AB44();
  v51 = *(v52 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v17 = &v48 - v16;
  _s14descr285266561O7MetricsV10EpochStageO10CodingKeysOMa();
  swift_getWitnessTable();
  v18 = sub_24075AB44();
  v19 = *(v18 - 8);
  v70 = v18;
  v71 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = a1;
  v25 = a1[3];
  v24 = a1[4];
  v77 = v23;
  __swift_project_boxed_opaque_existential_1(v23, v25);
  v26 = v72;
  sub_24075AF34();
  if (!v26)
  {
    v49 = v17;
    v50 = v14;
    v72 = a2;
    v27 = v70;
    v28 = v22;
    *&v73 = sub_24075AB34();
    sub_24075A334();
    swift_getWitnessTable();
    *&v75 = sub_24075A774();
    *(&v75 + 1) = v29;
    *&v76 = v30;
    *(&v76 + 1) = v31;
    sub_24075A764();
    swift_getWitnessTable();
    sub_24075A5A4();
    v32 = v73;
    if (v73 == 4 || (v48 = v75, v73 = v75, v74 = v76, (sub_24075A5B4() & 1) == 0))
    {
      v36 = v27;
      v37 = sub_24075A8C4();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v39 = type metadata accessor for Message.Metrics.EpochStage();
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v71 + 8))(v28, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32 > 1)
      {
        v42 = v28;
        if (v32 == 2)
        {
          LOBYTE(v73) = 2;
          v43 = v63;
          sub_24075AA54();
          v35 = v69;
          v44 = v27;
          v45 = v71;
          (*(v55 + 8))(v43, v56);
        }

        else
        {
          LOBYTE(v73) = 3;
          v47 = v66;
          sub_24075AA54();
          v35 = v69;
          v44 = v27;
          v45 = v71;
          (*(v57 + 8))(v47, v58);
        }

        (*(v45 + 8))(v42, v44);
        goto LABEL_14;
      }

      v33 = v28;
      if (!v32)
      {
        LOBYTE(v73) = 0;
        v34 = v49;
        sub_24075AA54();
        v35 = v69;
        (*(v51 + 8))(v34, v52);
        (*(v71 + 8))(v33, v27);
LABEL_14:
        swift_unknownObjectRelease();
        *v35 = v32;
        return __swift_destroy_boxed_opaque_existential_1(v77);
      }

      LOBYTE(v73) = 1;
      v46 = v60;
      sub_24075AA54();
      (*(v53 + 8))(v46, v54);
      (*(v71 + 8))(v28, v27);
      swift_unknownObjectRelease();
      *v69 = v32;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_240656068()
{
  sub_24075AE64();
  Message.Metrics.EpochStage.hash(into:)();
  return sub_24075AED4();
}

uint64_t static UInt64.epoch(for:)()
{
  result = sub_240759704();
  v2 = v1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 1.84467441e19)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2406562C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SignInPreflightHelper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SignInPreflightHelper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240656510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2405B044C(a3, v27 - v11, &unk_27E4B9BF0, &qword_240762710);
  v13 = sub_24075A3D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2405B8A50(v12, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24075A344();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24075A104() + 32;
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

uint64_t TransportBuilding.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a1);
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v7 + 32))(boxed_opaque_existential_1, v10, a1);
}

uint64_t AnyTransport.wrappedValue.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24058C9C0(a1, v1);
}

uint64_t AnyTransport.messageSessionTemplate.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AnyTransport.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2406569B8, 0, 0);
}

uint64_t sub_2406569B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v1[3];
  v3 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  *v6 = v0;
  v6[1] = sub_2405D3110;
  v9 = v0[2];
  v10 = v0[3];

  return sub_240656A78(v9, v5, v10, v7, v4, v8, v3);
}

uint64_t sub_240656A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = *(a4 - 8);
  v7[8] = v8;
  v9 = *(v8 + 64) + 15;
  v7[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[11] = v11;
  v12 = *(v11 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240656BBC, 0, 0);
}

uint64_t sub_240656BBC()
{
  v1 = v0[12];
  v2 = v0[10];
  v13 = v0[7];
  (*(v0[8] + 16))(v0[9], v0[4], v0[5]);
  swift_dynamicCast();
  v3 = *(v13 + 32);
  v12 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_240656D20;
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[3];

  return v12(v6, v7, v8, v9);
}

uint64_t sub_240656D20()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_240656EE4;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v4 = sub_240656E4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240656E4C()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[5];
  v6 = v0[2];
  swift_dynamicCast();

  v7 = v0[1];

  return v7();
}

uint64_t sub_240656EE4()
{
  v1 = v0[13];
  v2 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

Swift::Void __swiftcall AnyTransport.invalidate()()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 40))(v1, v2);
}

uint64_t sub_240656FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return AnyTransport.send(_:)(a1, a2, a3);
}

uint64_t Transport.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 32);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t TransportBuilding.buildAny()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v15 - v10;
  result = (*(v6 + 16))(a1, v6);
  if (!v3)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    a3[3] = AssociatedTypeWitness;
    a3[4] = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v8 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
  }

  return result;
}

uint64_t _s12AppleIDSetup12AnyTransportVyACyxGqd__c11MessageTypeQyd__RszAA0D0Rd__lufC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

__n128 AnyTransportBuilder.onReceive(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24058C9C0(v4, v14);
  v9 = v15;
  v10 = v16;
  v11 = __swift_project_boxed_opaque_existential_1(v14, v15);
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_240657380(v11, a1, a2, *(a3 + 16), v9, *(a3 + 24), v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  result = *v4;
  v13 = *(v4 + 16);
  *a4 = *v4;
  *(a4 + 16) = v13;
  *(a4 + 32) = *(v4 + 32);
  return result;
}

uint64_t sub_240657380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17[2] = a2;
  v17[3] = a3;

  v17[0] = a4;
  swift_getFunctionTypeMetadata();
  v15 = *(a7 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17[0] = swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata();
  swift_dynamicCast();
  (*(a7 + 24))(v17[0], v17[1], a5, a7);
}

__n128 AnyTransportBuilder.onInvalidation(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = __swift_project_boxed_opaque_existential_1(v4, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  (*(v13 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_destroy_boxed_opaque_existential_1(v4);
  v14 = *(v9 + 32);
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  __swift_allocate_boxed_opaque_existential_1(v4);
  v14(a1, a2, v8, v9);
  result = *v4;
  v16 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v16;
  *(a3 + 32) = *(v4 + 32);
  return result;
}

uint64_t AnyTransportBuilder.build()(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);
  return sub_2406576F4(v5, *(a1 + 16), v3, *(a1 + 24), v4);
}

uint64_t sub_2406576F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TransportBuilding.buildAny()(a3, a5, v14);
  if (!v5)
  {
    v12 = *(a5 + 8);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for AnyTransport();
    type metadata accessor for AnyTransport();
    return swift_dynamicCast();
  }

  return result;
}

uint64_t CustomTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v11 = *(v3 + 16);
  v9 = *(v3 + 32);
  sub_24058CA60(v7);
  *(a3 + 16) = v11;
  *(a3 + 32) = v9;
  *a3 = a1;
  *(a3 + 8) = a2;
}

uint64_t CustomTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  sub_24058CA60(v9);
  *a3 = v7;
  a3[1] = v8;
  a3[3] = a2;
  a3[4] = v11;
  a3[2] = a1;
}

uint64_t CustomTransport.interface(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);

  v6 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v6;
  *(a2 + 32) = a1;
}

uint64_t CustomTransport.build()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28[-v8 - 8];
  v10 = v2[1];
  v29 = *v2;
  v30 = v10;
  v31 = *(v2 + 4);
  if (v29 && (v11 = v31) != 0)
  {
    v12 = sub_24075A3D4();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v32 = v3;
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;
    v16 = v30;
    *(v13 + 48) = v29;
    *(v13 + 64) = v16;
    *(v13 + 80) = v31;
    v17 = *(*(a1 - 8) + 16);
    v17(v28, &v29, a1);
    v27 = sub_240656510(0, 0, v9, &unk_24076ECD0, v13);
    sub_2405B8A50(v9, &unk_27E4B9BF0, &qword_240762710);
    v18 = *(*v11 + 104);
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    v20 = v30;
    *(v19 + 32) = v29;
    *(v19 + 48) = v20;
    *(v19 + 64) = v31;
    v17(v28, &v29, a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
    sub_24075A374();
    swift_getTupleTypeMetadata2();
    sub_24075A434();
    result = sub_24075A3F4();
    v22 = v31;
    v23 = v30;
    *a2 = v29;
    *(a2 + 16) = v23;
    *(a2 + 32) = v22;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = v27;
  }

  else
  {
    (*(*(a1 - 8) + 8))(&v29, a1);
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    type metadata accessor for CustomTransport.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v26 = 0xD00000000000001DLL;
    v26[1] = 0x8000000240787E90;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_240657D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v8 = sub_24075AEE4();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();
  v11 = sub_24075A374();
  v6[8] = v11;
  v12 = *(v11 - 8);
  v6[9] = v12;
  v13 = *(v12 + 64) + 15;
  v6[10] = swift_task_alloc();
  v14 = *(a5 - 8);
  v6[11] = v14;
  v15 = *(v14 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_getTupleTypeMetadata2();
  v16 = *(*(sub_24075A714() - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v17 = sub_24075A464();
  v6[15] = v17;
  v18 = *(v17 - 8);
  v6[16] = v18;
  v19 = *(v18 + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240658004, 0, 0);
}

uint64_t sub_240658004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4[2] + 32);
  if (v5)
  {
    v6 = v4[17];
    v7 = v4[13];
    v8 = *(*v5 + 96);
    sub_24075A474();
    sub_24075A444();
    v9 = *(MEMORY[0x277D85798] + 4);
    v10 = swift_task_alloc();
    v4[18] = v10;
    *v10 = v4;
    v10[1] = sub_2406580F0;
    v11 = v4[17];
    a1 = v4[14];
    a4 = v4[15];
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822003E8](a1, a2, a3, a4);
}

uint64_t sub_2406580F0()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2406581EC, 0, 0);
}

uint64_t sub_2406581EC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 96);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    v12 = *(v0 + 16);
    v13 = *(v1 + 48);
    v18 = *(v0 + 24);
    (*(*(v0 + 88) + 32))(v8, v2, *(v0 + 24));
    (*(v10 + 32))(v9, v2 + v13, v11);
    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    *(v14 + 16) = v18;
    *(v14 + 32) = v12;
    *(v14 + 40) = v8;
    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_2406583F4;
    v16 = *(v0 + 56);
    v17 = *(v0 + 24);

    return static Result<>.catching<A>(_:)(v16, &unk_24076F150, v14, v17);
  }
}

uint64_t sub_2406583F4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24065850C, 0, 0);
}

uint64_t sub_24065850C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  sub_240658A74(v6, v5);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v9);
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_2406580F0;
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[15];

  return MEMORY[0x2822003E8](v13, 0, 0, v14);
}

uint64_t sub_240658638(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405CE450;

  return sub_240657D94(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_2406586FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a4 - 8);
  v4[6] = v5;
  v6 = *(v5 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406587B4, 0, 0);
}

void sub_2406587B4()
{
  v1 = v0[3];
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
    v8 = (v2 + *v2);
    v4 = v2[1];
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_2406588D4;
    v6 = v0[7];
    v7 = v0[2];

    v8(v7, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2406588D4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_240658A10, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_240658A10()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_240658A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24075AEE4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_24075A354();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_24075A364();
  }
}

uint64_t sub_240658CB0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 56);
    return v1();
  }

  return result;
}

uint64_t CustomTransport.Interface.__allocating_init(receiver:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CustomTransport.Interface.init(receiver:)(a1, a2);
  return v7;
}

uint64_t sub_240658D50(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA978, &qword_24076F118);
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v23 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA980, &qword_24076F120);
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA988, &qword_24076F128);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA970, &qword_24076F110);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  v27 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA958, &qword_24076F0F8);
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v25);
  sub_24075A484();
  (*(v7 + 32))(v2 + *(*v2 + 96), v10, v26);
  sub_2405B044C(v17, v15, &qword_27E4BA988, &qword_24076F128);
  result = (*(v19 + 48))(v15, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v2 + *(*v2 + 104), v15, v18);
    v21 = (v2 + *(*v2 + 112));
    v22 = v24;
    *v21 = v23;
    v21[1] = v22;
    sub_2405B8A50(v17, &qword_27E4BA988, &qword_24076F128);
    return v2;
  }

  return result;
}

uint64_t CustomTransport.Interface.init(receiver:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v29 = *v2;
  v27 = *(v29 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  v26 = sub_24075A404();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v26);
  v24 = &v22 - v5;
  v28 = sub_24075A474();
  v25 = *(v28 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v22 - v7;
  v9 = sub_24075A434();
  v10 = sub_24075A714();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = *(v9 - 8);
  (*(v18 + 56))(&v22 - v16, 1, 1, v9);
  v30 = v27;
  v31 = *(v29 + 88);
  v32 = v17;
  (*(v3 + 104))(v24, *MEMORY[0x277D85778], v26);
  sub_24075A484();
  (*(v25 + 32))(v2 + *(*v2 + 96), v8, v28);
  (*(v11 + 16))(v15, v17, v10);
  result = (*(v18 + 48))(v15, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v2 + *(*v2 + 104), v15, v9);
    v20 = (v2 + *(*v2 + 112));
    v21 = v23;
    *v20 = v22;
    v20[1] = v21;
    (*(v11 + 8))(v17, v10);
    return v2;
  }

  return result;
}

uint64_t sub_2406594B4(uint64_t a1, uint64_t a2)
{
  sub_2405B8A50(a2, &qword_27E4BA988, &qword_24076F128);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA970, &qword_24076F110);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_240659590(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  v4 = sub_24075A434();
  v5 = sub_24075A714();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

uint64_t sub_2406596D0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_240659590(a1, v1[4]);
}

uint64_t sub_2406596DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_240659728, 0, 0);
}

uint64_t sub_240659728()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v1 + 80);
  *v4 = v0;
  v4[1] = sub_240659824;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000013, 0x8000000240787EB0, sub_240659DB8, v2, v5);
}

uint64_t sub_240659824()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_240659960, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_240659960()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2406599C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA958, &qword_24076F0F8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA960, &qword_24076F100);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(*a2 + 104);
  v17 = *(v7 + 56);
  sub_2405B044C(a3, v10, qword_27E4BA650, &qword_24076ED10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA968, &qword_24076F108);
  (*(*(v18 - 8) + 16))(&v10[v17], a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA970, &qword_24076F110);
  sub_24075A414();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_240659B9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18 = a3;
  v19 = a1;
  v3 = *a2;
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v5 = sub_24075A374();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v18 - v8;
  v10 = sub_24075A3E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = *(v3 + 104);
  v16 = *(TupleTypeMetadata2 + 48);
  (*(*(v4 - 8) + 16))(v9, v18, v4);
  (*(*(v5 - 8) + 16))(&v9[v16], v19, v5);
  sub_24075A434();
  sub_24075A414();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_240659DC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_240659DE4, 0, 0);
}

uint64_t sub_240659DE4()
{
  v1 = (v0[4] + *(*v0[4] + 112));
  v2 = *v1;
  v0[5] = v1[1];

  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_240659F04;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6);
}

uint64_t sub_240659F04()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_24065A07C;
  }

  else
  {
    v3 = sub_24065A018;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24065A018()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24065A07C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t CustomTransport.Interface.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  v3 = sub_24075A474();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 104);
  v5 = sub_24075A434();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + *(*v0 + 112) + 8);

  return v0;
}

uint64_t CustomTransport.Interface.__deallocating_deinit()
{
  CustomTransport.Interface.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CustomTransport.Interface<>.init(receiver:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA648, &qword_24076ED00);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_240658D50(&unk_24076ECF8, v4);
}

uint64_t sub_24065A308(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v6 = sub_240759744();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v9 = *(*(type metadata accessor for V1Command(0) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v3[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[7] = v11;
  v12 = *(v11 + 44);
  v16 = (a3 + *a3);
  v13 = a3[1];
  v14 = swift_task_alloc();
  v3[8] = v14;
  *v14 = v3;
  v14[1] = sub_24065A4C0;

  return v16(v10, a2 + v12);
}

uint64_t sub_24065A4C0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_24065A874;
  }

  else
  {
    v3 = sub_24065A5D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24065A5D4()
{
  v1 = v0[2];
  sub_2407597A4();
  v2 = sub_2405BD7B0(MEMORY[0x277D84F90]);
  v3 = sub_2405BB3F4(0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = v3;
  v28 = v2;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_24065B728(v5, v2);

LABEL_4:
    v6 = sub_2405BB3F4(1u);
    if (v7)
    {
      v8 = v6;
      v28 = v2;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v8, v2);
    }

    v9 = sub_2405BB3F4(2u);
    if (v10)
    {
      v11 = v9;
      v28 = v2;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v11, v2);
    }

    v12 = sub_2405BB3F4(3u);
    if (v13)
    {
      v14 = v12;
      v28 = v2;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v14, v2);
    }

    v16 = v0[4];
    v15 = v0[5];
    v5 = v0[3];
    sub_240759724();
    sub_240759704();
    v18 = v17;
    (*(v16 + 8))(v15, v5);
    v19 = v18 * 1000.0;
    if (COERCE__INT64(fabs(v18 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v19 <= -1.0)
    {
      goto LABEL_23;
    }

    if (v19 < 1.84467441e19)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    sub_24065BBDC();
    v2 = v28;
  }

  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[5];
  v23 = v0[2];
  v24 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2405BCB30(v24, 0, isUniquelyReferenced_nonNull_native);

  sub_24065C7E4(v20, v23 + v21[11]);
  *(v23 + v21[9]) = 1;
  *(v23 + v21[10]) = v2;

  v26 = v0[1];

  return v26();
}

uint64_t sub_24065A874()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t CustomTransport.Interface<>.receiveIncoming(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_240759744();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24065A9EC, 0, 0);
}

uint64_t sub_24065A9EC()
{
  v1 = v0[10];
  sub_2407597A4();
  v2 = sub_2405BD7B0(MEMORY[0x277D84F90]);
  v3 = sub_2405BB3F4(0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = v3;
  v32 = v2;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_24065B728(v5, v2);

LABEL_4:
    v6 = sub_2405BB3F4(1u);
    if (v7)
    {
      v8 = v6;
      v32 = v2;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v8, v2);
    }

    v9 = sub_2405BB3F4(2u);
    if (v10)
    {
      v11 = v9;
      v32 = v2;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v11, v2);
    }

    v12 = sub_2405BB3F4(3u);
    if (v13)
    {
      v14 = v12;
      v32 = v2;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v14, v2);
    }

    v16 = v0[6];
    v15 = v0[7];
    v5 = v0[5];
    sub_240759724();
    sub_240759704();
    v18 = v17;
    (*(v16 + 8))(v15, v5);
    v19 = v18 * 1000.0;
    if (COERCE__INT64(fabs(v18 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v19 <= -1.0)
    {
      goto LABEL_23;
    }

    if (v19 < 1.84467441e19)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    sub_24065BBDC();
    v2 = v32;
  }

  v20 = v0[10];
  v21 = v0[8];
  v22 = v0[3];
  v23 = v0[4];
  v24 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2405BCB30(v24, 0, isUniquelyReferenced_nonNull_native);

  sub_24065BDE4(v22, v20 + v21[11]);
  *(v20 + v21[9]) = 1;
  *(v20 + v21[10]) = v2;
  v26 = swift_task_alloc();
  v0[11] = v26;
  *(v26 + 16) = v23;
  *(v26 + 24) = v20;
  v27 = *(MEMORY[0x277D85A40] + 4);
  v28 = swift_task_alloc();
  v0[12] = v28;
  *v28 = v0;
  v28[1] = sub_24065AD04;
  v30 = v0[8];
  v29 = v0[9];

  return MEMORY[0x2822008A0](v29, 0, 0, 0xD000000000000013, 0x8000000240787EB0, sub_24065BE48, v26, v30);
}

uint64_t sub_24065AD04()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_24065AEF8;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_24065AE20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24065AE20()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  sub_2405B8A50(v0[10], qword_27E4BA650, &qword_24076ED10);
  sub_24065BDE4(v1 + *(v3 + 44), v4);
  sub_2405B8A50(v1, qword_27E4BA650, &qword_24076ED10);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24065AEF8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];

  sub_2405B8A50(v2, qword_27E4BA650, &qword_24076ED10);

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t CustomTransport.Activated.base.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_24057B5BC(v2);
  sub_24057B5BC(v4);
}

void *CustomTransport.Activated.messageSessionTemplate.getter()
{
  v0 = sub_24065BD28();
  v1 = v0;
  return v0;
}

uint64_t CustomTransport.Activated.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = *(v3 + 32);
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  *(v4 + 56) = *(v3 + 48);
  return MEMORY[0x2822009F8](sub_24065B0A4, 0, 0);
}

void sub_24065B0A4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 32);
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    type metadata accessor for CustomTransport.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();
    v5 = *(v0 + 8);

    v5();
  }

  else if (*(v0 + 40))
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_2405D3110;
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    sub_240659DC0(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CustomTransport.Activated.invalidate()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  v4 = sub_24075A434();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-1] - v7;
  v9 = v1[1];
  v18 = *v1;
  v19 = v9;
  v10 = v1[2];
  v17[0] = *(v1 + 49);
  *(v17 + 3) = *(v1 + 13);
  v12 = v10;
  if (v10)
  {
    v11 = *(v1 + 7);
    (*(v5 + 16))(v8, v10 + *(*v10 + 104), v4);
    sub_24075A424();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      sub_24075A4A4();
    }

    v13[0] = v18;
    v13[1] = v19;
    v13[2] = v12;
    v14 = 1;
    *v15 = v17[0];
    *&v15[3] = *(v17 + 3);
    v16 = 0;
    (*(*(v2 - 8) + 8))(v13, v2);
  }

  else
  {
    __break(1u);
  }
}

void *sub_24065B3E8()
{
  v0 = sub_24065BD28();
  v1 = v0;
  return v0;
}

uint64_t sub_24065B414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return CustomTransport.Activated.send(_:)(a1, a2, a3);
}

void sub_24065B4C4(uint64_t a1)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  (*(*(a1 - 8) + 16))(&v4, v5, a1);
  CustomTransport.Activated.invalidate()();
}

uint64_t sub_24065B538(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24065C910;

  return v7(a1);
}

uint64_t sub_24065B630(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405C6C3C;

  return v7(a1);
}

uint64_t sub_24065B728(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24075A7B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_24075AE64();
      MEMORY[0x245CC6BA0](v10);
      result = sub_24075AED4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_24065B8BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B73F0, &unk_240762690);
  v2 = *v0;
  v3 = sub_24075A9E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2405BE44C(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_24065BA70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A0, &qword_240762648);
  v2 = *v0;
  v3 = sub_24075A9E4();
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

void *sub_24065BBDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C0, &qword_24076F0F0);
  v2 = *v0;
  v3 = sub_24075A9E4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_24065BD30(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_24065A308(a1, a2, v7);
}

uint64_t sub_24065BDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for V1Command(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24065BE6C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24065BEC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of Transport.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2405DA4B0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_24065C084()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24065C0D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24065C114(uint64_t a1, int a2)
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

uint64_t sub_24065C15C(uint64_t result, int a2, int a3)
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

uint64_t sub_24065C1BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24065C210(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  result = sub_24075A474();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_24075A434();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of CustomTransport.Interface.receiveIncoming(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CustomTransport.Interface.receiveOutgoing(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

uint64_t sub_24065C5D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24065C624(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24065C680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24065C6FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24065C738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24065C788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24065C7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for V1Command(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24065C848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405CE450;

  return sub_2406586FC(a1, v7, v6, v4);
}

uint64_t sub_24065C934(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x4F64696C61766E69;
  }

  if (v3)
  {
    v5 = 0xEE00736E6F697470;
  }

  else
  {
    v5 = 0x8000000240785E70;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x4F64696C61766E69;
  }

  if (*a2)
  {
    v7 = 0x8000000240785E70;
  }

  else
  {
    v7 = 0xEE00736E6F697470;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();
  }

  return v9 & 1;
}

uint64_t sub_24065C9EC()
{
  v1 = *v0;
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_24065CA80()
{
  *v0;
  sub_24075A114();
}

uint64_t sub_24065CB00()
{
  v1 = *v0;
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_24065CB90@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24075AA34();

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

void sub_24065CBF0(unint64_t *a1@<X8>)
{
  v2 = 0x8000000240785E70;
  v3 = 0x4F64696C61766E69;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xEE00736E6F697470;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_24065CC40(uint64_t a1)
{
  v2 = *MEMORY[0x277D185B0];
  *&v14 = sub_24075A0B4();
  *(&v14 + 1) = v3;
  sub_24075A814();
  if (*(a1 + 16) && (v4 = sub_2405BB338(v16), (v5 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v4, &v17);
    sub_2405BD160(v16);
  }

  else
  {
    sub_2405BD160(v16);
    v17 = 0u;
    v18 = 0u;
  }

  v6 = *MEMORY[0x277D18610];
  sub_24075A0B4();
  sub_24075A814();
  if (*(a1 + 16) && (v7 = sub_2405BB338(v16), (v8 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v7, &v14);
    sub_2405BD160(v16);
    v9 = *(&v15 + 1) == 0;
    v10 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_2405BD160(v16);
    v14 = 0u;
    v15 = 0u;
    v9 = 1;
    v10 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      goto LABEL_12;
    }
  }

  if (v9)
  {
    v11 = 1;
LABEL_14:

    sub_24065CE10();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    goto LABEL_15;
  }

LABEL_12:
  if (v10 != 0 && !v9)
  {
    v11 = 0;
    goto LABEL_14;
  }

LABEL_15:
  sub_24065CE64(&v17);
  sub_24065CE64(&v14);
  return a1;
}

uint64_t sub_24065CDE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24065CC40(*v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_24065CE10()
{
  result = qword_27E4BA990;
  if (!qword_27E4BA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA990);
  }

  return result;
}

uint64_t sub_24065CE64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E8, &qword_24076E1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24065CF00()
{
  result = qword_27E4BA998;
  if (!qword_27E4BA998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA998);
  }

  return result;
}

id FamilyRepairModel.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t FamilyRepairModel.familyMemberToken.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FamilyRepairModel.familyMemberDSID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FamilyRepairModel.familyMemberAltDSID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FamilyRepairModel.appProvidedContext.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t FamilyRepairModel.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_24065D0B0(v2, v3, v4);
}

uint64_t sub_24065D0B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24065D0C8();
  }

  return result;
}

uint64_t FamilyRepairModel.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_240604E3C(*(v1 + 80), *(v1 + 88), *(v1 + 96));
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  return result;
}

uint64_t FamilyRepairModel.init(authenticationContext:familyMemberToken:familyMemberDSID:familyMemberAltDSID:appProvidedContext:shouldEnableLocationServices:isFinished:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t *a13)
{
  v19 = *a13;
  v22 = a13[1];
  v21 = *(a13 + 16);
  *a9 = a1;

  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 73) = a12;
  result = sub_240604E3C(0, 0, 255);
  *(a9 + 80) = v19;
  *(a9 + 88) = v22;
  *(a9 + 96) = v21;
  return result;
}

void FamilyRepairModel.Failure.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2407595C4();
  v5 = [v4 domain];
  v6 = sub_24075A0B4();
  v8 = v7;

  v9 = *MEMORY[0x277D080B8];
  if (v6 == sub_24075A0B4() && v8 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_24075ACF4();

    v13 = v12 ^ 1;
  }

  v14 = [v4 description];
  v15 = sub_24075A0B4();
  v17 = v16;

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v13 & 1;
}

uint64_t sub_24065D314()
{
  if (*v0)
  {
    result = 0x6E776F6E6B6E75;
  }

  else
  {
    result = 0x7245796C696D6166;
  }

  *v0;
  return result;
}

uint64_t sub_24065D358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7245796C696D6166 && a2 == 0xEB00000000726F72;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24065D438(uint64_t a1)
{
  v2 = sub_24065EF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24065D474(uint64_t a1)
{
  v2 = sub_24065EF04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24065D4B0(uint64_t a1)
{
  v2 = sub_24065EFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24065D4EC(uint64_t a1)
{
  v2 = sub_24065EFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24065D528(uint64_t a1)
{
  v2 = sub_24065EF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24065D564(uint64_t a1)
{
  v2 = sub_24065EF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyRepairModel.Failure.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9A0, &qword_24076F2F0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9A8, &qword_24076F2F8);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9B0, &qword_24076F300);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24065EF04();
  sub_24075AF74();
  if (v16)
  {
    v30 = 1;
    sub_24065EF58();
    v18 = v24;
    sub_24075AB54();
    v19 = v26;
    sub_24075ABB4();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_24065EFAC();
    sub_24075AB54();
    v20 = v23;
    sub_24075ABB4();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t FamilyRepairModel.Failure.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x245CC6BA0](*(v0 + 16));

  return sub_24075A114();
}

uint64_t FamilyRepairModel.Failure.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v3);
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t FamilyRepairModel.Failure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9D0, &qword_24076F308);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9D8, &qword_24076F310);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9E0, &unk_24076F318);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24065EF04();
  v17 = v39;
  sub_24075AF34();
  if (!v17)
  {
    v39 = v11;
    v18 = sub_24075AB34();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_2405B8AF4();
    v21 = v10;
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v28 = sub_24075A8C4();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v30 = &type metadata for FamilyRepairModel.Failure;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v39 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        v46 = 1;
        sub_24065EF58();
        sub_24075AA54();
        v23 = v38;
        v22 = v39;
        v24 = v35;
        v25 = sub_24075AAC4();
        v27 = v26;
        (*(v37 + 8))(v5, v24);
      }

      else
      {
        v46 = 0;
        sub_24065EFAC();
        v33 = v9;
        sub_24075AA54();
        v23 = v38;
        v22 = v39;
        v25 = sub_24075AAC4();
        v27 = v34;
        (*(v36 + 8))(v33, v6);
      }

      (*(v22 + 8))(v14, v21);
      swift_unknownObjectRelease();
      *v23 = v25;
      *(v23 + 8) = v27;
      *(v23 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_24065DE6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v3);
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_24065DED0()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x245CC6BA0](*(v0 + 16));

  return sub_24075A114();
}

uint64_t sub_24065DF24()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v3);
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_24065DF88()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6873696E69467369;
    if (v1 != 6)
    {
      v5 = 0x726F727265;
    }

    v6 = 0xD00000000000001CLL;
    if (v1 == 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 == 2)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000011;
    if (!*v0)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24065E094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24065FF74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24065E0BC(uint64_t a1)
{
  v2 = sub_24065F3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24065E0F8(uint64_t a1)
{
  v2 = sub_24065F3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyRepairModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9E8, &unk_24076F328);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v30 = *(v1 + 8);
  v31 = v10;
  v12 = *(v1 + 40);
  v28 = *(v1 + 32);
  v29 = v11;
  v13 = *(v1 + 56);
  v26 = *(v1 + 48);
  v27 = v12;
  v14 = *(v1 + 64);
  v24 = v13;
  v25 = v14;
  v35 = *(v1 + 72);
  v15 = *(v1 + 73);
  v16 = *(v1 + 88);
  v20 = *(v1 + 80);
  v21 = v16;
  v22 = *(v1 + 96);
  v23 = v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24065F3EC();
  v18 = v9;
  sub_24075AF74();
  v32 = v9;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_24065F53C(&qword_27E4B69A8);
  sub_24075ABE4();

  if (!v2)
  {
    v32 = v30;
    v33 = v31;
    v36 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9F8, &qword_24076F338);
    sub_24065F440();
    sub_24075ABE4();

    LOBYTE(v32) = 2;
    sub_24075ABB4();
    LOBYTE(v32) = 3;
    sub_24075ABB4();
    LOBYTE(v32) = 4;
    sub_24075ABB4();
    LOBYTE(v32) = 5;
    sub_24075ABC4();
    LOBYTE(v32) = 6;
    sub_24075ABC4();
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v36 = 7;
    sub_24065D0B0(v20, v21, v22);
    sub_24065F4E8();
    sub_24075AB94();
    sub_240604E3C(v32, v33, v34);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FamilyRepairModel.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v13 = *(v0 + 64);
  v14 = *(v0 + 56);
  v15 = *(v0 + 72);
  v16 = *(v0 + 73);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v8 = *(v0 + 96);
  if (*v0)
  {
    sub_24075AE94();
    v9 = v2;
    sub_24075A6E4();

    if (v4)
    {
LABEL_3:
      sub_24075AE94();
      sub_24075A114();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24075AE94();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_24075AE94();
LABEL_6:
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  sub_24075AE94();
  if (v8 == 255)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();
  MEMORY[0x245CC6BA0]((v8 & 1) != 0);

  return sub_24075A114();
}

uint64_t FamilyRepairModel.hashValue.getter()
{
  sub_24075AE64();
  FamilyRepairModel.hash(into:)();
  return sub_24075AED4();
}

uint64_t FamilyRepairModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAA10, &qword_24076F348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24065F3EC();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_240604E3C(0, 0, 255);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    LOBYTE(v33) = 0;
    sub_24065F53C(&qword_27E4B69C0);
    sub_24075AAF4();
    v11 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9F8, &qword_24076F338);
    LOBYTE(v33) = 1;
    sub_24065F58C();
    sub_24075AAF4();
    v12 = v41;
    v29 = v40;

    LOBYTE(v40) = 2;
    v28 = sub_24075AAC4();
    v32 = v13;
    LOBYTE(v40) = 3;
    v27 = sub_24075AAC4();
    v31 = v14;
    LOBYTE(v40) = 4;
    v26 = sub_24075AAC4();
    v30 = v15;
    LOBYTE(v40) = 5;
    v57 = sub_24075AAD4();
    LOBYTE(v40) = 6;
    HIDWORD(v25) = sub_24075AAD4();
    v58 = 7;
    sub_24065F6A0();
    sub_24075AAA4();
    v57 &= 1u;
    v16 = v57;
    HIDWORD(v25) = BYTE4(v25) & 1;
    (*(v6 + 8))(v9, v5);
    v18 = v54;
    v17 = v55;
    v19 = v56;
    sub_240604E3C(0, 0, 255);
    *&v33 = v11;
    *(&v33 + 1) = v29;
    *&v34 = v12;
    *(&v34 + 1) = v28;
    *&v35 = v32;
    *(&v35 + 1) = v27;
    *&v36 = v31;
    *(&v36 + 1) = v26;
    *&v37 = v30;
    BYTE8(v37) = v16;
    v20 = BYTE4(v25);
    BYTE9(v37) = BYTE4(v25);
    *&v38 = v18;
    *(&v38 + 1) = v17;
    v39 = v19;
    *(a2 + 96) = v19;
    v21 = v38;
    *(a2 + 64) = v37;
    *(a2 + 80) = v21;
    v22 = v34;
    *a2 = v33;
    *(a2 + 16) = v22;
    v23 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v23;
    sub_24065F6F4(&v33, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = v11;
    v41 = v29;
    v42 = v12;
    v43 = v28;
    v44 = v32;
    v45 = v27;
    v46 = v31;
    v47 = v26;
    v48 = v30;
    v49 = v57;
    v50 = v20;
    v51 = v18;
    v52 = v17;
    v53 = v19;
    return sub_24065F72C(&v40);
  }
}

uint64_t sub_24065ECA8()
{
  sub_24075AE64();
  FamilyRepairModel.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_24065ECEC()
{
  sub_24075AE64();
  FamilyRepairModel.hash(into:)();
  return sub_24075AED4();
}

uint64_t _s12AppleIDSetup17FamilyRepairModelV7FailureO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_24065D0C8();
    sub_24065D0C8();
    sub_240604E54();
    sub_240604E54();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_24075ACF4();
    sub_24065D0C8();
    sub_24065D0C8();
    sub_240604E54();
    sub_240604E54();
    return v14 & 1;
  }

LABEL_15:
  sub_24065D0C8();
  sub_24065D0C8();
  sub_240604E54();
  sub_240604E54();
  return 1;
}

unint64_t sub_24065EF04()
{
  result = qword_27E4BA9B8;
  if (!qword_27E4BA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA9B8);
  }

  return result;
}

unint64_t sub_24065EF58()
{
  result = qword_27E4BA9C0;
  if (!qword_27E4BA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA9C0);
  }

  return result;
}

unint64_t sub_24065EFAC()
{
  result = qword_27E4BA9C8;
  if (!qword_27E4BA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA9C8);
  }

  return result;
}

BOOL _s12AppleIDSetup17FamilyRepairModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 73);
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  v15 = *(a1 + 96);
  v17 = *a2;
  v16 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v21 = *(a2 + 32);
  v20 = *(a2 + 40);
  v22 = *(a2 + 48);
  v23 = *(a2 + 56);
  v24 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 73);
  v28 = *(a2 + 80);
  v27 = *(a2 + 88);
  v29 = *(a2 + 96);
  if (v3)
  {
    if (!v17)
    {
      return 0;
    }

    v57 = *(a2 + 48);
    v58 = v8;
    v59 = *(a2 + 40);
    v60 = v6;
    v54 = *(a2 + 64);
    v55 = v10;
    v56 = *(a2 + 56);
    v51 = *(a2 + 72);
    v52 = v11;
    v61 = v9;
    v49 = *(a2 + 73);
    v50 = v12;
    v44 = *(a2 + 96);
    v45 = *(a2 + 80);
    v46 = *(a2 + 88);
    v47 = v15;
    v48 = v14;
    v53 = v13;
    v30 = *(a2 + 16);
    v43 = *(a2 + 8);
    sub_240660214();
    v31 = v17;
    v32 = v3;
    v33 = sub_24075A6D4();

    v16 = v43;
    v18 = v30;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v57 = *(a2 + 48);
    v58 = v8;
    v59 = *(a2 + 40);
    v60 = v6;
    v54 = *(a2 + 64);
    v55 = v10;
    v56 = *(a2 + 56);
    v51 = *(a2 + 72);
    v52 = v11;
    v61 = v9;
    v49 = *(a2 + 73);
    v50 = v12;
    v44 = *(a2 + 96);
    v45 = *(a2 + 80);
    v46 = *(a2 + 88);
    v47 = v15;
    v48 = v14;
    v53 = v13;
    if (v17)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v18)
    {
      return 0;
    }

    v34 = v61;
    if ((v2 != v16 || v4 != v18) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v61;
    if (v18)
    {
      return 0;
    }
  }

  if ((v5 != v19 || v7 != v21) && (sub_24075ACF4() & 1) == 0 || (v60 != v59 || v58 != v57) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  if (v34 == v56 && v55 == v54)
  {
    result = 0;
    v36 = v53;
    if (v52 != v51)
    {
      return result;
    }

    goto LABEL_25;
  }

  v37 = sub_24075ACF4();
  result = 0;
  v36 = v53;
  if ((v37 & 1) != 0 && ((v52 ^ v51) & 1) == 0)
  {
LABEL_25:
    if ((v50 ^ v49))
    {
      return result;
    }

    if (v47 == 255)
    {
      v38 = v48;
      sub_24065D0B0(v48, v36, 255);
      v39 = v44;
      if (v44 == 255)
      {
        sub_24065D0B0(v45, v46, 255);
        sub_240604E3C(v48, v36, 255);
        return 1;
      }

      v42 = v45;
      v41 = v46;
      sub_24065D0B0(v45, v46, v44);
    }

    else
    {
      v38 = v48;
      v64[0] = v48;
      v64[1] = v36;
      v65 = v47;
      v39 = v44;
      if (v44 != 255)
      {
        v62[0] = v45;
        v62[1] = v46;
        v63 = v44 & 1;
        sub_24065D0B0(v48, v36, v47);
        sub_24065D0B0(v45, v46, v44);
        sub_24065D0B0(v48, v36, v47);
        v40 = _s12AppleIDSetup17FamilyRepairModelV7FailureO2eeoiySbAE_AEtFZ_0(v64, v62);
        sub_240604E54();
        sub_240604E54();
        sub_240604E3C(v48, v36, v47);
        return (v40 & 1) != 0;
      }

      sub_24065D0B0(v48, v36, v47);
      v42 = v45;
      v41 = v46;
      sub_24065D0B0(v45, v46, 255);
      sub_24065D0B0(v48, v36, v47);
      sub_240604E54();
    }

    sub_240604E3C(v38, v36, v47);
    sub_240604E3C(v42, v41, v39);
    return 0;
  }

  return result;
}

unint64_t sub_24065F3EC()
{
  result = qword_27E4BA9F0;
  if (!qword_27E4BA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA9F0);
  }

  return result;
}

unint64_t sub_24065F440()
{
  result = qword_27E4BAA00;
  if (!qword_27E4BAA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BA9F8, &qword_24076F338);
    sub_24065F634(&qword_27E4B6458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA00);
  }

  return result;
}

unint64_t sub_24065F4E8()
{
  result = qword_27E4BAA08;
  if (!qword_27E4BAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA08);
  }

  return result;
}

uint64_t sub_24065F53C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B69A0, &qword_24075DC30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24065F58C()
{
  result = qword_27E4BAA18;
  if (!qword_27E4BAA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BA9F8, &qword_24076F338);
    sub_24065F634(&qword_27E4BAA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA18);
  }

  return result;
}

uint64_t sub_24065F634(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B6450, &qword_24076F340);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24065F6A0()
{
  result = qword_27E4BAA28;
  if (!qword_27E4BAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA28);
  }

  return result;
}

unint64_t sub_24065F79C()
{
  result = qword_27E4BAA30;
  if (!qword_27E4BAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA30);
  }

  return result;
}

unint64_t sub_24065F7F4()
{
  result = qword_27E4BAA38;
  if (!qword_27E4BAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA38);
  }

  return result;
}

uint64_t sub_24065F888(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_24065F8DC()
{
  result = qword_27E4BAA40;
  if (!qword_27E4BAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA40);
  }

  return result;
}

unint64_t sub_24065F930()
{
  result = qword_27E4BAA48;
  if (!qword_27E4BAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA48);
  }

  return result;
}

unint64_t sub_24065F984()
{
  result = qword_27E4BAA50;
  if (!qword_27E4BAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA50);
  }

  return result;
}

unint64_t sub_24065F9DC()
{
  result = qword_27E4BAA58;
  if (!qword_27E4BAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup17FamilyRepairModelV7FailureOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24065FA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24065FA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24065FB58()
{
  result = qword_27E4BAA60;
  if (!qword_27E4BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA60);
  }

  return result;
}

unint64_t sub_24065FBB0()
{
  result = qword_27E4BAA68;
  if (!qword_27E4BAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA68);
  }

  return result;
}

unint64_t sub_24065FC08()
{
  result = qword_27E4BAA70;
  if (!qword_27E4BAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA70);
  }

  return result;
}

unint64_t sub_24065FC60()
{
  result = qword_27E4BAA78;
  if (!qword_27E4BAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA78);
  }

  return result;
}

unint64_t sub_24065FCB8()
{
  result = qword_27E4BAA80;
  if (!qword_27E4BAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA80);
  }

  return result;
}

unint64_t sub_24065FD10()
{
  result = qword_27E4BAA88;
  if (!qword_27E4BAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA88);
  }

  return result;
}

unint64_t sub_24065FD68()
{
  result = qword_27E4BAA90;
  if (!qword_27E4BAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA90);
  }

  return result;
}

unint64_t sub_24065FDC0()
{
  result = qword_27E4BAA98;
  if (!qword_27E4BAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA98);
  }

  return result;
}

unint64_t sub_24065FE18()
{
  result = qword_27E4BAAA0;
  if (!qword_27E4BAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAA0);
  }

  return result;
}

unint64_t sub_24065FE70()
{
  result = qword_27E4BAAA8;
  if (!qword_27E4BAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAA8);
  }

  return result;
}

unint64_t sub_24065FEC8()
{
  result = qword_27E4BAAB0;
  if (!qword_27E4BAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAB0);
  }

  return result;
}

unint64_t sub_24065FF20()
{
  result = qword_27E4BAAB8;
  if (!qword_27E4BAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAB8);
  }

  return result;
}

uint64_t sub_24065FF74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000240786360 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240787EE0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000240787F00 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240787F20 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240787F40 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000240787F60 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6873696E69467369 && a2 == 0xEA00000000006465 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_240660214()
{
  result = qword_27E4B7178;
  if (!qword_27E4B7178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B7178);
  }

  return result;
}

uint64_t sub_240660260()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BAAC0);
  v1 = __swift_project_value_buffer(v0, qword_27E4BAAC0);
  if (qword_27E4B5EE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B85A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_240660328(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2406603D0;

  return sub_2406619B8(a1);
}

uint64_t sub_2406603D0(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_240660660(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_240660734;

  return sub_2406619B8(v6);
}

uint64_t sub_240660734(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_2407595C4();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_2406608E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240662428;

  return sub_240661CF8(a1);
}

uint64_t sub_240660B14(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_240662424;

  return sub_240661CF8(v6);
}

id SafetySettingsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetySettingsController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SafetySettingsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240660CC4(uint64_t a1)
{
  if ((sub_240674184(a1) & 1) == 0)
  {
    return 0;
  }

  if (qword_27E4B5F40 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  __swift_project_value_buffer(v1, qword_27E4BAAC0);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Safety settings already enabled - not showing safety settings", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  return 1;
}

uint64_t sub_240660F18(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    if (qword_27E4B5F40 != -1)
    {
      swift_once();
    }

    v15 = sub_240759AE4();
    __swift_project_value_buffer(v15, qword_27E4BAAC0);
    v5 = sub_240759AC4();
    v16 = sub_24075A5D4();
    if (os_log_type_enabled(v5, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_240579000, v5, v16, "No account manager provided - not eligible for any flow", v17, 2u);
      MEMORY[0x245CC76B0](v17, -1, -1);
    }

    goto LABEL_26;
  }

  v5 = a3;
  v6 = [v5 userAgeRangeForAccount:a2];
  if (!a1 || a1 == 2)
  {
    if (v6 != 2 && v6 != 1)
    {
      v7 = v6;
      if (qword_27E4B5F40 != -1)
      {
        swift_once();
      }

      v8 = sub_240759AE4();
      __swift_project_value_buffer(v8, qword_27E4BAAC0);
      v9 = sub_240759AC4();
      v10 = sub_24075A5D4();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_25;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2080;
      if (a1)
      {
        v13 = 0xE800000000000000;
        v14 = 0x73676E6974746573;
      }

      else
      {
        v13 = 0xE500000000000000;
        v14 = 0x7964647562;
      }

      v22 = sub_2405BBA7C(v14, v13, &v23);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_240579000, v9, v10, "Age range %lu not eligible for %s flow - not showing safety settings", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CC76B0](v12, -1, -1);
LABEL_24:
      MEMORY[0x245CC76B0](v11, -1, -1);
LABEL_25:

LABEL_26:
      return 0;
    }

    goto LABEL_17;
  }

  if (a1 == 1)
  {
    if (v6 != 2)
    {
      v19 = v6;
      if (qword_27E4B5F40 != -1)
      {
        swift_once();
      }

      v20 = sub_240759AE4();
      __swift_project_value_buffer(v20, qword_27E4BAAC0);
      v9 = sub_240759AC4();
      v21 = sub_24075A5D4();
      if (!os_log_type_enabled(v9, v21))
      {
        goto LABEL_25;
      }

      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v19;
      _os_log_impl(&dword_240579000, v9, v21, "Age range %lu not eligible for mini-buddy flow - not showing safety settings", v11, 0xCu);
      goto LABEL_24;
    }

LABEL_17:

    return 1;
  }

  result = sub_24075AD64();
  __break(1u);
  return result;
}

uint64_t sub_2406612A8(void *a1)
{
  v2 = sub_24075A084();
  v3 = [a1 accountPropertyForKey_];

  if (v3)
  {
    sub_24075A754();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_2405B8A50(v14, &qword_27E4BA1E8, &qword_24076E1C0);
    goto LABEL_13;
  }

  sub_2406623D4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  v4 = v11;
  if (![v11 BOOLValue])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (qword_27E4B5F40 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BAAC0);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_240579000, v6, v7, "User has already seen safety screen - not showing safety settings", v8, 2u);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v9 = 1;
LABEL_15:

  return v9;
}

uint64_t sub_240661478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24066149C, 0, 0);
}

uint64_t sub_24066149C()
{
  v40 = v0;
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v39 = 13;
  if (((*(v3 + 8))(&v39, v2, v3) & 1) == 0)
  {
    if (qword_27E4B5F40 != -1)
    {
      swift_once();
    }

    v11 = sub_240759AE4();
    __swift_project_value_buffer(v11, qword_27E4BAAC0);
    v12 = sub_240759AC4();
    v13 = sub_24075A5D4();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_30;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "ageBasedAccountRestrictions is not enabled - not showing safety settings";
    goto LABEL_29;
  }

  if (qword_27E4B5F40 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 16);
  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BAAC0);
  v6 = v4;
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *&v9[OBJC_IVAR___AISSafetySettingsContext_flowType];

    _os_log_impl(&dword_240579000, v7, v8, "Starting shouldPresentSafetySettings checks for flow type: %ld", v10, 0xCu);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    v7 = *(v0 + 16);
  }

  v16 = *(v0 + 24);

  if (!v16 || (v17 = [*(v0 + 24) primaryAuthKitAccount]) == 0)
  {
    v12 = sub_240759AC4();
    v13 = sub_24075A5D4();
    if (!os_log_type_enabled(v12, v13))
    {
LABEL_30:
      v36 = 0;
      goto LABEL_31;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "No primary account found - not showing safety settings";
LABEL_29:
    _os_log_impl(&dword_240579000, v12, v13, v15, v14, 2u);
    MEMORY[0x245CC76B0](v14, -1, -1);
    goto LABEL_30;
  }

  v12 = v17;
  v18 = sub_240759AC4();
  v19 = sub_24075A5D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_240579000, v18, v19, "Primary account check passed", v20, 2u);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  v21 = *(v0 + 40);

  if (sub_240660CC4(v21))
  {
    goto LABEL_30;
  }

  v22 = sub_240759AC4();
  v23 = sub_24075A5D4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_240579000, v22, v23, "ScreenTime settings check passed", v24, 2u);
    MEMORY[0x245CC76B0](v24, -1, -1);
  }

  v26 = *(v0 + 16);
  v25 = *(v0 + 24);

  if ((sub_240660F18(*(v26 + OBJC_IVAR___AISSafetySettingsContext_flowType), v12, v25) & 1) == 0)
  {
    goto LABEL_30;
  }

  v27 = sub_240759AC4();
  v28 = sub_24075A5D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_240579000, v27, v28, "Age eligibility check passed", v29, 2u);
    MEMORY[0x245CC76B0](v29, -1, -1);
  }

  if (sub_2406612A8(v12))
  {
    goto LABEL_30;
  }

  v30 = sub_240759AC4();
  v31 = sub_24075A5D4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_240579000, v30, v31, "Safety screen seen check passed", v32, 2u);
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  v33 = sub_240759AC4();
  v34 = sub_24075A5D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_240579000, v33, v34, "All checks passed - showing safety settings", v35, 2u);
    MEMORY[0x245CC76B0](v35, -1, -1);
  }

  v36 = 1;
LABEL_31:

  v37 = *(v0 + 8);

  return v37(v36);
}

uint64_t sub_2406619D8()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 104) = v1;
  v2 = type metadata accessor for FeatureManager();
  *(v0 + 16) = swift_initStaticObject();
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for FeatureManager;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_240661AFC;
  v4 = *(v0 + 96);

  return sub_240661478(v4, v1, v0 + 16, v0 + 56);
}

uint64_t sub_240661AFC(char a1)
{
  v4 = *(*v2 + 112);
  v5 = *v2;
  v5[15] = v1;

  if (v1)
  {
    v6 = v5[13];
    sub_2405B8A50((v5 + 7), &qword_27E4BAAD8, qword_24076FBF0);

    return MEMORY[0x2822009F8](sub_240661C90, 0, 0);
  }

  else
  {
    v7 = v5[13];
    sub_2405B8A50((v5 + 7), &qword_27E4BAAD8, qword_24076FBF0);

    __swift_destroy_boxed_opaque_existential_1(v5 + 2);
    v8 = v5[1];

    return v8(a1 & 1);
  }
}

uint64_t sub_240661C90()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[15];

  return v1(0);
}

uint64_t sub_240661D18()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 104) = v1;
  v2 = type metadata accessor for FeatureManager();
  *(v0 + 16) = swift_initStaticObject();
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for FeatureManager;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_240661E3C;
  v4 = *(v0 + 96);

  return sub_240661478(v4, v1, v0 + 16, v0 + 56);
}

uint64_t sub_240661E3C(char a1)
{
  v4 = *(*v2 + 112);
  v5 = *v2;
  v5[15] = v1;

  if (v1)
  {
    v6 = v5[13];
    sub_2405B8A50((v5 + 7), &qword_27E4BAAD8, qword_24076FBF0);

    return MEMORY[0x2822009F8](sub_240662420, 0, 0);
  }

  else
  {
    v7 = v5[13];
    sub_2405B8A50((v5 + 7), &qword_27E4BAAD8, qword_24076FBF0);

    __swift_destroy_boxed_opaque_existential_1(v5 + 2);
    v8 = v5[1];

    return v8(a1 & 1);
  }
}

uint64_t dispatch thunk of SafetySettingsController.shouldPresentSafetySettings(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24063D29C;

  return v8(a1);
}

uint64_t dispatch thunk of SafetySettingsController.shouldPresentSafetySettingsUsingOnlyLocalChecks(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24063DDE8;

  return v8(a1);
}

uint64_t sub_24066226C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240660B14(v2, v3, v4);
}

uint64_t sub_240662320()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405CE450;

  return sub_240660660(v2, v3, v4);
}

unint64_t sub_2406623D4()
{
  result = qword_27E4B8910;
  if (!qword_27E4B8910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B8910);
  }

  return result;
}

id SafetySettingsContext.__allocating_init(flowType:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AISSafetySettingsContext_flowType] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SafetySettingsContext.init(flowType:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AISSafetySettingsContext_flowType] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SafetySettingsContext();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_240662618()
{
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD000000000000025, 0x8000000240788000);
  v2 = *(v0 + OBJC_IVAR___AISSafetySettingsContext_flowType);
  sub_24075A994();
  MEMORY[0x245CC5E60](32032, 0xE200000000000000);
  return 0;
}

id SafetySettingsContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetySettingsContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AISSetupContext.into(relaxed:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v243 = a2;
  v236 = type metadata accessor for SignInModel();
  v4 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v237 = &v217 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v241 = &v217 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v240 = &v217 - v10;
  v235 = type metadata accessor for AuthenticationModel(0);
  v11 = *(*(v235 - 8) + 64);
  MEMORY[0x28223BE20](v235);
  v242 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v13 = sub_240759AE4();
  v14 = __swift_project_value_buffer(v13, qword_27E4B8518);
  v15 = v2;
  v244 = v14;
  v16 = sub_240759AC4();
  LODWORD(v246) = sub_24075A5C4();
  v17 = os_log_type_enabled(v16, v246);
  v18 = &unk_278CAD000;
  v19 = &unk_278CAD000;
  v20 = &unk_278CAD000;
  v21 = &unk_278CAD000;
  LODWORD(v234) = a1;
  if (v17)
  {
    v245 = v16;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    *&v254 = v239;
    *v22 = 67113730;
    *(v22 + 4) = a1 & 1;
    *(v22 + 8) = 2080;
    v24 = [v15 requiredServiceTypes];
    type metadata accessor for AIDAServiceType(0);
    sub_240665FC0();
    sub_24075A534();

    v25 = sub_24075A544();
    v27 = v26;

    v28 = sub_2405BBA7C(v25, v27, &v254);

    *(v22 + 10) = v28;
    *(v22 + 18) = 2080;
    v29 = [v15 desiredServiceTypes];
    sub_24075A534();

    v30 = sub_24075A544();
    v32 = v31;

    v33 = sub_2405BBA7C(v30, v32, &v254);

    *(v22 + 20) = v33;
    *(v22 + 28) = 1024;
    LODWORD(v33) = [v15 0x1FD36857FLL];

    *(v22 + 30) = v33;
    *(v22 + 34) = 2112;
    v34 = [v15 messageSessionTemplate];
    *(v22 + 36) = v34;
    *v23 = v34;
    *(v22 + 44) = 2112;
    v35 = [v15 bleDevice];
    *(v22 + 46) = v35;
    v238 = v23;
    v23[1] = v35;
    *(v22 + 54) = 2048;
    v36 = [v15 localRole];

    *(v22 + 56) = v36;
    *(v22 + 64) = 2048;
    v37 = [v15 localRole];

    *(v22 + 66) = v37;
    *(v22 + 74) = 2080;
    v38 = [v15 fixedPIN];
    if (v38)
    {
      v39 = v38;
      v40 = sub_24075A0B4();
      v42 = v41;

      v43 = 0x296C6C756E28;
    }

    else
    {
      v42 = 0xE600000000000000;
      v43 = 0x296C6C756E28;
      v40 = 0x296C6C756E28;
    }

    v44 = sub_2405BBA7C(v40, v42, &v254);

    *(v22 + 76) = v44;
    *(v22 + 84) = 2080;
    v45 = [v15 targetAuthTag];
    v20 = &unk_278CAD000;
    v46 = v245;
    if (v45)
    {
      v47 = v45;
      v48 = sub_24075A0B4();
      v50 = v49;

      v43 = 0x296C6C756E28;
    }

    else
    {
      v50 = 0xE600000000000000;
      v48 = 0x296C6C756E28;
    }

    v51 = sub_2405BBA7C(v48, v50, &v254);

    *(v22 + 86) = v51;
    *(v22 + 94) = 1024;
    v52 = [v15 pinType];

    *(v22 + 96) = v52;
    *(v22 + 100) = 2048;
    v53 = [v15 deviceUserKind];

    *(v22 + 102) = v53;
    *(v22 + 110) = 1024;
    LODWORD(v53) = [v15 shouldCreateDeviceUser];

    *(v22 + 112) = v53;
    *(v22 + 116) = 1024;
    LODWORD(v53) = [v15 shouldSkipConfirmation];

    *(v22 + 118) = v53;
    *(v22 + 122) = 2080;
    v54 = [v15 candidateAccount];
    if (v54 && (v55 = v54, v56 = [v54 altDSID], v55, v56))
    {
      v57 = sub_24075A0B4();
      v59 = v58;

      v60 = v57;
      v43 = 0x296C6C756E28;
    }

    else
    {
      v59 = 0xE600000000000000;
      v60 = 0x296C6C756E28;
    }

    v61 = sub_2405BBA7C(v60, v59, &v254);

    *(v22 + 124) = v61;
    *(v22 + 132) = 2080;
    v62 = [v15 candidateAccount];
    if (v62 && (v63 = v62, v64 = [v62 username], v63, v64))
    {
      v65 = sub_24075A0B4();
      v67 = v66;

      v68 = v65;
      v43 = 0x296C6C756E28;
    }

    else
    {
      v67 = 0xE600000000000000;
      v68 = 0x296C6C756E28;
    }

    v69 = sub_2405BBA7C(v68, v67, &v254);

    *(v22 + 134) = v69;
    *(v22 + 142) = 2080;
    v70 = [v15 serverDeviceModel];
    if (v70)
    {
      v71 = v70;
      v43 = sub_24075A0B4();
      v73 = v72;
    }

    else
    {
      v73 = 0xE600000000000000;
    }

    v74 = sub_2405BBA7C(v43, v73, &v254);

    *(v22 + 144) = v74;
    *(v22 + 152) = 2048;
    v21 = &unk_278CAD000;
    v75 = [v15 currentDeviceAgeRange];

    *(v22 + 154) = v75;
    *(v22 + 162) = 1024;
    LODWORD(v75) = [v15 forceReplacePrimaryUser];

    *(v22 + 164) = v75;
    _os_log_impl(&dword_240579000, v46, v246, "Converting objc setup context with properties (relaxed: %{BOOL}d): {\n  requiredServiceTypes:%s,\n  desiredServiceTypes:%s,\n  shouldBackgroundDesiredServices:%{BOOL}d,\n  messageSessionTemplate:%@,\n  bleDevice:%@,\n  localRole:%lu,\n  remoteRole:%lu,\n  fixedPIN:%s,\n  targetAuthTag:%s,\n  pinType:%d,\n  deviceUserKind:%lu,\n  shouldCreateDeviceUser:%{BOOL}d,\n  shouldSkipConfirmation:%{BOOL}d,\n  candidateAltDSID:%s,\n  candidateUserName:%s,\n  serverDeviceModel:%s,\n  currentDeviceAgeRange:%lu,\n  forceReplacePrimaryUser:%{BOOL}d\n}", v22, 0xA8u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A0, &qword_240762400);
    v76 = v238;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v76, -1, -1);
    v77 = v239;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v77, -1, -1);
    MEMORY[0x245CC76B0](v22, -1, -1);

    v19 = &unk_278CAD000;
    v18 = &unk_278CAD000;
  }

  else
  {
  }

  v78 = [v15 remoteRole];
  v79 = [v15 v18[337]];
  AISSetupContextRemoteRole.into(with:)(v15, [v15 remoteRole], &v254);
  v80 = v255;
  if ((v255 & 0xFFFFFF00FFFF0000) != 0xFFFF00FFFF0000 || ((DWORD2(v255) | ((WORD6(v255) | (BYTE14(v255) << 16)) << 32)) & 0xF800000000) != 0)
  {
    v238 = v255;
    v239 = DWORD2(v255) | ((WORD6(v255) | (BYTE14(v255) << 16)) << 32);
    v227 = v78;
    v228 = v79;
    v245 = *(&v254 + 1);
    v246 = v254;
    v233 = v79 != 0;
    if (v234)
    {
      v92 = [v15 requiredServiceTypes];
      type metadata accessor for AIDAServiceType(0);
      sub_240665FC0();
      v93 = sub_24075A534();

      v94 = *(v93 + 16);

      if (!v94)
      {
        v95 = [v15 desiredServiceTypes];
        v96 = sub_24075A534();

        v97 = *(v96 + 16);

        if (!v97)
        {
          v98 = v21;
          v99 = sub_240759AC4();
          v100 = sub_24075A5F4();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&dword_240579000, v99, v100, "Invalid AISSetupContext provided, no required/desired services specified. Defaulting for now (will be an error in the future).", v101, 2u);
            MEMORY[0x245CC76B0](v101, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9280, &unk_24076B550);
          v102 = swift_allocObject();
          *(v102 + 16) = xmmword_240765570;
          v103 = *MEMORY[0x277CED1A0];
          *(v102 + 32) = *MEMORY[0x277CED1A0];
          v104 = v103;
          sub_240668A84(v102);
          swift_setDeallocating();
          sub_240668C78(v102 + 32);
          swift_deallocClassInstance();
          v105 = sub_24075A514();

          [v15 setRequiredServiceTypes_];

          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_240762420;
          v107 = *MEMORY[0x277CED1C0];
          *(v106 + 32) = *MEMORY[0x277CED1C0];
          v108 = *MEMORY[0x277CED1B0];
          *(v106 + 40) = *MEMORY[0x277CED1B0];
          v109 = v107;
          v110 = v108;
          sub_240668A84(v106);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v111 = sub_24075A514();

          [v15 setDesiredServiceTypes_];

          v21 = v98;
          v80 = v238;
          v19 = &unk_278CAD000;
        }
      }
    }

    v112 = v15;
    v113 = sub_240759AC4();
    v114 = sub_24075A5D4();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = v21;
      v116 = swift_slowAlloc();
      *v116 = 67109120;
      *(v116 + 4) = [v112 supportsSplitAccounts];

      _os_log_impl(&dword_240579000, v113, v114, "supportsSplitAccounts: %{BOOL}d", v116, 8u);
      v117 = v116;
      v21 = v115;
      v80 = v238;
      MEMORY[0x245CC76B0](v117, -1, -1);
    }

    else
    {

      v113 = v112;
    }

    v118 = [v112 shouldCreateDeviceUser];
    v119 = v245;
    if (v118 && ![v112 deviceUserKind])
    {
      v120 = sub_240759AC4();
      v121 = sub_24075A5C4();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = v21;
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_240579000, v120, v121, "When asked to create user and user kind is specified as none, we will default to auto.", v123, 2u);
        v124 = v123;
        v21 = v122;
        v80 = v238;
        MEMORY[0x245CC76B0](v124, -1, -1);
      }

      [v112 setDeviceUserKind:1];
    }

    v125 = [v112 candidateAccount];
    if (v125)
    {
      v126 = v125;
      v127 = [v125 altDSID];

      if (v127)
      {
        v234 = sub_24075A0B4();
        v129 = v128;

        v130 = [v112 candidateAccount];
        if (v130)
        {
          v131 = v130;
          v132 = [v130 username];

          if (v132)
          {
            v133 = sub_24075A0B4();
            v230 = v134;
            v231 = v133;

            v135 = [v112 candidateAccount];
            if (v135 && (v136 = v135, v137 = [v135 formattedShortName], v136, v137))
            {
              v138 = sub_24075A0B4();
              v244 = v139;
            }

            else
            {
              v138 = 0;
              v244 = 0;
            }

            v216 = v246;
            v257 = 0u;
            v258 = 0u;
            v255 = 0u;
            v256 = 0u;
            v254 = 0u;
            sub_2405B8A50(&v254, &qword_27E4B6420, &qword_240768F00);
            v140 = v216;
LABEL_53:
            sub_240609C0C(v140, v119, v80, v239);
            v141 = [v112 v19[340]];
            if (v141)
            {
              v142 = v141;
              v143 = sub_24075A0B4();
              v225 = v144;
              v226 = v143;
            }

            else
            {
              v225 = 0;
              v226 = 0;
            }

            v145 = v228;
            v146 = [v112 targetAuthTag];
            if (v146)
            {
              v147 = v146;
              v228 = sub_24075A0B4();
              v224 = v148;
            }

            else
            {
              v228 = 0;
              v224 = 0;
            }

            v149 = [v112 pinType];
            if (v149 > 3)
            {
              if (v149 <= 6)
              {
                if (v149 != 4)
                {
                  if (v149 == 5)
                  {
                    v223 = 0;
                    v222 = 0;
                    goto LABEL_76;
                  }

                  goto LABEL_70;
                }

                v222 = 0;
                v223 = 4;
LABEL_76:
                v152 = v227 - 1;
                LODWORD(v227) = [v112 shouldSkipConfirmation];
                v229 = v138;
                if (v129)
                {

                  v221 = v138;
                }

                else
                {
                  v220 = 0;
                  v221 = 0;
                }

                v153 = v152 & 0xFFFFFFFFFFFFFFFDLL;
                v154 = [v112 v20[344]];
                v232 = v129;
                if (v154)
                {
                  v155 = v154;
                  v156 = sub_24075A0B4();
                  v218 = v157;
                  v219 = v156;
                }

                else
                {
                  v218 = 0;
                  v219 = 0;
                }

                v158 = v153 != 0;
                if (v145)
                {
                  v159 = 512;
                }

                else
                {
                  v159 = 513;
                }

                v160 = [v112 v21[345]];
                v247 = v159;
                v248 = 0uLL;
                v249 = xmmword_240768EF0;
                LOBYTE(v250) = 0;
                sub_240676624(&v254);
                sub_240604AE0(0, 0, 0, 0xA0u);
                sub_240609C34(0, 0);
                v161 = v239;
                if ((v239 & 0xC000000000) != 0)
                {
                  v162 = 0;
                  v163 = 0;
                  v161 = 0;
                  v164 = 1;
                }

                else
                {
                  v163 = v80 & 0xFF0000FFFFLL;
                  v164 = v245;
                  v165 = v246;
                  sub_240666040(v246, v245, v80, v239);
                  v162 = v165;
                }

                *(&v264[10] + 8) = v260;
                *(&v264[11] + 8) = v261;
                *(&v264[12] + 8) = v262;
                *(&v264[6] + 8) = v256;
                *(&v264[7] + 8) = v257;
                *(&v264[8] + 8) = v258;
                *(&v264[9] + 8) = v259;
                *(&v264[4] + 8) = v254;
                LOBYTE(v264[0]) = 0;
                BYTE1(v264[0]) = v158;
                *(&v264[0] + 1) = v228;
                *&v264[1] = v224;
                *(&v264[1] + 1) = v226;
                *&v264[2] = v225;
                *(&v264[2] + 1) = v223;
                LOBYTE(v264[3]) = v222;
                BYTE1(v264[3]) = v227;
                *&v264[4] = 0;
                *(&v264[3] + 1) = 0;
                WORD4(v264[13]) = v263;
                *(&v264[5] + 8) = v255;
                memset(&v264[14], 0, 32);
                *&v264[16] = v221;
                *(&v264[16] + 1) = v220;
                *&v264[17] = v219;
                *(&v264[17] + 1) = v218;
                v264[18] = v160;
                LOBYTE(v264[19]) = 0;
                *&v247 = v162;
                *(&v247 + 1) = v164;
                *&v248 = v163;
                BYTE14(v248) = BYTE6(v161);
                WORD6(v248) = WORD2(v161);
                DWORD2(v248) = v161;
                DiscoveryModel.update(withPeer:)(&v247);
                sub_240609C84(v162, v164);
                v166 = type metadata accessor for IdMSAccount();
                v167 = *(*(v166 - 8) + 56);
                v167(v240, 1, 1, v166);
                v168 = v235;
                v169 = *(v235 + 40);
                type metadata accessor for AuthenticationModel.State(0);
                v170 = v242;
                swift_storeEnumTagMultiPayload();
                LODWORD(v228) = [v112 supportsSplitAccounts];
                v167(v170, 1, 1, v166);
                v171 = (v170 + v168[5]);
                v171[3] = 0u;
                v171[4] = 0u;
                v171[1] = 0u;
                v171[2] = 0u;
                *v171 = 0u;
                v172 = v168[8];
                v173 = (v170 + v168[7]);
                v174 = v168[9];
                v175 = (v170 + v168[11]);
                *v175 = 0;
                v175[1] = 0;
                sub_240590814(v240, v170);
                *(v170 + v168[6]) = 1;
                *v173 = 0;
                v173[1] = 0;
                *(v170 + v174) = v228;
                *(v170 + v172) = MEMORY[0x277D84F90];
                v167(v241, 1, 1, v166);
                v176 = [v112 requiredServiceTypes];
                type metadata accessor for AIDAServiceType(0);
                sub_240665FC0();
                v177 = sub_24075A534();

                v178 = [v112 desiredServiceTypes];
                v179 = sub_24075A534();

                LODWORD(v235) = [v112 shouldBackgroundDesiredServices];
                v180 = [v112 localSecret];
                if (v180)
                {
                  v181 = v180;
                  v182 = sub_24075A0B4();
                  v227 = v183;
                  v228 = v182;
                }

                else
                {
                  v227 = 0;
                  v228 = 0;
                }

                v184 = v239;
                v185 = [v112 localSecretType];
                v186 = [v112 deviceUserKind];
                v187 = [v112 shouldCreateDeviceUser]^ 1;
                if (v186 > 1)
                {
                  if (v186 == 3)
                  {
                    v188 = 2;
                    goto LABEL_98;
                  }

                  if (v186 == 2)
                  {
                    LODWORD(v226) = 3;
                    v187 = 1;
                    goto LABEL_101;
                  }
                }

                else
                {
                  if (!v186)
                  {
                    v187 = 0;
                    v188 = 3;
LABEL_98:
                    LODWORD(v226) = v188;
LABEL_101:
                    v239 = v179;
                    v240 = v177;
                    v225 = v187;
                    v189 = [v112 serverDeviceModel];
                    if (v189)
                    {
                      v190 = v189;
                      v191 = sub_24075A0B4();
                      v223 = v192;
                      v224 = v191;
                      sub_240666018(v246, v245, v238, v184);
                    }

                    else
                    {
                      sub_240666018(v246, v245, v238, v184);
                      v223 = 0;
                      v224 = 0;
                    }

                    v193 = v184;
                    v194 = v185 == 1;
                    v195 = v237;
                    v167(v237, 1, 1, v166);
                    v196 = v236;
                    v197 = (v195 + *(v236 + 20));
                    v197[4] = 0u;
                    v197[5] = 0u;
                    v197[2] = 0u;
                    v197[3] = 0u;
                    *v197 = 0u;
                    v197[1] = 0u;
                    v198 = v195 + v196[10];
                    *v198 = 0u;
                    *(v198 + 16) = 0u;
                    v199 = (v195 + v196[11]);
                    *(v195 + v196[13]) = 0;
                    v200 = v196[15];
                    v201 = (v195 + v196[14]);
                    *(v195 + v200) = 2;
                    v202 = (v195 + v196[17]);
                    *v202 = 0;
                    v202[1] = 0;
                    *(v195 + v196[18]) = 0;
                    sub_240590814(v241, v195);
                    v203 = v197[3];
                    v249 = v197[2];
                    v250 = v203;
                    v204 = v197[5];
                    v251 = v197[4];
                    v252 = v204;
                    v205 = v197[1];
                    v247 = *v197;
                    v248 = v205;
                    sub_2405B8A50(&v247, &qword_27E4B8D00, &qword_2407691E0);
                    *v197 = 0u;
                    v197[1] = 0u;
                    v197[2] = 0u;
                    v197[3] = 0u;
                    v197[4] = 0u;
                    v197[5] = 0u;
                    v206 = v239;
                    *(v195 + v196[6]) = v240;
                    *(v195 + v196[7]) = v206;
                    *(v195 + v196[8]) = 0;
                    *(v195 + v196[9]) = v235;
                    v207 = v227;
                    *v201 = v228;
                    v201[1] = v207;
                    *(v195 + v200) = v194;
                    v208 = v195 + v196[16];
                    *v208 = v225;
                    *(v208 + 8) = 0;
                    *(v208 + 16) = v226;
                    v209 = v195 + v196[19];
                    *(v209 + 32) = 0u;
                    *(v209 + 48) = 0u;
                    *v209 = 0u;
                    *(v209 + 16) = 0u;
                    *(v209 + 64) = 0;
                    *(v209 + 72) = 0xE000000000000000;
                    *(v209 + 80) = 0;
                    *(v209 + 88) = 0;
                    *(v209 + 96) = 0;
                    v210 = *(v198 + 16);
                    v211 = *(v198 + 24);
                    sub_240604C2C(*v198, *(v198 + 8));
                    *v198 = 0u;
                    *(v198 + 16) = 0u;
                    v212 = v223;
                    *v199 = v224;
                    v199[1] = v212;
                    *(v195 + v196[12]) = 0;
                    v213 = v243;
                    *(v243 + 39) = 0;
                    *v213 = v233;
                    v214 = v245;
                    *(v213 + 8) = v246;
                    *(v213 + 16) = v214;
                    *(v213 + 24) = v238;
                    *(v213 + 38) = BYTE6(v193);
                    *(v213 + 36) = WORD2(v193);
                    *(v213 + 32) = v193;
                    *(v213 + 40) = 0u;
                    *(v213 + 56) = 0u;
                    *(v213 + 72) = 0u;
                    *(v213 + 88) = -1;
                    memcpy((v213 + 96), v264, 0x131uLL);
                    v215 = type metadata accessor for SetupModel();
                    sub_240668D90(v242, v213 + *(v215 + 36), type metadata accessor for AuthenticationModel);
                    sub_240668D90(v195, v213 + *(v215 + 40), type metadata accessor for SignInModel);
                    (*(*(v215 - 8) + 56))(v213, 0, 1, v215);
                    v253[0] = v234;
                    v253[1] = v232;
                    v253[2] = v231;
                    v253[3] = v230;
                    v253[4] = 0;
                    v253[5] = 0;
                    v253[6] = v229;
                    v253[7] = v244;
                    v253[8] = 0;
                    v253[9] = 0;
                    return sub_2405B8A50(v253, &qword_27E4B6420, &qword_240768F00);
                  }

                  if (v186 == 1)
                  {
                    v188 = 1;
                    goto LABEL_98;
                  }
                }

                result = sub_24075A9C4();
                __break(1u);
                return result;
              }

              if (v149 == 8)
              {
                v223 = 2;
                v151 = 2;
LABEL_75:
                v222 = v151;
                goto LABEL_76;
              }

LABEL_70:
              v222 = 2;
              v223 = 1;
              goto LABEL_76;
            }

            switch(v149)
            {
              case 1:
                v150 = 4;
                break;
              case 2:
                v150 = 6;
                break;
              case 3:
                v150 = 8;
                break;
              default:
                goto LABEL_70;
            }

            v223 = v150;
            v151 = 1;
            goto LABEL_75;
          }
        }
      }
    }

    v234 = 0;
    v129 = 0;
    v230 = 0;
    v231 = 0;
    v138 = 0;
    v244 = 0;
    v140 = v246;
    goto LABEL_53;
  }

  v81 = v15;
  v82 = sub_240759AC4();
  v83 = sub_24075A5E4();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = 138412290;
    *(v84 + 4) = v81;
    *v85 = v81;
    v86 = v81;
    _os_log_impl(&dword_240579000, v82, v83, "Failed to convert %@ into SetupContext, remote role is invalid", v84, 0xCu);
    sub_2405B8A50(v85, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v85, -1, -1);
    MEMORY[0x245CC76B0](v84, -1, -1);
  }

  v87 = type metadata accessor for SetupModel();
  v88 = *(*(v87 - 8) + 56);
  v89 = v87;
  v90 = v243;

  return v88(v90, 1, 1, v89);
}

uint64_t SetupContext.Builder.MissingExpectedValue.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double SetupContext.Builder.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84FA0];
  *a1 = MEMORY[0x277D84FA0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 78) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 192;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0;
  *(a1 + 160) = &type metadata for AutomaticSetupModelExchange;
  *(a1 + 168) = &protocol witness table for AutomaticSetupModelExchange;
  v3 = swift_allocObject();
  *(a1 + 136) = v3;
  AutomaticSetupModelExchange.init(queue:)(0, (v3 + 16));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 295) = 0;
  return result;
}

void *SetupContext.Builder.requireServices(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  sub_24066418C(v5);
  sub_2406685FC(a1);

  return memcpy(a2, v2, 0x139uLL);
}

void sub_24066418C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_240666310(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *SetupContext.Builder.desireServices(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  sub_24066418C(v5);
  sub_2406685FC(a1);

  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder.requireService(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_240666310(&v5, a1);

  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder.desireService(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_240666310(&v5, a1);

  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder.candidateAccountID(_:)@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v13[4] = a1[4];
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = v2[14];
  v14[2] = v2[13];
  v14[3] = v7;
  v14[4] = v2[15];
  v8 = v2[12];
  v14[0] = v2[11];
  v14[1] = v8;
  sub_2405AF99C(v13, &v12);
  sub_2405B8A50(v14, &qword_27E4B6420, &qword_240768F00);
  v9 = a1[3];
  v2[13] = a1[2];
  v2[14] = v9;
  v2[15] = a1[4];
  v10 = a1[1];
  v2[11] = *a1;
  v2[12] = v10;
  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder.enableProximitySetup()@<X0>(void *a1@<X8>)
{
  sub_240604AB8(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72) | ((*(v1 + 76) | (*(v1 + 78) << 16)) << 32));
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 1;
  *(v1 + 78) = 0;
  *(v1 + 76) = 192;
  *(v1 + 72) = 0;
  v3 = *(v1 + 104);

  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = 2;

  return memcpy(a1, v1, 0x139uLL);
}

void *SetupContext.Builder._enableProximitySetup(withTargetAuthTag:withCodeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  sub_240604AB8(*(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72) | ((*(v4 + 76) | (*(v4 + 78) << 16)) << 32));
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = 1;
  *(v4 + 78) = 0;
  *(v4 + 76) = 192;
  *(v4 + 72) = 0;
  v10 = *(v4 + 104);

  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  *(v4 + 112) = v8;
  *(v4 + 120) = v9;

  return memcpy(a4, v4, 0x139uLL);
}

void *sub_24066463C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72) | ((*(v4 + 76) | (*(v4 + 78) << 16)) << 32);
  v13 = a1;
  sub_240604AB8(v9, v10, v11, v12);
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = a1;
  *(v4 + 78) = BYTE6(a3);
  *(v4 + 76) = WORD2(a3);
  *(v4 + 72) = a3;
  *(v4 + 121) = a2;

  return memcpy(a4, v4, 0x139uLL);
}

void *SetupContext.Builder.restrictProximitySetup()@<X0>(void *a1@<X8>)
{
  sub_240604AB8(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72) | ((*(v1 + 76) | (*(v1 + 78) << 16)) << 32));
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 78) = 0;
  *(v1 + 76) = 192;
  *(v1 + 72) = 0;

  return memcpy(a1, v1, 0x139uLL);
}

void *SetupContext.Builder.serverDeviceModel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = v3[34];

  v3[33] = a1;
  v3[34] = a2;

  return memcpy(a3, v3, 0x139uLL);
}

void *SetupContext.Builder.localDeviceSecret(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = v3[36];

  v3[35] = a1;
  v3[36] = a2;

  return memcpy(a3, v3, 0x139uLL);
}

void *SetupContext.Builder._userKind(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(a1 + 16);
  v9 = *(v2 + 40);
  sub_240668CD4(*a1, v5, v8);
  sub_240604C7C(v6, v7, v9);
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v8;

  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder._fixedPin(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = v3[11];

  v3[10] = a1;
  v3[11] = a2;

  return memcpy(a3, v3, 0x139uLL);
}

void *SetupContext.Builder._proximitySetupClient(for:)@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  *v15 = *a1;
  *&v15[15] = *(a1 + 15);
  v3 = *&v15[8];
  v12 = *v15;
  v4 = v15[30];
  v5 = *&v15[16] & 0xFF0000FFFFLL;
  v6 = (*&v15[24] | ((*&v15[28] | (v15[30] << 16)) << 32)) & 0xFFFFFF07FFFFFFFFLL;
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72) | ((*(v2 + 76) | (*(v2 + 78) << 16)) << 32);
  sub_240607D50(v15, v14);
  sub_240604AB8(v7, v8, v9, v10);
  *(v2 + 48) = v12;
  *(v2 + 56) = v3;
  *(v2 + 64) = v5;
  *(v2 + 78) = v4;
  *(v2 + 76) = WORD2(v6);
  *(v2 + 72) = v6;
  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder._proximitySetupClientIntercept()@<X0>(void *a1@<X8>)
{
  sub_240604AB8(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72) | ((*(v1 + 76) | (*(v1 + 78) << 16)) << 32));
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 2;
  *(v1 + 78) = 0;
  *(v1 + 76) = 192;
  *(v1 + 72) = 0;

  return memcpy(a1, v1, 0x139uLL);
}

void *SetupContext.Builder._context(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v4;

  *(v2 + 128) = v3;
  sub_240668CE8(v2 + 136, v36);
  if (v37)
  {
    v6 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAAF0, &unk_24076FC50);
    if (swift_dynamicCast())
    {
      __src[6] = v30;
      __src[7] = v31;
      __src[8] = v32;
      __src[9] = v33;
      __src[2] = v26;
      __src[3] = v27;
      __src[4] = v28;
      __src[5] = v29;
      __src[0] = v24;
      __src[1] = v25;
      v7 = v34;
      memcpy(&__src[10] + 8, v35, 0x2E0uLL);
      *&__src[10] = v34;
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v8 = sub_240759AE4();
      __swift_project_value_buffer(v8, qword_27E4B8518);
      v9 = sub_240759AC4();
      v10 = sub_24075A5D4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136315138;
        swift_beginAccess();
        memcpy(__dst, __src, sizeof(__dst));
        v7 = __dst[20];
        memcpy(v22, __src, sizeof(v22));
        sub_240603884(__dst, v20);
        v13 = sub_24075A0E4();
        v15 = sub_2405BBA7C(v13, v14, &v21);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_240579000, v9, v10, "Applying main queue override on exchange: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x245CC76B0](v12, -1, -1);
        MEMORY[0x245CC76B0](v11, -1, -1);
      }

      sub_2406082EC();
      v16 = sub_24075A644();
      swift_beginAccess();
      *&__src[10] = v16;

      memcpy(v22, __src, sizeof(v22));
      v17 = swift_allocObject();
      memcpy((v17 + 16), __src, 0x388uLL);
      sub_240603884(v22, __dst);
      sub_2405B8A50(v2 + 136, &qword_27E4BAAE8, &qword_24076FC48);
      *(v2 + 136) = v17;
      *(v2 + 160) = &type metadata for AutomaticSetupModelExchange;
      *(v2 + 168) = &protocol witness table for AutomaticSetupModelExchange;
      memcpy(__dst, __src, sizeof(__dst));
      sub_240603930(__dst);
    }
  }

  else
  {
    v18 = v3;
    sub_2405B8A50(v36, &qword_27E4BAAE8, &qword_24076FC48);
  }

  return memcpy(v5, v2, 0x139uLL);
}

void *SetupContext.Builder.modelExchange<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(&v12 + 1) = a2;
  v13 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_2405B8A50(v4 + 136, &qword_27E4BAAE8, &qword_24076FC48);
  v9 = v12;
  *(v4 + 136) = v11;
  *(v4 + 152) = v9;
  *(v4 + 168) = v13;
  return memcpy(a4, v4, 0x139uLL);
}

void SetupContext.Builder.build()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CD8, &qword_240768F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SetupModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 128);
  if (v13)
  {
    v14 = v13;
    AISSetupContext.into(relaxed:)(1, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_240668E44(v2);
      sub_2405B8A50(v7, &qword_27E4B8CD8, &qword_240768F20);
      sub_240668E74();
      swift_allocError();
      swift_willThrow();

      return;
    }

    sub_240668D90(v7, v12, type metadata accessor for SetupModel);
  }

  else
  {
    sub_240668D58(v1, &v17);
    sub_240665178(v12);
  }

  sub_240668D90(v12, a1, type metadata accessor for SetupModel);
  v15 = type metadata accessor for SetupContext();
  sub_240668CE8(v2 + 136, a1 + *(v15 + 20));
  sub_240668E44(v2);
}

void *sub_240665178@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v63 - v5;
  v6 = *(v1 + 48);
  v7 = *(v1 + 76);
  v8 = *(v1 + 72) | ((v7 | (*(v1 + 78) << 16)) << 32);
  v76 = (v7 >> 6) >= 2u;
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v83 = *(v1 + 41);
  v11 = *(v1 + 80);
  v12 = *(v1 + 88);
  v13 = *(v1 + 104);
  v66 = *(v1 + 96);
  v69 = *(v1 + 112);
  v70 = v11;
  LODWORD(v68) = *(v1 + 120);
  LODWORD(v67) = *(v1 + 121);
  v14 = *(v1 + 264);
  v15 = *(v1 + 272);
  v73 = *(v2 + 304);
  v74 = v14;
  *&v86 = v83 ^ 1u | 0x200;
  *(&v86 + 1) = 0;
  v87 = 0uLL;
  v88 = xmmword_240768EF0;
  LOBYTE(v89) = 0;
  sub_240609C0C(v6, v10, v9, v8);
  v72 = v15;

  v71 = v12;

  sub_240676624(v93);
  sub_240604AE0(0, 0, 0, 0xA0u);
  sub_240609C34(0, 0);
  v81 = v8;
  v82 = v9;
  v79 = v6;
  v80 = HIDWORD(v8);
  v77 = v10;
  v78 = HIWORD(v8);
  if ((v8 & 0xC000000000) != 0)
  {
    v6 = 0;
    v16 = 0;
    v8 = 0;
    v10 = 1;
  }

  else
  {
    v17 = v9;
    v16 = v9 & 0xFF0000FFFFLL;
    *&v86 = v6;
    *(&v86 + 1) = v10;
    *&v87 = v17;
    DWORD2(v87) = v8;
    BYTE14(v87) = BYTE6(v8);
    WORD6(v87) = WORD2(v8);
    sub_240607D50(&v86, &v85);
  }

  *&v92[21] = v93[6];
  *&v92[23] = v93[7];
  *&v92[25] = v93[8];
  *&v92[13] = v93[2];
  *&v92[15] = v93[3];
  *&v92[17] = v93[4];
  *&v92[19] = v93[5];
  *&v92[9] = v93[0];
  LOBYTE(v92[0]) = 0;
  BYTE1(v92[0]) = v76;
  v92[1] = v66;
  v92[2] = v13;
  v92[3] = v70;
  v92[4] = v71;
  v92[5] = v69;
  LOBYTE(v92[6]) = v68;
  BYTE1(v92[6]) = v67;
  v92[7] = 0;
  v92[8] = 0;
  LOWORD(v92[27]) = v94;
  *&v92[11] = v93[1];
  memset(&v92[28], 0, 48);
  v92[34] = v74;
  v92[35] = v72;
  v92[36] = v73;
  v92[37] = 0;
  LOBYTE(v92[38]) = 0;
  *&v86 = v6;
  *(&v86 + 1) = v10;
  *&v87 = v16;
  BYTE14(v87) = BYTE6(v8);
  WORD6(v87) = WORD2(v8);
  DWORD2(v87) = v8;
  DiscoveryModel.update(withPeer:)(&v86);
  sub_240609C84(v6, v10);
  v18 = type metadata accessor for IdMSAccount();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v22 = v84;
  v20(v84, 1, 1, v18);
  v69 = v21;
  v70 = v20;
  v23 = v20;
  v74 = type metadata accessor for SetupModel();
  v24 = v75;
  v25 = v75 + *(v74 + 36);
  v26 = type metadata accessor for AuthenticationModel(0);
  v27 = v26[10];
  type metadata accessor for AuthenticationModel.State(0);
  swift_storeEnumTagMultiPayload();
  v23(v25, 1, 1, v18);
  v28 = (v25 + v26[5]);
  v28[3] = 0u;
  v28[4] = 0u;
  v28[1] = 0u;
  v28[2] = 0u;
  *v28 = 0u;
  v29 = v26[8];
  v30 = v24;
  v31 = (v25 + v26[7]);
  v32 = v26[9];
  v33 = (v25 + v26[11]);
  *v33 = 0;
  v33[1] = 0;
  sub_240590814(v22, v25);
  *(v25 + v26[6]) = 1;
  *v31 = 0;
  v31[1] = 0;
  *(v25 + v32) = 0;
  *(v25 + v29) = MEMORY[0x277D84F90];
  v34 = v22;
  v35 = v70;
  v70(v34, 1, 1, v18);
  v36 = *v2;
  v37 = *(v2 + 8);
  v76 = *(v2 + 16);
  LODWORD(v71) = *(v2 + 298);
  v38 = *(v2 + 288);
  v73 = *(v2 + 280);
  v68 = v38;
  LODWORD(v72) = *(v2 + 296);
  v40 = *(v2 + 24);
  v39 = *(v2 + 32);
  v63 = v37;
  v64 = v40;
  v66 = v36;
  v67 = v39;
  v41 = v30 + *(v74 + 40);
  v65 = *(v2 + 40);
  v35(v41, 1, 1, v18);
  v42 = type metadata accessor for SignInModel();
  v43 = (v41 + v42[5]);
  v43[4] = 0u;
  v43[5] = 0u;
  v43[2] = 0u;
  v43[3] = 0u;
  *v43 = 0u;
  v43[1] = 0u;
  v44 = v41 + v42[10];
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v74 = v41 + v42[11];
  *(v41 + v42[13]) = 0;
  v45 = (v41 + v42[14]);
  v69 = v42[15];
  v70 = v45;
  *(v41 + v69) = 2;
  v46 = (v41 + v42[17]);
  *v46 = 0;
  v46[1] = 0;
  *(v41 + v42[18]) = 0;

  v47 = v66;

  v48 = v40;
  v49 = v67;
  LOBYTE(v40) = v65;
  sub_240668CD4(v48, v67, v65);
  sub_240590814(v84, v41);
  v50 = v43[3];
  v88 = v43[2];
  v89 = v50;
  v51 = v43[5];
  v90 = v43[4];
  v91 = v51;
  v52 = v43[1];
  v86 = *v43;
  v87 = v52;
  sub_2405B8A50(&v86, &qword_27E4B8D00, &qword_2407691E0);
  *v43 = 0u;
  v43[1] = 0u;
  v43[2] = 0u;
  v43[3] = 0u;
  v43[4] = 0u;
  v43[5] = 0u;
  *(v41 + v42[6]) = v47;
  *(v41 + v42[7]) = v63;
  *(v41 + v42[8]) = v71;
  *(v41 + v42[9]) = v76;
  v53 = v69;
  v54 = v70;
  v55 = v68;
  *v70 = v73;
  *(v54 + 1) = v55;
  *(v41 + v53) = v72;
  v56 = v41 + v42[16];
  *v56 = v64;
  *(v56 + 8) = v49;
  *(v56 + 16) = v40;
  v57 = v41 + v42[19];
  *(v57 + 32) = 0u;
  *(v57 + 48) = 0u;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 64) = 0;
  *(v57 + 72) = 0xE000000000000000;
  *(v57 + 80) = 0;
  *(v57 + 88) = 0;
  *(v57 + 96) = 0;
  v58 = *(v44 + 16);
  v59 = *(v44 + 24);
  sub_240604C2C(*v44, *(v44 + 8));
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v60 = v74;
  *v74 = 0;
  *(v60 + 8) = 0;
  *(v41 + v42[12]) = 0;
  LOBYTE(v41) = *(v2 + 312);
  sub_240668E44(v2);
  *v30 = v83;
  v61 = v77;
  *(v30 + 8) = v79;
  *(v30 + 16) = v61;
  *(v30 + 24) = v82;
  *(v30 + 38) = v78;
  LODWORD(v61) = v81;
  *(v30 + 36) = v80;
  *(v30 + 32) = v61;
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0u;
  *(v30 + 88) = -1;
  result = memcpy((v30 + 96), v92, 0x131uLL);
  *(v30 + 39) = v41;
  return result;
}

void AISSetupContextRemoteRole.into(with:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      goto LABEL_16;
    }

    if (a2 != 1)
    {
      goto LABEL_17;
    }

    v6 = [a1 bleDevice];
    if (!v6)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v27 = sub_240759AE4();
      __swift_project_value_buffer(v27, qword_27E4B8518);
      v16 = sub_240759AC4();
      v25 = sub_24075A5E4();
      if (!os_log_type_enabled(v16, v25))
      {
        goto LABEL_35;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Failed to convert bleClient into RemoteRole: missing BLE Device on context";
LABEL_33:
      v20 = v25;
      v21 = v16;
      v22 = v18;
      v23 = 2;
LABEL_34:
      _os_log_impl(&dword_240579000, v21, v20, v19, v22, v23);
      MEMORY[0x245CC76B0](v18, -1, -1);
      goto LABEL_35;
    }

    v7 = v6;
    v8 = [v6 identifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_24075A0B4();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v28 = [v7 proximityServicePSM];
    v29 = [v7 nearbyActionType];
    v30 = [v7 nearbyActionFlags];
    AISDeviceClass.init(deviceClass:)([v7 nearbyActionDeviceClass]);
    v31 = v44;
    v32 = [v7 nearbyActionExtraData];
    if (v32)
    {
      v33 = v32;
      v34 = v30;
      v35 = v29;
      v36 = v28;
      v37 = v12;
      v38 = v10;
      v39 = sub_2407596C4();
      v41 = v40;

      v42 = sub_240665E94(v39, v41);
      v43 = v39;
      v10 = v38;
      v12 = v37;
      v28 = v36;
      v29 = v35;
      v30 = v34;
      v31 = v44;
      sub_2405BCD98(v43, v41);

      if ((v42 & 0x100) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    LOBYTE(v42) = 0;
LABEL_42:
    *a3 = v10;
    *(a3 + 8) = v12;
    *(a3 + 16) = v28 | (v29 << 32);
    *(a3 + 24) = v30;
    *(a3 + 30) = v42;
    v5 = v31 & 7;
    goto LABEL_43;
  }

  if (a2 == 2)
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 1;
LABEL_16:
    *(a3 + 30) = 0;
    *(a3 + 24) = 0;
    v5 = 192;
    goto LABEL_43;
  }

  if (a2 == 3)
  {
    v13 = [a1 messageSessionTemplate];
    if (v13)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = v13;
      *(a3 + 30) = 0;
      *(a3 + 24) = 0;
      v5 = 64;
      goto LABEL_43;
    }

    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v24 = sub_240759AE4();
    __swift_project_value_buffer(v24, qword_27E4B8518);
    v16 = sub_240759AC4();
    v25 = sub_24075A5E4();
    if (!os_log_type_enabled(v16, v25))
    {
LABEL_35:

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0xFFFF00FFFF0000;
      *(a3 + 30) = 0;
      *(a3 + 28) = 0;
      *(a3 + 24) = 0;
      return;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Failed to convert preEstablishedClient into RemoteRole: missing messageSessionTemplate on context";
    goto LABEL_33;
  }

  if (a2 != 4)
  {
LABEL_17:
    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v15 = sub_240759AE4();
    __swift_project_value_buffer(v15, qword_27E4B8518);
    v16 = sub_240759AC4();
    v17 = sub_24075A5E4();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_35;
    }

    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a2;
    v19 = "Failed to convert unknown AISSetupContextRemoteRole into RemoteRole: %lu";
    v20 = v17;
    v21 = v16;
    v22 = v18;
    v23 = 12;
    goto LABEL_34;
  }

  v4 = [a1 messageSessionTemplate];
  if (!v4)
  {
    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v26 = sub_240759AE4();
    __swift_project_value_buffer(v26, qword_27E4B8518);
    v16 = sub_240759AC4();
    v25 = sub_24075A5E4();
    if (!os_log_type_enabled(v16, v25))
    {
      goto LABEL_35;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Failed to convert preEstablishedServer into RemoteRole: missing messageSessionTemplate on context";
    goto LABEL_33;
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v4;
  *(a3 + 30) = 0;
  *(a3 + 24) = 0;
  v5 = 128;
LABEL_43:
  *(a3 + 28) = v5;
}

id AISSetupContextDeviceUserKind.into(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = [a1 shouldCreateDeviceUser];
  v6 = result ^ 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *a3 = xmmword_24075D8C0;
      v7 = 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      *a3 = v6;
      *(a3 + 8) = 0;
      v7 = 2;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a2)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      v7 = 3;
LABEL_10:
      *(a3 + 16) = v7;
      return result;
    }

    if (a2 == 1)
    {
      *a3 = v6;
      *(a3 + 8) = 0;
      v7 = 1;
      goto LABEL_10;
    }
  }

  result = sub_24075A9C4();
  __break(1u);
  return result;
}

uint64_t AISSetupContextDeviceUserKind.into(onlyPersona:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *a3 = xmmword_24075D8C0;
      goto LABEL_6;
    }

    if (a2 == 3)
    {
      *a3 = result & 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 2;
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
LABEL_6:
      *(a3 + 16) = 3;
      return result;
    }

    if (a2 == 1)
    {
      *a3 = result & 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
      return result;
    }
  }

  result = sub_24075A9C4();
  __break(1u);
  return result;
}

uint64_t sub_240665E94(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_2407596A4();
  v4 = 0;
  return v3 | (v4 << 8);
}

void sub_240665F1C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_240665F90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_240665FC0()
{
  result = qword_280FAD720;
  if (!qword_280FAD720)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FAD720);
  }

  return result;
}

void sub_240666018(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0xFFFFFF00FFFF0000) != 0xFFFF00FFFF0000 || (a4 & 0xF800000000) != 0)
  {
    sub_240604AB8(a1, a2, a3, a4);
  }
}

id sub_240666040(id result, id a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0xFFFFFF00FFFF0000) != 0xFFFF00FFFF0000 || (a4 & 0xF800000000) != 0)
  {
    return sub_240609C0C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_240666068(void *a1, int64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_24075AE64();
  if (a2 <= 1)
  {
    if (!a2)
    {
      v8 = 0;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      v8 = 1;
      goto LABEL_12;
    }

LABEL_42:
    MEMORY[0x245CC6BA0](4);
    sub_2405F115C(v22, a2);
    goto LABEL_13;
  }

  if (a2 == 2)
  {
    v8 = 2;
    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v8 = 3;
    goto LABEL_12;
  }

  if (a2 != 4)
  {
    goto LABEL_42;
  }

  v8 = 5;
LABEL_12:
  MEMORY[0x245CC6BA0](v8);
LABEL_13:
  v9 = sub_24075AED4();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_38:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v3;
    sub_240669184(a2);
    sub_240667120(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v22[0];
    *a1 = a2;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(v6 + 48);
    v14 = *(v13 + 8 * v11);
    if (v14 <= 1)
    {
      break;
    }

    switch(v14)
    {
      case 2:
        if (a2 == 2)
        {
          goto LABEL_39;
        }

        v15 = a2;
        v14 = 2;
        goto LABEL_33;
      case 3:
        if (a2 == 3)
        {
          goto LABEL_39;
        }

        v15 = a2;
        v14 = 3;
        goto LABEL_33;
      case 4:
        if (a2 == 4)
        {
          goto LABEL_39;
        }

        v15 = a2;
        v14 = 4;
        goto LABEL_33;
    }

LABEL_31:
    if (a2 < 5)
    {
      sub_240669184(a2);
      v15 = v14;
      goto LABEL_33;
    }

    sub_240669184(*(v13 + 8 * v11));
    sub_240669184(a2);
    sub_240669184(v14);
    v16 = sub_240753B98(v14, a2);
    sub_240669194(v14);
    sub_240669194(v14);
    sub_240669194(a2);
    if (v16)
    {
      v17 = a2;
      goto LABEL_40;
    }

LABEL_34:
    v11 = (v11 + 1) & v12;
    if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (v14)
  {
    if (v14 == 1)
    {
      if (a2 == 1)
      {
        goto LABEL_39;
      }

      v15 = a2;
      v14 = 1;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2)
  {
    v14 = 0;
    v15 = a2;
LABEL_33:
    sub_240669184(v15);
    sub_240669194(v14);
    sub_240669194(a2);
    goto LABEL_34;
  }

LABEL_39:
  sub_240669194(*(v13 + 8 * v11));
  v17 = v14;
LABEL_40:
  sub_240669194(v17);
  v21 = *(*(v6 + 48) + 8 * v11);
  *a1 = v21;
  sub_240669184(v21);
  return 0;
}

uint64_t sub_240666310(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v8 = sub_24075AED4();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_24075A0B4();
      v15 = v14;
      if (v13 == sub_24075A0B4() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_24075ACF4();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_2406673F8(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_2406664BC(_OWORD *a1, unint64_t *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24075AE64();
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[10];
  sub_24075A114();
  v38 = v2;
  if (v9 <= 1)
  {
    if (!v9)
    {
      v10 = 0;
      goto LABEL_12;
    }

    if (v9 == 1)
    {
      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v9)
    {
      case 2:
        v10 = 2;
        goto LABEL_12;
      case 3:
        v10 = 3;
        goto LABEL_12;
      case 4:
        v10 = 5;
LABEL_12:
        MEMORY[0x245CC6BA0](v10);
        goto LABEL_13;
    }
  }

  MEMORY[0x245CC6BA0](4);
  sub_2405F115C(v44, v9);
LABEL_13:
  v39 = a2;
  v40 = *(a2 + 88);
  sub_24075AE94();
  v11 = sub_24075AED4();
  v12 = -1 << *(v5 + 32);
  v13 = v11 & ~v12;
  if ((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    do
    {
      v16 = (*(v5 + 48) + 96 * v13);
      v17 = v16[1];
      v44[0] = *v16;
      v44[1] = v17;
      v19 = v16[3];
      v18 = v16[4];
      v20 = v16[2];
      *&v45[9] = *(v16 + 73);
      v44[3] = v19;
      *v45 = v18;
      v44[2] = v20;
      if (v44[0] != __PAIR128__(v8, v7) && (sub_24075ACF4() & 1) == 0)
      {
        goto LABEL_17;
      }

      v21 = *&v45[16];
      if (*&v45[16] <= 1)
      {
        if (!*&v45[16])
        {
          if (v9)
          {
            sub_240669184(v9);
            v15 = 0;
            goto LABEL_16;
          }

LABEL_36:
          sub_2405F1048(v44, v42);
          sub_240669194(v21);
          sub_240669194(v21);
          goto LABEL_37;
        }

        if (*&v45[16] == 1)
        {
          if (v9 != 1)
          {
            sub_240669184(v9);
            v15 = 1;
            goto LABEL_16;
          }

          goto LABEL_36;
        }
      }

      else
      {
        switch(*&v45[16])
        {
          case 2:
            if (v9 != 2)
            {
              sub_240669184(v9);
              v15 = 2;
LABEL_16:
              sub_240669194(v15);
              sub_240669194(v9);
              goto LABEL_17;
            }

            goto LABEL_36;
          case 3:
            if (v9 != 3)
            {
              sub_240669184(v9);
              v15 = 3;
              goto LABEL_16;
            }

            goto LABEL_36;
          case 4:
            if (v9 != 4)
            {
              sub_240669184(v9);
              v15 = 4;
              goto LABEL_16;
            }

            goto LABEL_36;
        }
      }

      if (v9 < 5)
      {
        sub_240669184(v9);
        sub_240669184(v21);
        v15 = v21;
        goto LABEL_16;
      }

      sub_2405F1048(v44, v42);
      sub_240669184(v9);
      sub_240669184(v21);
      v23 = sub_240753B98(v21, v9);
      sub_240669194(v21);
      sub_240669194(v9);
      if ((v23 & 1) == 0)
      {
        sub_2405F10A4(v44);
        goto LABEL_17;
      }

LABEL_37:
      v22 = v45[24];
      sub_2405F10A4(v44);
      if (v22 == v40)
      {
        sub_2405F10A4(v39);
        v28 = (*(v5 + 48) + 96 * v13);
        v29 = v28[2];
        v30 = v28[3];
        v31 = v28[4];
        *(v43 + 9) = *(v28 + 73);
        v42[3] = v30;
        v43[0] = v31;
        v32 = v28[1];
        v42[0] = *v28;
        v42[1] = v32;
        v42[2] = v29;
        v33 = v28[1];
        *a1 = *v28;
        a1[1] = v33;
        v34 = v28[2];
        v35 = v28[3];
        v36 = v28[4];
        *(a1 + 73) = *(v28 + 73);
        a1[3] = v35;
        a1[4] = v36;
        a1[2] = v34;
        sub_2405F1048(v42, v41);
        return 0;
      }

LABEL_17:
      v13 = (v13 + 1) & v14;
    }

    while (((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v24 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42[0] = *v38;
  sub_2405F1048(v39, v44);
  sub_2406675E0(v39, v13, isUniquelyReferenced_nonNull_native);
  *v38 = *&v42[0];
  v26 = *(v39 + 3);
  a1[2] = *(v39 + 2);
  a1[3] = v26;
  a1[4] = *(v39 + 4);
  *(a1 + 73) = *(v39 + 73);
  v27 = *(v39 + 1);
  result = 1;
  *a1 = *v39;
  a1[1] = v27;
  return result;
}