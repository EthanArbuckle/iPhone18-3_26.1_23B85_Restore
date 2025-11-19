uint64_t sub_240691784()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);

  sub_2405AE36C(v0 + 16);

  return MEMORY[0x2822009F8](sub_240691800, 0, 0);
}

uint64_t sub_240691800()
{
  v13 = v0;
  v1 = *(v0 + 720);
  v8 = *(v0 + 432);
  v9 = *(v0 + 448);
  v10 = *(v0 + 464);
  sub_2405A26A4(v11);
  v6 = v11[1];
  v7 = v11[0];
  v2 = v12;
  sub_2405B0558(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  if (!v1)
  {
    v4 = *(v0 + 512);
    *v4 = v7;
    *(v4 + 16) = v6;
    *(v4 + 32) = v2;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2406918C4()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);

  return MEMORY[0x2822009F8](sub_240691938, 0, 0);
}

uint64_t sub_240691938()
{
  sub_2405AE36C(v0 + 16);
  v1 = *(v0 + 720);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24069199C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a6)
  {
    v10 = result;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
    v19 = swift_allocBox();
    v13 = v12;
    v14 = *(v11 + 48);
    swift_getErrorValue();

    Error.into()(v22, v20);
    v15 = v21;
    *(v13 + 81) = 1;
    v16 = v20[1];
    v17 = v20[2];
    *(v13 + 32) = v20[0];
    *(v13 + 48) = v16;
    *(v13 + 16) = a4;
    *(v13 + 24) = a5;
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 64) = v17;
    *(v13 + 80) = v15;
    sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
    v18 = *(type metadata accessor for AuthenticationModel(0) + 40);
    sub_24069EC88(v10 + v18, v13 + v14);
    *(v10 + v18) = v19;
    type metadata accessor for AuthenticationModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_240691AF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for AuthenticationModel.State(0);
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240691BC0, 0, 0);
}

uint64_t sub_240691BC0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v3 + *(v4 + 40), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + 56);
  if (EnumCaseMultiPayload == 12)
  {
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *v6;
    v10 = swift_projectBox();
    sub_24069F038(v10, v7);
    v11 = *(v7 + 8);
    v12 = *(v7 + 24);
    v13 = *(v7 + 48);
    v23 = *(v7 + 40);
    v24 = *(v7 + 32);
    v14 = *(v7 + 56);
    v15 = *(v7 + 64);
    v22 = *(v7 + 72);
    v16 = *(v7 + 81);
    v17 = *(v8 + 48);
    LOBYTE(v8) = *(v7 + 80);
    sub_24069EFD8(v7 + v17, type metadata accessor for AuthenticationModel.State);

    sub_2405AEA5C(v24, v23, v13, v14, v15, v22, v8);
  }

  else
  {
    sub_24069EFD8(v6, type metadata accessor for AuthenticationModel.State);
    v16 = 0;
  }

  v18 = *(v0 + 56);
  v19 = *(v0 + 40);
  **(v0 + 16) = v16;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_240691EE8(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[7] = a1;
  v5[8] = a5;
  v5[9] = _Block_copy(aBlock);
  if (a2)
  {
    v5[10] = sub_24075A0B4();
    v5[11] = v10;
    if (a3)
    {
LABEL_3:
      v11 = sub_24075A0B4();
      goto LABEL_6;
    }
  }

  else
  {
    v5[10] = 0;
    v5[11] = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  v5[12] = v11;
  v5[13] = v12;
  v13 = a5;
  v14 = a1;

  return MEMORY[0x2822009F8](sub_240691FB8, 0, 0);
}

uint64_t sub_240691FB8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = v3;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_240692088;
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);

  return sub_240698D68(v0 + 16, v11, v12, v9, v10, v7, v8);
}

uint64_t sub_240692088()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 88);
  v6 = *v1;
  *(v3 + 120) = v0;
  v7 = *(v3 + 32);
  *(v3 + 128) = *(v3 + 16);
  *(v3 + 144) = v7;
  *(v3 + 160) = *(v2 + 48);

  v8 = *(v2 + 104);
  if (v0)
  {

    v9 = sub_240692378;
  }

  else
  {
    v10 = *(v3 + 88);
    swift_bridgeObjectRelease_n();

    v9 = sub_240692214;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_240692214()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  if (!v1)
  {
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 136);

    goto LABEL_11;
  }

  if (*(v0 + 136))
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = sub_24075A084();

    if (*(v0 + 152))
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = 0;
    if (*(v0 + 160))
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v5 = 0;
  if (!*(v0 + 152))
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(v0 + 144);
  v7 = sub_24075A084();

  if (!*(v0 + 160))
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = sub_240759F54();

LABEL_10:
  v12 = *(v0 + 72);
  (v12)[2](v12, v5, v7, v8, 0);
  _Block_release(v12);

LABEL_11:
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_240692378()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v0 + 120);
  if (v3)
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 120);
    v8 = sub_2407595C4();

    (v6)[2](v6, 0, 0, 0, v8);
    _Block_release(v6);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_240692458(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_24069EFD8(v3, type metadata accessor for AuthenticationModel.State);
  v4 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v4;
  *(v3 + 96) = *(a2 + 96);
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  v6 = *(a2 + 48);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = v6;
  type metadata accessor for AuthenticationModel.State(0);
  swift_storeEnumTagMultiPayload();
  return sub_2405AE958(a2, v8);
}

uint64_t sub_2406924F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = type metadata accessor for AuthenticationModel.State(0);
  v3[18] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = type metadata accessor for AuthenticationModel.BindableState(0);
  v3[20] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406925BC, 0, 0);
}

uint64_t sub_2406925BC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240590E6C(v2);
  v5 = &v2[*(v1 + 24)];
  v7 = *(v5 + 8);
  v6 = *(v5 + 9);
  v8 = *(v5 + 10);
  v9 = *(v5 + 11);
  v10 = v5[96];
  sub_2405B04B4(v7, v6, v8, v9, v5[96]);
  sub_24069EFD8(v2, type metadata accessor for AuthenticationModel.BindableState);
  if (v10 != 255)
  {
    v11 = *(v0 + 120);
    *v11 = v7;
    *(v11 + 8) = v6;
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    *(v11 + 32) = v10;
LABEL_3:
    v12 = *(v0 + 168);
    v13 = *(v0 + 152);

    v14 = *(v0 + 8);
LABEL_44:

    return v14();
  }

  v15 = *(v0 + 144);
  sub_24069ECF8(v3 + v4, *(v0 + 152));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v0 + 152);
  if (EnumCaseMultiPayload != 2)
  {
    sub_24069EFD8(v17, type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0);
    swift_allocError();
    *v29 = xmmword_24075D8E0;
    swift_willThrow();
LABEL_43:
    v54 = *(v0 + 168);
    v55 = *(v0 + 152);

    v14 = *(v0 + 8);
    goto LABEL_44;
  }

  v18 = *v17;
  v19 = *(v17 + 16);
  *(v0 + 48) = *(v17 + 32);
  v20 = *(v17 + 48);
  v21 = *(v17 + 64);
  v22 = *(v17 + 80);
  *(v0 + 112) = *(v17 + 96);
  *(v0 + 80) = v21;
  *(v0 + 96) = v22;
  *(v0 + 64) = v20;
  *(v0 + 16) = v18;
  *(v0 + 32) = v19;
  if (*(v0 + 52) != 1 || (v23 = *(v0 + 136) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_signInModelModifier, v24 = *v23, *(v0 + 176) = *v23, *(v0 + 184) = *(v23 + 8), !v24))
  {
    v30 = *(v0 + 24);
    if (v30)
    {
      v31 = *(v0 + 40);
      if (v31)
      {
        v32 = *(v0 + 16);
        v33 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v33 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v33)
        {
          v34 = *(v0 + 32);
          v35 = HIBYTE(v31) & 0xF;
          if ((v31 & 0x2000000000000000) == 0)
          {
            v35 = v34 & 0xFFFFFFFFFFFFLL;
          }

          if (v35)
          {
            v36 = *(v0 + 120);
            v37 = *(v0 + 24);

            sub_2405AE36C(v0 + 16);
            *v36 = v32;
            *(v36 + 8) = v30;
            *(v36 + 16) = v34;
            *(v36 + 24) = v31;
            *(v36 + 32) = 1;
            goto LABEL_3;
          }
        }
      }
    }

    v38 = *(v0 + 50);
    if (v38 != 2 && (v38 & 1) != 0)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v39 = sub_240759AE4();
      __swift_project_value_buffer(v39, qword_27E4B8518);
      v40 = sub_240759AC4();
      v41 = sub_24075A5C4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_240579000, v40, v41, "Client decided to skip basic login, means they are cancelling", v42, 2u);
        MEMORY[0x245CC76B0](v42, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      v44 = 3;
LABEL_34:
      *v43 = v44;
      *(v43 + 8) = 0u;
      *(v43 + 24) = 0u;
      *(v43 + 40) = 0;
      *(v43 + 48) = 6;
      swift_willThrow();
LABEL_42:
      sub_2405AE36C(v0 + 16);
      goto LABEL_43;
    }

    v45 = *(v0 + 49);
    if (v45 != 2 && (v45 & 1) != 0)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v46 = sub_240759AE4();
      __swift_project_value_buffer(v46, qword_27E4B8518);
      v47 = sub_240759AC4();
      v48 = sub_24075A5C4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_240579000, v47, v48, "Client decided to cancel basic login", v49, 2u);
        MEMORY[0x245CC76B0](v49, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      v44 = 2;
      goto LABEL_34;
    }

    v50 = *(v0 + 72);
    if (v50)
    {
      v51 = v50;
      if ([v51 ak_isUserCancelError])
      {
        sub_2405B8998();
        swift_allocError();
        v53 = 2;
LABEL_41:
        *v52 = v53;
        *(v52 + 8) = 0u;
        *(v52 + 24) = 0u;
        *(v52 + 40) = 0;
        *(v52 + 48) = 6;
        swift_willThrow();

        goto LABEL_42;
      }

      v51 = v51;
      if ([v51 ak_isUserSkippedError])
      {
        sub_2405B8998();
        swift_allocError();
        v53 = 3;
        goto LABEL_41;
      }

      sub_2405AE36C(v0 + 16);
    }

    else
    {
      sub_2405AE36C(v0 + 16);
    }

    v56 = *(v0 + 120);
    *v56 = 0u;
    *(v56 + 16) = 0u;
    *(v56 + 32) = -1;
    goto LABEL_3;
  }

  v25 = *(v0 + 64);

  v57 = (v24 + *v24);
  v26 = v24[1];
  v27 = swift_task_alloc();
  *(v0 + 192) = v27;
  *v27 = v0;
  v27[1] = sub_240692C30;

  return v57(v25);
}

uint64_t sub_240692C30()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_240693144;
  }

  else
  {
    v5 = *(v2 + 184);
    sub_24058CA60(*(v2 + 176));
    v4 = sub_240692D4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240692D4C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_10;
  }

  v3 = *(v0 + 40);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *(v0 + 32);
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_10:
    v9 = *(v0 + 50);
    if (v9 != 2 && (v9 & 1) != 0)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v10 = sub_240759AE4();
      __swift_project_value_buffer(v10, qword_27E4B8518);
      v11 = sub_240759AC4();
      v12 = sub_24075A5C4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_240579000, v11, v12, "Client decided to skip basic login, means they are cancelling", v13, 2u);
        MEMORY[0x245CC76B0](v13, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      v15 = 3;
LABEL_24:
      *v14 = v15;
      *(v14 + 8) = 0u;
      *(v14 + 24) = 0u;
      *(v14 + 40) = 0;
      *(v14 + 48) = 6;
      swift_willThrow();
LABEL_32:
      sub_2405AE36C(v0 + 16);
      v25 = *(v0 + 168);
      v26 = *(v0 + 152);

      v27 = *(v0 + 8);
      goto LABEL_36;
    }

    v16 = *(v0 + 49);
    if (v16 != 2 && (v16 & 1) != 0)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v17 = sub_240759AE4();
      __swift_project_value_buffer(v17, qword_27E4B8518);
      v18 = sub_240759AC4();
      v19 = sub_24075A5C4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_240579000, v18, v19, "Client decided to cancel basic login", v20, 2u);
        MEMORY[0x245CC76B0](v20, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      v15 = 2;
      goto LABEL_24;
    }

    v21 = *(v0 + 72);
    if (v21)
    {
      v22 = v21;
      if ([v22 ak_isUserCancelError])
      {
        sub_2405B8998();
        swift_allocError();
        v24 = 2;
LABEL_31:
        *v23 = v24;
        *(v23 + 8) = 0u;
        *(v23 + 24) = 0u;
        *(v23 + 40) = 0;
        *(v23 + 48) = 6;
        swift_willThrow();

        goto LABEL_32;
      }

      v22 = v22;
      if ([v22 ak_isUserSkippedError])
      {
        sub_2405B8998();
        swift_allocError();
        v24 = 3;
        goto LABEL_31;
      }

      sub_2405AE36C(v0 + 16);
    }

    else
    {
      sub_2405AE36C(v0 + 16);
    }

    v28 = *(v0 + 120);
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = -1;
    goto LABEL_35;
  }

  v7 = *(v0 + 120);
  v8 = *(v0 + 24);

  sub_2405AE36C(v0 + 16);
  *v7 = v2;
  *(v7 + 8) = v1;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = 1;
LABEL_35:
  v29 = *(v0 + 168);
  v30 = *(v0 + 152);

  v27 = *(v0 + 8);
LABEL_36:

  return v27();
}

uint64_t sub_240693144()
{
  v1 = v0[22];
  v2 = v0[23];
  sub_2405AE36C((v0 + 2));
  sub_24058CA60(v1);
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2406931EC()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069328C;
  v3 = *(v0 + 16);

  return sub_24069BAA4(v3);
}

uint64_t sub_24069328C(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_24069338C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AuthenticationModel.State(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240693420, 0, 0);
}

uint64_t sub_240693420()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v3 + *(v4 + 40), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + 40);
  if (EnumCaseMultiPayload == 4)
  {
    v7 = *v6;
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    v10 = *(v6 + 48);
    v11 = *(v6 + 56);
    v12 = *(v6 + 64);
    v13 = *(v6 + 72);
    if (*(v6 + 24) == 1)
    {

      sub_2405AE990(v8, v9, v10, v11, v12);
      if (v13)
      {

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v17 = *(v6 + 16);
      v14 = sub_24075A584();

      sub_2405AE990(v8, v9, v10, v11, v12);
    }

    v18 = *(v0 + 40);
    **(v0 + 16) = v14;

    v16 = *(v0 + 8);
  }

  else
  {
    sub_24069EFD8(*(v0 + 40), type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0);
    swift_allocError();
    *v15 = xmmword_24075D8E0;
    swift_willThrow();

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_24069377C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2406937F4, 0, 0);
}

uint64_t sub_2406937F4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_240693894;
  v3 = *(v0 + 16);

  return sub_24069BAA4(v3);
}

uint64_t sub_240693894(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_240693A40;
  }

  else
  {
    v5 = sub_2406939A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2406939A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 24);
    v3[2](v3, *(v0 + 40), 0);

    _Block_release(v3);
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_240693A40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 48);
    v5 = sub_2407595C4();

    (v3)[2](v3, 0, v5);
    _Block_release(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_240693B18()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069F0D8;
  v3 = *(v0 + 16);

  return sub_240699A90(v3);
}

id sub_240693BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v9 = result;
    [result _updateWithValuesFromContext_];
    v13 = 1;
    sub_2405AE990(0, 1, 0, 0, 0);
    v10 = v13;
    *v7 = v9;
    *(v7 + 8) = xmmword_24075D8D0;
    v7[24] = v10;
    *(v7 + 2) = xmmword_24075D8E0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    swift_storeEnumTagMultiPayload();
    v11 = type metadata accessor for AuthenticationModel(0);
    return sub_24069ED5C(v7, a1 + *(v11 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240693E84(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_240693EFC, 0, 0);
}

uint64_t sub_240693EFC()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406901AC;
  v3 = *(v0 + 16);

  return sub_240699A90(v3);
}

uint64_t ModernAppleIDAuthenticationContext.presentSecondFactorAlertWithError(_:title:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_240693FC4, 0, 0);
}

uint64_t sub_240693FC4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 56);

  v5 = v3;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_240694090;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);

  return sub_24069C368(v8, v11, v9, v10, v7, v12);
}

uint64_t sub_240694090(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  v7 = *(v4 + 48);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

id sub_2406941E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for AuthenticationModel.State(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v19 = result;
    [result _updateWithValuesFromContext_];
    if (a7)
    {
      a7 = sub_2407595C4();
    }

    v23 = 1;

    sub_2405AE990(0, 1, 0, 0, 0);
    v20 = v23;
    *v17 = v19;
    *(v17 + 8) = xmmword_24075D8D0;
    v17[24] = v20;
    *(v17 + 4) = a3;
    *(v17 + 5) = a4;
    *(v17 + 6) = a5;
    *(v17 + 7) = a6;
    *(v17 + 8) = a7;
    *(v17 + 9) = 0;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for AuthenticationModel(0);
    return sub_24069ED5C(v17, a1 + *(v21 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240694350(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AuthenticationModel.State(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406943E4, 0, 0);
}

uint64_t sub_2406943E4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v3 + *(v4 + 40), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + 40);
  if (EnumCaseMultiPayload == 5)
  {
    v7 = *v6;
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    v10 = *(v6 + 48);
    v11 = *(v6 + 56);
    v12 = *(v6 + 64);
    v13 = *(v6 + 72);
    if (*(v6 + 24) == 1)
    {

      sub_2405AE990(v8, v9, v10, v11, v12);
      if (v13)
      {

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v17 = *(v6 + 16);
      v14 = sub_24075A584();

      sub_2405AE990(v8, v9, v10, v11, v12);
    }

    v18 = *(v0 + 40);
    **(v0 + 16) = v14;

    v16 = *(v0 + 8);
  }

  else
  {
    sub_24069EFD8(*(v0 + 40), type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0);
    swift_allocError();
    *v15 = xmmword_24075D8E0;
    swift_willThrow();

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_240694770(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  if (a2)
  {
    v5[5] = sub_24075A0B4();
    v5[6] = v10;
    if (a3)
    {
LABEL_3:
      v11 = sub_24075A0B4();
      goto LABEL_6;
    }
  }

  else
  {
    v5[5] = 0;
    v5[6] = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  v5[7] = v11;
  v5[8] = v12;
  v13 = a5;
  v14 = a1;

  return MEMORY[0x2822009F8](sub_240694840, 0, 0);
}

uint64_t sub_240694840()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v3;

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_24069490C;
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  return sub_24069C368(v12, v9, v10, v7, v8, v11);
}

uint64_t sub_24069490C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  v7 = v3[8];
  if (v1)
  {
    v8 = v4[2];

    v9 = sub_240694B0C;
  }

  else
  {
    v10 = v4[6];
    v11 = v4[2];
    swift_bridgeObjectRelease_n();

    v9 = sub_240694A6C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_240694A6C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 80);
  if (v1)
  {
    v4 = *(v0 + 32);
    v4[2](v4, *(v0 + 80), 0);

    _Block_release(v4);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240694B0C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  v5 = *(v0 + 88);
  if (v3)
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 88);
    v8 = sub_2407595C4();

    (v6)[2](v6, 0, v8);
    _Block_release(v6);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_240694DF8(int a1, void *aBlock)
{
  _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_240694C00, 0, 0);
}

uint64_t ModernAppleIDAuthenticationContext.presentServerProvidedUI(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_240694E80, 0, 0);
}

uint64_t sub_240694E80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_240694F24;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069CC70(v6, v5);
}

uint64_t sub_240694F24(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

id sub_240695034(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AuthenticationModel.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v11 = result;
    result = [result _updateWithValuesFromContext_];
    if (a3)
    {
      *v9 = v11;
      v9[1] = a3;
      v9[3] = 0;
      v9[4] = 0;
      v9[2] = 0;
      v12 = a3;
      swift_storeEnumTagMultiPayload();
      v13 = type metadata accessor for AuthenticationModel(0);
      return sub_24069ED5C(v9, a1 + *(v13 + 40));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240695134(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AuthenticationModel.State(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406951C8, 0, 0);
}

uint64_t sub_2406951C8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v3 + *(v4 + 40), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[5];
  if (EnumCaseMultiPayload != 7)
  {
    sub_24069EFD8(v6, type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0);
    swift_allocError();
    *v14 = xmmword_24075D8E0;
    swift_willThrow();
LABEL_7:
    v15 = v0[5];

    v16 = v0[1];
    goto LABEL_13;
  }

  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v11 = v6[4];
  if (v10)
  {
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      sub_240759F64();
    }

    goto LABEL_12;
  }

  if (v9)
  {
    v17 = v6[3];
    swift_willThrow();

    goto LABEL_7;
  }

  v10 = 1;
LABEL_12:
  v18 = v0[5];
  v19 = v0[2];
  *v19 = v10;
  v19[1] = 0;

  v16 = v0[1];
LABEL_13:

  return v16();
}

uint64_t sub_240695560(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2406955EC, 0, 0);
}

uint64_t sub_2406955EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_240695690;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069CC70(v6, v5);
}

uint64_t sub_240695690(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 40);
  v8 = *v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = v2;

  if (v2)
  {
    v6 = sub_2406958A0;
  }

  else
  {
    v6 = sub_2406957A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2406957A8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  if (v1)
  {
    if (*(v0 + 56))
    {
      v3 = *(v0 + 56);
      v4 = sub_240759F54();
    }

    else
    {
      v4 = 0;
    }

    v6 = *(v0 + 48);
    v7 = *(v0 + 32);
    (v7)[2](v7, v6, v4, 0);

    _Block_release(v7);
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2406958A0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 64);
  if (v1)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 64);
    v6 = sub_2407595C4();

    (v4)[2](v4, 0, 0, v6);
    _Block_release(v4);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_240695984()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069F0D8;
  v3 = *(v0 + 16);

  return sub_24069A348(v3);
}

id sub_240695A24(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_2407595E4();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_240759634();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v30 = sub_240759454();
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v30);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AuthenticationModel.State(0);
  v18 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v20 = (&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a2;
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v23 = result;
    [result _updateWithValuesFromContext_];
    (*(v12 + 56))(v10, 1, 1, v11);
    (*(v31 + 104))(v6, *MEMORY[0x277CC91D8], v32);
    sub_240759624();
    sub_240759414();
    v24 = objc_allocWithZone(MEMORY[0x277CF02D8]);
    v25 = sub_2407593F4();
    v26 = [v24 initWithRequest:v25 requestType:0];

    (*(v14 + 8))(v17, v30);
    *v20 = v23;
    v20[1] = v26;
    v20[3] = 0;
    v20[4] = 0;
    v20[2] = 0;
    swift_storeEnumTagMultiPayload();
    v27 = type metadata accessor for AuthenticationModel(0);
    return sub_24069ED5C(v20, v33 + *(v27 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240695F1C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_240695F94, 0, 0);
}

uint64_t sub_240695F94()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406901AC;
  v3 = *(v0 + 16);

  return sub_24069A348(v3);
}

uint64_t ModernAppleIDAuthenticationContext.presentNativeRecoveryUI(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_240696054, 0, 0);
}

uint64_t sub_240696054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_24069F0DC;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069D540(v6, v5);
}

uint64_t sub_2406960F8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AuthenticationModel.State(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24069618C, 0, 0);
}

uint64_t sub_24069618C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v3 + *(v4 + 40), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[5];
  if (EnumCaseMultiPayload != 9)
  {
    sub_24069EFD8(v6, type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0);
    swift_allocError();
    *v12 = xmmword_24075D8E0;
    swift_willThrow();
LABEL_7:
    v13 = v0[5];

    v14 = v0[1];
    goto LABEL_9;
  }

  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  if (v10)
  {
    v11 = v10;
    sub_240759F64();
  }

  if (v9)
  {
    swift_willThrow();

    goto LABEL_7;
  }

  v15 = v0[5];
  v16 = v0[2];

  *v16 = 1;

  v14 = v0[1];
LABEL_9:

  return v14();
}

uint64_t sub_2406964F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_240696584, 0, 0);
}

uint64_t sub_240696584()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_240696628;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069D540(v6, v5);
}

uint64_t sub_240696628(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_24069F0B8;
  }

  else
  {
    v5 = sub_24069673C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24069673C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  if (v1)
  {
    if (*(v0 + 48))
    {
      v3 = *(v0 + 48);
      v4 = sub_240759F54();
    }

    else
    {
      v4 = 0;
    }

    v6 = *(v0 + 32);
    (v6)[2](v6, v4, 0);
    _Block_release(v6);
  }

  else
  {
    v5 = *(v0 + 48);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24069683C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069F0D8;
  v3 = *(v0 + 16);

  return sub_24069A758(v3);
}

uint64_t sub_240696A50(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_240696AC8, 0, 0);
}

uint64_t sub_240696AC8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406901AC;
  v3 = *(v0 + 16);

  return sub_24069A758(v3);
}

uint64_t ModernAppleIDAuthenticationContext.presentFidoAuth(for:fidoContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_240696B88, 0, 0);
}

uint64_t sub_240696B88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_240696C2C;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069DE10(v6, v5);
}

uint64_t sub_240696C2C(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

id sub_240696D2C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AuthenticationModel.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v11 = result;
    [result _updateWithValuesFromContext_];
    *v9 = v11;
    v9[1] = a3;
    v9[2] = 0;
    v9[3] = 0;
    swift_storeEnumTagMultiPayload();
    v12 = *(type metadata accessor for AuthenticationModel(0) + 40);
    v13 = a3;
    return sub_24069ED5C(v9, a1 + v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240696E2C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AuthenticationModel.State(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240696EC0, 0, 0);
}

uint64_t sub_240696EC0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v3 + *(v4 + 40), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[5];
  if (EnumCaseMultiPayload == 10)
  {
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    if (v10)
    {

      v11 = v0[5];
      v8 = v7;
      v7 = v9;
LABEL_4:
      v12 = v0[2];

      *v12 = v10;

      v13 = v0[1];
      goto LABEL_7;
    }

    if (!v9)
    {
      v10 = 1;
      goto LABEL_4;
    }

    v17 = *(v6 + 24);
    swift_willThrow();
  }

  else
  {
    sub_24069EFD8(v0[5], type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0);
    swift_allocError();
    *v14 = xmmword_24075D8E0;
    swift_willThrow();
  }

  v15 = v0[5];

  v13 = v0[1];
LABEL_7:

  return v13();
}

uint64_t sub_2406971EC(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_240697278, 0, 0);
}

uint64_t sub_240697278()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_24069731C;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069DE10(v6, v5);
}

uint64_t sub_24069731C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_2406974D0;
  }

  else
  {
    v5 = sub_240697430;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_240697430()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 48);
  if (v1)
  {
    v4 = *(v0 + 32);
    v4[2](v4, *(v0 + 48), 0);

    _Block_release(v4);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2406974D0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 56);
  if (v1)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 56);
    v6 = sub_2407595C4();

    (v4)[2](v4, 0, v6);
    _Block_release(v4);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t ModernAppleIDAuthenticationContext.presentKeepUsingUI(forAppleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2406975B4, 0, 0);
}

uint64_t sub_2406975B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_240697660;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return sub_24069AA34(v5, v6, v4);
}

uint64_t sub_240697660(char a1)
{
  v4 = *(*v2 + 40);
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

id sub_240697768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AuthenticationModel.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v13 = result;
    result = [result _updateWithValuesFromContext_];
    if (a4)
    {
      *v11 = v13;
      *(v11 + 1) = a3;
      *(v11 + 2) = a4;
      v11[24] = 2;

      swift_storeEnumTagMultiPayload();
      v14 = type metadata accessor for AuthenticationModel(0);
      return sub_24069ED5C(v11, a1 + *(v14 + 40));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24069787C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AuthenticationModel.State(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240697910, 0, 0);
}

uint64_t sub_240697910()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v3 + *(v4 + 40), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + 40);
  if (EnumCaseMultiPayload == 11)
  {
    v7 = *v6;
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);

    if (v9 == 2 || (v9 & 1) == 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v13 = *(v0 + 40);
    **(v0 + 16) = v10;

    v12 = *(v0 + 8);
  }

  else
  {
    sub_24069EFD8(*(v0 + 40), type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0);
    swift_allocError();
    *v11 = xmmword_24075D8E0;
    swift_willThrow();

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_240697C20(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_24075A0B4();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[4] = v6;
  v3[5] = v7;
  v8 = a3;

  return MEMORY[0x2822009F8](sub_240697CBC, 0, 0);
}

uint64_t sub_240697CBC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_240697D6C;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return sub_24069AA34(v6, v4, v5);
}

uint64_t sub_240697D6C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v8 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_240697F14;
  }

  else
  {
    v6 = *(v3 + 40);

    v5 = sub_240697E8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_240697E8C()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v2[2](v2, *(v0 + 64), 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240697F14()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 56);
    v5 = sub_2407595C4();

    (v3)[2](v3, 0, v5);
    _Block_release(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_240697FF4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_240698094;
  v3 = *(v0 + 16);

  return sub_24069B320(v3);
}

uint64_t sub_240698094(char a1)
{
  v4 = *(*v2 + 24);
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

uint64_t sub_24069819C(uint64_t a1)
{
  type metadata accessor for AuthenticationModel.State(0);
  v2 = swift_allocBox();
  v4 = v3;
  v5 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_24069EC88(a1 + v5, v4);
  *(a1 + v5) = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_240698390(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_240698408, 0, 0);
}

uint64_t sub_240698408()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406984A8;
  v3 = *(v0 + 16);

  return sub_24069B320(v3);
}

uint64_t sub_2406984A8(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_240698648;
  }

  else
  {
    v5 = sub_2406985C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2406985C0()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v2[2](v2, *(v0 + 48), 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240698648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
    v5 = sub_2407595C4();

    (v3)[2](v3, 0, v5);
    _Block_release(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_240698700(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_2406987A0;

  return sub_24068E8E0((v2 + 9), a2);
}

uint64_t sub_2406987A0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_24069892C;
  }

  else
  {
    v3 = sub_2406988B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2406988B4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  *v1 = *(v0 + 72);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24069892C()
{
  v1 = *(v0 + 144);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 128);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 128);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 144);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 144);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 128);

  swift_willThrow();
  v32 = *(v0 + 144);
LABEL_24:
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_240698D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a2;
  v7[17] = a3;
  v7[15] = a1;
  v14 = swift_task_alloc();
  v7[18] = v14;
  *v14 = v7;
  v14[1] = sub_240698E44;

  return sub_24069052C((v7 + 9), a2, a3, a4, a5, a6, a7);
}

uint64_t sub_240698E44()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_240698FE8;
  }

  else
  {
    v3 = sub_240698F58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240698F58()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  v3 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);

  *v2 = v7;
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_240698FE8()
{
  v1 = *(v0 + 152);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 128);
        v16 = *(v0 + 136);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v17 = sub_240759AE4();
        __swift_project_value_buffer(v17, qword_27E4B8518);
        v18 = sub_240759AC4();
        v19 = sub_24075A5C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_240579000, v18, v19, "Client skipped limited UI presentation, converting into AppleID error", v20, 2u);
          MEMORY[0x245CC76B0](v20, -1, -1);
        }

        v15 = *(v0 + 128);
        v16 = *(v0 + 136);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 152);
  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4B8518);
  v23 = v21;
  v24 = sub_240759AC4();
  v25 = sub_24075A5E4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 152);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v26;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_240579000, v24, v25, "Error during limited UI presentation: %@", v27, 0xCu);
    sub_24061DD28(v28);
    MEMORY[0x245CC76B0](v28, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  v31 = *(v0 + 152);
  v32 = *(v0 + 128);
  v33 = *(v0 + 136);

  swift_willThrow();
  v34 = *(v0 + 152);
LABEL_24:
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_240699434(uint64_t a1)
{
  *(v1 + 80) = a1;
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v1;
  v3[1] = sub_2406994D4;

  return sub_24068F6AC(v1 + 65, a1);
}

uint64_t sub_2406994D4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_240699650;
  }

  else
  {
    v3 = sub_2406995E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2406995E8()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240699650()
{
  v1 = *(v0 + 96);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 96);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 96);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 96);
  v31 = *(v0 + 80);

  swift_willThrow();
  v32 = *(v0 + 96);
LABEL_24:
  v33 = *(v0 + 8);

  return v33(0);
}

uint64_t sub_240699AB0()
{
  v1 = v0[10];
  v0[11] = *(v1 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v4 = sub_24075A344();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x2822009F8](sub_240699B98, v4, v3);
}

uint64_t sub_240699B98()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_240699C8C;
  v6 = v0[11];
  v5 = v0[12];
  v7 = MEMORY[0x277D839B0];

  return sub_2405D1864(v0 + 65, v2, sub_24069EE20, v5, &unk_240774808, 0, v6, v7);
}

uint64_t sub_240699C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_240699EA0;
  }

  else
  {
    v7 = sub_240699DC8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_240699DC8()
{
  v1 = *(v0 + 96);
  *(v0 + 66) = *(v0 + 65);

  return MEMORY[0x2822009F8](sub_240699E38, 0, 0);
}

uint64_t sub_240699E38()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 66);

  return v1(v2);
}

uint64_t sub_240699EA0()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_240699F08, 0, 0);
}

uint64_t sub_240699F08()
{
  v1 = *(v0 + 128);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 128);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 128);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 128);
  v31 = *(v0 + 80);

  swift_willThrow();
  v32 = *(v0 + 128);
LABEL_24:
  v33 = *(v0 + 8);

  return v33(0);
}

uint64_t sub_24069A368()
{
  v1 = v0[10];
  v0[11] = *(v1 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v4 = sub_24075A344();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x2822009F8](sub_24069A450, v4, v3);
}

uint64_t sub_24069A450()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_24069A544;
  v6 = v0[11];
  v5 = v0[12];
  v7 = MEMORY[0x277D839B0];

  return sub_2405D1864(v0 + 65, v2, sub_24069EE00, v5, &unk_2407747D8, 0, v6, v7);
}

uint64_t sub_24069A544()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_24069A6F0;
  }

  else
  {
    v7 = sub_24069A680;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24069A680()
{
  v1 = *(v0 + 96);
  *(v0 + 66) = *(v0 + 65);

  return MEMORY[0x2822009F8](sub_24069F0D4, 0, 0);
}

uint64_t sub_24069A6F0()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_24069F0C8, 0, 0);
}

uint64_t sub_24069A778()
{
  *(v0 + 88) = *(*(v0 + 80) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v2 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_24069A850, v2, v1);
}

uint64_t sub_24069A850()
{
  v1 = *(v0 + 88);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_24069A920;
  v6 = *(v0 + 88);

  return sub_2405D041C(v3, sub_24069F0B4, 0, v6, ObjectType, v2);
}

uint64_t sub_24069A920()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_24069F0CC;
  }

  else
  {
    v3 = sub_24069F0E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24069AA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_24069AA58, 0, 0);
}

uint64_t sub_24069AA58()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[13] = *(v3 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v6 = sub_24075A344();
  v0[15] = v6;
  v0[16] = v5;

  return MEMORY[0x2822009F8](sub_24069AB48, v6, v5);
}

uint64_t sub_24069AB48()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_24069AC3C;
  v6 = v0[13];
  v5 = v0[14];
  v7 = MEMORY[0x277D839B0];

  return sub_2405D1864(v0 + 65, v2, sub_24069ECEC, v5, &unk_2407747A8, 0, v6, v7);
}

uint64_t sub_24069AC3C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_24069AE5C;
  }

  else
  {
    v7 = sub_24069AD78;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24069AD78()
{
  v1 = *(v0 + 112);
  *(v0 + 66) = *(v0 + 65);

  return MEMORY[0x2822009F8](sub_24069ADE8, 0, 0);
}

uint64_t sub_24069ADE8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 66);

  return v2(v3);
}

uint64_t sub_24069AE5C()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_24069AEC4, 0, 0);
}

uint64_t sub_24069AEC4()
{
  v1 = *(v0 + 144);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 96);
        v16 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v17 = sub_240759AE4();
        __swift_project_value_buffer(v17, qword_27E4B8518);
        v18 = sub_240759AC4();
        v19 = sub_24075A5C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_240579000, v18, v19, "Client skipped limited UI presentation, converting into AppleID error", v20, 2u);
          MEMORY[0x245CC76B0](v20, -1, -1);
        }

        v21 = *(v0 + 96);
        v16 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 144);
  v23 = sub_240759AE4();
  __swift_project_value_buffer(v23, qword_27E4B8518);
  v24 = v22;
  v25 = sub_240759AC4();
  v26 = sub_24075A5E4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 144);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v27;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_240579000, v25, v26, "Error during limited UI presentation: %@", v28, 0xCu);
    sub_24061DD28(v29);
    MEMORY[0x245CC76B0](v29, -1, -1);
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  v32 = *(v0 + 144);
  v33 = *(v0 + 96);
  v34 = *(v0 + 80);

  swift_willThrow();

  v35 = *(v0 + 144);
LABEL_24:
  v36 = *(v0 + 8);

  return v36(0);
}

uint64_t sub_24069B340()
{
  *(v0 + 88) = *(*(v0 + 80) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v2 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_24069B418, v2, v1);
}

uint64_t sub_24069B418()
{
  v1 = *(v0 + 88);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_24069B4E8;
  v6 = *(v0 + 88);

  return sub_2405D041C(v3, sub_24069F0B4, 0, v6, ObjectType, v2);
}

uint64_t sub_24069B4E8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_24069B664;
  }

  else
  {
    v3 = sub_24069B5FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24069B5FC()
{
  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_24069B664()
{
  v1 = *(v0 + 104);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 104);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 104);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 104);
  v31 = *(v0 + 80);

  swift_willThrow();
  v32 = *(v0 + 104);
LABEL_24:
  v33 = *(v0 + 8);

  return v33(0);
}

uint64_t sub_24069BAC4()
{
  v1 = v0[11];
  v0[12] = *(v1 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v4 = sub_24075A344();
  v0[14] = v4;
  v0[15] = v3;

  return MEMORY[0x2822009F8](sub_24069BBAC, v4, v3);
}

uint64_t sub_24069BBAC()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB828, &qword_240774800);
  *v4 = v0;
  v4[1] = sub_24069BCB0;
  v7 = v0[12];
  v6 = v0[13];

  return sub_2405D1864((v0 + 9), v2, sub_24069EE40, v6, &unk_240774810, 0, v7, v5);
}

uint64_t sub_24069BCB0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_24069BEC4;
  }

  else
  {
    v7 = sub_24069BDEC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24069BDEC()
{
  v1 = v0[13];
  v0[18] = v0[9];

  return MEMORY[0x2822009F8](sub_24069BE5C, 0, 0);
}

uint64_t sub_24069BE5C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_24069BEC4()
{
  v1 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_24069BF2C, 0, 0);
}

uint64_t sub_24069BF2C()
{
  v1 = *(v0 + 136);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 88);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 88);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 136);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 136);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 136);
  v31 = *(v0 + 88);

  swift_willThrow();
  v32 = *(v0 + 136);
LABEL_24:
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24069C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_24069C390, 0, 0);
}

uint64_t sub_24069C390()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  *(v0 + 136) = *(v2 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  v5 = *(v0 + 96);
  v4 = *(v0 + 112);
  *(v3 + 16) = v2;
  *(v3 + 24) = v5;
  *(v3 + 40) = v4;
  *(v3 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v7 = sub_24075A344();
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;

  return MEMORY[0x2822009F8](sub_24069C48C, v7, v6);
}

uint64_t sub_24069C48C()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB828, &qword_240774800);
  *v4 = v0;
  v4[1] = sub_24069C590;
  v7 = v0[17];
  v6 = v0[18];

  return sub_2405D1864((v0 + 9), v2, sub_24069EE10, v6, &unk_2407747F8, 0, v7, v5);
}

uint64_t sub_24069C590()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_24069C7B0;
  }

  else
  {
    v7 = sub_24069C6CC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24069C6CC()
{
  v1 = v0[18];
  v0[23] = v0[9];

  return MEMORY[0x2822009F8](sub_24069C73C, 0, 0);
}

uint64_t sub_24069C73C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);
  v3 = *(v0 + 184);

  return v2(v3);
}

uint64_t sub_24069C7B0()
{
  v1 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_24069C818, 0, 0);
}

uint64_t sub_24069C818()
{
  v1 = *(v0 + 176);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 104);
        v16 = *(v0 + 88);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v17 = sub_240759AE4();
        __swift_project_value_buffer(v17, qword_27E4B8518);
        v18 = sub_240759AC4();
        v19 = sub_24075A5C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_240579000, v18, v19, "Client skipped limited UI presentation, converting into AppleID error", v20, 2u);
          MEMORY[0x245CC76B0](v20, -1, -1);
        }

        v21 = *(v0 + 104);
        v16 = *(v0 + 88);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 176);
  v23 = sub_240759AE4();
  __swift_project_value_buffer(v23, qword_27E4B8518);
  v24 = v22;
  v25 = sub_240759AC4();
  v26 = sub_24075A5E4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 176);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v27;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_240579000, v25, v26, "Error during limited UI presentation: %@", v28, 0xCu);
    sub_24061DD28(v29);
    MEMORY[0x245CC76B0](v29, -1, -1);
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  v32 = *(v0 + 176);
  v33 = *(v0 + 104);
  v34 = *(v0 + 88);

  swift_willThrow();

  v35 = *(v0 + 176);
LABEL_24:
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_24069CC70(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_24069CC90, 0, 0);
}

uint64_t sub_24069CC90()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[14] = *(v2 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v5 = sub_24075A344();
  v0[16] = v5;
  v0[17] = v4;

  return MEMORY[0x2822009F8](sub_24069CD78, v5, v4);
}

uint64_t sub_24069CD78()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB820, &qword_2407747F0);
  *v4 = v0;
  v4[1] = sub_24069CE7C;
  v7 = v0[14];
  v6 = v0[15];

  return sub_2405D1864((v0 + 9), v2, sub_24069EE08, v6, &unk_2407747E8, 0, v7, v5);
}

uint64_t sub_24069CE7C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_24069D094;
  }

  else
  {
    v7 = sub_24069CFB8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24069CFB8()
{
  v1 = *(v0 + 120);
  *(v0 + 160) = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24069D028, 0, 0);
}

uint64_t sub_24069D028()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  return v2(v3, v4);
}

uint64_t sub_24069D094()
{
  v1 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24069D0FC, 0, 0);
}

uint64_t sub_24069D0FC()
{
  v1 = *(v0 + 152);
  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v16 = *(v0 + 96);
        v15 = *(v0 + 104);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v17 = sub_240759AE4();
        __swift_project_value_buffer(v17, qword_27E4B8518);
        v18 = sub_240759AC4();
        v19 = sub_24075A5C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_240579000, v18, v19, "Client skipped limited UI presentation, converting into AppleID error", v20, 2u);
          MEMORY[0x245CC76B0](v20, -1, -1);
        }

        v16 = *(v0 + 96);
        v15 = *(v0 + 104);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 152);
  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4B8518);
  v23 = v21;
  v24 = sub_240759AC4();
  v25 = sub_24075A5E4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 152);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v26;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_240579000, v24, v25, "Error during limited UI presentation: %@", v27, 0xCu);
    sub_24061DD28(v28);
    MEMORY[0x245CC76B0](v28, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  v31 = *(v0 + 152);
  v33 = *(v0 + 96);
  v32 = *(v0 + 104);

  swift_willThrow();
  v34 = *(v0 + 152);
LABEL_24:
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_24069D540(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_24069D560, 0, 0);
}

uint64_t sub_24069D560()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[13] = *(v2 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v5 = sub_24075A344();
  v0[15] = v5;
  v0[16] = v4;

  return MEMORY[0x2822009F8](sub_24069D648, v5, v4);
}

uint64_t sub_24069D648()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
  *v4 = v0;
  v4[1] = sub_24069D74C;
  v7 = v0[13];
  v6 = v0[14];

  return sub_2405D1864((v0 + 9), v2, sub_24069EDE0, v6, &unk_2407747C8, 0, v7, v5);
}

uint64_t sub_24069D74C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_24069D964;
  }

  else
  {
    v7 = sub_24069D888;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24069D888()
{
  v1 = v0[14];
  v0[19] = v0[9];

  return MEMORY[0x2822009F8](sub_24069D8F8, 0, 0);
}

uint64_t sub_24069D8F8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2(v3);
}

uint64_t sub_24069D964()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_24069D9CC, 0, 0);
}

uint64_t sub_24069D9CC()
{
  v1 = *(v0 + 144);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v16 = *(v0 + 88);
        v15 = *(v0 + 96);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v17 = sub_240759AE4();
        __swift_project_value_buffer(v17, qword_27E4B8518);
        v18 = sub_240759AC4();
        v19 = sub_24075A5C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_240579000, v18, v19, "Client skipped limited UI presentation, converting into AppleID error", v20, 2u);
          MEMORY[0x245CC76B0](v20, -1, -1);
        }

        v16 = *(v0 + 88);
        v15 = *(v0 + 96);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 144);
  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4B8518);
  v23 = v21;
  v24 = sub_240759AC4();
  v25 = sub_24075A5E4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 144);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v26;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_240579000, v24, v25, "Error during limited UI presentation: %@", v27, 0xCu);
    sub_24061DD28(v28);
    MEMORY[0x245CC76B0](v28, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  v31 = *(v0 + 144);
  v33 = *(v0 + 88);
  v32 = *(v0 + 96);

  swift_willThrow();
  v34 = *(v0 + 144);
LABEL_24:
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_24069DE10(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_24069DE30, 0, 0);
}

uint64_t sub_24069DE30()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[13] = *(v2 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v5 = sub_24075A344();
  v0[15] = v5;
  v0[16] = v4;

  return MEMORY[0x2822009F8](sub_24069DF18, v5, v4);
}

uint64_t sub_24069DF18()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB808, &qword_2407747C0);
  *v4 = v0;
  v4[1] = sub_24069E01C;
  v7 = v0[13];
  v6 = v0[14];

  return sub_2405D1864((v0 + 9), v2, sub_24069EDC0, v6, &unk_2407747B8, 0, v7, v5);
}

uint64_t sub_24069E01C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_24069E1C8;
  }

  else
  {
    v7 = sub_24069E158;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24069E158()
{
  v1 = v0[14];
  v0[19] = v0[9];

  return MEMORY[0x2822009F8](sub_24069F0BC, 0, 0);
}

uint64_t sub_24069E1C8()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_24069F0D0, 0, 0);
}

uint64_t sub_24069E25C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240698390(v2, v3);
}

uint64_t sub_24069E308()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240697C20(v2, v3, v4);
}

uint64_t sub_24069E3BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2405CE450;

  return sub_2406971EC(v2, v3, v5, v4);
}

uint64_t sub_24069E47C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240696A50(v2, v3);
}

uint64_t sub_24069E528()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_2406964F8(v2, v3, v4);
}

uint64_t sub_24069E5DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240695F1C(v2, v3);
}

uint64_t sub_24069E688()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240695560(v2, v3, v4);
}

uint64_t sub_24069E73C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240694DF8(v2, v3);
}

uint64_t sub_24069E7F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2405DA4B0;

  return sub_240694770(v2, v3, v4, v5, v6);
}

uint64_t sub_24069E8B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240693E84(v2, v3);
}

uint64_t sub_24069E964()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_24069377C(v2, v3);
}

uint64_t objectdestroy_146Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24069EA68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2405DA4B0;

  return sub_240691EE8(v2, v3, v4, v5, v6);
}

uint64_t sub_24069EB30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240690094(v2, v3);
}

uint64_t sub_24069EBDC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_24068F17C(v2, v3);
}

uint64_t sub_24069EC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24069ECF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24069ED5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24069EE78(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2406924F4(a1, a2, v6);
}

uint64_t sub_24069EF28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return sub_2406924F4(a1, a2, v6);
}

uint64_t sub_24069EFD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24069F038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24069F0E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_240590794(0, &qword_27E4B88E8, 0x277D82BB8);
    v5 = sub_240759F54();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_24069F18C(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = qword_27E4B5EB8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_240759AE4();
    __swift_project_value_buffer(v4, qword_27E4B8518);

    v5 = sub_240759AC4();
    v6 = sub_24075A5D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315394;
      sub_240759BD4();

      v9 = sub_24075A0E4();
      v11 = sub_2405BBA7C(v9, v10, &v16);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v15 = *(v2 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B0, &qword_2407749F0);
      v12 = sub_24075A0E4();
      v14 = sub_2405BBA7C(v12, v13, &v16);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_240579000, v5, v6, "Setup controller session changed from %s to %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v8, -1, -1);
      MEMORY[0x245CC76B0](v7, -1, -1);
    }

    sub_240759BA4();
  }

  return result;
}

uint64_t SetupController.__allocating_init(queue:endpoint:inactiveSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_2406A95B8(a1, a2, a3);

  return v9;
}

uint64_t SetupController.init(queue:endpoint:inactiveSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2406A95B8(a1, a2, a3);

  return v3;
}

uint64_t SetupController.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_240759BE4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = type metadata accessor for SetupController();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_2406A95B8(0, v3, 0);
}

uint64_t sub_24069F518()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B8518);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_240579000, v7, v8, "Invalidating setup controller", v9, 2u);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_24060351C(0, 0, v5, &unk_240774888, v11);
}

uint64_t sub_24069F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24069F700, a4, 0);
}

uint64_t sub_24069F700()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession);

  return MEMORY[0x2822009F8](sub_24069F77C, 0, 0);
}

uint64_t sub_24069F77C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    sub_240759BA4();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SetupController.deinit()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession))
  {

    sub_240759BA4();
  }

  sub_2405B8A50(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  v2 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_setupAnalyticsEvent);

  v3 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession);

  v4 = *(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SetupController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession))
  {

    sub_240759BA4();
  }

  sub_2405B8A50(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  v2 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_setupAnalyticsEvent);

  v3 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession);

  v4 = *(v0 + v1);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24069F9A0(uint64_t a1, uint64_t a2)
{
  v3[52] = a2;
  v3[53] = v2;
  v3[51] = a1;
  v4 = type metadata accessor for MachSetupMessage();
  v3[54] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50) - 8) + 64) + 15;
  v3[60] = swift_task_alloc();
  v7 = sub_240759744();
  v3[61] = v7;
  v8 = *(v7 - 8);
  v3[62] = v8;
  v9 = *(v8 + 64) + 15;
  v3[63] = swift_task_alloc();
  v10 = type metadata accessor for SetupContext();
  v3[64] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24069FB38, v2, 0);
}

uint64_t sub_24069FB38()
{
  v35 = v0;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v1 = v0[66];
  v2 = v0[52];
  v3 = sub_240759AE4();
  v0[67] = __swift_project_value_buffer(v3, qword_27E4B8518);
  sub_2406AA1DC(v2, v1, type metadata accessor for SetupContext);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[66];
  if (v6)
  {
    v8 = v0[65];
    v9 = v0[64];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    sub_2406AA1DC(v7, v8, type metadata accessor for SetupContext);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2406AA244(v7, type metadata accessor for SetupContext);
    v15 = sub_2405BBA7C(v12, v14, &v34);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "Performing Apple ID Setup with context: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    sub_2406AA244(v7, type metadata accessor for SetupContext);
  }

  v17 = v0[62];
  v16 = v0[63];
  v19 = v0[60];
  v18 = v0[61];
  v20 = v0[52];
  v21 = v0[53];
  v22 = OBJC_IVAR____TtC12AppleIDSetup15SetupController_setupAnalyticsEvent;
  v0[68] = OBJC_IVAR____TtC12AppleIDSetup15SetupController_setupAnalyticsEvent;
  v23 = *(v21 + v22);

  sub_240759734();
  (*(v17 + 32))(v19, v16, v18);
  v24 = *(v17 + 56);
  v0[69] = v24;
  v0[70] = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v24(v19, 0, 1, v18);
  v25 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate;
  swift_beginAccess();
  sub_2406A9C2C(v19, v23 + v25);
  swift_endAccess();

  v26 = sub_2406A3EF8(v20);
  v0[71] = v26;
  v27 = v0[58];
  v28 = v0[53];
  v29 = v0[54];
  v30 = v0[52];
  v31 = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  v0[72] = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  v32 = *(v28 + v31);
  *(v28 + v31) = v26;
  swift_retain_n();
  sub_24069F18C(v32);

  sub_2406AA1DC(v30, v27, type metadata accessor for SetupModel);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_24069FF4C, 0, 0);
}

uint64_t sub_24069FF4C()
{
  v1 = v0[71];
  v2 = v0[58];
  v3 = swift_task_alloc();
  v0[73] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[74] = v5;
  *v5 = v0;
  v5[1] = sub_2406A0040;
  v6 = v0[59];
  v7 = v0[54];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406A9C9C, v3, v7);
}

uint64_t sub_2406A0040()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v10 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = sub_2406A0A48;
    v5 = 0;
  }

  else
  {
    v6 = v2[73];
    v7 = v2[58];
    v8 = v2[53];

    sub_2406AA244(v7, type metadata accessor for MachSetupMessage);
    v4 = sub_2406A0188;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2406A0188()
{
  v113 = v0;
  v1 = *(v0 + 432);
  sub_2406AA1DC(*(v0 + 472), *(v0 + 456), type metadata accessor for MachSetupMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v33 = *(v0 + 536);
    v34 = *(v0 + 456);
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    v38 = *(v34 + 24);
    v40 = *(v34 + 32);
    v39 = *(v34 + 40);
    v41 = *(v34 + 48);
    sub_2405AF8D8(*v34, v36, v37, v38, v40, v39, v41);
    v42 = sub_240759AC4();
    v43 = sub_24075A5E4();
    v105 = v39;
    v103 = v41;
    sub_2405AEA70(v35, v36, v37, v38, v40, v39, v41);
    log = v42;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      sub_2405B8998();
      swift_allocError();
      *v46 = v35;
      *(v46 + 8) = v36;
      *(v46 + 16) = v37;
      *(v46 + 24) = v38;
      *(v46 + 32) = v40;
      *(v46 + 40) = v105;
      *(v46 + 48) = v103;
      sub_2405AF8D8(v35, v36, v37, v38, v40, v105, v103);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v47;
      *v45 = v47;
      _os_log_impl(&dword_240579000, v42, v43, "Failed to perform setup with error: %@", v44, 0xCu);
      sub_2405B8A50(v45, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v45, -1, -1);
      MEMORY[0x245CC76B0](v44, -1, -1);
    }

    v98 = v38;
    v99 = v37;
    v48 = *(v0 + 576);
    v49 = *(v0 + 560);
    v96 = v35;
    v97 = v40;
    v50 = *(v0 + 552);
    v51 = *(v0 + 544);
    v95 = v36;
    v53 = *(v0 + 496);
    v52 = *(v0 + 504);
    v55 = *(v0 + 480);
    v54 = *(v0 + 488);
    v108 = *(v0 + 472);
    v110 = *(v0 + 568);
    v56 = *(v0 + 424);

    v57 = (v56 + v48);
    v58 = *(v56 + v51);

    sub_240759734();
    (*(v53 + 16))(v55, v52, v54);
    v50(v55, 0, 1, v54);
    v59 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate;
    swift_beginAccess();
    sub_2406A9C2C(v55, v58 + v59);
    swift_endAccess();
    sub_2406A9CA4(v58);
    (*(v53 + 8))(v52, v54);

    sub_2405B8998();
    swift_allocError();
    *v60 = v96;
    *(v60 + 8) = v95;
    *(v60 + 16) = v99;
    *(v60 + 24) = v98;
    *(v60 + 32) = v97;
    *(v60 + 40) = v105;
    *(v60 + 48) = v103;
    swift_willThrow();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v61 = *(v0 + 536);
    sub_2406AA1DC(*(v0 + 472), *(v0 + 448), type metadata accessor for MachSetupMessage);
    v62 = sub_240759AC4();
    v63 = sub_24075A5E4();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 448);
    if (v64)
    {
      v67 = *(v0 + 432);
      v66 = *(v0 + 440);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v112[0] = v69;
      *v68 = 136315138;
      sub_2406AA1DC(v65, v66, type metadata accessor for MachSetupMessage);
      v70 = sub_24075A0E4();
      v72 = v71;
      sub_2406AA244(v65, type metadata accessor for MachSetupMessage);
      v73 = sub_2405BBA7C(v70, v72, v112);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_240579000, v62, v63, "Received unexpected mach setup message: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x245CC76B0](v69, -1, -1);
      MEMORY[0x245CC76B0](v68, -1, -1);
    }

    else
    {

      sub_2406AA244(v65, type metadata accessor for MachSetupMessage);
    }

    v74 = *(v0 + 560);
    v75 = *(v0 + 552);
    v77 = *(v0 + 496);
    v76 = *(v0 + 504);
    v79 = *(v0 + 480);
    v78 = *(v0 + 488);
    v106 = *(v0 + 472);
    v80 = *(v0 + 424);
    v57 = (v80 + *(v0 + 576));
    v108 = *(v0 + 456);
    v111 = *(v0 + 568);
    v81 = *(v80 + *(v0 + 544));

    sub_240759734();
    (*(v77 + 16))(v79, v76, v78);
    v75(v79, 0, 1, v78);
    v82 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate;
    swift_beginAccess();
    sub_2406A9C2C(v79, v81 + v82);
    swift_endAccess();
    sub_2406A9CA4(v81);
    (*(v77 + 8))(v76, v78);

    sub_2405B8998();
    swift_allocError();
    *v83 = 0u;
    *(v83 + 16) = 0u;
    *(v83 + 32) = 0u;
    *(v83 + 48) = 6;
    swift_willThrow();
    sub_2406AA244(v106, type metadata accessor for MachSetupMessage);
LABEL_13:
    sub_2406AA244(v108, type metadata accessor for MachSetupMessage);
    v84 = *v57;
    *v57 = 0;
    sub_24069F18C(v84);

    v85 = *(v0 + 528);
    v86 = *(v0 + 520);
    v87 = *(v0 + 504);
    v89 = *(v0 + 472);
    v88 = *(v0 + 480);
    v91 = *(v0 + 456);
    v90 = *(v0 + 464);
    v93 = *(v0 + 440);
    v92 = *(v0 + 448);

    v32 = *(v0 + 8);
    goto LABEL_14;
  }

  v3 = *(v0 + 536);
  v4 = *(v0 + 456);
  *(v0 + 16) = *v4;
  v5 = v4[4];
  v7 = v4[1];
  v6 = v4[2];
  *(v0 + 64) = v4[3];
  *(v0 + 80) = v5;
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  sub_2406AA12C(v0 + 16, v0 + 96);
  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();
  sub_2406AA188(v0 + 16);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v112[0] = v11;
    *v10 = 136315138;
    v12 = *(v0 + 64);
    *(v0 + 208) = *(v0 + 48);
    *(v0 + 224) = v12;
    *(v0 + 240) = *(v0 + 80);
    v13 = *(v0 + 32);
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v13;
    sub_2406AA12C(v0 + 16, v0 + 256);
    v14 = sub_24075A0E4();
    v16 = sub_2405BBA7C(v14, v15, v112);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_240579000, v8, v9, "Finished Apple ID Setup with report: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 528);
  v20 = *(v0 + 520);
  v21 = *(v0 + 504);
  v22 = *(v0 + 472);
  loga = *(v0 + 480);
  v102 = *(v0 + 464);
  v104 = *(v0 + 456);
  v107 = *(v0 + 448);
  v109 = *(v0 + 440);
  v23 = *(v0 + 424);
  v24 = *(v0 + 408);
  v25 = *(v23 + *(v0 + 544));
  v26 = *(v0 + 64);
  v112[2] = *(v0 + 48);
  v112[3] = v26;
  v112[4] = *(v0 + 80);
  v27 = *(v0 + 32);
  v112[0] = *(v0 + 16);
  v112[1] = v27;

  sub_2407543CC(v112);

  sub_2406AA244(v22, type metadata accessor for MachSetupMessage);
  *v24 = *(v0 + 16);
  v28 = *(v0 + 32);
  v29 = *(v0 + 48);
  v30 = *(v0 + 80);
  v24[3] = *(v0 + 64);
  v24[4] = v30;
  v24[1] = v28;
  v24[2] = v29;
  v31 = *(v23 + v17);
  *(v23 + v17) = 0;
  sub_24069F18C(v31);

  v32 = *(v0 + 8);
LABEL_14:

  return v32();
}

uint64_t sub_2406A0A48()
{
  v1 = v0[73];
  v2 = v0[58];
  v3 = v0[53];

  sub_2406AA244(v2, type metadata accessor for MachSetupMessage);

  return MEMORY[0x2822009F8](sub_2406A0AD4, v3, 0);
}

uint64_t sub_2406A0AD4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[53];
  v4 = *(v3 + v1);
  *(v3 + v1) = 0;
  sub_24069F18C(v4);

  v5 = v0[75];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[63];
  v10 = v0[59];
  v9 = v0[60];
  v12 = v0[57];
  v11 = v0[58];
  v14 = v0[55];
  v13 = v0[56];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2406A0BD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MachSetupMessage();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for ViewServiceConfiguration();
  v2[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406A0CD8, v1, 0);
}

uint64_t sub_2406A0CD8()
{
  v26 = v0;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[2];
  v3 = sub_240759AE4();
  v0[13] = __swift_project_value_buffer(v3, qword_27E4B8518);
  sub_2406AA1DC(v2, v1, type metadata accessor for ViewServiceConfiguration);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    sub_2406AA1DC(v7, v8, type metadata accessor for ViewServiceConfiguration);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2406AA244(v7, type metadata accessor for ViewServiceConfiguration);
    v15 = sub_2405BBA7C(v12, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "Launching view service with configuration: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    sub_2406AA244(v7, type metadata accessor for ViewServiceConfiguration);
  }

  v16 = v0[3];
  v17 = sub_2406A6668(sub_2406A19B0, 0, sub_2406A1C38, 0);
  v0[14] = v17;
  v18 = v0[8];
  v19 = v0[3];
  v20 = v0[4];
  v21 = v0[2];
  v22 = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  v0[15] = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  v23 = *(v19 + v22);
  *(v19 + v22) = v17;
  swift_retain_n();
  sub_24069F18C(v23);

  sub_2406AA1DC(v21, v18, type metadata accessor for ViewServiceConfiguration);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_2406A1040, 0, 0);
}

uint64_t sub_2406A1040()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_2406A1134;
  v6 = v0[9];
  v7 = v0[4];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406AB144, v3, v7);
}

uint64_t sub_2406A1134()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_2406A1840;
    v5 = 0;
  }

  else
  {
    v6 = v2[16];
    v7 = v2[8];
    v8 = v2[3];

    sub_2406AA244(v7, type metadata accessor for MachSetupMessage);
    v4 = sub_2406A127C;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2406A127C()
{
  v65 = v0;
  v1 = v0[4];
  sub_2406AA1DC(v0[9], v0[7], type metadata accessor for MachSetupMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[13];
  if (EnumCaseMultiPayload == 8)
  {
    v21 = sub_240759AC4();
    v22 = sub_24075A5C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_240579000, v21, v22, "Launching view service and received ack back", v23, 2u);
      MEMORY[0x245CC76B0](v23, -1, -1);
    }

    v24 = v0[14];
    v25 = v0[15];
    v27 = v0[11];
    v26 = v0[12];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[7];
    v61 = v0[6];
    loga = v0[5];
    v31 = v0[3];

    sub_2406AA244(v28, type metadata accessor for MachSetupMessage);
    v32 = *(v31 + v25);
    *(v31 + v25) = 0;
    sub_24069F18C(v32);

    v33 = v0[1];
  }

  else
  {
    if (EnumCaseMultiPayload == 7)
    {
      v4 = v0[7];
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      v8 = *(v4 + 24);
      v9 = *(v4 + 32);
      v10 = *(v4 + 40);
      v11 = *(v4 + 48);
      sub_2405AF8D8(*v4, v6, v7, v8, v9, v10, v11);
      v12 = sub_240759AC4();
      v13 = sub_24075A5E4();
      sub_2405AEA70(v5, v6, v7, v8, v9, v10, v11);
      if (os_log_type_enabled(v12, v13))
      {
        v60 = v13;
        v14 = swift_slowAlloc();
        log = v12;
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        sub_2405B8998();
        swift_allocError();
        *v16 = v5;
        *(v16 + 8) = v6;
        *(v16 + 16) = v7;
        *(v16 + 24) = v8;
        *(v16 + 32) = v9;
        *(v16 + 40) = v10;
        *(v16 + 48) = v11;
        sub_2405AF8D8(v5, v6, v7, v8, v9, v10, v11);
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_240579000, log, v60, "Failed to launch view service with error: %@", v14, 0xCu);
        sub_2405B8A50(v15, &qword_27E4B92A0, &qword_240762400);
        v18 = v15;
        v12 = log;
        MEMORY[0x245CC76B0](v18, -1, -1);
        MEMORY[0x245CC76B0](v14, -1, -1);
      }

      v19 = v0[9];

      sub_2405B8998();
      swift_allocError();
      *v20 = v5;
      *(v20 + 8) = v6;
      *(v20 + 16) = v7;
      *(v20 + 24) = v8;
      *(v20 + 32) = v9;
      *(v20 + 40) = v10;
      *(v20 + 48) = v11;
      swift_willThrow();
    }

    else
    {
      sub_2406AA1DC(v0[9], v0[6], type metadata accessor for MachSetupMessage);
      v34 = sub_240759AC4();
      v35 = sub_24075A5E4();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[6];
      if (v36)
      {
        v39 = v0[4];
        v38 = v0[5];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v64 = v41;
        *v40 = 136315138;
        sub_2406AA1DC(v37, v38, type metadata accessor for MachSetupMessage);
        v42 = sub_24075A0E4();
        v44 = v43;
        sub_2406AA244(v37, type metadata accessor for MachSetupMessage);
        v45 = sub_2405BBA7C(v42, v44, &v64);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_240579000, v34, v35, "Received unexpected mach setup message: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x245CC76B0](v41, -1, -1);
        MEMORY[0x245CC76B0](v40, -1, -1);
      }

      else
      {

        sub_2406AA244(v37, type metadata accessor for MachSetupMessage);
      }

      v46 = v0[9];
      v19 = v0[7];
      sub_2405B8998();
      swift_allocError();
      *v47 = 0u;
      *(v47 + 16) = 0u;
      *(v47 + 32) = 0u;
      *(v47 + 48) = 6;
      swift_willThrow();
      sub_2406AA244(v46, type metadata accessor for MachSetupMessage);
    }

    sub_2406AA244(v19, type metadata accessor for MachSetupMessage);
    v49 = v0[14];
    v48 = v0[15];
    v50 = v0[3];
    v51 = *(v50 + v48);
    *(v50 + v48) = 0;
    sub_24069F18C(v51);

    v53 = v0[11];
    v52 = v0[12];
    v55 = v0[8];
    v54 = v0[9];
    v57 = v0[6];
    v56 = v0[7];
    v58 = v0[5];

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_2406A1840()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[3];

  sub_2406AA244(v2, type metadata accessor for MachSetupMessage);

  return MEMORY[0x2822009F8](sub_2406A18CC, v3, 0);
}

uint64_t sub_2406A18CC()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[3];
  v5 = *(v4 + v2);
  *(v4 + v2) = 0;
  sub_24069F18C(v5);

  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

double sub_2406A19B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_240759C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v12 = sub_240759AE4();
  __swift_project_value_buffer(v12, qword_27E4B8518);
  v13 = *(v5 + 16);
  v13(v11, a1, v4);
  v14 = sub_240759AC4();
  v15 = sub_24075A5D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v13(v9, v11, v4);
    v19 = sub_24075A0E4();
    v21 = v20;
    (*(v5 + 8))(v11, v4);
    v22 = sub_2405BBA7C(v19, v21, &v26);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_240579000, v14, v15, "Dropping unexpected incoming message: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245CC76B0](v18, -1, -1);
    v23 = v17;
    a2 = v25;
    MEMORY[0x245CC76B0](v23, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_2406A1C38(uint64_t a1)
{
  v2 = sub_240759BF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v7 = sub_240759AE4();
  __swift_project_value_buffer(v7, qword_27E4B8518);
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = sub_240759AC4();
  v10 = sub_24075A5E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_2406AB0E4(&qword_27E4B9BA0, MEMORY[0x277D855E8]);
    swift_allocError();
    v8(v13, v6, v2);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v6, v2);
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_240579000, v9, v10, "XPC session has been cancelled with error: %@", v11, 0xCu);
    sub_2405B8A50(v12, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v12, -1, -1);
    MEMORY[0x245CC76B0](v11, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2406A1EBC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for MachSetupMessage();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406A1F60, v2, 0);
}

uint64_t sub_2406A1F60()
{
  v31 = v0;
  v1 = *(v0[5] + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession);
  v0[9] = v1;
  if (v1)
  {
    v2 = qword_27E4B5EB8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = v0[8];
    v4 = v0[4];
    v5 = sub_240759AE4();
    __swift_project_value_buffer(v5, qword_27E4B8518);
    sub_2406AA1DC(v4, v3, type metadata accessor for MachSetupMessage);

    v6 = sub_240759AC4();
    v7 = sub_24075A5C4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[8];
    if (v8)
    {
      v11 = v0[6];
      v10 = v0[7];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30[0] = v13;
      *v12 = 136315394;
      sub_2406AA1DC(v9, v10, type metadata accessor for MachSetupMessage);
      v14 = sub_24075A0E4();
      v16 = v15;
      sub_2406AA244(v9, type metadata accessor for MachSetupMessage);
      v17 = sub_2405BBA7C(v14, v16, v30);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v0[2] = v1;
      sub_240759BD4();

      v18 = sub_24075A0E4();
      v20 = sub_2405BBA7C(v18, v19, v30);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_240579000, v6, v7, "Sending out message: %s with active xpc session: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v13, -1, -1);
      MEMORY[0x245CC76B0](v12, -1, -1);
    }

    else
    {

      sub_2406AA244(v9, type metadata accessor for MachSetupMessage);
    }

    return MEMORY[0x2822009F8](sub_2406A2360, 0, 0);
  }

  else
  {
    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v21 = sub_240759AE4();
    __swift_project_value_buffer(v21, qword_27E4B8518);
    v22 = sub_240759AC4();
    v23 = sub_24075A5E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_240579000, v22, v23, "Unable to send message due to no active session, not creating one", v24, 2u);
      MEMORY[0x245CC76B0](v24, -1, -1);
    }

    sub_2405B8998();
    swift_allocError();
    *v25 = 9;
    *(v25 + 8) = 0u;
    *(v25 + 24) = 0u;
    *(v25 + 40) = 0;
    *(v25 + 48) = 6;
    swift_willThrow();
    v27 = v0[7];
    v26 = v0[8];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2406A2360()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2406A2454;
  v6 = v0[6];
  v7 = v0[3];

  return MEMORY[0x2822008A0](v7, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406AB144, v3, v6);
}

uint64_t sub_2406A2454()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2406A25F4;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 40);

    v4 = sub_2406A257C;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2406A257C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2406A25F4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2406A2660, v2, 0);
}

uint64_t sub_2406A2660()
{
  v1 = v0[9];

  v2 = v0[12];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2406A26D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = v58 - v6;
  v67 = type metadata accessor for MachSetupMessage();
  v7 = *(*(v67 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v67);
  v65 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v58 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v62 = v58 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v58 - v16;
  MEMORY[0x28223BE20](v15);
  v66 = v58 - v17;
  v18 = sub_240759C44();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v58 - v24;
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  v27 = __swift_project_value_buffer(v26, qword_27E4B8500);
  v28 = *(v19 + 16);
  v28(v25, a1, v18);
  v63 = v27;
  v29 = sub_240759AC4();
  v30 = sub_24075A5D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v58[1] = a1;
    v32 = v31;
    v33 = swift_slowAlloc();
    v58[0] = v12;
    v34 = v33;
    *&v68 = v33;
    *v32 = 136315138;
    v28(v23, v25, v18);
    v35 = sub_24075A0E4();
    v37 = v36;
    (*(v19 + 8))(v25, v18);
    v38 = sub_2405BBA7C(v35, v37, &v68);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_240579000, v29, v30, "Received XPC message: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v39 = v34;
    v12 = v58[0];
    MEMORY[0x245CC76B0](v39, -1, -1);
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v25, v18);
  }

  sub_2406AB0E4(&qword_27E4BB878, type metadata accessor for MachSetupMessage);
  v40 = v64;
  sub_240759C34();
  v41 = v65;
  v42 = v66;
  sub_2406AAB30(v40, v66, type metadata accessor for MachSetupMessage);
  v43 = v62;
  sub_2406AA1DC(v42, v62, type metadata accessor for MachSetupMessage);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v44 = v61;
    sub_2405E150C(v43, v61, &qword_27E4BB860, &unk_2407749A0);
    sub_2406A2FD0(v44, v59, v60);
    swift_storeEnumTagMultiPayload();
    sub_2406AB0E4(&qword_27E4BB880, type metadata accessor for MachSetupMessage);
    sub_240759C24();
    sub_2406AA244(v12, type metadata accessor for MachSetupMessage);
    sub_2405B8A50(v44, &qword_27E4BB860, &unk_2407749A0);
    v45 = v42;
  }

  else
  {
    sub_2406AA1DC(v42, v41, type metadata accessor for MachSetupMessage);
    v46 = sub_240759AC4();
    v47 = sub_24075A5D4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v68 = v49;
      *v48 = 136315138;
      sub_2406AA1DC(v41, v12, type metadata accessor for MachSetupMessage);
      v50 = sub_24075A0E4();
      v51 = v41;
      v52 = v12;
      v53 = v50;
      v55 = v54;
      sub_2406AA244(v51, type metadata accessor for MachSetupMessage);
      v56 = sub_2405BBA7C(v53, v55, &v68);

      *(v48 + 4) = v56;
      v12 = v52;
      _os_log_impl(&dword_240579000, v46, v47, "Received unexpected mach setup message: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x245CC76B0](v49, -1, -1);
      MEMORY[0x245CC76B0](v48, -1, -1);
    }

    else
    {

      sub_2406AA244(v41, type metadata accessor for MachSetupMessage);
    }

    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v12[48] = 6;
    swift_storeEnumTagMultiPayload();
    sub_2406AB0E4(&qword_27E4BB880, type metadata accessor for MachSetupMessage);
    sub_240759C24();
    sub_2406AA244(v12, type metadata accessor for MachSetupMessage);
    sub_2406AA244(v42, type metadata accessor for MachSetupMessage);
    v45 = v62;
  }

  return sub_2406AA244(v45, type metadata accessor for MachSetupMessage);
}

void sub_2406A2FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v64 = a2;
  v4 = type metadata accessor for SetupContext();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v63 = *(v11 - 8);
  v60 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v18 = sub_240759AE4();
  __swift_project_value_buffer(v18, qword_27E506810);
  v62 = a1;
  sub_2405B044C(a1, v17, &qword_27E4BB860, &unk_2407749A0);
  v19 = sub_240759AC4();
  v20 = sub_24075A5D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v55 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v56 = v10;
    v24 = v23;
    *&aBlock = v23;
    *v22 = 136315138;
    v54 = v18;
    v25 = v14;
    sub_2405B044C(v17, v65, &qword_27E4BB860, &unk_2407749A0);
    v26 = sub_24075A0E4();
    v27 = v8;
    v29 = v28;
    sub_2405B8A50(v17, &qword_27E4BB860, &unk_2407749A0);
    v30 = sub_2405BBA7C(v26, v29, &aBlock);
    v8 = v27;
    v14 = v25;
    v18 = v54;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_240579000, v19, v20, "Received coordinated model update: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    v10 = v56;
    MEMORY[0x245CC76B0](v31, -1, -1);
    v32 = v22;
    v4 = v55;
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  else
  {

    sub_2405B8A50(v17, &qword_27E4BB860, &unk_2407749A0);
  }

  isEscapingClosureAtFileLocation = v64;
  sub_2405B044C(v64 + *(v4 + 20), &aBlock, &qword_27E4BAAE8, &qword_24076FC48);
  if (v68)
  {
    sub_24058C9C0(&aBlock, v72);
    v34 = v73;
    v35 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v36 = (*(v35 + 8))(v34, v35);
    if (!v36)
    {
      v36 = *(v57 + 112);
    }

    v37 = v36;
    sub_2405F7830(v72, v71);
    v10 = v65;
    sub_2405B044C(v62, v65, &qword_27E4BB860, &unk_2407749A0);
    v38 = v63;
    v39 = v61;
    (*(v63 + 16))(v61, v59, v11);
    v8 = ((*(v58 + 80) + 56) & ~*(v58 + 80));
    v40 = &v8[v14 + *(v38 + 80)] & ~*(v38 + 80);
    v41 = swift_allocObject();
    sub_24058C9C0(v71, v41 + 16);
    sub_2405E150C(v10, &v8[v41], &qword_27E4BB860, &unk_2407749A0);
    v42 = *(v38 + 32);
    v18 = v38 + 32;
    v42(v41 + v40, v39, v11);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_2406AA934;
    *(v43 + 24) = v41;
    v69 = sub_240635D44;
    v70 = v43;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v67 = sub_2406C0E30;
    v68 = &block_descriptor_44;
    v44 = _Block_copy(&aBlock);

    dispatch_async_and_wait(v37, v44);

    _Block_release(v44);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v72);

      return;
    }

    __break(1u);
  }

  else
  {
    sub_2405B8A50(&aBlock, &qword_27E4BAAE8, &qword_24076FC48);
    if (qword_27E4B5EB0 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  __swift_project_value_buffer(v18, qword_27E4B8500);
  sub_2406AA1DC(isEscapingClosureAtFileLocation, v10, type metadata accessor for SetupContext);
  v45 = sub_240759AC4();
  v46 = sub_24075A5E4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&aBlock = v48;
    *v47 = 136315138;
    sub_2406AA1DC(v10, v8, type metadata accessor for SetupContext);
    v49 = sub_24075A0E4();
    v51 = v50;
    sub_2406AA244(v10, type metadata accessor for SetupContext);
    v52 = sub_2405BBA7C(v49, v51, &aBlock);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_240579000, v45, v46, "Unable to use exchange from context: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x245CC76B0](v48, -1, -1);
    MEMORY[0x245CC76B0](v47, -1, -1);
  }

  else
  {

    sub_2406AA244(v10, type metadata accessor for SetupContext);
  }
}

uint64_t sub_2406A37C0(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v21[0] = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v21 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v21[1] = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2405B044C(a2, v13, &qword_27E4BB860, &unk_2407749A0);
  v16 = v22;
  (*(v5 + 16))(v8, v23, v22);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_2405E150C(v13, v19 + v17, &qword_27E4BB860, &unk_2407749A0);
  (*(v5 + 32))(v19 + v18, v8, v16);
  (*(v15 + 16))(v21[0], sub_2406AAA1C, v19, v14, v15);
}

uint64_t sub_2406A3A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = type metadata accessor for MachSetupMessage();
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB868, &unk_2407749B0);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v39 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB870, &qword_2407831A0);
  v12 = *(*(v43 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v24 = sub_240759AE4();
  __swift_project_value_buffer(v24, qword_27E506810);
  sub_2405B044C(a2, v23, &qword_27E4BB860, &unk_2407749A0);
  v46 = a1;
  sub_2405B044C(a1, v16, &qword_27E4BB870, &qword_2407831A0);
  v25 = sub_240759AC4();
  v26 = sub_24075A5D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v8;
    v48 = v39;
    *v27 = 136315394;
    v41 = a3;
    sub_2405B044C(v23, v21, &qword_27E4BB860, &unk_2407749A0);
    v28 = sub_24075A0E4();
    v30 = v29;
    sub_2405B8A50(v23, &qword_27E4BB860, &unk_2407749A0);
    v31 = sub_2405BBA7C(v28, v30, &v48);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    sub_2405B044C(v16, v42, &qword_27E4BB870, &qword_2407831A0);
    v32 = sub_24075A0E4();
    v34 = v33;
    sub_2405B8A50(v16, &qword_27E4BB870, &qword_2407831A0);
    v35 = sub_2405BBA7C(v32, v34, &v48);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_240579000, v25, v26, "Responding to model update (%s) with response: %s", v27, 0x16u);
    v36 = v39;
    swift_arrayDestroy();
    v8 = v40;
    MEMORY[0x245CC76B0](v36, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  else
  {

    sub_2405B8A50(v16, &qword_27E4BB870, &qword_2407831A0);
    sub_2405B8A50(v23, &qword_27E4BB860, &unk_2407749A0);
  }

  sub_2405B044C(v46, v8, &qword_27E4BB870, &qword_2407831A0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v37 = v44;
  sub_24075A414();
  return (*(v45 + 8))(v37, v9);
}

uint64_t sub_2406A3EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8);
  v69 = *(v5 - 8);
  v6 = *(v69 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = v8;
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C0, &qword_240774A00);
  v65 = *(v67 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C8, &qword_240774A08);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = v17;
  v63 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v62 - v18;
  v19 = type metadata accessor for SetupContext();
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v68 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v62 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v73 = v10;
  v27 = sub_240759AE4();
  __swift_project_value_buffer(v27, qword_27E4B8518);
  v72 = a1;
  sub_2406AA1DC(a1, v26, type metadata accessor for SetupContext);
  v28 = sub_240759AC4();
  v29 = sub_24075A5D4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77 = v5;
    v32 = v31;
    v79 = v31;
    *v30 = 136315138;
    sub_2406AA1DC(v26, v24, type metadata accessor for SetupContext);
    v33 = sub_24075A0E4();
    v35 = v34;
    sub_2406AA244(v26, type metadata accessor for SetupContext);
    v36 = sub_2405BBA7C(v33, v35, &v79);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_240579000, v28, v29, "Creating new XPC session for context: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v30, -1, -1);
  }

  else
  {

    sub_2406AA244(v26, type metadata accessor for SetupContext);
  }

  v77 = swift_allocBox();
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v40 = (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  MEMORY[0x28223BE20](v40);
  *(&v62 - 2) = v38;
  type metadata accessor for MachSetupMessage();
  (*(v65 + 104))(v13, *MEMORY[0x277D85778], v67);
  sub_24075A484();
  v41 = v73;
  sub_2405B044C(v38, v73, &qword_27E4BB8B8, &qword_2407749F8);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v71;
  sub_2405B044C(v41, v71, &qword_27E4BB8B8, &qword_2407749F8);
  v44 = v68;
  sub_2406AA1DC(v72, v68, type metadata accessor for SetupContext);
  v45 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v46 = (v70 + *(v66 + 80) + v45) & ~*(v66 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v42;
  v48 = v47 + v45;
  v49 = v77;
  sub_2405E150C(v43, v48, &qword_27E4BB8B8, &qword_2407749F8);
  sub_2406AAB30(v44, v47 + v46, type metadata accessor for SetupContext);

  v50 = v74;
  v51 = sub_2406A6668(sub_2406AACEC, v47, sub_2406AADE0, v49);
  if (v50)
  {

    sub_2405B8A50(v41, &qword_27E4BB8B8, &qword_2407749F8);
    (*(v75 + 8))(v78, v76);
  }

  else
  {
    sub_2405B8A50(v41, &qword_27E4BB8B8, &qword_2407749F8);

    v52 = sub_24075A3D4();
    v53 = v64;
    (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
    v55 = v75;
    v54 = v76;
    v56 = v63;
    (*(v75 + 16))(v63, v78, v76);
    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v58 = v51;
    v59 = (v62 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    (*(v55 + 32))(v60 + v57, v56, v54);
    *(v60 + v59) = v58;
    v51 = v58;

    sub_240656510(0, 0, v53, &unk_240774A18, v60);

    sub_2405B8A50(v53, &unk_27E4B9BF0, &qword_240762710);
    (*(v55 + 8))(v78, v54);
  }

  return v51;
}

uint64_t sub_2406A47DC(uint64_t a1, uint64_t a2)
{
  sub_2405B8A50(a2, &qword_27E4BB8B8, &qword_2407749F8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

double sub_2406A48B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v52 = a3;
  v55 = a2;
  v59 = a1;
  v61 = a4;
  v4 = type metadata accessor for SetupContext();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v6;
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_240759C44();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v60);
  v10 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    sub_2405B044C(v55, v18, &qword_27E4BB8B8, &qword_2407749F8);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      v39 = v25;
      v51 = v25;
      v40 = v7;
      v50 = *(v20 + 32);
      v55 = v20 + 32;
      v50(v39, v18, v19);
      v41 = sub_24075A3D4();
      (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
      v42 = *(v7 + 16);
      v43 = v60;
      v42(v58, v59, v60);
      sub_2406AA1DC(v52, v57, type metadata accessor for SetupContext);
      (*(v20 + 16))(v23, v51, v19);
      v44 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v45 = (v8 + *(v53 + 80) + v44) & ~*(v53 + 80);
      v46 = (v54 + *(v20 + 80) + v45) & ~*(v20 + 80);
      v47 = swift_allocObject();
      *(v47 + 2) = 0;
      *(v47 + 3) = 0;
      *(v47 + 4) = v27;
      (*(v40 + 32))(&v47[v44], v58, v43);
      sub_2406AAB30(v57, &v47[v45], type metadata accessor for SetupContext);
      v50(&v47[v46], v23, v19);

      sub_240602F08(0, 0, v56, &unk_240774A38, v47);

      (*(v20 + 8))(v51, v19);
      goto LABEL_10;
    }

    sub_2405B8A50(v18, &qword_27E4BB8B8, &qword_2407749F8);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v28 = sub_240759AE4();
  __swift_project_value_buffer(v28, qword_27E4B8518);
  v29 = *(v7 + 16);
  v30 = v60;
  v29(v10, v59, v60);
  v31 = sub_240759AC4();
  v32 = sub_24075A5E4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v62 = v34;
    *v33 = 136315138;
    v29(v58, v10, v30);
    v35 = sub_24075A0E4();
    v37 = v36;
    (*(v7 + 8))(v10, v30);
    v38 = sub_2405BBA7C(v35, v37, &v62);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_240579000, v31, v32, "Received a new XPC message but lost self: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x245CC76B0](v34, -1, -1);
    MEMORY[0x245CC76B0](v33, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v30);
  }

LABEL_10:
  v48 = v61;
  *(v61 + 32) = 0;
  result = 0.0;
  *v48 = 0u;
  v48[1] = 0u;
  return result;
}

uint64_t sub_2406A4F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2406A4F94, a4, 0);
}

uint64_t sub_2406A4F94()
{
  v1 = v0[2];
  sub_2406A26D4(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2406A4FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_240759BF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v12 = sub_240759AE4();
  __swift_project_value_buffer(v12, qword_27E4B8500);
  v13 = *(v7 + 16);
  v13(v10, a1, v6);
  v14 = sub_240759AC4();
  v15 = sub_24075A5E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v5;
    *v16 = 138412290;
    sub_2406AB0E4(&qword_27E4B9BA0, MEMORY[0x277D855E8]);
    swift_allocError();
    v17 = v11;
    v13(v18, v10, v6);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    (*(v7 + 8))(v10, v6);
    *(v16 + 4) = v19;
    v20 = v25;
    *v25 = v19;
    v11 = v17;
    _os_log_impl(&dword_240579000, v14, v15, "XPC session cancelled: %@", v16, 0xCu);
    sub_2405B8A50(v20, &qword_27E4B92A0, &qword_240762400);
    v5 = v26;
    MEMORY[0x245CC76B0](v20, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  sub_2405B044C(v11, v5, &qword_27E4BB8B8, &qword_2407749F8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v5, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24075A424();
    return (*(v22 + 8))(v5, v21);
  }

  return result;
}

uint64_t sub_2406A53AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_240759C44();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v9 = type metadata accessor for MachSetupMessage();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8D0, &qword_240774A20) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8D8, &qword_240774A28);
  v5[18] = v13;
  v14 = *(v13 - 8);
  v5[19] = v14;
  v15 = *(v14 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406A55BC, 0, 0);
}

uint64_t sub_2406A55BC()
{
  v1 = v0[20];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C8, &qword_240774A08);
  sub_24075A444();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_2406A5684;
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[18];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_2406A5684()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2406A5780, 0, 0);
}

uint64_t sub_2406A5780()
{
  v42 = v0;
  v1 = v0[17];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B8500);
    v3 = sub_240759AC4();
    v4 = sub_24075A5C4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "End of outgoing messages to daemon", v5, 2u);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    v6 = v0[20];
    v8 = v0[16];
    v7 = v0[17];
    v10 = v0[14];
    v9 = v0[15];
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];
    v38 = v0[8];
    v39 = v0[7];
    v40 = v0[6];

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_2406AAB30(v1, v0[16], type metadata accessor for MachSetupMessage);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v16 = v0[15];
    v17 = v0[16];
    v18 = sub_240759AE4();
    v0[22] = __swift_project_value_buffer(v18, qword_27E4B8500);
    sub_2406AA1DC(v17, v16, type metadata accessor for MachSetupMessage);
    v19 = sub_240759AC4();
    v20 = sub_24075A5D4();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[15];
    if (v21)
    {
      v23 = v0[14];
      v24 = v0[9];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315138;
      sub_2406AA1DC(v22, v23, type metadata accessor for MachSetupMessage);
      v27 = sub_24075A0E4();
      v29 = v28;
      sub_2406AA244(v22, type metadata accessor for MachSetupMessage);
      v30 = sub_2405BBA7C(v27, v29, &v41);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_240579000, v19, v20, "Sending message: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x245CC76B0](v26, -1, -1);
      MEMORY[0x245CC76B0](v25, -1, -1);
    }

    else
    {

      sub_2406AA244(v22, type metadata accessor for MachSetupMessage);
    }

    v31 = v0[16];
    v32 = v0[3];
    v33 = swift_task_alloc();
    v0[23] = v33;
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v34 = *(MEMORY[0x277D85A40] + 4);
    v35 = swift_task_alloc();
    v0[24] = v35;
    *v35 = v0;
    v35[1] = sub_2406A5C10;
    v36 = v0[8];
    v37 = v0[4];

    return MEMORY[0x2822008A0](v36, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406AAF14, v33, v37);
  }
}

uint64_t sub_2406A5C10()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_2406A6394;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_2406A5D2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406A5D2C()
{
  v76 = v0;
  v1 = v0[22];
  v2 = *(v0[5] + 16);
  v2(v0[7], v0[8], v0[4]);
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v75[0] = v72;
    *v10 = 136315138;
    v2(v8, v6, v9);
    v11 = sub_24075A0E4();
    v13 = v12;
    v14 = *(v7 + 8);
    v14(v6, v9);
    v15 = sub_2405BBA7C(v11, v13, v75);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v3, v4, "Sent message and received reply: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x245CC76B0](v72, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {
    v16 = v0[4];
    v17 = v0[5];

    v14 = *(v17 + 8);
    v14(v6, v16);
  }

  v18 = v0[25];
  v19 = v0[13];
  v21 = v0[8];
  v20 = v0[9];
  sub_2406AB0E4(&qword_27E4BB878, type metadata accessor for MachSetupMessage);
  sub_240759C34();
  if (v18)
  {
    v22 = v0[5] + 8;
    v14(v0[8], v0[4]);
    v23 = v0[22];
    sub_2406AA1DC(v0[16], v0[11], type metadata accessor for MachSetupMessage);
    v24 = v18;
    v25 = sub_240759AC4();
    v26 = sub_24075A5E4();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[16];
    if (v27)
    {
      v29 = v0[14];
      v30 = v0[11];
      v31 = v0[9];
      v73 = v0[16];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v75[0] = v34;
      *v32 = 136315394;
      sub_2406AA1DC(v30, v29, type metadata accessor for MachSetupMessage);
      v35 = sub_24075A0E4();
      v37 = v36;
      sub_2406AA244(v30, type metadata accessor for MachSetupMessage);
      v38 = sub_2405BBA7C(v35, v37, v75);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      v39 = v18;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v40;
      *v33 = v40;
      _os_log_impl(&dword_240579000, v25, v26, "Failed to send message (%s) with error: %@", v32, 0x16u);
      sub_2405B8A50(v33, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x245CC76B0](v34, -1, -1);
      MEMORY[0x245CC76B0](v32, -1, -1);

      v41 = v73;
    }

    else
    {
      v56 = v0[11];

      sub_2406AA244(v56, type metadata accessor for MachSetupMessage);
      v41 = v28;
    }
  }

  else
  {
    v42 = v0[22];
    sub_2406AA1DC(v0[13], v0[12], type metadata accessor for MachSetupMessage);
    v43 = sub_240759AC4();
    v44 = sub_24075A5D4();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[16];
    if (v45)
    {
      v47 = v0[14];
      v48 = v0[12];
      v49 = v0[9];
      v71 = v0[4];
      v74 = v0[8];
      v69 = v0[13];
      v70 = v0[5] + 8;
      v68 = v0[16];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v75[0] = v51;
      *v50 = 136315138;
      sub_2406AA1DC(v48, v47, type metadata accessor for MachSetupMessage);
      v52 = sub_24075A0E4();
      v54 = v53;
      sub_2406AA244(v48, type metadata accessor for MachSetupMessage);
      v55 = sub_2405BBA7C(v52, v54, v75);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_240579000, v43, v44, "Decoded response: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x245CC76B0](v51, -1, -1);
      MEMORY[0x245CC76B0](v50, -1, -1);

      sub_2406AA244(v69, type metadata accessor for MachSetupMessage);
      v14(v74, v71);
      v41 = v68;
    }

    else
    {
      v58 = v0[12];
      v57 = v0[13];
      v59 = v0[8];
      v61 = v0[4];
      v60 = v0[5];

      sub_2406AA244(v58, type metadata accessor for MachSetupMessage);
      sub_2406AA244(v57, type metadata accessor for MachSetupMessage);
      v14(v59, v61);
      v41 = v46;
    }
  }

  sub_2406AA244(v41, type metadata accessor for MachSetupMessage);
  v62 = *(MEMORY[0x277D85798] + 4);
  v63 = swift_task_alloc();
  v0[21] = v63;
  *v63 = v0;
  v63[1] = sub_2406A5684;
  v64 = v0[20];
  v65 = v0[17];
  v66 = v0[18];

  return MEMORY[0x2822003E8](v65, 0, 0, v66);
}

uint64_t sub_2406A6394()
{
  v31 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[22];
  sub_2406AA1DC(v0[16], v0[11], type metadata accessor for MachSetupMessage);
  v4 = v2;
  v5 = sub_240759AC4();
  v6 = sub_24075A5E4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = v0[14];
    v10 = v0[11];
    v11 = v0[9];
    v29 = v0[16];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v12 = 136315394;
    sub_2406AA1DC(v10, v9, type metadata accessor for MachSetupMessage);
    v15 = sub_24075A0E4();
    v17 = v16;
    sub_2406AA244(v10, type metadata accessor for MachSetupMessage);
    v18 = sub_2405BBA7C(v15, v17, &v30);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_240579000, v5, v6, "Failed to send message (%s) with error: %@", v12, 0x16u);
    sub_2405B8A50(v13, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);

    v21 = v29;
  }

  else
  {
    v22 = v0[11];

    sub_2406AA244(v22, type metadata accessor for MachSetupMessage);
    v21 = v8;
  }

  sub_2406AA244(v21, type metadata accessor for MachSetupMessage);
  v23 = *(MEMORY[0x277D85798] + 4);
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_2406A5684;
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[18];

  return MEMORY[0x2822003E8](v26, 0, 0, v27);
}

uint64_t sub_2406A6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v36 = a1;
  v37 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = sub_240759BE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession);
  if (v18)
  {
    v35 = v4;
    v19 = qword_27E4B5EB8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_240759AE4();
    __swift_project_value_buffer(v20, qword_27E4B8518);

    v21 = sub_240759AC4();
    v22 = sub_24075A5D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v23 = 136315138;
      v38 = v18;
      sub_240759BD4();

      v24 = sub_24075A0E4();
      v26 = v6;
      v27 = sub_2405BBA7C(v24, v25, &v39);

      *(v23 + 4) = v27;
      v6 = v26;
      _os_log_impl(&dword_240579000, v21, v22, "Activating inactive session: %s", v23, 0xCu);
      v28 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x245CC76B0](v28, -1, -1);
      MEMORY[0x245CC76B0](v23, -1, -1);
    }

    v29 = *(v35 + 112);
    sub_240759B24();
    sub_240759B64();
    sub_240759B54();
    sub_240759BB4();
    if (v6)
    {
    }
  }

  else
  {
    sub_2405B044C(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_endpoint, v12, &qword_27E4B9B18, &qword_24076CB30);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_2405B8A50(v12, &qword_27E4B9B18, &qword_24076CB30);
      v30 = sub_2406A6DD0(0xD000000000000021, 0x80000002407867F0);
      if (!v5)
      {
        return v30;
      }
    }

    else
    {
      (*(v14 + 32))(v17, v12, v13);
      v31 = sub_2406A6A50(v17, v36, v37, a3, a4);
      if (!v5)
      {
        v18 = v31;
      }

      (*(v14 + 8))(v17, v13);
    }
  }

  return v18;
}

uint64_t sub_2406A6A50(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v8 = sub_240759B44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240759BE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = *(v12 + 16);
  v39 = a1;
  v45 = v22;
  v22(v20, a1, v11);
  v23 = sub_240759AC4();
  v24 = sub_24075A5D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = v5;
    v26 = v25;
    v35 = swift_slowAlloc();
    v46 = v35;
    *v26 = 136315138;
    v45(v18, v20, v11);
    v27 = sub_24075A0E4();
    v36 = a5;
    v29 = v28;
    (*(v12 + 8))(v20, v11);
    v30 = sub_2405BBA7C(v27, v29, &v46);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_240579000, v23, v24, "Creating new session with xpc endpoint: %s", v26, 0xCu);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x245CC76B0](v31, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v20, v11);
  }

  sub_240759BD4();
  v45(v38, v39, v11);
  v32 = *(v41 + 112);
  sub_240759B34();

  return sub_240759BC4();
}

uint64_t sub_2406A6DD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_240759B44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B8518);

  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2405BBA7C(a1, a2, &v15);
    _os_log_impl(&dword_240579000, v7, v8, "Creating new session for mach service: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  sub_240759BD4();
  v11 = *(v14 + 112);

  v12 = v11;
  sub_240759B34();

  return sub_240759B14();
}

id __SetupController.__allocating_init(queue:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = objc_allocWithZone(v2);
  v9 = sub_240759BE4();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = type metadata accessor for SetupController();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = a1;
  v14 = sub_2406A95B8(a1, v7, 0);
  v15 = type metadata accessor for __SetupController();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR_____AISSetupController_setupController] = v14;
  v19.receiver = v16;
  v19.super_class = v15;

  v17 = objc_msgSendSuper2(&v19, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

id __SetupController.init(queue:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_240759BE4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for SetupController();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a1;
  v11 = sub_2406A95B8(a1, v5, 0);
  v12 = type metadata accessor for __SetupController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR_____AISSetupController_setupController] = v11;
  v16.receiver = v13;
  v16.super_class = v12;

  v14 = objc_msgSendSuper2(&v16, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t sub_2406A7458(void *a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v74 = a3;
  v4 = sub_240759C94();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_240759CE4();
  v66 = *(v68 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v61 - v11;
  v61 = type metadata accessor for SetupContext();
  v63 = *(v61 - 8);
  v12 = *(v63 + 64);
  v13 = MEMORY[0x28223BE20](v61);
  v14 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v71 = &v61 - v20;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = a1;
  v23 = sub_240759AC4();
  v24 = sub_24075A5C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_240579000, v23, v24, "__AISSetupController setup with context called: %@", v25, 0xCu);
    sub_2405B8A50(v26, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v26, -1, -1);
    v28 = v25;
    v14 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  v29 = v22;
  v30 = sub_240759AC4();
  v31 = sub_24075A5D4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_240579000, v30, v31, "Attempting to build setup context with compat objective-c context: %@", v32, 0xCu);
    sub_2405B8A50(v33, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v33, -1, -1);
    v35 = v32;
    v14 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x245CC76B0](v35, -1, -1);
  }

  SetupContext.Builder.init()(v75);
  SetupContext.Builder._context(_:)(v29);
  SetupContext.Builder.build()(v19);
  v36 = v71;
  sub_2406AAB30(v19, v71, type metadata accessor for SetupContext);
  v37 = v62;
  sub_2406AA1DC(v36, v62, type metadata accessor for SetupContext);
  v38 = v72;
  v39 = sub_240759AC4();
  v40 = sub_24075A5D4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76[0] = v72;
    *v41 = 136315394;
    v75[0] = *&v38[OBJC_IVAR_____AISSetupController_setupController];
    type metadata accessor for SetupController();

    v42 = sub_24075A0E4();
    v44 = sub_2405BBA7C(v42, v43, v76);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    sub_2406AA1DC(v37, &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupContext);
    v45 = sub_24075A0E4();
    v47 = v46;
    sub_2406AA244(v37, type metadata accessor for SetupContext);
    v48 = v45;
    v14 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = sub_2405BBA7C(v48, v47, v76);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_240579000, v39, v40, "Calling setup controller (%s with built context: %s", v41, 0x16u);
    v50 = v72;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v50, -1, -1);
    MEMORY[0x245CC76B0](v41, -1, -1);
  }

  else
  {

    sub_2406AA244(v37, type metadata accessor for SetupContext);
  }

  v51 = sub_24075A3D4();
  v52 = v64;
  (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
  v53 = v71;
  sub_2406AA1DC(v71, v14, type metadata accessor for SetupContext);
  v54 = (*(v63 + 80) + 40) & ~*(v63 + 80);
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = v38;
  sub_2406AAB30(v14, v55 + v54, type metadata accessor for SetupContext);
  v56 = (v55 + ((v12 + v54 + 7) & 0xFFFFFFFFFFFFFFF8));
  v58 = v73;
  v57 = v74;
  *v56 = v73;
  v56[1] = v57;
  v59 = v38;
  sub_24057B5BC(v58);
  sub_240602F08(0, 0, v52, &unk_2407748B8, v55);

  return sub_2406AA244(v53, type metadata accessor for SetupContext);
}

uint64_t sub_2406A7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[73] = a7;
  v7[72] = a6;
  v7[71] = a5;
  v7[70] = a4;
  v8 = sub_240759C94();
  v7[74] = v8;
  v9 = *(v8 - 8);
  v7[75] = v9;
  v10 = *(v9 + 64) + 15;
  v7[76] = swift_task_alloc();
  v11 = sub_240759CE4();
  v7[77] = v11;
  v12 = *(v11 - 8);
  v7[78] = v12;
  v13 = *(v12 + 64) + 15;
  v7[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406A7FD4, 0, 0);
}

uint64_t sub_2406A7FD4()
{
  v0[80] = *(v0[70] + OBJC_IVAR_____AISSetupController_setupController);
  v1 = swift_task_alloc();
  v0[81] = v1;
  *v1 = v0;
  v1[1] = sub_2406A8080;
  v2 = v0[71];

  return sub_24069F9A0((v0 + 22), v2);
}

uint64_t sub_2406A8080()
{
  v2 = *(*v1 + 648);
  v5 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = sub_2406A8628;
  }

  else
  {
    v3 = sub_2406A8194;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2406A8194()
{
  v39 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 224);
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  v3 = *(v0 + 240);
  v5 = *(v0 + 176);
  v4 = *(v0 + 192);
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  *(v0 + 112) = v4;
  *(v0 + 128) = v1;
  *(v0 + 144) = v2;
  *(v0 + 160) = v3;
  *(v0 + 80) = v3;
  *(v0 + 96) = v5;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B8518);
  sub_2405B044C(v0 + 16, v0 + 256, &qword_27E4BB898, &unk_2407749D0);
  v7 = 0;
  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();
  sub_2405B8A50(v0 + 16, &qword_27E4BB898, &unk_2407749D0);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136315394;
    v12 = *(v0 + 144);
    *(v0 + 368) = *(v0 + 128);
    *(v0 + 384) = v12;
    *(v0 + 400) = *(v0 + 160);
    v13 = *(v0 + 112);
    *(v0 + 336) = *(v0 + 96);
    *(v0 + 352) = v13;
    sub_2405B044C(v0 + 16, v0 + 416, &qword_27E4BB898, &unk_2407749D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB898, &unk_2407749D0);
    v14 = sub_24075A0E4();
    v16 = sub_2405BBA7C(v14, v15, &v38);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v0 + 552) = 0;
    v17 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v18 = sub_24075A0E4();
    v20 = sub_2405BBA7C(v18, v19, &v38);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_240579000, v8, v9, "Returning setup report  converted into objc: %s with error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  v21 = *(v0 + 632);
  v36 = *(v0 + 624);
  v37 = *(v0 + 616);
  v22 = *(v0 + 608);
  v35 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 576);
  v26 = *(*(v0 + 640) + 112);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v24;
  v28 = *(v0 + 144);
  *(v27 + 64) = *(v0 + 128);
  *(v27 + 80) = v28;
  *(v27 + 96) = *(v0 + 160);
  v29 = *(v0 + 112);
  *(v27 + 32) = *(v0 + 96);
  *(v27 + 48) = v29;
  *(v27 + 112) = 0;
  *(v0 + 528) = sub_2406AAB98;
  *(v0 + 536) = v27;
  *(v0 + 496) = MEMORY[0x277D85DD0];
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_240644810;
  *(v0 + 520) = &block_descriptor_56;
  v30 = _Block_copy((v0 + 496));
  v31 = v26;
  sub_24057B5BC(v25);
  sub_240759CC4();
  *(v0 + 544) = MEMORY[0x277D84F90];
  sub_2406AB0E4(&qword_27E4B9B58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v21, v22, v30);
  _Block_release(v30);

  (*(v35 + 8))(v22, v23);
  (*(v36 + 8))(v21, v37);
  v32 = *(v0 + 536);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_2406A8628()
{
  v46 = v0;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 656);
  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B8518);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 656);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to setup with error: %@", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = *(v0 + 656);

  v12 = v11;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E4B8518);
  sub_2405B044C(v0 + 16, v0 + 256, &qword_27E4BB898, &unk_2407749D0);
  v13 = v11;
  v14 = sub_240759AC4();
  v15 = sub_24075A5C4();
  sub_2405B8A50(v0 + 16, &qword_27E4BB898, &unk_2407749D0);

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = v17;
    *v16 = 136315394;
    v18 = *(v0 + 144);
    *(v0 + 368) = *(v0 + 128);
    *(v0 + 384) = v18;
    *(v0 + 400) = *(v0 + 160);
    v19 = *(v0 + 112);
    *(v0 + 336) = *(v0 + 96);
    *(v0 + 352) = v19;
    sub_2405B044C(v0 + 16, v0 + 416, &qword_27E4BB898, &unk_2407749D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB898, &unk_2407749D0);
    v20 = sub_24075A0E4();
    v22 = sub_2405BBA7C(v20, v21, &v45);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    *(v0 + 552) = v11;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v24 = sub_24075A0E4();
    v26 = sub_2405BBA7C(v24, v25, &v45);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_240579000, v14, v15, "Returning setup report  converted into objc: %s with error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  v27 = v11;
  v28 = *(v0 + 632);
  v43 = *(v0 + 624);
  v44 = *(v0 + 616);
  v29 = *(v0 + 608);
  v41 = *(v0 + 592);
  v42 = *(v0 + 600);
  v30 = *(v0 + 584);
  v31 = *(v0 + 576);
  v32 = *(*(v0 + 640) + 112);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v30;
  v34 = *(v0 + 144);
  *(v33 + 64) = *(v0 + 128);
  *(v33 + 80) = v34;
  *(v33 + 96) = *(v0 + 160);
  v35 = *(v0 + 112);
  *(v33 + 32) = *(v0 + 96);
  *(v33 + 48) = v35;
  *(v33 + 112) = v27;
  *(v0 + 528) = sub_2406AAB98;
  *(v0 + 536) = v33;
  *(v0 + 496) = MEMORY[0x277D85DD0];
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_240644810;
  *(v0 + 520) = &block_descriptor_56;
  v36 = _Block_copy((v0 + 496));
  v37 = v32;
  sub_24057B5BC(v31);
  sub_240759CC4();
  *(v0 + 544) = MEMORY[0x277D84F90];
  sub_2406AB0E4(&qword_27E4B9B58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v28, v29, v36);
  _Block_release(v36);

  (*(v42 + 8))(v29, v41);
  (*(v43 + 8))(v28, v44);
  v38 = *(v0 + 536);

  v39 = *(v0 + 8);

  return v39();
}

void sub_2406A8BE8(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*a3)
    {
      *&v11[24] = *(a3 + 24);
      *&v11[40] = *(a3 + 40);
      *&v11[56] = *(a3 + 56);
      *&v11[72] = *(a3 + 72);
      *&v11[8] = *(a3 + 8);
      *v11 = *a3;
      v6 = *(a3 + 16);
      v7 = *(a3 + 48);
      v12[2] = *(a3 + 32);
      v12[3] = v7;
      v12[4] = *(a3 + 64);
      v12[0] = *a3;
      v12[1] = v6;
      sub_2406AA12C(v12, v13);
      SetupReport.into()(v8);
      v10 = v9;
      v13[2] = *&v11[32];
      v13[3] = *&v11[48];
      v13[4] = *&v11[64];
      v13[0] = *v11;
      v13[1] = *&v11[16];
      sub_2406AA188(v13);
    }

    else
    {
      v10 = 0;
    }

    a1(v10, a4);
  }
}

void sub_2406A8DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2407595C4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id __SetupController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id __SetupController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __SetupController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2406A8EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8A0, &qword_2407749E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  type metadata accessor for MachSetupMessage();
  sub_2406AB0E4(&qword_27E4BB880, type metadata accessor for MachSetupMessage);
  sub_2406AB0E4(&qword_27E4BB878, type metadata accessor for MachSetupMessage);
  sub_240759B94();
}

uint64_t sub_2406A90DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB888, &qword_2407749C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  type metadata accessor for MachRepairMessage();
  sub_2406AB0E4(&qword_27E4B8308, type metadata accessor for MachRepairMessage);
  sub_2406AB0E4(&qword_27E4B8300, type metadata accessor for MachRepairMessage);
  sub_240759B94();
}

uint64_t sub_2406A92C8(uint64_t a1)
{
  v2 = type metadata accessor for MachSetupMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8A8, &qword_2407749E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v11 - v8);
  sub_2405B044C(a1, v11 - v8, &qword_27E4BB8A8, &qword_2407749E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8A0, &qword_2407749E0);
    return sub_24075A354();
  }

  else
  {
    sub_2406AAB30(v9, v5, type metadata accessor for MachSetupMessage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8A0, &qword_2407749E0);
    return sub_24075A364();
  }
}

uint64_t sub_2406A9440(uint64_t a1)
{
  v2 = type metadata accessor for MachRepairMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB890, &qword_2407749C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v11 - v8);
  sub_2405B044C(a1, v11 - v8, &qword_27E4BB890, &qword_2407749C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB888, &qword_2407749C0);
    return sub_24075A354();
  }

  else
  {
    sub_2406AAB30(v9, v5, type metadata accessor for MachRepairMessage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB888, &qword_2407749C0);
    return sub_24075A364();
  }
}

uint64_t sub_2406A95B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v42 = a3;
  v40 = a1;
  v5 = sub_24075A634();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24075A624();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9AF8, &qword_24076CB20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v37 - v13;
  v15 = sub_240759CB4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_240759CE4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v24 = v40;
  *(v3 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession) = 0;
  *(v3 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession) = 0;
  if (!v24)
  {
    v37[1] = v23;
    v38 = v8;
    v40 = v5;
    qos_class_self();
    sub_240759CA4();
    v25 = *(v16 + 48);
    if (v25(v14, 1, v15) == 1)
    {
      (*(v16 + 104))(v19, *MEMORY[0x277D851B0], v15);
      if (v25(v14, 1, v15) != 1)
      {
        sub_2405B8A50(v14, &qword_27E4B9AF8, &qword_24076CB20);
      }
    }

    else
    {
      (*(v16 + 32))(v19, v14, v15);
    }

    sub_240590794(0, &qword_280FAD6F0, 0x277D85C78);
    sub_240759CD4();
    v43 = MEMORY[0x277D84F90];
    sub_2406AB0E4(&qword_280FAD6F8, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B08, &qword_24076CB28);
    sub_240635FA0(&qword_280FAD728, &qword_27E4B9B08, &qword_24076CB28);
    sub_24075A794();
    (*(v39 + 104))(v38, *MEMORY[0x277D85260], v40);
    v24 = sub_24075A664();
  }

  *(v3 + 112) = v24;
  v26 = type metadata accessor for AISSetupAnalyticsEvent();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v30 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate;
  v31 = sub_240759744();
  v32 = *(*(v31 - 8) + 56);
  v32(v29 + v30, 1, 1, v31);
  v32(v29 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate, 1, 1, v31);
  *(v29 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_didSucceed) = 0;
  v33 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_analytics;
  type metadata accessor for AISAnalytics();
  *(v29 + v33) = swift_initStaticObject();
  v34 = (v29 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  *v34 = 0xD00000000000001CLL;
  v34[1] = 0x8000000240788DE0;
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_setupAnalyticsEvent) = v29;
  sub_2405E150C(v41, v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  v35 = *(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession);
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession) = v42;

  return v4;
}

uint64_t type metadata accessor for SetupController()
{
  result = qword_27E4BB848;
  if (!qword_27E4BB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2406A9B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_24069F6E0(a1, v4, v5, v6);
}

uint64_t sub_2406A9C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2406A9C9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2406A8EF0(a1);
}

uint64_t sub_2406A9CA4(uint64_t a1)
{
  v38[3] = type metadata accessor for AISSetupAnalyticsEvent();
  v38[4] = &protocol witness table for AISSetupAnalyticsEvent;
  v38[0] = a1;
  v2 = *(a1 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  v3 = *(a1 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name + 8);

  v4 = sub_24075A084();

  sub_2405F7830(v38, &v36);
  v5 = swift_allocObject();
  sub_24058C9C0(&v36, v5 + 16);
  v34 = sub_2406AABA8;
  v35 = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24069F0E8;
  v33 = &block_descriptor_63;
  v6 = _Block_copy(aBlock);

  LODWORD(v3) = AnalyticsSendEventLazy();
  _Block_release(v6);

  if (!v3)
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v22 = sub_240759AE4();
    __swift_project_value_buffer(v22, qword_280FADA00);
    sub_2405F7830(v38, aBlock);
    v8 = sub_240759AC4();
    v23 = sub_24075A5D4();
    if (os_log_type_enabled(v8, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v36 = v25;
      *v24 = 136315138;
      v26 = (*__swift_project_boxed_opaque_existential_1(aBlock, v33) + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
      v27 = *v26;
      v28 = v26[1];

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v29 = sub_2405BBA7C(v27, v28, &v36);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_240579000, v8, v23, "Failed to send Core Analytics event: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x245CC76B0](v25, -1, -1);
      v21 = v24;
      goto LABEL_10;
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v7 = sub_240759AE4();
  __swift_project_value_buffer(v7, qword_280FADA00);
  sub_2405F7830(v38, aBlock);
  sub_2405F7830(v38, &v36);
  v8 = sub_240759AC4();
  v9 = sub_24075A5D4();
  if (!os_log_type_enabled(v8, v9))
  {

    __swift_destroy_boxed_opaque_existential_1(&v36);
    goto LABEL_13;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v31 = v11;
  *v10 = 136315394;
  v12 = (*__swift_project_boxed_opaque_existential_1(aBlock, v33) + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  v13 = *v12;
  v14 = v12[1];

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v15 = sub_2405BBA7C(v13, v14, &v31);

  *(v10 + 4) = v15;
  *(v10 + 12) = 2080;
  v16 = *__swift_project_boxed_opaque_existential_1(&v36, v37);
  sub_240753CA8();
  sub_240590794(0, &qword_27E4B88E8, 0x277D82BB8);
  v17 = sub_240759F84();
  v19 = v18;

  __swift_destroy_boxed_opaque_existential_1(&v36);
  v20 = sub_2405BBA7C(v17, v19, &v31);

  *(v10 + 14) = v20;
  _os_log_impl(&dword_240579000, v8, v9, "Sent Core Analytics event:  %s %s", v10, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CC76B0](v11, -1, -1);
  v21 = v10;
LABEL_10:
  MEMORY[0x245CC76B0](v21, -1, -1);

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_2406AA1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2406AA244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2406AA2C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(0, *(v3 + 8));
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2406AA314(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SetupContext() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405DA4B0;

  return sub_2406A7EAC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void sub_2406AA458()
{
  sub_240635A98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SetupController.setup(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 216);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SetupController.launchViewService(with:)(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405CE450;

  return v8(a1);
}

uint64_t dispatch thunk of SetupController.send(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 232);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

uint64_t sub_2406AA934()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2406A37C0((v0 + 16), v0 + v2, v5);
}

uint64_t sub_2406AAA1C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2406A3A14(a1, v1 + v4, v7);
}

uint64_t sub_2406AAB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_49Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2406AAC5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

double sub_2406AACEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SetupContext() - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2406A48B8(a1, v2 + v6, v10, a2);
}

uint64_t sub_2406AADE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C8, &qword_240774A08) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2406A53AC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2406AAF14(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2406C0E58(a1);
}

uint64_t sub_2406AAF1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_240759C44() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SetupContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2405DA4B0;

  return sub_2406A4F70(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_2406AB0E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AISAppleIDSignInResult.authResults.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInResult_authResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t AISAppleIDSignInResult.authResults.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInResult_authResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AISAppleIDSignInResult.__allocating_init(authResults:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AISAppleIDSignInResult_authResults] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISAppleIDSignInResult.init(authResults:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AISAppleIDSignInResult_authResults] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISAppleIDSignInResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISAppleIDSignInResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ResourceAcquisitionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ResourceAcquisitionManager.init()();
  return v0;
}

uint64_t sub_2406AB70C()
{
  v1 = v0[2];
  v5 = *(*v0 + 80);
  type metadata accessor for ResourceAcquisitionManager.Acquisition();
  sub_24075A714();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_2406ACAB8((v1 + v2), &v6);
  os_unfair_lock_unlock((v1 + v3));

  return v6;
}

void sub_2406AB7E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_2406AB89C()
{
  v1 = v0[2];
  v5 = *(*v0 + 80);
  type metadata accessor for ResourceAcquisitionManager.Acquisition();
  sub_24075A714();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_2406ACAD8((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

void *ResourceAcquisitionManager.init()()
{
  v1 = *(*v0 + 80);
  type metadata accessor for ResourceAcquisitionManager.Acquisition();
  sub_24075A714();
  v0[2] = sub_2406AC3E8();
  return v0;
}

void *sub_2406AB9DC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - v11;
  sub_2406ABB80();
  type metadata accessor for ResourceAcquisitionManager.Acquisition();
  a1();

  v13 = sub_2406AC730(v12, a3, a4);
  (*(v9 + 8))(v12, v8);

  sub_2406AB89C();
  return v13;
}

void *ResourceAcquisitionManager.Acquisition.__allocating_init(wrappedValue:relinquish:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2406AC730(a1, a2, a3);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v5;
}

BOOL sub_2406ABB80()
{
  v0 = sub_2406AB70C();
  if (v0)
  {

    sub_2406AC00C(v1);
    sub_2406AB89C();
  }

  return v0 != 0;
}

uint64_t ResourceAcquisitionManager.deinit()
{
  sub_2406ABB80();
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ResourceAcquisitionManager.__deallocating_deinit()
{
  sub_2406ABB80();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2406ABC40@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v7 = *(*v1 + 80);
  sub_24075A714();
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_2406AC78C(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_2406ABD14(uint64_t a1)
{
  v3 = *v1;
  sub_2406AC47C();
  v4 = *(v3 + 80);
  v5 = sub_24075A714();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*sub_2406ABD9C(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v7 = sub_24075A714();
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  sub_2406ABC40(v10);
  return sub_2406ABEB8;
}

void sub_2406ABEB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_2406AC47C();
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    v9 = (*a1)[4];
    sub_2406AC47C();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *ResourceAcquisitionManager.Acquisition.init(wrappedValue:relinquish:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_2406AC540(a1, a2, a3);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_2406AC00C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v26 = &v25 - v5;
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  sub_2406ABC40(&v25 - v15);
  v27 = v3;
  (*(v3 + 56))(v14, 1, 1, v2);
  sub_2406AC47C();
  v28 = *(v7 + 8);
  v28(v14, v6);
  v17 = v1[2];

  v29 = v2;
  swift_getFunctionTypeMetadata1();
  sub_24075A714();
  v18 = *(*v17 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  sub_2406AC800((v17 + v18), &v30);
  os_unfair_lock_unlock((v17 + v19));

  v20 = v30.n128_u64[0];
  if (v30.n128_u64[0])
  {
    (*(v7 + 16))(v11, v16, v6);
    v21 = v27;
    if ((*(v27 + 48))(v11, 1, v2) == 1)
    {
      v22 = v28;
      v28(v16, v6);
      sub_24058CA60(v20);
      return v22(v11, v6);
    }

    v24 = v26;
    (*(v21 + 32))(v26, v11, v2);
    v20(v24);
    sub_24058CA60(v20);
    (*(v21 + 8))(v24, v2);
  }

  return (v28)(v16, v6);
}

uint64_t ResourceAcquisitionManager.Acquisition.deinit()
{

  sub_2406AC00C(v1);
  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  return v0;
}

uint64_t ResourceAcquisitionManager.Acquisition.__deallocating_deinit()
{
  ResourceAcquisitionManager.Acquisition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2406AC3E8()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_24075A8E4();
  return sub_24075A8D4();
}

uint64_t sub_2406AC47C()
{
  v1 = v0[3];
  v5 = *(*v0 + 80);
  sub_24075A714();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_2406ACA10(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void *sub_2406AC540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = sub_24075A714();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  v13 = *(v7 - 8);
  (*(v13 + 16))(v18 - v11, a1, v7);
  (*(v13 + 56))(v12, 0, 1, v7);
  v14 = sub_2406AC3E8();
  (*(v9 + 8))(v12, v8);
  v3[3] = v14;
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = a2;
  v15[4] = a3;
  v18[0] = sub_2406AC9E8;
  v18[1] = v15;
  swift_getFunctionTypeMetadata1();
  sub_24075A714();
  v16 = sub_2406AC3E8();

  v3[2] = v16;
  return v3;
}

void *sub_2406AC730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  type metadata accessor for ResourceAcquisitionManager.Acquisition();
  swift_allocObject();
  return sub_2406AC540(a1, a2, a3);
}

uint64_t sub_2406AC78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_24075A714();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

__n128 sub_2406AC800@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  return result;
}

uint64_t sub_2406AC9E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_2406ACA10(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_24075A714();
  v6 = *(v5 - 8);
  (*(v6 + 8))(a1, v5);
  return (*(v6 + 16))(a1, v4, v5);
}

uint64_t sub_2406ACAD8(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = *a1;

  *a1 = v3;
}

uint64_t sub_2406ACB20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t SecureEnclave.P256.Signing.PrivateKey.signature<A>(for:)()
{
  v2 = sub_240759F04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240759EA4();
  if (!v1)
  {
    v0 = sub_240759EE4();
    (*(v3 + 8))(v6, v2);
  }

  return v0;
}

uint64_t P256.Signing.PublicKey.isValidSignature<A>(_:for:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_240759F04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v14[2] = a1;
  v14[3] = a2;
  sub_2405BB9D4(a1, a2);
  sub_2405BE3F8();
  sub_240759EF4();
  (*(v5 + 32))(v11, v9, v4);
  v12 = sub_240759F14();
  (*(v5 + 8))(v11, v4);
  return v12 & 1;
}

SecAccessControlRef sub_2406AD000(uint64_t (*a1)(uint64_t, SecAccessControlRef, void))
{
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (result)
  {
    return a1(1, result, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_2406AD0B8@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a1();
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

SecAccessControlRef sub_2406AD168(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, SecAccessControlRef, void))
{
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (result)
  {
    return a3(1, result, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_2406AD204@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  a1();
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_2406AD2C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_2406AD3A0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_2406AD474, 0, 0);
}

uint64_t sub_2406AD474()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v10 = *(v0 + 48);
  v3 = sub_24075A714();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  v6 = sub_24075A334();
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_2406AD5AC;

  return MEMORY[0x282200740](v0 + 16, v3, v6, 0, 0, &unk_240774C60, v4, v3);
}

uint64_t sub_2406AD5AC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2405C2BB4;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_240671018;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406AD6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v10 = sub_24075A714();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v8[16] = v14;
  v8[17] = *(v14 + 64);
  v8[18] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v16 = *(*(sub_24075A714() - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v17 = sub_24075A4F4();
  v8[22] = v17;
  v18 = *(v17 - 8);
  v8[23] = v18;
  v19 = *(v18 + 64) + 15;
  v8[24] = swift_task_alloc();
  v20 = *(*(sub_24075A714() - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v21 = *(a6 - 8);
  v8[26] = v21;
  v22 = *(v21 + 64) + 15;
  v8[27] = swift_task_alloc();
  v23 = swift_getAssociatedTypeWitness();
  v8[28] = v23;
  v24 = *(v23 - 8);
  v8[29] = v24;
  v25 = *(v24 + 64) + 15;
  v8[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406ADA1C, 0, 0);
}

uint64_t sub_2406ADA1C()
{
  v1 = v0[30];
  v2 = v0[16];
  v3 = v0[11];
  (*(v0[26] + 16))(v0[27], v0[6], v0[9]);
  sub_24075A1C4();
  v33 = v2;
  v34 = (v2 + 48);
  while (1)
  {
    v4 = v0[30];
    v5 = v0[28];
    v6 = v0[25];
    v7 = v0[15];
    v8 = v0[11];
    v9 = v0[9];
    swift_getAssociatedConformanceWitness();
    sub_24075A734();
    if ((*v34)(v6, 1, v7) == 1)
    {
      break;
    }

    v10 = v0[25];
    v11 = v0[18];
    v12 = v0[19];
    v13 = v0[17];
    v14 = v0[15];
    v38 = v0[12];
    v39 = v0[21];
    v15 = v0[8];
    v36 = v0[7];
    v37 = v0[11];
    v40 = v0[5];
    v16 = sub_24075A3D4();
    v35 = *(v0 + 9);
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v17 = *(v33 + 32);
    v17(v11, v10, v14);
    v18 = (*(v33 + 80) + 72) & ~*(v33 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v35;
    *(v19 + 48) = v37;
    *(v19 + 56) = v36;
    *(v19 + 64) = v15;
    v17(v19 + v18, v11, v14);
    v20 = sub_24075A504();

    sub_2406AE390(v12, &unk_240774C70, v19, v20);
    sub_24066B5D8(v12);
  }

  v21 = v0[24];
  v22 = v0[21];
  v23 = v0[12];
  v24 = v0[10];
  v25 = v0[5];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v0[2] = sub_24075A2E4();
  v26 = *v25;
  sub_24075A4D4();
  v27 = *(MEMORY[0x277D85828] + 4);
  v28 = swift_task_alloc();
  v0[31] = v28;
  *v28 = v0;
  v28[1] = sub_2406ADD38;
  v29 = v0[24];
  v30 = v0[22];
  v31 = v0[20];

  return MEMORY[0x2822004E8](v31, 0, 0, v30, v0 + 3);
}

uint64_t sub_2406ADD38()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_2406AE0B8;
  }

  else
  {
    v3 = sub_2406ADE4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2406ADE4C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = *(v0 + 200);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 112);
    v10 = *(v0 + 32);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    *v10 = *(v0 + 16);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 256);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v23 = *(v0 + 72);
    (*(v3 + 32))(v14, v1, v2);
    v16 = swift_task_alloc();
    *(v16 + 16) = v23;
    *(v16 + 32) = v15;
    *(v16 + 40) = v0 + 16;
    sub_24062239C(sub_2406AE640, v16, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v17, v0 + 264);
    (*(v3 + 8))(v14, v2);

    v18 = *(MEMORY[0x277D85828] + 4);
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_2406ADD38;
    v20 = *(v0 + 192);
    v21 = *(v0 + 176);
    v22 = *(v0 + 160);

    return MEMORY[0x2822004E8](v22, 0, 0, v21, v0 + 24);
  }
}

uint64_t sub_2406AE0B8()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[25];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[14];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v8 = v0[2];
  v9 = v0[3];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2406AE1A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2406AD6C8(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_2406AE284(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_2405CE450;

  return v12(a1, a6);
}

uint64_t sub_2406AE390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  sub_24066B568(a1, v23 - v11);
  v13 = sub_24075A3D4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24066B5D8(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_24075A344();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24075A3C4();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_2406AE564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24075A334();
  return sub_24075A314();
}

uint64_t sub_2406AE664(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v16 = v1[5];
  v6 = v1[6];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[7];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405CE450;

  return sub_2406AE284(a1, v9, v10, v11, v12, v1 + v8);
}

uint64_t MessageSessionTransport.init(templateSession:identifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v6 = type metadata accessor for MessageSessionTransport();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  v12 = *(v9 + 52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v14 = *(*(v13 - 8) + 56);
  v14(&v11[v12], 1, 1, v13);
  v15 = *(v6 + 56);
  v14(&v11[v15], 1, 1, v13);
  v16 = [objc_allocWithZone(MEMORY[0x277D02880]) initWithTemplate_];
  if (v16)
  {
    *v11 = a1;
    *(v11 + 1) = v16;
    v17 = v20;
    *(v11 + 2) = v19;
    *(v11 + 3) = v17;
    (*(v7 + 16))(a4, v11, v6);
    (*(v7 + 56))(a4, 0, 1, v6);
    return (*(v7 + 8))(v11, v6);
  }

  else
  {

    sub_2405B8A50(&v11[v12], &qword_27E4B71C8, &unk_240762450);
    sub_2405B8A50(&v11[v15], &qword_27E4B71C8, &unk_240762450);
    return (*(v7 + 56))(a4, 1, 1, v6);
  }
}

uint64_t sub_2406AE9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_240759F74();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_240759F74();
  }

LABEL_4:

  v7(a2, v8, v4);
}

void sub_2406AEAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_240759F54();
    if (a3)
    {
LABEL_3:
      v8 = sub_240759F54();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

uint64_t MessageSessionTransport.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MessageSessionTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 40);
  sub_24058CA60(*(v4 + 32));
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  (*(*(a3 - 8) + 32))(a4, v4, a3);
}

uint64_t MessageSessionTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 56);
  sub_24058CA60(*(v4 + 48));
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  (*(*(a3 - 8) + 32))(a4, v4, a3);
}

uint64_t MessageSessionTransport.build()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  if (v4)
  {
    v6 = *(v2 + 40);

    MessageSessionTransport.activate(with:)(v4, v6, a1, a2);
    return sub_24058CA60(v4);
  }

  else
  {
    (*(*(a1 - 8) + 8))(v2, a1);
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    type metadata accessor for MessageSessionTransport.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }
}

uint64_t MessageSessionTransport.activate(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v106 = a2;
  v105 = a1;
  v109 = a4;
  v7 = a3 - 8;
  v111 = *(a3 - 8);
  v8 = *(v111 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v108 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v93 - v11;
  v13 = *(v7 + 24);
  v14 = *(v7 + 32);
  v15 = type metadata accessor for MessageUnpacker();
  v118 = *(v15 - 8);
  v119 = v15;
  v16 = *(v118 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v116 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v93 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v93 - v23;
  v25 = type metadata accessor for MessagePacker();
  v114 = *(v25 - 8);
  v115 = v25;
  v26 = *(v114 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v112 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v93 - v29;
  v31 = sub_2407594B4();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_2407594A4();
  sub_24066BBD8(v5 + *(v7 + 64), v24);
  v113 = v30;
  MessagePacker.init(encoder:signingIdentity:topicIdentifier:)(v34, v24, 0, 0, v13, v14, v30);
  v35 = sub_240759484();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_240759474();
  sub_24066BBD8(v5 + *(v7 + 60), v24);
  v117 = v20;
  v120 = v14;
  v121 = v13;
  MessageUnpacker.init(decoder:signingIdentity:topicIdentifier:)(v38, v24, 0, 0, v13, v14, v20);
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v39 = sub_240759AE4();
  __swift_project_value_buffer(v39, qword_27E4BE2A0);
  v40 = v111;
  v41 = *(v111 + 16);
  v103 = v111 + 16;
  v102 = v41;
  v41(v12, v5, a3);
  v42 = sub_240759AC4();
  v43 = sub_24075A5D4();
  v44 = os_log_type_enabled(v42, v43);
  v110 = v5;
  v95 = a3;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v45 = 136315138;
    v48 = *(v12 + 2);
    v47 = *(v12 + 3);
    v49 = a3;
    v50 = *(v40 + 8);
    v101 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    v50(v12, v49);
    v51 = sub_2405BBA7C(v48, v47, &aBlock);
    v5 = v110;

    *(v45 + 4) = v51;
    _os_log_impl(&dword_240579000, v42, v43, "Registering the message session with identifier: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x245CC76B0](v46, -1, -1);
    MEMORY[0x245CC76B0](v45, -1, -1);
  }

  else
  {

    v52 = *(v40 + 8);
    v101 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52(v12, a3);
  }

  v53 = v5[2];
  v94 = v5[1];
  v54 = v5[3];
  v93 = sub_24075A084();
  v55 = v118;
  v56 = *(v118 + 16);
  v98 = v118 + 16;
  v99 = v56;
  v57 = v116;
  v58 = v119;
  v56(v116, v117, v119);
  v59 = v114;
  v60 = *(v114 + 16);
  v96 = v114 + 16;
  v97 = v60;
  v61 = v112;
  v62 = v115;
  v60(v112, v113, v115);
  v63 = v55;
  v64 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v65 = (v104 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v59;
  v67 = (*(v59 + 80) + v65 + 16) & ~*(v59 + 80);
  v68 = swift_allocObject();
  v69 = v120;
  *(v68 + 16) = v121;
  *(v68 + 24) = v69;
  (*(v63 + 32))(v68 + v64, v57, v58);
  v70 = (v68 + v65);
  v71 = v106;
  *v70 = v105;
  v70[1] = v71;
  (*(v66 + 32))(v68 + v67, v61, v62);
  v126 = sub_2406B1EAC;
  v127 = v68;
  aBlock = MEMORY[0x277D85DD0];
  v123 = 1107296256;
  v124 = sub_2406B0DF8;
  v125 = &block_descriptor_15;
  v72 = _Block_copy(&aBlock);

  v73 = v94;
  v74 = v93;
  [v94 registerRequestID:v93 options:0 handler:v72];
  _Block_release(v72);

  v75 = v108;
  v76 = v110;
  v77 = v95;
  v78 = v102;
  v102(v108, v110, v95);
  v79 = v111;
  v80 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v81 = swift_allocObject();
  v82 = v120;
  *(v81 + 16) = v121;
  *(v81 + 24) = v82;
  (*(v79 + 32))(v81 + v80, v75, v77);
  v126 = sub_2406B1FF0;
  v127 = v81;
  aBlock = MEMORY[0x277D85DD0];
  v123 = 1107296256;
  v124 = sub_240644810;
  v125 = &block_descriptor_6;
  v83 = _Block_copy(&aBlock);

  [v73 setInvalidationHandler_];
  _Block_release(v83);
  [v73 activate];
  v84 = v76;
  v85 = v77;
  v78(v75, v76, v77);
  v87 = v112;
  v86 = v113;
  v88 = v115;
  v97(v112, v113, v115);
  v90 = v116;
  v89 = v117;
  v91 = v119;
  v99(v116, v117, v119);
  sub_2406B0F0C(v75, v87, v90, v109);
  (*(v118 + 8))(v89, v91);
  (*(v114 + 8))(v86, v88);
  return (*(v79 + 8))(v84, v85);
}