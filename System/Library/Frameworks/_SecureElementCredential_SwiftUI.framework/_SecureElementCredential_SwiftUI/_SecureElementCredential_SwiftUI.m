uint64_t View.transactionTask(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v21 = 0;
  sub_23B95D7B8(&qword_27E195E68, &qword_23B963A90);
  sub_23B9635F0();
  v11 = v14;
  v12 = v15;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v11;
  v18 = v12;
  v19 = KeyPath;
  v20 = 0;
  MEMORY[0x23EEB1200](&v14, a4, &type metadata for CredentialTransactionTaskModifier, a5);
}

uint64_t CredentialSession.configuration()()
{
  v2 = type metadata accessor for CredentialTransaction.Configuration();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B95D5DC;

  return sub_23B95DA18(v0);
}

uint64_t sub_23B95D5DC(uint64_t a1)
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

uint64_t sub_23B95D6DC()
{
  v0 = sub_23B963540();
  sub_23B95D8AC(v0, qword_27E195EF8);
  sub_23B95D910(v0, qword_27E195EF8);
  return sub_23B963530();
}

uint64_t sub_23B95D75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B963590();
  *a1 = result;
  return result;
}

uint64_t sub_23B95D7B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23B95D800(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23B963580();
  sub_23B95D858();
  return swift_getWitnessTable();
}

unint64_t sub_23B95D858()
{
  result = qword_27E195E70;
  if (!qword_27E195E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195E70);
  }

  return result;
}

uint64_t *sub_23B95D8AC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23B95D910(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B95D960()
{
  v1 = *v0;
  sub_23B963720();
  MEMORY[0x23EEB1350](v1);
  return sub_23B963740();
}

uint64_t sub_23B95D9D4()
{
  v1 = *v0;
  sub_23B963720();
  MEMORY[0x23EEB1350](v1);
  return sub_23B963740();
}

uint64_t sub_23B95DA18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23B963480();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95DAD8, 0, 0);
}

uint64_t sub_23B95DAD8()
{
  v22 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  *(v4 + 16) = v0[2];

  sub_23B963470();
  (*(v2 + 32))(v4 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v1, v3);
  *(v4 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_state) = 0;
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v5 = v0[3];
  v6 = sub_23B963540();
  sub_23B95D910(v6, qword_27E195EF8);

  v7 = sub_23B963520();
  v8 = sub_23B9636B0();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = sub_23B963450();
    v15 = sub_23B96035C(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_23B95C000, v7, v8, "Returning new configuration with identifier %s", v11, 0xCu);
    sub_23B960904(v12);
    MEMORY[0x23EEB15F0](v12, -1, -1);
    MEMORY[0x23EEB15F0](v11, -1, -1);
  }

  else
  {
    v16 = v0[2];
  }

  v17 = v0[6];

  v18 = v0[1];
  v19 = v0[3];

  return v18(v19);
}

uint64_t sub_23B95DCDC()
{
  v1[2] = v0;
  v2 = sub_23B9634F0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95DDA8, 0, 0);
}

uint64_t sub_23B95DDA8()
{
  v31 = v0;
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_state))
  {
    if (qword_27E195E60 != -1)
    {
      swift_once();
      v28 = v0[2];
    }

    v2 = sub_23B963540();
    sub_23B95D910(v2, qword_27E195EF8);

    v3 = sub_23B963520();
    v4 = sub_23B9636B0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136315138;
      v8 = sub_23B963450();
      v10 = sub_23B96035C(v8, v9, &v30);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_23B95C000, v3, v4, "Configuration %s has been invalidated", v6, 0xCu);
      sub_23B960904(v7);
      MEMORY[0x23EEB15F0](v7, -1, -1);
      MEMORY[0x23EEB15F0](v6, -1, -1);
    }

    v12 = v0[5];
    v11 = v0[6];

    v13 = v0[1];

    return v13();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_state) = 1;
    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v15 = v0[2];
    v16 = sub_23B963540();
    v0[7] = sub_23B95D910(v16, qword_27E195EF8);

    v17 = sub_23B963520();
    v18 = sub_23B9636B0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[2];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      v22 = sub_23B963450();
      v24 = sub_23B96035C(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23B95C000, v17, v18, "Invalidating configuration %s", v20, 0xCu);
      sub_23B960904(v21);
      MEMORY[0x23EEB15F0](v21, -1, -1);
      MEMORY[0x23EEB15F0](v20, -1, -1);
    }

    v0[8] = *(v0[2] + 16);
    v25 = *(MEMORY[0x277CDBCD0] + 4);
    v29 = (*MEMORY[0x277CDBCD0] + MEMORY[0x277CDBCD0]);
    v26 = swift_task_alloc();
    v0[9] = v26;
    *v26 = v0;
    v26[1] = sub_23B95E13C;
    v27 = v0[6];

    return v29(v27);
  }
}

uint64_t sub_23B95E13C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B95E238, 0, 0);
}

uint64_t sub_23B95E238()
{
  v37 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  (*(v3 + 16))(v1, v0[6], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277CDBCB8])
  {
    (*(v0[4] + 96))(v0[5], v0[3]);
    v5 = *(MEMORY[0x277CDBCA0] + 4);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_23B95E644;
    v7 = v0[8];

    return MEMORY[0x28212AE50]();
  }

  else if (v4 == *MEMORY[0x277CDBCC0])
  {
    (*(v0[4] + 96))(v0[5], v0[3]);
    v8 = *(MEMORY[0x277CDBC90] + 4);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_23B95E814;
    v10 = v0[8];

    return MEMORY[0x28212AE40]();
  }

  else
  {
    if (v4 == *MEMORY[0x277CDBCB0])
    {
      v11 = v0[7];
      v12 = v0[2];

      v13 = sub_23B963520();
      v14 = sub_23B9636B0();

      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[6];
      v17 = v0[3];
      v18 = v0[4];
      if (v15)
      {
        v19 = v0[2];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v36 = v21;
        *v20 = 136315138;
        v22 = sub_23B963450();
        v24 = sub_23B96035C(v22, v23, &v36);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_23B95C000, v13, v14, "Configuration %s is being invalidated in management session state, no-op", v20, 0xCu);
        sub_23B960904(v21);
        MEMORY[0x23EEB15F0](v21, -1, -1);
        MEMORY[0x23EEB15F0](v20, -1, -1);
      }

      (*(v18 + 8))(v16, v17);
      v26 = v0[5];
      v25 = v0[6];

      v27 = v0[1];
    }

    else
    {
      if (v4 != *MEMORY[0x277CDBCC8])
      {
        (*(v0[4] + 8))(v0[5], v0[3]);
      }

      v28 = v0[6];
      v29 = v0[3];
      v30 = v0[4];
      v31 = sub_23B963500();
      sub_23B960950();
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277CDBCD8], v31);
      swift_willThrow();
      (*(v30 + 8))(v28, v29);
      v34 = v0[5];
      v33 = v0[6];

      v27 = v0[1];
    }

    return v27();
  }
}

uint64_t sub_23B95E644()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_23B95E928;
  }

  else
  {
    v3 = sub_23B95E758;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23B95E758()
{
  v1 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);
  v2 = sub_23B9634A0();
  (*(*(v2 - 8) + 8))(v1, v2);
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B95E814()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_23B95E9E4;
  }

  else
  {
    v3 = sub_23B9612AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23B95E928()
{
  v1 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);
  v2 = sub_23B9634A0();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[11];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B95E9E4()
{
  v1 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);
  v2 = sub_23B9634A0();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[13];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t CredentialTransaction.Configuration.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier;
  v3 = sub_23B963480();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CredentialTransaction.Configuration.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier;
  v3 = sub_23B963480();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_23B95EBDC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23B963480();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95ECA0, 0, 0);
}

uint64_t sub_23B95ECA0()
{
  v43 = v0;
  v1 = v0[4];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 24);
    if (qword_27E195E60 != -1)
    {
      swift_once();
      v37 = v0[4];
    }

    v4 = sub_23B963540();
    sub_23B95D910(v4, qword_27E195EF8);

    v5 = sub_23B963520();
    v6 = sub_23B9636A0();

    if (os_log_type_enabled(v5, v6))
    {
      v41 = v3;
      v8 = v0[6];
      v7 = v0[7];
      v9 = v0[4];
      v10 = v0[5];
      v11 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v11 = 136315650;
      *(v11 + 4) = sub_23B96035C(0xD000000000000022, 0x800000023B964150, v42);
      *(v11 + 12) = 2080;
      (*(v8 + 16))(v7, *(v9 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v10);
      v12 = sub_23B963450();
      v14 = v13;
      (*(v8 + 8))(v7, v10);
      v3 = v41;
      v15 = sub_23B96035C(v12, v14, v42);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_23B96035C(v41, v2, v42);
      _os_log_impl(&dword_23B95C000, v5, v6, "%s Configuration %s, scene identifier %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v40, -1, -1);
      MEMORY[0x23EEB15F0](v11, -1, -1);
    }

    v0[8] = *(*(v0[4] + 16) + 16);
    v16 = *(MEMORY[0x277CDBC98] + 4);

    v17 = swift_task_alloc();
    v0[9] = v17;
    *v17 = v0;
    v17[1] = sub_23B95F1DC;
    v19 = v0[2];
    v18 = v0[3];

    return MEMORY[0x28212AE48](v19, v3, v2, v18);
  }

  else
  {
    if (qword_27E195E60 != -1)
    {
      swift_once();
      v38 = v0[4];
    }

    v20 = sub_23B963540();
    sub_23B95D910(v20, qword_27E195EF8);

    v21 = sub_23B963520();
    v22 = sub_23B9636C0();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[6];
      v23 = v0[7];
      v26 = v0[4];
      v25 = v0[5];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_23B96035C(0xD000000000000022, 0x800000023B964150, v42);
      *(v27 + 12) = 2080;
      (*(v24 + 16))(v23, *(v26 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v25);
      v29 = sub_23B963450();
      v31 = v30;
      (*(v24 + 8))(v23, v25);
      v32 = sub_23B96035C(v29, v31, v42);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_23B95C000, v21, v22, "%s Configuration %s no scene identifier", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v28, -1, -1);
      MEMORY[0x23EEB15F0](v27, -1, -1);
    }

    v33 = sub_23B963500();
    sub_23B960950();
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277CDBCE0], v33);
    swift_willThrow();
    v35 = v0[7];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_23B95F1DC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B95F324, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23B95F324()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B95F390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23B963480();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95F454, 0, 0);
}

uint64_t sub_23B95F454()
{
  v44 = v0;
  v1 = v0[5];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 24);
    if (qword_27E195E60 != -1)
    {
      swift_once();
      v38 = v0[5];
    }

    v4 = sub_23B963540();
    sub_23B95D910(v4, qword_27E195EF8);

    v5 = sub_23B963520();
    v6 = sub_23B9636A0();

    if (os_log_type_enabled(v5, v6))
    {
      v42 = v3;
      v8 = v0[7];
      v7 = v0[8];
      v9 = v0[5];
      v10 = v0[6];
      v11 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43[0] = v41;
      *v11 = 136315650;
      *(v11 + 4) = sub_23B96035C(0xD000000000000031, 0x800000023B964180, v43);
      *(v11 + 12) = 2080;
      (*(v8 + 16))(v7, *(v9 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v10);
      v12 = sub_23B963450();
      v14 = v13;
      (*(v8 + 8))(v7, v10);
      v3 = v42;
      v15 = sub_23B96035C(v12, v14, v43);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_23B96035C(v42, v2, v43);
      _os_log_impl(&dword_23B95C000, v5, v6, "%s Configuration %s, scene identifier %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v41, -1, -1);
      MEMORY[0x23EEB15F0](v11, -1, -1);
    }

    v0[9] = *(*(v0[5] + 16) + 16);
    v16 = *(MEMORY[0x277CDBCA8] + 4);

    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_23B95F994;
    v18 = v0[3];
    v19 = v0[4];
    v20 = v0[2];

    return MEMORY[0x28212AE58](v20, v3, v2, v18, v19);
  }

  else
  {
    if (qword_27E195E60 != -1)
    {
      swift_once();
      v39 = v0[5];
    }

    v21 = sub_23B963540();
    sub_23B95D910(v21, qword_27E195EF8);

    v22 = sub_23B963520();
    v23 = sub_23B9636C0();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v0[7];
      v24 = v0[8];
      v27 = v0[5];
      v26 = v0[6];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_23B96035C(0xD000000000000031, 0x800000023B964180, v43);
      *(v28 + 12) = 2080;
      (*(v25 + 16))(v24, *(v27 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v26);
      v30 = sub_23B963450();
      v32 = v31;
      (*(v25 + 8))(v24, v26);
      v33 = sub_23B96035C(v30, v32, v43);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_23B95C000, v22, v23, "%s Configuration %s no scene identifier", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v29, -1, -1);
      MEMORY[0x23EEB15F0](v28, -1, -1);
    }

    v34 = sub_23B963500();
    sub_23B960950();
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277CDBCE0], v34);
    swift_willThrow();
    v36 = v0[8];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_23B95F994()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B95FADC, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23B95FADC()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B95FB48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23B963480();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B95FC08, 0, 0);
}

uint64_t sub_23B95FC08()
{
  v42 = v0;
  v1 = v0[3];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 24);
    if (qword_27E195E60 != -1)
    {
      swift_once();
      v36 = v0[3];
    }

    v4 = sub_23B963540();
    sub_23B95D910(v4, qword_27E195EF8);

    v5 = sub_23B963520();
    v6 = sub_23B9636A0();

    if (os_log_type_enabled(v5, v6))
    {
      v40 = v3;
      v8 = v0[5];
      v7 = v0[6];
      v9 = v0[3];
      v10 = v0[4];
      v11 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41[0] = v39;
      *v11 = 136315650;
      *(v11 + 4) = sub_23B96035C(0xD00000000000003ELL, 0x800000023B9641C0, v41);
      *(v11 + 12) = 2080;
      (*(v8 + 16))(v7, *(v9 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v10);
      v12 = sub_23B963450();
      v14 = v13;
      (*(v8 + 8))(v7, v10);
      v3 = v40;
      v15 = sub_23B96035C(v12, v14, v41);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_23B96035C(v40, v2, v41);
      _os_log_impl(&dword_23B95C000, v5, v6, "%s Configuration %s, scene identifier %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v39, -1, -1);
      MEMORY[0x23EEB15F0](v11, -1, -1);
    }

    v0[7] = *(*(v0[3] + 16) + 16);
    v16 = *(MEMORY[0x277CDBC88] + 4);

    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    v17[1] = sub_23B960140;
    v18 = v0[2];

    return MEMORY[0x28212AE30](v3, v2, v18);
  }

  else
  {
    if (qword_27E195E60 != -1)
    {
      swift_once();
      v37 = v0[3];
    }

    v19 = sub_23B963540();
    sub_23B95D910(v19, qword_27E195EF8);

    v20 = sub_23B963520();
    v21 = sub_23B9636C0();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v0[5];
      v22 = v0[6];
      v25 = v0[3];
      v24 = v0[4];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_23B96035C(0xD00000000000003ELL, 0x800000023B9641C0, v41);
      *(v26 + 12) = 2080;
      (*(v23 + 16))(v22, *(v25 + 16) + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_identifier, v24);
      v28 = sub_23B963450();
      v30 = v29;
      (*(v23 + 8))(v22, v24);
      v31 = sub_23B96035C(v28, v30, v41);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_23B95C000, v20, v21, "%s Configuration %s no scene identifier", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB15F0](v27, -1, -1);
      MEMORY[0x23EEB15F0](v26, -1, -1);
    }

    v32 = sub_23B963500();
    sub_23B960950();
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CDBCE0], v32);
    swift_willThrow();
    v34 = v0[6];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_23B960140()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B960288, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23B960288()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t CredentialTransaction.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t CredentialTransaction.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23B96035C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B960428(v11, 0, 0, 1, a1, a2);
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
    sub_23B96124C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_23B960904(v11);
  return v7;
}

unint64_t sub_23B960428(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B960534(a5, a6);
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
    result = sub_23B9636F0();
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

uint64_t sub_23B960534(uint64_t a1, unint64_t a2)
{
  v4 = sub_23B960580(a1, a2);
  sub_23B9606B0(&unk_284E50968);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23B960580(uint64_t a1, unint64_t a2)
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

  v6 = sub_23B96079C(v5, 0);
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

  result = sub_23B9636F0();
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
        v10 = sub_23B963630();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B96079C(v10, 0);
        result = sub_23B9636E0();
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

uint64_t sub_23B9606B0(uint64_t result)
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

  result = sub_23B960810(result, v12, 1, v3);
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

void *sub_23B96079C(uint64_t a1, uint64_t a2)
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

  sub_23B95D7B8(&qword_27E195E98, &qword_23B963C38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B960810(char *result, int64_t a2, char a3, char *a4)
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
    sub_23B95D7B8(&qword_27E195E98, &qword_23B963C38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_23B960904(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_23B960950()
{
  result = qword_27E195E78;
  if (!qword_27E195E78)
  {
    sub_23B963500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195E78);
  }

  return result;
}

uint64_t dispatch thunk of CredentialTransaction.performTransaction(using:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23B9612B0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CredentialTransaction.performTransactionInWiredMode(using:instanceAID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23B9612B0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CredentialTransaction.performCardEmulationTransactionWithCurrentCredential(options:)(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B960D64;

  return v8(a1);
}

uint64_t sub_23B960D64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for CredentialTransaction.Configuration()
{
  result = qword_27E195E80;
  if (!qword_27E195E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B960EAC()
{
  result = sub_23B963480();
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

uint64_t dispatch thunk of CredentialTransaction.Configuration.invalidate()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B9612B0;

  return v6();
}

uint64_t getEnumTagSinglePayload for CredentialTransaction.Configuration.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CredentialTransaction.Configuration.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B9611F8()
{
  result = qword_27E195E90;
  if (!qword_27E195E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195E90);
  }

  return result;
}

uint64_t sub_23B96124C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_23B9612C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B9612DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23B961324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B9613A0(uint64_t a1)
{
  v1[12] = a1;
  v1[13] = sub_23B963660();
  v1[14] = sub_23B963650();
  v3 = sub_23B963640();
  v1[15] = v3;
  v1[16] = v2;

  return MEMORY[0x2822009F8](sub_23B96143C, v3, v2);
}

uint64_t sub_23B96143C()
{
  v52 = v0;
  v1 = *(v0 + 96);
  v2 = *v1;
  *(v0 + 136) = *v1;
  if (!v2 || (*(v2 + OBJC_IVAR____TtCC32_SecureElementCredential_SwiftUI21CredentialTransaction13Configuration_state) & 1) != 0)
  {
    v3 = *(v0 + 112);

    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v4 = sub_23B963540();
    sub_23B95D910(v4, qword_27E195EF8);
    v5 = sub_23B963520();
    v6 = sub_23B9636B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23B95C000, v5, v6, "Invalid configuration in transactionTask modifier", v7, 2u);
      MEMORY[0x23EEB15F0](v7, -1, -1);
    }

LABEL_8:
    v8 = *(v0 + 8);

    return v8();
  }

  v10 = v1[5];
  *(v0 + 40) = *(v1 + 48);
  *(v0 + 32) = v10;
  v11 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_23B963140(v0 + 32, v0 + 48, &qword_27E195EC0, &qword_23B963D90);
    sub_23B9636D0();
    v37 = sub_23B9635D0();
    sub_23B963510();

    v38 = sub_23B9635C0();
    v39 = *(v38 - 8);
    v40 = *(v39 + 64) + 15;
    v41 = swift_task_alloc();
    sub_23B9635B0();
    swift_getAtKeyPath();
    sub_23B9631A8(v0 + 32, &qword_27E195EC0, &qword_23B963D90);
    (*(v39 + 8))(v41, v38);

    v11 = *(v0 + 80);
    *(v0 + 144) = v11;
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_21:
    v42 = *(v0 + 112);

    if (qword_27E195E60 != -1)
    {
      swift_once();
    }

    v43 = sub_23B963540();
    sub_23B95D910(v43, qword_27E195EF8);

    v44 = sub_23B963520();
    v45 = sub_23B9636C0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v46 = 136315138;
      v48 = sub_23B963450();
      v50 = sub_23B96035C(v48, v49, &v51);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_23B95C000, v44, v45, "No scene session in CredentialTransactionTaskModifier in configuration %s", v46, 0xCu);
      sub_23B960904(v47);
      MEMORY[0x23EEB15F0](v47, -1, -1);
      MEMORY[0x23EEB15F0](v46, -1, -1);
    }

    goto LABEL_8;
  }

  sub_23B963140(v0 + 32, v0 + 64, &qword_27E195EC0, &qword_23B963D90);
  *(v0 + 144) = v11;
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v12 = sub_23B963540();
  sub_23B95D910(v12, qword_27E195EF8);

  v13 = v11;
  v14 = sub_23B963520();
  v15 = sub_23B9636A0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51 = v17;
    *v16 = 136315394;
    v18 = sub_23B963450();
    v20 = sub_23B96035C(v18, v19, &v51);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = [v13 persistentIdentifier];
    v22 = sub_23B963610();
    v24 = v23;

    v25 = sub_23B96035C(v22, v24, &v51);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_23B95C000, v14, v15, "Transaction task successfully created for configuration %s and scene Identifier %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB15F0](v17, -1, -1);
    MEMORY[0x23EEB15F0](v16, -1, -1);
  }

  v27 = *(v0 + 96);
  v26 = *(v0 + 104);

  v28 = [v13 persistentIdentifier];
  v29 = sub_23B963610();
  v31 = v30;

  type metadata accessor for CredentialTransaction();
  v32 = swift_allocObject();
  *(v0 + 152) = v32;
  v32[2] = v2;
  v32[3] = v29;
  v32[4] = v31;
  *(v0 + 16) = *(v27 + 24);
  *(v0 + 88) = v32;

  sub_23B95D7B8(&qword_27E195ED0, &qword_23B963DA0);
  sub_23B963600();
  v33 = swift_task_alloc();
  *(v0 + 160) = v33;
  v33[2] = v2;
  v33[3] = v27;
  v33[4] = v32;
  v34 = swift_task_alloc();
  *(v0 + 168) = v34;
  *(v34 + 16) = v2;
  *(v34 + 24) = v32;
  *(v0 + 176) = sub_23B963650();
  v35 = *(MEMORY[0x277D85A10] + 4);
  v36 = swift_task_alloc();
  *(v0 + 184) = v36;
  *v36 = v0;
  v36[1] = sub_23B961B64;

  return MEMORY[0x282200830]();
}

void sub_23B961B64()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[21];
    v5 = v2[22];
    v7 = v2[20];

    v8 = v2[15];
    v9 = v2[16];

    MEMORY[0x2822009F8](sub_23B961CB0, v8, v9);
  }
}

uint64_t sub_23B961CB0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B961D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_23B963660();
  v4[5] = sub_23B963650();
  v6 = sub_23B963640();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23B961DD0, v6, v5);
}

uint64_t sub_23B961DD0()
{
  v19 = v0;
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_23B963540();
  sub_23B95D910(v2, qword_27E195EF8);

  v3 = sub_23B963520();
  v4 = sub_23B9636B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = sub_23B963450();
    v10 = sub_23B96035C(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23B95C000, v3, v4, "Performing transaction action for configuration %s", v6, 0xCu);
    sub_23B960904(v7);
    MEMORY[0x23EEB15F0](v7, -1, -1);
    MEMORY[0x23EEB15F0](v6, -1, -1);
  }

  v11 = v0[3];
  v12 = *(v11 + 16);
  v17 = (*(v11 + 8) + **(v11 + 8));
  v13 = *(*(v11 + 8) + 4);
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = sub_23B96200C;
  v15 = v0[4];

  return v17(v15);
}

uint64_t sub_23B96200C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B96212C, v4, v3);
}

uint64_t sub_23B96212C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B962190(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(sub_23B95D7B8(&qword_27E195ED8, &qword_23B963DB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v17 - v4;
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v6 = sub_23B963540();
  sub_23B95D910(v6, qword_27E195EF8);

  v7 = sub_23B963520();
  v8 = sub_23B9636B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_23B963450();
    v13 = sub_23B96035C(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_23B95C000, v7, v8, "Invalidating configuration due to transaction task cancellation for configuration %s", v9, 0xCu);
    sub_23B960904(v10);
    MEMORY[0x23EEB15F0](v10, -1, -1);
    MEMORY[0x23EEB15F0](v9, -1, -1);
  }

  v14 = sub_23B963690();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;

  sub_23B962784(0, 0, v5, &unk_23B963DC8, v15);
}

uint64_t sub_23B9623FC()
{
  v1 = *(*(v0 + 48) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_23B962490;

  return sub_23B95DCDC();
}

uint64_t sub_23B962490()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B9625C4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23B9625C4()
{
  v18 = v0;
  if (qword_27E195E60 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_23B963540();
  sub_23B95D910(v2, qword_27E195EF8);
  MEMORY[0x23EEB14F0](v1);
  v3 = sub_23B963520();
  v4 = sub_23B9636C0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_23B963710();
    v14 = sub_23B96035C(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_23B95C000, v3, v4, "Error %s found when invalidating configuration due to transaction task cancellation", v7, 0xCu);
    sub_23B960904(v8);
    MEMORY[0x23EEB15F0](v8, -1, -1);
    MEMORY[0x23EEB15F0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_23B962784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_23B95D7B8(&qword_27E195ED8, &qword_23B963DB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23B963140(a3, v26 - v10, &qword_27E195ED8, &qword_23B963DB8);
  v12 = sub_23B963690();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B9631A8(v11, &qword_27E195ED8, &qword_23B963DB8);
  }

  else
  {
    sub_23B963680();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23B963640();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23B963620() + 32;
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

      sub_23B9631A8(a3, &qword_27E195ED8, &qword_23B963DB8);

      return v24;
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

  sub_23B9631A8(a3, &qword_27E195ED8, &qword_23B963DB8);
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

uint64_t sub_23B962AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v18 = *v2;
  v19 = v9;
  v20 = v7;
  v21 = v8;
  v22 = *(v2 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = v18;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  v11 = v2[5];
  *(v10 + 48) = v9;
  *(v10 + 56) = v11;
  *(v10 + 64) = *(v2 + 48);
  v12 = (a2 + *(sub_23B95D7B8(&qword_27E195EA0, &qword_23B963D68) + 36));
  v13 = sub_23B95D7B8(&qword_27E195EA8, &qword_23B963D70);
  v14 = *(v13 + 36);
  sub_23B963140(&v18, v17, &qword_27E195EB0, &unk_23B963D78);

  sub_23B963140(&v20, v17, &qword_27E195E68, &qword_23B963A90);
  sub_23B963140(&v19, v17, &qword_27E195EB8, &qword_23B963D88);
  sub_23B963140(&v21, v17, &qword_27E195EC0, &qword_23B963D90);
  sub_23B963670();
  *(v12 + *(v13 + 40)) = v18;
  *v12 = &unk_23B963D60;
  v12[1] = v10;
  v15 = sub_23B95D7B8(&qword_27E195EC8, &qword_23B963D98);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  return sub_23B963140(&v18, v17, &qword_27E195EB0, &unk_23B963D78);
}

uint64_t sub_23B962CA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_23B962D00(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_23B962D00(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_23B962D0C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23B960D64;

  return sub_23B9613A0(v0 + 16);
}

uint64_t sub_23B962DA0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B962E98;

  return v7(a1);
}

uint64_t sub_23B962E98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B962F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B960D64;

  return sub_23B961D34(a1, v4, v5, v6);
}

uint64_t sub_23B96304C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B96308C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B9612B0;

  return sub_23B9623DC(a1, v4, v5, v6);
}

uint64_t sub_23B963140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23B95D7B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B9631A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23B95D7B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B963208(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B9612B0;

  return sub_23B962DA0(a1, v5);
}

uint64_t sub_23B9632C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_23B9632FC()
{
  result = qword_27E195EE0;
  if (!qword_27E195EE0)
  {
    sub_23B9633BC(&qword_27E195EA0, &qword_23B963D68);
    sub_23B963404(&qword_27E195EE8, &qword_27E195EC8, &qword_23B963D98);
    sub_23B963404(&qword_27E195EF0, &qword_27E195EA8, &qword_23B963D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195EE0);
  }

  return result;
}

uint64_t sub_23B9633BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23B963404(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23B9633BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}