id sub_2386CF7FC()
{
  v1 = sub_23875C1E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = sub_2387587E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate;
  swift_beginAccess();
  if (*&v0[v19])
  {
    v20 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
    swift_beginAccess();
    if ((*(v15 + 48))(&v0[v20], 1, v14) || ((*(v15 + 16))(v18, &v0[v20], v14), v21 = sub_2387587D0(), result = (*(v15 + 8))(v18, v14), (v21 & 1) == 0))
    {
      v23 = sub_23875BC40();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      sub_2387587C0();
      (*(v15 + 56))(v13, 0, 1, v14);
      swift_beginAccess();
      sub_2385309FC(v13, &v0[v20], &qword_27DF0B328, &qword_238768050);
      swift_endAccess();
      return [v0 reloadSpecifiers];
    }
  }

  else
  {
    sub_23875C120();
    v24 = sub_23875C1B0();
    v25 = sub_23875EFE0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2383F8000, v24, v25, "specifierForAccountStartDate should exists", v26, 2u);
      MEMORY[0x23EE64DF0](v26, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_2386CFBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_31()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2386CFC7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_2386C88C0(a1, v4, v5, v6);
}

void sub_2386CFD30(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2386CFD40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238449A7C;

  return sub_2386CB6A0(a1, v5);
}

uint64_t sub_2386CFDF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2384494A4;

  return sub_2386CB6A0(a1, v5);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2386CFED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2386CFF24(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_23875B940();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_238758350();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2386D00C8, 0, 0);
}

uint64_t sub_2386D00C8()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v4 = v0[10];
    v5 = v0[6];
    v57 = (v5 + 48);
    v53 = (v5 + 32);
    v54 = (v5 + 8);
    v55 = (v4 + 32);
    v56 = (v4 + 56);
    v50 = v4;
    v52 = (v4 + 48);
    v6 = (v1 + 40);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v0[4];
      v10 = v0[5];
      v12 = *(v6 - 1);
      v13 = *v6;
      v14 = *(v3 + 16);

      sub_2387588A0();
      sub_2387591A0();
      v15 = (*v57)(v11, 1, v10);
      v16 = v0[4];
      if (v15 == 1)
      {
        v9 = v0[8];
        v8 = v0[9];

        sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
        (*v56)(v9, 1, 1, v8);
      }

      else
      {
        (*v53)(v0[7], v0[4], v0[5]);
        sub_238585454();
        if (v17)
        {
          (*v54)(v0[7], v0[5]);

          v18 = 1;
        }

        else
        {
          v51 = v7;
          v19 = sub_23875B960();
          v21 = v20;
          v22 = objc_allocWithZone(MEMORY[0x277CBF758]);
          sub_23844C8EC(v19, v21);
          v23 = sub_23875B980();
          v24 = [v22 initWithData_];

          sub_23844C954(v19, v21);
          v25 = v0[12];
          if (v24)
          {
            sub_238758030();
            sub_238758320();
          }

          else
          {
            v26 = v0[12];
            sub_238758320();
          }

          v27 = v0[12];
          v29 = v0[8];
          v28 = v0[9];
          v30 = v0[7];
          v31 = v0[5];

          (*v54)(v30, v31);
          (*v55)(v29, v27, v28);
          v18 = 0;
          v7 = v51;
        }

        v33 = v0[8];
        v32 = v0[9];
        (*v56)(v33, v18, 1, v32);
        if ((*v52)(v33, 1, v32) != 1)
        {
          v34 = v0[13];
          v35 = v0[11];
          v36 = v0[9];
          v37 = *v55;
          (*v55)(v34, v0[8], v36);
          v37(v35, v34, v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_2384986AC(0, v7[2] + 1, 1, v7);
          }

          v39 = v7[2];
          v38 = v7[3];
          if (v39 >= v38 >> 1)
          {
            v7 = sub_2384986AC(v38 > 1, v39 + 1, 1, v7);
          }

          v40 = v0[11];
          v41 = v0[9];
          v7[2] = v39 + 1;
          v37(v7 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v39, v40, v41);
          goto LABEL_5;
        }
      }

      sub_238439884(v0[8], &qword_27DF0AF98, &unk_238775820);
LABEL_5:
      v6 += 2;
      if (!--v2)
      {
        goto LABEL_20;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_20:
  v43 = v0[12];
  v42 = v0[13];
  v44 = v0[11];
  v46 = v0[7];
  v45 = v0[8];
  v47 = v0[4];

  v48 = v0[1];

  return v48(v7);
}

uint64_t sub_2386D0620(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_23875B940();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2386D0728, 0, 0);
}

uint64_t sub_2386D0728()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0[4] + 16);
  sub_238759180();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_238439884(v0[5], &qword_27DF0D040, &qword_2387676A0);
    v7 = 0;
  }

  else
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    (*(v11 + 32))(v8, v0[5], v10);
    (*(v11 + 16))(v9, v8, v10);
    v7 = _s12FinanceKitUI12OrderReceiptC7fileUrlACSg10Foundation3URLV_tcfC_0(v9);
    (*(v11 + 8))(v8, v10);
  }

  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[5];

  v15 = v0[1];

  return v15(v7);
}

uint64_t sub_2386D0880(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_23875B940();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2386D0988, 0, 0);
}

uint64_t sub_2386D0988()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0[4] + 16);
  sub_238759190();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_238439884(v0[5], &qword_27DF0D040, &qword_2387676A0);
    v7 = 0;
  }

  else
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    (*(v11 + 32))(v8, v0[5], v10);
    (*(v11 + 16))(v9, v8, v10);
    v7 = _s12FinanceKitUI16OrderReturnLabelC7fileUrlACSg10Foundation3URLV_tcfC_0(v9);
    (*(v11 + 8))(v8, v10);
  }

  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[5];

  v15 = v0[1];

  return v15(v7);
}

uint64_t sub_2386D0AE0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2386D0B3C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238580A3C;

  return sub_2386CFF24(a1);
}

uint64_t sub_2386D0BD4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238586094;

  return sub_2386D0620(a1, a2);
}

uint64_t sub_2386D0C7C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238586094;

  return sub_2386D0880(a1, a2);
}

unint64_t sub_2386D0D24(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23875EA80();
  sub_23875F700();
  sub_23875EB30();
  v4 = sub_23875F760();

  return sub_238547FD4(a1, v4);
}

unint64_t sub_2386D0DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEC0, &qword_23876E8D8);
    v3 = sub_23875F570();
    v4 = a1 + 32;

    while (1)
    {
      sub_2386D0EC0(v4, &v11);
      v5 = v11;
      result = sub_2386D0D24(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23846F7C4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_2386D0EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4C8, &qword_23876E8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2386D0F30@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_23875E4A0();
  v10 = v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a1 & 1;
  *(v11 + 32) = a2;

  sub_23875E4A0();
  sub_23875C5C0();
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = sub_2386D1BAC;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
  result = *&v15;
  *(a3 + 64) = v15;
  return result;
}

uint64_t sub_2386D1078@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v31[1] = a1;
  v34 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143A8, &qword_23877FD78);
  v2 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143B0, &qword_23877FD80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C630();
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_23875CF50();
  v16 = *(*(v15 - 8) + 104);
  v16(v13, v14, v15);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v17 = qword_2814F1B90;
  v18 = sub_23875E0A0();
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143B8, &qword_23877FD88) + 36)] = v18;
  sub_23875E4A0();
  sub_23875C5C0();
  v19 = &v13[*(v7 + 36)];
  v20 = v37;
  *v19 = v36;
  *(v19 + 1) = v20;
  *(v19 + 2) = v38;
  v16(v6, v14, v15);

  MEMORY[0x23EE62F40](v21);
  sub_23875C740();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143C0, &qword_23877FD90);
  v23 = &v6[*(v22 + 52)];
  v24 = v40;
  *v23 = v39;
  *(v23 + 1) = v24;
  *(v23 + 4) = v41;
  *&v6[*(v22 + 56)] = 256;
  sub_23875E4A0();
  sub_23875C5C0();
  v25 = &v6[*(v32 + 36)];
  v26 = v43;
  *v25 = v42;
  *(v25 + 1) = v26;
  *(v25 + 2) = v44;
  sub_23843981C(v13, v10, &qword_27DF143B0, &qword_23877FD80);
  v27 = v35;
  sub_23843981C(v6, v35, &qword_27DF143A8, &qword_23877FD78);
  v28 = v34;
  sub_23843981C(v10, v34, &qword_27DF143B0, &qword_23877FD80);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF143C8, &qword_23877FD98);
  sub_23843981C(v27, v28 + *(v29 + 48), &qword_27DF143A8, &qword_23877FD78);
  sub_238439884(v6, &qword_27DF143A8, &qword_23877FD78);
  sub_238439884(v13, &qword_27DF143B0, &qword_23877FD80);
  sub_238439884(v27, &qword_27DF143A8, &qword_23877FD78);
  sub_238439884(v10, &qword_27DF143B0, &qword_23877FD80);
}

uint64_t sub_2386D14F8(uint64_t a1)
{
  v2 = sub_23875AE10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CC8468] || v8 == *MEMORY[0x277CC8458])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_238763B60;
    v10 = qword_2814F0880;
    v11 = 0x3FD0000000000000;
  }

  else if (v8 == *MEMORY[0x277CC8480])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_238763B60;
    v10 = qword_2814F0880;
    v11 = 0x3FE0000000000000;
  }

  else
  {
    if (v8 != *MEMORY[0x277CC8460])
    {
      v14 = *(v3 + 8);
      v14(a1, v2);
      v14(v7, v2);
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_238763B60;
    v10 = qword_2814F0880;
    v11 = 0x3FE8000000000000;
  }

  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  *(v9 + 32) = sub_23875E0A0();
  *(v9 + 40) = sub_23875E0A0();
  (*(v3 + 8))(a1, v2);
  return v11;
}

uint64_t sub_2386D1800(uint64_t a1)
{
  v2 = sub_2387581B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CC6E48])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_238763B60;
    v10 = 0x3FE0000000000000;
    if (qword_2814F0880 != -1)
    {
      goto LABEL_10;
    }
  }

  else if (v8 == *MEMORY[0x277CC6E20])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_238763B60;
    v10 = 0x3FE8000000000000;
    if (qword_2814F0880 != -1)
    {
LABEL_10:
      swift_once();
    }
  }

  else
  {
    if (v8 != *MEMORY[0x277CC6E18])
    {
      v13 = *(v3 + 8);
      v13(a1, v2);
      v13(v7, v2);
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_238763B60;
    v10 = 0x3FD0000000000000;
    if (qword_2814F0880 != -1)
    {
      goto LABEL_10;
    }
  }

  v11 = qword_2814F1B90;
  *(v9 + 32) = sub_23875E0A0();
  *(v9 + 40) = sub_23875E0A0();
  (*(v3 + 8))(a1, v2);
  return v10;
}

uint64_t sub_2386D1AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2386D1B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2386D1BAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2386D1078(*(v1 + 32), a1);
}

unint64_t sub_2386D1BCC()
{
  result = qword_27DF143D0;
  if (!qword_27DF143D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF143D8, &qword_23877FDA8);
    sub_2386D1C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF143D0);
  }

  return result;
}

unint64_t sub_2386D1C58()
{
  result = qword_27DF143E0;
  if (!qword_27DF143E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF143E8, qword_23877FDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF143E0);
  }

  return result;
}

unint64_t sub_2386D1CC0()
{
  result = qword_27DF143F0;
  if (!qword_27DF143F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF143F0);
  }

  return result;
}

uint64_t type metadata accessor for FetchedReturnDetails()
{
  result = qword_27DF143F8;
  if (!qword_27DF143F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386D1D88()
{
  sub_23875A710();
  if (v0 <= 0x3F)
  {
    sub_2386D1E0C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2386D1E0C()
{
  if (!qword_27DF14408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11A48, &qword_23877A090);
    v0 = sub_23875E1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF14408);
    }
  }
}

unint64_t sub_2386D1E8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_238757DF0();
  v8 = sub_238757D80();
  v9 = MEMORY[0x23EE5C810](a1);
  [v8 setPredicate_];

  result = sub_23875F140();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    v12 = 0;
    goto LABEL_7;
  }

  v18 = result;
  v19 = sub_23875F3A0();
  result = v18;
  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EE63F70](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 32);
LABEL_6:
    v12 = v11;

LABEL_7:
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A48, &qword_23877A090);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();

    v17 = sub_238627B7C(v12, a2, sub_2386D2B10, v13);

    return v17;
  }

  __break(1u);
  return result;
}

void sub_2386D2034(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 ecommerceOrderContent];
  if (v7)
  {
    v27 = a1;
    v28 = v7;
    v8 = sub_23875A580();
    v9 = v8;
    v29 = a4;
    if (v8 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23875F3A0())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x23EE63F70](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_23875ED50();
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v15 = [v13 returnIdentifier];
        v16 = sub_23875EA80();
        v18 = v17;

        if (v16 == a2 && v18 == a3)
        {

LABEL_19:

          sub_23859FE4C(v27, v28, v13, v29);
          v25 = type metadata accessor for ReturnDetails.ViewModel(0);
          v21 = *(*(v25 - 8) + 56);
          v22 = v25;
          v23 = v29;
          v24 = 0;
          goto LABEL_20;
        }

        v19 = sub_23875F630();

        if (v19)
        {
          goto LABEL_19;
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    v26 = type metadata accessor for ReturnDetails.ViewModel(0);
    (*(*(v26 - 8) + 56))(v29, 1, 1, v26);
  }

  else
  {
    v20 = type metadata accessor for ReturnDetails.ViewModel(0);
    v21 = *(*(v20 - 8) + 56);
    v22 = v20;
    v23 = a4;
    v24 = 1;
LABEL_20:

    v21(v23, v24, 1, v22);
  }
}

uint64_t sub_2386D2344@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14410, &unk_23877FE90);
  v46 = *(v47 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A38, &unk_238779510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A30, &qword_23877FEA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for ReturnDetails.ViewModel(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(type metadata accessor for FetchedReturnDetails() + 20);
  v45 = v1;
  v25 = (v1 + v24);
  v27 = *v25;
  v26 = v25[1];
  *&v55 = v27;
  *(&v55 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14418, &qword_23877FEA8);
  sub_23875E1B0();
  sub_23863C92C(v10);

  sub_2386D297C(v10, v7);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF11A38, &unk_238779510);
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  else
  {
    sub_2384396E4(v7, v15, &qword_27DF11A30, &qword_23877FEA0);
    sub_23875ED50();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_238439884(v10, &qword_27DF11A38, &unk_238779510);
    sub_2384396E4(v15, v18, &qword_27DF11A30, &qword_23877FEA0);
  }

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_238439884(v18, &qword_27DF11A30, &qword_23877FEA0);
    return (*(v46 + 56))(v48, 1, 1, v47);
  }

  else
  {
    sub_2386D29EC(v18, v23);
    v29 = v44;
    sub_2386D2A50(v23, v44);
    v30 = type metadata accessor for ReturnDetails(0);
    v31 = v29 + v30[5];
    LOBYTE(v49) = 1;
    v55 = 0u;
    v56 = 0u;
    v57[0] = 1;
    memset(&v57[8], 0, 32);
    v57[40] = 1;
    sub_23875E1A0();
    sub_2386D2AB4(v23);
    v32 = v54;
    v58 = v54;
    v33 = v53;
    v34 = v52;
    *&v57[16] = v52;
    *&v57[32] = v53;
    v35 = v50;
    v36 = v49;
    v56 = v50;
    *v57 = v51;
    v55 = v49;
    *(v31 + 32) = v51;
    *(v31 + 48) = v34;
    *(v31 + 64) = v33;
    *(v31 + 80) = v32;
    *v31 = v36;
    *(v31 + 16) = v35;
    v37 = v30[6];
    *(v29 + v37) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
    swift_storeEnumTagMultiPayload();
    v38 = v30[7];
    *(v29 + v38) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v39 = v47;
    v40 = v29 + *(v47 + 36);
    v41 = sub_23875A710();
    (*(*(v41 - 8) + 16))(v40, v45, v41);
    v42 = v40 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
    *v42 = swift_getKeyPath();
    *(v42 + 8) = 0;
    v43 = v48;
    sub_2384396E4(v29, v48, &qword_27DF14410, &unk_23877FE90);
    return (*(v46 + 56))(v43, 0, 1, v39);
  }
}

uint64_t sub_2386D297C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A38, &unk_238779510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D29EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetails.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D2A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetails.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D2AB4(uint64_t a1)
{
  v2 = type metadata accessor for ReturnDetails.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386D2B18()
{
  result = qword_27DF14420;
  if (!qword_27DF14420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14428, &qword_23877FF48);
    sub_2386D2B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14420);
  }

  return result;
}

unint64_t sub_2386D2B9C()
{
  result = qword_27DF14430;
  if (!qword_27DF14430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14410, &unk_23877FE90);
    sub_2386D2C88(&qword_27DF14438, type metadata accessor for ReturnDetails);
    sub_2386D2C88(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14430);
  }

  return result;
}

uint64_t sub_2386D2C88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2386D2CE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    v2 = a2[24] ^ a1[24] ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_2386D2D30(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2386D2D74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2386D2DE8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_238763B60;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v14 = MEMORY[0x277D83B88];
      v15 = MEMORY[0x277D83C10];
      *(v13 + 56) = MEMORY[0x277D83B88];
      *(v13 + 64) = v15;
      *(v13 + 32) = a2 + 1;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 72) = a3;
      if (qword_2814F0880 == -1)
      {
LABEL_11:
        v12 = qword_2814F1B90;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_238763B60;
  v8 = a2 + 1;
  v9 = __OFADD__(a2, 1);
  if (a1)
  {
    if (!v9)
    {
      v10 = MEMORY[0x277D83B88];
      v11 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v11;
      *(v7 + 32) = v8;
      *(v7 + 96) = v10;
      *(v7 + 104) = v11;
      *(v7 + 72) = a3;
      if (qword_2814F0880 == -1)
      {
LABEL_8:
        v12 = qword_2814F1B90;
        goto LABEL_16;
      }

LABEL_21:
      swift_once();
      goto LABEL_8;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9)
  {
    goto LABEL_20;
  }

  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v17;
  *(v7 + 32) = v8;
  *(v7 + 96) = v16;
  *(v7 + 104) = v17;
  *(v7 + 72) = a3;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
LABEL_16:
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v12 localizedStringForKey:v18 value:v19 table:v20];

  sub_23875EA80();
  v22 = sub_23875EAA0();

  return v22;
}

uint64_t sub_2386D30B4@<X0>(uint64_t a1@<X8>)
{
  sub_2386D2DE8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  sub_2384397A8();
  v3 = sub_23875DAA0();
  v5 = v4;
  v7 = v6;
  sub_23875D7F0();
  v8 = sub_23875DA60();
  v10 = v9;
  v12 = v11;

  sub_2384397FC(v3, v5, v7 & 1);

  sub_23875D440();
  v13 = sub_23875DA20();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2384397FC(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

unint64_t sub_2386D31F0()
{
  result = qword_27DF14440;
  if (!qword_27DF14440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14440);
  }

  return result;
}

uint64_t type metadata accessor for OrderWidgetImageView()
{
  result = qword_27DF14448;
  if (!qword_27DF14448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386D32C0()
{
  result = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2386D3354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v42 = type metadata accessor for ExtractedOrderImageView();
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14458, &qword_238780108);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = type metadata accessor for ClassicOrderImageView();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2386D3970(v2, v25, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2384E73D4(v25, v9, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v26 = type metadata accessor for OrderWidgetImageView();
    v27 = *(v2 + *(v26 + 20));
    v28 = *(v2 + *(v26 + 28));
    sub_2386D3970(v9, v5, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v29 = v42;
    *&v5[*(v42 + 20)] = v27;
    *&v5[*(v29 + 24)] = v28;
    sub_2386D3970(v5, v13, type metadata accessor for ExtractedOrderImageView);
    swift_storeEnumTagMultiPayload();
    sub_2386D3928(&qword_27DF14460, type metadata accessor for ClassicOrderImageView);
    sub_2386D3928(&qword_27DF14468, type metadata accessor for ExtractedOrderImageView);
    sub_23875D1B0();
    sub_2386D39D8(v5, type metadata accessor for ExtractedOrderImageView);
    v30 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v31 = v9;
  }

  else
  {
    sub_2384E73D4(v25, v21, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v32 = type metadata accessor for OrderWidgetImageView();
    v33 = *(v2 + v32[5]);
    v34 = *(v2 + v32[6]);
    v35 = *(v2 + v32[7]);
    sub_2386D3970(v21, v17, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    *&v17[v14[5]] = v33;
    *&v17[v14[6]] = v34;
    *&v17[v14[7]] = v35;
    v36 = v14[8];
    *&v17[v36] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    v37 = v14[9];
    *&v17[v37] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
    swift_storeEnumTagMultiPayload();
    v38 = &v17[v14[10]];
    *v38 = swift_getKeyPath();
    v38[40] = 0;
    v39 = v14[11];
    *&v17[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
    swift_storeEnumTagMultiPayload();
    sub_2386D3970(v17, v13, type metadata accessor for ClassicOrderImageView);
    swift_storeEnumTagMultiPayload();
    sub_2386D3928(&qword_27DF14460, type metadata accessor for ClassicOrderImageView);
    sub_2386D3928(&qword_27DF14468, type metadata accessor for ExtractedOrderImageView);
    sub_23875D1B0();
    sub_2386D39D8(v17, type metadata accessor for ClassicOrderImageView);
    v30 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v31 = v21;
  }

  return sub_2386D39D8(v31, v30);
}

uint64_t sub_2386D3928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2386D3970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386D39D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2386D3A38()
{
  result = qword_27DF14470;
  if (!qword_27DF14470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14478, &qword_2387801E0);
    sub_2386D3928(&qword_27DF14460, type metadata accessor for ClassicOrderImageView);
    sub_2386D3928(&qword_27DF14468, type metadata accessor for ExtractedOrderImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14470);
  }

  return result;
}

uint64_t sub_2386D3B24(void *a1, void *a2, int *a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_23875F630() & 1) != 0)
  {
    v7 = a3[5];
    v8 = a1 + v7;
    v9 = a2 + v7;
    if (MEMORY[0x23EE5FA60](a1 + v7, a2 + v7))
    {
      v10 = type metadata accessor for ProductImage.ViewModel(0);
      if (sub_238518C1C(*&v8[*(v10 + 20)], *&v9[*(v10 + 20)]) & 1) != 0 && (MEMORY[0x23EE5DB60](a1 + a3[6], a2 + a3[6]))
      {
        v11 = a3[7];

        JUMPOUT(0x23EE5FB50);
      }
    }
  }

  return 0;
}

uint64_t sub_2386D3C00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144A0, &qword_238780290);
  v3 = *(*(v26[0] - 8) + 64);
  MEMORY[0x28223BE20](v26[0]);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144A8, &qword_238780298);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144B0, &qword_2387802A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  v14 = sub_23875C880();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1 + *(type metadata accessor for OrderSearchActiveRow(0) + 20);
  sub_2384D5138(v18);
  LOBYTE(v19) = sub_23875C860();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    *v13 = sub_23875D030();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144E0, &qword_2387802B8);
    sub_2386D3F8C(v2, &v13[*(v20 + 44)]);
    *&v13[*(v10 + 36)] = 256;
    v21 = &qword_27DF144B0;
    v22 = &qword_2387802A0;
    sub_23843981C(v13, v9, &qword_27DF144B0, &qword_2387802A0);
    swift_storeEnumTagMultiPayload();
    sub_2386D5FD4();
    sub_23843A3E8(&qword_27DF144D8, &qword_27DF144A0, &qword_238780290);
    sub_23875D1B0();
    v23 = v13;
  }

  else
  {
    *v5 = sub_23875CE60();
    *(v5 + 1) = 0x4028000000000000;
    v5[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144B8, &qword_2387802A8);
    sub_2386D506C(v2, &v5[*(v24 + 44)]);
    v21 = &qword_27DF144A0;
    v22 = &qword_238780290;
    sub_23843981C(v5, v9, &qword_27DF144A0, &qword_238780290);
    swift_storeEnumTagMultiPayload();
    sub_2386D5FD4();
    sub_23843A3E8(&qword_27DF144D8, &qword_27DF144A0, &qword_238780290);
    sub_23875D1B0();
    v23 = v5;
  }

  return sub_238439884(v23, v21, v22);
}

uint64_t sub_2386D3F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v64 - v7;
  v72 = sub_23875DFD0();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v72);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144E8, &qword_2387802C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v74 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - v23;
  sub_23875ED50();
  v69 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v24 = sub_23875CE50();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v68 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144F0, &qword_2387802C8) + 44)];
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  sub_238620D88(a1 + *(active + 20), v18);
  v27 = type metadata accessor for ProductImage(0);
  v67 = a1;
  v28 = *(v27 + 20);
  *&v18[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v73 = v24;
  swift_storeEnumTagMultiPayload();
  (*(v8 + 104))(v11, *MEMORY[0x277CE0EE0], v72);
  v29 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v31 = &v18[*(v12 + 36)];
  v32 = type metadata accessor for OrderImageStyleModifier();
  *&v31[*(v32 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v31[*(v32 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v31 = xmmword_23876FD10;
  *(v31 + 2) = 0;
  v31[24] = 1;
  *(v31 + 4) = v29;
  v31[40] = 0;
  sub_23843981C(v18, v15, &qword_27DF0E618, &unk_2387766D0);
  sub_23843981C(v15, v25, &qword_27DF0E618, &unk_2387766D0);
  v33 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF144F8, &qword_238780340) + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_238439884(v18, &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v15, &qword_27DF0E618, &unk_2387766D0);

  v34 = v67[1];
  v76 = *v67;
  v77 = v34;
  sub_2384397A8();

  v35 = sub_23875DAA0();
  v37 = v36;
  LOBYTE(v29) = v38;
  sub_23875D820();
  v39 = sub_23875DA60();
  v41 = v40;
  v43 = v42;

  sub_2384397FC(v35, v37, v29 & 1);

  sub_23875D890();
  v72 = sub_23875D9E0();
  v45 = v44;
  v66 = v46;
  v68 = v47;
  sub_2384397FC(v39, v41, v43 & 1);

  v65 = sub_23875D000();
  sub_2386D4700(&v76);
  v48 = v76;
  v49 = v77;
  v50 = v78;
  v51 = v79;
  v52 = v75;
  sub_2386D4B3C(v75);
  v53 = v74;
  sub_23843981C(v73, v74, &qword_27DF144E8, &qword_2387802C0);
  v54 = v71;
  sub_23843981C(v52, v71, &qword_27DF0A028, &qword_238764FC0);
  v55 = v53;
  v56 = v70;
  sub_23843981C(v55, v70, &qword_27DF144E8, &qword_2387802C0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14500, &qword_238780348);
  v58 = v56 + v57[12];
  v59 = v72;
  *v58 = v72;
  *(v58 + 8) = v45;
  v60 = v66 & 1;
  *(v58 + 16) = v66 & 1;
  v61 = v65;
  *(v58 + 24) = v68;
  *(v58 + 32) = v61;
  *(v58 + 40) = sub_23843480C;
  *(v58 + 48) = 0;
  v62 = v56 + v57[16];
  *v62 = v48;
  *(v62 + 8) = v49;
  *(v62 + 16) = v50;
  *(v62 + 24) = v51;
  sub_23843981C(v54, v56 + v57[20], &qword_27DF0A028, &qword_238764FC0);
  sub_23843980C(v59, v45, v60);

  sub_23843980C(v48, v49, v50);

  sub_238439884(v75, &qword_27DF0A028, &qword_238764FC0);
  sub_238439884(v73, &qword_27DF144E8, &qword_2387802C0);
  sub_238439884(v54, &qword_27DF0A028, &qword_238764FC0);
  sub_2384397FC(v48, v49, v50);

  sub_2384397FC(v72, v45, v60);

  sub_238439884(v74, &qword_27DF144E8, &qword_2387802C0);
}

uint64_t sub_2386D4700@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v2 = sub_23875BE40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23875BE20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23875BD20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2387595E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_23875B1B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_23875B0A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(type metadata accessor for OrderSearchActiveRow.ViewModel(0) + 28);
  (*(v13 + 16))(v16, v1 + v40, v12);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23875B1A0();
  sub_2386D608C(&qword_27DF0A050, MEMORY[0x277CC8560]);
  sub_2386D608C(&qword_27DF118C0, MEMORY[0x277CC8540]);
  v17 = sub_23875DA80();
  v19 = v18;
  v21 = v20;
  sub_23875D7F0();
  v22 = sub_23875DA60();
  v24 = v23;
  LOBYTE(v12) = v25;

  sub_2384397FC(v17, v19, v21 & 1);

  sub_23875D890();
  v26 = sub_23875D9E0();
  v28 = v27;
  v30 = v29;
  sub_2384397FC(v22, v24, v12 & 1);

  sub_238495020();
  sub_23875B090();
  v42 = v43;
  v31 = sub_23875DA20();
  v33 = v32;
  LOBYTE(v22) = v34;
  v36 = v35;
  sub_2384397FC(v26, v28, v30 & 1);

  v38 = v41;
  *v41 = v31;
  v38[1] = v33;
  *(v38 + 16) = v22 & 1;
  v38[3] = v36;
  return result;
}

uint64_t sub_2386D4B3C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_23875C880();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE40();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23875BE20();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23875BD20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2387595E0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2387590C0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_2387590B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  (*(v16 + 16))(v19, v1 + *(active + 24), v15);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_2386D608C(&qword_27DF0A030, MEMORY[0x277CC7708]);
  sub_2386D608C(&qword_27DF0A038, MEMORY[0x277CC76F0]);
  v21 = sub_23875DA80();
  v23 = v22;
  v25 = v24;
  sub_23875D7F0();
  v26 = sub_23875DA60();
  v28 = v27;
  v30 = v29;

  sub_2384397FC(v21, v23, v25 & 1);

  v53 = sub_23875D440();
  v31 = sub_23875DA20();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_2384397FC(v26, v28, v30 & 1);

  v38 = v1 + *(type metadata accessor for OrderSearchActiveRow(0) + 20);
  v39 = v49;
  sub_2384D5138(v49);
  LOBYTE(v16) = sub_23875C860();
  (*(v50 + 8))(v39, v51);
  if (v16)
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  KeyPath = swift_getKeyPath();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v43 = v52;
  v44 = (v52 + *(v42 + 36));
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
  v46 = *MEMORY[0x277CE0B30];
  v47 = sub_23875DA00();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  result = swift_getKeyPath();
  *v44 = result;
  *v43 = v31;
  *(v43 + 8) = v33;
  *(v43 + 16) = v35 & 1;
  *(v43 + 24) = v37;
  *(v43 + 32) = KeyPath;
  *(v43 + 40) = v40;
  *(v43 + 48) = 0;
  return result;
}

uint64_t sub_2386D506C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = sub_23875DFD0();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14508, &qword_2387803B8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v20 = sub_23875D030();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14510, &qword_2387803C0);
  sub_2386D54CC(a1, &v20[*(v21 + 44)]);
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  sub_238620D88(a1 + *(active + 20), v13);
  v23 = *(type metadata accessor for ProductImage(0) + 20);
  *&v13[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0EE0], v33);
  v24 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v26 = &v13[*(v7 + 36)];
  v27 = type metadata accessor for OrderImageStyleModifier();
  *&v26[*(v27 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v26[*(v27 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v26 = xmmword_23876FD10;
  *(v26 + 2) = 0;
  v26[24] = 1;
  *(v26 + 4) = v24;
  v26[40] = 0;
  sub_23843981C(v20, v17, &qword_27DF14508, &qword_2387803B8);
  sub_23843981C(v13, v10, &qword_27DF0E618, &unk_2387766D0);
  v28 = v35;
  sub_23843981C(v17, v35, &qword_27DF14508, &qword_2387803B8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14518, &qword_2387803C8);
  v30 = v28 + *(v29 + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_23843981C(v10, v28 + *(v29 + 64), &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v13, &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v20, &qword_27DF14508, &qword_2387803B8);
  sub_238439884(v10, &qword_27DF0E618, &unk_2387766D0);
  sub_238439884(v17, &qword_27DF14508, &qword_2387803B8);
}

uint64_t sub_2386D54CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v35 - v8;
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1[1];
  v48 = *a1;
  v49 = v9;
  sub_2384397A8();

  v10 = sub_23875DAA0();
  v12 = v11;
  v43 = a1;
  v14 = v13;
  sub_23875D820();
  v15 = sub_23875DA60();
  v17 = v16;
  v19 = v18;

  sub_2384397FC(v10, v12, v14 & 1);

  sub_23875D890();
  v20 = sub_23875D9E0();
  v47 = v21;
  v41 = v22;
  v42 = v23;
  sub_2384397FC(v15, v17, v19 & 1);

  v36 = sub_23875D000();
  sub_2386D4700(&v48);
  v24 = v48;
  v35 = v49;
  v25 = v50;
  v37 = v50;
  v26 = v51;
  v38 = v48;
  v39 = v51;
  v27 = v44;
  sub_2386D4B3C(v44);
  v28 = v46;
  sub_23843981C(v27, v46, &qword_27DF0A028, &qword_238764FC0);
  v40 = v20;
  v29 = v47;
  *a2 = v20;
  *(a2 + 8) = v29;
  LOBYTE(v12) = v41 & 1;
  *(a2 + 16) = v41 & 1;
  v30 = v36;
  *(a2 + 24) = v42;
  *(a2 + 32) = v30;
  *(a2 + 40) = sub_23843480C;
  *(a2 + 48) = 0;
  *(a2 + 56) = v24;
  v31 = v35;
  *(a2 + 64) = v35;
  *(a2 + 72) = v25;
  *(a2 + 80) = v26;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14520, &qword_2387803D0);
  sub_23843981C(v28, a2 + *(v32 + 64), &qword_27DF0A028, &qword_238764FC0);
  sub_23843980C(v20, v29, v12);

  v33 = v38;
  LOBYTE(v29) = v37;
  sub_23843980C(v38, v31, v37);

  sub_238439884(v27, &qword_27DF0A028, &qword_238764FC0);
  sub_238439884(v28, &qword_27DF0A028, &qword_238764FC0);
  sub_2384397FC(v33, v31, v29);

  sub_2384397FC(v40, v47, v12);
}

uint64_t sub_2386D5844@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875BC40();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875AF90();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ProductImage.ViewModel(0);
  v13 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v65 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  sub_23875A4D0();
  v62 = v23;
  sub_23843981C(v23, v20, &qword_27DF09F38, &qword_238764DC0);
  v24 = sub_2387598F0();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v20, 1, v24) == 1)
  {
    sub_238439884(v20, &qword_27DF09F38, &qword_238764DC0);
    v26 = sub_23875A5A0();
  }

  else
  {
    v26 = sub_2387598E0();
    (*(v25 + 8))(v20, v24);
  }

  v27 = [a2 merchant];
  v28 = [v27 displayName];

  v29 = sub_2387586A0();
  v31 = v30;

  *a3 = v29;
  a3[1] = v31;
  v61 = v12;
  sub_238757DA0();
  if (v26 >> 62)
  {
LABEL_30:
    v32 = sub_23875F3A0();
  }

  else
  {
    v32 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = a3;
  v68 = a1;
  v69 = a2;
  if (v32)
  {
    a1 = 0;
    v33 = MEMORY[0x277D84F90];
    a3 = &unk_278A55000;
    do
    {
      a2 = a1;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x23EE63F70](a2, v26);
          a1 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (a2 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v34 = *(v26 + 8 * a2 + 32);
          a1 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        v35 = v34;
        v36 = [v35 image];
        if (v36)
        {
          break;
        }

        ++a2;
        if (a1 == v32)
        {
          goto LABEL_25;
        }
      }

      v37 = v36;
      v38 = sub_23875EA80();
      v58 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_238497C2C(0, *(v33 + 2) + 1, 1, v33);
      }

      v41 = *(v33 + 2);
      v40 = *(v33 + 3);
      if (v41 >= v40 >> 1)
      {
        v33 = sub_238497C2C((v40 > 1), v41 + 1, 1, v33);
      }

      *(v33 + 2) = v41 + 1;
      v42 = &v33[16 * v41];
      v43 = v58;
      *(v42 + 4) = v38;
      *(v42 + 5) = v43;
    }

    while (a1 != v32);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

LABEL_25:
  v45 = v63;
  v44 = v64;
  v46 = v59;
  v47 = v61;
  (*(v63 + 16))(v59, v61, v64);
  if (*(v33 + 2) >= 5uLL)
  {
    sub_23852EE64(v33, (v33 + 32), 0, 9uLL);
    v49 = v48;

    v33 = v49;
  }

  v50 = v69;
  v51 = v67;
  (*(v45 + 8))(v47, v44);
  *(v46 + *(v60 + 20)) = v33;
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  sub_23856F65C(v46, v51 + active[5]);
  v53 = [v50 createdDate];
  sub_23875BBE0();

  v54 = v51 + active[6];
  sub_2387590A0();
  v55 = v62;
  sub_23843981C(v62, v65, &qword_27DF09F38, &qword_238764DC0);
  v56 = v51 + active[7];
  sub_23875B080();
  return sub_238439884(v55, &qword_27DF09F38, &qword_238764DC0);
}

uint64_t sub_2386D5E40()
{
  result = type metadata accessor for ProductImage.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_2387590B0();
    if (v2 <= 0x3F)
    {
      result = sub_23875B0A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2386D5F34()
{
  type metadata accessor for OrderSearchActiveRow.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384BEA74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2386D5FD4()
{
  result = qword_27DF144C0;
  if (!qword_27DF144C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF144B0, &qword_2387802A0);
    sub_23843A3E8(&qword_27DF144C8, &qword_27DF144D0, &qword_2387802B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF144C0);
  }

  return result;
}

uint64_t sub_2386D608C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2386D60D4()
{
  result = qword_27DF14528;
  if (!qword_27DF14528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14530, &qword_2387803D8);
    sub_2386D5FD4();
    sub_23843A3E8(&qword_27DF144D8, &qword_27DF144A0, &qword_238780290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14528);
  }

  return result;
}

uint64_t EnvironmentValues.bankConnectService.getter()
{
  sub_2386D61C8();
  sub_23875CDC0();
  return v1;
}

unint64_t sub_2386D61C8()
{
  result = qword_27DF14538;
  if (!qword_27DF14538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14538);
  }

  return result;
}

uint64_t sub_2386D621C@<X0>(void *a1@<X8>)
{
  sub_2386D61C8();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_2386D626C(uint64_t *a1)
{
  v2 = *a1;
  sub_2386D61C8();

  return sub_23875CDD0();
}

uint64_t sub_2386D6308@<X0>(uint64_t *a1@<X8>)
{
  sub_238758CC0();
  result = sub_238758CB0();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.bankConnectService.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_2386D61C8();
  sub_23875CDC0();
  return sub_2386D639C;
}

uint64_t sub_2386D639C(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_23875CDD0();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_23875CDD0();
  }
}

uint64_t type metadata accessor for SmallWalletCardsBalanceWidget()
{
  result = qword_2814F0B20;
  if (!qword_2814F0B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386D64B4()
{
  type metadata accessor for ConnectedCardsTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_2384BEA74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2386D6554@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14540, &qword_2387804B0);
  v3 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v43 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14548, &qword_2387804B8);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v43 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14550, &qword_2387804C0);
  v47 = *(v50 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v43 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14558, &qword_2387804C8);
  v9 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - v13;
  v15 = sub_23875B940();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v52 = &v43 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7D8, &unk_238770530);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v43 - v23;
  v25 = type metadata accessor for WidgetAccount(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(type metadata accessor for ConnectedCardsTimelineEntry(0) + 20);
  v45 = v2;
  sub_23843981C(v2 + v30, v24, &qword_27DF0E7D8, &unk_238770530);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v31 = &qword_27DF0E7D8;
    v32 = &unk_238770530;
    v33 = v24;
LABEL_5:
    sub_238439884(v33, v31, v32);
    swift_storeEnumTagMultiPayload();
    sub_2386D7B00();
    sub_2386D7C0C();
    return sub_23875D1B0();
  }

  sub_2386D7D28(v24, v29, type metadata accessor for WidgetAccount);
  sub_23843981C(&v29[*(v25 + 40)], v14, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2386D7C60(v29);
    v31 = &qword_27DF0D040;
    v32 = &qword_2387676A0;
    v33 = v14;
    goto LABEL_5;
  }

  v35 = v15;
  v36 = v52;
  (*(v16 + 32))(v52, v14, v15);
  if (v29[*(v25 + 48)])
  {
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&unk_2814F0910, &qword_27DF14550, &qword_2387804C0);
    sub_2386D7BB8();
    v37 = v51;
    sub_23875D1B0();
  }

  else
  {
    v38 = (*(v16 + 16))(v44, v36, v15);
    MEMORY[0x28223BE20](v38);
    v39 = v45;
    *(&v43 - 2) = v29;
    *(&v43 - 1) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14560, &qword_2387804D0);
    sub_23843A3E8(&qword_27DF14568, &qword_27DF14560, &qword_2387804D0);
    v40 = v46;
    v35 = v15;
    sub_23875D9A0();
    v36 = v52;
    v41 = v47;
    v42 = v50;
    (*(v47 + 16))(v49, v40, v50);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&unk_2814F0910, &qword_27DF14550, &qword_2387804C0);
    sub_2386D7BB8();
    v37 = v51;
    sub_23875D1B0();
    (*(v41 + 8))(v40, v42);
  }

  sub_23843981C(v37, v53, &qword_27DF14558, &qword_2387804C8);
  swift_storeEnumTagMultiPayload();
  sub_2386D7B00();
  sub_2386D7C0C();
  sub_23875D1B0();
  sub_238439884(v37, &qword_27DF14558, &qword_2387804C8);
  (*(v16 + 8))(v36, v35);
  return sub_2386D7C60(v29);
}

uint64_t sub_2386D6CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_23875D030();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14570, &qword_2387804D8);
  sub_2386D6DA0(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_2386D6DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a1;
  v140 = a3;
  v131 = type metadata accessor for WalletWidgetCardBalances();
  v4 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v135 = (&v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14578, &unk_2387804E0);
  v6 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v141 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v133 = &v122 - v9;
  MEMORY[0x28223BE20](v10);
  v139 = &v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14580, &unk_238780790);
  v129 = *(v12 - 8);
  v130 = v12;
  v13 = *(v129 + 64);
  MEMORY[0x28223BE20](v12);
  v124 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14588, &qword_2387804F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v138 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v152 = &v122 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14590, &qword_2387804F8);
  v125 = *(v142 - 8);
  v20 = *(v125 + 64);
  MEMORY[0x28223BE20](v142);
  v123 = &v122 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14598, &qword_238780500);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v137 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v153 = &v122 - v26;
  v27 = sub_23875C880();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v143 = &v122 - v33;
  sub_23875ED50();
  v136 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = type metadata accessor for WidgetAccount(0);
  v35 = *(v154 + v34[9]);
  v151 = v35;
  if (v35)
  {
    v36 = *(type metadata accessor for SmallWalletCardsBalanceWidget() + 20);
    v37 = v35;
    v38 = v143;
    sub_2384D5138(v143);
    (*(v28 + 104))(v31, *MEMORY[0x277CDFA00], v27);
    sub_23875C870();
    v39 = v34;
    v40 = *(v28 + 8);
    v40(v31, v27);
    v40(v38, v27);
    sub_23875E4A0();
    sub_23875C5C0();
    v41 = v167;
    v149 = v168;
    v150 = v166;
    LOBYTE(v40) = v169;
    v147 = v171;
    v148 = v170;
    LOBYTE(v36) = sub_23875D7A0();
    sub_23875C3D0();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    LOBYTE(v172) = v41;
    LOBYTE(v162[0]) = v40;
    v34 = v39;
    LOBYTE(v155) = 0;
    v145 = v41;
    v146 = v36;
    v144 = LOBYTE(v162[0]);
  }

  else
  {
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v43 = 0;
    v45 = 0;
    v47 = 0;
    v49 = 0;
  }

  v126 = v31;
  v127 = v28;
  v128 = v27;
  v132 = a2;
  v50 = (v154 + v34[5]);
  v51 = v50[1];
  if (v51)
  {
    *&v172 = *v50;
    *(&v172 + 1) = v51;
    sub_2384397A8();
    v122 = v34;

    v52 = sub_23875DAA0();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    KeyPath = swift_getKeyPath();
    *&v172 = v52;
    *(&v172 + 1) = v54;
    LOBYTE(v173) = v56 & 1;
    *(&v173 + 1) = v58;
    *&v174 = KeyPath;
    *(&v174 + 1) = 1;
    LOBYTE(v175) = 0;
    sub_23875D890();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09358, &unk_238774FB0);
    sub_23843A174();
    v60 = v123;
    sub_23875DAF0();
    sub_2384397FC(v52, v54, v56 & 1);

    v34 = v122;

    v61 = sub_23875D970();
    v62 = swift_getKeyPath();
    v63 = (v60 + *(v142 + 36));
    *v63 = v62;
    v63[1] = v61;
    sub_23842CB44(v60, v153);
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  (*(v125 + 56))(v153, v64, 1, v142);
  v65 = (v154 + v34[6]);
  v66 = v65[1];
  if (v66)
  {
    *&v172 = *v65;
    *(&v172 + 1) = v66;
    sub_2384397A8();

    v67 = sub_23875DAA0();
    v69 = v68;
    v71 = v70;
    sub_23875D930();
    v72 = sub_23875DA60();
    v74 = v73;
    v76 = v75;

    sub_2384397FC(v67, v69, v71 & 1);

    LODWORD(v172) = sub_23875D440();
    v77 = sub_23875DA20();
    v79 = v78;
    LOBYTE(v67) = v80;
    v82 = v81;
    sub_2384397FC(v72, v74, v76 & 1);

    *&v172 = v77;
    *(&v172 + 1) = v79;
    LOBYTE(v173) = v67 & 1;
    *(&v173 + 1) = v82;
    v83 = v124;
    sub_23875DAB0();
    sub_2384397FC(v77, v79, v67 & 1);

    v85 = v129;
    v84 = v130;
    v86 = v152;
    (*(v129 + 32))(v152, v83, v130);
    v87 = 0;
  }

  else
  {
    v87 = 1;
    v86 = v152;
    v85 = v129;
    v84 = v130;
  }

  (*(v85 + 56))(v86, v87, 1, v84);
  v88 = v135;
  sub_2386D7CC4(v154, v135 + *(v131 + 20));
  *v88 = sub_23875D030();
  v89 = sub_23875D790();
  v90 = v132 + *(type metadata accessor for SmallWalletCardsBalanceWidget() + 20);
  v91 = v143;
  sub_2384D5138(v143);
  v93 = v126;
  v92 = v127;
  v94 = v128;
  (*(v127 + 104))(v126, *MEMORY[0x277CDF9F0], v128);
  sub_23875C870();
  v95 = *(v92 + 8);
  v95(v93, v94);
  v95(v91, v94);
  sub_23875C3D0();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v133;
  sub_2386D7D28(v88, v133, type metadata accessor for WalletWidgetCardBalances);
  v105 = v104 + *(v134 + 36);
  *v105 = v89;
  *(v105 + 8) = v97;
  *(v105 + 16) = v99;
  *(v105 + 24) = v101;
  *(v105 + 32) = v103;
  *(v105 + 40) = 0;
  v106 = v104;
  v107 = v139;
  sub_2386D7D90(v106, v139);
  sub_23875E4A0();
  sub_23875C9C0();
  *&v164[55] = v175;
  *&v164[71] = v176;
  *&v164[87] = v177;
  *&v164[103] = v178;
  *&v164[7] = v172;
  *&v164[23] = v173;
  v165 = 0;
  *&v164[39] = v174;
  v108 = v137;
  sub_23843981C(v153, v137, &qword_27DF14598, &qword_238780500);
  v109 = v152;
  v110 = v138;
  sub_23843981C(v152, v138, &qword_27DF14588, &qword_2387804F0);
  v111 = v141;
  sub_23843981C(v107, v141, &qword_27DF14578, &unk_2387804E0);
  *&v155 = v151;
  *(&v155 + 1) = v150;
  *&v156 = v145;
  *(&v156 + 1) = v149;
  *&v157 = v144;
  *(&v157 + 1) = v148;
  *&v158 = v147;
  *(&v158 + 1) = v146;
  *&v159 = v43;
  *(&v159 + 1) = v45;
  *&v160 = v47;
  *(&v160 + 1) = v49;
  v161 = 0;
  v112 = v140;
  *(v140 + 96) = 0;
  v113 = v160;
  v112[4] = v159;
  v112[5] = v113;
  v114 = v156;
  *v112 = v155;
  v112[1] = v114;
  v115 = v158;
  v112[2] = v157;
  v112[3] = v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145A0, &qword_238780508);
  sub_23843981C(v108, v112 + v116[12], &qword_27DF14598, &qword_238780500);
  sub_23843981C(v110, v112 + v116[16], &qword_27DF14588, &qword_2387804F0);
  sub_23843981C(v111, v112 + v116[20], &qword_27DF14578, &unk_2387804E0);
  v117 = v112 + v116[24];
  v118 = *&v164[80];
  *(v117 + 73) = *&v164[64];
  *(v117 + 89) = v118;
  *(v117 + 105) = *&v164[96];
  v119 = *&v164[16];
  *(v117 + 9) = *v164;
  *(v117 + 25) = v119;
  v120 = *&v164[48];
  *(v117 + 41) = *&v164[32];
  *v117 = 0;
  v117[8] = 0;
  *(v117 + 15) = *&v164[111];
  *(v117 + 57) = v120;
  sub_23843981C(&v155, v162, &qword_27DF145A8, &qword_238780510);
  sub_238439884(v107, &qword_27DF14578, &unk_2387804E0);
  sub_238439884(v109, &qword_27DF14588, &qword_2387804F0);
  sub_238439884(v153, &qword_27DF14598, &qword_238780500);
  sub_238439884(v111, &qword_27DF14578, &unk_2387804E0);
  sub_238439884(v110, &qword_27DF14588, &qword_2387804F0);
  sub_238439884(v108, &qword_27DF14598, &qword_238780500);
  v162[0] = v151;
  v162[1] = v150;
  v162[2] = v145;
  v162[3] = v149;
  v162[4] = v144;
  v162[5] = v148;
  v162[6] = v147;
  v162[7] = v146;
  v162[8] = v43;
  v162[9] = v45;
  v162[10] = v47;
  v162[11] = v49;
  v163 = 0;
  sub_238439884(v162, &qword_27DF145A8, &qword_238780510);
}

unint64_t sub_2386D7B00()
{
  result = qword_2814F0950;
  if (!qword_2814F0950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14558, &qword_2387804C8);
    sub_23843A3E8(&unk_2814F0910, &qword_27DF14550, &qword_2387804C0);
    sub_2386D7BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0950);
  }

  return result;
}

unint64_t sub_2386D7BB8()
{
  result = qword_2814F09F0;
  if (!qword_2814F09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F09F0);
  }

  return result;
}

unint64_t sub_2386D7C0C()
{
  result = qword_2814F09F8[0];
  if (!qword_2814F09F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814F09F8);
  }

  return result;
}

uint64_t sub_2386D7C60(uint64_t a1)
{
  v2 = type metadata accessor for WidgetAccount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386D7CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAccount(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D7D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386D7D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14578, &unk_2387804E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386D7E00()
{
  result = qword_2814F0940;
  if (!qword_2814F0940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF145B0, &qword_238780578);
    sub_2386D7B00();
    sub_2386D7C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0940);
  }

  return result;
}

uint64_t sub_2386D7EB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B970, &unk_238768D50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = sub_23875E0E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_2814F0880;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_2814F1B90;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

  v20 = sub_23875EA80();
  v22 = v21;

  v26[2] = v20;
  v26[3] = v22;
  sub_2384397A8();
  sub_23875DAA0();
  sub_23875E160();
  (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);
  sub_23875E150();

  (*(v9 + 8))(v12, v8);
  sub_23875E7B0();
  v23 = sub_23875E7C0();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  sub_23875E140();

  sub_2384BC514(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B978, &unk_238780610);
  v25 = a2 + *(result + 36);
  *v25 = 0;
  *(v25 + 8) = 257;
  return result;
}

uint64_t sub_2386D821C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_23875D440();
  v11 = sub_23875DA20();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2384397FC(v7, v9, v4 & 1);

  KeyPath = swift_getKeyPath();

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  return result;
}

__n128 sub_2386D8448@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_23875D020();
  v12 = 1;
  sub_2386D821C(&v8);
  v3 = v9;
  v4 = v11;
  result = v8;
  v6 = v10;
  v7 = v12;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v6;
  *(a1 + 64) = v4;
  return result;
}

unint64_t sub_2386D84B8()
{
  result = qword_2814F08F8;
  if (!qword_2814F08F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF145B8, &qword_2387806C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F08F8);
  }

  return result;
}

uint64_t type metadata accessor for WalletWidgetCardBalances()
{
  result = qword_2814F0CE8;
  if (!qword_2814F0CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386D8590()
{
  result = type metadata accessor for WidgetAccount(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2386D8628@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145C0, &unk_238780740);
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v2);
  v66 = (&v64 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v64 - v7;
  v8 = sub_23875BC40();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA30, qword_23877D7B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v64 - v13;
  v15 = sub_238757AD0();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v15);
  v65 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v71 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7E0, &unk_238770560);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v64 - v22;
  v24 = sub_238758B60();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v1 + *(type metadata accessor for WalletWidgetCardBalances() + 20);
  v30 = type metadata accessor for WidgetAccount(0);
  sub_23843981C(v29 + v30[7], v23, &qword_27DF0E7E0, &unk_238770560);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v31 = &qword_27DF0E7E0;
    v32 = &unk_238770560;
    v33 = v23;
  }

  else
  {
    (*(v25 + 32))(v28, v23, v24);
    sub_23843981C(v29 + v30[11], v14, &qword_27DF0CA30, qword_23877D7B0);
    v34 = v72;
    v35 = v28;
    if ((*(v72 + 48))(v14, 1, v15) == 1)
    {
      (*(v25 + 8))(v28, v24);
      v31 = &qword_27DF0CA30;
      v32 = qword_23877D7B0;
      v33 = v14;
    }

    else
    {
      v36 = v24;
      v37 = v71;
      (*(v34 + 32))(v71, v14, v15);
      v38 = v29 + v30[8];
      v39 = v67;
      sub_23843981C(v38, v67, &qword_27DF12E00, &unk_238763FC0);
      v41 = v69;
      v40 = v70;
      if ((*(v69 + 48))(v39, 1, v70) != 1)
      {
        (*(v41 + 32))(v68, v39, v40);
        v43 = v65;
        (*(v34 + 16))(v65, v37, v15);
        v44 = (*(v34 + 88))(v43, v15);
        v45 = *MEMORY[0x277CC6B50];
        v64 = v15;
        if (v44 == v45)
        {
          v46 = v35;
          v47 = sub_23853471C(v35, v37);
        }

        else
        {
          if (v44 != *MEMORY[0x277CC6B58])
          {
            result = sub_23875F520();
            __break(1u);
            return result;
          }

          v46 = v35;
          v47 = sub_238533CD8(v35, v37);
        }

        v51 = v47;
        v52 = v48;
        v53 = v49;
        v54 = v50;
        v55 = sub_23875D030();
        v56 = v66;
        *v66 = v55;
        *(v56 + 8) = 0;
        *(v56 + 16) = 0;
        v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145C8, &qword_238780750) + 44));
        v58 = v51;
        v59 = v68;
        sub_2386D8D90(v58, v52, v53, v54, v68, v57);

        v60 = v74;
        v61 = (v56 + *(v74 + 36));
        v62 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145D0, &qword_238780758) + 28);
        sub_23875C9D0();
        (*(v72 + 8))(v71, v64);
        (*(v25 + 8))(v46, v36);
        *v61 = swift_getKeyPath();
        v63 = v75;
        sub_23842CCE4(v56, v75);
        (*(v73 + 56))(v63, 0, 1, v60);
        return (*(v41 + 8))(v59, v40);
      }

      (*(v34 + 8))(v37, v15);
      (*(v25 + 8))(v35, v36);
      v31 = &qword_27DF12E00;
      v32 = &unk_238763FC0;
      v33 = v39;
    }
  }

  sub_238439884(v33, v31, v32);
  return (*(v73 + 56))(v75, 1, 1, v74);
}

uint64_t sub_2386D8D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v85 = a5;
  v82 = a3;
  v83 = a4;
  v88 = a6;
  v8 = type metadata accessor for WidgetBalanceUpdatedTime();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14580, &unk_238780790);
  v86 = *(v13 - 8);
  v87 = v13;
  v14 = *(v86 + 64);
  MEMORY[0x28223BE20](v13);
  v90 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v72 - v20;
  v22 = sub_23875D990();
  v23 = *(v22 - 8);
  v24 = v23[8];
  MEMORY[0x28223BE20](v22);
  v26 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v84 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v93 = a1;
  v94 = a2;
  v77 = sub_2384397A8();

  v27 = sub_23875DAA0();
  v29 = v28;
  v31 = v30;
  v72[1] = v32;
  v33 = *MEMORY[0x277CE0A80];
  v34 = v23[13];
  v75 = v23 + 13;
  v76 = v34;
  v34(v26, v33, v22);
  v35 = *MEMORY[0x277CE09A0];
  v36 = sub_23875D840();
  v37 = v22;
  v72[0] = v22;
  v38 = v36;
  v39 = *(v36 - 8);
  (*(v39 + 104))(v21, v35, v36);
  v74 = *(v39 + 56);
  v74(v21, 0, 1, v38);
  sub_23875D8D0();
  sub_238439884(v21, &qword_27DF0C7F0, &qword_23877B880);
  v73 = v23[1];
  v73(v26, v37);
  sub_23875D940();

  sub_23875D890();
  sub_23875D900();

  v79 = sub_23875DA60();
  v78 = v40;
  v80 = v41;
  v81 = v42;

  sub_2384397FC(v27, v29, v31 & 1);

  v93 = v82;
  v94 = v83;

  v43 = sub_23875DAA0();
  v45 = v44;
  LOBYTE(v29) = v46;
  v47 = v72[0];
  v76(v26, *MEMORY[0x277CE0AA0], v72[0]);
  v74(v21, 1, 1, v38);
  sub_23875D8D0();
  sub_238439884(v21, &qword_27DF0C7F0, &qword_23877B880);
  v73(v26, v47);
  sub_23875D940();

  v48 = sub_23875DA60();
  v50 = v49;
  LOBYTE(v38) = v51;

  sub_2384397FC(v43, v45, v29 & 1);

  LODWORD(v93) = sub_23875D440();
  v52 = sub_23875DA20();
  v54 = v53;
  LOBYTE(v37) = v55;
  v57 = v56;
  sub_2384397FC(v48, v50, v38 & 1);

  v93 = v52;
  v94 = v54;
  v95 = v37 & 1;
  v96 = v57;
  v58 = v89;
  sub_23875DAB0();
  sub_2384397FC(v52, v54, v37 & 1);

  v59 = sub_23875BC40();
  v60 = v91;
  (*(*(v59 - 8) + 16))(v91, v85, v59);
  v62 = v86;
  v61 = v87;
  v63 = *(v86 + 16);
  v64 = v90;
  v63(v90, v58, v87);
  sub_2386D9614(v60, v92);
  v65 = v88;
  v66 = v79;
  v67 = v78;
  *v88 = v79;
  v65[1] = v67;
  LODWORD(v85) = v80 & 1;
  *(v65 + 16) = v80 & 1;
  v65[3] = v81;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145D8, &qword_2387807A0);
  v63(v65 + *(v68 + 48), v64, v61);
  v69 = v92;
  sub_2386D9614(v92, v65 + *(v68 + 64));
  LOBYTE(v63) = v85;
  sub_23843980C(v66, v67, v85);

  sub_2386D9678(v91);
  v70 = *(v62 + 8);
  v70(v89, v61);
  sub_2386D9678(v69);
  v70(v90, v61);
  sub_2384397FC(v66, v67, v63);
}

uint64_t sub_2386D954C(uint64_t a1)
{
  v2 = sub_23875C9E0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_23875CB60();
}

uint64_t sub_2386D9614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetBalanceUpdatedTime();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386D9678(uint64_t a1)
{
  v2 = type metadata accessor for WidgetBalanceUpdatedTime();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386D96D4()
{
  result = qword_27DF145E0;
  if (!qword_27DF145E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF145E8, &qword_2387807A8);
    sub_2386D9758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF145E0);
  }

  return result;
}

unint64_t sub_2386D9758()
{
  result = qword_27DF145F0;
  if (!qword_27DF145F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF145C0, &unk_238780740);
    sub_23843A3E8(&qword_27DF145F8, &qword_27DF14600, &unk_2387807B0);
    sub_23843A3E8(&qword_27DF14608, &qword_27DF145D0, &qword_238780758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF145F0);
  }

  return result;
}

uint64_t sub_2386D9868@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_23875D440();
  v11 = sub_23875DA20();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2384397FC(v7, v9, v4 & 1);

  KeyPath = swift_getKeyPath();

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  return result;
}

__n128 sub_2386D9A90@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_23875D020();
  v12 = 1;
  sub_2386D9868(&v8);
  v3 = v9;
  v4 = v11;
  result = v8;
  v6 = v10;
  v7 = v12;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v6;
  *(a1 + 64) = v4;
  return result;
}

void sub_2386D9B00(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = sub_23875B860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14610, &qword_2387808D8);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277D766C8];
  *(inited + 32) = *MEMORY[0x277D766C8];
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v6 = v5;
  sub_23854BA18(inited);
  swift_setDeallocating();
  sub_2386D9E78(inited + 32);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2386D9EE0();
  v7 = sub_23875E910();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  aBlock[4] = sub_2386D9F38;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2386D9E00;
  aBlock[3] = &block_descriptor_18;
  v9 = _Block_copy(aBlock);

  [v2 openURL:v3 options:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_2386D9D38(char a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  **(*(a2 + 64) + 40) = a1 & 1;
  swift_continuation_throwingResume();
}

uint64_t sub_2386D9E00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2386D9E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDB0, &qword_2387808E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386D9EE0()
{
  result = qword_27DF09138;
  if (!qword_27DF09138)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09138);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LogoStyle.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

unint64_t sub_2386D9FF8()
{
  result = qword_27DF14618;
  if (!qword_27DF14618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14618);
  }

  return result;
}

uint64_t sub_2386DA05C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_2386DA0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v29 = a1;
  v30 = a2;
  v33 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v28 - v22;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(v29, v16, type metadata accessor for OrderNavigationDestination);
  v24 = type metadata accessor for OrderNavigationDestination(0);
  (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  sub_2386E2E80(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
  sub_23875C760();
  *&v23[*(v17 + 36)] = 0;
  sub_23843981C(v23, v20, &qword_27DF0BC20, &qword_238769430);
  sub_23843981C(v30, v12, a3, a4);
  v25 = v33;
  sub_23843981C(v20, v33, &qword_27DF0BC20, &qword_238769430);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  sub_23843981C(v12, v25 + *(v26 + 48), a3, a4);
  sub_238439884(v23, &qword_27DF0BC20, &qword_238769430);
  sub_238439884(v12, a3, a4);
  sub_238439884(v20, &qword_27DF0BC20, &qword_238769430);
}

uint64_t sub_2386DA424()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_2386DA49C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_2386DA510()
{
  v1 = (v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_notificationToken);
  swift_beginAccess();
  if (*v1)
  {
    v2 = v1[1];
    aBlock = *v1;
    v36 = v2;
    v37 = *(v1 + 4);
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v37);
    v3 = aBlock;
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  v1[1] = 0u;
  v4 = v1 + 1;
  *(v1 + 4) = 0;
  *v1 = 0u;
  result = swift_endAccess();
  v6 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v34 = [v7 defaultCenter];
    v9 = *MEMORY[0x277CBE1B8];
    v39[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
    v39[0] = v8;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = objc_opt_self();
    v12 = v8;

    v13 = [v11 mainQueue];
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2386E3E58;
    *(v14 + 24) = v10;
    sub_23843981C(v39, &aBlock, &qword_27DF0A4A8, &qword_238767840);
    v15 = *(&v36 + 1);
    if (*(&v36 + 1))
    {
      v16 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v36 + 1));
      v32 = v9;
      v33 = v1 + 1;
      v17 = v13;
      v18 = v12;
      v19 = *(v15 - 8);
      v20 = *(v19 + 64);
      v21 = MEMORY[0x28223BE20](v16);
      v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v23, v21);

      v24 = sub_23875F620();
      (*(v19 + 8))(v23, v15);
      v12 = v18;
      v13 = v17;
      v9 = v32;
      v4 = v33;
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {

      v24 = 0;
    }

    v37 = sub_23862EE48;
    v38 = v14;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v36 = sub_23862ED54;
    *(&v36 + 1) = &block_descriptor_19;
    v25 = _Block_copy(&aBlock);

    v26 = [v34 addObserverForName:v9 object:v24 queue:v13 usingBlock:v25];
    _Block_release(v25);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();

    sub_238439884(v39, &qword_27DF0A4A8, &qword_238767840);
    swift_beginAccess();
    if (*v1)
    {
      v28 = v1[1];
      aBlock = *v1;
      v36 = v28;
      v37 = *(v1 + 4);
      v29 = aBlock;
      __swift_project_boxed_opaque_existential_1(&aBlock + 1, v37);
      v30 = v29;
      [v30 removeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
    }

    *v1 = v34;
    *(v1 + 1) = v26;
    *v4 = aBlock;
    *(v1 + 4) = ObjectType;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2386DA9BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23875C2E0();
    }
  }
}

uint64_t sub_2386DAAF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2386DABD8(v1, v2);
  }
}

uint64_t sub_2386DABD8(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = (v2 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_searchQuery);
  if (*(v2 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_searchQuery))
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 72);
    swift_unknownObjectRetain();
    v9(ObjectType, v7);
    result = swift_unknownObjectRelease();
  }

  v10 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context);
  if (v10)
  {
    v11 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory + 24);
      v13 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory), v12);
      v23 = v10;
      sub_23875F470();
      MEMORY[0x23EE63650](658319914, 0xE400000000000000);
      MEMORY[0x23EE63650](v5, a2);
      MEMORY[0x23EE63650](0xD000000000000032, 0x80000002387909B0);
      v14 = (*(v13 + 8))(0, 0xE000000000000000, &unk_284B25088, v12, v13);
      v16 = v15;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23875C2D0();

      if (qword_27DF08D88 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_23875C2E0();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23875C2E0();
      v17 = swift_getObjectType();
      v18 = swift_allocObject();
      v18[2] = v3;
      v18[3] = 1;
      v18[4] = v23;
      v19 = *(v16 + 24);
      v24 = v23;

      v19(sub_2386E3E88, v18, v17, v16);
      v20 = swift_allocObject();
      v20[2] = v3;
      v20[3] = 1;
      v20[4] = v5;
      v20[5] = a2;
      v21 = *(v16 + 48);

      v21(sub_2386E3E94, v20, v17, v16);
      (*(v16 + 64))(v17, v16);

      v22 = *v6;
      *v6 = v14;
      v6[1] = v16;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2386DAF98(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = a2;
  v40 = a4;
  v38 = a3;
  v5 = sub_23875E5C0();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23875E5E0();
  v42 = *(v44 - 8);
  v8 = *(v42 + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v44);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_25:
    v11 = sub_23875F3A0();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = 0;
    v47 = MEMORY[0x277D84F90];
    do
    {
      v13 = v12;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x23EE63F70](v13, a1, v9);
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(a1 + 8 * v13 + 32);
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v15 = v14;
        v16 = [v15 attributeSet];
        v17 = [v16 identifier];
        if (v17)
        {
          break;
        }

        ++v13;
        if (v12 == v11)
        {
          goto LABEL_22;
        }
      }

      v18 = v17;
      v19 = sub_23875EA80();
      v37 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_238497C2C(0, *(v47 + 2) + 1, 1, v47);
      }

      v22 = *(v47 + 2);
      v21 = *(v47 + 3);
      if (v22 >= v21 >> 1)
      {
        v47 = sub_238497C2C((v21 > 1), v22 + 1, 1, v47);
      }

      v23 = v47;
      *(v47 + 2) = v22 + 1;
      v24 = &v23[16 * v22];
      v25 = v37;
      *(v24 + 4) = v19;
      *(v24 + 5) = v25;
    }

    while (v12 != v11);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

LABEL_22:
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v26 = sub_23875F0A0();
  v27 = swift_allocObject();
  v28 = v38;
  v27[2] = v39;
  v27[3] = v28;
  v29 = v40;
  v30 = v47;
  v27[4] = v40;
  v27[5] = v30;
  aBlock[4] = sub_2386E3EEC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461548;
  aBlock[3] = &block_descriptor_54;
  v31 = _Block_copy(aBlock);

  v32 = v29;
  v33 = v41;
  sub_23875E5D0();
  v48 = MEMORY[0x277D84F90];
  sub_2386E2E80(&qword_27DF12288, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
  sub_23843A3E8(&qword_27DF12298, &qword_27DF12290, &qword_23877A568);
  v34 = v43;
  v35 = v46;
  sub_23875F310();
  MEMORY[0x23EE63B90](0, v33, v34, v31);
  _Block_release(v31);

  (*(v45 + 8))(v34, v35);
  (*(v42 + 8))(v33, v44);
}

uint64_t sub_2386DB438(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v7 == a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    if (v9 == 1)
    {

      v3 = sub_2386E3CA8(v7, v8, 1);
      MEMORY[0x28223BE20](v3);
      sub_23875F120();

      sub_238569CC0(v4);

      sub_238569CC0(v5);

      swift_getKeyPath();
      swift_getKeyPath();

      sub_23875C2E0();
    }

    else
    {
      sub_2386E3CA8(v7, v8, v9);
    }
  }
}

uint64_t sub_2386DB6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_23875ED50();
  v8[2] = a1;
  v8[3] = a2;
  result = sub_2386DC178(sub_2386E3F14, v8);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_2386DB72C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v70 = a2;
  v69 = sub_23875C1E0();
  v56 = *(v69 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v69);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v50 - v12;
  v65 = sub_23875B940();
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v65);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23875ED50();
  v55 = sub_23875ED40();
  v17 = sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v75 = MEMORY[0x277D84F90];
  v19 = *(a1 + 16);
  if (!v19)
  {
    v57 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v20 = 0;
  v64 = (v13 + 48);
  v58 = (v13 + 8);
  v59 = (v13 + 32);
  v68 = (v56 + 8);
  v21 = a1 + 40;
  v57 = MEMORY[0x277D84F90];
  *&v18 = 136315138;
  v62 = v18;
  v22 = v63;
  v67 = v19;
  v53 = a3;
  v52 = v3;
  v60 = v16;
  v51 = a1 + 40;
  do
  {
    v23 = (v21 + 16 * v20);
    a3 = v20;
    while (1)
    {
      if (a3 >= v19)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (__OFADD__(a3, 1))
      {
        goto LABEL_37;
      }

      v72 = a3 + 1;
      v24 = *v23;
      v73 = *(v23 - 1);

      v71 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v25 = [v70 persistentStoreCoordinator];
      if (v25)
      {
        break;
      }

LABEL_16:
      sub_23875C180();

      v33 = sub_23875C1B0();
      v17 = sub_23875F000();

      if (os_log_type_enabled(v33, v17))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v74 = v35;
        *v34 = v62;
        *(v34 + 4) = sub_2384615AC(v73, v24, &v74);
        _os_log_impl(&dword_2383F8000, v33, v17, "Could not create ObjectID from search item with identifier: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        v36 = v35;
        v19 = v67;
        v17 = v69;
        v22 = v63;
        MEMORY[0x23EE64DF0](v36, -1, -1);
        MEMORY[0x23EE64DF0](v34, -1, -1);

        (*v68)(v22, v17);
      }

      else
      {

        (*v68)(v22, v69);
      }

      a3 = (a3 + 1);
      v23 += 2;
      if (v72 == v19)
      {
        a3 = v53;
        goto LABEL_24;
      }
    }

    v26 = v25;
    v27 = v66;
    sub_23875B910();
    v28 = v65;
    if ((*v64)(v27, 1, v65) == 1)
    {

      sub_238439884(v27, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_16;
    }

    v29 = v61;
    (*v59)(v61, v27, v28);
    v30 = v28;
    v31 = sub_23875B860();
    v17 = [v26 managedObjectIDForURIRepresentation_];

    v32 = v30;
    v19 = v67;
    (*v58)(v29, v32);
    if (!v17)
    {
      goto LABEL_16;
    }

    MEMORY[0x23EE63730](v37);
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23875EC90();
    }

    sub_23875ECB0();
    v57 = v75;
    v20 = v72;
    a3 = v53;
    v21 = v51;
  }

  while (v72 != v19);
LABEL_24:
  sub_238759C20();
  sub_2384A53CC(v57);

  v17 = sub_2386DBEF0();

  if (v17 >> 62)
  {
LABEL_38:
    if (!sub_23875F3A0())
    {
      goto LABEL_39;
    }

LABEL_26:
    v39 = sub_2386E3F74(v17);

    if (!*(v39 + 16))
    {
      v42 = MEMORY[0x277D84F90];
      v43 = MEMORY[0x277D84F90];
LABEL_35:

      goto LABEL_42;
    }

    v40 = sub_238547C24(1);
    if (v41)
    {
      v42 = *(*(v39 + 56) + 8 * v40);

      if (!*(v39 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
      if (!*(v39 + 16))
      {
        goto LABEL_34;
      }
    }

    v44 = sub_238547C24(0);
    if (v45)
    {
      v43 = *(*(v39 + 56) + 8 * v44);

      goto LABEL_35;
    }

LABEL_34:
    v43 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_39:

  sub_23875C180();
  v47 = sub_23875C1B0();
  v48 = sub_23875EFE0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2383F8000, v47, v48, "Index found items for query, but no dashboard items found.", v49, 2u);
    MEMORY[0x23EE64DF0](v49, -1, -1);
  }

  (*(v56 + 8))(v54, v69);

  v42 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
LABEL_42:
  *a3 = v42;
  a3[1] = v43;
  return result;
}

uint64_t sub_2386DBEF0()
{
  v0 = sub_23875C1E0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_238759C00();
  v3 = sub_238759BA0();
  [v2 setPredicate_];

  v4 = sub_23875F140();
  return v4;
}

uint64_t sub_2386DC178(uint64_t a1, uint64_t a2)
{
  sub_23875ED40();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_2386E3F30(&v10);
    if (v2)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }

      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = v10;
      v7 = swift_isEscapingClosureAtFileLocation();

      if ((v7 & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }
    }

    __break(1u);
  }

  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD00000000000003FLL, 0x8000000238790970);
  v9 = sub_23875F7D0();
  MEMORY[0x23EE63650](v9);

  MEMORY[0x23EE63650](46, 0xE100000000000000);
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386DC338(uint64_t a1, uint64_t a2)
{
  sub_23875ED40();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_2386E3E30();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000003FLL, 0x8000000238790970);
    v8 = sub_23875F7D0();
    MEMORY[0x23EE63650](v8);

    MEMORY[0x23EE63650](46, 0xE100000000000000);
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

uint64_t sub_2386DC4C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a1;
  v9 = sub_23875C1E0();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875E5C0();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23875E5E0();
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v39);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v20 = sub_23875F0A0();
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  aBlock[4] = sub_2386E3EE0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461548;
  aBlock[3] = &block_descriptor_48;
  v22 = _Block_copy(aBlock);

  sub_23875E5D0();
  v42 = MEMORY[0x277D84F90];
  sub_2386E2E80(&qword_27DF12288, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
  sub_23843A3E8(&qword_27DF12298, &qword_27DF12290, &qword_23877A568);
  sub_23875F310();
  MEMORY[0x23EE63B90](0, v19, v15, v22);
  _Block_release(v22);

  v23 = v12;
  v24 = v41;
  (*(v40 + 8))(v15, v23);
  (*(v16 + 8))(v19, v39);

  if (v24)
  {
    v26 = v24;
    v27 = v36;
    sub_23875C180();
    v28 = v24;
    v29 = sub_23875C1B0();
    v30 = sub_23875F000();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v24;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_2383F8000, v29, v30, "Failed to search for orders: %@", v31, 0xCu);
      sub_238439884(v32, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v32, -1, -1);
      MEMORY[0x23EE64DF0](v31, -1, -1);
    }

    else
    {
    }

    return (*(v37 + 8))(v27, v38);
  }

  return result;
}

uint64_t sub_2386DC96C(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v15 == a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v3 = v15;
    v4 = v16;
    v5 = v17;
    if (v17 != 1)
    {
LABEL_11:
      sub_2386E3CA8(v3, v4, v5);
    }

    if (v15 >> 62)
    {
      v9 = sub_23875F3A0();
      v4 = v16;
      v10 = v9;
      v3 = v15;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    if (v4 >> 62)
    {
      v11 = v3;
      v12 = v4;
      v13 = sub_23875F3A0();
      v4 = v12;
      v14 = v13;
      v3 = v11;
      if (v14)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      v6 = v3;
      v7 = v4;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23875C2E0();
      v3 = v6;
      v4 = v7;
    }

LABEL_10:
    v5 = 1;
    goto LABEL_11;
  }
}

uint64_t sub_2386DCBA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2386DCC04();
  }

  return result;
}

uint64_t sub_2386DCC04()
{
  result = sub_23875B520();
  if (result)
  {
    v1 = result;
    v15 = 1;
    v16 = 1;
    v14 = 1;
    v2 = sub_2386DCD64(&v16, result);
    sub_2386E3E78(v16);
    sub_2386DCFA4(v2);
    v4 = v3;

    if (v4 & 1) != 0 || (v5 = sub_2386DCE88(&v15, v1, MEMORY[0x277CBE150]), sub_2386DCFA4(v5), v7 = v6, , (v7))
    {

      v8 = 1;
    }

    else
    {
      v9 = sub_2386DCE88(&v14, v1, MEMORY[0x277CBE310]);

      sub_2386DCFA4(v9);
      v11 = v10;

      v8 = v14;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    sub_2386DABD8(v12, v13);

LABEL_6:
    sub_2386E3E78(v8);
    return sub_2386E3E78(v15);
  }

  return result;
}

uint64_t sub_2386DCD64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 == 1)
  {
    v6 = *MEMORY[0x277CBE188];
    v14[0] = sub_23875EA80();
    v14[1] = v7;
    sub_23875F410();
    if (*(a2 + 16) && (v8 = sub_238547A14(v13), (v9 & 1) != 0))
    {
      sub_238453DB4(*(a2 + 56) + 32 * v8, v14);
      sub_23854CE50(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14708, &qword_238780CC8);
      if (swift_dynamicCast())
      {
        v3 = v12;
LABEL_8:
        swift_beginAccess();
        v10 = *a1;
        *a1 = v3;

        sub_2386E3E78(v10);
        goto LABEL_9;
      }
    }

    else
    {
      sub_23854CE50(v13);
    }

    v3 = 0;
    goto LABEL_8;
  }

LABEL_9:
  sub_2386E41CC(v2);
  return v3;
}

uint64_t sub_2386DCE88(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a1;
  if (*a1 == 1)
  {
    v7 = *a3;
    v15[0] = sub_23875EA80();
    v15[1] = v8;
    sub_23875F410();
    if (*(a2 + 16) && (v9 = sub_238547A14(v14), (v10 & 1) != 0))
    {
      sub_238453DB4(*(a2 + 56) + 32 * v9, v15);
      sub_23854CE50(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14708, &qword_238780CC8);
      if (swift_dynamicCast())
      {
        v4 = v13;
LABEL_8:
        swift_beginAccess();
        v11 = *a1;
        *a1 = v4;

        sub_2386E3E78(v11);
        goto LABEL_9;
      }
    }

    else
    {
      sub_23854CE50(v14);
    }

    v4 = 0;
    goto LABEL_8;
  }

LABEL_9:
  sub_2386E41CC(v3);
  return v4;
}

void sub_2386DCFA4(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    sub_23875F360();
    sub_238449184(0, &qword_27DF14710, 0x277CBE438);
    sub_2384A537C(&qword_27DF14718, &qword_27DF14710, 0x277CBE438);
    sub_23875EEA0();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_23875F3D0() || (sub_238449184(0, &qword_27DF14710, 0x277CBE438), swift_dynamicCast(), (v9 = v13) == 0))
    {
LABEL_19:
      sub_238434840();
      return;
    }

LABEL_10:
    sub_238759C20();
    v10 = swift_dynamicCastClass();

    if (v10)
    {
      goto LABEL_19;
    }
  }

  v11 = v4;
  v12 = v5;
  if (v5)
  {
LABEL_9:
    v5 = (v12 - 1) & v12;
    v9 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2386DD1D4()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10708, &qword_238775DE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__searchText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__searchCounter;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106F8, &qword_238775DD8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory));
  v7 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_searchQuery);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_cancellableSet);

  v9 = v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_notificationToken;
  if (*(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_notificationToken))
  {
    v10 = *(v9 + 16);
    v15[0] = *v9;
    v15[1] = v10;
    v16 = *(v9 + 32);
    __swift_project_boxed_opaque_existential_1(v15 + 1, v16);
    v11 = *&v15[0];
    [v11 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v15 + 1);
  }

  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

void sub_2386DD408()
{
  sub_2386E2C18(319, &qword_27DF14668, &type metadata for OrderSearchModel.State, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2386E2C18(319, &qword_27DF14670, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2386E2C18(319, &qword_27DF14678, MEMORY[0x277D83B88], MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI16OrderSearchModelC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2386DD5C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2386DD610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2386DD654(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2386DD6A4()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for OrderListSearchContainer(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_23875EFF0();
    v8 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_2386DD7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = type metadata accessor for OrderListContent(0);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF146D8, &qword_238780B90);
  v6 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v37 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF146F8, &qword_238780BA8);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v11 = &v37 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14700, &qword_238780BB0);
  v12 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v14 = &v37 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF146C0, &qword_238780B88);
  v15 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v17 = &v37 - v16;
  v18 = type metadata accessor for OrderSearchResults(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF146B0, &qword_238780B80);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - v24;
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v27 = v46;
  v26 = v47;
  if (v48)
  {
    if (v48 == 1)
    {
      *v21 = v46;
      v21[1] = v26;
      v28 = *(v18 + 20);
      *(v21 + v28) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      swift_storeEnumTagMultiPayload();
      sub_2386E3CF8(v21, v14, type metadata accessor for OrderSearchResults);
      swift_storeEnumTagMultiPayload();
      sub_2386E2E80(&qword_27DF146C8, type metadata accessor for OrderSearchResults);
      sub_2386E2EE8();
      sub_23875D1B0();
      sub_23843981C(v17, v11, &qword_27DF146C0, &qword_238780B88);
      swift_storeEnumTagMultiPayload();
      sub_2386E2DC4();
      sub_2386E2E80(&qword_27DF146F0, type metadata accessor for OrderListContent);
      v29 = v43;
      sub_23875D1B0();
      sub_238439884(v17, &qword_27DF146C0, &qword_238780B88);
      v30 = type metadata accessor for OrderSearchResults;
      v31 = v21;
    }

    else
    {
      sub_2385F6AC8(v5);
      sub_2386E3CF8(v5, v11, type metadata accessor for OrderListContent);
      swift_storeEnumTagMultiPayload();
      sub_2386E2DC4();
      sub_2386E2E80(&qword_27DF146F0, type metadata accessor for OrderListContent);
      v29 = v43;
      sub_23875D1B0();
      v30 = type metadata accessor for OrderListContent;
      v31 = v5;
    }

    sub_2386E3D60(v31, v30);
  }

  else
  {
    sub_23875D410();
    sub_2386E3CA8(v27, v26, 0);
    v32 = [objc_opt_self() systemGroupedBackgroundColor];
    v33 = sub_23875DFB0();
    v34 = sub_23875D780();
    v35 = &v8[*(v39 + 36)];
    *v35 = v33;
    v35[8] = v34;
    sub_23843981C(v8, v14, &qword_27DF146D8, &qword_238780B90);
    swift_storeEnumTagMultiPayload();
    sub_2386E2E80(&qword_27DF146C8, type metadata accessor for OrderSearchResults);
    sub_2386E2EE8();
    sub_23875D1B0();
    sub_23843981C(v17, v11, &qword_27DF146C0, &qword_238780B88);
    swift_storeEnumTagMultiPayload();
    sub_2386E2DC4();
    sub_2386E2E80(&qword_27DF146F0, type metadata accessor for OrderListContent);
    v29 = v43;
    sub_23875D1B0();
    sub_238439884(v17, &qword_27DF146C0, &qword_238780B88);
    sub_238439884(v8, &qword_27DF146D8, &qword_238780B90);
  }

  sub_2384396E4(v29, v45, &qword_27DF146B0, &qword_238780B80);
}

void sub_2386DDF24(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v2)
  {
    v3 = sub_23854B138(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238763300;
    v5 = *MEMORY[0x277D383D8];
    *(inited + 32) = *MEMORY[0x277D383D8];
    v6 = *MEMORY[0x277D38428];
    *(inited + 40) = sub_23875EA80();
    *(inited + 48) = v7;
    v8 = *MEMORY[0x277D38390];
    *(inited + 56) = *MEMORY[0x277D38390];
    *(inited + 64) = 0x686372616573;
    v9 = *MEMORY[0x277D384B8];
    *(inited + 72) = 0xE600000000000000;
    *(inited + 80) = v9;
    strcpy((inited + 88), "orderDashboard");
    *(inited + 103) = -18;
    v10 = v5;
    v11 = v8;
    v12 = v9;
    v13 = sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v13;
    sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

    v15 = *MEMORY[0x277D38548];
    v16 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2386E2E80(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
    v17 = sub_23875E910();

    [v16 subject:v15 sendEvent:v17];
  }

  else
  {
  }
}

uint64_t sub_2386DE1E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14698, &qword_238780B78);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  sub_2386DD7FC(v0, &v6[-v3]);
  v6[15] = sub_2386DD6A4() & 1;
  sub_2386E2C84();
  sub_23875DF10();
  return sub_238439884(v4, &qword_27DF14698, &qword_238780B78);
}

uint64_t sub_2386DE2E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  active = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel(0);
  v4 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_238758FA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_238759BE0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238759BF0();
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277CC7C50])
  {
    (*(v13 + 96))(v16, v12);
    v18 = *v16;
    sub_238757D90();
    if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277CC76A8])
    {
      (*(v8 + 96))(v11, v7);
      v19 = *v11;
      v20 = v18;
      v21 = v19;
      sub_2386D5844(v20, v21, v6);
      v22 = v6 + *(active + 20);
      sub_238757D40();
      v23 = sub_2385BA98C();
      v24 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
      v22[*(v24 + 20)] = v23 & 1;
      v25 = [v20 isMarkedAsComplete];

      v22[*(v24 + 24)] = v25;
      sub_2386E46A4(v6, v28, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
LABEL_6:
      type metadata accessor for OrderSearchResults.ActiveContentItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (v17 == *MEMORY[0x277CC7C58])
  {
    (*(v13 + 96))(v16, v12);
    sub_2386A2B1C(*v16, 0, v28);

    goto LABEL_6;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386DE6CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  MEMORY[0x28223BE20](v10);
  v54 = &v53 - v11;
  v53 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel(0);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_238758FA0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_238759BE0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = a1;
  sub_238759BF0();
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == *MEMORY[0x277CC7C50])
  {
    (*(v21 + 96))(v24, v20);
    v26 = *v24;
    sub_238757D90();
    if ((*(v16 + 88))(v19, v15) == *MEMORY[0x277CC76A8])
    {
      (*(v16 + 96))(v19, v15);
      v27 = *v19;
      v28 = v54;
      sub_23875A4D0();
      sub_23843981C(v28, v9, &qword_27DF09F38, &qword_238764DC0);
      v29 = v26;
      v30 = v27;
      v31 = v29;
      v32 = v30;
      v33 = [v32 merchant];
      v34 = [v33 logoName];

      if (v34)
      {
        v35 = sub_23875EA80();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      *v14 = v35;
      v14[1] = v37;
      v38 = type metadata accessor for MerchantImage.ViewModel(0);
      v39 = v14 + *(v38 + 20);
      sub_238757DA0();
      v40 = [v32 merchant];
      v41 = [v40 displayName];

      v42 = sub_2387586A0();
      v44 = v43;

      v45 = (v14 + *(v38 + 24));
      *v45 = v42;
      v45[1] = v44;
      sub_23843981C(v9, v6, &qword_27DF09F38, &qword_238764DC0);
      v46 = type metadata accessor for OrderListRow.ViewModel(0);
      v47 = *(v46 + 20);
      v48 = v32;
      sub_238759050();
      sub_23843981C(v9, v6, &qword_27DF09F38, &qword_238764DC0);
      v49 = v14 + *(v46 + 24);
      sub_23875B080();
      sub_238439884(v9, &qword_27DF09F38, &qword_238764DC0);
      v50 = v14 + *(v53 + 20);
      sub_238757D40();
      LOBYTE(v46) = sub_2385BA98C();
      v51 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
      v50[*(v51 + 20)] = v46 & 1;
      LOBYTE(v46) = [v31 isMarkedAsComplete];

      sub_238439884(v54, &qword_27DF09F38, &qword_238764DC0);
      v50[*(v51 + 24)] = v46;
      sub_2386E46A4(v14, v56, type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel);
      goto LABEL_9;
    }
  }

  else if (v25 == *MEMORY[0x277CC7C58])
  {
    (*(v21 + 96))(v24, v20);
    sub_2386A2B1C(*v24, 0, v56);

LABEL_9:
    type metadata accessor for OrderSearchResults.PastContentItem(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386DECE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14750, &qword_238780D88);
  v133 = *(v3 - 8);
  v4 = *(v133 + 64);
  MEMORY[0x28223BE20](v3);
  v130 = v126 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14758, &unk_238780D90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v134 = v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v126 - v10;
  v12 = sub_23875CEA0();
  v141 = *(v12 - 8);
  v142 = v12;
  v13 = *(v141 + 64);
  MEMORY[0x28223BE20](v12);
  v139 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830);
  v15 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v137 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v136 = v126 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14760, &qword_238780DA0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v126 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14768, &unk_238780DA8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v132 = v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v126 - v28;
  sub_23875ED50();
  v131 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = *a1;
  if (*a1 >> 62)
  {
    if (v30 < 0)
    {
      v124 = *a1;
    }

    v31 = sub_23875F3A0();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v143 = v3;
  v144 = v11;
  v140 = v29;
  v145 = a1;
  if (v31)
  {
    v127 = v23;
    v128 = v20;
    v129 = v19;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v32 = qword_2814F1B90;
    v33 = sub_23875EA50();
    v34 = sub_23875EA50();
    v35 = sub_23875EA50();
    v36 = [v32 localizedStringForKey:v33 value:v34 table:v35];

    v37 = sub_23875EA80();
    v39 = v38;

    v146 = v37;
    v147 = v39;
    sub_2384397A8();
    v40 = sub_23875DAA0();
    v42 = v41;
    LOBYTE(v39) = v43;
    sub_23875D8E0();
    v44 = sub_23875DA60();
    v46 = v45;
    v48 = v47;

    sub_2384397FC(v40, v42, v39 & 1);

    sub_23875D890();
    v49 = sub_23875D9E0();
    v51 = v50;
    LOBYTE(v39) = v52;
    sub_2384397FC(v44, v46, v48 & 1);

    LODWORD(v146) = sub_23875D420();
    v53 = sub_23875DA20();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_2384397FC(v49, v51, v39 & 1);

    v60 = v136;
    v61 = &v136[*(v138 + 36)];
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
    v63 = sub_23875DA40();
    (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
    KeyPath = swift_getKeyPath();
    v126[1] = v126;
    *v61 = KeyPath;
    *v60 = v53;
    *(v60 + 8) = v55;
    *(v60 + 16) = v57 & 1;
    *(v60 + 24) = v59;
    MEMORY[0x28223BE20](KeyPath);
    v126[-2] = v145;
    sub_23843981C(v60, v137, &qword_27DF0AB38, &unk_238766830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14770, &qword_238780DE8);
    sub_238485418();
    sub_2386E432C();
    v65 = v127;
    sub_23875E3B0();
    v66 = v139;
    sub_23875CE90();
    sub_238439884(v60, &qword_27DF0AB38, &unk_238766830);
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14790, &qword_238780DF8) + 36);
    v69 = v141;
    v68 = v142;
    (*(v141 + 16))(v65 + v67, v66, v142);
    v70 = *(v69 + 56);
    v70(v65 + v67, 0, 1, v68);
    v71 = swift_getKeyPath();
    v72 = v129;
    v73 = (v65 + *(v129 + 9));
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v69 + 32))(v73 + v74, v66, v68);
    v70(v73 + v74, 0, 1, v68);
    a1 = v145;
    *v73 = v71;
    v29 = v140;
    sub_2384396E4(v65, v140, &qword_27DF14760, &qword_238780DA0);
    (*(v128 + 56))(v29, 0, 1, v72);
    v3 = v143;
    v11 = v144;
  }

  else
  {
    (*(v20 + 56))(v29, 1, 1, v19);
  }

  v75 = a1[1];
  if (v75 >> 62)
  {
    if (v75 < 0)
    {
      v125 = a1[1];
    }

    v76 = sub_23875F3A0();
  }

  else
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v76)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v77 = qword_2814F1B90;
    v78 = sub_23875EA50();
    v79 = sub_23875EA50();
    v80 = sub_23875EA50();
    v81 = [v77 localizedStringForKey:v78 value:v79 table:v80];

    v82 = sub_23875EA80();
    v84 = v83;

    v146 = v82;
    v147 = v84;
    sub_2384397A8();
    v85 = sub_23875DAA0();
    v87 = v86;
    LOBYTE(v84) = v88;
    sub_23875D8E0();
    v89 = sub_23875DA60();
    v91 = v90;
    v93 = v92;

    sub_2384397FC(v85, v87, v84 & 1);

    sub_23875D890();
    v94 = sub_23875D9E0();
    v96 = v95;
    LOBYTE(v84) = v97;
    sub_2384397FC(v89, v91, v93 & 1);

    LODWORD(v146) = sub_23875D420();
    v98 = sub_23875DA20();
    v100 = v99;
    LOBYTE(v91) = v101;
    v103 = v102;
    sub_2384397FC(v94, v96, v84 & 1);

    v104 = v136;
    v105 = &v136[*(v138 + 36)];
    v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
    v107 = sub_23875DA40();
    (*(*(v107 - 8) + 56))(v105 + v106, 1, 1, v107);
    v108 = swift_getKeyPath();
    v129 = v126;
    *v105 = v108;
    *v104 = v98;
    *(v104 + 8) = v100;
    *(v104 + 16) = v91 & 1;
    *(v104 + 24) = v103;
    MEMORY[0x28223BE20](v108);
    v126[-2] = v145;
    sub_23843981C(v104, v137, &qword_27DF0AB38, &unk_238766830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14798, &qword_238780E38);
    sub_238485418();
    sub_2386E43E4();
    v109 = v130;
    sub_23875E3B0();
    v110 = v139;
    sub_23875CE90();
    sub_238439884(v104, &qword_27DF0AB38, &unk_238766830);
    v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147B8, &qword_238780E48) + 36);
    v113 = v141;
    v112 = v142;
    (*(v141 + 16))(v109 + v111, v110, v142);
    v114 = *(v113 + 56);
    v114(v109 + v111, 0, 1, v112);
    v115 = swift_getKeyPath();
    v3 = v143;
    v116 = (v109 + *(v143 + 36));
    v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v113 + 32))(v116 + v117, v110, v112);
    v114(v116 + v117, 0, 1, v112);
    *v116 = v115;
    v11 = v144;
    sub_2384396E4(v109, v144, &qword_27DF14750, &qword_238780D88);
    v118 = 0;
    v29 = v140;
  }

  else
  {
    v118 = 1;
  }

  (*(v133 + 56))(v11, v118, 1, v3);
  v119 = v132;
  sub_23843981C(v29, v132, &qword_27DF14768, &unk_238780DA8);
  v120 = v134;
  sub_23843981C(v11, v134, &qword_27DF14758, &unk_238780D90);
  v121 = v135;
  sub_23843981C(v119, v135, &qword_27DF14768, &unk_238780DA8);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147C0, qword_238780E50);
  sub_23843981C(v120, v121 + *(v122 + 48), &qword_27DF14758, &unk_238780D90);
  sub_238439884(v11, &qword_27DF14758, &unk_238780D90);
  sub_238439884(v29, &qword_27DF14768, &unk_238780DA8);
  sub_238439884(v120, &qword_27DF14758, &unk_238780D90);
  sub_238439884(v119, &qword_27DF14768, &unk_238780DA8);
}

uint64_t sub_2386DFAF8(void *a1)
{
  v2 = type metadata accessor for OrderSearchResults(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_2386E3CF8(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderSearchResults);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2386E46A4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for OrderSearchResults);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE10, &unk_238780E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14788, &qword_238780DF0);
  sub_23843A3E8(&qword_27DF147C8, &qword_27DF0AE10, &unk_238780E90);
  sub_2384A537C(&qword_27DF0B110, &qword_27DF0B108, 0x277CBE448);
  sub_23843A3E8(&qword_27DF14780, &qword_27DF14788, &qword_238780DF0);
  return sub_23875E370();
}

id sub_2386DFD2C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = type metadata accessor for OrderSearchResults(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderSearchResults);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_2386E46A4(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for OrderSearchResults);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v12 = v9;
  result = [v12 managedObjectContext];
  if (result)
  {
    v14 = result;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A88, &qword_238779548);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = v12;
    v19 = sub_238629B90(v12, v14, sub_2386DFF58, 0);

    *a3 = v19;
    a3[1] = 0;
    a3[2] = sub_2386E4A14;
    a3[3] = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2386DFF58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;

  return sub_2386DE2E8(v3, a2);
}

uint64_t sub_2386DFF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31[1] = a3;
  v32 = a4;
  v33 = sub_238759BE0();
  v31[0] = *(v33 - 8);
  v6 = *(v31[0] + 64);
  MEMORY[0x28223BE20](v33);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875C880();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CF10, &unk_238780F50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v31 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEF8, &unk_23876C6F0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v31 - v24;
  sub_2386E02A4(a1, v20);
  v26 = a2 + *(type metadata accessor for OrderSearchResults(0) + 20);
  sub_2384D5138(v16);
  (*(v10 + 104))(v13, *MEMORY[0x277CDF9D8], v9);
  LOBYTE(v26) = sub_23875C870();
  v27 = *(v10 + 8);
  v27(v13, v9);
  v27(v16, v9);
  if (v26)
  {
    v28 = 0x4028000000000000;
  }

  else
  {
    v28 = 0x4030000000000000;
  }

  sub_2384396E4(v20, v25, &qword_27DF0CF10, &unk_238780F50);
  v29 = &v25[*(v22 + 44)];
  *v29 = 0x4028000000000000;
  *(v29 + 1) = v28;
  *(v29 + 2) = 0x4028000000000000;
  *(v29 + 3) = v28;
  v29[32] = 0;
  sub_238759BF0();
  sub_2386E0910(v8, v32);
  (*(v31[0] + 8))(v8, v33);
  return sub_238439884(v25, &qword_27DF0CEF8, &unk_23876C6F0);
}

uint64_t sub_2386E02A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[0] = a1;
  v45 = a2;
  v44 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  v2 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14898, &unk_238780FA0);
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v11 = v40 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CF30, &qword_23876C708);
  v12 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v14 = v40 - v13;
  active = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel(0);
  v16 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OrderSearchResults.ActiveContentItem(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CF20, &qword_23876C700);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v42 = v40 - v25;
  sub_23875ED50();
  v40[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(v40[0], v22, type metadata accessor for OrderSearchResults.ActiveContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2386E46A4(v22, v8, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    sub_2386E3CF8(v8, v4, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    v26 = v44;
    v27 = &v4[*(v44 + 20)];
    v46 = 0;
    sub_23875E1A0();
    v28 = v48;
    *v27 = v47;
    *(v27 + 1) = v28;
    v29 = *(v26 + 24);
    *&v4[v29] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2386E3CF8(v4, v11, type metadata accessor for ExtractedOrderArchiveMonthRow);
    swift_storeEnumTagMultiPayload();
    sub_238500284();
    sub_2386E2E80(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v30 = v42;
    sub_23875D1B0();
    sub_2386E3D60(v4, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v31 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v32 = v8;
  }

  else
  {
    sub_2386E46A4(v22, v18, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
    sub_2386E3CF8(v18, v14, type metadata accessor for OrderSearchActiveRow.ViewModel);
    v33 = *(type metadata accessor for OrderSearchActiveRow(0) + 20);
    *&v14[v33] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v34 = &v14[*(v43 + 36)];
    sub_2386E3CF8(&v18[*(active + 20)], v34, type metadata accessor for OrderListRowActionsModifier.ViewModel);
    v35 = type metadata accessor for OrderListRowActionsModifier(0);
    v36 = v34 + *(v35 + 20);
    v46 = 0;
    sub_23875E1A0();
    v37 = v48;
    *v36 = v47;
    *(v36 + 8) = v37;
    v38 = *(v35 + 24);
    *(v34 + v38) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    sub_23843981C(v14, v11, &qword_27DF0CF30, &qword_23876C708);
    swift_storeEnumTagMultiPayload();
    sub_238500284();
    sub_2386E2E80(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v30 = v42;
    sub_23875D1B0();
    sub_238439884(v14, &qword_27DF0CF30, &qword_23876C708);
    v31 = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel;
    v32 = v18;
  }

  sub_2386E3D60(v32, v31);
  sub_2384396E4(v30, v45, &qword_27DF0CF20, &qword_23876C700);
}

uint64_t sub_2386E0910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v51 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14838, &qword_238780F60);
  v44 = *(v48 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v48);
  v43 = &v42 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14840, &qword_238780F68);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v6 = &v42 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14848, &qword_238780F70);
  v7 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v9 = &v42 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14850, &qword_238780F78);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v12 = &v42 - v11;
  v13 = type metadata accessor for OrderNavigationDestination(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14858, &qword_238780F80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v42 - v19);
  v21 = sub_238759BE0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v26, v45, v21, v24);
  v27 = (*(v22 + 88))(v26, v21);
  if (v27 == *MEMORY[0x277CC7C50])
  {
    (*(v22 + 96))(v26, v21);
    v28 = *v26;
    *v16 = v28;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    swift_storeEnumTagMultiPayload();
    v29 = v28;
    *v20 = sub_23875E4B0();
    v20[1] = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14888, &qword_238780F90);
    sub_2386DA0D0(v16, v47, &qword_27DF0CEF8, &unk_23876C6F0, &qword_27DF14890, &qword_238780F98, v20 + *(v31 + 44));
    sub_2386E3D60(v16, type metadata accessor for OrderNavigationDestination);
    v32 = v20 + *(v17 + 36);
    sub_238757D40();
    v33 = &v32[*(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20)];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    sub_23843981C(v20, v9, &qword_27DF14858, &qword_238780F80);
    swift_storeEnumTagMultiPayload();
    sub_2386E4AEC();
    sub_23843A3E8(&qword_27DF14878, &qword_27DF14838, &qword_238780F60);
    sub_23875D1B0();
    sub_23843981C(v12, v6, &qword_27DF14850, &qword_238780F78);
    swift_storeEnumTagMultiPayload();
    sub_2386E4BD4();
    sub_23875D1B0();

    sub_238439884(v12, &qword_27DF14850, &qword_238780F78);
    return sub_238439884(v20, &qword_27DF14858, &qword_238780F80);
  }

  else
  {
    v45 = v6;
    v35 = v48;
    if (v27 == *MEMORY[0x277CC7C58])
    {
      (*(v22 + 96))(v26, v21);
      v42 = *v26;
      v36 = [v42 trackedOrderIdentifier];
      v37 = sub_23875EA80();
      v39 = v38;

      v40 = v43;
      sub_2384FD820(v37, v39, v43);

      v41 = v44;
      (*(v44 + 16))(v9, v40, v35);
      swift_storeEnumTagMultiPayload();
      sub_2386E4AEC();
      sub_23843A3E8(&qword_27DF14878, &qword_27DF14838, &qword_238780F60);
      sub_23875D1B0();
      sub_23843981C(v12, v45, &qword_27DF14850, &qword_238780F78);
      swift_storeEnumTagMultiPayload();
      sub_2386E4BD4();
      sub_23875D1B0();

      sub_238439884(v12, &qword_27DF14850, &qword_238780F78);
      return (*(v41 + 8))(v40, v35);
    }

    else
    {
      result = sub_23875F520();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2386E1020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v51 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147D0, &qword_238780EB0);
  v44 = *(v48 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v48);
  v43 = &v42 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147D8, &qword_238780EB8);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v6 = &v42 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147E0, &qword_238780EC0);
  v7 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v9 = &v42 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147E8, &qword_238780EC8);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v12 = &v42 - v11;
  v13 = type metadata accessor for OrderNavigationDestination(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147F0, &qword_238780ED0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v42 - v19);
  v21 = sub_238759BE0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v26, v45, v21, v24);
  v27 = (*(v22 + 88))(v26, v21);
  if (v27 == *MEMORY[0x277CC7C50])
  {
    (*(v22 + 96))(v26, v21);
    v28 = *v26;
    *v16 = v28;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    swift_storeEnumTagMultiPayload();
    v29 = v28;
    *v20 = sub_23875E4B0();
    v20[1] = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14820, &qword_238780EE0);
    sub_2386DA0D0(v16, v47, &qword_27DF0CEB8, &unk_23876C6D0, &qword_27DF14828, &qword_238780F10, v20 + *(v31 + 44));
    sub_2386E3D60(v16, type metadata accessor for OrderNavigationDestination);
    v32 = v20 + *(v17 + 36);
    sub_238757D40();
    v33 = &v32[*(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20)];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    sub_23843981C(v20, v9, &qword_27DF147F0, &qword_238780ED0);
    swift_storeEnumTagMultiPayload();
    sub_2386E44C4();
    sub_23843A3E8(&qword_27DF14810, &qword_27DF147D0, &qword_238780EB0);
    sub_23875D1B0();
    sub_23843981C(v12, v6, &qword_27DF147E8, &qword_238780EC8);
    swift_storeEnumTagMultiPayload();
    sub_2386E45AC();
    sub_23875D1B0();

    sub_238439884(v12, &qword_27DF147E8, &qword_238780EC8);
    return sub_238439884(v20, &qword_27DF147F0, &qword_238780ED0);
  }

  else
  {
    v45 = v6;
    v35 = v48;
    if (v27 == *MEMORY[0x277CC7C58])
    {
      (*(v22 + 96))(v26, v21);
      v42 = *v26;
      v36 = [v42 trackedOrderIdentifier];
      v37 = sub_23875EA80();
      v39 = v38;

      v40 = v43;
      sub_2384FD85C(v37, v39, v43);

      v41 = v44;
      (*(v44 + 16))(v9, v40, v35);
      swift_storeEnumTagMultiPayload();
      sub_2386E44C4();
      sub_23843A3E8(&qword_27DF14810, &qword_27DF147D0, &qword_238780EB0);
      sub_23875D1B0();
      sub_23843981C(v12, v45, &qword_27DF147E8, &qword_238780EC8);
      swift_storeEnumTagMultiPayload();
      sub_2386E45AC();
      sub_23875D1B0();

      sub_238439884(v12, &qword_27DF147E8, &qword_238780EC8);
      return (*(v41 + 8))(v40, v35);
    }

    else
    {
      result = sub_23875F520();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2386E1730(uint64_t a1)
{
  v2 = type metadata accessor for OrderSearchResults(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *(a1 + 8);
  swift_getKeyPath();
  sub_2386E3CF8(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderSearchResults);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2386E46A4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for OrderSearchResults);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE10, &unk_238780E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF147B0, &qword_238780E40);
  sub_23843A3E8(&qword_27DF147C8, &qword_27DF0AE10, &unk_238780E90);
  sub_2384A537C(&qword_27DF0B110, &qword_27DF0B108, 0x277CBE448);
  sub_23843A3E8(&qword_27DF147A8, &qword_27DF147B0, &qword_238780E40);
  return sub_23875E370();
}

id sub_2386E1964@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = type metadata accessor for OrderSearchResults(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderSearchResults);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_2386E46A4(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for OrderSearchResults);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v12 = v9;
  result = [v12 managedObjectContext];
  if (result)
  {
    v14 = result;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A70, &qword_238779538);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = v12;
    v19 = sub_23862A0B8(v12, v14, sub_2386E1B90, 0);

    *a3 = v19;
    a3[1] = 0;
    a3[2] = sub_2386E44AC;
    a3[3] = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2386E1B90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;

  return sub_2386DE6CC(v3, a2);
}

uint64_t sub_2386E1BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31[1] = a3;
  v32 = a4;
  v33 = sub_238759BE0();
  v31[0] = *(v33 - 8);
  v6 = *(v31[0] + 64);
  MEMORY[0x28223BE20](v33);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875C880();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CED0, &unk_238780EA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v31 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEB8, &unk_23876C6D0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v31 - v24;
  sub_2386E1EDC(a1, v20);
  v26 = a2 + *(type metadata accessor for OrderSearchResults(0) + 20);
  sub_2384D5138(v16);
  (*(v10 + 104))(v13, *MEMORY[0x277CDF9D8], v9);
  LOBYTE(v26) = sub_23875C870();
  v27 = *(v10 + 8);
  v27(v13, v9);
  v27(v16, v9);
  if (v26)
  {
    v28 = 0x4028000000000000;
  }

  else
  {
    v28 = 0x4030000000000000;
  }

  sub_2384396E4(v20, v25, &qword_27DF0CED0, &unk_238780EA0);
  v29 = &v25[*(v22 + 44)];
  *v29 = 0x4028000000000000;
  *(v29 + 1) = v28;
  *(v29 + 2) = 0x4028000000000000;
  *(v29 + 3) = v28;
  v29[32] = 0;
  sub_238759BF0();
  sub_2386E1020(v8, v32);
  (*(v31[0] + 8))(v8, v33);
  return sub_238439884(v25, &qword_27DF0CEB8, &unk_23876C6D0);
}

uint64_t sub_2386E1EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[0] = a1;
  v45 = a2;
  v44 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  v2 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14830, &qword_238780F18);
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v11 = v40 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEF0, &qword_238776C10);
  v12 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v14 = v40 - v13;
  v15 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OrderSearchResults.PastContentItem(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEE0, &unk_23876C6E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v42 = v40 - v25;
  sub_23875ED50();
  v40[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386E3CF8(v40[0], v22, type metadata accessor for OrderSearchResults.PastContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2386E46A4(v22, v8, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    sub_2386E3CF8(v8, v4, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    v26 = v44;
    v27 = &v4[*(v44 + 20)];
    v46 = 0;
    sub_23875E1A0();
    v28 = v48;
    *v27 = v47;
    *(v27 + 1) = v28;
    v29 = *(v26 + 24);
    *&v4[v29] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2386E3CF8(v4, v11, type metadata accessor for ExtractedOrderArchiveMonthRow);
    swift_storeEnumTagMultiPayload();
    sub_23850004C();
    sub_2386E2E80(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v30 = v42;
    sub_23875D1B0();
    sub_2386E3D60(v4, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v31 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v32 = v8;
  }

  else
  {
    sub_2386E46A4(v22, v18, type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel);
    sub_2386E3CF8(v18, v14, type metadata accessor for OrderListRow.ViewModel);
    v33 = *(type metadata accessor for OrderListRow(0) + 20);
    *&v14[v33] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v34 = &v14[*(v43 + 36)];
    sub_2386E3CF8(&v18[*(v15 + 20)], v34, type metadata accessor for OrderListRowActionsModifier.ViewModel);
    v35 = type metadata accessor for OrderListRowActionsModifier(0);
    v36 = v34 + *(v35 + 20);
    v46 = 0;
    sub_23875E1A0();
    v37 = v48;
    *v36 = v47;
    *(v36 + 8) = v37;
    v38 = *(v35 + 24);
    *(v34 + v38) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    sub_23843981C(v14, v11, &qword_27DF0CEF0, &qword_238776C10);
    swift_storeEnumTagMultiPayload();
    sub_23850004C();
    sub_2386E2E80(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v30 = v42;
    sub_23875D1B0();
    sub_238439884(v14, &qword_27DF0CEF0, &qword_238776C10);
    v31 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel;
    v32 = v18;
  }

  sub_2386E3D60(v32, v31);
  sub_2384396E4(v30, v45, &qword_27DF0CEE0, &unk_23876C6E0);
}

uint64_t sub_2386E2548@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v2 = sub_23875D310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14730, &qword_238780D78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14738, &qword_238780D80);
  sub_23843A3E8(&qword_27DF14740, &qword_27DF14738, &qword_238780D80);
  sub_23875D9C0();
  sub_23875D300();
  sub_23843A3E8(&qword_27DF14748, &qword_27DF14730, &qword_238780D78);
  sub_23875DF50();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2386E2788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875B530();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v11, a1, v6, v9);
  sub_23875ED50();
  v14 = a2;
  v15 = a3;
  v16 = v11;
  sub_2386DC338(sub_2386E3E10, v13);
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_2386E28C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(a3);
}

uint64_t sub_2386E2980()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  v2 = v1;
  [v2 removeObserver_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1((v0 + 8));
}

uint64_t sub_2386E2A00(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_2386E2AA8()
{
  sub_2386E2B84();
  if (v0 <= 0x3F)
  {
    sub_2386E429C(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_2386E2C18(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386E2B84()
{
  if (!qword_27DF14690)
  {
    type metadata accessor for OrderSearchModel(255);
    sub_2386E2E80(&qword_27DF10658, type metadata accessor for OrderSearchModel);
    v0 = sub_23875C7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF14690);
    }
  }
}

void sub_2386E2C18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2386E2C84()
{
  result = qword_27DF146A0;
  if (!qword_27DF146A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14698, &qword_238780B78);
    sub_2386E2D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF146A0);
  }

  return result;
}

unint64_t sub_2386E2D08()
{
  result = qword_27DF146A8;
  if (!qword_27DF146A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF146B0, &qword_238780B80);
    sub_2386E2DC4();
    sub_2386E2E80(&qword_27DF146F0, type metadata accessor for OrderListContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF146A8);
  }

  return result;
}

unint64_t sub_2386E2DC4()
{
  result = qword_27DF146B8;
  if (!qword_27DF146B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF146C0, &qword_238780B88);
    sub_2386E2E80(&qword_27DF146C8, type metadata accessor for OrderSearchResults);
    sub_2386E2EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF146B8);
  }

  return result;
}

uint64_t sub_2386E2E80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2386E2EE8()
{
  result = qword_27DF146D0;
  if (!qword_27DF146D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF146D8, &qword_238780B90);
    sub_23843A3E8(&qword_27DF146E0, &qword_27DF146E8, &unk_238780B98);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF146D0);
  }

  return result;
}

double sub_2386E2FCC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_2386E3054(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2386E3DC0(v2, v3, v5);

  return sub_23875C2E0();
}

uint64_t sub_2386E30E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_2386E3168(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_2386E31DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  v5 = v2;
}

BOOL sub_2386E3220(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](a1 + *(v8 + 20), a2 + *(v8 + 20)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(v8 + 24);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for OrderListRow.ViewModel(0);
  if ((MEMORY[0x23EE5DB60](a1 + *(v14 + 20), a2 + *(v14 + 20)) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x23EE5FB50](a1 + *(v14 + 24), a2 + *(v14 + 24)) & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel(0) + 20);
  v16 = a1 + v15;
  v17 = a2 + v15;
  if ((MEMORY[0x23EE5F1E0](v16, v17) & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  return v16[*(v18 + 20)] == v17[*(v18 + 20)] && v16[*(v18 + 24)] == v17[*(v18 + 24)];
}

uint64_t sub_2386E3364(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  v6 = active[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  if ((MEMORY[0x23EE5FA60](a1 + v6, a2 + v6) & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for ProductImage.ViewModel(0);
  if (sub_238518C1C(*&v7[*(v9 + 20)], *&v8[*(v9 + 20)]) & 1) != 0 && (MEMORY[0x23EE5DB60](a1 + active[6], a2 + active[6]) & 1) != 0 && (MEMORY[0x23EE5FB50](a1 + active[7], a2 + active[7]) & 1) != 0 && (v10 = *(type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel(0) + 20), v11 = a1 + v10, v12 = a2 + v10, (MEMORY[0x23EE5F1E0](v11, v12)) && (v13 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0), v11[*(v13 + 20)] == v12[*(v13 + 20)]) && v11[*(v13 + 24)] == v12[*(v13 + 24)])
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2386E3488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for OrderSearchResults.PastContentItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF148E0, &qword_2387810B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - v21;
  v24 = *(v23 + 56);
  sub_2386E3CF8(a1, &v31 - v21, type metadata accessor for OrderSearchResults.PastContentItem);
  sub_2386E3CF8(a2, &v22[v24], type metadata accessor for OrderSearchResults.PastContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2386E3CF8(v22, v15, type metadata accessor for OrderSearchResults.PastContentItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2386E46A4(&v22[v24], v7, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      v25 = sub_2386A5A4C(v15, v7);
      sub_2386E3D60(v7, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      v26 = v15;
      v27 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
LABEL_9:
      sub_2386E3D60(v26, v27);
      sub_2386E3D60(v22, type metadata accessor for OrderSearchResults.PastContentItem);
      return v25 & 1;
    }

    v28 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v29 = v15;
  }

  else
  {
    sub_2386E3CF8(v22, v18, type metadata accessor for OrderSearchResults.PastContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2386E46A4(&v22[v24], v11, type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel);
      v25 = sub_2386E3220(v18, v11);
      sub_2386E3D60(v11, type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel);
      v26 = v18;
      v27 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel;
      goto LABEL_9;
    }

    v28 = type metadata accessor for OrderSearchResults.PastOrderSearchRowViewModel;
    v29 = v18;
  }

  sub_2386E3D60(v29, v28);
  sub_238439884(v22, &qword_27DF148E0, &qword_2387810B8);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_2386E37F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  active = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel(0);
  v8 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for OrderSearchResults.ActiveContentItem(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v38 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF148E8, &unk_2387810C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v38 - v20;
  v23 = *(v22 + 56);
  sub_2386E3CF8(a1, &v38 - v20, type metadata accessor for OrderSearchResults.ActiveContentItem);
  sub_2386E3CF8(a2, &v21[v23], type metadata accessor for OrderSearchResults.ActiveContentItem);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2386E3CF8(v21, v17, type metadata accessor for OrderSearchResults.ActiveContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2386E46A4(&v21[v23], v10, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
      v27 = *v17 == *v10 && v17[1] == v10[1];
      if (v27 || (sub_23875F630() & 1) != 0)
      {
        v28 = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
        v29 = v28[5];
        v30 = v17 + v29;
        v31 = v10 + v29;
        if (MEMORY[0x23EE5FA60](v17 + v29, v10 + v29))
        {
          v32 = type metadata accessor for ProductImage.ViewModel(0);
          if (sub_238518C1C(*&v30[*(v32 + 20)], *&v31[*(v32 + 20)]) & 1) != 0 && (MEMORY[0x23EE5DB60](v17 + v28[6], v10 + v28[6]) & 1) != 0 && (MEMORY[0x23EE5FB50](v17 + v28[7], v10 + v28[7]))
          {
            v33 = *(active + 20);
            v34 = v17 + v33;
            v35 = v10 + v33;
            if (MEMORY[0x23EE5F1E0](v17 + v33, v10 + v33))
            {
              v36 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
              if (v34[*(v36 + 20)] == v35[*(v36 + 20)] && v34[*(v36 + 24)] == v35[*(v36 + 24)])
              {
                sub_2386E3D60(v10, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
                sub_2386E3D60(v17, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
                sub_2386E3D60(v21, type metadata accessor for OrderSearchResults.ActiveContentItem);
                v24 = 1;
                return v24 & 1;
              }
            }
          }
        }
      }

      sub_2386E3D60(v10, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
      sub_2386E3D60(v17, type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel);
      sub_2386E3D60(v21, type metadata accessor for OrderSearchResults.ActiveContentItem);
      goto LABEL_21;
    }

    v25 = type metadata accessor for OrderSearchResults.ActiveSearchRowViewModel;
    v26 = v17;
LABEL_7:
    sub_2386E3D60(v26, v25);
    sub_238439884(v21, &qword_27DF148E8, &unk_2387810C0);
LABEL_21:
    v24 = 0;
    return v24 & 1;
  }

  sub_2386E3CF8(v21, v14, type metadata accessor for OrderSearchResults.ActiveContentItem);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v26 = v14;
    goto LABEL_7;
  }

  sub_2386E46A4(&v21[v23], v7, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
  v24 = sub_2386A5A4C(v14, v7);
  sub_2386E3D60(v7, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
  sub_2386E3D60(v14, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
  sub_2386E3D60(v21, type metadata accessor for OrderSearchResults.ActiveContentItem);
  return v24 & 1;
}

uint64_t sub_2386E3CA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2386E3CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386E3D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2386E3DC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2386E3E30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2386E3E78(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2386E3EE0()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_2386DC96C(v0[2], v0[3]);
}

uint64_t sub_2386E3EEC()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_2386DB438(v0[2], v0[3]);
}

double sub_2386E3F30@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2386E3F74(unint64_t a1)
{
  v24 = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

LABEL_23:
  v2 = sub_23875F3A0();
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EE63F70](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v6 storedShowsAsActive];
    v10 = sub_238547C24(v9);
    v12 = v4[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_21;
    }

    v16 = v11;
    if (v4[3] < v15)
    {
      sub_238549AD8(v15, 1);
      v4 = v24;
      v10 = sub_238547C24(v9);
      if ((v16 & 1) != (v17 & 1))
      {
        break;
      }
    }

    if (v16)
    {
      v5 = (v4[7] + 8 * v10);
      MEMORY[0x23EE63730]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23875EC90();
      }

      sub_23875ECB0();
    }

    else
    {
      v18 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_238763E70;
      *(v19 + 32) = v7;
      v4[(v18 >> 6) + 8] |= 1 << v18;
      *(v4[6] + v18) = v9;
      *(v4[7] + 8 * v18) = v19;
      v20 = v4[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_22;
      }

      v4[2] = v21;
    }

    ++v3;
    if (v8 == v2)
    {
      return v4;
    }
  }

  result = sub_23875F680();
  __break(1u);
  return result;
}

uint64_t sub_2386E41CC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_2386E4204()
{
  sub_2386E429C(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2386E429C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2386E432C()
{
  result = qword_27DF14778;
  if (!qword_27DF14778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14770, &qword_238780DE8);
    sub_23843A3E8(&qword_27DF14780, &qword_27DF14788, &qword_238780DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14778);
  }

  return result;
}

unint64_t sub_2386E43E4()
{
  result = qword_27DF147A0;
  if (!qword_27DF147A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14798, &qword_238780E38);
    sub_23843A3E8(&qword_27DF147A8, &qword_27DF147B0, &qword_238780E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF147A0);
  }

  return result;
}

unint64_t sub_2386E44C4()
{
  result = qword_27DF147F8;
  if (!qword_27DF147F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF147F0, &qword_238780ED0);
    sub_23843A3E8(&qword_27DF14800, &qword_27DF14808, &qword_238780ED8);
    sub_2386E2E80(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF147F8);
  }

  return result;
}

unint64_t sub_2386E45AC()
{
  result = qword_27DF14818;
  if (!qword_27DF14818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF147E8, &qword_238780EC8);
    sub_2386E44C4();
    sub_23843A3E8(&qword_27DF14810, &qword_27DF147D0, &qword_238780EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14818);
  }

  return result;
}

uint64_t sub_2386E46A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_86Tm()
{
  v1 = (type metadata accessor for OrderSearchResults(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C880();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386E4848(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OrderSearchResults(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_89Tm()
{
  v1 = (type metadata accessor for OrderSearchResults(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C880();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_2386E4A2C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OrderSearchResults(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

unint64_t sub_2386E4AEC()
{
  result = qword_27DF14860;
  if (!qword_27DF14860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14858, &qword_238780F80);
    sub_23843A3E8(&qword_27DF14868, &qword_27DF14870, &qword_238780F88);
    sub_2386E2E80(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14860);
  }

  return result;
}

unint64_t sub_2386E4BD4()
{
  result = qword_27DF14880;
  if (!qword_27DF14880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14850, &qword_238780F78);
    sub_2386E4AEC();
    sub_23843A3E8(&qword_27DF14878, &qword_27DF14838, &qword_238780F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14880);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_111Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_112Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2386E4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for OrderListRowActionsModifier.ViewModel(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386E4FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id BankConnectImageProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t BankConnectImageProvider.logo(for:size:scale:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v6 + 248) = v5;
  *(v6 + 232) = a4;
  *(v6 + 240) = a5;
  *(v6 + 224) = a3;
  *(v6 + 208) = a1;
  *(v6 + 216) = a2;
  v7 = sub_23875C1E0();
  *(v6 + 256) = v7;
  v8 = *(v7 - 8);
  *(v6 + 264) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2386E518C, 0, 0);
}

uint64_t sub_2386E518C()
{
  v1 = *(v0[31] + OBJC_IVAR____TtC12FinanceKitUI24BankConnectImageProvider_bankConnectService);
  v2 = *(MEMORY[0x277CC7310] + 4);
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_2386E5234;
  v5 = v0[26];
  v4 = v0[27];

  return MEMORY[0x282117E00](v5, v4);
}

uint64_t sub_2386E5234(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 288);
  v8 = *v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;

  if (v2)
  {
    v6 = sub_2386E5A6C;
  }

  else
  {
    v6 = sub_2386E534C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2386E534C()
{
  v45 = v0;
  if (*(v0 + 304) >> 60 == 15)
  {
    goto LABEL_9;
  }

  v1 = *(v0 + 296);
  v2 = sub_23875B980();
  v3 = CGImageSourceCreateWithData(v2, 0);
  *(v0 + 320) = v3;

  if (!v3)
  {
    sub_23844C940(*(v0 + 296), *(v0 + 304));
LABEL_9:
    sub_23875ED50();
    *(v0 + 376) = sub_23875ED40();
    v26 = sub_23875ECE0();
    v28 = v27;
    v29 = sub_2386E59CC;
    goto LABEL_10;
  }

  v4 = *(v0 + 240) * *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF148F8, &unk_2387810E0);
  inited = swift_initStackObject();
  v6 = *MEMORY[0x277CD3618];
  *(inited + 32) = *MEMORY[0x277CD3618];
  v7 = MEMORY[0x277D839B0];
  *(inited + 16) = xmmword_238763310;
  *(inited + 40) = 0;
  v8 = *MEMORY[0x277CD3568];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 1;
  v9 = *MEMORY[0x277CD3578];
  *(inited + 104) = v7;
  *(inited + 112) = v9;
  *(inited + 120) = 1;
  v10 = *MEMORY[0x277CD3660];
  *(inited + 144) = v7;
  *(inited + 152) = v10;
  *(inited + 184) = MEMORY[0x277D85048];
  *(inited + 160) = v4;
  v11 = v6;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  sub_23854B8F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE68, &qword_23876E858);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2386E6B34();
  v15 = sub_23875E910();
  *(v0 + 328) = v15;

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v3, 0, v15);
  *(v0 + 336) = ThumbnailAtIndex;
  if (ThumbnailAtIndex)
  {
    v17 = ThumbnailAtIndex;
    v18 = sub_2386E68C4(ThumbnailAtIndex);
    if (v18)
    {
      v19 = v18;
      v21 = *(v0 + 296);
      v20 = *(v0 + 304);

      sub_23844C940(v21, v20);
      v23 = *(v0 + 272);
      v22 = *(v0 + 280);

      v24 = *(v0 + 8);

      return v24(v19);
    }

    v31 = *(v0 + 280);
    v32 = *(v0 + 216);
    sub_23875C120();

    v33 = sub_23875C1B0();
    v34 = sub_23875EFE0();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 280);
    v37 = *(v0 + 256);
    v38 = *(v0 + 264);
    if (v35)
    {
      v40 = *(v0 + 208);
      v39 = *(v0 + 216);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_2384615AC(v40, v39, &v44);
      _os_log_impl(&dword_2383F8000, v33, v34, "Error instantiating image for: %s.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x23EE64DF0](v42, -1, -1);
      MEMORY[0x23EE64DF0](v41, -1, -1);
    }

    (*(v38 + 8))(v36, v37);
    sub_23875ED50();
    *(v0 + 344) = sub_23875ED40();
    v26 = sub_23875ECE0();
    v28 = v43;
    v29 = sub_2386E5784;
  }

  else
  {
    sub_23875ED50();
    *(v0 + 360) = sub_23875ED40();
    v26 = sub_23875ECE0();
    v28 = v30;
    v29 = sub_2386E58AC;
  }

LABEL_10:

  return MEMORY[0x2822009F8](v29, v26, v28);
}

uint64_t sub_2386E5784()
{
  v1 = v0[43];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  v0[44] = sub_2386E69F4();

  return MEMORY[0x2822009F8](sub_2386E5810, 0, 0);
}

uint64_t sub_2386E5810()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);

  sub_23844C940(v3, v4);
  v5 = *(v0 + 352);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);

  v8 = *(v0 + 8);

  return v8(v5);
}

uint64_t sub_2386E58AC()
{
  v1 = v0[45];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  v0[46] = sub_2386E69F4();

  return MEMORY[0x2822009F8](sub_2386E5938, 0, 0);
}

uint64_t sub_2386E5938()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  sub_23844C940(v2, v3);
  v4 = *(v0 + 368);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_2386E59CC()
{
  v1 = v0[47];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  v5 = sub_2386E69F4();
  v7 = v0[34];
  v6 = v0[35];

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_2386E5A6C()
{
  v25 = v0;
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[27];
  sub_23875C120();

  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[39];
    v8 = v0[33];
    v22 = v0[32];
    v23 = v0[34];
    v9 = v0[26];
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_2384615AC(v9, v10, &v24);
    *(v11 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_2383F8000, v5, v6, "Unable to obtain asset from financed for institution id: %s. Returning fallback image. Error: %@", v11, 0x16u);
    sub_238439884(v12, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);

    (*(v8 + 8))(v23, v22);
  }

  else
  {
    v17 = v0[33];
    v16 = v0[34];
    v18 = v0[32];

    (*(v17 + 8))(v16, v18);
  }

  sub_23875ED50();
  v0[48] = sub_23875ED40();
  v20 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2386E5CB0, v20, v19);
}

uint64_t sub_2386E5CB0()
{
  v1 = v0[48];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  v0[49] = sub_2386E69F4();

  return MEMORY[0x2822009F8](sub_2386E5D3C, 0, 0);
}

uint64_t sub_2386E5D3C()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);

  v4 = *(v0 + 8);

  return v4(v1);
}

id BankConnectImageProvider.init()()
{
  ObjectType = swift_getObjectType();
  sub_238758CC0();
  *&v0[OBJC_IVAR____TtC12FinanceKitUI24BankConnectImageProvider_bankConnectService] = sub_238758CB0();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2386E6034(int a1, void *aBlock, double a3, double a4, double a5, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v11 = sub_23875EA80();
  v13 = v12;
  v6[4] = v12;
  a6;
  v14 = swift_task_alloc();
  v6[5] = v14;
  *v14 = v6;
  v14[1] = sub_2386E6130;

  return BankConnectImageProvider.logo(for:size:scale:)(v11, v13, a3, a4, a5);
}

uint64_t sub_2386E6130(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v5)[2](v5, a1);
  _Block_release(v5);

  v7 = *(v9 + 8);

  return v7();
}

id sub_2386E6298(double a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a2, a3}];
  [v4 setShape_];
  [v4 setDrawBorder_];
  [v4 setBackground_];
  v5 = [v3 prepareImageForDescriptor_];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  result = [v5 CGImage];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:1.0];

    return v9;
  }

  __break(1u);
  return result;
}

id BankConnectImageProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2386E6408(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_238449A7C;

  return v7();
}

uint64_t sub_2386E64F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2384494A4;

  return v8();
}

uint64_t sub_2386E65D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2386E6CA0(a3, v25 - v11);
  v13 = sub_23875ED80();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_238439884(v12, &unk_27DF09920, &qword_238764D80);
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

  sub_23875ED70();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_23875ECE0();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_23875EB00() + 32;
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

    sub_238439884(a3, &unk_27DF09920, &qword_238764D80);

    return v23;
  }

LABEL_8:
  sub_238439884(a3, &unk_27DF09920, &qword_238764D80);
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

id sub_2386E68C4(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:a1 scale:sub_2387588A0()];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_238763E70;
  *(v2 + 32) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  sub_2386E6E80();
  v4 = v1;
  v5 = sub_23875EC60();

  v6 = [v3 initWithImages_];

  [v4 size];
  v8 = v7;
  v10 = v9;
  [v4 scale];
  v12 = sub_2386E6298(v8, v10, v11);

  return v12;
}

id sub_2386E69F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E138, &unk_23876F130);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  v10[15] = 3;
  sub_238557CBC(&v10[-v2]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14908, &unk_238781170);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  MEMORY[0x23EE61170](v3);
  v10[8] = 0;
  v10[0] = 0;
  sub_23875C670();
  sub_23875C680();
  v7 = sub_23875C660();

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v7 scale:0 orientation:1.0];

  return v8;
}

unint64_t sub_2386E6B34()
{
  result = qword_27DF08FE0;
  if (!qword_27DF08FE0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08FE0);
  }

  return result;
}

uint64_t sub_2386E6BC8()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 6);
  v6 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2384494A4;

  return sub_2386E6034(v2, v7, v3, v4, v5, v6);
}

uint64_t sub_2386E6CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386E6D10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238449A7C;

  return sub_2386CB6A0(a1, v5);
}

uint64_t sub_2386E6DC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2384494A4;

  return sub_2386CB6A0(a1, v5);
}

unint64_t sub_2386E6E80()
{
  result = qword_27DF14900;
  if (!qword_27DF14900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF14900);
  }

  return result;
}

uint64_t BankConnectExtensionAuthorizationViewModel.__allocating_init(flow:flowManager:completionHandler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = sub_2386E83F8(a1, v11, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

uint64_t BankConnectExtensionAuthorizationView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238447830;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t BankConnectExtensionAuthorizationViewModel.init(flow:flowManager:completionHandler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = *(*(v9 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = sub_2386E8348(a1, v15, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v17;
}

uint64_t sub_2386E707C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D380, &qword_23876CFA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v41 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = sub_23875C1E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = *a1;
  if (*(a1 + 8))
  {
    sub_23875C120();
    v21 = v20;
    v22 = sub_23875C1B0();
    v23 = sub_23875EFE0();
    sub_23865E454(v20, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v2;
      v26 = v25;
      *v24 = 138412290;
      v27 = v20;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_2383F8000, v22, v23, "Extension authorization step failed with error in extension: %@.", v24, 0xCu);
      sub_238439884(v26, &qword_27DF09930, &unk_2387638C0);
      v29 = v26;
      v2 = v42;
      MEMORY[0x23EE64DF0](v29, -1, -1);
      MEMORY[0x23EE64DF0](v24, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v30 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
    v31 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler + 8);
    *v7 = v20;
    swift_storeEnumTagMultiPayload();
    v32 = v20;
    v30(v7);
    return sub_238439884(v7, &unk_27DF0D380, &qword_23876CFA0);
  }

  else
  {
    sub_23875C120();
    v34 = sub_23875C1B0();
    v35 = sub_23875F000();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2383F8000, v34, v35, "Extension authorization step succeeded with authorization params.", v36, 2u);
      MEMORY[0x23EE64DF0](v36, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    v37 = sub_23875ED80();
    (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
    sub_23875ED50();

    sub_23865FC4C(v20, 0);
    v38 = sub_23875ED40();
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    v39[2] = v38;
    v39[3] = v40;
    v39[4] = v2;
    v39[5] = v20;
    sub_2386C3BA4(0, 0, v11, &unk_2387813A8, v39);
  }
}

uint64_t sub_2386E74A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D380, &qword_23876CFA0);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = sub_23875C1E0();
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v10 = *(v9 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v11 = sub_23875A8F0();
  v5[10] = v11;
  v12 = *(v11 - 8);
  v5[11] = v12;
  v13 = *(v12 + 64) + 15;
  v5[12] = swift_task_alloc();
  v14 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v5[13] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v16 = sub_238758BB0();
  v5[15] = v16;
  v17 = *(v16 - 8);
  v5[16] = v17;
  v18 = *(v17 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_23875ED50();
  v5[19] = sub_23875ED40();
  v20 = sub_23875ECE0();
  v5[20] = v20;
  v5[21] = v19;

  return MEMORY[0x2822009F8](sub_2386E76D8, v20, v19);
}

uint64_t sub_2386E76D8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[2];
  v7 = v0[3];
  v8 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager + 24);
  v9 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager), v8);
  sub_2386E85B4(v6 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, v1);
  swift_storeEnumTagMultiPayload();
  *v3 = v7;
  (*(v4 + 104))(v3, *MEMORY[0x277CC8038], v5);
  v10 = *(v9 + 16);

  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_2386E7898;
  v13 = v0[18];
  v14 = v0[14];
  v15 = v0[12];

  return v17(v13, v14, v15, v8, v9);
}

uint64_t sub_2386E7898()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  sub_2386E885C(v4, type metadata accessor for BankConnectAuthorizationFlow);
  v9 = *(v2 + 168);
  v10 = *(v2 + 160);
  if (v0)
  {
    v11 = sub_2386E7D4C;
  }

  else
  {
    v11 = sub_2386E7A68;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2386E7A68()
{
  v45 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[9];

  sub_23875C120();
  v43 = *(v4 + 16);
  v43(v3, v2, v5);
  v7 = sub_23875C1B0();
  v8 = sub_23875F000();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[16];
  v10 = v0[17];
  v42 = v0[15];
  v12 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  if (v9)
  {
    v41 = v0[6];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v44 = v16;
    *v15 = 136315138;
    v38 = sub_238758BA0();
    v39 = v8;
    v18 = v17;
    v40 = v12;
    v19 = *(v11 + 8);
    v19(v10, v42);
    v20 = v19;
    v21 = sub_2384615AC(v38, v18, &v44);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2383F8000, v7, v39, "Extension authorization step successfully completed authorization flow. Consent with consentID: %s saved to the store.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x23EE64DF0](v16, -1, -1);
    MEMORY[0x23EE64DF0](v15, -1, -1);

    (*(v13 + 8))(v40, v41);
  }

  else
  {

    v22 = *(v11 + 8);
    v22(v10, v42);
    v20 = v22;
    (*(v13 + 8))(v12, v14);
  }

  v23 = v0[18];
  v24 = v0[15];
  v25 = v0[5];
  v26 = v0[2] + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler;
  v28 = *v26;
  v27 = *(v26 + 8);
  v43(v25, v23, v24);
  swift_storeEnumTagMultiPayload();
  v28(v25);
  sub_238439884(v25, &unk_27DF0D380, &qword_23876CFA0);
  v20(v23, v24);
  v30 = v0[17];
  v29 = v0[18];
  v31 = v0[14];
  v32 = v0[12];
  v34 = v0[8];
  v33 = v0[9];
  v35 = v0[5];

  v36 = v0[1];

  return v36();
}

uint64_t sub_2386E7D4C()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[8];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v5, v6, "Extension authorization step failed to complete authorization flow with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v12 = v0[23];
  v14 = v0[7];
  v13 = v0[8];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  v18 = v0[2];

  (*(v14 + 8))(v13, v15);
  v20 = *(v18 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
  v19 = *(v18 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler + 8);
  *v16 = v12;
  swift_storeEnumTagMultiPayload();
  v21 = v12;
  v20(v16);

  sub_238439884(v16, &unk_27DF0D380, &qword_23876CFA0);
  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[14];
  v25 = v0[12];
  v27 = v0[8];
  v26 = v0[9];
  v28 = v0[5];

  v29 = v0[1];

  return v29();
}

uint64_t BankConnectExtensionAuthorizationViewModel.deinit()
{
  sub_2386E885C(v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager));
  v1 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler + 8);

  return v0;
}

uint64_t BankConnectExtensionAuthorizationViewModel.__deallocating_deinit()
{
  sub_2386E885C(v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager));
  v1 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2386E8074@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectExtensionAuthorizationViewModel();
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t BankConnectExtensionAuthorizationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = *(v1 + 16);
  type metadata accessor for BankConnectExtensionAuthorizationViewModel();
  sub_2386E855C();
  v14 = sub_23875C490();
  sub_2386E85B4(v14 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, v10);

  sub_23845C998(&v10[*(v4 + 28)], a1);
  sub_2386E885C(v10, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  v15 = sub_23875C490();
  sub_2386E85B4(v15 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, v7);

  v16 = *&v7[*(v4 + 32)];

  sub_2386E885C(v7, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v11;
  *(v17 + 32) = v13;
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = sub_2386E8618;
  v18[4] = v17;
  *(a1 + 40) = sub_238486EF8;
  *(a1 + 48) = v18;
  *(a1 + 56) = 0;
  return sub_2384D63F0();
}

uint64_t sub_2386E82AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for BankConnectExtensionAuthorizationViewModel();
  sub_2386E855C();
  sub_23875C490();
  v4 = v1;
  v5 = v2;
  sub_2386E707C(&v4);
}

uint64_t sub_2386E8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager);
  v13[3] = a6;
  v13[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  sub_2386E88BC(a1, a5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow);
  v15 = (a5 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
  *v15 = a3;
  v15[1] = a4;
  return a5;
}

uint64_t sub_2386E83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BankConnectExtensionAuthorizationViewModel();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  (*(v13 + 16))(v16, a2, a6);
  return sub_2386E8348(a1, v16, a3, a4, v20, a6, a7);
}

uint64_t type metadata accessor for BankConnectExtensionAuthorizationViewModel()
{
  result = qword_27DF14918;
  if (!qword_27DF14918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2386E855C()
{
  result = qword_27DF14910;
  if (!qword_27DF14910)
  {
    type metadata accessor for BankConnectExtensionAuthorizationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14910);
  }

  return result;
}

uint64_t sub_2386E85B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386E8618(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_2386E82AC(a1);
}

uint64_t sub_2386E8658()
{
  result = type metadata accessor for BankConnectExtensionAuthorizationFlow(319);
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

unint64_t sub_2386E8748()
{
  result = qword_27DF14928;
  if (!qword_27DF14928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14928);
  }

  return result;
}

uint64_t sub_2386E879C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_2386E74A8(a1, v4, v5, v7, v6);
}

uint64_t sub_2386E885C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2386E88BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2386E8988()
{
  type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384BEA74();
    if (v1 <= 0x3F)
    {
      sub_2386E8BBC(319, &qword_27DF0F4F0, &type metadata for CopyStringAction, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2386E8A60();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2386E8A60()
{
  if (!qword_27DF0D130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D040, &qword_2387676A0);
    v0 = sub_23875E1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0D130);
    }
  }
}

void sub_2386E8AEC()
{
  sub_2387581B0();
  if (v0 <= 0x3F)
  {
    _s19ShippingFulfillmentO12StatusValuesVMa(319);
    if (v1 <= 0x3F)
    {
      sub_2386E8BBC(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386E8BBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2386E8C0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v10 = *(v2 + 16);
  v10(v8, v0 + *(v9 + 20), v1);
  v11 = (*(v2 + 88))(v8, v1);
  if (v11 == *MEMORY[0x277CC83B8])
  {
    goto LABEL_27;
  }

  if (v11 != *MEMORY[0x277CC83A8])
  {
    if (v11 != *MEMORY[0x277CC83B0])
    {
      goto LABEL_30;
    }

LABEL_27:
    v21 = 0;
    goto LABEL_28;
  }

  v10(v5, v8, v1);
  (*(v2 + 96))(v5, v1);
  v12 = sub_2387581B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 88))(v5, v12);
  if (v14 == *MEMORY[0x277CC6E40] || v14 == *MEMORY[0x277CC6E38])
  {
    goto LABEL_27;
  }

  if (v14 == *MEMORY[0x277CC6E48] || v14 == *MEMORY[0x277CC6E20])
  {
    goto LABEL_25;
  }

  v17 = v14 == *MEMORY[0x277CC6E60] || v14 == *MEMORY[0x277CC6E58];
  v18 = v17 || v14 == *MEMORY[0x277CC6E30];
  v19 = v18 || v14 == *MEMORY[0x277CC6E28];
  if (v19 || v14 == *MEMORY[0x277CC6E50])
  {
    goto LABEL_27;
  }

  if (v14 == *MEMORY[0x277CC6E18])
  {
LABEL_25:
    v21 = 1;
LABEL_28:
    (*(v2 + 8))(v8, v1);
    return v21;
  }

  (*(v13 + 8))(v5, v12);
LABEL_30:
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386E8F80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v13 = *(v2 + 16);
  v13(v11, v0 + *(v12 + 20), v1);
  v14 = (*(v2 + 88))(v11, v1);
  if (v14 == *MEMORY[0x277CC83B8])
  {
    v13(v5, v11, v1);
    (*(v2 + 96))(v5, v1);
    v15 = sub_2387580D0();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 88))(v5, v15);
    if (v17 != *MEMORY[0x277CC6DF0] && v17 != *MEMORY[0x277CC6DE0] && v17 != *MEMORY[0x277CC6DD8])
    {
      if (v17 == *MEMORY[0x277CC6DF8])
      {
LABEL_10:
        v20 = 1;
LABEL_18:
        (*(v2 + 8))(v11, v1);
        return v20;
      }

      if (v17 == *MEMORY[0x277CC6DE8])
      {
LABEL_17:
        v20 = 2;
        goto LABEL_18;
      }

      v8 = v5;
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  if (v14 == *MEMORY[0x277CC83A8])
  {
    v13(v8, v11, v1);
    (*(v2 + 96))(v8, v1);
    v15 = sub_2387581B0();
    v16 = *(v15 - 8);
    v21 = (*(v16 + 88))(v8, v15);
    if (v21 == *MEMORY[0x277CC6E40])
    {
      goto LABEL_13;
    }

    if (v21 != *MEMORY[0x277CC6E38])
    {
      if (v21 == *MEMORY[0x277CC6E48] || v21 == *MEMORY[0x277CC6E20])
      {
        goto LABEL_13;
      }

      if (v21 != *MEMORY[0x277CC6E60])
      {
        if (v21 == *MEMORY[0x277CC6E58])
        {
          goto LABEL_10;
        }

        if (v21 == *MEMORY[0x277CC6E30])
        {
          goto LABEL_17;
        }

        if (v21 == *MEMORY[0x277CC6E28])
        {
          goto LABEL_13;
        }

        if (v21 != *MEMORY[0x277CC6E50])
        {
          if (v21 != *MEMORY[0x277CC6E18])
          {
LABEL_32:
            (*(v16 + 8))(v8, v15);
            goto LABEL_33;
          }

LABEL_13:
          v20 = 3;
          goto LABEL_18;
        }
      }
    }

LABEL_15:
    v20 = 0;
    goto LABEL_18;
  }

  if (v14 == *MEMORY[0x277CC83B0])
  {
    goto LABEL_15;
  }

LABEL_33:
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386E9448@<X0>(uint64_t a1@<X8>)
{
  v200 = a1;
  v2 = type metadata accessor for OrderDetailsShippingTracking(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v169 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F508, &unk_238781470);
  v198 = *(v199 - 8);
  v5 = *(v198 + 64);
  MEMORY[0x28223BE20](v199);
  v170 = &v164 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v192 = &v164 - v9;
  v194 = sub_23875B940();
  v193 = *(v194 - 8);
  v10 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v166 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v12 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v167 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v168 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F510, &unk_2387728D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v197 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v196 = &v164 - v20;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F518, &unk_238781480);
  v189 = *(v190 - 8);
  v21 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v174 = &v164 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F520, &unk_2387728E0);
  v202 = *(v23 - 8);
  v203 = v23;
  v24 = *(v202 + 64);
  MEMORY[0x28223BE20](v23);
  v173 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v172 = &v164 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F528, &unk_238781490);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v171 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v201 = &v164 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F530, &qword_2387728F0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v195 = &v164 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v206 = &v164 - v37;
  v204 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v186 = *(v204 - 8);
  v38 = *(v186 + 64);
  MEMORY[0x28223BE20](v204);
  v187 = v39;
  v188 = (&v164 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = sub_23875C880();
  v40 = *(v182 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v182);
  v179 = &v164 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v177 = &v164 - v44;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14950, &qword_2387814A0);
  v45 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v47 = &v164 - v46;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14958, &qword_2387814A8);
  v181 = *(v183 - 8);
  v48 = *(v181 + 64);
  MEMORY[0x28223BE20](v183);
  v50 = &v164 - v49;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14960, &qword_2387814B0);
  v51 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v185 = &v164 - v52;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14968, &qword_2387814B8);
  v53 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v191 = &v164 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v184 = &v164 - v56;
  MEMORY[0x28223BE20](v57);
  v205 = &v164 - v58;
  v59 = sub_23875BE40();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v61 = sub_23875BE20();
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v63 = sub_23875BD20();
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v65 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v68 = &v164 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v69 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v70 = v69[5];
  sub_2386ED1B4(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa);
  v71 = v1;
  sub_238759950();
  sub_2386ECFA8(v68, _s19ShippingFulfillmentO15StatusFormatterVMa);
  v73 = *(&v207 + 1);
  v72 = v207;
  v75 = *(&v208 + 1);
  v74 = v208;
  *v47 = sub_23875D030();
  *(v47 + 1) = 0x4028000000000000;
  v47[16] = 0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14970, &qword_2387814C0);
  sub_2386EAB00(v72, v73, v74, v75, v71, &v47[*(v76 + 44)]);

  sub_2386E8C0C();
  sub_23875C580();
  sub_23843A3E8(&qword_27DF14978, &qword_27DF14950, &qword_2387814A0);
  v77 = v50;
  sub_23875DCA0();
  sub_238439884(v47, &qword_27DF14950, &qword_2387814A0);
  v78 = v71 + *(v204 + 20);
  v79 = v177;
  sub_2384D5138(v177);
  v80 = v179;
  v81 = v182;
  (*(v40 + 104))(v179, *MEMORY[0x277CDF9D8], v182);
  v82 = sub_23875C870();
  v83 = *(v40 + 8);
  v83(v80, v81);
  v84 = v71;
  v83(v79, v81);
  v85 = 0x4028000000000000;
  if (sub_2386E8C0C())
  {
    if (*(v71 + v69[6] + 8))
    {
      v85 = 0;
    }

    else
    {
      v85 = 0x4028000000000000;
    }
  }

  if (v82)
  {
    v86 = 0x4028000000000000;
  }

  else
  {
    v86 = 0x4030000000000000;
  }

  v87 = v185;
  (*(v181 + 32))(v185, v77, v183);
  v88 = v87 + *(v178 + 36);
  *v88 = 0x4028000000000000;
  *(v88 + 8) = v86;
  *(v88 + 16) = v85;
  *(v88 + 24) = v86;
  *(v88 + 32) = 0;
  v89 = v188;
  sub_2386EC9B0(v84, v188, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
  v90 = (*(v186 + 80) + 16) & ~*(v186 + 80);
  v91 = swift_allocObject();
  sub_2386EC948(v89, v91 + v90, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
  v92 = v184;
  v93 = &v184[*(v180 + 36)];
  v94 = &v93[*(sub_23875C6E0() + 20)];
  sub_23875ED60();
  *v93 = &unk_2387814D0;
  *(v93 + 1) = v91;
  sub_2384396E4(v87, v92, &qword_27DF14960, &qword_2387814B0);
  sub_2384396E4(v92, v205, &qword_27DF14968, &qword_2387814B8);
  v95 = (v84 + v69[6]);
  if (v95[1])
  {
    v188 = v95[1];
    v96 = *v95;
    v97 = (v84 + v69[7]);
    v98 = v97[1];
    v175 = v84;
    if (v98)
    {
      v187 = v96;
      v99 = *v97;
      v100 = v201;
      v101 = v202;
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v102 = qword_2814F1B90;
      v103 = sub_23875EA50();
      v104 = sub_23875EA50();
      v105 = sub_23875EA50();
      v106 = [v102 localizedStringForKey:v103 value:v104 table:v105];

      v107 = sub_23875EA80();
      v109 = v108;

      *&v207 = v107;
      *(&v207 + 1) = v109;
      *&v208 = v99;
      *(&v208 + 1) = v98;
      MEMORY[0x28223BE20](v110);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
      sub_2385A8F14();
      sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
      sub_23875DB50();

      v111 = 0;
      v96 = v187;
    }

    else
    {
      v111 = 1;
      v100 = v201;
      v101 = v202;
    }

    (*(v101 + 56))(v100, v111, 1, v203);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v116 = qword_2814F1B90;
    v117 = sub_23875EA50();
    v118 = sub_23875EA50();
    v119 = sub_23875EA50();
    v120 = [v116 localizedStringForKey:v117 value:v118 table:v119];

    v121 = sub_23875EA80();
    v123 = v122;

    v187 = &v164;
    *&v207 = v121;
    *(&v207 + 1) = v123;
    *&v208 = v96;
    *(&v208 + 1) = v188;
    MEMORY[0x28223BE20](v124);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
    sub_2385A8F14();
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    v125 = v172;
    sub_23875DB50();

    v126 = v171;
    sub_23843981C(v100, v171, &qword_27DF0F528, &unk_238781490);
    v128 = v202;
    v127 = v203;
    v129 = *(v202 + 16);
    v130 = v173;
    v129(v173, v125, v203);
    v131 = v174;
    sub_23843981C(v126, v174, &qword_27DF0F528, &unk_238781490);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F570, &qword_238772928);
    v129((v131 + *(v132 + 48)), v130, v127);
    v133 = *(v128 + 8);
    v133(v125, v127);
    sub_238439884(v201, &qword_27DF0F528, &unk_238781490);
    v133(v130, v127);
    sub_238439884(v126, &qword_27DF0F528, &unk_238781490);
    v134 = v131;
    v114 = v206;
    sub_2384396E4(v134, v206, &qword_27DF0F518, &unk_238781480);
    v112 = 0;
    v115 = v193;
    v113 = v196;
  }

  else
  {
    v112 = 1;
    v113 = v196;
    v114 = v206;
    v115 = v193;
  }

  (*(v189 + 56))(v114, v112, 1, v190);
  v135 = *(v204 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
  v136 = v192;
  sub_23875E1B0();
  v137 = v194;
  if ((*(v115 + 48))(v136, 1, v194) == 1)
  {
    sub_238439884(v136, &qword_27DF0D040, &qword_2387676A0);
    v138 = 1;
    v139 = v199;
  }

  else
  {
    v140 = *(v115 + 32);
    v141 = v166;
    v140(v166, v136, v137);
    v142 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
    v143 = v167;
    (*(*(v142 - 8) + 56))(v167, 1, 1, v142);
    v144 = v165;
    v140((v143 + *(v165 + 20)), v141, v137);
    v145 = *(v144 + 24);
    v146 = *MEMORY[0x277CC8440];
    v147 = sub_23875AD80();
    (*(*(v147 - 8) + 104))(v143 + v145, v146, v147);
    v148 = v168;
    sub_2386EC948(v143, v168, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v149 = v169;
    sub_2386EC9B0(v148, v169, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    sub_23875E4B0();
    sub_23875C9C0();
    sub_2386ECFA8(v148, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v150 = v170;
    sub_2386EC948(v149, v170, type metadata accessor for OrderDetailsShippingTracking);
    v139 = v199;
    v151 = (v150 + *(v199 + 36));
    v152 = v212;
    v151[4] = v211;
    v151[5] = v152;
    v151[6] = v213;
    v153 = v208;
    *v151 = v207;
    v151[1] = v153;
    v154 = v210;
    v151[2] = v209;
    v151[3] = v154;
    sub_2384396E4(v150, v113, &qword_27DF0F508, &unk_238781470);
    v138 = 0;
  }

  (*(v198 + 56))(v113, v138, 1, v139);
  v155 = v205;
  v156 = v191;
  sub_23843981C(v205, v191, &qword_27DF14968, &qword_2387814B8);
  v157 = v195;
  sub_23843981C(v114, v195, &qword_27DF0F530, &qword_2387728F0);
  v158 = v113;
  v159 = v113;
  v160 = v197;
  sub_23843981C(v158, v197, &qword_27DF0F510, &unk_2387728D0);
  v161 = v200;
  sub_23843981C(v156, v200, &qword_27DF14968, &qword_2387814B8);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14980, &unk_2387814D8);
  sub_23843981C(v157, v161 + *(v162 + 48), &qword_27DF0F530, &qword_2387728F0);
  sub_23843981C(v160, v161 + *(v162 + 64), &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v159, &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v206, &qword_27DF0F530, &qword_2387728F0);
  sub_238439884(v155, &qword_27DF14968, &qword_2387814B8);
  sub_238439884(v160, &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v157, &qword_27DF0F530, &qword_2387728F0);
  return sub_238439884(v156, &qword_27DF14968, &qword_2387814B8);
}

uint64_t sub_2386EAB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a1;
  v55 = a3;
  v58 = a6;
  v9 = sub_2387581B0();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875D990();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OrderDetailsStatusLabel();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v57 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_2386E8F80();
  v24 = a4;
  v25 = v17[7];
  v26 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
  v27 = (a5 + *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0) + 32));
  v28 = *v27;
  v29 = v27[24];
  *v22 = v54;
  *(v22 + 1) = a2;
  *(v22 + 2) = v55;
  *(v22 + 3) = v24;
  v22[32] = v23;
  v30 = &v22[v17[8]];
  *v30 = v28;
  *(v30 + 8) = *(v27 + 8);
  v30[24] = v29;
  v31 = &v22[v17[9]];
  v59 = 0;
  sub_23875E1A0();
  v32 = v61;
  *v31 = v60;
  *(v31 + 1) = v32;
  v33 = &v22[v17[10]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v55 = a5;
  v34 = v17[11];
  v60 = 0x403F000000000000;
  v35 = *MEMORY[0x277CE0A50];
  v36 = *(v13 + 104);
  v36(v16, v35, v12);
  sub_23857414C();
  sub_23875C540();
  v37 = v17[12];
  v60 = 0x403C000000000000;
  v36(v16, v35, v12);
  sub_23875C540();
  v38 = v17[13];
  v60 = 0x4018000000000000;
  v36(v16, v35, v12);
  v39 = v55;
  sub_23875C540();
  if (sub_2386E8C0C())
  {
    v40 = v51;
    (*(v52 + 16))(v51, v39, v53);
    v41 = sub_2386D1800(v40);
    v43 = v42;
    v45 = v44;
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v45 = 1;
  }

  v46 = v57;
  sub_2386EC9B0(v22, v57, type metadata accessor for OrderDetailsStatusLabel);
  v47 = v58;
  sub_2386EC9B0(v46, v58, type metadata accessor for OrderDetailsStatusLabel);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149C0, &qword_238781540) + 48));
  *v48 = v41;
  v48[1] = v43;
  v48[2] = v45;
  sub_2385A9610(v41, v43, v45);
  sub_2386ECFA8(v22, type metadata accessor for OrderDetailsStatusLabel);
  sub_2385A9684(v41, v43, v45);
  sub_2386ECFA8(v46, type metadata accessor for OrderDetailsStatusLabel);
}

uint64_t sub_2386EAFE4()
{
  v0[2] = sub_23875ED50();
  v0[3] = sub_23875ED40();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2384E80A8;

  return sub_2386EB090();
}

uint64_t sub_2386EB090()
{
  v1[7] = v0;
  v2 = sub_23875BFC0();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_23875BFB0();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = sub_23875BFE0();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14988, &qword_2387814F0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v12 = sub_23875C000();
  v1[18] = v12;
  v13 = *(v12 - 8);
  v1[19] = v13;
  v14 = *(v13 + 64) + 15;
  v1[20] = swift_task_alloc();
  v15 = sub_23875C020();
  v1[21] = v15;
  v16 = *(v15 - 8);
  v1[22] = v16;
  v17 = *(v16 + 64) + 15;
  v1[23] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14990, &qword_2387814F8);
  v1[24] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14998, &qword_238781500);
  v1[26] = v20;
  v21 = *(v20 - 8);
  v1[27] = v21;
  v22 = *(v21 + 64) + 15;
  v1[28] = swift_task_alloc();
  v23 = sub_23875B940();
  v1[29] = v23;
  v24 = *(v23 - 8);
  v1[30] = v24;
  v25 = *(v24 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = sub_23875ED50();
  v1[40] = sub_23875ED40();
  v28 = sub_23875ECE0();
  v1[41] = v28;
  v1[42] = v27;

  return MEMORY[0x2822009F8](sub_2386EB4B0, v28, v27);
}

uint64_t sub_2386EB4B0()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v3 = (v1 + *(v2 + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = (v1 + *(v2 + 28));
    if (!v6[1])
    {
LABEL_9:
      v66 = *(v0 + 192);
      v70 = *(v0 + 224);
      v21 = *(v0 + 176);
      v58 = *(v0 + 184);
      v22 = *(v0 + 160);
      v60 = *(v0 + 168);
      v62 = *(v0 + 200);
      v23 = *(v0 + 152);
      v64 = *(v0 + 144);
      *(v0 + 16) = v5;
      *(v0 + 24) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149A0, &qword_238781508);
      v24 = *(v21 + 72);
      v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_2387632F0;
      sub_23875C010();
      *(v0 + 48) = v26;
      sub_2386ED1B4(&qword_27DF149A8, MEMORY[0x277CC5650]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF149B0, &qword_238781510);
      sub_23843A3E8(&qword_27DF149B8, &qword_27DF149B0, &qword_238781510);
      sub_23875F310();
      sub_23875BFF0();
      v27 = sub_2384397A8();
      sub_23875F2B0();
      (*(v23 + 8))(v22, v64);
      (*(v21 + 8))(v58, v60);
      *(v0 + 32) = MEMORY[0x277D837D0];
      *(v0 + 40) = v27;
      *(v0 + 344) = swift_getOpaqueTypeConformance2();
      sub_23875EE20();
      *(v0 + 368) = *MEMORY[0x277CC5648];
      v28 = *(v0 + 344);
      v29 = *(v0 + 312);
      v30 = *(v0 + 208);
      v31 = *(v0 + 192);
      v32 = sub_23875ED40();
      *(v0 + 352) = v32;
      swift_getAssociatedConformanceWitness();
      v33 = *(MEMORY[0x277D856D8] + 4);
      v34 = swift_task_alloc();
      *(v0 + 360) = v34;
      *v34 = v0;
      v34[1] = sub_2386EBAF4;
      v35 = *(v0 + 224);
      v36 = *(v0 + 208);
      v37 = *(v0 + 136);
      v38 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v37, v32, v38);
    }

    v7 = *v6;
    v8 = sub_23875EA50();
    v69 = v5;
    v9 = sub_23875EA50();
    v10 = DDResultGetShipmentTrackingUrlWithCarrier();

    if (v10)
    {
      v11 = *(v0 + 296);
      sub_23875B8B0();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v16 = *(v0 + 288);
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v19 = *(v18 + 56);
    v19(v15, v12, 1, v17);
    sub_2384396E4(v15, v14, &qword_27DF0D040, &qword_2387676A0);
    sub_23843981C(v14, v16, &qword_27DF0D040, &qword_2387676A0);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      v20 = *(v0 + 288);
      sub_238439884(*(v0 + 304), &qword_27DF0D040, &qword_2387676A0);
      sub_238439884(v20, &qword_27DF0D040, &qword_2387676A0);
      v5 = v69;
      goto LABEL_9;
    }

    v39 = *(v0 + 320);
    v41 = *(v0 + 280);
    v40 = *(v0 + 288);
    v42 = *(v0 + 272);
    v43 = *(v0 + 256);
    v44 = *(v0 + 232);
    v45 = *(v0 + 240);
    v67 = *(v0 + 56);
    v71 = *(v0 + 304);

    (*(v45 + 32))(v43, v40, v44);
    (*(v45 + 16))(v41, v43, v44);
    v19(v41, 0, 1, v44);
    LODWORD(v40) = *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0) + 28);
    sub_23843981C(v41, v42, &qword_27DF0D040, &qword_2387676A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
    sub_23875E1C0();
    sub_238439884(v41, &qword_27DF0D040, &qword_2387676A0);
    (*(v45 + 8))(v43, v44);
    sub_238439884(v71, &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    v13 = *(v0 + 320);
  }

  v47 = *(v0 + 296);
  v46 = *(v0 + 304);
  v49 = *(v0 + 280);
  v48 = *(v0 + 288);
  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v53 = *(v0 + 248);
  v52 = *(v0 + 256);
  v54 = *(v0 + 224);
  v55 = *(v0 + 200);
  v59 = *(v0 + 184);
  v61 = *(v0 + 160);
  v63 = *(v0 + 136);
  v65 = *(v0 + 128);
  v68 = *(v0 + 104);
  v72 = *(v0 + 80);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_2386EBAF4()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[44];

    v6 = v2[41];
    v7 = v2[42];

    return MEMORY[0x2822009F8](sub_2386EBC08, v6, v7);
  }

  return result;
}

uint64_t sub_2386EBC08()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 320);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

LABEL_3:
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = *(v0 + 224);
    v14 = *(v0 + 200);
    v57 = *(v0 + 184);
    v59 = *(v0 + 160);
    v61 = *(v0 + 136);
    v63 = *(v0 + 128);
    v65 = *(v0 + 104);
    v67 = *(v0 + 80);

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 368);
  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v20 = *(v0 + 64);
  (*(v3 + 32))(*(v0 + 128), v1, v2);
  sub_23875BFD0();
  if ((*(v19 + 88))(v18, v20) == v17)
  {
    v21 = *(v0 + 264);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    (*(*(v0 + 72) + 96))(v27, *(v0 + 64));
    (*(v25 + 32))(v24, v27, v26);
    sub_23875BFA0();
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      v46 = *(v0 + 320);
      v48 = *(v0 + 272);
      v47 = *(v0 + 280);
      v49 = *(v0 + 264);
      v50 = *(v0 + 240);
      v51 = *(v0 + 248);
      v52 = *(v0 + 232);
      v53 = *(v0 + 216);
      v66 = *(v0 + 208);
      v68 = *(v0 + 224);
      v54 = *(v0 + 120);
      v62 = *(v0 + 112);
      v64 = *(v0 + 128);
      v55 = *(v0 + 96);
      v58 = *(v0 + 88);
      v60 = *(v0 + 104);
      v56 = *(v0 + 56);

      (*(v50 + 32))(v51, v49, v52);
      (*(v50 + 16))(v47, v51, v52);
      (*(v50 + 56))(v47, 0, 1, v52);
      LODWORD(v49) = *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0) + 28);
      sub_23843981C(v47, v48, &qword_27DF0D040, &qword_2387676A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
      sub_23875E1C0();
      sub_238439884(v47, &qword_27DF0D040, &qword_2387676A0);
      (*(v50 + 8))(v51, v52);
      (*(v55 + 8))(v60, v58);
      (*(v54 + 8))(v64, v62);
      (*(v53 + 8))(v68, v66);
      goto LABEL_3;
    }

    v28 = *(v0 + 264);
    v30 = *(v0 + 120);
    v29 = *(v0 + 128);
    v31 = *(v0 + 112);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    (*(v30 + 8))(v29, v31);
    sub_238439884(v28, &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    v33 = *(v0 + 72);
    v32 = *(v0 + 80);
    v34 = *(v0 + 64);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    (*(v33 + 8))(v32, v34);
  }

  v35 = *(v0 + 344);
  v36 = *(v0 + 312);
  v37 = *(v0 + 208);
  v38 = *(v0 + 192);
  v39 = sub_23875ED40();
  *(v0 + 352) = v39;
  swift_getAssociatedConformanceWitness();
  v40 = *(MEMORY[0x277D856D8] + 4);
  v41 = swift_task_alloc();
  *(v0 + 360) = v41;
  *v41 = v0;
  v41[1] = sub_2386EBAF4;
  v42 = *(v0 + 224);
  v43 = *(v0 + 208);
  v44 = *(v0 + 136);
  v45 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v44, v39, v45);
}

uint64_t sub_2386EC114()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8();
  sub_23875E190();
}

uint64_t sub_2386EC2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v15[2] = a4;
  v15[3] = a5;
  v15[0] = a2;
  v15[1] = a6;
  v8 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386EC9B0(a1, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_2386EC948(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ExtractedOrderDetailsShippingFulfillment);
  v13 = (v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v15[0];
  v13[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

void sub_2386EC4C8(uint64_t a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1 + *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0) + 24);
  if ((*(v7 + 8) & 1) == 0)
  {
    v8 = *v7;

    sub_23875EFF0();
    v9 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2385A9698(v8, 0);
    (*(v3 + 8))(v6, v2);
  }

  v10 = [objc_opt_self() generalPasteboard];
  v11 = sub_23875EA50();
  [v10 setString_];
}