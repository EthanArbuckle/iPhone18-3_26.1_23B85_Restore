uint64_t sub_23A658D60()
{
  sub_23A658C44();

  return swift_defaultActor_deallocate();
}

uint64_t sub_23A658D8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C908, &qword_23A6E1D28);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v26 - v16;
  v18 = sub_23A6DCDF0();
  sub_23A646D48(v18, v17, &qword_27DF9D240, qword_23A6E1D30);
  v19 = sub_23A6DECC4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v21 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v4, 0x2870757472617473, 0xED0000293A5F3A5FLL, v21, v22);

    (*(v20 + 8))(v17, v19);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v24 = *(v23 - 8);
  (*(v24 + 16))(v12, a3, v23);
  (*(v24 + 56))(v12, 0, 1, v23);
  swift_beginAccess();

  sub_23A659048(v12, a1, a2);
  swift_endAccess();
  return sub_23A65A218(a1, a2);
}

uint64_t sub_23A659048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C908, &qword_23A6E1D28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - v16;
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_23A646DB0(a1, &qword_27DF9C908, &qword_23A6E1D28);
    sub_23A674140(a2, a3, v11);

    return sub_23A646DB0(v11, &qword_27DF9C908, &qword_23A6E1D28);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v12);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_23A674D74(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_23A659228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_23A674F00(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native, &qword_27DF9C990, &qword_23A6E2098);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_23A648D1C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_23A6753F0(&qword_27DF9C990, &qword_23A6E2098);
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_23A674BC4(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_23A659350(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C908, &qword_23A6E1D28) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6594E0, v2, 0);
}

uint64_t sub_23A6594E0()
{
  v1 = v0[18];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = v0[18];
  if (v6 == 1)
  {
    sub_23A646DB0(v0[18], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0x2870756E61656C63, 0xEB00000000293A5FLL, v9, v10);

    (*(v4 + 8))(v7, v3);
  }

  v11 = v0[10];
  swift_beginAccess();
  v12 = *(v11 + 128);
  if (*(v12 + 16))
  {
    v14 = v0[8];
    v13 = v0[9];
    v15 = *(v11 + 128);

    v16 = sub_23A648D1C(v14, v13);
    if (v17)
    {
      v19 = v0[15];
      v18 = v0[16];
      v20 = v0[13];
      v21 = v0[14];
      v22 = v0[12];
      v23 = v0[9];
      v46 = v0[10];
      v24 = v0[8];
      (*(v21 + 16))(v19, *(v12 + 56) + *(v21 + 72) * v16, v20);

      (*(v21 + 32))(v18, v19, v20);
      sub_23A6DF7E4();
      (*(v21 + 56))(v22, 1, 1, v20);
      swift_beginAccess();

      sub_23A659048(v22, v24, v23);
      swift_endAccess();
      sub_23A65A56C(v24, v23);
      (*(v21 + 8))(v18, v20);
      goto LABEL_14;
    }
  }

  v25 = v0[17];
  sub_23A646D48(v2, v25, &qword_27DF9D240, qword_23A6E1D30);
  if (v5(v25, 1, v3) == 1)
  {
    sub_23A646DB0(v0[17], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v26 = v0[17];
    v27 = sub_23A6DECA4();
    v28 = sub_23A6DF884();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23A63D000, v27, v28, "reader delayed cleanup scheduled", v29, 2u);
      MEMORY[0x23EE8A960](v29, -1, -1);
    }

    v30 = v0[17];

    (*(v4 + 8))(v30, v3);
  }

  v31 = v0[10];
  v32 = v0[11];
  v34 = v0[8];
  v33 = v0[9];
  v35 = sub_23A6DF7B4();
  (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
  v36 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v37 = swift_allocObject();
  v37[2] = v31;
  v37[3] = v36;
  v37[4] = v31;
  v37[5] = v34;
  v37[6] = v33;
  swift_retain_n();

  sub_23A64A15C(0, 0, v32, &unk_23A6E1D58, v37);

LABEL_14:
  v39 = v0[17];
  v38 = v0[18];
  v41 = v0[15];
  v40 = v0[16];
  v43 = v0[11];
  v42 = v0[12];

  v44 = v0[1];

  return v44();
}

uint64_t sub_23A6599A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C908, &qword_23A6E1D28) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v13 = sub_23A6DFB14();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A659B5C, a4, 0);
}

uint64_t sub_23A659B5C()
{
  v1 = *(v0 + 160);
  sub_23A6DFC84();
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_23A659C28;
  v3 = *(v0 + 160);

  return sub_23A673C88(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_23A659C28()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  v8 = v2[8];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_23A678254;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_23A659DD4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_23A659DD4()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = *(v1 + 128);

    v6 = sub_23A648D1C(v4, v3);
    if (v7)
    {
      v9 = v0[16];
      v8 = v0[17];
      v10 = v0[14];
      v11 = v0[15];
      v12 = v0[13];
      (*(v11 + 16))(v9, *(v2 + 56) + *(v11 + 72) * v6, v10);

      (*(v11 + 32))(v8, v9, v10);
      v13 = sub_23A6DCDF0();
      sub_23A646D48(v13, v12, &qword_27DF9D240, qword_23A6E1D30);
      v14 = sub_23A6DECC4();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v12, 1, v14) == 1)
      {
        sub_23A646DB0(v0[13], &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v25 = v0[13];
        v26 = sub_23A6DECA4();
        v27 = sub_23A6DF8A4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_23A63D000, v26, v27, "reader delayed cleanup success", v28, 2u);
          MEMORY[0x23EE8A960](v28, -1, -1);
        }

        v29 = v0[13];

        (*(v15 + 8))(v29, v14);
      }

      v30 = v0[17];
      v31 = v0[14];
      v32 = v0[15];
      v34 = v0[10];
      v33 = v0[11];
      v36 = v0[8];
      v35 = v0[9];
      sub_23A6DF7E4();
      (*(v32 + 56))(v33, 1, 1, v31);
      swift_beginAccess();

      sub_23A659048(v33, v35, v34);
      swift_endAccess();
      sub_23A65A56C(v35, v34);
      (*(v32 + 8))(v30, v31);
      goto LABEL_15;
    }
  }

  v16 = v0[12];
  v17 = sub_23A6DCDF0();
  sub_23A646D48(v17, v16, &qword_27DF9D240, qword_23A6E1D30);
  v18 = sub_23A6DECC4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    sub_23A646DB0(v0[12], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v20 = v0[12];
    v21 = sub_23A6DECA4();
    v22 = sub_23A6DF884();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23A63D000, v21, v22, "reader delayed cleanup failed ", v23, 2u);
      MEMORY[0x23EE8A960](v23, -1, -1);
    }

    v24 = v0[12];

    (*(v19 + 8))(v24, v18);
  }

LABEL_15:
  v37 = v0[20];
  v38 = v0[16];
  v39 = v0[17];
  v41 = v0[12];
  v40 = v0[13];
  v42 = v0[11];

  v43 = v0[1];

  return v43();
}

uint64_t sub_23A65A218(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v29 - v11;
  v13 = sub_23A6DCDF0();
  sub_23A646D48(v13, v12, &qword_27DF9D240, qword_23A6E1D30);
  v14 = sub_23A6DECC4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    result = sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v29 = v14;
    v18 = sub_23A6507C0();
    v19 = sub_23A6DCFB0();
    v14 = v29;
    sub_23A6DCFBC(v18 & 1, v3, 0xD000000000000013, 0x800000023A6E8ED0, v19, v20);

    result = (*(v15 + 8))(v12, v14);
  }

  v21 = *(v3 + 136);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 136) = v23;
    sub_23A646D48(v13, v9, &qword_27DF9D240, qword_23A6E1D30);
    if (v16(v9, 1, v14) == 1)
    {
      return sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v24 = v31;

      v25 = sub_23A6DECA4();
      v26 = sub_23A6DF874();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315394;
        *(v27 + 4) = sub_23A657E78(v30, v24, &v32);
        *(v27 + 12) = 2048;
        *(v27 + 14) = *(v3 + 136);

        _os_log_impl(&dword_23A63D000, v25, v26, "reader [%s], [%ld]", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x23EE8A960](v28, -1, -1);
        MEMORY[0x23EE8A960](v27, -1, -1);
      }

      else
      {
      }

      return (*(v15 + 8))(v9, v14);
    }
  }

  return result;
}

uint64_t sub_23A65A56C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v36 - v15;
  v17 = sub_23A6DCDF0();
  sub_23A646D48(v17, v16, &qword_27DF9D240, qword_23A6E1D30);
  v18 = sub_23A6DECC4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) == 1)
  {
    result = sub_23A646DB0(v16, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v38 = v17;
    v22 = sub_23A6507C0();
    v23 = sub_23A6DCFB0();
    v37 = v20;
    v17 = v38;
    sub_23A6DCFBC(v22 & 1, v3, 0xD000000000000013, 0x800000023A6E8EB0, v23, v24);
    v20 = v37;

    result = (*(v19 + 8))(v16, v18);
  }

  v25 = *(v3 + 136);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
    return result;
  }

  *(v3 + 136) = v27;
  if (v27 < 0)
  {
    *(v3 + 136) = 0;
  }

  else if (v27)
  {
    sub_23A646D48(v17, v9, &qword_27DF9D240, qword_23A6E1D30);
    if (v20(v9, 1, v18) == 1)
    {
      return sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    v31 = v40;

    v32 = sub_23A6DECA4();
    v33 = sub_23A6DF874();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_23A657E78(v39, v31, &v41);
      *(v34 + 12) = 2048;
      *(v34 + 14) = *(v3 + 136);

      _os_log_impl(&dword_23A63D000, v32, v33, "reader [%s], [%ld] left", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x23EE8A960](v35, -1, -1);
      MEMORY[0x23EE8A960](v34, -1, -1);
    }

    else
    {
    }

    return (*(v19 + 8))(v9, v18);
  }

  sub_23A646D48(v17, v13, &qword_27DF9D240, qword_23A6E1D30);
  if (v20(v13, 1, v18) == 1)
  {
    sub_23A646DB0(v13, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v28 = sub_23A6DECA4();
    v29 = sub_23A6DF8A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_23A63D000, v28, v29, "last reader removed, releasing connection", v30, 2u);
      MEMORY[0x23EE8A960](v30, -1, -1);
    }

    (*(v19 + 8))(v13, v18);
  }

  return sub_23A65AA04(0);
}

uint64_t sub_23A65AA04(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6, v9);
  v12 = &v32 - v11;
  v13 = *(v1 + 200);
  if (v13)
  {
    aBlock[4] = sub_23A65AE60;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A65AE64;
    aBlock[3] = &block_descriptor_317;
    v14 = _Block_copy(aBlock);
    v15 = v13;
    v16 = [v15 remoteObjectProxyWithErrorHandler_];
    _Block_release(v14);
    sub_23A6DF994();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
    if (swift_dynamicCast())
    {
      v17 = v33;
      v18 = sub_23A6DCDF0();
      sub_23A646D48(v18, v12, &qword_27DF9D240, qword_23A6E1D30);
      v19 = sub_23A6DECC4();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v12, 1, v19) == 1)
      {
        sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v24 = v1;
        v25 = sub_23A6DECA4();
        v26 = sub_23A6DF8A4();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 67240192;
          *(v27 + 4) = a1 & 1;
          _os_log_impl(&dword_23A63D000, v25, v26, "closing session with delete=%{BOOL,public}d", v27, 8u);
          MEMORY[0x23EE8A960](v27, -1, -1);
        }

        (*(v20 + 8))(v12, v19);
        v1 = v24;
      }

      if (*(v1 + 192) == 5)
      {
        v28 = 0;
      }

      else
      {
        LOBYTE(aBlock[0]) = *(v1 + 192);
        LOBYTE(v33) = 0;
        sub_23A676584();
        v28 = sub_23A6DF604();
      }

      [v17 closeSessionWithDelete:a1 & 1 backgrounded:v28 & 1];

      return swift_unknownObjectRelease();
    }

    else
    {
      v21 = sub_23A6DCDF0();
      sub_23A646D48(v21, v8, &qword_27DF9D240, qword_23A6E1D30);
      v22 = sub_23A6DECC4();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v8, 1, v22) == 1)
      {

        return sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v29 = sub_23A6DECA4();
        v30 = sub_23A6DF884();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_23A63D000, v29, v30, "Error (closeSession): unexpected proxy type", v31, 2u);
          MEMORY[0x23EE8A960](v31, -1, -1);
        }

        return (*(v23 + 8))(v8, v22);
      }
    }
  }

  return result;
}

void sub_23A65AE64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_23A65AECC()
{
  *(v1 + 32) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A65AF68, v0, 0);
}

uint64_t sub_23A65AF68()
{
  v1 = v0[4];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v4 = v0[5];
    v5 = *(v1 + 120);

    v6 = sub_23A6DCDF0();
    sub_23A646D48(v6, v4, &qword_27DF9D240, qword_23A6E1D30);
    v7 = sub_23A6DECC4();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v12 = v0[5];
      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF874();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_23A63D000, v13, v14, "readerIdentifier retrieved from cache", v15, 2u);
        MEMORY[0x23EE8A960](v15, -1, -1);
      }

      v16 = v0[5];

      (*(v8 + 8))(v16, v7);
    }

    v17 = v0[5];

    v18 = v0[1];

    return v18(v3, v2);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_23A65B1B8;
    v10 = v0[4];

    return sub_23A66AF24(0xD000000000000010, 0x800000023A6E83E0);
  }
}

uint64_t sub_23A65B1B8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[5];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[7] = v8;
    *v8 = v4;
    v8[1] = sub_23A65B334;
    v9 = v2[4];

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A65B334(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v6 = *(v3 + 40);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 32);

    return MEMORY[0x2822009F8](sub_23A65B484, v9, 0);
  }
}

uint64_t sub_23A65B484()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = 0xD000000000000010;
  *(v4 + 32) = 0x800000023A6E83E0;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = sub_23A65B80C;
  *(v4 + 64) = 0;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_23A65B5F8;
  v7 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 2, v2, v3, 0xD000000000000028, 0x800000023A6E88D0, sub_23A6759E8, v4, v7);
}

uint64_t sub_23A65B5F8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_23A65B798;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 32);

    v5 = sub_23A65B720;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A65B720()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4(v2, v1);
}

uint64_t sub_23A65B798()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

void sub_23A65B80C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_23A677FF8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65C470;
  aBlock[3] = &block_descriptor_310;
  v12 = _Block_copy(aBlock);

  [a1 getTerminalIdWithCompletion_];
  _Block_release(v12);
}

uint64_t sub_23A65B9BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v25 - v17;
  v19 = sub_23A6DF7B4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v9 + 16))(v13, a4, v8);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a3;
  (*(v9 + 32))(&v21[v20], v13, v8);
  v22 = &v21[(v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v22 = a1;
  *(v22 + 1) = a2;

  v23 = a3;
  sub_23A64A15C(0, 0, v18, &unk_23A6E20F0, v21);
}

uint64_t sub_23A65BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for PaymentCardReaderError();
  v7[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A65BCC4, 0, 0);
}

uint64_t sub_23A65BCC4()
{
  v46 = v0;
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[11];
    v4 = v1;
    sub_23A6476F4(v4, v2);
    v5 = sub_23A6DCDF0();
    sub_23A646D48(v5, v3, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) == 1)
    {
      sub_23A646DB0(v0[11], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = v0[11];
      sub_23A648DF0(v0[14], v0[13]);
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[13];
      if (v14)
      {
        v44 = v4;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v45 = v17;
        *v16 = 136446210;
        v18 = PaymentCardReaderError.errorName.getter();
        v20 = v19;
        sub_23A648E54(v15);
        v21 = sub_23A657E78(v18, v20, &v45);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_23A63D000, v12, v13, "Error (readerIdentifier): %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x23EE8A960](v17, -1, -1);
        v22 = v16;
        v4 = v44;
        MEMORY[0x23EE8A960](v22, -1, -1);
      }

      else
      {

        sub_23A648E54(v15);
      }

      (*(v7 + 8))(v0[11], v6);
    }

    v23 = v0[14];
    v24 = v0[12];
    v25 = v0[6];
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    v26 = swift_allocError();
    sub_23A648DF0(v23, v27);
    v0[4] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
    sub_23A6DF764();

    sub_23A648E54(v23);
LABEL_15:
    v29 = v0[13];
    v28 = v0[14];
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[9];

    v33 = v0[1];

    return v33();
  }

  if (!v0[8])
  {
    v34 = v0[10];
    v35 = sub_23A6DCDF0();
    sub_23A646D48(v35, v34, &qword_27DF9D240, qword_23A6E1D30);
    v36 = sub_23A6DECC4();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v34, 1, v36) == 1)
    {
      sub_23A646DB0(v0[10], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v38 = v0[10];
      v39 = sub_23A6DECA4();
      v40 = sub_23A6DF884();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_23A63D000, v39, v40, "Error (readerIdentifier): nil", v41, 2u);
        MEMORY[0x23EE8A960](v41, -1, -1);
      }

      v42 = v0[10];

      (*(v37 + 8))(v42, v36);
    }

    goto LABEL_15;
  }

  v8 = qword_27DF9ED30;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27DFA5E88;
  v0[15] = qword_27DFA5E88;
  v10 = *v9 + 616;
  v0[16] = *v10;
  v0[17] = v10 & 0xFFFFFFFFFFFFLL | 0x2DFC000000000000;

  return MEMORY[0x2822009F8](sub_23A65C1A4, v9, 0);
}

uint64_t sub_23A65C1A4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  (*(v0 + 128))(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2822009F8](sub_23A65C214, 0, 0);
}

uint64_t sub_23A65C214()
{
  v22 = v0;
  v1 = v0[9];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23A646DB0(v0[9], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v5 = v0[8];

    v6 = sub_23A6DECA4();
    v7 = sub_23A6DF8A4();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[7];
      v8 = v0[8];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_23A657E78(v9, v8, &v21);
      _os_log_impl(&dword_23A63D000, v6, v7, "Result (readerIdentifier): %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x23EE8A960](v11, -1, -1);
      MEMORY[0x23EE8A960](v10, -1, -1);
    }

    (*(v4 + 8))(v0[9], v3);
  }

  v12 = v0[8];
  v13 = v0[6];
  v0[2] = v0[7];
  v0[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  sub_23A6DF774();
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_23A65C470(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23A6DF624();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_23A65C508(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_23A65C548(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_23A65C570, v1, 0);
}

uint64_t sub_23A65C570()
{
  v1 = v0[4];
  v2 = v0[3] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = v0[2];

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_23A65C704;
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];

    return sub_23A675A00(0, 0xD000000000000017, 0x800000023A6E8380, v7, v7, v5, v6);
  }

  else
  {
    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_23A65C704(char a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v9 = *v2;

  v6 = *(v9 + 8);
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1 & 1;
  }

  return v6(v7);
}

uint64_t sub_23A65C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23A65C850, a2, 0);
}

uint64_t sub_23A65C850()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23A65C914;
  v5 = v0[3];

  return sub_23A66AF24(0xD000000000000017, 0x800000023A6E8380);
}

uint64_t sub_23A65C914()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[6];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[8] = v8;
    *v8 = v4;
    v8[1] = sub_23A65CA90;
    v9 = v2[3];

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A65CA90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v3 + 48);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_23A65CBE0, v9, 0);
  }
}

uint64_t sub_23A65CBE0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD000000000000017;
  *(v5 + 32) = 0x800000023A6E8380;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A677CF4;
  *(v5 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_23A65CD58;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 13, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A6782B0, v5, v8);
}

uint64_t sub_23A65CD58()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23A65CF04;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 24);

    v5 = sub_23A65CE80;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A65CE80()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  v3 = *(v0 + 104);

  *v2 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A65CF04()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 96);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

void sub_23A65CF78(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  v10 = sub_23A6DF614();
  (*(v5 + 16))(v9, a2, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = sub_23A677CFC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65D62C;
  aBlock[3] = &block_descriptor_285;
  v13 = _Block_copy(aBlock);

  [a1 isAccountLinked:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_23A65D148(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for PaymentCardReaderError();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = (&v48 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v48 - v22;
  if (a2)
  {
    v24 = a2;
    sub_23A6476F4(v24, v14);
    v25 = sub_23A6DCDF0();
    sub_23A646D48(v25, v20, &qword_27DF9D240, qword_23A6E1D30);
    v26 = sub_23A6DECC4();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v20, 1, v26) == 1)
    {
      sub_23A646DB0(v20, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v52 = a3;
      sub_23A648DF0(v14, v11);
      v31 = sub_23A6DECA4();
      v32 = sub_23A6DF884();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v49 = v33;
        v50 = swift_slowAlloc();
        v53 = v50;
        *v33 = 136446210;
        v34 = PaymentCardReaderError.errorName.getter();
        v51 = v24;
        v36 = v35;
        sub_23A648E54(v11);
        v37 = sub_23A657E78(v34, v36, &v53);
        v24 = v51;

        v38 = v49;
        *(v49 + 1) = v37;
        v39 = v32;
        v40 = v38;
        _os_log_impl(&dword_23A63D000, v31, v39, "Error (isAccountLinked): %{public}s", v38, 0xCu);
        v41 = v50;
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x23EE8A960](v41, -1, -1);
        MEMORY[0x23EE8A960](v40, -1, -1);
      }

      else
      {

        sub_23A648E54(v11);
      }

      (*(v27 + 8))(v20, v26);
    }

    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    v46 = swift_allocError();
    sub_23A648DF0(v14, v47);
    v53 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
    sub_23A6DF764();

    return sub_23A648E54(v14);
  }

  else
  {
    v28 = sub_23A6DCDF0();
    sub_23A646D48(v28, v23, &qword_27DF9D240, qword_23A6E1D30);
    v29 = sub_23A6DECC4();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v23, 1, v29) == 1)
    {
      sub_23A646DB0(v23, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v42 = sub_23A6DECA4();
      v43 = sub_23A6DF8A4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67240192;
        *(v44 + 4) = a1 & 1;
        _os_log_impl(&dword_23A63D000, v42, v43, "Result (isAccountLinked): %{BOOL,public}d", v44, 8u);
        MEMORY[0x23EE8A960](v44, -1, -1);
      }

      (*(v30 + 8))(v23, v29);
    }

    LOBYTE(v53) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
    return sub_23A6DF774();
  }
}

void sub_23A65D62C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_23A65D6A4(uint64_t *a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 72) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  *(v3 + 24) = v6;
  *(v3 + 32) = v7;
  *(v3 + 40) = v8;

  return MEMORY[0x2822009F8](sub_23A65D750, v2, 0);
}

uint64_t sub_23A65D750()
{
  v36 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_25:
    v30 = *(v0 + 24);

    v31 = *(v0 + 8);

    return v31();
  }

  v3 = *(v0 + 16);
  v4 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  *(v0 + 48) = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v5 = *(v3 + v4);

  if (v5 == 1)
  {
    v6 = *(v0 + 24);
    v7 = sub_23A6DCDF0();
    sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_23A646DB0(*(v0 + 24), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v16 = *(v0 + 24);
      v17 = sub_23A6DECA4();
      v18 = sub_23A6DF884();
      if (os_log_type_enabled(v17, v18))
      {
        v34 = v18;
        v19 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v35 = v32;
        buf = v19;
        *v19 = 136315138;
        if (("unction:isRead:request:)" & 0x2000000000000000) != 0)
        {
          v20 = ("unction:isRead:request:)" >> 40) & 0xF0000;
        }

        else
        {
          v20 = 1703936;
        }

        if (v20)
        {
          while (sub_23A6DF6F4() != 40 || v21 != 0xE100000000000000)
          {
            v22 = sub_23A6DFC04();

            if ((v22 & 1) != 0 || !((sub_23A6DF6A4() ^ v20) >> 14))
            {
              goto LABEL_22;
            }
          }
        }

LABEL_22:
        v23 = sub_23A6DF704();
        v24 = MEMORY[0x23EE89B50](v23);
        v26 = v25;

        v27 = sub_23A657E78(v24, v26, &v35);

        *(buf + 4) = v27;
        _os_log_impl(&dword_23A63D000, v17, v34, "Error (%s: a previous request is running, returning busy", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x23EE8A960](v32, -1, -1);
        MEMORY[0x23EE8A960](buf, -1, -1);
      }

      (*(v9 + 8))(*(v0 + 24), v8);
    }

    v28 = *(v0 + 40);
    v29 = *(v0 + 16);
    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_25;
  }

  *(v3 + v4) = 1;
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_23A65DC10;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  v14 = *(v0 + 72);

  return sub_23A65DE34(v10, v13, v11, v12, v14);
}

uint64_t sub_23A65DC10()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_23A65DDB8;
  }

  else
  {
    v6 = sub_23A65DD3C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A65DD3C()
{
  v1 = v0[5];
  v2 = v0[3];
  *(v0[2] + v0[6]) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A65DDB8()
{
  v1 = v0[5];
  *(v0[2] + v0[6]) = 0;

  v2 = v0[8];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A65DE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 104) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23A65DE58, a2, 0);
}

uint64_t sub_23A65DE58()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_23A65DF24;
  v6 = *(v0 + 24);

  return sub_23A66AF24(0xD00000000000001ALL, 0x800000023A6E8900);
}

uint64_t sub_23A65DF24()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[6];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[8] = v8;
    *v8 = v4;
    v8[1] = sub_23A65E0A0;
    v9 = v2[3];

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A65E0A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v3 + 48);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_23A65E1F0, v9, 0);
  }
}

uint64_t sub_23A65E1F0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD00000000000001ALL;
  *(v5 + 32) = 0x800000023A6E8900;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A677CC0;
  *(v5 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_23A65E36C;
  v8 = v0[2];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A6782AC, v5, v9);
}

uint64_t sub_23A65E36C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23A65CF04;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 24);

    v5 = sub_23A65E494;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A65E494()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_23A65E504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = aBlock - v12;
  v14 = sub_23A6DF614();
  (*(v9 + 16))(v13, a2, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  aBlock[4] = sub_23A677CCC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65D62C;
  aBlock[3] = &block_descriptor_272;
  v17 = _Block_copy(aBlock);

  [a1 linkAccount:v14 relink:a5 & 1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_23A65E6E4(char a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v56 - v17;
  v19 = type metadata accessor for PaymentCardReaderError();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v56 - v26);
  if (a2)
  {
    v28 = a2;
    sub_23A6476F4(v28, v27);
    v29 = sub_23A6DCDF0();
    sub_23A646D48(v29, v18, &qword_27DF9D240, qword_23A6E1D30);
    v30 = sub_23A6DECC4();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v18, 1, v30) == 1)
    {
      sub_23A646DB0(v18, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v60 = v28;
      sub_23A648DF0(v27, v24);
      v35 = sub_23A6DECA4();
      v36 = sub_23A6DF884();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v59 = a3;
        v38 = v37;
        v57 = swift_slowAlloc();
        v61 = v57;
        *v38 = 136446210;
        v39 = PaymentCardReaderError.errorName.getter();
        v58 = v19;
        v41 = v40;
        sub_23A648E54(v24);
        v42 = sub_23A657E78(v39, v41, &v61);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_23A63D000, v35, v36, "Error (linkAccount): %{public}s", v38, 0xCu);
        v43 = v57;
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x23EE8A960](v43, -1, -1);
        MEMORY[0x23EE8A960](v38, -1, -1);
      }

      else
      {

        sub_23A648E54(v24);
      }

      (*(v31 + 8))(v18, v30);
      v28 = v60;
    }

    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    v46 = swift_allocError();
    sub_23A648DF0(v27, v47);
    v61 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    sub_23A6DF764();

    return sub_23A648E54(v27);
  }

  else
  {
    v32 = sub_23A6DCDF0();
    if (a1)
    {
      sub_23A646D48(v32, v15, &qword_27DF9D240, qword_23A6E1D30);
      v33 = sub_23A6DECC4();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v15, 1, v33) == 1)
      {
        sub_23A646DB0(v15, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v49 = sub_23A6DECA4();
        v50 = sub_23A6DF8A4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_23A63D000, v49, v50, "Result (linkAccount): success", v51, 2u);
          MEMORY[0x23EE8A960](v51, -1, -1);
        }

        (*(v34 + 8))(v15, v33);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
      return sub_23A6DF774();
    }

    else
    {
      sub_23A646D48(v32, v11, &qword_27DF9D240, qword_23A6E1D30);
      v44 = sub_23A6DECC4();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v11, 1, v44) == 1)
      {
        sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v52 = sub_23A6DECA4();
        v53 = sub_23A6DF8A4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_23A63D000, v52, v53, "Result (linkAccount): result is false, linkAccount cancelled", v54, 2u);
          MEMORY[0x23EE8A960](v54, -1, -1);
        }

        (*(v45 + 8))(v11, v44);
      }

      sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
      v55 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      v61 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
      return sub_23A6DF764();
    }
  }
}

uint64_t sub_23A65ED68(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 72) = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v9 = sub_23A6DE2F4();
  *(v5 + 104) = v9;
  v10 = *(v9 - 8);
  *(v5 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a1;
  v14 = a1[1];
  *(v5 + 120) = v12;
  *(v5 + 128) = v13;
  v15 = *a2;
  *(v5 + 136) = v14;
  *(v5 + 144) = v15;
  *(v5 + 66) = *(a2 + 8);
  *(v5 + 67) = *(a2 + 9);

  return MEMORY[0x2822009F8](sub_23A65EE90, v4, 0);
}

uint64_t sub_23A65EE90()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  sub_23A6DE2E4();
  v5 = sub_23A6DE2B4();
  v7 = v6;
  *(v0 + 152) = v5;
  *(v0 + 160) = v6;
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v13 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
    swift_beginAccess();
    sub_23A63F91C(v11);

    v14 = *(v9 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v9 + v13);
    *(v9 + v13) = 0x8000000000000000;
    sub_23A674F00(sub_23A67604C, v12, v5, v7, isUniquelyReferenced_nonNull_native, &qword_27DF9C9B0, &qword_23A6E20B8);

    *(v9 + v13) = v35;
    swift_endAccess();
    v16 = sub_23A6DCDF0();
    sub_23A646D48(v16, v8, &qword_27DF9D240, qword_23A6E1D30);
    v17 = sub_23A6DECC4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_23A646DB0(*(v0 + 96), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v19 = *(v0 + 88);

      v20 = sub_23A6DECA4();
      v21 = sub_23A6DF8A4();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 88);
      if (v22)
      {
        v24 = swift_slowAlloc();
        *v24 = 134349056;
        *(v24 + 4) = *(*(v9 + v13) + 16);

        _os_log_impl(&dword_23A63D000, v20, v21, "added updateHandlers=%{public}ld", v24, 0xCu);
        MEMORY[0x23EE8A960](v24, -1, -1);
      }

      else
      {
        v25 = *(v0 + 88);
      }

      (*(v18 + 8))(*(v0 + 96), v17);
    }
  }

  v26 = *(v0 + 67);
  v27 = *(v0 + 66);
  v28 = *(v0 + 88);
  *(v0 + 40) = *(v0 + 128);
  *(v0 + 48) = *(v0 + 136);
  *(v0 + 64) = v27;
  *(v0 + 65) = v26;
  v33 = (*v28 + 648);
  v34 = (*v33 + **v33);
  v29 = (*v33)[1];
  v30 = swift_task_alloc();
  *(v0 + 168) = v30;
  *v30 = v0;
  v30[1] = sub_23A65F254;
  v31 = *(v0 + 88);

  return v34(v0 + 40, v0 + 56);
}

uint64_t sub_23A65F254(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  v7 = *(v4 + 88);
  if (v1)
  {
    v8 = sub_23A65F414;
  }

  else
  {
    *(v4 + 184) = a1;
    v8 = sub_23A65F380;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_23A65F380()
{
  v1 = v0[15];
  v2 = v0[12];
  sub_23A65F4A4(v0[11], v0[19], v0[20]);

  v3 = v0[1];
  v4 = v0[23];

  return v3(v4);
}

uint64_t sub_23A65F414()
{
  v1 = v0[15];
  v2 = v0[12];
  sub_23A65F4A4(v0[11], v0[19], v0[20]);

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_23A65F4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
  swift_beginAccess();
  v12 = sub_23A6742C8(a2, a3);
  swift_endAccess();
  sub_23A677CB0(v12);
  v13 = sub_23A6DCDF0();
  sub_23A646D48(v13, v10, &qword_27DF9D240, qword_23A6E1D30);
  v14 = sub_23A6DECC4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    return sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
  }

  v17 = sub_23A6DECA4();
  v18 = sub_23A6DF8A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    *(v19 + 4) = *(*(a1 + v11) + 16);

    _os_log_impl(&dword_23A63D000, v17, v18, "removed updateHandlers=%{public}ld", v19, 0xCu);
    MEMORY[0x23EE8A960](v19, -1, -1);
  }

  else
  {
  }

  return (*(v15 + 8))(v10, v14);
}

uint64_t sub_23A65F6D0(uint64_t *a1, uint64_t *a2)
{
  *(v3 + 16) = v2;
  v6 = sub_23A6DE574();
  *(v3 + 24) = v6;
  v7 = *(v6 - 8);
  *(v3 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v9 = sub_23A6DE7F4();
  *(v3 + 48) = v9;
  v10 = *(v9 - 8);
  *(v3 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a1;
  v14 = a1[1];
  *(v3 + 64) = v12;
  *(v3 + 72) = v13;
  v15 = *a2;
  *(v3 + 80) = v14;
  *(v3 + 88) = v15;
  *(v3 + 128) = *(a2 + 8);
  *(v3 + 129) = *(a2 + 9);

  return MEMORY[0x2822009F8](sub_23A65F818, v2, 0);
}

uint64_t sub_23A65F818()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + 129);
    v5 = *(v0 + 128);
    v6 = *(v0 + 88);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 16);
    *v8 = v1;
    v8[1] = v2;
    (*(v7 + 104))(v8, *MEMORY[0x277D43908], v9);

    sub_23A6DE474();
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v6;
    *(v12 + 48) = v5;
    *(v12 + 49) = v4;
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_23A65FA48;
    v14 = *(v0 + 16);

    return sub_23A66B94C(0, 0xD000000000000026, 0x800000023A6E8920, &unk_23A6E1DB0, v12);
  }

  else
  {
    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = *(v0 + 64);
    v17 = *(v0 + 40);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_23A65FA48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_23A65FC38;
  }

  else
  {
    v9 = v4[12];
    v10 = v4[2];
    v4[15] = a1;

    v8 = sub_23A65FB88;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_23A65FB88()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[15];

  return v4(v5);
}

uint64_t sub_23A65FC38()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = v0[14];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_23A65FCFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23A65FD20, v2, 0);
}

uint64_t sub_23A65FD20()
{
  v1 = v0[4];
  sub_23A66B410(v0[2], v0[3], 0x65526C65636E6163, 0xEE00293A5F286461);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_23A65FE2C;
  v3 = v0[4];

  return sub_23A670C54(1);
}

uint64_t sub_23A65FE2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v3 + 32);

    return MEMORY[0x2822009F8](sub_23A65FF78, v8, 0);
  }
}

uint64_t sub_23A65FF78()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  strcpy((v4 + 24), "cancelRead(_:)");
  *(v4 + 39) = -18;
  *(v4 + 40) = v2;
  *(v4 + 48) = 1;
  *(v4 + 56) = sub_23A6602F4;
  *(v4 + 64) = 0;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_23A6600F4;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 10, v2, v3, 0xD000000000000028, 0x800000023A6E88D0, sub_23A676154, v4, v7);
}

uint64_t sub_23A6600F4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_23A660284;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 32);

    v5 = sub_23A66021C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A66021C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23A660284()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(0);
}

void sub_23A6602F4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_23A677A38;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A660688;
  aBlock[3] = &block_descriptor_243;
  v12 = _Block_copy(aBlock);

  [a1 cancelTransactionWithCompletion_];
  _Block_release(v12);
}

uint64_t sub_23A6604A4(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v14[-v5];
  v7 = sub_23A6DCDF0();
  sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v10 = sub_23A6DECA4();
    v11 = sub_23A6DF8A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = a1 & 1;
      _os_log_impl(&dword_23A63D000, v10, v11, "Result (cancelRead): %{BOOL,public}d", v12, 8u);
      MEMORY[0x23EE8A960](v12, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  v14[15] = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
  return sub_23A6DF774();
}

uint64_t sub_23A660688(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_23A6606DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v8 = sub_23A6DE2F4();
  v6[12] = v8;
  v9 = *(v8 - 8);
  v6[13] = v9;
  v10 = *(v9 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6607DC, v5, 0);
}

uint64_t sub_23A6607DC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  sub_23A6DE2E4();
  v5 = sub_23A6DE2B4();
  v7 = v6;
  v0[15] = v5;
  v0[16] = v6;
  (*(v2 + 8))(v1, v3);
  v9 = v0[8];
  v8 = v0[9];
  if (v4)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v9;
    *(v4 + 24) = v8;
    v10 = sub_23A67604C;
  }

  else
  {
    v10 = 0;
  }

  v12 = v0[10];
  v11 = v0[11];
  v13 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
  swift_beginAccess();
  sub_23A63F91C(v9);

  sub_23A659228(v10, v4, v5, v7);
  swift_endAccess();
  v14 = sub_23A6DCDF0();
  sub_23A646D48(v14, v11, &qword_27DF9D240, qword_23A6E1D30);
  v15 = sub_23A6DECC4();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    sub_23A646DB0(v0[11], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v17 = v0[10];

    v18 = sub_23A6DECA4();
    v19 = sub_23A6DF8A4();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[10];
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = *(*(v12 + v13) + 16);

      _os_log_impl(&dword_23A63D000, v18, v19, "added eventHandlers=%{public}ld", v22, 0xCu);
      MEMORY[0x23EE8A960](v22, -1, -1);
    }

    else
    {
      v23 = v0[10];
    }

    (*(v16 + 8))(v0[11], v15);
  }

  v24 = *(*v0[10] + 672);
  v32 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[17] = v26;
  *v26 = v0;
  v26[1] = sub_23A660B48;
  v27 = v0[10];
  v28 = v0[6];
  v29 = v0[7];
  v30 = v0[5];

  return v32(v30, v28, v29);
}

uint64_t sub_23A660B48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = v1;

  v7 = v4[10];
  if (v1)
  {
    v8 = sub_23A660D18;
  }

  else
  {
    v4[19] = a1;
    v8 = sub_23A660C84;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_23A660C84()
{
  v1 = v0[14];
  v2 = v0[11];
  sub_23A660DA8(v0[10], v0[15], v0[16]);

  v3 = v0[1];
  v4 = v0[19];

  return v3(v4);
}

uint64_t sub_23A660D18()
{
  v1 = v0[14];
  v2 = v0[11];
  sub_23A660DA8(v0[10], v0[15], v0[16]);

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_23A660DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
  swift_beginAccess();

  sub_23A659228(0, 0, a2, a3);
  swift_endAccess();
  v12 = sub_23A6DCDF0();
  sub_23A646D48(v12, v10, &qword_27DF9D240, qword_23A6E1D30);
  v13 = sub_23A6DECC4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    return sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
  }

  v16 = sub_23A6DECA4();
  v17 = sub_23A6DF8A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = *(*(a1 + v11) + 16);

    _os_log_impl(&dword_23A63D000, v16, v17, "removed eventHandlers=%{public}ld", v18, 0xCu);
    MEMORY[0x23EE8A960](v18, -1, -1);
  }

  else
  {
  }

  return (*(v14 + 8))(v10, v13);
}

uint64_t sub_23A660FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A661070, v3, 0);
}

uint64_t sub_23A661070()
{
  v36 = v0;
  v1 = v0[6];
  sub_23A66B410(v0[3], v0[4], 0x5F3A5F2864616572, 0xEA0000000000293ALL);
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_23A676188(v3);
  v6 = v5;
  v7 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v0[8] = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v8 = *(v2 + v7);

  v9 = v3;
  if (v8 == 1)
  {
    v10 = v0[7];
    v11 = sub_23A6DCDF0();
    sub_23A646D48(v11, v10, &qword_27DF9D240, qword_23A6E1D30);
    v12 = sub_23A6DECC4();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_23A646DB0(v0[7], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v18 = v0[7];
      v19 = sub_23A6DECA4();
      v20 = sub_23A6DF884();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v21 = 136315138;
        while (sub_23A6DF6F4() != 40 || v22 != 0xE100000000000000)
        {
          v23 = sub_23A6DFC04();

          if ((v23 & 1) != 0 || (sub_23A6DF6A4() & 0xFFFFFFFFFFFFC000) == 0xA0000)
          {
            goto LABEL_15;
          }
        }

LABEL_15:
        v24 = sub_23A6DF704();
        v25 = MEMORY[0x23EE89B50](v24);
        v27 = v26;

        v28 = sub_23A657E78(v25, v27, &v35);

        *(v21 + 4) = v28;
        _os_log_impl(&dword_23A63D000, v19, v20, "Error (%s: a previous request is running, returning busy", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x23EE8A960](v34, -1, -1);
        MEMORY[0x23EE8A960](v21, -1, -1);
      }

      (*(v13 + 8))(v0[7], v12);
    }

    v30 = v0[5];
    v29 = v0[6];
    sub_23A6763DC();
    swift_allocError();
    *v31 = xmmword_23A6E1CA0;
    *(v31 + 16) = 3;
    swift_willThrow();

    v32 = v0[7];

    v33 = v0[1];

    return v33();
  }

  else
  {
    *(v2 + v7) = 1;
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_23A661478;
    v16 = v0[5];
    v15 = v0[6];

    return sub_23A66169C((v0 + 2), v4, v6, 2, v15, v16);
  }
}

uint64_t sub_23A661478()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_23A661624;
  }

  else
  {
    v6 = sub_23A6615A4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A6615A4()
{
  v1 = v0[7];
  v2 = v0[5];
  *(v0[6] + v0[8]) = 0;

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_23A661624()
{
  v1 = v0[5];
  *(v0[6] + v0[8]) = 0;

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A66169C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 136) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  v8 = sub_23A6DE574();
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  *(v6 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A66176C, a5, 0);
}

uint64_t sub_23A66176C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v11 = *(v0 + 48);
  v6 = *(v0 + 136);
  sub_23A6DE444();
  sub_23A6DE554();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_23A661884;
  v9 = *(v0 + 48);

  return sub_23A670C54(1);
}

uint64_t sub_23A661884(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v7 = v3[10];
    v6 = v3[11];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = v3[6];

    return MEMORY[0x2822009F8](sub_23A6619DC, v10, 0);
  }
}

uint64_t sub_23A6619DC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0x5F3A5F2864616572;
  *(v5 + 32) = 0xEA0000000000293ALL;
  *(v5 + 40) = v3;
  *(v5 + 48) = 1;
  *(v5 + 56) = sub_23A677954;
  *(v5 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = sub_23A6DE624();
  *v7 = v0;
  v7[1] = sub_23A661B58;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A677964, v5, v8);
}

uint64_t sub_23A661B58()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_23A661D0C;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 48);

    v5 = sub_23A661C80;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A661C80()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 24);

  v4 = *(v0 + 16);

  *v3 = v4;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23A661D0C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5();
}

void sub_23A661D88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v29 = a7;
  v27 = a5;
  v28 = a6;
  v30 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v27 - v19;
  sub_23A6DE864();
  v21 = sub_23A6DE2F4();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v22 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID;
  swift_beginAccess();
  sub_23A677544(v20, a3 + v22);
  swift_endAccess();
  if (*(a3 + 208))
  {
    type metadata accessor for StoreAndForwardPaymentCardReaderSession();
    if (swift_dynamicCastClass())
    {
    }
  }

  sub_23A6DE844();
  (*(v11 + 16))(v15, a2, v10);
  v23 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v28;
  *(v24 + 16) = v27;
  *(v24 + 24) = v25;
  *(v24 + 32) = v29;
  (*(v11 + 32))(v24 + v23, v15, v10);
  aBlock[4] = sub_23A677990;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A662708;
  aBlock[3] = &block_descriptor_231;
  v26 = _Block_copy(aBlock);

  [v30 startTransaction:a4 completion:v26];
  _Block_release(v26);
}

uint64_t sub_23A662074(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v58[-v16];
  MEMORY[0x28223BE20](v15, v18);
  v61 = &v58[-v19];
  v20 = sub_23A6DE574();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23A6DE444();
  sub_23A6DE534();
  (*(v21 + 8))(v25, v20);
  if (a2)
  {
    v63 = a2;
    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    if (swift_dynamicCast())
    {
      sub_23A6DA0F4(v66, &v63);
      v27 = v63;
      v28 = v64;
      v29 = v65;
      v30 = sub_23A6DCDF0();
      v31 = v61;
      sub_23A646D48(v30, v61, &qword_27DF9D240, qword_23A6E1D30);
      v32 = sub_23A6DECC4();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v31, 1, v32) == 1)
      {
        sub_23A646DB0(v31, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        sub_23A6775B4(v27, v28, v29);
        v45 = sub_23A6DECA4();
        v46 = sub_23A6DF884();
        sub_23A6775CC(v27, v28, v29);
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v66 = v60;
          *v47 = 136446210;
          v63 = v27;
          v64 = v28;
          v65 = v29;
          v59 = v46;
          v48 = PaymentCardReaderSession.ReadError.errorName.getter();
          v50 = sub_23A657E78(v48, v49, &v66);

          *(v47 + 4) = v50;
          _os_log_impl(&dword_23A63D000, v45, v59, "Error (read): %{public}s", v47, 0xCu);
          v51 = v60;
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          MEMORY[0x23EE8A960](v51, -1, -1);
          MEMORY[0x23EE8A960](v47, -1, -1);
        }

        (*(v33 + 8))(v31, v32);
      }

      sub_23A6763DC();
      v52 = swift_allocError();
      *v53 = v27;
      *(v53 + 8) = v28;
      *(v53 + 16) = v29;
LABEL_22:
      v63 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
      return sub_23A6DF764();
    }
  }

  if (!a1)
  {
    v38 = sub_23A6DCDF0();
    sub_23A646D48(v38, v17, &qword_27DF9D240, qword_23A6E1D30);
    v39 = sub_23A6DECC4();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v17, 1, v39) == 1)
    {
      sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v54 = sub_23A6DECA4();
      v55 = sub_23A6DF884();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_23A63D000, v54, v55, "Error (read): nil result", v56, 2u);
        MEMORY[0x23EE8A960](v56, -1, -1);
      }

      (*(v40 + 8))(v17, v39);
    }

    sub_23A6763DC();
    v52 = swift_allocError();
    *v57 = xmmword_23A6E1CB0;
    *(v57 + 16) = 3;
    goto LABEL_22;
  }

  v34 = a1;
  v35 = sub_23A6DCDF0();
  sub_23A646D48(v35, v13, &qword_27DF9D240, qword_23A6E1D30);
  v36 = sub_23A6DECC4();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v13, 1, v36) == 1)
  {
    sub_23A646DB0(v13, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v41 = sub_23A6DECA4();
    v42 = sub_23A6DF8A4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_23A63D000, v41, v42, "Result (read): success", v43, 2u);
      MEMORY[0x23EE8A960](v43, -1, -1);
    }

    (*(v37 + 8))(v13, v36);
  }

  v63 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
  return sub_23A6DF774();
}

uint64_t sub_23A662710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v10 = sub_23A6DE2F4();
  v7[9] = v10;
  v11 = *(v10 - 8);
  v7[10] = v11;
  v12 = *(v11 + 64) + 15;
  v7[11] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *a4;
  v16 = a4[1];
  v7[15] = v14;
  v7[16] = v15;
  v7[17] = v16;

  return MEMORY[0x2822009F8](sub_23A662880, v6, 0);
}

uint64_t sub_23A662880()
{
  v76 = v0;
  if (*(v0[7] + 208))
  {
    type metadata accessor for StoreAndForwardPaymentCardReaderSession();
    if (swift_dynamicCastClass())
    {
      v1 = v0[15];
      v2 = sub_23A6DCDF0();
      sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
      v3 = sub_23A6DECC4();
      v4 = *(v3 - 8);
      if ((*(v4 + 48))(v1, 1, v3) == 1)
      {
        sub_23A646DB0(v0[15], &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v20 = v0[15];
        v21 = sub_23A6DECA4();
        v22 = sub_23A6DF884();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_23A63D000, v21, v22, "PIN capture is not supported during a SAF session", v23, 2u);
          MEMORY[0x23EE8A960](v23, -1, -1);
        }

        v24 = v0[15];

        (*(v4 + 8))(v24, v3);
      }

      sub_23A6763DC();
      swift_allocError();
      v26 = xmmword_23A6E1CC0;
LABEL_27:
      *v25 = v26;
      *(v25 + 16) = 3;
      swift_willThrow();
LABEL_28:
      v41 = v0[14];
      v40 = v0[15];
      v43 = v0[12];
      v42 = v0[13];
      v44 = v0[11];
      v45 = v0[8];

      v46 = v0[1];

      return v46();
    }
  }

  v5 = v0[17];
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v6 = v0[16] & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v16 = v0[12];
    v17 = sub_23A6DCDF0();
    sub_23A646D48(v17, v16, &qword_27DF9D240, qword_23A6E1D30);
    v18 = sub_23A6DECC4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 1, v18) == 1)
    {
      sub_23A646DB0(v0[12], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v30 = v0[12];
      v31 = sub_23A6DECA4();
      v32 = sub_23A6DF884();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_23A63D000, v31, v32, "PIN token is empty", v33, 2u);
        MEMORY[0x23EE8A960](v33, -1, -1);
      }

      v34 = v0[12];

      (*(v19 + 8))(v34, v18);
    }

    sub_23A6763DC();
    swift_allocError();
    v26 = xmmword_23A6E1CE0;
    goto LABEL_27;
  }

  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  sub_23A6DE2A4();
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v12 = v0[13];
    sub_23A646DB0(v0[8], &qword_27DF9C900, &qword_23A6E1D20);
    v13 = sub_23A6DCDF0();
    sub_23A646D48(v13, v12, &qword_27DF9D240, qword_23A6E1D30);
    v14 = sub_23A6DECC4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_23A646DB0(v0[13], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v35 = v0[13];
      v36 = sub_23A6DECA4();
      v37 = sub_23A6DF884();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_23A63D000, v36, v37, "Transaction ID is invalid", v38, 2u);
        MEMORY[0x23EE8A960](v38, -1, -1);
      }

      v39 = v0[13];

      (*(v15 + 8))(v39, v14);
    }

    sub_23A6763DC();
    swift_allocError();
    v26 = xmmword_23A6E1CD0;
    goto LABEL_27;
  }

  v27 = v0[7];
  v29 = v0[3];
  v28 = v0[4];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  sub_23A66B410(v29, v28, 0xD00000000000002CLL, 0x800000023A6E8950);
  v48 = v0[7];
  v49 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v0[18] = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  if (*(v48 + v49) == 1)
  {
    v50 = v0[14];
    v51 = sub_23A6DCDF0();
    sub_23A646D48(v51, v50, &qword_27DF9D240, qword_23A6E1D30);
    v52 = sub_23A6DECC4();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v50, 1, v52) == 1)
    {
      sub_23A646DB0(v0[14], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v60 = v0[14];
      v61 = sub_23A6DECA4();
      v62 = sub_23A6DF884();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        buf = v63;
        v75 = v73;
        *v63 = 136315138;
        if (("ype:options:signPost:)" & 0x2000000000000000) != 0)
        {
          v64 = ("ype:options:signPost:)" >> 40) & 0xF0000;
        }

        else
        {
          v64 = 2883584;
        }

        if (v64)
        {
          while (sub_23A6DF6F4() != 40 || v65 != 0xE100000000000000)
          {
            v66 = sub_23A6DFC04();

            if ((v66 & 1) != 0 || !((sub_23A6DF6A4() ^ v64) >> 14))
            {
              goto LABEL_48;
            }
          }
        }

LABEL_48:
        v67 = sub_23A6DF704();
        v68 = MEMORY[0x23EE89B50](v67);
        v70 = v69;

        v71 = sub_23A657E78(v68, v70, &v75);

        *(buf + 4) = v71;
        _os_log_impl(&dword_23A63D000, v61, v62, "Error (%s: a previous request is running, returning busy", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        MEMORY[0x23EE8A960](v73, -1, -1);
        MEMORY[0x23EE8A960](buf, -1, -1);
      }

      (*(v53 + 8))(v0[14], v52);
    }

    sub_23A6763DC();
    swift_allocError();
    *v72 = xmmword_23A6E1CA0;
    *(v72 + 16) = 3;
    swift_willThrow();
    (*(v0[10] + 8))(v0[11], v0[9]);
    goto LABEL_28;
  }

  *(v48 + v49) = 1;
  v54 = swift_task_alloc();
  v0[19] = v54;
  *v54 = v0;
  v54[1] = sub_23A663184;
  v55 = v0[16];
  v56 = v0[17];
  v57 = v0[11];
  v58 = v0[7];
  v59 = v0[2];

  return sub_23A663448(v59, v58, v55, v56, v57);
}

uint64_t sub_23A663184()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_23A66337C;
  }

  else
  {
    v6 = sub_23A6632B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A6632B0()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  *(v0[7] + v0[18]) = 0;
  (*(v5 + 8))(v6, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23A66337C()
{
  *(v0[7] + v0[18]) = 0;
  v1 = v0[20];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23A663448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23A6DE574();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A663514, a2, 0);
}

uint64_t sub_23A663514()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v9 = *(v0 + 40);
  sub_23A6DE514();
  sub_23A6DE544();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v9;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_23A663608;
  v7 = *(v0 + 24);

  return sub_23A670C54(1);
}

uint64_t sub_23A663608(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v7 = v3[9];
    v6 = v3[10];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = v3[3];

    return MEMORY[0x2822009F8](sub_23A663760, v10, 0);
  }
}

uint64_t sub_23A663760()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD00000000000002CLL;
  *(v5 + 32) = 0x800000023A6E8950;
  *(v5 + 40) = v3;
  *(v5 + 48) = 1;
  *(v5 + 56) = sub_23A67785C;
  *(v5 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_23A6638E4;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A677868, v5, &type metadata for PaymentCardReadResult);
}

uint64_t sub_23A6638E4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23A663A84;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 24);

    v5 = sub_23A663A0C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A663A0C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A663A84()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5 = *(v0 + 8);

  return v5();
}

void sub_23A663B00(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C980, &qword_23A6E2088);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  v10 = sub_23A6DF614();
  v11 = sub_23A6DE2D4();
  (*(v5 + 16))(v9, a2, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  aBlock[4] = sub_23A677894;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A662708;
  aBlock[3] = &block_descriptor_216;
  v14 = _Block_copy(aBlock);

  [a1 startIssuerPINEntry:v10 transactionId:v11 completion:v14];
  _Block_release(v14);
}

void sub_23A663CEC(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v58[-v14];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v58[-v17];
  v19 = sub_23A6DE574();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v58[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23A6DE514();
  sub_23A6DE524();
  (*(v20 + 8))(v24, v19);
  if (a2)
  {
    v62 = a2;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    if (swift_dynamicCast())
    {
      sub_23A6DA0F4(v67, &v62);
      v26 = v62;
      v27 = v63;
      v28 = v64;
      v29 = sub_23A6DCDF0();
      sub_23A646D48(v29, v18, &qword_27DF9D240, qword_23A6E1D30);
      v30 = sub_23A6DECC4();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v18, 1, v30) == 1)
      {
        sub_23A646DB0(v18, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        sub_23A6775B4(v26, v27, v28);
        v46 = sub_23A6DECA4();
        v47 = sub_23A6DF884();
        sub_23A6775CC(v26, v27, v28);
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v61 = a3;
          v49 = v48;
          v60 = swift_slowAlloc();
          *&v67 = v60;
          *v49 = 136446210;
          v62 = v26;
          v63 = v27;
          LOBYTE(v64) = v28;
          v59 = v47;
          v50 = PaymentCardReaderSession.ReadError.errorName.getter();
          v52 = sub_23A657E78(v50, v51, &v67);

          *(v49 + 4) = v52;
          _os_log_impl(&dword_23A63D000, v46, v59, "Error (capturePIN): %{public}s", v49, 0xCu);
          v53 = v60;
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          MEMORY[0x23EE8A960](v53, -1, -1);
          MEMORY[0x23EE8A960](v49, -1, -1);
        }

        (*(v31 + 8))(v18, v30);
      }

      sub_23A6763DC();
      v44 = swift_allocError();
      *v54 = v26;
      *(v54 + 8) = v27;
      *(v54 + 16) = v28;
LABEL_20:
      v62 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C980, &qword_23A6E2088);
      sub_23A6DF764();
      return;
    }
  }

  if (!a1)
  {
LABEL_10:
    v38 = sub_23A6DCDF0();
    sub_23A646D48(v38, v11, &qword_27DF9D240, qword_23A6E1D30);
    v39 = sub_23A6DECC4();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v11, 1, v39) == 1)
    {
      sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v41 = sub_23A6DECA4();
      v42 = sub_23A6DF884();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_23A63D000, v41, v42, "Error (capturePIN): nil result", v43, 2u);
        MEMORY[0x23EE8A960](v43, -1, -1);
      }

      (*(v40 + 8))(v11, v39);
    }

    sub_23A6763DC();
    v44 = swift_allocError();
    *v45 = xmmword_23A6E1CB0;
    *(v45 + 16) = 3;
    goto LABEL_20;
  }

  v32 = a1;
  sub_23A6DA494(&v62);
  v33 = v62;
  v34 = v63;
  v67 = v64;
  v68 = v65;
  v69[0] = *v66;
  *(v69 + 13) = *&v66[13];
  if (!v63)
  {

    goto LABEL_10;
  }

  v35 = sub_23A6DCDF0();
  sub_23A646D48(v35, v15, &qword_27DF9D240, qword_23A6E1D30);
  v36 = sub_23A6DECC4();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v15, 1, v36) == 1)
  {
    sub_23A646DB0(v15, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v55 = sub_23A6DECA4();
    v56 = sub_23A6DF8A4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_23A63D000, v55, v56, "Result (capturePIN): success", v57, 2u);
      MEMORY[0x23EE8A960](v57, -1, -1);
    }

    (*(v37 + 8))(v15, v36);
  }

  v62 = v33;
  v63 = v34;
  v64 = v67;
  v65 = v68;
  *v66 = v69[0];
  *&v66[13] = *(v69 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C980, &qword_23A6E2088);
  sub_23A6DF774();
}

uint64_t sub_23A6643B4(_OWORD *a1)
{
  *(v2 + 24) = v1;
  *(v2 + 32) = *a1;
  return MEMORY[0x2822009F8](sub_23A6643DC, v1, 0);
}

uint64_t sub_23A6643DC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23A6644A0;
  v5 = v0[3];

  return sub_23A66AF24(0x6628737574617473, 0xEC000000293A726FLL);
}

uint64_t sub_23A6644A0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[6];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[8] = v8;
    *v8 = v4;
    v8[1] = sub_23A66461C;
    v9 = v2[3];

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A66461C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v3 + 48);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_23A66476C, v9, 0);
  }
}

uint64_t sub_23A66476C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v1;
  strcpy((v5 + 24), "status(for:)");
  *(v5 + 37) = 0;
  *(v5 + 38) = -5120;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A676430;
  *(v5 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C920, &unk_23A6E1DF8);
  *v7 = v0;
  v7[1] = sub_23A6648F4;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A676438, v5, v8);
}

uint64_t sub_23A6648F4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23A65CF04;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 24);

    v5 = sub_23A664A1C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A664A1C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_23A664A94(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C978, &qword_23A6E2080);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = aBlock - v11;
  if (a4)
  {
    a4 = sub_23A6DF614();
  }

  (*(v8 + 16))(v12, a2, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  aBlock[4] = sub_23A677834;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A665280;
  aBlock[3] = &block_descriptor_201;
  v15 = _Block_copy(aBlock);

  [a1 status:a4 completion:v15];
  _Block_release(v15);
}

uint64_t sub_23A664C68(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v58 - v17;
  v19 = type metadata accessor for PaymentCardReaderError();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v58 - v26);
  if (a2)
  {
    v62 = a3;
    v28 = a2;
    sub_23A6476F4(v28, v27);
    v29 = sub_23A6DCDF0();
    sub_23A646D48(v29, v18, &qword_27DF9D240, qword_23A6E1D30);
    v30 = sub_23A6DECC4();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v18, 1, v30) == 1)
    {
      sub_23A646DB0(v18, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      sub_23A648DF0(v27, v24);
      v35 = sub_23A6DECA4();
      v36 = sub_23A6DF884();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v59 = v37;
        v60 = swift_slowAlloc();
        v63 = v60;
        *v37 = 136446210;
        v38 = PaymentCardReaderError.errorName.getter();
        v61 = v28;
        v40 = v39;
        sub_23A648E54(v24);
        v41 = sub_23A657E78(v38, v40, &v63);
        v28 = v61;

        v42 = v59;
        *(v59 + 1) = v41;
        v43 = v36;
        v44 = v42;
        _os_log_impl(&dword_23A63D000, v35, v43, "Error (status): %{public}s", v42, 0xCu);
        v45 = v60;
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x23EE8A960](v45, -1, -1);
        MEMORY[0x23EE8A960](v44, -1, -1);
      }

      else
      {

        sub_23A648E54(v24);
      }

      (*(v31 + 8))(v18, v30);
    }

    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    v46 = swift_allocError();
    sub_23A648DF0(v27, v47);
    v63 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C978, &qword_23A6E2080);
    sub_23A6DF764();

    return sub_23A648E54(v27);
  }

  else if (a1)
  {

    v32 = sub_23A6DCDF0();
    sub_23A646D48(v32, v11, &qword_27DF9D240, qword_23A6E1D30);
    v33 = sub_23A6DECC4();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v11, 1, v33) == 1)
    {
      sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v52 = sub_23A6DECA4();
      v53 = sub_23A6DF8A4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_23A63D000, v52, v53, "Result (status): success", v54, 2u);
        MEMORY[0x23EE8A960](v54, -1, -1);
      }

      (*(v34 + 8))(v11, v33);
    }

    v63 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C978, &qword_23A6E2080);
    return sub_23A6DF774();
  }

  else
  {
    v49 = sub_23A6DCDF0();
    sub_23A646D48(v49, v15, &qword_27DF9D240, qword_23A6E1D30);
    v50 = sub_23A6DECC4();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v15, 1, v50) == 1)
    {
      return sub_23A646DB0(v15, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v55 = sub_23A6DECA4();
      v56 = sub_23A6DF884();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_23A63D000, v55, v56, "Error (status): nil result", v57, 2u);
        MEMORY[0x23EE8A960](v57, -1, -1);
      }

      return (*(v51 + 8))(v15, v50);
    }
  }
}

uint64_t sub_23A665280(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23A6DF5A4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_23A66532C(uint64_t *a1)
{
  *(v2 + 16) = v1;
  v4 = sub_23A6DE784();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = sub_23A6DE574();
  *(v2 + 56) = v8;
  v9 = *(v8 - 8);
  *(v2 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v11 = sub_23A6DE7F4();
  *(v2 + 80) = v11;
  v12 = *(v11 - 8);
  *(v2 + 88) = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v15 = *a1;
  *(v2 + 96) = v14;
  *(v2 + 104) = v15;
  *(v2 + 144) = *(a1 + 8);
  *(v2 + 145) = *(a1 + 9);

  return MEMORY[0x2822009F8](sub_23A6654F4, v1, 0);
}

uint64_t sub_23A6654F4()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 144);
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  v9 = *(v0 + 96);
  (*(*(v0 + 88) + 104))(*(v0 + 96), *MEMORY[0x277D43900], *(v0 + 80));
  sub_23A6DE454();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v5 + 32) = v9;
  *(v5 + 48) = v2;
  *(v5 + 49) = v1;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_23A665638;
  v7 = *(v0 + 16);

  return sub_23A66B94C(0, 0xD000000000000026, 0x800000023A6E8920, &unk_23A6E1E08, v5);
}

uint64_t sub_23A665638(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v10 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = v3[2];
    v6 = sub_23A665AB4;
  }

  else
  {
    v7 = v3[14];
    v8 = v3[2];

    v6 = sub_23A665760;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A665760()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v3 + 8))(v2, v4);
  type metadata accessor for StoreAndForwardPaymentCardReaderSession();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = v0[12];
    v8 = v0[9];
    v10 = v0[5];
    v9 = v0[6];

    v11 = v0[1];

    return v11(v6);
  }

  else
  {
    v13 = v0[16];
    v14 = v0[6];

    v15 = sub_23A6DCDF0();
    sub_23A646D48(v15, v14, &qword_27DF9D240, qword_23A6E1D30);
    v16 = sub_23A6DECC4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v14, 1, v16) == 1)
    {
      sub_23A646DB0(v0[6], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v18 = v0[6];
      v19 = sub_23A6DECA4();
      v20 = sub_23A6DF884();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23A63D000, v19, v20, "Error (prepare): unexpected session type", v21, 2u);
        MEMORY[0x23EE8A960](v21, -1, -1);
      }

      v22 = v0[6];

      (*(v17 + 8))(v22, v16);
    }

    v24 = v0[4];
    v23 = v0[5];
    v25 = v0[3];
    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    swift_allocError();
    v27 = v26;
    (*(v24 + 104))(v23, *MEMORY[0x277D43838], v25);
    v28 = sub_23A6DE774();
    (*(v24 + 8))(v23, v25);
    *v27 = v28;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v29 = v0[12];
    v30 = v0[9];
    v32 = v0[5];
    v31 = v0[6];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_23A665AB4()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = v0[17];
  v9 = v0[12];
  v10 = v0[9];
  v12 = v0[5];
  v11 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A665B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A665C2C, v3, 0);
}

uint64_t sub_23A665C2C()
{
  v33 = v0;
  v1 = v0[5];
  sub_23A66B410(v0[3], v0[4], 0xD000000000000019, 0x800000023A6E8980);
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v0[7] = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v4 = *(v2 + v3);

  if (v4 == 1)
  {
    v6 = v0[6];
    v7 = sub_23A6DCDF0();
    sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_23A646DB0(v0[6], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v14 = v0[6];
      v15 = sub_23A6DECA4();
      v16 = sub_23A6DF884();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        buf = v17;
        v32 = v30;
        *v17 = 136315138;
        if (("ng:cardReaderTransactionId:)" & 0x2000000000000000) != 0)
        {
          v18 = ("ng:cardReaderTransactionId:)" >> 40) & 0xF0000;
        }

        else
        {
          v18 = 1638400;
        }

        if (v18)
        {
          while (sub_23A6DF6F4() != 40 || v19 != 0xE100000000000000)
          {
            v20 = sub_23A6DFC04();

            if ((v20 & 1) != 0 || !((sub_23A6DF6A4() ^ v18) >> 14))
            {
              goto LABEL_18;
            }
          }
        }

LABEL_18:
        v21 = sub_23A6DF704();
        v22 = MEMORY[0x23EE89B50](v21);
        v24 = v23;

        v25 = sub_23A657E78(v22, v24, &v32);

        *(buf + 4) = v25;
        _os_log_impl(&dword_23A63D000, v15, v16, "Error (%s: a previous request is running, returning busy", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x23EE8A960](v30, -1, -1);
        MEMORY[0x23EE8A960](buf, -1, -1);
      }

      (*(v9 + 8))(v0[6], v8);
    }

    v26 = v0[5];
    sub_23A6763DC();
    swift_allocError();
    *v27 = xmmword_23A6E1CA0;
    *(v27 + 16) = 3;
    swift_willThrow();

    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }

  else
  {
    *(v5 + v3) = 1;
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_23A66602C;
    v11 = v0[5];
    v12 = v0[2];

    return sub_23A666240(v12, v11);
  }
}

uint64_t sub_23A66602C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_23A6661CC;
  }

  else
  {
    v6 = sub_23A666158;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A666158()
{
  v1 = v0[6];
  *(v0[5] + v0[7]) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_23A6661CC()
{
  *(v0[5] + v0[7]) = 0;

  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A666240(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_23A6DE574();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A666304, a2, 0);
}

uint64_t sub_23A666304()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_23A6DE564();
  sub_23A6DE544();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = &unk_23A6E2058;
  *(v4 + 24) = 0;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23A666400;
  v6 = v0[3];

  return sub_23A66AF24(0xD000000000000028, 0x800000023A6E88D0);
}

uint64_t sub_23A666400()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[6];
    v5 = v2[7];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v2[9] = v9;
    *v9 = v4;
    v9[1] = sub_23A666584;
    v10 = v2[3];

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A666584(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v7 = v3[6];
    v6 = v3[7];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = v3[3];

    return MEMORY[0x2822009F8](sub_23A6666DC, v10, 0);
  }
}

uint64_t sub_23A6666DC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD000000000000028;
  *(v5 + 32) = 0x800000023A6E88D0;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A6775E4;
  *(v5 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[12] = v7;
  v8 = type metadata accessor for StoreAndForwardStatus();
  *v7 = v0;
  v7[1] = sub_23A666848;
  v9 = v0[2];

  return MEMORY[0x2822008A0](v9, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A67762C, v5, v8);
}

uint64_t sub_23A666848()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23A6669E8;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 24);

    v5 = sub_23A666970;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A666970()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A6669E8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23A666A64(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = sub_23A6DE784();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = sub_23A6DE574();
  v2[29] = v6;
  v7 = *(v6 - 8);
  v2[30] = v7;
  v8 = *(v7 + 64) + 15;
  v2[31] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StoreAndForwardStatus() - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A666BFC, 0, 0);
}

uint64_t sub_23A666BFC()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A666D18;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C970, &qword_23A6E2078);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A66765C;
  v0[13] = &block_descriptor_189;
  v0[14] = v2;
  [v1 storeAndForwardStatusWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A666D18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_23A667068;
  }

  else
  {
    v3 = sub_23A666E28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A666E28()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 144);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v1, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_23A646DB0(*(v0 + 280), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v6 = *(v0 + 280);
    v7 = sub_23A6DECA4();
    v8 = sub_23A6DF8A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23A63D000, v7, v8, "Result (storeAndForwardStatus): success", v9, 2u);
      MEMORY[0x23EE8A960](v9, -1, -1);
    }

    v10 = *(v0 + 280);

    (*(v5 + 8))(v10, v4);
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  v14 = *(v0 + 200);
  sub_23A6DB1A8(*(v0 + 256));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060);
  sub_23A6DF774();

  sub_23A6DE564();
  sub_23A6DE524();
  (*(v13 + 8))(v11, v12);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  v19 = *(v0 + 248);
  v20 = *(v0 + 224);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23A667068()
{
  v62 = v0;
  v1 = *(v0 + 288);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  swift_willThrow();
  sub_23A6DE564();
  sub_23A6DE524();
  (*(v3 + 8))(v2, v4);
  *(v0 + 152) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 272);

    sub_23A6DA0F4(*(v0 + 160), &v59);
    v7 = v59;
    v8 = v60;
    v9 = v61;
    v10 = sub_23A6DCDF0();
    sub_23A646D48(v10, v6, &qword_27DF9D240, qword_23A6E1D30);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v6, 1, v11) == 1)
    {
      sub_23A646DB0(*(v0 + 272), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      sub_23A6775B4(v7, v8, v9);
      v17 = sub_23A6DECA4();
      v18 = sub_23A6DF884();
      sub_23A6775CC(v7, v8, v9);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v58 = v56;
        *v19 = 136446210;
        v59 = v7;
        v60 = v8;
        v61 = v9;
        v20 = PaymentCardReaderSession.ReadError.errorName.getter();
        v55 = v18;
        v22 = sub_23A657E78(v20, v21, &v58);

        *(v19 + 4) = v22;
        _os_log_impl(&dword_23A63D000, v17, v55, "Error (storeAndForwardStatus): %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x23EE8A960](v56, -1, -1);
        MEMORY[0x23EE8A960](v19, -1, -1);
      }

      (*(v12 + 8))(*(v0 + 272), v11);
    }

    v23 = *(v0 + 200);
    sub_23A6763DC();
    v24 = swift_allocError();
    *v25 = v7;
    *(v25 + 8) = v8;
    *(v25 + 16) = v9;
    *(v0 + 184) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060);
    sub_23A6DF764();
    v26 = *(v0 + 152);
  }

  else
  {
    v13 = *(v0 + 264);

    v14 = sub_23A6DCDF0();
    sub_23A646D48(v14, v13, &qword_27DF9D240, qword_23A6E1D30);
    v15 = sub_23A6DECC4();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      sub_23A646DB0(*(v0 + 264), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v27 = *(v0 + 288);
      v28 = *(v0 + 264);
      v29 = v27;
      v30 = sub_23A6DECA4();
      v31 = sub_23A6DF884();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 288);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v59 = v34;
        *v33 = 136315138;
        *(v0 + 176) = v32;
        v35 = v32;
        v36 = sub_23A6DF634();
        v38 = sub_23A657E78(v36, v37, &v59);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_23A63D000, v30, v31, "Error (storeAndForwardStatus): unexpected error [ %s ]", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x23EE8A960](v34, -1, -1);
        MEMORY[0x23EE8A960](v33, -1, -1);
      }

      (*(v16 + 8))(*(v0 + 264), v15);
    }

    v57 = *(v0 + 288);
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    v41 = *(v0 + 200);
    v42 = *(v0 + 208);
    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    v43 = swift_allocError();
    v45 = v44;
    (*(v40 + 104))(v39, *MEMORY[0x277D43838], v42);
    v46 = sub_23A6DE774();
    (*(v40 + 8))(v39, v42);
    *v45 = v46;
    swift_storeEnumTagMultiPayload();
    *(v0 + 168) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060);
    sub_23A6DF764();
    v26 = v57;
  }

  v48 = *(v0 + 272);
  v47 = *(v0 + 280);
  v50 = *(v0 + 256);
  v49 = *(v0 + 264);
  v51 = *(v0 + 248);
  v52 = *(v0 + 224);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_23A66765C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23A667734(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = sub_23A6DE2F4();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A667880, v2, 0);
}

uint64_t sub_23A667880()
{
  v59 = v0;
  v1 = v0[14];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = v0[14];
  if (v6 == 1)
  {
    sub_23A646DB0(v0[14], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v56 = v0[7];
    v8 = v4;
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    v11 = v9 & 1;
    v4 = v8;
    sub_23A6DCFBC(v11, v56, 0xD00000000000001ALL, 0x800000023A6E89A0, v10, v12);

    (*(v8 + 8))(v7, v3);
  }

  v13 = v0[7];
  sub_23A66B410(v0[5], v0[6], 0xD00000000000001ALL, 0x800000023A6E89A0);
  v55 = v4;
  v57 = v3;
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  v18 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID;
  swift_beginAccess();
  sub_23A646D48(v17 + v18, v16, &qword_27DF9C900, &qword_23A6E1D20);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v19 = v0[12];
    sub_23A646DB0(v0[8], &qword_27DF9C900, &qword_23A6E1D20);
    sub_23A646D48(v2, v19, &qword_27DF9D240, qword_23A6E1D30);
    if (v5(v19, 1, v57) == 1)
    {
      sub_23A646DB0(v0[12], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v23 = v0[12];
      v24 = sub_23A6DECA4();
      v25 = sub_23A6DF884();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23A63D000, v24, v25, "No transaction to decline", v26, 2u);
        MEMORY[0x23EE8A960](v26, -1, -1);
      }

      v27 = v0[12];

      (*(v55 + 8))(v27, v57);
    }

    sub_23A6763DC();
    swift_allocError();
    *v28 = xmmword_23A6E1CF0;
    *(v28 + 16) = 3;
    swift_willThrow();
LABEL_31:
    v47 = v0[13];
    v46 = v0[14];
    v49 = v0[11];
    v48 = v0[12];
    v50 = v0[8];

    v51 = v0[1];

    return v51();
  }

  v20 = v0[7];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v21 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  v0[15] = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  if (*(v20 + v21) == 1)
  {
    v22 = v0[13];
    sub_23A646D48(v2, v22, &qword_27DF9D240, qword_23A6E1D30);
    if (v5(v22, 1, v57) == 1)
    {
      sub_23A646DB0(v0[13], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v33 = v0[13];
      v34 = sub_23A6DECA4();
      v35 = sub_23A6DF884();
      if (os_log_type_enabled(v34, v35))
      {
        v53 = v35;
        v36 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v58 = v52;
        buf = v36;
        *v36 = 136315138;
        if (("storeAndForwardStatus(_:)" & 0x2000000000000000) != 0)
        {
          v37 = ("storeAndForwardStatus(_:)" >> 40) & 0xF0000;
        }

        else
        {
          v37 = 1703936;
        }

        if (v37)
        {
          while (sub_23A6DF6F4() != 40 || v38 != 0xE100000000000000)
          {
            v39 = sub_23A6DFC04();

            if ((v39 & 1) != 0 || !((sub_23A6DF6A4() ^ v37) >> 14))
            {
              goto LABEL_28;
            }
          }
        }

LABEL_28:
        v40 = sub_23A6DF704();
        v41 = MEMORY[0x23EE89B50](v40);
        v43 = v42;

        v44 = sub_23A657E78(v41, v43, &v58);

        *(buf + 4) = v44;
        _os_log_impl(&dword_23A63D000, v34, v53, "Error (%s: a previous request is running, returning busy", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x23EE8A960](v52, -1, -1);
        MEMORY[0x23EE8A960](buf, -1, -1);
      }

      (*(v55 + 8))(v0[13], v57);
    }

    sub_23A6763DC();
    swift_allocError();
    *v45 = xmmword_23A6E1CA0;
    *(v45 + 16) = 3;
    swift_willThrow();
    (*(v0[10] + 8))(v0[11], v0[9]);
    goto LABEL_31;
  }

  *(v20 + v21) = 1;
  v29 = swift_task_alloc();
  v0[16] = v29;
  *v29 = v0;
  v29[1] = sub_23A667F90;
  v30 = v0[11];
  v31 = v0[7];

  return sub_23A66823C(v29, v31, v30);
}

uint64_t sub_23A667F90()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_23A66817C;
  }

  else
  {
    v6 = sub_23A6680BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A6680BC()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  *(v0[7] + v0[15]) = 0;
  (*(v4 + 8))(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_23A66817C()
{
  *(v0[7] + v0[15]) = 0;
  v1 = v0[17];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A66823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_23A6DE2F4();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v3[6] = *(v6 + 64);
  v3[7] = swift_task_alloc();
  v7 = sub_23A6DE574();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A668364, a2, 0);
}

uint64_t sub_23A668364()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  sub_23A6DE4C4();
  sub_23A6DE544();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v8, v7);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[11] = v11;
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v4, v7);

  v12 = swift_task_alloc();
  v0[12] = v12;
  *(v12 + 16) = &unk_23A6E2038;
  *(v12 + 24) = v11;
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_23A6684F4;
  v14 = v0[2];

  return sub_23A66AF24(0xD000000000000028, 0x800000023A6E88D0);
}

uint64_t sub_23A6684F4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v2[19] = v0;
    v5 = v2[12];
    v6 = v2[2];

    return MEMORY[0x2822009F8](sub_23A668B64, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v2[14] = v7;
    *v7 = v4;
    v7[1] = sub_23A668680;
    v8 = v2[2];

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A668680(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    v3[19] = v1;
    v6 = v3[12];
    v7 = v3[2];

    v8 = sub_23A668B64;
    v9 = v7;
  }

  else
  {
    v9 = v3[2];
    v8 = sub_23A6687BC;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_23A6687BC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[2];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD000000000000028;
  *(v5 + 32) = 0x800000023A6E88D0;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A6773AC;
  *(v5 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_23A668920;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A6773F4, v5, v8);
}

uint64_t sub_23A668920()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_23A668AE0;
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 16);

    v5 = sub_23A668A48;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A668A48()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23A668AE0()
{
  v1 = *(v0 + 128);

  *(v0 + 152) = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_23A668B64, v3, 0);
}

uint64_t sub_23A668B64()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_23A668BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[29] = a1;
  v4[30] = a2;
  v6 = sub_23A6DE574();
  v4[33] = v6;
  v7 = *(v6 - 8);
  v4[34] = v7;
  v8 = *(v7 + 64) + 15;
  v4[35] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A668D2C, a3, 0);
}

uint64_t sub_23A668D2C()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = sub_23A6DE2D4();
  v0[40] = v3;
  v0[2] = v0;
  v0[3] = sub_23A668E5C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C960, &qword_23A6E2050);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A6697CC;
  v0[13] = &block_descriptor_171;
  v0[14] = v4;
  [v2 declineTransaction:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A668E5C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 248);
  if (v3)
  {
    v5 = sub_23A669200;
  }

  else
  {
    v5 = sub_23A668F7C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A668F7C()
{
  v1 = *(v0 + 312);

  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23A646DB0(*(v0 + 312), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v5 = *(v0 + 312);
    v6 = sub_23A6DECA4();
    v7 = sub_23A6DF8A4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23A63D000, v6, v7, "Result (storeAndForwardDecline): success", v8, 2u);
      MEMORY[0x23EE8A960](v8, -1, -1);
    }

    v9 = *(v0 + 312);

    (*(v4 + 8))(v9, v3);
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 288);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF774();
  v16 = sub_23A6DE2F4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID;
  swift_beginAccess();
  sub_23A677544(v11, v15 + v17);
  swift_endAccess();
  sub_23A6DE4C4();
  sub_23A6DE524();
  (*(v13 + 8))(v10, v12);
  v19 = *(v0 + 304);
  v18 = *(v0 + 312);
  v21 = *(v0 + 288);
  v20 = *(v0 + 296);
  v22 = *(v0 + 280);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_23A669200()
{
  v61 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  swift_willThrow();

  v8 = sub_23A6DE2F4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID;
  swift_beginAccess();
  sub_23A677544(v4, v7 + v9);
  swift_endAccess();
  sub_23A6DE4C4();
  sub_23A6DE524();
  (*(v6 + 8))(v3, v5);
  *(v0 + 192) = v1;
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 304);

    sub_23A6DA0F4(*(v0 + 200), &v58);
    v12 = v58;
    v13 = v59;
    v14 = v60;
    v15 = sub_23A6DCDF0();
    sub_23A646D48(v15, v11, &qword_27DF9D240, qword_23A6E1D30);
    v16 = sub_23A6DECC4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v11, 1, v16) == 1)
    {
      sub_23A646DB0(*(v0 + 304), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      sub_23A6775B4(v12, v13, v14);
      v22 = sub_23A6DECA4();
      v23 = sub_23A6DF884();
      sub_23A6775CC(v12, v13, v14);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v24 = 136446210;
        v58 = v12;
        v59 = v13;
        v60 = v14;
        v25 = PaymentCardReaderSession.ReadError.errorName.getter();
        v55 = v23;
        v27 = sub_23A657E78(v25, v26, &v57);

        *(v24 + 4) = v27;
        _os_log_impl(&dword_23A63D000, v22, v55, "Error (storeAndForwardDecline): %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x23EE8A960](v56, -1, -1);
        MEMORY[0x23EE8A960](v24, -1, -1);
      }

      (*(v17 + 8))(*(v0 + 304), v16);
    }

    v28 = *(v0 + 240);
    sub_23A6763DC();
    v29 = swift_allocError();
    *v30 = v12;
    *(v30 + 8) = v13;
    *(v30 + 16) = v14;
    *(v0 + 224) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    sub_23A6DF764();
    v31 = *(v0 + 192);
  }

  else
  {
    v18 = *(v0 + 296);

    v19 = sub_23A6DCDF0();
    sub_23A646D48(v19, v18, &qword_27DF9D240, qword_23A6E1D30);
    v20 = sub_23A6DECC4();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v18, 1, v20) == 1)
    {
      sub_23A646DB0(*(v0 + 296), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v32 = *(v0 + 328);
      v33 = *(v0 + 296);
      v34 = v32;
      v35 = sub_23A6DECA4();
      v36 = sub_23A6DF884();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v0 + 328);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v58 = v39;
        *v38 = 136315138;
        *(v0 + 216) = v37;
        v40 = v37;
        v41 = sub_23A6DF634();
        v43 = sub_23A657E78(v41, v42, &v58);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_23A63D000, v35, v36, "Error (storeAndForwardDecline): unexpected error [ %s ]", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x23EE8A960](v39, -1, -1);
        MEMORY[0x23EE8A960](v38, -1, -1);
      }

      (*(v21 + 8))(*(v0 + 296), v20);
    }

    v44 = *(v0 + 328);
    v45 = *(v0 + 240);
    sub_23A6763DC();
    v46 = swift_allocError();
    *v47 = xmmword_23A6E1CB0;
    *(v47 + 16) = 3;
    *(v0 + 208) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    sub_23A6DF764();
    v31 = v44;
  }

  v49 = *(v0 + 304);
  v48 = *(v0 + 312);
  v51 = *(v0 + 288);
  v50 = *(v0 + 296);
  v52 = *(v0 + 280);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_23A6697CC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_23A669878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v6 + 120) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x2822009F8](sub_23A6698A4, a3, 0);
}

uint64_t sub_23A6698A4()
{
  v1 = *(v0 + 120);
  v2 = v1 & 1;
  v3 = (v1 >> 8) & 1;
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  sub_23A6DE544();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v2;
  *(v4 + 33) = v3;
  *(v4 + 40) = v9;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_23A669998;
  v6 = *(v0 + 40);

  return sub_23A66AF24(0xD000000000000026, 0x800000023A6E8920);
}

uint64_t sub_23A669998()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[8];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[10] = v8;
    *v8 = v4;
    v8[1] = sub_23A669B14;
    v9 = v2[5];

    return sub_23A670C54(0);
  }
}

uint64_t sub_23A669B14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v6 = *(v3 + 64);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 40);

    return MEMORY[0x2822009F8](sub_23A669C64, v9, 0);
  }
}

uint64_t sub_23A669C64()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  v4 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0xD000000000000026;
  *(v5 + 32) = 0x800000023A6E8920;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_23A677AB4;
  *(v5 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = type metadata accessor for PaymentCardReaderSession();
  *v7 = v0;
  v7[1] = sub_23A669DE0;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD000000000000028, 0x800000023A6E88D0, sub_23A677AD8, v5, v8);
}

uint64_t sub_23A669DE0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_23A669F8C;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 40);

    v5 = sub_23A669F08;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A669F08()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + 16);

  *v2 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A669F8C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

void sub_23A66A000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v50 = a1;
  v46 = a6;
  v47 = a2;
  LODWORD(v44) = a5;
  v42 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
  v52 = *(v45 - 8);
  v48 = *(v52 + 64);
  MEMORY[0x28223BE20](v45, v9);
  v53 = &v36 - v10;
  v51 = sub_23A6DE574();
  v39 = *(v51 - 8);
  v43 = *(v39 + 64);
  MEMORY[0x28223BE20](v51, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v13;
  v14 = sub_23A6DE754();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v17 = sub_23A6DE7F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v21 = *(v18 + 16);
  v38 = v17;
  v21(&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v17);
  aBlock = a4;
  LOWORD(v55) = v44 & 0x101;
  v40 = (v44 >> 8) & 1;
  v41 = v44 & 1;
  sub_23A6DA0E8();
  v22 = objc_allocWithZone(sub_23A6DE964());
  v44 = sub_23A6DE954();
  v23 = v39;
  (*(v39 + 16))(v13, v46, v51);
  v24 = v52;
  v25 = v45;
  (*(v52 + 16))(v53, v47, v45);
  v21(&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v17);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v43 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v24 + 80) + v28 + 8) & ~*(v24 + 80);
  v30 = (v48 + *(v18 + 80) + v29) & ~*(v18 + 80);
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v27, v37, v51);
  *(v31 + v28) = v49;
  (*(v52 + 32))(v31 + v29, v53, v25);
  (*(v18 + 32))(v31 + v30, &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
  v32 = v31 + ((v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v32 = v42;
  v33 = v40;
  *(v32 + 8) = v41;
  *(v32 + 9) = v33;
  v58 = sub_23A677B04;
  v59 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_23A66AE90;
  v57 = &block_descriptor_261;
  v34 = _Block_copy(&aBlock);

  v35 = v44;
  [v50 startSession:v44 completion:v34];
  _Block_release(v34);
}

void sub_23A66A480(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, int a8)
{
  LODWORD(v102) = a8;
  v101 = a7;
  v99 = a6;
  v108 = a5;
  v105 = a4;
  v103 = a1;
  v9 = sub_23A6DE784();
  v100 = *(v9 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v99 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v99 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v104 = &v99 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v99 - v33;
  v107 = type metadata accessor for PaymentCardReaderError();
  v35 = *(*(v107 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v107, v36);
  v106 = &v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v99 - v41;
  MEMORY[0x28223BE20](v40, v43);
  v45 = (&v99 - v44);
  sub_23A6DE524();
  if (a2)
  {
    v46 = a2;
    sub_23A6476F4(v46, v45);
    v103 = sub_23A6DCDF0();
    sub_23A646D48(v103, v34, &qword_27DF9D240, qword_23A6E1D30);
    v47 = sub_23A6DECC4();
    v48 = *(v47 - 8);
    v102 = *(v48 + 48);
    if (v102(v34, 1, v47) == 1)
    {
      sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v100 = v48;
      v101 = v46;
      sub_23A648DF0(v45, v42);
      v61 = sub_23A6DECA4();
      v62 = sub_23A6DF884();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v109 = v99;
        *v63 = 136446210;
        v64 = PaymentCardReaderError.errorName.getter();
        v66 = v65;
        sub_23A648E54(v42);
        v67 = sub_23A657E78(v64, v66, &v109);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_23A63D000, v61, v62, "Error (prepare): %{public}s", v63, 0xCu);
        v68 = v99;
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        MEMORY[0x23EE8A960](v68, -1, -1);
        MEMORY[0x23EE8A960](v63, -1, -1);
      }

      else
      {

        sub_23A648E54(v42);
      }

      v48 = v100;
      (*(v100 + 8))(v34, v47);
      v46 = v101;
    }

    v69 = v106;
    sub_23A648DF0(v45, v106);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_23A648E54(v69);
    if (EnumCaseMultiPayload == 18)
    {
      v71 = v104;
      sub_23A646D48(v103, v104, &qword_27DF9D240, qword_23A6E1D30);
      if (v102(v71, 1, v47) == 1)
      {
        sub_23A646DB0(v71, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v73 = sub_23A6DECA4();
        v74 = sub_23A6DF8A4();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = v48;
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_23A63D000, v73, v74, "busy on prepare, no clean up", v76, 2u);
          v77 = v76;
          v48 = v75;
          MEMORY[0x23EE8A960](v77, -1, -1);
        }

        (*(v48 + 8))(v104, v47);
      }
    }

    else
    {
      v72 = *(v105 + 208);
      *(v105 + 208) = 0;
    }

    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    v78 = swift_allocError();
    sub_23A648DF0(v45, v79);
    v109 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
    sub_23A6DF764();

    sub_23A648E54(v45);
  }

  else
  {
    v49 = v100;
    v50 = v101;
    v51 = v102;
    if (v103)
    {
      v52 = v24;
      v53 = v18;
      v54 = v103;
      v55 = sub_23A6DCDF0();
      v56 = v52;
      sub_23A646D48(v55, v52, &qword_27DF9D240, qword_23A6E1D30);
      v57 = sub_23A6DECC4();
      v58 = *(v57 - 8);
      if ((*(v58 + 48))(v52, 1, v57) == 1)
      {
        sub_23A646DB0(v52, &qword_27DF9D240, qword_23A6E1D30);
        v59 = v99;
        v60 = v51;
      }

      else
      {
        v107 = v54;
        v85 = sub_23A6DECA4();
        v86 = sub_23A6DF8A4();
        v60 = v51;
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_23A63D000, v85, v86, "Result (prepare): session created", v87, 2u);
          MEMORY[0x23EE8A960](v87, -1, -1);
        }

        (*(v58 + 8))(v56, v57);
        v59 = v99;
        v54 = v107;
      }

      v109 = v50;
      v110 = v60 & 0x101;
      sub_23A6DE6F4();
      v88 = sub_23A6DE6E4();
      v90 = sub_23A676B60(v59, &v109, v53, v88, v89 & 1);
      sub_23A646DB0(v53, &qword_27DF9C7A8, &qword_23A6E12A0);
      v91 = *(v105 + 208);
      *(v105 + 208) = v90;

      v109 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
      sub_23A6DF774();
    }

    else
    {
      v80 = sub_23A6DCDF0();
      v81 = v28;
      sub_23A646D48(v80, v28, &qword_27DF9D240, qword_23A6E1D30);
      v82 = sub_23A6DECC4();
      v83 = *(v82 - 8);
      if ((*(v83 + 48))(v28, 1, v82) == 1)
      {
        sub_23A646DB0(v28, &qword_27DF9D240, qword_23A6E1D30);
        v84 = v13;
      }

      else
      {
        v92 = sub_23A6DECA4();
        v93 = sub_23A6DF884();
        v84 = v13;
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_23A63D000, v92, v93, "Error (prepare): unknown", v94, 2u);
          MEMORY[0x23EE8A960](v94, -1, -1);
        }

        (*(v83 + 8))(v81, v82);
      }

      sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
      v95 = swift_allocError();
      v97 = v96;
      (*(v49 + 104))(v84, *MEMORY[0x277D43838], v9);
      v98 = sub_23A6DE774();
      (*(v49 + 8))(v84, v9);
      *v97 = v98;
      swift_storeEnumTagMultiPayload();
      v109 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
      sub_23A6DF764();
    }
  }
}

void sub_23A66AE98(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_23A66AF24(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A66AFC4, v2, 0);
}

uint64_t sub_23A66AFC4()
{
  v27 = v0;
  if (*sub_23A64950C() == 1)
  {
    v1 = v0[4];
    v2 = v1[21];
    v3 = v1[22];
    v4 = __swift_project_boxed_opaque_existential_1(v1 + 18, v2);
    v5 = *(v2 - 8);
    v6 = *(v5 + 64) + 15;
    v7 = swift_task_alloc();
    (*(v5 + 16))(v7, v4, v2);
    LOBYTE(v4) = (*(v3 + 16))(v2, v3);
    (*(v5 + 8))(v7, v2);

    if (v4 & 1) != 0 || (*(v0[4] + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed))
    {
      v8 = v0[5];

      v9 = v0[1];
      goto LABEL_6;
    }

    v12 = v0[5];
    v13 = sub_23A6DCDF0();
    sub_23A646D48(v13, v12, &qword_27DF9D240, qword_23A6E1D30);
    v14 = sub_23A6DECC4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v16 = v0[3];

      v17 = sub_23A6DECA4();
      v18 = sub_23A6DF884();

      if (os_log_type_enabled(v17, v18))
      {
        v20 = v0[2];
        v19 = v0[3];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136315138;
        v23 = sub_23A66B368(v20, v19);
        v25 = sub_23A657E78(v23, v24, &v26);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_23A63D000, v17, v18, "Warning (%s: backgroundRequestNotAllowed", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x23EE8A960](v22, -1, -1);
        MEMORY[0x23EE8A960](v21, -1, -1);
      }

      (*(v15 + 8))(v0[5], v14);
    }
  }

  v10 = v0[5];
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v9 = v0[1];
LABEL_6:

  return v9();
}

uint64_t sub_23A66B368(uint64_t a1, unint64_t a2)
{
  sub_23A673B98(40, 0xE100000000000000, a1, a2);
  v2 = sub_23A6DF704();
  v3 = MEMORY[0x23EE89B50](v2);

  return v3;
}

uint64_t sub_23A66B410(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v52 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v50 - v14;
  v17 = v4[21];
  v16 = v4[22];
  v18 = __swift_project_boxed_opaque_existential_1(v4 + 18, v17);
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22);
  LOBYTE(v16) = (*(v16 + 16))(v17, v16);
  (*(v19 + 8))(v22, v17);
  if ((v16 & 1) == 0 && (*(v5 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed) & 1) == 0)
  {
    v32 = sub_23A6DCDF0();
    v33 = v15;
    sub_23A646D48(v32, v15, &qword_27DF9D240, qword_23A6E1D30);
    v34 = sub_23A6DECC4();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      sub_23A646DB0(v33, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v41 = v52;

      v42 = sub_23A6DECA4();
      v43 = sub_23A6DF884();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v44 = 136315138;
        v46 = sub_23A66B368(v51, v41);
        v48 = sub_23A657E78(v46, v47, &v54);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_23A63D000, v42, v43, "Warning (%s: readFromBackgroundError", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x23EE8A960](v45, -1, -1);
        MEMORY[0x23EE8A960](v44, -1, -1);
      }

      (*(v35 + 8))(v33, v34);
    }

    v40 = 1;
    goto LABEL_21;
  }

  v23 = v5[26];
  v24 = a1;
  v25 = a2;
  if (!v23 || ((result = *(v23 + 32), result == v24) ? (v27 = *(v23 + 40) == a2) : (v27 = 0), !v27 && (result = sub_23A6DFC04(), (result & 1) == 0)))
  {
    v28 = sub_23A6DCDF0();
    v29 = v53;
    sub_23A646D48(v28, v53, &qword_27DF9D240, qword_23A6E1D30);
    v30 = sub_23A6DECC4();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_23A646DB0(v29, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v36 = sub_23A6DECA4();
      v37 = sub_23A6DF884();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v54 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_23A657E78(v24, v25, &v54);
        _os_log_impl(&dword_23A63D000, v36, v37, "Session is wrong, nil or invalidated [ %s ]", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        v29 = v53;
        MEMORY[0x23EE8A960](v39, -1, -1);
        MEMORY[0x23EE8A960](v38, -1, -1);
      }

      (*(v31 + 8))(v29, v30);
    }

    v40 = 4;
LABEL_21:
    sub_23A6763DC();
    swift_allocError();
    *v49 = v40;
    *(v49 + 8) = 0;
    *(v49 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23A66B94C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 24) = a2;
  *(v6 + 96) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A66B9F4, v5, 0);
}

uint64_t sub_23A66B9F4()
{
  v27 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  *(v0 + 72) = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 64);
    v4 = sub_23A6DCDF0();
    sub_23A646D48(v4, v3, &qword_27DF9D240, qword_23A6E1D30);
    v5 = sub_23A6DECC4();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_23A646DB0(*(v0 + 64), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v12 = *(v0 + 32);

      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = *(v0 + 24);
        v15 = *(v0 + 32);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
        v19 = sub_23A66B368(v16, v15);
        v21 = sub_23A657E78(v19, v20, &v26);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23A63D000, v13, v14, "Error (%s: a previous request is running, returning busy", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(v6 + 8))(*(v0 + 64), v5);
    }

    if (*(v0 + 96) == 1)
    {
      sub_23A6763DC();
      swift_allocError();
      *v22 = xmmword_23A6E1CA0;
      *(v22 + 16) = 3;
    }

    else
    {
      type metadata accessor for PaymentCardReaderError();
      sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
    v23 = *(v0 + 64);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v7 = *(v0 + 40);
    *(v1 + v2) = 1;
    v25 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_23A66BDBC;
    v10 = *(v0 + 48);

    return v25(v0 + 16);
  }
}

uint64_t sub_23A66BDBC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_23A66BF5C;
  }

  else
  {
    v6 = sub_23A66BEE8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A66BEE8()
{
  v1 = v0[8];
  *(v0[7] + v0[9]) = 0;
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23A66BF5C()
{
  *(v0[7] + v0[9]) = 0;
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A66BFCC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v49[1] = a8;
  v50 = a7;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v52 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v49 - v21;
  v23 = *(v18 + 16);
  v54 = a1;
  v23(v49 - v21, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v49[0] = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v18 + 32);
  v51 = v17;
  v27(v26 + v24, v22, v17);
  v28 = v26 + v25;
  v29 = a5;
  *v28 = a5;
  *(v28 + 8) = a6;
  aBlock[4] = sub_23A677E90;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_291;
  v30 = _Block_copy(aBlock);

  v31 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v50(v55, v54);
    return swift_unknownObjectRelease();
  }

  v33 = sub_23A6DCDF0();
  v34 = v52;
  sub_23A646D48(v33, v52, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {

    v39 = sub_23A6DECA4();
    v40 = sub_23A6DF884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = sub_23A66B368(v49[0], a4);
      v45 = v29;
      v46 = sub_23A657E78(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_23A63D000, v39, v40, "Error (%s: unexpected proxy type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      v34 = v52;
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v36 + 8))(v34, v35);
    v37 = *(v29 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v38 = swift_allocError();
    if (v37)
    {
      v48 = xmmword_23A6E1D10;
    }

    else
    {
      v48 = xmmword_23A6E1D00;
    }

    *v47 = v48;
    *(v47 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
  v37 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v38 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v38;
  return sub_23A6DF764();
}

uint64_t sub_23A66C514(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v49[1] = a8;
  v50 = a7;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v52 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v49 - v21;
  v23 = *(v18 + 16);
  v54 = a1;
  v23(v49 - v21, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v49[0] = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v18 + 32);
  v51 = v17;
  v27(v26 + v24, v22, v17);
  v28 = v26 + v25;
  v29 = a5;
  *v28 = a5;
  *(v28 + 8) = a6;
  aBlock[4] = sub_23A677A24;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_237;
  v30 = _Block_copy(aBlock);

  v31 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v50(v55, v54);
    return swift_unknownObjectRelease();
  }

  v33 = sub_23A6DCDF0();
  v34 = v52;
  sub_23A646D48(v33, v52, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {

    v39 = sub_23A6DECA4();
    v40 = sub_23A6DF884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = sub_23A66B368(v49[0], a4);
      v45 = v29;
      v46 = sub_23A657E78(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_23A63D000, v39, v40, "Error (%s: unexpected proxy type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      v34 = v52;
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v36 + 8))(v34, v35);
    v37 = *(v29 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v38 = swift_allocError();
    if (v37)
    {
      v48 = xmmword_23A6E1D10;
    }

    else
    {
      v48 = xmmword_23A6E1D00;
    }

    *v47 = v48;
    *(v47 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
  v37 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v38 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v38;
  return sub_23A6DF764();
}

uint64_t sub_23A66CA5C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v49[1] = a8;
  v50 = a7;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v52 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v49 - v21;
  v23 = *(v18 + 16);
  v54 = a1;
  v23(v49 - v21, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v49[0] = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v18 + 32);
  v51 = v17;
  v27(v26 + v24, v22, v17);
  v28 = v26 + v25;
  v29 = a5;
  *v28 = a5;
  *(v28 + 8) = a6;
  aBlock[4] = sub_23A67740C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_163;
  v30 = _Block_copy(aBlock);

  v31 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v50(v55, v54);
    return swift_unknownObjectRelease();
  }

  v33 = sub_23A6DCDF0();
  v34 = v52;
  sub_23A646D48(v33, v52, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {

    v39 = sub_23A6DECA4();
    v40 = sub_23A6DF884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = sub_23A66B368(v49[0], a4);
      v45 = v29;
      v46 = sub_23A657E78(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_23A63D000, v39, v40, "Error (%s: unexpected proxy type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      v34 = v52;
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v36 + 8))(v34, v35);
    v37 = *(v29 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v38 = swift_allocError();
    if (v37)
    {
      v48 = xmmword_23A6E1D10;
    }

    else
    {
      v48 = xmmword_23A6E1D00;
    }

    *v47 = v48;
    *(v47 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
  v37 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v38 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v38;
  return sub_23A6DF764();
}

uint64_t sub_23A66CFA4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v49[1] = a8;
  v50 = a7;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v52 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v49 - v21;
  v23 = *(v18 + 16);
  v54 = a1;
  v23(v49 - v21, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v49[0] = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v18 + 32);
  v51 = v17;
  v27(v26 + v24, v22, v17);
  v28 = v26 + v25;
  v29 = a5;
  *v28 = a5;
  *(v28 + 8) = a6;
  aBlock[4] = sub_23A67797C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_225;
  v30 = _Block_copy(aBlock);

  v31 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v50(v55, v54);
    return swift_unknownObjectRelease();
  }

  v33 = sub_23A6DCDF0();
  v34 = v52;
  sub_23A646D48(v33, v52, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {

    v39 = sub_23A6DECA4();
    v40 = sub_23A6DF884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = sub_23A66B368(v49[0], a4);
      v45 = v29;
      v46 = sub_23A657E78(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_23A63D000, v39, v40, "Error (%s: unexpected proxy type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      v34 = v52;
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v36 + 8))(v34, v35);
    v37 = *(v29 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v38 = swift_allocError();
    if (v37)
    {
      v48 = xmmword_23A6E1D10;
    }

    else
    {
      v48 = xmmword_23A6E1D00;
    }

    *v47 = v48;
    *(v47 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
  v37 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v38 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v38;
  return sub_23A6DF764();
}

uint64_t sub_23A66D4EC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v49[1] = a8;
  v50 = a7;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v52 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C980, &qword_23A6E2088);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v49 - v21;
  v23 = *(v18 + 16);
  v54 = a1;
  v23(v49 - v21, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v49[0] = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v18 + 32);
  v51 = v17;
  v27(v26 + v24, v22, v17);
  v28 = v26 + v25;
  v29 = a5;
  *v28 = a5;
  *(v28 + 8) = a6;
  aBlock[4] = sub_23A677880;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_210;
  v30 = _Block_copy(aBlock);

  v31 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v50(v55, v54);
    return swift_unknownObjectRelease();
  }

  v33 = sub_23A6DCDF0();
  v34 = v52;
  sub_23A646D48(v33, v52, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {

    v39 = sub_23A6DECA4();
    v40 = sub_23A6DF884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = sub_23A66B368(v49[0], a4);
      v45 = v29;
      v46 = sub_23A657E78(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_23A63D000, v39, v40, "Error (%s: unexpected proxy type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      v34 = v52;
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v36 + 8))(v34, v35);
    v37 = *(v29 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v38 = swift_allocError();
    if (v37)
    {
      v48 = xmmword_23A6E1D10;
    }

    else
    {
      v48 = xmmword_23A6E1D00;
    }

    *v47 = v48;
    *(v47 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
  v37 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v38 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v38;
  return sub_23A6DF764();
}

uint64_t sub_23A66DA34(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v49[1] = a8;
  v50 = a7;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v52 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C978, &qword_23A6E2080);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v49 - v21;
  v23 = *(v18 + 16);
  v54 = a1;
  v23(v49 - v21, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v49[0] = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v18 + 32);
  v51 = v17;
  v27(v26 + v24, v22, v17);
  v28 = v26 + v25;
  v29 = a5;
  *v28 = a5;
  *(v28 + 8) = a6;
  aBlock[4] = sub_23A677820;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_195;
  v30 = _Block_copy(aBlock);

  v31 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v50(v55, v54);
    return swift_unknownObjectRelease();
  }

  v33 = sub_23A6DCDF0();
  v34 = v52;
  sub_23A646D48(v33, v52, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {

    v39 = sub_23A6DECA4();
    v40 = sub_23A6DF884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = sub_23A66B368(v49[0], a4);
      v45 = v29;
      v46 = sub_23A657E78(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_23A63D000, v39, v40, "Error (%s: unexpected proxy type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      v34 = v52;
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v36 + 8))(v34, v35);
    v37 = *(v29 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v38 = swift_allocError();
    if (v37)
    {
      v48 = xmmword_23A6E1D10;
    }

    else
    {
      v48 = xmmword_23A6E1D00;
    }

    *v47 = v48;
    *(v47 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
  v37 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v38 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v38;
  return sub_23A6DF764();
}

uint64_t sub_23A66DF7C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v49[1] = a8;
  v50 = a7;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v52 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v49 - v21;
  v23 = *(v18 + 16);
  v54 = a1;
  v23(v49 - v21, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v49[0] = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v18 + 32);
  v51 = v17;
  v27(v26 + v24, v22, v17);
  v28 = v26 + v25;
  v29 = a5;
  *v28 = a5;
  *(v28 + 8) = a6;
  aBlock[4] = sub_23A677644;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_181;
  v30 = _Block_copy(aBlock);

  v31 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v50(v55, v54);
    return swift_unknownObjectRelease();
  }

  v33 = sub_23A6DCDF0();
  v34 = v52;
  sub_23A646D48(v33, v52, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {

    v39 = sub_23A6DECA4();
    v40 = sub_23A6DF884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = sub_23A66B368(v49[0], a4);
      v45 = v29;
      v46 = sub_23A657E78(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_23A63D000, v39, v40, "Error (%s: unexpected proxy type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      v34 = v52;
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v36 + 8))(v34, v35);
    v37 = *(v29 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v38 = swift_allocError();
    if (v37)
    {
      v48 = xmmword_23A6E1D10;
    }

    else
    {
      v48 = xmmword_23A6E1D00;
    }

    *v47 = v48;
    *(v47 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
  v37 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v38 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v38;
  return sub_23A6DF764();
}

uint64_t sub_23A66E4C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v49[1] = a8;
  v50 = a7;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v52 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v49 - v21;
  v23 = *(v18 + 16);
  v54 = a1;
  v23(v49 - v21, a1, v17);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v49[0] = a3;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v18 + 32);
  v51 = v17;
  v27(v26 + v24, v22, v17);
  v28 = v26 + v25;
  v29 = a5;
  *v28 = a5;
  *(v28 + 8) = a6;
  aBlock[4] = sub_23A677AF0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65AE64;
  aBlock[3] = &block_descriptor_255;
  v30 = _Block_copy(aBlock);

  v31 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v50(v55, v54);
    return swift_unknownObjectRelease();
  }

  v33 = sub_23A6DCDF0();
  v34 = v52;
  sub_23A646D48(v33, v52, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {

    v39 = sub_23A6DECA4();
    v40 = sub_23A6DF884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = sub_23A66B368(v49[0], a4);
      v45 = v29;
      v46 = sub_23A657E78(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_23A63D000, v39, v40, "Error (%s: unexpected proxy type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      v34 = v52;
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    (*(v36 + 8))(v34, v35);
    v37 = *(v29 + 194);
    if ((a6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v38 = swift_allocError();
    if (v37)
    {
      v48 = xmmword_23A6E1D10;
    }

    else
    {
      v48 = xmmword_23A6E1D00;
    }

    *v47 = v48;
    *(v47 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v34, &qword_27DF9D240, qword_23A6E1D30);
  v37 = *(a5 + 194);
  if (a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v38 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock[0] = v38;
  return sub_23A6DF764();
}

uint64_t sub_23A66EA0C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t *a8)
{
  v43 = a7;
  v42 = a6;
  v41 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v39 - v16;
  v18 = sub_23A6DCDF0();
  sub_23A646D48(v18, v17, &qword_27DF9D240, qword_23A6E1D30);
  v19 = sub_23A6DECC4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v40 = a8;

    v21 = a1;
    v22 = sub_23A6DECA4();
    v23 = sub_23A6DF884();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39[1] = a4;
      v26 = v25;
      v45 = v25;
      *v24 = 136315394;
      v27 = sub_23A66B368(a2, a3);
      v29 = sub_23A657E78(v27, v28, &v45);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v44 = a1;
      v30 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
      v31 = sub_23A6DF634();
      v33 = sub_23A657E78(v31, v32, &v45);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_23A63D000, v22, v23, "Error (%s: proxy error handler [ %s ]", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE8A960](v26, -1, -1);
      MEMORY[0x23EE8A960](v24, -1, -1);
    }

    (*(v20 + 8))(v17, v19);
    a8 = v40;
  }

  v34 = *(v41 + 194);
  if (v42)
  {
    sub_23A6763DC();
    v36 = swift_allocError();
    if (v34)
    {
      v37 = xmmword_23A6E1D10;
    }

    else
    {
      v37 = xmmword_23A6E1D00;
    }

    *v35 = v37;
    *(v35 + 16) = 3;
  }

  else
  {
    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    v36 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  v45 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(v43, a8);
  return sub_23A6DF764();
}

uint64_t sub_23A66EDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v27 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v27 - v21;
  v23 = sub_23A6DF7B4();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v13 + 16))(v17, a2, v12);
  v24 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = a3;
  *(v25 + 5) = a4;
  *(v25 + 6) = a1;
  (*(v13 + 32))(&v25[v24], v17, v12);

  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v22, v28, v25);
}

uint64_t sub_23A66EFA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_23A647140;

  return v13(a6, a7);
}

uint64_t sub_23A66F0A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_23A647234;

  return v13(a6, a7);
}

uint64_t sub_23A66F1AC(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v42 - v11;
  if (*(v1 + 192) == 5)
  {
    goto LABEL_17;
  }

  LOBYTE(aBlock[0]) = *(v1 + 192);
  LOBYTE(v46) = 2;
  sub_23A676584();
  if (sub_23A6DF604())
  {
    goto LABEL_3;
  }

  if (*(v1 + 192) == 5)
  {
LABEL_17:
    v25 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_18;
  }

  LOBYTE(aBlock[0]) = *(v1 + 192);
  LOBYTE(v46) = 1;
  if (sub_23A6DF604())
  {
LABEL_3:
    v48 = a1;
    v47 = 3;
    sub_23A6765D8();
    sub_23A6DF714();
    sub_23A6DF714();
    if (aBlock[0] == v46 || (v48 = a1, v47 = 0, sub_23A6DF714(), sub_23A6DF714(), aBlock[0] == v46))
    {
      v13 = *(v1 + 200);
      if (v13)
      {
        aBlock[4] = sub_23A678258;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23A65AE64;
        aBlock[3] = &block_descriptor_0;
        v14 = _Block_copy(aBlock);
        v15 = v13;

        v16 = [v15 remoteObjectProxyWithErrorHandler_];
        _Block_release(v14);

        sub_23A6DF994();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
        if (swift_dynamicCast())
        {
          v17 = aBlock[0];
          v18 = sub_23A6DCDF0();
          sub_23A646D48(v18, v12, &qword_27DF9D240, qword_23A6E1D30);
          v19 = sub_23A6DECC4();
          v20 = *(v19 - 8);
          if ((*(v20 + 48))(v12, 1, v19) == 1)
          {
            sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
          }

          else
          {
            v21 = sub_23A6DECA4();
            v22 = sub_23A6DF8A4();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&dword_23A63D000, v21, v22, "Going to background, disconnecting", v23, 2u);
              MEMORY[0x23EE8A960](v23, -1, -1);
            }

            (*(v20 + 8))(v12, v19);
          }

          [v17 closeSessionWithDelete:0 backgrounded:1];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v24 = *(v2 + 192);
  if (v24 == 5)
  {
    goto LABEL_17;
  }

  v25 = sub_23A6B41BC(v24);
  v26 = v41;
LABEL_18:
  v27 = sub_23A6DCDF0();
  sub_23A646D48(v27, v9, &qword_27DF9D240, qword_23A6E1D30);
  v28 = sub_23A6DECC4();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v9, 1, v28) == 1)
  {

    result = sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v44 = a1;

    v31 = sub_23A6DECA4();
    v32 = sub_23A6DF8A4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v43 = v2;
      v34 = v33;
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136446466;
      v36 = sub_23A657E78(v25, v26, aBlock);

      *(v34 + 4) = v36;
      *(v34 + 12) = 2082;
      LOBYTE(v46) = v44;
      sub_23A676530();
      v37 = sub_23A6DFBD4();
      v39 = sub_23A657E78(v37, v38, aBlock);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_23A63D000, v31, v32, "Foreground state change: [ %{public}s, %{public}s ]", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE8A960](v35, -1, -1);
      v40 = v34;
      v2 = v43;
      MEMORY[0x23EE8A960](v40, -1, -1);
    }

    else
    {
    }

    result = (*(v29 + 8))(v9, v28);
    LOBYTE(a1) = v44;
  }

  *(v2 + 192) = a1;
  return result;
}

uint64_t sub_23A66F7D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v20 - v5;
  v7 = sub_23A6DCDF0();
  sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  v11 = a1;
  v12 = sub_23A6DECA4();
  v13 = sub_23A6DF884();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = a1;
    v21 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v17 = sub_23A6DF634();
    v19 = sub_23A657E78(v17, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_23A63D000, v12, v13, "Error (closeSession): proxy error handler [ %s ]", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x23EE8A960](v15, -1, -1);
    MEMORY[0x23EE8A960](v14, -1, -1);
  }

  return (*(v9 + 8))(v6, v8);
}

uint64_t sub_23A66FA04(char a1)
{
  v2 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C948, &qword_23A6E1E40);
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v67, v6);
  v66 = &v55 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v68 = *(v65 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v65, v9);
  v64 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v58 = &v55 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v55 - v21;
  v61 = sub_23A6DCDF0();
  sub_23A646D48(v61, v22, &qword_27DF9D240, qword_23A6E1D30);
  v23 = sub_23A6DECC4();
  v24 = *(v23 - 8);
  v59 = *(v24 + 48);
  v60 = v24 + 48;
  if (v59(v22, 1, v23) == 1)
  {
    sub_23A646DB0(v22, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v25 = sub_23A6DECA4();
    v26 = sub_23A6DF8A4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v57 = v24;
      v28 = v27;
      *v27 = 67240192;
      *(v27 + 4) = a1 & 1;
      _os_log_impl(&dword_23A63D000, v25, v26, "Closed by remote?=%{BOOL,public}d", v27, 8u);
      v29 = v28;
      v24 = v57;
      MEMORY[0x23EE8A960](v29, -1, -1);
    }

    (*(v24 + 8))(v22, v23);
  }

  *(v2 + 194) = (a1 & 1) == 0;
  if (*(v2 + 208))
  {
    v57 = v24;
    v55 = v23;
    swift_beginAccess();
    v56 = v2;
    v30 = *(v2 + 128);
    v31 = 1 << *(v30 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v30 + 64);
    v34 = (v31 + 63) >> 6;
    v35 = (v4 + 8);
    v62 = v68 + 8;
    v63 = v68 + 16;
    result = swift_bridgeObjectRetain_n();
    v37 = 0;
    v38 = v68;
    v39 = v65;
    if (v33)
    {
      while (1)
      {
        v40 = v37;
LABEL_15:
        v41 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v42 = v64;
        (*(v38 + 16))(v64, *(v30 + 56) + *(v38 + 72) * (v41 | (v40 << 6)), v39);
        v69 = 0;
        v70 = 1;
        v43 = v66;
        sub_23A6DF7D4();
        (*v35)(v43, v67);
        result = (*(v38 + 8))(v42, v39);
        if (!v33)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        return result;
      }

      if (v40 >= v34)
      {
        break;
      }

      v33 = *(v30 + 64 + 8 * v40);
      ++v37;
      if (v33)
      {
        v37 = v40;
        goto LABEL_15;
      }
    }

    v69 = 0;
    v70 = 1;
    v44 = v56;
    sub_23A670A04(&v69);
    v45 = v58;
    sub_23A646D48(v61, v58, &qword_27DF9D240, qword_23A6E1D30);
    v46 = v55;
    if (v59(v45, 1, v55) == 1)
    {
      sub_23A646DB0(v45, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v47 = sub_23A6DECA4();
      v48 = sub_23A6DF8A4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_23A63D000, v47, v48, "Releasing active session", v49, 2u);
        MEMORY[0x23EE8A960](v49, -1, -1);
      }

      (*(v57 + 8))(v45, v46);
    }

    v50 = *(v44 + 208);
    *(v44 + 208) = 0;
  }

  else
  {
    sub_23A646D48(v61, v16, &qword_27DF9D240, qword_23A6E1D30);
    if (v59(v16, 1, v23) == 1)
    {
      return sub_23A646DB0(v16, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v51 = v24;
      v52 = sub_23A6DECA4();
      v53 = sub_23A6DF8A4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_23A63D000, v52, v53, "Cannot find active session", v54, 2u);
        MEMORY[0x23EE8A960](v54, -1, -1);
      }

      return (*(v51 + 8))(v16, v23);
    }
  }
}

uint64_t sub_23A670094(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C948, &qword_23A6E1E40);
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40, v5);
  v39 = v36 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v38, v9);
  v37 = v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v36 - v14;
  v16 = sub_23A6DCDF0();
  sub_23A646D48(v16, v15, &qword_27DF9D240, qword_23A6E1D30);
  v17 = sub_23A6DECC4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_23A646DB0(v15, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v19 = sub_23A6DECA4();
    v20 = sub_23A6DF8A4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      v22 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
      swift_beginAccess();
      *(v21 + 4) = *(*(v2 + v22) + 16);

      _os_log_impl(&dword_23A63D000, v19, v20, "progress updateHandlers count=%ld", v21, 0xCu);
      MEMORY[0x23EE8A960](v21, -1, -1);
    }

    else
    {
    }

    (*(v18 + 8))(v15, v17);
  }

  swift_beginAccess();
  v36[0] = v2;
  v23 = *(v2 + 128);
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;
  v28 = (v3 + 8);
  v36[1] = v7 + 8;
  v36[2] = v7 + 16;
  result = swift_bridgeObjectRetain_n();
  v30 = 0;
  for (i = v38; v26; result = (*(v7 + 8))(v34, i))
  {
    v32 = v30;
LABEL_15:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v37;
    (*(v7 + 16))(v37, *(v23 + 56) + *(v7 + 72) * (v33 | (v32 << 6)), i);
    v42 = v41;
    v43 = 0;
    v35 = v39;
    sub_23A6DF7D4();
    (*v28)(v35, v40);
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v27)
    {

      v42 = v41;
      v43 = 0;
      return sub_23A670A04(&v42);
    }

    v26 = *(v23 + 64 + 8 * v32);
    ++v30;
    if (v26)
    {
      v30 = v32;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A6704FC(unint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C948, &qword_23A6E1E40);
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v47, v5);
  v46 = v42 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v49 = *(v45 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v45, v8);
  v44 = v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v42 - v13;
  v15 = sub_23A6DCDF0();
  sub_23A646D48(v15, v14, &qword_27DF9D240, qword_23A6E1D30);
  v16 = sub_23A6DECC4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    swift_retain_n();
    v18 = sub_23A6DECA4();
    v19 = sub_23A6DF8A4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v43 = v3;
      v21 = v54;
      *v20 = 136446466;
      v22 = sub_23A6DE8E4();
      v24 = sub_23A657E78(v22, v23, &v54);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2050;
      v25 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
      swift_beginAccess();
      v26 = *(*(v2 + v25) + 16);

      *(v20 + 14) = v26;

      _os_log_impl(&dword_23A63D000, v18, v19, "readerFeedback: %{public}s, eventHandlers count=%{public}ld", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v27 = v21;
      v3 = v43;
      MEMORY[0x23EE8A960](v27, -1, -1);
      MEMORY[0x23EE8A960](v20, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v14, v16);
  }

  swift_beginAccess();
  v28 = *(v2 + 128);
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 64);
  v32 = (v29 + 63) >> 6;
  v43 = v49 + 16;
  v33 = (v3 + 8);
  v42[0] = v2;
  v42[1] = v49 + 8;
  result = swift_bridgeObjectRetain_n();
  v35 = 0;
  if (v31)
  {
    while (1)
    {
      v36 = v35;
LABEL_15:
      v37 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v38 = v49;
      v39 = v44;
      v40 = v45;
      (*(v49 + 16))(v44, *(v28 + 56) + *(v49 + 72) * (v37 | (v36 << 6)), v45);
      sub_23A6DA3C0(v48, &v52);
      v50 = v52;
      v51 = v53;
      v41 = v46;
      sub_23A6DF7D4();
      (*v33)(v41, v47);
      result = (*(v38 + 8))(v39, v40);
      if (!v31)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return result;
    }

    if (v36 >= v32)
    {
      break;
    }

    v31 = *(v28 + 64 + 8 * v36);
    ++v35;
    if (v31)
    {
      v35 = v36;
      goto LABEL_15;
    }
  }

  if (*(v42[0] + 208))
  {
    result = sub_23A6DA480(v48, &v52);
    if (v52 != 7)
    {
      return sub_23A670B34(&v52);
    }
  }

  return result;
}

uint64_t sub_23A670A04(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; result = )
  {
    v12 = i;
LABEL_9:
    v13 = *(v5 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v8))));
    v15 = *v13;
    v14 = *(v13 + 8);
    v8 &= v8 - 1;
    v16 = v2;
    v17 = v3;

    v15(&v16);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A670B34(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(v4 + 56) + ((v11 << 10) | (16 * v12));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = v2;

    v15(&v16);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A670C54(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 104) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A670CF4, v1, 0);
}

uint64_t sub_23A670CF4()
{
  v1 = *(v0 + 72);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 72);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 72), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 64);
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0xD00000000000001BLL, 0x800000023A6E8E40, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v0 + 64);
  v12 = *(v11 + 200);
  if (v12)
  {
LABEL_7:
    *(v0 + 80) = v12;
    if (*(v11 + 193))
    {
      v24 = v12;
      v25 = *(v0 + 72);

      v26 = *(v0 + 8);
      v27 = *(v0 + 80);

      return v26(v27);
    }

    else
    {
      v29 = v12;
      v30 = swift_task_alloc();
      *(v0 + 88) = v30;
      *v30 = v0;
      v30[1] = sub_23A671218;
      v31 = *(v0 + 64);
      v32 = *(v0 + 104);

      return sub_23A6713C4(v29, v32);
    }
  }

  *(v11 + 194) = 0;
  sub_23A6DE684();
  v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v14 = sub_23A6DF614();

  v15 = [v13 initWithMachServiceName:v14 options:0];

  v16 = objc_opt_self();
  v17 = [v16 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v18 = [v16 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  type metadata accessor for PaymentCardReaderDelegate();
  [v15 setExportedObject_];

  v19 = swift_allocObject();
  swift_weakInit();
  *(v0 + 48) = sub_23A677F5C;
  *(v0 + 56) = v19;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_23A672F1C;
  *(v0 + 40) = &block_descriptor_297;
  v20 = _Block_copy((v0 + 16));
  v21 = *(v0 + 56);

  [v15 setInterruptionHandler_];
  _Block_release(v20);
  v22 = *(v11 + 200);
  *(v11 + 200) = v15;
  v23 = v15;

  [v23 resume];
  v12 = *(v11 + 200);
  if (v12)
  {
    v11 = *(v0 + 64);
    goto LABEL_7;
  }

  v33 = *(v11 + 194);
  if (*(v0 + 104) == 1)
  {
    sub_23A6763DC();
    swift_allocError();
    if (v33)
    {
      v35 = xmmword_23A6E1D10;
    }

    else
    {
      v35 = xmmword_23A6E1D00;
    }

    *v34 = v35;
    *(v34 + 16) = 3;
  }

  else
  {
    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  swift_willThrow();
  v36 = *(v0 + 72);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_23A671218()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](sub_23A671358, v4, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];
    v7 = v3[10];

    return v6(v7);
  }
}

uint64_t sub_23A671358()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A6713C4(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A671464, v2, 0);
}

uint64_t sub_23A671464()
{
  v1 = *(v0 + 32);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 32);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 32), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0xD000000000000014, 0x800000023A6E8BC0, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  if (*(v0 + 64) == 1)
  {
    sub_23A6763DC();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v12 = *(v0 + 32);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    *(v15 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed) = 0;
    v17 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor);
    v18 = swift_task_alloc();
    *(v0 + 40) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v15;
    *(v18 + 32) = 0;
    v19 = *(MEMORY[0x277D85A40] + 4);
    v20 = swift_task_alloc();
    *(v0 + 48) = v20;
    *v20 = v0;
    v20[1] = sub_23A671734;
    v21 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v20, v15, v17, 0xD000000000000014, 0x800000023A6E8BC0, sub_23A676A20, v18, v21);
  }
}

uint64_t sub_23A671734()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23A6718C0;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_23A67185C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A67185C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A6718C0()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A67192C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v53 = a2;
  v7 = sub_23A6DE574();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v49 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  v21 = *(v16 + 16);
  v55 = a1;
  v48 = v21;
  v21(v20, a1, v15);
  v22 = *(v16 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  LODWORD(v54) = a4;
  *(v23 + 24) = a4;
  v24 = *(v16 + 32);
  v24(v23 + ((v22 + 25) & ~v22), v20, v15);
  v62 = sub_23A676A2C;
  v63 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_23A65AE64;
  v61 = &block_descriptor_143;
  v25 = _Block_copy(&aBlock);
  v56 = a3;

  v26 = [v53 remoteObjectProxyWithErrorHandler_];
  _Block_release(v25);
  sub_23A6DF994();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C940, &qword_23A6E1E38);
  if (swift_dynamicCast())
  {
    v27 = v54 & 1;
    v54 = v57;
    v28 = v50;
    sub_23A6DE464();
    sub_23A6DE544();
    (*(v51 + 8))(v28, v52);
    v48(v20, v55, v15);
    v29 = (v22 + 24) & ~v22;
    v30 = swift_allocObject();
    *(v30 + 16) = v56;
    v24(v30 + v29, v20, v15);
    *(v30 + v29 + v17) = v27;
    v62 = sub_23A676AB0;
    v63 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_23A672B90;
    v61 = &block_descriptor_149;
    v31 = _Block_copy(&aBlock);

    [v54 createContextWithCompletion_];
    _Block_release(v31);
    return swift_unknownObjectRelease();
  }

  v33 = v54;
  v34 = v56;
  v53 = v15;
  v35 = sub_23A6DCDF0();
  v36 = v49;
  sub_23A646D48(v35, v49, &qword_27DF9D240, qword_23A6E1D30);
  v37 = sub_23A6DECC4();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) != 1)
  {
    v42 = sub_23A6DECA4();
    v43 = sub_23A6DF884();
    v44 = v33;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_23A63D000, v42, v43, "Error (refreshContext): unexpected proxy type", v45, 2u);
      MEMORY[0x23EE8A960](v45, -1, -1);
    }

    (*(v38 + 8))(v36, v37);
    v40 = *(v34 + 194);
    if ((v44 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23A6763DC();
    v41 = swift_allocError();
    if (v40)
    {
      v47 = xmmword_23A6E1D10;
    }

    else
    {
      v47 = xmmword_23A6E1D00;
    }

    *v46 = v47;
    *(v46 + 16) = 3;
    goto LABEL_13;
  }

  sub_23A646DB0(v36, &qword_27DF9D240, qword_23A6E1D30);
  v39 = v33;
  v40 = *(v34 + 194);
  if (v39)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for PaymentCardReaderError();
  sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
  v41 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  aBlock = v41;
  return sub_23A6DF764();
}

uint64_t sub_23A671F8C(void *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v57 - v16;
  v63 = sub_23A6DCDF0();
  sub_23A646D48(v63, v17, &qword_27DF9D240, qword_23A6E1D30);
  v18 = sub_23A6DECC4();
  v19 = *(v18 - 8);
  v61 = *(v19 + 48);
  v62 = v19 + 48;
  if (v61(v17, 1, v18) == 1)
  {
    sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v60 = v3;
    v20 = a1;
    v3 = sub_23A6DECA4();
    v21 = sub_23A6DF884();

    if (os_log_type_enabled(v3, v21))
    {
      v22 = swift_slowAlloc();
      v58 = v10;
      v23 = v22;
      v24 = swift_slowAlloc();
      v59 = v19;
      v57 = v24;
      v67[0] = v24;
      *v23 = 136315138;
      v65 = a1;
      v25 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
      v26 = sub_23A6DF634();
      v28 = sub_23A657E78(v26, v27, v67);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_23A63D000, v3, v21, "Error (refreshContext): proxy error handler [ %s ]", v23, 0xCu);
      v29 = v57;
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v19 = v59;
      MEMORY[0x23EE8A960](v29, -1, -1);
      v30 = v23;
      v10 = v58;
      MEMORY[0x23EE8A960](v30, -1, -1);
    }

    (*(v19 + 8))(v17, v18);
    LOBYTE(v3) = v60;
  }

  v31 = sub_23A6DE114();
  v32 = [v31 domain];
  v33 = sub_23A6DF624();
  v35 = v34;

  v36 = *MEMORY[0x277CCA050];
  if (v33 == sub_23A6DF624() && v35 == v37)
  {
  }

  else
  {
    v38 = sub_23A6DFC04();

    if ((v38 & 1) == 0)
    {
LABEL_15:

      v43 = *(v64 + 194);
      if (v3)
      {
        sub_23A6763DC();
        v45 = swift_allocError();
        if (v43)
        {
          v46 = xmmword_23A6E1D10;
        }

        else
        {
          v46 = xmmword_23A6E1D00;
        }

        *v44 = v46;
        *(v44 + 16) = 3;
      }

      else
      {
        type metadata accessor for PaymentCardReaderError();
        sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
        v45 = swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      v67[0] = v45;
      goto LABEL_22;
    }
  }

  if ([v31 code] != 4099)
  {
    goto LABEL_15;
  }

  v39 = [v31 debugDescription];
  v40 = sub_23A6DF624();
  v42 = v41;

  v67[0] = v40;
  v67[1] = v42;
  v65 = 0xD000000000000013;
  v66 = 0x800000023A6E8BF0;
  sub_23A677268();
  LOBYTE(v39) = sub_23A6DF984();

  if ((v39 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v3)
  {
    sub_23A646D48(v63, v14, &qword_27DF9D240, qword_23A6E1D30);
    if (v61(v14, 1, v18) == 1)
    {
      sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v48 = sub_23A6DECA4();
      v49 = sub_23A6DF884();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_23A63D000, v48, v49, "Error (context for read): error 159 - Sandbox", v50, 2u);
        MEMORY[0x23EE8A960](v50, -1, -1);
      }

      (*(v19 + 8))(v14, v18);
    }

    sub_23A6763DC();
    v51 = swift_allocError();
    *v52 = 0;
    *(v52 + 8) = 0;
    *(v52 + 16) = 3;
    v67[0] = v51;
  }

  else
  {
    sub_23A646D48(v63, v10, &qword_27DF9D240, qword_23A6E1D30);
    if (v61(v10, 1, v18) == 1)
    {
      sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v53 = sub_23A6DECA4();
      v54 = sub_23A6DF884();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_23A63D000, v53, v54, "Error (context for non-read): error 159 - Sandbox", v55, 2u);
        MEMORY[0x23EE8A960](v55, -1, -1);
      }

      (*(v19 + 8))(v10, v18);
    }

    type metadata accessor for PaymentCardReaderError();
    sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
    v56 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v67[0] = v56;
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  return sub_23A6DF764();
}

uint64_t sub_23A6726E0(char a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v39 - v16;
  v18 = sub_23A6DE574();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE464();
  sub_23A6DE524();
  (*(v19 + 8))(v23, v18);
  *(a3 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed) = a2;
  if ((a1 & 1) == 0)
  {
    *(a3 + 193) = 0;
    v27 = sub_23A6DCDF0();
    sub_23A646D48(v27, v14, &qword_27DF9D240, qword_23A6E1D30);
    v28 = sub_23A6DECC4();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v14, 1, v28) == 1)
    {
      sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
      if ((a5 & 1) == 0)
      {
LABEL_6:
        type metadata accessor for PaymentCardReaderError();
        sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
        v30 = swift_allocError();
        swift_storeEnumTagMultiPayload();
LABEL_15:
        v39[1] = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
        return sub_23A6DF764();
      }
    }

    else
    {
      v35 = sub_23A6DECA4();
      v36 = sub_23A6DF884();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 67240192;
        *(v37 + 4) = a5 & 1;
        _os_log_impl(&dword_23A63D000, v35, v36, "Error (refreshContext): isRead = %{BOOL,public}d, failed", v37, 8u);
        MEMORY[0x23EE8A960](v37, -1, -1);
      }

      (*(v29 + 8))(v14, v28);
      if ((a5 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_23A6763DC();
    v30 = swift_allocError();
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 3;
    goto LABEL_15;
  }

  *(a3 + 193) = 1;
  v24 = sub_23A6DCDF0();
  sub_23A646D48(v24, v17, &qword_27DF9D240, qword_23A6E1D30);
  v25 = sub_23A6DECC4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v17, 1, v25) == 1)
  {
    sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v31 = sub_23A6DECA4();
    v32 = sub_23A6DF8A4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23A63D000, v31, v32, "Result (refreshContext): success", v33, 2u);
      MEMORY[0x23EE8A960](v33, -1, -1);
    }

    (*(v26 + 8))(v17, v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  return sub_23A6DF774();
}

uint64_t sub_23A672B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_23A672C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v20 - v8;
  v10 = sub_23A6DCDF0();
  sub_23A646D48(v10, v9, &qword_27DF9D240, qword_23A6E1D30);
  v11 = sub_23A6DECC4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v13 = sub_23A6DECA4();
    v14 = sub_23A6DF8A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23A63D000, v13, v14, "Connection to PaymentTerminalService interrupted, nullifying connection", v15, 2u);
      MEMORY[0x23EE8A960](v15, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_23A6DF7B4();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    sub_23A64A15C(0, 0, v4, &unk_23A6E20E0, v19);
  }

  return result;
}

uint64_t sub_23A672EBC()
{
  v1 = *(v0 + 16);
  sub_23A672F60();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A672F1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_23A672F60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v15 - v4;
  v6 = *(v0 + 200);
  if (v6)
  {
    [v6 setExportedObject_];
    v7 = *(v0 + 200);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 200) = 0;

  *(v0 + 193) = 0;
  if ((*(v0 + 194) & 1) == 0)
  {
    v8 = sub_23A6DCDF0();
    sub_23A646D48(v8, v5, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_23A646DB0(v5, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = v0;
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23A63D000, v12, v13, "Unexpected interruption of XPC connection", v14, 2u);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      (*(v10 + 8))(v5, v9);
      v0 = v11;
    }

    (*(*v0 + 800))(1);
  }
}

uint64_t sub_23A673170(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v10 - v5;
  v7 = sub_23A6DF7B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a1;
  sub_23A64A15C(0, 0, v6, &unk_23A6E1E50, v8);
}

uint64_t sub_23A673288()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFA5E88;
  v0[2] = qword_27DFA5E88;
  v2 = *v1 + 800;
  v0[3] = *v2;
  v0[4] = v2 & 0xFFFFFFFFFFFFLL | 0x352E000000000000;

  return MEMORY[0x2822009F8](sub_23A673344, v1, 0);
}

uint64_t sub_23A673344()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))(*(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A6734E4()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFA5E88;
  v0[3] = qword_27DFA5E88;
  v2 = *v1 + 808;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0xFE4D000000000000;

  return MEMORY[0x2822009F8](sub_23A678250, v1, 0);
}

uint64_t sub_23A6735E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_23A6DF7B4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  sub_23A64A15C(0, 0, v9, a3, v11);
}

uint64_t sub_23A6736F4()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFA5E88;
  v0[3] = qword_27DFA5E88;
  v2 = *v1 + 816;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x6850000000000000;

  return MEMORY[0x2822009F8](sub_23A6737B0, v1, 0);
}

uint64_t sub_23A6737B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))(*(v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A673834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v15 - v10;
  v12 = sub_23A6DF7B4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  sub_23A64A15C(0, 0, v11, a5, v13);
}

uint64_t sub_23A673938(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = sub_23A6DF7B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a2;
  sub_23A64A15C(0, 0, v7, &unk_23A6E1E80, v9);
}

uint64_t sub_23A673A50()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFA5E88;
  v0[2] = qword_27DFA5E88;
  v2 = *v1 + 792;
  v0[3] = *v2;
  v0[4] = v2 & 0xFFFFFFFFFFFFLL | 0xA538000000000000;

  return MEMORY[0x2822009F8](sub_23A673344, v1, 0);
}

uint64_t sub_23A673B0C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23A673B44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_23A673B98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_23A6DF6F4() != a1 || v9 != a2)
  {
    v10 = sub_23A6DFC04();

    if (v10)
    {
      return v8;
    }

    v8 = sub_23A6DF6A4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23A673C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_23A6DFB04();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23A673D88, 0, 0);
}

uint64_t sub_23A673D88()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_23A6DFB14();
  v7 = sub_23A6781B0(&qword_27DF9C9C0, MEMORY[0x277D85928]);
  sub_23A6DFC64();
  sub_23A6781B0(&qword_27DF9C9C8, MEMORY[0x277D858F8]);
  sub_23A6DFB24();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_23A673F18;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_23A673F18()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A6740D4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_23A6740D4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_23A674140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23A648D1C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23A675168();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_23A6749C0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23A6742C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_23A648D1C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23A6753F0(&qword_27DF9C9B0, &qword_23A6E20B8);
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_23A674BC4(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_23A674388(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v50, v8);
  v49 = &v42 - v9;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9D0, &qword_23A6E2108);
  v47 = a2;
  result = sub_23A6DFB74();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_23A6DFCE4();
      sub_23A6DF684();
      result = sub_23A6DFD14();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_23A674710(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = a2;
  result = sub_23A6DFB74();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = 16 * (v21 | (v11 << 6));
      v25 = (*(v7 + 48) + v24);
      v26 = *v25;
      v27 = v25[1];
      v39 = *(*(v7 + 56) + v24);
      if ((v38 & 1) == 0)
      {
      }

      v28 = *(v10 + 40);
      sub_23A6DFCE4();
      sub_23A6DF684();
      result = sub_23A6DFD14();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = 16 * v18;
      v20 = (*(v10 + 48) + v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v10 + 56) + v19) = v39;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero((v7 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}