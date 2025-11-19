void (*MigrationController.preferredInterfaceSets.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  *(v3 + 16) = v5;
  v6 = *v5;
  v7 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  *(v3 + 24) = v7;
  v8 = v5 + v7;
  v9 = *(v6 + 48);
  *(v3 + 32) = v9;
  v10 = (v9 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v10));
  v11 = *(v8 + 3);

  os_unfair_lock_unlock((v5 + v10));
  *v4 = v11;
  return sub_182145998;
}

void sub_182145998(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v5 = (*(*a1 + 32) + 3) & 0x1FFFFFFFCLL;
  if (a2)
  {

    os_unfair_lock_lock((v4 + v5));
    sub_18214F188(v4 + v3);
    os_unfair_lock_unlock((v4 + v5));
  }

  else
  {
    os_unfair_lock_lock((v4 + v5));
    sub_18214F188(v4 + v3);
    os_unfair_lock_unlock((v4 + v5));
  }

  free(v2);
}

void MigrationController.preferredInterfaces.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = v1 + *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v2 + 24);

  os_unfair_lock_unlock((v1 + v3));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v6 + 1;

      sub_1820D5290(v8);
      v6 = v7;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t MigrationController.preferredInterfaces.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v16 = v1;
    v17 = MEMORY[0x1E69E7CC0];
    sub_181FB7790(0, v4, 0);
    v5 = 32;
    do
    {
      v6 = *(a1 + v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838928);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_182AE9730;
      *(inited + 32) = v6;

      v8 = sub_18214DC78(inited);
      swift_setDeallocating();
      sub_18214DECC(inited + 32);
      v10 = *(v17 + 16);
      v9 = *(v17 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_181FB7790((v9 > 1), v10 + 1, 1);
      }

      *(v17 + 16) = v10 + 1;
      *(v17 + 8 * v10 + 32) = v8;
      v5 += 8;
      --v4;
    }

    while (v4);

    v2 = v16;
  }

  else
  {
  }

  v12 = *(v2 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  MEMORY[0x1EEE9AC00](v11);
  v13 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  sub_18214F188(v12 + v13);
  os_unfair_lock_unlock((v12 + v14));
}

uint64_t (*MigrationController.preferredInterfaces.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MigrationController.preferredInterfaces.getter();
  *a1 = v3;
  return sub_182145DB4;
}

uint64_t sub_182145DB4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MigrationController.preferredInterfaces.setter(*a1);
  }

  MigrationController.preferredInterfaces.setter(v2);
}

uint64_t MigrationController.__allocating_init(identifier:connection:)(__int128 *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_18214DF20(a1, a2);

  return v4;
}

uint64_t MigrationController.init(identifier:connection:)(__int128 *a1, uint64_t a2)
{
  v2 = sub_18214DF20(a1, a2);

  return v2;
}

uint64_t sub_182145E9C(char *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v50 = a1[2];
  v51 = a1[1];
  v53 = a1[4];
  v54 = a1[3];
  v49 = a1[6];
  v47 = a1[5];
  v48 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[10];
  v6 = a1[11];
  v39 = a1[12];
  v7 = a1[13];
  v8 = a1[14];
  v52 = a1[15];
  v9 = *(v1 + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));
  aBlock = 0;
  v56 = 0;
  v11 = sub_181AC1C5C(&aBlock, &v57);
  nw_parameters_set_migration_controller_session_uuid(v10, (v11 + 4));

  swift_unknownObjectRelease();
  os_unfair_lock_lock((v9 + 24));
  v12 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));
  v13 = nw_parameters_copy_preferred_netagent_uuids(v12);
  swift_unknownObjectRelease();
  v44 = v4;
  v45 = v3;
  v42 = v2;
  v43 = v5;
  v38 = v6;
  v40 = v8;
  v41 = v7;
  v46 = v13;
  if (v13)
  {
    swift_unknownObjectRetain();
    empty = xpc_array_create_empty();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 17) = v51;
    *(v15 + 18) = v50;
    *(v15 + 19) = v54;
    *(v15 + 20) = v53;
    v16 = v47;
    *(v15 + 21) = v47;
    *(v15 + 22) = v49;
    *(v15 + 23) = v48;
    *(v15 + 24) = v3;
    *(v15 + 25) = v4;
    *(v15 + 26) = v5;
    *(v15 + 27) = v6;
    v17 = v39;
    *(v15 + 28) = v39;
    *(v15 + 29) = v7;
    *(v15 + 30) = v8;
    *(v15 + 31) = v52;
    *(v15 + 32) = empty;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_18214F14C;
    *(v18 + 24) = v15;
    v59 = sub_18214F130;
    v60 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v56 = 1107296256;
    v57 = sub_181F79D48;
    v58 = &block_descriptor_125;
    v19 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    xpc_array_apply(v46, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    v21 = v53;
    v20 = v54;
    if (v19)
    {
      __break(1u);
      goto LABEL_13;
    }

    os_unfair_lock_lock((v9 + 24));
    v22 = *(v9 + 16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v9 + 24));
    nw_parameters_set_preferred_netagent_uuids(v22, empty);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v37 = sub_18214F14C;
  }

  else
  {
    v37 = 0;
    v21 = v53;
    v20 = v54;
    v16 = v47;
    v17 = v39;
  }

  os_unfair_lock_lock((v9 + 24));
  v23 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));
  v24 = nw_parameters_copy_required_netagent_uuids(v23);
  swift_unknownObjectRelease();
  if (v24)
  {
    swift_unknownObjectRetain();
    v25 = xpc_array_create_empty();
    v26 = swift_allocObject();
    *(v26 + 16) = v42;
    *(v26 + 17) = v51;
    *(v26 + 18) = v50;
    *(v26 + 19) = v20;
    *(v26 + 20) = v21;
    *(v26 + 21) = v16;
    *(v26 + 22) = v49;
    *(v26 + 23) = v48;
    *(v26 + 24) = v45;
    *(v26 + 25) = v44;
    *(v26 + 26) = v43;
    *(v26 + 27) = v38;
    *(v26 + 28) = v17;
    *(v26 + 29) = v41;
    *(v26 + 30) = v40;
    *(v26 + 31) = v52;
    *(v26 + 32) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_18214F0D8;
    *(v27 + 24) = v26;
    v59 = sub_181F7F228;
    v60 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v56 = 1107296256;
    v57 = sub_181F79D48;
    v58 = &block_descriptor_115_0;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    xpc_array_apply(v24, v28);
    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
      os_unfair_lock_lock((v9 + 24));
      v29 = *(v9 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v9 + 24));
      nw_parameters_set_required_netagent_uuids(v29, v25);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v30 = sub_18214F0D8;
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
  }

  v30 = 0;
LABEL_9:
  os_unfair_lock_lock((v9 + 24));
  v31 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));
  v32 = nw_parameters_copy_prohibited_netagent_uuids(v31);
  swift_unknownObjectRelease();
  if (!v32)
  {
    v32 = xpc_array_create_empty();
  }

  LOBYTE(aBlock) = v42;
  BYTE1(aBlock) = v51;
  BYTE2(aBlock) = v50;
  BYTE3(aBlock) = v54;
  BYTE4(aBlock) = v53;
  BYTE5(aBlock) = v47;
  BYTE6(aBlock) = v49;
  HIBYTE(aBlock) = v48;
  LOBYTE(v56) = v45;
  BYTE1(v56) = v44;
  BYTE2(v56) = v43;
  BYTE3(v56) = v38;
  BYTE4(v56) = v17;
  BYTE5(v56) = v41;
  BYTE6(v56) = v40;
  HIBYTE(v56) = v52;
  v33 = sub_181AC1C5C(&aBlock, &v57);
  v34 = xpc_uuid_create(v33 + 32);

  xpc_array_append_value(v32, v34);
  os_unfair_lock_lock((v9 + 24));
  v35 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));
  nw_parameters_set_prohibited_netagent_uuids(v35, v32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_181A554F4(v37);
  return sub_181A554F4(v30);
}

uint64_t MigrationController.__allocating_init(connection:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_18214E240(a1);

  return v2;
}

uint64_t MigrationController.init(connection:)(uint64_t a1)
{
  v1 = sub_18214E240(a1);

  return v1;
}

void MigrationController.start(queue:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_18214E670(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_182146660(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 12) == 255)
  {
    v27 = v3;
    v28 = v4;
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843378);
    v9 = sub_182AD2678();
    v10 = sub_182AD38D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Starting Migration Controller", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    v12 = *a1;
    v13 = a2;

    *a1 = a2;
    v14 = *(a3 + OBJC_IVAR____TtC7Network19MigrationController_parameters);
    v15 = *(v14 + 16);
    os_unfair_lock_lock((v15 + 24));
    LODWORD(v12) = nw_parameters_get_multipath_service(*(v15 + 16)) - 1;
    os_unfair_lock_unlock((v15 + 24));
    if (v12 >= 3)
    {
      v18 = sub_182AD2678();
      v19 = sub_182AD38B8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "Parameters do not support multipath";
        goto LABEL_12;
      }
    }

    else
    {
      v16 = *(v14 + 16);
      os_unfair_lock_lock((v16 + 24));
      v17 = *(v16 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v16 + 24));
      LODWORD(v16) = nw_parameters_get_server_mode(v17);
      swift_unknownObjectRelease();
      if (v16)
      {
        v18 = sub_182AD2678();
        v19 = sub_182AD38B8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          v21 = "Migration Controller is not supported in server mode";
LABEL_12:
          _os_log_impl(&dword_181A37000, v18, v19, v21, v20, 2u);
          MEMORY[0x1865DF520](v20, -1, -1);
        }
      }

      else
      {
        v23 = *(v14 + 16);
        os_unfair_lock_lock((v23 + 24));
        v24 = *(v23 + 16);
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v23 + 24));
        LOBYTE(v23) = nw_parameters_get_stricter_path_scoping(v24);
        swift_unknownObjectRelease();
        if (v23)
        {
          v22 = 0xFE00000000;
          goto LABEL_14;
        }

        v18 = sub_182AD2678();
        v19 = sub_182AD38B8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          v21 = "Migration Controller requires specific parameters";
          goto LABEL_12;
        }
      }
    }

    v22 = 22;
LABEL_14:
    v25 = v22;
    v26 = BYTE4(v22);
    sub_18214694C(&v25, a1);
  }
}

void sub_18214694C(unsigned int *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_182AD27A8();
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_182AD27C8();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 4);
  v13 = *a1;
  v14 = v13 | (v12 << 32);
  os_unfair_lock_assert_owner((*(v3 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v3 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  v15 = *(a2 + 12);
  v16 = *(a2 + 8);
  BYTE4(aBlock[0]) = *(a2 + 12);
  LODWORD(aBlock[0]) = v16;
  BYTE4(v76) = v12;
  LODWORD(v76) = v13;
  if (_s7Network19MigrationControllerC5StateO2eeoiySbAE_AEtFZ_0(aBlock, &v76))
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v17 = sub_182AD2698();
    __swift_project_value_buffer(v17, qword_1EA843378);
    v75 = sub_182AD2678();
    v18 = sub_182AD38A8();
    if (os_log_type_enabled(v75, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      if (BYTE4(v14) > 0xFDu)
      {
        if (BYTE4(v14) == 255)
        {
          v22 = 0x7075746553;
          v21 = 0xE500000000000000;
          goto LABEL_59;
        }

        if (BYTE4(v14) == 254)
        {
          v22 = 0x6E69726170657250;
          v21 = 0xE900000000000067;
          goto LABEL_59;
        }
      }

      else
      {
        if (BYTE4(v14) == 252)
        {
          v22 = 0x656C6C65636E6143;
          v21 = 0xE900000000000064;
          goto LABEL_59;
        }

        if (BYTE4(v14) == 253)
        {
          v21 = 0xE500000000000000;
          v22 = 0x7964616552;
LABEL_59:
          v65 = sub_181C64FFC(v22, v21, aBlock);

          *(v19 + 4) = v65;
          _os_log_impl(&dword_181A37000, v75, v18, "Ignoring duplicate state update: %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_74:
          MEMORY[0x1865DF520](v20, -1, -1);
          MEMORY[0x1865DF520](v19, -1, -1);

          return;
        }
      }

      v21 = 0xE600000000000000;
      v22 = 0x64656C696146;
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  v23 = v16 | (v15 << 32);
  if (BYTE4(v14) > 0xFDu)
  {
    if (BYTE4(v14) == 254)
    {
      if (BYTE4(v23) == 255)
      {
        *(a2 + 8) = v14;
        *(a2 + 12) = BYTE4(v14);
        v24 = *(a2 + 32);
        v25 = *(a2 + 40);
        v72 = *a2;
        sub_181AA39C0(v24);
        v59 = v72;
        sub_182147DAC(a2);
        if (sub_1821482D4(v3 + OBJC_IVAR____TtC7Network19MigrationController_endpoint, a2))
        {
          sub_182148D94(a2);
        }

        else
        {
          sub_1821487D4(a2);
        }

        goto LABEL_34;
      }

      goto LABEL_40;
    }

    if (BYTE4(v14) == 255)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (BYTE4(v14) == 252)
    {
      *(a2 + 8) = v14;
      *(a2 + 12) = BYTE4(v14);
      v25 = *(a2 + 40);
      v46 = *a2;
      v71 = *(a2 + 32);
      v72 = v46;
      sub_181AA39C0(v71);
      v47 = qword_1EA8371B8;
      v48 = v72;
      if (v47 != -1)
      {
        swift_once();
      }

      v49 = sub_182AD2698();
      __swift_project_value_buffer(v49, qword_1EA843378);
      v50 = sub_182AD2678();
      v51 = sub_182AD38D8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v70 = v25;
        v53 = v52;
        *v52 = 0;
        _os_log_impl(&dword_181A37000, v50, v51, "Cancelled by client", v52, 2u);
        v54 = v53;
        v25 = v70;
        MEMORY[0x1865DF520](v54, -1, -1);
      }

      sub_1821490E0(a2);
      sub_182149654(a2);
      sub_182149894(a2);
      sub_181A554F4(*(a2 + 48));
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      sub_181A554F4(*(a2 + 32));
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;

      *a2 = 0;
      v24 = v71;
      goto LABEL_34;
    }

    if (BYTE4(v14) == 253)
    {
      if (BYTE4(v23) == 254)
      {
        *(a2 + 8) = v14;
        *(a2 + 12) = BYTE4(v14);
        v24 = *(a2 + 32);
        v25 = *(a2 + 40);
        v72 = *a2;
        sub_181AA39C0(v24);
        v26 = qword_1EA8371B8;
        v27 = v72;
        if (v26 != -1)
        {
          swift_once();
        }

        v28 = sub_182AD2698();
        __swift_project_value_buffer(v28, qword_1EA843378);
        v29 = sub_182AD2678();
        v30 = sub_182AD38D8();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_181A37000, v29, v30, "Migration Controller is Ready", v31, 2u);
          MEMORY[0x1865DF520](v31, -1, -1);
        }

        goto LABEL_34;
      }

LABEL_40:
      if (qword_1EA8371B8 != -1)
      {
        swift_once();
      }

      v60 = sub_182AD2698();
      __swift_project_value_buffer(v60, qword_1EA843378);
      v75 = sub_182AD2678();
      v61 = sub_182AD38C8();
      if (!os_log_type_enabled(v75, v61))
      {
LABEL_47:
        v55 = v75;
        goto LABEL_48;
      }

      v62 = 0x7075746553;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315394;
      if (BYTE4(v14) > 0xFDu)
      {
        if (BYTE4(v14) == 255)
        {
          v63 = 0xE500000000000000;
          v64 = 0x7075746553;
        }

        else
        {
          v64 = 0x6E69726170657250;
          v63 = 0xE900000000000067;
        }
      }

      else if (BYTE4(v14) == 252)
      {
        v64 = 0x656C6C65636E6143;
        v63 = 0xE900000000000064;
      }

      else if (BYTE4(v14) == 253)
      {
        v63 = 0xE500000000000000;
        v64 = 0x7964616552;
      }

      else
      {
        v63 = 0xE600000000000000;
        v64 = 0x64656C696146;
      }

      v66 = sub_181C64FFC(v64, v63, aBlock);

      *(v19 + 4) = v66;
      *(v19 + 12) = 2080;
      if (BYTE4(v23) > 0xFDu)
      {
        if (BYTE4(v23) == 255)
        {
          v67 = 0xE500000000000000;
          goto LABEL_73;
        }

        if (BYTE4(v23) == 254)
        {
          v62 = 0x6E69726170657250;
          v67 = 0xE900000000000067;
          goto LABEL_73;
        }
      }

      else
      {
        if (BYTE4(v23) == 252)
        {
          v62 = 0x656C6C65636E6143;
          v67 = 0xE900000000000064;
          goto LABEL_73;
        }

        if (BYTE4(v23) == 253)
        {
          v67 = 0xE500000000000000;
          v62 = 0x7964616552;
LABEL_73:
          v68 = sub_181C64FFC(v62, v67, aBlock);

          *(v19 + 14) = v68;
          _os_log_impl(&dword_181A37000, v75, v61, "Invalid state update: %s from %s", v19, 0x16u);
          swift_arrayDestroy();
          goto LABEL_74;
        }
      }

      v67 = 0xE600000000000000;
      v62 = 0x64656C696146;
      goto LABEL_73;
    }
  }

  if ((BYTE4(v23) + 3) > 1u)
  {
    goto LABEL_40;
  }

  *(a2 + 8) = v14;
  *(a2 + 12) = BYTE4(v14);
  v24 = *(a2 + 32);
  v32 = *(a2 + 40);
  v72 = *a2;
  v70 = v32;
  sub_181AA39C0(v24);
  v33 = qword_1EA8371B8;
  v34 = v72;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_182AD2698();
  __swift_project_value_buffer(v35, qword_1EA843378);
  v36 = sub_182AD2678();
  v37 = sub_182AD38B8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v71 = v36;
    v39 = v38;
    v69 = swift_slowAlloc();
    *v39 = 138412290;
    sub_181F4B3B8();
    swift_allocError();
    *v40 = v14;
    *(v40 + 4) = BYTE4(v14);
    v41 = _swift_stdlib_bridgeErrorToNSError();
    v42 = v39;
    v36 = v71;
    *(v42 + 1) = v41;
    v43 = v69;
    *v69 = v41;
    v44 = v37;
    v45 = v42;
    _os_log_impl(&dword_181A37000, v36, v44, "Failed with error %@", v42, 0xCu);
    sub_181F49A88(v43, &unk_1EA83AA30);
    MEMORY[0x1865DF520](v43, -1, -1);
    MEMORY[0x1865DF520](v45, -1, -1);
  }

  sub_1821490E0(a2);
  sub_182149654(a2);
  sub_182149894(a2);
  v25 = v70;
LABEL_34:
  v55 = v72;
  if (!v24)
  {
LABEL_48:

    return;
  }

  if (v72)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v24;
    *(v56 + 24) = v25;
    *(v56 + 32) = v3;
    *(v56 + 44) = BYTE4(v14);
    *(v56 + 40) = v14;
    aBlock[4] = sub_18214EE08;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7D048;
    aBlock[3] = &block_descriptor_24;
    v57 = _Block_copy(aBlock);
    sub_181AA39C0(v24);
    sub_181AA39C0(v24);
    v58 = v72;

    sub_182AD27B8();
    v76 = MEMORY[0x1E69E7CC0];
    sub_181FE485C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
    sub_181B7CFE4();
    sub_182AD3AC8();
    MEMORY[0x1865DA490](0, v11, v8, v57);
    _Block_release(v57);

    sub_181A554F4(v24);
    (v75[1].isa)(v8, v6);
    (*(v73 + 8))(v11, v74);

    sub_181A554F4(v24);
  }

  else
  {

    sub_181A554F4(v24);
  }
}

Swift::Void __swiftcall MigrationController.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_18214E68C(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t MigrationController.stateUpdateHandler(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_18214E6A4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1821476C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 12) << 32 != 0xFC00000000)
  {
    v4 = *(result + 32);
    v5 = result;

    result = sub_181A554F4(v4);
    *(v5 + 32) = a2;
    *(v5 + 40) = a3;
  }

  return result;
}

uint64_t MigrationController.availableInterfacesUpdateHandler(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_18214E6C0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1821477E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 12) << 32 != 0xFC00000000)
  {
    v4 = *(result + 48);
    v5 = result;

    result = sub_181A554F4(v4);
    *(v5 + 48) = a2;
    *(v5 + 56) = a3;
  }

  return result;
}

uint64_t MigrationController.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_18214F134(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));

  sub_181FDAD5C(v0 + OBJC_IVAR____TtC7Network19MigrationController_endpoint);

  return v0;
}

uint64_t MigrationController.__deallocating_deinit()
{
  MigrationController.deinit();

  return swift_deallocClassInstance();
}

void sub_182147980(unsigned int *a1, void **a2)
{
  v5 = sub_182AD27A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = sub_182AD27C8();
  v9 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 4);
  v13 = *a1;
  os_unfair_lock_assert_owner((*(v2 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v2 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  v14 = *a2;
  if (*a2)
  {
    v15 = v13 | (v12 << 32);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 28) = BYTE4(v15);
    *(v17 + 24) = v15;
    aBlock[4] = sub_18214F040;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7D048;
    aBlock[3] = &block_descriptor_87;
    v18 = _Block_copy(aBlock);
    v19 = v14;

    sub_182AD27B8();
    v20[1] = MEMORY[0x1E69E7CC0];
    sub_181FE485C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
    sub_181B7CFE4();
    sub_182AD3AC8();
    MEMORY[0x1865DA490](0, v11, v8, v18);
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v20[0]);
  }
}

uint64_t sub_182147C90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7Network19MigrationController_lock);
    MEMORY[0x1EEE9AC00](result);
    v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v1 + v3));
    sub_18214F054(v1 + v2);
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

void sub_182147DAC(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  if (*(a1 + 12) << 32 != 0xFE00000000)
  {
    return;
  }

  if (*(a1 + 64))
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843378);
    oslog = sub_182AD2678();
    v4 = sub_182AD38B8();
    if (!os_log_type_enabled(oslog, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Agent already exists";
LABEL_7:
    _os_log_impl(&dword_181A37000, oslog, v4, v6, v5, 2u);
    MEMORY[0x1865DF520](v5, -1, -1);
LABEL_8:

    return;
  }

  if (!*a1)
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843378);
    oslog = sub_182AD2678();
    v4 = sub_182AD38B8();
    if (!os_log_type_enabled(oslog, v4))
    {
      goto LABEL_8;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Agent requires a queue";
    goto LABEL_7;
  }

  v7 = *a1;
  v8 = nw_agent_create_for_migration_policy("MigrationController", v7);
  *(a1 + 64) = v8;
  if (v8)
  {
    v26 = *(v1 + 16);
    v9 = swift_unknownObjectRetain();
    nw_agent_set_uuid(v9, &v26);
    v10 = nw_migration_helper_create(&v26);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 72) = v10;
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843378);
    v12 = sub_182AD2678();
    v13 = sub_182AD38D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Starting Agent", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }

    if (nw_migration_helper_start_session(v10))
    {
      *(a1 + 80) = 1;
      sub_182144E30(a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = sub_182AD2678();
      v21 = sub_182AD38B8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_181A37000, v20, v21, "Failed to start Agent Session", v22, 2u);
        MEMORY[0x1865DF520](v22, -1, -1);
      }

      v25 = 0;
      v24 = 45;
      sub_182147980(&v24, a1);

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v16 = sub_182AD2698();
    __swift_project_value_buffer(v16, qword_1EA843378);
    v17 = sub_182AD2678();
    v18 = sub_182AD38B8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_181A37000, v17, v18, "Failed to create Agent", v19, 2u);
      MEMORY[0x1865DF520](v19, -1, -1);
    }

    BYTE4(v26) = 0;
    LODWORD(v26) = 22;
    sub_182147980(&v26, a1);
  }
}

uint64_t sub_1821482D4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for NWEndpoint();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  os_unfair_lock_assert_owner((*(v2 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v2 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  if (*(a2 + 12) << 32 == 0xFE00000000)
  {
    v12 = *(type metadata accessor for MigrationController.LockedState(0) + 64);
    sub_181AB5D28(a2 + v12, v11, &qword_1EA839360);
    v13 = (*(v6 + 48))(v11, 1, v5);
    sub_181F49A88(v11, &qword_1EA839360);
    if (v13 != 1)
    {
      if (qword_1EA8371B8 != -1)
      {
        swift_once();
      }

      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1EA843378);
      v25 = sub_182AD2678();
      v26 = sub_182AD38B8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_181A37000, v25, v26, "Already have a Bonjour endpoint", v27, 2u);
        MEMORY[0x1865DF520](v27, -1, -1);
      }

      return 1;
    }

    v14 = NWEndpoint.nw.getter();
    if (v14)
    {
      if (nw_endpoint_get_type(v14) == nw_endpoint_type_bonjour_service)
      {
        sub_181F49A88(a2 + v12, &qword_1EA839360);
        sub_181FE4EE0(a1, a2 + v12);
        (*(v6 + 56))(a2 + v12, 0, 1, v5);
        if (qword_1EA8371B8 != -1)
        {
          swift_once();
        }

        v15 = sub_182AD2698();
        __swift_project_value_buffer(v15, qword_1EA843378);
        sub_181FE4EE0(a1, v8);
        v16 = sub_182AD2678();
        v17 = sub_182AD38D8();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v34 = v19;
          *v18 = 136315138;
          v20 = NWEndpoint.debugDescription.getter();
          v22 = v21;
          sub_181FDAD5C(v8);
          v23 = sub_181C64FFC(v20, v22, &v34);

          *(v18 + 4) = v23;
          _os_log_impl(&dword_181A37000, v16, v17, "Using Bonjour endpoint: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x1865DF520](v19, -1, -1);
          MEMORY[0x1865DF520](v18, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          sub_181FDAD5C(v8);
        }

        return 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EA8371B8 != -1)
      {
        swift_once();
      }

      v29 = sub_182AD2698();
      __swift_project_value_buffer(v29, qword_1EA843378);
      v30 = sub_182AD2678();
      v31 = sub_182AD38B8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_181A37000, v30, v31, "Invalid endpoint found, disregarding", v32, 2u);
        MEMORY[0x1865DF520](v32, -1, -1);
      }
    }
  }

  return 0;
}

void sub_1821487D4(uint64_t a1)
{
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  if (*(a1 + 12) << 32 != 0xFE00000000)
  {
    return;
  }

  v3 = *(type metadata accessor for MigrationController.LockedState(0) + 60);
  if (*(a1 + v3))
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843378);
    oslog = sub_182AD2678();
    v5 = sub_182AD38B8();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Resolver already exists";
LABEL_7:
    _os_log_impl(&dword_181A37000, oslog, v5, v7, v6, 2u);
    MEMORY[0x1865DF520](v6, -1, -1);
LABEL_8:

    return;
  }

  if (!*a1)
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v21 = sub_182AD2698();
    __swift_project_value_buffer(v21, qword_1EA843378);
    oslog = sub_182AD2678();
    v5 = sub_182AD38B8();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Resolver requires a queue";
    goto LABEL_7;
  }

  v8 = *a1;
  v9 = NWEndpoint.nw.getter();
  if (v9)
  {
    v10 = v9;
    v11 = *(*(v1 + OBJC_IVAR____TtC7Network19MigrationController_parameters) + 16);
    os_unfair_lock_lock((v11 + 24));
    v12 = *(v11 + 16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v11 + 24));
    v13 = nw_resolver_to_agent_create_with_endpoint(v10, v12);
    swift_unknownObjectRelease();
    *(a1 + v3) = v13;
    v14 = qword_1EA8371B8;
    if (v13)
    {
      swift_unknownObjectRetain();
      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_182AD2698();
      __swift_project_value_buffer(v15, qword_1EA843378);
      v16 = sub_182AD2678();
      v17 = sub_182AD38D8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_181A37000, v16, v17, "Starting Resolver", v18, 2u);
        MEMORY[0x1865DF520](v18, -1, -1);
      }

      v19 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_18214F0A4;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18214AE74;
      aBlock[3] = &block_descriptor_91;
      v20 = _Block_copy(aBlock);
      v8 = v8;

      nw_resolver_set_update_handler(v13, v8, v20);
      _Block_release(v20);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EA8371B8 != -1)
      {
        swift_once();
      }

      v26 = sub_182AD2698();
      __swift_project_value_buffer(v26, qword_1EA843378);
      v27 = sub_182AD2678();
      v28 = sub_182AD38B8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_181A37000, v27, v28, "Failed to create Resolver", v29, 2u);
        MEMORY[0x1865DF520](v29, -1, -1);
      }

      BYTE4(aBlock[0]) = 0;
      LODWORD(aBlock[0]) = 22;
      sub_182147980(aBlock, a1);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v22 = sub_182AD2698();
    __swift_project_value_buffer(v22, qword_1EA843378);
    v23 = sub_182AD2678();
    v24 = sub_182AD38B8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_181A37000, v23, v24, "Invalid endpoint", v25, 2u);
      MEMORY[0x1865DF520](v25, -1, -1);
    }

    BYTE4(aBlock[0]) = 0;
    LODWORD(aBlock[0]) = 22;
    sub_182147980(aBlock, a1);
  }
}

uint64_t sub_182148D94(uint64_t a1)
{
  v3 = sub_182AD27A8();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD27C8();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  v9 = *(*(v1 + OBJC_IVAR____TtC7Network19MigrationController_parameters) + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));
  v11 = nw_parameters_copy_context(v10);
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = nw_context_copy_implicit_context();
  }

  v12 = nw_context_copy_workloop(v11);
  v13 = *(type metadata accessor for MigrationController.LockedState(0) + 72);
  v14 = *(a1 + v13);
  v15 = v12;

  *(a1 + v13) = v12;
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_18214EE54;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_20;
  v17 = _Block_copy(aBlock);

  sub_182AD27B8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_181FE485C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181B7CFE4();
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v8, v5, v17);

  _Block_release(v17);
  swift_unknownObjectRelease();
  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

void sub_1821490E0(uint64_t a1)
{
  v3 = sub_182AD27A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_182AD27C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  locked = type metadata accessor for MigrationController.LockedState(0);
  v12 = *(locked + 72);
  v13 = *(a1 + v12);
  if (v13)
  {
    v14 = *(a1 + *(locked + 68));
    if (v14)
    {
      v34 = *(locked + 68);
      v36 = v4;
      v15 = qword_1EA8371B8;
      v33 = v13;
      swift_unknownObjectRetain();
      if (v15 != -1)
      {
        swift_once();
      }

      v35 = v8;
      v16 = sub_182AD2698();
      __swift_project_value_buffer(v16, qword_1EA843378);
      v17 = sub_182AD2678();
      v18 = sub_182AD38D8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_181A37000, v17, v18, "Stopping Candidate Manager", v19, 2u);
        MEMORY[0x1865DF520](v19, -1, -1);
      }

      v20 = swift_allocObject();
      *(v20 + 16) = v14;
      aBlock[4] = sub_18214F0D0;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181B7D048;
      aBlock[3] = &block_descriptor_106;
      v21 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      sub_182AD27B8();
      v37 = MEMORY[0x1E69E7CC0];
      sub_181FE485C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
      sub_181B7CFE4();
      sub_182AD3AC8();
      v22 = v33;
      MEMORY[0x1865DA490](0, v10, v6, v21);
      _Block_release(v21);
      swift_unknownObjectRelease();

      (v36[1].isa)(v6, v3);
      (*(v35 + 8))(v10, v7);

      swift_unknownObjectRelease();

      *(a1 + v34) = 0;
      *(a1 + v12) = 0;
      return;
    }

    v26 = qword_1EA8371B8;
    v27 = v13;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = sub_182AD2698();
    __swift_project_value_buffer(v28, qword_1EA843378);
    v36 = sub_182AD2678();
    v29 = sub_182AD38A8();
    if (os_log_type_enabled(v36, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_181A37000, v36, v29, "No Candidate Manager to stop", v30, 2u);
      MEMORY[0x1865DF520](v30, -1, -1);
    }
  }

  else
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA843378);
    v36 = sub_182AD2678();
    v24 = sub_182AD38A8();
    if (os_log_type_enabled(v36, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_181A37000, v36, v24, "No Candidate Manager workloop", v25, 2u);
      MEMORY[0x1865DF520](v25, -1, -1);
    }
  }

  v31 = v36;
}

void sub_182149654(uint64_t a1)
{
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  v3 = *(type metadata accessor for MigrationController.LockedState(0) + 60);
  v4 = *(a1 + v3);
  if (v4)
  {
    v5 = qword_1EA8371B8;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843378);
    v7 = sub_182AD2678();
    v8 = sub_182AD38D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "Stopping Resolver", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    nw_resolver_cancel(v4);
    swift_unknownObjectRelease_n();
    *(a1 + v3) = 0;
  }

  else
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843378);
    oslog = sub_182AD2678();
    v11 = sub_182AD38A8();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, oslog, v11, "No Resolver to stop", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }
}

void sub_182149894(uint64_t a1)
{
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  if (*(a1 + 64))
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843378);
    v4 = sub_182AD2678();
    v5 = sub_182AD38D8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_181A37000, v4, v5, "Stopping Agent", v6, 2u);
      MEMORY[0x1865DF520](v6, -1, -1);
    }

    *(a1 + 80) = 0;
    sub_18214A448(a1);
    if (!*(a1 + 72))
    {
      goto LABEL_9;
    }

    v7 = swift_unknownObjectRetain();
    if (nw_migration_helper_stop_session(v7))
    {
      swift_unknownObjectRelease();
LABEL_9:
      swift_unknownObjectRelease();
      *(a1 + 64) = 0;
      v8 = *(type metadata accessor for MigrationController.LockedState(0) + 56);
      sub_181F49A88(a1 + v8, &unk_1EA8394B0);
      v9 = sub_182AD2868();
      (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
      swift_unknownObjectRelease();
      *(a1 + 72) = 0;
      return;
    }

    v13 = sub_182AD2678();
    v14 = sub_182AD38B8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_181A37000, v13, v14, "Failed to stop Agent Session", v15, 2u);
      MEMORY[0x1865DF520](v15, -1, -1);
    }

    v18 = 0;
    v17 = 45;
    sub_182147980(&v17, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843378);
    oslog = sub_182AD2678();
    v11 = sub_182AD38A8();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, oslog, v11, "No Agent to stop", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }
}

void sub_182149BF4(uint64_t *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = sub_182AD27A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_182AD27C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  if (*(a1 + 12) << 32 != 0xFD00000000)
  {
    return;
  }

  v49 = v7;
  v50 = v4;
  v11 = a1[2];
  type metadata accessor for MigrationController.LockedState(0);

  *&aBlock = sub_18214D3F4(v12);
  sub_18214C6A0(&aBlock);
  v54 = v1;
  v55 = v10;
  v56 = v8;
  v57 = v6;
  v13 = aBlock;
  v51 = v3;
  if ((aBlock & 0x8000000000000000) != 0 || (aBlock & 0x4000000000000000) != 0)
  {
    goto LABEL_19;
  }

  v14 = *(aBlock + 16);
  if (v14)
  {
    while (1)
    {
      v58 = MEMORY[0x1E69E7CC0];
      sub_181FB77D0(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        break;
      }

      v52 = v11;
      v53 = a1;
      v15 = 0;
      v16 = v58;
      a1 = &OBJC_IVAR____TtC7Network13__NWInterface_interface;
      while (1)
      {
        v11 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if ((v13 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1865DA790](v15, v13);
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_18;
          }

          v17 = *(v13 + 8 * v15 + 32);
          swift_unknownObjectRetain();
        }

        v18 = nw_interface_option_details_copy_interface(v17);
        if (!v18)
        {
          __break(1u);
        }

        v61 = &type metadata for NWInterface;
        v19 = *&v18[OBJC_IVAR____TtC7Network13__NWInterface_interface];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *&aBlock = v19;
        v58 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_181FB77D0((v20 > 1), v21 + 1, 1);
          v16 = v58;
        }

        *(v16 + 16) = v21 + 1;
        sub_181E7BFC4(&aBlock, (v16 + 32 * v21 + 32));
        ++v15;
        if (v11 == v14)
        {

          v11 = v52;
          a1 = v53;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v14 = sub_182AD3EB8();
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

LABEL_21:
    v22 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
    v23 = sub_182AD33B8();

    v24 = [v22 initWithArray_];

    v25 = [v24 array];
    v26 = sub_182AD33C8();

    v13 = sub_182184DBC(v26);

    if (sub_182080F1C(v13, v11))
    {

      return;
    }

    a1[2] = v13;
    if (qword_1EA8371B8 == -1)
    {
      goto LABEL_24;
    }
  }

  swift_once();
LABEL_24:
  v27 = sub_182AD2698();
  __swift_project_value_buffer(v27, qword_1EA843378);

  v28 = sub_182AD2678();
  v29 = sub_182AD38D8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&aBlock = v31;
    *v30 = 136315394;
    v32 = MEMORY[0x1865D9F40](v13, &type metadata for NWInterface);
    v34 = sub_181C64FFC(v32, v33, &aBlock);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = MEMORY[0x1865D9F40](v11, &type metadata for NWInterface);
    v37 = v36;

    v38 = sub_181C64FFC(v35, v37, &aBlock);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_181A37000, v28, v29, "Available interfaces changed: %s, was %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v31, -1, -1);
    MEMORY[0x1865DF520](v30, -1, -1);
  }

  else
  {
  }

  v40 = v56;
  v39 = v57;
  v41 = v55;
  v42 = a1[6];
  if (v42 && (v43 = *a1) != 0)
  {
    v44 = a1[7];
    v45 = swift_allocObject();
    v45[2] = v42;
    v45[3] = v44;
    v45[4] = v54;
    v45[5] = v13;
    v62 = sub_18214EF24;
    v63 = v45;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v60 = sub_181B7D048;
    v61 = &block_descriptor_66_0;
    v46 = _Block_copy(&aBlock);
    sub_181AA39C0(v42);
    sub_181AA39C0(v42);
    v47 = v43;

    sub_182AD27B8();
    v58 = MEMORY[0x1E69E7CC0];
    sub_181FE485C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
    sub_181B7CFE4();
    v48 = v51;
    sub_182AD3AC8();
    MEMORY[0x1865DA490](0, v41, v39, v46);
    _Block_release(v46);

    sub_181A554F4(v42);
    (*(v50 + 8))(v39, v48);
    (*(v40 + 8))(v41, v49);
  }

  else
  {

    sub_182144E30(a1);
  }
}

void sub_18214A37C(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(a3, a4);
  v5 = *(a3 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_18214EF30(v5 + v6);

  os_unfair_lock_unlock((v5 + v7));
}

void sub_18214A448(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  os_unfair_lock_assert_owner((*(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = qword_1EA8371B8;
    swift_unknownObjectRetain();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843378);
    v9 = sub_182AD2678();
    v10 = sub_182AD38D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Updating Agent", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    v12 = *(a1 + 80);
    v13 = *(a1 + 84);
    locked = type metadata accessor for MigrationController.LockedState(0);
    sub_181AB5D28(a1 + *(locked + 56), v5, &unk_1EA8394B0);
    v15 = sub_182AD2868();
    v16 = *(v15 - 8);
    v17 = 0;
    if ((*(v16 + 48))(v5, 1, v15) != 1)
    {
      v17 = sub_182AD2808();
      (*(v16 + 8))(v5, v15);
    }

    nw_agent_change_state(v6, v12, v13, v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EA8371B8 != -1)
    {
      swift_once();
    }

    v18 = sub_182AD2698();
    __swift_project_value_buffer(v18, qword_1EA843378);
    v23 = sub_182AD2678();
    v19 = sub_182AD38B8();
    if (os_log_type_enabled(v23, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_181A37000, v23, v19, "Cannot update Agent state since agent does not exist", v20, 2u);
      MEMORY[0x1865DF520](v20, -1, -1);
    }

    v21 = v23;
  }
}

uint64_t sub_18214A78C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (a2)
    {
      v17 = MEMORY[0x1E69E7CC0];
      v5 = swift_allocObject();
      *(v5 + 16) = &v17;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_18214F0AC;
      *(v6 + 24) = v5;
      aBlock[4] = sub_181F7F228;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181F79D48;
      aBlock[3] = &block_descriptor_100;
      v7 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();

      nw_array_apply(a2, v7);
      _Block_release(v7);
      swift_unknownObjectRelease();
      if (qword_1EA8371B8 != -1)
      {
        swift_once();
      }

      v8 = sub_182AD2698();
      __swift_project_value_buffer(v8, qword_1EA843378);
      v9 = sub_182AD2678();
      v10 = sub_182AD38D8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        swift_beginAccess();
        *(v11 + 4) = *(v17 + 16);
        _os_log_impl(&dword_181A37000, v9, v10, "Evaluating %ld resolved endpoints", v11, 0xCu);
        MEMORY[0x1865DF520](v11, -1, -1);
      }

      v12 = *(v4 + OBJC_IVAR____TtC7Network19MigrationController_lock);
      v13 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v13);
      v14 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
      v15 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v12 + v15));
      sub_18214F0B4(v12 + v14);
      os_unfair_lock_unlock((v12 + v15));

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_18214AAE0(uint64_t a1, uint64_t a2, size_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v24[1] = &unk_1EF013128;
  v17 = swift_dynamicCastObjCProtocolUnconditional();
  swift_unknownObjectRetain();
  sub_181B80998(v17, v6);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_181F49A88(v6, &qword_1EA839360);
  }

  else
  {
    sub_181D8DCF0(v6, v13, type metadata accessor for NWEndpoint);
    sub_181D8DCF0(v13, v16, type metadata accessor for NWEndpoint);
    sub_181FE4EE0(v16, v10);
    v18 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_181B81258(0, v18[2] + 1, 1, v18);
      *a3 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      *a3 = sub_181B81258(v20 > 1, v21 + 1, 1, v18);
    }

    sub_181FDAD5C(v16);
    v22 = *a3;
    v22[2] = v21 + 1;
    sub_181D8DCF0(v10, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, type metadata accessor for NWEndpoint);
  }

  return 1;
}

void sub_18214ADA0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  while (v5 != v4)
  {
    v6 = *(type metadata accessor for NWEndpoint() - 8);
    v7 = sub_1821482D4(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4++, a1);
    if (v7)
    {
      sub_182148D94(a1);
      sub_182149654(a1);
      return;
    }
  }
}

uint64_t sub_18214AE7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7Network19MigrationController_lock);
    v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v1 + v3));
    sub_18214EE5C(v1 + v2);
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

void sub_18214AF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 12) << 32 == 0xFE00000000)
  {
    if (*a1)
    {
      v9 = v6;
      locked = type metadata accessor for MigrationController.LockedState(0);
      v11 = *(locked + 64);
      if (!(*(v5 + 48))(a1 + v11, 1, v9))
      {
        sub_181FE4EE0(a1 + v11, v8);
        v12 = NWEndpoint.nw.getter();
        sub_181FDAD5C(v8);
        if (v12)
        {
          v13 = *(*(a2 + OBJC_IVAR____TtC7Network19MigrationController_parameters) + 16);
          os_unfair_lock_lock((v13 + 24));
          v14 = *(v13 + 16);
          swift_unknownObjectRetain();
          os_unfair_lock_unlock((v13 + 24));
          v15 = nw_candidate_manager_create_with_monitored_connection(v12, v14, *(*(a2 + 32) + 16));
          swift_unknownObjectRelease();
          *(a1 + *(locked + 68)) = v15;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          if (v15)
          {
            sub_18214B2B0(a1);
            sub_18214B5BC(2, 0, a1);
            if (qword_1EA8371B8 != -1)
            {
              swift_once();
            }

            v16 = sub_182AD2698();
            __swift_project_value_buffer(v16, qword_1EA843378);
            v17 = sub_182AD2678();
            v18 = sub_182AD38D8();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 0;
              _os_log_impl(&dword_181A37000, v17, v18, "Starting Candidate Manager", v19, 2u);
              MEMORY[0x1865DF520](v19, -1, -1);
            }

            nw_candidate_manager_start_client(v15, 0);
            swift_unknownObjectRelease();
          }

          else
          {
            if (qword_1EA8371B8 != -1)
            {
              swift_once();
            }

            v20 = sub_182AD2698();
            __swift_project_value_buffer(v20, qword_1EA843378);
            v21 = sub_182AD2678();
            v22 = sub_182AD38B8();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&dword_181A37000, v21, v22, "Failed to create Candidate Manager", v23, 2u);
              MEMORY[0x1865DF520](v23, -1, -1);
            }

            v26 = 0;
            v25 = 22;
            sub_182147980(&v25, a1);
          }

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_18214B2B0(void **a1)
{
  v2 = *(a1 + *(type metadata accessor for MigrationController.LockedState(0) + 68));
  if (v2)
  {
    v3 = *a1;
    if (v3)
    {
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v5;
      v21 = sub_18214EE78;
      v22 = v6;
      v17 = MEMORY[0x1E69E9820];
      v18 = 1107296256;
      v19 = sub_18214BBE4;
      v20 = &block_descriptor_37;
      v7 = _Block_copy(&v17);
      v8 = v3;
      swift_unknownObjectRetain();

      nw_candidate_manager_set_state_changed_handler(v2, v7);
      _Block_release(v7);
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      v21 = sub_18214EE80;
      v22 = v11;
      v17 = MEMORY[0x1E69E9820];
      v18 = 1107296256;
      v19 = sub_181AA4EBC;
      v20 = &block_descriptor_45;
      v12 = _Block_copy(&v17);

      nw_candidate_manager_set_add_block(v2, v12);
      _Block_release(v12);
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      v21 = sub_18214EEC0;
      v22 = v15;
      v17 = MEMORY[0x1E69E9820];
      v18 = 1107296256;
      v19 = sub_181AA4EBC;
      v20 = &block_descriptor_53_0;
      v16 = _Block_copy(&v17);

      nw_candidate_manager_set_remove_block(v2, v16);
      _Block_release(v16);
      swift_unknownObjectRelease();
    }
  }
}

void sub_18214B5BC(int a1, uint64_t a2, void **a3)
{
  v7 = sub_182AD27A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_182AD27C8();
  v11 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner((*(v3 + OBJC_IVAR____TtC7Network19MigrationController_lock) + ((*(**(v3 + OBJC_IVAR____TtC7Network19MigrationController_lock) + 48) + 3) & 0x1FFFFFFFCLL)));
  v14 = *a3;
  if (*a3)
  {
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a1;
    *(v16 + 32) = a2;
    aBlock[4] = sub_18214F1A0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7D048;
    aBlock[3] = &block_descriptor_27;
    v17 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v18 = v14;

    sub_182AD27B8();
    v19[1] = MEMORY[0x1E69E7CC0];
    sub_181FE485C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
    sub_181B7CFE4();
    sub_182AD3AC8();
    MEMORY[0x1865DA490](0, v13, v10, v17);
    _Block_release(v17);

    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v19[0]);
  }
}

uint64_t sub_18214B8C8(int a1, uint64_t a2)
{
  v4 = sub_182AD27A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_182AD27C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = swift_allocObject();
      v20 = v5;
      v21 = v8;
      v16 = v15;
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = a1;
      *(v17 + 32) = a2;
      aBlock[4] = sub_18214F01C;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181B7D048;
      aBlock[3] = &block_descriptor_80_0;
      v18 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      sub_182AD27B8();
      v22 = MEMORY[0x1E69E7CC0];
      sub_181FE485C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
      sub_181B7CFE4();
      sub_182AD3AC8();
      MEMORY[0x1865DA490](0, v11, v7, v18);
      _Block_release(v18);

      (*(v20 + 8))(v7, v4);
      (*(v9 + 8))(v11, v21);
    }
  }

  return result;
}

uint64_t sub_18214BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_18214BC64()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7Network19MigrationController_lock);
    MEMORY[0x1EEE9AC00](result);
    v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v3));
    sub_18214EFC0((v1 + v2));
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

uint64_t sub_18214BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v8 = sub_182AD27A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_182AD27C8();
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = swift_allocObject();
      v22 = v12;
      v19 = v18;
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = a1;
      aBlock[4] = a5;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181B7D048;
      aBlock[3] = v23;
      v21 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      sub_182AD27B8();
      v25 = MEMORY[0x1E69E7CC0];
      sub_181FE485C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
      sub_181B7CFE4();
      sub_182AD3AC8();
      MEMORY[0x1865DA490](0, v14, v11, v21);
      _Block_release(v21);

      (*(v9 + 8))(v11, v8);
      (*(v24 + 8))(v14, v22);
    }
  }

  return result;
}

uint64_t sub_18214C068()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7Network19MigrationController_lock);
    MEMORY[0x1EEE9AC00](result);
    v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v3));
    sub_18214EF08((v1 + v2));
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

uint64_t sub_18214C168(uint64_t a1, int a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC7Network19MigrationController_lock);
    v7 = v6 + *(*v6 + *MEMORY[0x1E69E6B68] + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    if (*(v7 + 12) - 253 > 1 || !*(v7 + *(type metadata accessor for MigrationController.LockedState(0) + 68)))
    {
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      if (a3)
      {
        v10 = swift_unknownObjectRetain();
        NWError.init(_:)(v10, &v12);
        v11 = v12;
        v9 = v13;
      }

      else
      {
        v9 = 0;
        v11 = 104;
      }

      v12 = v11;
    }

    else
    {
      if (a2 != 2)
      {
LABEL_12:
        os_unfair_lock_unlock((v6 + v8));
      }

      v12 = 0;
      v9 = -3;
    }

    v13 = v9;
    sub_182147980(&v12, v7);
    goto LABEL_12;
  }

  return result;
}

void sub_18214C2B4(uint64_t *a1)
{
  locked = type metadata accessor for MigrationController.LockedState(0);
  if (*(a1 + *(locked + 68)))
  {
    v3 = *(locked + 76);
    v4 = swift_unknownObjectRetain();
    MEMORY[0x1865D9F10](v4);
    if (*((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    sub_182149BF4(a1);
  }
}

void sub_18214C378(uint64_t *a1, void *a2)
{
  locked = type metadata accessor for MigrationController.LockedState(0);
  if (*(a1 + *(locked + 68)))
  {
    v5 = *(a1 + *(locked + 76));
    if (v5 >> 62)
    {
LABEL_19:
      v6 = sub_182AD3EB8();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1865DA790](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [a2 isEqual_];
      swift_unknownObjectRelease();
      if (v9)
      {
        sub_182023364(v7);
        swift_unknownObjectRelease();
        break;
      }

      if (__OFADD__(v7++, 1))
      {
        goto LABEL_18;
      }
    }

    sub_182149BF4(a1);
  }
}

uint64_t MigrationController.State.description.getter()
{
  v1 = *(v0 + 4);
  if (v1 > 0xFD)
  {
    if (v1 != 255)
    {
      if (v1 == 254)
      {
        return 0x6E69726170657250;
      }

      return 0x64656C696146;
    }

    return 0x7075746553;
  }

  else
  {
    if (v1 != 252)
    {
      if (v1 == 253)
      {
        return 0x7964616552;
      }

      return 0x64656C696146;
    }

    return 0x656C6C65636E6143;
  }
}

uint64_t sub_18214C56C()
{
  v1 = *(v0 + 4);
  if (v1 > 0xFD)
  {
    if (v1 != 255)
    {
      if (v1 == 254)
      {
        return 0x6E69726170657250;
      }

      return 0x64656C696146;
    }

    return 0x7075746553;
  }

  else
  {
    if (v1 != 252)
    {
      if (v1 == 253)
      {
        return 0x7964616552;
      }

      return 0x64656C696146;
    }

    return 0x656C6C65636E6143;
  }
}

uint64_t sub_18214C610(int a1, xpc_object_t xuuid, uint64_t a3, uint64_t a4, void *a5)
{
  bytes = xpc_uuid_get_bytes(xuuid);
  if (bytes)
  {
    v10 = bytes;
    if (uuid_is_null(bytes) == 1 || (v13 = *v10, v14 = 0, *&v12 = a3, *(&v12 + 1) = a4, !_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v13, &v12)))
    {
      xpc_array_append_value(a5, xuuid);
    }
  }

  return 1;
}

uint64_t sub_18214C6A0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_18214D49C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_18214C71C(v6);
  return sub_182AD3D18();
}

uint64_t sub_18214C71C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_182AD41A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AA20);
        v6 = sub_182AD3428();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_18214C920(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_18214C82C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18214C82C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v16 = v6;
    while (1)
    {
      v10 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      priority = nw_interface_option_details_get_priority(v8);
      v12 = nw_interface_option_details_get_priority(v10);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v12 >= priority)
      {
LABEL_4:
        ++v4;
        v6 = v16 + 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v13;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18214C920(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18214D2DC(v8);
      v8 = result;
    }

    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = v8;
        v8 = (v87 - 1);
        v89 = *&v88[16 * v87];
        v90 = *&v88[16 * v87 + 24];
        sub_18214CF84((*a3 + 8 * v89), (*a3 + 8 * *&v88[16 * v87 + 16]), (*a3 + 8 * v90), v7);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_18214D2DC(v88);
        }

        if (v87 - 2 >= *(v88 + 2))
        {
          goto LABEL_116;
        }

        v91 = &v88[16 * v87];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_18214D250(v87 - 1);
        v8 = v88;
        v87 = *(v88 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v97 = v5;
      v10 = *(*a3 + 8 * v7);
      v93 = 8 * v9;
      v11 = (*a3 + 8 * v9);
      v13 = *v11;
      v12 = v11 + 2;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      priority = nw_interface_option_details_get_priority(v10);
      v100 = nw_interface_option_details_get_priority(v13);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v95 = v9;
      v14 = v9 + 2;
      while (v6 != v14)
      {
        v16 = *(v12 - 1);
        v15 = *v12;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = v8;
        v18 = nw_interface_option_details_get_priority(v15);
        v7 = nw_interface_option_details_get_priority(v16);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v19 = v7 < v18;
        v8 = v17;
        v20 = !v19;
        ++v14;
        ++v12;
        if ((((v100 < priority) ^ v20) & 1) == 0)
        {
          v6 = v14 - 1;
          break;
        }
      }

      v9 = v95;
      v5 = v97;
      v21 = v93;
      if (v100 < priority)
      {
        if (v6 < v95)
        {
          goto LABEL_119;
        }

        if (v95 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v95;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v21 += 8;
          }

          while (v24 < v23);
        }
      }

      v7 = v6;
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_181F5AD98(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_181F5AD98((v40 > 1), v41 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v44 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_59:
          if (v49)
          {
            goto LABEL_106;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_109;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_113;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_73:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_111;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_80:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = *&v8[16 * v83 + 32];
        v85 = *&v8[16 * v45 + 40];
        sub_18214CF84((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v45 + 32]), (*a3 + 8 * v85), v44);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_18214D2DC(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v86 = &v8[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_18214D250(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_104;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_105;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_107;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_110;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_114;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v94 = v8;
  v96 = v9;
  v98 = v5;
  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v31 = v9 - v7;
  v101 = v28;
LABEL_32:
  v103 = v7;
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = nw_interface_option_details_get_priority(v32);
    v37 = nw_interface_option_details_get_priority(v35);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v37 >= v36)
    {
LABEL_31:
      v7 = v103 + 1;
      v30 += 8;
      --v31;
      if (v103 + 1 != v101)
      {
        goto LABEL_32;
      }

      v7 = v101;
      v9 = v96;
      v5 = v98;
      v8 = v94;
      goto LABEL_39;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v34;
    v32 = *(v34 + 8);
    *v34 = v32;
    *(v34 + 8) = v38;
    v34 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_18214CF84(char *__dst, void **a2, void **a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v22 = a2;
      v23 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v23;
      a2 = v22;
    }

    v37 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v35 = v5;
LABEL_27:
        v36 = a2;
        v24 = a2 - 1;
        --v4;
        v25 = v14;
        v26 = v14;
        do
        {
          v27 = v4 + 1;
          v28 = *--v26;
          v29 = v24;
          v30 = *v24;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          priority = nw_interface_option_details_get_priority(v28);
          v32 = nw_interface_option_details_get_priority(v30);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v32 < priority)
          {
            v33 = v29;
            if (v27 != v36)
            {
              *v4 = *v29;
            }

            v13 = v37;
            v14 = v25;
            if (v25 <= v37 || (a2 = v33, v33 <= v35))
            {
              a2 = v33;
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          if (v27 != v25)
          {
            *v4 = *v26;
          }

          --v4;
          v25 = v26;
          v13 = v37;
          v24 = v29;
        }

        while (v26 > v37);
        v14 = v26;
        a2 = v36;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15;
        v17 = *v13;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = nw_interface_option_details_get_priority(v16);
        v19 = nw_interface_option_details_get_priority(v17);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v19 >= v18)
        {
          break;
        }

        v20 = v15;
        v21 = v5 == v15++;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v13 >= v14 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v5 == v13++;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    a2 = v5;
  }

LABEL_39:
  if (a2 != v13 || a2 >= (v13 + ((v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

uint64_t sub_18214D250(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18214D2DC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_18214D2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838930);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_18214D3F4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_182AD3EB8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_181F85B58(v3, 0);
  sub_182267670(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18214D4B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v32 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v31 = result;
    v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
    sub_182AD44E8();
    v14 = *(v13 + 184);
    v15 = *(v13 + 185);
    MEMORY[0x1865DB070](*(v13 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AF95F0[v14]);
    MEMORY[0x1865DB070](qword_182AF9618[v15]);
    v16 = sub_182AD4558();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_45:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v24 = *(*(a2 + 48) + 8 * v18);
      v25 = *(v24 + 40) == *(v13 + 40) && *(v24 + 48) == *(v13 + 48);
      if (!v25 && (sub_182AD4268() & 1) == 0 || *(v24 + 16) != *(v13 + 16))
      {
        goto LABEL_22;
      }

      v26 = *(v13 + 184);
      if (v26 <= 1)
      {
        if (!*(v13 + 184))
        {
          goto LABEL_15;
        }

        v28 = 2;
      }

      else
      {
        v27 = 4;
        if (v26 != 3)
        {
          v27 = 1;
        }

        v22 = v26 == 2;
        v28 = 3;
        if (!v22)
        {
          v28 = v27;
        }
      }

      if (*(v24 + 184))
      {
        v29 = qword_182AF95F0[*(v24 + 184)] == v28;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        goto LABEL_22;
      }

LABEL_15:
      v20 = *(v24 + 185);
      v21 = *(v13 + 185);
      v22 = qword_182AF9618[v20] == qword_182AF9618[v21] || v20 == 0;
      if (v22 || v21 == 0)
      {
        break;
      }

LABEL_22:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    result = v31;
    v8 = v32;
    v7 = v30;
  }

  while (v30);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL _s7Network19MigrationControllerC5StateO2eeoiySbAE_AEtFZ_0(int *a1, unsigned int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a2 | (*(a2 + 4) << 32);
  if (v2 > 0xFD)
  {
    if (v2 == 254)
    {
      if (BYTE4(v3) != 254)
      {
        return 0;
      }
    }

    else if (BYTE4(v3) != 255)
    {
      return 0;
    }

    return 1;
  }

  if (v2 == 252)
  {
    return BYTE4(v3) == 252;
  }

  if (v2 == 253)
  {
    if (BYTE4(v3) == 253)
    {
      return 1;
    }
  }

  else if (BYTE4(v3) <= 0xFBu)
  {
    v4 = *a1;
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if (BYTE4(v3) == 2 && v4 == *a2)
        {
          return 1;
        }
      }

      else if (BYTE4(v3) == 3 && v4 == *a2)
      {
        return 1;
      }
    }

    else if (v2)
    {
      if (BYTE4(v3) == 1 && v4 == *a2)
      {
        return 1;
      }
    }

    else if (!BYTE4(v3))
    {
      v5 = sub_182AD2768();
      if (v5 == sub_182AD2768())
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18214D878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA58);
    v3 = sub_182AD3B58();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_182AD2F88();
      sub_182AD44E8();
      v27 = v7;
      sub_182AD30E8();
      v8 = sub_182AD4558();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_182AD2F88();
        v18 = v17;
        if (v16 == sub_182AD2F88() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_182AD4268();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_18214DA6C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_35:
    v5 = sub_182AD3EB8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = sub_182AD3EB8();
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (v4)
  {
    result = sub_182AD3EB8();
    v7 = result;
    if (result)
    {
      goto LABEL_7;
    }

    return 1;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return 1;
  }

LABEL_7:
  if (a2 >> 62)
  {
    result = sub_182AD3EB8();
    v4 = result;
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = v3 & 0xC000000000000001;
  v14 = v3 + 32;
  v15 = v3 & 0xFFFFFFFFFFFFFF8;
  v17 = v7;
  v18 = v3;
  v16 = v3 & 0xC000000000000001;
  while (v9)
  {
    result = MEMORY[0x1865DA790](v8, v3);
    v10 = result;
    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      goto LABEL_38;
    }

LABEL_19:
    v3 = 0;
    do
    {
      if (v4 == v3)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1865DA790](v3, a2);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v3 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v12 = *(a2 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v3, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      v13 = [v10 isEqual_];
      swift_unknownObjectRelease();
      ++v3;
    }

    while (!v13);
    swift_unknownObjectRelease();
    result = 1;
    v3 = v18;
    v9 = v16;
    if (v8 == v17)
    {
      return result;
    }
  }

  if (v8 >= *(v15 + 16))
  {
    goto LABEL_39;
  }

  v10 = *(v14 + 8 * v8);
  result = swift_unknownObjectRetain();
  v11 = __OFADD__(v8++, 1);
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_18214DC78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA50);
    v3 = sub_182AD3B58();
    v4 = 0;
    v5 = v3 + 56;
    v25 = a1 + 32;
    v26 = v1;
    while (1)
    {
      v27 = v4;
      v7 = *(v25 + 8 * v4);
      sub_182AD44E8();
      v8 = *(v7 + 184);
      v9 = *(v7 + 185);
      MEMORY[0x1865DB070](*(v7 + 16));

      sub_182AD30E8();
      MEMORY[0x1865DB070](qword_182AF95F0[v8]);
      MEMORY[0x1865DB070](qword_182AF9618[v9]);
      result = sub_182AD4558();
      v11 = ~(-1 << *(v3 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) != 0)
      {
        while (1)
        {
          v16 = *(*(v3 + 48) + 8 * v12);
          result = *(v16 + 40);
          if (result != *(v7 + 40) || *(v16 + 48) != *(v7 + 48))
          {
            result = sub_182AD4268();
            if ((result & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          if (*(v16 + 16) != *(v7 + 16))
          {
            goto LABEL_7;
          }

          v18 = *(v7 + 184);
          if (v18 > 1)
          {
            break;
          }

          if (*(v7 + 184))
          {
            v20 = 2;
            goto LABEL_23;
          }

LABEL_28:
          if (qword_182AF9618[*(v16 + 185)] == qword_182AF9618[*(v7 + 185)] || !*(v16 + 185) || !*(v7 + 185))
          {

            v6 = v26;
            goto LABEL_4;
          }

LABEL_7:
          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_32;
          }
        }

        if (v18 == 3)
        {
          v19 = 4;
        }

        else
        {
          v19 = 1;
        }

        if (v18 == 2)
        {
          v20 = 3;
        }

        else
        {
          v20 = v19;
        }

LABEL_23:
        if (*(v16 + 184))
        {
          v21 = qword_182AF95F0[*(v16 + 184)] == v20;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
      }

LABEL_32:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v7;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      v6 = v26;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      v4 = v27 + 1;
      if (v27 + 1 == v6)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_18214DF20(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  locked = type metadata accessor for MigrationController.LockedState(0);
  v7 = (locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v10 = OBJC_IVAR____TtC7Network19MigrationController_lock;
  *v9 = 0;
  v9[12] = -1;
  *(v9 + 2) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v9 + 2) = MEMORY[0x1E69E7CC0];
  *(v9 + 3) = v11;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0x200000000;
  *(v9 + 2) = 0u;
  v12 = v7[16];
  v13 = sub_182AD2868();
  (*(*(v13 - 8) + 56))(&v9[v12], 1, 1, v13);
  *&v9[v7[17]] = 0;
  v14 = v7[18];
  v15 = type metadata accessor for NWEndpoint();
  (*(*(v15 - 8) + 56))(&v9[v14], 1, 1, v15);
  *&v9[v7[19]] = 0;
  *&v9[v7[20]] = 0;
  *&v9[v7[21]] = v11;
  *&v9[v7[22]] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AA40);
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_181D8DCF0(v9, v16 + *(*v16 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for MigrationController.LockedState);
  *(v3 + v10) = v16;
  *(v3 + 16) = v23;
  *(v3 + 32) = a2;
  sub_181FE4EE0(a2 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, v3 + OBJC_IVAR____TtC7Network19MigrationController_endpoint);
  v17 = *(*(a2 + OBJC_IVAR____TtC7Network13_NWConnection_parameters) + 16);

  os_unfair_lock_lock((v17 + 24));
  v18 = nw_parameters_copy(*(v17 + 16));
  type metadata accessor for NWParameters();
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v18;
  *(v19 + 16) = v20;
  os_unfair_lock_unlock((v17 + 24));

  *(v3 + OBJC_IVAR____TtC7Network19MigrationController_parameters) = v19;
  v22 = *(v3 + 16);
  sub_182145E9C(&v22);
  return v3;
}

uint64_t sub_18214E240(uint64_t a1)
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  locked = type metadata accessor for MigrationController.LockedState(0);
  v5 = (locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network19MigrationController_lock;
  *v7 = 0;
  *(v7 + 12) = -1;
  *(v7 + 8) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  *(v7 + 24) = v9;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0x200000000;
  *(v7 + 32) = 0u;
  v10 = v5[16];
  v11 = sub_182AD2868();
  (*(*(v11 - 8) + 56))(v7 + v10, 1, 1, v11);
  *(v7 + v5[17]) = 0;
  v12 = v5[18];
  v13 = type metadata accessor for NWEndpoint();
  (*(*(v13 - 8) + 56))(v7 + v12, 1, 1, v13);
  *(v7 + v5[19]) = 0;
  *(v7 + v5[20]) = 0;
  *(v7 + v5[21]) = v9;
  *(v7 + v5[22]) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AA40);
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_181D8DCF0(v7, v14 + *(*v14 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for MigrationController.LockedState);
  *(v2 + v8) = v14;
  *(v2 + 32) = a1;
  sub_181FE4EE0(a1 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, v2 + OBJC_IVAR____TtC7Network19MigrationController_endpoint);
  v15 = *(*(a1 + OBJC_IVAR____TtC7Network13_NWConnection_parameters) + 16);

  os_unfair_lock_lock((v15 + 24));
  v16 = nw_parameters_copy(*(v15 + 16));
  type metadata accessor for NWParameters();
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v16;
  *(v17 + 16) = v18;
  os_unfair_lock_unlock((v15 + 24));

  v19 = OBJC_IVAR____TtC7Network19MigrationController_parameters;
  *(v2 + OBJC_IVAR____TtC7Network19MigrationController_parameters) = v17;

  os_unfair_lock_lock((v18 + 24));
  v20 = *(v18 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v18 + 24));

  LOBYTE(v7) = nw_parameters_has_migration_controller_session_uuid(v20);
  swift_unknownObjectRelease();
  if (v7)
  {
    v25 = 0uLL;
    v21 = *(*(v2 + v19) + 16);

    os_unfair_lock_lock((v21 + 24));
    v22 = *(v21 + 16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v21 + 24));

    nw_parameters_get_migration_controller_session_uuid(v22);
    swift_unknownObjectRelease();
    *(v2 + 16) = v25;
    v24 = *(v2 + 16);
    sub_182145E9C(&v24);
    return v2;
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

void sub_18214E6DC(uint64_t a1)
{
  if (*(a1 + 12) << 32 != 0xFC00000000)
  {
    v5 = v1;
    v6 = v2;
    v3 = 0;
    v4 = -4;
    sub_18214694C(&v3, a1);
  }
}

uint64_t sub_18214E754()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MigrationController.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 5))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 4);
  if (v3 > 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MigrationController.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 4) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -4 - a2;
    }
  }

  return result;
}

uint64_t sub_18214E8D0(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18214E8E4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
  }

  else if (a2)
  {
    *(result + 4) = -a2;
  }

  return result;
}

void sub_18214E964()
{
  sub_18214ED04(319, &unk_1EA836E70, &qword_1EA836F30);
  if (v0 <= 0x3F)
  {
    sub_181AA2C74();
    if (v1 <= 0x3F)
    {
      sub_18214EDA4(319, &qword_1EA83A9A8, &qword_1EA83A9B0, &unk_182AF9560, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_18214EDA4(319, qword_1ED40FBF0, &unk_1EA8397F0, &unk_182AE5F58, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_18214EDA4(319, &qword_1EA83A9B8, &qword_1EA83A9C0, &unk_182AF9578, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_18214EDA4(319, &qword_1EA83A9C8, &unk_1EA83A9D0, &unk_182AF9588, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for nw_agent_state_t(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for nw_agent_option_t(319);
                if (v7 <= 0x3F)
                {
                  sub_18214ECB0(319, qword_1ED4105A8, MEMORY[0x1E69E7FD0]);
                  if (v8 <= 0x3F)
                  {
                    sub_18214EDA4(319, &qword_1EA83A9E0, &unk_1EA83A9E8, &unk_182AF9598, MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_18214ECB0(319, &qword_1ED40F5C0, type metadata accessor for NWEndpoint);
                      if (v10 <= 0x3F)
                      {
                        sub_18214EDA4(319, &qword_1EA83A9F8, &qword_1EA83AA00, &unk_182AF95A8, MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_18214ED04(319, &qword_1EA83AA08, &qword_1EA83AA10);
                          if (v12 <= 0x3F)
                          {
                            sub_18214EDA4(319, &qword_1EA83AA18, &unk_1EA83AA20, &unk_182AF95B8, MEMORY[0x1E69E62F8]);
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_18214ECB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_182AD39B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18214ED04(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_18214ED5C(255, a3);
    v4 = sub_182AD39B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18214ED5C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_18214EDA4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_18214EE08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 44);
  v5 = v3;
  return v1(v2, &v5);
}

void sub_18214EF30(uint64_t a1)
{
  if (*(a1 + 12) << 32 == 0xFD00000000)
  {
    sub_182144E30(a1);
  }
}

uint64_t objectdestroy_33Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_23Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18214F054(uint64_t a1)
{
  v2 = *(v1 + 24);
  v5 = *(v1 + 28);
  v4 = v2;
  return sub_18214694C(&v4, a1);
}

uint64_t sub_18214F1A4(__int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + 16) != a1 || HIBYTE(a1) != *(v4 + 17))
  {
    return 0;
  }

  if (*(v4 + 40))
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }

    v7 = *(v4 + 24) == a2 && *(v4 + 32) == a3;
    if (!v7 && (sub_182AD4268() & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 1) != 0 || *(v4 + 24) != a2)
  {
    return 0;
  }

  return 1;
}

uint64_t _nw_protocol_metadata_create(uint64_t a1, const unsigned __int8 *a2)
{
  v3 = swift_unknownObjectRetain();
  v4 = sub_18214F274(v3, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_18214F274(uint64_t a1, const unsigned __int8 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  swift_unknownObjectRetain();
  if (uuid_is_null(a2) == 1)
  {
    v16 = 0uLL;
    nw_uuid_generate_insecure_5(&v16);
    v4 = v16;
  }

  else
  {
    v4 = *a2;
  }

  v15 = v4;
  v5 = swift_unknownObjectRetain();
  sub_181AA82B4(&v16, v5, 0, 0, 0, 255, a1);
  v6 = v16;
  v7 = BYTE1(v16);
  v8 = *(&v16 + 1);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  if (v19)
  {
    type metadata accessor for CProtocol.CMetadata();
    swift_allocObject();
    sub_181F49A24(v8, v9, v10);
    v12 = swift_unknownObjectRetain();
    v11 = sub_181A92460(v12);
  }

  else
  {
    sub_181F49A24(*(&v16 + 1), v17, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA60);
  v13 = swift_allocObject();
  *(v13 + 57) = 0;
  *(v13 + 64) = 0;
  *(v13 + 16) = v6;
  *(v13 + 17) = v7;
  *(v13 + 24) = v8;
  *(v13 + 32) = v9;
  *(v13 + 40) = v10;
  *(v13 + 41) = v15;
  swift_beginAccess();
  *(v13 + 64) = v11;
  sub_181A93268(&v16);
  *(v13 + 57) = 1;
  return v13;
}

uint64_t sub_18214F430(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_18214F564(a1);
  v6 = v5;
  v7 = sub_18214F564(a2);
  v9 = v8;
  if (a3 >= 5)
  {
    LOBYTE(a3) = 0;
  }

  ObjectType = swift_getObjectType();
  v13 = a3;
  v11 = (*(v6 + 24))(v7, v9, &v13, ObjectType, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11 & 1;
}

uint64_t _nw_protocol_metadata_get_handle_0(uint64_t a1)
{
  v2 = *(a1 + 57);

  if (v2 == 1)
  {
    swift_beginAccess();
    v3 = *(a1 + 64);

    if (v3)
    {
      v4 = *(v3 + 24);

      return v4;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_18214F564(uint64_t a1)
{
  v2 = *(a1 + 57);

  if (v2 != 1)
  {
    v6 = *(a1 + 24);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v72 = *(a1 + 17);
    v73 = *(a1 + 16);
    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v7;
    v74 = v7;
    sub_181F49A24(v6, v5, v7);
    if (qword_1ED410100 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED411CF8;
    v9 = unk_1ED411D00;
    v10 = byte_1ED411D08;
    v75 = word_1ED411CF0;
    v76 = qword_1ED411CF8;
    v77 = unk_1ED411D00;
    v78 = byte_1ED411D08;
    v11 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v12 = v76;
    v13 = v77;
    v14 = v78;
    sub_181F49A24(v8, v9, v10);
    sub_181F48350(v12, v13, v14);
    if (v11)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1EA83AA98;
      v4 = &unk_1EA83AAA0;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED4100F8 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED411CD8;
    v16 = unk_1ED411CE0;
    v17 = byte_1ED411CE8;
    v75 = word_1ED411CD0;
    v76 = qword_1ED411CD8;
    v77 = unk_1ED411CE0;
    v78 = byte_1ED411CE8;
    v18 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v19 = v76;
    v20 = v77;
    v21 = v78;
    sub_181F49A24(v15, v16, v17);
    sub_181F48350(v19, v20, v21);
    if (v18)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1ED40F6C0;
      v4 = &unk_1EA83B9A0;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED4100E8 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED411CB8;
    v23 = qword_1ED411CC0;
    v24 = byte_1ED411CC8;
    v75 = word_1ED411CB0;
    v76 = qword_1ED411CB8;
    v77 = qword_1ED411CC0;
    v78 = byte_1ED411CC8;
    v25 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v26 = v76;
    v27 = v77;
    v28 = v78;
    sub_181F49A24(v22, v23, v24);
    sub_181F48350(v26, v27, v28);
    if (v25)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1ED40F6C8;
      v4 = &unk_1EA83A390;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED410110 != -1)
    {
      swift_once();
    }

    v29 = qword_1ED410150;
    v30 = unk_1ED410158;
    v31 = byte_1ED410160;
    v75 = word_1ED410148;
    v76 = qword_1ED410150;
    v77 = unk_1ED410158;
    v78 = byte_1ED410160;
    v32 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v33 = v76;
    v34 = v77;
    v35 = v78;
    sub_181F49A24(v29, v30, v31);
    sub_181F48350(v33, v34, v35);
    if (v32)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &qword_1EA836960;
      v4 = &unk_1EA838D58;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED40FF48 != -1)
    {
      swift_once();
    }

    v36 = qword_1ED411C88;
    v37 = unk_1ED411C90;
    v38 = byte_1ED411C98;
    v75 = word_1ED411C80;
    v76 = qword_1ED411C88;
    v77 = unk_1ED411C90;
    v78 = byte_1ED411C98;
    v39 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v40 = v76;
    v41 = v77;
    v42 = v78;
    sub_181F49A24(v36, v37, v38);
    sub_181F48350(v40, v41, v42);
    if (v39)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1EA83AA88;
      v4 = &unk_1EA83AA90;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v43 = qword_1ED411D48;
    v44 = unk_1ED411D50;
    v45 = byte_1ED411D58;
    v75 = word_1ED411D40;
    v76 = qword_1ED411D48;
    v77 = unk_1ED411D50;
    v78 = byte_1ED411D58;
    v46 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v47 = v76;
    v48 = v77;
    v49 = v78;
    sub_181F49A24(v43, v44, v45);
    sub_181F48350(v47, v48, v49);
    if (v46)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1EA836828;
      v4 = &unk_1EA83A950;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED40FF60 != -1)
    {
      swift_once();
    }

    v50 = qword_1ED411C30;
    v51 = unk_1ED411C38;
    v52 = byte_1ED411C40;
    v75 = word_1ED411C28;
    v76 = qword_1ED411C30;
    v77 = unk_1ED411C38;
    v78 = byte_1ED411C40;
    v53 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v54 = v76;
    v55 = v77;
    v56 = v78;
    sub_181F49A24(v50, v51, v52);
    sub_181F48350(v54, v55, v56);
    if (v53)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1ED40FBE0;
      v4 = &unk_1EA83AA80;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED40FDA0 != -1)
    {
      swift_once();
    }

    v57 = qword_1ED40FDB0;
    v58 = unk_1ED40FDB8;
    v59 = byte_1ED40FDC0;
    v75 = word_1ED40FDA8;
    v76 = qword_1ED40FDB0;
    v77 = unk_1ED40FDB8;
    v78 = byte_1ED40FDC0;
    v60 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v61 = v76;
    v62 = v77;
    v63 = v78;
    sub_181F49A24(v57, v58, v59);
    sub_181F48350(v61, v62, v63);
    if (v60)
    {
      sub_181F48350(v6, v5, v74);
      v3 = &unk_1EA83AA78;
      v4 = &unk_1EA83A3D0;
      goto LABEL_39;
    }

    v79 = v73;
    v80 = v72;
    v81 = v6;
    v82 = v5;
    v83 = v74;
    if (qword_1ED40FCD8 != -1)
    {
      swift_once();
    }

    v64 = qword_1ED411AF0;
    v65 = unk_1ED411AF8;
    v66 = byte_1ED411B00;
    v75 = word_1ED411AE8;
    v76 = qword_1ED411AF0;
    v77 = unk_1ED411AF8;
    v78 = byte_1ED411B00;
    v67 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v79, &v75);
    v68 = v76;
    v69 = v77;
    v70 = v78;
    sub_181F49A24(v64, v65, v66);
    sub_181F48350(v68, v69, v70);
    sub_181F48350(v6, v5, v74);
    if (v67)
    {
      v3 = &unk_1EA83AA68;
      v4 = &unk_1EA83AA70;
      goto LABEL_39;
    }
  }

  v3 = &qword_1ED40FBD8;
  v4 = &qword_1EA83AA60;
LABEL_39:
  sub_18214FD4C(v3, v4);
  return a1;
}

uint64_t sub_18214FD4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18214FE24()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA843360);
  __swift_project_value_buffer(v0, qword_1EA843360);
  return sub_182AD2688();
}

uint64_t sub_18214FECC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v44 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10);
  v8 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v44 - v9;
  if (qword_1EA836920 != -1)
  {
LABEL_18:
    swift_once();
  }

  v10 = sub_182AD2698();
  __swift_project_value_buffer(v10, qword_1EA836930);

  v11 = sub_182AD2678();
  v12 = sub_182AD38D8();

  v13 = os_log_type_enabled(v11, v12);
  v47 = v7;
  v48 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v53 = 67;
    v54 = 0xE100000000000000;
    v55 = v15;
    id = nw_connection_get_id(*(*(v1 + 16) + 16));
    v16 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v16);

    v17 = sub_181C64FFC(v53, v54, &v55);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_181A37000, v11, v12, "%s: Invalidating", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1865DF520](v15, -1, -1);
    MEMORY[0x1865DF520](v14, -1, -1);
  }

  v18 = *(v1 + 80);
  MEMORY[0x1EEE9AC00](v19);
  v44[-2] = sub_182160CAC;
  v44[-1] = v1;
  os_unfair_lock_lock(v18 + 4);
  sub_181FCD36C(&v53);
  os_unfair_lock_unlock(v18 + 4);
  nw_connection_cancel(*(v53 + 16));

  MEMORY[0x1EEE9AC00](v20);
  v44[-2] = sub_182160CCC;
  v44[-1] = v1;
  v46 = v1;
  os_unfair_lock_lock(v18 + 4);
  sub_181FCCB84(&v53);
  v44[1] = 0;
  v45 = v18;
  os_unfair_lock_unlock(v18 + 4);
  v21 = v53;
  v1 = 0;
  v4 = (v53 + 64);
  v22 = *(v53 + 64);
  v23 = 1 << *(v53 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v7 = (v8 + 8);
  v51 = xmmword_182AE69F0;
  v27 = v50;
  if ((v24 & v22) != 0)
  {
    while (1)
    {
      v28 = v1;
LABEL_12:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = v49;
      (*(v8 + 16))(v49, *(v21 + 56) + *(v8 + 72) * (v29 | (v28 << 6)), v27);
      sub_181FCD1A0();
      v31 = swift_allocError();
      *v32 = v51;
      *(v32 + 16) = 0xB000000000000000;
      v53 = v31;
      sub_182AD34B8();
      (*(v8 + 8))(v30, v27);
      if (!v25)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v28 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *&v4[8 * v28];
    ++v1;
    if (v25)
    {
      v1 = v28;
      goto LABEL_12;
    }
  }

  MEMORY[0x1EEE9AC00](v33);
  v35 = v45;
  v34 = v46;
  v44[-2] = sub_182160CE8;
  v44[-1] = v34;
  os_unfair_lock_lock(v35 + 4);
  v36 = v47;
  sub_182160DA4(v37);
  os_unfair_lock_unlock(v35 + 4);
  v38 = v48;
  sub_181AB5D28(v36, v48, &qword_1EA83AAE8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAC8);
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_181F49A88(v36, &qword_1EA83AAE8);
    return sub_181F49A88(v38, &qword_1EA83AAE8);
  }

  else
  {
    sub_181FCD1A0();
    v42 = swift_allocError();
    *v43 = v51;
    *(v43 + 16) = 0xB000000000000000;
    v53 = v42;
    sub_182AD34B8();
    sub_181F49A88(v36, &qword_1EA83AAE8);
    return (*(v40 + 8))(v38, v39);
  }
}

uint64_t sub_1821504E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 320) = v20;
  *(v9 + 328) = v8;
  *(v9 + 304) = a7;
  *(v9 + 312) = v19;
  *(v9 + 288) = a2;
  *(v9 + 296) = a4;
  *(v9 + 280) = a1;
  *(v9 + 336) = *v8;
  *(v9 + 344) = type metadata accessor for NWFileSerializationContext(0);
  *(v9 + 352) = swift_task_alloc();
  v15 = sub_182AD39B8();
  *(v9 + 360) = v15;
  *(v9 + 368) = *(v15 - 8);
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = *(v19 - 8);
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 264) = *a6;
  v16 = swift_task_alloc();
  *(v9 + 400) = v16;
  *v16 = v9;
  v16[1] = sub_1821506E4;

  return sub_182151ADC(v9 + 16, a3, a4, a5, (v9 + 264), a8);
}

uint64_t sub_1821506E4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_182150C2C;
  }

  else
  {
    v2 = sub_1821507F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821507F8()
{
  v1 = v0[38];
  v2 = swift_conformsToProtocol2();
  v3 = v0[51];
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v10 = v0[2];
    v11 = v0[3];
    v12 = *(v2 + 24);
    v0[26] = v1;
    v0[27] = v2;
    v13 = v2;
    __swift_allocate_boxed_opaque_existential_0Tm(v0 + 23);
    sub_182160360((v0 + 2), (v0 + 16));
    v12(v10, v11, v1, v13);
    if (v3)
    {
      __swift_deallocate_boxed_opaque_existential_1Tm((v0 + 23));
      goto LABEL_14;
    }

    sub_181F75240((v0 + 23), (v0 + 28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB60);
    if (!swift_dynamicCast())
    {
      v21 = v0[47];
      v22 = v0[45];
      v23 = v0[46];
      (*(v0[48] + 56))(v21, 1, 1, v0[39]);
      (*(v23 + 8))(v21, v22);
      v24 = sub_182AD3C98();
      v25 = swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40);
      __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
      *v27 = swift_getDynamicType();
      sub_182AD3C88();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      v3 = v25;
      __swift_destroy_boxed_opaque_existential_1((v0 + 23));
      goto LABEL_14;
    }

    v15 = v0[48];
    v14 = v0[49];
    v16 = v0[47];
    v17 = v0[39];
    v18 = v0[35];
    sub_181FCD3B0((v0 + 2));
    (*(v15 + 56))(v16, 0, 1, v17);
    v19 = *(v15 + 32);
    v19(v14, v16, v17);
    v19(v18, v14, v17);
    __swift_destroy_boxed_opaque_existential_1((v0 + 23));
LABEL_12:

    v20 = v0[1];
    goto LABEL_15;
  }

  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[41];
  v9 = v0[36];
  v8 = v0[37];
  v6[3] = v0[42];
  v6[4] = &off_1EEFC3108;
  *v6 = v7;
  sub_181D8E250(v8, v6 + *(v5 + 20), type metadata accessor for NWActorID);

  sub_181F80CAC(v9, v6);
  sub_18215FB58(v6, type metadata accessor for NWFileSerializationContext);
  sub_182160360((v0 + 2), (v0 + 9));
  sub_182AD1C18();
  sub_181FCD3B0((v0 + 2));

  if (!v3)
  {
    sub_181FCD3B0((v0 + 2));
    goto LABEL_12;
  }

LABEL_14:
  sub_181FCD1A0();
  swift_allocError();
  *v28 = v3;
  *(v28 + 8) = xmmword_182AF9680;
  swift_willThrow();
  sub_181FCD3B0((v0 + 2));

  v20 = v0[1];
LABEL_15:

  return v20();
}

uint64_t sub_182150C2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_182150CDC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 80);
  os_unfair_lock_lock(v4 + 4);
  sub_182160DBC(v5);
  os_unfair_lock_unlock(v4 + 4);
  type metadata accessor for NWActivity();
  v6 = swift_allocObject();
  v7 = nw_activity_create(57, 1);
  *(v6 + 16) = v7;
  *(v6 + 24) = xmmword_182AF9690;
  nw_activity_set_parent_activity(v7, *(*(a2 + 112) + 16));
  nw_activity_activate(v7);
  os_unfair_lock_lock(v4 + 4);
  sub_182160DBC(v8);
  os_unfair_lock_unlock(v4 + 4);
  v9 = swift_allocObject();
  swift_weakInit();

  sub_181AA39C0(sub_1821603DC);
  NWConnection.stateUpdateHandler.setter(sub_1821603DC, v9);

  if (qword_1EA8369A0 != -1)
  {
    swift_once();
  }

  NWConnection.start(queue:)(qword_1EA8369B0);
}

uint64_t sub_182150E88()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA836930);
  v1 = __swift_project_value_buffer(v0, qword_1EA836930);
  if (qword_1EA836BD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EA8431B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_182150F50()
{
  v0 = sub_182AD2698();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_182AD2618();
  __swift_allocate_value_buffer(v4, qword_1EA8369D8);
  __swift_project_value_buffer(v4, qword_1EA8369D8);
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EA836930);
  (*(v1 + 16))(v3, v5, v0);
  return sub_182AD25F8();
}

uint64_t sub_18215108C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection__associatedActorIDs;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

uint64_t sub_1821510F0()
{
  v0 = sub_182AD3918();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_18214ED5C(0, &qword_1EA836F30);
  sub_182AD27B8();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_18216065C(&unk_1EA836B40, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70);
  sub_181FCCB9C();
  sub_182AD3AC8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_182AD3938();
  qword_1EA8369B0 = result;
  return result;
}

uint64_t sub_182151338()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAF8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = objc_opt_self();
  v8 = [v7 megabytes];
  sub_18214ED5C(0, &unk_1EA83AB00);
  sub_182AD1CA8();
  v9 = [v7 bytes];
  sub_182AD1CC8();

  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_182AD1CB8();
  v12 = v11;
  v13 = v11;
  result = (v10)(v6, v0);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 9.22337204e18)
  {
    qword_1EA83AAA8 = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_182151528()
{
  result = os_variant_has_internal_content();
  byte_1EA83AAB0 = result;
  return result;
}

uint64_t sub_182151550()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAF0);
  swift_allocObject();
  result = sub_182AD46B8();
  qword_1EA83AAB8 = result;
  return result;
}

unint64_t sub_1821515AC()
{
  sub_182AD3BA8();

  v10 = 0xD000000000000010;
  v11 = 0x8000000182BDEE70;
  v9[0] = 67;
  v9[1] = 0xE100000000000000;
  nw_connection_get_id(*(*(v0 + 16) + 16));
  v1 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v1);

  MEMORY[0x1865D9CA0](67, 0xE100000000000000);

  MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
  v2 = *(v0 + 80);
  os_unfair_lock_lock(v2 + 4);
  sub_181FCE618(v9);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v9[0];
  v4 = type metadata accessor for NWActorID();
  v5 = MEMORY[0x1865D9F40](v3, v4);
  v7 = v6;

  MEMORY[0x1865D9CA0](v5, v7);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  return v10;
}

uint64_t sub_182151708(uint64_t a1, char a2)
{
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = 0;
  *(v2 + 80) = v5;
  *(v2 + 88) = v6;
  *(v2 + 96) = v6;
  v7 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_resolvedActorIDContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAC8);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v9 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection__associatedActorIDs) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_isDisconnected) = 0;
  *(v2 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_interruptionHandlers) = v9;
  *(v2 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_connectionEstablishedActivity) = 0;
  *(v2 + 16) = a1;
  *(v2 + 72) = a2;
  return v2;
}

void sub_182151810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  os_unfair_lock_lock(v2 + 4);
  sub_182160DBC(v3);
  os_unfair_lock_unlock(v2 + 4);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_181AA39C0(sub_182160D88);
  NWConnection.stateUpdateHandler.setter(sub_182160D88, v4);

  if (qword_1EA8369A0 != -1)
  {
    swift_once();
  }

  NWConnection.start(queue:)(qword_1EA8369B0);
}

uint64_t sub_182151920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAC8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_resolvedActorIDContinuation;
  swift_beginAccess();
  sub_182160968(v6, a1 + v9);
  return swift_endAccess();
}

uint64_t sub_182151A60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 88);

  *(a1 + 88) = sub_18225B36C(MEMORY[0x1E69E7CC0]);

  *a2 = v4;
  return result;
}

uint64_t sub_182151ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v8 = v6;
  *(v7 + 400) = a6;
  *(v7 + 408) = v8;
  *(v7 + 384) = a3;
  *(v7 + 392) = a4;
  *(v7 + 368) = a1;
  *(v7 + 376) = a2;
  *(v7 + 416) = *v8;
  *(v7 + 424) = type metadata accessor for RemoteCallEnvelope(0);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_182151BB0, 0, 0);
}

uint64_t sub_182151BB0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 384);
  v5 = *(v1 + 16);
  *(v0 + 456) = v5;
  v6 = *(v3 + 112);
  *(v0 + 464) = v6;
  v7 = *(v5 + 16);
  v8 = *(v6 + 16);
  *(v0 + 192) = swift_getObjectType();
  *(v0 + 168) = v8;
  swift_unknownObjectRetain();
  *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A440);
  swift_dynamicCast();
  nw_connection_start_activity(v7, *(v0 + 328));
  swift_unknownObjectRelease();
  *(v0 + 128) = v1;
  *(v0 + 152) = v2;
  *(v0 + 160) = &off_1EEFC3108;

  v9 = sub_181F74ED8(v0 + 128, v4);
  v10 = *(v0 + 432);
  v28 = *(v0 + 440);
  v11 = *(v0 + 424);
  v26 = *(v0 + 384);
  v12 = *(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  is_selected_for_reporting = nw_activity_is_selected_for_reporting(*(v6 + 16));
  v13 = sub_182AD2258();
  (*(*(v13 - 8) + 16))(v10, v12, v13);
  sub_181D8E250(v26, v10 + v11[5], type metadata accessor for NWActorID);
  v14 = sub_182AD22C8();
  v15 = (v10 + v11[6]);
  *v15 = v14;
  v15[1] = v16;
  *(v10 + v11[7]) = v28;
  *(v10 + v11[8]) = v9;
  *(v10 + v11[9]) = is_selected_for_reporting;

  v17 = sub_1822A1E28();
  *(v0 + 480) = v17;
  *(v0 + 488) = v18;
  v20 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(v18);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_11;
  }

  v23 = *(v17 + 16);
  v22 = *(v17 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v24)
  {
    __break(1u);
LABEL_8:
    LODWORD(v21) = HIDWORD(v17) - v17;
    if (__OFSUB__(HIDWORD(v17), v17))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v17, v18, v19);
    }

    v21 = v21;
  }

LABEL_11:
  *(v0 + 496) = v21;
  v18 = *(v0 + 400);
  v17 = sub_182151F38;
  v19 = 0;

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_182151F60()
{
  v2 = v0[60];
  v1 = v0[61];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[47];
  v8 = swift_task_alloc();
  v0[63] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = v2;
  *(v8 + 48) = v1;
  *(v8 + 56) = 3;
  *(v8 + 64) = v6;
  *(v8 + 72) = v3;
  v9 = swift_task_alloc();
  v0[64] = v9;
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v5;
  v10 = swift_task_alloc();
  v0[65] = v10;
  *v10 = v0;
  v10[1] = sub_1821520A0;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_182AF9898, v8, sub_18215FCA8, v9, 0, 0, &_s15ActorConnectionC11ReplyResultVN);
}

uint64_t sub_1821520A0()
{
  *(*v1 + 528) = v0;

  if (v0)
  {

    v2 = sub_182152318;
  }

  else
  {
    v2 = sub_1821521C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821521C4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 368);
  sub_181C1F2E4(*(v0 + 480), *(v0 + 488));
  sub_18215FB58(v3, type metadata accessor for RemoteCallEnvelope);
  v5 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v5;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  *(v0 + 320) = swift_getObjectType();
  *(v0 + 296) = v7;
  swift_unknownObjectRetain();
  swift_dynamicCast();
  nw_connection_end_activity(v6, *(v0 + 360));
  swift_unknownObjectRelease();
  v8 = *(v0 + 72);
  v9 = *(v0 + 88);
  v10 = *(v0 + 104);
  *(v4 + 48) = *(v0 + 120);
  *(v4 + 16) = v9;
  *(v4 + 32) = v10;
  *v4 = v8;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_182152318()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  sub_181C1F2E4(*(v0 + 480), *(v0 + 488));
  sub_18215FB58(v3, type metadata accessor for RemoteCallEnvelope);
  v4 = *(v2 + 16);
  v5 = *(v1 + 16);
  *(v0 + 288) = swift_getObjectType();
  *(v0 + 264) = v5;
  swift_unknownObjectRetain();
  swift_dynamicCast();
  nw_connection_end_activity(v4, *(v0 + 352));
  swift_unknownObjectRelease();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_18215240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 384) = a8;
  *(v8 + 392) = v13;
  *(v8 + 67) = a7;
  *(v8 + 368) = a5;
  *(v8 + 376) = a6;
  *(v8 + 352) = a3;
  *(v8 + 360) = a4;
  *(v8 + 336) = a1;
  *(v8 + 344) = a2;
  v9 = sub_182AD2258();
  *(v8 + 400) = v9;
  *(v8 + 408) = *(v9 - 8);
  *(v8 + 416) = swift_task_alloc();
  v10 = sub_182AD22D8();
  *(v8 + 424) = v10;
  *(v8 + 432) = *(v10 - 8);
  *(v8 + 440) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182152540, 0, 0);
}

uint64_t sub_182152540()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 67);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 344);
  v8 = swift_task_alloc();
  *(v0 + 448) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 48) = v6;
  *(v8 + 56) = v2;
  *(v8 + 64) = v1;
  v9 = swift_task_alloc();
  *(v0 + 456) = v9;
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = sub_18215FF1C;
  v9[5] = v8;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_182152690;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000024, 0x8000000182BDEF20, sub_18215FF48, v9, &_s15ActorConnectionC11ReplyResultVN);
}

uint64_t sub_182152690()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_182152B18;
  }

  else
  {
    v2 = sub_1821527A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821527A4()
{
  v37 = v0;
  v1 = *(v0 + 32);
  *(v0 + 288) = *(v0 + 16);
  v2 = *(v0 + 48);
  *(v0 + 480) = v1;
  *(v0 + 496) = v2;
  *(v0 + 68) = *(v0 + 64);
  *(v0 + 66) = *(v0 + 65);
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 400);
  v8 = *(v0 + 408);
  v9 = *(v0 + 384);
  v10 = *(v0 + 352);
  v11 = sub_182AD2698();
  __swift_project_value_buffer(v11, qword_1EA836930);
  (*(v4 + 16))(v3, v9, v5);
  (*(v8 + 16))(v6, v10, v7);
  v12 = sub_182AD2678();
  v13 = sub_182AD38D8();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 432);
  v16 = *(v0 + 440);
  v17 = *(v0 + 416);
  v18 = *(v0 + 424);
  v20 = *(v0 + 400);
  v19 = *(v0 + 408);
  if (v14)
  {
    log = v12;
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v21 = 136315394;
    sub_18216065C(&qword_1EA8397B0, MEMORY[0x1E69E8168]);
    v22 = sub_182AD41B8();
    v33 = v13;
    v24 = v23;
    (*(v15 + 8))(v16, v18);
    v25 = sub_181C64FFC(v22, v24, &v36);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
    v26 = sub_182AD41B8();
    v28 = v27;
    (*(v19 + 8))(v17, v20);
    v29 = sub_181C64FFC(v26, v28, &v36);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_181A37000, log, v33, "Completed call: %s callID: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v35, -1, -1);
    MEMORY[0x1865DF520](v21, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v17, v20);
    (*(v15 + 8))(v16, v18);
  }

  v30 = *(v0 + 360);
  if (*(v0 + 66))
  {
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    *(v0 + 184) = 1;
    *(v0 + 208) = 2;
    v31 = sub_182152DFC;
  }

  else
  {
    v31 = sub_182152DB0;
  }

  return MEMORY[0x1EEE6DFA0](v31, v30, 0);
}

uint64_t sub_182152B18()
{
  v1 = *(v0 + 472);

  *(v0 + 304) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  if (v5 >> 60 != 11 || v3 != 4 || v4 || v5 != 0xB000000000000000)
  {
    goto LABEL_15;
  }

  v6 = *(v0 + 472);
  *(v0 + 312) = v6;
  v7 = v6;
  if (!swift_dynamicCast())
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    v13 = 2;
    v14 = 1;
    goto LABEL_17;
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  if (v5 >> 60 != 11 || v3 != 5 || v4 || v5 != 0xB000000000000000)
  {
LABEL_15:
    sub_18215FF54(v3, v4, v5);
    goto LABEL_16;
  }

  v8 = *(v0 + 472);
  *(v0 + 320) = v8;
  v9 = v8;
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  v10 = *(v0 + 280);
  sub_18215FF54(*(v0 + 264), *(v0 + 272), v10);
  if (v10 >> 60 != 8)
  {
    goto LABEL_16;
  }

  v11 = *(v0 + 472);
  *(v0 + 328) = v11;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AB38);
  if (swift_dynamicCast())
  {
    sub_181F3CF20((v0 + 112), v0 + 72);
    __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    v13 = 1;
    swift_getDynamicType();
    v14 = sub_182AD1CF8();
    v16 = v15;
    __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    v17 = sub_182AD1D08();
    __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  }

  else
  {
    *(v0 + 144) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    sub_181F49A88(v0 + 112, &unk_1EA83AB40);
    v16 = 0;
    v17 = 0;
    v14 = 2;
    v13 = 2;
  }

LABEL_17:
  v18 = *(v0 + 360);
  *(v0 + 152) = v14;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  *(v0 + 176) = v13;

  return MEMORY[0x1EEE6DFA0](sub_182152F18, v18, 0);
}

uint64_t sub_182152DB0()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 360);
  v3 = *(v0 + 496);
  *(v2 + 136) = *(v0 + 480);
  *(v2 + 152) = v3;
  *(v2 + 168) = v1;
  *(v2 + 169) = 0;
  v4 = *(v0 + 360);
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 184) = 1;
  *(v0 + 208) = 2;
  return MEMORY[0x1EEE6DFA0](sub_182152DFC, v4, 0);
}

uint64_t sub_182152DFC()
{
  sub_1820AD594((v0 + 184));

  return MEMORY[0x1EEE6DFA0](sub_182152E68, 0, 0);
}

uint64_t sub_182152E68()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 336);
  v3 = *(v0 + 480);
  v4 = *(v0 + 496);
  *v2 = *(v0 + 288);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1;
  *(v2 + 49) = *(v0 + 66);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_182152F18()
{
  sub_1820AD594((v0 + 152));
  sub_1820EDB80(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return MEMORY[0x1EEE6DFA0](sub_182152F94, 0, 0);
}

uint64_t sub_182152F94()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_182153018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v31 = a5;
  v29 = a7;
  v30 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28[-v17];
  if (qword_1EA8371D8 != -1)
  {
    swift_once();
  }

  v32 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB50);
  swift_task_localValuePush();
  sub_182153360();
  v19 = sub_182AD2258();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a6, v19);
  (*(v20 + 56))(v18, 0, 1, v19);
  v21 = sub_182AD3548();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = swift_allocObject();
  swift_weakInit();
  sub_181AB5D28(v18, v15, &qword_1EA8394C0);
  v23 = (*(v13 + 80) + 57) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = v30;
  *(v24 + 32) = v22;
  *(v24 + 40) = v25;
  v26 = v31;
  *(v24 + 48) = v31;
  *(v24 + 56) = v29;
  sub_18215FD84(v15, v24 + v23);
  sub_181F49B58(v25, v26);
  sub_181F774B4(0, 0, v11, &unk_182AF98F0, v24);

  sub_181F49A88(v18, &qword_1EA8394C0);
  return swift_task_localValuePop();
}

void sub_182153360()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  if (qword_1EA8371D0 != -1)
  {
    swift_once();
  }

  if (byte_1EA83AAB0 == 1)
  {
    v4 = COERCE_DOUBLE(sub_18215F98C());
    if ((v5 & 1) == 0)
    {
      v6 = v4;
      if (v4 > 0.0)
      {
        v7 = sub_18215F15C(0x64uLL);
        v8 = v6 * 100.0;
        if (COERCE_UNSIGNED_INT64(v6 * 100.0) >> 52 > 0x7FE)
        {
          __break(1u);
        }

        else if (v8 > -9.22337204e18)
        {
          if (v8 < 9.22337204e18)
          {
            if ((v7 + 1) <= v8)
            {
              v9 = sub_182AD3548();
              (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
              v10 = swift_allocObject();
              v10[2] = 0;
              v10[3] = 0;
              v10[4] = v0;

              sub_182271E84(0, 0, v3, &unk_182AF9900, v10);
            }

            return;
          }

LABEL_14:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_14;
      }
    }
  }
}

uint64_t sub_182153528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_182AD2258();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v12 = sub_182AD2698();
  __swift_project_value_buffer(v12, qword_1EA836930);
  (*(v9 + 16))(v11, a1, v8);
  v13 = sub_182AD2678();
  v14 = sub_182AD38D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = a3;
    v30 = v17;
    v27 = v17;
    *v16 = 136315138;
    sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
    v18 = sub_182AD41B8();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = sub_181C64FFC(v18, v20, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_181A37000, v13, v14, "Task was cancelled for callID: %s", v16, 0xCu);
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    a3 = v29;
    MEMORY[0x1865DF520](v22, -1, -1);
    v23 = v16;
    a1 = v28;
    MEMORY[0x1865DF520](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_1821538A8(a1);
  v24 = sub_182AD3548();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a3;

  sub_181F774B4(0, 0, v7, &unk_182AF98B0, v25);
}

uint64_t sub_1821538A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A568);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23[-v12];
  v14 = type metadata accessor for CancelRemoteCall(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_182AD2258();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v13, 1, 1, v17);
  sub_18215F2D4(v16, v13, 1, v2);
  sub_181F49A88(v13, &qword_1EA8394C0);
  v19 = *(v2 + 80);
  v27 = v2;
  v28 = a1;
  v24 = sub_182160D24;
  v25 = &v26;
  os_unfair_lock_lock(v19 + 4);
  sub_18215FD68(v20);
  os_unfair_lock_unlock(v19 + 4);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_18215FB58(v16, type metadata accessor for CancelRemoteCall);
    return sub_181F49A88(v6, &qword_1EA83A568);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_182AD34E8();
    sub_18216065C(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
    v22 = swift_allocError();
    sub_182AD2E38();
    v29 = v22;
    sub_182AD34B8();
    (*(v8 + 8))(v10, v7);
    return sub_18215FB58(v16, type metadata accessor for CancelRemoteCall);
  }
}

uint64_t sub_182153C78()
{
  v1 = *(v0 + 16);
  if ((*(v1 + 170) & 1) == 0)
  {
    v2 = *(v1 + 112);
    v3 = sub_1820AD694();
    if (!sub_1820ECF38(v3))
    {
      return sub_182AD3EA8();
    }

    nw_activity_submit_metrics(*(v2 + 16));
    swift_unknownObjectRelease();
    nw_activity_complete_with_reason(*(v2 + 16), 4u);
    *(v1 + 170) = 1;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_182153DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWActorID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181D8E250(a2, v7, type metadata accessor for NWActorID);
  v8 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection__associatedActorIDs;
  swift_beginAccess();
  v9 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_181F5AEA8(0, v9[2] + 1, 1, v9);
    *(a1 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_181F5AEA8(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  sub_182160C44(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for NWActorID);
  *(a1 + v8) = v9;
  return swift_endAccess();
}

void sub_182153F48(unsigned int *a1)
{
  v1 = *(a1 + 4);
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v2 | (v1 << 32);
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA836930);

    v7 = sub_182AD2678();
    v8 = sub_182AD38D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315394;
      v39 = v10;
      v40 = 67;
      v41 = 0xE100000000000000;
      nw_connection_get_id(*(*(v4 + 16) + 16));
      v11 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v11);

      v12 = sub_181C64FFC(67, 0xE100000000000000, &v39);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      BYTE4(v40) = BYTE4(v5);
      LODWORD(v40) = v5;
      v13 = sub_182AD3038();
      v15 = sub_181C64FFC(v13, v14, &v39);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_181A37000, v7, v8, "%s: State changed to %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    v16 = (v5 >> 38) & 3;
    if (!v16)
    {
      LODWORD(v17) = BYTE4(v5);
      goto LABEL_10;
    }

    if (v16 == 1)
    {
      v17 = HIDWORD(v5) & 0x3F;
LABEL_10:

      v18 = sub_182AD2678();
      v19 = sub_182AD38B8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136315394;
        v39 = v21;
        v40 = 67;
        v41 = 0xE100000000000000;
        nw_connection_get_id(*(*(v4 + 16) + 16));
        v22 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v22);

        v23 = sub_181C64FFC(v40, v41, &v39);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        LODWORD(v40) = v5;
        BYTE4(v40) = v17;
        v24 = sub_182AD3038();
        v26 = sub_181C64FFC(v24, v25, &v39);

        *(v20 + 14) = v26;
        _os_log_impl(&dword_181A37000, v18, v19, "%s failed with error: %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v21, -1, -1);
        MEMORY[0x1865DF520](v20, -1, -1);
      }

      if (v17)
      {
        v33 = sub_182AD2F88();
        v32 = v5;
      }

      else
      {
        v27 = sub_182AD2F88();
        v29 = v28;
        v30 = sub_182AD2768();
        v31 = v29;
        v32 = v30;
        v33 = v27;
      }

      v40 = v33;
      v41 = v31;
      v42 = v32;
      v43 = 1;
      sub_1821544A8(&v40, v4);
      sub_1820EDB80(v40, v41, v42, v43);
      sub_181F4B3B8();
      v34 = swift_allocError();
      *v35 = v5;
      *(v35 + 4) = v17;
      sub_1821547E8(v34);

      v36 = v34;
      goto LABEL_18;
    }

    if ((v5 & 0xFFFFFFFFFFLL) > 0x8000000001)
    {
      if ((v5 & 0xFFFFFFFFFFLL) != 0x8000000002)
      {
        v41 = 0;
        v42 = 0;
        v40 = 3;
        v43 = 2;
        sub_1821544A8(&v40, v4);
        sub_181FCD1A0();
        v37 = swift_allocError();
        *v38 = xmmword_182AE69F0;
        *(v38 + 16) = 0xB000000000000000;
        sub_1821547E8(v37);

        v36 = v37;
LABEL_18:

        return;
      }

      v41 = 0;
      v42 = 0;
      v40 = 1;
      v43 = 2;
      sub_1821544A8(&v40, v4);
      sub_182154558();
    }
  }
}

void sub_1821544A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a2 + 80);
  os_unfair_lock_lock(v6 + 4);
  sub_181FCCB84(v7);
  os_unfair_lock_unlock(v6 + 4);
  if (v7[0])
  {
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = v4;
    v8 = v5;

    NWActivity.complete(reason:)(v7);
  }
}

uint64_t sub_182154558()
{
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v1 = sub_182AD2698();
  __swift_project_value_buffer(v1, qword_1EA836930);

  v2 = sub_182AD2678();
  v3 = sub_182AD38A8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v14 = v5;
    aBlock = 67;
    v16 = 0xE100000000000000;
    nw_connection_get_id(*(*(v0 + 16) + 16));
    v6 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v6);

    v7 = sub_181C64FFC(67, 0xE100000000000000, &v14);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_181A37000, v2, v3, "%s: Receiving message", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1865DF520](v5, -1, -1);
    MEMORY[0x1865DF520](v4, -1, -1);
  }

  v8 = *(v0 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = *(v8 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1821603E4;
  *(v11 + 24) = v9;
  v19 = sub_181D47AA0;
  v20 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_181D478F8;
  v18 = &block_descriptor_65;
  v12 = _Block_copy(&aBlock);
  swift_retain_n();

  nw_connection_receive_message(v10, v12);
  _Block_release(v12);
}

void sub_1821547E8(uint64_t a1)
{
  v3 = v1[10];
  os_unfair_lock_lock(v3 + 4);
  sub_182160D6C(&v20);
  os_unfair_lock_unlock(v3 + 4);
  if ((v20 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock(v3 + 4);
    sub_181FCE618(&v20);
    os_unfair_lock_unlock(v3 + 4);
    v5 = v20;
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA836930);

    v7 = sub_182AD2678();
    v8 = sub_182AD38D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315394;
      v20 = 67;
      v21 = 0xE100000000000000;
      v22[0] = v10;
      nw_connection_get_id(*(v1[2] + 16));
      v11 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v11);

      v12 = sub_181C64FFC(v20, v21, v22);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v20 = *(v5 + 16);
      v13 = sub_182AD3038();
      v15 = sub_181C64FFC(v13, v14, v22);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_181A37000, v7, v8, "%s: Calling %s interruption handlers", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    v16 = *(v5 + 16);
    if (v16)
    {
      v17 = v5 + 40;
      do
      {
        v18 = *(v17 - 8);
        v20 = a1;

        v18(&v20);

        v17 += 16;
        --v16;
      }

      while (v16);
    }

    v19 = v1[5];
    if (v19)
    {

      v19(a1);
      sub_181A554F4(v19);
    }

    sub_18214FECC();
  }
}

uint64_t sub_182154B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v48 = a5;
  v49 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A568);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = sub_182AD2258();
  v50 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = *(a2 + 80);
  v54 = a2;
  v55 = a3;
  v56 = a1;
  v51 = sub_182160018;
  v52 = &v53;
  os_unfair_lock_lock(v19 + 4);
  sub_182160038(v20);
  v44 = v19;
  os_unfair_lock_unlock(v19 + 4);
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v21 = sub_182AD2698();
  v22 = __swift_project_value_buffer(v21, qword_1EA836930);
  v40 = *(v50 + 16);
  v40(v18, a3, v14);

  v42 = v22;
  v23 = sub_182AD2678();
  v24 = a2;
  v25 = sub_182AD38D8();

  v26 = os_log_type_enabled(v23, v25);
  v46 = v13;
  v47 = v24;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v39 = v10;
    v28 = v27;
    v29 = swift_slowAlloc();
    v45 = a3;
    v30 = v29;
    *v28 = 136315394;
    v58 = 67;
    v59 = 0xE100000000000000;
    v60[0] = v29;
    id = nw_connection_get_id(*(*(v24 + 16) + 16));
    v31 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v31);

    v32 = sub_181C64FFC(v58, v59, v60);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
    v33 = sub_182AD41B8();
    v35 = v34;
    v41 = *(v50 + 8);
    v41(v18, v14);
    v36 = sub_181C64FFC(v33, v35, v60);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_181A37000, v23, v25, "%s: Stored callID (%s)", v28, 0x16u);
    swift_arrayDestroy();
    v37 = v30;
    a3 = v45;
    MEMORY[0x1865DF520](v37, -1, -1);
    MEMORY[0x1865DF520](v28, -1, -1);
  }

  else
  {

    v41 = *(v50 + 8);
    v41(v18, v14);
  }

  return v49(a3);
}

uint64_t sub_182155314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A568);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_182AD2258();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2, v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, a3, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  swift_beginAccess();
  sub_1820FAC2C(v7, v11);
  return swift_endAccess();
}

uint64_t *sub_1821554EC()
{

  sub_181A554F4(v0[3]);
  sub_181A554F4(v0[5]);
  sub_181A554F4(v0[7]);

  sub_181F49A88(v0 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_resolvedActorIDContinuation, &qword_1EA83AAE8);

  return v0;
}

uint64_t sub_18215558C()
{
  sub_1821554EC();

  return swift_deallocClassInstance();
}

void sub_18215560C()
{
  sub_1821556E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1821556E8()
{
  if (!qword_1EA836A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83AAC8);
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA836A00);
    }
  }
}

uint64_t sub_182155794()
{
  result = type metadata accessor for RemoteCallEnvelope(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_18215581C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 50))
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

uint64_t sub_182155870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_182155904(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 < 3u)
  {
    return;
  }

  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_12;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v5 = HIDWORD(a1) - a1;
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_9;
  }

  v5 = BYTE6(a2);
LABEL_12:
  if (qword_1EA8371C8 != -1)
  {
    v19 = a3;
    swift_once();
    a3 = v19;
  }

  v8 = qword_1EA83AAA8;
  if (qword_1EA83AAA8 < v5)
  {
    v9 = a3;
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA836930);

    oslog = sub_182AD2678();
    v11 = sub_182AD38C8();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136315906;
      v21 = v13;
      nw_connection_get_id(*(*(v3 + 16) + 16));
      v14 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v14);

      v15 = sub_181C64FFC(67, 0xE100000000000000, &v21);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v5;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v8;
      *(v12 + 32) = 2080;
      if (v9 == 4)
      {
        v16 = 0x6F7250796C706572;
      }

      else
      {
        v16 = 0xD000000000000012;
      }

      if (v9 == 4)
      {
        v17 = 0xED00006675626F74;
      }

      else
      {
        v17 = 0x8000000182BDEEC0;
      }

      v18 = sub_181C64FFC(v16, v17, &v21);

      *(v12 + 34) = v18;
      _os_log_impl(&dword_181A37000, oslog, v11, "%s: Outbound payload size %ld exceeds limit %ld for type %s", v12, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_182155C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = a7;
  *(v8 + 64) = a6;
  *(v8 + 72) = a8;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  *(v8 + 80) = swift_task_alloc();
  v9 = sub_182AD2258();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A568);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182155D58, 0, 0);
}

uint64_t sub_182155D58()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_182155E80;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 152);

    return sub_182156330(v4, v3, v5);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_182155E80()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_182156024;
  }

  else
  {
    v2 = sub_182155F94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_182155F94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_182156024()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  sub_181AB5D28(*(v0 + 72), v3, &qword_1EA8394C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 80);

    sub_181F49A88(v4, &qword_1EA8394C0);
  }

  else
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    (*(*(v0 + 96) + 32))(v6, *(v0 + 80), *(v0 + 88));
    v7 = *(v5 + 80);
    v8 = swift_task_alloc();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    *(v9 + 16) = sub_182160D24;
    *(v9 + 24) = v8;

    os_unfair_lock_lock(v7 + 4);
    sub_182160DA4(v10);
    os_unfair_lock_unlock(v7 + 4);

    v12 = *(v0 + 112);
    v11 = *(v0 + 120);

    sub_181AB5D28(v11, v12, &qword_1EA83A568);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v12, 1, v13);
    v16 = *(v0 + 144);
    v17 = *(v0 + 120);
    v18 = *(v0 + 112);
    if (v15 == 1)
    {
      sub_181F49A88(*(v0 + 120), &qword_1EA83A568);

      sub_181F49A88(v18, &qword_1EA83A568);
    }

    else
    {
      *(v0 + 40) = v16;
      v19 = v16;
      sub_182AD34B8();

      sub_181F49A88(v17, &qword_1EA83A568);
      (*(v14 + 8))(v18, v13);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_182156330(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = v3;
  *(v4 + 81) = a3;
  *(v4 + 152) = a1;
  v5 = sub_182AD25E8();
  *(v4 + 176) = v5;
  *(v4 + 184) = *(v5 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182156430, 0, 0);
}

uint64_t sub_182156430()
{
  v76 = v0;
  v75 = *MEMORY[0x1E69E9840];
  if (*(v0 + 81) >= 3u && (*(*(v0 + 168) + 72) & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_181F49B58(*(v0 + 152), *(v0 + 160));
  v1 = 0;
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  while (1)
  {
    *(v0 + 82) = v1;
    *(v0 + 208) = v2;
    *(v0 + 216) = v3;
    sub_182155904(v2, v3, *(v0 + 81));
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA836930);

    sub_181F49B58(v2, v3);
    v5 = sub_182AD2678();
    v6 = sub_182AD38D8();

    sub_181C1F2E4(v2, v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 168);
      v8 = *(v0 + 81);
      v9 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v9 = 136315906;
      v72 = v71;
      v73 = 67;
      v74 = 0xE100000000000000;
      *(v0 + 136) = nw_connection_get_id(*(*(v7 + 16) + 16));
      v10 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v10);

      v11 = sub_181C64FFC(v73, v74, &v72);

      *(v9 + 4) = v11;
      *(v9 + 12) = 2080;
      v12 = 0xE700000000000000;
      v13 = 0xD000000000000010;
      v14 = 0x8000000182BDEEE0;
      v15 = 0x8000000182BDEEC0;
      v16 = 0xD000000000000012;
      if (v8 != 3)
      {
        v16 = 0x6F7250796C706572;
        v15 = 0xED00006675626F74;
      }

      if (v8 != 2)
      {
        v13 = v16;
        v14 = v15;
      }

      v17 = 0xD000000000000010;
      if (v8)
      {
        v12 = 0x8000000182BDEF00;
      }

      else
      {
        v17 = 0x64696C61766E69;
      }

      if (v8 <= 1)
      {
        v18 = v17;
      }

      else
      {
        v18 = v13;
      }

      if (v8 <= 1)
      {
        v19 = v12;
      }

      else
      {
        v19 = v14;
      }

      v20 = sub_181C64FFC(v18, v19, &v72);

      *(v9 + 14) = v20;
      *(v9 + 22) = 2080;
      sub_181F49B58(v2, v3);
      v21 = sub_182AD20A8();
      v23 = v22;
      sub_181C1F2E4(v2, v3);
      v24 = sub_181C64FFC(v21, v23, &v72);

      *(v9 + 24) = v24;
      *(v9 + 32) = 1024;
      *(v9 + 34) = v1;
      _os_log_impl(&dword_181A37000, v5, v6, "%s Sending message of type %s, data: %s, compressed: %{BOOL}d", v9, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v71, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    if (qword_1EA8371D8 != -1)
    {
      swift_once();
    }

    sub_182AD46C8();
    v25 = *(v0 + 128);
    *(v0 + 224) = v25;
    if (!v25)
    {
      break;
    }

    v26 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (v26)
      {
        LODWORD(v27) = HIDWORD(v2) - v2;
        if (__OFSUB__(HIDWORD(v2), v2))
        {
          __break(1u);
        }

        v27 = v27;
      }

      else
      {
        v27 = BYTE6(v3);
      }

      goto LABEL_62;
    }

    if (v26 != 2)
    {
      v27 = 0;
LABEL_62:
      *(v0 + 232) = v27;

      return MEMORY[0x1EEE6DFA0](sub_182156DF4, v25, 0);
    }

    v46 = *(v2 + 16);
    v45 = *(v2 + 24);
    v47 = __OFSUB__(v45, v46);
    v27 = v45 - v46;
    if (!v47)
    {
      goto LABEL_62;
    }

    __break(1u);
LABEL_51:
    v48 = sub_182AD2138();
    *(v0 + 144) = 0;
    v49 = [v48 compressedDataUsingAlgorithm:0 error:v0 + 144];

    v50 = *(v0 + 144);
    if (!v49)
    {
      v68 = v50;
      sub_182AD1F08();

      swift_willThrow();

      v69 = *(v0 + 8);

      return v69();
    }

    v2 = sub_182AD2158();
    v3 = v51;

    v1 = 1;
  }

  if (qword_1EA8369C8 != -1)
  {
    swift_once();
  }

  v28 = sub_182AD2618();
  __swift_project_value_buffer(v28, qword_1EA8369D8);
  sub_182AD2608();
  sub_182AD25B8();
  swift_retain_n();
  v29 = sub_182AD2608();
  v30 = sub_182AD3958();
  if (sub_182AD3998())
  {
    v31 = *(v0 + 81);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v73 = v33;
    *v32 = 136315394;
    v34 = 0xE700000000000000;
    v35 = 0x8000000182BDEEE0;
    v36 = 0x8000000182BDEEC0;
    v37 = 0xD000000000000012;
    if (v31 != 3)
    {
      v37 = 0x6F7250796C706572;
      v36 = 0xED00006675626F74;
    }

    if (v31 == 2)
    {
      v37 = 0xD000000000000010;
    }

    else
    {
      v35 = v36;
    }

    if (v31)
    {
      v38 = 0xD000000000000010;
    }

    else
    {
      v38 = 0x64696C61766E69;
    }

    if (v31)
    {
      v34 = 0x8000000182BDEF00;
    }

    if (v31 <= 1)
    {
      v39 = v38;
    }

    else
    {
      v39 = v37;
    }

    if (v31 <= 1)
    {
      v40 = v34;
    }

    else
    {
      v40 = v35;
    }

    v41 = *(v0 + 168);
    v42 = sub_181C64FFC(v39, v40, &v73);

    *(v32 + 4) = v42;
    *(v32 + 12) = 2048;
    id = nw_connection_get_id(*(*(v41 + 16) + 16));

    *(v32 + 14) = id;

    v44 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v29, v30, v44, "sendData", "Sending %s on %llu", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1865DF520](v33, -1, -1);
    MEMORY[0x1865DF520](v32, -1, -1);
  }

  else
  {
  }

  v52 = *(v0 + 82);
  v53 = *(v0 + 81);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  sub_182AD2658();
  swift_allocObject();
  v54 = sub_182AD2648();
  *(v0 + 240) = v54;
  if (v52)
  {
    v55 = 15;
  }

  else
  {
    v55 = 14;
  }

  v56 = sub_182162D78(v53, v55);
  *(v0 + 248) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  *(inited + 16) = xmmword_182AF1910;
  *(inited + 32) = v56;
  type metadata accessor for NWConnection.ContentContext();
  v58 = swift_initStackObject();
  *(v0 + 264) = v58;

  v59 = nw_content_context_create("RemoteCall");
  *(v58 + 16) = v59;
  *(v58 + 24) = 0x614365746F6D6552;
  *(v58 + 32) = 0xEA00000000006C6CLL;
  *(v58 + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v59, 0);
  *(v58 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v59, 0.5);
  *(v58 + 64) = 0;
  nw_content_context_set_is_final(v59, 0);
  *(v58 + 56) = 0;
  if ((inited & 0xC000000000000001) != 0)
  {
    v60 = MEMORY[0x1865DA790](0, inited);

    nw_content_context_set_metadata_for_protocol(v59, *(v60 + 16));
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = *(inited + 32);

    nw_content_context_set_metadata_for_protocol(v59, *(v61 + 16));
  }

  v63 = *(v0 + 208);
  v62 = *(v0 + 216);
  v64 = *(v0 + 168);
  v65 = *(v0 + 81);
  v66 = swift_task_alloc();
  *(v0 + 272) = v66;
  *(v66 + 16) = v64;
  *(v66 + 24) = v63;
  *(v66 + 32) = v62;
  *(v66 + 40) = v58;
  *(v66 + 48) = v54;
  *(v66 + 56) = v65;
  v67 = swift_task_alloc();
  *(v0 + 280) = v67;
  *v67 = v0;
  v67[1] = sub_182157374;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_182156DF4()
{
  *(*(v0 + 224) + 128) = *(v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_182156E88, 0, 0);
}

uint64_t sub_182156E88()
{
  v36 = v0;
  v35[1] = *MEMORY[0x1E69E9840];

  if (qword_1EA8369C8 != -1)
  {
    swift_once();
  }

  v1 = sub_182AD2618();
  __swift_project_value_buffer(v1, qword_1EA8369D8);
  sub_182AD2608();
  sub_182AD25B8();
  swift_retain_n();
  v2 = sub_182AD2608();
  v3 = sub_182AD3958();
  if (sub_182AD3998())
  {
    v4 = *(v0 + 81);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35[0] = v6;
    *v5 = 136315394;
    v7 = 0xE700000000000000;
    v8 = 0x64696C61766E69;
    v9 = 0x8000000182BDEEE0;
    v10 = 0x8000000182BDEEC0;
    v11 = 0xD000000000000012;
    if (v4 != 3)
    {
      v11 = 0x6F7250796C706572;
      v10 = 0xED00006675626F74;
    }

    if (v4 == 2)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v9 = v10;
    }

    if (v4)
    {
      v8 = 0xD000000000000010;
      v7 = 0x8000000182BDEF00;
    }

    if (v4 <= 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v4 <= 1)
    {
      v13 = v7;
    }

    else
    {
      v13 = v9;
    }

    v14 = *(v0 + 168);
    v15 = sub_181C64FFC(v12, v13, v35);

    *(v5 + 4) = v15;
    *(v5 + 12) = 2048;
    id = nw_connection_get_id(*(*(v14 + 16) + 16));

    *(v5 + 14) = id;

    v17 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v2, v3, v17, "sendData", "Sending %s on %llu", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1865DF520](v6, -1, -1);
    MEMORY[0x1865DF520](v5, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 82);
  v19 = *(v0 + 81);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  sub_182AD2658();
  swift_allocObject();
  v20 = sub_182AD2648();
  *(v0 + 240) = v20;
  if (v18)
  {
    v21 = 15;
  }

  else
  {
    v21 = 14;
  }

  v22 = sub_182162D78(v19, v21);
  *(v0 + 248) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  *(inited + 16) = xmmword_182AF1910;
  *(inited + 32) = v22;
  type metadata accessor for NWConnection.ContentContext();
  v24 = swift_initStackObject();
  *(v0 + 264) = v24;

  v25 = nw_content_context_create("RemoteCall");
  *(v24 + 16) = v25;
  *(v24 + 24) = 0x614365746F6D6552;
  *(v24 + 32) = 0xEA00000000006C6CLL;
  *(v24 + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v25, 0);
  *(v24 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v25, 0.5);
  *(v24 + 64) = 0;
  nw_content_context_set_is_final(v25, 0);
  *(v24 + 56) = 0;
  if ((inited & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1865DA790](0, inited);

    nw_content_context_set_metadata_for_protocol(v25, *(v26 + 16));
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = *(inited + 32);

    nw_content_context_set_metadata_for_protocol(v25, *(v27 + 16));
  }

  v29 = *(v0 + 208);
  v28 = *(v0 + 216);
  v30 = *(v0 + 168);
  v31 = *(v0 + 81);
  v32 = swift_task_alloc();
  *(v0 + 272) = v32;
  *(v32 + 16) = v30;
  *(v32 + 24) = v29;
  *(v32 + 32) = v28;
  *(v32 + 40) = v24;
  *(v32 + 48) = v20;
  *(v32 + 56) = v31;
  v33 = swift_task_alloc();
  *(v0 + 280) = v33;
  *v33 = v0;
  v33[1] = sub_182157374;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_182157374()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1821575E8;
  }

  else
  {
    v2 = sub_1821574D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821574D4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();

  sub_181C1F2E4(v2, v1);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1821575E8()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();

  sub_181C1F2E4(v2, v1);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

void sub_1821576F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v31 = a7;
  v32 = a5;
  v30 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - v15;
  v29 = *(a2 + 16);
  (*(v12 + 16))(&v29 - v15, a1, v11, v14);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = v17 + v13;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a2;
  (*(v12 + 32))(v19 + v17, v16, v11);
  *(v19 + v18) = v31;
  v20 = v19 + (v18 & 0xFFFFFFFFFFFFFFF8);
  v21 = v30;
  *(v20 + 8) = a3;
  *(v20 + 16) = v21;
  v22 = *(v29 + 16);

  sub_181F49B58(a3, v21);
  v23 = sub_182AD2138();
  v25 = NWCreateDispatchDataFromNSData(v23, v24);

  v26 = *(v32 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_18215FAA8;
  *(v27 + 24) = v19;
  aBlock[4] = sub_181BEBE54;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181AA4EBC;
  aBlock[3] = &block_descriptor_25;
  v28 = _Block_copy(aBlock);

  nw_connection_send(v22, v25, v26, 1, v28);

  _Block_release(v28);
}

uint64_t sub_182157974(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7)
{
  v64 = a6;
  v65 = a7;
  v63 = a5;
  v67 = a3;
  v68 = a4;
  v8 = sub_182AD2628();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_182AD25E8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(a1 + 4);
  v17 = *a1;
  if (qword_1EA8369C8 != -1)
  {
    swift_once();
  }

  v66 = v17 | (v16 << 32);
  v18 = sub_182AD2618();
  __swift_project_value_buffer(v18, qword_1EA8369D8);
  v19 = sub_182AD2608();
  sub_182AD2638();
  v20 = sub_182AD3948();
  if (sub_182AD3998())
  {

    sub_182AD2668();

    if ((*(v9 + 88))(v11, v8) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v19, v20, v23, "sendData", v21, v22, 2u);
    MEMORY[0x1865DF520](v22, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v24 = v66;
  v25 = HIDWORD(v66);
  if (HIDWORD(v66) <= 0xFE)
  {
    v49 = v67;
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v50 = sub_182AD2698();
    __swift_project_value_buffer(v50, qword_1EA836930);

    v51 = sub_182AD2678();
    v52 = sub_182AD38B8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v53 = 136315394;
      v70 = 67;
      v71 = 0xE100000000000000;
      v72 = v55;
      id = nw_connection_get_id(*(*(v49 + 16) + 16));
      v56 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v56);

      v57 = sub_181C64FFC(v70, v71, &v72);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2112;
      sub_181F4B3B8();
      swift_allocError();
      *v58 = v24;
      *(v58 + 4) = v25;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v59;
      *v54 = v59;
      _os_log_impl(&dword_181A37000, v51, v52, "%s: Failed to send: %@", v53, 0x16u);
      sub_181F49A88(v54, &unk_1EA83AA30);
      MEMORY[0x1865DF520](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1865DF520](v55, -1, -1);
      MEMORY[0x1865DF520](v53, -1, -1);
    }

    sub_181FCD1A0();
    v60 = swift_allocError();
    *v61 = v24;
    *(v61 + 8) = xmmword_182AF96A0;
    v70 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
    return sub_182AD34B8();
  }

  else
  {
    v26 = v67;
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v27 = sub_182AD2698();
    __swift_project_value_buffer(v27, qword_1EA836930);

    v29 = v64;
    v28 = v65;
    sub_181F49B58(v64, v65);
    v30 = sub_182AD2678();
    v31 = sub_182AD38D8();

    sub_181C1F2E4(v29, v28);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315650;
      v70 = 67;
      v71 = 0xE100000000000000;
      v72 = v33;
      id = nw_connection_get_id(*(*(v26 + 16) + 16));
      v34 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v34);

      v35 = sub_181C64FFC(v70, v71, &v72);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      v36 = 0xE700000000000000;
      v37 = 0x64696C61766E69;
      v38 = 0xD000000000000010;
      v39 = 0x8000000182BDEEE0;
      v40 = 0x8000000182BDEEC0;
      v41 = 0xD000000000000012;
      if (v63 != 3)
      {
        v41 = 0x6F7250796C706572;
        v40 = 0xED00006675626F74;
      }

      if (v63 != 2)
      {
        v38 = v41;
        v39 = v40;
      }

      if (v63)
      {
        v37 = 0xD000000000000010;
        v36 = 0x8000000182BDEF00;
      }

      if (v63 <= 1u)
      {
        v42 = v37;
      }

      else
      {
        v42 = v38;
      }

      if (v63 <= 1u)
      {
        v43 = v36;
      }

      else
      {
        v43 = v39;
      }

      v44 = sub_181C64FFC(v42, v43, &v72);

      *(v32 + 14) = v44;
      *(v32 + 22) = 2080;
      v45 = sub_182AD20A8();
      v47 = sub_181C64FFC(v45, v46, &v72);

      *(v32 + 24) = v47;
      _os_log_impl(&dword_181A37000, v30, v31, "%s: Successfully sent data of type %s, data: %s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v33, -1, -1);
      MEMORY[0x1865DF520](v32, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
    return sub_182AD34C8();
  }
}

uint64_t sub_182158130()
{
  v17 = v0;
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v1 = sub_182AD2698();
  __swift_project_value_buffer(v1, qword_1EA836930);

  v2 = sub_182AD2678();
  v3 = sub_182AD38D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v14 = v6;
    v15 = 67;
    v16 = 0xE100000000000000;
    v0[2] = nw_connection_get_id(*(*(v4 + 16) + 16));
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    v8 = sub_181C64FFC(v15, v16, &v14);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_181A37000, v2, v3, "%s: Sending terminate process message", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1865DF520](v6, -1, -1);
    MEMORY[0x1865DF520](v5, -1, -1);
  }

  v9 = sub_181F7C4EC(&unk_1EEF97588);
  v11 = v10;
  v0[4] = v9;
  v0[5] = v10;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_182158364;

  return sub_182156330(v9, v11, 2);
}

uint64_t sub_182158364()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821584A0, 0, 0);
  }

  else
  {
    sub_181C1F2E4(v2[4], v2[5]);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1821584A0()
{
  sub_181C1F2E4(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

void sub_182158504(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v185 = *MEMORY[0x1E69E9840];
  v9 = sub_182AD2628();
  v175 = *(v9 - 8);
  v176 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v174 = v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_182AD25E8();
  v179 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v177 = v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v163 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v163 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v163 - v20;
  v22 = *(a5 + 4);
  v23 = *a5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v172 = v18;
    v178 = v11;
    v171 = a1;
    if (qword_1EA8369C8 != -1)
    {
      swift_once();
    }

    v26 = v23 | (v22 << 32);
    v27 = sub_182AD2618();
    v28 = __swift_project_value_buffer(v27, qword_1EA8369D8);

    sub_182AD25D8();
    v170 = v28;
    v29 = sub_182AD2608();
    v30 = sub_182AD3968();
    v31 = sub_182AD3998();
    v173 = a2;
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = nw_connection_get_id(*(*(v25 + 16) + 16));

      v33 = sub_182AD25C8();
      _os_signpost_emit_with_name_impl(&dword_181A37000, v29, v30, v33, "receiveNextMessage", "Receive message from %llu", v32, 0xCu);
      MEMORY[0x1865DF520](v32, -1, -1);
    }

    else
    {
    }

    v35 = v179 + 8;
    v34 = *(v179 + 8);
    v34(v21, v178);
    v36 = HIDWORD(v26);
    if (HIDWORD(v26) <= 0xFE)
    {
      if (qword_1EA836920 != -1)
      {
        swift_once();
      }

      v60 = sub_182AD2698();
      __swift_project_value_buffer(v60, qword_1EA836930);

      v61 = sub_182AD2678();
      v62 = sub_182AD38B8();

      if (!os_log_type_enabled(v61, v62))
      {

        return;
      }

      v63 = v26;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v181 = v66;
      *v64 = 136315394;
      *&v183 = 67;
      *(&v183 + 1) = 0xE100000000000000;
      id = nw_connection_get_id(*(*(v25 + 16) + 16));
      v67 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v67);

      v68 = sub_181C64FFC(v183, *(&v183 + 1), &v181);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2112;
      sub_181F4B3B8();
      swift_allocError();
      *v69 = v63;
      *(v69 + 4) = v36;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 14) = v70;
      *v65 = v70;
      _os_log_impl(&dword_181A37000, v61, v62, "%s: Failed to receive message: %@", v64, 0x16u);
      sub_181F49A88(v65, &unk_1EA83AA30);
      MEMORY[0x1865DF520](v65, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1865DF520](v66, -1, -1);
      MEMORY[0x1865DF520](v64, -1, -1);

      goto LABEL_32;
    }

    v168 = v34;
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v37 = sub_182AD2698();
    v38 = __swift_project_value_buffer(v37, qword_1EA836930);

    v39 = sub_182AD2678();
    v40 = sub_182AD38A8();

    v41 = os_log_type_enabled(v39, v40);
    v169 = v35;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v181 = v43;
      *v42 = 136315138;
      *&v183 = 67;
      *(&v183 + 1) = 0xE100000000000000;
      id = nw_connection_get_id(*(*(v25 + 16) + 16));
      v44 = sub_182AD41B8();
      v45 = v25;
      v46 = v15;
      v47 = v38;
      MEMORY[0x1865D9CA0](v44);

      v48 = sub_181C64FFC(v183, *(&v183 + 1), &v181);

      *(v42 + 4) = v48;
      v38 = v47;
      v15 = v46;
      v25 = v45;
      _os_log_impl(&dword_181A37000, v39, v40, "%s: Received message", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1865DF520](v43, -1, -1);
      MEMORY[0x1865DF520](v42, -1, -1);
    }

    v49 = v173;
    if (a3)
    {
      is_final = nw_content_context_get_is_final(*(a3 + 16));
      if (qword_1EA836BC8 != -1)
      {
        swift_once();
      }

      v51 = nw_content_context_copy_protocol_metadata(*(a3 + 16), *(qword_1EA8431A8 + 32));
      if (v51)
      {
        v52 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v51);
        swift_unknownObjectRelease();
        if (v52)
        {
          type metadata accessor for NWProtocolFramer.Message();
          v53 = swift_dynamicCastClass();
          if (v53)
          {
            if (v49 >> 60 == 15)
            {

              v54 = sub_182AD2678();
              v55 = sub_182AD38B8();

              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                *&v181 = v57;
                *v56 = 136315138;
                *&v183 = 67;
                *(&v183 + 1) = 0xE100000000000000;
                id = nw_connection_get_id(*(*(v25 + 16) + 16));
                v58 = sub_182AD41B8();
                MEMORY[0x1865D9CA0](v58);

                v59 = sub_181C64FFC(v183, *(&v183 + 1), &v181);

                *(v56 + 4) = v59;
                _os_log_impl(&dword_181A37000, v54, v55, "%s No content in message", v56, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v57);
                MEMORY[0x1865DF520](v57, -1, -1);
                MEMORY[0x1865DF520](v56, -1, -1);
              }

              goto LABEL_133;
            }

            v166 = v52;
            v165 = v53;
            v77 = *(v53 + 16);
            v78 = sub_182AD3048();
            sub_181F49B58(v171, v49);
            v79 = nw_framer_message_copy_object_value(v77, (v78 + 32));

            if (v79)
            {
              sub_182AD3AA8();
              swift_unknownObjectRelease();
            }

            else
            {
              v181 = 0u;
              v182 = 0u;
            }

            v183 = v181;
            v184 = v182;
            v167 = is_final;
            if (*(&v182 + 1))
            {
              if (swift_dynamicCast())
              {
                v80 = v181;
                goto LABEL_43;
              }
            }

            else
            {
              sub_181F49A88(&v183, &unk_1EA83A4F0);
            }

            v80 = 0;
LABEL_43:
            sub_182AD2608();
            sub_182AD25B8();
            swift_retain_n();
            v81 = sub_182AD2608();
            v82 = sub_182AD3958();
            if (sub_182AD3998())
            {
              v164 = v15;
              v163[1] = v38;
              v83 = v49;
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              *&v183 = v85;
              *v84 = 136315394;
              v86 = 0xE700000000000000;
              v87 = 0x8000000182BDEEE0;
              v88 = 0x8000000182BDEEC0;
              v89 = 0xD000000000000012;
              if (v80 != 3)
              {
                v89 = 0x6F7250796C706572;
                v88 = 0xED00006675626F74;
              }

              if (v80 == 2)
              {
                v89 = 0xD000000000000010;
              }

              else
              {
                v87 = v88;
              }

              if (v80)
              {
                v90 = 0xD000000000000010;
              }

              else
              {
                v90 = 0x64696C61766E69;
              }

              if (v80)
              {
                v86 = 0x8000000182BDEF00;
              }

              if (v80 <= 1)
              {
                v91 = v90;
              }

              else
              {
                v91 = v89;
              }

              if (v80 <= 1)
              {
                v92 = v86;
              }

              else
              {
                v92 = v87;
              }

              v93 = sub_181C64FFC(v91, v92, &v183);

              *(v84 + 4) = v93;
              *(v84 + 12) = 2048;
              v94 = nw_connection_get_id(*(*(v25 + 16) + 16));

              *(v84 + 14) = v94;

              v95 = v172;
              v96 = sub_182AD25C8();
              _os_signpost_emit_with_name_impl(&dword_181A37000, v81, v82, v96, "handleMessage", "Handling %s on %llu", v84, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v85);
              MEMORY[0x1865DF520](v85, -1, -1);
              MEMORY[0x1865DF520](v84, -1, -1);

              v49 = v83;
              v15 = v164;
            }

            else
            {

              v95 = v172;
            }

            (*(v179 + 16))(v15, v95, v178);
            sub_182AD2658();
            swift_allocObject();
            v179 = sub_182AD2648();
            if (v80 < 3)
            {
              v100 = 0;
              v101 = v171;
              goto LABEL_72;
            }

            v97 = *(v165 + 16);
            v98 = sub_182AD3048();
            v99 = nw_framer_message_copy_object_value(v97, (v98 + 32));

            if (v99)
            {
              sub_182AD3AA8();
              swift_unknownObjectRelease();
            }

            else
            {
              v181 = 0u;
              v182 = 0u;
            }

            v183 = v181;
            v184 = v182;
            v101 = v171;
            if (*(&v182 + 1))
            {
              if (swift_dynamicCast())
              {
                v100 = v181 & 1;
                goto LABEL_72;
              }
            }

            else
            {
              sub_181F49A88(&v183, &unk_1EA83A4F0);
            }

            v100 = 0;
LABEL_72:
            sub_181F49B44(v101, v49);

            sub_181F49B44(v101, v49);
            v102 = sub_182AD2678();
            v103 = sub_182AD38D8();

            if (!os_log_type_enabled(v102, v103))
            {
              sub_181D9D680(v101, v49);
              sub_181D9D680(v101, v49);
              goto LABEL_95;
            }

            LODWORD(v164) = v103;
            v104 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            *&v181 = v165;
            *v104 = 136315906;
            *&v183 = 67;
            *(&v183 + 1) = 0xE100000000000000;
            id = nw_connection_get_id(*(*(v25 + 16) + 16));
            v105 = sub_182AD41B8();
            MEMORY[0x1865D9CA0](v105);

            v106 = sub_181C64FFC(v183, *(&v183 + 1), &v181);

            *(v104 + 4) = v106;
            *(v104 + 12) = 2080;
            if (v80 <= 1)
            {
              if (!v80)
              {
                v108 = 0x64696C61766E69;
                v107 = 0xE700000000000000;
                goto LABEL_84;
              }

              v109 = "cancelRemoteCall";
            }

            else
            {
              if (v80 != 2)
              {
                if (v80 == 3)
                {
                  v107 = 0x8000000182BDEEC0;
                  v108 = 0xD000000000000012;
                }

                else
                {
                  v108 = 0x6F7250796C706572;
                  v107 = 0xED00006675626F74;
                }

LABEL_84:
                v110 = sub_181C64FFC(v108, v107, &v181);

                *(v104 + 14) = v110;
                *(v104 + 22) = 2048;
                v111 = v49 >> 62;
                if ((v49 >> 62) > 1)
                {
                  if (v111 != 2)
                  {
                    sub_181D9D680(v101, v49);
                    v112 = 0;
                    goto LABEL_94;
                  }

                  v114 = *(v101 + 16);
                  v113 = *(v101 + 24);
                  sub_181D9D680(v101, v49);
                  v112 = v113 - v114;
                  if (!__OFSUB__(v113, v114))
                  {
                    goto LABEL_94;
                  }

                  __break(1u);
                }

                else if (!v111)
                {
                  sub_181D9D680(v101, v49);
                  v112 = BYTE6(v49);
LABEL_94:
                  v115 = v164;
                  *(v104 + 24) = v112;
                  sub_181D9D680(v101, v49);
                  *(v104 + 32) = 1024;
                  *(v104 + 34) = v100;
                  _os_log_impl(&dword_181A37000, v102, v115, "%s: Handling message of type %s length: %ld isCompressed: %{BOOL}d", v104, 0x26u);
                  v116 = v165;
                  swift_arrayDestroy();
                  MEMORY[0x1865DF520](v116, -1, -1);
                  MEMORY[0x1865DF520](v104, -1, -1);
LABEL_95:

                  if (v100)
                  {
                    if (v80 < 3)
                    {
                      v119 = sub_182075BC0(47, v101, v49);
                      v122 = v134;
                      v120 = v119;
                    }

                    else
                    {
                      v117 = sub_182AD2138();
                      *&v183 = 0;
                      v118 = [v117 decompressedDataUsingAlgorithm:0 error:&v183];

                      v119 = v183;
                      if (!v118)
                      {
                        goto LABEL_119;
                      }

                      v120 = sub_182AD2158();
                      v122 = v121;
                    }

                    v135 = v49 >> 62;
                    if ((v49 >> 62) <= 1)
                    {
                      if (v135)
                      {
                        if (__OFSUB__(HIDWORD(v101), v101))
                        {
                          __break(1u);
                          return;
                        }

                        v123 = HIDWORD(v101) - v101;
                      }

                      else
                      {
                        v123 = BYTE6(v49);
                      }

                      goto LABEL_100;
                    }

                    if (v135 == 2)
                    {
                      v138 = *(v101 + 16);
                      v137 = *(v101 + 24);
                      v123 = v137 - v138;
                      if (!__OFSUB__(v137, v138))
                      {
                        goto LABEL_100;
                      }

                      __break(1u);
LABEL_119:
                      v139 = v119;
                      v140 = sub_182AD1F08();

                      swift_willThrow();

                      v141 = v140;
                      v125 = sub_182AD2678();
                      v142 = sub_182AD38B8();

                      if (os_log_type_enabled(v125, v142))
                      {
                        v143 = swift_slowAlloc();
                        v144 = swift_slowAlloc();
                        *&v181 = v144;
                        *v143 = 136315394;
                        *&v183 = 67;
                        *(&v183 + 1) = 0xE100000000000000;
                        id = nw_connection_get_id(*(*(v25 + 16) + 16));
                        v145 = sub_182AD41B8();
                        MEMORY[0x1865D9CA0](v145);

                        v146 = sub_181C64FFC(v183, *(&v183 + 1), &v181);

                        *(v143 + 4) = v146;
                        *(v143 + 12) = 2080;
                        *&v183 = v140;
                        v147 = v140;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
                        v148 = sub_182AD3038();
                        v150 = sub_181C64FFC(v148, v149, &v181);

                        *(v143 + 14) = v150;
                        _os_log_impl(&dword_181A37000, v125, v142, "%s: Failed to unzip data: %s", v143, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x1865DF520](v144, -1, -1);
                        MEMORY[0x1865DF520](v143, -1, -1);

LABEL_124:
                        goto LABEL_125;
                      }

LABEL_125:
                      v136 = v172;
                      LOBYTE(is_final) = v167;
LABEL_126:
                      v151 = sub_182AD2608();
                      v152 = v177;
                      sub_182AD2638();
                      v153 = sub_182AD3948();
                      if (sub_182AD3998())
                      {

                        v154 = v174;
                        sub_182AD2668();

                        v156 = v175;
                        v155 = v176;
                        if ((*(v175 + 88))(v154, v176) == *MEMORY[0x1E69E93E8])
                        {
                          v157 = "[Error] Interval already ended";
                        }

                        else
                        {
                          (*(v156 + 8))(v154, v155);
                          v157 = "";
                        }

                        v152 = v177;
                        v158 = swift_slowAlloc();
                        *v158 = 0;
                        v159 = sub_182AD25C8();
                        _os_signpost_emit_with_name_impl(&dword_181A37000, v151, v153, v159, "handleMessage", v157, v158, 2u);
                        MEMORY[0x1865DF520](v158, -1, -1);
                      }

                      v160 = v178;
                      v161 = v168;
                      v162 = (v168)(v152, v178);
                      if (!is_final)
                      {
                        sub_182154558(v162);

                        sub_181D9D680(v171, v49);
                        v161(v136, v160);
                        goto LABEL_31;
                      }

                      v161(v136, v160);
                      sub_181D9D680(v171, v49);

LABEL_133:

LABEL_31:
                      sub_182159C20(is_final, v25);
LABEL_32:

                      return;
                    }

                    v123 = 0;
                  }

                  else
                  {
                    sub_181F49B58(v101, v49);
                    v123 = 0;
                    v120 = v101;
                    v122 = v49;
                  }

LABEL_100:
                  if (v80 > 1)
                  {
                    if (v80 == 2)
                    {
                      sub_1821603EC();
                    }

                    else if (v80 == 3)
                    {
                      sub_18215A4F8(v120, v122);
                    }

                    else
                    {
                      sub_18215AE90(v120, v122, v123, v100 ^ 1u);
                    }

                    sub_181C1F2E4(v120, v122);
                    v136 = v172;
                    LOBYTE(is_final) = v167;
                    goto LABEL_126;
                  }

                  if (!v80)
                  {
                    v124 = v120;

                    v125 = sub_182AD2678();
                    v126 = sub_182AD38B8();

                    if (os_log_type_enabled(v125, v126))
                    {
                      v127 = v122;
                      v128 = swift_slowAlloc();
                      v129 = swift_slowAlloc();
                      *&v181 = v129;
                      *v128 = 136315138;
                      *&v183 = 67;
                      *(&v183 + 1) = 0xE100000000000000;
                      id = nw_connection_get_id(*(*(v25 + 16) + 16));
                      v130 = sub_182AD41B8();
                      MEMORY[0x1865D9CA0](v130);

                      v131 = sub_181C64FFC(v183, *(&v183 + 1), &v181);

                      *(v128 + 4) = v131;
                      _os_log_impl(&dword_181A37000, v125, v126, "%s: Received invalid message", v128, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v129);
                      MEMORY[0x1865DF520](v129, -1, -1);
                      MEMORY[0x1865DF520](v128, -1, -1);
                      v132 = v124;
                      v133 = v127;
                    }

                    else
                    {
                      v132 = v124;
                      v133 = v122;
                    }

                    sub_181C1F2E4(v132, v133);
                    goto LABEL_124;
                  }

                  sub_182159DD4();
                  sub_181C1F2E4(v120, v122);
                  goto LABEL_125;
                }

                sub_181D9D680(v101, v49);
                LODWORD(v112) = HIDWORD(v101) - v101;
                if (__OFSUB__(HIDWORD(v101), v101))
                {
                  __break(1u);
                }

                v112 = v112;
                goto LABEL_94;
              }

              v109 = "terminateProcess";
            }

            v107 = (v109 - 32) | 0x8000000000000000;
            v108 = 0xD000000000000010;
            goto LABEL_84;
          }
        }
      }
    }

    else
    {
      LOBYTE(is_final) = 0;
    }

    v71 = sub_182AD2678();
    v72 = sub_182AD38B8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v181 = v74;
      *v73 = 136315138;
      *&v183 = 67;
      *(&v183 + 1) = 0xE100000000000000;
      id = nw_connection_get_id(*(*(v25 + 16) + 16));
      v75 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v75);

      v76 = sub_181C64FFC(v183, *(&v183 + 1), &v181);

      *(v73 + 4) = v76;
      _os_log_impl(&dword_181A37000, v71, v72, "%s Failed to determine message type", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1865DF520](v74, -1, -1);
      MEMORY[0x1865DF520](v73, -1, -1);
    }

    goto LABEL_31;
  }
}

void sub_182159C20(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA836930);

    v4 = sub_182AD2678();
    v5 = sub_182AD38D8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 136315138;
      v10 = v7;
      nw_connection_get_id(*(*(a2 + 16) + 16));
      v8 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v8);

      v9 = sub_181C64FFC(67, 0xE100000000000000, &v10);

      *(v6 + 4) = v9;
      _os_log_impl(&dword_181A37000, v4, v5, "%s: Message is final, connection has ended", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1865DF520](v7, -1, -1);
      MEMORY[0x1865DF520](v6, -1, -1);
    }

    sub_1821547E8(0);
  }
}

uint64_t sub_182159DD4()
{
  v1 = type metadata accessor for CancelRemoteCall(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  sub_182AD1C48();
  swift_allocObject();
  sub_182AD1C38();
  sub_18216065C(&qword_1EA83AB80, type metadata accessor for CancelRemoteCall);
  sub_182AD1C18();

  v13 = sub_182160C44(v9, v12, type metadata accessor for CancelRemoteCall);
  v14 = *(v0 + 80);
  MEMORY[0x1EEE9AC00](v13);
  v36[-2] = v0;
  v36[-1] = v12;
  MEMORY[0x1EEE9AC00](v15);
  v36[-2] = sub_1821606A4;
  v36[-1] = v16;
  os_unfair_lock_lock(v14 + 4);
  sub_181FCE618(v36);
  os_unfair_lock_unlock(v14 + 4);
  if (v36[0])
  {
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v17 = sub_182AD2698();
    __swift_project_value_buffer(v17, qword_1EA836930);
    sub_181D8E250(v12, v6, type metadata accessor for CancelRemoteCall);
    v18 = sub_182AD2678();
    v19 = sub_182AD38D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136315138;
      sub_182AD2258();
      sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
      v22 = sub_182AD41B8();
      v24 = v23;
      sub_18215FB58(v6, type metadata accessor for CancelRemoteCall);
      v25 = sub_181C64FFC(v22, v24, v36);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_181A37000, v18, v19, "Cancelling call ID: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1865DF520](v21, -1, -1);
      MEMORY[0x1865DF520](v20, -1, -1);
    }

    else
    {

      sub_18215FB58(v6, type metadata accessor for CancelRemoteCall);
    }

    sub_182AD3608();
  }

  else
  {
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1EA836930);
    sub_181D8E250(v12, v3, type metadata accessor for CancelRemoteCall);
    v27 = sub_182AD2678();
    v28 = sub_182AD38B8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136315138;
      sub_182AD2258();
      sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
      v31 = sub_182AD41B8();
      v33 = v32;
      sub_18215FB58(v3, type metadata accessor for CancelRemoteCall);
      v34 = sub_181C64FFC(v31, v33, v36);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_181A37000, v27, v28, "Could not find task for call ID: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1865DF520](v30, -1, -1);
      MEMORY[0x1865DF520](v29, -1, -1);
    }

    else
    {

      sub_18215FB58(v3, type metadata accessor for CancelRemoteCall);
    }
  }

  return sub_18215FB58(v12, type metadata accessor for CancelRemoteCall);
}

uint64_t sub_18215A4F8(uint64_t a1, unint64_t a2)
{
  v67 = a1;
  v68 = a2;
  v2 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAC8);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v57 - v9;
  v69 = sub_182AD25E8();
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_182AD2618();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RemoteCallEnvelope(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v57 - v24;
  if (qword_1EA8369C8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v12, qword_1EA8369D8);
  (*(v13 + 16))(v15, v25, v12);
  sub_182AD25D8();
  v26 = swift_slowAlloc();
  *v26 = 0;
  v27 = sub_182AD2608();
  v28 = sub_182AD3958();
  v29 = sub_182AD25C8();
  _os_signpost_emit_with_name_impl(&dword_181A37000, v27, v28, v29, "decodeRemoteCallEnvelope", "", v26, 2u);
  v31 = v67;
  v30 = v68;
  sub_181F49B58(v67, v68);
  sub_1822A2100(v31, v30, v18);
  v68 = v16;
  v32 = sub_182AD3948();
  v33 = sub_182AD25C8();
  _os_signpost_emit_with_name_impl(&dword_181A37000, v27, v32, v33, "decodeRemoteCallEnvelope", "", v26, 2u);

  v34 = v59;
  sub_182160C44(v18, v59, type metadata accessor for RemoteCallEnvelope);
  MEMORY[0x1865DF520](v26, -1, -1);
  v35 = v60;
  sub_182160C44(v34, v60, type metadata accessor for RemoteCallEnvelope);
  (*(v66 + 8))(v11, v69);
  (*(v13 + 8))(v15, v12);
  v36 = v35;
  v37 = v65;
  v38 = sub_182160C44(v36, v65, type metadata accessor for RemoteCallEnvelope);
  v39 = v70;
  v40 = *(v70 + 80);
  MEMORY[0x1EEE9AC00](v38);
  *(&v57 - 2) = sub_182160D8C;
  *(&v57 - 1) = v39;
  os_unfair_lock_lock(v40 + 4);
  v41 = v64;
  sub_18215FD68(v42);
  os_unfair_lock_unlock(v40 + 4);
  v43 = v61;
  sub_181AB5D28(v41, v61, &qword_1EA83AAE8);
  v45 = v62;
  v44 = v63;
  if ((*(v62 + 48))(v43, 1, v63) == 1)
  {
    v46 = sub_181F49A88(v43, &qword_1EA83AAE8);
  }

  else
  {
    v47 = v57;
    v48 = (*(v45 + 32))(v57, v43, v44);
    v49 = v65 + *(v68 + 20);
    MEMORY[0x1EEE9AC00](v48);
    *(&v57 - 2) = v39;
    *(&v57 - 1) = v49;
    MEMORY[0x1EEE9AC00](v50);
    *(&v57 - 2) = sub_182160D54;
    *(&v57 - 1) = v51;
    os_unfair_lock_lock(v40 + 4);
    sub_182160DBC(v52);
    os_unfair_lock_unlock(v40 + 4);
    v37 = v65;
    sub_181D8E250(v49, v58, type metadata accessor for NWActorID);
    sub_182AD34C8();
    v46 = (*(v45 + 8))(v47, v44);
  }

  MEMORY[0x1EEE9AC00](v46);
  *(&v57 - 2) = v39;
  *(&v57 - 1) = v37;
  MEMORY[0x1EEE9AC00](v53);
  *(&v57 - 2) = sub_1821606C0;
  *(&v57 - 1) = v54;
  os_unfair_lock_lock(v40 + 4);
  sub_182160DBC(v55);
  os_unfair_lock_unlock(v40 + 4);
  sub_181F49A88(v41, &qword_1EA83AAE8);
  return sub_18215FB58(v37, type metadata accessor for RemoteCallEnvelope);
}

uint64_t sub_18215AE90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v180 = a3;
  v179 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A568);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v172 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10);
  v182 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v172 - v10;
  v12 = type metadata accessor for ReplyEnvelope();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v172 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v172 - v19;
  sub_181F49B58(a1, a2);
  v21 = sub_1822B6118(a1, a2, v20);
  *&v174 = v12;
  v175 = a1;
  v176 = v14;
  *&v173 = v17;
  v177 = v11;
  v22 = *(v181 + 80);
  MEMORY[0x1EEE9AC00](v21);
  v172[-2] = v24;
  v172[-1] = v23;
  v178 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v172[-2] = sub_1821609D8;
  v172[-1] = v26;
  os_unfair_lock_lock(v22 + 4);
  sub_182160DA4(v27);
  os_unfair_lock_unlock(v22 + 4);
  v28 = v182;
  if ((*(v182 + 48))(v8, 1, v9) == 1)
  {
    sub_181F49A88(v8, &qword_1EA83A568);
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v29 = sub_182AD2698();
    __swift_project_value_buffer(v29, qword_1EA836930);
    v30 = v178;
    v31 = v176;
    sub_181D8E250(v178, v176, type metadata accessor for ReplyEnvelope);
    v32 = sub_182AD2678();
    v33 = sub_182AD38B8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v183 = v35;
      *v34 = 136315138;
      sub_182AD2258();
      sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
      v36 = sub_182AD41B8();
      v38 = v37;
      sub_18215FB58(v31, type metadata accessor for ReplyEnvelope);
      v39 = sub_181C64FFC(v36, v38, &v183);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_181A37000, v32, v33, "No continuation for reply with call ID: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1865DF520](v35, -1, -1);
      MEMORY[0x1865DF520](v34, -1, -1);
    }

    else
    {

      sub_18215FB58(v31, type metadata accessor for ReplyEnvelope);
    }

    v50 = v30;
    return sub_18215FB58(v50, type metadata accessor for ReplyEnvelope);
  }

  v40 = *(v28 + 32);
  v41 = v177;
  v176 = v9;
  result = v40(v177, v8, v9);
  v43 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v45 = v178;
    v44 = v179;
    v46 = v180;
    v48 = v174;
    if (v43 != 2)
    {
      v49 = 0;
      goto LABEL_18;
    }

    v47 = *(v175 + 16);
    v51 = *(v175 + 24);
    v52 = __OFSUB__(v51, v47);
    v49 = v51 - v47;
    v53 = v173;
    if (!v52)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    v45 = v178;
    v44 = v179;
    v46 = v180;
    v47 = v175;
    v48 = v174;
    if (!v43)
    {
      v49 = BYTE6(a2);
LABEL_18:
      v53 = v173;
LABEL_19:
      v54 = v45 + v48[6];
      v55 = *v54;
      v56 = *(v54 + 16);
      LODWORD(v57) = *(v54 + 32);
      v181 = *(v54 + 24);
      if ((~v181 & 0x3000000000000000) == 0 && v57 == 255)
      {
        v58 = v45 + v48[7];
        v59 = *(v58 + 8);
        v60 = *v58;
        v61 = (v45 + v48[5]);
        v62 = *v61;
        v63 = v61[1];
        LOBYTE(v188[0]) = 0;
        *&v183 = v62;
        *(&v183 + 1) = v63;
        *&v184 = v49;
        *(&v184 + 1) = v46;
        v185 = v44 & 1;
        v186 = v60;
        v187 = v59;
        sub_181F49B58(v62, v63);
        v64 = v45;
        v65 = v176;
        sub_182AD34C8();
        (*(v28 + 8))(v41, v65);
LABEL_56:
        v50 = v64;
        return sub_18215FB58(v50, type metadata accessor for ReplyEnvelope);
      }

      v172[0] = 0;
      v173 = v56;
      v174 = v55;
      v66 = *(&v55 + 1);
      v67 = v56;
      v180 = v55;
      sub_1821609F4(v55, *(&v55 + 1), v56, v181, v57 & 1);
      if (qword_1EA836920 != -1)
      {
        swift_once();
      }

      v68 = sub_182AD2698();
      v69 = __swift_project_value_buffer(v68, qword_1EA836930);
      sub_181D8E250(v45, v53, type metadata accessor for ReplyEnvelope);
      v70 = v180;
      v71 = v181;
      sub_1821609F4(v180, v66, v67, v181, v57 & 1);
      v172[1] = v69;
      v72 = sub_182AD2678();
      v73 = sub_182AD38B8();
      sub_1821608A8(v70, v66, v67, v71, v57);
      v74 = os_log_type_enabled(v72, v73);
      LODWORD(v179) = v57;
      v175 = v67;
      if (v74)
      {
        v57 = v66;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v188[0] = v76;
        *v75 = 136315394;
        sub_182AD2258();
        sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
        v77 = sub_182AD41B8();
        v79 = v78;
        sub_18215FB58(v53, type metadata accessor for ReplyEnvelope);
        v80 = sub_181C64FFC(v77, v79, v188);

        *(v75 + 4) = v80;
        *(v75 + 12) = 2080;
        v183 = v174;
        v184 = v173;
        LOBYTE(v185) = v179 & 1;
        sub_1821609F4(v180, v57, v67, v181, v179 & 1);
        v81 = sub_182AD3038();
        v83 = sub_181C64FFC(v81, v82, v188);

        *(v75 + 14) = v83;
        v84 = v177;
        _os_log_impl(&dword_181A37000, v72, v73, "Reply %s failed: %s", v75, 0x16u);
        swift_arrayDestroy();
        v85 = v76;
        v28 = v182;
        MEMORY[0x1865DF520](v85, -1, -1);
        v86 = v75;
        v66 = v57;
        LOBYTE(v57) = v179;
        MEMORY[0x1865DF520](v86, -1, -1);
      }

      else
      {

        sub_18215FB58(v53, type metadata accessor for ReplyEnvelope);
        v84 = v177;
      }

      v87 = (v181 >> 60) & 3 | (4 * (v57 & 1));
      if (v87 <= 1)
      {
        if (!v87)
        {
          sub_181FCD1A0();
          v89 = swift_allocError();
          *v90 = v180;
          v90[1] = v66;
          v91 = 0x8000000000000000;
LABEL_53:
          v90[2] = v91;
          *&v183 = v89;
          v109 = v176;
          sub_182AD34B8();
          goto LABEL_54;
        }

        *&v174 = v66;
        v114 = sub_182AD3BC8();
        if (!v114 || (v115 = dynamic_cast_existential_2_conditional(v114)) == 0)
        {
          *&v183 = 0;
          *(&v183 + 1) = 0xE000000000000000;
          sub_182AD3BA8();

          *&v183 = 0xD00000000000001FLL;
          *(&v183 + 1) = 0x8000000182BDF0E0;
          MEMORY[0x1865D9CA0](v180, v174);
          v137 = v183;

          v138 = sub_182AD2678();
          v139 = sub_182AD38B8();

          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            *&v183 = v141;
            *v140 = 136315138;
            *(v140 + 4) = sub_181C64FFC(v137, *(&v137 + 1), &v183);
            _os_log_impl(&dword_181A37000, v138, v139, "%s", v140, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v141);
            v142 = v141;
            v84 = v177;
            MEMORY[0x1865DF520](v142, -1, -1);
            MEMORY[0x1865DF520](v140, -1, -1);
          }

          sub_181FCD1A0();
          v143 = swift_allocError();
          *v144 = v137;
          *(v144 + 16) = 0x8000000000000000;
          v145 = swift_allocError();
          *v146 = v143;
          *(v146 + 8) = xmmword_182AF9680;
          *&v183 = v145;

          v109 = v176;
          sub_182AD34B8();
          sub_1821608A8(v180, v174, v175, v181, v179);

          goto LABEL_54;
        }

        v118 = v115;
        v119 = v116;
        v120 = v117;
        sub_182AD1C48();
        swift_allocObject();
        sub_182AD1C38();
        *(&v184 + 1) = v118;
        v185 = v119;
        v186 = v120;
        __swift_allocate_boxed_opaque_existential_0Tm(&v183);
        v92 = v172[0];
        sub_182AD1C18();
        if (!v92)
        {

          v149 = *(&v184 + 1);
          v150 = __swift_project_boxed_opaque_existential_1(&v183, *(&v184 + 1));
          v151 = *(v149 - 8);
          v152 = MEMORY[0x1EEE9AC00](v150);
          v154 = v172 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v151 + 16))(v154, v152);
          v155 = sub_182AD4218();
          if (v155)
          {
            v156 = v155;
            (*(v151 + 8))(v154, v149);
          }

          else
          {
            v156 = swift_allocError();
            (*(v151 + 32))(v169, v154, v149);
          }

          v188[0] = v156;
          v170 = v176;
          v171 = v177;
          sub_182AD34B8();
          sub_1821608A8(v180, v174, v175, v181, v179);
          (*(v28 + 8))(v171, v170);
          __swift_destroy_boxed_opaque_existential_1(&v183);
          goto LABEL_55;
        }

        __swift_deallocate_boxed_opaque_existential_1Tm(&v183);
        v121 = v92;
        v122 = sub_182AD2678();
        v123 = sub_182AD38B8();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *&v183 = v125;
          *v124 = 136315394;
          v126 = sub_182AD46E8();
          v128 = sub_181C64FFC(v126, v127, &v183);

          *(v124 + 4) = v128;
          *(v124 + 12) = 2080;
          v188[0] = v92;
          v129 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
          v130 = sub_182AD3038();
          v132 = sub_181C64FFC(v130, v131, &v183);

          *(v124 + 14) = v132;
          v28 = v182;
          _os_log_impl(&dword_181A37000, v122, v123, "Failed to decode value to %s: %s", v124, 0x16u);
          swift_arrayDestroy();
          v133 = v125;
          v84 = v177;
          MEMORY[0x1865DF520](v133, -1, -1);
          MEMORY[0x1865DF520](v124, -1, -1);
        }

        sub_181FCD1A0();
        v134 = swift_allocError();
        *v135 = v92;
        *(v135 + 8) = xmmword_182AF9680;
        *&v183 = v134;
        v136 = v92;
        v109 = v176;
        sub_182AD34B8();
        v110 = v180;
        v111 = v174;
        v112 = v175;
      }

      else
      {
        v88 = v175;
        if (v87 != 2)
        {
          if (v87 == 3)
          {
            sub_181FCD1A0();
            v89 = swift_allocError();
            *v90 = v180;
            v90[1] = v66;
            v91 = 0xA000000000000000;
          }

          else
          {
            if (v175 | v66 | v180 | v181)
            {
              sub_181FCD1A0();
              v89 = swift_allocError();
              v113 = xmmword_182AF1390;
            }

            else
            {
              sub_181FCD1A0();
              v89 = swift_allocError();
              v113 = xmmword_182AE8BA0;
            }

            *v90 = v113;
            v91 = 0xB000000000000000;
          }

          goto LABEL_53;
        }

        sub_18214ED5C(0, &qword_1EA83AB90);
        sub_18214ED5C(0, &qword_1EA83AB98);
        v92 = v172[0];
        v93 = sub_182AD38E8();
        if (!v92)
        {
          if (v93)
          {
            *&v183 = v93;
            v147 = v93;
            v148 = v176;
            sub_182AD34B8();
            sub_1821608A8(v180, v66, v88, v181, v179);

            (*(v28 + 8))(v84, v148);
          }

          else
          {
            v157 = sub_182AD2678();
            v158 = sub_182AD38B8();
            if (os_log_type_enabled(v157, v158))
            {
              v159 = swift_slowAlloc();
              v160 = v66;
              v161 = swift_slowAlloc();
              *&v183 = v161;
              *v159 = 136315138;
              *(v159 + 4) = sub_181C64FFC(0xD000000000000027, 0x8000000182BDF0B0, &v183);
              _os_log_impl(&dword_181A37000, v157, v158, "%s", v159, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v161);
              v162 = v161;
              v66 = v160;
              MEMORY[0x1865DF520](v162, -1, -1);
              MEMORY[0x1865DF520](v159, -1, -1);
            }

            sub_181FCD1A0();
            v163 = swift_allocError();
            *v164 = 0xD000000000000027;
            v164[1] = 0x8000000182BDF0B0;
            v164[2] = 0x8000000000000000;
            v165 = swift_allocError();
            *v166 = v163;
            *(v166 + 8) = xmmword_182AF9680;
            *&v183 = v165;
            v167 = v176;
            v168 = v177;
            sub_182AD34B8();
            sub_1821608A8(v180, v66, v175, v181, v179);
            (*(v28 + 8))(v168, v167);
          }

          goto LABEL_55;
        }

        v94 = v92;
        v95 = sub_182AD2678();
        v96 = sub_182AD38B8();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = v66;
          v99 = swift_slowAlloc();
          *&v183 = v99;
          *v97 = 136315138;
          v188[0] = v92;
          v100 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
          v101 = sub_182AD3038();
          v103 = sub_181C64FFC(v101, v102, &v183);
          v84 = v177;

          *(v97 + 4) = v103;
          v28 = v182;
          _os_log_impl(&dword_181A37000, v95, v96, "Failed to decode data to NSError: %s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v99);
          v104 = v99;
          v66 = v98;
          MEMORY[0x1865DF520](v104, -1, -1);
          v105 = v97;
          v88 = v175;
          MEMORY[0x1865DF520](v105, -1, -1);
        }

        sub_181FCD1A0();
        v106 = swift_allocError();
        *v107 = v92;
        *(v107 + 8) = xmmword_182AF9680;
        *&v183 = v106;
        v108 = v92;
        v109 = v176;
        sub_182AD34B8();
        v110 = v180;
        v111 = v66;
        v112 = v88;
      }

      sub_1821608A8(v110, v111, v112, v181, v179);

LABEL_54:
      (*(v28 + 8))(v84, v109);
LABEL_55:
      v64 = v178;
      goto LABEL_56;
    }
  }

  LODWORD(v49) = HIDWORD(v47) - v47;
  if (!__OFSUB__(HIDWORD(v47), v47))
  {
    v49 = v49;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}