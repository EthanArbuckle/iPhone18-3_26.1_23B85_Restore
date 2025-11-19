uint64_t sub_238B45294()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  v13 = *(v0 + 72);
  v14 = *(v0 + 64);

  v10 = *(v0 + 8);
  v11 = *(v0 + 248);

  return v10();
}

uint64_t sub_238B4538C(uint64_t a1)
{
  v3 = v1;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v5 = sub_238B6C6A4();
  __swift_project_value_buffer(v5, qword_280B61330);
  v6 = sub_238B6C684();
  v7 = sub_238B6CA44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_238B2C000, v6, v7, "Handling incoming RequestCellularServicesMessage", v8, 2u);
    MEMORY[0x23EE73110](v8, -1, -1);
  }

  result = sub_238B45AD8(a1, &qword_27DF5FD60, &qword_238B6F780);
  if (!v2)
  {
    v10 = v3[6];
    v11 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v10);
    return (*(v11 + 16))(v10, v11);
  }

  return result;
}

uint64_t ConversationDialingService.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ConversationDialingService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_238B45538(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B37F2C;

  return sub_238B43EBC(a1);
}

uint64_t sub_238B455E8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_238B4566C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD80, &qword_238B6F7A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  sub_238B6C714();
  if (v32 == 2 || (v32 & 1) == 0)
  {
    if (qword_280B60640 != -1)
    {
      swift_once();
    }

    v21 = sub_238B6C6A4();
    __swift_project_value_buffer(v21, qword_280B61330);
    (*(v3 + 16))(v7, a1, v2);
    v22 = sub_238B6C684();
    v23 = sub_238B6CA44();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      v26 = sub_238B6C704();
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0x6C646E7562206F6ELL;
      }

      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xEC00000044492065;
      }

      (*(v3 + 8))(v7, v2);
      v30 = sub_238B33240(v28, v29, &v32);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_238B2C000, v22, v23, "Rejecting connection from unentitled process %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x23EE73110](v25, -1, -1);
      MEMORY[0x23EE73110](v24, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    return 0;
  }

  else
  {
    if (qword_280B60640 != -1)
    {
      swift_once();
    }

    v10 = sub_238B6C6A4();
    __swift_project_value_buffer(v10, qword_280B61330);
    (*(v3 + 16))(v9, a1, v2);
    v11 = sub_238B6C684();
    v12 = sub_238B6CA44();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136315138;
      v15 = sub_238B6C704();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0x6C646E7562206F6ELL;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xEC00000044492065;
      }

      (*(v3 + 8))(v9, v2);
      v19 = sub_238B33240(v17, v18, &v32);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_238B2C000, v11, v12, "Accepting incoming XPC connection request %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x23EE73110](v14, -1, -1);
      MEMORY[0x23EE73110](v13, -1, -1);

      return 1;
    }

    else
    {

      (*(v3 + 8))(v9, v2);
      return 1;
    }
  }
}

uint64_t sub_238B45AD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v5 = sub_238B6C6A4();
  __swift_project_value_buffer(v5, qword_280B61330);
  v6 = sub_238B6C684();
  v7 = sub_238B6CA44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_238B33240(0xD000000000000014, 0x8000000238B737E0, &v32);
    _os_log_impl(&dword_238B2C000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x23EE73110](v9, -1, -1);
    MEMORY[0x23EE73110](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = sub_238B6C6C4();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = _s20LiveCommunicationKit11DefaultAppsV25defaultDialingAppBundleIDSSSgvgZ_0();
    if (v15)
    {
      v16 = v15;
      if (v14 == v12 && v15 == v13 || (v17 = v14, (sub_238B6CDF4() & 1) != 0))
      {
      }

      v25 = sub_238B6C684();
      v26 = sub_238B6CA44();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136446466;
        v29 = sub_238B33240(v12, v13, &v32);

        *(v27 + 4) = v29;
        *(v27 + 12) = 2082;
        v30 = sub_238B33240(v17, v16, &v32);

        *(v27 + 14) = v30;
        _os_log_impl(&dword_238B2C000, v25, v26, "Rejecting %{public}s because it is not the default dialer (default dialer: %{public}s)", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE73110](v28, -1, -1);
        MEMORY[0x23EE73110](v27, -1, -1);
      }

      else
      {
      }

      v19 = 1;
    }

    else
    {

      v20 = sub_238B6C684();
      v21 = sub_238B6CA44();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32 = v23;
        *v22 = 136446210;
        v24 = sub_238B33240(v12, v13, &v32);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_238B2C000, v20, v21, "Rejecting %{public}s because no default dialer is set!", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x23EE73110](v23, -1, -1);
        MEMORY[0x23EE73110](v22, -1, -1);
      }

      else
      {
      }

      v19 = 2;
    }
  }

  else
  {
    v19 = 0;
  }

  sub_238B45EE4();
  swift_allocError();
  *v31 = v19;
  return swift_willThrow();
}

unint64_t sub_238B45EE4()
{
  result = qword_27DF5FD68;
  if (!qword_27DF5FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD68);
  }

  return result;
}

uint64_t sub_238B45F38(uint64_t a1)
{
  started = type metadata accessor for StartCellularConversationAction();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_238B45F94(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartCellularConversationAction();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_238B45FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD70, &qword_238B6F790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CellularService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238B6C574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CellularService.label.getter()
{
  v1 = (v0 + *(type metadata accessor for CellularService() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for CellularService()
{
  result = qword_280B608D8;
  if (!qword_280B608D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CellularService.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_238B6C574();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CellularService();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static CellularService.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CellularService() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_238B6CDF4();
}

uint64_t sub_238B46260()
{
  if (*v0)
  {
    result = 0x6C6562616CLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_238B4628C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_238B6CDF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238B6CDF4();

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

uint64_t sub_238B4635C(uint64_t a1)
{
  v2 = sub_238B46590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B46398(uint64_t a1)
{
  v2 = sub_238B46590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CellularService.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD88, &qword_238B6F7B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B46590();
  sub_238B6CEC4();
  v15[15] = 0;
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9C8, MEMORY[0x277CC95F0]);
  sub_238B6CDB4();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for CellularService() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_238B6CD84();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_238B46590()
{
  result = qword_27DF5FD90;
  if (!qword_27DF5FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD90);
  }

  return result;
}

uint64_t CellularService.hash(into:)()
{
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  sub_238B6C814();
  v1 = (v0 + *(type metadata accessor for CellularService() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_238B6C8D4();
}

uint64_t CellularService.hashValue.getter()
{
  sub_238B6CE64();
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  sub_238B6C814();
  v1 = (v0 + *(type metadata accessor for CellularService() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t CellularService.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_238B6C574();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD98, &qword_238B6F7B8);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for CellularService();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B46590();
  sub_238B6CEB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_238B46DC0(&qword_27DF5FA00, MEMORY[0x277CC95F0]);
  v18 = v30;
  sub_238B6CD44();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_238B6CD14();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_238B46C70(v23, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_238B46CD4(v23);
}

uint64_t sub_238B46A88(uint64_t a1)
{
  sub_238B6CE64();
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  sub_238B6C814();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B46B30(uint64_t a1, uint64_t a2)
{
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  sub_238B6C814();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_238B6C8D4();
}

uint64_t sub_238B46BCC(uint64_t a1, uint64_t a2)
{
  sub_238B6CE64();
  sub_238B6C574();
  sub_238B46DC0(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  sub_238B6C814();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B46C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellularService();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B46CD4(uint64_t a1)
{
  v2 = type metadata accessor for CellularService();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B46DC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238B46E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_238B6CDF4();
}

uint64_t sub_238B46EB8()
{
  result = sub_238B6C574();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238B46F40()
{
  result = qword_27DF5FDA8;
  if (!qword_27DF5FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDA8);
  }

  return result;
}

unint64_t sub_238B46F98()
{
  result = qword_27DF5FDB0;
  if (!qword_27DF5FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDB0);
  }

  return result;
}

unint64_t sub_238B46FF0()
{
  result = qword_27DF5FDB8;
  if (!qword_27DF5FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDB8);
  }

  return result;
}

uint64_t dispatch thunk of CellularConversationDialing.startCellularConversation(with:bundleID:trusted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_238B37F2C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_238B471A0()
{
  type metadata accessor for TelephonyConversationManager();
  v0 = swift_allocObject();
  type metadata accessor for ConversationDialingClient();
  v1 = swift_allocObject();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FDC8, &qword_238B6FA80);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_238B6C7C4();
  swift_allocObject();
  swift_weakInit();

  sub_238B6C784();

  *(v0 + 16) = v1;
  qword_27DF5FDC0 = v0;
  return result;
}

uint64_t static TelephonyConversationManager.sharedInstance.getter()
{
  if (qword_27DF5F6B0 != -1)
  {
    swift_once();
  }
}

uint64_t TelephonyConversationManager.startCellularConversation(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238B47330, 0, 0);
}

uint64_t sub_238B47330()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_238B473CC;
  v3 = v0[2];

  return sub_238B4258C(v3);
}

uint64_t sub_238B473CC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t TelephonyConversationManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TelephonyConversationManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t Conversation.State.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_238B47640()
{
  result = qword_27DF5FDD0;
  if (!qword_27DF5FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDD0);
  }

  return result;
}

unint64_t sub_238B476A4()
{
  result = qword_27DF5FDD8;
  if (!qword_27DF5FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDD8);
  }

  return result;
}

uint64_t StartConversationAction.__allocating_init(conversationUUID:handles:isVideo:)(char *a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  StartConversationAction.init(conversationUUID:handles:isVideo:)(a1, a2, a3);
  return v9;
}

_BYTE *StartConversationAction.init(conversationUUID:handles:isVideo:)(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v47 = a1;
  v7 = sub_238B6C534();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238B6C574();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v40 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_handles] = a2;
  v43 = a3;
  v4[OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_isVideo] = a3;
  v14 = *(a2 + 16);
  v45 = v8;
  v46 = v7;
  if (v14)
  {
    v39 = v4;
    v48 = MEMORY[0x277D84F90];

    sub_238B6CC24();
    v38[1] = a2;
    v15 = (a2 + 64);
    do
    {
      v16 = *(v15 - 32);
      v17 = *(v15 - 3);
      v18 = *(v15 - 2);
      v20 = *(v15 - 1);
      v19 = *v15;
      v21 = objc_allocWithZone(MEMORY[0x277CBAFC8]);
      v22 = sub_238B6C844();
      v23 = [v21 initWithType:v16 + 1 value:v22];

      v24 = sub_238B6C844();
      [v23 setSiriDisplayName_];

      sub_238B6CC04();
      v25 = *(v48 + 16);
      sub_238B6CC34();
      sub_238B6CC44();
      sub_238B6CC14();
      v15 += 5;
      --v14;
    }

    while (v14);

    v4 = v39;
  }

  v27 = v40;
  v26 = v41;
  v39 = *(v41 + 16);
  v28 = v42;
  (v39)(v40, v47, v42);
  v29 = objc_allocWithZone(MEMORY[0x277CBB018]);
  v30 = sub_238B6C544();
  sub_238B47B40();
  v31 = sub_238B6C934();

  v32 = [v29 initWithCallUUID:v30 handles:v31];

  v33 = *(v26 + 8);
  v33(v27, v28);
  [v32 setVideo_];
  v34 = v47;
  (v39)(v27, v47, v28);
  v35 = v44;
  sub_238B6C504();
  v33(v34, v28);
  *&v4[OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction] = v32;
  (*(v26 + 32))(&v4[OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID], v27, v28);
  v36 = &v4[OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state];
  *v36 = 0;
  v36[1] = 0;
  (*(v45 + 32))(&v4[OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate], v35, v46);
  return v4;
}

unint64_t sub_238B47B40()
{
  result = qword_27DF5FDE0;
  if (!qword_27DF5FDE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF5FDE0);
  }

  return result;
}

char *sub_238B47B8C(void *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238B6C574();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 handles];
  sub_238B47B40();
  v15 = sub_238B6C944();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_16:

    v19 = MEMORY[0x277D84F90];
LABEL_17:
    *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_handles) = v19;
    v35 = [a1 isVideo];
    *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_isVideo) = v35;
    v36 = [a1 callUUID];
    sub_238B6C564();

    sub_238B6C504();
    *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
    (*(v10 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v13, v9);
    v37 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
    *v37 = 0;
    v37[1] = 0;
    (*(v5 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v8, v4);
    return v2;
  }

  v16 = sub_238B6CB24();
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_3:
  v48 = v16;
  v49 = MEMORY[0x277D84F90];
  result = sub_238B5FB98(0, v16 & ~(v16 >> 63), 0);
  if ((v48 & 0x8000000000000000) == 0)
  {
    v38 = v13;
    v39 = v10;
    v40 = v9;
    v41 = v8;
    v42 = a1;
    v43 = v5;
    v44 = v4;
    v45 = v2;
    v18 = 0;
    v46 = v15 & 0xC000000000000001;
    v47 = v15;
    v19 = v49;
    do
    {
      if (v46)
      {
        v20 = MEMORY[0x23EE72780](v18, v47);
      }

      else
      {
        v20 = *(v47 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v20 value];
      v23 = sub_238B6C864();
      v25 = v24;

      v26 = [v21 type];
      if (v26 == 3)
      {
        v27 = 2;
      }

      else
      {
        v27 = v26 == 2;
      }

      v28 = [v21 value];
      v29 = sub_238B6C864();
      v31 = v30;

      v49 = v19;
      v33 = *(v19 + 16);
      v32 = *(v19 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_238B5FB98((v32 > 1), v33 + 1, 1);
        v19 = v49;
      }

      *(v19 + 16) = v33 + 1;
      v34 = v19 + 40 * v33;
      *(v34 + 32) = v27;
      ++v18;
      *(v34 + 40) = v23;
      *(v34 + 48) = v25;
      *(v34 + 56) = v29;
      *(v34 + 64) = v31;
    }

    while (v48 != v18);

    v4 = v44;
    v2 = v45;
    a1 = v42;
    v5 = v43;
    v9 = v40;
    v8 = v41;
    v13 = v38;
    v10 = v39;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void StartConversationAction.fulfill(dateStarted:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_238B6C534();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v10 = sub_238B6C6A4();
  __swift_project_value_buffer(v10, qword_27DF60710);
  (*(v6 + 16))(v9, a1, v5);

  v11 = sub_238B6C684();
  v12 = sub_238B6CA44();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26[1] = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26[2] = v1;
    v27 = v15;
    *v14 = 136315394;

    v16 = sub_238B6C8B4();
    v18 = sub_238B33240(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_238B484E0();
    v19 = sub_238B6CDD4();
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = sub_238B33240(v19, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_238B2C000, v11, v12, "Fulfilling action %s with dateStarted %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v15, -1, -1);
    MEMORY[0x23EE73110](v14, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v23 = *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  v25 = sub_238B6C4F4();
  [v24 fulfillWithDateStarted_];
}

uint64_t StartConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_handles);

  return v0;
}

uint64_t StartConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit23StartConversationAction_handles);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_238B484E0()
{
  result = qword_27DF5FDE8;
  if (!qword_27DF5FDE8)
  {
    sub_238B6C534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FDE8);
  }

  return result;
}

uint64_t type metadata accessor for StartConversationAction()
{
  result = qword_27DF5FDF0;
  if (!qword_27DF5FDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MergeConversationAction.conversationUUIDToMergeWith.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith;
  v4 = sub_238B6C574();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MergeConversationAction.__allocating_init(conversationUUID:conversationUUIDToMergeWith:)(char *a1, char *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  MergeConversationAction.init(conversationUUID:conversationUUIDToMergeWith:)(a1, a2);
  return v7;
}

uint64_t MergeConversationAction.init(conversationUUID:conversationUUIDToMergeWith:)(char *a1, char *a2)
{
  v4 = sub_238B6C534();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_238B6C574();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(v12 + 16);
  v31 = a1;
  v19(&v29 - v17, a1, v11);
  v20 = a2;
  v19(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v21 = sub_238B6C544();
  v22 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v22 = sub_238B6C544();
    (*(v12 + 8))(v10, v11);
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CBAFF8]) initWithCallUUID:v21 callUUIDToGroupWith:v22];

  v23 = *(v12 + 8);
  v23(v18, v11);
  v24 = v30;
  v19((v30 + OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith), v20, v11);
  v25 = v31;
  v19(v16, v31, v11);
  v26 = v32;
  sub_238B6C504();
  v23(v20, v11);
  v23(v25, v11);
  *(v24 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v29;
  (*(v12 + 32))(v24 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v16, v11);
  v27 = (v24 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v27 = 0;
  v27[1] = 0;
  (*(v33 + 32))(v24 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v26, v34);
  return v24;
}

uint64_t sub_238B48A80(void *a1, uint64_t a2)
{
  v5 = sub_238B6C534();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238B6C574();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith, a2, v10);
  v15 = [a1 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  (*(v11 + 8))(a2, v10);
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v11 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v14, v10);
  v16 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v16 = 0;
  v16[1] = 0;
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v9, v5);
  return v2;
}

uint64_t sub_238B48CD8()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith;
  v2 = sub_238B6C574();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t MergeConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v4 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v5 = sub_238B6C534();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v3(v0 + OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith, v2);
  return v0;
}

uint64_t MergeConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v4 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v5 = sub_238B6C534();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v3(v0 + OBJC_IVAR____TtC20LiveCommunicationKit23MergeConversationAction_conversationUUIDToMergeWith, v2);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MergeConversationAction()
{
  result = qword_27DF5FE00;
  if (!qword_27DF5FE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B48FD8()
{
  result = sub_238B6C574();
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

uint64_t ShareIdentityConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ShareIdentityConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShareIdentityConversationAction()
{
  result = qword_27DF5FE10;
  if (!qword_27DF5FE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationManager.conversations.getter()
{
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C634();

  v1 = *(v0 + 24);
}

uint64_t sub_238B493F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C634();

  *a2 = *(v3 + 24);
}

uint64_t type metadata accessor for ConversationManager()
{
  result = qword_27DF5FE58;
  if (!qword_27DF5FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationManager.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t ConversationManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_238B49638;
}

void sub_238B49638(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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

uint64_t sub_238B496BC()
{
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_238B49774@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_238B49834(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C624();
}

uint64_t sub_238B498F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;
}

uint64_t sub_238B49958()
{
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_238B49A10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_238B49AD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
}

uint64_t ConversationManager.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v9 = *(v1 + 128);
  v10 = v2;
  v11 = *(v1 + 160);
  v3 = v11;
  v4 = *(v1 + 112);
  v8[0] = *(v1 + 96);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_238B49B84(v8, v7);
}

uint64_t ConversationManager.pendingActions.getter()
{
  v1 = v0;
  v29 = sub_238B6C574();
  v2 = *(v29 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + 64) pendingTransactions];
  sub_238B31CE4(0, &qword_27DF5FE30, 0x277CBB020);
  v7 = sub_238B6C944();

  v8 = sub_238B49F64(v7);

  v32 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
LABEL_25:
    v30 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = sub_238B6CB24();
  }

  else
  {
    v30 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = OBJC_IVAR____TtC20LiveCommunicationKit19ConversationManager___observationRegistrar;
  swift_beginAccess();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v10 = 0;
  v27 = v8 & 0xC000000000000001;
  v11 = MEMORY[0x277D84F90];
  v12 = (v2 + 1);
  do
  {
    v26 = v11;
    v13 = v10;
    while (1)
    {
      if (v27)
      {
        v14 = MEMORY[0x23EE72780](v13, v8);
      }

      else
      {
        if (v13 >= *(v30 + 16))
        {
          goto LABEL_24;
        }

        v14 = *(v8 + 8 * v13 + 32);
      }

      v15 = v14;
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v16 = v8;
      v17 = [v14 UUID];
      sub_238B6C564();

      swift_getKeyPath();
      v31 = v1;
      sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
      sub_238B6C634();

      v2 = *(v1 + 88);
      if (v2[2])
      {
        break;
      }

LABEL_7:

      (*v12)(v5, v29);
      ++v13;
      if (v10 == v9)
      {
        v11 = v26;
        goto LABEL_22;
      }
    }

    v18 = *(v1 + 88);

    v19 = sub_238B4DF9C(v5);
    if ((v20 & 1) == 0)
    {

      goto LABEL_7;
    }

    v21 = *(v2[7] + 8 * v19);

    (*v12)(v5, v29);

    v2 = &v32;
    MEMORY[0x23EE724F0](v22);
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_238B6C964();
    }

    sub_238B6C974();
    v11 = v32;
    v8 = v16;
  }

  while (v10 != v9);
LABEL_22:

  return v11;
}

unint64_t sub_238B49F64(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x23EE72780](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject actions];
      sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
      v7 = sub_238B6C944();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_238B6CB24();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_238B6CB24();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = v3;
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_238B6CB24();
          goto LABEL_22;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_238B6CBC4();
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_238B6CB24();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v33)
          {
            goto LABEL_44;
          }

          v17 = v12 + 8 * v14 + 32;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_238B4FC10();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE98, &qword_238B6FDF8);
              v19 = sub_238B4EC0C(v32, i, v7);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v12 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v12 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      v3 = v31;
      if (v33 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_238B6CB24();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

id ConversationManager.__allocating_init(configuration:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v1;
  LOBYTE(v7) = *(a1 + 64);
  v2 = *(a1 + 16);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    return sub_238B4EC94(&v4, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_238B4A33C(unint64_t a1)
{
  v2 = v1;
  v33 = *(v1 + 16);
  v4 = *(v33 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_238B4FB78((v4 + 16), v34);
  os_unfair_lock_unlock((v4 + 24));
  v5 = v34[0];
  if (qword_27DF5F6A0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v6 = sub_238B6C6A4();
    __swift_project_value_buffer(v6, qword_27DF60710);
    v7 = a1;

    v8 = sub_238B6C684();
    v9 = sub_238B6CA44();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v34[0] = v11;
      *v10 = 136315394;
      v35[0] = v7;
      sub_238B31CE4(0, &qword_27DF5FE78, 0x277CBAF48);
      v12 = v7;
      v13 = sub_238B6C8B4();
      v15 = sub_238B33240(v13, v14, v34);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v35[0] = v5;
      type metadata accessor for Conversation(0);

      v16 = sub_238B6C8B4();
      v18 = sub_238B33240(v16, v17, v34);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_238B2C000, v8, v9, "Call changed %s %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE73110](v11, -1, -1);
      MEMORY[0x23EE73110](v10, -1, -1);
    }

    v19 = [*(v2 + 48) callObserver];
    v20 = [v19 calls];

    sub_238B31CE4(0, &qword_27DF5FE78, 0x277CBAF48);
    a1 = sub_238B6C944();

    if (a1 >> 62)
    {
      break;
    }

    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_19;
    }

LABEL_6:
    v34[0] = MEMORY[0x277D84F90];
    result = sub_238B6CC24();
    if (v21 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = v5;
    v32 = v2;
    v23 = 0;
    v2 = a1 & 0xC000000000000001;
    while (1)
    {
      v5 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v2)
      {
        v24 = MEMORY[0x23EE72780](v23, a1);
      }

      else
      {
        if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v24 = *(a1 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = *(v33 + 16);
      MEMORY[0x28223BE20](v24);
      os_unfair_lock_lock((v26 + 24));
      sub_238B4FCC0((v26 + 16), v35);
      os_unfair_lock_unlock((v26 + 24));

      sub_238B6CC04();
      v27 = *(v34[0] + 16);
      sub_238B6CC34();
      sub_238B6CC44();
      sub_238B6CC14();
      ++v23;
      if (v5 == v21)
      {

        v5 = v31;
        v2 = v32;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  v21 = sub_238B6CB24();
  if (v21)
  {
    goto LABEL_6;
  }

LABEL_19:

LABEL_20:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v34[0] = v2;
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C624();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v29 + 8))(v2, v5, ObjectType, v29);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_238B4A848()
{
  v1 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_27DF60710);
  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_238B33240(0xD000000000000013, 0x8000000238B73E10, &v10);
    _os_log_impl(&dword_238B2C000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x23EE73110](v6, -1, -1);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(v1, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_238B4A9E0()
{
  v1 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_27DF60710);
  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_238B33240(0xD000000000000013, 0x8000000238B73DF0, &v10);
    _os_log_impl(&dword_238B2C000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x23EE73110](v6, -1, -1);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v1, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_238B4AB78(uint64_t a1)
{
  v2 = v1;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v4 = sub_238B6C6A4();
  __swift_project_value_buffer(v4, qword_27DF60710);
  v5 = sub_238B6C684();
  v6 = sub_238B6CA44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_238B33240(0xD000000000000024, 0x8000000238B73DC0, &v12);
    _os_log_impl(&dword_238B2C000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23EE73110](v8, -1, -1);
    MEMORY[0x23EE73110](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 48))(v2, a1, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_238B4AD18(uint64_t a1)
{
  v2 = v1;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v4 = sub_238B6C6A4();
  __swift_project_value_buffer(v4, qword_27DF60710);
  v5 = sub_238B6C684();
  v6 = sub_238B6CA44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_238B33240(0xD000000000000026, 0x8000000238B73D90, &v12);
    _os_log_impl(&dword_238B2C000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23EE73110](v8, -1, -1);
    MEMORY[0x23EE73110](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 56))(v2, a1, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_238B4AEB8(void *a1)
{
  v2 = v1;
  v4 = sub_238B6C574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v9 = sub_238B6C6A4();
  __swift_project_value_buffer(v9, qword_27DF60710);
  v10 = a1;
  v11 = sub_238B6C684();
  v12 = sub_238B6CA44();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v43 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v42 = v5;
    v16 = v15;
    v45[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_238B33240(0xD000000000000025, 0x8000000238B73D60, v45);
    *(v14 + 12) = 2080;
    v44[0] = v10;
    sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
    v17 = v10;
    v18 = sub_238B6C8B4();
    v20 = sub_238B33240(v18, v19, v45);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_238B2C000, v11, v12, "%s %s", v14, 0x16u);
    swift_arrayDestroy();
    v21 = v16;
    v5 = v42;
    MEMORY[0x23EE73110](v21, -1, -1);
    v22 = v14;
    v4 = v43;
    MEMORY[0x23EE73110](v22, -1, -1);
  }

  v23 = [v10 UUID];
  sub_238B6C564();

  swift_getKeyPath();
  v45[0] = v2;
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  sub_238B6C634();

  swift_beginAccess();
  v24 = *(v2 + 88);
  if (*(v24 + 16))
  {
    v25 = *(v2 + 88);

    v26 = sub_238B4DF9C(v8);
    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v26);
      v29 = *(v5 + 8);

      v29(v8, v4);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v2 + 40);
        ObjectType = swift_getObjectType();
        (*(v30 + 40))(v2, v28, ObjectType, v30);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  (*(v5 + 8))(v8, v4);
  v32 = v10;
  v33 = sub_238B6C684();
  v34 = sub_238B6CA34();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44[0] = v36;
    *v35 = 136315138;
    v44[3] = v32;
    sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
    v37 = v32;
    v38 = sub_238B6C8B4();
    v40 = sub_238B33240(v38, v39, v44);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_238B2C000, v33, v34, "Timed out performing unknown action %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x23EE73110](v36, -1, -1);
    MEMORY[0x23EE73110](v35, -1, -1);
  }
}

uint64_t sub_238B4B390(void *a1)
{
  v2 = sub_238B6C534();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238B6C574();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = [a1 callUUIDToGroupWith];
  if (v18)
  {
    v19 = v18;
    sub_238B6C564();

    (*(v8 + 32))(v17, v15, v7);
    (*(v8 + 16))(v12, v17, v7);
    v20 = type metadata accessor for MergeConversationAction();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = a1;
    v24 = sub_238B48A80(v23, v12);
    sub_238B4DB2C(v24, v23);

    return (*(v8 + 8))(v17, v7);
  }

  else
  {
    v26 = type metadata accessor for UnmergeConversationAction();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    v30 = a1;
    v31 = [v30 callUUID];
    sub_238B6C564();

    sub_238B6C504();
    *(v29 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v30;
    (*(v8 + 32))(v29 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v12, v7);
    v32 = (v29 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
    *v32 = 0;
    v32[1] = 0;
    (*(v3 + 32))(v29 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v6, v2);
    sub_238B4DB2C(v29, v30);
  }
}

uint64_t sub_238B4B6C8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a5;
  v7 = sub_238B6C534();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238B6C574();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = a1;
  v22 = [v21 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  *(v20 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v21;
  (*(v13 + 32))(v20 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v16, v12);
  v23 = (v20 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v23 = 0;
  v23[1] = 0;
  (*(v8 + 32))(v20 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v11, v7);
  sub_238B4DB2C(v20, v21);
}

uint64_t sub_238B4B8F4(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a3(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;
  v10 = a4();
  sub_238B4DB2C(v10, v9);
}

uint64_t ConversationManager.perform(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B4BA68, 0, 0);
}

uint64_t sub_238B4BA68()
{
  v36 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_27DF60710);

  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    v8 = type metadata accessor for ConversationAction();
    v9 = MEMORY[0x23EE72520](v5, v8);
    v11 = sub_238B33240(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_238B2C000, v3, v4, "Performing actions %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x23EE73110](v7, -1, -1);
    MEMORY[0x23EE73110](v6, -1, -1);
  }

  v12 = v0[18];
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v32 = v0[18];
    }

    v13 = sub_238B6CB24();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v35 = MEMORY[0x277D84F90];
    v14 = sub_238B6CC24();
    if (v13 < 0)
    {
      __break(1u);
      return MEMORY[0x282200938](v14);
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        v16 = v0[18];
        v17 = v15 + 1;
        v18 = *(MEMORY[0x23EE72780]() + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction);
        swift_unknownObjectRelease();
        sub_238B6CC04();
        v19 = v35[2];
        sub_238B6CC34();
        sub_238B6CC44();
        sub_238B6CC14();
        v15 = v17;
      }

      while (v13 != v17);
    }

    else
    {
      v20 = (v0[18] + 32);
      do
      {
        v21 = *v20++;
        v22 = *(v21 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction);
        sub_238B6CC04();
        v23 = v35[2];
        sub_238B6CC34();
        sub_238B6CC44();
        sub_238B6CC14();
        --v13;
      }

      while (v13);
    }
  }

  v25 = v0[21];
  v24 = v0[22];
  v27 = v0[19];
  v26 = v0[20];
  v28 = objc_allocWithZone(MEMORY[0x277CBB020]);
  sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
  v29 = sub_238B6C934();

  v30 = [v28 initWithActions_];
  v0[23] = v30;

  v34 = *(v27 + 48);
  v0[2] = v0;
  v0[3] = sub_238B4BEE0;
  swift_continuation_init();
  v0[17] = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE48, &qword_238B6FCB0);
  sub_238B6C9A4();
  (*(v25 + 32))(boxed_opaque_existential_0, v24, v26);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238B4C0D8;
  v0[13] = &block_descriptor;
  [v34 requestTransaction:v30 completion:v0 + 10];
  (*(v25 + 8))(boxed_opaque_existential_0, v26);
  v14 = (v0 + 2);

  return MEMORY[0x282200938](v14);
}

uint64_t sub_238B4BEE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_238B4C05C;
  }

  else
  {
    v3 = sub_238B4BFF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238B4BFF0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238B4C05C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

void sub_238B4C0D8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
    sub_238B6C9B4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
    sub_238B6C9C4();
  }
}

uint64_t ConversationManager.reportNewIncomingConversation(uuid:update:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 496) = a1;
  *(v3 + 504) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
  *(v3 + 512) = v5;
  v6 = *(v5 - 8);
  *(v3 + 520) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 528) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040) - 8) + 64) + 15;
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  v9 = sub_238B6C574();
  *(v3 + 552) = v9;
  v10 = *(v9 - 8);
  *(v3 + 560) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 576) = swift_task_alloc();
  *(v3 + 584) = swift_task_alloc();
  v12 = *(a2 + 48);
  *(v3 + 112) = *(a2 + 32);
  *(v3 + 128) = v12;
  *(v3 + 144) = *(a2 + 64);
  *(v3 + 160) = *(a2 + 80);
  v13 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v13;

  return MEMORY[0x2822009F8](sub_238B4C310, 0, 0);
}

uint64_t sub_238B4C310()
{
  v52 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 496);
  v5 = sub_238B6C6A4();
  __swift_project_value_buffer(v5, qword_27DF60710);
  v48 = *(v2 + 16);
  v48(v1, v4, v3);
  sub_238B4EED8(v0 + 80, v0 + 168);
  v6 = sub_238B6C684();
  v7 = sub_238B6CA44();
  sub_238B4EF34(v0 + 80);
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 584);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  if (v8)
  {
    v47 = v7;
    v12 = *(v0 + 544);
    v13 = *(v0 + 536);
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v50[0] = v46;
    *v14 = 136315650;
    *(v14 + 4) = sub_238B33240(0xD00000000000002BLL, 0x8000000238B73A50, v50);
    *(v14 + 12) = 2080;
    v48(v12, v9, v11);
    (*(v10 + 56))(v12, 0, 1, v11);
    sub_238B3B1A4(v12, v13, &qword_27DF5FC78, &qword_238B6F040);
    v15 = (*(v10 + 48))(v13, 1, v11);
    v16 = *(v0 + 584);
    if (v15 == 1)
    {
      v17 = *(v0 + 560);
      v18 = *(v0 + 552);
      v19 = *(v0 + 544);
      sub_238B4EF88(*(v0 + 536));
      sub_238B4EF88(v19);
      (*(v17 + 8))(v16, v18);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v22 = *(v0 + 576);
      v23 = *(v0 + 568);
      v24 = *(v0 + 560);
      v25 = *(v0 + 552);
      v45 = *(v0 + 544);
      (*(v24 + 32))(v22, *(v0 + 536), v25);
      v48(v23, v22, v25);
      v26 = sub_238B6C8B4();
      v20 = v27;
      v28 = *(v24 + 8);
      v28(v22, v25);
      sub_238B4EF88(v45);
      v28(v16, v25);
      v21 = v26;
    }

    v29 = sub_238B33240(v21, v20, v50);

    *(v14 + 14) = v29;
    *(v14 + 22) = 2080;
    v30 = *(v0 + 128);
    *(v0 + 288) = *(v0 + 112);
    *(v0 + 304) = v30;
    *(v0 + 320) = *(v0 + 144);
    *(v0 + 336) = *(v0 + 160);
    v31 = *(v0 + 96);
    *(v0 + 256) = *(v0 + 80);
    *(v0 + 272) = v31;
    sub_238B4EED8(v0 + 80, v0 + 344);
    v32 = sub_238B6C8B4();
    v34 = sub_238B33240(v32, v33, v50);

    *(v14 + 24) = v34;
    _os_log_impl(&dword_238B2C000, v6, v47, "%s %s %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v46, -1, -1);
    MEMORY[0x23EE73110](v14, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v35 = *(v0 + 528);
  v36 = *(v0 + 520);
  v37 = *(v0 + 512);
  v38 = *(v0 + 496);
  v49 = *(*(v0 + 504) + 64);
  v39 = sub_238B6C544();
  *(v0 + 592) = v39;
  v40 = *(v0 + 128);
  v50[2] = *(v0 + 112);
  v50[3] = v40;
  v50[4] = *(v0 + 144);
  v51 = *(v0 + 160);
  v41 = *(v0 + 96);
  v50[0] = *(v0 + 80);
  v50[1] = v41;
  v42 = sub_238B55C9C();
  *(v0 + 600) = v42;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_238B4C89C;
  swift_continuation_init();
  *(v0 + 488) = v37;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 464));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE48, &qword_238B6FCB0);
  sub_238B6C9A4();
  (*(v36 + 32))(boxed_opaque_existential_0, v35, v37);
  *(v0 + 432) = MEMORY[0x277D85DD0];
  *(v0 + 440) = 1107296256;
  *(v0 + 448) = sub_238B4C0D8;
  *(v0 + 456) = &block_descriptor_8;
  [v49 reportNewIncomingCallWithUUID:v39 update:v42 completion:?];
  (*(v36 + 8))(boxed_opaque_existential_0, v37);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_238B4C89C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 608) = v2;
  if (v2)
  {
    v3 = sub_238B4CA78;
  }

  else
  {
    v3 = sub_238B4C9AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238B4C9AC()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 528);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_238B4CA78()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[76];

  return v10();
}

void ConversationManager.reportConversationEvent(_:for:)(uint64_t a1)
{
  v3 = sub_238B6C534();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v11 = type metadata accessor for Conversation.Event();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238B4EFF0(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *(v14 + 3);
      v33 = *(v14 + 2);
      v34 = v16;
      v35 = *(v14 + 4);
      v36 = v14[80];
      v17 = *(v14 + 1);
      v31 = *v14;
      v32 = v17;
      v18 = *(v1 + 64);
      v19 = sub_238B6C544();
      v29[2] = v33;
      v29[3] = v34;
      v29[4] = v35;
      v30 = v36;
      v29[0] = v31;
      v29[1] = v32;
      v20 = sub_238B55C9C();
      [v18 reportCallWithUUID:v19 updated:v20];

      sub_238B4EF34(&v31);
      return;
    }

    (*(v4 + 32))(v10, v14, v3);
    v24 = *(v1 + 64);
    v22 = sub_238B6C544();
    v23 = sub_238B6C4F4();
    [v24 reportOutgoingCallWithUUID:v22 startedConnectingAtDate:v23];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v4 + 32))(v10, v14, v3);
    v21 = *(v1 + 64);
    v22 = sub_238B6C544();
    v23 = sub_238B6C4F4();
    [v21 reportOutgoingCallWithUUID:v22 connectedAtDate:v23];
LABEL_7:

    (*(v4 + 8))(v10, v3);
    return;
  }

  v25 = v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48)];
  (*(v4 + 32))(v8, v14, v3);
  v26 = *(v1 + 64);
  v27 = sub_238B6C544();
  v28 = sub_238B6C4F4();
  [v26 reportCallWithUUID:v27 endedAtDate:v28 reason:v25 + 1];

  (*(v4 + 8))(v8, v3);
}

uint64_t static ConversationManager.reportNewIncomingVoIPPushPayload(_:)(uint64_t a1)
{
  v1[18] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE38, &qword_238B6FCA8);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B4CF80, 0, 0);
}

uint64_t sub_238B4CF80()
{
  v20 = v0;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_27DF60710);

  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_238B33240(0xD000000000000024, 0x8000000238B73A80, &v19);
    *(v6 + 12) = 2080;
    v8 = sub_238B6C7E4();
    v10 = sub_238B33240(v8, v9, &v19);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_238B2C000, v3, v4, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v7, -1, -1);
    MEMORY[0x23EE73110](v6, -1, -1);
  }

  v12 = v0[20];
  v11 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v18 = objc_opt_self();
  v15 = sub_238B6C7D4();
  v0[22] = v15;
  v0[2] = v0;
  v0[3] = sub_238B4D2D8;
  swift_continuation_init();
  v0[17] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE48, &qword_238B6FCB0);
  sub_238B6C9A4();
  (*(v12 + 32))(boxed_opaque_existential_0, v11, v13);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238B4C0D8;
  v0[13] = &block_descriptor_12;
  [v18 reportNewIncomingVoIPPushPayload:v15 completion:v0 + 10];
  (*(v12 + 8))(boxed_opaque_existential_0, v13);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238B4D2D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_238B4D454;
  }

  else
  {
    v3 = sub_238B4D3E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238B4D3E8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238B4D454()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t ConversationManager.pendingConversationActions(of:for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_238B6C574();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ConversationManager.pendingActions.getter();
  v10 = v9;
  v30 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
LABEL_19:
    v11 = sub_238B6CB24();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v13 = v10 & 0xC000000000000001;
      v28 = OBJC_IVAR____TtC20LiveCommunicationKit12Conversation_uuid;
      v29 = v10 & 0xFFFFFFFFFFFFFF8;
      v25 = (v5 + 1);
      v26 = (v5 + 2);
      v24 = v11;
      v27 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v13)
        {
          v5 = MEMORY[0x23EE72780](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v22 = v30;
            goto LABEL_21;
          }
        }

        else
        {
          if (v12 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v5 = *(v10 + 8 * v12 + 32);

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_16;
          }
        }

        if (*v5 == a1)
        {
          v15 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
          swift_beginAccess();
          (*v26)(v8, v5 + v15, v4);
          LOBYTE(v15) = sub_238B6C554();
          (*v25)(v8, v4);
          if (v15)
          {
            sub_238B6CC04();
            v16 = v8;
            v17 = v10;
            v18 = v4;
            v19 = a1;
            v20 = a2;
            v21 = *(v30 + 16);
            sub_238B6CC34();
            a2 = v20;
            a1 = v19;
            v4 = v18;
            v10 = v17;
            v8 = v16;
            v11 = v24;
            sub_238B6CC44();
            sub_238B6CC14();
          }

          else
          {
          }

          v13 = v27;
        }

        else
        {
        }

        ++v12;
        if (v14 == v11)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_21:

  return v22;
}

uint64_t sub_238B4D7A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238B6C574();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  swift_beginAccess();
  v10 = v5[2];
  v18 = v4;
  v10(v8, a1 + v9, v4);
  swift_getKeyPath();
  v20 = v2;
  sub_238B4FBAC(&qword_27DF5FE28, type metadata accessor for ConversationManager);
  swift_retain_n();
  sub_238B6C634();

  v20 = v2;
  swift_getKeyPath();
  sub_238B6C654();

  swift_beginAccess();
  v11 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 80);
  *(v2 + 80) = 0x8000000000000000;
  sub_238B4E700(a1, v8, isUniquelyReferenced_nonNull_native, &qword_27DF5FE70, &qword_238B6FDD8);
  v13 = v5[1];
  v13(v8, v4);
  *(v2 + 80) = v19;
  swift_endAccess();
  v20 = v2;
  swift_getKeyPath();
  sub_238B6C644();

  v14 = [*(a1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) UUID];
  sub_238B6C564();

  swift_getKeyPath();
  v20 = v2;
  sub_238B6C634();

  v20 = v2;
  swift_getKeyPath();
  sub_238B6C654();

  swift_beginAccess();
  v15 = *(v2 + 88);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 88);
  *(v2 + 88) = 0x8000000000000000;
  sub_238B4E700(a1, v8, v16, &qword_27DF5FE70, &qword_238B6FDD8);
  v13(v8, v18);
  *(v2 + 88) = v19;
  swift_endAccess();
  v20 = v2;
  swift_getKeyPath();
  sub_238B6C644();
}

uint64_t sub_238B4DB2C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v6 = sub_238B6C6A4();
  __swift_project_value_buffer(v6, qword_27DF60710);
  v7 = a2;

  v8 = sub_238B6C684();
  v9 = sub_238B6CA44();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136315650;
    v12 = sub_238B6CBA4();
    v14 = sub_238B33240(v12, v13, v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_238B31CE4(0, &qword_27DF5FE40, 0x277CBAF38);
    v15 = v7;
    v16 = sub_238B6C8B4();
    v18 = sub_238B33240(v16, v17, v25);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    type metadata accessor for ConversationAction();

    v19 = sub_238B6C8B4();
    v21 = sub_238B33240(v19, v20, v25);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_238B2C000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v11, -1, -1);
    MEMORY[0x23EE73110](v10, -1, -1);
  }

  sub_238B4D7A0(a1);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v23 + 32))(v3, a1, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConversationManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_238B4F054(v0 + 32);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 152);

  sub_238B3C9AC(v6, v7);

  v9 = OBJC_IVAR____TtC20LiveCommunicationKit19ConversationManager___observationRegistrar;
  v10 = sub_238B6C674();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t ConversationManager.__deallocating_deinit()
{
  ConversationManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_238B4DEF4(void *a1)
{
  v3 = *(v1 + 40);
  sub_238B6CE64();
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  MEMORY[0x23EE72A40](*a1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  v8 = sub_238B6CEA4();

  return sub_238B4E034(a1, v8);
}

unint64_t sub_238B4DF9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_238B6C574();
  sub_238B4FBAC(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  v5 = sub_238B6C804();

  return sub_238B4E150(a1, v5);
}

unint64_t sub_238B4E034(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v18 = a1[1];
    v9 = a1[3];
    v10 = a1[4];
    v11 = *(v2 + 48);
    do
    {
      v12 = (v11 + 40 * v5);
      if (*v12 == v7)
      {
        v13 = v12[3];
        v14 = v12[4];
        v15 = v12[1] == v18 && v12[2] == v8;
        if (v15 || (sub_238B6CDF4() & 1) != 0)
        {
          v16 = v13 == v9 && v14 == v10;
          if (v16 || (sub_238B6CDF4() & 1) != 0)
          {
            break;
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_238B4E150(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_238B6C574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_238B4FBAC(&qword_27DF5FCC0, MEMORY[0x277CC95F0]);
      v16 = sub_238B6C824();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_238B4E310(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_238B6C574();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_238B6CC94();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_238B4FBAC(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
      result = sub_238B6C804();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_238B4E700(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = sub_238B6C574();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_238B4DF9C(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_238B4E994(v30, v31);
      goto LABEL_7;
    }

    sub_238B4E310(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_238B4DF9C(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_238B4E8DC(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_238B6CE14();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_238B4E8DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_238B6C574();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_238B4E994(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_238B6C574();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_238B6CC84();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void (*sub_238B4EC0C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE72780](a2, a3);
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
    return sub_238B4EC8C;
  }

  __break(1u);
  return result;
}

uint64_t sub_238B4EC94(__int128 *a1, id a2)
{
  v4 = *(a1 + 48);
  v5 = [a2 isGreenTea];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = a1[1];
  v26 = *a1;
  v27 = v7;
  v28 = a1[2];
  v29 = v6;
  v30 = *(a1 + 49);
  v8 = sub_238B3E424();
  v9 = [objc_allocWithZone(MEMORY[0x277CBAFE8]) initWithConfiguration_];

  type metadata accessor for ConversationCache();
  v10 = swift_allocObject();
  v11 = sub_238B4F174(MEMORY[0x277D84F90], &qword_27DF5FE90, &qword_238B6FDF0, &qword_27DF5FE80, &qword_238B6FDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE68, &qword_238B6FDA8);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  *(v10 + 16) = v12;
  v13 = a1[2];
  v23 = a1[1];
  v24 = v13;
  v22 = *a1;
  v25[0] = v6;
  *&v25[1] = *(a1 + 49);
  v20[2] = v13;
  v20[3] = *v25;
  v21 = v25[16];
  v20[0] = v22;
  v20[1] = v23;
  v14 = type metadata accessor for ConversationManager();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_238B49B84(&v22, &v26);
  v17 = sub_238B4F354(v20, v9, v10);

  v18 = a1[1];
  v26 = *a1;
  v27 = v18;
  v28 = a1[2];
  v29 = v6;
  v30 = *(a1 + 49);
  sub_238B4F8A8(&v26);
  return v17;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_238B4EF88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B4EFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Conversation.Event();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B4F084()
{
  result = sub_238B6C674();
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

unint64_t sub_238B4F174(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_238B6CCA4();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_238B3B1A4(v17, v13, a2, v28);
      result = sub_238B4DF9C(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_238B6C574();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

uint64_t sub_238B4F354(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_238B6C664();
  v7 = *(a1 + 48);
  *(v3 + 128) = *(a1 + 32);
  *(v3 + 144) = v7;
  *(v3 + 160) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v3 + 96) = *a1;
  *(v3 + 112) = v8;
  v9 = [objc_allocWithZone(type metadata accessor for CallProviderWrapper()) init];
  *(v3 + 64) = a2;
  *(v3 + 72) = v9;
  *(v3 + 16) = a3;
  v10 = objc_allocWithZone(MEMORY[0x277CBAF50]);
  v11 = a2;

  *(v3 + 48) = [v10 init];
  v12 = MEMORY[0x277D84F90];
  *(v3 + 80) = sub_238B4F174(MEMORY[0x277D84F90], &qword_27DF5FE88, &qword_238B6FDE8, &qword_27DF5FE70, &qword_238B6FDD8);
  *(v3 + 88) = sub_238B4F174(v12, &qword_27DF5FE88, &qword_238B6FDE8, &qword_27DF5FE70, &qword_238B6FDD8);
  *(v3 + 56) = [objc_allocWithZone(type metadata accessor for CallObserverDelegateWrapper()) init];
  *(v3 + 24) = v12;
  v13 = [*(v3 + 48) callObserver];
  [v13 setDelegate:*(v3 + 56) queue:0];

  v14 = *(v3 + 56);
  v15 = &v14[OBJC_IVAR____TtC20LiveCommunicationKit27CallObserverDelegateWrapper_onCallChanged];
  v16 = *&v14[OBJC_IVAR____TtC20LiveCommunicationKit27CallObserverDelegateWrapper_onCallChanged + 8];
  *v15 = sub_238B4F8FC;
  *(v15 + 1) = v3;
  v17 = v14;

  v18 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidReset);
  v19 = v18[1];
  *v18 = sub_238B4F900;
  v18[1] = v3;

  v20 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidBegin);
  v21 = v20[1];
  *v20 = sub_238B4F904;
  v20[1] = v3;

  v22 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidActivateAudioSession);
  v23 = v22[1];
  *v22 = sub_238B4F908;
  v22[1] = v3;

  v24 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidDeactivateAudioSession);
  v25 = v24[1];
  *v24 = sub_238B4F90C;
  v24[1] = v3;

  v26 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderTimedOutPerformingAction);
  v27 = v26[1];
  *v26 = sub_238B4FCD8;
  v26[1] = v3;

  v28 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformAction);
  v29 = v28[1];
  *v28 = sub_238B4F910;
  v28[1] = v3;

  v30 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformStartCallAction);
  v31 = v30[1];
  *v30 = sub_238B4F914;
  v30[1] = v3;

  v32 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformAnswerCallAction);
  v33 = v32[1];
  *v32 = sub_238B4F964;
  v32[1] = v3;

  v34 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformEndCallAction);
  v35 = v34[1];
  *v34 = sub_238B4F9A0;
  v34[1] = v3;

  v36 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetHeldCallAction);
  v37 = v36[1];
  *v36 = sub_238B4F9DC;
  v36[1] = v3;

  v38 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetGroupCallAction);
  v39 = v38[1];
  *v38 = sub_238B4FA2C;
  v38[1] = v3;

  v40 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetMutedCallAction);
  v41 = v40[1];
  *v40 = sub_238B4FA30;
  v40[1] = v3;

  v42 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformPlayDTMFCallAction);
  v43 = v42[1];
  *v42 = sub_238B4FA80;
  v42[1] = v3;

  v44 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformShareIdentityCallAction);
  v45 = v44[1];
  *v44 = sub_238B4FAD0;
  v44[1] = v3;

  v46 = (*(v3 + 72) + OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetTranslatingCallAction);
  v47 = v46[1];
  *v46 = sub_238B4FB0C;
  v46[1] = v3;

  [*(v3 + 64) setDelegate:*(v3 + 72) queue:0];
  return v3;
}

uint64_t sub_238B4FBAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238B4FC10()
{
  result = qword_27DF5FEA0;
  if (!qword_27DF5FEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF5FE98, &qword_238B6FDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FEA0);
  }

  return result;
}

uint64_t sub_238B4FC74()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_238B4FD1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_238B6C5E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SetTranslatingAction.TranslationEngine.hashValue.getter()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1);
  return sub_238B6CEA4();
}

uint64_t SetTranslatingAction.__allocating_init(conversationID:isTranslating:localLanguage:remoteLanguage:)(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v64 = a2;
  v79 = a1;
  v9 = sub_238B6C534();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238B6C574();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = v77[8];
  MEMORY[0x28223BE20](v12);
  v76 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEA8, &qword_238B6FE00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v65 = v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEB0, &qword_238B6FE08);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = v60 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEB8, &qword_238B6FE10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v60 - v23;
  v25 = sub_238B6C5E4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_238B6C604();
  v68 = *(v30 - 8);
  v69 = v30;
  v31 = *(v68 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v73 = v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v60 - v34;
  v36 = *(v5 + 48);
  v37 = *(v5 + 52);
  v38 = swift_allocObject();
  *(v38 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_isTranslating) = v8;
  v39 = v26;
  v40 = *(v26 + 16);
  v41 = v38;
  v66 = v38;
  v67 = a3;
  v40(v38 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage, a3, v25);
  v63 = a4;
  v40(v41 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, a4, v25);
  v40(v29, a3, v25);
  v60[1] = v24;
  sub_238B6C5B4();
  sub_238B6C5D4();
  sub_238B6C5C4();
  v74 = v35;
  sub_238B6C5A4();
  v42 = *(v39 + 8);
  v42(v29, v25);
  v61 = v42;
  v62 = v39 + 8;
  v40(v29, a4, v25);
  sub_238B6C5B4();
  sub_238B6C5D4();
  sub_238B6C5C4();
  sub_238B6C5A4();
  v42(v29, v25);
  v43 = v77[2];
  v43(v76, v79, v78);
  sub_238B6C594();
  sub_238B6C594();
  v44 = objc_allocWithZone(MEMORY[0x277CBB010]);
  v45 = sub_238B6C544();
  v46 = sub_238B6C844();

  v47 = sub_238B6C844();

  v75 = [v44 initWithCallUUID:v45 isTranslating:v64 & 1 localLanguage:v46 remoteLanguage:v47];

  v49 = v76;
  v48 = v77;
  v50 = v77[1];
  v51 = v78;
  v50(v76, v78);
  v52 = v79;
  v43(v49, v79, v51);
  v53 = v70;
  sub_238B6C504();
  v54 = v61;
  v61(v63, v25);
  v54(v67, v25);
  v50(v52, v51);
  v55 = v69;
  v56 = *(v68 + 8);
  v56(v73, v69);
  v56(v74, v55);
  v57 = v66;
  *(v66 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v75;
  (v48[4])(v57 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v49, v51);
  v58 = (v57 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v58 = 0;
  v58[1] = 0;
  (*(v71 + 32))(v57 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v53, v72);
  return v57;
}

uint64_t SetTranslatingAction.init(conversationID:isTranslating:localLanguage:remoteLanguage:)(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v7 = a2;
  LODWORD(v55) = a2;
  v68 = a1;
  v8 = sub_238B6C534();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v60 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238B6C574();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = v66[8];
  MEMORY[0x28223BE20](v11);
  v65 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEA8, &qword_238B6FE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEB0, &qword_238B6FE08);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v52 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEB8, &qword_238B6FE10);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_238B6C5E4();
  v69 = *(v22 - 8);
  v23 = v69;
  v24 = *(v69 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_238B6C604();
  v58 = *(v27 - 8);
  v59 = v27;
  v28 = *(v58 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v63 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v52 - v31;
  *(v5 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_isTranslating) = v7;
  v33 = *(v23 + 16);
  v56 = a3;
  v57 = v5;
  v33(v5 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage, a3, v22);
  v34 = v64;
  v33(v5 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, v64, v22);
  v33(v26, a3, v22);
  sub_238B6C5B4();
  v53 = v19;
  sub_238B6C5D4();
  sub_238B6C5C4();
  v54 = v32;
  sub_238B6C5A4();
  v35 = v69 + 8;
  v52 = *(v69 + 8);
  v52(v26, v22);
  v69 = v35;
  v33(v26, v34, v22);
  sub_238B6C5B4();
  sub_238B6C5D4();
  sub_238B6C5C4();
  sub_238B6C5A4();
  v36 = v52;
  v52(v26, v22);
  v53 = v66[2];
  v53(v65, v68, v67);
  sub_238B6C594();
  sub_238B6C594();
  v37 = objc_allocWithZone(MEMORY[0x277CBB010]);
  v38 = sub_238B6C544();
  v39 = sub_238B6C844();

  v40 = sub_238B6C844();

  v55 = [v37 initWithCallUUID:v38 isTranslating:v55 & 1 localLanguage:v39 remoteLanguage:v40];

  v42 = v65;
  v41 = v66;
  v43 = v66[1];
  v44 = v67;
  v43(v65, v67);
  v45 = v68;
  v53(v42, v68, v44);
  v46 = v60;
  sub_238B6C504();
  v36(v64, v22);
  v36(v56, v22);
  v43(v45, v44);
  v47 = v59;
  v48 = *(v58 + 8);
  v48(v63, v59);
  v48(v54, v47);
  v49 = v57;
  *(v57 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v55;
  (v41[4])(v49 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v42, v44);
  v50 = (v49 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v50 = 0;
  v50[1] = 0;
  (*(v61 + 32))(v49 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v46, v62);
  return v49;
}

uint64_t sub_238B50B48(void *a1)
{
  v3 = sub_238B6C534();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_238B6C574();
  v35 = *(v37 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_238B6C5E4();
  v40 = *(v33 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238B6C604();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 isTranslating];
  *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_isTranslating) = v16;
  v30 = v1;
  v17 = [a1 localLanguage];
  sub_238B6C864();

  sub_238B6C584();
  sub_238B6C5F4();
  v18 = v12 + 8;
  v19 = *(v12 + 8);
  v31 = v18;
  v19(v15, v11);
  v20 = *(v40 + 32);
  v40 += 32;
  v21 = v33;
  v20(v1 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage, v10, v33);
  v22 = [a1 remoteLanguage];
  sub_238B6C864();

  sub_238B6C584();
  sub_238B6C5F4();
  v19(v15, v32);
  v23 = v30;
  v20(v30 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, v10, v21);
  v24 = [a1 callUUID];
  v25 = v34;
  sub_238B6C564();

  v26 = v36;
  sub_238B6C504();
  *(v23 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v35 + 32))(v23 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v25, v37);
  v27 = (v23 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v27 = 0;
  v27[1] = 0;
  (*(v38 + 32))(v23 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v26, v39);
  return v23;
}

uint64_t sub_238B5100C()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage;
  v2 = sub_238B6C5E4();
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage;

  return v5(v3, v2);
}

uint64_t SetTranslatingAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage;
  v6 = sub_238B6C5E4();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, v6);
  return v0;
}

uint64_t SetTranslatingAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_localLanguage;
  v6 = sub_238B6C5E4();
  v7 = *(*(v6 - 8) + 8);

  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC20LiveCommunicationKit20SetTranslatingAction_remoteLanguage, v6);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_238B51388()
{
  result = qword_27DF5FEC0;
  if (!qword_27DF5FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FEC0);
  }

  return result;
}

uint64_t type metadata accessor for SetTranslatingAction()
{
  result = qword_27DF5FEC8;
  if (!qword_27DF5FEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B51430()
{
  result = sub_238B6C5E4();
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

uint64_t static DefaultApps.defaultAppSetDate.getter@<X0>(uint64_t a1@<X8>)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FED8, &unk_238B6FF30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - v4;
  v6 = [objc_opt_self() defaultWorkspace];
  if (!v6)
  {
    v12 = sub_238B6C534();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    goto LABEL_5;
  }

  v27[0] = 0;
  v7 = v6;
  v8 = [v6 preferenceSetDateForDefaultAppCategory:9 error:v27];

  v9 = v27[0];
  if (v8)
  {
    sub_238B6C524();
    v10 = v9;

    v11 = sub_238B6C534();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
LABEL_5:
    result = sub_238B51A7C(v5, a1);
    goto LABEL_12;
  }

  v14 = v27[0];
  v15 = sub_238B6C464();

  swift_willThrow();
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v16 = sub_238B6C6A4();
  __swift_project_value_buffer(v16, qword_280B61330);
  v17 = v15;
  v18 = sub_238B6C684();
  v19 = sub_238B6CA34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v15;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_238B2C000, v18, v19, "Couldn’t fetch default dialing app set date: %@", v20, 0xCu);
    sub_238B42A88(v21);
    MEMORY[0x23EE73110](v21, -1, -1);
    MEMORY[0x23EE73110](v20, -1, -1);
  }

  else
  {
  }

  v24 = sub_238B6C534();
  result = (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

id _s20LiveCommunicationKit11DefaultAppsV25defaultDialingAppBundleIDSSSgvgZ_0()
{
  v18[1] = *MEMORY[0x277D85DE8];
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v18[0] = 0;
    v1 = result;
    v2 = [result defaultApplicationForCategory:9 error:v18];

    if (v2)
    {
      v3 = v18[0];
      v4 = [v2 bundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = sub_238B6C864();

        result = v6;
        goto LABEL_12;
      }
    }

    else
    {
      v7 = v18[0];
      v8 = sub_238B6C464();

      swift_willThrow();
      if (qword_280B60640 != -1)
      {
        swift_once();
      }

      v9 = sub_238B6C6A4();
      __swift_project_value_buffer(v9, qword_280B61330);
      v10 = v8;
      v11 = sub_238B6C684();
      v12 = sub_238B6CA34();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v8;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_238B2C000, v11, v12, "Couldn’t fetch default dialing app: %@", v13, 0xCu);
        sub_238B42A88(v14);
        MEMORY[0x23EE73110](v14, -1, -1);
        MEMORY[0x23EE73110](v13, -1, -1);
      }

      else
      {
      }
    }

    result = 0;
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238B51A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FED8, &unk_238B6FF30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JoinConversationAction.__allocating_init(conversationUUID:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  JoinConversationAction.init(conversationUUID:)(a1);
  return v5;
}

uint64_t JoinConversationAction.init(conversationUUID:)(char *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238B6C574();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a1, v7);
  v13 = objc_allocWithZone(MEMORY[0x277CBAF40]);
  v14 = sub_238B6C544();
  v15 = [v13 initWithCallUUID_];

  v16 = *(v8 + 8);
  v16(v11, v7);
  v12(v11, a1, v7);
  v17 = v21;
  sub_238B6C504();
  v16(a1, v7);
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v15;
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v11, v7);
  v18 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v18 = 0;
  v18[1] = 0;
  (*(v22 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v17, v23);
  return v2;
}

void JoinConversationAction.fulfill(dateConnected:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_238B6C534();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v10 = sub_238B6C6A4();
  __swift_project_value_buffer(v10, qword_27DF60710);
  (*(v6 + 16))(v9, a1, v5);

  v11 = sub_238B6C684();
  v12 = sub_238B6CA44();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26[1] = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26[2] = v1;
    v27 = v15;
    *v14 = 136315394;

    v16 = sub_238B6C8B4();
    v18 = sub_238B33240(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_238B484E0();
    v19 = sub_238B6CDD4();
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = sub_238B33240(v19, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_238B2C000, v11, v12, "Fulfilling action %s with dateConnected %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v15, -1, -1);
    MEMORY[0x23EE73110](v14, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v23 = *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  v25 = sub_238B6C4F4();
  [v24 fulfillWithDateConnected_];
}

uint64_t JoinConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t JoinConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JoinConversationAction()
{
  result = qword_27DF5FEE0;
  if (!qword_27DF5FEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_238B52358()
{
  v1 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD00000000000001DLL;
  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_238B523CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238B5522C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238B52400(uint64_t a1)
{
  v2 = sub_238B54654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B5243C(uint64_t a1)
{
  v2 = sub_238B54654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B52484(uint64_t a1)
{
  v2 = sub_238B54750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B524C0(uint64_t a1)
{
  v2 = sub_238B54750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B524FC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_238B52518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_238B6CDF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238B6CDF4();

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

uint64_t sub_238B525E4(uint64_t a1)
{
  v2 = sub_238B546A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B52620(uint64_t a1)
{
  v2 = sub_238B546A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B5265C(uint64_t a1)
{
  v2 = sub_238B547A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B52698(uint64_t a1)
{
  v2 = sub_238B547A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B526D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B52754(uint64_t a1)
{
  v2 = sub_238B547F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B52790(uint64_t a1)
{
  v2 = sub_238B547F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Conversation.Event.encode(to:)(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEF0, &qword_238B6FFA0);
  v61 = *(v62 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v52 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FEF8, &qword_238B6FFA8);
  v58 = *(v59 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v52 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF00, &qword_238B6FFB0);
  v55 = *(v56 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - v7;
  v65 = sub_238B6C534();
  v64 = *(v65 - 8);
  v8 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](v65);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF08, &qword_238B6FFB8);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Conversation.Event();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF10, &unk_238B6FFC0);
  v82 = *(v69 - 8);
  v23 = *(v82 + 64);
  MEMORY[0x28223BE20](v69);
  v25 = &v52 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B54654();
  v68 = v25;
  sub_238B6CEC4();
  sub_238B4EFF0(v66, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = *(v22 + 3);
      v78 = *(v22 + 2);
      v79 = v28;
      v80 = *(v22 + 4);
      v81 = v22[80];
      v29 = *(v22 + 1);
      v76 = *v22;
      v77 = v29;
      LOBYTE(v70) = 0;
      sub_238B547F8();
      v30 = v69;
      v31 = v68;
      sub_238B6CD64();
      v72 = v78;
      v73 = v79;
      v74 = v80;
      v75 = v81;
      v70 = v76;
      v71 = v77;
      sub_238B5484C();
      sub_238B6CDB4();
      (*(v52 + 8))(v18, v15);
      (*(v82 + 8))(v31, v30);
      return sub_238B4EF34(&v76);
    }

    v40 = v64;
    v41 = v65;
    (*(v64 + 32))(v14, v22, v65);
    LOBYTE(v76) = 1;
    sub_238B547A4();
    v42 = v54;
    v37 = v69;
    v38 = v68;
    sub_238B6CD64();
    sub_238B549F4(&qword_27DF5F9D0, MEMORY[0x277CC9578]);
    v43 = v56;
    sub_238B6CDB4();
    (*(v55 + 8))(v42, v43);
    (*(v40 + 8))(v14, v41);
    return (*(v82 + 8))(v38, v37);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = v64;
    v34 = v53;
    v35 = v65;
    (*(v64 + 32))(v53, v22, v65);
    LOBYTE(v76) = 2;
    sub_238B54750();
    v36 = v57;
    v37 = v69;
    v38 = v68;
    sub_238B6CD64();
    sub_238B549F4(&qword_27DF5F9D0, MEMORY[0x277CC9578]);
    v39 = v59;
    sub_238B6CDB4();
    (*(v58 + 8))(v36, v39);
    (*(v33 + 8))(v34, v35);
    return (*(v82 + 8))(v38, v37);
  }

  LODWORD(v66) = v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48)];
  v44 = v64;
  v45 = v63;
  v46 = v65;
  (*(v64 + 32))(v63, v22, v65);
  LOBYTE(v76) = 3;
  sub_238B546A8();
  v47 = v60;
  v48 = v69;
  v49 = v68;
  sub_238B6CD64();
  LOBYTE(v76) = 0;
  sub_238B549F4(&qword_27DF5F9D0, MEMORY[0x277CC9578]);
  v50 = v62;
  v51 = v67;
  sub_238B6CDB4();
  if (v51)
  {
    (*(v61 + 8))(v47, v50);
    (*(v44 + 8))(v45, v46);
  }

  else
  {
    LOBYTE(v76) = v66;
    LOBYTE(v70) = 1;
    sub_238B546FC();
    sub_238B6CDB4();
    (*(v61 + 8))(v47, v50);
    (*(v44 + 8))(v63, v46);
  }

  return (*(v82 + 8))(v49, v48);
}

uint64_t Conversation.Event.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Conversation.Event();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238B4EFF0(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v18 = v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48)];
      (*(v5 + 32))(v8, v12, v4);
      MEMORY[0x23EE72A40](3);
      sub_238B549F4(&qword_27DF5F9A8, MEMORY[0x277CC9578]);
      sub_238B6C814();
      MEMORY[0x23EE72A40](v18 + 1);
      return (*(v5 + 8))(v8, v4);
    }

    (*(v5 + 32))(v8, v12, v4);
    v17 = 2;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *(v12 + 3);
      v23 = *(v12 + 2);
      v24 = v14;
      v25 = *(v12 + 4);
      v26 = v12[80];
      v15 = *(v12 + 1);
      v21 = *v12;
      v22 = v15;
      MEMORY[0x23EE72A40](0);
      v19[2] = v23;
      v19[3] = v24;
      v19[4] = v25;
      v20 = v26;
      v19[0] = v21;
      v19[1] = v22;
      Conversation.Update.hash(into:)(a1);
      return sub_238B4EF34(&v21);
    }

    (*(v5 + 32))(v8, v12, v4);
    v17 = 1;
  }

  MEMORY[0x23EE72A40](v17);
  sub_238B549F4(&qword_27DF5F9A8, MEMORY[0x277CC9578]);
  sub_238B6C814();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Conversation.Event.hashValue.getter()
{
  sub_238B6CE64();
  Conversation.Event.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t Conversation.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF50, &qword_238B6FFD0);
  v75 = *(v74 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v81 = &v63 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF58, &qword_238B6FFD8);
  v73 = *(v72 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  v80 = &v63 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF60, &qword_238B6FFE0);
  v71 = *(v70 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  v79 = &v63 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF68, &qword_238B6FFE8);
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v76 = &v63 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FF70, &unk_238B6FFF0);
  v78 = *(v83 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v83);
  v13 = &v63 - v12;
  v77 = type metadata accessor for Conversation.Event();
  v14 = *(*(v77 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v77);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v63 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v63 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v63 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_238B54654();
  v31 = v84;
  sub_238B6CEB4();
  if (!v31)
  {
    v64 = v26;
    v65 = v23;
    v66 = v20;
    v32 = v79;
    v67 = v17;
    v33 = v80;
    v34 = v81;
    v84 = v28;
    v35 = v78;
    v37 = v82;
    v36 = v83;
    v38 = sub_238B6CD54();
    v39 = (2 * *(v38 + 16)) | 1;
    v91 = v38;
    v92 = v38 + 32;
    v93 = 0;
    v94 = v39;
    v40 = sub_238B33FD0();
    if (v40 != 4 && v93 == v94 >> 1)
    {
      if (v40 > 1u)
      {
        v79 = v13;
        v54 = v35;
        if (v40 == 2)
        {
          LOBYTE(v85) = 2;
          sub_238B54750();
          sub_238B6CCC4();
          sub_238B6C534();
          sub_238B549F4(&qword_27DF5FA08, MEMORY[0x277CC9578]);
          v55 = v66;
          v56 = v72;
          sub_238B6CD44();
          (*(v73 + 8))(v33, v56);
          (*(v54 + 8))(v79, v36);
        }

        else
        {
          LOBYTE(v85) = 3;
          sub_238B546A8();
          v59 = v34;
          sub_238B6CCC4();
          sub_238B6C534();
          LOBYTE(v85) = 0;
          sub_238B549F4(&qword_27DF5FA08, MEMORY[0x277CC9578]);
          v55 = v67;
          v60 = v74;
          sub_238B6CD44();
          v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48);
          LOBYTE(v85) = 1;
          sub_238B548A0();
          sub_238B6CD44();
          (*(v75 + 8))(v59, v60);
          (*(v54 + 8))(v79, v83);
        }

        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v46 = v55;
      }

      else
      {
        if (v40)
        {
          LOBYTE(v85) = 1;
          sub_238B547A4();
          sub_238B6CCC4();
          sub_238B6C534();
          sub_238B549F4(&qword_27DF5FA08, MEMORY[0x277CC9578]);
          v57 = v65;
          v58 = v70;
          sub_238B6CD44();
          (*(v71 + 8))(v32, v58);
          (*(v35 + 8))(v13, v36);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v61 = v84;
          sub_238B548F4(v57, v84);
          v37 = v82;
LABEL_15:
          sub_238B548F4(v61, v37);
          return __swift_destroy_boxed_opaque_existential_1Tm(v95);
        }

        LOBYTE(v85) = 0;
        sub_238B547F8();
        v41 = v76;
        sub_238B6CCC4();
        sub_238B54958();
        v42 = v69;
        sub_238B6CD44();
        (*(v68 + 8))(v41, v42);
        (*(v35 + 8))(v13, v36);
        swift_unknownObjectRelease();
        v43 = v88;
        v44 = v64;
        *(v64 + 2) = v87;
        *(v44 + 48) = v43;
        *(v44 + 64) = v89;
        *(v44 + 80) = v90;
        v45 = v86;
        *v44 = v85;
        *(v44 + 16) = v45;
        swift_storeEnumTagMultiPayload();
        v46 = v44;
      }

      v61 = v84;
      sub_238B548F4(v46, v84);
      goto LABEL_15;
    }

    v47 = sub_238B6CBE4();
    swift_allocError();
    v48 = v36;
    v50 = v49;
    v51 = v13;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0) + 48);
    *v50 = v77;
    sub_238B6CCD4();
    sub_238B6CBD4();
    (*(*(v47 - 8) + 104))(v50, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    (*(v35 + 8))(v51, v48);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v95);
}

uint64_t sub_238B54054()
{
  sub_238B6CE64();
  Conversation.Event.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B54098()
{
  sub_238B6CE64();
  Conversation.Event.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t _s20LiveCommunicationKit12ConversationC5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_238B6C534();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = type metadata accessor for Conversation.Event();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60020, &qword_238B70698);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v56 - v27;
  v29 = &v56 + *(v26 + 56) - v27;
  sub_238B4EFF0(a1, &v56 - v27);
  sub_238B4EFF0(v61, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_238B4EFF0(v28, v18);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v59 + 8))(v18, v60);
        goto LABEL_16;
      }

      v34 = v59;
      v33 = v60;
      v35 = v57;
      (*(v59 + 32))(v57, v29, v60);
      updated = sub_238B6C514();
      v37 = *(v34 + 8);
      v37(v35, v33);
      v37(v18, v33);
    }

    else
    {
      sub_238B4EFF0(v28, v15);
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FE50, &qword_238B6FCC8) + 48);
      v42 = v15[v41];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v59 + 8))(v15, v60);
        goto LABEL_16;
      }

      v43 = v29[v41];
      v45 = v58;
      v44 = v59;
      v46 = v60;
      (*(v59 + 32))(v58, v29, v60);
      v47 = sub_238B6C514();
      v48 = *(v44 + 8);
      v48(v45, v46);
      v48(v15, v46);
      if ((v47 & 1) == 0)
      {
        sub_238B55400(v28);
        goto LABEL_17;
      }

      updated = v42 == v43;
    }

LABEL_19:
    sub_238B55400(v28);
    return updated & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_238B4EFF0(v28, v21);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v59 + 8))(v21, v60);
      goto LABEL_16;
    }

    v39 = v59;
    v38 = v60;
    (*(v59 + 32))(v10, v29, v60);
    updated = sub_238B6C514();
    v40 = *(v39 + 8);
    v40(v10, v38);
    v40(v21, v38);
    goto LABEL_19;
  }

  sub_238B4EFF0(v28, v23);
  v31 = *(v23 + 3);
  v71[2] = *(v23 + 2);
  v71[3] = v31;
  v71[4] = *(v23 + 4);
  v72 = v23[80];
  v32 = *(v23 + 1);
  v71[0] = *v23;
  v71[1] = v32;
  if (!swift_getEnumCaseMultiPayload())
  {
    v49 = *(v29 + 3);
    v50 = *(v29 + 1);
    v67 = *(v29 + 2);
    v68 = v49;
    v51 = *(v29 + 3);
    v69 = *(v29 + 4);
    v52 = *(v29 + 1);
    v66[0] = *v29;
    v66[1] = v52;
    v53 = *(v23 + 3);
    v64[2] = *(v23 + 2);
    v64[3] = v53;
    v64[4] = *(v23 + 4);
    v54 = *(v23 + 1);
    v64[0] = *v23;
    v64[1] = v54;
    v62[2] = v67;
    v62[3] = v51;
    v62[4] = *(v29 + 4);
    v70 = v29[80];
    v65 = v23[80];
    v63 = v29[80];
    v62[0] = v66[0];
    v62[1] = v50;
    updated = _s20LiveCommunicationKit12ConversationC6UpdateV2eeoiySbAE_AEtFZ_0(v64, v62);
    sub_238B4EF34(v66);
    sub_238B4EF34(v71);
    goto LABEL_19;
  }

  sub_238B4EF34(v71);
LABEL_16:
  sub_238B55398(v28);
LABEL_17:
  updated = 0;
  return updated & 1;
}

uint64_t type metadata accessor for Conversation.Event()
{
  result = qword_27DF5FF90;
  if (!qword_27DF5FF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_238B54654()
{
  result = qword_27DF5FF18;
  if (!qword_27DF5FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF18);
  }

  return result;
}

unint64_t sub_238B546A8()
{
  result = qword_27DF5FF20;
  if (!qword_27DF5FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF20);
  }

  return result;
}

unint64_t sub_238B546FC()
{
  result = qword_27DF5FF28;
  if (!qword_27DF5FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF28);
  }

  return result;
}

unint64_t sub_238B54750()
{
  result = qword_27DF5FF30;
  if (!qword_27DF5FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF30);
  }

  return result;
}

unint64_t sub_238B547A4()
{
  result = qword_27DF5FF38;
  if (!qword_27DF5FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF38);
  }

  return result;
}

unint64_t sub_238B547F8()
{
  result = qword_27DF5FF40;
  if (!qword_27DF5FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF40);
  }

  return result;
}

unint64_t sub_238B5484C()
{
  result = qword_27DF5FF48;
  if (!qword_27DF5FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF48);
  }

  return result;
}

unint64_t sub_238B548A0()
{
  result = qword_27DF5FF78;
  if (!qword_27DF5FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF78);
  }

  return result;
}

uint64_t sub_238B548F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Conversation.Event();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238B54958()
{
  result = qword_27DF5FF80;
  if (!qword_27DF5FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FF80);
  }

  return result;
}

uint64_t sub_238B549F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_238B54A8C()
{
  sub_238B6C534();
  if (v0 <= 0x3F)
  {
    sub_238B54B0C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_238B54B0C()
{
  if (!qword_27DF5FFA0)
  {
    sub_238B6C534();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF5FFA0);
    }
  }
}

uint64_t _s5EventO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5EventO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238B54D08()
{
  result = qword_27DF5FFA8;
  if (!qword_27DF5FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFA8);
  }

  return result;
}

unint64_t sub_238B54D60()
{
  result = qword_27DF5FFB0;
  if (!qword_27DF5FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFB0);
  }

  return result;
}

unint64_t sub_238B54DB8()
{
  result = qword_27DF5FFB8;
  if (!qword_27DF5FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFB8);
  }

  return result;
}

unint64_t sub_238B54E10()
{
  result = qword_27DF5FFC0;
  if (!qword_27DF5FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFC0);
  }

  return result;
}

unint64_t sub_238B54E68()
{
  result = qword_27DF5FFC8;
  if (!qword_27DF5FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFC8);
  }

  return result;
}

unint64_t sub_238B54EC0()
{
  result = qword_27DF5FFD0;
  if (!qword_27DF5FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFD0);
  }

  return result;
}

unint64_t sub_238B54F18()
{
  result = qword_27DF5FFD8;
  if (!qword_27DF5FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFD8);
  }

  return result;
}

unint64_t sub_238B54F70()
{
  result = qword_27DF5FFE0;
  if (!qword_27DF5FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFE0);
  }

  return result;
}

unint64_t sub_238B54FC8()
{
  result = qword_27DF5FFE8;
  if (!qword_27DF5FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFE8);
  }

  return result;
}

unint64_t sub_238B55020()
{
  result = qword_27DF5FFF0;
  if (!qword_27DF5FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFF0);
  }

  return result;
}

unint64_t sub_238B55078()
{
  result = qword_27DF5FFF8;
  if (!qword_27DF5FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FFF8);
  }

  return result;
}

unint64_t sub_238B550D0()
{
  result = qword_27DF60000;
  if (!qword_27DF60000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60000);
  }

  return result;
}

unint64_t sub_238B55128()
{
  result = qword_27DF60008;
  if (!qword_27DF60008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60008);
  }

  return result;
}

unint64_t sub_238B55180()
{
  result = qword_27DF60010;
  if (!qword_27DF60010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60010);
  }

  return result;
}

unint64_t sub_238B551D8()
{
  result = qword_27DF60018;
  if (!qword_27DF60018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60018);
  }

  return result;
}

uint64_t sub_238B5522C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000238B73F30 == a2;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000238B73F50 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238B73F70 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000238B73F90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_238B6CDF4();

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

uint64_t sub_238B55398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60020, &qword_238B70698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B55400(uint64_t a1)
{
  v2 = type metadata accessor for Conversation.Event();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238B554EC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_238B6CC24();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = sub_238B6CAF4();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v31 = v1 + 64;
    v32 = v2;
    v34 = v1 + 56;
    v35 = v1;
    v33 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v37 = v7;
      v11 = (*(v1 + 48) + 56 * v6);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = v11[4];
      v17 = v11[6];
      v36 = v11[5];
      v18 = objc_allocWithZone(MEMORY[0x277CBAFC8]);
      v19 = sub_238B6C844();
      v20 = [v18 initWithType:v12 + 1 value:v19];

      v21 = sub_238B6C844();
      [v20 setSiriDisplayName_];

      if (v17 >> 60 == 15)
      {
        v22 = 0;
      }

      else
      {
        v22 = sub_238B6C4C4();
      }

      [objc_allocWithZone(MEMORY[0x277CBAFD0]) initWithHandle:v20 identityBlob:v22];

      sub_238B6CC04();
      v23 = *(v38 + 16);
      sub_238B6CC34();
      sub_238B6CC44();
      result = sub_238B6CC14();
      v1 = v35;
      v9 = 1 << *(v35 + 32);
      if (v6 >= v9)
      {
        goto LABEL_26;
      }

      v4 = v34;
      v24 = *(v34 + 8 * v10);
      if ((v24 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v8 = v33;
      if (v33 != *(v35 + 36))
      {
        goto LABEL_28;
      }

      v25 = v24 & (-2 << (v6 & 0x3F));
      if (v25)
      {
        v9 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (v31 + 8 * v10);
        while (v27 < (v9 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_238B3E9A4(v6, v33, 0);
            v9 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_238B3E9A4(v6, v33, 0);
      }

LABEL_4:
      v7 = v37 + 1;
      v6 = v9;
      if (v37 + 1 == v32)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_238B557CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_238B5FB98(0, v1, 0);
  v2 = v33;
  v4 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  result = sub_238B6CAF4();
  v7 = result;
  v8 = 0;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v8;
    v29 = *(v3 + 36);
    v11 = *(v3 + 48) + 56 * v7;
    v32 = *v11;
    v12 = *(v11 + 16);
    v30 = *(v11 + 24);
    v31 = *(v11 + 8);
    v13 = v3;
    v14 = *(v11 + 32);
    v15 = *(v33 + 16);
    v16 = *(v33 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_238B5FB98((v16 > 1), v15 + 1, 1);
    }

    *(v33 + 16) = v15 + 1;
    v17 = v33 + 40 * v15;
    *(v17 + 32) = v32;
    *(v17 + 40) = v31;
    *(v17 + 48) = v12;
    *(v17 + 56) = v30;
    *(v17 + 64) = v14;
    v9 = 1 << *(v13 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v3 = v13;
    v4 = v27;
    v18 = *(v27 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_238B3E9A4(v7, v29, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_238B3E9A4(v7, v29, 0);
    }

LABEL_4:
    v8 = v28 + 1;
    v7 = v9;
    if (v28 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_238B55A24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_238B5FBB8(0, v1, 0);
  v2 = v33;
  v4 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  result = sub_238B6CAF4();
  v7 = result;
  v8 = 0;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v8;
    v29 = *(v3 + 36);
    v11 = *(v3 + 48) + 40 * v7;
    v32 = *v11;
    v12 = *(v11 + 16);
    v30 = *(v11 + 24);
    v31 = *(v11 + 8);
    v13 = v3;
    v14 = *(v11 + 32);

    result = sub_238B3C9AC(0, 0xF000000000000000);
    v16 = *(v33 + 16);
    v15 = *(v33 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_238B5FBB8((v15 > 1), v16 + 1, 1);
    }

    *(v33 + 16) = v16 + 1;
    v17 = v33 + 56 * v16;
    *(v17 + 32) = v32;
    *(v17 + 40) = v31;
    *(v17 + 48) = v12;
    *(v17 + 56) = v30;
    *(v17 + 64) = v14;
    *(v17 + 72) = xmmword_238B706C0;
    v9 = 1 << *(v13 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v3 = v13;
    v4 = v27;
    v18 = *(v27 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_238B3E9A4(v7, v29, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_238B3E9A4(v7, v29, 0);
    }

LABEL_4:
    v8 = v28 + 1;
    v7 = v9;
    if (v28 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_238B55C9C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *v0;
  v15 = *(v0 + 40);
  v16 = *(v0 + 32);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = [objc_allocWithZone(MEMORY[0x277CBAF80]) init];
  if (v3)
  {
    v9 = sub_238B554EC(v3);
    sub_238B5C710(v9);

    sub_238B5D154();
    sub_238B5D1A0(&qword_27DF600B8, sub_238B5D154);
    v10 = sub_238B6CA14();

    [v8 setRemoteParticipantHandles_];
  }

  if (v6)
  {
    v11 = sub_238B554EC(v6);
    sub_238B5C710(v11);

    sub_238B5D154();
    sub_238B5D1A0(&qword_27DF600B8, sub_238B5D154);
    v12 = sub_238B6CA14();

    [v8 setActiveRemoteParticipantHandles_];
  }

  if ((v7 & 1) == 0)
  {
    [v8 setHasVideo_];
    [v8 setSupportsDTMF_];
    [v8 setSupportsHolding_];
    [v8 setSupportsGrouping_];
    [v8 setSupportsUngrouping_];
    [v8 setSupportsSharePlay_];
    [v8 setSupportsScreenShare_];
  }

  if (v2)
  {
    sub_238B3EF54(v18, v1, v2, v17, v16, v15, v4);

    v13 = sub_238B6C844();

    [v8 setLocalMemberHandleValue_];

    sub_238B3F8F8(v18, v1, v2, v17, v16, v15, v4);
  }

  return v8;
}

uint64_t Conversation.Update.localMember.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  if (v3)
  {
    v5 = v1[3];
    v4 = v1[4];
    v6 = v1[1];
    v7 = *v1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *a1 = v7;
  a1[1] = v6;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v4;
  return result;
}

void *sub_238B55FD4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[2];
  if (v3)
  {
    v5 = result[3];
    v4 = result[4];
    v6 = result[1];
    v7 = *result;
    v8 = result[2];
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  a2[2] = v3;
  a2[3] = v5;
  a2[4] = v4;
  return result;
}

double sub_238B56048(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v5 = a1[3];
    v4 = a1[4];
    v6 = a1[1];
    v7 = *a1;
    v8 = a1[2];

    sub_238B3C9AC(0, 0xF000000000000000);
    sub_238B3F8F8(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v2;
    *(a2 + 24) = v5;
    *(a2 + 32) = v4;
    result = 0.0;
    *(a2 + 40) = xmmword_238B706C0;
  }

  return result;
}

double Conversation.Update.localMember.setter(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v4 = a1[3];
    v3 = a1[4];
    v5 = a1[1];
    v6 = *a1;
    sub_238B3C9AC(0, 0xF000000000000000);
    sub_238B3F8F8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    *v1 = v6;
    *(v1 + 8) = v5;
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    *(v1 + 32) = v3;
    result = 0.0;
    *(v1 + 40) = xmmword_238B706C0;
  }

  return result;
}

void (*Conversation.Update.localMember.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = v1[2];
  if (v5)
  {
    v7 = v1[3];
    v6 = v1[4];
    v8 = v1[1];
    v9 = *v1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  *v4 = v9;
  v4[1] = v8;
  v4[2] = v5;
  v4[3] = v7;
  v4[4] = v6;
  return sub_238B56210;
}

void sub_238B56210(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[2];
  if (a2)
  {
    if (v3)
    {
      v4 = v2[4];
      v5 = v2[5];
      v6 = v2[3];
      v7 = v2[1];
      v8 = *v2;
      v9 = (*a1)[2];

      sub_238B3C9AC(0, 0xF000000000000000);
      sub_238B3F8F8(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48));
      *v5 = v8;
      *(v5 + 8) = v7;
      *(v5 + 16) = v3;
      *(v5 + 24) = v6;
      *(v5 + 32) = v4;
      *(v5 + 40) = xmmword_238B706C0;
      v10 = v2[2];
    }

    else
    {
      v10 = 0;
    }

    v16 = v2[3];
    v17 = v2[4];
    sub_238B36C90(*v2, v2[1], v10);
  }

  else if (v3)
  {
    v12 = v2[4];
    v11 = v2[5];
    v13 = v2[3];
    v14 = v2[1];
    v15 = *v2;
    sub_238B3C9AC(0, 0xF000000000000000);
    sub_238B3F8F8(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48));
    *v11 = v15;
    *(v11 + 8) = v14;
    *(v11 + 16) = v3;
    *(v11 + 24) = v13;
    *(v11 + 32) = v12;
    *(v11 + 40) = xmmword_238B706C0;
  }

  free(v2);
}

void Conversation.Update.localConversationMember.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_238B3EF54(v2, v3, v4, v5, v6, v7, v8);
}

__n128 Conversation.Update.localConversationMember.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_238B3F8F8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t Conversation.Update.members.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_238B557CC(v1);
  v3 = sub_238B5C870(v2);

  return v3;
}

uint64_t sub_238B5642C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 56);
  if (result)
  {
    v4 = sub_238B557CC(result);
    v5 = sub_238B5C870(v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_238B5648C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v4 = sub_238B55A24(result);
    v5 = sub_238B5C918(v4);

    v6 = *(a2 + 56);

    *(a2 + 56) = v5;
  }

  return result;
}

uint64_t Conversation.Update.members.setter(uint64_t result)
{
  if (result)
  {
    v2 = sub_238B55A24(result);

    v3 = sub_238B5C918(v2);

    v4 = *(v1 + 56);

    *(v1 + 56) = v3;
  }

  return result;
}

uint64_t *(*Conversation.Update.members.modify(uint64_t *a1))(uint64_t *result, char a2)
{
  v3 = *(v1 + 56);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = sub_238B557CC(v3);
    v5 = sub_238B5C870(v4);
  }

  else
  {
    v5 = 0;
  }

  a1[3] = 0;
  *a1 = v5;
  return sub_238B565DC;
}

uint64_t *sub_238B565DC(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v3 = result[2];
      v4 = result[3];
      v5 = result[1];
      v6 = *result;

      v8 = sub_238B55A24(v7);

      v9 = sub_238B5C918(v8);

      *(v5 + 56) = v9;
    }
  }

  else if (v2)
  {
    v10 = result[2];
    v11 = result[3];
    v12 = result[1];
    v13 = sub_238B55A24(*result);

    v14 = sub_238B5C918(v13);

    *(v12 + 56) = v14;
  }

  return result;
}

uint64_t Conversation.Update.conversationMembers.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Conversation.Update.activeRemoteMembers.getter()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_238B557CC(v1);
  v3 = sub_238B5C870(v2);

  return v3;
}

uint64_t sub_238B56778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 64);
  if (result)
  {
    v4 = sub_238B557CC(result);
    v5 = sub_238B5C870(v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_238B567D8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v4 = sub_238B55A24(result);
    v5 = sub_238B5C918(v4);

    v6 = *(a2 + 64);

    *(a2 + 64) = v5;
  }

  return result;
}

uint64_t Conversation.Update.activeRemoteMembers.setter(uint64_t result)
{
  if (result)
  {
    v2 = sub_238B55A24(result);

    v3 = sub_238B5C918(v2);

    v4 = *(v1 + 64);

    *(v1 + 64) = v3;
  }

  return result;
}

uint64_t *(*Conversation.Update.activeRemoteMembers.modify(uint64_t *a1))(uint64_t *result, char a2)
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = sub_238B557CC(v3);
    v5 = sub_238B5C870(v4);
  }

  else
  {
    v5 = 0;
  }

  a1[3] = 0;
  *a1 = v5;
  return sub_238B56928;
}

uint64_t *sub_238B56928(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v3 = result[2];
      v4 = result[3];
      v5 = result[1];
      v6 = *result;

      v8 = sub_238B55A24(v7);

      v9 = sub_238B5C918(v8);

      *(v5 + 64) = v9;
    }
  }

  else if (v2)
  {
    v10 = result[2];
    v11 = result[3];
    v12 = result[1];
    v13 = sub_238B55A24(*result);

    v14 = sub_238B5C918(v13);

    *(v12 + 64) = v14;
  }

  return result;
}

uint64_t Conversation.Update.activeRemoteConversationMembers.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

void Conversation.Update.capabilities.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t Conversation.Update.capabilities.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

void Conversation.Update.init(localMember:members:activeRemoteMembers:capabilities:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  v10 = a1[4];
  v18 = *a4;
  v17 = *(a4 + 8);
  if (a2)
  {
    v12 = sub_238B55A24(a2);
    v16 = sub_238B5C918(v12);

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    v8 = 0;
    v11 = 0;
    v10 = 0;
    v15 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_238B55A24(a3);
  v14 = sub_238B5C918(v13);

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v15 = 0xF000000000000000;
  sub_238B3C9AC(0, 0xF000000000000000);
LABEL_8:
  sub_238B3F8F8(0, 0, 0, 0, 0, 0, 0);
  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v11;
  *(a5 + 32) = v10;
  *(a5 + 40) = 0;
  *(a5 + 48) = v15;
  *(a5 + 56) = v16;
  *(a5 + 64) = v14;
  *(a5 + 72) = v18;
  *(a5 + 80) = v17;
}

void Conversation.Update.init(localConversationMember:conversationMembers:activeRemoteConversationMembers:capabilities:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[2];
  v8 = *a4;
  v9 = *(a4 + 8);
  if (v7)
  {
    v11 = a1[3];
    v10 = a1[4];
    v12 = a1[1];
    v13 = *a1;
    v14 = 0xF000000000000000;
    sub_238B3C9AC(0, 0xF000000000000000);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v14 = 0;
  }

  sub_238B3F8F8(0, 0, 0, 0, 0, 0, 0);
  *a5 = v13;
  *(a5 + 8) = v12;
  *(a5 + 16) = v7;
  *(a5 + 24) = v11;
  *(a5 + 32) = v10;
  *(a5 + 40) = 0;
  *(a5 + 48) = v14;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = v8;
  *(a5 + 80) = v9;
}

unint64_t sub_238B56CD0()
{
  v1 = 0x696C696261706163;
  if (*v0 == 2)
  {
    v1 = 0xD00000000000001FLL;
  }

  v2 = 0xD000000000000017;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_238B56D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238B5CE80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238B56D88(uint64_t a1)
{
  v2 = sub_238B5C9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B56DC4(uint64_t a1)
{
  v2 = sub_238B5C9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Conversation.Update.encode(to:)(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60028, &qword_238B706D0);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v27 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v31 = *(v1 + 24);
  v32 = v9;
  v12 = *(v1 + 48);
  v11 = *(v1 + 56);
  v13 = *(v1 + 72);
  v29 = *(v1 + 64);
  v30 = v11;
  v28 = v13;
  v45 = *(v1 + 80);
  v14 = a1[4];
  v33 = a1[3];
  v34 = v14;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v15 = v31;
  v16 = v9;
  v17 = v12;
  sub_238B3EF54(v6, v7, v8, v31, v10, v16, v12);
  sub_238B5C9E0();
  v18 = v35;
  sub_238B6CEC4();
  v38 = v6;
  v39 = v7;
  v19 = v5;
  v40 = v8;
  v41 = v15;
  v42 = v10;
  v43 = v32;
  v44 = v17;
  v46 = 0;
  sub_238B5CA34();
  v20 = v18;
  v21 = v36;
  sub_238B6CD74();
  sub_238B3F8F8(v38, v39, v40, v41, v42, v43, v44);
  if (v21)
  {
    return (*(v37 + 8))(v19, v18);
  }

  v23 = v28;
  v24 = v29;
  v25 = v45;
  v26 = v37;
  v38 = v30;
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60040, &qword_238B706D8);
  sub_238B5CB30(&qword_27DF60048, sub_238B5CA34);
  sub_238B6CD74();
  v38 = v24;
  v46 = 2;
  sub_238B6CD74();
  v38 = v23;
  LOBYTE(v39) = v25;
  v46 = 3;
  sub_238B5CA88();
  sub_238B6CD74();
  return (*(v26 + 8))(v19, v20);
}

uint64_t Conversation.Update.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v5 = *(v2 + 7);
  v4 = *(v2 + 8);
  v6 = *(v2 + 9);
  v7 = v2[80];
  if (!*(v2 + 2))
  {
    sub_238B6CE84();
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_5:
    sub_238B6CE84();
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v16 = v2[80];
  v8 = *(v2 + 9);
  v9 = *(v2 + 6);
  v15 = *(v2 + 5);
  v11 = *(v2 + 3);
  v10 = *(v2 + 4);
  v12 = *(v2 + 1);
  v13 = *v2;
  sub_238B6CE84();
  MEMORY[0x23EE72A40](v13 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  sub_238B6CE84();
  if (v9 >> 60 != 15)
  {
    sub_238B6C4E4();
  }

  v6 = v8;
  v7 = v16;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_10:
  sub_238B6CE84();
  sub_238B5C0B0(a1, v5);
  if (v4)
  {
LABEL_11:
    sub_238B6CE84();
    sub_238B5C0B0(a1, v4);
    if (v7)
    {
      return sub_238B6CE84();
    }

LABEL_7:
    sub_238B6CE84();
    return MEMORY[0x23EE72A40](v6);
  }

LABEL_6:
  sub_238B6CE84();
  if (!v7)
  {
    goto LABEL_7;
  }

  return sub_238B6CE84();
}

uint64_t Conversation.Update.hashValue.getter()
{
  sub_238B6CE64();
  Conversation.Update.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t Conversation.Update.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60058, &qword_238B706E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v59 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_238B5C9E0();
  sub_238B6CEB4();
  if (v2)
  {
    v40 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0uLL;
    v54 = 0;
    v55 = 0;
    v56 = v40;
    v57 = 0;
    v58 = v59;
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_238B5CADC();
    sub_238B6CCF4();
    v34 = a2;
    v13 = v50;
    v35 = v49;
    v14 = v51;
    v38 = v52;
    v36 = v53;
    v37 = v54;
    sub_238B3F8F8(0, 0, 0, 0, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60040, &qword_238B706D8);
    LOBYTE(v41) = 1;
    sub_238B5CB30(&qword_27DF60068, sub_238B5CADC);
    sub_238B6CCF4();
    v32 = v13;
    v33 = v14;
    v15 = v49;
    LOBYTE(v41) = 2;
    sub_238B6CCF4();
    v31 = v15;
    v40 = v49;
    v60 = 3;
    sub_238B5CBA8();
    sub_238B6CCF4();
    (*(v6 + 8))(v9, v5);
    v30 = v47;
    v16 = v48;
    v59 = v48;
    v17 = v35;
    *&v41 = v35;
    v18 = v32;
    *(&v41 + 1) = v32;
    v19 = v33;
    *&v42 = v33;
    v20 = v36;
    *(&v42 + 1) = v38;
    v43 = v36;
    v21 = *(&v36 + 1);
    v22 = v37;
    *&v44 = v37;
    v23 = v31;
    *(&v44 + 1) = v31;
    *&v45 = v40;
    *(&v45 + 1) = v47;
    v46 = v48;
    v24 = v42;
    v25 = v34;
    *v34 = v41;
    v25[1] = v24;
    v26 = v43;
    v27 = v44;
    v28 = v45;
    *(v25 + 80) = v16;
    v25[3] = v27;
    v25[4] = v28;
    v25[2] = v26;
    sub_238B4EED8(&v41, &v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v49 = v17;
    v50 = v18;
    v51 = v19;
    v52 = v38;
    *&v53 = v20;
    *(&v53 + 1) = v21;
    v54 = v22;
    v55 = v23;
    v56 = v40;
    v57 = v30;
    v58 = v16;
  }

  return sub_238B4EF34(&v49);
}

uint64_t sub_238B57838()
{
  sub_238B6CE64();
  Conversation.Update.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B5787C()
{
  sub_238B6CE64();
  Conversation.Update.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B578BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_238B6C424();
    if (v10)
    {
      v11 = sub_238B6C444();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_238B6C434();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_238B6C424();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_238B6C444();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_238B6C434();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_238B57AEC(uint64_t a1, uint64_t a2)
{
  v141 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_183:
    result = 1;
LABEL_186:
    v95 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_185:
    result = 0;
    goto LABEL_186;
  }

  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v136 = a2 + 56;
  if (v6)
  {
LABEL_7:
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    goto LABEL_13;
  }

  while (1)
  {
    v9 = v2;
    do
    {
      v2 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
      }

      if (v2 >= v7)
      {
        goto LABEL_183;
      }

      v10 = *(v3 + 8 * v2);
      ++v9;
    }

    while (!v10);
    v8 = __clz(__rbit64(v10));
    v6 = (v10 - 1) & v10;
LABEL_13:
    v121 = v2;
    v124 = a1;
    v11 = (*(a1 + 48) + 56 * (v8 | (v2 << 6)));
    v12 = *v11;
    v14 = v11[1];
    v13 = v11[2];
    v16 = v11[3];
    v15 = v11[4];
    v18 = v11[5];
    v17 = v11[6];
    v19 = *(a2 + 40);
    sub_238B6CE64();
    v130 = v12;
    MEMORY[0x23EE72A40](v12 + 1);

    sub_238B3C90C(v18, v17);
    v134 = v14;
    sub_238B6C8D4();
    v133 = v16;
    sub_238B6C8D4();
    v129 = v17 >> 60;
    v131 = v18;
    v132 = v17;
    v122 = v7;
    v123 = v3;
    sub_238B6CE84();
    if (v17 >> 60 != 15)
    {
      sub_238B6C4E4();
    }

    v20 = sub_238B6CEA4();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v12;
    if (((*(v136 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_184:

      sub_238B3C9AC(v131, v132);
      goto LABEL_185;
    }

    v135 = ~v21;
    v127 = v17 >> 62;
    v24 = !v18 && v17 == 0xC000000000000000;
    v25 = !v24;
    v126 = v25;
    v120 = HIDWORD(v18);
    v26 = __OFSUB__(HIDWORD(v18), v18);
    v125 = v26;
    v118 = (v18 >> 32) - v18;
    v119 = v18 >> 32;
LABEL_30:
    v29 = (*(a2 + 48) + 56 * v22);
    if (*v29 != v23)
    {
      goto LABEL_29;
    }

    v30 = v29[3];
    v31 = v29[4];
    v33 = v29[5];
    v32 = v29[6];
    v34 = v29[1] == v134 && v29[2] == v13;
    if (!v34 && (sub_238B6CDF4() & 1) == 0)
    {
      goto LABEL_29;
    }

    v35 = v30 == v133 && v31 == v15;
    if (!v35 && (sub_238B6CDF4() & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v32 >> 60 == 15)
    {
      if (v129 > 0xE)
      {
        sub_238B3C90C(v33, v32);
        sub_238B3C90C(v131, v132);
        goto LABEL_178;
      }

LABEL_27:
      sub_238B3C90C(v33, v32);
      sub_238B3C90C(v131, v132);
      sub_238B3C9AC(v33, v32);
      v27 = v131;
      v28 = v132;
      goto LABEL_28;
    }

    if (v129 > 0xE)
    {
      goto LABEL_27;
    }

    v36 = v32 >> 62;
    if (v32 >> 62 != 3)
    {
      break;
    }

    if (v33)
    {
      v37 = 0;
    }

    else
    {
      v37 = v32 == 0xC000000000000000;
    }

    v38 = v127;
    v40 = !v37 || v127 < 3;
    if ((v40 | v126))
    {
LABEL_65:
      v41 = 0;
      if (v38 <= 1)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    sub_238B3C90C(0, 0xC000000000000000);
    sub_238B3C90C(0, 0xC000000000000000);
    sub_238B3C90C(0, 0xC000000000000000);
    sub_238B3C9AC(0, 0xC000000000000000);
    v33 = 0;
LABEL_181:
    sub_238B3C9AC(v33, v32);

LABEL_178:
    sub_238B3C9AC(v33, v32);
LABEL_179:

    sub_238B3C9AC(v131, v132);
    v3 = v123;
    a1 = v124;
    v7 = v122;
    v2 = v121;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  v38 = v127;
  if (v36 > 1)
  {
    if (v36 != 2)
    {
      goto LABEL_65;
    }

    v43 = *(v33 + 16);
    v42 = *(v33 + 24);
    v44 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (v44)
    {
      goto LABEL_190;
    }

    if (v127 <= 1)
    {
      goto LABEL_62;
    }
  }

  else if (v36)
  {
    LODWORD(v41) = HIDWORD(v33) - v33;
    if (__OFSUB__(HIDWORD(v33), v33))
    {
      goto LABEL_191;
    }

    v41 = v41;
    if (v127 <= 1)
    {
LABEL_62:
      v45 = BYTE6(v132);
      if (v38)
      {
        v45 = HIDWORD(v131) - v131;
        if (v125)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_68;
    }
  }

  else
  {
    v41 = BYTE6(v32);
    if (v127 <= 1)
    {
      goto LABEL_62;
    }
  }

LABEL_66:
  if (v38 != 2)
  {
    if (!v41)
    {
LABEL_177:

      sub_238B3C90C(v33, v32);
      sub_238B3C90C(v33, v32);
      sub_238B3C90C(v131, v132);
      sub_238B3C9AC(v131, v132);
      sub_238B3C9AC(v33, v32);

      goto LABEL_178;
    }

LABEL_80:

    sub_238B3C90C(v33, v32);
    sub_238B3C90C(v33, v32);
    sub_238B3C90C(v131, v132);
    sub_238B3C9AC(v131, v132);
    sub_238B3C9AC(v33, v32);

    v27 = v33;
    v28 = v32;
LABEL_28:
    sub_238B3C9AC(v27, v28);
    v23 = v130;
    goto LABEL_29;
  }

  v47 = *(v131 + 16);
  v46 = *(v131 + 24);
  v44 = __OFSUB__(v46, v47);
  v45 = v46 - v47;
  if (v44)
  {
    goto LABEL_189;
  }

LABEL_68:
  if (v41 != v45)
  {
    goto LABEL_80;
  }

  if (v41 < 1)
  {
    goto LABEL_177;
  }

  if (v36 > 1)
  {
    if (v36 != 2)
    {
      *&v140[6] = 0;
      *v140 = 0;
      v23 = v130;
      if (v38 == 2)
      {
        __s2b = *(v131 + 24);
        __s1e = *(v131 + 16);

        sub_238B3C90C(v33, v32);
        sub_238B3C90C(v33, v32);
        sub_238B3C90C(v131, v132);
        v68 = sub_238B6C424();
        if (v68)
        {
          v96 = v68;
          v69 = sub_238B6C444();
          v70 = __s1e;
          if (__OFSUB__(__s1e, v69))
          {
            goto LABEL_206;
          }

          v71 = &__s1e[v96 - v69];
        }

        else
        {
          v71 = 0;
          v70 = __s1e;
        }

        __s1g = v71;
        v44 = __OFSUB__(__s2b, v70);
        __s2f = (__s2b - v70);
        if (v44)
        {
          goto LABEL_198;
        }

        result = sub_238B6C434();
        v58 = __s1g;
        if (!__s1g)
        {
          goto LABEL_218;
        }

        v59 = __s2f;
        goto LABEL_141;
      }

      if (v38 != 1)
      {
        v137[0] = v131;
        v66 = v131;
        v67 = v131 >> 8;
LABEL_121:
        v137[1] = v67;
        v137[2] = BYTE2(v66);
        v137[3] = BYTE3(v66);
        v137[4] = v120;
        v137[5] = BYTE5(v66);
        v137[6] = BYTE6(v66);
        v137[7] = HIBYTE(v66);
        v138 = v132;
        v139 = WORD2(v132);

        sub_238B3C90C(v33, v32);
        sub_238B3C90C(v33, v32);
        sub_238B3C90C(v131, v132);
        result = v140;
        v58 = v137;
LABEL_132:
        v86 = BYTE6(v132);
        goto LABEL_174;
      }

      if (v119 < v131)
      {
        goto LABEL_195;
      }

      sub_238B3C90C(v33, v32);
      sub_238B3C90C(v33, v32);
      sub_238B3C90C(v131, v132);
      __s1d = sub_238B6C424();
      if (!__s1d)
      {
        goto LABEL_216;
      }

      v57 = sub_238B6C444();
      if (__OFSUB__(v131, v57))
      {
        goto LABEL_201;
      }

      v49 = &__s1d[v131 - v57];
      result = sub_238B6C434();
      if (!v49)
      {
        goto LABEL_217;
      }

      goto LABEL_98;
    }

    __s1a = *(v33 + 16);

    sub_238B3C90C(v33, v32);
    sub_238B3C90C(v33, v32);
    sub_238B3C90C(v131, v132);
    v51 = sub_238B6C424();
    v23 = v130;
    if (v51)
    {
      v52 = v51;
      v53 = sub_238B6C444();
      if (__OFSUB__(__s1a, v53))
      {
        goto LABEL_193;
      }

      __s1b = &__s1a[v52 - v53];
    }

    else
    {
      __s1b = 0;
    }

    sub_238B6C434();
    if (v127 == 2)
    {
      v98 = *(v131 + 24);
      __s2d = *(v131 + 16);
      v76 = sub_238B6C424();
      if (v76)
      {
        v77 = v76;
        v78 = sub_238B6C444();
        v79 = __s2d;
        if (__OFSUB__(__s2d, v78))
        {
          goto LABEL_207;
        }

        v80 = &__s2d[v77 - v78];
      }

      else
      {
        v80 = 0;
        v79 = __s2d;
      }

      __s2g = v80;
      v87 = v98 - v79;
      if (__OFSUB__(v98, v79))
      {
        goto LABEL_202;
      }

      v88 = sub_238B6C434();
      if (v88 >= v87)
      {
        v89 = v87;
      }

      else
      {
        v89 = v88;
      }

      result = __s1b;
      if (!__s1b)
      {
        goto LABEL_223;
      }

      v58 = __s2g;
      if (!__s2g)
      {
        goto LABEL_222;
      }

      goto LABEL_172;
    }

    if (v127 == 1)
    {
      if (v119 < v131)
      {
        goto LABEL_197;
      }

      v60 = sub_238B6C424();
      if (v60)
      {
        v61 = v60;
        v62 = sub_238B6C444();
        if (__OFSUB__(v131, v62))
        {
          goto LABEL_209;
        }

        __s2 = (v131 - v62 + v61);
      }

      else
      {
        __s2 = 0;
      }

      v90 = sub_238B6C434();
      v89 = (v131 >> 32) - v131;
      if (v90 < v118)
      {
        v89 = v90;
      }

      result = __s1b;
      if (!__s1b)
      {
        goto LABEL_221;
      }

      v58 = __s2;
      if (!__s2)
      {
        goto LABEL_220;
      }

LABEL_172:
      if (result == v58)
      {
        sub_238B3C9AC(v131, v132);
        goto LABEL_181;
      }

      v86 = v89;
      goto LABEL_174;
    }

    result = __s1b;
    *v140 = v131;
    v140[4] = v120;
    *&v140[5] = *(&v131 + 5);
    v140[7] = HIBYTE(v131);
    *&v140[8] = v132;
    *&v140[10] = *(&v132 + 2);
    if (!__s1b)
    {
      goto LABEL_219;
    }

LABEL_131:
    v58 = v140;
    goto LABEL_132;
  }

  if (v36)
  {
    v23 = v130;
    if (v33 > v33 >> 32)
    {
      goto LABEL_192;
    }

    sub_238B3C90C(v33, v32);
    sub_238B3C90C(v33, v32);
    sub_238B3C90C(v131, v132);
    v54 = sub_238B6C424();
    if (v54)
    {
      v55 = v54;
      v56 = sub_238B6C444();
      if (__OFSUB__(v33, v56))
      {
        goto LABEL_194;
      }

      __s1c = (v33 - v56 + v55);
    }

    else
    {
      __s1c = 0;
    }

    sub_238B6C434();
    if (v127 == 2)
    {
      v99 = *(v131 + 24);
      __s2e = *(v131 + 16);
      v81 = sub_238B6C424();
      if (v81)
      {
        v82 = v81;
        v83 = sub_238B6C444();
        v84 = __s2e;
        if (__OFSUB__(__s2e, v83))
        {
          goto LABEL_208;
        }

        v85 = &__s2e[v82 - v83];
      }

      else
      {
        v85 = 0;
        v84 = __s2e;
      }

      __s2h = v85;
      v91 = v99 - v84;
      if (__OFSUB__(v99, v84))
      {
        goto LABEL_204;
      }

      v92 = sub_238B6C434();
      if (v92 >= v91)
      {
        v89 = v91;
      }

      else
      {
        v89 = v92;
      }

      result = __s1c;
      if (!__s1c)
      {
        goto LABEL_215;
      }

      v58 = __s2h;
      if (!__s2h)
      {
        goto LABEL_214;
      }

      goto LABEL_172;
    }

    if (v127 == 1)
    {
      if (v119 < v131)
      {
        goto LABEL_203;
      }

      v63 = sub_238B6C424();
      if (v63)
      {
        v64 = v63;
        v65 = sub_238B6C444();
        if (__OFSUB__(v131, v65))
        {
          goto LABEL_210;
        }

        __s2a = (v131 - v65 + v64);
      }

      else
      {
        __s2a = 0;
      }

      v93 = sub_238B6C434();
      v89 = (v131 >> 32) - v131;
      if (v93 < v118)
      {
        v89 = v93;
      }

      result = __s1c;
      if (!__s1c)
      {
        goto LABEL_226;
      }

      v58 = __s2a;
      if (!__s2a)
      {
        goto LABEL_225;
      }

      goto LABEL_172;
    }

    result = __s1c;
    *v140 = v131;
    v140[4] = v120;
    *&v140[5] = *(&v131 + 5);
    v140[7] = HIBYTE(v131);
    *&v140[8] = v132;
    *&v140[10] = *(&v132 + 2);
    if (!__s1c)
    {
      goto LABEL_224;
    }

    goto LABEL_131;
  }

  *v140 = v33;
  *&v140[8] = v32;
  v140[10] = BYTE2(v32);
  v140[11] = BYTE3(v32);
  v140[12] = BYTE4(v32);
  v140[13] = BYTE5(v32);
  v23 = v130;
  if (!v38)
  {
    v66 = v131;
    v137[0] = v131;
    v67 = v131 >> 8;
    goto LABEL_121;
  }

  if (v38 == 1)
  {
    if (v119 < v131)
    {
      goto LABEL_196;
    }

    sub_238B3C90C(v33, v32);
    sub_238B3C90C(v33, v32);
    sub_238B3C90C(v131, v132);
    __s1 = sub_238B6C424();
    if (!__s1)
    {
      goto LABEL_213;
    }

    v48 = sub_238B6C444();
    if (__OFSUB__(v131, v48))
    {
      goto LABEL_200;
    }

    v49 = &__s1[v131 - v48];
    result = sub_238B6C434();
    if (!v49)
    {
      goto LABEL_212;
    }

LABEL_98:
    v58 = v49;
    v59 = (v131 >> 32) - v131;
LABEL_141:
    if (result >= v59)
    {
      v86 = v59;
    }

    else
    {
      v86 = result;
    }

    result = v140;
LABEL_174:
    v94 = memcmp(result, v58, v86);
    sub_238B3C9AC(v131, v132);
    sub_238B3C9AC(v33, v32);

    sub_238B3C9AC(v33, v32);
    if (!v94)
    {
      goto LABEL_179;
    }

LABEL_29:
    v22 = (v22 + 1) & v135;
    if (((*(v136 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_30;
  }

  __s2c = *(v131 + 24);
  __s1f = *(v131 + 16);

  sub_238B3C90C(v33, v32);
  sub_238B3C90C(v33, v32);
  sub_238B3C90C(v131, v132);
  v72 = sub_238B6C424();
  if (v72)
  {
    v73 = v72;
    v74 = sub_238B6C444();
    v75 = __s1f;
    if (__OFSUB__(__s1f, v74))
    {
      goto LABEL_205;
    }

    v97 = &__s1f[v73 - v74];
  }

  else
  {
    v97 = 0;
    v75 = __s1f;
  }

  __s1h = (__s2c - v75);
  if (__OFSUB__(__s2c, v75))
  {
    goto LABEL_199;
  }

  result = sub_238B6C434();
  v58 = v97;
  if (v97)
  {
    v59 = __s1h;
    goto LABEL_141;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  sub_238B6C434();
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  result = sub_238B6C434();
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
  return result;
}

uint64_t sub_238B589FC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_238B6CE64();
  MEMORY[0x23EE72A40](a2);
  v7 = sub_238B6CEA4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_238B5A444(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_238B58AF4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_238B6CB34();

    if (v9)
    {

      sub_238B5D154();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_238B6CB24();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_238B597BC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_238B59BEC(v22 + 1);
    }

    v20 = v8;
    sub_238B5A3C0(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_238B5D154();
  v11 = *(v6 + 40);
  v12 = sub_238B6CAA4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_238B5A5A0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_238B6CAB4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_238B58D0C(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_238B6CE64();
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v33 = a2;
  MEMORY[0x23EE72A40](v6 + 1);
  v35 = v7;
  sub_238B6C8D4();
  sub_238B6C8D4();
  v11 = sub_238B6CEA4();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v31 = v4;
    v16 = *(v4 + 48);
    while (1)
    {
      v17 = (v16 + 40 * v14);
      if (*v17 == v6)
      {
        v18 = v17[3];
        v19 = v17[4];
        v20 = v17[1] == v35 && v17[2] == v8;
        if (v20 || (sub_238B6CDF4() & 1) != 0)
        {
          v21 = v18 == v9 && v19 == v10;
          if (v21 || (sub_238B6CDF4() & 1) != 0)
          {
            break;
          }
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_238B3C7B0(v33);
    v22 = *(v31 + 48) + 40 * v14;
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
    v25 = *(v22 + 24);
    v26 = *(v22 + 32);
    *a1 = *v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v23;
    *(a1 + 24) = v25;
    *(a1 + 32) = v26;

    return 0;
  }

  else
  {
LABEL_16:
    v28 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v32;
    sub_238B5D0F8(v33, v37);
    sub_238B5A700(v33, v14, isUniquelyReferenced_nonNull_native);
    *v32 = v36;
    v30 = *(v33 + 16);
    *a1 = *v33;
    *(a1 + 16) = v30;
    *(a1 + 32) = *(v33 + 32);
    return 1;
  }
}

uint64_t sub_238B58F14(uint64_t a1, void *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_238B6CE64();
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v10 = a2[6];
  v85 = *a2;
  MEMORY[0x23EE72A40](v85 + 1);
  v84 = v7;
  sub_238B6C8D4();
  v83 = v8;
  v77 = v9;
  sub_238B6C8D4();
  v79 = v10 >> 60;
  v74 = v2;
  v75 = a2;
  sub_238B6CE84();
  if (v10 >> 60 != 15)
  {
    sub_238B6C4E4();
  }

  v12 = sub_238B6CEA4();
  v13 = v4 + 56;
  v14 = -1 << *(v4 + 32);
  v15 = v12 & ~v14;
  if (((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_84:
    v53 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = *v74;
    sub_238B5D048(v75, v87);
    sub_238B5A908(v75, v15, isUniquelyReferenced_nonNull_native);
    *v74 = v86;
    v55 = *(v75 + 16);
    *a1 = *v75;
    *(a1 + 16) = v55;
    *(a1 + 32) = *(v75 + 32);
    *(a1 + 48) = *(v75 + 48);
    result = 1;
    goto LABEL_85;
  }

  v16 = ~v14;
  if (v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10 == 0xC000000000000000;
  }

  v18 = !v17;
  v72 = v18;
  v73 = v10 >> 62;
  v80 = v11;
  v81 = v16;
  v19 = __OFSUB__(HIDWORD(v11), v11);
  v70 = v19;
  v69 = HIDWORD(v11) - v11;
  v78 = v10;
  v71 = BYTE6(v10);
  v20 = v77;
  v82 = v4;
  while (1)
  {
    v23 = (*(v4 + 48) + 56 * v15);
    if (*v23 != v85)
    {
      goto LABEL_18;
    }

    v24 = v23[3];
    v25 = v23[4];
    v27 = v23[5];
    v26 = v23[6];
    v28 = v23[1] == v6 && v23[2] == v84;
    if (!v28 && (sub_238B6CDF4() & 1) == 0)
    {
      goto LABEL_17;
    }

    v29 = v24 == v83 && v25 == v20;
    if (!v29 && (sub_238B6CDF4() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (v26 >> 60 == 15)
    {
      if (v79 > 0xE)
      {
        sub_238B3C90C(v27, v26);
        sub_238B3C90C(v80, v78);
        goto LABEL_88;
      }

LABEL_15:
      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v80, v78);
      sub_238B3C9AC(v27, v26);
      v21 = v80;
      v22 = v78;
      goto LABEL_16;
    }

    if (v79 > 0xE)
    {
      goto LABEL_15;
    }

    v30 = v26 >> 62;
    if (v26 >> 62 == 3)
    {
      if (v27)
      {
        v31 = 0;
      }

      else
      {
        v31 = v26 == 0xC000000000000000;
      }

      v32 = v73;
      v34 = !v31 || v73 < 3;
      if (((v34 | v72) & 1) == 0)
      {

        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C9AC(0, 0xC000000000000000);
        sub_238B3C9AC(0, 0xC000000000000000);

        v65 = 0;
        v66 = 0xC000000000000000;
        goto LABEL_89;
      }

LABEL_54:
      v35 = 0;
      if (v32 > 1)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    v32 = v73;
    if (v30 <= 1)
    {
      break;
    }

    if (v30 != 2)
    {
      goto LABEL_54;
    }

    v37 = *(v27 + 16);
    v36 = *(v27 + 24);
    v38 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v38)
    {
      goto LABEL_93;
    }

    if (v73 > 1)
    {
      goto LABEL_55;
    }

LABEL_51:
    v39 = v71;
    if (v32)
    {
      v39 = v69;
      if (v70)
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
      }
    }

LABEL_57:
    if (v35 != v39)
    {
      goto LABEL_63;
    }

    if (v35 < 1)
    {
      goto LABEL_87;
    }

    v68 = v6;
    if (v30 > 1)
    {
      if (v30 != 2)
      {
        *&v87[6] = 0;
        *v87 = 0;

        sub_238B3C90C(v27, v26);
        sub_238B3C90C(v27, v26);
        v42 = v80;
        v43 = v78;
        sub_238B3C90C(v80, v78);
        goto LABEL_77;
      }

      v44 = *(v27 + 16);
      v67 = *(v27 + 24);

      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v80, v78);
      v45 = sub_238B6C424();
      if (v45)
      {
        v46 = v45;
        v47 = sub_238B6C444();
        if (__OFSUB__(v44, v47))
        {
          goto LABEL_96;
        }

        v48 = v44 - v47 + v46;
      }

      else
      {
        v48 = 0;
      }

      if (__OFSUB__(v67, v44))
      {
        goto LABEL_95;
      }

      sub_238B6C434();
      v51 = v48;
    }

    else
    {
      if (!v30)
      {
        *v87 = v27;
        *&v87[8] = v26;
        v87[10] = BYTE2(v26);
        v87[11] = BYTE3(v26);
        v87[12] = BYTE4(v26);
        v87[13] = BYTE5(v26);

        sub_238B3C90C(v27, v26);
        sub_238B3C90C(v27, v26);
        v42 = v80;
        v43 = v78;
        sub_238B3C90C(v80, v78);
LABEL_77:
        sub_238B578BC(v87, v42, v43, &v86);
        sub_238B3C9AC(v42, v43);
        v52 = v86;
        goto LABEL_82;
      }

      if (v27 >> 32 < v27)
      {
        goto LABEL_94;
      }

      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v80, v78);
      v49 = sub_238B6C424();
      if (v49)
      {
        v50 = sub_238B6C444();
        if (__OFSUB__(v27, v50))
        {
          goto LABEL_97;
        }

        v49 += v27 - v50;
      }

      sub_238B6C434();
      v51 = v49;
    }

    sub_238B578BC(v51, v80, v78, v87);
    sub_238B3C9AC(v80, v78);
    v52 = v87[0];
LABEL_82:
    sub_238B3C9AC(v27, v26);

    sub_238B3C9AC(v27, v26);
    v16 = v81;
    v4 = v82;
    v6 = v68;
    if (v52)
    {
      goto LABEL_90;
    }

LABEL_18:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  if (!v30)
  {
    v35 = BYTE6(v26);
    if (v73 > 1)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  LODWORD(v35) = HIDWORD(v27) - v27;
  if (__OFSUB__(HIDWORD(v27), v27))
  {
    goto LABEL_92;
  }

  v35 = v35;
  if (v73 <= 1)
  {
    goto LABEL_51;
  }

LABEL_55:
  if (v32 == 2)
  {
    v41 = *(v80 + 16);
    v40 = *(v80 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      goto LABEL_91;
    }

    goto LABEL_57;
  }

  if (v35)
  {
LABEL_63:

    sub_238B3C90C(v27, v26);
    sub_238B3C90C(v27, v26);
    sub_238B3C90C(v80, v78);
    v20 = v77;
    sub_238B3C9AC(v80, v78);
    sub_238B3C9AC(v27, v26);

    v21 = v27;
    v22 = v26;
LABEL_16:
    sub_238B3C9AC(v21, v22);
LABEL_17:
    v16 = v81;
    v4 = v82;
    goto LABEL_18;
  }

LABEL_87:

  sub_238B3C90C(v27, v26);
  sub_238B3C90C(v27, v26);
  sub_238B3C90C(v80, v78);
  sub_238B3C9AC(v80, v78);
  sub_238B3C9AC(v27, v26);

LABEL_88:
  v65 = v27;
  v66 = v26;
LABEL_89:
  sub_238B3C9AC(v65, v66);
  v4 = v82;
LABEL_90:
  sub_238B5D0A4(a2);
  v58 = *(v4 + 48) + 56 * v15;
  v60 = *(v58 + 8);
  v59 = *(v58 + 16);
  v61 = *(v58 + 24);
  v62 = *(v58 + 32);
  v63 = *(v58 + 40);
  v64 = *(v58 + 48);
  *a1 = *v58;
  *(a1 + 8) = v60;
  *(a1 + 16) = v59;
  *(a1 + 24) = v61;
  *(a1 + 32) = v62;
  *(a1 + 40) = v63;
  *(a1 + 48) = v64;

  sub_238B3C90C(v63, v64);
  result = 0;
LABEL_85:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238B597BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600C0, &qword_238B709D0);
    v2 = sub_238B6CB74();
    v16 = v2;
    sub_238B6CB14();
    if (sub_238B6CB44())
    {
      sub_238B5D154();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_238B59BEC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_238B6CAA4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_238B6CB44());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_238B5999C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600D0, &qword_238B709D8);
  result = sub_238B6CB64();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v18);
      result = sub_238B6CEA4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_238B59BEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600C0, &qword_238B709D0);
  result = sub_238B6CB64();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_238B6CAA4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_238B59E14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A8, &qword_238B709C8);
  result = sub_238B6CB64();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v22 = v19[1];
      v21 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v25 = *(v6 + 40);
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v20 + 1);
      sub_238B6C8D4();
      sub_238B6C8D4();
      result = sub_238B6CEA4();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v22;
      *(v15 + 16) = v21;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v35;
      v11 = v36;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_238B5A0C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A0, &qword_238B709C0);
  v5 = sub_238B6CB64();
  v6 = v5;
  if (*(v3 + 16))
  {
    v38 = v1;
    v7 = 0;
    v39 = (v3 + 56);
    v40 = v3;
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
    v41 = v5;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_17:
      v19 = (*(v3 + 48) + 56 * (v15 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v24 = v19[3];
      v23 = v19[4];
      v25 = v19[5];
      v26 = v19[6];
      v27 = *(v6 + 40);
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v20 + 1);
      sub_238B6C8D4();
      sub_238B6C8D4();
      sub_238B6CE84();
      if (v26 >> 60 != 15)
      {
        sub_238B6C4E4();
      }

      result = sub_238B6CEA4();
      v6 = v41;
      v28 = -1 << *(v41 + 32);
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

LABEL_34:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v41 + 48) + 56 * v13;
      *v14 = v20;
      *(v14 + 8) = v21;
      *(v14 + 16) = v22;
      *(v14 + 24) = v24;
      *(v14 + 32) = v23;
      *(v14 + 40) = v25;
      *(v14 + 48) = v26;
      ++*(v41 + 16);
      v3 = v40;
      v10 = v42;
    }

    v16 = v7;
    result = v39;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v39[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      v36 = v6;
      bzero(v39, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v36;
    }

    else
    {
      *v39 = -1 << v35;
    }

    v2 = v38;
    *(v3 + 16) = 0;
  }

  v37 = v6;

  *v2 = v37;
  return result;
}

unint64_t sub_238B5A3C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_238B6CAA4();
  v5 = -1 << *(a2 + 32);
  result = sub_238B6CB04();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}