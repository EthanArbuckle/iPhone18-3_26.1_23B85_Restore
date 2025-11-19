id sub_23819D880(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_callback];
  *v7 = 0;
  v7[1] = 0;
  swift_unknownObjectWeakInit();
  sub_2381CA09C();
  v8 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33F8, &qword_2381CB298);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v3[v8] = v9;
  *&v3[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled] = 1;
  *&v3[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory] = 0;
  v10 = *v7;
  v11 = v7[1];
  *v7 = a2;
  v7[1] = a3;

  sub_2381A5CDC(v10);
  swift_unknownObjectWeakAssign();
  v17.receiver = v3;
  v17.super_class = type metadata accessor for DockAccessoryManagerHelper(0);
  v12 = objc_msgSendSuper2(&v17, sel_init);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = v12;
    sub_2381C9ABC();
  }

  return v12;
}

uint64_t sub_23819DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_task_alloc();
  *(v8 + 16) = v12;
  *v12 = v8;
  v12[1] = sub_23819DAE0;

  return (sub_2381A3EC4)(a5, a6, a8);
}

uint64_t sub_23819DAE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23819DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2381A6008(a3, v26 - v10, &qword_27DEF33A0, &qword_2381CB200);
  v12 = sub_2381CA24C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2381A6070(v11, &qword_27DEF33A0, &qword_2381CB200);
  }

  else
  {
    sub_2381CA23C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2381CA21C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2381CA12C() + 32;
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

      sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);

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

  sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);
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

uint64_t sub_23819DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2381A6008(a3, v27 - v11, &qword_27DEF33A0, &qword_2381CB200);
  v13 = sub_2381CA24C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2381A6070(v12, &qword_27DEF33A0, &qword_2381CB200);
  }

  else
  {
    sub_2381CA23C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2381CA21C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2381CA12C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33D0, &qword_2381CC9C0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);

      return v24;
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

  sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33D0, &qword_2381CC9C0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23819E1E8(char a1)
{
  v2 = v1;
  v4 = sub_2381CA0AC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger;
  v30 = v5[2];
  v30(&v28 - v10, v2 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v4);
  v13 = sub_2381CA08C();
  v14 = sub_2381CA2DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v9;
    v16 = v15;
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_23819C000, v13, v14, "Helper: setting system tracking enabled %{BOOL}d", v15, 8u);
    v17 = v16;
    v9 = v29;
    MEMORY[0x2383EBBE0](v17, -1, -1);
  }

  v18 = v5[1];
  result = v18(v11, v4);
  *(v2 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled) = a1 & 1;
  if (a1)
  {
    v30(v9, v2 + v12, v4);
    v20 = sub_2381CA08C();
    v21 = sub_2381CA2DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23819C000, v20, v21, "System tracking enabled, stopping tracking loop for previously-vended accessories", v22, 2u);
      MEMORY[0x2383EBBE0](v22, -1, -1);
    }

    v23 = v18(v9, v4);
    v24 = *(v2 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
    v25 = MEMORY[0x28223BE20](v23);
    *(&v28 - 2) = v2;
    MEMORY[0x28223BE20](v25);
    *(&v28 - 2) = sub_2381A5F7C;
    *(&v28 - 1) = v26;

    os_unfair_lock_lock(v24 + 4);
    sub_2381A6584();
    os_unfair_lock_unlock(v24 + 4);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
    if (v27)
    {
      *(v27 + OBJC_IVAR____TtC7DockKit13DockAccessory__tracking) = 0;
    }
  }

  return result;
}

void sub_23819E500(uint64_t a1)
{
  *&v57 = sub_2381CA0AC();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
  swift_beginAccess();
  v45 = v6;
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);
  v53 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger;
  v55 = v7;

  v47 = a1;
  v54 = v8;
  if (v8)
  {
    v10 = 0;
    v51 = (v2 + 8);
    v52 = (v2 + 16);
    v11 = (v55 + 40);
    *&v9 = 136315138;
    v46 = v9;
    v48 = v5;
    while (v10 < *(v55 + 16))
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      (v12)(&v59, v14);
      v15 = v59;
      if (v59)
      {
        v56 = v12;
        v16 = a1;
        (*v52)(v5, a1 + v53, v57);
        v17 = v15;
        v18 = sub_2381CA08C();
        v19 = sub_2381CA2DC();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50 = v17;
          v59 = v49;
          *v20 = v46;

          v21 = sub_2381C9B0C();
          v22 = sub_2381C9A0C();
          v24 = v23;

          v25 = sub_2381C3094(v22, v24, &v59);
          a1 = v47;

          *(v20 + 4) = v25;
          _os_log_impl(&dword_23819C000, v18, v19, "Stopping tracking loop for %s", v20, 0xCu);
          v26 = v49;
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x2383EBBE0](v26, -1, -1);
          v27 = v20;
          v5 = v48;
          MEMORY[0x2383EBBE0](v27, -1, -1);

          v28 = (*v51)(v5, v57);
          v29 = v50;
        }

        else
        {

          v28 = (*v51)(v5, v57);
          v29 = v17;
          a1 = v16;
        }

        (v56)(&v59, v28);
        v30 = v59;
        if (v59)
        {
          sub_2381C9C4C();
          if (swift_dynamicCastClass())
          {
            v31 = v30;
            sub_2381C9BDC();

            v5 = v48;
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }

      ++v10;
      v11 += 2;
      if (v54 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_15:

  v32 = *(a1 + v45);
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = v33 - 1;
    v36 = MEMORY[0x277D84F90];
LABEL_17:
    v37 = v34;
    while (v37 < *(v32 + 16))
    {
      v57 = *(v32 + 32 + 16 * v37);
      v34 = (v37 + 1);

      (v57)(&v58, v38);
      if (v58)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v36;
        v56 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2381C363C(0, *(v36 + 16) + 1, 1);
          v36 = v59;
        }

        v40 = v57;
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_2381C363C((v41 > 1), v42 + 1, 1);
          v40 = v57;
          v36 = v59;
        }

        *(v36 + 16) = v42 + 1;
        *(v36 + 16 * v42 + 32) = v40;
        v35 = v56;
        if (v56 != v37)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      ++v37;
      if (v33 == v34)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
    return;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_29:

  v43 = *(v47 + v45);
  *(v47 + v45) = v36;
}

uint64_t sub_23819E9C4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
  swift_beginAccess();
  v25 = v6;
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    while (v10 < *(v7 + 16))
    {
      v11 = v10 + 1;
      *v27 = *(v7 + 32 + 16 * v10);

      sub_23819EBFC(v27, a2, a1, a3);

      v10 = v11;
      if (v8 == v11)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_5:

  v12 = *(a1 + v25);
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
LABEL_7:
    v16 = v14;
    while (v16 < *(v12 + 16))
    {
      v26 = *(v12 + 32 + 16 * v16);
      v14 = v16 + 1;

      (v26)(&v28, v17);
      if (v28)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v27[0] = v15;
        if ((result & 1) == 0)
        {
          result = sub_2381C363C(0, *(v15 + 2) + 1, 1);
          v15 = v27[0];
        }

        v18 = v26;
        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v22 = v20 + 1;
          v24 = v20;
          result = sub_2381C363C((v19 > 1), v20 + 1, 1);
          v21 = v22;
          v20 = v24;
          v18 = v26;
          v15 = v27[0];
        }

        *(v15 + 2) = v21;
        *(v15 + v20 + 2) = v18;
        if (v13 - 1 != v16)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }

      ++v16;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
    return result;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_19:

  v23 = *(a1 + v25);
  *(a1 + v25) = v15;
}

void sub_23819EBFC(void (**a1)(uint64_t **__return_ptr, uint64_t), void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v8 = sub_2381CA0AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  (*a1)(&v41, v11);
  v16 = v41;
  if (v41)
  {
    v39 = v15;
    v17 = sub_2381C9B0C();

    sub_2381C9A2C();
    v18 = v17;
    v19 = a2;
    v20 = sub_2381CA2FC();

    if (v20)
    {
      v21 = v9;
      (*(v9 + 16))(v13, a3 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v8);
      v18 = v18;
      v22 = sub_2381CA08C();
      v23 = sub_2381CA2DC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v38 = v4;
        v25 = v24;
        v37 = swift_slowAlloc();
        v41 = v37;
        *v25 = 136315394;

        v36 = v23;
        v26 = sub_2381C9A0C();
        v28 = sub_2381C3094(v26, v27, &v41);

        *(v25 + 4) = v28;
        *(v25 + 12) = 1024;
        v29 = v22;
        v30 = sub_2381C9E5C();
        *(v25 + 14) = v30 == sub_2381C9E5C();
        _os_log_impl(&dword_23819C000, v29, v36, "Updating tracking button state on %s to %{BOOL}d", v25, 0x12u);
        v31 = v37;
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x2383EBBE0](v31, -1, -1);
        MEMORY[0x2383EBBE0](v25, -1, -1);
      }

      else
      {
      }

      v32 = (*(v21 + 8))(v13, v8);
      v39(&v41, v32);
      v33 = v41;
      if (v41)
      {
        sub_2381C9C4C();
        if (!swift_dynamicCastClass())
        {

          return;
        }

        v34 = v33;
        sub_2381C9E5C();
        sub_2381C9E5C();
        sub_2381C9C3C();
      }
    }
  }
}

uint64_t sub_23819EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2381CA0AC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23819EFE4, 0, 0);
}

uint64_t sub_23819EFE4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger;
  v0[7] = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger;
  v6 = *(v3 + 16);
  v0[8] = v6;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, &v4[v5], v2);
  v7 = v4;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v10[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled];

    _os_log_impl(&dword_23819C000, v8, v9, "XPC disconnected, attempting to re-connect and set system tracking enabled: %{BOOL}d", v11, 8u);
    MEMORY[0x2383EBBE0](v11, -1, -1);
    v12 = v0[2];
  }

  else
  {

    v8 = v0[2];
  }

  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];

  v16 = *(v15 + 8);
  v0[10] = v16;
  v0[11] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v18 = v0[2];
    v19 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled;
    v0[13] = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled;
    v20 = *(v18 + v19);
    v21 = *(MEMORY[0x277D05B20] + 4);
    v22 = swift_task_alloc();
    v0[14] = v22;
    *v22 = v0;
    v22[1] = sub_23819F208;

    return MEMORY[0x28215B1E0](v20);
  }

  else
  {
    v24 = v0[5];
    v23 = v0[6];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_23819F208()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23819F354, 0, 0);
  }

  else
  {

    v5 = *(v3 + 40);
    v4 = *(v3 + 48);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_23819F354()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  v3(v5, &v7[v4], v6);
  v8 = v7;
  v9 = v1;
  v10 = sub_2381CA08C();
  v11 = sub_2381CA2CC();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 120);
  if (v12)
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 16);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 67109378;
    *(v16 + 4) = v15[v14];

    *(v16 + 8) = 2112;
    v18 = v13;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 10) = v19;
    *v17 = v19;
    _os_log_impl(&dword_23819C000, v10, v11, "Failed setting system tracking enabled: %{BOOL}d, %@", v16, 0x12u);
    sub_2381A6070(v17, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v17, -1, -1);
    MEMORY[0x2383EBBE0](v16, -1, -1);
  }

  else
  {
    v20 = *(v0 + 16);
  }

  v21 = *(v0 + 88);
  (*(v0 + 80))(*(v0 + 40), *(v0 + 24));
  v23 = *(v0 + 40);
  v22 = *(v0 + 48);

  v24 = *(v0 + 8);

  return v24();
}

id sub_23819F660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DockAccessoryManagerHelper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23819F758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v17 - v10;
  v12 = sub_2381CA24C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  v15 = a1;
  sub_23819DBD4(0, 0, v11, &unk_2381CB210, v13);
}

uint64_t DockKitError.hashValue.getter()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](v1);
  return sub_2381CA49C();
}

uint64_t _s7DockKit0A9AccessoryC11FramingModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](v1);
  return sub_2381CA49C();
}

uint64_t sub_23819F998()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](v1);
  return sub_2381CA49C();
}

uint64_t DockKitError.errorDescription.getter()
{
  *v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2381C98FC();

  return v2;
}

uint64_t sub_23819FD08()
{
  v0 = sub_2381CA0AC();
  __swift_allocate_value_buffer(v0, qword_27DEF32A8);
  __swift_project_value_buffer(v0, qword_27DEF32A8);
  return sub_2381CA09C();
}

uint64_t sub_23819FD88@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v96 = sub_2381CA0AC();
  v98 = *(v96 - 8);
  v4 = *(v98 + 64);
  v5 = MEMORY[0x28223BE20](v96);
  v95 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v97 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E0, &qword_2381CB288);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v85 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v85 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v85 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v85 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v89 = &v85 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v85 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  v100 = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v99;
    return result;
  }

  v86 = v18;
  v87 = v12;
  v88 = a2;
  v93 = v15;
  v34 = sub_2381C9FFC();
  v91 = *(v34 - 8);
  v35 = *(v91 + 56);
  v92 = v31;
  v90 = v34;
  v35(v31, 1, 1);
  v94 = sub_2381C990C();
  v36 = [v94 domain];
  v37 = sub_2381CA0FC();
  v39 = v38;

  if (v37 == 0xD000000000000012 && 0x80000002381CCE50 == v39)
  {

LABEL_7:
    v41 = v94;
    [v94 code];
    v42 = [v41 localizedDescription];
    sub_2381CA0FC();

    sub_2381C9FEC();
    v43 = v90;
    (v35)(v29, 0, 1, v90);
    v44 = v92;
    sub_2381A5F98(v29, v92);
    v45 = v93;
    if (qword_27DEF32A0 != -1)
    {
      swift_once();
    }

    v46 = v96;
    v47 = __swift_project_value_buffer(v96, qword_27DEF32A8);
    (*(v98 + 16))(v97, v47, v46);
    v48 = v41;
    v49 = sub_2381CA08C();
    v50 = sub_2381CA2DC();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v91;
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = v43;
      v55 = swift_slowAlloc();
      *v53 = 138412546;
      *(v53 + 4) = v48;
      *v55 = v48;
      *(v53 + 12) = 2112;
      swift_beginAccess();
      v56 = v44;
      v57 = v89;
      sub_2381A6008(v56, v89, &qword_27DEF33E0, &qword_2381CB288);
      if ((*(v52 + 48))(v57, 1, v54) == 1)
      {
        v58 = v48;
        sub_2381A6070(v57, &qword_27DEF33E0, &qword_2381CB288);
        v59 = 0;
      }

      else
      {
        sub_2381A3A5C(&qword_27DEF33F0, MEMORY[0x277D05CF8]);
        swift_allocError();
        (*(v91 + 32))(v65, v57, v54);
        v66 = v48;
        v52 = v91;
        v59 = _swift_stdlib_bridgeErrorToNSError();
      }

      *(v53 + 14) = v59;
      v55[1] = v59;
      _os_log_impl(&dword_23819C000, v49, v50, "nsErr is %@, coreErr = %@", v53, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF32F0, &qword_2381CB490);
      swift_arrayDestroy();
      MEMORY[0x2383EBBE0](v55, -1, -1);
      MEMORY[0x2383EBBE0](v53, -1, -1);
      v43 = v90;
      v44 = v92;
    }

    v67 = v98;
    (*(v98 + 8))(v97, v46);
    goto LABEL_17;
  }

  v40 = sub_2381CA40C();

  if (v40)
  {
    goto LABEL_7;
  }

  v100 = a1;
  v60 = a1;
  v61 = v90;
  v62 = swift_dynamicCast();
  (v35)(v24, v62 ^ 1u, 1, v61);
  v63 = v24;
  v43 = v61;
  v44 = v92;
  sub_2381A5F98(v63, v92);
  sub_2381A6008(v44, v21, &qword_27DEF33E0, &qword_2381CB288);
  v52 = v91;
  v64 = (*(v91 + 48))(v21, 1, v61);
  v45 = v93;
  if (v64 == 1)
  {

    sub_2381A6070(v21, &qword_27DEF33E0, &qword_2381CB288);
    result = sub_2381A6070(v44, &qword_27DEF33E0, &qword_2381CB288);
    *v88 = 3;
    return result;
  }

  sub_2381A6070(v21, &qword_27DEF33E0, &qword_2381CB288);
  v46 = v96;
  v67 = v98;
LABEL_17:
  v68 = v95;
  if (qword_27DEF32A0 != -1)
  {
    swift_once();
  }

  v69 = __swift_project_value_buffer(v46, qword_27DEF32A8);
  (*(v67 + 16))(v68, v69, v46);
  v70 = sub_2381CA08C();
  v71 = sub_2381CA2DC();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    swift_beginAccess();
    v74 = v86;
    sub_2381A6008(v44, v86, &qword_27DEF33E0, &qword_2381CB288);
    if ((*(v52 + 48))(v74, 1, v43) == 1)
    {
      sub_2381A6070(v74, &qword_27DEF33E0, &qword_2381CB288);
      v75 = 0;
    }

    else
    {
      sub_2381A3A5C(&qword_27DEF33F0, MEMORY[0x277D05CF8]);
      swift_allocError();
      (*(v52 + 32))(v77, v74, v43);
      v68 = v95;
      v75 = _swift_stdlib_bridgeErrorToNSError();
    }

    *(v72 + 4) = v75;
    *v73 = v75;
    _os_log_impl(&dword_23819C000, v70, v71, "Converting coreErr = %@ to public", v72, 0xCu);
    sub_2381A6070(v73, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v73, -1, -1);
    MEMORY[0x2383EBBE0](v72, -1, -1);
    v45 = v93;
    v76 = v94;
    v46 = v96;
  }

  else
  {
    v76 = v70;
    v70 = v94;
  }

  (*(v67 + 8))(v68, v46);
  swift_beginAccess();
  sub_2381A6008(v44, v45, &qword_27DEF33E0, &qword_2381CB288);
  if ((*(v52 + 48))(v45, 1, v43) == 1)
  {
    goto LABEL_28;
  }

  v78 = v87;
  sub_2381A6008(v45, v87, &qword_27DEF33E0, &qword_2381CB288);
  v79 = (*(v52 + 88))(v78, v43);
  if (v79 != *MEMORY[0x277D05C30])
  {
    if (v79 == *MEMORY[0x277D05C48] || v79 == *MEMORY[0x277D05C50])
    {
      goto LABEL_31;
    }

    if (v79 == *MEMORY[0x277D05C70])
    {
      goto LABEL_36;
    }

    if (v79 == *MEMORY[0x277D05C90] || v79 == *MEMORY[0x277D05C18] || v79 == *MEMORY[0x277D05CE0])
    {
LABEL_31:
      (*(v52 + 8))(v87, v43);
      v80 = 1;
      goto LABEL_32;
    }

    if (v79 == *MEMORY[0x277D05CF0] || v79 == *MEMORY[0x277D05C20])
    {
LABEL_36:
      (*(v52 + 8))(v87, v43);
      goto LABEL_28;
    }

    if (v79 == *MEMORY[0x277D05CE8])
    {
      (*(v52 + 8))(v87, v43);
      v80 = 2;
      goto LABEL_32;
    }

    if (v79 == *MEMORY[0x277D05C98] || v79 == *MEMORY[0x277D05CC0])
    {
      goto LABEL_31;
    }

    if (v79 == *MEMORY[0x277D05CD0])
    {
      goto LABEL_47;
    }

    v83 = v79;
    if (v79 == *MEMORY[0x277D05CC8] || v79 == *MEMORY[0x277D05CA8] || v79 == *MEMORY[0x277D05CA0] || v79 == *MEMORY[0x277D05C68])
    {
      goto LABEL_52;
    }

    if (v79 != *MEMORY[0x277D05CB0])
    {
      if (v79 == *MEMORY[0x277D05C40] || v79 == *MEMORY[0x277D05C28] || v79 == *MEMORY[0x277D05C10])
      {
LABEL_52:
        (*(v91 + 8))(v87, v90);
LABEL_53:
        v82 = 2;
        goto LABEL_54;
      }

      if (v79 != *MEMORY[0x277D05C88])
      {
        if (v79 == *MEMORY[0x277D05C80] || v79 == *MEMORY[0x277D05CB8])
        {
          (*(v91 + 8))(v87, v90);
        }

        else
        {
          if (v79 == *MEMORY[0x277D05C60])
          {
            (*(v91 + 8))(v87, v90);
            v82 = 4;
            goto LABEL_54;
          }

          if (v79 == *MEMORY[0x277D05C58])
          {
            (*(v91 + 8))(v87, v90);
            v82 = 5;
            goto LABEL_54;
          }

          if (v79 == *MEMORY[0x277D05C78])
          {
            (*(v91 + 8))(v87, v90);
            v82 = 6;
            goto LABEL_54;
          }

          if (v79 == *MEMORY[0x277D05C38])
          {
            (*(v91 + 8))(v87, v90);
            v82 = 7;
            goto LABEL_54;
          }

          v84 = *MEMORY[0x277D05CD8];
          (*(v91 + 8))(v87, v90);
          if (v83 == v84)
          {
            goto LABEL_53;
          }
        }

        v82 = 3;
        goto LABEL_54;
      }
    }

LABEL_47:
    (*(v91 + 8))(v87, v90);
    v82 = 1;
LABEL_54:
    *v88 = v82;
    sub_2381A6070(v93, &qword_27DEF33E0, &qword_2381CB288);
    v81 = v92;
    return sub_2381A6070(v81, &qword_27DEF33E0, &qword_2381CB288);
  }

  (*(v52 + 8))(v78, v43);
LABEL_28:
  v80 = 3;
LABEL_32:
  *v88 = v80;
  sub_2381A6070(v45, &qword_27DEF33E0, &qword_2381CB288);
  v81 = v44;
  return sub_2381A6070(v81, &qword_27DEF33E0, &qword_2381CB288);
}

BOOL sub_2381A0BF8()
{
  v1 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v2 = *(v0 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  return (v3 & 1) == 0;
}

uint64_t sub_2381A0C88()
{
  v0 = type metadata accessor for DockAccessoryManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2381A0D24();
  qword_27DEF32C8 = result;
  return result;
}

uint64_t static DockAccessoryManager.shared.getter()
{
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2381A0D24()
{
  *(v0 + 24) = 0;
  sub_2381CA09C();
  v1 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33F8, &qword_2381CB298);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled) = 0;
  *(v0 + 16) = [objc_allocWithZone(sub_2381C9ADC()) init];
  return v0;
}

uint64_t sub_2381A0DE4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  v3 = sub_2381CA0AC();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381A0EB4, 0, 0);
}

uint64_t sub_2381A0EB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger;
  *(v0 + 56) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger;
  v6 = *(v3 + 16);
  *(v0 + 64) = v6;
  *(v0 + 72) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = v9;
    _os_log_impl(&dword_23819C000, v7, v8, "API: setSystemTrackingEnabled: %{BOOL,public}d", v10, 8u);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  v11 = *(v0 + 48);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);

  v15 = *(v13 + 8);
  *(v0 + 80) = v15;
  *(v0 + 88) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v12);
  v16 = *(v14 + 16);
  v17 = *(MEMORY[0x277D05B20] + 4);
  v18 = swift_task_alloc();
  *(v0 + 96) = v18;
  *v18 = v0;
  v18[1] = sub_2381A1048;
  v19 = *(v0 + 112);

  return MEMORY[0x28215B1E0](v19);
}

uint64_t sub_2381A1048()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2381A129C;
  }

  else
  {
    v3 = sub_2381A115C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381A115C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  v3 = *(v0 + 112);
  v4 = *(v2 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2381A3238;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_2381A3258();
  os_unfair_lock_unlock(v4 + 4);

  if (!v1)
  {
    v8 = *(v0 + 16);

    v9 = *(v8 + 24);
    if (v9)
    {
      v10 = *(v0 + 112);
      v11 = v9;
      sub_23819E1E8(v10);
    }

    v13 = *(v0 + 40);
    v12 = *(v0 + 48);

    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_2381A129C()
{
  v21 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  (*(v0 + 64))(*(v0 + 40), *(v0 + 16) + *(v0 + 56), *(v0 + 24));
  v3 = v1;
  v4 = sub_2381CA08C();
  v5 = sub_2381CA2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23819C000, v4, v5, "Failed in setSystemTrackingEnabled: %@", v7, 0xCu);
    sub_2381A6070(v8, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v8, -1, -1);
    MEMORY[0x2383EBBE0](v7, -1, -1);
  }

  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = *(v0 + 24);

  v13(v15, v16);
  sub_23819FD88(v11, v20);
  LOBYTE(v16) = v20[0];
  sub_2381A319C();
  swift_allocError();
  *v17 = v16;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2381A1474@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3400, &qword_2381CB2A0);
  v3 = *(v18 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v17 - v5;
  v7 = sub_2381CA0AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v2 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger, v7);
  v12 = sub_2381CA08C();
  v13 = sub_2381CA2BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v17 = v2;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_23819C000, v12, v13, "API: accessoryStateChanges", v14, 2u);
    MEMORY[0x2383EBBE0](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v18);
  return sub_2381CA2AC();
}

uint64_t sub_2381A16D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v16 - v10;

  sub_2381CA25C();
  v12 = sub_2381CA24C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v8, v4);

  sub_23819DBD4(0, 0, v11, &unk_2381CB2B8, v14);
}

uint64_t sub_2381A18E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3410, &qword_2381CB2C0);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v5[11] = *(v10 + 64);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381A1A20, 0, 0);
}

uint64_t sub_2381A1A20()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v6 + 16);
  *(v0 + 104) = v7;
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v3);
  v10 = objc_allocWithZone(type metadata accessor for DockAccessoryManagerHelper(0));
  v11 = v7;
  v12 = sub_23819D880(v7, sub_2381A6408, v9);
  v13 = *(v6 + 24);
  *(v6 + 24) = v12;

  v14 = *(v6 + 24);
  if (v14)
  {
    v15 = *(*(v0 + 32) + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v16 = v14;
    sub_23819E1E8((v15 & 1) == 0);

    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = sub_2381A1C74;
    v18 = *(v0 + 32);

    return sub_2381A20B0();
  }

  else
  {
    sub_2381A319C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    v24 = *(v0 + 48);
    v25 = *(v0 + 56);
    v26 = *(v0 + 40);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    sub_2381CA26C();
    (*(v25 + 8))(v23, v24);
    sub_2381CA27C();

    v27 = *(v0 + 96);
    v28 = *(v0 + 64);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_2381A1C74()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2381A1EC4;
  }

  else
  {
    v3 = sub_2381A1D88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2381A1D88()
{
  v1 = *(*(v0 + 32) + 24);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 104);
    sub_2381A3A5C(&qword_27DEF3418, type metadata accessor for DockAccessoryManagerHelper);
    v4 = v1;
    sub_2381C9A6C();

    if (v2)
    {
      v6 = *(v0 + 64);
      v5 = *(v0 + 72);
      v7 = *(v0 + 48);
      v8 = *(v0 + 56);
      v9 = *(v0 + 40);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      sub_2381CA26C();
      (*(v8 + 8))(v6, v7);
      sub_2381CA27C();
    }

    v10 = *(v0 + 96);
    v11 = *(v0 + 64);

    v12 = *(v0 + 8);

    v12();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2381A1EC4()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_2381CA26C();
  (*(v5 + 8))(v3, v4);
  sub_2381CA27C();

  v7 = *(v0 + 96);
  v8 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2381A1F90(uint64_t a1, _BYTE *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3410, &qword_2381CB2C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  LOBYTE(v9) = *a2;
  v12 = a1;
  v13 = v9;
  v14 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  sub_2381CA26C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2381A20B0()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381A214C, 0, 0);
}

uint64_t sub_2381A214C()
{
  v0[4] = *(v0[2] + 16);
  v1 = *(MEMORY[0x277D05B00] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2381A21E8;

  return MEMORY[0x28215B1A0]();
}

uint64_t sub_2381A21E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v6 = *(v3 + 24);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2381A2338, 0, 0);
  }
}

uint64_t sub_2381A2338()
{
  if (*(v0 + 48))
  {
    v1 = sub_2381C9B0C();
    sub_2381C9A1C();

    v2 = sub_2381C99EC();
    if (v2 == sub_2381C99EC())
    {
      v3 = *(MEMORY[0x277D05AF8] + 4);
      v4 = swift_task_alloc();
      *(v0 + 56) = v4;
      *v4 = v0;
      v4[1] = sub_2381A2448;
      v5 = *(v0 + 32);

      return MEMORY[0x28215B198]();
    }
  }

  v6 = *(v0 + 24);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2381A2448(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_2381A26B4;
  }

  else
  {
    v5 = sub_2381A255C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2381A255C()
{
  v1 = *(*(v0 + 16) + 24);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = v1;
    v6 = sub_2381C9B0C();
    v7 = sub_2381CA24C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v5;
    v8[5] = v6;
    v8[6] = 0;
    v8[7] = 0;
    v8[8] = v2;
    v9 = v5;
    v10 = v6;
    sub_23819DBD4(0, 0, v4, &unk_2381CB268, v8);
  }

  v11 = *(v0 + 24);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2381A26B4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t DockAccessoryManager.deinit()
{
  v1 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger;
  v2 = sub_2381CA0AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  return v0;
}

uint64_t DockAccessoryManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger;
  v2 = sub_2381CA0AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void *sub_2381A285C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2381A2880(uint64_t a1, id *a2)
{
  result = sub_2381CA0DC();
  *a2 = 0;
  return result;
}

uint64_t sub_2381A28F8(uint64_t a1, id *a2)
{
  v3 = sub_2381CA0EC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2381A2978@<X0>(uint64_t *a1@<X8>)
{
  sub_2381CA0FC();
  v2 = sub_2381CA0CC();

  *a1 = v2;
  return result;
}

uint64_t sub_2381A29BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2381CA0CC();

  *a2 = v5;
  return result;
}

uint64_t sub_2381A2A04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2381CA0FC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2381A2A30(uint64_t a1)
{
  v2 = sub_2381A3A5C(&qword_27DEF33C0, type metadata accessor for DeviceType);
  v3 = sub_2381A3A5C(&qword_27DEF33C8, type metadata accessor for DeviceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2381A2AEC()
{
  v1 = *v0;
  v2 = sub_2381CA0FC();
  v3 = MEMORY[0x2383EB340](v2);

  return v3;
}

uint64_t sub_2381A2B28()
{
  v1 = *v0;
  sub_2381CA0FC();
  sub_2381CA14C();
}

uint64_t sub_2381A2B7C()
{
  v1 = *v0;
  sub_2381CA0FC();
  sub_2381CA45C();
  sub_2381CA14C();
  v2 = sub_2381CA49C();

  return v2;
}

uint64_t sub_2381A2BF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2381CA0FC();
  v6 = v5;
  if (v4 == sub_2381CA0FC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2381CA40C();
  }

  return v9 & 1;
}

uint64_t sub_2381A2C78(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2381A2D70;

  return v7(a1);
}

uint64_t sub_2381A2D70()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_2381A2E90(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33B0, &qword_2381CC860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33B8, &qword_2381CB240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2381A2FC4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33D8, &qword_2381CB280);
  v10 = *(type metadata accessor for DockAccessory.TrackedSubjectType(0) - 8);
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
  v15 = *(type metadata accessor for DockAccessory.TrackedSubjectType(0) - 8);
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

unint64_t sub_2381A319C()
{
  result = qword_27DEF32E8;
  if (!qword_27DEF32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF32E8);
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

uint64_t sub_2381A3258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2381A3284()
{
  result = qword_27DEF32F8;
  if (!qword_27DEF32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF32F8);
  }

  return result;
}

uint64_t sub_2381A3304()
{
  result = sub_2381CA0AC();
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

uint64_t getEnumTagSinglePayload for DockKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockKitError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2381A3574(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2381A35AC()
{
  result = sub_2381CA0AC();
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

uint64_t dispatch thunk of DockAccessoryManager.setSystemTrackingEnabled(_:)(uint64_t a1)
{
  v4 = *(*v1 + 240);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23819DAE0;

  return v8(a1);
}

uint64_t initializeBufferWithCopyOfBuffer for DockAccessory.MotionState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2381A383C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381A385C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2381A38A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381A38C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2381A3918(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381A3938(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2381A3A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2381A3AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2381A6574;

  return sub_23819DA14(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2381A3BCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2381A3C04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2381A6574;

  return sub_2381A2C78(a1, v5);
}

uint64_t sub_2381A3CBC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2381A3DB0;

  return v6(v2 + 32);
}

uint64_t sub_2381A3DB0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2381A3EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_2381CA0AC();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for DockAccessory.Identifier(0);
  v4[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381A3FDC, 0, 0);
}

uint64_t sub_2381A3FDC()
{
  v69 = v0;
  v1 = *(v0 + 40);
  sub_2381C9A1C();
  v2 = sub_2381C99EC();
  if (v2 == sub_2381C99EC())
  {
    v3 = (*(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_callback);
    v4 = *v3;
    *(v0 + 136) = *v3;
    *(v0 + 144) = v3[1];
    if (v4)
    {
      v5 = *(v0 + 128);
      v6 = *(v0 + 104);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);

      v9 = sub_2381C9A0C();
      v11 = v10;
      *(v0 + 232) = *(v6 + 24);
      sub_2381C99FC();
      *v5 = v9;
      v5[1] = v11;
      v12 = sub_2381C9C5C();
      if (v12 == sub_2381C9C5C())
      {
        v13 = *(v0 + 64);
        *(v0 + 152) = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_manager;
        Strong = swift_unknownObjectWeakLoadStrong();
        *(v0 + 160) = Strong;
        if (Strong)
        {
          v15 = *(MEMORY[0x277D05B00] + 4);
          v16 = swift_task_alloc();
          *(v0 + 168) = v16;
          *v16 = v0;
          v16[1] = sub_2381A4508;

          return MEMORY[0x28215B1A0]();
        }
      }

      (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, *(v0 + 72));
      v17 = sub_2381CA08C();
      v18 = sub_2381CA2DC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_23819C000, v17, v18, "updating previously-emitted accessories tracking button state", v19, 2u);
        MEMORY[0x2383EBBE0](v19, -1, -1);
      }

      v20 = *(v0 + 96);
      v21 = *(v0 + 72);
      v22 = *(v0 + 80);
      v24 = *(v0 + 56);
      v23 = *(v0 + 64);
      v25 = *(v0 + 40);

      (*(v22 + 8))(v20, v21);
      v26 = *(v23 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
      v27 = swift_task_alloc();
      v27[2] = v23;
      v27[3] = v25;
      v27[4] = v24;
      v28 = swift_task_alloc();
      *(v28 + 16) = sub_2381A5B7C;
      *(v28 + 24) = v27;

      os_unfair_lock_lock(v26 + 4);
      sub_2381A6584();
      os_unfair_lock_unlock(v26 + 4);

      v29 = *(v0 + 64);

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
      swift_beginAccess();
      v32 = *(v29 + v31);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + v31) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_2381A2E90(0, v32[2] + 1, 1, v32);
        *(v29 + v31) = v32;
      }

      v34 = v32[2];
      v35 = v32[3];
      v36 = v34 + 1;
      if (v34 >= v35 >> 1)
      {
        v64 = v32;
        v65 = v32[2];
        v66 = sub_2381A2E90((v35 > 1), v34 + 1, 1, v64);
        v34 = v65;
        v32 = v66;
      }

      v37 = *(v0 + 64);
      v32[2] = v36;
      v38 = &v32[2 * v34];
      v38[4] = sub_2381A5BD4;
      v38[5] = v30;
      *(v29 + v31) = v32;
      swift_endAccess();

      v39 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
      v40 = *(v37 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
      if (!v40 || (v41 = *(v0 + 232), v42 = *(v0 + 120), v43 = *(v0 + 104), sub_2381A5C1C(v40 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v42), v44 = *(v43 + 24), LOBYTE(v41) = sub_2381C99AC(), sub_2381A5C80(v42), (v41 & 1) == 0))
      {
        v45 = *(v0 + 112);
        sub_2381A5C1C(*(v0 + 128), v45);
        v46 = type metadata accessor for DockAccessory(0);
        v47 = *(v46 + 48);
        v48 = *(v46 + 52);
        swift_allocObject();
        v49 = sub_2381AD6D4(v45, 0);
        v50 = *(v37 + v39);
        *(v37 + v39) = v49;
      }

      v51 = *(v37 + v39);
      v53 = *(v0 + 136);
      v52 = *(v0 + 144);
      v54 = *(v0 + 128);
      if (v51)
      {
        v55 = *(v0 + 56);
        v68[0] = 0;

        v56 = sub_2381C9E5C();
        v57 = v56 == sub_2381C9E5C();
        v53(v51, v68, v57);
        sub_2381A5CDC(v53);

        sub_2381A5C80(v54);
      }

      else
      {
        sub_2381A5C80(*(v0 + 128));
        sub_2381A5CDC(v53);
      }
    }
  }

  v59 = *(v0 + 120);
  v58 = *(v0 + 128);
  v60 = *(v0 + 112);
  v62 = *(v0 + 88);
  v61 = *(v0 + 96);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_2381A4508(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_2381A50D8;
  }

  else
  {

    v5 = sub_2381A4624;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2381A4624()
{
  v65 = v0;
  v1 = *(v0 + 176);
  if (!v1)
  {
    goto LABEL_10;
  }

  sub_2381C9C4C();
  v2 = swift_dynamicCastClass();
  *(v0 + 192) = v2;
  if (!v2)
  {

LABEL_10:
    v63 = 0;
    v12 = 0;
    v13 = *(v0 + 184);
    goto LABEL_11;
  }

  v3 = *(v0 + 40);
  sub_2381A5CEC();
  v4 = v1;
  v5 = sub_2381C9B0C();

  v6 = sub_2381CA2FC();
  if ((v6 & 1) == 0)
  {

    goto LABEL_10;
  }

  v7 = *(v0 + 152);
  v8 = *(v0 + 64);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {
    v10 = *(MEMORY[0x277D05AF8] + 4);
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_2381A4B68;

    return MEMORY[0x28215B198]();
  }

  v13 = *(v0 + 184);
  v61 = *(v0 + 192);
  sub_2381C9C3C();
  v12 = *(v0 + 192);
  v63 = 1;
LABEL_11:
  (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, *(v0 + 72));
  v14 = sub_2381CA08C();
  v15 = sub_2381CA2DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23819C000, v14, v15, "updating previously-emitted accessories tracking button state", v16, 2u);
    MEMORY[0x2383EBBE0](v16, -1, -1);
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 40);

  (*(v19 + 8))(v17, v18);
  v23 = *(v20 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
  v24 = swift_task_alloc();
  v24[2] = v20;
  v24[3] = v22;
  v24[4] = v21;
  v25 = swift_task_alloc();
  *(v25 + 16) = sub_2381A5B7C;
  *(v25 + 24) = v24;

  os_unfair_lock_lock(v23 + 4);
  sub_2381A6584();
  os_unfair_lock_unlock(v23 + 4);

  if (!v13)
  {
    v26 = *(v0 + 64);

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
    swift_beginAccess();
    v29 = *(v26 + v28);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v28) = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_2381A2E90(0, v29[2] + 1, 1, v29);
      *(v26 + v28) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_2381A2E90((v31 > 1), v32 + 1, 1, v29);
    }

    v33 = *(v0 + 64);
    v29[2] = v32 + 1;
    v34 = &v29[2 * v32];
    v34[4] = sub_2381A5BD4;
    v34[5] = v27;
    *(v26 + v28) = v29;
    swift_endAccess();

    v35 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
    v36 = *(v33 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
    if (!v36 || (v37 = *(v0 + 232), v38 = *(v0 + 120), v39 = *(v0 + 104), sub_2381A5C1C(v36 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v38), v40 = *(v39 + 24), LOBYTE(v37) = sub_2381C99AC(), sub_2381A5C80(v38), (v37 & 1) == 0))
    {
      v41 = *(v0 + 112);
      sub_2381A5C1C(*(v0 + 128), v41);
      v42 = type metadata accessor for DockAccessory(0);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v45 = v12;
      v46 = sub_2381AD6D4(v41, v12);
      v47 = *(v33 + v35);
      *(v33 + v35) = v46;
    }

    v48 = *(v33 + v35);
    v50 = *(v0 + 136);
    v49 = *(v0 + 144);
    v51 = *(v0 + 128);
    if (v48)
    {
      v52 = *(v0 + 56);
      v64[0] = v63;

      v53 = sub_2381C9E5C();
      v54 = v53 == sub_2381C9E5C();
      v50(v48, v64, v54);
      sub_2381A5CDC(v50);

      sub_2381A5C80(v51);
    }

    else
    {
      sub_2381A5C80(*(v0 + 128));
      sub_2381A5CDC(v50);
    }

    v56 = *(v0 + 120);
    v55 = *(v0 + 128);
    v57 = *(v0 + 112);
    v59 = *(v0 + 88);
    v58 = *(v0 + 96);

    v60 = *(v0 + 8);

    return v60();
  }

  return result;
}

uint64_t sub_2381A4B68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_2381A5624;
  }

  else
  {

    *(v4 + 224) = a1;
    v7 = sub_2381A4C98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2381A4C98()
{
  v54 = v0;
  v1 = *(v0 + 224);
  sub_2381C9E5C();
  sub_2381C9E5C();
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  sub_2381C9C3C();
  v4 = *(v0 + 192);
  (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, *(v0 + 72));
  v5 = sub_2381CA08C();
  v6 = sub_2381CA2DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23819C000, v5, v6, "updating previously-emitted accessories tracking button state", v7, 2u);
    MEMORY[0x2383EBBE0](v7, -1, -1);
  }

  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = *(v0 + 40);

  (*(v10 + 8))(v8, v9);
  v14 = *(v11 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
  v15 = swift_task_alloc();
  v15[2] = v11;
  v15[3] = v13;
  v15[4] = v12;
  v16 = swift_task_alloc();
  *(v16 + 16) = sub_2381A5B7C;
  *(v16 + 24) = v15;

  os_unfair_lock_lock(v14 + 4);
  sub_2381A6584();
  os_unfair_lock_unlock(v14 + 4);

  if (!v2)
  {
    v18 = *(v0 + 64);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
    swift_beginAccess();
    v21 = *(v18 + v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2381A2E90(0, v21[2] + 1, 1, v21);
      *(v18 + v20) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_2381A2E90((v23 > 1), v24 + 1, 1, v21);
    }

    v25 = *(v0 + 64);
    v21[2] = v24 + 1;
    v26 = &v21[2 * v24];
    v26[4] = sub_2381A5BD4;
    v26[5] = v19;
    *(v18 + v20) = v21;
    swift_endAccess();

    v27 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
    v28 = *(v25 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
    if (!v28 || (v29 = *(v0 + 232), v30 = *(v0 + 120), v31 = *(v0 + 104), sub_2381A5C1C(v28 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v30), v32 = *(v31 + 24), LOBYTE(v29) = sub_2381C99AC(), sub_2381A5C80(v30), (v29 & 1) == 0))
    {
      v33 = *(v0 + 112);
      sub_2381A5C1C(*(v0 + 128), v33);
      v34 = type metadata accessor for DockAccessory(0);
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      v37 = v4;
      v38 = sub_2381AD6D4(v33, v4);
      v39 = *(v25 + v27);
      *(v25 + v27) = v38;
    }

    v40 = *(v25 + v27);
    v42 = *(v0 + 136);
    v41 = *(v0 + 144);
    v43 = *(v0 + 128);
    if (v40)
    {
      v44 = *(v0 + 56);
      v53[0] = 1;

      v45 = sub_2381C9E5C();
      v46 = v45 == sub_2381C9E5C();
      v42(v40, v53, v46);
      sub_2381A5CDC(v42);

      sub_2381A5C80(v43);
    }

    else
    {
      sub_2381A5C80(*(v0 + 128));
      sub_2381A5CDC(v42);
    }

    v48 = *(v0 + 120);
    v47 = *(v0 + 128);
    v49 = *(v0 + 112);
    v51 = *(v0 + 88);
    v50 = *(v0 + 96);

    v52 = *(v0 + 8);

    return v52();
  }

  return result;
}

uint64_t sub_2381A50D8()
{
  v63 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v4);
  v6 = v1;
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2CC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23819C000, v7, v8, "failed fetching connected accessory %@", v9, 0xCu);
    sub_2381A6070(v10, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v10, -1, -1);
    MEMORY[0x2383EBBE0](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v13 = *(v0 + 184);
  (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, *(v0 + 72));
  v14 = sub_2381CA08C();
  v15 = sub_2381CA2DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23819C000, v14, v15, "updating previously-emitted accessories tracking button state", v16, 2u);
    MEMORY[0x2383EBBE0](v16, -1, -1);
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 40);

  (*(v19 + 8))(v17, v18);
  v23 = *(v20 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
  v24 = swift_task_alloc();
  v24[2] = v20;
  v24[3] = v22;
  v24[4] = v21;
  v25 = swift_task_alloc();
  *(v25 + 16) = sub_2381A5B7C;
  *(v25 + 24) = v24;

  os_unfair_lock_lock(v23 + 4);
  sub_2381A6584();
  os_unfair_lock_unlock(v23 + 4);

  v26 = *(v0 + 64);

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
  swift_beginAccess();
  v29 = *(v26 + v28);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v28) = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_2381A2E90(0, v29[2] + 1, 1, v29);
    *(v26 + v28) = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_2381A2E90((v31 > 1), v32 + 1, 1, v29);
  }

  v33 = *(v0 + 64);
  v29[2] = v32 + 1;
  v34 = &v29[2 * v32];
  v34[4] = sub_2381A5BD4;
  v34[5] = v27;
  *(v26 + v28) = v29;
  swift_endAccess();

  v35 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
  v36 = *(v33 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
  if (!v36 || (v37 = *(v0 + 232), v38 = *(v0 + 120), v39 = *(v0 + 104), sub_2381A5C1C(v36 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v38), v40 = *(v39 + 24), LOBYTE(v37) = sub_2381C99AC(), sub_2381A5C80(v38), (v37 & 1) == 0))
  {
    v41 = *(v0 + 112);
    sub_2381A5C1C(*(v0 + 128), v41);
    v42 = type metadata accessor for DockAccessory(0);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_2381AD6D4(v41, 0);
    v46 = *(v33 + v35);
    *(v33 + v35) = v45;
  }

  v47 = *(v33 + v35);
  v49 = *(v0 + 136);
  v48 = *(v0 + 144);
  v50 = *(v0 + 128);
  if (v47)
  {
    v51 = v13 == 0;
    v52 = *(v0 + 56);
    v62[0] = v51;

    v53 = sub_2381C9E5C();
    v54 = v53 == sub_2381C9E5C();
    v49(v47, v62, v54);
    sub_2381A5CDC(v49);

    sub_2381A5C80(v50);
  }

  else
  {
    sub_2381A5C80(*(v0 + 128));
    sub_2381A5CDC(v49);
  }

  v56 = *(v0 + 120);
  v55 = *(v0 + 128);
  v57 = *(v0 + 112);
  v59 = *(v0 + 88);
  v58 = *(v0 + 96);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_2381A5624()
{
  v65 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v5);
  v7 = v1;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23819C000, v8, v9, "failed fetching connected accessory %@", v10, 0xCu);
    sub_2381A6070(v11, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v11, -1, -1);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v14 = *(v0 + 184);
  (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, *(v0 + 72));
  v15 = sub_2381CA08C();
  v16 = sub_2381CA2DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23819C000, v15, v16, "updating previously-emitted accessories tracking button state", v17, 2u);
    MEMORY[0x2383EBBE0](v17, -1, -1);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 40);

  (*(v20 + 8))(v18, v19);
  v24 = *(v21 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
  v25 = swift_task_alloc();
  v25[2] = v21;
  v25[3] = v23;
  v25[4] = v22;
  v26 = swift_task_alloc();
  *(v26 + 16) = sub_2381A5B7C;
  *(v26 + 24) = v25;

  os_unfair_lock_lock(v24 + 4);
  sub_2381A6584();
  os_unfair_lock_unlock(v24 + 4);

  v27 = *(v0 + 64);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
  swift_beginAccess();
  v30 = *(v27 + v29);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + v29) = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_2381A2E90(0, v30[2] + 1, 1, v30);
    *(v27 + v29) = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_2381A2E90((v32 > 1), v33 + 1, 1, v30);
  }

  v34 = *(v0 + 64);
  v30[2] = v33 + 1;
  v35 = &v30[2 * v33];
  v35[4] = sub_2381A5BD4;
  v35[5] = v28;
  *(v27 + v29) = v30;
  swift_endAccess();

  v36 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
  v37 = *(v34 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
  if (!v37 || (v38 = *(v0 + 232), v39 = *(v0 + 120), v40 = *(v0 + 104), sub_2381A5C1C(v37 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v39), v41 = *(v40 + 24), LOBYTE(v38) = sub_2381C99AC(), sub_2381A5C80(v39), (v38 & 1) == 0))
  {
    v42 = *(v0 + 112);
    sub_2381A5C1C(*(v0 + 128), v42);
    v43 = type metadata accessor for DockAccessory(0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v46 = v2;
    v47 = sub_2381AD6D4(v42, v2);
    v48 = *(v34 + v36);
    *(v34 + v36) = v47;
  }

  v49 = *(v34 + v36);
  v51 = *(v0 + 136);
  v50 = *(v0 + 144);
  v52 = *(v0 + 128);
  if (v49)
  {
    v53 = v14 == 0;
    v54 = *(v0 + 56);
    v64[0] = v53;

    v55 = sub_2381C9E5C();
    v56 = v55 == sub_2381C9E5C();
    v51(v49, v64, v56);
    sub_2381A5CDC(v51);

    sub_2381A5C80(v52);
  }

  else
  {
    sub_2381A5C80(*(v0 + 128));
    sub_2381A5CDC(v51);
  }

  v58 = *(v0 + 120);
  v57 = *(v0 + 128);
  v59 = *(v0 + 112);
  v61 = *(v0 + 88);
  v60 = *(v0 + 96);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_2381A5B9C()
{
  MEMORY[0x2383EBC80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2381A5BD4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2381A5C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DockAccessory.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2381A5C80(uint64_t a1)
{
  v2 = type metadata accessor for DockAccessory.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2381A5CDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2381A5CEC()
{
  result = qword_27DEF33A8;
  if (!qword_27DEF33A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEF33A8);
  }

  return result;
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

uint64_t sub_2381A5D88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2381A6574;

  return sub_2381A3CBC(a1, v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2381A5E88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2381A5EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_23819EF18(a1, v4, v5, v6);
}

uint64_t sub_2381A5F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E0, &qword_2381CB288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2381A6008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2381A6070(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2381A6198()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2381A6270(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23819DAE0;

  return sub_2381A18E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2381A6374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2381A6408(uint64_t a1, _BYTE *a2, char a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8) - 8) + 80);

  return sub_2381A1F90(a1, a2, a3);
}

uint64_t sub_2381A64A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381A64C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2381A6518(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_2381A659C()
{
  v1 = &v0[OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_batteryCallback];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_trackingSummaryCallback];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  sub_2381CA09C();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DockAccessoryHelper(0);
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2381A668C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a2;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2381A66B8, 0, 0);
}

uint64_t sub_2381A66B8()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = *(v1 + 8);

    v2(v6, v5, v4, 0, 0, v3);
    sub_2381A5CDC(v2);
  }

  **(v0 + 16) = v2 == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2381A6890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2381A68B4, 0, 0);
}

uint64_t sub_2381A68B4()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v1 + 8);

    v2(v3, 0, 0);
    sub_2381A5CDC(v2);
  }

  **(v0 + 16) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

void sub_2381A6A0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = sub_2381C9B0C();

      sub_2381C9A2C();
      LOBYTE(v14) = sub_2381CA2FC();

      if (v14)
      {
        v16 = sub_2381CA24C();
        (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
        v17 = swift_allocObject();
        v17[2] = 0;
        v17[3] = 0;
        v17[4] = v6;
        v17[5] = a2;
        v18 = v6;
        v19 = a2;
        sub_23819DED4(0, 0, v11, a4, v17);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2381A6B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2381A6BA4, 0, 0);
}

uint64_t sub_2381A6BA4()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_batteryCallback;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v1 + 8);

    v2(v3, 0, 0);
    sub_2381A5CDC(v2);
  }

  **(v0 + 16) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

void sub_2381A6CDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = sub_2381C9B0C();

      sub_2381C9A2C();
      LOBYTE(v8) = sub_2381CA2FC();

      if (v8)
      {
        v10 = sub_2381C992C();
        v12 = v11;
        v13 = sub_2381CA24C();
        (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
        v14 = swift_allocObject();
        v14[2] = 0;
        v14[3] = 0;
        v14[4] = v1;
        v14[5] = v10;
        v14[6] = v12;
        v15 = v1;
        sub_23819DED4(0, 0, v5, &unk_2381CC870, v14);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2381A6E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_2381A6E88, 0, 0);
}

uint64_t sub_2381A6E88()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_trackingSummaryCallback;
  v2 = *v1;
  if (*v1)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v1 + 8);

    v2(v4, v3, 0, 0);
    sub_2381A5CDC(v2);
  }

  **(v0 + 16) = v2 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2381A7058(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2381CA0AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_logger, v4);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23819C000, v9, v10, "accessory disconnected, sending error to delegate", v11, 2u);
    MEMORY[0x2383EBBE0](v11, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  v13 = *(v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback);
  if (v13)
  {
    v14 = *(v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback + 8);

    v13(MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90], a1, 1, 0.0);
    result = sub_2381A5CDC(v13);
  }

  v15 = v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback;
  v16 = *(v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback);
  if (v16)
  {
    v17 = *(v15 + 8);

    v16(0, a1, 1);
    return sub_2381A5CDC(v16);
  }

  return result;
}

id sub_2381A72A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DockAccessoryHelper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t DockAccessory.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DockAccessory.Identifier(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2381C4208(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DockAccessory.Identifier);
  v5 = sub_2381CA10C();
  v25 = 0xD000000000000011;
  v26 = 0x80000002381CCEF0;
  MEMORY[0x2383EB320](v5);

  MEMORY[0x2383EB320](0xD000000000000013, 0x80000002381CCF10);

  v7 = v25;
  v6 = v26;
  v8 = (v0 + OBJC_IVAR____TtC7DockKit13DockAccessory_firmwareVersion);
  swift_beginAccess();
  v9 = v8[1];
  v23 = *v8;
  v24 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3430, &qword_2381CB360);
  v10 = sub_2381CA10C();
  v12 = v11;
  v23 = v7;
  v24 = v6;

  MEMORY[0x2383EB320](v10, v12);

  MEMORY[0x2383EB320](0xD000000000000011, 0x80000002381CCF30);

  v13 = v23;
  v14 = v24;
  v15 = (v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_hardwareModel);
  swift_beginAccess();
  v16 = v15[1];
  v21 = *v15;
  v22 = v16;

  v17 = sub_2381CA10C();
  v19 = v18;
  v21 = v13;
  v22 = v14;

  MEMORY[0x2383EB320](v17, v19);

  MEMORY[0x2383EB320](15906, 0xE200000000000000);

  return v21;
}

uint64_t sub_2381A7698(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t DockAccessory.Identifier.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DockAccessory.Identifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  v4 = sub_2381C99BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DockAccessory.Identifier.debugDescription.getter()
{
  v8 = sub_2381CA11C();

  MEMORY[0x2383EB320](45, 0xE100000000000000);

  v1 = *v0;
  v2 = v0[1];

  MEMORY[0x2383EB320](v1, v2);

  MEMORY[0x2383EB320](45, 0xE100000000000000);

  v3 = v0 + *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  v4 = sub_2381C999C();
  v6 = v5;

  MEMORY[0x2383EB320](v4, v6);

  return v8;
}

uint64_t static DockAccessory.Identifier.== infix(_:_:)()
{
  v0 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);

  return sub_2381C99AC();
}

uint64_t DockAccessory.Identifier.hash(into:)()
{
  MEMORY[0x2383EB620](0);
  v0 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  return sub_2381CA0BC();
}

uint64_t DockAccessory.Identifier.hashValue.getter()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  v0 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381A7A58(uint64_t a1)
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  v2 = *(a1 + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381A7B04(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2383EB620](0);
  v3 = *(a2 + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  return sub_2381CA0BC();
}

uint64_t sub_2381A7B98(uint64_t a1, uint64_t a2)
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  v3 = *(a2 + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

__n128 DockAccessory.CameraInformation.cameraIntrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  result = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t DockAccessory.CameraInformation.referenceDimensions.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  return result;
}

__n128 DockAccessory.CameraInformation.init(captureDevice:cameraPosition:orientation:cameraIntrinsics:referenceDimensions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = a1;
  *(a8 + 8) = a2;
  v9 = *(a4 + 16);
  *(a8 + 32) = *a4;
  *(a8 + 48) = v9;
  result = *(a4 + 32);
  *(a8 + 64) = result;
  *(a8 + 80) = *(a4 + 48);
  *(a8 + 88) = a5;
  *(a8 + 96) = a6;
  *(a8 + 104) = a7 & 1;
  *(a8 + 16) = v8;
  return result;
}

uint64_t DockAccessory.State.debugDescription.getter()
{
  if (*v0)
  {
    result = 0x64656B636F44;
  }

  else
  {
    result = 0x64656B636F646E55;
  }

  *v0;
  return result;
}

uint64_t DockAccessory.State.hashValue.getter()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](v1);
  return sub_2381CA49C();
}

uint64_t sub_2381A7D94()
{
  if (*v0)
  {
    result = 0x64656B636F44;
  }

  else
  {
    result = 0x64656B636F646E55;
  }

  *v0;
  return result;
}

uint64_t sub_2381A7E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E696B63617274 && a2 == 0xED0000646E617453)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2381CA40C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2381A7EF4(uint64_t a1)
{
  v2 = sub_2381A87A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381A7F30(uint64_t a1)
{
  v2 = sub_2381A87A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381A7F78(uint64_t a1)
{
  v2 = sub_2381A87F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381A7FB4(uint64_t a1)
{
  v2 = sub_2381A87F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockAccessory.Category.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3440, &qword_2381CB368);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3448, &qword_2381CB370);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381A87A0();
  sub_2381CA4BC();
  sub_2381A87F4();
  sub_2381CA3EC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t DockAccessory.Category.hashValue.getter()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  return sub_2381CA49C();
}

uint64_t DockAccessory.Category.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3460, &qword_2381CB378);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3468, &qword_2381CB380);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381A87A0();
  sub_2381CA4AC();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_2381CA3DC() + 16) == 1)
    {
      sub_2381A87F4();
      sub_2381CA3BC();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_2381CA35C();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3470, &qword_2381CB388) + 48);
      *v16 = &type metadata for DockAccessory.Category;
      sub_2381CA3CC();
      sub_2381CA34C();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2381A8540(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3440, &qword_2381CB368);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3448, &qword_2381CB370);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381A87A0();
  sub_2381CA4BC();
  sub_2381A87F4();
  sub_2381CA3EC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2381A8718()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  return sub_2381CA49C();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2381A87A0()
{
  result = qword_27DEF3450;
  if (!qword_27DEF3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3450);
  }

  return result;
}

unint64_t sub_2381A87F4()
{
  result = qword_27DEF3458;
  if (!qword_27DEF3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3458);
  }

  return result;
}

uint64_t sub_2381A8848()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  return sub_2381CA49C();
}

double DockAccessory.Observation.rect.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

uint64_t DockAccessory.Observation.init(identifier:type:rect:faceYawAngle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v10 = *a2;
  *(a4 + 8) = a1;
  *a4 = v10;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  v11 = type metadata accessor for DockAccessory.Observation(0);
  return sub_2381C4E68(a3, a4 + *(v11 + 28), &qword_27DEF3478, &qword_2381CB390);
}

uint64_t DockAccessory.StateChanges.Iterator.next()(uint64_t a1)
{
  v3 = *(type metadata accessor for DockAccessory.StateChanges.Iterator(0) + 20);
  v4 = *(MEMORY[0x277D857A0] + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3480, &qword_2381CB3A0);
  *v5 = v1;
  v5[1] = sub_2381A6574;

  return MEMORY[0x2822003F0](a1, v6);
}

uint64_t sub_2381A8AA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(MEMORY[0x277D857A0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3480, &qword_2381CB3A0);
  *v6 = v2;
  v6[1] = sub_2381C9818;

  return MEMORY[0x2822003F0](a1, v7);
}

uint64_t sub_2381A8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_2381A8C20;

  return MEMORY[0x282200308](a1, a5, a6);
}

uint64_t sub_2381A8C20()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_2381CA21C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_2381C9858;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_2381CA21C();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_2381C9850;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

double DockAccessory.MotionState.angularVelocities.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  return result;
}

double DockAccessory.MotionState.angularPositions.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return result;
}

void *DockAccessory.MotionState.error.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t DockAccessory.MotionStates.Iterator.next()(uint64_t a1)
{
  v3 = *(type metadata accessor for DockAccessory.MotionStates.Iterator(0) + 20);
  v4 = *(MEMORY[0x277D857A0] + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3490, &qword_2381CB3B8);
  *v5 = v1;
  v5[1] = sub_2381A6574;

  return MEMORY[0x2822003F0](a1, v6);
}

uint64_t sub_2381A8F4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(MEMORY[0x277D857A0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3490, &qword_2381CB3B8);
  *v6 = v2;
  v6[1] = sub_2381C9818;

  return MEMORY[0x2822003F0](a1, v7);
}

uint64_t sub_2381A9038@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v8 + 16);
  v12(&v15 - v10, v4, v7);
  v12(a4, v11, v7);
  v13 = &a4[*(a3(0) + 20)];
  sub_2381CA28C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t DockAccessory.TrackedPerson.speakingConfidence.getter()
{
  v1 = (v0 + *(type metadata accessor for DockAccessory.TrackedPerson(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DockAccessory.TrackedPerson.speakingConfidence.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DockAccessory.TrackedPerson(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DockAccessory.TrackedPerson.lookingAtCameraConfidence.getter()
{
  v1 = (v0 + *(type metadata accessor for DockAccessory.TrackedPerson(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DockAccessory.TrackedPerson.lookingAtCameraConfidence.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DockAccessory.TrackedPerson(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

double sub_2381A9498(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  return result;
}

uint64_t sub_2381A94E4(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  result = a1(0);
  v11 = (v5 + *(result + 20));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_2381A9598(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_2381A95E4(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  result = a3(0);
  v7 = v3 + *(result + 24);
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2381A9694@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_2381A971C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t DockAccessory.TrackingState.trackedSubjects.getter()
{
  v1 = *(v0 + *(type metadata accessor for DockAccessory.TrackingState(0) + 20));
}

uint64_t DockAccessory.TrackingState.trackedSubjects.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DockAccessory.TrackingState(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DockAccessory.TrackingState.description.getter()
{
  v1 = v0;
  v63 = type metadata accessor for DockAccessory.TrackedObject(0);
  v2 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DockAccessory.TrackedPerson(0);
  v4 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DockAccessory.TrackedSubjectType(0);
  v7 = *(v65 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v65);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = 0x3D656D6974;
  *(&v66 + 1) = 0xE500000000000000;
  sub_2381C998C();
  sub_2381C41C0(&qword_27DEF34A0, MEMORY[0x277CC9578]);
  v11 = sub_2381CA3FC();
  MEMORY[0x2383EB320](v11);

  MEMORY[0x2383EB320](2592, 0xE200000000000000);
  v12 = v66;
  v70 = v66;
  v13 = *(v1 + *(type metadata accessor for DockAccessory.TrackingState(0) + 20));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v64 = *(v7 + 72);
    do
    {
      sub_2381C4208(v15, v10, type metadata accessor for DockAccessory.TrackedSubjectType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = v62;
        sub_2381C4A44(v10, v62, type metadata accessor for DockAccessory.TrackedObject);
        *&v66 = 0x207463656A626FLL;
        *(&v66 + 1) = 0xE700000000000000;
        v17 = sub_2381C999C();
        v20 = sub_2381C49A8(5, v17, v18, v19);
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v27 = MEMORY[0x2383EB2F0](v20, v22, v24, v26);
        v29 = v28;

        MEMORY[0x2383EB320](v27, v29);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v66, *(&v66 + 1));

        v68 = 0;
        v69 = 0xE000000000000000;
        MEMORY[0x2383EB320](0x3D74636572, 0xE500000000000000);
        v30 = (v16 + *(v63 + 20));
        v31 = v30[1];
        v66 = *v30;
        v67 = v31;
        type metadata accessor for CGRect(0);
        sub_2381CA37C();
        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v68, v69);

        v32 = type metadata accessor for DockAccessory.TrackedObject;
        v33 = v16;
      }

      else
      {
        sub_2381C4A44(v10, v6, type metadata accessor for DockAccessory.TrackedPerson);
        *&v66 = 0x206E6F73726570;
        *(&v66 + 1) = 0xE700000000000000;
        v34 = sub_2381C999C();
        v37 = sub_2381C49A8(5, v34, v35, v36);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v44 = MEMORY[0x2383EB2F0](v37, v39, v41, v43);
        v46 = v45;

        MEMORY[0x2383EB320](v44, v46);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v66, *(&v66 + 1));

        v68 = 0;
        v69 = 0xE000000000000000;
        MEMORY[0x2383EB320](0x3D74636572, 0xE500000000000000);
        v47 = v61;
        v48 = &v6[*(v61 + 20)];
        v49 = *(v48 + 1);
        v66 = *v48;
        v67 = v49;
        type metadata accessor for CGRect(0);
        sub_2381CA37C();
        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v68, v69);

        *&v66 = 0x79636E65696C6173;
        *(&v66 + 1) = 0xE90000000000003DLL;
        v50 = &v6[v47[6]];
        v51 = *v50;
        LOBYTE(v50) = v50[8];
        v68 = v51;
        LOBYTE(v69) = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34A8, &qword_2381CB3C8);
        v52 = sub_2381CA10C();
        MEMORY[0x2383EB320](v52);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v66, *(&v66 + 1));

        *&v66 = 0x676E696B61657073;
        *(&v66 + 1) = 0xE90000000000003DLL;
        v53 = &v6[v47[7]];
        v54 = *v53;
        LOBYTE(v53) = v53[8];
        v68 = v54;
        LOBYTE(v69) = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34B0, &qword_2381CB3D0);
        v55 = sub_2381CA10C();
        MEMORY[0x2383EB320](v55);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v66, *(&v66 + 1));

        *&v66 = 0x3D676E696B6F6F6CLL;
        *(&v66 + 1) = 0xE800000000000000;
        v56 = &v6[v47[8]];
        v57 = *v56;
        LOBYTE(v56) = v56[8];
        v68 = v57;
        LOBYTE(v69) = v56;
        v58 = sub_2381CA10C();
        MEMORY[0x2383EB320](v58);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v66, *(&v66 + 1));

        v32 = type metadata accessor for DockAccessory.TrackedPerson;
        v33 = v6;
      }

      sub_2381C4AAC(v33, v32);
      MEMORY[0x2383EB320](10, 0xE100000000000000);
      v15 += v64;
      --v14;
    }

    while (v14);
    return v70;
  }

  return v12;
}

uint64_t DockAccessory.TrackingStates.Iterator.next()(uint64_t a1)
{
  v3 = *(type metadata accessor for DockAccessory.TrackingStates.Iterator(0) + 20);
  v4 = *(MEMORY[0x277D857A0] + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34B8, &qword_2381CB3E0);
  *v5 = v1;
  v5[1] = sub_2381A6574;

  return MEMORY[0x2822003F0](a1, v6);
}

uint64_t sub_2381AA014(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(MEMORY[0x277D857A0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34B8, &qword_2381CB3E0);
  *v6 = v2;
  v6[1] = sub_2381C9818;

  return MEMORY[0x2822003F0](a1, v7);
}

uint64_t DockAccessory.AccessoryEvent.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      MEMORY[0x2383EB620](3);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      return MEMORY[0x2383EB640](v3);
    }

    else
    {
      if (v1 | v2 ^ 0x80)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      return MEMORY[0x2383EB620](v5);
    }
  }

  else
  {
    MEMORY[0x2383EB620](0);
    MEMORY[0x2383EB620](v1);
    return sub_2381CA47C();
  }
}

uint64_t DockAccessory.AccessoryEvent.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2381CA45C();
  DockAccessory.AccessoryEvent.hash(into:)();
  return sub_2381CA49C();
}

uint64_t sub_2381AA22C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2381CA45C();
  DockAccessory.AccessoryEvent.hash(into:)();
  return sub_2381CA49C();
}

uint64_t sub_2381AA284()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2381CA45C();
  DockAccessory.AccessoryEvent.hash(into:)();
  return sub_2381CA49C();
}

uint64_t DockAccessory.AccessoryEvents.Iterator.next()(uint64_t a1)
{
  v3 = *(type metadata accessor for DockAccessory.AccessoryEvents.Iterator(0) + 20);
  v4 = *(MEMORY[0x277D857A0] + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34C8, &qword_2381CB3F8);
  *v5 = v1;
  v5[1] = sub_23819DAE0;

  return MEMORY[0x2822003F0](a1, v6);
}

uint64_t sub_2381AA3A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(MEMORY[0x277D857A0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34C8, &qword_2381CB3F8);
  *v6 = v2;
  v6[1] = sub_2381A2D70;

  return MEMORY[0x2822003F0](a1, v7);
}

uint64_t sub_2381AA464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_2381AA51C;

  return MEMORY[0x282200308](a1, a5, a6);
}

uint64_t sub_2381AA51C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_2381CA21C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_2381AA6C4;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_2381CA21C();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_2381AA6AC;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_2381AA6C4()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_2381AA7E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3950, &qword_2381CC9E0);
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v19 = &v17 - v4;
  v5 = sub_2381CA0AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v5);
  v10 = sub_2381CA08C();
  v11 = sub_2381CA2BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v2;
    v13 = v12;
    *v12 = 0;
    _os_log_impl(&dword_23819C000, v10, v11, "API: getAccessoryEvents", v12, 2u);
    v2 = v18;
    MEMORY[0x2383EBBE0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    (*(v20 + 104))(v19, *MEMORY[0x277D85778], v2);
    return sub_2381CA2AC();
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }
}

uint64_t DockAccessory.BatteryState.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DockAccessory.BatteryState.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_2381CA14C();
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x2383EB640](*&v6);
  sub_2381CA47C();
  return MEMORY[0x2383EB620](v5);
}

uint64_t DockAccessory.BatteryState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_2381CA45C();
  sub_2381CA14C();
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x2383EB640](*&v6);
  sub_2381CA47C();
  MEMORY[0x2383EB620](v5);
  return sub_2381CA49C();
}

uint64_t sub_2381AAC10()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 24);
  v6 = *(v0 + 25);
  sub_2381CA45C();
  DockAccessory.BatteryState.hash(into:)();
  return sub_2381CA49C();
}

uint64_t sub_2381AAC78()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 24);
  v6 = *(v0 + 25);
  sub_2381CA45C();
  DockAccessory.BatteryState.hash(into:)();
  return sub_2381CA49C();
}

uint64_t DockAccessory.BatteryStates.Iterator.next()(uint64_t a1)
{
  v3 = *(type metadata accessor for DockAccessory.BatteryStates.Iterator(0) + 20);
  v4 = *(MEMORY[0x277D857A0] + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34D8, &qword_2381CB410);
  *v5 = v1;
  v5[1] = sub_2381A6574;

  return MEMORY[0x2822003F0](a1, v6);
}

uint64_t sub_2381AADA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(MEMORY[0x277D857A0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34D8, &qword_2381CB410);
  *v6 = v2;
  v6[1] = sub_2381C9818;

  return MEMORY[0x2822003F0](a1, v7);
}

uint64_t sub_2381AAECC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, char *a5@<X8>)
{
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = *(v11 + 16);
  v15(&v18 - v13, v8, v10);
  v15(a5, v14, v10);
  v16 = &a5[*(a3(0) + 20)];
  sub_2381CA28C();
  sub_2381C4AAC(v8, a4);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2381AB028()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3938, &qword_2381CC988);
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v19 = &v17 - v4;
  v5 = sub_2381CA0AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v5);
  v10 = sub_2381CA08C();
  v11 = sub_2381CA2BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v2;
    v13 = v12;
    *v12 = 0;
    _os_log_impl(&dword_23819C000, v10, v11, "API: getAccessoryBatteryStates", v12, 2u);
    v2 = v18;
    MEMORY[0x2383EBBE0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    (*(v20 + 104))(v19, *MEMORY[0x277D85778], v2);
    return sub_2381CA2AC();
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_2381AB304@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2381AB334(uint64_t a1)
{
  v2 = sub_2381C4CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB370(uint64_t a1)
{
  v2 = sub_2381C4CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381AB3AC(uint64_t a1)
{
  v2 = sub_2381C4C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB3E8(uint64_t a1)
{
  v2 = sub_2381C4C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381AB424()
{
  v1 = 0x6974616D6F747561;
  v2 = 1952867692;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2381AB494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2381C7EF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2381AB4C8(uint64_t a1)
{
  v2 = sub_2381C4B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB504(uint64_t a1)
{
  v2 = sub_2381C4B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381AB540(uint64_t a1)
{
  v2 = sub_2381C4C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB57C(uint64_t a1)
{
  v2 = sub_2381C4C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381AB5B8(uint64_t a1)
{
  v2 = sub_2381C4BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB5F4(uint64_t a1)
{
  v2 = sub_2381C4BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockAccessory.FramingMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34E8, &qword_2381CB420);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34F0, &qword_2381CB428);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34F8, &qword_2381CB430);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3500, &qword_2381CB438);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3508, &qword_2381CB440);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381C4B6C();
  sub_2381CA4BC();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_2381C4C14();
      v24 = v33;
      sub_2381CA3EC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_2381C4BC0();
      v24 = v36;
      sub_2381CA3EC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_2381C4C68();
    v24 = v30;
    sub_2381CA3EC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_2381C4CBC();
  sub_2381CA3EC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t DockAccessory.FramingMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3538, &qword_2381CB448);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3540, &qword_2381CB450);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3548, &qword_2381CB458);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3550, &qword_2381CB460);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3558, &qword_2381CB468);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_2381C4B6C();
  v23 = v55;
  sub_2381CA4AC();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_2381CA3DC();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_2381CA35C();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3470, &qword_2381CB388) + 48);
      *v33 = &type metadata for DockAccessory.FramingMode;
      sub_2381CA3CC();
      sub_2381CA34C();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_2381C4C68();
          v39 = v44;
          sub_2381CA3BC();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_2381C4CBC();
          v35 = v44;
          sub_2381CA3BC();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_0(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_2381C4C14();
        v38 = v44;
        sub_2381CA3BC();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_2381C4BC0();
        v40 = v44;
        sub_2381CA3BC();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v56);
}

double DockAccessory.Limits.Limit.positionRange.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void DockAccessory.Limits.Limit.init(positionRange:maximumSpeed:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  if (a4 >= 0.0 && a3 > a2)
  {
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
  }
}

__n128 DockAccessory.Limits.yaw.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 DockAccessory.Limits.pitch.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u64[0];
  v3 = v1[3].n128_u8[8];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 DockAccessory.Limits.roll.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u64[0];
  v3 = v1[5].n128_u8[8];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 DockAccessory.Limits.init(yaw:pitch:roll:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = a3[1].n128_u64[0];
  v5 = *(a1 + 24);
  v10 = *(a2 + 24);
  v9 = a3[1].n128_u8[8];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = *a2;
  *(a4 + 48) = v6;
  *(a4 + 56) = v10;
  result = *a3;
  *(a4 + 64) = *a3;
  *(a4 + 80) = v7;
  *(a4 + 88) = v9;
  return result;
}

uint64_t DockAccessory.framingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock;
  v4 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);

  os_unfair_lock_lock(v4 + 4);

  LOBYTE(v4) = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingMode);
  v5 = *(v1 + v3);

  os_unfair_lock_unlock(v5 + 4);

  *a1 = v4;
  return result;
}

double DockAccessory.regionOfInterest.getter()
{
  v1 = OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock;
  v2 = *(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory__roi);
  v4 = *(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory__roi + 8);
  v5 = *(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory__roi + 16);
  v6 = *(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory__roi + 24);
  v7 = *(v0 + v1);

  os_unfair_lock_unlock(v7 + 4);

  return v3;
}

uint64_t sub_2381AC3A4@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3920, &qword_2381CC950);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v94 = &v85 - v5;
  v6 = sub_2381CA0AC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v85 - v12;
  v14 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v96 = v1;
  if (!*&v1[v14])
  {
    sub_2381A319C();
    v41 = swift_allocError();
    *v42 = 1;
    v95 = v41;
    return swift_willThrow();
  }

  v92 = v3;
  v15 = v7[2];
  v88 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v89 = v15;
  v90 = v7 + 2;
  v15(v13, &v96[OBJC_IVAR____TtC7DockKit13DockAccessory_logger], v6);
  v16 = sub_2381CA08C();
  v17 = sub_2381CA2BC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v14;
    v19 = v2;
    v20 = v11;
    v21 = v7;
    v22 = v6;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_23819C000, v16, v17, "API: getMotionStates", v23, 2u);
    v24 = v23;
    v6 = v22;
    v7 = v21;
    v11 = v20;
    v2 = v19;
    v14 = v18;
    MEMORY[0x2383EBBE0](v24, -1, -1);
  }

  v26 = v7[1];
  v25 = v7 + 1;
  v91 = v26;
  v26(v13, v6);
  v27 = MEMORY[0x277D84F90];
  v98 = MEMORY[0x277D84F90];
  v28 = *&v96[v14];
  v87 = v6;
  if (!v28)
  {
    v31 = v94;
    goto LABEL_41;
  }

  v29 = v28;
  v30 = sub_2381C9C1C();

  v31 = v94;
  v85 = v25;
  if (v30)
  {
    v32 = sub_2381CA00C();

    sub_2381CA04C();
    v33 = sub_2381CA01C();
    if (*(v32 + 16))
    {
      v35 = sub_2381C38BC(v33, v34);
      v37 = v36;

      if (v37)
      {
        v38 = *(*(v32 + 56) + 8 * v35);

        v39 = swift_dynamicCastClass();
        v6 = v87;
        if (v39)
        {
          v40 = v38;
          MEMORY[0x2383EB370]();
          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v82 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2381CA1FC();
            v6 = v87;
          }

          sub_2381CA20C();

          v27 = v98;
          v31 = v94;
        }

        else
        {

          v27 = MEMORY[0x277D84F90];
          v31 = v94;
        }
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
        v31 = v94;
        v6 = v87;
      }
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }
  }

  v44 = *&v96[v14];
  if (!v44)
  {
    goto LABEL_41;
  }

  v45 = v44;
  v46 = sub_2381C9C1C();

  if (v46)
  {
    v47 = sub_2381CA00C();

    sub_2381CA04C();
    v48 = sub_2381CA03C();
    if (!*(v47 + 16))
    {

      goto LABEL_29;
    }

    v86 = v11;
    v50 = sub_2381C38BC(v48, v49);
    v52 = v51;

    if (v52)
    {
      v53 = *(*(v47 + 56) + 8 * v50);

      v54 = swift_dynamicCastClass();
      v6 = v87;
      if (v54)
      {
        v55 = v53;
        MEMORY[0x2383EB370]();
        v11 = v86;
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v83 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2381CA1FC();
          v6 = v87;
        }

        sub_2381CA20C();

        v27 = v98;
        goto LABEL_29;
      }
    }

    else
    {

      v6 = v87;
    }

    v11 = v86;
  }

LABEL_29:
  v56 = *&v96[v14];
  if (v56)
  {
    v57 = v56;
    v58 = sub_2381C9C1C();

    if (v58)
    {
      v59 = sub_2381CA00C();

      sub_2381CA04C();
      v60 = sub_2381CA02C();
      if (*(v59 + 16))
      {
        v86 = v11;
        v62 = sub_2381C38BC(v60, v61);
        v64 = v63;

        if (v64)
        {
          v65 = *(*(v59 + 56) + 8 * v62);

          v66 = swift_dynamicCastClass();
          v6 = v87;
          if (v66)
          {
            v67 = v65;
            MEMORY[0x2383EB370]();
            v11 = v86;
            if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v84 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2381CA1FC();
              v6 = v87;
            }

            sub_2381CA20C();

            v27 = v98;
            v31 = v94;
            goto LABEL_41;
          }
        }

        else
        {

          v6 = v87;
        }

        v11 = v86;
        v31 = v94;
      }

      else
      {
      }
    }
  }

LABEL_41:
  v89(v11, &v96[v88], v6);
  v68 = sub_2381CA08C();
  v69 = sub_2381CA2DC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = v27;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v97 = v72;
    *v71 = 136315138;
    v73 = sub_2381CA04C();

    v75 = MEMORY[0x2383EB3A0](v74, v73);
    v86 = v11;
    v76 = v75;
    v78 = v77;

    v79 = sub_2381C3094(v76, v78, &v97);

    *(v71 + 4) = v79;
    v31 = v94;
    _os_log_impl(&dword_23819C000, v68, v69, "Requesting motion states with actuators: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x2383EBBE0](v72, -1, -1);
    v80 = v71;
    v27 = v70;
    MEMORY[0x2383EBBE0](v80, -1, -1);

    v81 = v91(v86, v87);
  }

  else
  {

    v81 = v91(v11, v6);
  }

  MEMORY[0x28223BE20](v81);
  *(&v85 - 2) = v96;
  *(&v85 - 1) = v27;
  (*(v92 + 104))(v31, *MEMORY[0x277D85778], v2);

  sub_2381CA2AC();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2381ACC64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3900, &qword_2381CC908);
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v19 = &v17 - v4;
  v5 = sub_2381CA0AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v5);
  v10 = sub_2381CA08C();
  v11 = sub_2381CA2BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v2;
    v13 = v12;
    *v12 = 0;
    _os_log_impl(&dword_23819C000, v10, v11, "API: getTrackingStates", v12, 2u);
    v2 = v18;
    MEMORY[0x2383EBBE0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    type metadata accessor for DockAccessory.TrackingState(0);
    (*(v20 + 104))(v19, *MEMORY[0x277D85778], v2);
    return sub_2381CA2AC();
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }
}

void sub_2381ACF4C(uint64_t a1@<X8>)
{
  v73 = sub_2381CA0AC();
  v72 = *(v73 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2381C9BBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v84 = v1;
  v12 = *(v1 + v11);
  v13 = 0.0;
  if (!v12 || (v14 = v12, v15 = sub_2381C9C1C(), v14, !v15))
  {
    v32 = 0.0;
    v33 = 1;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 1;
    v39 = 0.0;
    v40 = 0.0;
    v41 = 1;
    v42 = 0.0;
    goto LABEL_11;
  }

  v16 = *(v84 + v11);
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = v16;
  v18 = sub_2381C9C1C();

  if (!v18)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v19 = sub_2381C9E0C();
  v20 = v2;
  if (!v2)
  {
    v46 = v19;
    v70 = 0;

    v83 = *(v46 + 16);
    if (v83)
    {
      v47 = 0;
      v42 = 0.0;
      v40 = 0.0;
      v39 = 0.0;
      v81 = (v7 + 8);
      v82 = v7 + 16;
      v74 = 1;
      v75 = 1;
      v76 = 0.0;
      v77 = 0.0;
      v78 = 0.0;
      v79 = 0.0;
      v88 = 1;
      v32 = 0.0;
      v80 = v46;
      while (1)
      {
        if (v47 >= *(v46 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        (*(v7 + 16))(v10, v46 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v47, v6);
        sub_2381C9B7C();
        v49 = v48;
        sub_2381C9B6C();
        if (v49 > v50)
        {
          goto LABEL_39;
        }

        v51 = v50;
        sub_2381C9BAC();
        if (v52 < 0.0 || v51 <= v49)
        {

          sub_2381A319C();
          v20 = swift_allocError();
          *v69 = 3;
          swift_willThrow();
          (*v81)(v10, v6);
          goto LABEL_7;
        }

        v53 = v52;
        v54 = sub_2381C9B9C();
        v56 = v55;
        sub_2381CA04C();
        if (v54 == sub_2381CA01C() && v56 == v57)
        {
          break;
        }

        v58 = sub_2381CA40C();

        if (v58)
        {
          goto LABEL_25;
        }

LABEL_26:
        v59 = sub_2381C9B9C();
        v61 = v60;
        if (v59 == sub_2381CA03C() && v61 == v62)
        {

LABEL_30:
          v75 = 0;
          v79 = -v51;
          v77 = -v49;
          v76 = v53;
          goto LABEL_31;
        }

        v63 = sub_2381CA40C();

        if (v63)
        {
          goto LABEL_30;
        }

LABEL_31:
        v64 = sub_2381C9B9C();
        v66 = v65;
        if (v64 == sub_2381CA02C() && v66 == v67)
        {

          (*v81)(v10, v6);
        }

        else
        {
          v68 = sub_2381CA40C();

          (*v81)(v10, v6);
          if ((v68 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v88 = 0;
        v13 = v49;
        v32 = v51;
        v78 = v53;
LABEL_16:
        ++v47;
        v46 = v80;
        if (v83 == v47)
        {
          goto LABEL_36;
        }
      }

LABEL_25:
      v74 = 0;
      v39 = v49;
      v40 = v51;
      v42 = v53;
      goto LABEL_26;
    }

    v88 = 1;
    v32 = 0.0;
    v78 = 0.0;
    v79 = 0.0;
    v77 = 0.0;
    v76 = 0.0;
    v75 = 1;
    v39 = 0.0;
    v40 = 0.0;
    v74 = 1;
    v42 = 0.0;
LABEL_36:

    v34 = v78;
    v35 = v79;
    v33 = v88;
    v36 = v77;
    v37 = v76;
    v38 = v75;
    v41 = v74;
LABEL_11:
    v43 = v41 & 1;
    v87 = v43;
    v44 = v38 & 1;
    v86 = v44;
    v45 = v33 & 1;
    v85 = v45;
    *a1 = v39;
    *(a1 + 8) = v40;
    *(a1 + 16) = v42;
    *(a1 + 24) = v43;
    *(a1 + 32) = v35;
    *(a1 + 40) = v36;
    *(a1 + 48) = v37;
    *(a1 + 56) = v44;
    *(a1 + 64) = v13;
    *(a1 + 72) = v32;
    *(a1 + 80) = v34;
    *(a1 + 88) = v45;
    return;
  }

LABEL_7:
  v21 = v72;
  v22 = v71;
  v23 = v73;
  (*(v72 + 16))(v71, v84 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v73);
  v24 = v20;
  v25 = sub_2381CA08C();
  v26 = sub_2381CA2DC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v20;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_23819C000, v25, v26, "Caught err %@ and returning public", v27, 0xCu);
    sub_2381A6070(v28, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v28, -1, -1);
    MEMORY[0x2383EBBE0](v27, -1, -1);
  }

  (*(v21 + 8))(v22, v23);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v20, v31);
  swift_willThrow();
}

uint64_t sub_2381AD6D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2381CA0AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381CA09C();
  v11 = (v2 + OBJC_IVAR____TtC7DockKit13DockAccessory_firmwareVersion);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v2 + OBJC_IVAR____TtC7DockKit13DockAccessory_hardwareModel);
  *v12 = 0;
  v12[1] = 0;
  *(v2 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingMode) = 0;
  v13 = OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33F8, &qword_2381CB298);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v3 + v13) = v14;
  v15 = v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__roi;
  *v15 = 0;
  *(v15 + 8) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v15 + 16) = _Q0;
  v21 = OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v3 + v21) = v22;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__tracking) = 0;
  v23 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v3 + v23) = v24;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress) = 0;
  sub_2381C993C();
  v25 = OBJC_IVAR____TtC7DockKit13DockAccessory__animateCommandLock;
  sub_2381CA07C();
  *(v3 + v25) = sub_2381CA06C();
  sub_2381C993C();
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxPositionFrequency) = 0x4000000000000000;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxAnimateFrequency) = 0x4000000000000000;
  v26 = OBJC_IVAR____TtC7DockKit13DockAccessory_trackingSummaryLock;
  *(v3 + v26) = sub_2381CA06C();
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_publishSummaryPeriod) = 0x3FA999999999999ALL;
  sub_2381C993C();
  v27 = OBJC_IVAR____TtC7DockKit13DockAccessory_allocatedLock;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v3 + v27) = v28;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_accessory) = 0;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper) = 0;
  sub_2381C4208(a1, v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, type metadata accessor for DockAccessory.Identifier);
  if (a2 && (sub_2381C9C4C(), (v29 = swift_dynamicCastClass()) != 0))
  {
    v30 = v29;
    v31 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    *(v3 + v31) = v30;
    swift_unknownObjectRetain();
    v32 = v30;
    v33 = sub_2381C9AFC();
    v35 = v34;

    v36 = (v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_firmwareVersion);
    swift_beginAccess();
    v37 = v36[1];
    *v36 = v33;
    v36[1] = v35;

    swift_beginAccess();
    v38 = *(v3 + v31);
    if (v38)
    {
      swift_endAccess();
      v39 = v38;
      v38 = sub_2381C9B1C();
      v41 = v40;
      swift_unknownObjectRelease();

      sub_2381C4AAC(a1, type metadata accessor for DockAccessory.Identifier);
    }

    else
    {
      sub_2381C4AAC(a1, type metadata accessor for DockAccessory.Identifier);
      swift_endAccess();
      swift_unknownObjectRelease();
      v41 = 0;
    }

    v45 = (v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_hardwareModel);
    swift_beginAccess();
    v46 = v45[1];
    *v45 = v38;
    v45[1] = v41;
  }

  else
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v6);
    v42 = sub_2381CA08C();
    v43 = sub_2381CA2DC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_23819C000, v42, v43, "No stand provided, cannot use this object for IPC", v44, 2u);
      MEMORY[0x2383EBBE0](v44, -1, -1);
    }

    swift_unknownObjectRelease();
    sub_2381C4AAC(a1, type metadata accessor for DockAccessory.Identifier);
    (*(v7 + 8))(v10, v6);
  }

  return v3;
}

uint64_t DockAccessory.deinit()
{
  v1 = v0;
  v2 = sub_2381CA0AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v2);
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23819C000, v8, v9, "DockAccessory de-init: cleaning up", v10, 2u);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    v14 = v13;
    sub_2381C9BDC();

    v15 = *(v1 + v12);
    if (v15)
    {
      v16 = v15;
      sub_2381C9AEC();
    }
  }

  v11((v1 + v7), v2);
  sub_2381C4AAC(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, type metadata accessor for DockAccessory.Identifier);
  v17 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_firmwareVersion + 8);

  v18 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_hardwareModel + 8);

  v19 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);

  v20 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);

  v21 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock);

  v22 = OBJC_IVAR____TtC7DockKit13DockAccessory__lastOrientationCommandTime;
  v23 = sub_2381C998C();
  v24 = *(*(v23 - 8) + 8);
  v24(v1 + v22, v23);
  v25 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__animateCommandLock);

  v24(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__lastAnimateCommandTime, v23);
  v26 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_trackingSummaryLock);

  v24(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_lastSummaryPublishTime, v23);
  v27 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_allocatedLock);

  return v1;
}

uint64_t DockAccessory.__deallocating_deinit()
{
  DockAccessory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t static DockAccessory.== infix(_:_:)()
{
  v0 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);

  return sub_2381C99AC();
}

uint64_t DockAccessory.hash(into:)()
{
  MEMORY[0x2383EB620](0);
  v0 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  return sub_2381CA0BC();
}

id DockAccessory.setOrientation(_:duration:relative:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6)
{
  v7 = v6;
  LODWORD(v8) = a3;
  v14 = sub_2381CA0AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v14);
  v19 = sub_2381CA08C();
  v40 = sub_2381CA2BC();
  v20 = os_log_type_enabled(v19, v40);
  v42 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v41 = v8;
    v8 = v21;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v8 = 134350082;
    *(v8 + 4) = a4;
    *(v8 + 12) = 2050;
    *(v8 + 14) = a5;
    *(v8 + 22) = 2050;
    *(v8 + 24) = a6;
    *(v8 + 32) = 2082;
    v22 = sub_2381CA4DC();
    v24 = sub_2381C3094(v22, v23, &v43);
    v38 = v14;
    v25 = v7;
    v26 = v24;

    *(v8 + 34) = v26;
    v7 = v25;
    *(v8 + 42) = 1026;
    *(v8 + 44) = v41 & 1;
    _os_log_impl(&dword_23819C000, v19, v40, "API: setOrientation: %{public}f, %{public}f, %{public}f dur %{public}s, rel: %{BOOL,public}d", v8, 0x30u);
    v27 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x2383EBBE0](v27, -1, -1);
    v28 = v8;
    LOBYTE(v8) = v41;
    MEMORY[0x2383EBBE0](v28, -1, -1);

    (*(v15 + 8))(v18, v38);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v29 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v7 + v29))
  {
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v30 = qword_27DEF32C8;
    v31 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    v32 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

    os_unfair_lock_lock(v32 + 4);

    v33 = *(v30 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v34 = *(v30 + v31);

    os_unfair_lock_unlock(v34 + 4);

    if (v33)
    {
      return sub_2381AE3F0(v42, a2, v8 & 1);
    }

    else
    {
      result = sub_2381CA38C();
      __break(1u);
    }
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_2381AE3F0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v72 = a3;
  v69 = a1;
  v70 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v67 - v7;
  v8 = sub_2381C998C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2381CA0AC();
  v73 = *(v74 - 8);
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  v21 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (!v22 || (v23 = v22, v24 = sub_2381C9C2C(), v23, (v24 & 1) == 0))
  {
    v37 = v73;
    v38 = v74;
    (*(v73 + 16))(v20, v4 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v74);
    v39 = sub_2381CA08C();
    v40 = sub_2381CA2DC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_23819C000, v39, v40, "Tracking button off, motors disabled", v41, 2u);
      MEMORY[0x2383EBBE0](v41, -1, -1);
    }

    (*(v37 + 8))(v20, v38);
    v36 = 2;
    goto LABEL_10;
  }

  v25 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock;
  v26 = *(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock);

  os_unfair_lock_lock(v26 + 4);

  v27 = OBJC_IVAR____TtC7DockKit13DockAccessory__lastOrientationCommandTime;
  swift_beginAccess();
  (*(v9 + 16))(v12, v4 + v27, v8);
  sub_2381C995C();
  v29 = v28;
  (*(v9 + 8))(v12, v8);
  if (fabs(v29) < 1.0 / *(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxPositionFrequency))
  {
    v30 = v73;
    v31 = v74;
    (*(v73 + 16))(v18, v4 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v74);
    v32 = sub_2381CA08C();
    v33 = sub_2381CA2BC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23819C000, v32, v33, "rate limiting set orientation API", v34, 2u);
      MEMORY[0x2383EBBE0](v34, -1, -1);
    }

    (*(v30 + 8))(v18, v31);
    v35 = *(v4 + v25);

    os_unfair_lock_unlock(v35 + 4);

    v36 = 7;
LABEL_10:
    sub_2381A319C();
    swift_allocError();
    *v42 = v36;
    return swift_willThrow();
  }

  sub_2381C997C();
  swift_beginAccess();
  (*(v9 + 40))(v4 + v27, v12, v8);
  swift_endAccess();
  v44 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress;
  v45 = *(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress);
  if (v45 && ([v45 isCancelled] & 1) == 0)
  {
    result = *(v4 + v44);
    if (!result)
    {
      __break(1u);
      return result;
    }

    if (([result isFinished] & 1) == 0)
    {
      v46 = v73;
      v47 = v74;
      (*(v73 + 16))(v68, v4 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v74);
      v48 = sub_2381CA08C();
      v49 = sub_2381CA2DC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_23819C000, v48, v49, "Orientation in progress, cancelling", v50, 2u);
        MEMORY[0x2383EBBE0](v50, -1, -1);
      }

      (*(v46 + 8))(v68, v47);
      v51 = *(v4 + v44);
      if (v51)
      {
        [v51 cancel];
      }
    }
  }

  v52 = *(v4 + v25);

  os_unfair_lock_unlock(v52 + 4);

  v53 = *(v4 + v21);
  if (v53)
  {
    v54 = v53;
    sub_2381C9BEC();
  }

  v55 = [objc_allocWithZone(sub_2381C9B5C()) init];
  sub_2381C9B2C();
  sub_2381C9B4C();
  sub_2381C9B3C();
  v56 = [objc_opt_self() progressWithTotalUnitCount_];
  v57 = sub_2381CA24C();
  v58 = v71;
  (*(*(v57 - 8) + 56))(v71, 1, 1, v57);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v60 = v70;
  *(v59 + 32) = v69;
  *(v59 + 40) = v60;
  *(v59 + 48) = v4;
  *(v59 + 56) = v55;
  *(v59 + 64) = v72 & 1;
  *(v59 + 72) = v56;

  v61 = v55;
  v62 = v56;
  sub_23819DBD4(0, 0, v58, &unk_2381CC900, v59);

  v63 = *(v4 + v25);

  os_unfair_lock_lock(v63 + 4);

  v64 = *(v4 + v44);
  *(v4 + v44) = v62;
  v65 = v62;

  v66 = *(v4 + v25);

  os_unfair_lock_unlock(v66 + 4);

  return v65;
}

id DockAccessory.setOrientation(_:duration:relative:)(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5)
{
  v43 = a4;
  v44 = a5;
  v9 = sub_2381CA0AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v48 = v5;
  if (*(v5 + v14))
  {
    v40 = a3;
    v41 = a2;
    v42 = a1;
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v15 = qword_27DEF32C8;
    v16 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    v17 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

    os_unfair_lock_lock(v17 + 4);

    v18 = *(v15 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v19 = *(v15 + v16);

    os_unfair_lock_unlock(v19 + 4);

    if (v18)
    {
      v20 = sub_2381CA2EC();
      *&v49.quaternion.vector.f64[2] = v43;
      *v49.vector.f64 = v44;
      v47[0] = v43;
      v47[1] = v44;
      SPRotation3DGetEulerAngles(v49, v47, v20, &v45);
      SPVector3DMake(*&v45, *(&v45 + 1), v46, &v45);
      v21 = v45;
      v44.n128_f64[0] = v46;
      v22 = v10;
      (*(v10 + 16))(v13, v48 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v9);
      v23 = v9;
      v24 = sub_2381CA08C();
      v25 = sub_2381CA2BC();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v42;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v43.n128_u64[0] = v22;
        v30 = v29;
        *&v45 = v29;
        *v28 = 134350082;
        *(v28 + 4) = v21;
        *(v28 + 12) = 2050;
        *(v28 + 14) = *(&v21 + 1);
        *(v28 + 22) = 2050;
        *(v28 + 24) = v44.n128_u64[0];
        *(v28 + 32) = 2082;
        v31 = sub_2381CA4DC();
        v33 = sub_2381C3094(v31, v32, &v45);
        v39 = v23;
        v34 = v33;
        v27 = v42;

        *(v28 + 34) = v34;
        *(v28 + 42) = 1026;
        v35 = v40;
        *(v28 + 44) = v40 & 1;
        _os_log_impl(&dword_23819C000, v24, v25, "API: setOrientationR: %{public}f, %{public}f, %{public}f dur %{public}s, rel: %{BOOL,public}d", v28, 0x30u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x2383EBBE0](v30, -1, -1);
        MEMORY[0x2383EBBE0](v28, -1, -1);

        (*(v43.n128_u64[0] + 8))(v13, v39);
        v36 = v41;
      }

      else
      {

        (*(v10 + 8))(v13, v23);
        v36 = v41;
        v35 = v40;
      }

      return sub_2381AE3F0(v27, v36, v35 & 1);
    }

    else
    {
      result = sub_2381CA38C();
      __break(1u);
    }
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v37 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2381AEFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v17;
  *(v8 + 160) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = sub_2381CA0AC();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = sub_2381C9D6C();
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381AF0D4, 0, 0);
}

uint64_t sub_2381AF0D4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_2381CA4CC();
  sub_2381CA4CC();
  v6 = v5;
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (v8 && (v9 = v8, v10 = sub_2381C9C1C(), *(v0 + 128) = v10, v9, v10))
  {
    v11 = v6 / 1.0e18 + v4;
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);
    v15 = *(v0 + 72);
    v16 = *(v0 + 56);
    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    (*(v13 + 104))(v12, *MEMORY[0x277D05BD0], v14);
    v18 = *(MEMORY[0x277D05BD8] + 4);
    v19 = swift_task_alloc();
    *(v0 + 144) = v19;
    *v19 = v0;
    v19[1] = sub_2381AF2C4;
    v20 = *(v0 + 120);
    v21 = *(v0 + 160);
    v22 = *(v0 + 64);
    v23.n128_f64[0] = v11;

    return MEMORY[0x28215B378](v22, v21, v20, sub_2381C8748, v17, v23);
  }

  else
  {
    v24 = *(v0 + 120);
    v25 = *(v0 + 96);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_2381AF2C4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381AF4AC, 0, 0);
  }

  else
  {
    v9 = v2[17];

    v10 = v2[15];
    v11 = v2[12];

    v12 = *(v8 + 8);

    return v12();
  }
}

uint64_t sub_2381AF4AC()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[7];

  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v5);
  v7 = v1;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_23819C000, v8, v9, "Caught %@ while setting orientation, canceling progress", v11, 0xCu);
    sub_2381A6070(v12, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v12, -1, -1);
    MEMORY[0x2383EBBE0](v11, -1, -1);
  }

  v15 = v0[19];
  v17 = v0[11];
  v16 = v0[12];
  v19 = v0[9];
  v18 = v0[10];

  (*(v17 + 8))(v16, v18);
  [v19 cancel];

  v20 = v0[15];
  v21 = v0[12];

  v22 = v0[1];

  return v22();
}

uint64_t DockAccessory.setOrientation(_:duration:relative:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  *(v7 + 72) = a2;
  *(v7 + 80) = v6;
  *(v7 + 120) = a3;
  *(v7 + 64) = a1;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  v8 = sub_2381CA0AC();
  *(v7 + 88) = v8;
  v9 = *(v8 - 8);
  *(v7 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381AF748, 0, 0);
}

uint64_t sub_2381AF748()
{
  v38 = v0;
  (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 80) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 88));
  v1 = sub_2381CA08C();
  v2 = sub_2381CA2BC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  if (v3)
  {
    v36 = *(v0 + 120);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 134350082;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2050;
    *(v12 + 14) = v10;
    *(v12 + 22) = 2050;
    *(v12 + 24) = v9;
    *(v12 + 32) = 2082;
    v14 = sub_2381CA4DC();
    v16 = sub_2381C3094(v14, v15, &v37);

    *(v12 + 34) = v16;
    *(v12 + 42) = 1026;
    *(v12 + 44) = v36;
    _os_log_impl(&dword_23819C000, v1, v2, "API: setOrientation: %{public}f, %{public}f, %{public}f dur %{public}s, rel: %{BOOL,public}d", v12, 0x30u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2383EBBE0](v13, -1, -1);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v17 = *(v0 + 80);
  v18 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v17 + v18))
  {
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v19 = qword_27DEF32C8;
    v20 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    v21 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

    os_unfair_lock_lock(v21 + 4);

    v22 = *(v19 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v23 = *(v19 + v20);

    os_unfair_lock_unlock(v23 + 4);

    if (v22)
    {
      v24 = swift_task_alloc();
      *(v0 + 112) = v24;
      *v24 = v0;
      v24[1] = sub_2381AFB10;
      v25 = *(v0 + 72);
      v26 = *(v0 + 80);
      v27 = *(v0 + 120);
      v28 = *(v0 + 64);
      v29 = *(v0 + 48);
      v30 = *(v0 + 56);
      v31 = *(v0 + 40);

      return sub_2381AFC3C(v28, v25, v27, v31, v29, v30);
    }

    else
    {
      return sub_2381CA38C();
    }
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
    v34 = *(v0 + 104);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_2381AFB10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  v7 = *(v4 + 104);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_2381AFC3C(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  *(v7 + 72) = a2;
  *(v7 + 80) = v6;
  *(v7 + 200) = a3;
  *(v7 + 64) = a1;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  v8 = sub_2381C9D6C();
  *(v7 + 88) = v8;
  v9 = *(v8 - 8);
  *(v7 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v11 = sub_2381CA0AC();
  *(v7 + 112) = v11;
  v12 = *(v11 - 8);
  *(v7 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381AFD74, 0, 0);
}

uint64_t sub_2381AFD74()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = v3, v5 = sub_2381C9C2C(), v4, (v5 & 1) != 0))
  {
    v6 = *(v0 + 80);
    v7 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock;
    *(v0 + 144) = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock;
    v8 = *(v6 + v7);
    v9 = swift_task_alloc();
    *(v9 + 16) = sub_2381C8550;
    *(v9 + 24) = v6;

    os_unfair_lock_lock(v8 + 4);
    sub_2381C9884(v10);
    os_unfair_lock_unlock(v8 + 4);

    v11 = *(v1 + v2);
    if (v11)
    {
      v12 = v11;
      sub_2381C9BEC();
    }

    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    v18 = [objc_allocWithZone(sub_2381C9B5C()) init];
    *(v0 + 152) = v18;
    sub_2381C9B2C();
    sub_2381C9B4C();
    sub_2381C9B3C();
    v19 = [objc_opt_self() progressWithTotalUnitCount_];
    *(v0 + 160) = v19;
    v20 = sub_2381CA4CC();
    sub_2381CA4CC();
    v22 = *(v1 + v2);
    if (v22 && (v23 = v21, v24 = v22, v25 = sub_2381C9C1C(), *(v0 + 168) = v25, v24, v25))
    {
      v26 = v23 / 1.0e18 + v20;
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = swift_task_alloc();
      *(v0 + 176) = v31;
      *(v31 + 16) = v30;
      *(v31 + 24) = v19;
      (*(v28 + 104))(v27, *MEMORY[0x277D05BD0], v29);
      v32 = *(MEMORY[0x277D05BD8] + 4);
      v33 = swift_task_alloc();
      *(v0 + 184) = v33;
      *v33 = v0;
      v33[1] = sub_2381B02A4;
      v34 = *(v0 + 104);
      v35 = *(v0 + 200);
      v36.n128_f64[0] = v26;

      return MEMORY[0x28215B378](v18, v35, v34, sub_2381C98A0, v31, v36);
    }

    else
    {
      v48 = *(v0 + 160);
      v49 = *(v0 + 80);
      v50 = *(v49 + *(v0 + 144));
      v51 = swift_task_alloc();
      *(v51 + 16) = v49;
      *(v51 + 24) = v48;
      v52 = swift_task_alloc();
      *(v52 + 16) = sub_2381C856C;
      *(v52 + 24) = v51;

      os_unfair_lock_lock(v50 + 4);
      sub_2381C9884(v53);
      os_unfair_lock_unlock(v50 + 4);
      v55 = *(v0 + 128);
      v54 = *(v0 + 136);
      v56 = *(v0 + 104);

      v57 = *(v0 + 8);
      v58 = *(v0 + 160);

      return v57(v58);
    }
  }

  else
  {
    (*(*(v0 + 120) + 16))(*(v0 + 136), *(v0 + 80) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 112));
    v37 = sub_2381CA08C();
    v38 = sub_2381CA2DC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_23819C000, v37, v38, "Tracking button off, motors disabled", v39, 2u);
      MEMORY[0x2383EBBE0](v39, -1, -1);
    }

    v40 = *(v0 + 136);
    v41 = *(v0 + 112);
    v42 = *(v0 + 120);

    (*(v42 + 8))(v40, v41);
    sub_2381A319C();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();
    v45 = *(v0 + 128);
    v44 = *(v0 + 136);
    v46 = *(v0 + 104);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_2381B02A4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[21];
    (*(v2[12] + 8))(v2[13], v2[11]);

    v5 = sub_2381B0554;
  }

  else
  {
    v7 = v2[21];
    v6 = v2[22];
    (*(v2[12] + 8))(v2[13], v2[11]);

    v5 = sub_2381B0408;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2381B0408()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 80);
  v4 = *(v3 + *(v0 + 144));
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2381C856C;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_2381C9884(v7);
  os_unfair_lock_unlock(v4 + 4);
  if (v1)
  {
  }

  else
  {
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 104);

    v12 = *(v0 + 8);
    v13 = *(v0 + 160);

    return v12(v13);
  }
}

uint64_t sub_2381B0554()
{
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[10];

  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v5);
  v7 = v1;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[24];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_23819C000, v8, v9, "caught err %@, returning public", v11, 0xCu);
    sub_2381A6070(v12, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v12, -1, -1);
    MEMORY[0x2383EBBE0](v11, -1, -1);
  }

  v15 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];

  (*(v19 + 8))(v18, v20);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v15, v21);
  swift_willThrow();

  v23 = v0[16];
  v22 = v0[17];
  v24 = v0[13];

  v25 = v0[1];

  return v25();
}

uint64_t DockAccessory.setOrientation(_:duration:relative:)(unint64_t a1, unint64_t a2, unsigned __int8 a3, __n128 a4, __n128 a5)
{
  v6[5].n128_u64[0] = a2;
  v6[5].n128_u64[1] = v5;
  v6[8].n128_u8[0] = a3;
  v6[4].n128_u64[1] = a1;
  v6[1] = a4;
  v6[2] = a5;
  v7 = sub_2381CA0AC();
  v6[6].n128_u64[0] = v7;
  v8 = *(v7 - 8);
  v6[6].n128_u64[1] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7].n128_u64[0] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B082C, 0, 0);
}

uint64_t sub_2381B082C()
{
  v50 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v3 = qword_27DEF32C8;
    v4 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    v5 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

    os_unfair_lock_lock(v5 + 4);

    v6 = *(v3 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v7 = *(v3 + v4);

    os_unfair_lock_unlock(v7 + 4);

    if (v6)
    {
      v9 = *(v0 + 104);
      v8 = *(v0 + 112);
      v11 = *(v0 + 88);
      v10 = *(v0 + 96);
      v43 = *(v0 + 16);
      v45 = *(v0 + 32);
      v12 = sub_2381CA2EC();
      *&v52.quaternion.vector.f64[2] = v43;
      *v52.vector.f64 = v45;
      v47[0] = v43;
      v47[1] = v45;
      SPRotation3DGetEulerAngles(v52, v47, v12, v48);
      SPVector3DMake(v48[0], v48[1], v49, v48);
      v14 = v48[0];
      v13 = v48[1];
      v15 = v49;
      (*(v9 + 16))(v8, v11 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v10);
      v16 = sub_2381CA08C();
      v17 = sub_2381CA2BC();
      v18 = os_log_type_enabled(v16, v17);
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = *(v0 + 96);
      if (v18)
      {
        v41 = *(v0 + 128);
        v42 = *(v0 + 112);
        v44 = *(v0 + 96);
        v22 = v15;
        v23 = v14;
        v25 = *(v0 + 72);
        v24 = *(v0 + 80);
        v46 = v13;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v48[0] = v27;
        *v26 = 134350082;
        *(v26 + 4) = v23;
        *(v26 + 12) = 2050;
        *(v26 + 14) = v46;
        *(v26 + 22) = 2050;
        *(v26 + 24) = v22;
        *(v26 + 32) = 2082;
        v28 = sub_2381CA4DC();
        v30 = sub_2381C3094(v28, v29, v48);
        v15 = v22;

        *(v26 + 34) = v30;
        v14 = v23;
        *(v26 + 42) = 1026;
        *(v26 + 44) = v41;
        _os_log_impl(&dword_23819C000, v16, v17, "API: setOrientationR: %{public}f, %{public}f, %{public}f dur %{public}s, rel: %{BOOL,public}d", v26, 0x30u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x2383EBBE0](v27, -1, -1);
        v31 = v26;
        v13 = v46;
        MEMORY[0x2383EBBE0](v31, -1, -1);

        (*(v20 + 8))(v42, v44);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }

      v36 = swift_task_alloc();
      *(v0 + 120) = v36;
      *v36 = v0;
      v36[1] = sub_2381B0C44;
      v37 = *(v0 + 80);
      v38 = *(v0 + 88);
      v39 = *(v0 + 128);
      v40 = *(v0 + 72);

      return sub_2381AFC3C(v40, v37, v39, v14, v13, v15);
    }

    else
    {
      return sub_2381CA38C();
    }
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    v33 = *(v0 + 112);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_2381B0C44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  v7 = *(v4 + 112);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_2381B0D70(uint64_t a1)
{
  v2 = sub_2381CA0AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = sub_2381C998C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC7DockKit13DockAccessory__lastOrientationCommandTime;
  swift_beginAccess();
  (*(v10 + 16))(v13, a1 + v14, v9);
  sub_2381C995C();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (fabs(v16) >= 1.0 / *(a1 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxPositionFrequency))
  {
    sub_2381C997C();
    swift_beginAccess();
    (*(v10 + 40))(a1 + v14, v13, v9);
    swift_endAccess();
    v22 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress;
    result = *(a1 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress);
    if (result)
    {
      result = [result isCancelled];
      if ((result & 1) == 0)
      {
        result = *(a1 + v22);
        if (result)
        {
          result = [result isFinished];
          if ((result & 1) == 0)
          {
            (*(v3 + 16))(v27, a1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v2);
            v23 = sub_2381CA08C();
            v24 = sub_2381CA2DC();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_23819C000, v23, v24, "Orientation in progress, cancelling", v25, 2u);
              MEMORY[0x2383EBBE0](v25, -1, -1);
            }

            (*(v3 + 8))(v27, v2);
            result = *(a1 + v22);
            if (result)
            {
              return [result cancel];
            }
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    (*(v3 + 16))(v8, a1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v2);
    v17 = sub_2381CA08C();
    v18 = sub_2381CA2BC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23819C000, v17, v18, "rate limiting set orientation API", v19, 2u);
      MEMORY[0x2383EBBE0](v19, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    sub_2381A319C();
    swift_allocError();
    *v20 = 7;
    return swift_willThrow();
  }

  return result;
}

char *sub_2381B1180(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = a3;
  v44 = sub_2381CA0AC();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v44);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = sub_2381C9D1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381C9DEC();
  result = (*(v18 + 88))(v21, v17);
  if (result == *MEMORY[0x277D05BB0])
  {
    return result;
  }

  if (result == *MEMORY[0x277D05BC8])
  {
    v23 = v44;
    (*(v4 + 16))(v14, a2 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v44);
    v24 = sub_2381CA08C();
    v25 = sub_2381CA2DC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23819C000, v24, v25, "completed: increase completed unit count", v26, 2u);
      MEMORY[0x2383EBBE0](v26, -1, -1);
    }

    (*(v4 + 8))(v14, v23);
    v27 = v43;
    result = [v43 completedUnitCount];
    if (!__OFADD__(result, 1))
    {
      return [v27 setCompletedUnitCount_];
    }

    __break(1u);
    return result;
  }

  if (result == *MEMORY[0x277D05BC0])
  {
    v28 = v44;
    (*(v4 + 16))(v16, a2 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v44);
    v29 = sub_2381CA08C();
    v30 = sub_2381CA2DC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23819C000, v29, v30, "canceled: canceling progress", v31, 2u);
      MEMORY[0x2383EBBE0](v31, -1, -1);
    }

    (*(v4 + 8))(v16, v28);
    return [v43 cancel];
  }

  v32 = *(v4 + 16);
  v33 = a2 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  if (result == *MEMORY[0x277D05BB8])
  {
    v34 = v44;
    v32(v11, v33, v44);
    v35 = sub_2381CA08C();
    v36 = sub_2381CA2DC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_23819C000, v35, v36, "failed: canceling progress", v37, 2u);
      MEMORY[0x2383EBBE0](v37, -1, -1);
    }

    (*(v4 + 8))(v11, v34);
    return [v43 cancel];
  }

  v38 = v44;
  v32(v8, v33, v44);
  v39 = sub_2381CA08C();
  v40 = sub_2381CA2DC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_23819C000, v39, v40, "default: canceling progress", v41, 2u);
    v42 = v41;
    v38 = v44;
    MEMORY[0x2383EBBE0](v42, -1, -1);
  }

  (*(v4 + 8))(v8, v38);
  [v43 cancel];
  return (*(v18 + 8))(v21, v17);
}

uint64_t DockAccessory.setAngularVelocity(_:)(double a1, double a2, double a3)
{
  *(v4 + 64) = v3;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  v5 = sub_2381CA0AC();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B1798, 0, 0);
}

uint64_t sub_2381B1798()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 8);
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  *(v0 + 14) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v6 = *(v3 + 16);
  *(v0 + 15) = v6;
  *(v0 + 16) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53 = v4;
  v6(v1, v4 + v5, v2);
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2BC();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 6);
    v9 = *(v0 + 7);
    v11 = *(v0 + 5);
    v12 = swift_slowAlloc();
    *v12 = 134349568;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2050;
    *(v12 + 14) = v10;
    *(v12 + 22) = 2050;
    *(v12 + 24) = v9;
    _os_log_impl(&dword_23819C000, v7, v8, "API: setAngularVelocity: %{public}f, %{public}f, %{public}f", v12, 0x20u);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  v13 = *(v0 + 13);
  v14 = *(v0 + 9);
  v15 = *(v0 + 10);
  v16 = *(v0 + 8);

  v17 = *(v15 + 8);
  *(v0 + 17) = v17;
  *(v0 + 18) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);
  v18 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v19 = *(v16 + v18);
  if (!v19)
  {
    v38 = 1;
LABEL_18:
    sub_2381A319C();
    swift_allocError();
    *v44 = v38;
    swift_willThrow();
    v46 = *(v0 + 12);
    v45 = *(v0 + 13);
    v47 = *(v0 + 11);

    v48 = *(v0 + 1);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = sub_2381C9C2C();

  if ((v21 & 1) == 0)
  {
    v6(*(v0 + 12), v53 + v5, *(v0 + 9));
    v39 = sub_2381CA08C();
    v40 = sub_2381CA2DC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_23819C000, v39, v40, "Tracking button off, motors disabled", v41, 2u);
      MEMORY[0x2383EBBE0](v41, -1, -1);
    }

    v42 = *(v0 + 12);
    v43 = *(v0 + 9);

    v17(v42, v43);
    v38 = 2;
    goto LABEL_18;
  }

  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v22 = qword_27DEF32C8;
  v23 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v24 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v24 + 4);

  v25 = *(v22 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v26 = *(v22 + v23);

  os_unfair_lock_unlock(v26 + 4);

  if ((v25 & 1) == 0)
  {
    return sub_2381CA38C();
  }

  v27 = *(v16 + v18);
  if (v27)
  {
    v28 = v27;
    sub_2381C9BEC();

    v29 = *(v16 + v18);
    if (v29)
    {
      v30 = v29;
      v31 = sub_2381C9C1C();
      *(v0 + 19) = v31;

      if (v31)
      {
        v32 = -v0[5];
        v33 = *(MEMORY[0x277D05BF0] + 4);
        v34 = swift_task_alloc();
        *(v0 + 20) = v34;
        *v34 = v0;
        v34[1] = sub_2381B1C50;
        v35.n128_f64[0] = v0[6];
        v36.n128_f64[0] = v0[7];
        v37.n128_f64[0] = v32;

        return MEMORY[0x28215B3A0](v35, v37, v36);
      }
    }
  }

  v50 = *(v0 + 12);
  v49 = *(v0 + 13);
  v51 = *(v0 + 11);

  v48 = *(v0 + 1);
LABEL_19:

  return v48();
}

uint64_t sub_2381B1C50()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  *(v3 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B1DAC, 0, 0);
  }

  else
  {

    v5 = *(v3 + 96);
    v4 = *(v3 + 104);
    v6 = *(v3 + 88);

    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_2381B1DAC()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  v3(v5, v7 + v4, v6);
  v8 = v1;
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 168);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23819C000, v9, v10, "caught err %@, returning public", v12, 0xCu);
    sub_2381A6070(v13, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v13, -1, -1);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  v16 = *(v0 + 168);
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v19 = *(v0 + 88);
  v20 = *(v0 + 72);

  v18(v19, v20);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v16, v21);
  swift_willThrow();

  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 88);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t DockAccessory.setLimits(_:)(uint64_t *a1)
{
  v3 = sub_2381CA0AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v114 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v113 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF35D0, &qword_2381CB498);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v87 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v83 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v83 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v83 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v83 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  v25 = *a1;
  v105 = a1[1];
  v106 = v25;
  v104 = a1[2];
  v103 = *(a1 + 24);
  v26 = a1[5];
  v99 = a1[4];
  v100 = v26;
  v101 = a1[6];
  v111 = *(a1 + 56);
  v27 = a1[9];
  v95 = a1[8];
  v94 = v27;
  v93 = a1[10];
  v102 = *(a1 + 88);
  v28 = sub_2381C9BBC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v112 = v24;
  v30(v24, 1, 1, v28);
  v30(v22, 1, 1, v28);
  v91 = v28;
  v90 = v30;
  v89 = v31;
  v30(v19, 1, 1, v28);
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v110 = v19;
  v108 = v22;
  v32 = qword_27DEF32C8;
  v33 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v34 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v34 + 4);

  v35 = *(v32 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v36 = *(v32 + v33);

  os_unfair_lock_unlock(v36 + 4);

  if ((v35 & 1) == 0)
  {
    result = sub_2381CA38C();
    __break(1u);
    return result;
  }

  v38 = v4 + 16;
  v37 = *(v4 + 16);
  v109 = v1;
  v96 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v39 = v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v40 = v113;
  v97 = v37;
  v37(v113, v39, v3);
  v41 = sub_2381CA08C();
  v42 = v4;
  v43 = sub_2381CA2BC();
  v44 = os_log_type_enabled(v41, v43);
  v98 = v42;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v119 = v85;
    *v45 = 136446722;
    v115 = v106;
    v116 = v105;
    v117 = v104;
    v46 = v103;
    v118 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF35D8, &qword_2381CB4A0);
    v86 = v38;
    v47 = sub_2381CA10C();
    v49 = sub_2381C3094(v47, v48, &v119);

    *(v45 + 4) = v49;
    v84 = v3;
    *(v45 + 12) = 2082;
    v115 = v99;
    v116 = v100;
    v117 = v101;
    v118 = v111;
    v50 = sub_2381CA10C();
    v52 = sub_2381C3094(v50, v51, &v119);

    *(v45 + 14) = v52;
    *(v45 + 22) = 2082;
    v115 = v95;
    v116 = v94;
    v117 = v93;
    v118 = v102;
    v53 = sub_2381CA10C();
    v55 = sub_2381C3094(v53, v54, &v119);

    *(v45 + 24) = v55;
    _os_log_impl(&dword_23819C000, v41, v43, "API: setLimits: %{public}s, %{public}s, %{public}s", v45, 0x20u);
    v56 = v85;
    swift_arrayDestroy();
    MEMORY[0x2383EBBE0](v56, -1, -1);
    MEMORY[0x2383EBBE0](v45, -1, -1);

    v57 = *(v42 + 8);
    v58 = v84;
    v57(v113, v84);
    v59 = v107;
    v60 = v108;
    if (v46)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v57 = *(v42 + 8);
    v57(v40, v3);
    v58 = v3;
    v59 = v107;
    v60 = v108;
    if (v103)
    {
LABEL_6:
      if (v111)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  sub_2381CA04C();
  sub_2381CA01C();
  v61 = v92;
  sub_2381C9B8C();
  if (v59)
  {
    goto LABEL_15;
  }

  v62 = v112;
  sub_2381A6070(v112, &qword_27DEF35D0, &qword_2381CB498);
  v90(v61, 0, 1, v91);
  sub_2381C4E68(v61, v62, &qword_27DEF35D0, &qword_2381CB498);
  if ((v111 & 1) == 0)
  {
LABEL_12:
    sub_2381CA04C();
    sub_2381CA03C();
    v63 = v88;
    sub_2381C9B8C();
    if (!v59)
    {
      sub_2381A6070(v60, &qword_27DEF35D0, &qword_2381CB498);
      v90(v63, 0, 1, v91);
      sub_2381C4E68(v63, v60, &qword_27DEF35D0, &qword_2381CB498);
      if (v102)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

LABEL_15:
    v65 = v59;
    goto LABEL_16;
  }

LABEL_7:
  if (v102)
  {
    goto LABEL_22;
  }

LABEL_14:
  sub_2381CA04C();
  sub_2381CA02C();
  v64 = v87;
  sub_2381C9B8C();
  if (v59)
  {
    goto LABEL_15;
  }

  v76 = v110;
  sub_2381A6070(v110, &qword_27DEF35D0, &qword_2381CB498);
  v90(v64, 0, 1, v91);
  sub_2381C4E68(v64, v76, &qword_27DEF35D0, &qword_2381CB498);
LABEL_22:
  v77 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  v78 = v109;
  swift_beginAccess();
  v79 = *(v78 + v77);
  if (v79)
  {
    swift_endAccess();
    v80 = v79;
    v81 = sub_2381C9C1C();

    if (!v81)
    {
LABEL_19:
      v74 = v110;
LABEL_20:
      sub_2381A6070(v74, &qword_27DEF35D0, &qword_2381CB498);
      sub_2381A6070(v60, &qword_27DEF35D0, &qword_2381CB498);
      return sub_2381A6070(v112, &qword_27DEF35D0, &qword_2381CB498);
    }

    v82 = v110;
    sub_2381C9E1C();
    if (!v59)
    {

      v74 = v82;
      goto LABEL_20;
    }

    v65 = v59;
LABEL_16:
    v97(v114, v109 + v96, v58);
    v66 = v65;
    v67 = sub_2381CA08C();
    v68 = sub_2381CA2DC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      v71 = v65;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 4) = v72;
      *v70 = v72;
      _os_log_impl(&dword_23819C000, v67, v68, "Caught err %@ and returning public", v69, 0xCu);
      sub_2381A6070(v70, &qword_27DEF32F0, &qword_2381CB490);
      MEMORY[0x2383EBBE0](v70, -1, -1);
      MEMORY[0x2383EBBE0](v69, -1, -1);
    }

    v57(v114, v58);
    sub_2381A319C();
    swift_allocError();
    sub_23819FD88(v65, v73);
    swift_willThrow();

    goto LABEL_19;
  }

  sub_2381A6070(v110, &qword_27DEF35D0, &qword_2381CB498);
  sub_2381A6070(v60, &qword_27DEF35D0, &qword_2381CB498);
  sub_2381A6070(v112, &qword_27DEF35D0, &qword_2381CB498);
  return swift_endAccess();
}

void sub_2381B2A6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v12 = OBJC_IVAR____TtC7DockKit13DockAccessory_helper;
  if (*(v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper) || (v13 = [objc_allocWithZone(type metadata accessor for DockAccessoryHelper(0)) init], v14 = *(v6 + v12), *(v6 + v12) = v13, v14, *(v6 + v12)))
  {
    swift_unknownObjectWeakAssign();
    v15 = *(v6 + v12);
    if (v15)
    {
      v16 = &v15[*a4];
      v17 = *v16;
      v18 = *(v16 + 1);
      *v16 = a2;
      *(v16 + 1) = a3;
      v19 = v15;
      a5(v17, v18);
      a6(a2, a3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2381B2B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;

  sub_2381CA25C();
  v13 = sub_2381CA24C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_23819DBD4(0, 0, v12, &unk_2381CC9F8, v15);
}

uint64_t sub_2381B2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2381CA0AC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B2E58, 0, 0);
}

uint64_t sub_2381B2E58()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[6]);
  v1 = sub_2381CA08C();
  v2 = sub_2381CA2DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23819C000, v1, v2, "Stopping event feedback", v3, 2u);
    MEMORY[0x2383EBBE0](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  v8 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v0[9] = v9;
  if (v9)
  {
    v10 = *(MEMORY[0x277D05B30] + 4);
    v15 = (*MEMORY[0x277D05B30] + MEMORY[0x277D05B30]);
    v9;
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_2381B3038;

    return v15();
  }

  else
  {
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2381B3038()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B317C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 64);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_2381B317C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_2381B31E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2381A6008(a3, v24 - v10, &qword_27DEF33A0, &qword_2381CB200);
  v12 = sub_2381CA24C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2381A6070(v11, &qword_27DEF33A0, &qword_2381CB200);
  }

  else
  {
    sub_2381CA23C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2381CA21C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2381CA12C() + 32;

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

      sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);

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

  sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2381B3494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B3568, 0, 0);
}

uint64_t sub_2381B3568()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v8 = *(v5 + v7);
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = v8;
  sub_2381B2A6C(v8, sub_2381C963C, v10, &OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback, sub_2381C982C, sub_2381C9830);

  v12 = *(v5 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
  v0[11] = v12;
  if (v12)
  {
    v13 = *(v5 + v7);
    v0[12] = v13;
    if (v13)
    {
      v14 = *(MEMORY[0x277D05B38] + 4);
      v24 = (*MEMORY[0x277D05B38] + MEMORY[0x277D05B38]);
      v13;
      v15 = v12;
      v16 = swift_task_alloc();
      v0[13] = v16;
      *v16 = v0;
      v16[1] = sub_2381B37DC;

      return v24(v15);
    }
  }

  else
  {
    sub_2381A319C();
    v18 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
    v21 = v0[6];
    v20 = v0[7];
    sub_2381CA27C();
  }

  v22 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_2381B37DC()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381C989C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 96);

    v5 = *(v3 + 80);

    v6 = *(v3 + 8);

    return v6();
  }
}

void sub_2381B3924(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3960, &qword_2381CCA00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
    sub_2381CA27C();
    return;
  }

  v12 = a1;
  v13 = sub_2381C9EBC();
  v14 = sub_2381C9EAC();
  v15 = *(v14 + 16);
  if (v15)
  {
    v25 = v12;
    v26 = a3;
    sub_2381C9EDC();
    v27 = v13;
    v24 = v8;
    v16 = (v8 + 8);
    v17 = v7;
    v18 = 32;
    do
    {
      v19 = a4;
      v20 = *(v14 + v18);
      v21 = v27 == sub_2381C9E6C();
      v28 = v20;
      a4 = v19;
      v29 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
      sub_2381CA26C();
      (*v16)(v11, v17);
      v18 += 8;
      --v15;
    }

    while (v15);

    LOBYTE(a3) = v26;
    LOBYTE(v13) = v27;
    v7 = v17;
    v8 = v24;
    v12 = v25;
  }

  else
  {
  }

  sub_2381C9EDC();
  if (sub_2381C9E9C() == v13)
  {
    v28 = 0.0;
    v22 = 0x80;
LABEL_14:
    v29 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
    sub_2381CA26C();
    (*(v8 + 8))(v11, v7);
    goto LABEL_15;
  }

  if (sub_2381C9E7C() == v13)
  {
    *&v28 = 1;
    v22 = 0x80;
    goto LABEL_14;
  }

  if (sub_2381C9E8C() == v13)
  {
    v28 = sub_2381C9ECC() / 100.0;
    v22 = 64;
    goto LABEL_14;
  }

LABEL_15:
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
    sub_2381CA27C();
  }
}

uint64_t sub_2381B3BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;

  sub_2381CA25C();
  v13 = sub_2381CA24C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_23819DBD4(0, 0, v12, &unk_2381CC9A0, v15);
}

uint64_t sub_2381B3DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2381CA0AC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B3EC4, 0, 0);
}

uint64_t sub_2381B3EC4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v0[10] = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23819C000, v7, v8, "Stopping battery states", v9, 2u);
    MEMORY[0x2383EBBE0](v9, -1, -1);
  }

  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];

  v14 = *(v12 + 8);
  v0[13] = v14;
  v14(v10, v11);
  v15 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v16 = *(v13 + v15);
  v0[14] = v16;
  if (v16)
  {
    v17 = *(MEMORY[0x277D05B28] + 4);
    v23 = (*MEMORY[0x277D05B28] + MEMORY[0x277D05B28]);
    v16;
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_2381B40C4;

    return v23();
  }

  else
  {
    v21 = v0[8];
    v20 = v0[9];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_2381B40C4()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B4210, 0, 0);
  }

  else
  {

    v5 = *(v3 + 64);
    v4 = *(v3 + 72);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_2381B4210()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  v3(v5, v7 + v4, v6);
  v8 = v1;
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 128);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_23819C000, v9, v10, "Failed stopping battery states: %@", v13, 0xCu);
    sub_2381A6070(v14, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v14, -1, -1);
    MEMORY[0x2383EBBE0](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 56) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 48));
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2381B43C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B449C, 0, 0);
}

uint64_t sub_2381B449C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v8 = *(v5 + v7);
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = v8;

  sub_2381B2A6C(v8, sub_2381C91A4, v10, &OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_batteryCallback, sub_2381C982C, sub_2381C9830);

  v12 = *(v5 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
  v0[11] = v12;
  if (v12)
  {
    v13 = *(v5 + v7);
    v0[12] = v13;
    if (v13)
    {
      v14 = *(MEMORY[0x277D05B40] + 4);
      v26 = (*MEMORY[0x277D05B40] + MEMORY[0x277D05B40]);
      v13;
      v15 = v12;
      v16 = swift_task_alloc();
      v0[13] = v16;
      *v16 = v0;
      v16[1] = sub_2381B4794;

      return v26(v15);
    }

    else
    {
      v24 = swift_task_alloc();
      v0[15] = v24;
      *v24 = v0;
      v24[1] = sub_2381B490C;
      v25 = v0[5];

      return sub_2381B4EE0();
    }
  }

  else
  {
    sub_2381A319C();
    v18 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
    v21 = v0[6];
    v20 = v0[7];
    sub_2381CA27C();

    v22 = v0[10];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2381B4794()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B4A48, 0, 0);
  }

  else
  {
    v4 = *(v3 + 96);

    v5 = swift_task_alloc();
    *(v3 + 120) = v5;
    *v5 = v3;
    v5[1] = sub_2381B490C;
    v6 = *(v3 + 40);

    return sub_2381B4EE0();
  }
}

uint64_t sub_2381B490C()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B4AC8, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2381B4A48()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_2381CA27C();

  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2381B4AC8()
{
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  sub_2381CA27C();

  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

void sub_2381B4B3C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3948, &qword_2381CC9C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = sub_2381CA0AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - v19;
  if (a1)
  {
    v37 = a5;
    v22 = a1;
    v23 = sub_2381C9EFC();
    if (v23 >= 3)
    {
      (*(v14 + 16))(v17, a4 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v13);
      v28 = sub_2381CA08C();
      v29 = sub_2381CA2DC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_23819C000, v28, v29, "Unknown charge state, default to notCharging", v30, 2u);
        MEMORY[0x2383EBBE0](v30, -1, -1);
      }

      (*(v14 + 8))(v17, v13);
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v31 = sub_2381C9F1C();
    v33 = v32;
    sub_2381C9F0C();
    v35 = v34;
    v36 = sub_2381C9EEC();
    v39 = v31;
    v40 = v33;
    v41 = v35;
    v42 = v36 & 1;
    v43 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990);
    sub_2381CA26C();
    (*(v9 + 8))(v12, v8);
    if (v38)
    {
      sub_2381CA27C();
    }
  }

  else
  {
    (*(v14 + 16))(&v37 - v19, a4 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v13, v20);
    v25 = sub_2381CA08C();
    v26 = sub_2381CA2CC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23819C000, v25, v26, "Got nil battery state", v27, 2u);
      MEMORY[0x2383EBBE0](v27, -1, -1);
    }

    (*(v14 + 8))(v21, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990);
    sub_2381CA27C();
  }
}

uint64_t sub_2381B4EE0()
{
  v1[9] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B4F88, 0, 0);
}

uint64_t sub_2381B4F88()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  v0[12] = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[13] = v3;
  if (v3)
  {
    v4 = *(MEMORY[0x277D05B48] + 4);
    v10 = (*MEMORY[0x277D05B48] + MEMORY[0x277D05B48]);
    v3;
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_2381B50B4;

    return v10();
  }

  else
  {
    v8 = v0[10];
    v7 = v0[11];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2381B50B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_2381B567C;
  }

  else
  {

    v5 = sub_2381B51D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2381B51D0()
{
  v1 = *(v0[9] + v0[12]);
  v2 = v0[15];
  if (v1)
  {
    if (v2 >> 62)
    {
LABEL_30:
      v34 = v2;
      v3 = sub_2381CA39C();
      v2 = v34;
      v4 = v0[15];
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v0[15];
      if (v3)
      {
LABEL_4:
        v38 = v0 + 2;
        v5 = v0[9];
        v6 = OBJC_IVAR____TtC7DockKit13DockAccessory_helper;
        v48 = v2 & 0xC000000000000001;
        v44 = v4 + 32;
        v45 = v2 & 0xFFFFFFFFFFFFFF8;
        v2 = v1;
        v46 = v2;
        v7 = 0;
        v40 = v5;
        v41 = v3;
        v39 = v6;
        while (1)
        {
          if (v48)
          {
            v2 = MEMORY[0x2383EB4F0](v7, v0[15]);
          }

          else
          {
            if (v7 >= *(v45 + 16))
            {
              goto LABEL_29;
            }

            v2 = *(v44 + 8 * v7);
          }

          v8 = v2;
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v10 = *(v5 + v6);
          if (!v10)
          {
            goto LABEL_6;
          }

          v11 = v46;
          v12 = v10;
          v13 = sub_2381C9B0C();

          v1 = OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_trackingStand;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            break;
          }

          v47 = v13;

          result = swift_unknownObjectWeakLoadStrong();
          if (!result)
          {
            __break(1u);
            return result;
          }

          v16 = result;
          v17 = sub_2381C9B0C();

          sub_2381C9A2C();
          v1 = sub_2381CA2FC();

          if (v1)
          {
            v18 = v0;
            v20 = v0[10];
            v19 = v0[11];
            v21 = sub_2381CA24C();
            v22 = *(v21 - 8);
            (*(v22 + 56))(v19, 1, 1, v21);
            v23 = swift_allocObject();
            v23[2] = 0;
            v23[3] = 0;
            v23[4] = v12;
            v23[5] = v8;
            sub_2381A6008(v19, v20, &qword_27DEF33A0, &qword_2381CB200);
            v42 = v22;
            LODWORD(v20) = (*(v22 + 48))(v20, 1, v21);
            v24 = v8;

            v25 = v18;
            v26 = v18[10];
            v43 = v24;
            if (v20 == 1)
            {
              sub_2381A6070(v26, &qword_27DEF33A0, &qword_2381CB200);
            }

            else
            {
              sub_2381CA23C();
              (*(v42 + 8))(v26, v21);
            }

            v9 = v7 + 1;
            v27 = v23[2];
            v28 = v23[3];
            swift_unknownObjectRetain();

            v0 = v25;
            v6 = v39;
            if (v27)
            {
              swift_getObjectType();
              v29 = sub_2381CA21C();
              v31 = v30;
              swift_unknownObjectRelease();
            }

            else
            {
              v29 = 0;
              v31 = 0;
            }

            sub_2381A6070(v25[11], &qword_27DEF33A0, &qword_2381CB200);
            v32 = swift_allocObject();
            *(v32 + 16) = &unk_2381CC9B0;
            *(v32 + 24) = v23;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33D0, &qword_2381CC9C0);
            if (v31 | v29)
            {
              *v38 = 0;
              v38[1] = 0;
              v25[4] = v29;
              v25[5] = v31;
            }

            v5 = v40;
            v3 = v41;
            v1 = swift_task_create();
          }

          else
          {

            v9 = v7 + 1;
          }

LABEL_7:
          ++v7;
          if (v9 == v3)
          {

            v33 = v0[15];
            goto LABEL_31;
          }
        }

LABEL_6:
        goto LABEL_7;
      }
    }
  }

LABEL_31:

  v36 = v0[10];
  v35 = v0[11];

  v37 = v0[1];

  return v37();
}

uint64_t sub_2381B567C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);
  v4 = *(v0 + 128);

  return v3();
}

uint64_t sub_2381B56F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;

  sub_2381CA25C();
  v15 = sub_2381CA24C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  (*(v7 + 32))(&v17[v16], v10, v6);
  *&v17[(v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  sub_23819DBD4(0, 0, v14, &unk_2381CC968, v17);
}

uint64_t sub_2381B592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2381CA0AC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B59EC, 0, 0);
}

uint64_t sub_2381B59EC()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[6]);
  v1 = sub_2381CA08C();
  v2 = sub_2381CA2DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23819C000, v1, v2, "Stopping actuator feedback", v3, 2u);
    MEMORY[0x2383EBBE0](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  v8 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (v9 && (v10 = v9, v11 = sub_2381C9C1C(), v0[9] = v11, v10, v11))
  {
    v12 = *(MEMORY[0x277D05BE8] + 4);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_2381B5BC8;

    return MEMORY[0x28215B398]();
  }

  else
  {
    v14 = v0[8];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2381B5BC8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381C97E0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 64);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_2381B5D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3930, &qword_2381CC970);
  v6[38] = v7;
  v8 = *(v7 - 8);
  v6[39] = v8;
  v9 = *(v8 + 64) + 15;
  v6[40] = swift_task_alloc();
  v10 = sub_2381CA0AC();
  v6[41] = v10;
  v11 = *(v10 - 8);
  v6[42] = v11;
  v12 = *(v11 + 64) + 15;
  v6[43] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958);
  v6[44] = v13;
  v14 = *(v13 - 8);
  v6[45] = v14;
  v6[46] = *(v14 + 64);
  v6[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B5EA8, 0, 0);
}

uint64_t sub_2381B5EA8()
{
  v68 = v0;
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v8 = *(v5 + v7);
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = v8;
  sub_2381B2A6C(v8, sub_2381C8D80, v10, &OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback, sub_2381C982C, sub_2381C9830);

  v12 = OBJC_IVAR____TtC7DockKit13DockAccessory_helper;
  if (*(v5 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper))
  {
    v13 = *(v5 + v7);
    if (v13)
    {
      v14 = v13;
      v15 = sub_2381C9C1C();
      *(v0 + 384) = v15;

      if (v15)
      {
        v19 = *(v5 + v12);
        *(v0 + 392) = v19;
        if (v19)
        {
          v20 = *(MEMORY[0x277D05BE0] + 4);
          v21 = v19;
          v22 = swift_task_alloc();
          *(v0 + 400) = v22;
          *v22 = v0;
          v22[1] = sub_2381B63C4;
          v16 = *(v0 + 296);
          v17 = v21;
          v18 = 1;
        }

        else
        {
          __break(1u);
        }

        return MEMORY[0x28215B390](v16, v17, v18);
      }
    }
  }

  else
  {
    sub_2381A319C();
    v23 = swift_allocError();
    *v24 = 2;
    swift_willThrow();
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v27 = *(v0 + 328);
    v28 = *(v0 + 280);
    SPVector3DMake(0.0, 0.0, 0.0, &v64);
    v62 = v65;
    v63 = v67;
    v60 = v64;
    v61 = v66;
    SPVector3DMake(0.0, 0.0, 0.0, &v64);
    v58 = v65;
    v59 = v67;
    v56 = v64;
    v57 = v66;
    (*(v26 + 16))(v25, v28 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v27);
    v29 = v23;
    v30 = sub_2381CA08C();
    v31 = sub_2381CA2DC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v23;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_23819C000, v30, v31, "Converting private err %@ to public", v32, 0xCu);
      sub_2381A6070(v33, &qword_27DEF32F0, &qword_2381CB490);
      MEMORY[0x2383EBBE0](v33, -1, -1);
      MEMORY[0x2383EBBE0](v32, -1, -1);
    }

    v37 = *(v0 + 344);
    v36 = *(v0 + 352);
    v39 = *(v0 + 328);
    v38 = *(v0 + 336);
    v40 = *(v0 + 312);
    v41 = *(v0 + 320);
    v55 = *(v0 + 304);
    v42 = *(v0 + 288);

    (*(v38 + 8))(v37, v39);
    sub_23819FD88(v23, &v64);
    LOBYTE(v38) = v64;
    v43 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
    [v43 timeIntervalSinceNow];
    v45 = v44;

    v46 = swift_allocError();
    *v47 = v38;
    *(v0 + 32) = v61;
    *(v0 + 40) = v63;
    *(v0 + 16) = v60;
    *(v0 + 24) = v62;
    *(v0 + 64) = v57;
    *(v0 + 72) = v59;
    *(v0 + 48) = v56;
    *(v0 + 56) = v58;
    *(v0 + 80) = v45;
    *(v0 + 88) = v46;
    v48 = *(v0 + 80);
    *(v0 + 144) = *(v0 + 64);
    *(v0 + 160) = v48;
    v49 = *(v0 + 48);
    *(v0 + 112) = *(v0 + 32);
    *(v0 + 128) = v49;
    *(v0 + 96) = *(v0 + 16);
    sub_2381C8E3C(v0 + 16, v0 + 176);
    sub_2381CA26C();
    (*(v40 + 8))(v41, v55);
    sub_2381CA27C();
    sub_2381C8E84(v0 + 16);
  }

  v50 = *(v0 + 376);
  v51 = *(v0 + 344);
  v52 = *(v0 + 320);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_2381B63C4()
{
  v2 = *(*v1 + 400);
  v3 = *v1;
  *(v3 + 408) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B6524, 0, 0);
  }

  else
  {
    v4 = *(v3 + 384);

    v5 = *(v3 + 376);
    v6 = *(v3 + 344);
    v7 = *(v3 + 320);

    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_2381B6524()
{
  v46 = v0;
  v1 = *(v0 + 384);

  v2 = *(v0 + 408);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 280);
  SPVector3DMake(0.0, 0.0, 0.0, &v42);
  v40 = v44;
  v41 = v45;
  v38 = v42;
  v39 = v43;
  SPVector3DMake(0.0, 0.0, 0.0, &v42);
  v36 = v45;
  v37 = v44;
  v34 = v42;
  v35 = v43;
  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v5);
  v7 = v2;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23819C000, v8, v9, "Converting private err %@ to public", v10, 0xCu);
    sub_2381A6070(v11, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v11, -1, -1);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  v15 = *(v0 + 344);
  v14 = *(v0 + 352);
  v17 = *(v0 + 328);
  v16 = *(v0 + 336);
  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v33 = *(v0 + 304);
  v20 = *(v0 + 288);

  (*(v16 + 8))(v15, v17);
  sub_23819FD88(v2, &v42);
  LOBYTE(v16) = v42;
  v21 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v21 timeIntervalSinceNow];
  v23 = v22;

  sub_2381A319C();
  v24 = swift_allocError();
  *v25 = v16;
  *(v0 + 16) = v38;
  *(v0 + 24) = v39;
  *(v0 + 32) = v40;
  *(v0 + 40) = v41;
  *(v0 + 48) = v34;
  *(v0 + 56) = v35;
  *(v0 + 64) = v37;
  *(v0 + 72) = v36;
  *(v0 + 80) = v23;
  *(v0 + 88) = v24;
  v26 = *(v0 + 80);
  *(v0 + 144) = *(v0 + 64);
  *(v0 + 160) = v26;
  v27 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 128) = v27;
  *(v0 + 96) = *(v0 + 16);
  sub_2381C8E3C(v0 + 16, v0 + 176);
  sub_2381CA26C();
  (*(v19 + 8))(v18, v33);
  sub_2381CA27C();
  sub_2381C8E84(v0 + 16);

  v28 = *(v0 + 376);
  v29 = *(v0 + 344);
  v30 = *(v0 + 320);

  v31 = *(v0 + 8);

  return v31();
}