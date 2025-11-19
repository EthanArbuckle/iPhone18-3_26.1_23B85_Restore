void sub_29E662E20()
{
  if (!qword_2A1A7BCF0)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BCF0);
    }
  }
}

uint64_t sub_29E662E70()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E754D78();
  MEMORY[0x29ED96C20](0xD000000000000051, 0x800000029E75AB90);
  MEMORY[0x29ED96C20](v1, v2);
  return 0;
}

uint64_t sub_29E662FC0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = sub_29E74ED28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v15 = [a1 healthDataSource];
  if (v15)
  {
    v16 = v15;
    v17 = sub_29E68B200(MEMORY[0x29EDCA190]);
    if (*(v2 + 16))
    {
      if (*(v2 + 16) == 1)
      {
        v18 = 0x800000029E757160;
        v19 = 0xD00000000000001ALL;
      }

      else
      {
        v19 = 0xD000000000000013;
        v18 = 0x800000029E757180;
      }
    }

    else
    {
      v18 = 0xEC00000064657472;
      v19 = 0x6F70784520464450;
    }

    v29 = MEMORY[0x29EDC99B0];
    v64 = MEMORY[0x29EDC99B0];
    *&v63 = v19;
    *(&v63 + 1) = v18;
    sub_29E61FF28(&v63, v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v17;
    sub_29E61F800(v62, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v31 = v65;
    if (*(v2 + 17))
    {
      if (*(v2 + 17) == 1)
      {
        v32 = 0xEC0000006E6F6974;
        v33 = 0x6163696669746F4ELL;
      }

      else
      {
        v32 = 0xEE006D6F6F522065;
        v33 = 0x7079542061746144;
      }
    }

    else
    {
      v32 = 0xE700000000000000;
      v33 = 0x7972616D6D7553;
    }

    v64 = v29;
    *&v63 = v33;
    *(&v63 + 1) = v32;
    sub_29E61FF28(&v63, v62);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v31;
    sub_29E61F800(v62, 0x6E616E65766F7270, 0xEA00000000006563, v34);
    v35 = v65;
    type metadata accessor for SleepApneaGenericFieldsProvider();
    *(swift_initStackObject() + 16) = v16;
    v36 = *MEMORY[0x29EDBA378];
    v37 = sub_29E7541D8();
    v39 = v38;
    sub_29E74ED18();
    v40 = sub_29E60E000();
    (*(v11 + 8))(v14, v10);
    v64 = sub_29E648728();
    if (!v40)
    {
      v40 = *MEMORY[0x29EDBA360];
    }

    *&v63 = v40;
    sub_29E61FF28(&v63, v62);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v35;
    sub_29E61F800(v62, v37, v39, v41);

    v42 = v65;
    v43 = *MEMORY[0x29EDBA380];
    v44 = sub_29E7541D8();
    v46 = v45;
    v47 = sub_29E60E374();
    v49 = MEMORY[0x29EDC99B0];
    v64 = MEMORY[0x29EDC99B0];
    if (!v48)
    {
      v50 = *MEMORY[0x29EDBA3A8];
      v47 = sub_29E7541D8();
    }

    *&v63 = v47;
    *(&v63 + 1) = v48;
    sub_29E61FF28(&v63, v62);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v42;
    sub_29E61F800(v62, v44, v46, v51);

    v52 = v65;
    v53 = *MEMORY[0x29EDBA370];
    v54 = sub_29E7541D8();
    v56 = v55;
    v57 = sub_29E60E764();
    v64 = v49;
    if (!v58)
    {
      v59 = *MEMORY[0x29EDBA3A8];
      v57 = sub_29E7541D8();
    }

    *&v63 = v57;
    *(&v63 + 1) = v58;
    sub_29E61FF28(&v63, v62);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v52;
    sub_29E61F800(v62, v54, v56, v60);

    sub_29E751758();
    return v65;
  }

  else
  {
    sub_29E752068();
    v20 = sub_29E752088();
    v21 = sub_29E7546B8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v63 = v23;
      *v22 = 136446210;
      v24 = sub_29E755178();
      v26 = sub_29E6B9C90(v24, v25, &v63);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v22, 0xCu);
      sub_29E5FECBC(v23);
      MEMORY[0x29ED98410](v23, -1, -1);
      MEMORY[0x29ED98410](v22, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_29E6636DC();
    swift_allocError();
    *v27 = 0xD000000000000023;
    v27[1] = 0x800000029E75AB60;
    return swift_willThrow();
  }
}

unint64_t sub_29E6636DC()
{
  result = qword_2A1858168;
  if (!qword_2A1858168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858168);
  }

  return result;
}

uint64_t type metadata accessor for SleepNotificationSettingsDisclosureCellViewController()
{
  result = qword_2A1858170;
  if (!qword_2A1858170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6637D0()
{
  v0 = *MEMORY[0x29EDC43E0];
  v2 = sub_29E7541D8();

  MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75ACE0);

  return v2;
}

uint64_t (*sub_29E663840(uint64_t *a1))(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC43E0];
  v5 = sub_29E7541D8();
  v6 = v3;

  MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75ACE0);

  *a1 = v5;
  a1[1] = v6;
  return sub_29E65F39C;
}

id sub_29E6638DC(void *a1, uint64_t a2, void *a3, void *a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_29E7541D8();
    v7 = a4;
    a3 = sub_29E754198();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for SleepNotificationSettingsDisclosureCellViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, a3, a4);

  return v9;
}

id sub_29E6639E8(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for SleepNotificationSettingsDisclosureCellViewController();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29E663AC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepNotificationSettingsDisclosureCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E663B6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  *a2 = v5;
  return result;
}

uint64_t sub_29E663BFC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_29E752898();
}

id sub_29E663C70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  sub_29E6212E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6116C4();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E664944();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E664A30();
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = sub_29E74F758();
  v55[4] = MEMORY[0x29EDC6AF8];
  v55[0] = a1;
  v26 = OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel__viewModel;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v27 = sub_29E74E9D8();
  v54[0] = MEMORY[0x29EDCA190];
  v54[1] = v27;
  v54[2] = v28;
  sub_29E752868();
  (*(v22 + 32))(&a4[v26], v25, v21);
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_subscriptions] = MEMORY[0x29EDCA1A0];
  v29 = &a4[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle];
  *v29 = a2;
  *(v29 + 1) = a3;
  sub_29E602E20(v55, v54);
  sub_29E74F148();
  sub_29E74F138();
  v30 = objc_allocWithZone(sub_29E74F418());
  v31 = sub_29E74F378();
  swift_beginAccess();
  v53 = v31;
  sub_29E752868();
  swift_endAccess();
  v32 = [objc_allocWithZone(sub_29E74F948()) init];
  swift_beginAccess();
  v53 = v32;
  sub_29E752868();
  swift_endAccess();
  v33 = type metadata accessor for SleepOptionsModel();
  v52.receiver = a4;
  v52.super_class = v33;
  v34 = objc_msgSendSuper2(&v52, sel_init);
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v34;
  sub_29E752888();

  v36 = v54[0];
  sub_29E664A88(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
  v37 = sub_29E752758();

  v54[0] = v37;
  sub_29E7527F8();
  v38 = sub_29E7528E8();

  v54[0] = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  v39 = v53;
  sub_29E664A88(&qword_2A1858198, MEMORY[0x29EDC6B68]);
  v40 = sub_29E752758();

  v53 = v40;
  v41 = sub_29E7528E8();

  v53 = v41;
  sub_29E611764();
  sub_29E664A88(&qword_2A1856D60, sub_29E611764);
  sub_29E752678();
  sub_29E602DD4();
  v42 = sub_29E754908();
  v54[0] = v42;
  v43 = sub_29E7548D8();
  (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
  sub_29E664A88(&qword_2A1858188, sub_29E6116C4);
  sub_29E664A88(&qword_2A18568B8, sub_29E602DD4);
  v44 = v49;
  sub_29E752968();
  sub_29E6214E8(v11);
  (*(v48 + 8))(v15, v44);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E664A88(&qword_2A18581A0, sub_29E664944);
  v45 = v51;
  sub_29E7529A8();

  (*(v50 + 8))(v19, v45);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E66C094();

  sub_29E5FECBC(v55);
  return v35;
}

void sub_29E66444C(void *a1)
{
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v47 - v8;
  v10 = sub_29E754828();
  if (v10)
  {
    v11 = v10;
    v12 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v13 = sub_29E754198();
    v14 = [v12 initWithIdentifier:v13 healthStore:v11];

    sub_29E752068();
    v15 = sub_29E752088();
    v16 = sub_29E7546C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v2;
      v50 = v48;
      *v17 = 136446466;
      v18 = sub_29E755178();
      v20 = v3;
      v21 = v11;
      v22 = a1;
      v23 = v14;
      v24 = sub_29E6B9C90(v18, v19, &v50);

      *(v17 + 4) = v24;
      v14 = v23;
      a1 = v22;
      v11 = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E75A480, &v50);
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s.%{public}s]: Presenting sleep settings view", v17, 0x16u);
      v25 = v48;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);

      (*(v20 + 8))(v9, v49);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v33 = qword_2A1A7D6F0;
    v34 = v14;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = sub_29E74E9D8();
    v37 = v36;
    v38 = sub_29E74F758();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = v34;
    v42 = sub_29E74F748();
    v43 = objc_allocWithZone(type metadata accessor for SleepOptionsModel());
    v44 = sub_29E663C70(v42, v35, v37, v43);

    v45 = v44;
    v46 = sub_29E737B1C(v45);
    [a1 showViewController:v46 sender:0];
  }

  else
  {
    sub_29E752048();
    v26 = sub_29E752088();
    v27 = sub_29E7546A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136446466;
      v30 = sub_29E755178();
      v32 = sub_29E6B9C90(v30, v31, &v50);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E75A480, &v50);
      _os_log_impl(&dword_29E5ED000, v26, v27, "[%{public}s.%{public}s]: No available health store for sleep settings view", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v29, -1, -1);
      MEMORY[0x29ED98410](v28, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }
}

void sub_29E664944()
{
  if (!qword_2A1858180)
  {
    sub_29E6116C4();
    sub_29E602DD4();
    sub_29E664A88(&qword_2A1858188, sub_29E6116C4);
    sub_29E664A88(&qword_2A18568B8, sub_29E602DD4);
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858180);
    }
  }
}

void sub_29E664A30()
{
  if (!qword_2A1858190)
  {
    v0 = sub_29E7528A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858190);
    }
  }
}

uint64_t sub_29E664A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E664B18(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 healthDataSource])
  {
    v10 = sub_29E68B200(MEMORY[0x29EDCA190]);
    v11 = *MEMORY[0x29EDBA9B0];
    v12 = sub_29E7541D8();
    v13 = MEMORY[0x29EDC99B0];
    v49 = MEMORY[0x29EDC99B0];
    *&v48 = v12;
    *(&v48 + 1) = v14;
    sub_29E61FF28(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_29E61F800(v47, 0x5665727574616566, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v16 = v50;
    if (*(v2 + 16) > 1u)
    {
      if (*(v2 + 16) == 2)
      {
        v17 = 0xEC000000736B726FLL;
        v18 = 0x5720744920776F48;
      }

      else
      {
        v17 = 0xEA00000000006E6FLL;
        v18 = 0x6974656C706D6F43;
      }
    }

    else if (*(v2 + 16))
    {
      v17 = 0xE700000000000000;
      v18 = 0x756F5920726F46;
    }

    else
    {
      v17 = 0xE600000000000000;
      v18 = 0x705520746553;
    }

    v49 = v13;
    *&v48 = v18;
    *(&v48 + 1) = v17;
    sub_29E61FF28(&v48, v47);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v16;
    sub_29E61F800(v47, 1885697139, 0xE400000000000000, v28);
    v29 = v50;
    v30 = *(v2 + 17);
    if (v30 <= 1)
    {
      if (*(v2 + 17))
      {
        v31 = 0xE600000000000000;
        v32 = 0x6C65636E6143;
      }

      else
      {
        v31 = 0xE500000000000000;
        v32 = 0x7055746573;
      }
    }

    else if (v30 == 2)
    {
      v31 = 0xE400000000000000;
      v32 = 1954047310;
    }

    else if (v30 == 3)
    {
      v31 = 0xE400000000000000;
      v32 = 1801675074;
    }

    else
    {
      v31 = 0xE400000000000000;
      v32 = 1701736260;
    }

    v49 = v13;
    *&v48 = v32;
    *(&v48 + 1) = v31;
    sub_29E61FF28(&v48, v47);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v29;
    sub_29E61F800(v47, 0x6E6F69746361, 0xE600000000000000, v33);
    v34 = v50;
    v35 = v2[3];
    v36 = v2[4];
    v49 = v13;
    *&v48 = v35;
    *(&v48 + 1) = v36;
    sub_29E61FF28(&v48, v47);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v34;
    sub_29E61F800(v47, 0x437972746E756F63, 0xEB0000000065646FLL, v37);
    v38 = v50;
    v39 = *MEMORY[0x29EDBA370];
    v40 = sub_29E7541D8();
    v42 = v41;
    v43 = sub_29E60E764();
    v49 = v13;
    if (!v44)
    {
      v45 = *MEMORY[0x29EDBA3A8];
      v43 = sub_29E7541D8();
    }

    *&v48 = v43;
    *(&v48 + 1) = v44;
    sub_29E61FF28(&v48, v47);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v38;
    sub_29E61F800(v47, v40, v42, v46);

    sub_29E751758();
    return v50;
  }

  else
  {
    sub_29E752068();
    v19 = sub_29E752088();
    v20 = sub_29E7546B8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v48 = v22;
      *v21 = 136446210;
      v23 = sub_29E755178();
      v25 = sub_29E6B9C90(v23, v24, &v48);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource, retu", v21, 0xCu);
      sub_29E5FECBC(v22);
      MEMORY[0x29ED98410](v22, -1, -1);
      MEMORY[0x29ED98410](v21, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_29E665ACC();
    swift_allocError();
    *v26 = 0xD00000000000001ELL;
    v26[1] = 0x800000029E75AD90;
    return swift_willThrow();
  }
}

uint64_t sub_29E66503C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74ED28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 healthDataSource];
  if (v15)
  {
    v16 = v15;
    v17 = sub_29E68B200(MEMORY[0x29EDCA190]);
    v83 = v17;
    v18 = *MEMORY[0x29EDBA9B0];
    v19 = sub_29E7541D8();
    v20 = MEMORY[0x29EDC99B0];
    v82 = MEMORY[0x29EDC99B0];
    *&v81 = v19;
    *(&v81 + 1) = v21;
    sub_29E61FF28(&v81, v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v17;
    sub_29E61F800(v80, 0x5665727574616566, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v23 = v79;
    if (v2[16] > 1u)
    {
      if (v2[16] == 2)
      {
        v24 = 0xEC000000736B726FLL;
        v25 = 0x5720744920776F48;
      }

      else
      {
        v24 = 0xEA00000000006E6FLL;
        v25 = 0x6974656C706D6F43;
      }
    }

    else if (v2[16])
    {
      v24 = 0xE700000000000000;
      v25 = 0x756F5920726F46;
    }

    else
    {
      v24 = 0xE600000000000000;
      v25 = 0x705520746553;
    }

    v82 = v20;
    *&v81 = v25;
    *(&v81 + 1) = v24;
    sub_29E61FF28(&v81, v80);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v23;
    sub_29E61F800(v80, 1885697139, 0xE400000000000000, v35);
    v36 = v79;
    v83 = v79;
    v37 = v2[17];
    if (v37 <= 1)
    {
      if (v2[17])
      {
        v38 = 0xE600000000000000;
        v39 = 0x6C65636E6143;
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x7055746573;
      }
    }

    else if (v37 == 2)
    {
      v38 = 0xE400000000000000;
      v39 = 1954047310;
    }

    else if (v37 == 3)
    {
      v38 = 0xE400000000000000;
      v39 = 1801675074;
    }

    else
    {
      v38 = 0xE400000000000000;
      v39 = 1701736260;
    }

    v82 = v20;
    *&v81 = v39;
    *(&v81 + 1) = v38;
    sub_29E61FF28(&v81, v80);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v36;
    sub_29E61F800(v80, 0x6E6F69746361, 0xE600000000000000, v40);
    v41 = v79;
    v42 = v2[40];
    if (v42 > 3)
    {
      if (v2[40] > 5u)
      {
        if (v42 == 6)
        {
          v43 = 0xE600000000000000;
          v44 = 0x686372616553;
        }

        else
        {
          v43 = 0xE700000000000000;
          v44 = 0x6E776F6E6B6E55;
        }
      }

      else if (v42 == 4)
      {
        v43 = 0x800000029E757230;
        v44 = 0xD000000000000010;
      }

      else
      {
        v43 = 0x800000029E757250;
        v44 = 0xD000000000000012;
      }
    }

    else if (v2[40] > 1u)
    {
      if (v42 == 2)
      {
        v43 = 0xEE006D6F6F522065;
        v44 = 0x7079542061746144;
      }

      else
      {
        v43 = 0xE800000000000000;
        v44 = 0x79726F6765746143;
      }
    }

    else if (v2[40])
    {
      v44 = 0x6F52207065656C53;
      v43 = 0xEA00000000006D6FLL;
    }

    else
    {
      v43 = 0xE700000000000000;
      v44 = 0x7972616D6D7553;
    }

    v82 = v20;
    *&v81 = v44;
    *(&v81 + 1) = v43;
    sub_29E61FF28(&v81, v80);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v41;
    sub_29E61F800(v80, 0x747865746E6F63, 0xE700000000000000, v45);
    v46 = v79;
    v83 = v79;
    v47 = v2[41];
    v48 = MEMORY[0x29EDC9A98];
    if (v47 == 2)
    {
      sub_29E665B20(0xD000000000000013, 0x800000029E75AD60, &v81);
      sub_29E60E88C(&v81);
    }

    else
    {
      v82 = MEMORY[0x29EDC9A98];
      LOBYTE(v81) = v47 & 1;
      sub_29E61FF28(&v81, v80);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v46;
      sub_29E61F800(v80, 0xD000000000000013, 0x800000029E75AD60, v49);
      v83 = v79;
    }

    v50 = v2[42];
    if (v50 == 2)
    {
      sub_29E665B20(0x696C656E49656761, 0xED0000656C626967, &v81);
      sub_29E60E88C(&v81);
    }

    else
    {
      v82 = v48;
      LOBYTE(v81) = v50 & 1;
      sub_29E61FF28(&v81, v80);
      v51 = v83;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v51;
      sub_29E61F800(v80, 0x696C656E49656761, 0xED0000656C626967, v52);
      v83 = v79;
    }

    type metadata accessor for SleepApneaGenericFieldsProvider();
    *(swift_initStackObject() + 16) = v16;
    v53 = *MEMORY[0x29EDBA370];
    v54 = sub_29E7541D8();
    v56 = v55;
    v57 = sub_29E60E764();
    v82 = v20;
    if (!v58)
    {
      v59 = *MEMORY[0x29EDBA3A8];
      v57 = sub_29E7541D8();
    }

    *&v81 = v57;
    *(&v81 + 1) = v58;
    sub_29E61FF28(&v81, v80);
    v60 = v83;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v60;
    sub_29E61F800(v80, v54, v56, v61);

    v83 = v79;
    v62 = *MEMORY[0x29EDBA378];
    v63 = sub_29E7541D8();
    v65 = v64;
    sub_29E74ED18();
    v66 = sub_29E60E000();
    (*(v11 + 8))(v14, v10);
    if (v66)
    {
      v82 = sub_29E648728();
      *&v81 = v66;
      sub_29E61FF28(&v81, v80);
      v67 = v83;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v67;
      sub_29E61F800(v80, v63, v65, v68);

      v83 = v79;
    }

    else
    {
      sub_29E665B20(v63, v65, &v81);

      sub_29E60E88C(&v81);
    }

    v69 = *MEMORY[0x29EDBA380];
    v70 = sub_29E7541D8();
    v72 = v71;
    v73 = sub_29E60E374();
    v82 = v20;
    if (!v74)
    {
      v75 = *MEMORY[0x29EDBA3A8];
      v73 = sub_29E7541D8();
    }

    *&v81 = v73;
    *(&v81 + 1) = v74;
    sub_29E61FF28(&v81, v80);
    v76 = v83;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v76;
    sub_29E61F800(v80, v70, v72, v77);

    sub_29E751758();
    return v79;
  }

  else
  {
    sub_29E752068();
    v26 = sub_29E752088();
    v27 = sub_29E7546B8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v81 = v29;
      *v28 = 136446210;
      v30 = sub_29E755178();
      v32 = sub_29E6B9C90(v30, v31, &v81);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29E5ED000, v26, v27, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v28, 0xCu);
      sub_29E5FECBC(v29);
      MEMORY[0x29ED98410](v29, -1, -1);
      MEMORY[0x29ED98410](v28, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_29E665ACC();
    swift_allocError();
    *v33 = 0xD00000000000001ELL;
    v33[1] = 0x800000029E75AD90;
    return swift_willThrow();
  }
}

id sub_29E665978(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v6 = a3;

  a5(v6);

  v7 = sub_29E754068();

  return v7;
}

uint64_t sub_29E665A70()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_29E665ACC()
{
  result = qword_2A18581A8;
  if (!qword_2A18581A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18581A8);
  }

  return result;
}

double sub_29E665B20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_29E68A9D0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E6A7874();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_29E61FF28((*(v12 + 56) + 32 * v9), a3);
    sub_29E61F4F4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_29E665C04()
{
  result = [objc_opt_self() sleepScheduleType];
  if (result)
  {
    v1 = result;
    if (qword_2A18561C0 != -1)
    {
      swift_once();
    }

    v2 = qword_2A1857AA8;
    v3 = unk_2A1857AB0;
    v4 = qword_2A18561C8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_2A1857AB8;
    v6 = unk_2A1857AC0;
    v7 = type metadata accessor for SupplementaryTypeSection();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();

    sub_29E6CE418(v1, v2, v3, v5, v6);

    sub_29E750828();

    v10 = sub_29E750818();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E665D78()
{
  v0 = sub_29E750868();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750888();
  sub_29E6103B4(v5, qword_2A1869208);
  sub_29E61037C(v5, qword_2A1869208);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A7FA18;
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1FB8], v0);
  v7 = v6;
  return sub_29E750878();
}

uint64_t sub_29E665F00()
{
  v0 = sub_29E750868();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750888();
  sub_29E6103B4(v5, qword_2A1869220);
  sub_29E61037C(v5, qword_2A1869220);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A7FA18;
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1FB8], v0);
  v7 = v6;
  return sub_29E750878();
}

uint64_t sub_29E666088()
{
  v0 = sub_29E750868();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750888();
  sub_29E6103B4(v5, qword_2A1869238);
  sub_29E61037C(v5, qword_2A1869238);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A7FA18;
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1FB8], v0);
  v7 = v6;
  return sub_29E750878();
}

uint64_t sub_29E666210()
{
  v0 = sub_29E750A18();
  sub_29E6103B4(v0, qword_2A1869250);
  sub_29E61037C(v0, qword_2A1869250);
  if (qword_2A18561F8 != -1)
  {
    swift_once();
  }

  return sub_29E750A08();
}

uint64_t sub_29E6662A0()
{
  v0 = sub_29E753908();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDBCA80]);
  result = sub_29E753978();
  qword_2A1869268 = result;
  return result;
}

double sub_29E66637C()
{
  sub_29E752A58();
  result = *&v1;
  xmmword_2A1869270 = v1;
  *&qword_2A1869280 = v2;
  qword_2A1869290 = v3;
  return result;
}

uint64_t sub_29E6663D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();
}

char *sub_29E666450(char *a1)
{
  v46 = a1;
  sub_29E6212E4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E754978();
  v40 = *(v5 - 8);
  v6 = v40;
  v7 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E666F74();
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E666EC4(0, &qword_2A18581D8, sub_29E666E90, MEMORY[0x29EDB8B00]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v18 = &v40 - v17;
  sub_29E666E90(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v40 - v24;
  *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin18AccountStatusModel_subscriptions] = MEMORY[0x29EDCA1A0];
  v26 = OBJC_IVAR____TtC20SleepHealthAppPlugin18AccountStatusModel__accountStatus;
  v27 = sub_29E754968();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  sub_29E61365C(v25, v23);
  sub_29E752868();
  sub_29E667060(v25, sub_29E666E90);
  (*(v15 + 32))(&v1[v26], v18, v14);
  v28 = *(v6 + 16);
  v28(&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin18AccountStatusModel_accountStatusPublisher], v46, v5);
  v29 = type metadata accessor for AccountStatusModel();
  v48.receiver = v1;
  v48.super_class = v29;
  v30 = objc_msgSendSuper2(&v48, sel_init);
  v31 = v41;
  v28(v41, &v30[OBJC_IVAR____TtC20SleepHealthAppPlugin18AccountStatusModel_accountStatusPublisher], v5);
  sub_29E602DD4();
  v32 = v30;
  v33 = sub_29E754908();
  v47 = v33;
  v34 = sub_29E7548D8();
  v35 = v43;
  (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
  sub_29E6670C8(&qword_2A18581E8, MEMORY[0x29EDC1AF8]);
  sub_29E6670C8(&qword_2A18568B8, sub_29E602DD4);
  v36 = v42;
  sub_29E752968();
  sub_29E667060(v35, sub_29E6212E4);

  v37 = *(v40 + 8);
  v37(v31, v5);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E6670C8(&unk_2A18581F0, sub_29E666F74);
  v38 = v44;
  sub_29E7529A8();

  (*(v45 + 8))(v36, v38);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  v37(v46, v5);
  return v32;
}

uint64_t sub_29E666A34(uint64_t a1)
{
  sub_29E666E90(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = sub_29E754968();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, a1, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E61365C(v8, v6);
    sub_29E752898();
    return sub_29E667060(v8, sub_29E666E90);
  }

  return result;
}

id sub_29E666C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountStatusModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountStatusModel()
{
  result = qword_2A18581C8;
  if (!qword_2A18581C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E666D88()
{
  v0 = sub_29E754978();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_29E666EC4(319, &qword_2A18581D8, sub_29E666E90, MEMORY[0x29EDB8B00]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_29E666EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E666F34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountStatusModel();
  result = sub_29E752758();
  *a1 = result;
  return result;
}

void sub_29E666F74()
{
  if (!qword_2A18581E0)
  {
    sub_29E754978();
    sub_29E602DD4();
    sub_29E6670C8(&qword_2A18581E8, MEMORY[0x29EDC1AF8]);
    sub_29E6670C8(&qword_2A18568B8, sub_29E602DD4);
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18581E0);
    }
  }
}

uint64_t sub_29E667060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6670C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E667308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_29E601938((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_29E66A4B0();
    v5 = a4;
    sub_29E754488();
  }

  else
  {
    sub_29E66A5B8();
    sub_29E7543F8();
    sub_29E66A4B0();
    sub_29E754498();
  }
}

uint64_t sub_29E66757C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_29E74E838();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  sub_29E7544C8();
  v6[10] = sub_29E7544B8();
  v11 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E667678, v11, v10);
}

uint64_t sub_29E667678()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v6 = v0[3];

  v0[11] = _Block_copy(v3);
  sub_29E74E7E8();
  v7 = v6;
  v8 = v4;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_29E66776C;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];

  return sub_29E668754(v10, v12, v13);
}

uint64_t sub_29E66776C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 96);
  v8 = *v2;

  v9 = v5[11];
  v10 = v5[6];
  v11 = v5[3];
  (*(v5[8] + 8))(v5[9], v5[7]);

  if (v3)
  {
    v12 = sub_29E74EA38();

    (*(v9 + 16))(v9, 0, v12);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  v13 = v6[11];
  v14 = v6[9];
  _Block_release(v13);

  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_29E667C40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_29E605728;

  return sub_29E66757C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_29E667D14(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_29E66A9A0;

  return v7();
}

uint64_t sub_29E667DFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_29E66A9A0;

  return sub_29E667D14(v2, v3, v5);
}

uint64_t sub_29E667EBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_29E605728;

  return v8();
}

uint64_t sub_29E667FA4()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E667FE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29E66A9A0;

  return sub_29E667EBC(a1, v4, v5, v7);
}

uint64_t sub_29E6680B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x29EDCA398];
  sub_29E66A714(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = v26 - v12;
  sub_29E66A778(a3, v26 - v12, &qword_2A1859CD0, v9);
  v14 = sub_29E7544F8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_29E66A7F8(v13, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_29E7544E8();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_29E754468();
  v19 = v18;
  sub_29E751758();
  if (a2)
  {
LABEL_4:
    v20 = sub_29E754228() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_29E66A7F8(a3, &qword_2A1859CD0, MEMORY[0x29EDCA398]);

    return v24;
  }

LABEL_8:
  sub_29E66A7F8(a3, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_29E6683F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E6684EC;

  return v7(a1);
}

uint64_t sub_29E6684EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29E6685E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29E66A9A0;

  return sub_29E6683F4(a1, v5);
}

uint64_t sub_29E66869C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29E605728;

  return sub_29E6683F4(a1, v5);
}

uint64_t sub_29E668754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = swift_getObjectType();
  v5 = sub_29E752098();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_29E64C90C();
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v10 = sub_29E753EA8();
  v4[38] = v10;
  v11 = *(v10 - 8);
  v4[39] = v11;
  v12 = *(v11 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  sub_29E66A4B0();
  v4[44] = v13;
  v14 = *(v13 - 8);
  v4[45] = v14;
  v15 = *(v14 + 64) + 15;
  v4[46] = swift_task_alloc();
  v16 = sub_29E74ED28();
  v4[47] = v16;
  v17 = *(v16 - 8);
  v4[48] = v17;
  v18 = *(v17 + 64) + 15;
  v4[49] = swift_task_alloc();
  sub_29E66A680();
  v4[50] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  sub_29E66A714(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v22 = *(*(v21 - 8) + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  sub_29E7544C8();
  v4[59] = sub_29E7544B8();
  v24 = sub_29E754468();
  v4[60] = v24;
  v4[61] = v23;

  return MEMORY[0x2A1C73D48](sub_29E668ACC, v24, v23);
}

uint64_t sub_29E668ACC()
{
  v150 = v0;
  v1 = [*(*(v0 + 216) + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_baseDisplayType) graphSeriesForTimeScope_];
  *(v0 + 496) = v1;
  if (!v1)
  {
    v9 = *(v0 + 472);
    v10 = *(v0 + 256);

    sub_29E752068();
    v11 = sub_29E752088();
    v12 = sub_29E7546A8();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 256);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    if (v13)
    {
      v17 = *(v0 + 224);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v149 = v19;
      *v18 = 136446210;
      v20 = sub_29E755178();
      v22 = sub_29E6B9C90(v20, v21, &v149);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] cannot update context item without a graph series", v18, 0xCu);
      sub_29E5FECBC(v19);
      MEMORY[0x29ED98410](v19, -1, -1);
      v23 = v18;
      v1 = 0;
      MEMORY[0x29ED98410](v23, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    v25 = *(v0 + 208);
    v24 = *(v0 + 216);
    v26 = *(v24 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 24);
    v27 = *(v24 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 32);
    sub_29E601938((v24 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider), v26);
    v28 = (*(v27 + 8))(MEMORY[0x29EDCA190], v25, 0, v26, v27);
    v29 = *(v24 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem);
    *(v24 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem) = v28;

    goto LABEL_27;
  }

  v2 = [*(v0 + 200) primaryGraphViewController];
  v3 = [v2 graphView];

  v4 = [v3 effectiveVisibleRangeActive];
  *(v0 + 504) = v4;

  v144 = v4;
  v5 = [v4 startDate];
  v147 = v1;
  if (v5)
  {
    v6 = *(v0 + 464);
    v7 = v5;
    sub_29E74ECD8();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v31 = *(v0 + 456);
  v30 = *(v0 + 464);
  v32 = *(v0 + 416);
  v33 = *(v0 + 400);
  v35 = *(v0 + 376);
  v34 = *(v0 + 384);
  v36 = *(v0 + 192);
  v37 = *(v34 + 56);
  v37(v30, v8, 1, v35);
  sub_29E74E828();
  v137 = v37;
  v37(v31, 0, 1, v35);
  v140 = v33;
  v38 = *(v33 + 48);
  v39 = MEMORY[0x29EDB9BC8];
  sub_29E66A778(v30, v32, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  sub_29E66A778(v31, v32 + v38, &qword_2A1A7CFC0, v39);
  v40 = *(v34 + 48);
  if (v40(v32, 1, v35) == 1)
  {
    v41 = *(v0 + 464);
    v42 = *(v0 + 376);
    v43 = MEMORY[0x29EDB9BC8];
    sub_29E66A7F8(*(v0 + 456), &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    sub_29E66A7F8(v41, &qword_2A1A7CFC0, v43);
    v44 = v40(v32 + v38, 1, v42);
    v45 = *(v0 + 416);
    if (v44 != 1)
    {
LABEL_23:
      sub_29E66A868(v45, sub_29E66A680);
      goto LABEL_24;
    }

    v135 = v40;
    sub_29E66A7F8(v45, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    goto LABEL_14;
  }

  v46 = *(v0 + 376);
  sub_29E66A778(*(v0 + 416), *(v0 + 448), &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  if (v40(v32 + v38, 1, v46) == 1)
  {
    v47 = (v0 + 464);
    v48 = (v0 + 456);
    v49 = (v0 + 416);
    v50 = (v0 + 448);
LABEL_22:
    v74 = *v49;
    v75 = *v50;
    v76 = *v47;
    v78 = *(v0 + 376);
    v77 = *(v0 + 384);
    v79 = MEMORY[0x29EDB9BC8];
    sub_29E66A7F8(*v48, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    sub_29E66A7F8(v76, &qword_2A1A7CFC0, v79);
    (*(v77 + 8))(v75, v78);
    v45 = v74;
    goto LABEL_23;
  }

  v127 = *(v0 + 456);
  v129 = *(v0 + 464);
  v51 = *(v0 + 448);
  v132 = *(v0 + 416);
  v135 = v40;
  v53 = *(v0 + 384);
  v52 = *(v0 + 392);
  v54 = *(v0 + 376);
  (*(v53 + 32))(v52, v32 + v38, v54);
  sub_29E66A958(&qword_2A1858258, MEMORY[0x29EDB9BC8]);
  v55 = sub_29E754108();
  v56 = *(v53 + 8);
  v56(v52, v54);
  v57 = MEMORY[0x29EDB9BC8];
  sub_29E66A7F8(v127, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  sub_29E66A7F8(v129, &qword_2A1A7CFC0, v57);
  v56(v51, v54);
  sub_29E66A7F8(v132, &qword_2A1A7CFC0, v57);
  if (v55)
  {
LABEL_14:
    v58 = [v144 endDate];
    if (v58)
    {
      v59 = *(v0 + 440);
      v60 = v58;
      sub_29E74ECD8();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    v63 = *(v0 + 432);
    v62 = *(v0 + 440);
    v64 = *(v0 + 408);
    v65 = *(v0 + 376);
    v66 = *(v0 + 192);
    v137(v62, v61, 1, v65);
    sub_29E74E7F8();
    v137(v63, 0, 1, v65);
    v67 = *(v140 + 48);
    v68 = MEMORY[0x29EDB9BC8];
    sub_29E66A778(v62, v64, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    sub_29E66A778(v63, v64 + v67, &qword_2A1A7CFC0, v68);
    if (v135(v64, 1, v65) == 1)
    {
      v69 = *(v0 + 440);
      v70 = *(v0 + 376);
      v71 = MEMORY[0x29EDB9BC8];
      sub_29E66A7F8(*(v0 + 432), &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
      sub_29E66A7F8(v69, &qword_2A1A7CFC0, v71);
      v72 = v135(v64 + v67, 1, v70);
      v45 = *(v0 + 408);
      if (v72 == 1)
      {
        sub_29E66A7F8(v45, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
LABEL_31:
        v115 = *(v0 + 384);
        v116 = *(v0 + 392);
        v117 = *(v0 + 376);
        v134 = *(v0 + 368);
        v118 = *(v0 + 360);
        v131 = *(v0 + 352);
        v143 = *(v0 + 200);
        v146 = *(v0 + 208);
        v119 = *(v0 + 192);
        sub_29E74E828();
        v139 = sub_29E74EC98();
        *(v0 + 512) = v139;
        v120 = *(v115 + 8);
        v120(v116, v117);
        sub_29E74E7F8();
        v121 = sub_29E74EC98();
        *(v0 + 520) = v121;
        v120(v116, v117);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_29E6697B4;
        swift_continuation_init();
        *(v0 + 136) = v131;
        v122 = sub_29E5FEBF4((v0 + 112));
        sub_29E66A520();
        sub_29E66A61C();
        sub_29E754478();
        (*(v118 + 32))(v122, v134, v131);
        *(v0 + 80) = MEMORY[0x29EDCA5F8];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_29E667308;
        *(v0 + 104) = &unk_2A24FFC58;
        [v143 cachedDataForCustomGraphSeries:v147 timeScope:v146 resolution:0 startDate:v139 endDate:v121 completion:?];
        (*(v118 + 8))(v122, v131);

        return MEMORY[0x2A1C73CC0](v0 + 16);
      }

      goto LABEL_23;
    }

    v73 = *(v0 + 376);
    sub_29E66A778(*(v0 + 408), *(v0 + 424), &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    if (v135(v64 + v67, 1, v73) != 1)
    {
      v107 = *(v0 + 432);
      v106 = *(v0 + 440);
      v108 = *(v0 + 424);
      v142 = *(v0 + 408);
      v109 = *(v0 + 384);
      v110 = *(v0 + 392);
      v111 = *(v0 + 376);
      (*(v109 + 32))(v110, v64 + v67, v111);
      sub_29E66A958(&qword_2A1858258, MEMORY[0x29EDB9BC8]);
      v112 = sub_29E754108();
      v113 = *(v109 + 8);
      v113(v110, v111);
      v114 = MEMORY[0x29EDB9BC8];
      sub_29E66A7F8(v107, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
      sub_29E66A7F8(v106, &qword_2A1A7CFC0, v114);
      v113(v108, v111);
      sub_29E66A7F8(v142, &qword_2A1A7CFC0, v114);
      if (v112)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    v47 = (v0 + 440);
    v48 = (v0 + 432);
    v49 = (v0 + 408);
    v50 = (v0 + 424);
    goto LABEL_22;
  }

LABEL_24:
  v80 = *(v0 + 472);
  v81 = *(v0 + 264);

  sub_29E752068();
  v82 = sub_29E752088();
  v83 = sub_29E7546C8();
  v84 = os_log_type_enabled(v82, v83);
  v85 = *(v0 + 264);
  v87 = *(v0 + 232);
  v86 = *(v0 + 240);
  if (v84)
  {
    v88 = *(v0 + 224);
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v149 = v90;
    *v89 = 136446210;
    v91 = sub_29E755178();
    v93 = sub_29E6B9C90(v91, v92, &v149);

    *(v89 + 4) = v93;
    _os_log_impl(&dword_29E5ED000, v82, v83, "[%{public}s] skipping update for out of range dates", v89, 0xCu);
    sub_29E5FECBC(v90);
    MEMORY[0x29ED98410](v90, -1, -1);
    MEMORY[0x29ED98410](v89, -1, -1);
  }

  v1 = v147;
  (*(v86 + 8))(v85, v87);
LABEL_27:
  v148 = v1 != 0;
  v95 = *(v0 + 456);
  v94 = *(v0 + 464);
  v97 = *(v0 + 440);
  v96 = *(v0 + 448);
  v99 = *(v0 + 424);
  v98 = *(v0 + 432);
  v101 = *(v0 + 408);
  v100 = *(v0 + 416);
  v102 = *(v0 + 392);
  v103 = *(v0 + 368);
  v123 = *(v0 + 344);
  v124 = *(v0 + 336);
  v125 = *(v0 + 328);
  v126 = *(v0 + 320);
  v128 = *(v0 + 296);
  v130 = *(v0 + 288);
  v133 = *(v0 + 280);
  v136 = *(v0 + 272);
  v138 = *(v0 + 264);
  v141 = *(v0 + 256);
  v145 = *(v0 + 248);

  v104 = *(v0 + 8);

  return v104(v148);
}

uint64_t sub_29E6697B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 528) = v3;
  v4 = *(v1 + 488);
  v5 = *(v1 + 480);
  if (v3)
  {
    v6 = sub_29E66A0EC;
  }

  else
  {
    v6 = sub_29E6698E4;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

size_t sub_29E6698E4()
{
  v102 = v0;
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[59];

  v4 = v0[21];

  v5 = sub_29E6EEEBC(v4);

  if (v5)
  {
    if (v5 >> 62)
    {
      v6 = sub_29E754C98();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = MEMORY[0x29EDCA190];
    if (v6)
    {
      v101 = MEMORY[0x29EDCA190];
      sub_29E754E08();
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        do
        {
          v9 = v8 + 1;
          v10 = [MEMORY[0x29ED976A0]() userInfo];
          sub_29E751758();
          sub_29E754DE8();
          v11 = *(v101 + 16);
          sub_29E754E18();
          sub_29E754E28();
          sub_29E754DF8();
          v8 = v9;
        }

        while (v6 != v9);
      }

      else
      {
        v13 = (v5 + 32);
        do
        {
          v14 = *v13++;
          v15 = [v14 userInfo];
          sub_29E754DE8();
          v16 = *(v101 + 16);
          sub_29E754E18();
          sub_29E754E28();
          sub_29E754DF8();
          --v6;
        }

        while (v6);
      }

      v12 = v101;
    }

    else
    {

      v12 = MEMORY[0x29EDCA190];
    }

    v6 = sub_29E6EF030(v12);

    if (v6)
    {
      if (!(v6 >> 62))
      {
        v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_17:
          v101 = v7;
          result = sub_29E6DBC1C(0, v17 & ~(v17 >> 63), 0);
          if (v17 < 0)
          {
            __break(1u);
            return result;
          }

          v19 = v101;
          v20 = v0[39];
          if ((v6 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v17; ++i)
            {
              v22 = v0[43];
              MEMORY[0x29ED976A0](i, v6);
              sub_29E753ED8();
              sub_29E751758();
              v101 = v19;
              v24 = *(v19 + 16);
              v23 = *(v19 + 24);
              if (v24 >= v23 >> 1)
              {
                sub_29E6DBC1C(v23 > 1, v24 + 1, 1);
                v19 = v101;
              }

              v25 = v0[43];
              v26 = v0[38];
              *(v19 + 16) = v24 + 1;
              (*(v20 + 32))(v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v24, v25, v26);
            }
          }

          else
          {
            v42 = (v6 + 32);
            do
            {
              v43 = v0[40];
              v44 = *v42;
              sub_29E753ED8();

              v101 = v19;
              v46 = *(v19 + 16);
              v45 = *(v19 + 24);
              if (v46 >= v45 >> 1)
              {
                sub_29E6DBC1C(v45 > 1, v46 + 1, 1);
                v19 = v101;
              }

              v47 = v0[40];
              v48 = v0[38];
              *(v19 + 16) = v46 + 1;
              (*(v20 + 32))(v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v46, v47, v48);
              ++v42;
              --v17;
            }

            while (v17);
          }

          goto LABEL_37;
        }

LABEL_36:

        v19 = MEMORY[0x29EDCA190];
LABEL_37:
        v49 = *(v19 + 16);
        if (v49)
        {
          v50 = v0[39];
          v97 = *(v50 + 16);
          v51 = *(v50 + 72);
          v92 = (*(v50 + 80) + 32) & ~*(v50 + 80);
          v52 = v19 + v92;
          v90 = (v50 + 8);
          v94 = (v50 + 32);
          v53 = MEMORY[0x29EDCA190];
          do
          {
            v54 = v0[37];
            v56 = v0[35];
            v55 = v0[36];
            v97(v0[42], v52, v0[38]);
            sub_29E753E88();
            sub_29E66A8F4(v54, v56);
            v57 = sub_29E64A574(v55, v56);
            sub_29E66A868(v55, sub_29E64C90C);
            sub_29E66A868(v54, sub_29E64C90C);
            v58 = v0[42];
            if (v57)
            {
              v59 = *v94;
              (*v94)(v0[41], v0[42], v0[38]);
              v101 = v53;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_29E6DBC1C(0, *(v53 + 16) + 1, 1);
                v53 = v101;
              }

              v61 = *(v53 + 16);
              v60 = *(v53 + 24);
              if (v61 >= v60 >> 1)
              {
                sub_29E6DBC1C(v60 > 1, v61 + 1, 1);
                v53 = v101;
              }

              v62 = v0[41];
              v63 = v0[38];
              *(v53 + 16) = v61 + 1;
              v59(v53 + v92 + v61 * v51, v62, v63);
            }

            else
            {
              (*v90)(v0[42], v0[38]);
            }

            v52 += v51;
            --v49;
          }

          while (v49);
        }

        else
        {
          v53 = MEMORY[0x29EDCA190];
        }

        v65 = v0[62];
        v64 = v0[63];
        v66 = v0[26];
        v67 = v0[27];

        v68 = *(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 24);
        v69 = *(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 32);
        sub_29E601938((v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider), v68);
        v70 = (*(v69 + 8))(v53, v66, 0, v68, v69);

        v71 = *(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem);
        *(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem) = v70;

        v83 = 1;
        goto LABEL_50;
      }

LABEL_35:
      v17 = sub_29E754C98();
      if (v17)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }
  }

  v27 = v0[34];
  sub_29E752068();
  v28 = sub_29E752088();
  v29 = sub_29E7546A8();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[62];
  v32 = v0[63];
  v33 = v0[34];
  v34 = v0[29];
  v35 = v0[30];
  if (v30)
  {
    v99 = v0[29];
    v36 = v0[28];
    v96 = v0[34];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v101 = v38;
    *v37 = 136446210;
    v39 = sub_29E755178();
    v41 = sub_29E6B9C90(v39, v40, &v101);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_29E5ED000, v28, v29, "[%{public}s] skipping update for incompatible chart points", v37, 0xCu);
    sub_29E5FECBC(v38);
    MEMORY[0x29ED98410](v38, -1, -1);
    MEMORY[0x29ED98410](v37, -1, -1);

    (*(v35 + 8))(v96, v99);
  }

  else
  {

    (*(v35 + 8))(v33, v34);
  }

  v83 = 0;
LABEL_50:
  v73 = v0[57];
  v72 = v0[58];
  v75 = v0[55];
  v74 = v0[56];
  v77 = v0[53];
  v76 = v0[54];
  v79 = v0[51];
  v78 = v0[52];
  v80 = v0[49];
  v81 = v0[46];
  v84 = v0[43];
  v85 = v0[42];
  v86 = v0[41];
  v87 = v0[40];
  v88 = v0[37];
  v89 = v0[36];
  v91 = v0[35];
  v93 = v0[34];
  v95 = v0[33];
  v98 = v0[32];
  v100 = v0[31];

  v82 = v0[1];

  return v82(v83);
}

uint64_t sub_29E66A0EC()
{
  v57 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 472);
  v6 = *(v0 + 248);

  swift_willThrow();

  sub_29E752068();
  v7 = v1;
  v8 = sub_29E752088();
  v9 = sub_29E7546A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 528);
    v48 = v10;
    v50 = *(v0 + 496);
    v11 = *(v0 + 240);
    v12 = *(v0 + 224);
    v52 = *(v0 + 232);
    v54 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v56[0] = v14;
    *v13 = 136446466;
    v15 = sub_29E755178();
    v17 = sub_29E6B9C90(v15, v16, v56);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v18 = *(v0 + 144);
    v19 = *(*(v0 + 152) - 8);
    v20 = *(v19 + 64) + 15;
    swift_task_alloc();
    (*(v19 + 16))();
    v21 = sub_29E7541F8();
    v23 = v22;

    v24 = sub_29E6B9C90(v21, v23, v56);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_29E5ED000, v8, v9, "[%{public}s] skipping update due to fetch error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v14, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);

    (*(v11 + 8))(v54, v52);
  }

  else
  {
    v25 = *(v0 + 528);
    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v28 = *(v0 + 232);

    (*(v27 + 8))(v26, v28);
  }

  v30 = *(v0 + 456);
  v29 = *(v0 + 464);
  v31 = *(v0 + 440);
  v32 = *(v0 + 448);
  v34 = *(v0 + 424);
  v33 = *(v0 + 432);
  v36 = *(v0 + 408);
  v35 = *(v0 + 416);
  v37 = *(v0 + 392);
  v38 = *(v0 + 368);
  v41 = *(v0 + 344);
  v42 = *(v0 + 336);
  v43 = *(v0 + 328);
  v44 = *(v0 + 320);
  v45 = *(v0 + 296);
  v46 = *(v0 + 288);
  v47 = *(v0 + 280);
  v49 = *(v0 + 272);
  v51 = *(v0 + 264);
  v53 = *(v0 + 256);
  v55 = *(v0 + 248);

  v39 = *(v0 + 8);

  return v39(0);
}

void sub_29E66A4B0()
{
  if (!qword_2A1858220)
  {
    sub_29E66A520();
    sub_29E66A61C();
    v0 = sub_29E7544A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858220);
    }
  }
}

void sub_29E66A520()
{
  if (!qword_2A1858228)
  {
    sub_29E66A714(255, &qword_2A1858230, sub_29E66A5B8, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858228);
    }
  }
}

unint64_t sub_29E66A5B8()
{
  result = qword_2A1858238;
  if (!qword_2A1858238)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858238);
  }

  return result;
}

unint64_t sub_29E66A61C()
{
  result = qword_2A1A7BCD0;
  if (!qword_2A1A7BCD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7BCD0);
  }

  return result;
}

void sub_29E66A680()
{
  if (!qword_2A1858248)
  {
    sub_29E66A714(255, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858248);
    }
  }
}

void sub_29E66A714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E66A778(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E66A714(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E66A7F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E66A714(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E66A868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E66A8F4(uint64_t a1, uint64_t a2)
{
  sub_29E64C90C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E66A958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E66A9A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_29E66A9EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E66AA88()
{
  sub_29E602E20(v0, v9);
  sub_29E602E20(v0 + 40, v8);
  v1 = type metadata accessor for SleepApneaPromotionDataSource();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_29E711460(v8);
  sub_29E602E20(v9, v7);
  sub_29E6A4E28(v7, v4, 0);

  sub_29E5FECBC(v8);
  sub_29E5FECBC(v9);
  sub_29E66AB78();
  sub_29E750828();

  v5 = sub_29E750818();

  return v5;
}

unint64_t sub_29E66AB78()
{
  result = qword_2A1858260;
  if (!qword_2A1858260)
  {
    type metadata accessor for SleepApneaPromotionDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858260);
  }

  return result;
}

void sub_29E66AC88()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin26MicaAnimationContainerView_animationView;
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin26MicaAnimationContainerView_animationView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v1] setContentMode_];
  [*&v0[v1] setClipsToBounds_];
  v2 = [*&v0[v1] layer];
  [v2 setCornerRadius_];

  [v0 addSubview_];
  v3 = objc_opt_self();
  sub_29E6163F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E7678B0;
  v5 = [*&v0[v1] topAnchor];
  v6 = [v0 layoutMarginsGuide];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [*&v0[v1] leadingAnchor];
  v10 = [v0 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v4 + 40) = v12;
  v13 = [*&v0[v1] bottomAnchor];
  v14 = [v0 layoutMarginsGuide];
  v15 = [v14 bottomAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v4 + 48) = v16;
  v17 = [*&v0[v1] trailingAnchor];
  v18 = [v0 layoutMarginsGuide];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v4 + 56) = v20;
  sub_29E66B09C();
  v21 = sub_29E7543D8();

  [v3 activateConstraints_];
}

id sub_29E66B034()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicaAnimationContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29E66B09C()
{
  result = qword_2A185AC70;
  if (!qword_2A185AC70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A185AC70);
  }

  return result;
}

uint64_t sub_29E66B0E8(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v129 = a2;
  v3 = sub_29E74EC28();
  v131 = *(v3 - 8);
  v132 = v3;
  v4 = *(v131 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v130 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_29E74EBD8();
  v119 = *(v120 - 8);
  v6 = *(v119 + 64);
  MEMORY[0x2A1C7C4A8](v120);
  v118 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_29E74EE68();
  v137 = *(v135 - 8);
  v8 = *(v137 + 64);
  MEMORY[0x2A1C7C4A8](v135);
  v133 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66BE0C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v122 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v126 = &v111 - v14;
  v142 = sub_29E74ED28();
  v134 = *(v142 - 8);
  v15 = v134[8];
  v16 = MEMORY[0x2A1C7C4A8](v142);
  v121 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v123 = &v111 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v136 = &v111 - v20;
  v127 = sub_29E754188();
  v125 = *(v127 - 8);
  v21 = *(v125 + 8);
  MEMORY[0x2A1C7C4A8](v127);
  v124 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E754168();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v25 = sub_29E74EBB8();
  v138 = *(v25 - 8);
  v139 = v25;
  v26 = *(v138 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29E74EBF8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v33 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_29E74EC48();
  v34 = *(v140 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x2A1C7C4A8](v140);
  v117 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v128 = &v111 - v39;
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v42 = &v111 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40);
  v45 = &v111 - v44;
  MEMORY[0x2A1C7C4A8](v43);
  v47 = &v111 - v46;
  v141 = a1;
  if (sub_29E74EDF8())
  {
    MEMORY[0x29ED91080]();
    sub_29E74EBE8();
    sub_29E74EB98();
    (*(v30 + 8))(v33, v29);
    v48 = *(v34 + 8);
    v49 = v42;
    v50 = v140;
    v48(v49, v140);
    sub_29E74EBA8();
    sub_29E74EB78();
    (*(v138 + 8))(v28, v139);
    v48(v45, v50);
    sub_29E66BE64();
    sub_29E74ED08();
    v48(v47, v50);
    sub_29E754158();
    sub_29E754148();
    sub_29E754138();

    sub_29E754148();
    v51 = v124;
    sub_29E754178();
    v52 = sub_29E65B0B4(v51);
    (*(v125 + 1))(v51, v127);
    return v52;
  }

  v112 = v33;
  v113 = v30;
  v114 = v29;
  v116 = v42;
  v115 = v28;
  v124 = v45;
  v125 = v47;
  v127 = v34;
  v54 = v136;
  sub_29E74EDD8();
  v55 = v137;
  v56 = *(v137 + 104);
  v57 = v133;
  v58 = v135;
  v56(v133, *MEMORY[0x29EDB9CB8], v135);
  v59 = v126;
  sub_29E74EE48();
  v62 = *(v55 + 8);
  v60 = v55 + 8;
  v61 = v62;
  v62(v57, v58);
  v63 = v134;
  v64 = v134[6];
  if (v64(v59, 1, v142) == 1)
  {
    (v63[1])(v54, v142);
    v65 = v59;
LABEL_7:
    v76 = sub_29E617214(v65);
    v77 = v131;
    v78 = v127;
    v79 = v125;
    v80 = v138;
    v81 = v115;
    v82 = v116;
    v83 = v114;
    v84 = v113;
    goto LABEL_8;
  }

  v66 = v123;
  v67 = v59;
  v68 = v142;
  v129 = v63[4];
  v129(v123, v67, v142);
  v69 = *MEMORY[0x29EDB9CD0];
  v70 = v133;
  v137 = v60;
  v71 = v135;
  v56(v133, v69, v135);
  v72 = v66;
  v73 = v122;
  sub_29E74EE48();
  v61(v70, v71);
  if (v64(v73, 1, v68) == 1)
  {
    v74 = v134[1];
    v75 = v142;
    v74(v72, v142);
    v74(v136, v75);
    v65 = v73;
    goto LABEL_7;
  }

  v92 = v121;
  v129(v121, v73, v142);
  v93 = sub_29E74ECB8();
  v94 = v131;
  v78 = v127;
  v83 = v114;
  v84 = v113;
  if (v93)
  {
    v95 = v117;
    MEMORY[0x29ED91080]();
    v96 = v112;
    sub_29E74EBE8();
    v97 = v128;
    sub_29E74EB98();
    (*(v84 + 8))(v96, v83);
    v98 = *(v78 + 8);
    v99 = v140;
    v98(v95, v140);
    v100 = v115;
    sub_29E74EBA8();
    v101 = v116;
    sub_29E74EB78();
    (*(v138 + 8))(v100, v139);
    v98(v97, v99);
    v102 = v118;
    sub_29E74EBC8();
    v103 = v124;
    sub_29E74EB88();
    (*(v119 + 8))(v102, v120);
    v98(v101, v99);
    v104 = v130;
    sub_29E74EC08();
    v105 = v125;
    sub_29E74EC38();
    (*(v94 + 8))(v104, v132);
    v98(v103, v99);
    sub_29E66BE64();
    sub_29E74ED08();
    v98(v105, v99);
    v106 = v134[1];
    v107 = v142;
    v106(v121, v142);
    v106(v123, v107);
    v106(v136, v107);
    return v143;
  }

  v108 = v134[1];
  v109 = v92;
  v110 = v142;
  v108(v109, v142);
  v108(v123, v110);
  v76 = (v108)(v136, v110);
  v79 = v125;
  v80 = v138;
  v81 = v115;
  v82 = v116;
  v77 = v94;
LABEL_8:
  v85 = v128;
  MEMORY[0x29ED91080](v76);
  v86 = v112;
  sub_29E74EBE8();
  sub_29E74EB98();
  (*(v84 + 8))(v86, v83);
  v87 = *(v78 + 8);
  v88 = v140;
  v87(v85, v140);
  sub_29E74EBA8();
  v89 = v82;
  v90 = v124;
  sub_29E74EB78();
  (*(v80 + 8))(v81, v139);
  v87(v89, v88);
  v91 = v130;
  sub_29E74EC08();
  sub_29E74EC38();
  (*(v77 + 8))(v91, v132);
  v87(v90, v88);
  sub_29E66BE64();
  sub_29E74ED08();
  v87(v79, v88);
  return v143;
}

void sub_29E66BE0C()
{
  if (!qword_2A1A7CFC0)
  {
    sub_29E74ED28();
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7CFC0);
    }
  }
}

unint64_t sub_29E66BE64()
{
  result = qword_2A1A7CFE8;
  if (!qword_2A1A7CFE8)
  {
    sub_29E74EC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CFE8);
  }

  return result;
}

uint64_t sub_29E66BEE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  return v1;
}

uint64_t sub_29E66BF50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  return v1;
}

void sub_29E66BFC8()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29E66C094();
  }

  else
  {
  }
}

uint64_t sub_29E66C094()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  v2 = sub_29E74F928();

  sub_29E627F28(v2 & 1);
  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle);
  v6 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E752888();

  v7 = sub_29E6D0D2C(v4, v11);

  if (v7)
  {
    if (v5 == v12 && v6 == v13)
    {
    }

    v10 = sub_29E755028();

    if (v10)
    {
    }
  }

  else
  {
  }

  MEMORY[0x2A1C7C4A8](v9);
  sub_29E753C68();
  sub_29E752B18();
}

uint64_t sub_29E66C2C0(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;

  sub_29E752898();
}

id sub_29E66C454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOptionsModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepOptionsModel()
{
  result = qword_2A1858290;
  if (!qword_2A1858290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E66C628()
{
  sub_29E66C778(319, &qword_2A18582A0, MEMORY[0x29EDC6A30]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_29E66C778(319, &qword_2A18582A8, MEMORY[0x29EDC6B68]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_29E664A30();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29E66C778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E7528A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E66C7CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SleepOptionsModel();
  result = sub_29E752758();
  *a1 = result;
  return result;
}

uint64_t sub_29E66C80C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_29E66C2C0(*(v0 + 16));
}

uint64_t sub_29E66C82C()
{
  v1 = v0;
  v18 = sub_29E751168();
  v19 = *(v18 - 8);
  v2 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E751218();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E751228();
  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider;
  sub_29E602E20(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider, v25);
  sub_29E751368();
  v24[2] = &_s28SleepApneaPromotionComponentVN;
  v24[3] = sub_29E66CF70();
  v23 = swift_allocObject();
  sub_29E66CFC4(v25, v23 + 16);
  sub_29E751298();
  (*(v5 + 104))(v8, *MEMORY[0x29EDC2618], v4);
  sub_29E7513D8();
  sub_29E7518E8();

  (*(v5 + 8))(v8, v4);
  sub_29E5FECBC(&v23);
  v10 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureAvailabilityDataSource);
  sub_29E602E20(v1 + v9, v24);
  v23 = v10;
  swift_unknownObjectRetain();
  sub_29E751298();
  v21 = &_s35BreathingDisturbancesChartComponentVN;
  v22 = sub_29E66D020();
  v20[0] = swift_allocObject();
  sub_29E66D074(&v23, v20[0] + 16);
  sub_29E7518F8();

  sub_29E66D0D0(v20);
  sub_29E66D198();
  MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v11 = v17;
  sub_29E751158();
  sub_29E751288();
  v12 = v18;
  v21 = v18;
  v22 = sub_29E66D3C8(&qword_2A18582F8, MEMORY[0x29EDC25A8]);
  v13 = sub_29E5FEBF4(v20);
  v14 = v19;
  (*(v19 + 16))(v13, v11, v12);
  sub_29E7518F8();

  (*(v14 + 8))(v11, v12);
  sub_29E66D1E4(&v23);
  sub_29E66D238(v25);
  return sub_29E66D0D0(v20);
}

uint64_t sub_29E66CC44()
{
  v0 = sub_29E750EE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E751388();
  sub_29E60AC64(v5, v4);

  v6 = sub_29E751A58();
  sub_29E66D28C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E762F30;
  *(v7 + 56) = v0;
  *(v7 + 64) = sub_29E66D3C8(&qword_2A1858328, MEMORY[0x29EDC23F8]);
  v8 = sub_29E5FEBF4((v7 + 32));
  (*(v1 + 16))(v8, v4, v0);
  v9 = MEMORY[0x29EDC2B10];
  *(v7 + 72) = v6;
  *(v7 + 80) = v9;
  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_29E66CDBC()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_context;
  v2 = sub_29E7513C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureAvailabilityDataSource);
  sub_29E751758();
  sub_29E5FECBC((v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BreathingDisturbancesDataTypeDetailConfigurationProvider()
{
  result = qword_2A18582D0;
  if (!qword_2A18582D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E66CECC()
{
  result = sub_29E7513C8();
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

unint64_t sub_29E66CF70()
{
  result = qword_2A18582E0;
  if (!qword_2A18582E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18582E0);
  }

  return result;
}

unint64_t sub_29E66D020()
{
  result = qword_2A18582E8;
  if (!qword_2A18582E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18582E8);
  }

  return result;
}

uint64_t sub_29E66D0D0(uint64_t a1)
{
  sub_29E66D12C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E66D12C()
{
  if (!qword_2A18582F0)
  {
    sub_29E60A664(255, &qword_2A1859440);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18582F0);
    }
  }
}

unint64_t sub_29E66D198()
{
  result = qword_2A1A7BDB0;
  if (!qword_2A1A7BDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7BDB0);
  }

  return result;
}

void sub_29E66D28C()
{
  if (!qword_2A1858300)
  {
    sub_29E66D2E4();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858300);
    }
  }
}

void sub_29E66D2E4()
{
  if (!qword_2A1858308)
  {
    sub_29E60A664(255, &qword_2A1858310);
    sub_29E66D36C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858308);
    }
  }
}

unint64_t sub_29E66D36C()
{
  result = qword_2A1858318;
  if (!qword_2A1858318)
  {
    sub_29E60A664(255, &qword_2A1858320);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A1858318);
  }

  return result;
}

uint64_t sub_29E66D3C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E66D410()
{
  sub_29E66EDD4();
  v1 = v0;
  sub_29E6103B4(v0, qword_2A18692A0);
  sub_29E61037C(v1, qword_2A18692A0);
  type metadata accessor for VitalsWidgetCell(0);
  type metadata accessor for VitalsWidgetItem(0);
  return sub_29E754808();
}

uint64_t sub_29E66D494(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29E66EBF4(0, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v12 - v7;
  sub_29E66F370(a3, &v12 - v7, type metadata accessor for VitalsWidgetItem);
  v9 = type metadata accessor for VitalsWidgetItem(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  swift_beginAccess();
  sub_29E66EE3C(v8, a1 + v10);
  swift_endAccess();
  [a1 setNeedsUpdateConfiguration];
  return sub_29E66ED2C(v8, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
}

uint64_t sub_29E66D5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x29ED929C0]())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    v9 = sub_29E7508E8();
    v11 = v10;
    if (v9 == sub_29E7508E8() && v11 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_29E755028();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_29E66D6A8()
{
  sub_29E66EDD4();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1856208 != -1)
  {
    swift_once();
  }

  v6 = sub_29E61037C(v1, qword_2A18692A0);
  (*(v2 + 16))(v5, v6, v1);
  type metadata accessor for VitalsWidgetCell(0);
  sub_29E7503A8();
  sub_29E750398();
  return swift_storeEnumTagMultiPayload();
}

void sub_29E66D7F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E66EEBC();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2;
  v19 = a1;
  sub_29E66EFB4(0, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
  sub_29E66F020();
  sub_29E753218();
  sub_29E66F198();
  v20[3] = v15;
  v20[4] = sub_29E66F28C(&qword_2A1858370, sub_29E66F198);
  sub_29E5FEBF4(v20);
  sub_29E751088();
  sub_29E66F28C(&qword_2A1856C78, MEMORY[0x29EDC24E0]);
  sub_29E753208();
  (*(v11 + 8))(v14, v10);
  MEMORY[0x29ED972D0](v20);
  (*(v5 + 104))(v8, *MEMORY[0x29EDC6AB0], v4);
  sub_29E754258();
  (*(v5 + 8))(v8, v4);
  v16 = sub_29E754198();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_29E66DB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_29E66EF78(0);
  v49 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VitalsWidgetItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDBCBF8];
  sub_29E66EFB4(0, &qword_2A1858378, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7E8]);
  v48 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v42 - v13;
  v15 = sub_29E7500C8();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v42 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v42 - v23;
  sub_29E66EFB4(0, &qword_2A1858340, sub_29E66EF78, v10, MEMORY[0x29EDBC7F0]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25 - 8);
  v28 = &v42 - v27;
  sub_29E7544C8();
  v47 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  swift_beginAccess();
  if ((*(v7 + 48))(a1 + v29, 1, v6))
  {
    swift_storeEnumTagMultiPayload();
    sub_29E66F0D8();
    sub_29E753118();
  }

  else
  {
    v30 = v43;
    sub_29E66F370(a1 + v29, v43, type metadata accessor for VitalsWidgetItem);
    v32 = v44;
    v31 = v45;
    v33 = *(v44 + 32);
    v33(v22, v30, v45);
    v33(v24, v22, v31);
    (*(v32 + 16))(v19, v24, v31);
    v34 = v46;
    sub_29E750098();
    v35 = sub_29E7533A8();
    sub_29E7529C8();
    v36 = v34 + *(v49 + 36);
    *v36 = v35;
    *(v36 + 8) = v37;
    *(v36 + 16) = v38;
    *(v36 + 24) = v39;
    *(v36 + 32) = v40;
    *(v36 + 40) = 0;
    sub_29E66F370(v34, v14, sub_29E66EF78);
    swift_storeEnumTagMultiPayload();
    sub_29E66F0D8();
    sub_29E753118();
    sub_29E66F3D8(v34, sub_29E66EF78);
    (*(v32 + 8))(v24, v31);
  }

  sub_29E66F2D4(v28, v50);
}

uint64_t sub_29E66DFE8()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E751078();
}

void sub_29E66E3A8()
{
  sub_29E66EBF4(319, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E66E49C()
{
  result = sub_29E7500C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_29E66E538(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E752098();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750F58();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66EBF4(0, &qword_2A1856C20, MEMORY[0x29EDC26F8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_29E7513C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v45 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66EBF4(0, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v35 - v19;
  v21 = type metadata accessor for VitalsWidgetItem(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  swift_beginAccess();
  sub_29E66EC48(v1 + v26, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_29E66ED2C(v20, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  }

  sub_29E66ECC8(v20, v25);
  v28 = v25[*(v21 + 20)];
  sub_29E73D71C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E66F3D8(v25, type metadata accessor for VitalsWidgetItem);
    return sub_29E66ED2C(v12, &qword_2A1856C20, MEMORY[0x29EDC26F8]);
  }

  else
  {
    v36 = v13;
    v37 = v25;
    v29 = v45;
    (*(v14 + 32))(v45, v12, v13);
    v30 = v44;
    sub_29E750F48();
    result = [objc_opt_self() appleBalanceMetricsType];
    if (result)
    {
      v31 = result;
      v32 = sub_29E750F38();

      v33 = [a1 navigationController];
      if (v33)
      {
        v34 = v33;
        [v33 pushViewController:v32 animated:1];
      }

      else
      {
      }

      (*(v42 + 8))(v30, v43);
      (*(v14 + 8))(v29, v36);
      return sub_29E66F3D8(v37, type metadata accessor for VitalsWidgetItem);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_29E66EBF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E66EC48(uint64_t a1, uint64_t a2)
{
  sub_29E66EBF4(0, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E66ECC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VitalsWidgetItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E66ED2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E66EBF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E66ED88()
{
  result = qword_2A1A7D0B0;
  if (!qword_2A1A7D0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7D0B0);
  }

  return result;
}

void sub_29E66EDD4()
{
  if (!qword_2A1858330)
  {
    type metadata accessor for VitalsWidgetCell(255);
    type metadata accessor for VitalsWidgetItem(255);
    v0 = sub_29E754818();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858330);
    }
  }
}

uint64_t sub_29E66EE3C(uint64_t a1, uint64_t a2)
{
  sub_29E66EBF4(0, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E66EEBC()
{
  if (!qword_2A1858338)
  {
    sub_29E66EFB4(255, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
    sub_29E66F020();
    v0 = sub_29E753228();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858338);
    }
  }
}

void sub_29E66EFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29E66F020()
{
  result = qword_2A1858350;
  if (!qword_2A1858350)
  {
    sub_29E66EFB4(255, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
    sub_29E66F0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858350);
  }

  return result;
}

unint64_t sub_29E66F0D8()
{
  result = qword_2A1858358;
  if (!qword_2A1858358)
  {
    sub_29E66EF78(255);
    sub_29E66F28C(&qword_2A1858360, MEMORY[0x29EDC1698]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858358);
  }

  return result;
}

void sub_29E66F198()
{
  if (!qword_2A1858368)
  {
    sub_29E66EFB4(255, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
    sub_29E751088();
    sub_29E66F020();
    sub_29E66F28C(&qword_2A1856C78, MEMORY[0x29EDC24E0]);
    v0 = sub_29E753228();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858368);
    }
  }
}

uint64_t sub_29E66F28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E66F2D4(uint64_t a1, uint64_t a2)
{
  sub_29E66EFB4(0, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E66F370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E66F3D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SleepCollectionViewController()
{
  result = qword_2A1858390;
  if (!qword_2A1858390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E66F484()
{
  sub_29E6707F8(319, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_29E66F540()
{
  v1 = v0;
  sub_29E751A38();
  v2 = sub_29E751A48();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  sub_29E750F28();
  sub_29E7547E8();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_29E7518A8();
  sub_29E7547E8();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  sub_29E7515F8();
  sub_29E7547E8();

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_29E751638();
  sub_29E7547E8();
}

uint64_t sub_29E66F6A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  return v1;
}

void sub_29E66F714(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E752148();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = sub_29E750698();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 104))(v11, *MEMORY[0x29EDC1D60], v7);
  v12 = a1;
  sub_29E754878();
  sub_29E752138();
  sub_29E754888();
  v13 = type metadata accessor for SleepCollectionViewController();
  v14.receiver = v12;
  v14.super_class = v13;
  objc_msgSendSuper2(&v14, sel_viewIsAppearing_, a3);
}

uint64_t sub_29E66F908@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  *a2 = v5;
  return result;
}

uint64_t sub_29E66F988(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_29E752898();
}

uint64_t sub_29E66F9F8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepCollectionViewController();
  v19.receiver = v1;
  v19.super_class = v7;
  objc_msgSendSuper2(&v19, sel_viewDidLayoutSubviews);
  if (*&v1[qword_2A1858388])
  {
    sub_29E752048();
    v8 = sub_29E752088();
    v9 = sub_29E7546C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446210;
      v12 = sub_29E755178();
      v14 = sub_29E6B9C90(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_29E5ED000, v8, v9, "[%{public}s] notifying subscriber for viewDidLayoutSubviews...", v10, 0xCu);
      sub_29E5FECBC(v11);
      MEMORY[0x29ED98410](v11, -1, -1);
      MEMORY[0x29ED98410](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v18) = 1;
  v15 = v1;
  return sub_29E752898();
}

void sub_29E66FC18(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29E66F9F8();
}

uint64_t sub_29E66FCD0()
{
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v6 = &v10[-v5];
  v7 = objc_allocWithZone(v0);
  v8 = qword_2A1858380;
  v10[15] = 0;
  sub_29E752868();
  (*(v3 + 32))(&v7[v8], v6, v2);
  *&v7[qword_2A1858388] = 0;
  return sub_29E751A18();
}

id sub_29E66FDF4(char *a1, uint64_t a2, void *a3)
{
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v16 - v9;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = qword_2A1858380;
  v18 = 0;
  v12 = a3;
  sub_29E752868();
  (*(v7 + 32))(&a1[v11], v10, v6);
  *&a1[qword_2A1858388] = 0;
  v13 = type metadata accessor for SleepCollectionViewController();
  v17.receiver = a1;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_initWithCollectionViewLayout_, v12);

  return v14;
}

id sub_29E66FFA4(void *a1)
{
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = &v13 - v7;
  v9 = qword_2A1858380;
  v15 = 0;
  sub_29E752868();
  (*(v5 + 32))(&v1[v9], v8, v4);
  *&v1[qword_2A1858388] = 0;
  v10 = type metadata accessor for SleepCollectionViewController();
  v14.receiver = v1;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_29E6700F0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_29E66FFA4(a3);

  return v4;
}

uint64_t sub_29E67019C()
{
  v1 = qword_2A1858380;
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_2A1858388);
}

id sub_29E670230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E670268(uint64_t a1)
{
  v2 = qword_2A1858380;
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_2A1858388);
}

uint64_t sub_29E670308@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D60];
  v3 = sub_29E750698();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29E67037C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v42 = a3;
  v40 = a1;
  v41 = a2;
  ObjectType = swift_getObjectType();
  sub_29E6212E4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E7548F8();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6707F8(0, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v18 = &v34 - v17;
  sub_29E67084C();
  v20 = *(v19 - 8);
  v37 = v19;
  v38 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  sub_29E752878();
  swift_endAccess();
  sub_29E7548E8();
  sub_29E602DD4();
  v24 = sub_29E754908();
  v43 = v24;
  v25 = sub_29E7548D8();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  sub_29E62113C();
  sub_29E670924(&qword_2A18568B8, sub_29E602DD4);
  sub_29E752978();
  sub_29E6214E8(v8);

  (*(v35 + 8))(v12, v36);
  (*(v15 + 8))(v18, v14);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v28 = v40;
  v29 = v41;
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  *(v27 + 32) = v29;
  *(v27 + 40) = v42;
  *(v27 + 48) = ObjectType;
  sub_29E670924(&qword_2A18583A8, sub_29E67084C);

  v30 = v37;
  v31 = sub_29E7529A8();

  (*(v38 + 8))(v23, v30);
  v32 = *(v4 + qword_2A1858388);
  *(v4 + qword_2A1858388) = v31;
}

void sub_29E6707F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E67084C()
{
  if (!qword_2A18583A0)
  {
    sub_29E6707F8(255, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
    sub_29E602DD4();
    sub_29E62113C();
    sub_29E670924(&qword_2A18568B8, sub_29E602DD4);
    v0 = sub_29E7526B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18583A0);
    }
  }
}

uint64_t sub_29E670924(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E67096C(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v96 = a6;
  v89 = a5;
  v99 = a3;
  v97 = sub_29E752098();
  v8 = *(v97 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v97);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v94 = v87 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v88 = v87 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v90 = v87 - v17;
  v18 = sub_29E74EEE8();
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v93 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  sub_29E7544C8();
  v22 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v24 = Strong;
  v95 = v8;
  if (v21)
  {
    v87[1] = v22;
    v25 = Strong;
    sub_29E751A08();
    v87[0] = v25;

    sub_29E7510C8();
    v26 = sub_29E750948();

    v98 = *(v26 + 16);
    if (v98)
    {
      v27 = 0;
      v28 = (v26 + 40);
      while (v27 < *(v26 + 16))
      {
        v29 = *(v28 - 1);
        v30 = *v28;

        sub_29E7544B8();
        sub_29E754468();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v102[0] = v29;
        v102[1] = v30;
        v100 = v99;
        v101 = a4;
        sub_29E60DE10();
        v31 = sub_29E754C18();

        if (v31)
        {

          v47 = v93;
          MEMORY[0x29ED917E0](0, v27);
          v48 = v87[0];
          v49 = [v48 collectionView];
          if (v49)
          {
            v50 = v49;
            v51 = *MEMORY[0x29EDC8048];
            v52 = sub_29E74EE98();
            v53 = [v50 layoutAttributesForSupplementaryElementOfKind:v51 atIndexPath:v52];

            if (!v53)
            {

              v71 = v88;
              sub_29E752048();

              v72 = sub_29E752088();
              v73 = sub_29E7546C8();

              if (os_log_type_enabled(v72, v73))
              {
                v74 = swift_slowAlloc();
                v75 = swift_slowAlloc();
                v102[0] = v75;
                *v74 = 136446467;
                v76 = sub_29E755178();
                v78 = sub_29E6B9C90(v76, v77, v102);

                *(v74 + 4) = v78;
                *(v74 + 12) = 2081;
                *(v74 + 14) = sub_29E6B9C90(v99, a4, v102);
                _os_log_impl(&dword_29E5ED000, v72, v73, "[%{public}s] Unable to determine offset for section with identifier %{private}s", v74, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x29ED98410](v75, -1, -1);
                MEMORY[0x29ED98410](v74, -1, -1);
              }

              (*(v95 + 8))(v71, v97);
              (*(v91 + 8))(v47, v92);
              goto LABEL_34;
            }

            [v53 frame];
            v55 = v54;
            v57 = v56;
            v59 = v58;
            v61 = v60;

            v103.origin.x = v55;
            v103.origin.y = v57;
            v103.size.width = v59;
            v103.size.height = v61;
            MinY = CGRectGetMinY(v103);
            v63 = v90;
            sub_29E752048();

            v64 = sub_29E752088();
            v65 = sub_29E7546C8();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v102[0] = v67;
              *v66 = 136446467;
              v68 = sub_29E755178();
              v70 = sub_29E6B9C90(v68, v69, v102);

              *(v66 + 4) = v70;
              *(v66 + 12) = 2081;
              *(v66 + 14) = sub_29E6B9C90(v99, a4, v102);
              _os_log_impl(&dword_29E5ED000, v64, v65, "[%{public}s] Scrolling to header with section identifier %{private}s", v66, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x29ED98410](v67, -1, -1);
              MEMORY[0x29ED98410](v66, -1, -1);

              (*(v95 + 8))(v90, v97);
            }

            else
            {

              (*(v95 + 8))(v63, v97);
            }

            v79 = [v48 collectionView];
            if (v79)
            {
              v80 = v79;
              [v79 adjustedContentInset];
              v82 = v81;

              v83 = [v48 collectionView];
              if (v83)
              {
                [v83 setContentOffset:v89 & 1 animated:{0.0, MinY - v82}];

                v84 = qword_2A1858388;
                if (*&v48[qword_2A1858388])
                {
                  v85 = *&v48[qword_2A1858388];

                  sub_29E752728();
                }

                (*(v91 + 8))(v47, v92);
                v86 = *&v48[v84];
                *&v48[v84] = 0;

                goto LABEL_34;
              }

LABEL_38:
              __break(1u);
              return;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        ++v27;
        v28 += 2;
        if (v98 == v27)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_12:

    v32 = v94;
    sub_29E752048();

    v33 = sub_29E752088();
    v34 = sub_29E7546C8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v102[0] = v36;
      *v35 = 136446467;
      v37 = sub_29E755178();
      v39 = sub_29E6B9C90(v37, v38, v102);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2081;
      *(v35 + 14) = sub_29E6B9C90(v99, a4, v102);
      _os_log_impl(&dword_29E5ED000, v33, v34, "[%{public}s] Can't find index of section with identifier %{private}s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v36, -1, -1);
      MEMORY[0x29ED98410](v35, -1, -1);
    }

    else
    {
    }

    (*(v95 + 8))(v32, v97);
  }

  else
  {
    sub_29E752048();

    v40 = sub_29E752088();
    v41 = sub_29E7546C8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v102[0] = v43;
      *v42 = 136446467;
      v44 = sub_29E755178();
      v46 = sub_29E6B9C90(v44, v45, v102);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2081;
      *(v42 + 14) = sub_29E6B9C90(v99, a4, v102);
      _os_log_impl(&dword_29E5ED000, v40, v41, "[%{public}s] Have not laid out subviews - waiting to scroll to identifier %{private}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v43, -1, -1);
      MEMORY[0x29ED98410](v42, -1, -1);

      (*(v95 + 8))(v12, v97);
    }

    else
    {

      (*(v95 + 8))(v12, v97);
    }
  }

LABEL_34:
}

uint64_t sub_29E671474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E6714BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E671534@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  sub_29E671FD4(0, &qword_2A18583F0, sub_29E672050);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v61 = &v48 - v7;
  sub_29E671E98(0, &qword_2A18583D8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
  v50 = v8;
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v48 - v10;
  sub_29E671DE8();
  v60 = v12;
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v64 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v57 = &v48 - v16;
  sub_29E671FD4(0, &qword_2A18583C0, sub_29E671D94);
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = v58[8];
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v63 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v62 = &v48 - v21;
  sub_29E7544C8();
  v51 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  v23 = *(a1 + 2);
  v22 = *(a1 + 3);
  v24 = *(a1 + 4);
  v25 = a1;
  v65 = *a1;
  v66 = v23;
  v67 = v22;
  v68 = v24;
  sub_29E671D94();

  sub_29E752B58();
  sub_29E752F58();
  v26 = *MEMORY[0x29EDBA748];
  v27 = objc_allocWithZone(MEMORY[0x29EDBABE8]);
  v28 = v26;
  [v27 init];
  sub_29E7516A8();
  v29 = sub_29E7516B8();
  (*(*(v29 - 8) + 56))(v11, 0, 1, v29);
  sub_29E671EFC();
  v30 = v57;
  sub_29E752B58();
  sub_29E752F58();
  *&v65 = *(v25 + 5);
  v31 = v65;
  sub_29E672050();
  v32 = v31;
  v33 = v61;
  sub_29E752B58();
  v48 = v58[2];
  v34 = v59;
  v48(v63, v62, v59);
  v35 = v52;
  v50 = *(v52 + 16);
  v50(v64, v30, v60);
  v36 = v55;
  v49 = *(v55 + 16);
  v37 = v53;
  v38 = v56;
  v49(v53, v33, v56);
  v39 = v54;
  v48(v54, v63, v34);
  sub_29E671CC4();
  v41 = v40;
  v42 = v60;
  v50(&v39[*(v40 + 48)], v64, v60);
  v49(&v39[*(v41 + 64)], v37, v38);
  v43 = *(v36 + 8);
  v43(v61, v38);
  v44 = *(v35 + 8);
  v44(v57, v42);
  v45 = v59;
  v46 = v58[1];
  v46(v62, v59);
  v43(v37, v38);
  v44(v64, v42);
  v46(v63, v45);
}

uint64_t sub_29E671BF4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_29E671E98(0, &qword_2A18583B0, sub_29E671CC4, MEMORY[0x29EDBCC28]);
  sub_29E676400(&qword_2A1858400, &qword_2A18583B0, sub_29E671CC4);
  return sub_29E753528();
}

void sub_29E671CC4()
{
  if (!qword_2A18583B8)
  {
    sub_29E671FD4(255, &qword_2A18583C0, sub_29E671D94);
    sub_29E671DE8();
    sub_29E671FD4(255, &qword_2A18583F0, sub_29E672050);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A18583B8);
    }
  }
}

unint64_t sub_29E671D94()
{
  result = qword_2A18583C8;
  if (!qword_2A18583C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18583C8);
  }

  return result;
}

void sub_29E671DE8()
{
  if (!qword_2A18583D0)
  {
    sub_29E671E98(255, &qword_2A18583D8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
    sub_29E671EFC();
    v0 = sub_29E752B68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18583D0);
    }
  }
}

void sub_29E671E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E671EFC()
{
  result = qword_2A18583E0;
  if (!qword_2A18583E0)
  {
    sub_29E671E98(255, &qword_2A18583D8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
    sub_29E676C80(&qword_2A18583E8, MEMORY[0x29EDC2900]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18583E0);
  }

  return result;
}

void sub_29E671FD4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_29E752B68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E672050()
{
  result = qword_2A18583F8;
  if (!qword_2A18583F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18583F8);
  }

  return result;
}

uint64_t sub_29E6720B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E6720FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_29E672154()
{
  if (!qword_2A1858410)
  {
    sub_29E671E98(255, &qword_2A18583B0, sub_29E671CC4, MEMORY[0x29EDBCC28]);
    sub_29E676400(&qword_2A1858400, &qword_2A18583B0, sub_29E671CC4);
    v0 = sub_29E753538();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858410);
    }
  }
}

uint64_t sub_29E672224()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_29E752F58();
  MEMORY[0x2A1C7C4A8](v0);
  sub_29E671E98(0, &qword_2A1858420, sub_29E676100, MEMORY[0x29EDBCC28]);
  sub_29E676400(&qword_2A1858438, &qword_2A1858420, sub_29E676100);
  sub_29E753B78();
}

uint64_t sub_29E6723B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E752F48();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F38();
  sub_29E752F28();
  v31 = *a1;
  sub_29E752F08();
  sub_29E752F28();
  sub_29E752F68();
  v6 = sub_29E7535E8();
  v30 = v7;
  v29 = v8;
  v28 = v9;
  sub_29E752F38();
  sub_29E752F28();
  v10 = a1[1];
  v11 = a1[2];
  sub_29E752F18();
  sub_29E752F28();
  sub_29E752F68();
  v12 = sub_29E7535E8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_29E752F38();
  sub_29E752F28();
  v19 = a1[3];
  v20 = a1[4];
  sub_29E752F18();
  sub_29E752F28();
  sub_29E752F68();
  v21 = sub_29E7535E8();
  v23 = v22;
  v25 = v24 & 1;
  *a2 = v6;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 & 1;
  *(a2 + 56) = v18;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  *(a2 + 80) = v24 & 1;
  *(a2 + 88) = v26;
  sub_29E62935C(v6, v30, v29 & 1);

  sub_29E62935C(v12, v14, v16 & 1);

  sub_29E62935C(v21, v23, v25);

  sub_29E60DB44(v21, v23, v25);

  sub_29E60DB44(v12, v14, v16 & 1);

  sub_29E60DB44(v6, v30, v29 & 1);
}

uint64_t sub_29E672740()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_29E676248(0, &qword_2A1858418, &qword_2A1858420, sub_29E676100);
  sub_29E676160();
  return sub_29E753528();
}

uint64_t sub_29E6727E4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  sub_29E7535E8();

  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  sub_29E7535E8();

  sub_29E671E98(0, &qword_2A1858448, sub_29E6762CC, MEMORY[0x29EDBCC28]);
  sub_29E676400(&qword_2A1858460, &qword_2A1858448, sub_29E6762CC);
  sub_29E753B88();
}

uint64_t sub_29E672AD0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  sub_29E61D510();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x2A1C7C4A8](v3);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v26 = &v25 - v10;
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v25 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v25 - v14;
  sub_29E7544C8();
  v25 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  *(swift_allocObject() + 16) = a1;
  v16 = a1;
  sub_29E753A38();
  sub_29E752F58();
  *(swift_allocObject() + 16) = v16;
  v17 = v16;
  sub_29E753A38();
  v18 = v5[2];
  v19 = v26;
  v18(v26, v15, v4);
  v20 = v27;
  v18(v27, v13, v4);
  v21 = v28;
  v18(v28, v19, v4);
  sub_29E6762CC();
  v18(&v21[*(v22 + 48)], v20, v4);
  v23 = v5[1];
  v23(v13, v4);
  v23(v15, v4);
  v23(v20, v4);
  v23(v19, v4);
}

uint64_t sub_29E672E38(void *a1)
{
  v2 = sub_29E74ED28();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E671E98(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_29E74E838();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E74EE78();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() hk_gregorianCalendar];
  sub_29E74EE28();

  v21 = v11;
  sub_29E673740(v19, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v16 + 8))(v19, v15);
    return sub_29E6765C0(v9, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
  }

  else
  {
    v32 = v16;
    v33 = v11;
    v23 = v15;
    v24 = *(v21 + 32);
    v34 = v10;
    v24(v14, v9, v10);
    v35 = a1;
    sub_29E673F30(v14, a1);
    sub_29E74E828();
    v25 = sub_29E676630(v5, v19);
    (*(v36 + 8))(v5, v37);
    if (v25 >> 62)
    {
      sub_29E609B5C(0, &qword_2A1858478, 0x29EDBAD60);

      v31 = sub_29E754E68();
      swift_bridgeObjectRelease_n();
      v25 = v31;
    }

    else
    {

      sub_29E755038();
      sub_29E609B5C(0, &qword_2A1858478, 0x29EDBAD60);
    }

    v26 = v32;
    if (v25 >> 62)
    {
      sub_29E609B5C(0, &qword_2A1858480, 0x29EDBACB0);

      sub_29E754E68();
    }

    else
    {

      sub_29E755038();
      sub_29E609B5C(0, &qword_2A1858480, 0x29EDBACB0);
    }

    sub_29E609B5C(0, &qword_2A1858480, 0x29EDBACB0);
    v27 = sub_29E7543D8();

    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    aBlock[4] = sub_29E676BE8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E5FE860;
    aBlock[3] = &unk_2A24FFFF0;
    v29 = _Block_copy(aBlock);

    v30 = v35;
    [v35 saveObjects:v27 skipInsertionFilter:1 completion:v29];
    _Block_release(v29);

    sub_29E674244(v14, v19, v30);
    (*(v33 + 8))(v14, v34);
    return (*(v26 + 8))(v19, v23);
  }
}

uint64_t sub_29E6733A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1);
}

uint64_t sub_29E673458(void *a1)
{
  sub_29E671E98(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_29E74E838();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74EE78();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() hk_gregorianCalendar];
  sub_29E74EE28();

  sub_29E673740(v15, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return sub_29E6765C0(v5, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    sub_29E675080(v10, sub_29E6764D4, v18, a1);

    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_29E673740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v70 = a2;
  v2 = sub_29E752098();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29E671E98(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v60 - v8;
  sub_29E671E98(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], v5);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v60 - v12;
  v14 = sub_29E74E8C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E671E98(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v5);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v22 = &v60 - v21;
  v23 = sub_29E74ED28();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23);
  v64 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v63 = &v60 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v62 = &v60 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v61 = &v60 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v68 = &v60 - v35;
  MEMORY[0x2A1C7C4A8](v34);
  v37 = &v60 - v36;
  sub_29E74ED18();
  v38 = sub_29E74EE78();
  (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
  v39 = sub_29E74EE88();
  (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
  sub_29E74E8B8();
  sub_29E74EDE8();
  (*(v15 + 8))(v18, v14);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v40 = v70;
    sub_29E6765C0(v22, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    v41 = v65;
    sub_29E752068();
    v42 = sub_29E752088();
    v43 = sub_29E7546A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v71 = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v71);
      _os_log_impl(&dword_29E5ED000, v42, v43, "[%{public}s] Could not subtract DateComponents from date", v44, 0xCu);
      sub_29E5FECBC(v45);
      MEMORY[0x29ED98410](v45, -1, -1);
      MEMORY[0x29ED98410](v44, -1, -1);
    }

    (*(v66 + 8))(v41, v67);
    (*(v24 + 8))(v37, v23);
    v46 = 1;
    v47 = v40;
  }

  else
  {
    (*(v24 + 32))(v68, v22, v23);
    v48 = sub_29E74EC98();
    v49 = sub_29E74EE08();
    v50 = [v48 hk:v49 sleepDayStartWithCalendar:?];

    v51 = v61;
    sub_29E74ECD8();

    v52 = sub_29E74EC98();
    v53 = sub_29E74EE08();
    v54 = [v52 hk:v53 sleepDayStartWithCalendar:?];

    v55 = v62;
    sub_29E74ECD8();

    v56 = *(v24 + 16);
    v56(v63, v51, v23);
    v56(v64, v55, v23);
    v47 = v70;
    sub_29E74E808();
    v57 = *(v24 + 8);
    v57(v55, v23);
    v57(v51, v23);
    v57(v68, v23);
    v57(v37, v23);
    v46 = 0;
  }

  v58 = sub_29E74E838();
  return (*(*(v58 - 8) + 56))(v47, v46, 1, v58);
}

void sub_29E673F30(uint64_t a1, void *a2)
{
  v3 = sub_29E74ED28();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v6 = sub_29E74E838();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  sub_29E74E828();
  sub_29E74E7F8();
  sub_29E74E808();
  v12 = sub_29E74E7D8();
  (*(v7 + 8))(v10, v6);
  v13 = [v11 predicateForSamplesWithinDateInterval:v12 options:1];

  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v14 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v22 = sub_29E67578C;
  v23 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v19 = 1107296256;
  v20 = sub_29E675798;
  v21 = &unk_2A2500068;
  v15 = _Block_copy(&aBlock);
  [a2 deleteObjectsOfType:v14 predicate:v13 withCompletion:v15];
  _Block_release(v15);

  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v16 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v22 = sub_29E675820;
  v23 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v19 = 1107296256;
  v20 = sub_29E675798;
  v21 = &unk_2A2500090;
  v17 = _Block_copy(&aBlock);
  [a2 deleteObjectsOfType:v16 predicate:v13 withCompletion:v17];
  _Block_release(v17);
}

uint64_t sub_29E674244(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a3;
  v57 = a1;
  v58 = a2;
  v3 = sub_29E752098();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29E671E98(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v51 - v9;
  sub_29E671E98(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], v6);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v51 - v13;
  v15 = sub_29E74E8C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E671E98(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v6);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v23 = &v51 - v22;
  v24 = sub_29E74ED28();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x2A1C7C4A8](v24);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v52 = &v51 - v30;
  v31 = sub_29E74EE78();
  (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  v32 = sub_29E74EE88();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  sub_29E74E8B8();
  sub_29E74E7F8();
  sub_29E74EDE8();
  v33 = *(v25 + 8);
  v33(v29, v24);
  (*(v16 + 8))(v19, v15);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_29E6765C0(v23, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    v34 = v53;
    sub_29E752068();
    v35 = sub_29E752088();
    v36 = sub_29E7546A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, aBlock);
      _os_log_impl(&dword_29E5ED000, v35, v36, "[%{public}s] Could not determine start date for apnea event sample", v37, 0xCu);
      sub_29E5FECBC(v38);
      MEMORY[0x29ED98410](v38, -1, -1);
      MEMORY[0x29ED98410](v37, -1, -1);
    }

    return (*(v54 + 8))(v34, v55);
  }

  else
  {
    v40 = v52;
    (*(v25 + 32))(v52, v23, v24);
    sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
    v41 = v33;
    v42 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
    sub_29E74E7F8();
    v43 = sub_29E74EC98();
    v44 = sub_29E74EC98();
    v45 = [objc_opt_self() categorySampleWithType:v42 value:0 startDate:v43 endDate:v44];

    v41(v29, v24);
    sub_29E6163F8();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_29E764160;
    *(v46 + 32) = v45;
    sub_29E609B5C(0, &qword_2A1858480, 0x29EDBACB0);
    v47 = v45;

    v48 = sub_29E7543D8();

    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    aBlock[4] = sub_29E676D6C;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E5FE860;
    aBlock[3] = &unk_2A2500040;
    v50 = _Block_copy(aBlock);

    [v56 saveObjects:v48 skipInsertionFilter:1 completion:v50];
    _Block_release(v50);

    return (v41)(v40, v24);
  }
}

void sub_29E6749F0(void *a1, uint64_t a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74ED88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    v15 = [v14 UUID];
    sub_29E74ED68();

    sub_29E74ED48();
    (*(v10 + 8))(v13, v9);
    v16 = sub_29E754198();

    v17 = HKSHCreatePossibleSleepApneaDetectedNotificationRequest();

    v18 = [objc_allocWithZone(MEMORY[0x29EDBACA0]) initWithHealthStore_];
    aBlock[4] = sub_29E674D44;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E5FE860;
    aBlock[3] = &unk_2A24FFFA0;
    v19 = _Block_copy(aBlock);
    [v18 postNotificationWithRequest:v17 completion:v19];
    _Block_release(v19);
  }

  else
  {
    sub_29E752068();
    v20 = sub_29E752088();
    v21 = sub_29E7546C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, aBlock);
      _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Did not get an apnea event sample, not firing notification", v22, 0xCu);
      sub_29E5FECBC(v23);
      MEMORY[0x29ED98410](v23, -1, -1);
      MEMORY[0x29ED98410](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_29E674D44(char a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v26 - v10;
  if (a1)
  {
    sub_29E752068();
    v12 = sub_29E752088();
    v13 = sub_29E7546A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v27);
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Successfully force-fired notification!", v14, 0xCu);
      sub_29E5FECBC(v15);
      MEMORY[0x29ED98410](v15, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    sub_29E752068();
    v17 = a2;
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v27);
      *(v20 + 12) = 2082;
      v26 = a2;
      v22 = a2;
      sub_29E671E98(0, &qword_2A1858A60, sub_29E66A61C, MEMORY[0x29EDC9C68]);
      v23 = sub_29E7541F8();
      v25 = sub_29E6B9C90(v23, v24, &v27);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Error firing notification: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }
}

void sub_29E675080(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_29E74ED28();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v10 = sub_29E74E838();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  sub_29E74E828();
  sub_29E74E7F8();
  sub_29E74E808();
  v16 = sub_29E74E7D8();
  (*(v11 + 8))(v14, v10);
  v17 = [v15 predicateForSamplesWithinDateInterval:v16 options:1];

  v18 = [objc_allocWithZone(MEMORY[0x29EDBAA68]) initWithIdentifier_];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:v18 predicate:v17];

    sub_29E6163F8();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29E764160;
    *(v21 + 32) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;
    v23 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
    sub_29E609B5C(0, &qword_2A1858468, 0x29EDBAD40);
    v24 = v20;

    v25 = sub_29E7543D8();

    sub_29E609B5C(0, &qword_2A1858470, 0x29EDBA0F0);
    v26 = sub_29E7543D8();
    aBlock[4] = sub_29E6764DC;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6F3DE8;
    aBlock[3] = &unk_2A24FFF78;
    v27 = _Block_copy(aBlock);
    v28 = [v23 initWithQueryDescriptors:v25 limit:1 sortDescriptors:v26 resultsHandler:v27];

    _Block_release(v27);

    [a4 executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E67540C(char a1, void *a2, uint64_t a3)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v32 - v12;
  if (a1)
  {
    sub_29E752068();

    v14 = sub_29E752088();
    v15 = sub_29E7546C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v33);
      *(v16 + 12) = 2080;
      v18 = sub_29E609B5C(0, &qword_2A1858478, 0x29EDBAD60);
      v19 = MEMORY[0x29ED96D20](a3, v18);
      v21 = sub_29E6B9C90(v19, v20, &v33);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Successfully wrote samples to database! Samples: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    sub_29E752068();
    v23 = a2;
    v24 = sub_29E752088();
    v25 = sub_29E7546A8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v26 = 136446466;
      *(v26 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v33);
      *(v26 + 12) = 2112;
      if (a2)
      {
        v29 = a2;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v26 + 14) = v30;
      *v27 = v31;
      _os_log_impl(&dword_29E5ED000, v24, v25, "[%{public}s] Could not add samples to database with error: %@", v26, 0x16u);
      sub_29E6764FC(v27);
      MEMORY[0x29ED98410](v27, -1, -1);
      sub_29E5FECBC(v28);
      MEMORY[0x29ED98410](v28, -1, -1);
      MEMORY[0x29ED98410](v26, -1, -1);
    }

    return (*(v7 + 8))(v13, v6);
  }
}

void sub_29E675798(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_29E67582C(char a1, uint64_t a2, void *a3, const char *a4)
{
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v30 - v14;
  if (a1)
  {
    sub_29E752068();
    v16 = sub_29E752088();
    v17 = sub_29E7546C8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v31);
      *(v18 + 12) = 2048;
      *(v18 + 14) = a2;
      _os_log_impl(&dword_29E5ED000, v16, v17, a4, v18, 0x16u);
      sub_29E5FECBC(v19);
      MEMORY[0x29ED98410](v19, -1, -1);
      MEMORY[0x29ED98410](v18, -1, -1);
    }

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    sub_29E752068();
    v21 = a3;
    v22 = sub_29E752088();
    v23 = sub_29E7546A8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v31);
      *(v24 + 12) = 2112;
      if (a3)
      {
        v27 = a3;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v24 + 14) = v28;
      *v25 = v29;
      _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] Could not delete samples from database with error: %@", v24, 0x16u);
      sub_29E6764FC(v25);
      MEMORY[0x29ED98410](v25, -1, -1);
      sub_29E5FECBC(v26);
      MEMORY[0x29ED98410](v26, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);
    }

    return (*(v9 + 8))(v15, v8);
  }
}

void sub_29E675B50(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void))
{
  v7 = sub_29E752098();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v41 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v41 - v16;
  if (a3)
  {
    sub_29E752068();
    v18 = a3;
    v19 = sub_29E752088();
    v20 = sub_29E7546A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v7;
      v42 = v23;
      v24 = a4;
      v25 = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v42);
      *(v21 + 12) = 2112;
      v26 = a3;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v27;
      *v22 = v27;
      _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s] Error fetching apnea event sample from database with error: %@", v21, 0x16u);
      sub_29E6764FC(v22);
      MEMORY[0x29ED98410](v22, -1, -1);
      sub_29E5FECBC(v25);
      v28 = v25;
      a4 = v24;
      MEMORY[0x29ED98410](v28, -1, -1);
      MEMORY[0x29ED98410](v21, -1, -1);

      (*(v8 + 8))(v17, v41);
LABEL_23:
      (a4)(0);
      return;
    }

    v31 = *(v8 + 8);
    v32 = v17;
LABEL_22:
    v31(v32, v7);
    goto LABEL_23;
  }

  if (!a2)
  {
    sub_29E752068();
    v33 = sub_29E752088();
    v34 = sub_29E7546C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v42);
      _os_log_impl(&dword_29E5ED000, v33, v34, "[%{public}s] Got nil samples back from query!", v35, 0xCu);
      sub_29E5FECBC(v36);
      MEMORY[0x29ED98410](v36, -1, -1);
      MEMORY[0x29ED98410](v35, -1, -1);
    }

    v31 = *(v8 + 8);
    v32 = v12;
    goto LABEL_22;
  }

  if (a2 >> 62)
  {
    if (!sub_29E754C98())
    {
      goto LABEL_19;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    sub_29E752068();
    v37 = sub_29E752088();
    v38 = sub_29E7546A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v42);
      _os_log_impl(&dword_29E5ED000, v37, v38, "[%{public}s] Could not cast fetched sample as an apnea event sample", v39, 0xCu);
      sub_29E5FECBC(v40);
      MEMORY[0x29ED98410](v40, -1, -1);
      MEMORY[0x29ED98410](v39, -1, -1);
    }

    v31 = *(v8 + 8);
    v32 = v15;
    goto LABEL_22;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x29ED976A0](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v29 = *(a2 + 32);
  }

  v41 = v29;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_19;
  }

  a4();
  v30 = v41;
}

uint64_t sub_29E676048()
{
  v2 = *v0;
  sub_29E676248(0, &qword_2A1858440, &qword_2A1858448, sub_29E6762CC);
  sub_29E676330();
  return sub_29E753528();
}

void sub_29E676100()
{
  if (!qword_2A1858428)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1858428);
    }
  }
}

unint64_t sub_29E676160()
{
  result = qword_2A1858430;
  if (!qword_2A1858430)
  {
    sub_29E676248(255, &qword_2A1858418, &qword_2A1858420, sub_29E676100);
    sub_29E676400(&qword_2A1858438, &qword_2A1858420, sub_29E676100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858430);
  }

  return result;
}

void sub_29E676248(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E671E98(255, a3, a4, MEMORY[0x29EDBCC28]);
    v5 = sub_29E753BA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6762CC()
{
  if (!qword_2A1858450)
  {
    sub_29E61D510();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858450);
    }
  }
}

unint64_t sub_29E676330()
{
  result = qword_2A1858458;
  if (!qword_2A1858458)
  {
    sub_29E676248(255, &qword_2A1858440, &qword_2A1858448, sub_29E6762CC);
    sub_29E676400(&qword_2A1858460, &qword_2A1858448, sub_29E6762CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858458);
  }

  return result;
}

uint64_t sub_29E676400(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E671E98(255, a2, a3, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6764E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6764FC(uint64_t a1)
{
  sub_29E676558();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E676558()
{
  if (!qword_2A1A7D0A8)
  {
    sub_29E609B5C(255, &qword_2A1A7D0B0, 0x29EDC9738);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D0A8);
    }
  }
}

uint64_t sub_29E6765C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E671E98(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E676630(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v66 = sub_29E74EE68();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v66);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E671E98(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v64 = &v50 - v11;
  v12 = sub_29E74ED28();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v50 - v17;
  v63 = 0;
  v52 = MEMORY[0x29EDCA190];
  v68 = MEMORY[0x29EDCA190];
  v19 = *(v3 + 104);
  v58 = *MEMORY[0x29EDB9CB8];
  v65 = v3 + 104;
  v61 = (v3 + 8);
  v62 = v19;
  v60 = (v20 + 48);
  v56 = (v20 + 32);
  v55 = *MEMORY[0x29EDB9CE8];
  v53 = &v50 - v17;
  v54 = (v20 + 8);
  v21 = 0x20u;
  v22 = *MEMORY[0x29EDBA850];
  v50 = v16;
  v51 = v22;
  v57 = a1;
  while (1)
  {
    v24 = *(&unk_2A24FC6A0 + v21);
    v25 = v59;
    v26 = v66;
    v62(v59, v58, v66);
    v27 = v64;
    sub_29E74EE48();
    v28 = *v61;
    (*v61)(v25, v26);
    v29 = *v60;
    v30 = (*v60)(v27, 1, v12);
    v23 = v27;
    if (v30 == 1)
    {
      goto LABEL_3;
    }

    v31 = *v56;
    (*v56)(v18, v64, v12);
    v32 = v59;
    v33 = v10;
    v34 = v66;
    v62(v59, v55, v66);
    sub_29E74EE48();
    v35 = v32;
    v36 = v12;
    v37 = v34;
    v10 = v33;
    v28(v35, v37);
    if (v29(v33, 1, v12) != 1)
    {
      break;
    }

    v18 = v53;
    (*v54)(v53, v12);
    v23 = v33;
LABEL_3:
    sub_29E6765C0(v23, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
LABEL_4:
    v21 += 8;
    if (v21 == 1472)
    {
      return v52;
    }
  }

  v38 = v50;
  v31(v50, v10, v12);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v39 = MEMORY[0x29ED97000](v51);
  v40 = [objc_opt_self() countUnit];
  v41 = [objc_opt_self() quantityWithUnit:v40 doubleValue:v24];

  v42 = v53;
  v43 = sub_29E74EC98();
  v44 = sub_29E74EC98();
  v45 = [objc_opt_self() quantitySampleWithType:v39 quantity:v41 startDate:v43 endDate:v44];

  MEMORY[0x29ED96CE0]();
  v12 = v36;
  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v49 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E754418();
  }

  sub_29E754438();
  v46 = *v54;
  (*v54)(v38, v36);
  result = (v46)(v42, v36);
  if (!__OFADD__(v63++, 1))
  {
    v18 = v42;
    v52 = v68;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_29E676BF0()
{
  if (!qword_2A1858490)
  {
    sub_29E676248(255, &qword_2A1858418, &qword_2A1858420, sub_29E676100);
    sub_29E676160();
    v0 = sub_29E753538();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858490);
    }
  }
}

uint64_t sub_29E676C80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E676CC8()
{
  if (!qword_2A18584A0)
  {
    sub_29E676248(255, &qword_2A1858440, &qword_2A1858448, sub_29E6762CC);
    sub_29E676330();
    v0 = sub_29E753538();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18584A0);
    }
  }
}

uint64_t type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController()
{
  result = qword_2A18584C0;
  if (!qword_2A18584C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_29E676E34(void *a1)
{
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A18584A8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_2A18584B8) = 0;
  v8 = type metadata accessor for SleepApneaOnboardingConfirmDetailsDataSource();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v20 = a1;
  v11 = sub_29E681268(a1);
  v12 = qword_2A18584B0;
  *(v1 + qword_2A18584B0) = v11;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v19 = sub_29E74F7C8();
  v13 = *(v4 + 8);
  v13(v7, v3);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v13(v7, v3);
  v14 = *(v1 + v12);

  v15 = sub_29E751568();
  v16 = *&v15[qword_2A18584B0];
  sub_29E6790A8();
  v17 = v15;

  sub_29E751818();

  return v17;
}

void sub_29E6770E4()
{
  v1 = v0;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74F8B8();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController();
  v40.receiver = v0;
  v40.super_class = v12;
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v13 = *(v8 + 8);
  v37 = v7;
  v33 = v13;
  v13(v11, v7);
  v14 = sub_29E754198();

  v15 = v3[13];
  v38 = *MEMORY[0x29EDC6AC0];
  v36 = v15;
  v34 = v3 + 13;
  (v15)(v6);
  sub_29E754238();
  v16 = v3[1];
  v39 = v3 + 1;
  v35 = v16;
  v16(v6, v2);
  v17 = sub_29E754198();

  v18 = [v1 hxui:v14 addPrimaryFooterButtonWithTitle:v17 accessibilityIdentifier:?];

  v19 = *&v1[qword_2A18584B8];
  *&v1[qword_2A18584B8] = v18;
  v20 = v18;

  v21 = *&v1[qword_2A18584B0];
  v22 = sub_29E680A7C() != 2 && sub_29E680A70() != 2;
  [v20 setEnabled_];

  v23 = [v1 buttonTray];
  sub_29E74F8A8();
  sub_29E74F7C8();
  v33(v11, v37);
  v24 = sub_29E754198();

  [v23 setCaptionText_];

  v25 = [v1 headerView];
  v26 = v38;
  v27 = v36;
  v37 = v1;
  v36(v6, v38, v2);
  sub_29E754238();
  v28 = v35;
  v35(v6, v2);
  v29 = sub_29E754198();

  [v25 setTitleAccessibilityIdentifier_];

  v30 = [v37 headerView];
  v27(v6, v26, v2);
  sub_29E754238();
  v28(v6, v2);
  v31 = sub_29E754198();

  [v30 setDetailTextAccessibilityIdentifier_];
}

uint64_t sub_29E67763C()
{
  sub_29E679100(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v12 - v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_29E7544D8();
    v7 = sub_29E7544F8();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_29E7544C8();
    swift_unknownObjectRetain();
    v8 = v0;
    v9 = sub_29E7544B8();
    v10 = swift_allocObject();
    v11 = MEMORY[0x29EDCA390];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v8;
    v10[6] = &off_2A25000D0;
    sub_29E6E4804(0, 0, v4, &unk_29E767EC0, v10);

    return sub_29E751758();
  }

  return result;
}

void sub_29E6777D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E6778AC(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29E6D18E4(v3);

    sub_29E751758();
  }

  else
  {
  }
}

void sub_29E6779E8()
{
  sub_29E5F0140(v0 + qword_2A18584A8);
  v1 = *(v0 + qword_2A18584B0);

  v2 = *(v0 + qword_2A18584B8);
}

id sub_29E677A38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E677A70(uint64_t a1)
{
  sub_29E5F0140(a1 + qword_2A18584A8);
  v2 = *(a1 + qword_2A18584B0);

  v3 = *(a1 + qword_2A18584B8);
}

uint64_t sub_29E677ADC(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A18584A8 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29E751758();
}

uint64_t sub_29E677B2C(char a1, void *a2, uint64_t *a3)
{
  v57 = a2;
  v58 = a3;
  v59 = 0xD000000000000017;
  v4 = *a3;
  v5 = sub_29E74F698();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F8B8();
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752098();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v17 = sub_29E752088();
  v18 = sub_29E7546C8();
  v19 = os_log_type_enabled(v17, v18);
  v53 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v51 = v12;
    v22 = v21;
    v61 = v21;
    *v20 = 136315650;
    nullsub_1(v4);
    v23 = sub_29E755178();
    v25 = sub_29E6B9C90(v23, v24, &v61);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_29E6B9C90(0xD000000000000017, 0x800000029E75B880, &v61);
    *(v20 + 22) = 2080;
    v60 = a1;
    v26 = sub_29E7541F8();
    v28 = sub_29E6B9C90(v26, v27, &v61);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_29E5ED000, v17, v18, "[%s.%s]: Showing blocking alert due to reason %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v22, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);

    (*(v13 + 8))(v16, v51);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v29 = v52;
  if (!a1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v51 = sub_29E74F7C8();
    v31 = v33;
    v32 = "ONBOARDING_ALERT_AGE_TOO_LOW";
    v34 = 0xD000000000000014;
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v51 = sub_29E74F7C8();
    v31 = v35;
    v32 = "_UNKNOWN_COMPLETION_ERROR";
    v34 = 0xD000000000000012;
LABEL_15:
    v59 = v34;
    goto LABEL_16;
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v51 = sub_29E74F7C8();
  v31 = v30;
  v32 = "_NO_SLEEP_APNEA_DIAGNOSIS";
LABEL_16:
  v36 = *(v29 + 8);
  v37 = v53;
  v36(v11, v53);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v36(v11, v37);
  v38 = sub_29E754198();

  v39 = [objc_opt_self() actionWithTitle:v38 style:1 handler:0];

  v41 = v54;
  v40 = v55;
  v42 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x29EDC6AC0], v56);
  sub_29E67905C(0, &qword_2A1A7BCF0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29E762F30;
  *(v43 + 32) = v59;
  *(v43 + 40) = v32 | 0x8000000000000000;
  v44 = sub_29E754238();
  v46 = v45;

  (*(v40 + 8))(v41, v42);
  sub_29E67905C(0, &qword_2A1A7BCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  *(inited + 32) = v39;
  v48 = v39;
  sub_29E67828C(v51, v31, inited, v57, v44, v46, v58);

  swift_setDeallocating();
  v49 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_29E67828C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v42 = a5;
  v43 = a6;
  v9 = *a7;
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v15 = a4;
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  v41 = v15;

  v18 = os_log_type_enabled(v16, v17);
  v44 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v10;
    v21 = v20;
    v46 = v20;
    *v19 = 136315650;
    nullsub_1(v9);
    v22 = sub_29E755178();
    v24 = sub_29E6B9C90(v22, v23, &v46);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_29E6B9C90(0xD000000000000050, 0x800000029E75B8E0, &v46);
    *(v19 + 22) = 2080;
    v45 = 1;
    v25 = sub_29E7541F8();
    v27 = sub_29E6B9C90(v25, v26, &v46);

    *(v19 + 24) = v27;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%s.%s]: Presenting alert from stage %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v21, -1, -1);
    v28 = v19;
    a3 = v44;
    MEMORY[0x29ED98410](v28, -1, -1);

    (*(v11 + 8))(v14, v40);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v29 = sub_29E754198();
  v30 = [objc_opt_self() alertControllerWithTitle:v29 message:0 preferredStyle:1];

  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
  {
    v32 = 0;
    v33 = a3 & 0xC000000000000001;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v33)
      {
        v36 = MEMORY[0x29ED976A0](v32, a3);
      }

      else
      {
        if (v32 >= *(v34 + 16))
        {
          goto LABEL_16;
        }

        v36 = *(a3 + 8 * v32 + 32);
      }

      v37 = v36;
      v38 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      sub_29E7544C8();
      sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v35 = sub_29E754198();
      [v37 setAccessibilityIdentifier_];

      [v30 addAction_];

      ++v32;
      a3 = v44;
      if (v38 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  [v41 presentViewController:v30 animated:1 completion:0];
}

void sub_29E6786A4(char *a1, uint64_t *a2)
{
  v81 = a1;
  v2 = *a2;
  v75 = a2;
  v3 = v2;
  sub_29E679100(0, &qword_2A18584D0, MEMORY[0x29EDB9D70]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v73 - v6;
  v8 = sub_29E74EEE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v82 = &v73 - v13;
  v14 = sub_29E752098();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v80 = &v73 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v73 - v22;
  sub_29E752048();
  v24 = sub_29E752088();
  v25 = sub_29E7546C8();
  v26 = os_log_type_enabled(v24, v25);
  v78 = v3;
  v79 = v19;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v77 = v14;
    v28 = v27;
    v29 = swift_slowAlloc();
    v74 = v8;
    v30 = v29;
    v84 = v29;
    *v28 = 136446722;
    nullsub_1(v3);
    v31 = sub_29E755178();
    v33 = sub_29E6B9C90(v31, v32, &v84);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_29E6B9C90(0xD00000000000002DLL, 0x800000029E75B750, &v84);
    *(v28 + 22) = 2080;
    LOBYTE(v83) = 1;
    v34 = sub_29E7541F8();
    v36 = sub_29E6B9C90(v34, v35, &v84);

    *(v28 + 24) = v36;
    _os_log_impl(&dword_29E5ED000, v24, v25, "[%{public}s.%s]: Details cell tapped from stage %s", v28, 0x20u);
    swift_arrayDestroy();
    v37 = v30;
    v8 = v74;
    MEMORY[0x29ED98410](v37, -1, -1);
    v38 = v28;
    v14 = v77;
    MEMORY[0x29ED98410](v38, -1, -1);
  }

  v39 = *(v15 + 1);
  v39(v23, v14);
  v40 = *&v81[qword_2A18584B0];
  v41 = v81;
  sub_29E751808();
  v42 = (*(v9 + 48))(v7, 1, v8);
  v43 = v82;
  if (v42 != 1)
  {
    (*(v9 + 32))(v82, v7, v8);
    v53 = sub_29E74EED8();
    if (v53)
    {
      if (v53 != 1)
      {
        v81 = v15;
        sub_29E752048();
        v58 = v76;
        (*(v9 + 16))(v76, v43, v8);
        v59 = sub_29E752088();
        v60 = sub_29E7546A8();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v77 = v14;
          v80 = v62;
          v84 = v62;
          *v61 = 136446722;
          nullsub_1(v78);
          v63 = sub_29E755178();
          LODWORD(v78) = v60;
          v65 = sub_29E6B9C90(v63, v64, &v84);

          *(v61 + 4) = v65;
          *(v61 + 12) = 2080;
          *(v61 + 14) = sub_29E6B9C90(0xD00000000000002DLL, 0x800000029E75B750, &v84);
          *(v61 + 22) = 2080;
          v83 = sub_29E74EED8();
          v66 = sub_29E754FD8();
          v68 = v67;
          v69 = *(v9 + 8);
          v69(v58, v8);
          v70 = sub_29E6B9C90(v66, v68, &v84);

          *(v61 + 24) = v70;
          _os_log_impl(&dword_29E5ED000, v59, v78, "[%{public}s.%s]: Unknown indexPath section: %s", v61, 0x20u);
          v71 = v80;
          swift_arrayDestroy();
          MEMORY[0x29ED98410](v71, -1, -1);
          MEMORY[0x29ED98410](v61, -1, -1);

          v39(v79, v77);
          v69(v82, v8);
        }

        else
        {

          v72 = *(v9 + 8);
          v72(v58, v8);
          v39(v79, v14);
          v72(v43, v8);
        }

        return;
      }

      v54 = sub_29E680A70();
      if (v54 != 2 && (v54 & 1) != 0)
      {
        v55 = v41;
        v56 = 1;
LABEL_20:
        sub_29E677B2C(v56, v55, v75);

        (*(v9 + 8))(v43, v8);
        return;
      }
    }

    else
    {
      v57 = sub_29E680A7C();
      if (v57 != 2 && (v57 & 1) == 0)
      {
        v55 = v41;
        v56 = 0;
        goto LABEL_20;
      }
    }

    (*(v9 + 8))(v43, v8);

    return;
  }

  sub_29E678FE4(v7);
  v44 = v80;
  sub_29E752048();
  v45 = sub_29E752088();
  v46 = sub_29E7546C8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v84 = v48;
    *v47 = 136446466;
    nullsub_1(v78);
    v49 = sub_29E755178();
    v51 = sub_29E6B9C90(v49, v50, &v84);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_29E6B9C90(0xD00000000000002DLL, 0x800000029E75B750, &v84);
    _os_log_impl(&dword_29E5ED000, v45, v46, "[%{public}s.%s]: Received call to onboardingViewControllerDidTapDetailsCell without an indexPath, no need to display an error", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v48, -1, -1);
    MEMORY[0x29ED98410](v47, -1, -1);

    v52 = v80;
  }

  else
  {

    v52 = v44;
  }

  v39(v52, v14);
}

void sub_29E678F14()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_29E6786A4(v0, Strong);
    sub_29E751758();
  }

  v2 = *&v0[qword_2A18584B8];
  if (v2)
  {
    v3 = *&v0[qword_2A18584B0];
    v5 = v2;
    v4 = sub_29E680A7C() != 2 && sub_29E680A70() != 2;
    [v5 setEnabled_];
  }
}

uint64_t sub_29E678FE4(uint64_t a1)
{
  sub_29E679100(0, &qword_2A18584D0, MEMORY[0x29EDB9D70]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E67905C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E754FE8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_29E6790A8()
{
  result = qword_2A18584D8;
  if (!qword_2A18584D8)
  {
    type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18584D8);
  }

  return result;
}

void sub_29E679100(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E679154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E605728;

  return sub_29E719BF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29E67921C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v44 = *v2;
  sub_29E679918(0, &qword_2A1A7BF40, sub_29E662AC4, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v45 = *(v4 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v39 - v7;
  sub_29E64942C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E67997C(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v48 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E662AC4(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v47 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v39 - v20;
  v22 = sub_29E752098();
  v46 = *(v22 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v26 = sub_29E752088();
  v43 = sub_29E7546C8();
  if (os_log_type_enabled(v26, v43))
  {
    v27 = swift_slowAlloc();
    v41 = a1;
    v28 = v27;
    v29 = swift_slowAlloc();
    v42 = v5;
    v40 = v29;
    v50 = v29;
    *v28 = 136446466;
    v30 = sub_29E755178();
    v32 = sub_29E6B9C90(v30, v31, &v50);
    v44 = v22;
    v33 = v32;

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_29E6B9C90(0xD00000000000002DLL, 0x800000029E75BB70, &v50);
    _os_log_impl(&dword_29E5ED000, v26, v43, "[%{public}s.%{public}s] Making health checklist feed item publisher", v28, 0x16u);
    v34 = v40;
    swift_arrayDestroy();
    v5 = v42;
    MEMORY[0x29ED98410](v34, -1, -1);
    MEMORY[0x29ED98410](v28, -1, -1);

    (*(v46 + 8))(v25, v44);
  }

  else
  {

    (*(v46 + 8))(v25, v22);
  }

  v35 = v48;
  sub_29E679C6C(v49, sub_29E67BF40, 0, sub_29E67BF44, 0, v48);
  v36 = sub_29E74FE78();
  sub_29E67A5CC(v12);
  sub_29E67AA6C(v35, v36, v12, v21);

  sub_29E6799B0(v12, sub_29E64942C);
  sub_29E6799B0(v35, sub_29E67997C);
  sub_29E662CE4(v21, v47);
  sub_29E752818();
  sub_29E679A10();
  v37 = sub_29E7528E8();
  (*(v45 + 8))(v8, v5);
  sub_29E6799B0(v21, sub_29E662AC4);
  return v37;
}

uint64_t sub_29E67977C()
{
  sub_29E6163F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E5FEFC4(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29E679864@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC36F0];
  v3 = sub_29E74FB98();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_29E679918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6799B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E679A10()
{
  result = qword_2A1A7BF48;
  if (!qword_2A1A7BF48)
  {
    sub_29E679918(255, &qword_2A1A7BF40, sub_29E662AC4, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BF48);
  }

  return result;
}

uint64_t sub_29E679AA8()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:3 scale:36.0];
  v2 = [v0 configurationPreferringMonochrome];
  v3 = [v1 configurationByApplyingConfiguration_];

  sub_29E67EB20(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E764160;
  *(v4 + 32) = [objc_opt_self() hk_respiratoryKeyColor];
  sub_29E609B5C(0, &qword_2A1A7BD48, 0x29EDC7A00);
  v5 = sub_29E7543D8();

  v6 = [v0 configurationWithPaletteColors_];

  v7 = [v3 configurationByApplyingConfiguration_];

  return sub_29E7501F8();
}

uint64_t sub_29E679C6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v77 = a4;
  v73 = a2;
  v74 = a3;
  v86 = a6;
  v7 = sub_29E752098();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v81 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v72 = &v70 - v11;
  v80 = sub_29E751D38();
  v78 = *(v80 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v80);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29E751D68();
  v14 = *(v85 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v85);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E751D58();
  v84 = *(v18 - 8);
  v19 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E751D98();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v71 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v75 = &v70 - v28;
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v70 - v29;
  v31 = *(v23 + 16);
  v31(&v70 - v29, a1, v22);
  v32 = (*(v23 + 88))(v30, v22);
  if (v32 == *MEMORY[0x29EDC2D70])
  {
    (*(v23 + 96))(v30, v22);
    v33 = v84;
    (*(v84 + 32))(v21, v30, v18);
    sub_29E751D28();
    v34 = *MEMORY[0x29EDBA5A0];
    v35 = sub_29E751D78();
    (*(v14 + 8))(v17, v85);
    if ([v35 areAllRequirementsSatisfied])
    {
      v36 = v86;
      sub_29E67BF48(v86);

      (*(v33 + 8))(v21, v18);
      v37 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
      v38 = *(*(v37 - 8) + 56);
      v39 = v36;
LABEL_11:
      v51 = 0;
      return v38(v39, v51, 1, v37);
    }

    v50 = (v33 + 8);
    if (sub_29E67E894(v35))
    {
      v49 = v86;
      sub_29E67C39C(v86);

      (*v50)(v21, v18);
      goto LABEL_10;
    }

    sub_29E67C7F4(v35, v73, v74, v86);

    return (*v50)(v21, v18);
  }

  else
  {
    v40 = v85;
    if (v32 == *MEMORY[0x29EDC2D68])
    {
      v41 = v14;
      (*(v23 + 96))(v30, v22);
      v43 = v78;
      v42 = v79;
      v44 = v80;
      v45 = (*(v78 + 32))(v79, v30, v80);
      if ((v77(v45) & 1) == 0)
      {
        v63 = v72;
        sub_29E752048();
        v64 = sub_29E752088();
        v65 = sub_29E7546C8();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v87 = v67;
          *v66 = 136446210;
          *(v66 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v87);
          _os_log_impl(&dword_29E5ED000, v64, v65, "[%{public}s] No paired watch, not creating components", v66, 0xCu);
          sub_29E5FECBC(v67);
          MEMORY[0x29ED98410](v67, -1, -1);
          MEMORY[0x29ED98410](v66, -1, -1);
        }

        (*(v82 + 8))(v63, v83);
        (*(v43 + 8))(v42, v44);
        v37 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
        v38 = *(*(v37 - 8) + 56);
        v39 = v86;
        v51 = 1;
        return v38(v39, v51, 1, v37);
      }

      sub_29E751D28();
      v46 = *MEMORY[0x29EDBA578];
      v47 = sub_29E751D78();
      (*(v41 + 8))(v17, v40);
      v48 = (v43 + 8);
      if ([v47 areAllRequirementsSatisfied])
      {
        v49 = v86;
        sub_29E67E244(v86);

        (*v48)(v42, v44);
LABEL_10:
        v37 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
        v38 = *(*(v37 - 8) + 56);
        v39 = v49;
        goto LABEL_11;
      }

      sub_29E67C7F4(v47, v73, v74, v86);

      return (*v48)(v42, v44);
    }

    else
    {
      v52 = v81;
      sub_29E752048();
      v53 = v75;
      v31(v75, a1, v22);
      v54 = sub_29E752088();
      v55 = sub_29E7546A8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v87 = v85;
        *v56 = 136446466;
        *(v56 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v87);
        *(v56 + 12) = 2080;
        LODWORD(v84) = v55;
        v31(v71, v53, v22);
        v57 = sub_29E7541F8();
        v59 = v58;
        v60 = *(v23 + 8);
        v60(v53, v22);
        v61 = sub_29E6B9C90(v57, v59, &v87);

        *(v56 + 14) = v61;
        _os_log_impl(&dword_29E5ED000, v54, v84, "[%{public}s] Unknown feature status received: %s", v56, 0x16u);
        v62 = v85;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v62, -1, -1);
        MEMORY[0x29ED98410](v56, -1, -1);

        (*(v82 + 8))(v81, v83);
      }

      else
      {

        v60 = *(v23 + 8);
        v60(v53, v22);
        (*(v82 + 8))(v52, v83);
      }

      v69 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
      (*(*(v69 - 8) + 56))(v86, 1, 1, v69);
      return (v60)(v30, v22);
    }
  }
}

uint64_t sub_29E67A5CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E752098();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v41 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_29E74FF68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v36[-v12];
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v36[-v14];
  sub_29E6302C8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E74FEA8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = a1;
    v39 = v2;
    (*(v6 + 32))(v15, v19, v5);
    sub_29E752048();
    v20 = *(v6 + 16);
    v20(v13, v15, v5);
    v21 = sub_29E752088();
    v22 = sub_29E7546A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = v22;
      v24 = v23;
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v42);
      *(v24 + 12) = 2082;
      v20(v10, v13, v5);
      v26 = sub_29E7541F8();
      v28 = v27;
      v29 = *(v6 + 8);
      v29(v13, v5);
      v30 = sub_29E6B9C90(v26, v28, &v42);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_29E5ED000, v21, v37, "[%{public}s] Failed to get country code: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);
    }

    else
    {

      v29 = *(v6 + 8);
      v29(v13, v5);
    }

    (*(v40 + 8))(v41, v39);
    v29(v15, v5);
    v34 = v38;
    v35 = sub_29E74FFA8();
    return (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  }

  else
  {
    v31 = sub_29E74FFA8();
    v32 = *(v31 - 8);
    (*(v32 + 32))(a1, v19, v31);
    return (*(v32 + 56))(a1, 0, 1, v31);
  }
}

uint64_t sub_29E67AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a3;
  v149 = a1;
  v152 = a4;
  v136 = sub_29E750258();
  v135 = *(v136 - 8);
  v5 = *(v135 + 64);
  MEMORY[0x2A1C7C4A8](v136);
  v134 = v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_29E74FB98();
  v131 = *(v132 - 8);
  v7 = *(v131 + 64);
  MEMORY[0x2A1C7C4A8](v132);
  v130 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29E67E948(0, &qword_2A1A7CF30, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v129 = v124 - v12;
  sub_29E67E948(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], v9);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v127 = v124 - v15;
  sub_29E67E948(0, &qword_2A1A7CF38, MEMORY[0x29EDC17F0], v9);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v128 = v124 - v18;
  v139 = sub_29E7501E8();
  v138 = *(v139 - 8);
  v19 = *(v138 + 64);
  MEMORY[0x2A1C7C4A8](v139);
  v146 = v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_29E74F8B8();
  v147 = *(v141 - 8);
  v21 = *(v147 + 64);
  MEMORY[0x2A1C7C4A8](v141);
  v140 = v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_29E750338();
  v143 = *(v144 - 8);
  v23 = *(v143 + 64);
  MEMORY[0x2A1C7C4A8](v144);
  v142 = v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E752098();
  v26 = *(v25 - 8);
  v150 = v25;
  v151 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v33 = v124 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31);
  v137 = (v124 - v35);
  MEMORY[0x2A1C7C4A8](v34);
  v126 = v124 - v36;
  sub_29E67E948(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58], v9);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v37 - 8);
  v40 = v124 - v39;
  v41 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v148 = v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E67E948(0, qword_2A1A7C698, type metadata accessor for SleepApneaHealthChecklistFeedItemComponents, v9);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v44 - 8);
  v47 = v124 - v46;
  v48 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
  v49 = *(v48 - 1);
  v50 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v52 = v124 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E74FBE8();
  v133 = a2;
  LOBYTE(a2) = sub_29E74FBD8();

  if ((a2 & 1) == 0)
  {
    sub_29E752048();
    v58 = sub_29E752088();
    v59 = sub_29E7546A8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v153 = v61;
      *v60 = 136446466;
      *(v60 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v153);
      *(v60 + 12) = 2082;
      *(v60 + 14) = sub_29E6B9C90(0xD000000000000034, 0x800000029E75BBA0, &v153);
      _os_log_impl(&dword_29E5ED000, v58, v59, "[%{public}s.%{public}s] Tried to make feed item for non-primary profile", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v61, -1, -1);
      MEMORY[0x29ED98410](v60, -1, -1);
    }

    (*(v151 + 8))(v30, v150);
    goto LABEL_9;
  }

  sub_29E67E6FC(v149, v47, qword_2A1A7C698, type metadata accessor for SleepApneaHealthChecklistFeedItemComponents);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_29E67E7DC(v47, qword_2A1A7C698, type metadata accessor for SleepApneaHealthChecklistFeedItemComponents);
    sub_29E752048();
    v54 = sub_29E752088();
    v55 = sub_29E7546C8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v153 = v57;
      *v56 = 136446466;
      *(v56 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v153);
      *(v56 + 12) = 2082;
      *(v56 + 14) = sub_29E6B9C90(0xD000000000000034, 0x800000029E75BBA0, &v153);
      _os_log_impl(&dword_29E5ED000, v54, v55, "[%{public}s.%{public}s] Nil components, not creating a feed item", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v57, -1, -1);
      MEMORY[0x29ED98410](v56, -1, -1);
    }

    (*(v151 + 8))(v33, v150);
LABEL_9:
    v62 = 1;
    v63 = v152;
    goto LABEL_10;
  }

  v66 = v52;
  sub_29E67E698(v47, v52);
  v67 = v52[v48[10]];
  sub_29E67E6FC(v145, v40, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v68 = *(v41 + 20);
  v69 = sub_29E74FFA8();
  v70 = v148;
  (*(*(v69 - 8) + 56))(&v148[v68], 1, 1, v69);
  *v70 = v67;
  sub_29E643D74(v40, &v70[v68]);
  v71 = sub_29E74E7C8();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  sub_29E74E7B8();
  sub_29E67E84C(&qword_2A18584E0, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  v74 = sub_29E74E7A8();
  v145 = v75;
  v149 = v74;

  v76 = v126;
  sub_29E752048();
  v77 = sub_29E752088();
  v78 = sub_29E7546C8();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v153 = v80;
    *v79 = 136446466;
    *(v79 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v153);
    *(v79 + 12) = 2082;
    *(v79 + 14) = sub_29E6B9C90(0xD000000000000034, 0x800000029E75BBA0, &v153);
    _os_log_impl(&dword_29E5ED000, v77, v78, "[%{public}s.%{public}s] Creating a plugin feed item", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v80, -1, -1);
    MEMORY[0x29ED98410](v79, -1, -1);
  }

  (*(v151 + 8))(v76, v150);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v150 = qword_2A1A7FA18;
  v81 = v140;
  sub_29E74F8A8();
  v151 = 0xD000000000000019;
  v124[4] = sub_29E74F7C8();
  v124[3] = v82;
  v83 = *(v147 + 8);
  v147 += 8;
  v137 = v83;
  v83(v81, v141);
  v124[2] = "SLEEP_APNEA_FEATURE_TITLE";
  (*(v138 + 16))(v146, v52, v139);
  v84 = v128;
  sub_29E679AA8();
  v85 = sub_29E750218();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = v48[8];
  v87 = &v52[v48[7]];
  v88 = *(v87 + 1);
  v124[1] = *v87;
  v89 = *&v52[v48[5]];
  v90 = (v66 + v48[6]);
  v91 = v66;
  v125 = v66;
  v93 = *v90;
  v92 = v90[1];
  v126 = "file:countryRecord:)";
  v94 = *(v91 + v86);
  v95 = *(v91 + v86 + 8);
  v96 = (v91 + v48[9]);
  v97 = *v96;
  v98 = v96[1];
  v99 = sub_29E74EAF8();
  (*(*(v99 - 8) + 56))(v127, 1, 1, v99);

  v100 = v142;
  sub_29E750328();
  sub_29E751728();
  type metadata accessor for SleepApneaHealthChecklistActionHandler(0);
  v101 = v143;
  v102 = v129;
  v103 = v100;
  v104 = v144;
  (*(v143 + 16))(v129, v103, v144);
  (*(v101 + 56))(v102, 0, 1, v104);
  v105 = v131;
  v106 = v130;
  v107 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x29EDC36F0], v132);
  v108 = v149;
  v109 = v145;
  sub_29E64C7DC(v149, v145);
  sub_29E67E84C(&qword_2A18584E8, type metadata accessor for SleepApneaHealthChecklistActionHandler);
  v63 = v152;
  v110 = v109;
  sub_29E74FC48();
  sub_29E643D20(v108, v109);
  (*(v105 + 8))(v106, v107);
  sub_29E67E7DC(v102, &qword_2A1A7CF30, MEMORY[0x29EDC1948]);
  v111 = MEMORY[0x29EDC9E90];
  sub_29E67EB20(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E5FEFC4(inited);
  swift_setDeallocating();
  v113 = *(inited + 16);
  swift_arrayDestroy();
  sub_29E74FD28();
  sub_29E74FCB8();
  sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], v111);
  v114 = swift_initStackObject();
  *(v114 + 16) = xmmword_29E762F30;
  v115 = v146;
  v116 = v142;
  sub_29E750318();
  v117 = sub_29E7502F8();
  v119 = v118;
  (*(v138 + 8))(v115, v139);
  *(v114 + 32) = v117;
  *(v114 + 40) = v119;
  sub_29E5FF900(v114);
  swift_setDeallocating();
  sub_29E619D6C(v114 + 32);
  sub_29E74FD88();
  v120 = v140;
  sub_29E74F8A8();
  sub_29E74F7C8();
  v137(v120, v141);
  sub_29E74FCD8();
  v121 = v135;
  v122 = v134;
  v123 = v136;
  (*(v135 + 104))(v134, *MEMORY[0x29EDC1848], v136);
  sub_29E750248();
  (*(v121 + 8))(v122, v123);
  sub_29E74FDA8();
  sub_29E643D20(v108, v110);
  (*(v143 + 8))(v116, v144);
  sub_29E67E77C(v125, type metadata accessor for SleepApneaHealthChecklistFeedItemComponents);
  sub_29E67E77C(v148, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  v62 = 0;
LABEL_10:
  v64 = sub_29E74FDC8();
  return (*(*(v64 - 8) + 56))(v63, v62, 1, v64);
}

uint64_t type metadata accessor for SleepApneaHealthChecklistFeedItemComponents()
{
  result = qword_2A1A7C6E0;
  if (!qword_2A1A7C6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *sub_29E67BF48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v2;
    v15 = v14;
    v37 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v37);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29E6B9C90(0xD000000000000016, 0x800000029E75BCA0, &v37);
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s.%{public}s] Creating active components", v13, 0x16u);
    swift_arrayDestroy();
    v2 = v35;
    MEMORY[0x29ED98410](v15, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v16 = *MEMORY[0x29EDC1760];
  v17 = sub_29E7501E8();
  (*(*(v17 - 8) + 104))(a1, v16, v17);
  sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E762F40;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v19 = sub_29E74F7C8();
  v21 = v20;
  v22 = *(v36 + 8);
  v22(v5, v2);
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_29E74F8A8();
  v23 = sub_29E74F7C8();
  v25 = v24;
  v22(v5, v2);
  *(v18 + 48) = v23;
  *(v18 + 56) = v25;
  v26 = sub_29E7502B8();
  v28 = v27;
  result = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
  *(a1 + result[5]) = v18;
  v30 = (a1 + result[6]);
  *v30 = v26;
  v30[1] = v28;
  v31 = (a1 + result[7]);
  *v31 = 0;
  v31[1] = 0;
  v32 = (a1 + result[8]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (a1 + result[9]);
  *v33 = 0;
  v33[1] = 0;
  *(a1 + result[10]) = 8;
  return result;
}

int *sub_29E67C39C@<X0>(uint64_t a1@<X8>)
{
  v37 = sub_29E74F8B8();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v37);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v38);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29E6B9C90(0xD000000000000018, 0x800000029E75BD20, &v38);
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s.%{public}s] Creating inactive components", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v14, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *MEMORY[0x29EDC1768];
  v16 = sub_29E7501E8();
  (*(*(v16 - 8) + 104))(a1, v15, v16);
  sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E762F40;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v18 = sub_29E74F7C8();
  v20 = v19;
  v21 = *(v2 + 8);
  v22 = v37;
  v21(v5, v37);
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_29E74F8A8();
  v23 = sub_29E74F7C8();
  v25 = v24;
  v21(v5, v22);
  *(v17 + 48) = v23;
  *(v17 + 56) = v25;
  v26 = sub_29E7502B8();
  v28 = v27;
  v29 = sub_29E750288();
  v31 = v30;
  result = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
  *(a1 + result[5]) = v17;
  v33 = (a1 + result[6]);
  *v33 = v26;
  v33[1] = v28;
  v34 = (a1 + result[7]);
  *v34 = v29;
  v34[1] = v31;
  v35 = (a1 + result[8]);
  *v35 = 0;
  v35[1] = 0;
  v36 = (a1 + result[9]);
  *v36 = 0;
  v36[1] = 0;
  *(a1 + result[10]) = 7;
  return result;
}

uint64_t sub_29E67C7F4@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v281 = a3;
  v7 = sub_29E74F8B8();
  v8 = *(v7 - 8);
  v282 = v7;
  *&v283 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v275 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752098();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v275 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v275 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v275 - v21;
  v23 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v23)
  {
    sub_29E752048();
    v39 = sub_29E752088();
    v40 = sub_29E7546A8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v284 = v42;
      *v41 = 136446466;
      *(v41 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v284);
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_29E6B9C90(0xD000000000000041, 0x800000029E75BD90, &v284);
      _os_log_impl(&dword_29E5ED000, v39, v40, "[%{public}s.%{public}s] Asked to make an unavailabile configuration with no unsatisfied requirements", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v42, -1, -1);
      MEMORY[0x29ED98410](v41, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    goto LABEL_13;
  }

  v24 = v23;
  v276 = v20;
  v280 = v11;
  sub_29E752048();
  v25 = v24;
  v26 = sub_29E752088();
  v27 = sub_29E7546C8();

  v28 = os_log_type_enabled(v26, v27);
  v279 = a2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v277 = v12;
    v278 = v25;
    v31 = v30;
    v284 = v30;
    *v29 = 136446722;
    v32 = a4;
    *(v29 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v284);
    v33 = v13;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_29E6B9C90(0xD000000000000041, 0x800000029E75BD90, &v284);
    *(v29 + 22) = 2082;
    v34 = sub_29E7541D8();
    v36 = sub_29E6B9C90(v34, v35, &v284);

    *(v29 + 24) = v36;
    _os_log_impl(&dword_29E5ED000, v26, v27, "[%{public}s.%{public}s] Creating components for requirement %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    v37 = v31;
    v12 = v277;
    v25 = v278;
    MEMORY[0x29ED98410](v37, -1, -1);
    MEMORY[0x29ED98410](v29, -1, -1);

    v38 = v33;
    a4 = v32;
  }

  else
  {

    v38 = v13;
  }

  v43 = *(v38 + 8);
  v43(v22, v12);
  v44 = *MEMORY[0x29EDBA5A8];
  v45 = sub_29E7541D8();
  v47 = v46;
  if (v45 == sub_29E7541D8() && v47 == v48)
  {
    goto LABEL_10;
  }

  v49 = sub_29E755028();

  if (v49)
  {
LABEL_12:

    goto LABEL_13;
  }

  v54 = *MEMORY[0x29EDBA5F8];
  v55 = sub_29E7541D8();
  v57 = v56;
  if (v55 == sub_29E7541D8() && v57 == v58)
  {
    goto LABEL_10;
  }

  v59 = sub_29E755028();

  if (v59)
  {
    goto LABEL_12;
  }

  v60 = *MEMORY[0x29EDBA618];
  v61 = sub_29E7541D8();
  v63 = v62;
  if (v61 == sub_29E7541D8() && v63 == v64)
  {
    goto LABEL_10;
  }

  v65 = sub_29E755028();

  if (v65)
  {
    goto LABEL_12;
  }

  v66 = *MEMORY[0x29EDBA680];
  v67 = sub_29E7541D8();
  v69 = v68;
  if (v67 == sub_29E7541D8() && v69 == v70)
  {
    goto LABEL_10;
  }

  v71 = sub_29E755028();

  if (v71)
  {
    goto LABEL_12;
  }

  v72 = *MEMORY[0x29EDBA5E0];
  v73 = sub_29E7541D8();
  v75 = v74;
  if (v73 == sub_29E7541D8() && v75 == v76)
  {
LABEL_10:

LABEL_13:
    v50 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
    v51 = *(*(v50 - 8) + 56);
    v52 = a4;
    return v51(v52, 1, 1, v50);
  }

  v77 = sub_29E755028();

  if (v77)
  {
    goto LABEL_12;
  }

  v78 = *MEMORY[0x29EDBA5C0];
  v79 = sub_29E7541D8();
  v81 = v80;
  if (v79 == sub_29E7541D8() && v81 == v82)
  {
    goto LABEL_29;
  }

  v83 = sub_29E755028();

  if (v83)
  {
    goto LABEL_31;
  }

  v115 = *MEMORY[0x29EDBA5C8];
  v116 = sub_29E7541D8();
  v118 = v117;
  if (v116 == sub_29E7541D8() && v118 == v119)
  {
LABEL_29:

LABEL_31:
    v84 = v25;
    v284 = 0;
    v285 = 0xE000000000000000;
    sub_29E754D78();

    v284 = 0xD000000000000023;
    v285 = 0x800000029E75BF30;
    v86 = v279(v85);
    v87 = (v86 & 1) == 0;
    if (v86)
    {
      v88 = 0x454C5049544C554DLL;
    }

    else
    {
      v88 = 0x454C474E4953;
    }

    if (v87)
    {
      v89 = 0xE600000000000000;
    }

    else
    {
      v89 = 0xE800000000000000;
    }

    MEMORY[0x29ED96C20](v88, v89);

    MEMORY[0x29ED96C20](0x504952435345445FLL, 0xEC0000004E4F4954);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v90 = v280;
    sub_29E74F8A8();
    v91 = sub_29E74F7C8();
    v93 = v92;

    (*(v283 + 8))(v90, v282);
    v94 = *MEMORY[0x29EDC1750];
    v95 = sub_29E7501E8();
    (*(*(v95 - 8) + 104))(a4, v94, v95);
    sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_29E762F30;
    *(v96 + 32) = v91;
    *(v96 + 40) = v93;

    v97 = sub_29E7502A8();
    v99 = v98;
    v100 = MEMORY[0x29ED92BF0](v91, v93);
    v101 = a4;
    v103 = v102;

    v104 = sub_29E7502A8();
    v106 = v105;

LABEL_40:
    v107 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
    v108 = v107;
    *(v101 + v107[5]) = v96;
    v109 = (v101 + v107[6]);
    *v109 = v97;
    v109[1] = v99;
    v110 = (v101 + v107[7]);
    *v110 = 0;
    v110[1] = 0;
    v111 = (v101 + v107[8]);
    *v111 = v100;
    v111[1] = v103;
    v112 = (v101 + v107[9]);
    *v112 = v104;
    v112[1] = v106;
    v113 = v107[10];
    v114 = 5;
    goto LABEL_41;
  }

  v120 = sub_29E755028();

  if (v120)
  {
    goto LABEL_31;
  }

  v121 = v12;
  v101 = a4;
  v122 = v282;
  v123 = v283;
  v278 = v25;
  v124 = *MEMORY[0x29EDBA5E8];
  v125 = sub_29E7541D8();
  v127 = v126;
  if (v125 == sub_29E7541D8() && v127 == v128)
  {
    goto LABEL_47;
  }

  v129 = sub_29E755028();

  if (v129)
  {
    goto LABEL_49;
  }

  v150 = *MEMORY[0x29EDBA5F0];
  v151 = sub_29E7541D8();
  v153 = v152;
  if (v151 == sub_29E7541D8() && v153 == v154)
  {
    goto LABEL_47;
  }

  v155 = sub_29E755028();

  if (v155)
  {
    goto LABEL_49;
  }

  v156 = *MEMORY[0x29EDBA5D8];
  v157 = sub_29E7541D8();
  v159 = v158;
  if (v157 == sub_29E7541D8() && v159 == v160)
  {
    goto LABEL_47;
  }

  v161 = sub_29E755028();

  if (v161)
  {
    goto LABEL_49;
  }

  v162 = *MEMORY[0x29EDBA5D0];
  v163 = sub_29E7541D8();
  v165 = v164;
  if (v163 == sub_29E7541D8() && v165 == v166)
  {
LABEL_47:

    goto LABEL_49;
  }

  v167 = sub_29E755028();

  if (v167)
  {
LABEL_49:
    if (qword_2A1A7D6F0 == -1)
    {
LABEL_50:
      v130 = v280;
      sub_29E74F8A8();
      v131 = sub_29E74F7C8();
      v133 = v132;
      (*(v123 + 8))(v130, v122);
      v134 = *MEMORY[0x29EDC1750];
      v135 = sub_29E7501E8();
      (*(*(v135 - 8) + 104))(v101, v134, v135);
      sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_29E762F30;
      *(v136 + 32) = v131;
      *(v136 + 40) = v133;

      v137 = sub_29E7502A8();
      v139 = v138;
      v140 = MEMORY[0x29ED92BF0](v131, v133);
      v142 = v141;

      v143 = sub_29E7502A8();
      v145 = v144;

      v107 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
      v108 = v107;
      *(v101 + v107[5]) = v136;
      v146 = (v101 + v107[6]);
      *v146 = v137;
      v146[1] = v139;
      v147 = (v101 + v107[7]);
      *v147 = 0;
      v147[1] = 0;
      v148 = (v101 + v107[8]);
      *v148 = v140;
      v148[1] = v142;
      v149 = (v101 + v107[9]);
      *v149 = v143;
      v149[1] = v145;
      v113 = v107[10];
      v114 = 3;
      goto LABEL_41;
    }

LABEL_69:
    swift_once();
    goto LABEL_50;
  }

  v168 = *MEMORY[0x29EDBA600];
  v169 = sub_29E7541D8();
  v171 = v170;
  if (v169 == sub_29E7541D8() && v171 == v172)
  {

    goto LABEL_64;
  }

  v173 = sub_29E755028();

  if (v173)
  {
LABEL_64:
    if (qword_2A1A7D6F0 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

  v174 = *MEMORY[0x29EDBA640];
  v175 = sub_29E7541D8();
  v177 = v176;
  if (v175 == sub_29E7541D8() && v177 == v178)
  {

LABEL_71:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v180 = v280;
    sub_29E74F8A8();
    v181 = sub_29E74F7C8();
    v183 = v182;
    (*(v123 + 8))(v180, v122);
    v184 = *MEMORY[0x29EDC1750];
    v185 = sub_29E7501E8();
    (*(*(v185 - 8) + 104))(v101, v184, v185);
    sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_29E762F30;
    *(v96 + 32) = v181;
    *(v96 + 40) = v183;

    v97 = sub_29E7502A8();
    v99 = v186;
    v100 = MEMORY[0x29ED92BF0](v181, v183);
    v103 = v187;

    v104 = sub_29E7502A8();
    v106 = v188;

    goto LABEL_40;
  }

  v179 = sub_29E755028();

  if (v179)
  {
    goto LABEL_71;
  }

  v189 = *MEMORY[0x29EDBA678];
  v190 = sub_29E7541D8();
  v192 = v191;
  if (v190 == sub_29E7541D8() && v192 == v193)
  {

LABEL_78:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v195 = v280;
    sub_29E74F8A8();
    v196 = sub_29E74F7C8();
    v281 = v197;
    v198 = *(v123 + 8);
    v198(v195, v122);
    sub_29E74F8A8();
    sub_29E74F7C8();
    v198(v195, v122);
    sub_29E67E948(0, &qword_2A1A7D3D8, sub_29E617E04, MEMORY[0x29EDC9E90]);
    v199 = swift_allocObject();
    v283 = xmmword_29E762F30;
    *(v199 + 16) = xmmword_29E762F30;
    v200 = MEMORY[0x29EDC99B0];
    *(v199 + 56) = MEMORY[0x29EDC99B0];
    *(v199 + 64) = sub_29E67E9AC();
    v201 = v281;
    *(v199 + 32) = v196;
    *(v199 + 40) = v201;
    v202 = v201;

    v203 = sub_29E7541A8();
    v205 = v204;

    v206 = *MEMORY[0x29EDC1758];
    v207 = sub_29E7501E8();
    (*(*(v207 - 8) + 104))(v101, v206, v207);
    sub_29E67EB20(0, &qword_2A1A7BCF0, v200, MEMORY[0x29EDC9E90]);
    v208 = swift_allocObject();
    *(v208 + 16) = v283;
    *(v208 + 32) = v203;
    *(v208 + 40) = v205;

    v209 = sub_29E7502C8();
    v211 = v210;

    v107 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
    v108 = v107;
    *(v101 + v107[5]) = v208;
    v212 = (v101 + v107[6]);
    *v212 = v209;
    v212[1] = v211;
    v213 = (v101 + v107[7]);
    *v213 = 0;
    v213[1] = 0;
    v214 = (v101 + v107[8]);
    *v214 = v203;
    v214[1] = v205;
    v215 = (v101 + v107[9]);
    *v215 = v196;
    v215[1] = v202;
    v113 = v107[10];
    v114 = 2;
    goto LABEL_41;
  }

  v194 = sub_29E755028();

  if (v194)
  {
    goto LABEL_78;
  }

  v216 = *MEMORY[0x29EDBA688];
  v217 = sub_29E7541D8();
  v219 = v218;
  if (v217 == sub_29E7541D8() && v219 == v220)
  {

LABEL_85:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v222 = v280;
    sub_29E74F8A8();
    v223 = sub_29E74F7C8();
    v225 = v224;
    (*(v123 + 8))(v222, v122);
    v226 = *MEMORY[0x29EDC1750];
    v227 = sub_29E7501E8();
    (*(*(v227 - 8) + 104))(v101, v226, v227);
    sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v228 = swift_allocObject();
    *(v228 + 16) = xmmword_29E762F30;
    *(v228 + 32) = v223;
    *(v228 + 40) = v225;

    v229 = sub_29E7502A8();
    v231 = v230;
    v232 = MEMORY[0x29ED92BF0](v223, v225);
    v234 = v233;

    v235 = sub_29E7502A8();
    v237 = v236;

    v107 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
    v108 = v107;
    *(v101 + v107[5]) = v228;
    v238 = (v101 + v107[6]);
    *v238 = v229;
    v238[1] = v231;
    v239 = (v101 + v107[7]);
    *v239 = 0;
    v239[1] = 0;
    v240 = (v101 + v107[8]);
    *v240 = v232;
    v240[1] = v234;
    v241 = (v101 + v107[9]);
    *v241 = v235;
    v241[1] = v237;
    v113 = v107[10];
    v114 = 4;
    goto LABEL_41;
  }

  v221 = sub_29E755028();

  if (v221)
  {
    goto LABEL_85;
  }

  v242 = *MEMORY[0x29EDBA6A8];
  v243 = sub_29E7541D8();
  v245 = v244;
  if (v243 == sub_29E7541D8() && v245 == v246)
  {
  }

  else
  {
    v247 = sub_29E755028();

    if ((v247 & 1) == 0)
    {
      sub_29E752048();
      v267 = v278;
      v268 = sub_29E752088();
      v269 = sub_29E7546B8();
      *&v283 = v267;

      if (os_log_type_enabled(v268, v269))
      {
        v270 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        v284 = v282;
        *v270 = 136446722;
        *(v270 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v284);
        *(v270 + 12) = 2082;
        *(v270 + 14) = sub_29E6B9C90(0xD000000000000041, 0x800000029E75BD90, &v284);
        *(v270 + 22) = 2080;
        v271 = sub_29E7541D8();
        v273 = sub_29E6B9C90(v271, v272, &v284);

        *(v270 + 24) = v273;
        _os_log_impl(&dword_29E5ED000, v268, v269, "[%{public}s.%{public}s] Asked to make an unavailable configuration with unexpected requirement %s", v270, 0x20u);
        v274 = v282;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v274, -1, -1);
        MEMORY[0x29ED98410](v270, -1, -1);
      }

      else
      {
      }

      v43(v276, v121);
      v50 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
      v51 = *(*(v50 - 8) + 56);
      v52 = v101;
      return v51(v52, 1, 1, v50);
    }
  }

  v248 = sub_29E7502E8();
  v250 = v249;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v251 = v280;
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v123 + 8))(v251, v122);
  sub_29E67E948(0, &qword_2A1A7D3D8, sub_29E617E04, MEMORY[0x29EDC9E90]);
  v252 = swift_allocObject();
  v283 = xmmword_29E762F30;
  *(v252 + 16) = xmmword_29E762F30;
  v253 = MEMORY[0x29EDC99B0];
  *(v252 + 56) = MEMORY[0x29EDC99B0];
  *(v252 + 64) = sub_29E67E9AC();
  *(v252 + 32) = v248;
  *(v252 + 40) = v250;

  v254 = sub_29E7541A8();
  v256 = v255;

  v257 = *MEMORY[0x29EDC1758];
  v258 = sub_29E7501E8();
  (*(*(v258 - 8) + 104))(v101, v257, v258);
  sub_29E67EB20(0, &qword_2A1A7BCF0, v253, MEMORY[0x29EDC9E90]);
  v259 = swift_allocObject();
  *(v259 + 16) = v283;
  *(v259 + 32) = v254;
  *(v259 + 40) = v256;

  v260 = sub_29E7502C8();
  v262 = v261;

  v107 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
  v108 = v107;
  *(v101 + v107[5]) = v259;
  v263 = (v101 + v107[6]);
  *v263 = v260;
  v263[1] = v262;
  v264 = (v101 + v107[7]);
  *v264 = 0;
  v264[1] = 0;
  v265 = (v101 + v107[8]);
  *v265 = v254;
  v265[1] = v256;
  v266 = (v101 + v107[9]);
  *v266 = v248;
  v266[1] = v250;
  v113 = v107[10];
  v114 = 1;
LABEL_41:
  *(v101 + v113) = v114;
  return (*(*(v107 - 1) + 56))(v101, 0, 1, v108);
}

int *sub_29E67E244@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v2;
    v40 = v15;
    v16 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v40);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29E6B9C90(0xD000000000000015, 0x800000029E75BD70, &v40);
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s.%{public}s] Creating set up components", v14, 0x16u);
    swift_arrayDestroy();
    v17 = v16;
    v2 = v39;
    MEMORY[0x29ED98410](v17, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v18 = *MEMORY[0x29EDC1768];
  v19 = sub_29E7501E8();
  (*(*(v19 - 8) + 104))(a1, v18, v19);
  sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E762F40;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v21 = sub_29E74F7C8();
  v23 = v22;
  v24 = *(v3 + 8);
  v24(v6, v2);
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_29E74F8A8();
  v25 = sub_29E74F7C8();
  v27 = v26;
  v24(v6, v2);
  *(v20 + 48) = v25;
  *(v20 + 56) = v27;
  v28 = sub_29E7502B8();
  v30 = v29;
  v31 = sub_29E750278();
  v33 = v32;
  result = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
  *(a1 + result[5]) = v20;
  v35 = (a1 + result[6]);
  *v35 = v28;
  v35[1] = v30;
  v36 = (a1 + result[7]);
  *v36 = v31;
  v36[1] = v33;
  v37 = (a1 + result[8]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (a1 + result[9]);
  *v38 = 0;
  v38[1] = 0;
  *(a1 + result[10]) = 6;
  return result;
}

uint64_t sub_29E67E698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E67E6FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E67E948(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E67E77C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E67E7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E67E948(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E67E84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E67E894(void *a1)
{
  v1 = [a1 highestPriorityUnsatisfiedRequirement];
  if (v1)
  {
    v2 = v1;
    v3 = *MEMORY[0x29EDBA608];
    v4 = sub_29E7541D8();
    v6 = v5;
    if (v4 == sub_29E7541D8() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_29E755028();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_29E67E948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E67E9AC()
{
  result = qword_2A1A7D4A8;
  if (!qword_2A1A7D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D4A8);
  }

  return result;
}

void sub_29E67EA28()
{
  sub_29E7501E8();
  if (v0 <= 0x3F)
  {
    sub_29E67EB20(319, &qword_2A1A7BDE0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29E67EB20(319, &qword_2A1A7D0C8, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E67EB20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E67EB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a1;
  v54 = a2;
  v4 = sub_29E754048();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E680708(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v51 = &v46 - v9;
  v53 = type metadata accessor for SleepScoreRoomModel();
  v55 = *(v53 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v53);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74F048();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v46 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v46 - v20;
  sub_29E680834();
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v57 = v2;
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
  sub_29E74EF08();

  v28 = *(v2 + 16);
  sub_29E753E48();
  v29 = (*(v24 + 88))(v27, v23);
  if (v29 == *MEMORY[0x29EDC4328])
  {
    (*(v24 + 96))(v27, v23);
    (*(v13 + 32))(v21, v27, v12);
    v30 = *(v13 + 16);
    v30(v19, v21, v12);
    v32 = v53;
    v31 = v54;
    v33 = (v54 + *(v53 + 24));
    v30(v54, v19, v12);
    v30(v52, v19, v12);
    v34 = v31 + *(v32 + 20);
    sub_29E74F2A8();
    v35 = *(v13 + 8);
    v35(v19, v12);
    v35(v21, v12);
    v36 = 0;
    *v33 = 0;
    v33[1] = 0;
    v37 = v31;
    v38 = v32;
    v39 = v55;
    return (*(v39 + 56))(v37, v36, 1, v38);
  }

  v40 = v53;
  v37 = v54;
  if (v29 == *MEMORY[0x29EDC4330])
  {
    v28 = v51;
    sub_29E62D760(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_initialModel, v51);
    v39 = v55;
    v21 = v40;
    if ((*(v55 + 48))(v28, 1, v40) == 1)
    {
      sub_29E6807D4(v28, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, sub_29E680708);
      goto LABEL_12;
    }

LABEL_9:
    v41 = v47;
    sub_29E6808C8(v28, v47, type metadata accessor for SleepScoreRoomModel);
    v42 = v48;
    sub_29E74F008();
    sub_29E680930(&qword_2A1857B80, MEMORY[0x29EDBA2F8]);
    v43 = v50;
    v44 = sub_29E754108();
    (*(v49 + 8))(v42, v43);
    if (v44)
    {
      sub_29E6808C8(v41, v37, type metadata accessor for SleepScoreRoomModel);
      v36 = 0;
LABEL_13:
      v38 = v21;
      return (*(v39 + 56))(v37, v36, 1, v38);
    }

    sub_29E680978(v41);
LABEL_12:
    v36 = 1;
    goto LABEL_13;
  }

  v36 = 1;
  v38 = v53;
  v39 = v55;
  if (v29 != *MEMORY[0x29EDC4338] && v29 != *MEMORY[0x29EDC4320])
  {
    sub_29E754E48();
    __break(1u);
    goto LABEL_9;
  }

  return (*(v39 + 56))(v37, v36, 1, v38);
}

uint64_t sub_29E67F200()
{
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
  sub_29E74EF08();

  result = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID);
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID + 8);
  return result;
}

uint64_t sub_29E67F2B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
  sub_29E74EF08();

  v5 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29E67F3A0(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID;
  if (*(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID + 8))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath);
      sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
      sub_29E74EEF8();
    }
  }

  else if ((a2 & 1) != 0 || *v3 != a1)
  {
    goto LABEL_9;
  }

  *v3 = a1;
  *(v3 + 8) = a2 & 1;

  return sub_29E67F504();
}

uint64_t sub_29E67F504()
{
  sub_29E605ADC();
  v39 = v1;
  v2 = *(*(v1 - 8) + 64);
  v3 = (MEMORY[0x2A1C7C4A8])();
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v38 = v35 - v6;
  v7 = sub_29E754048();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = v35 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = v35 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = v35 - v19;
  sub_29E680594();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v0 + 16);
  sub_29E67FDF0(v20);
  sub_29E67FDF0(v15);
  sub_29E753FC8();
  sub_29E753FD8();
  v25 = v8[1];
  v25(v12, v7);
  v36 = v25;
  v25(v15, v7);
  sub_29E680930(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
  result = sub_29E7540E8();
  if (result)
  {
    v27 = v8[4];
    v35[1] = v8 + 4;
    v28 = v38;
    v27(v38, v20, v7);
    v29 = v39;
    v27((v28 + *(v39 + 48)), v18, v7);
    sub_29E6806A4(v28, v5);
    v30 = *(v29 + 48);
    v27(v24, v5, v7);
    v31 = v36;
    v36(&v5[v30], v7);
    sub_29E6808C8(v28, v5, sub_29E605ADC);
    v32 = *(v29 + 48);
    sub_29E680608(0, &qword_2A1856940, MEMORY[0x29EDC9C30]);
    v34 = v33;
    v27(&v24[*(v33 + 36)], &v5[v32], v7);
    v31(v5, v7);
    (*(*(v34 - 8) + 56))(v24, 0, 1, v34);
    return sub_29E753E18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E67F8E0()
{
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
  sub_29E74EF08();

  return *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount);
}

uint64_t sub_29E67F988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
  sub_29E74EF08();

  *a2 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount);
  return result;
}

uint64_t sub_29E67FA38(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
    sub_29E74EEF8();
  }

  return result;
}

uint64_t sub_29E67FB44(uint64_t a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E607C50(sub_29E6807A4, a2);
}

uint64_t sub_29E67FC24()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v1 = Strong;
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
  sub_29E74EF08();

  swift_getKeyPath();
  sub_29E74EF28();

  v3 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (!v4)
  {
    *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount) = v5;
    swift_getKeyPath();
    sub_29E74EF18();
  }

  __break(1u);
  return result;
}

uint64_t sub_29E67FDF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E74EE78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_29E74ED28() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  sub_29E680708(0, &qword_2A1856918, MEMORY[0x29EDBA2F8]);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v13 = &v18 - v12;
  swift_getKeyPath();
  v19 = v1;
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
  sub_29E74EF08();

  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID + 8))
  {
    v14 = sub_29E754048();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  else
  {
    v18 = a1;
    v15 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID);
    sub_29E7544C8();
    sub_29E7544B8();
    sub_29E754468();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_29E753FC8();
    v14 = sub_29E754048();
    v16 = *(v14 - 8);
    (*(v16 + 56))(v13, 0, 1, v14);

    if ((*(v16 + 48))(v13, 1, v14) != 1)
    {
      return (*(v16 + 32))(v18, v13, v14);
    }
  }

  sub_29E74ECE8();
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar, v4);
  sub_29E754008();
  sub_29E754048();
  result = (*(*(v14 - 8) + 48))(v13, 1, v14);
  if (result != 1)
  {
    return sub_29E6807D4(v13, &qword_2A1856918, MEMORY[0x29EDBA2F8], sub_29E680708);
  }

  return result;
}

uint64_t sub_29E680204()
{
  v1 = *(v0 + 2);

  sub_29E6807D4(&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange], &qword_2A1A7BE00, MEMORY[0x29EDC9930], sub_29E680608);
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar;
  v3 = sub_29E74EE78();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_29E6807D4(&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_initialModel], qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, sub_29E680708);
  v4 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler + 8];
  sub_29E6459B8(*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler]);
  v5 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver];

  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider___observationRegistrar;
  v7 = sub_29E74EF48();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepScoreGalleryModelProvider()
{
  result = qword_2A1A7CC78;
  if (!qword_2A1A7CC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6803E0()
{
  sub_29E680608(319, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_29E74EE78();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_29E680708(319, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_29E74EF48();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_29E680594()
{
  if (!qword_2A18584F0)
  {
    sub_29E680608(255, &qword_2A1856940, MEMORY[0x29EDC9C30]);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18584F0);
    }
  }
}

void sub_29E680608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E754048();
    v7 = sub_29E680930(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6806A4(uint64_t a1, uint64_t a2)
{
  sub_29E605ADC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E680708(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E68075C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  return sub_29E67F504();
}

uint64_t sub_29E6807D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29E680834()
{
  if (!qword_2A18584F8)
  {
    type metadata accessor for SleepScoreDaySummaryProviderDataSource();
    sub_29E680930(&qword_2A1856960, type metadata accessor for SleepScoreDaySummaryProviderDataSource);
    v0 = sub_29E753DF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18584F8);
    }
  }
}

uint64_t sub_29E6808C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E680930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E680978(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreRoomModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SleepApneaOnboardingConfirmDetailsDataSource()
{
  result = qword_2A1858520;
  if (!qword_2A1858520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E680A88(void *a1)
{
  v2 = (v1 + *a1);
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_29E7517F8();
  if (*(v5 + 16) && (v6 = sub_29E68A9D0(v3, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + v6);

    return v8;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_29E680B2C()
{
  v1 = *(v0 + qword_2A1858500 + 8);

  v2 = *(v0 + qword_2A1858508 + 8);

  v3 = *(v0 + qword_2A1858510 + 8);

  v4 = *(v0 + qword_2A1858518 + 8);
}

uint64_t sub_29E680B9C()
{
  v0 = sub_29E751838();
  v1 = *(v0 + qword_2A1858500 + 8);

  v2 = *(v0 + qword_2A1858508 + 8);

  v3 = *(v0 + qword_2A1858510 + 8);

  v4 = *(v0 + qword_2A1858518 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_29E680C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E681158();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_29E74EED8();
  v15 = *(v10 + 56);
  *v13 = v14;
  v16 = sub_29E7503F8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13 + v15, a1, v16);
  if ((*(v17 + 88))(v13 + v15, v16) != *MEMORY[0x29EDC1B58])
  {
    goto LABEL_6;
  }

  if (v14 != 1)
  {
    if (!v14)
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_29E6811C0(v13);
  }

  if (qword_2A1A7D6F0 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v8, v4);
  v19 = sub_29E752258();
  v20 = MEMORY[0x29EDC7800];
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  sub_29E5FEBF4(a2);
  sub_29E752218();

  sub_29E752228();
  sub_29E68121C();
  v21 = *MEMORY[0x29EDC80E0];
  v22 = *MEMORY[0x29EDC76E0];
  sub_29E754AC8();
  v23 = sub_29E7521C8();
  sub_29E7521A8();
  v23(v26, 0);
  v24 = [objc_opt_self() labelColor];
  v25 = sub_29E7521C8();
  sub_29E7521B8();
  v25(v26, 0);

  return (*(v17 + 8))(v13 + v15, v16);
}

void sub_29E681158()
{
  if (!qword_2A1858530)
  {
    sub_29E7503F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858530);
    }
  }
}

uint64_t sub_29E6811C0(uint64_t a1)
{
  sub_29E681158();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E68121C()
{
  result = qword_2A185A560;
  if (!qword_2A185A560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A185A560);
  }

  return result;
}

uint64_t sub_29E681268(void *a1)
{
  v83 = a1;
  v106 = sub_29E74F698();
  v104 = *(v106 - 8);
  v2 = *(v104 + 64);
  MEMORY[0x2A1C7C4A8](v106);
  v82 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v1 + qword_2A1858500);
  *v9 = 0xD000000000000016;
  v9[1] = 0x800000029E75C1D0;
  v81 = v9;
  v10 = (v1 + qword_2A1858508);
  *v10 = 0xD000000000000019;
  v10[1] = 0x800000029E75C1F0;
  v79 = v10;
  v11 = (v1 + qword_2A1858510);
  *v11 = 0xD000000000000011;
  v11[1] = 0x800000029E75C210;
  v12 = v11;
  v84 = v1;
  v13 = (v1 + qword_2A1858518);
  strcpy((v1 + qword_2A1858518), "Age18OrOverKey");
  *(v13 + 15) = -18;
  sub_29E681E7C(0, &qword_2A1858538, MEMORY[0x29EDC21E8]);
  v14 = *(sub_29E750C08() - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v80 = *(v14 + 72);
  v16 = swift_allocObject();
  v89 = xmmword_29E762F40;
  *(v16 + 16) = xmmword_29E762F40;
  sub_29E681E7C(0, &qword_2A1858540, MEMORY[0x29EDC21E0]);
  v18 = v17;
  v105 = sub_29E750BE8();
  v19 = *(*(v105 - 8) + 72);
  v107 = *(v105 - 8);
  v20 = *(v107 + 80);
  v21 = (v20 + 32) & ~v20;
  v91 = v19;
  v76 = v20;
  v77 = v18;
  v75 = v21 + 2 * v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v89;
  if (qword_2A1A7D6F0 != -1)
  {
    v69 = v22;
    swift_once();
    v22 = v69;
  }

  v74 = v22;
  v85 = v22 + v21;
  v90 = v16 + v15;
  v87 = qword_2A1A7FA18;
  sub_29E74F8A8();
  v96 = sub_29E74F7C8();
  v94 = v23;
  v24 = *(v5 + 8);
  v86 = v5 + 8;
  v93 = v24;
  v24(v8, v4);
  v71 = *v13;
  v103 = v4;
  v25 = v13[1];
  sub_29E681E7C(0, &qword_2A1858548, MEMORY[0x29EDC21D8]);
  v27 = v26;
  v28 = *(sub_29E750BC8() - 8);
  v95 = *(v28 + 72);
  v102 = *(v28 + 80);
  v72 = v13;
  v92 = (v102 + 32) & ~v102;
  v73 = v21;
  v88 = v27;
  v29 = swift_allocObject();
  v101 = xmmword_29E762F30;
  *(v29 + 16) = xmmword_29E762F30;
  v30 = v12;
  v31 = *v12;
  v32 = v12[1];

  sub_29E750BB8();
  v99 = *MEMORY[0x29EDC6AC0];
  v33 = v104;
  v98 = *(v104 + 104);
  v100 = v104 + 104;
  v34 = v82;
  v78 = v16;
  v35 = v106;
  v98(v82);
  sub_29E754238();
  v97 = *(v33 + 8);
  v97(v34, v35);
  v36 = v85;
  sub_29E750BD8();
  LODWORD(v94) = *MEMORY[0x29EDC21D0];
  v37 = *(v107 + 104);
  v107 += 104;
  v96 = v37;
  v37(v36);
  sub_29E74F8A8();
  v38 = sub_29E74F7C8();
  v104 = v33 + 8;
  v71 = v38;
  v70[1] = v39;
  v93(v8, v103);
  v40 = v30[1];
  v70[0] = *v30;
  *(swift_allocObject() + 16) = v101;
  v42 = *v72;
  v41 = v72[1];

  sub_29E750BB8();
  v43 = v106;
  (v98)(v34, v99, v106);
  sub_29E754238();
  v97(v34, v43);
  v44 = v85;
  v45 = v91;
  sub_29E750BD8();
  v96(v44 + v45, v94, v105);
  sub_29E750BF8();
  v46 = swift_allocObject();
  v85 = v46;
  *(v46 + 16) = v89;
  *&v89 = v46 + v73;
  sub_29E74F8A8();
  v77 = sub_29E74F7C8();
  v76 = v47;
  v93(v8, v103);
  v48 = v81;
  v50 = *v81;
  v49 = v81[1];
  *(swift_allocObject() + 16) = v101;
  v51 = v79;
  v53 = *v79;
  v52 = v79[1];

  sub_29E750BB8();
  v54 = v106;
  (v98)(v34, v99, v106);
  sub_29E754238();
  v97(v34, v54);
  v55 = v89;
  sub_29E750BD8();
  v96(v55, v94, v105);
  sub_29E74F8A8();
  v87 = sub_29E74F7C8();
  v77 = v56;
  v93(v8, v103);
  v57 = *v51;
  v58 = v51[1];
  *(swift_allocObject() + 16) = v101;
  v59 = *v48;
  v60 = v48[1];

  sub_29E750BB8();
  v61 = v106;
  (v98)(v34, v99, v106);
  sub_29E754238();
  v97(v34, v61);
  v62 = v91;
  sub_29E750BD8();
  v96(v55 + v62, v94, v105);
  sub_29E750BF8();
  v63 = sub_29E751698();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = v83;
  v67 = sub_29E751688();
  v109 = v63;
  v110 = MEMORY[0x29EDC28E8];
  v108 = v67;
  return sub_29E751828();
}