uint64_t sub_23848515C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384851A8()
{
  result = qword_27DF0AB30;
  if (!qword_27DF0AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AB30);
  }

  return result;
}

uint64_t sub_238485218@<X0>(uint64_t a1@<X8>)
{
  sub_2384397A8();

  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  sub_23875E080();
  v7 = sub_23875DA10();
  v9 = v8;
  v11 = v10;

  sub_2384397FC(v2, v4, v6 & 1);

  sub_23875D980();
  v12 = sub_23875DA60();
  v14 = v13;
  v16 = v15;

  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875D890();
  v17 = sub_23875D9E0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_2384397FC(v12, v14, v16 & 1);

  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v26 = sub_23875DA40();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  result = swift_getKeyPath();
  *v24 = result;
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_238485410@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_238485218(a1);
}

unint64_t sub_238485418()
{
  result = qword_27DF0AB40;
  if (!qword_27DF0AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AB38, &unk_238766830);
    sub_2384854A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AB40);
  }

  return result;
}

unint64_t sub_2384854A4()
{
  result = qword_27DF09C60;
  if (!qword_27DF09C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C20, &qword_2387711C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C60);
  }

  return result;
}

void sub_238485558()
{
  sub_23875B290();
  if (v0 <= 0x3F)
  {
    sub_2384857E4(319, &qword_27DF0A0C8, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_23848561C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875B290();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v11 = *(v2 + *(a1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1D0();
  LOBYTE(a1) = *(v2 + *(a1 + 20));
  v6 = type metadata accessor for BarcodeView_iOS(0);
  v7 = (a2 + *(v6 + 20));
  result = v9;
  *v7 = v9;
  v7[1].n128_u64[0] = v10;
  *(a2 + *(v6 + 24)) = a1;
  return result;
}

void sub_23848573C()
{
  sub_23875B290();
  if (v0 <= 0x3F)
  {
    sub_2384857E4(319, &qword_27DF0AB68, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384857E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09540, &unk_238763800);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_23848586C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB88, &qword_238766958);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB90, &qword_238766960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB98, &qword_238766968);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = (a1 + *(type metadata accessor for BarcodeView_iOS(0) + 20));
  v16 = *v15;
  v17 = *(v15 + 2);
  v26 = v16;
  v27 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
  MEMORY[0x23EE62DC0](&v25, v18);
  v19 = v25;
  if (v25)
  {
    *v6 = sub_23875D020();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABB8, &qword_238766978);
    sub_238485BA8(v19, &v6[*(v20 + 44)]);
    sub_23843981C(v6, v10, &qword_27DF0AB88, &qword_238766958);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABA0, &qword_238766970);
    sub_238486A50();
    sub_238486AB4();
    sub_23875D1B0();

    sub_238439884(v6, &qword_27DF0AB88, &qword_238766958);
  }

  else
  {
    v21 = [objc_opt_self() systemBackgroundColor];
    *v10 = sub_23875DFB0();
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABA0, &qword_238766970);
    sub_238486A50();
    sub_238486AB4();
    sub_23875D1B0();
  }

  sub_2384003D8(v14, v24);
}

uint64_t sub_238485BA8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABC0, &qword_238766980);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238485DC8(a1, v22);
  sub_238486244(v10);
  v19 = v22[2];
  v20 = v22[3];
  v21 = v23;
  v17 = v22[0];
  v18 = v22[1];
  sub_23843981C(v10, v8, &qword_27DF0ABC0, &qword_238766980);
  v11 = v20;
  v24[2] = v19;
  v24[3] = v20;
  v12 = v21;
  v25 = v21;
  v14 = v17;
  v13 = v18;
  v24[0] = v17;
  v24[1] = v18;
  *(a2 + 32) = v19;
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *a2 = v14;
  *(a2 + 16) = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABC8, &qword_238766988);
  sub_23843981C(v8, a2 + *(v15 + 48), &qword_27DF0ABC0, &qword_238766980);
  sub_238486B38(v24, v26);
  sub_238439884(v10, &qword_27DF0ABC0, &qword_238766980);
  sub_238439884(v8, &qword_27DF0ABC0, &qword_238766980);
  v26[2] = v19;
  v26[3] = v20;
  v27 = v21;
  v26[0] = v17;
  v26[1] = v18;
  sub_238486BA8(v26);
}

double sub_238485DC8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_238757FE0();
  v37 = *(v35 - 8);
  v5 = *(v37 + 64);
  v6 = MEMORY[0x28223BE20](v35);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - v8;
  v9 = sub_23875E0E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875E0F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  sub_23875E0C0();
  (*(v15 + 104))(v18, *MEMORY[0x277CE0FF8], v14);
  sub_23875E100();

  (*(v15 + 8))(v18, v14);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
  v20 = sub_23875E150();

  (*(v10 + 8))(v13, v9);
  if (*(v2 + *(type metadata accessor for BarcodeView_iOS(0) + 24)) == 1)
  {
    v21 = v34;
    sub_23875B270();
    v22 = *(v37 + 88);
    v23 = v35;
    v24 = v22(v21, v35);
    v25 = *MEMORY[0x277CC6D70];
    if (v24 != *MEMORY[0x277CC6D70] && v24 != *MEMORY[0x277CC6D88] && v24 != *MEMORY[0x277CC6D78] && v24 != *MEMORY[0x277CC6D80])
    {
      (*(v37 + 8))(v21, v23);
    }

    v26 = v36;
    sub_23875B270();
    v27 = v22(v26, v23);
    if (v27 != v25 && v27 != *MEMORY[0x277CC6D88] && v27 != *MEMORY[0x277CC6D78] && v27 != *MEMORY[0x277CC6D80])
    {
      (*(v37 + 8))(v36, v23);
    }
  }

  sub_23875E4A0();
  sub_23875C5C0();
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v39 = v43;
  v38 = 1;
  *a2 = v20;
  *(a2 + 8) = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v30;
  *(a2 + 32) = v31;
  result = *&v44;
  *(a2 + 40) = v44;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

uint64_t sub_238486244@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875C880();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABD8, &qword_238766998);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = sub_23875B280();
  if (v12)
  {
    v49 = v11;
    v50 = v12;
    sub_2384397A8();
    v13 = sub_23875DAA0();
    v45 = v10;
    v15 = v14;
    v17 = v16;
    sub_23875D980();
    v18 = sub_23875DA60();
    v46 = a1;
    v47 = v7;
    v19 = v18;
    v43 = v6;
    v44 = v2;
    v21 = v20;
    v23 = v22;

    sub_2384397FC(v13, v15, v17 & 1);

    v24 = sub_23875DA70();
    v26 = v25;
    v28 = v27;
    sub_2384397FC(v19, v21, v23 & 1);

    sub_23875D890();
    v29 = sub_23875D9E0();
    v31 = v30;
    LOBYTE(v21) = v32;
    v34 = v33;
    sub_2384397FC(v24, v26, v28 & 1);

    v49 = v29;
    v50 = v31;
    LOBYTE(v21) = v21 & 1;
    v51 = v21;
    v52 = v34;
    v36 = v43;
    v35 = v44;
    (*(v3 + 104))(v43, *MEMORY[0x277CDF9E8], v44);
    v37 = v45;
    sub_23875DC40();
    (*(v3 + 8))(v36, v35);
    sub_2384397FC(v29, v31, v21);

    v38 = v47;
    v39 = v46;
    (*(v48 + 32))(v46, v37, v47);
    return (*(v48 + 56))(v39, 0, 1, v38);
  }

  else
  {
    v41 = *(v48 + 56);

    return v41(a1, 1, 1, v7);
  }
}

uint64_t sub_2384865C0(uint64_t a1)
{
  *(v1 + 48) = a1;
  sub_23875ED50();
  *(v1 + 56) = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238486658, v3, v2);
}

uint64_t sub_238486658()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = sub_23846EEBC(4.0);
  if (v3)
  {
    v4 = v3;
    v5 = v0[6];
    v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v3 scale:0 orientation:1.0];
    v7 = (v5 + *(type metadata accessor for BarcodeView_iOS(0) + 20));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v0[2] = v8;
    v0[3] = v9;
    v0[4] = v10;
    v0[5] = v6;
    v11 = v10;
    v12 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
    sub_23875E2F0();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_238486794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_23848586C(v2, a2);
  sub_2384868BC(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_238486920(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB78, &qword_238766948) + 36));
  v9 = v8 + *(sub_23875C6E0() + 20);
  result = sub_23875ED60();
  *v8 = &unk_238766940;
  v8[1] = v7;
  return result;
}

uint64_t sub_2384868BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarcodeView_iOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238486920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarcodeView_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238486984()
{
  v2 = *(type metadata accessor for BarcodeView_iOS(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_2384865C0(v0 + v3);
}

unint64_t sub_238486A50()
{
  result = qword_27DF0ABA8;
  if (!qword_27DF0ABA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AB88, &qword_238766958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABA8);
  }

  return result;
}

unint64_t sub_238486AB4()
{
  result = qword_27DF0ABB0;
  if (!qword_27DF0ABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ABA0, &qword_238766970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABB0);
  }

  return result;
}

uint64_t sub_238486B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABD0, &qword_238766990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238486BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABD0, &qword_238766990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238486C10()
{
  result = qword_27DF0ABE0;
  if (!qword_27DF0ABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AB78, &qword_238766948);
    sub_238486CCC();
    sub_238486DDC(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABE0);
  }

  return result;
}

unint64_t sub_238486CCC()
{
  result = qword_27DF0ABE8;
  if (!qword_27DF0ABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ABF0, &unk_2387669A0);
    sub_238486D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABE8);
  }

  return result;
}

unint64_t sub_238486D50()
{
  result = qword_27DF0ABF8;
  if (!qword_27DF0ABF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AB98, &qword_238766968);
    sub_238486A50();
    sub_238486AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABF8);
  }

  return result;
}

uint64_t sub_238486DDC(unint64_t *a1, void (*a2)(uint64_t))
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

void *FinancialConnectionUIExtensionHostView.init(financialExtension:authorizationParams:completionHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2384347C0(a1, a5);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  *(a5 + 40) = sub_238486EF8;
  *(a5 + 48) = result;
  *(a5 + 56) = 0;
  return result;
}

void *sub_238486E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FinancialConnectionUIExtensionHostViewModel();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = 0;

  return v6;
}

uint64_t FinancialConnectionUIExtensionHostView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C0A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23845C998(v1, v15);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  type metadata accessor for FinancialConnectionUIExtensionHostViewModel();
  sub_238487058();
  v11 = sub_23875C490();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_2387591C0();
  v12 = sub_23875C090();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v15);
  result = sub_23875D7A0();
  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_238487058()
{
  result = qword_27DF0AC00;
  if (!qword_27DF0AC00)
  {
    type metadata accessor for FinancialConnectionUIExtensionHostViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AC00);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2384870F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_238487140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384871A0()
{
  result = qword_27DF0AC08;
  if (!qword_27DF0AC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AC10, &qword_238766AA8);
    sub_23848722C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AC08);
  }

  return result;
}

unint64_t sub_23848722C()
{
  result = qword_27DF0AC18;
  if (!qword_27DF0AC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AC20, &qword_238766AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AC18);
  }

  return result;
}

id sub_238487290()
{
  type metadata accessor for BrightnessCoordinator();
  v0 = swift_allocObject();
  v0[2] = 1127299088;
  v0[3] = 0x3FD999999999999ALL;
  result = [objc_allocWithZone(MEMORY[0x277CFD390]) init];
  v0[4] = result;
  qword_27DF2F670 = v0;
  return result;
}

void sub_238487300(char a1)
{
  if (a1)
  {
    v3 = 177.22;
  }

  else
  {
    v3 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D0, &unk_2387713A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763B60;
  *(inited + 32) = 1937009006;
  v5 = MEMORY[0x277D83A90];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 72) = v5;
  *(inited + 80) = 0x646F69726570;
  *(inited + 120) = MEMORY[0x277D839F8];
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x3FD999999999999ALL;
  sub_23853BB18(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D8, &qword_238766B00);
  swift_arrayDestroy();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2387632F0;
  *(v6 + 32) = 0x57656C6261736944;
  v7 = v6 + 32;
  *(v6 + 40) = 0xEE00746669685350;
  *(v6 + 72) = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  sub_23853BB18(v6);
  swift_setDeallocating();
  sub_2384875DC(v7);
  v8 = *(v1 + 32);
  v9 = sub_23875E910();

  v10 = sub_23875EA50();
  [v8 setProperty:v9 forKey:v10];

  v11 = *(v1 + 32);
  v12 = sub_23875E910();

  v13 = sub_23875EA50();
  [v11 setProperty:v12 forKey:v13];
}

uint64_t sub_238487580()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2384875DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D8, &qword_238766B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238487644()
{
  v0 = sub_238758850();
  __swift_allocate_value_buffer(v0, qword_2814F1B98);
  __swift_project_value_buffer(v0, qword_2814F1B98);
  return sub_238758830();
}

uint64_t sub_2384876A8()
{
  v0 = sub_238758850();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384877C4();
  if (qword_2814F1178 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2814F1B98);
  (*(v1 + 16))(v4, v5, v0);
  result = sub_23875F180();
  qword_2814F1B90 = result;
  return result;
}

unint64_t sub_2384877C4()
{
  result = qword_2814F0878;
  if (!qword_2814F0878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814F0878);
  }

  return result;
}

uint64_t _s5SmallVMa()
{
  result = qword_2814F1008;
  if (!qword_2814F1008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238487884()
{
  type metadata accessor for OrderWidgetTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_238487958(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_238487958(319, &qword_2814F09C0, MEMORY[0x277CE3AF8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238487958(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2384879C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC38, &qword_238766B68);
  v119 = *(v3 - 8);
  v120 = v3;
  v4 = *(v119 + 64);
  MEMORY[0x28223BE20](v3);
  v111 = (&v94 - v5);
  v108 = type metadata accessor for OrderWidgetMoreTextView();
  v6 = *(*(v108 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v108);
  v110 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v94 - v9;
  v100 = sub_23875E7A0();
  v97 = *(v100 - 8);
  v10 = *(v97 + 64);
  v11 = MEMORY[0x28223BE20](v100);
  v96 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v94 - v13;
  v105 = sub_23875E360();
  v104 = *(v105 - 8);
  v14 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC40, &qword_238766B70);
  v16 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v103 = &v94 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC48, &qword_238766B78);
  v18 = *(*(v101 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v101);
  v107 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v98 = &v94 - v22;
  MEMORY[0x28223BE20](v21);
  v106 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC50, &qword_238766B80);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v118 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v117 = &v94 - v28;
  v94 = _s5SmallVMa();
  v112 = *(v94 - 8);
  v29 = *(v112 + 64);
  MEMORY[0x28223BE20](v94);
  v114 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v94 - v32;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC60, &qword_238766B90);
  v34 = *(*(v113 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v113);
  v116 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v94 - v38;
  MEMORY[0x28223BE20](v37);
  v122 = &v94 - v40;
  sub_23875ED50();
  v115 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = a1;
  v42 = *a1;
  v43 = *(*a1 + 16);
  v44 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v45 = *(v44 - 8);
  if (v43)
  {
    sub_2384897B4(v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v33, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    (*(v45 + 56))(v33, 0, 1, v44);
  }

  else
  {
    (*(v45 + 56))(v33, 1, 1, v44);
  }

  v46 = v41;
  v47 = v41;
  v48 = v114;
  sub_2384897B4(v47, v114, _s5SmallVMa);
  v49 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v50 = swift_allocObject();
  sub_23848974C(v48, v50 + v49, _s5SmallVMa);
  type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v51 = *(v45 + 56);
  v52 = 1;
  v51(v39, 1, 1, v44);
  sub_2384895F4(v33, v39);
  v53 = &v39[*(v113 + 36)];
  *v53 = sub_238489574;
  v53[1] = v50;
  sub_2384396E4(v39, v122, &qword_27DF0AC60, &qword_238766B90);
  v54 = *(v46 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v55 = v117;
  if (v54 >= 2)
  {
    v56 = v102;
    sub_23875E350();
    v114 = *(v94 + 24);
    v57 = v95;
    sub_2384D5188(v95);
    v58 = v96;
    sub_23875E790();
    v59 = sub_23875E780();
    v60 = *(v97 + 8);
    v61 = v58;
    v62 = v100;
    v60(v61, v100);
    v60(v57, v62);
    if (v59)
    {
      v63 = sub_23875E020();
    }

    else
    {
      v64 = [objc_opt_self() systemGroupedBackgroundColor];
      v63 = sub_23875DFB0();
    }

    v65 = v63;
    v66 = sub_23875D780();
    v67 = v103;
    (*(v104 + 32))(v103, v56, v105);
    v68 = v67 + *(v99 + 36);
    *v68 = v65;
    *(v68 + 8) = v66;
    LOBYTE(v65) = sub_23875D790();
    sub_23875C3D0();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = v98;
    sub_2384396E4(v67, v98, &qword_27DF0AC40, &qword_238766B70);
    v78 = v77 + *(v101 + 36);
    *v78 = v65;
    *(v78 + 8) = v70;
    *(v78 + 16) = v72;
    *(v78 + 24) = v74;
    *(v78 + 32) = v76;
    *(v78 + 40) = 0;
    v79 = v106;
    sub_2384396E4(v77, v106, &qword_27DF0AC48, &qword_238766B78);
    v80 = v54 - 1;
    v81 = v108;
    v82 = v109;
    sub_2384D5188(&v109[*(v108 + 20)]);
    *v82 = v80;
    v83 = *(v81 + 24);
    *(v82 + v83) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v84 = v107;
    sub_23843981C(v79, v107, &qword_27DF0AC48, &qword_238766B78);
    v85 = v110;
    sub_2384897B4(v82, v110, type metadata accessor for OrderWidgetMoreTextView);
    v86 = v111;
    *v111 = 0;
    *(v86 + 8) = 1;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC78, &qword_238766BD0);
    sub_23843981C(v84, v86 + *(v87 + 48), &qword_27DF0AC48, &qword_238766B78);
    sub_2384897B4(v85, v86 + *(v87 + 64), type metadata accessor for OrderWidgetMoreTextView);
    sub_23848981C(v82, type metadata accessor for OrderWidgetMoreTextView);
    sub_238439884(v79, &qword_27DF0AC48, &qword_238766B78);
    sub_23848981C(v85, type metadata accessor for OrderWidgetMoreTextView);
    sub_238439884(v84, &qword_27DF0AC48, &qword_238766B78);
    sub_2384396E4(v86, v55, &qword_27DF0AC38, &qword_238766B68);
    v52 = 0;
  }

  (*(v119 + 56))(v55, v52, 1, v120);
  v88 = v122;
  v89 = v116;
  sub_23843981C(v122, v116, &qword_27DF0AC60, &qword_238766B90);
  v90 = v118;
  sub_23843981C(v55, v118, &qword_27DF0AC50, &qword_238766B80);
  v91 = v121;
  sub_23843981C(v89, v121, &qword_27DF0AC60, &qword_238766B90);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC70, &qword_238766B98);
  sub_23843981C(v90, v91 + *(v92 + 48), &qword_27DF0AC50, &qword_238766B80);
  sub_238439884(v55, &qword_27DF0AC50, &qword_238766B80);
  sub_238439884(v88, &qword_27DF0AC60, &qword_238766B90);
  sub_238439884(v90, &qword_27DF0AC50, &qword_238766B80);
  sub_238439884(v89, &qword_27DF0AC60, &qword_238766B90);
}

uint64_t sub_238488554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23875D030();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC80, &qword_238766BD8);
  return sub_2384885B8(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_2384885B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v120 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC88, &qword_238766BE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v121 = v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v119 = (v104 - v8);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  v9 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v114 = v104 - v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  v11 = *(*(v113 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v113);
  v118 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v112 = v104 - v15;
  MEMORY[0x28223BE20](v14);
  v115 = v104 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v104 - v19;
  v21 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v122 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v24 = *(*(v123 - 1) + 64);
  MEMORY[0x28223BE20](v123);
  v26 = v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v27 = *(*(v125 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v125);
  v108 = v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v104 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v104 - v33;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  v35 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v37 = v104 - v36;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  v38 = *(*(v107 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v107);
  v110 = v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v105 = v104 - v42;
  MEMORY[0x28223BE20](v41);
  v124 = v104 - v43;
  sub_23875ED50();
  v109 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384897B4(a1, v34, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v122;
    sub_23848974C(v34, v122, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v46 = *(v44 + 80);
    v45 = *(v44 + 88);

    v47 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v48 = v44;
  }

  else
  {
    sub_23848974C(v34, v26, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v49 = &v26[v123[8]];
    v46 = *v49;
    v45 = *(v49 + 1);

    v47 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v48 = v26;
  }

  sub_23848981C(v48, v47);
  v126 = v46;
  v127 = v45;
  v104[1] = sub_2384397A8();
  v50 = sub_23875DAA0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_2384897B4(a1, v32, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v116 = a1;
  v104[0] = v26;
  if (EnumCaseMultiPayload == 1)
  {
    v58 = v122;
    sub_23848974C(v32, v122, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v59 = *(v58 + 96);

    v60 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v61 = v58;
  }

  else
  {
    sub_23848974C(v32, v26, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v59 = *&v26[v123[9]];

    v60 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v61 = v26;
  }

  sub_23848981C(v61, v60);
  v126 = v50;
  v127 = v52;
  v128 = v54 & 1;
  v129 = v56;
  sub_23875D890();
  sub_23875DAF0();
  *&v20[*(v17 + 36)] = v59;
  sub_238489664();

  sub_23875DAB0();
  sub_2384397FC(v50, v52, v54 & 1);

  sub_238439884(v20, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath();
  v63 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36)];
  *v63 = KeyPath;
  *(v63 + 1) = 1;
  v63[16] = 0;
  v64 = swift_getKeyPath();
  v65 = &v37[*(v106 + 36)];
  *v65 = v64;
  v65[8] = 1;
  v66 = sub_23875D7F0();
  v67 = swift_getKeyPath();
  v68 = v37;
  v69 = v105;
  sub_2384396E4(v68, v105, &qword_27DF0ACA8, &qword_238766C00);
  v70 = (v69 + *(v107 + 36));
  *v70 = v67;
  v70[1] = v66;
  sub_2384396E4(v69, v124, &qword_27DF0ACB0, &qword_238766C08);
  v71 = v116;
  v72 = v108;
  sub_2384897B4(v116, v108, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = v122;
    sub_23848974C(v72, v122, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v75 = *(v73 + 32);
    v74 = *(v73 + 40);

    v76 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v73 = v104[0];
    sub_23848974C(v72, v104[0], type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v77 = (v73 + v123[7]);
    v75 = *v77;
    v74 = v77[1];

    v76 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23848981C(v73, v76);
  v126 = v75;
  v127 = v74;
  v78 = sub_23875DAA0();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = *(v111 + 36);
  v86 = swift_getKeyPath();
  v87 = v114;
  *&v114[v85] = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v87 = v78;
  *(v87 + 8) = v80;
  *(v87 + 16) = v82 & 1;
  *(v87 + 24) = v84;
  v88 = sub_23875D960();
  v89 = swift_getKeyPath();
  v90 = v112;
  sub_2384396E4(v87, v112, &qword_27DF0AC90, &qword_238766BE8);
  v91 = (v90 + *(v113 + 36));
  *v91 = v89;
  v91[1] = v88;
  v92 = v115;
  sub_2384396E4(v90, v115, &qword_27DF0AC98, &qword_238766BF0);
  v93 = sub_23875CE60();
  v94 = v119;
  *v119 = v93;
  *(v94 + 8) = 0;
  *(v94 + 16) = 1;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC8, &qword_238766CA8);
  sub_238489120(v71, v117, (v94 + *(v95 + 44)));
  v96 = v124;
  v97 = v110;
  sub_23843981C(v124, v110, &qword_27DF0ACB0, &qword_238766C08);
  v98 = v118;
  sub_23843981C(v92, v118, &qword_27DF0AC98, &qword_238766BF0);
  v99 = v121;
  sub_23843981C(v94, v121, &qword_27DF0AC88, &qword_238766BE0);
  v100 = v120;
  sub_23843981C(v97, v120, &qword_27DF0ACB0, &qword_238766C08);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACD0, &qword_238766CB0);
  sub_23843981C(v98, v100 + v101[12], &qword_27DF0AC98, &qword_238766BF0);
  v102 = v100 + v101[16];
  *v102 = 0x4010000000000000;
  *(v102 + 8) = 0;
  sub_23843981C(v99, v100 + v101[20], &qword_27DF0AC88, &qword_238766BE0);
  sub_238439884(v94, &qword_27DF0AC88, &qword_238766BE0);
  sub_238439884(v92, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v96, &qword_27DF0ACB0, &qword_238766C08);
  sub_238439884(v99, &qword_27DF0AC88, &qword_238766BE0);
  sub_238439884(v98, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v97, &qword_27DF0ACB0, &qword_238766C08);
}

uint64_t sub_238489120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v4 = sub_23875C880();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v36 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderWidgetImageView();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v31 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384897B4(v33, v36, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (*(a2 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24)) < 2)
  {
    v27 = 68.0;
  }

  else
  {
    v24 = a2 + *(_s5SmallVMa() + 20);
    sub_2384D5138(v10);
    v25 = v32;
    (*(v5 + 104))(v32, *MEMORY[0x277CDFA00], v4);
    sub_23848987C();
    LOBYTE(v24) = sub_23875E9B0();
    v26 = *(v5 + 8);
    v26(v25, v4);
    v26(v10, v4);
    if (v24)
    {
      v27 = 56.0;
    }

    else
    {
      v27 = 60.0;
    }
  }

  sub_23848974C(v36, v21, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v21[v14[5]] = v27;
  *&v21[v14[6]] = 0x4051000000000000;
  *&v21[v14[7]] = 0x4018000000000000;
  sub_23848974C(v21, v23, type metadata accessor for OrderWidgetImageView);
  sub_2384897B4(v23, v18, type metadata accessor for OrderWidgetImageView);
  v28 = v35;
  *v35 = 0;
  *(v28 + 8) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACD8, &qword_238766CB8);
  sub_2384897B4(v18, v28 + *(v29 + 48), type metadata accessor for OrderWidgetImageView);
  sub_23848981C(v23, type metadata accessor for OrderWidgetImageView);
  sub_23848981C(v18, type metadata accessor for OrderWidgetImageView);
}

uint64_t sub_238489524@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC30, &qword_238766B60);
  return sub_2384879C8(v1, a1 + *(v3 + 44));
}

uint64_t sub_238489574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s5SmallVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238488554(a1, v6, a2);
}

uint64_t sub_2384895F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_238489664()
{
  result = qword_27DF0ACB8;
  if (!qword_27DF0ACB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ACA0, &qword_238766BF8);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ACB8);
  }

  return result;
}

uint64_t sub_23848974C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384897B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23848981C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23848987C()
{
  result = qword_27DF0AAC0;
  if (!qword_27DF0AAC0)
  {
    sub_23875C880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AAC0);
  }

  return result;
}

uint64_t AccountTimeShareButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v14[0] = sub_23875C950();
  v2 = *(v14[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACF0, &qword_238766CD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v11 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v11;
  v16 = *(v1 + 32);
  v14[4] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACF8, &qword_238766CD8);
  sub_23843A3E8(&qword_27DF0AD00, &qword_27DF0ACF8, &qword_238766CD8);
  sub_23875E200();
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0AD08, &qword_27DF0ACF0, &qword_238766CD0);
  sub_238489C10();
  v12 = v14[0];
  sub_23875DB30();
  (*(v2 + 8))(v5, v12);
  return (*(v7 + 8))(v10, v6);
}

double sub_238489B40@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  sub_238489C84(a1, v8);

  v9[25] = v4;
  v5 = *v9;
  a2[2] = v8[2];
  a2[3] = v5;
  v6 = v8[1];
  *a2 = v8[0];
  a2[1] = v6;
  result = *&v9[10];
  *(a2 + 58) = *&v9[10];
  return result;
}

unint64_t sub_238489C10()
{
  result = qword_27DF0A778;
  if (!qword_27DF0A778)
  {
    sub_23875C950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A778);
  }

  return result;
}

uint64_t sub_238489C84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (qword_2814F0880 != -1)
  {
    v27 = a1[1];
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  sub_2384397A8();
  v11 = sub_23875DAA0();
  v13 = v12;
  LOBYTE(v8) = v14;
  sub_23875D420();
  v15 = sub_23875DA20();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_2384397FC(v11, v13, v8 & 1);

  LOBYTE(v11) = sub_23875D7D0();
  result = sub_23875C3D0();
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v11;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  *(a2 + 64) = v26;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_238489E60@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v14[0] = sub_23875C950();
  v2 = *(v14[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACF0, &qword_238766CD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v11 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v11;
  v16 = *(v1 + 32);
  v14[4] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACF8, &qword_238766CD8);
  sub_23843A3E8(&qword_27DF0AD00, &qword_27DF0ACF8, &qword_238766CD8);
  sub_23875E200();
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0AD08, &qword_27DF0ACF0, &qword_238766CD0);
  sub_238489C10();
  v12 = v14[0];
  sub_23875DB30();
  (*(v2 + 8))(v5, v12);
  return (*(v7 + 8))(v10, v6);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23848A0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23848A128(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23848A180()
{
  result = qword_27DF0AD10;
  if (!qword_27DF0AD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AD18, &qword_238766D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ACF0, &qword_238766CD0);
    sub_23875C950();
    sub_23843A3E8(&qword_27DF0AD08, &qword_27DF0ACF0, &qword_238766CD0);
    sub_238489C10();
    swift_getOpaqueTypeConformance2();
    sub_23848A29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD10);
  }

  return result;
}

unint64_t sub_23848A29C()
{
  result = qword_27DF0AD20;
  if (!qword_27DF0AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD20);
  }

  return result;
}

uint64_t sub_23848A2F4()
{
  v2 = *v0;
  v3 = v0[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD30, &qword_238766E48);
  sub_23848A5AC();
  sub_23875DE00();
}

id sub_23848A510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CloseButton.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23848A5AC()
{
  result = qword_27DF0AD38;
  if (!qword_27DF0AD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AD30, &qword_238766E48);
    sub_23848A638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD38);
  }

  return result;
}

unint64_t sub_23848A638()
{
  result = qword_27DF0AD40;
  if (!qword_27DF0AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD40);
  }

  return result;
}

unint64_t sub_23848A69C()
{
  result = qword_27DF0AD48;
  if (!qword_27DF0AD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AD50, &qword_238766E50);
    sub_23848A5AC();
    sub_23844E9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD48);
  }

  return result;
}

id sub_23848A72C()
{
  v0 = [objc_opt_self() buttonWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD60, &unk_238766F38);
  sub_23875D600();
  [v0 addTarget:v2 action:sel_doAction_ forControlEvents:64];

  return v0;
}

uint64_t sub_23848A7D0()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD60, &unk_238766F38);
  sub_23875D600();
  v3 = &v6[OBJC_IVAR____TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator_configuration];
  v4 = *&v6[OBJC_IVAR____TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator_configuration + 8];
  *v3 = v2;
  *(v3 + 1) = v1;
}

id sub_23848A858@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _CloseButton.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator_configuration];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_23848A924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23848AA14();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23848A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23848AA14();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23848A9EC()
{
  sub_23848AA14();
  sub_23875D120();
  __break(1u);
}

unint64_t sub_23848AA14()
{
  result = qword_27DF0AD58;
  if (!qword_27DF0AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD58);
  }

  return result;
}

uint64_t BankConnectAuthorizationError.failureReason.getter()
{
  v1 = v0;
  v2 = sub_238757B60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BankConnectAuthorizationError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23848B020(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_2814F0880 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_2814F0880 == -1)
    {
LABEL_11:
      v26 = qword_2814F1B90;
      v27 = sub_23875EA50();
      v28 = sub_23875EA50();
      v29 = sub_23875EA50();
      v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

      v25 = sub_23875EA80();
      return v25;
    }

    swift_once();
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2387632F0;
    v13 = sub_238757B50();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_238448C58();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    if (qword_2814F0880 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  (*(v3 + 32))(v6, v10, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2387632F0;
  v17 = sub_238757B50();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_238448C58();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  if (qword_2814F0880 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_9:
  v20 = qword_2814F1B90;
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

  sub_23875EA80();
  v25 = sub_23875EAA0();

  (*(v3 + 8))(v6, v2);
  return v25;
}

uint64_t type metadata accessor for BankConnectAuthorizationError()
{
  result = qword_27DF0AD70;
  if (!qword_27DF0AD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23848B020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectAuthorizationError.errorDescription.getter()
{
  v1 = type metadata accessor for BankConnectAuthorizationError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23848B020(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_2814F0880 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_2814F0880 == -1)
    {
LABEL_11:
      v12 = qword_2814F1B90;
      v13 = sub_23875EA50();
      v14 = sub_23875EA50();
      v15 = sub_23875EA50();
      v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

      v11 = sub_23875EA80();
      return v11;
    }

    swift_once();
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (qword_2814F0880 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_9:
  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  sub_23848BBAC(v4);
  return v11;
}

uint64_t sub_23848B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - v7;
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

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  v20[0] = v14;
  v20[1] = v16;
  sub_23875C3B0();
  v17 = sub_23875C3C0();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  sub_2384397A8();

  sub_23875E220();
}

uint64_t sub_23848B6C0(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_23848B770@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  BankConnectAuthorizationError.failureReason.getter();
  sub_2384397A8();
  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t _s12FinanceKitUI29BankConnectAuthorizationErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v33 = sub_238757B60();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for BankConnectAuthorizationError();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD80, &qword_238767038);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v32 - v21;
  v23 = *(v20 + 56);
  sub_23848B020(a1, &v32 - v21);
  sub_23848B020(a2, &v22[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23848B020(v22, v15);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_10;
      }

      v25 = v33;
      (*(v4 + 32))(v8, &v22[v23], v33);
      v26 = MEMORY[0x23EE5C610](v15, v8);
      v27 = *(v4 + 8);
      v27(v8, v25);
      v28 = v15;
      v29 = v25;
    }

    else
    {
      sub_23848B020(v22, v17);
      if (swift_getEnumCaseMultiPayload())
      {
        v15 = v17;
LABEL_10:
        (*(v4 + 8))(v15, v33);
LABEL_13:
        sub_23848BCCC(v22);
        v26 = 0;
        return v26 & 1;
      }

      v30 = v33;
      (*(v4 + 32))(v10, &v22[v23], v33);
      v26 = MEMORY[0x23EE5C610](v17, v10);
      v27 = *(v4 + 8);
      v27(v10, v30);
      v28 = v17;
      v29 = v30;
    }

    v27(v28, v29);
    sub_23848BBAC(v22);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_23848BBAC(v22);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_23848BBAC(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23848BC0C()
{
  result = qword_27DF0AD68;
  if (!qword_27DF0AD68)
  {
    type metadata accessor for BankConnectAuthorizationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD68);
  }

  return result;
}

uint64_t sub_23848BC64()
{
  result = sub_238757B60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23848BCCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD80, &qword_238767038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ReturnIcon()
{
  result = qword_27DF0AD88;
  if (!qword_27DF0AD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23848BDA8()
{
  sub_238438628();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23848BE38()
{
  result = qword_27DF0AD98;
  if (!qword_27DF0AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD98);
  }

  return result;
}

uint64_t sub_23848BEA4()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t sub_23848BF18()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

__n128 sub_23848BF78@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875E4A0();
  v6 = v5;
  sub_23848C07C(v2, &v15);
  v22 = v17;
  v23 = v18;
  v24 = v19;
  v20 = v15;
  v21 = v16;
  v25[2] = v17;
  v25[3] = v18;
  v26 = v19;
  v25[0] = v15;
  v25[1] = v16;
  sub_23848C468(&v20, &v14);
  sub_23848C4D8(v25);
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v27 = v20;
  v28 = v21;
  if (*v2)
  {
    v7 = 10.0;
    v8 = sub_23875D8E0();
  }

  else
  {
    v7 = 12.0;
    v8 = sub_23875D830();
  }

  v9 = v8;
  KeyPath = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  v11 = v30;
  *(a1 + 48) = v29;
  *(a1 + 64) = v11;
  v12 = v31;
  result = v28;
  *(a1 + 16) = v27;
  *(a1 + 32) = result;
  *(a1 + 80) = v12;
  *(a1 + 88) = KeyPath;
  *(a1 + 96) = v9;
  *(a1 + 104) = v7;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_23848C07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_23875DFD0();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875C450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_23875E0D0();
  v17 = a1 + *(type metadata accessor for ReturnIcon() + 20);
  sub_2384D4E38(v15);
  (*(v9 + 104))(v13, *MEMORY[0x277CDF3C0], v8);
  LOBYTE(v17) = sub_23875C440();
  v18 = *(v9 + 8);
  v18(v13, v8);
  v18(v15, v8);
  if (v17)
  {
    v19 = sub_23875E010();
  }

  else
  {
    v19 = sub_23875E040();
  }

  v29 = v19;
  KeyPath = swift_getKeyPath();
  v21 = sub_23875E0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_238763B60;
  v23 = *MEMORY[0x277CE0EE0];
  v24 = *(v4 + 104);
  v25 = v30;
  v24(v7, v23, v30);
  *(v22 + 32) = sub_23875E090();
  v24(v7, v23, v25);
  *(v22 + 40) = sub_23875E090();
  sub_23875E560();
  sub_23875E580();
  MEMORY[0x23EE62F40](v22);
  sub_23875C740();
  v26 = v32;
  *a2 = v16;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v29;
  *(a2 + 24) = v21;
  *(a2 + 32) = v26;
  v27 = v34;
  *(a2 + 40) = v33;
  *(a2 + 56) = v27;
}

uint64_t sub_23848C468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA0, &qword_238767138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23848C4D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA0, &qword_238767138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23848C540()
{
  result = qword_27DF0ADB0;
  if (!qword_27DF0ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ADB8, &qword_2387671A0);
    sub_23848C5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ADB0);
  }

  return result;
}

unint64_t sub_23848C5CC()
{
  result = qword_27DF0ADC0;
  if (!qword_27DF0ADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ADC8, &qword_2387671A8);
    sub_23843A3E8(&qword_27DF0ADD0, &qword_27DF0ADD8, &unk_2387671B0);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ADC0);
  }

  return result;
}

void sub_23848C708(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_23848C780(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_23875E870();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE28, &qword_2387672A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE30, &unk_2387672B0);
  v11 = *(type metadata accessor for OrderWidgetTimelineEntry(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2387632F0;
  sub_238494F3C(a1, v14 + v13, type metadata accessor for OrderWidgetTimelineEntry);
  sub_23875E860();
  sub_238495074(&qword_27DF0ADE0, type metadata accessor for OrderWidgetTimelineEntry);
  sub_23875E900();
  a2(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23848C9BC(void *a1, uint64_t a2, uint64_t a3)
{
  v100 = a3;
  v99 = a2;
  v97 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v4 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v98 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_23875C1E0();
  v95 = *(v96 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v101 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot(0);
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  v9 = MEMORY[0x28223BE20](v91);
  v92 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADE8, &qword_238767268);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v108 = &v77 - v14;
  v107 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(0);
  v102 = *(v107 - 8);
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v107);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v77 - v20;
  v22 = sub_238759BE0();
  v94 = *(v22 - 8);
  v23 = *(v94 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v77 - v27);
  sub_238759C20();
  v29 = sub_238759BD0();
  v30 = sub_23875F140();
  v81 = v17;
  v80 = v26;
  v106 = v22;
  v88 = v29;
  v83 = v21;
  v84 = a1;
  v31 = v30;

  *&v110[0] = sub_238491018(v32, sub_23856C360, sub_2384910BC);
  sub_23848FC48(v110);
  v33 = *&v110[0];
  LODWORD(v34) = *&v110[0] < 0 || (*&v110[0] & 0x4000000000000000) != 0;
  v35 = v94;
  if (v34 != 1)
  {
    v36 = *(*&v110[0] + 16);
    if (v36 >= 3)
    {
      v37 = 3;
    }

    else
    {
      v37 = *(*&v110[0] + 16);
    }

    if (v36 >= v37)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_47:
  v37 = sub_23875F3A0();
  if (sub_23875F3A0() < 0)
  {
    goto LABEL_56;
  }

  if (v37 >= 3)
  {
    v75 = 3;
  }

  else
  {
    v75 = v37;
  }

  if (v37 >= 0)
  {
    v37 = v75;
  }

  else
  {
    v37 = 3;
  }

  if (sub_23875F3A0() < v37)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);

    __break(1u);
LABEL_57:
    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD000000000000017, 0x8000000238787700);
    v76 = v80;
    sub_238759BF0();
    sub_23875F510();
    (*(v94 + 8))(v76, v37);
    result = sub_23875F520();
    __break(1u);
    return result;
  }

LABEL_9:
  if ((v33 & 0xC000000000000001) != 0)
  {

    if (v37)
    {
      sub_23875F480();
      if (v37 != 1)
      {
        sub_23875F480();
        if (v37 != 2)
        {
          sub_23875F480();
        }
      }
    }
  }

  else
  {
  }

  if (v34)
  {
    v38 = sub_23875F540();
    v105 = v39;
    v41 = v40;
    v43 = v42;

    v44 = v38;
    v37 = v43 >> 1;
  }

  else
  {
    v41 = 0;
    v105 = (v33 + 32);
    v44 = v33;
  }

  v82 = v34;
  v86 = v33;
  v87 = v31;
  v85 = v44;
  swift_unknownObjectRetain();
  if (v41 == v37)
  {
    v93 = MEMORY[0x277D84F90];
  }

  else
  {
    v104 = (v35 + 88);
    v103 = *MEMORY[0x277CC7C50];
    v46 = (v35 + 96);
    v102 += 48;
    v78 = *MEMORY[0x277CC7C58];
    v93 = MEMORY[0x277D84F90];
    v79 = v37 - 1;
    v47 = v41;
    while (2)
    {
      v35 = v47;
      while (1)
      {
        if (v47 < v41 || v35 >= v37)
        {
          __break(1u);
          goto LABEL_47;
        }

        v31 = v41;
        v48 = v37;
        v33 = *&v105[8 * v35];
        sub_238759BF0();
        v37 = v106;
        v49 = (*v104)(v28, v106);
        if (v49 != v103)
        {
          break;
        }

        (*v46)(v28, v37);
        v50 = *v28;
        v34 = v108;
        sub_23848D830(*v28, v108);
        if ((*v102)(v34, 1, v107) != 1)
        {
          v61 = v34;
          v62 = v81;
          sub_2384925EC(v61, v81, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
          sub_238494F3C(v62, v89, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_238498214(0, v93[2] + 1, 1, v93);
          }

          v59 = v93[2];
          v63 = v93[3];
          v77 = v59 + 1;
          if (v59 >= v63 >> 1)
          {
            v93 = sub_238498214(v63 > 1, v77, 1, v93);
          }

          sub_238492654(v62, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
          v60 = v89;
          v34 = v77;
          goto LABEL_42;
        }

        ++v35;

        sub_238439884(v34, &qword_27DF0ADE8, &qword_238767268);
        v37 = v48;
        v51 = v48 == v35;
        v41 = v31;
        if (v51)
        {
          goto LABEL_20;
        }
      }

      if (v49 != v78)
      {
        goto LABEL_57;
      }

      (*v46)(v28, v37);
      v52 = *v28;
      sub_238491EEC(*v28, v110);
      v53 = v110[3];
      v54 = *v111;
      v55 = v92;
      *(v92 + 4) = v110[4];
      v55[5] = v54;
      *(v55 + 92) = *&v111[12];
      v56 = v110[1];
      v57 = v110[2];
      *v55 = v110[0];
      v55[1] = v56;
      v55[2] = v57;
      v55[3] = v53;
      swift_storeEnumTagMultiPayload();
      sub_238492584(v110, v109);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_238498214(0, v93[2] + 1, 1, v93);
      }

      v59 = v93[2];
      v58 = v93[3];
      v34 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v93 = sub_238498214(v58 > 1, v59 + 1, 1, v93);
      }

      sub_2384925BC(v110);
      v60 = v92;
LABEL_42:
      v64 = v93;
      v93[2] = v34;
      sub_2384925EC(v60, v64 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v59, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot);
      v47 = v35 + 1;
      v37 = v48;
      v41 = v31;
      if (v79 != v35)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  swift_unknownObjectRelease_n();
  if (v82)
  {
    v45 = sub_23875F3A0();
  }

  else
  {
    v45 = *(v86 + 16);
  }

  v65 = v100;
  v66 = v99;
  v67 = v84;
  v68 = v83;
  v69 = v88;

  v70 = sub_23875ED80();
  (*(*(v70 - 8) + 56))(v68, 1, 1, v70);
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v72 = v93;
  v71[4] = v67;
  v71[5] = v72;
  v71[6] = v45;
  v71[7] = v66;
  v71[8] = v65;
  v73 = v67;

  sub_2386C3BA4(0, 0, v68, &unk_238767278, v71);
}

void sub_23848D830(void *a1@<X0>, uint64_t a2@<X8>)
{
  v151 = sub_2387598F0();
  v157 = *(v151 - 8);
  v5 = *(v157 + 64);
  MEMORY[0x28223BE20](v151);
  v127 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_23875AE50();
  v129 = *(v131 - 8);
  v7 = *(v129 + 64);
  v8 = MEMORY[0x28223BE20](v131);
  v130 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v128 = &v115 - v10;
  v11 = sub_2387590C0();
  v145 = *(v11 - 8);
  v146 = v11;
  v12 = *(v145 + 64);
  MEMORY[0x28223BE20](v11);
  v144 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875BE40();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v143 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875BE20();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v142 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875BD20();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v141 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2387595E0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v138 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_23875B1B0();
  v134 = *(v135 - 8);
  v26 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23875AF90();
  v149 = *(v28 - 8);
  v150 = v28;
  v29 = *(v149 + 64);
  MEMORY[0x28223BE20](v28);
  v156 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23875A710();
  v147 = *(v31 - 8);
  v148 = v31;
  v32 = *(v147 + 64);
  MEMORY[0x28223BE20](v31);
  v155 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_23875B0A0();
  v139 = *(v140 - 8);
  v34 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v154 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23875BC40();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v137 = sub_2387590B0();
  v136 = *(v137 - 8);
  v38 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v153 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v152 = &v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = (&v115 - v45);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = (&v115 - v48);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v115 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v115 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v115 - v56;
  v132 = a1;
  v58 = [a1 ecommerceOrderContent];
  if (!v58)
  {
    v62 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(0);
    (*(*(v62 - 8) + 56))(a2, 1, 1, v62);
    return;
  }

  v59 = v58;
  v124 = a2;
  sub_23875A4D0();
  v60 = sub_2384915BC(v59, v57);
  if (v2)
  {
    sub_238439884(v57, &qword_27DF09F38, &qword_238764DC0);

    return;
  }

  v120 = v60;
  v121 = v61;
  v122 = 0;
  v123 = v57;
  sub_238494FB0(v57, v55);
  v63 = v157;
  v64 = *(v157 + 48);
  v65 = v151;
  v126 = v157 + 48;
  v125 = v64;
  if (v64(v55, 1, v151) == 1)
  {
    sub_238439884(v55, &qword_27DF09F38, &qword_238764DC0);
    sub_23875A5A0();
  }

  else
  {
    sub_2387598E0();
    (*(v63 + 8))(v55, v65);
  }

  v66 = [v59 createdDate];
  sub_23875BBE0();

  sub_2387590A0();
  v67 = v123;
  sub_238494FB0(v123, v52);
  v68 = v132;
  v69 = v59;
  v70 = v67;
  v71 = v69;
  sub_23875B080();
  sub_238494FB0(v67, v49);
  v72 = v65;
  if (v125(v49, 1, v65) == 1)
  {
    sub_238439884(v49, &qword_27DF09F38, &qword_238764DC0);
    v132 = 0;
    v119 = 0;
    v73 = v157;
  }

  else
  {
    v73 = v157;
    if ((*(v157 + 88))(v49, v65) == *MEMORY[0x277CC7B30])
    {
      (*(v73 + 96))(v49, v65);
      v74 = *v49;
      v132 = sub_238759900();
      v119 = v75;
      v76 = (v74 & 0x7FFFFFFFFFFFFFFFLL);
      v73 = v157;
      v72 = v151;
    }

    else
    {
      (*(v73 + 8))(v49, v65);
      v132 = 0;
      v119 = 0;
    }
  }

  v77 = v154;
  sub_238494FB0(v70, v46);
  if (v125(v46, 1, v72) == 1)
  {
    sub_238439884(v46, &qword_27DF09F38, &qword_238764DC0);
  }

  else
  {
    if ((*(v73 + 88))(v46, v72) == *MEMORY[0x277CC7B38])
    {
      (*(v73 + 96))(v46, v72);
      v78 = *v46;
      v79 = [*v46 returnIdentifier];
      v154 = sub_23875EA80();
      v151 = v80;

      goto LABEL_19;
    }

    (*(v73 + 8))(v46, v72);
  }

  v154 = 0;
  v151 = 0;
LABEL_19:
  v116 = v71;
  sub_238757D40();
  sub_238757DA0();
  v81 = [v71 merchant];
  v82 = [v81 displayName];

  v118 = sub_2387586A0();
  v117 = v83;

  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v84 = v133;
  sub_23875B1A0();
  sub_238495074(&qword_27DF0A050, MEMORY[0x277CC8560]);
  v85 = v135;
  sub_23875B090();
  (*(v134 + 8))(v84, v85);
  v135 = v160;
  v134 = v161;
  sub_238495020();
  sub_23875B090();
  v133 = v162;
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v86 = v144;
  sub_238759020();
  sub_238495074(&qword_27DF0ADF8, MEMORY[0x277CC7708]);
  v87 = v153;
  v88 = v146;
  sub_238759950();
  (*(v145 + 8))(v86, v88);
  v90 = v158;
  v89 = v159;
  v91 = v123;
  v92 = v152;
  sub_238494FB0(v123, v152);
  v93 = v125(v92, 1, v72);
  if (v93 != 1)
  {
    v146 = v90;
    v96 = v89;
    v97 = v157;
    (*(v157 + 16))(v127, v92, v72);
    v98 = v128;
    sub_23875AE40();

    (*(v139 + 8))(v77, v140);
    (*(v136 + 8))(v87, v137);
    sub_238439884(v91, &qword_27DF09F38, &qword_238764DC0);
    v99 = v129;
    v100 = v130;
    v101 = v131;
    (*(v129 + 32))(v130, v98, v131);
    v102 = (*(v99 + 88))(v100, v101);
    v94 = 1128792064;
    if (v102 == *MEMORY[0x277CC84A0])
    {
      v95 = v124;
    }

    else
    {
      v95 = v124;
      if (v102 != *MEMORY[0x277CC84A8])
      {
        v89 = v96;
        if (v102 != *MEMORY[0x277CC84B8])
        {
          (*(v99 + 8))(v130, v131);
          v94 = 1065353216;
        }

        goto LABEL_27;
      }
    }

    v89 = v96;
LABEL_27:
    (*(v97 + 8))(v152, v72);
    v90 = v146;
    goto LABEL_28;
  }

  (*(v139 + 8))(v77, v140);
  (*(v136 + 8))(v87, v137);
  sub_238439884(v91, &qword_27DF09F38, &qword_238764DC0);
  sub_238439884(v92, &qword_27DF09F38, &qword_238764DC0);
  v94 = 0;
  v95 = v124;
LABEL_28:
  (*(v147 + 32))(v95, v155, v148);
  v103 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(0);
  v104 = (v95 + v103[5]);
  v105 = v119;
  *v104 = v132;
  v104[1] = v105;
  v106 = (v95 + v103[6]);
  v107 = v150;
  v108 = v151;
  *v106 = v154;
  v106[1] = v108;
  (*(v149 + 32))(v95 + v103[7], v156, v107);
  *(v95 + v103[8]) = v120;
  *(v95 + v103[9]) = v121;
  v109 = (v95 + v103[10]);
  v110 = v117;
  *v109 = v118;
  v109[1] = v110;
  v111 = (v95 + v103[11]);
  v112 = v134;
  *v111 = v135;
  v111[1] = v112;
  *(v95 + v103[12]) = v133;
  v113 = (v95 + v103[13]);
  *v113 = v90;
  v113[1] = v89;
  v114 = v95 + v103[14];
  *v114 = v94;
  *(v114 + 4) = v93 == 1;
  (*(*(v103 - 1) + 56))(v95, 0, 1, v103);
}

uint64_t sub_23848E8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v10 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v8[5] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[6] = swift_task_alloc();
  v12 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v8[7] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v14 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v8[9] = v14;
  v15 = *(v14 - 8);
  v8[10] = v15;
  v16 = *(v15 + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v17 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v8[13] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[15] = v19;
  *v19 = v8;
  v19[1] = sub_23848EAA0;

  return (sub_238492CDC)(a5);
}

uint64_t sub_23848EAA0(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_23848EBA0, 0, 0);
}

uint64_t sub_23848EBA0()
{
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = v0[11];
    v3 = v0[12];
    v4 = v0[9];
    v5 = *(v0[10] + 80);
    sub_238494F3C(v1 + ((v5 + 32) & ~v5), v3, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_238494F3C(v3, v2, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = v0[11];
    if (EnumCaseMultiPayload == 1)
    {
      v8 = 6;
    }

    else
    {
      v8 = 8;
    }

    v9 = 5;
    if (EnumCaseMultiPayload == 1)
    {
      v10 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    }

    else
    {
      v9 = 7;
      v10 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = 52;
    }

    else
    {
      v11 = 48;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v12 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    }

    else
    {
      v12 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    }

    v13 = v0[v8];
    v14 = v0[v9];
    sub_2384925EC(v0[11], v13, v10);
    v15 = v13 + *(v14 + v11);
    v16 = *v15;
    v17 = *(v15 + 4);
    sub_238492654(v13, v12);
    sub_238492654(v0[12], type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    v1 = v0[16];
  }

  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[8];
  v31 = v0[6];
  v24 = v0[3];
  v23 = v0[4];
  v25 = v0[2];
  v26 = &v18[v19[5]];
  sub_23875BC30();
  *v18 = v1;
  *&v18[v19[6]] = v25;
  v27 = v19[7];
  sub_23875E890();
  v28 = sub_23875E8A0();
  (*(*(v28 - 8) + 56))(&v18[v27], 0, 1, v28);
  v24(v18);
  sub_238492654(v18, type metadata accessor for OrderWidgetTimelineEntry);

  v29 = v0[1];

  return v29();
}

uint64_t sub_23848EE34@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v3 = sub_2387598E0();
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_23875F3A0();
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v25 = MEMORY[0x277D84F90];
  do
  {
    v8 = v7;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE63F70](v8, v4);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v4 + 8 * v8 + 32);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = v9;
      v11 = [v10 image];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_24;
      }
    }

    v23 = v2;
    v12 = v11;
    v13 = sub_23875EA80();
    v22 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_238497C2C(0, *(v25 + 2) + 1, 1, v25);
    }

    v16 = *(v25 + 2);
    v15 = *(v25 + 3);
    if (v16 >= v15 >> 1)
    {
      v25 = sub_238497C2C((v15 > 1), v16 + 1, 1, v25);
    }

    *(v25 + 2) = v16 + 1;
    v17 = &v25[16 * v16];
    v2 = v23;
    *(v17 + 4) = v13;
    *(v17 + 5) = v22;
  }

  while (v7 != v6);
LABEL_24:

  v19 = v25;
  if (*(v25 + 2) >= 5uLL)
  {
    sub_23852EE64(v25, (v25 + 32), 0, 9uLL);
    v21 = v20;

    v19 = v21;
  }

  *a1 = v19;
  return result;
}

float sub_23848F038()
{
  v1 = sub_2387580D0();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v1);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875ABE0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BE40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BE20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23875AE50();
  v51 = *(v53 - 8);
  v17 = *(v51 + 64);
  v18 = MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v46 = v0;
  v25 = [v0 orderContent];
  sub_23875BDB0();
  sub_23875BE30();
  v26 = sub_23875A5F0();

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v27 = MEMORY[0x277CC84B8];
  if (!v26)
  {
    v31 = v22;
    v32 = v24;
    v28 = v51;
    v33 = [v46 orderContent];
    v34 = v47;
    sub_23875A5B0();

    v36 = v48;
    v35 = v49;
    v37 = (*(v48 + 88))(v34, v49);
    if (v37 == *MEMORY[0x277CC6DF0])
    {
      v38 = v22;
      v39 = v22;
      v30 = v53;
      (*(v28 + 104))(v39, *MEMORY[0x277CC84B0], v53);
      v29 = v52;
LABEL_12:
      v43 = *(v28 + 32);
      v43(v32, v38, v30);
      v43(v29, v32, v30);
      goto LABEL_13;
    }

    v29 = v52;
    v30 = v53;
    v38 = v31;
    if (v37 == *MEMORY[0x277CC6DE0])
    {
      v40 = MEMORY[0x277CC84B0];
    }

    else
    {
      if (v37 != *MEMORY[0x277CC6DD8])
      {
        if (v37 != *MEMORY[0x277CC6DF8])
        {
          v42 = *(v28 + 104);
          if (v37 != *MEMORY[0x277CC6DE8])
          {
            v42(v31, *MEMORY[0x277CC84B0], v53);
            (*(v36 + 8))(v34, v35);
            goto LABEL_12;
          }

          v41 = *v27;
          goto LABEL_11;
        }

        v41 = *v27;
LABEL_10:
        v42 = *(v28 + 104);
LABEL_11:
        v42(v31, v41, v53);
        goto LABEL_12;
      }

      v40 = MEMORY[0x277CC8498];
    }

    v41 = *v40;
    goto LABEL_10;
  }

  sub_23875ABF0();
  sub_23875AE60();

  v28 = v51;
  v29 = v52;
  v30 = v53;
  (*(v51 + 32))(v52, v24, v53);
LABEL_13:
  v44 = (*(v28 + 88))(v29, v30);
  result = 200.0;
  if (v44 != *MEMORY[0x277CC84A0] && v44 != *MEMORY[0x277CC84A8] && v44 != *v27)
  {
    (*(v28 + 8))(v29, v30, 200.0);
    return 1.0;
  }

  return result;
}

void sub_23848F5D4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = sub_23875EA50();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_23845B2A4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23848C708;
  aBlock[3] = &block_descriptor_19;
  v12 = _Block_copy(aBlock);

  [a2 getPKCategoryForDomain:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_23848F7A4@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v3 = &a1[v2[5]];
  sub_23875BC30();
  *a1 = MEMORY[0x277D84F90];
  *&a1[v2[6]] = 0;
  v4 = v2[7];
  sub_23875E890();
  v5 = sub_23875E8A0();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 0, 1, v5);
}

void sub_23848F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v10[4] = sub_238495530;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_238461548;
  v10[3] = &block_descriptor_26;
  v8 = _Block_copy(v10);
  v9 = v6;

  [v9 performBlock_];
  _Block_release(v8);
}

uint64_t sub_23848F940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = sub_23848FBDC;
  v8[4] = v7;
  v12[4] = sub_23848FBE4;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_238461548;
  v12[3] = &block_descriptor_3;
  v9 = _Block_copy(v12);

  v10 = v6;

  [v10 performBlock_];
  _Block_release(v9);
}

uint64_t sub_23848FA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3CF8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2384494A4;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_23848FB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3D00] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238449A7C;

  return MEMORY[0x282136278](a1, a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23848FC48(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_238400C00(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23848FCC4(v6);
  return sub_23875F4D0();
}

void sub_23848FCC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23875F5E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_238759C20();
        v6 = sub_23875ECA0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_238490060(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23848FDC8(0, v2, 1, a1);
  }
}

void sub_23848FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = sub_23875BC40();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23875AD10();
  v11 = *(*(v39 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v37 = (v8 + 8);
    v18 = (v14 + 8);
    v42 = v17;
    v19 = v17 + 8 * a3 - 8;
    v20 = a1 - a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v21 = *(v42 + 8 * a3);
    v34 = v20;
    while (1)
    {
      v22 = *v19;
      v23 = v21;
      v24 = v22;
      sub_238759C10();
      v25 = v38;
      sub_238759C10();
      v26 = v40;
      sub_23875BBF0();
      LOBYTE(v22) = sub_23875AD00();
      (*v37)(v26, v41);
      v27 = *v18;
      v28 = v25;
      v29 = v39;
      (*v18)(v28, v39);
      v27(v16, v29);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + 8;
        v20 = v34 - 1;
        if (v36 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v30;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_238490060(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v117 = a1;
  v129 = sub_23875BC40();
  v8 = *(v129 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_23875AD10();
  v11 = *(*(v127 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v127);
  v126 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v125 = &v112 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_88:
    v19 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v18 = sub_238490ED4(v18);
    }

    v130 = v18;
    v107 = *(v18 + 16);
    if (v107 >= 2)
    {
      while (*a3)
      {
        v108 = *(v18 + 16 * v107);
        v109 = v18;
        v110 = *(v18 + 16 * (v107 - 1) + 32);
        v18 = *(v18 + 16 * (v107 - 1) + 40);
        sub_238490948((*a3 + 8 * v108), (*a3 + 8 * v110), (*a3 + 8 * v18), v19);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v18 < v108)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_238490ED4(v109);
        }

        if (v107 - 2 >= *(v109 + 2))
        {
          goto LABEL_114;
        }

        v111 = &v109[16 * v107];
        *v111 = v108;
        *(v111 + 1) = v18;
        v130 = v109;
        sub_238490E48(v107 - 1);
        v18 = v130;
        v107 = *(v130 + 16);
        if (v107 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v112 = a4;
  v17 = 0;
  v123 = (v14 + 8);
  v124 = (v8 + 8);
  v18 = MEMORY[0x277D84F90];
  v113 = a3;
  while (1)
  {
    v19 = v17++;
    if (v17 < v16)
    {
      v114 = v18;
      v116 = v5;
      v20 = *a3;
      v21 = *(*a3 + 8 * v17);
      v22 = v19;
      v118 = 8 * v19;
      v23 = (v20 + 8 * v19);
      v25 = *v23;
      v24 = v23 + 2;
      v26 = v21;
      v115 = v25;
      v18 = v125;
      sub_238759C10();
      v27 = v126;
      sub_238759C10();
      v28 = v128;
      sub_23875BBF0();
      LODWORD(v122) = sub_23875AD00();
      v121 = *v124;
      v121(v28, v129);
      v29 = *v123;
      v30 = v127;
      (*v123)(v27, v127);
      v120 = v29;
      v29(v18, v30);

      v115 = v22;
      v31 = v22 + 2;
      v119 = v16;
      while (v16 != v31)
      {
        v32 = *(v24 - 1);
        v33 = *v24;
        v34 = v32;
        v35 = v125;
        sub_238759C10();
        v36 = v126;
        sub_238759C10();
        v37 = v128;
        sub_23875BBF0();
        LODWORD(v32) = sub_23875AD00() & 1;
        v121(v37, v129);
        v18 = v127;
        v38 = v120;
        v120(v36, v127);
        v38(v35, v18);
        v16 = v119;

        ++v31;
        ++v24;
        if ((v122 & 1) != v32)
        {
          v16 = (v31 - 1);
          break;
        }
      }

      v19 = v115;
      v5 = v116;
      a3 = v113;
      v39 = v118;
      if ((v122 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v16 < v115)
      {
        goto LABEL_117;
      }

      if (v115 < v16)
      {
        v40 = 8 * v16 - 8;
        v41 = v16;
        v42 = v115;
        v18 = v114;
        do
        {
          if (v42 != --v41)
          {
            v44 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v43 = *(v44 + v39);
            *(v44 + v39) = *(v44 + v40);
            *(v44 + v40) = v43;
          }

          ++v42;
          v40 -= 8;
          v39 += 8;
        }

        while (v42 < v41);
        v17 = v16;
      }

      else
      {
LABEL_18:
        v17 = v16;
        v18 = v114;
      }
    }

    v45 = a3[1];
    if (v17 < v45)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_116;
      }

      if (v17 - v19 < v112)
      {
        v46 = v19 + v112;
        if (__OFADD__(v19, v112))
        {
          goto LABEL_118;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v19)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v17 != v46)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v17 < v19)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_238490EE8(0, *(v18 + 16) + 1, 1, v18);
    }

    v62 = *(v18 + 16);
    v61 = *(v18 + 24);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v18 = sub_238490EE8((v61 > 1), v62 + 1, 1, v18);
    }

    *(v18 + 16) = v63;
    v64 = v18 + 16 * v62;
    *(v64 + 32) = v19;
    *(v64 + 40) = v17;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_125;
    }

    if (v62)
    {
      while (1)
      {
        v19 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v66 = *(v18 + 32);
          v67 = *(v18 + 40);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_57:
          if (v69)
          {
            goto LABEL_104;
          }

          v82 = (v18 + 16 * v63);
          v84 = *v82;
          v83 = v82[1];
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_107;
          }

          v88 = (v18 + 32 + 16 * v19);
          v90 = *v88;
          v89 = v88[1];
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_111;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v19 = v63 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v92 = (v18 + 16 * v63);
        v94 = *v92;
        v93 = v92[1];
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_71:
        if (v87)
        {
          goto LABEL_106;
        }

        v95 = v18 + 16 * v19;
        v97 = *(v95 + 32);
        v96 = *(v95 + 40);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_109;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_78:
        v103 = v19 - 1;
        if (v19 - 1 >= v63)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v104 = *(v18 + 32 + 16 * v103);
        v105 = *(v18 + 32 + 16 * v19 + 8);
        sub_238490948((*a3 + 8 * v104), (*a3 + 8 * *(v18 + 32 + 16 * v19)), (*a3 + 8 * v105), v65);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v105 < v104)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_238490ED4(v18);
        }

        if (v103 >= *(v18 + 16))
        {
          goto LABEL_101;
        }

        v106 = v18 + 16 * v103;
        *(v106 + 32) = v104;
        *(v106 + 40) = v105;
        v130 = v18;
        sub_238490E48(v19);
        v18 = v130;
        v63 = *(v130 + 16);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = v18 + 32 + 16 * v63;
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_102;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_103;
      }

      v77 = (v18 + 16 * v63);
      v79 = *v77;
      v78 = v77[1];
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_105;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_108;
      }

      if (v81 >= v73)
      {
        v99 = (v18 + 32 + 16 * v19);
        v101 = *v99;
        v100 = v99[1];
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_112;
        }

        if (v68 < v102)
        {
          v19 = v63 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_88;
    }
  }

  v114 = v18;
  v115 = v19;
  v116 = v5;
  v122 = *a3;
  v47 = v122 + 8 * v17 - 8;
  v48 = v19 - v17;
  v118 = v46;
LABEL_30:
  v120 = v47;
  v121 = v17;
  v49 = *(v122 + 8 * v17);
  v119 = v48;
  while (1)
  {
    v50 = *v47;
    v51 = v49;
    v52 = v50;
    v53 = v125;
    sub_238759C10();
    v54 = v126;
    sub_238759C10();
    v55 = v128;
    sub_23875BBF0();
    LOBYTE(v50) = sub_23875AD00();
    (*v124)(v55, v129);
    v56 = *v123;
    v57 = v54;
    v58 = v127;
    (*v123)(v57, v127);
    v56(v53, v58);

    if ((v50 & 1) == 0)
    {
LABEL_29:
      v17 = v121 + 1;
      v47 = v120 + 8;
      v48 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_30;
      }

      v17 = v118;
      v19 = v115;
      v5 = v116;
      a3 = v113;
      v18 = v114;
      goto LABEL_37;
    }

    if (!v122)
    {
      break;
    }

    v59 = *v47;
    v49 = *(v47 + 8);
    *v47 = v49;
    *(v47 + 8) = v59;
    v47 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_238490948(id *a1, id *a2, char *a3, void **a4)
{
  v61 = sub_23875BC40();
  v53 = *(v61 - 8);
  v8 = v53[8];
  MEMORY[0x28223BE20](v61);
  v60 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_23875AD10();
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v59);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v49 - v14;
  v15 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v15 = a2 - a1;
  }

  v16 = v15 >> 3;
  v17 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v17 = a3 - a2;
  }

  v18 = v17 >> 3;
  if (v16 >= v17 >> 3)
  {
    if (a4 != a2 || &a2[v18] <= a4)
    {
      memmove(a4, a2, 8 * v18);
    }

    v62 = &a4[v18];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v51 = (v10 + 8);
      v52 = (v53 + 1);
      v54 = a4;
      v56 = a1;
LABEL_28:
      v50 = a2;
      v33 = a2 - 1;
      a3 -= 8;
      v34 = v62;
      v53 = a2 - 1;
      do
      {
        v35 = (a3 + 8);
        v36 = *--v34;
        v37 = *v33;
        v38 = v36;
        v39 = v37;
        v40 = v57;
        sub_238759C10();
        v41 = v58;
        sub_238759C10();
        v42 = v60;
        sub_23875BBF0();
        LODWORD(v55) = sub_23875AD00();
        (*v52)(v42, v61);
        v43 = *v51;
        v44 = v41;
        v45 = v59;
        (*v51)(v44, v59);
        v43(v40, v45);

        if (v55)
        {
          v46 = v56;
          v47 = v53;
          if (v35 != v50)
          {
            *a3 = *v53;
          }

          a4 = v54;
          if (v62 <= v54 || (a2 = v47, v47 <= v46))
          {
            a2 = v47;
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        if (v35 != v62)
        {
          *a3 = *v34;
        }

        a3 -= 8;
        v62 = v34;
        v33 = v53;
      }

      while (v34 > v54);
      v62 = v34;
      a2 = v50;
      a4 = v54;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v16] <= a4)
    {
      memmove(a4, a1, 8 * v16);
    }

    v62 = &a4[v16];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v52 = (v10 + 8);
      ++v53;
      v55 = a3;
      while (1)
      {
        v56 = a1;
        v19 = *a4;
        v20 = a4;
        v21 = *a2;
        v22 = v19;
        v23 = v57;
        sub_238759C10();
        v24 = v58;
        sub_238759C10();
        v25 = v60;
        sub_23875BBF0();
        v26 = sub_23875AD00();
        (*v53)(v25, v61);
        v27 = *v52;
        v28 = v24;
        v29 = v59;
        (*v52)(v28, v59);
        v27(v23, v29);

        if ((v26 & 1) == 0)
        {
          break;
        }

        v30 = a2;
        v31 = v56;
        v32 = v56 == a2++;
        a4 = v20;
        if (!v32)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v31 + 1;
        if (a4 >= v62 || a2 >= v55)
        {
          goto LABEL_20;
        }
      }

      v30 = v20;
      a4 = v20 + 1;
      v31 = v56;
      if (v56 == v20)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v31 = *v30;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != a4 || a2 >= (a4 + ((v62 - a4 + (v62 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v62 - a4));
  }

  return 1;
}

uint64_t sub_238490E48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_238490ED4(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_238490EE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE20, &qword_2387672A0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_238491018(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_23875F3A0();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2384910BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23875F3A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23875F3A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_238495148(&qword_27DF0AE18, &qword_27DF0AE10, &unk_238780E90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE10, &unk_238780E90);
            v9 = sub_23856B91C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_238759C20();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23849124C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23875F3A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23875F3A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_238495148(&qword_27DF0AE58, &qword_27DF0AE50, &qword_2387672C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE50, &qword_2387672C0);
            v9 = sub_23856B9A4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AccountStartDateModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2384913DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23875F3A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23875F3A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_238495148(&qword_27DF0AE48, &qword_27DF0AE40, &qword_23877FB70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
            v9 = sub_23856BA2C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2384950FC();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2384915BC(void *a1, uint64_t a2)
{
  v83 = sub_238758350();
  v5 = *(v83 - 8);
  v6 = *(v5 + 8);
  v7 = MEMORY[0x28223BE20](v83);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v80 = &v78 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v81 = &v78 - v13;
  MEMORY[0x28223BE20](v12);
  v82 = &v78 - v14;
  v15 = sub_2387598F0();
  v16 = *(v15 - 1);
  v17 = *(v16 + 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v78 - v22;
  sub_238494FB0(a2, &v78 - v22);
  v24 = (*(v16 + 6))(v23, 1, v15);
  v85 = a1;
  if (v24 == 1)
  {
    *&v88 = v2;
  }

  else
  {
    (*(v16 + 4))(v19, v23, v15);
    sub_23848EE34(&v89);
    *&v88 = v2;
    if (v2)
    {
      goto LABEL_62;
    }

    (*(v16 + 1))(v19, v15);
    v16 = v89;
    if (v89)
    {

      v25 = v88;
      goto LABEL_33;
    }
  }

  v84 = v9;
  v26 = sub_23875A5A0();
  v27 = v26;
  v28 = v26 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
LABEL_27:
    v29 = sub_23875F3A0();
    v86 = v5;
    if (v29)
    {
LABEL_8:
      v30 = 0;
      v87 = MEMORY[0x277D84F90];
      v5 = &unk_278A55000;
      do
      {
        v31 = v30;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x23EE63F70](v31, v27);
            v30 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v31 >= *(v28 + 16))
            {
              goto LABEL_26;
            }

            v32 = *(v27 + 8 * v31 + 32);
            v30 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v33 = v32;
          v34 = [v33 image];
          if (v34)
          {
            break;
          }

          ++v31;
          if (v30 == v29)
          {
            goto LABEL_29;
          }
        }

        v35 = v34;
        v36 = sub_23875EA80();
        v79 = v37;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_238497C2C(0, *(v87 + 2) + 1, 1, v87);
        }

        v39 = *(v87 + 2);
        v38 = *(v87 + 3);
        if (v39 >= v38 >> 1)
        {
          v87 = sub_238497C2C((v38 > 1), v39 + 1, 1, v87);
        }

        v40 = v87;
        *(v87 + 2) = v39 + 1;
        v41 = &v40[16 * v39];
        v42 = v79;
        *(v41 + 4) = v36;
        *(v41 + 5) = v42;
      }

      while (v30 != v29);
      goto LABEL_29;
    }
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v86 = v5;
    if (v29)
    {
      goto LABEL_8;
    }
  }

  v87 = MEMORY[0x277D84F90];
LABEL_29:

  v16 = v87;
  a1 = v85;
  if (*(v87 + 2) < 5uLL)
  {
  }

  else
  {
    sub_23852EE64(v87, (v87 + 32), 0, 9uLL);
    v44 = v43;

    v16 = v44;
  }

  v5 = v86;
  v9 = v84;
  v25 = v88;

LABEL_33:
  v45 = objc_opt_self();
  v46 = [v45 preferredLanguages];
  v47 = sub_23875EC80();

  v48 = sub_23875A560();
  v49 = v25;
  if (v25)
  {

LABEL_57:

    return v47;
  }

  v50 = v48;

  v51 = v50;
  if (v50 >> 62)
  {
    v19 = sub_23875F3A0();
    v51 = v50;
    if (v19)
    {
      goto LABEL_37;
    }

LABEL_50:

    v47 = MEMORY[0x277D84F90];
    goto LABEL_51;
  }

  v19 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_50;
  }

LABEL_37:
  *&v88 = v51;
  v89 = MEMORY[0x277D84F90];
  v15 = &v89;
  sub_2385FE810(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v84 = 0;
    v87 = v16;
    v47 = v89;
    v52 = v83;
    if ((v88 & 0xC000000000000001) != 0)
    {
      v86 = v45;
      v53 = 0;
      v54 = v82;
      do
      {
        MEMORY[0x23EE63F70](v53, v88);
        sub_238758340();
        v89 = v47;
        v56 = *(v47 + 2);
        v55 = *(v47 + 3);
        if (v56 >= v55 >> 1)
        {
          sub_2385FE810(v55 > 1, v56 + 1, 1);
          v52 = v83;
          v47 = v89;
        }

        ++v53;
        *(v47 + 2) = v56 + 1;
        (*(v5 + 4))(&v47[((v5[80] + 32) & ~v5[80]) + *(v5 + 9) * v56], v54, v52);
      }

      while (v19 != v53);

      v49 = v84;
      a1 = v85;
      v45 = v86;
      v16 = v87;
    }

    else
    {
      v86 = v5 + 32;
      v57 = 32;
      do
      {
        v58 = *(v88 + v57);
        sub_238758340();
        v89 = v47;
        v59 = v9;
        v61 = *(v47 + 2);
        v60 = *(v47 + 3);
        if (v61 >= v60 >> 1)
        {
          sub_2385FE810(v60 > 1, v61 + 1, 1);
          v52 = v83;
          v47 = v89;
        }

        *(v47 + 2) = v61 + 1;
        (*(v5 + 4))(&v47[((v5[80] + 32) & ~v5[80]) + *(v5 + 9) * v61], v59, v52);
        v57 += 8;
        --v19;
        v9 = v59;
      }

      while (v19);

      v49 = v84;
      a1 = v85;
      v16 = v87;
    }

LABEL_51:
    v62 = [a1 merchant];
    v63 = [v62 logoName];

    if (v63)
    {
      v64 = v45;
      v65 = sub_23875EA80();
      v67 = v66;

      if (*(v47 + 2))
      {
        goto LABEL_57;
      }

      if (v67)
      {
        v87 = v16;
        v68 = [v64 preferredLanguages];
        sub_23875EC80();

        v69 = sub_23875A550();
        if (v49)
        {
        }

        else
        {
          v71 = v69;

          if (v71)
          {

            v72 = v80;
            sub_238758340();
            v73 = v81;
            v74 = v83;
            (*(v5 + 4))(v81, v72, v83);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE00, &unk_238767290);
            v75 = *(v5 + 9);
            v76 = (v5[80] + 32) & ~v5[80];
            v47 = swift_allocObject();
            v88 = xmmword_2387632F0;
            *(v47 + 1) = xmmword_2387632F0;
            (*(v5 + 2))(&v47[v76], v73, v74);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
            v77 = swift_allocObject();
            *(v77 + 16) = v88;
            *(v77 + 32) = v65;
            *(v77 + 40) = v67;
            (*(v5 + 1))(v73, v74);
            return v47;
          }
        }

        goto LABEL_57;
      }
    }

    else if (*(v47 + 2))
    {
      goto LABEL_57;
    }

    return v47;
  }

  __break(1u);
LABEL_62:
  result = (*(v16 + 1))(v19, v15);
  __break(1u);
  return result;
}

uint64_t sub_238491EEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387580D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  v78 = a1;
  v17 = [a1 orderContent];
  sub_23875A5B0();

  v18 = *(v10 + 16);
  v75 = v16;
  v18(v14, v16, v9);
  v77 = v10;
  v19 = (*(v10 + 88))(v14, v9);
  v20 = *MEMORY[0x277CC6DF0];
  v76 = v9;
  if (v19 == v20)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CC77B0], v4);
LABEL_9:
    v24 = sub_238758A40();
    v73 = v25;
    v74 = v24;
    (*(v5 + 8))(v8, v4);
    v26 = sub_23875E030();
LABEL_10:
    v72 = v26;

    goto LABEL_11;
  }

  v21 = *MEMORY[0x277CC77B0];
  v22 = *(v5 + 104);
  if (v19 == *MEMORY[0x277CC6DE0] || v19 == *MEMORY[0x277CC6DD8])
  {
    v22(v8, v21, v4);
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277CC6DF8])
  {
    v22(v8, v21, v4);
    v60 = sub_238758A40();
    v73 = v61;
    v74 = v60;
    (*(v5 + 8))(v8, v4);
LABEL_21:
    v26 = sub_23875E070();
    goto LABEL_10;
  }

  v62 = *MEMORY[0x277CC6DE8];
  v63 = v19;
  v22(v8, v21, v4);
  v64 = (v5 + 8);
  if (v63 == v62)
  {
    v65 = sub_238758A40();
    v73 = v66;
    v74 = v65;
    (*v64)(v8, v4);
    goto LABEL_21;
  }

  v67 = sub_238758A40();
  v73 = v68;
  v74 = v67;
  (*v64)(v8, v4);
  v69 = sub_23875E070();
  v70 = *(v77 + 8);
  v72 = v69;

  v70(v14, v9);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2387632F0;
  v28 = v78;
  v29 = [v78 orderContent];
  v30 = [v29 orderNumber];

  v31 = sub_23875EA80();
  v33 = v32;

  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_238448C58();
  *(v27 + 32) = v31;
  *(v27 + 40) = v33;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v34 = qword_2814F1B90;
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = sub_23875EA50();
  v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

  sub_23875EA80();
  v39 = sub_23875EAA0();
  v41 = v40;

  v42 = [v28 trackedOrderIdentifier];
  v43 = sub_23875EA80();
  v45 = v44;

  v46 = [v28 orderContent];
  v47 = [v46 merchantDisplayName];

  v48 = sub_23875EA80();
  v50 = v49;

  v51 = [v28 merchantEmailAddress];
  if (v51)
  {
    v52 = v51;
    v53 = sub_23875EA80();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = sub_23848F038();
  v57 = v72;

  result = (*(v77 + 8))(v75, v76);
  *a2 = v43;
  *(a2 + 8) = v45;
  *(a2 + 16) = v39;
  *(a2 + 24) = v41;
  *(a2 + 32) = v48;
  *(a2 + 40) = v50;
  *(a2 + 48) = v53;
  *(a2 + 56) = v55;
  v59 = v73;
  *(a2 + 64) = v74;
  *(a2 + 72) = v59;
  *(a2 + 80) = v57;
  *(a2 + 88) = v39;
  *(a2 + 96) = v41;
  *(a2 + 104) = v56;
  return result;
}

uint64_t sub_2384925EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238492654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384926B4(uint64_t a1)
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
  v11[1] = sub_2384494A4;

  return sub_23848E8F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_238492790(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_2384927B0, 0, 0);
}

uint64_t sub_2384927B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x277D07080]);
  v4 = sub_23875EA50();
  v5 = [v3 initWithString_];

  if (v5 && (v6 = [v5 highLevelDomain], v5, v6))
  {
    v7 = sub_23875EA80();
    v9 = v8;

    v0[5] = v9;
    v10 = [objc_allocWithZone(MEMORY[0x277D81650]) init];
    v0[6] = v10;
    v11 = swift_task_alloc();
    v0[7] = v11;
    v11[2] = v10;
    v11[3] = v7;
    v11[4] = v9;
    v12 = *(MEMORY[0x277D85A40] + 4);
    v13 = swift_task_alloc();
    v0[8] = v13;
    type metadata accessor for PKMerchantCategory(0);
    *v13 = v0;
    v13[1] = sub_238492990;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x80000002387860E0, sub_238494FA4, v11, v14);
  }

  else
  {
    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_238492990()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_238492B1C;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 40);

    v4 = sub_238492AB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238492AB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_238492B1C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  if (qword_27DF08CD8 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v5 = sub_23875C1E0();
  __swift_project_value_buffer(v5, qword_27DF2F690);
  v6 = v4;
  v7 = sub_23875C1B0();
  v8 = sub_23875EFE0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2383F8000, v7, v8, "Could not fetch icon: %@", v11, 0xCu);
    sub_238439884(v12, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_238492CDC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_23875C1E0();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v10 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v1[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_23875B940();
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v15 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(0);
  v1[20] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v17 = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot(0);
  v1[22] = v17;
  v18 = *(v17 - 8);
  v1[23] = v18;
  v19 = *(v18 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238492F70, 0, 0);
}

uint64_t sub_238492F70()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 184);
    *(v0 + 392) = *(v3 + 80);
    *(v0 + 208) = *(v3 + 72);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v0 + 216) = v2;
      *(v0 + 224) = v4;
      v24 = *(v0 + 176);
      sub_238494F3C(*(v0 + 16) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + *(v0 + 208) * v2, *(v0 + 192), type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v26 = *(v0 + 192);
      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v27 = *v26;
      *(v0 + 232) = *v26;
      v28 = *(v26 + 8);
      *(v0 + 240) = v28;
      v29 = *(v26 + 16);
      *(v0 + 248) = v29;
      v30 = *(v26 + 24);
      *(v0 + 256) = v30;
      v31 = *(v26 + 32);
      *(v0 + 264) = v31;
      v32 = *(v26 + 40);
      *(v0 + 272) = v32;
      v33 = *(v26 + 48);
      *(v0 + 280) = v33;
      v34 = *(v26 + 56);
      *(v0 + 288) = v34;
      v35 = *(v26 + 64);
      *(v0 + 296) = v35;
      v36 = *(v26 + 72);
      *(v0 + 304) = v36;
      v37 = *(v26 + 80);
      *(v0 + 312) = v37;
      v38 = *(v26 + 88);
      *(v0 + 320) = v38;
      v39 = *(v26 + 96);
      *(v0 + 328) = v39;
      v40 = *(v26 + 104);
      *(v0 + 396) = v40;
      if (v34)
      {
        sub_2387579D0();
        *(v0 + 336) = sub_2387579A0();
        v93 = *(MEMORY[0x277CC6718] + 4);
        v94 = swift_task_alloc();
        *(v0 + 344) = v94;
        *v94 = v0;
        v94[1] = sub_238493860;

        return MEMORY[0x282116E08](v33, v34, 1);
      }

      v111 = v29;
      v128 = *(v0 + 224);
      v41 = *(v0 + 136);
      v42 = *(v0 + 144);
      v43 = *(v0 + 128);
      v114 = *(v0 + 88);
      v120 = *(v0 + 80);
      v117 = *(v0 + 64);
      v104 = v39;
      v106 = v33;
      v44 = *(v0 + 24);
      v45 = *(v0 + 32);
      v96 = v32;
      v97 = v30;
      v100 = v36;
      v102 = v37;
      v95 = v31;
      v98 = v35;
      v108 = v40;
      sub_2387576D0();
      v46 = *(v44 + 48);
      (*(v41 + 16))(&v45[v46], v42, v43);
      (*(v41 + 56))(&v45[v46], 0, 1, v43);
      *v45 = v27;
      *(v45 + 1) = v28;
      *(v45 + 2) = v111;
      *(v45 + 3) = v97;
      *(v45 + 4) = v95;
      *(v45 + 5) = v96;
      *(v45 + 6) = v106;
      *(v45 + 7) = 0;
      *(v45 + 8) = 0;
      *(v45 + 9) = 0xF000000000000000;
      *(v45 + 10) = v98;
      *(v45 + 11) = v100;
      *(v45 + 12) = v102;
      *(v45 + 13) = v38;
      *(v45 + 14) = v104;
      v47 = &v45[*(v44 + 52)];
      *v47 = v108;
      v47[4] = 0;
      sub_238494F3C(v45, v114, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
      swift_storeEnumTagMultiPayload();
      sub_238494F3C(v114, v120, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v0 + 224);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = sub_23849823C(0, v49[2] + 1, 1, v49);
      }

      v51 = v49[2];
      v50 = v49[3];
      v124 = v51;
      v121 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v129 = sub_23849823C(v50 > 1, v51 + 1, 1, v49);
      }

      else
      {
        v129 = v49;
      }

      v52 = *(v0 + 328);
      v54 = *(v0 + 304);
      v53 = *(v0 + 312);
      v55 = *(v0 + 288);
      v56 = *(v0 + 272);
      v57 = *(v0 + 256);
      v58 = *(v0 + 240);
      v59 = *(v0 + 136);
      v112 = *(v0 + 128);
      v115 = *(v0 + 144);
      v60 = *(v0 + 88);
      v118 = *(v0 + 80);
      v61 = *(v0 + 72);
      v109 = *(v0 + 32);

      sub_238492654(v60, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      sub_238492654(v109, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
      (*(v59 + 8))(v115, v112);
      v4 = v129;
      *(v129 + 16) = v121;
      sub_2384925EC(v118, v129 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v124, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
LABEL_9:
      v2 = *(v0 + 216) + 1;
      if (v2 == *(v0 + 200))
      {
        goto LABEL_4;
      }
    }

    v62 = *(v0 + 160);
    v63 = *(v0 + 168);
    sub_2384925EC(v26, v63, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
    v64 = (v63 + *(v62 + 20));
    v130 = v4;
    if (v64[1])
    {
      v65 = *(v0 + 152);
      v66 = *v64;
    }

    else
    {
      v67 = *(v0 + 152);
      v68 = (*(v0 + 168) + *(*(v0 + 160) + 24));
      v69 = *v68;
      if (v68[1])
      {
        sub_2387576C0();
        goto LABEL_22;
      }
    }

    sub_2387576B0();
LABEL_22:
    v70 = *(v0 + 160);
    v71 = *(v0 + 168);
    v72 = *(v0 + 128);
    v73 = *(v0 + 136);
    v75 = *(v0 + 112);
    v74 = *(v0 + 120);
    v116 = *(v0 + 152);
    v119 = *(v0 + 104);
    v125 = *(v0 + 96);
    v122 = *(v0 + 64);
    v76 = v70[7];
    v77 = sub_23875AF90();
    (*(*(v77 - 8) + 16))(v74, v71 + v76, v77);
    v110 = *(v71 + v70[8]);
    v113 = *(v71 + v70[9]);
    v78 = (v71 + v70[10]);
    v79 = *v78;
    v80 = v78[1];
    v81 = (v71 + v70[11]);
    v107 = *v81;
    v103 = v79;
    v105 = v81[1];
    v82 = *(v71 + v70[12]);
    v83 = (v71 + v70[13]);
    v99 = v83[1];
    v101 = *v83;
    v84 = v75[11];
    (*(v73 + 16))(v74 + v84, v116, v72);
    (*(v73 + 56))(v74 + v84, 0, 1, v72);
    v85 = (v71 + v70[14]);
    v86 = *v85;
    LOBYTE(v85) = *(v85 + 4);
    *(v74 + v75[5]) = v110;
    *(v74 + v75[6]) = v113;
    v87 = (v74 + v75[7]);
    *v87 = v103;
    v87[1] = v80;
    v88 = (v74 + v75[8]);
    *v88 = v107;
    v88[1] = v105;
    *(v74 + v75[9]) = v82;
    v89 = (v74 + v75[10]);
    *v89 = v101;
    v89[1] = v99;
    v90 = v74 + v75[12];
    *v90 = v86;
    *(v90 + 4) = v85;
    sub_238494F3C(v74, v119, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    swift_storeEnumTagMultiPayload();
    sub_238494F3C(v119, v125, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

    v17 = v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_23849823C(0, v130[2] + 1, 1, v130);
    }

    v92 = v17[2];
    v91 = v17[3];
    if (v92 >= v91 >> 1)
    {
      v17 = sub_23849823C(v91 > 1, v92 + 1, 1, v17);
    }

    v127 = *(v0 + 168);
    v18 = *(v0 + 152);
    v19 = *(v0 + 128);
    v20 = *(v0 + 136);
    v21 = *(v0 + 120);
    v22 = *(v0 + 96);
    v23 = *(v0 + 72);
    sub_238492654(*(v0 + 104), type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_238492654(v21, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    (*(v20 + 8))(v18, v19);
    v4 = v17;
    v17[2] = v92 + 1;
    sub_2384925EC(v22, v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v92, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_238492654(v127, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
    goto LABEL_9;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_4:
  v126 = v4;
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 120);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 56);
  v123 = *(v0 + 32);

  v15 = *(v0 + 8);

  return v15(v126);
}

uint64_t sub_238493860(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v9 = sub_23849399C;
  }

  else
  {
    v10 = v6[42];

    v6[45] = a2;
    v6[46] = a1;
    v9 = sub_238493B68;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23849399C()
{
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[7];

  sub_23875C190();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875F000();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[44];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Error fetching business connect icon: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v13 = v0[36];
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_2384944E0;
  v15 = v0[35];

  return sub_238492790(v15, v13);
}

uint64_t sub_238493B68()
{
  v1 = *(v0 + 360);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 288);
    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    *v3 = v0;
    v3[1] = sub_2384944E0;
    v4 = *(v0 + 280);

    return sub_238492790(v4, v2);
  }

  v6 = *(v0 + 368);
  v7 = *(v0 + 396);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  v12 = *(v0 + 288);
  v13 = *(v0 + 296);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 232);
  while (2)
  {
    v100 = v20;
    v101 = v18;
    v102 = v16;
    v103 = v6;
    v104 = v13;
    v105 = v11;
    v107 = v9;
    v109 = v12;
    v111 = v10;
    v113 = v14;
    v115 = v7;
    v118 = v1;
    v121 = v8;
    v134 = *(v0 + 224);
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    v124 = *(v0 + 88);
    v127 = *(v0 + 64);
    v130 = *(v0 + 80);
    v24 = *(v0 + 24);
    v25 = *(v0 + 32);
    v26 = v17;
    sub_2387576D0();
    v27 = *(v24 + 48);
    (*(v22 + 16))(&v25[v27], v21, v23);
    (*(v22 + 56))(&v25[v27], 0, 1, v23);
    *v25 = v100;
    *(v25 + 1) = v19;
    *(v25 + 2) = v101;
    *(v25 + 3) = v26;
    *(v25 + 4) = v102;
    *(v25 + 5) = v15;
    *(v25 + 6) = v113;
    *(v25 + 7) = v109;
    *(v25 + 8) = v103;
    *(v25 + 9) = v118;
    *(v25 + 10) = v104;
    *(v25 + 11) = v105;
    *(v25 + 12) = v111;
    *(v25 + 13) = v107;
    *(v25 + 14) = v121;
    v28 = &v25[*(v24 + 52)];
    *v28 = v115;
    v28[4] = 0;
    sub_238494F3C(v25, v124, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    swift_storeEnumTagMultiPayload();
    sub_238494F3C(v124, v130, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v0 + 224);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_23849823C(0, v30[2] + 1, 1, v30);
    }

    v32 = v30[2];
    v31 = v30[3];
    v128 = v32 + 1;
    v131 = v32;
    if (v32 >= v31 >> 1)
    {
      v135 = sub_23849823C(v31 > 1, v32 + 1, 1, v30);
    }

    else
    {
      v135 = v30;
    }

    v33 = *(v0 + 328);
    v35 = *(v0 + 304);
    v34 = *(v0 + 312);
    v36 = *(v0 + 288);
    v37 = *(v0 + 272);
    v38 = *(v0 + 256);
    v39 = *(v0 + 240);
    v40 = *(v0 + 136);
    v119 = *(v0 + 128);
    v122 = *(v0 + 144);
    v41 = *(v0 + 88);
    v125 = *(v0 + 80);
    v42 = *(v0 + 72);
    v116 = *(v0 + 32);

    sub_238492654(v41, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_238492654(v116, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    (*(v40 + 8))(v122, v119);
    v43 = v135;
    *(v135 + 16) = v128;
    sub_2384925EC(v125, v135 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v131, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    while (1)
    {
      v44 = *(v0 + 216) + 1;
      if (v44 == *(v0 + 200))
      {
        v138 = v43;
        v87 = *(v0 + 192);
        v88 = *(v0 + 168);
        v90 = *(v0 + 144);
        v89 = *(v0 + 152);
        v91 = *(v0 + 120);
        v93 = *(v0 + 96);
        v92 = *(v0 + 104);
        v95 = *(v0 + 80);
        v94 = *(v0 + 88);
        v96 = *(v0 + 56);
        v133 = *(v0 + 32);

        v97 = *(v0 + 8);

        return v97(v138);
      }

      *(v0 + 216) = v44;
      *(v0 + 224) = v43;
      v45 = *(v0 + 176);
      sub_238494F3C(*(v0 + 16) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + *(v0 + 208) * v44, *(v0 + 192), type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v47 = *(v0 + 192);
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v48 = *(v0 + 160);
      v49 = *(v0 + 168);
      sub_2384925EC(v47, v49, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
      v50 = (v49 + *(v48 + 20));
      v136 = v43;
      if (v50[1])
      {
        v51 = *(v0 + 152);
        v52 = *v50;
LABEL_15:
        sub_2387576B0();
        goto LABEL_18;
      }

      v53 = *(v0 + 152);
      v54 = (*(v0 + 168) + *(*(v0 + 160) + 24));
      v55 = *v54;
      if (!v54[1])
      {
        goto LABEL_15;
      }

      sub_2387576C0();
LABEL_18:
      v56 = *(v0 + 160);
      v57 = *(v0 + 168);
      v58 = *(v0 + 128);
      v59 = *(v0 + 136);
      v61 = *(v0 + 112);
      v60 = *(v0 + 120);
      v123 = *(v0 + 152);
      v126 = *(v0 + 104);
      v129 = *(v0 + 64);
      v132 = *(v0 + 96);
      v62 = v56[7];
      v63 = sub_23875AF90();
      (*(*(v63 - 8) + 16))(v60, v57 + v62, v63);
      v117 = *(v57 + v56[8]);
      v120 = *(v57 + v56[9]);
      v64 = (v57 + v56[10]);
      v65 = *v64;
      v66 = v64[1];
      v67 = (v57 + v56[11]);
      v114 = *v67;
      v110 = v65;
      v112 = v67[1];
      v68 = *(v57 + v56[12]);
      v69 = (v57 + v56[13]);
      v106 = v69[1];
      v108 = *v69;
      v70 = v61[11];
      (*(v59 + 16))(v60 + v70, v123, v58);
      (*(v59 + 56))(v60 + v70, 0, 1, v58);
      v71 = (v57 + v56[14]);
      v72 = *v71;
      LOBYTE(v71) = *(v71 + 4);
      *(v60 + v61[5]) = v117;
      *(v60 + v61[6]) = v120;
      v73 = (v60 + v61[7]);
      *v73 = v110;
      v73[1] = v66;
      v74 = (v60 + v61[8]);
      *v74 = v114;
      v74[1] = v112;
      *(v60 + v61[9]) = v68;
      v75 = (v60 + v61[10]);
      *v75 = v108;
      v75[1] = v106;
      v76 = v60 + v61[12];
      *v76 = v72;
      *(v76 + 4) = v71;
      sub_238494F3C(v60, v126, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
      swift_storeEnumTagMultiPayload();
      sub_238494F3C(v126, v132, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

      v77 = v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_23849823C(0, v136[2] + 1, 1, v136);
      }

      v79 = v77[2];
      v78 = v77[3];
      if (v79 >= v78 >> 1)
      {
        v77 = sub_23849823C(v78 > 1, v79 + 1, 1, v77);
      }

      v137 = *(v0 + 168);
      v80 = *(v0 + 152);
      v81 = *(v0 + 128);
      v82 = *(v0 + 136);
      v83 = *(v0 + 120);
      v84 = *(v0 + 96);
      v85 = *(v0 + 72);
      sub_238492654(*(v0 + 104), type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      sub_238492654(v83, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
      (*(v82 + 8))(v80, v81);
      v43 = v77;
      v77[2] = v79 + 1;
      sub_2384925EC(v84, v77 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v79, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      sub_238492654(v137, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
    }

    v12 = 0;
    v6 = 0;
    v20 = *v47;
    *(v0 + 232) = *v47;
    v19 = *(v47 + 8);
    *(v0 + 240) = v19;
    v18 = *(v47 + 16);
    *(v0 + 248) = v18;
    v17 = *(v47 + 24);
    *(v0 + 256) = v17;
    v16 = *(v47 + 32);
    *(v0 + 264) = v16;
    v15 = *(v47 + 40);
    *(v0 + 272) = v15;
    v14 = *(v47 + 48);
    *(v0 + 280) = v14;
    v86 = *(v47 + 56);
    *(v0 + 288) = v86;
    v13 = *(v47 + 64);
    *(v0 + 296) = v13;
    v11 = *(v47 + 72);
    *(v0 + 304) = v11;
    v10 = *(v47 + 80);
    *(v0 + 312) = v10;
    v9 = *(v47 + 88);
    *(v0 + 320) = v9;
    v8 = *(v47 + 96);
    *(v0 + 328) = v8;
    v7 = *(v47 + 104);
    *(v0 + 396) = v7;
    v1 = 0xF000000000000000;
    if (!v86)
    {
      continue;
    }

    break;
  }

  sub_2387579D0();
  *(v0 + 336) = sub_2387579A0();
  v98 = *(MEMORY[0x277CC6718] + 4);
  v99 = swift_task_alloc();
  *(v0 + 344) = v99;
  *v99 = v0;
  v99[1] = sub_238493860;

  return MEMORY[0x282116E08](v14, v86, 1);
}

uint64_t sub_2384944E0(uint64_t a1)
{
  v2 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = a1;

  return MEMORY[0x2822009F8](sub_2384945E0, 0, 0);
}

uint64_t sub_2384945E0()
{
  if (*(v0 + 384))
  {
    sub_2387588A0();
    v1 = PKMapsIconForMerchantCategory();
    if (v1)
    {
      v2 = v1;
      v3 = UIImagePNGRepresentation(v1);
      if (v3)
      {
        v4 = v3;
        v5 = sub_23875B990();
        v7 = v6;

        goto LABEL_7;
      }
    }
  }

  v5 = 0;
  v7 = 0xF000000000000000;
LABEL_7:
  v8 = *(v0 + 396);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v12 = *(v0 + 304);
  v11 = *(v0 + 312);
  v14 = *(v0 + 288);
  v13 = *(v0 + 296);
  v15 = *(v0 + 272);
  v16 = *(v0 + 280);
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  v20 = *(v0 + 240);
  v19 = *(v0 + 248);
  v21 = *(v0 + 232);
  while (2)
  {
    v103 = v21;
    v104 = v5;
    v105 = v19;
    v106 = v17;
    v107 = v13;
    v108 = v12;
    v109 = v10;
    v111 = v14;
    v113 = v11;
    v115 = v8;
    v117 = v9;
    v119 = v16;
    v122 = v7;
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);
    v133 = *(v0 + 80);
    v137 = *(v0 + 224);
    v127 = *(v0 + 88);
    v130 = *(v0 + 64);
    v25 = *(v0 + 24);
    v26 = *(v0 + 32);
    v27 = v15;
    v28 = v18;
    sub_2387576D0();
    v29 = *(v25 + 48);
    (*(v23 + 16))(&v26[v29], v22, v24);
    (*(v23 + 56))(&v26[v29], 0, 1, v24);
    *v26 = v103;
    *(v26 + 1) = v20;
    *(v26 + 2) = v105;
    *(v26 + 3) = v28;
    *(v26 + 4) = v106;
    *(v26 + 5) = v27;
    *(v26 + 6) = v119;
    *(v26 + 7) = v111;
    *(v26 + 8) = v104;
    *(v26 + 9) = v122;
    *(v26 + 10) = v107;
    *(v26 + 11) = v108;
    *(v26 + 12) = v113;
    *(v26 + 13) = v109;
    *(v26 + 14) = v117;
    v30 = &v26[*(v25 + 52)];
    *v30 = v115;
    v30[4] = 0;
    sub_238494F3C(v26, v127, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    swift_storeEnumTagMultiPayload();
    sub_238494F3C(v127, v133, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v0 + 224);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_23849823C(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    v131 = v34 + 1;
    v134 = v34;
    if (v34 >= v33 >> 1)
    {
      v138 = sub_23849823C(v33 > 1, v34 + 1, 1, v32);
    }

    else
    {
      v138 = v32;
    }

    v35 = *(v0 + 328);
    v37 = *(v0 + 304);
    v36 = *(v0 + 312);
    v38 = *(v0 + 288);
    v39 = *(v0 + 272);
    v40 = *(v0 + 256);
    v41 = *(v0 + 240);
    v42 = *(v0 + 136);
    v123 = *(v0 + 128);
    v125 = *(v0 + 144);
    v43 = *(v0 + 88);
    v128 = *(v0 + 80);
    v44 = *(v0 + 72);
    v120 = *(v0 + 32);

    sub_238492654(v43, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_238492654(v120, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    (*(v42 + 8))(v125, v123);
    v45 = v138;
    *(v138 + 16) = v131;
    sub_2384925EC(v128, v138 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v134, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    while (1)
    {
      v46 = *(v0 + 216) + 1;
      if (v46 == *(v0 + 200))
      {
        v141 = v45;
        v89 = *(v0 + 192);
        v90 = *(v0 + 168);
        v92 = *(v0 + 144);
        v91 = *(v0 + 152);
        v93 = *(v0 + 120);
        v95 = *(v0 + 96);
        v94 = *(v0 + 104);
        v97 = *(v0 + 80);
        v96 = *(v0 + 88);
        v98 = *(v0 + 56);
        v136 = *(v0 + 32);

        v99 = *(v0 + 8);

        return v99(v141);
      }

      *(v0 + 216) = v46;
      *(v0 + 224) = v45;
      v47 = *(v0 + 176);
      sub_238494F3C(*(v0 + 16) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + *(v0 + 208) * v46, *(v0 + 192), type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 192);
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v50 = *(v0 + 160);
      v51 = *(v0 + 168);
      sub_2384925EC(v49, v51, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
      v52 = (v51 + *(v50 + 20));
      v139 = v45;
      if (v52[1])
      {
        v53 = *(v0 + 152);
        v54 = *v52;
LABEL_17:
        sub_2387576B0();
        goto LABEL_20;
      }

      v55 = *(v0 + 152);
      v56 = (*(v0 + 168) + *(*(v0 + 160) + 24));
      v57 = *v56;
      if (!v56[1])
      {
        goto LABEL_17;
      }

      sub_2387576C0();
LABEL_20:
      v58 = *(v0 + 160);
      v59 = *(v0 + 168);
      v126 = *(v0 + 152);
      v60 = *(v0 + 128);
      v61 = *(v0 + 136);
      v63 = *(v0 + 112);
      v62 = *(v0 + 120);
      v135 = *(v0 + 96);
      v129 = *(v0 + 104);
      v132 = *(v0 + 64);
      v64 = v58[7];
      v65 = sub_23875AF90();
      (*(*(v65 - 8) + 16))(v62, v59 + v64, v65);
      v121 = *(v59 + v58[8]);
      v124 = *(v59 + v58[9]);
      v66 = (v59 + v58[10]);
      v67 = *v66;
      v68 = v66[1];
      v69 = (v59 + v58[11]);
      v118 = *v69;
      v114 = v67;
      v116 = v69[1];
      v70 = *(v59 + v58[12]);
      v71 = (v59 + v58[13]);
      v110 = v71[1];
      v112 = *v71;
      v72 = v63[11];
      (*(v61 + 16))(v62 + v72, v126, v60);
      (*(v61 + 56))(v62 + v72, 0, 1, v60);
      v73 = (v59 + v58[14]);
      v74 = *v73;
      LOBYTE(v73) = *(v73 + 4);
      *(v62 + v63[5]) = v121;
      *(v62 + v63[6]) = v124;
      v75 = (v62 + v63[7]);
      *v75 = v114;
      v75[1] = v68;
      v76 = (v62 + v63[8]);
      *v76 = v118;
      v76[1] = v116;
      *(v62 + v63[9]) = v70;
      v77 = (v62 + v63[10]);
      *v77 = v112;
      v77[1] = v110;
      v78 = v62 + v63[12];
      *v78 = v74;
      *(v78 + 4) = v73;
      sub_238494F3C(v62, v129, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
      swift_storeEnumTagMultiPayload();
      sub_238494F3C(v129, v135, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);

      v79 = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_23849823C(0, v139[2] + 1, 1, v139);
      }

      v81 = v79[2];
      v80 = v79[3];
      if (v81 >= v80 >> 1)
      {
        v79 = sub_23849823C(v80 > 1, v81 + 1, 1, v79);
      }

      v140 = *(v0 + 168);
      v82 = *(v0 + 152);
      v83 = *(v0 + 128);
      v84 = *(v0 + 136);
      v85 = *(v0 + 120);
      v86 = *(v0 + 96);
      v87 = *(v0 + 72);
      sub_238492654(*(v0 + 104), type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      sub_238492654(v85, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
      (*(v84 + 8))(v82, v83);
      v45 = v79;
      v79[2] = v81 + 1;
      sub_2384925EC(v86, v79 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v81, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      sub_238492654(v140, type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot);
    }

    v14 = 0;
    v5 = 0;
    v21 = *v49;
    *(v0 + 232) = *v49;
    v20 = *(v49 + 8);
    *(v0 + 240) = v20;
    v19 = *(v49 + 16);
    *(v0 + 248) = v19;
    v18 = *(v49 + 24);
    *(v0 + 256) = v18;
    v17 = *(v49 + 32);
    *(v0 + 264) = v17;
    v15 = *(v49 + 40);
    *(v0 + 272) = v15;
    v16 = *(v49 + 48);
    *(v0 + 280) = v16;
    v88 = *(v49 + 56);
    *(v0 + 288) = v88;
    v13 = *(v49 + 64);
    *(v0 + 296) = v13;
    v12 = *(v49 + 72);
    *(v0 + 304) = v12;
    v11 = *(v49 + 80);
    *(v0 + 312) = v11;
    v10 = *(v49 + 88);
    *(v0 + 320) = v10;
    v9 = *(v49 + 96);
    *(v0 + 328) = v9;
    v8 = *(v49 + 104);
    *(v0 + 396) = v8;
    v7 = 0xF000000000000000;
    if (!v88)
    {
      continue;
    }

    break;
  }

  sub_2387579D0();
  *(v0 + 336) = sub_2387579A0();
  v101 = *(MEMORY[0x277CC6718] + 4);
  v102 = swift_task_alloc();
  *(v0 + 344) = v102;
  *v102 = v0;
  v102[1] = sub_238493860;

  return MEMORY[0x282116E08](v16, v88, 1);
}

uint64_t sub_238494F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_238494FA4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_23848F5D4(a1, *(v1 + 16));
}

uint64_t sub_238494FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238495020()
{
  result = qword_27DF0ADF0;
  if (!qword_27DF0ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ADF0);
  }

  return result;
}

uint64_t sub_238495074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2384950FC()
{
  result = qword_27DF0AE38;
  if (!qword_27DF0AE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0AE38);
  }

  return result;
}

uint64_t sub_238495148(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy108_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2384951C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 108))
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

uint64_t sub_238495210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 108) = 1;
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

    *(result + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2384952A4()
{
  sub_23875A710();
  if (v0 <= 0x3F)
  {
    sub_238495464(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23875AF90();
      if (v2 <= 0x3F)
      {
        sub_23849540C();
        if (v3 <= 0x3F)
        {
          sub_238495464(319, &qword_2814F08B0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_238495464(319, &qword_2814F08A8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23849540C()
{
  if (!qword_2814F08B8)
  {
    sub_238758350();
    v0 = sub_23875ECC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F08B8);
    }
  }
}

void sub_238495464(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2384954B4()
{
  result = type metadata accessor for OrderWidgetTimelineProvider.OrderSnapshot.ClassicOrderSnapshot(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t EnvironmentValues.coreDataProvider.getter()
{
  sub_23849557C();

  return sub_23875CDC0();
}

unint64_t sub_23849557C()
{
  result = qword_27DF0AE80;
  if (!qword_27DF0AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AE80);
  }

  return result;
}

uint64_t EnvironmentValues.coreDataProvider.setter(uint64_t *a1)
{
  sub_23845C998(a1, v3);
  sub_23849557C();
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238495624@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_238758890();
  result = sub_238758880();
  v4 = MEMORY[0x277CC70D0];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void (*EnvironmentValues.coreDataProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_23849557C();
  sub_23875CDC0();
  return sub_2384956F4;
}

void sub_2384956F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  if (a2)
  {
    sub_23845C998(*a1, (v2 + 5));
    sub_23845C998((v2 + 5), (v2 + 10));
    sub_23875CDD0();
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_23845C998(*a1, (v2 + 5));
    sub_23875CDD0();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

char *SuggestionsOrderBanner.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_23875BE40();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_23875BE20();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_23875BD20();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2387595E0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v3);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v17 = objc_allocWithZone(v3);
  v18 = SuggestionsOrderBanner.init(_:configuration:)(a1, a2, v15);
  swift_getObjectType();
  v19 = *((*MEMORY[0x277D85000] & *v16) + 0x30);
  v20 = *((*MEMORY[0x277D85000] & *v16) + 0x34);
  swift_deallocPartialClassInstance();
  return v18;
}

char *SuggestionsOrderBanner.init(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_23875BE40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23875BE20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_23875BD20();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2387595E0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v17 = objc_allocWithZone(ObjectType);
  v18 = SuggestionsOrderBanner.init(_:configuration:)(a1, a2, v16);
  swift_getObjectType();
  v19 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v20 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v18;
}

char *SuggestionsOrderBanner.init(_:configuration:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v53 = a3;
  v51 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE90, &unk_2387673C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v46 - v6;
  v7 = sub_238758700();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238759B60();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875B940();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757C20();
  v20 = [objc_opt_self() defaultManager];
  v21 = [v20 temporaryDirectory];

  sub_23875B8B0();
  sub_238758AF0();
  v56[3] = sub_238759260();
  v56[4] = MEMORY[0x277CC77F0];
  __swift_allocate_boxed_opaque_existential_1(v56);
  v22 = v51;
  sub_238759250();
  v23 = v52;
  v24 = sub_238757BE0();
  if (v23)
  {
    sub_23844C954(a1, v22);
    v25 = sub_2387595E0();
    (*(*(v25 - 8) + 8))(v53, v25);
    (*(v16 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v26 = v57;
  }

  else
  {
    v27 = v24;
    (*(v16 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v28 = OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_orderBundle;
    *(v57 + OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_orderBundle) = v27;

    sub_238757C10();

    v29 = v50;
    sub_2387586D0();
    (*(v46 + 8))(v10, v47);
    v31 = v48;
    v30 = v49;
    if ((*(v48 + 48))(v29, 1, v49) != 1)
    {
      v37 = *(v31 + 32);
      v38 = v14;
      v37(v14, v29, v30);
      v39 = v57;
      v37(v57 + OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_order, v38, v30);
      v40 = OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_configuration;
      v41 = sub_2387595E0();
      v42 = v22;
      v43 = *(v41 - 8);
      v44 = &v39[v40];
      v45 = v53;
      (*(v43 + 16))(v44, v53, v41);
      v55.receiver = v39;
      v55.super_class = ObjectType;
      v14 = objc_msgSendSuper2(&v55, sel_init);
      sub_23844C954(a1, v42);
      (*(v43 + 8))(v45, v41);
      return v14;
    }

    sub_238439884(v29, &qword_27DF0AE90, &unk_2387673C0);
    sub_238496298();
    swift_allocError();
    swift_willThrow();
    sub_23844C954(a1, v22);
    v32 = sub_2387595E0();
    (*(*(v32 - 8) + 8))(v53, v32);
    v14 = v57;
    v33 = *(v57 + v28);

    v26 = v14;
  }

  v34 = *((*MEMORY[0x277D85000] & *v26) + 0x30);
  v35 = *((*MEMORY[0x277D85000] & *v26) + 0x34);
  swift_deallocPartialClassInstance();
  return v14;
}

unint64_t sub_238496298()
{
  result = qword_27DF0AEA0;
  if (!qword_27DF0AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AEA0);
  }

  return result;
}

id SuggestionsOrderBanner.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_orderBundle];

  sub_238757BF0();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t SuggestionsOrderBanner.merchantName.getter()
{
  v1 = sub_238757CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_orderBundle);
  sub_238759B30();
  sub_238757C60();
  (*(v2 + 8))(v5, v1);
  v7 = sub_238757BD0();

  v8 = sub_2387586A0();

  return v8;
}

id SuggestionsOrderBanner.merchantLogo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v25 - v3;
  v5 = sub_23875B940();
  v25[0] = *(v5 - 8);
  v6 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238757CC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759B30();
  sub_238757CB0();
  v15 = v14;
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    v16 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI22SuggestionsOrderBanner_orderBundle);
    sub_238757C00();
    sub_2387588A0();
    sub_2387591A0();

    v17 = v25[0];
    if ((*(v25[0] + 48))(v4, 1, v5) != 1)
    {
      (*(v17 + 32))(v8, v4, v5);
      v18 = sub_23875B960();
      v20 = v19;
      v21 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v22 = sub_23875B980();
      v23 = [v21 initWithData_];

      sub_23844C954(v18, v20);
      (*(v17 + 8))(v8, v5);
      return v23;
    }

    sub_238439884(v4, &qword_27DF0D040, &qword_2387676A0);
  }

  return 0;
}

uint64_t SuggestionsOrderBanner.orderDeepLink.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875A710();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238757A70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757A20();
  v12 = sub_238757A60();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    sub_238759A40();
    sub_2387576B0();
    (*(v3 + 8))(v6, v2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_23875B940();
  return (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

uint64_t SuggestionsOrderBanner.bannerAttributedSubtitle.getter()
{
  v0 = sub_238757CC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[6] = sub_2384971BC();
  v25[7] = v5;
  v25[8] = sub_23849753C();
  v25[9] = v6;
  sub_238759B30();
  v7 = sub_238757C60();
  v9 = v8;
  result = (*(v1 + 8))(v4, v0);
  v11 = 0;
  v25[10] = v7;
  v25[11] = v9;
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  if (v11 <= 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13 + 1;
  v15 = 16 * v11 + 40;
  while (1)
  {
    if (v11 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEB8, &unk_2387673D0);
      swift_arrayDestroy();
      v25[1] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
      sub_238497D38();
      sub_23875E980();

      v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v23 = sub_23875EA50();

      v24 = [v22 initWithString_];

      return v24;
    }

    if (v14 == ++v11)
    {
      break;
    }

    v16 = v15 + 16;
    v17 = *(&v25[2] + v15);
    v15 += 16;
    if (v17)
    {
      v18 = *(&v25[-1] + v16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_238497C2C(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_238497C2C((v19 > 1), v20 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v20 + 1;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2384971BC()
{
  v0 = sub_23875BE40();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23875BE20();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BD20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v26[1] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2387595E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v27 = sub_2387590C0();
  v26[0] = *(v27 - 8);
  v10 = *(v26[0] + 64);
  MEMORY[0x28223BE20](v27);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875BC40();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2387590B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(sub_238759B50() + 16);

  if (!v22)
  {
    return 0;
  }

  v23 = sub_238759B50();
  sub_238759B40();
  MEMORY[0x23EE5DB70](v23, v16);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_23849917C();
  v24 = v27;
  sub_238759950();
  (*(v26[0] + 8))(v12, v24);
  (*(v18 + 8))(v21, v17);
  return v29;
}

uint64_t sub_23849753C()
{
  v0 = sub_2387591F0();
  v45 = *(v0 - 8);
  v46 = v0;
  v1 = *(v45 + 64);
  MEMORY[0x28223BE20](v0);
  v44 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BC40();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875B7F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v40[3] = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE40();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v40[2] = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BE20();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_23875BD20();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v40 - v22;
  v40[0] = sub_23875BAD0();
  v24 = *(v40[0] - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v40[0]);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[1] = "ation-icon.passbook-stub.wallet";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2387632F0;
  sub_23875BA30();
  v29 = sub_23875BA40();
  (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
  v30 = sub_23875BA10();
  (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
  sub_2387595A0();
  sub_2387595C0();
  sub_2387595D0();
  sub_23875B7E0();
  sub_23875BA50();
  v31 = v41;
  sub_238759B40();
  v32 = sub_23875BAC0();
  v34 = v33;
  (*(v42 + 8))(v31, v43);
  (*(v24 + 8))(v27, v40[0]);
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_238448C58();
  *(v28 + 32) = v32;
  *(v28 + 40) = v34;
  v36 = v44;
  v35 = v45;
  v37 = v46;
  (*(v45 + 104))(v44, *MEMORY[0x277CC77B0], v46);
  v38 = sub_238758A50();

  (*(v35 + 8))(v36, v37);
  return v38;
}

uint64_t static SuggestionsOrderBanner.walletLogo()()
{
  if (qword_27DF08CC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27DF0AE88;
  v1 = qword_27DF0AE88;
  return v0;
}

id sub_238497B6C()
{
  result = sub_238498EBC(0, 0, 1);
  qword_27DF0AE88 = result;
  return result;
}

id SuggestionsOrderBanner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_238497C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
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

unint64_t sub_238497D38()
{
  result = qword_27DF0AEC0;
  if (!qword_27DF0AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09550, &qword_2387638E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AEC0);
  }

  return result;
}

uint64_t type metadata accessor for SuggestionsOrderBanner()
{
  result = qword_27DF0AEC8;
  if (!qword_27DF0AEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238497DF0()
{
  result = sub_238759B60();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2387595E0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_238497F20()
{
  result = qword_27DF0AED8;
  if (!qword_27DF0AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AED8);
  }

  return result;
}

char *sub_238497FC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF00, &unk_238767510);
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
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_238498120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AFA0, &qword_2387675E0);
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

char *sub_238498264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF50, &qword_238767568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_238498380(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF48, &qword_238767560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2384984DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF80, &qword_2387675A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF88, &qword_2387675A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2384986F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2384988E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF08, &unk_238767520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2384989EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF10, &qword_2387744B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF18, &qword_238767530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_238498B48(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF70, &unk_238767590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF78, &qword_23877F8C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_238498CE0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_238498EBC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_238757A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  sub_238757A20();
  (*(v7 + 104))(v11, *MEMORY[0x277CC6A70], v6);
  sub_238757A40();
  v14 = *(v7 + 8);
  v14(v11, v6);
  v14(v13, v6);
  v15 = sub_2387588A0();
  if (a3)
  {
    v16 = 28.0;
  }

  else
  {
    v16 = *&a1;
  }

  if (a3)
  {
    v17 = 28.0;
  }

  else
  {
    v17 = *&a2;
  }

  v18 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v19 = sub_23875EA50();

  v20 = [v18 initWithType_];

  v21 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v16 scale:{v17, v15}];
  [v21 setShape_];
  v22 = [v20 prepareImageForDescriptor_];
  if (!v22)
  {

    return 0;
  }

  v23 = v22;
  result = [v22 CGImage];
  if (result)
  {
    v25 = result;
    v26 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:result scale:0 orientation:1.0];

    return v26;
  }

  __break(1u);
  return result;
}

unint64_t sub_23849917C()
{
  result = qword_27DF0ADF8;
  if (!qword_27DF0ADF8)
  {
    sub_2387590C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ADF8);
  }

  return result;
}

uint64_t sub_2384991D4()
{
  v1 = v0;
  v2 = sub_23875BCB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v369 = &v327 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = sub_238758AA0();
  v348 = *(v349 - 8);
  v5 = *(v348 + 64);
  MEMORY[0x28223BE20](v349);
  v347 = &v327 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_2387598C0();
  v327 = *(v328 - 8);
  v7 = *(v327 + 64);
  MEMORY[0x28223BE20](v328);
  v355 = &v327 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_23875EAD0();
  v338 = *(v339 - 8);
  v9 = *(v338 + 64);
  MEMORY[0x28223BE20](v339);
  v337 = &v327 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B060, &unk_238767670);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v336 = &v327 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v352 = &v327 - v15;
  v376 = sub_23875A8A0();
  v370 = *(v376 - 8);
  v16 = *(v370 + 64);
  MEMORY[0x28223BE20](v376);
  v380 = &v327 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v335 = &v327 - v20;
  v342 = sub_238759FF0();
  v341 = *(v342 - 8);
  v21 = *(v341 + 64);
  v22 = MEMORY[0x28223BE20](v342);
  v332 = &v327 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v333 = &v327 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B070, &unk_238766290);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v373 = &v327 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v340 = &v327 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A928, &qword_238766270);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v384 = &v327 - v32;
  v33 = sub_23875A010();
  v371 = *(v33 - 8);
  v372 = v33;
  v34 = *(v371 + 64);
  MEMORY[0x28223BE20](v33);
  v382 = &v327 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = sub_238758090();
  v363 = *(v364 - 8);
  v36 = *(v363 + 64);
  MEMORY[0x28223BE20](v364);
  v344 = &v327 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v362 = &v327 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A978, &unk_2387662C0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v359 = &v327 - v43;
  v361 = sub_238759230();
  v360 = *(v361 - 8);
  v44 = *(v360 + 64);
  MEMORY[0x28223BE20](v361);
  v343 = &v327 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_23875BC40();
  v357 = *(v358 - 8);
  v46 = *(v357 + 64);
  MEMORY[0x28223BE20](v358);
  v374 = &v327 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B090, &qword_238767680);
  v375 = *(v368 - 8);
  v48 = *(v375 + 64);
  v49 = MEMORY[0x28223BE20](v368);
  v330 = &v327 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v356 = &v327 - v52;
  MEMORY[0x28223BE20](v51);
  v377 = &v327 - v53;
  v54 = sub_2387587A0();
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v378 = &v327 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = sub_23875C1E0();
  v350 = *(v351 - 8);
  v57 = *(v350 + 64);
  v58 = MEMORY[0x28223BE20](v351);
  v334 = &v327 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v367 = &v327 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B098, &qword_238767688);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v64 = &v327 - v63;
  v65 = sub_23875A690();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  v69 = &v327 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = sub_238758F50();
  v353 = *(v354 - 8);
  v70 = *(v353 + 64);
  v71 = MEMORY[0x28223BE20](v354);
  v346 = &v327 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v345 = &v327 - v74;
  MEMORY[0x28223BE20](v73);
  v76 = &v327 - v75;
  v77 = [objc_allocWithZone(MEMORY[0x277CD4F78]) init];
  v331 = 0;
  sub_238449184(0, &qword_27DF0B0A0, 0x277CCABB0);
  v78 = sub_23875F190();
  [v77 setBankEnableBrandMUIDFallback_];

  v79 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_input;
  sub_23875A330();
  v80 = sub_23875EA50();

  [v77 setBankIdentifier_];

  v81 = v79;
  v379 = v76;
  sub_23875A300();
  v383 = v1;
  sub_23875A320();
  v82 = (*(v66 + 48))(v64, 1, v65);
  v381 = v77;
  if (v82 == 1)
  {
    sub_238439884(v64, &qword_27DF0B098, &qword_238767688);
    v83 = v367;
    sub_23875C120();
    v84 = sub_23875C1B0();
    v85 = sub_23875EFE0();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2383F8000, v84, v85, "No user identifier supplied for Maps lookup", v86, 2u);
      MEMORY[0x23EE64DF0](v86, -1, -1);
    }

    (*(v350 + 8))(v83, v351);
    v87 = v383;
    v77 = v381;
  }

  else
  {
    (*(v66 + 32))(v69, v64, v65);
    sub_23875A670();
    v88 = sub_23875EA50();

    [v77 setBankAnonymisedUserId_];

    sub_23875A680();
    v89 = sub_23875F210();
    [v77 setRotationPeriodsSinceEpoch_];

    (*(v66 + 8))(v69, v65);
    v87 = v383;
  }

  v90 = v378;
  sub_238758E90();
  [v77 setBankTransactionType_];
  [v77 setBankMerchantStatus_];
  v91 = sub_238758EF0();
  v93 = v92;
  sub_23875A310();
  v94 = (v87 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor);
  v95 = *(v87 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor + 32);
  __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor), *(v87 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor + 24));
  v385 = v91;
  v386 = v93;
  v96 = v377;
  sub_238758020();
  v97 = v375;
  v98 = *(v375 + 88);
  v99 = v368;
  v367 = (v375 + 88);
  v366 = v98;
  v100 = v98(v96, v368);
  v365 = *MEMORY[0x277CC7710];
  LODWORD(v378) = v100 != v365;
  if (v100 == v365)
  {

    (*(v97 + 8))(v96, v99);
  }

  else
  {
    if (v100 != *MEMORY[0x277CC7718])
    {
      goto LABEL_127;
    }

    (*(v97 + 96))(v96, v99);
    v102 = *v96;
    v101 = v96[1];
  }

  v103 = sub_23875EA50();

  [v381 setBankTransactionDescriptionClean_];

  v104 = sub_238758E30();
  v106 = v105;
  sub_23875A310();
  v107 = v94;
  v108 = v94[3];
  v109 = v107[4];
  v329 = v107;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v385 = v104;
  v386 = v106;
  v110 = v356;
  sub_238758020();
  v111 = v366(v110, v99);
  v377 = v81;
  if (v111 == v365)
  {

    (*(v375 + 8))(v110, v99);
    v112 = v363;
    v113 = v359;
  }

  else
  {
    v112 = v363;
    v113 = v359;
    if (v111 != *MEMORY[0x277CC7718])
    {
      goto LABEL_127;
    }

    (*(v375 + 96))(v110, v99);
    v115 = *v110;
    v114 = v110[1];
    LODWORD(v378) = 1;
  }

  v116 = sub_23875EA50();

  v117 = v381;
  [v381 setBankTransactionDescription_];

  v118 = v374;
  sub_238758E80();
  sub_23875B9B0();
  v120 = v119;
  (*(v357 + 8))(v118, v358);
  v121 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v117 setBankTransactionTimestamp_];

  sub_238758ED0();
  v122 = v360;
  v123 = v361;
  v124 = (*(v360 + 48))(v113, 1, v361);
  v125 = v373;
  v126 = v364;
  if (v124 == 1)
  {
    sub_238439884(v113, &qword_27DF0A978, &unk_2387662C0);
  }

  else
  {
    v127 = v343;
    (*(v122 + 32))(v343, v113, v123);
    v128 = v122;
    v129 = v123;
    v130 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
    [v117 setBankIndustryCode_];

    (*(v128 + 8))(v127, v129);
  }

  v131 = v382;
  v132 = v384;
  v133 = v362;
  sub_238758EE0();
  if ((*(v112 + 48))(v133, 1, v126) == 1)
  {
    sub_238439884(v133, &unk_27DF0B080, &unk_2387662A0);
    v133 = v344;
    sub_238758EA0();
  }

  sub_238758040();
  (*(v112 + 8))(v133, v126);
  v134 = sub_23875EA50();

  v135 = v381;
  [v381 setBankTransactionCurrencyCode_];

  v136 = *(v383 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_otherBankTransactionLocations);
  v137 = v136 & 0xFFFFFFFFFFFFFF8;
  if (v136 >> 62)
  {
    goto LABEL_124;
  }

  v138 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v138)
  {
    v385 = MEMORY[0x277D84F90];
    while (1)
    {
      v131 = 0;
      v139 = v136 & 0xC000000000000001;
      v364 = MEMORY[0x277D84F90];
      v135 = &unk_278A55000;
      while (1)
      {
        if (v138 == v131)
        {
          sub_238449184(0, &qword_27DF0B0A8, 0x277D0EB80);
          v135 = v381;
          v148 = v381;

          v149 = sub_23875EC60();
          [v148 setOtherBankTransactionLocations_];

          swift_bridgeObjectRelease_n();
          v131 = v382;
          v125 = v373;
          goto LABEL_34;
        }

        if (v139)
        {
          v140 = MEMORY[0x23EE63F70](v131, v136);
        }

        else
        {
          if (v131 >= *(v137 + 16))
          {
            goto LABEL_123;
          }

          v140 = *(v136 + 8 * v131 + 32);
        }

        v132 = v140;
        v141 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          break;
        }

        v142 = v136;
        v143 = [v140 snapToResolution_];
        v144 = objc_allocWithZone(MEMORY[0x277D0EB80]);
        [v143 coordinate];
        v146 = v145;
        [v143 coordinate];
        v125 = [v144 initWithLatitude:v146 longitude:?];

        v136 = v142;
        ++v131;
        v132 = v384;
        if (v125)
        {

          MEMORY[0x23EE63730]();
          if (*((v385 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v385 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v147 = *((v385 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23875EC90();
          }

          sub_23875ECB0();
          v364 = v385;
          v131 = v141;
        }
      }

      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      if (!sub_23875F3A0())
      {
        break;
      }

      v385 = MEMORY[0x277D84F90];
      v138 = sub_23875F3A0();
    }
  }

LABEL_34:
  sub_23875A2F0();
  v151 = v371;
  v150 = v372;
  v152 = (*(v371 + 48))(v132, 1, v372);
  v153 = v355;
  v363 = v136;
  if (v152 == 1)
  {
    sub_238439884(v132, &qword_27DF0A928, &qword_238766270);
  }

  else
  {
    (*(v151 + 32))(v131, v132, v150);
    sub_238759EB0();
    if (v154)
    {
      v155 = v135;

      v156 = sub_23875EA50();
      [v155 setMerchantCode_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F20();
    if (v157)
    {
      v158 = v135;

      v159 = sub_23875EA50();
      [v158 setRawMerchantCode_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759EC0();
    if (v160)
    {
      v161 = v135;

      v162 = sub_23875EA50();
      [v161 setMerchantType_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F40();
    if (v163)
    {
      v164 = v135;

      v165 = sub_23875EA50();
      [v164 setIndustryCategory_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    v166 = sub_238759E90();
    if ((v166 & 0x10000) == 0)
    {
      v167 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
      v168 = v135;
      [v168 setIndustryCode_];
    }

    sub_238759FA0();
    if (v169)
    {
      v170 = v135;

      v171 = sub_23875EA50();
      [v170 setMerchantCountryCode_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F90();
    if (v172)
    {
      v173 = v135;

      v174 = sub_23875EA50();
      [v173 setTerminalId_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759FC0();
    if (v175)
    {
      v176 = v135;

      v177 = sub_23875EA50();
      [v176 setMerchantAdditionalData_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759EF0();
    if (v178)
    {
      v179 = v135;

      v180 = sub_23875EA50();
      [v179 setPaymentNetwork_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    v181 = sub_238759F50();
    if (v181 != 2)
    {
      v182 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v183 = v135;
      [v183 setCoarseLocationUsed_];
    }

    v184 = v340;
    sub_23875A000();
    sub_23849C3DC(v184, v125);
    v185 = v341;
    v186 = v342;
    if ((*(v341 + 48))(v125, 1, v342) == 1)
    {
      sub_238439884(v184, &unk_27DF0B070, &unk_238766290);
    }

    else
    {
      v187 = v125;
      v188 = v333;
      (*(v185 + 32))(v333, v187, v186);
      sub_238449184(0, &qword_27DF0A960, 0x277CE41F8);
      (*(v185 + 16))(v332, v188, v186);
      v189 = sub_23875EF70();
      v190 = v185;
      v191 = v189;
      (*(v190 + 8))(v188, v186);
      sub_238439884(v184, &unk_27DF0B070, &unk_238766290);
      v192 = [objc_allocWithZone(MEMORY[0x277D0EB80]) initWithCLLocation_];
      if (!v192)
      {
        __break(1u);
        goto LABEL_127;
      }

      v193 = v192;

      v194 = v135;
      [v194 setLocation_];
    }

    sub_238759F70();
    if (v195)
    {
      v196 = v135;

      v197 = sub_23875EA50();
      [v196 setMerchantId_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F00();
    if (v198)
    {
      v199 = v135;

      v200 = sub_23875EA50();
      [v199 setMerchantCanl_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F10();
    if (v201)
    {
      v202 = v135;

      v203 = sub_23875EA50();
      [v202 setMerchantRawCity_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F60();
    if (v204)
    {
      v205 = v135;

      v206 = sub_23875EA50();
      [v205 setMerchantRawState_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759EA0();
    if (v207)
    {
      v208 = v135;

      v209 = sub_23875EA50();
      [v208 setMerchantCity_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759E70();
    if (v210)
    {
      v211 = v135;

      v212 = sub_23875EA50();
      [v211 setMerchantZip_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759ED0();
    if (v213)
    {
      v214 = v135;

      v215 = sub_23875EA50();
      [v214 setMerchantState_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    v216 = sub_238759FD0();
    if ((v216 & 0x10000) == 0)
    {
      v217 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
      v218 = v135;
      [v218 setMerchantCleanConfidenceLevel_];
    }

    v219 = sub_238759EE0();
    if ((v220 & 1) == 0)
    {
      v385 = v219;
      sub_23875F600();
      v221 = v135;

      v222 = sub_23875EA50();
      [v221 setAdamId_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    v223 = v335;
    sub_238759FE0();
    v224 = sub_23875B940();
    v225 = *(v224 - 8);
    if ((*(v225 + 48))(v223, 1, v224) == 1)
    {
      sub_238439884(v223, &qword_27DF0D040, &qword_2387676A0);
    }

    else
    {
      sub_23875B820();
      (*(v225 + 8))(v223, v224);
      v226 = v135;

      v227 = sub_23875EA50();
      [v226 setWarsawMerchantDomain_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759F30();
    if (v228)
    {
      v229 = v135;

      v230 = sub_23875EA50();
      [v229 setWarsawMerchantName_];

      v131 = v382;
      swift_bridgeObjectRelease_n();
    }

    sub_238759FB0();
    if (v231)
    {
      v232 = v131;
      v233 = v135;

      v234 = sub_23875EA50();
      [v233 setWarsawMerchantId_];

      swift_bridgeObjectRelease_n();
      (*(v371 + 8))(v232, v372);
    }

    else
    {
      (*(v371 + 8))(v131, v372);
    }
  }

  v235 = v370;
  v236 = v352;
  sub_23875A340();
  v237 = *(v235 + 48);
  if (v237(v236, 1, v376) != 1)
  {
    v238 = v376;
    (*(v235 + 32))(v380, v236, v376);
    v239 = v235;
    v240 = [objc_allocWithZone(MEMORY[0x277CD4F70]) init];
    [v135 setBankMerchantInfo_];

    v241 = v336;
    sub_23875A340();
    if (v237(v241, 1, v238) == 1)
    {
      sub_238439884(v241, &unk_27DF0B060, &unk_238767670);
LABEL_96:
      v254 = sub_23875A880();
      if (v254)
      {
        v255 = v254;
        v256 = [v254 street];

        sub_23875EA80();
        v257 = v135;

        v258 = [v257 bankMerchantInfo];
        v259 = sub_23875EA50();
        [v258 setBankMerchantAddress_];

        swift_bridgeObjectRelease_n();
      }

      v260 = sub_23875A880();
      if (v260)
      {
        v261 = v260;
        v262 = [v260 postalCode];

        sub_23875EA80();
        v263 = v135;

        v264 = [v263 bankMerchantInfo];
        v265 = sub_23875EA50();
        [v264 setBankMerchantZip_];

        swift_bridgeObjectRelease_n();
      }

      v266 = sub_23875A880();
      if (v266)
      {
        v267 = v266;
        v268 = [v266 city];

        sub_23875EA80();
        v269 = v135;

        v270 = [v269 bankMerchantInfo];
        v271 = sub_23875EA50();
        [v270 setBankMerchantCity_];

        swift_bridgeObjectRelease_n();
      }

      v272 = sub_23875A880();
      if (v272)
      {
        v273 = v272;
        v274 = [v272 state];

        sub_23875EA80();
        v275 = v135;

        v276 = [v275 bankMerchantInfo];
        v277 = sub_23875EA50();
        [v276 setBankMerchantState_];

        swift_bridgeObjectRelease_n();
      }

      v278 = sub_23875A880();
      if (v278)
      {
        v279 = v278;
        v280 = [v278 ISOCountryCode];

        sub_23875EA80();
        v281 = v135;

        v282 = [v281 bankMerchantInfo];
        v283 = sub_23875EA50();
        [v282 setBankMerchantCountryCode_];

        swift_bridgeObjectRelease_n();
      }

      v284 = sub_23875A890();
      if ((v284 & 0x10000) == 0 && v284)
      {
        v285 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
        [v135 setBankIndustryCode_];
      }

      (*(v370 + 8))(v380, v376);
      goto LABEL_110;
    }

    v242 = sub_23875A870();
    v244 = v243;
    (*(v239 + 8))(v241, v376);
    if (!v244)
    {
      goto LABEL_96;
    }

    sub_23875A310();
    v245 = v329[4];
    __swift_project_boxed_opaque_existential_1(v329, v329[3]);
    v385 = v242;
    v386 = v244;
    v246 = v330;
    sub_238758020();
    v247 = v368;
    v248 = v366(v246, v368);
    if (v248 == v365)
    {

      (*(v375 + 8))(v246, v247);
LABEL_95:
      v251 = v135;

      v252 = [v251 bankMerchantInfo];
      v253 = sub_23875EA50();
      [v252 setBankMerchantEnhancedName_];

      swift_bridgeObjectRelease_n();
      goto LABEL_96;
    }

    if (v248 == *MEMORY[0x277CC7718])
    {

      (*(v375 + 96))(v246, v247);
      v250 = *v246;
      v249 = v246[1];
      LODWORD(v378) = 1;
      goto LABEL_95;
    }

LABEL_127:
    result = sub_23875F520();
    __break(1u);
    return result;
  }

  sub_238439884(v236, &unk_27DF0B060, &unk_238767670);
LABEL_110:
  v286 = (v383 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider);
  v287 = *(v383 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider + 32);
  __swift_project_boxed_opaque_existential_1((v383 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider), *(v383 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider + 24));
  if (sub_238759880())
  {
    v288 = [v381 bankTransactionDescription];
    sub_23875EA80();

    v289 = v337;
    sub_23875EAC0();
    v290 = sub_23875EA90();
    v292 = v291;

    (*(v338 + 8))(v289, v339);
    if (v292 >> 60 != 15)
    {
      v293 = v286[4];
      __swift_project_boxed_opaque_existential_1(v286, v286[3]);
      v294 = v331;
      sub_238759890();
      if (v294)
      {
        sub_23875C120();
        v295 = v294;
        v296 = sub_23875C1B0();
        v297 = sub_23875EFE0();

        if (os_log_type_enabled(v296, v297))
        {
          v298 = swift_slowAlloc();
          v299 = swift_slowAlloc();
          *v298 = 138412290;
          v300 = v294;
          v301 = _swift_stdlib_bridgeErrorToNSError();
          *(v298 + 4) = v301;
          *v299 = v301;
          _os_log_impl(&dword_2383F8000, v296, v297, "Could not generate BAA identity %@", v298, 0xCu);
          sub_238439884(v299, &qword_27DF09930, &unk_2387638C0);
          MEMORY[0x23EE64DF0](v299, -1, -1);
          MEMORY[0x23EE64DF0](v298, -1, -1);
          sub_23844C940(v290, v292);
        }

        else
        {
          sub_23844C940(v290, v292);
        }

        (*(v350 + 8))(v334, v351);
      }

      else
      {
        sub_2387598A0();
        v302 = sub_23875EC60();

        v303 = v381;
        [v381 setBaaCerts_];

        v304 = sub_2387598B0();
        v306 = v305;
        v307 = sub_23875B980();
        sub_23844C954(v304, v306);
        [v303 setBaaSignature_];

        sub_23844C940(v290, v292);
        (*(v327 + 8))(v153, v328);
      }
    }
  }

  v308 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v309 = v378;
  v310 = [v308 initWithBool_];
  v311 = v381;
  [v381 setPiiRedactionOccurred_];

  if (*(v383 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_networkEventRecorder))
  {
    LODWORD(v378) = v309;
    v312 = v345;
    sub_23875A300();
    sub_238758F10();
    v313 = *(v353 + 8);
    v314 = v312;
    v315 = v354;
    v313(v314, v354);
    v316 = v346;
    sub_23875A300();
    v317 = sub_238758EF0();
    v383 = v318;
    v384 = v317;
    v313(v316, v315);
    sub_23875BBF0();
    v319 = [v311 bankTransactionDescriptionClean];
    v382 = sub_23875EA80();
    v380 = v320;

    v321 = [v311 bankTransactionDescription];
    sub_23875EA80();
    v377 = v322;

    v323 = [v311 bankMerchantInfo];
    v324 = [v323 bankMerchantEnhancedName];

    sub_23875EA80();

    v325 = v347;
    sub_238758A90();
    sub_238759240();
    (*(v348 + 8))(v325, v349);
    v313(v379, v315);
  }

  else
  {
    (*(v353 + 8))(v379, v354);
  }

  return v311;
}

uint64_t type metadata accessor for BankConnectMerchantLookupRequestSource()
{
  result = qword_27DF0B050;
  if (!qword_27DF0B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23849C328()
{
  result = sub_23875A350();
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

uint64_t sub_23849C3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B070, &unk_238766290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23849C494()
{
  sub_23875BC40();
  if (v0 <= 0x3F)
  {
    sub_2384A58C0(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23849C598();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23849C598()
{
  if (!qword_27DF0B0C0)
  {
    sub_238759D30();
    sub_23849CDC8(&qword_27DF0B0C8, MEMORY[0x277CC7C98]);
    v0 = sub_23875EEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0B0C0);
    }
  }
}

uint64_t sub_23849C638(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_23849C680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

unint64_t sub_23849C6EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2384A47CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23849C744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  v4 = qword_2814F0880;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

uint64_t sub_23849C8C8()
{
  switch(*v0)
  {
    case 2:
    case 9:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    case 3:
    case 5:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    case 4:
    case 6:
    case 7:
    case 0xB:
    case 0xD:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    case 8:
    case 0xE:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    case 0xF:
    case 0x10:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
    default:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      break;
  }

  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

BOOL sub_23849CBE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_2384A2554(v5, v7);
}

BOOL sub_23849CC3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_23875F630()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_23875F630()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23849CCDC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_2384A23B0(v7, v8) & 1;
}

uint64_t sub_23849CD24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2384A26BC(v5, v7) & 1;
}

uint64_t sub_23849CDC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23849CE74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B138, &qword_2387679C8);
  v3 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v95 = &v86 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B140, &qword_2387679D0);
  v5 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v86 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B148, &qword_2387679D8);
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - v8;
  v9 = type metadata accessor for RelatedEmailContents(0);
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v86 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v86 - v17);
  v20 = *v2;
  v19 = *(v2 + 8);
  v21 = *(v2 + 16);
  v22 = *(v2 + 24);
  v24 = *(v2 + 32);
  v23 = *(v2 + 40);
  if (!*(v2 + 56))
  {
    v47 = *(v2 + 48);
    v97 = *v2;
    v98 = v19;
    v99 = v21;
    v100 = v22;
    v101 = v24;
    v102 = v23;
    v103 = v47;

    v48 = sub_23849C8C8();
    v88 = v49;
    v89 = v48;
    v87 = sub_23849C744();
    v51 = v50;
    v52 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
    sub_23843981C(v2 + v52[8], v18 + v9[7], &qword_27DF0D040, &qword_2387676A0);
    v53 = v52[7];
    v54 = v9[8];
    v55 = sub_23875BC40();
    (*(*(v55 - 8) + 16))(v18 + v54, v2 + v53, v55);
    v56 = *(v2 + 64);
    v57 = *(v2 + 72);
    v58 = *(v2 + 80);
    v59 = *(v2 + 88);
    v60 = (v2 + v52[9]);
    v61 = *v60;
    v62 = v60[1];
    LOBYTE(v60) = *(v2 + v52[11]);
    *v18 = v19;
    v18[1] = v21;
    v63 = v88;
    v18[2] = v89;
    v18[3] = v63;
    v18[4] = v87;
    v18[5] = v51;
    v64 = (v18 + v9[9]);
    *v64 = v56;
    v64[1] = v57;
    v65 = (v18 + v9[10]);
    *v65 = v58;
    v65[1] = v59;
    v66 = (v18 + v9[11]);
    *v66 = v61;
    v66[1] = v62;
    *(v18 + v9[12]) = v60;
    *(v18 + v9[13]) = 4;
    v67 = v9[14];
    *(v18 + v67) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
    swift_storeEnumTagMultiPayload();
    sub_2384A59C4(v18, v90, type metadata accessor for RelatedEmailContents);
    swift_storeEnumTagMultiPayload();
    sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents);

    v46 = v92;
    goto LABEL_5;
  }

  if (*(v2 + 56) == 1)
  {
    v25 = *(v2 + 8);

    v26 = sub_2384A4964(v24);
    v88 = v27;
    v89 = v26;
    v87 = sub_2384A47DC(v21, v22);
    v29 = v28;
    v30 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
    sub_23843981C(v2 + v30[8], v18 + v9[7], &qword_27DF0D040, &qword_2387676A0);
    v31 = v30[7];
    v32 = v9[8];
    v33 = sub_23875BC40();
    (*(*(v33 - 8) + 16))(v18 + v32, v2 + v31, v33);
    v34 = *(v2 + 64);
    v35 = *(v2 + 72);
    v36 = *(v2 + 80);
    v37 = *(v2 + 88);
    v38 = (v2 + v30[9]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v38) = *(v2 + v30[11]);
    *v18 = v20;
    v18[1] = v19;
    v41 = v88;
    v18[2] = v89;
    v18[3] = v41;
    v18[4] = v87;
    v18[5] = v29;
    v42 = (v18 + v9[9]);
    *v42 = v34;
    v42[1] = v35;
    v43 = (v18 + v9[10]);
    *v43 = v36;
    v43[1] = v37;
    v44 = (v18 + v9[11]);
    *v44 = v39;
    v44[1] = v40;
    *(v18 + v9[12]) = v38;
    *(v18 + v9[13]) = 4;
    v45 = v9[14];
    *(v18 + v45) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
    swift_storeEnumTagMultiPayload();
    sub_2384A59C4(v18, v90, type metadata accessor for RelatedEmailContents);
    swift_storeEnumTagMultiPayload();
    sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents);

    v46 = v92;
LABEL_5:
    sub_23875D1B0();
    sub_23843981C(v46, v95, &qword_27DF0B148, &qword_2387679D8);
    swift_storeEnumTagMultiPayload();
    sub_2384A5A2C();
    sub_23875D1B0();
    sub_238439884(v46, &qword_27DF0B148, &qword_2387679D8);
    v16 = v18;
    return sub_2384A5AE0(v16, type metadata accessor for RelatedEmailContents);
  }

  v92 = *(v2 + 40);
  if (v22)
  {
    v90 = v22;
  }

  else
  {
    v90 = v19;

    v21 = v20;
  }

  v68 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  sub_23843981C(v2 + v68[8], v13 + v9[7], &qword_27DF0D040, &qword_2387676A0);
  v69 = v68[7];
  v70 = v9[8];
  v71 = sub_23875BC40();
  (*(*(v71 - 8) + 16))(v13 + v70, v2 + v69, v71);
  v72 = *(v2 + 64);
  v91 = *(v2 + 72);
  v73 = v91;
  v74 = *(v2 + 80);
  v75 = *(v2 + 88);
  v76 = (v2 + v68[9]);
  v77 = *v76;
  v78 = v76[1];
  LOBYTE(v76) = *(v2 + v68[11]);
  v79 = v90;
  *v13 = v21;
  v13[1] = v79;
  v80 = v92;
  v13[2] = v24;
  v13[3] = v80;
  v13[4] = 0;
  v13[5] = 0;
  v81 = (v13 + v9[9]);
  *v81 = v72;
  v81[1] = v73;
  v82 = (v13 + v9[10]);
  *v82 = v74;
  v82[1] = v75;
  v83 = (v13 + v9[11]);
  *v83 = v77;
  v83[1] = v78;
  *(v13 + v9[12]) = v76;
  *(v13 + v9[13]) = 4;
  v84 = v9[14];
  *(v13 + v84) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  sub_2384A5960(v13, v16);
  sub_2384A59C4(v16, v95, type metadata accessor for RelatedEmailContents);
  swift_storeEnumTagMultiPayload();
  sub_2384A5A2C();
  sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents);

  sub_23875D1B0();
  return sub_2384A5AE0(v16, type metadata accessor for RelatedEmailContents);
}