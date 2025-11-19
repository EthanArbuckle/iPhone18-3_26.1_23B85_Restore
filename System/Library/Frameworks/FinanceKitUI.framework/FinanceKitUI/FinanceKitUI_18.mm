uint64_t sub_2385FC664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385FC6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385FC734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385FC794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2385FC7FC()
{
  result = qword_27DF10E68;
  if (!qword_27DF10E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E08, &qword_238776D40);
    sub_2385FC8E8(&qword_27DF10E70, type metadata accessor for OrderPaymentView);
    sub_2385FC8E8(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10E68);
  }

  return result;
}

uint64_t sub_2385FC8E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2385FC930()
{
  result = qword_27DF10E80;
  if (!qword_27DF10E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E58, &qword_238776D90);
    sub_2385FC9BC();
    sub_2385FCA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10E80);
  }

  return result;
}

unint64_t sub_2385FC9BC()
{
  result = qword_27DF10E88;
  if (!qword_27DF10E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E50, &qword_238776D88);
    sub_2385FCB34(&qword_27DF10E90, &qword_27DF10E60, &qword_238776D98);
    sub_2385FCB34(&qword_27DF10E98, &qword_27DF10E30, &qword_238776D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10E88);
  }

  return result;
}

unint64_t sub_2385FCA78()
{
  result = qword_27DF10EA0;
  if (!qword_27DF10EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E20, &qword_238776D58);
    sub_2385FCB34(&qword_27DF10EA8, &qword_27DF10E28, &qword_238776D60);
    sub_2385FCB34(&qword_27DF10EB0, &qword_27DF10E10, &qword_238776D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10EA0);
  }

  return result;
}

uint64_t sub_2385FCB34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2385FCB88()
{
  result = qword_27DF10EB8;
  if (!qword_27DF10EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E00, &qword_238776D38);
    sub_2385FC7FC();
    sub_2385FC8E8(&qword_27DF10E78, type metadata accessor for OrderArchiveMonthContents);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10EB8);
  }

  return result;
}

unint64_t sub_2385FCC48()
{
  result = qword_27DF10EC0;
  if (!qword_27DF10EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10EC0);
  }

  return result;
}

unint64_t sub_2385FCCE8()
{
  result = qword_27DF10ED0;
  if (!qword_27DF10ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10ED0);
  }

  return result;
}

uint64_t sub_2385FCE30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2385FCE78(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2385FCF5C()
{
  result = sub_23875A710();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2385FD024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2385FD0B4()
{
  type metadata accessor for FetchedOrderDetailsDestination(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ReturnDetailsDestination(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OrderPaymentDestination(319);
      if (v2 <= 0x3F)
      {
        sub_2385FD164();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2385FD164()
{
  if (!qword_27DF10F30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF10F30);
    }
  }
}

uint64_t sub_2385FD20C()
{
  result = type metadata accessor for OrderNavigationDestination(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2385FD278()
{
  result = qword_27DF10F48;
  if (!qword_27DF10F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10F50, &qword_238777270);
    sub_2385FC930();
    sub_2385FCB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10F48);
  }

  return result;
}

uint64_t AccountMismatchedInformationTileView.init(accounts:institution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a2;
  v5 = sub_238758680();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v27 = a3;
  *a3 = a1;
  v13 = *(a1 + 16);

  v35 = v13;
  if (v13)
  {
    v15 = 0;
    v29 = (v6 + 8);
    v33 = (v6 + 32);
    v34 = v6 + 16;
    v16 = MEMORY[0x277D84F90];
    v30 = v9;
    v31 = v5;
    v32 = a1;
    while (v15 < *(a1 + 16))
    {
      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = *(v6 + 72);
      (*(v6 + 16))(v12, a1 + v17 + v18 * v15, v5);
      if (sub_238758550())
      {
        v19 = *v33;
        (*v33)(v9, v12, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2385FE488(0, *(v16 + 16) + 1, 1);
          v16 = v36;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2385FE488(v21 > 1, v22 + 1, 1);
          v16 = v36;
        }

        *(v16 + 16) = v22 + 1;
        v23 = v16 + v17 + v22 * v18;
        v9 = v30;
        v5 = v31;
        result = (v19)(v23, v30, v31);
        a1 = v32;
      }

      else
      {
        result = (*v29)(v12, v5);
      }

      if (v35 == ++v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_13:

    v24 = v27;
    *(v27 + 1) = v16;
    v25 = *(type metadata accessor for AccountMismatchedInformationTileView() + 24);
    v26 = sub_238757B60();
    return (*(*(v26 - 8) + 32))(&v24[v25], v28, v26);
  }

  return result;
}

uint64_t AccountMismatchedInformationTileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D020();
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F60, &qword_238777280) + 44);
  *v3 = sub_23875CE50();
  *(v3 + 8) = 0x4000000000000000;
  *(v3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F68, &qword_238777288);
  sub_2385FD714(v1, v3 + *(v4 + 44));

  v5 = sub_23875D7D0();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F70, &qword_238777290);
  v15 = a1 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_2385FD714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6F8, &qword_23876AE98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  sub_23875ED50();
  v27[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(type metadata accessor for AccountMismatchedInformationTileView() + 24);
  v12 = sub_238757B60();
  (*(*(v12 - 8) + 16))(v10, a1 + v11, v12);
  v10[*(type metadata accessor for BadgedErrorInstitutionLogo() + 20)] = 1;
  v13 = sub_23875D7C0();
  sub_23875C3D0();
  v14 = &v10[*(v4 + 36)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  v19 = sub_23875D030();
  LOBYTE(v32[0]) = 0;
  sub_2385FDA28(v29);
  *&v28[7] = v29[0];
  *&v28[23] = v29[1];
  *&v28[39] = v29[2];
  *&v28[55] = v29[3];
  LOBYTE(v11) = v32[0];
  sub_23843981C(v10, v7, &qword_27DF0C6F8, &qword_23876AE98);
  sub_23843981C(v7, a2, &qword_27DF0C6F8, &qword_23876AE98);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11048, &qword_238777410) + 48);
  *&v30 = v19;
  *(&v30 + 1) = 0x4020000000000000;
  v31[0] = v11;
  *&v31[1] = *v28;
  *&v31[17] = *&v28[16];
  *&v31[33] = *&v28[32];
  *&v31[49] = *&v28[48];
  v21 = *&v28[63];
  *&v31[64] = *&v28[63];
  v22 = *v31;
  *v20 = v30;
  *(v20 + 16) = v22;
  v23 = *&v31[16];
  v24 = *&v31[32];
  v25 = *&v31[48];
  *(v20 + 80) = v21;
  *(v20 + 48) = v24;
  *(v20 + 64) = v25;
  *(v20 + 32) = v23;
  sub_23843981C(&v30, v32, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v10, &qword_27DF0C6F8, &qword_23876AE98);
  v32[0] = v19;
  v32[1] = 0x4020000000000000;
  v33 = v11;
  v35 = *&v28[16];
  v36 = *&v28[32];
  *v37 = *&v28[48];
  *&v37[15] = *&v28[63];
  v34 = *v28;
  sub_238439884(v32, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v7, &qword_27DF0C6F8, &qword_23876AE98);
}

uint64_t sub_2385FDA28@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385FDC68();
  sub_2384397A8();
  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  sub_23875D980();
  v7 = sub_23875DA60();
  v25 = v8;
  v26 = v7;
  v24 = v9;
  v27 = v10;

  sub_2384397FC(v2, v4, v6 & 1);

  sub_2385FDDB8();
  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  sub_23875D7F0();
  v16 = sub_23875DA60();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_2384397FC(v11, v13, v15 & 1);

  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_23843980C(v26, v25, v24 & 1);

  sub_23843980C(v16, v18, v20 & 1);

  sub_2384397FC(v16, v18, v20 & 1);

  sub_2384397FC(v26, v25, v24 & 1);
}

uint64_t sub_2385FDC68()
{
  if (*(*(v0 + 8) + 16) == 1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v1 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v1 = qword_2814F1B90;
  }

  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

uint64_t sub_2385FDDB8()
{
  v0 = objc_opt_self();
  sub_2385FDF94();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_23875EC60();

  v3 = [v0 localizedStringByJoiningStrings_];

  v4 = sub_23875EA80();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2387632F0;
  *(v7 + 56) = v1;
  *(v7 + 64) = sub_238448C58();
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  sub_23875EA80();
  v13 = sub_23875EAA0();

  return v13;
}

uint64_t sub_2385FDF94()
{
  v1 = sub_238758680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = *(v6 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2385FE468(0, v7, 0);
    v9 = sub_23875ED50();
    v11 = *(v2 + 16);
    v10 = v2 + 16;
    v35 = v11;
    v36 = v9;
    result = v40;
    v12 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v33 = "ON_PICKER_CANCEL_BUTTON_TITLE";
    v34 = "LE_DESCRIPTION_FORMAT";
    v13 = *(v10 + 56);
    v31 = (v10 - 8);
    v32 = v13;
    v30 = xmmword_2387632F0;
    v37 = v1;
    v38 = v10;
    do
    {
      v39 = result;
      v35(v5, v12, v1);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v14 = swift_allocObject();
      *(v14 + 16) = v30;
      v15 = sub_2387585B0();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = sub_238448C58();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      v18 = v5;
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v19 = qword_2814F1B90;
      v20 = sub_23875EA50();
      v21 = sub_23875EA50();
      v22 = sub_23875EA50();
      v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

      sub_23875EA80();
      v24 = sub_23875EAA0();
      v26 = v25;

      v5 = v18;
      v1 = v37;
      (*v31)(v18, v37);

      result = v39;
      v40 = v39;
      v28 = *(v39 + 16);
      v27 = *(v39 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2385FE468((v27 > 1), v28 + 1, 1);
        result = v40;
      }

      *(result + 16) = v28 + 1;
      v29 = result + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v12 += v32;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2385FE318@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D020();
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F60, &qword_238777280) + 44);
  *v3 = sub_23875CE50();
  *(v3 + 8) = 0x4000000000000000;
  *(v3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F68, &qword_238777288);
  sub_2385FD714(v1, v3 + *(v4 + 44));

  v5 = sub_23875D7D0();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F70, &qword_238777290);
  v15 = a1 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

char *sub_2385FE468(char *a1, int64_t a2, char a3)
{
  result = sub_2385FF084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2385FE488(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF38, &unk_238767550, MEMORY[0x277CC6F70]);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for AccountMismatchedInformationTileView()
{
  result = qword_27DF10F78;
  if (!qword_27DF10F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385FE55C()
{
  sub_2385FE5E0();
  if (v0 <= 0x3F)
  {
    sub_238757B60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385FE5E0()
{
  if (!qword_27DF0A6E8)
  {
    sub_238758680();
    v0 = sub_23875ECC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0A6E8);
    }
  }
}

unint64_t sub_2385FE638()
{
  result = qword_27DF10F88;
  if (!qword_27DF10F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10F70, &qword_238777290);
    sub_2385FE6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10F88);
  }

  return result;
}

unint64_t sub_2385FE6C4()
{
  result = qword_27DF10F90;
  if (!qword_27DF10F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10F98, &qword_238777318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10F90);
  }

  return result;
}

size_t sub_2385FE728(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FD0, &qword_238777360, MEMORY[0x277CC7678]);
  *v3 = result;
  return result;
}

void *sub_2385FE76C(void *a1, int64_t a2, char a3)
{
  result = sub_2385FF1B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FE78C(char *a1, int64_t a2, char a3)
{
  result = sub_2385FF2EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FE7AC(char *a1, int64_t a2, char a3)
{
  result = sub_2385FF408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2385FE7CC(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11088, &qword_238777468, MEMORY[0x277CC9720]);
  *v3 = result;
  return result;
}

size_t sub_2385FE810(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AE00, &unk_238767290, MEMORY[0x277CC6E90]);
  *v3 = result;
  return result;
}

size_t sub_2385FE854(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FE8, &unk_238777378, MEMORY[0x277CC7C98]);
  *v3 = result;
  return result;
}

size_t sub_2385FE898(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF30, &qword_238783C40, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_2385FE8DC(char *a1, int64_t a2, char a3)
{
  result = sub_2385FF514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2385FE8FC(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF110A8, &qword_238777490, type metadata accessor for AccountNameTokenProvider);
  *v3 = result;
  return result;
}

size_t sub_2385FE940(size_t a1, int64_t a2, char a3)
{
  result = sub_2385FFBD4(a1, a2, a3, *v3, &qword_27DF110B0, &unk_238777498, &qword_27DF09A58, &unk_2387641B0);
  *v3 = result;
  return result;
}

char *sub_2385FE980(char *a1, int64_t a2, char a3)
{
  result = sub_2385FF634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FE9A0(void *a1, int64_t a2, char a3)
{
  result = sub_23860025C(a1, a2, a3, *v3, &qword_27DF110A0, &unk_238777480, &qword_27DF09A48, &qword_2387641A0);
  *v3 = result;
  return result;
}

size_t sub_2385FE9E0(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF40, &qword_2387773C0, MEMORY[0x277CC7048]);
  *v3 = result;
  return result;
}

size_t sub_2385FEA24(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11090, &qword_238777470, type metadata accessor for TransactionTypeTokenProvider);
  *v3 = result;
  return result;
}

char *sub_2385FEA68(char *a1, int64_t a2, char a3)
{
  result = sub_2385FF778(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FEA88(char *a1, int64_t a2, char a3)
{
  result = sub_2385FF874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FEAA8(void *a1, int64_t a2, char a3)
{
  result = sub_2385FF99C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FEAC8(void *a1, int64_t a2, char a3)
{
  result = sub_23860025C(a1, a2, a3, *v3, &qword_27DF10FF8, &qword_238777398, &qword_27DF11000, &unk_2387773A0);
  *v3 = result;
  return result;
}

size_t sub_2385FEB08(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11078, &unk_238777450, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
  *v3 = result;
  return result;
}

char *sub_2385FEB4C(char *a1, int64_t a2, char a3)
{
  result = sub_2385FFAD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2385FEB6C(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FB0, &qword_238777330, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  *v3 = result;
  return result;
}

size_t sub_2385FEBB0(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FB8, &qword_238777338, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
  *v3 = result;
  return result;
}

size_t sub_2385FEBF4(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11030, &qword_2387773E8, MEMORY[0x277CC8510]);
  *v3 = result;
  return result;
}

size_t sub_2385FEC38(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11038, &qword_2387773F0, type metadata accessor for OrderPaymentSummaryItemView.ViewModel);
  *v3 = result;
  return result;
}

size_t sub_2385FEC7C(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11040, &qword_2387773F8, MEMORY[0x277CC8580]);
  *v3 = result;
  return result;
}

size_t sub_2385FECC0(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF28, &unk_238767540, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
  *v3 = result;
  return result;
}

size_t sub_2385FED04(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FA0, &qword_238777320, type metadata accessor for OrderDetailsReturn.ViewModel);
  *v3 = result;
  return result;
}

size_t sub_2385FED48(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FA8, &qword_238777328, MEMORY[0x277CC8398]);
  *v3 = result;
  return result;
}

size_t sub_2385FED8C(size_t a1, int64_t a2, char a3)
{
  result = sub_2385FFBD4(a1, a2, a3, *v3, &qword_27DF110C8, &qword_2387774B8, &qword_27DF0EB10, &qword_2387774C0);
  *v3 = result;
  return result;
}

void *sub_2385FEDCC(void *a1, int64_t a2, char a3)
{
  result = sub_2385FFDBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2385FEDEC(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11050, &qword_238777418, MEMORY[0x277CC6B80]);
  *v3 = result;
  return result;
}

void *sub_2385FEE30(void *a1, int64_t a2, char a3)
{
  result = sub_2385FFF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2385FEE50(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11068, &qword_238777440, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return);
  *v3 = result;
  return result;
}

size_t sub_2385FEE94(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11070, &qword_238777448, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment);
  *v3 = result;
  return result;
}

char *sub_2385FEED8(char *a1, int64_t a2, char a3)
{
  result = sub_23860004C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FEEF8(char *a1, int64_t a2, char a3)
{
  result = sub_238600158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2385FEF18(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FC0, &unk_238777340, MEMORY[0x277CC7268]);
  *v3 = result;
  return result;
}

size_t sub_2385FEF5C(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF12BD0, &unk_238777400, type metadata accessor for OrderNavigationDestination);
  *v3 = result;
  return result;
}

size_t sub_2385FEFA0(size_t a1, int64_t a2, char a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF68, &qword_2387773E0, type metadata accessor for WalletCardsBalanceWidgetAccountEntity);
  *v3 = result;
  return result;
}

void *sub_2385FEFE4(void *a1, int64_t a2, char a3)
{
  result = sub_23860025C(a1, a2, a3, *v3, &qword_27DF0AF70, &unk_238767590, &qword_27DF0AF78, &qword_23877F8C0);
  *v3 = result;
  return result;
}

void *sub_2385FF024(void *a1, int64_t a2, char a3)
{
  result = sub_23860025C(a1, a2, a3, *v3, &qword_27DF11020, &qword_2387773D0, &qword_27DF11028, &qword_2387773D8);
  *v3 = result;
  return result;
}

char *sub_2385FF064(char *a1, int64_t a2, char a3)
{
  result = sub_2386003A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FF084(char *result, int64_t a2, char a3, char *a4)
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

void *sub_2385FF1B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10FC8, &unk_238777350);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09948, &qword_238764030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FF2EC(char *result, int64_t a2, char a3, char *a4)
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

char *sub_2385FF408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11080, &qword_238777460);
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

char *sub_2385FF514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF110B8, &qword_2387774A8);
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
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FF634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11098, &qword_238777478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FF778(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11010, &qword_2387773B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_2385FF874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11018, &qword_2387773C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2385FF99C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10FF0, &qword_238777388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A40, &qword_238777390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FFAD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF110C0, &qword_2387774B0);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_2385FFBD4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_2385FFDBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF110D0, &qword_2387774C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4A8, &qword_238767840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2385FFF18(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10FD8, &qword_238777368);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10FE0, &qword_238777370);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23860004C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11060, &qword_238777438);
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

char *sub_238600158(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11058, &qword_238777430);
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

void *sub_23860025C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2386003A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
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

size_t sub_2386004DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_2386006B8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v5 = sub_2387581B0();
  v118 = *(v5 - 8);
  v119 = v5;
  v6 = *(v118 + 64);
  MEMORY[0x28223BE20](v5);
  v100 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v115 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v114 = &v99 - v16;
  v17 = sub_23875BC40();
  v105 = *(v17 - 8);
  v106 = v17;
  v18 = v105[8];
  MEMORY[0x28223BE20](v17);
  v101 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v103 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v99 - v24;
  v26 = sub_23875ABE0();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v102 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v99 - v32;
  v121 = sub_2387580D0();
  v117 = *(v121 - 8);
  v34 = *(v117 + 64);
  MEMORY[0x28223BE20](v121);
  v104 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v99 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v112 = *(v39 - 8);
  v113 = v39;
  v40 = *(v112 + 64);
  MEMORY[0x28223BE20](v39);
  v99 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v109 = &v99 - v43;
  MEMORY[0x28223BE20](v44);
  v108 = &v99 - v45;
  v46 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v47 = v46[5];
  v48 = sub_238757FA0();
  v49 = *(*(v48 - 8) + 56);
  v50 = 1;
  v110 = v47;
  v49(a3 + v47, 1, 1, v48);
  v51 = v46[6];
  v52 = sub_238757F70();
  v53 = *(*(v52 - 8) + 56);
  v111 = v51;
  v53(a3 + v51, 1, 1, v52);
  v54 = v46[7];
  v55 = sub_238757F90();
  v56 = *(*(v55 - 8) + 56);
  v107 = v54;
  v56(a3 + v54, 1, 1, v55);
  v57 = [a1 orderContent];
  v120 = v38;
  v58 = v33;
  sub_23875A5B0();

  sub_23875ABF0();
  sub_2387581A0();
  (*(v118 + 56))(v33, 0, 1, v119);
  v59 = [a1 isMarkedAsComplete];
  v60 = [a1 isMarkedAsCompleteModificationDate];
  if (v60)
  {
    v61 = v60;
    sub_23875BBE0();

    v50 = 0;
  }

  v63 = v105;
  v62 = v106;
  (v105[7])(v25, v50, 1, v106);
  if (v59)
  {
    v64 = v103;
    sub_23843981C(v25, v103, &qword_27DF12E00, &unk_238763FC0);
    v65 = (v63[6])(v64, 1, v62);
    v66 = v120;
    if (v65 != 1)
    {
      sub_238439884(v25, &qword_27DF12E00, &unk_238763FC0);
      sub_238439884(v58, &qword_27DF0BB68, &unk_2387774E0);
      (*(v117 + 8))(v66, v121);
      v85 = v63[4];
      v86 = v64;
      v87 = v101;
      v85(v101, v86, v62);
      v76 = v109;
      v85(v109, v87, v62);
      v88 = v112;
      v89 = v113;
      (*(v112 + 104))(v76, *MEMORY[0x277CC83B0], v113);
      v90 = v122;
      goto LABEL_16;
    }

    sub_238439884(v64, &qword_27DF12E00, &unk_238763FC0);
  }

  v67 = v58;
  v103 = v25;
  v105 = a1;
  v106 = a3;
  v68 = *MEMORY[0x277CC6DF8];
  v69 = v117;
  v70 = *(v117 + 104);
  v71 = v104;
  v72 = v121;
  v70(v104, v68, v121);
  sub_23860BF78(&qword_27DF0BB70, MEMORY[0x277CC6E00]);
  v73 = v120;
  sub_23875EC40();
  sub_23875EC40();
  v74 = v71;
  v75 = *(v69 + 8);
  v75(v74, v72);
  if (v126 == v125)
  {
    sub_238439884(v103, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v67, &qword_27DF0BB68, &unk_2387774E0);
    v75(v73, v72);
    v76 = v109;
    v70(v109, v68, v72);
    v77 = MEMORY[0x277CC83B8];
LABEL_13:
    v88 = v112;
    v89 = v113;
    (*(v112 + 104))(v76, *v77, v113);
    a1 = v105;
    a3 = v106;
    v90 = v122;
    goto LABEL_16;
  }

  v78 = v102;
  sub_23843981C(v67, v102, &qword_27DF0BB68, &unk_2387774E0);
  v80 = v118;
  v79 = v119;
  if ((*(v118 + 48))(v78, 1, v119) != 1)
  {
    sub_238439884(v103, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v67, &qword_27DF0BB68, &unk_2387774E0);
    v75(v120, v72);
    v91 = *(v80 + 32);
    v92 = v100;
    v91(v100, v78, v79);
    v76 = v109;
    v91(v109, v92, v79);
    v77 = MEMORY[0x277CC83A8];
    goto LABEL_13;
  }

  sub_238439884(v78, &qword_27DF0BB68, &unk_2387774E0);
  v81 = v104;
  v70(v104, *MEMORY[0x277CC6DF0], v121);
  v82 = v120;
  sub_23875EC40();
  sub_23875EC40();
  v83 = v121;
  v75(v81, v121);
  sub_238439884(v103, &qword_27DF12E00, &unk_238763FC0);
  sub_238439884(v67, &qword_27DF0BB68, &unk_2387774E0);
  if (v124 == v123)
  {
    v75(v82, v83);
    v84 = v99;
    v70(v99, *MEMORY[0x277CC6DE0], v83);
  }

  else
  {
    v84 = v99;
    (*(v117 + 32))(v99, v82, v83);
  }

  a1 = v105;
  a3 = v106;
  v90 = v122;
  v88 = v112;
  v89 = v113;
  v76 = v109;
  (*(v112 + 104))(v84, *MEMORY[0x277CC83B8], v113);
  (*(v88 + 32))(v76, v84, v89);
LABEL_16:
  v93 = *(v88 + 32);
  v94 = v108;
  v93(v108, v76, v89);
  v93(a3, v94, v89);
  v95 = v114;
  sub_23875ABD0();
  sub_2385309FC(v95, a3 + v110, &qword_27DF0FD58, &unk_238774490);
  v96 = v115;
  sub_23875ABC0();
  sub_2385309FC(v96, a3 + v107, &qword_27DF0FAF8, &unk_238774480);
  v97 = v116;
  sub_23875ABB0();

  return sub_2385309FC(v97, a3 + v111, &qword_27DF0FD50, &unk_2387774D0);
}

uint64_t sub_238601310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v86 = a1;
  v4 = sub_2387581B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v70 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v81 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = &v67 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v74 = *(v79 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v79);
  v69 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v67 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v73 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  v27 = sub_2387580D0();
  v28 = *(v27 - 8);
  v29 = v28[8];
  MEMORY[0x28223BE20](v27);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v67 - v33;
  v35 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v36 = v35[5];
  v37 = sub_238757FA0();
  v38 = *(*(v37 - 8) + 56);
  v76 = v36;
  v38(a3 + v36, 1, 1, v37);
  v39 = v35[6];
  v40 = sub_238757F70();
  v41 = *(*(v40 - 8) + 56);
  v77 = v39;
  v41(a3 + v39, 1, 1, v40);
  v42 = v35[7];
  v43 = sub_238757F90();
  v44 = *(*(v43 - 8) + 56);
  v83 = a3;
  v75 = v42;
  v44(a3 + v42, 1, 1, v43);
  sub_2387580F0();
  sub_2387581C0();
  v71 = v4;
  v72 = v5;
  v45 = *(v5 + 56);
  v84 = v26;
  v45(v26, 0, 1, v4);
  v46 = *MEMORY[0x277CC6DF8];
  v47 = v28[13];
  v47(v31, v46, v27);
  sub_23860BF78(&qword_27DF0BB70, MEMORY[0x277CC6E00]);
  sub_23875EC40();
  sub_23875EC40();
  v68 = v28;
  v48 = v28[1];
  v48(v31, v27);
  if (v90 == v89)
  {
    sub_238439884(v84, &qword_27DF0BB68, &unk_2387774E0);
    v48(v34, v27);
    v49 = v78;
    v47(v78, v46, v27);
    v50 = *MEMORY[0x277CC83B8];
    v51 = v74;
LABEL_7:
    v58 = v79;
    (*(v51 + 104))(v49, v50, v79);
    goto LABEL_10;
  }

  v52 = v73;
  v51 = v74;
  sub_23843981C(v84, v73, &qword_27DF0BB68, &unk_2387774E0);
  v53 = v52;
  v54 = v71;
  if ((*(v72 + 48))(v53, 1, v71) != 1)
  {
    sub_238439884(v84, &qword_27DF0BB68, &unk_2387774E0);
    v48(v34, v27);
    v56 = *(v72 + 32);
    v57 = v70;
    v56(v70, v73, v54);
    v49 = v78;
    v56(v78, v57, v54);
    v50 = *MEMORY[0x277CC83A8];
    goto LABEL_7;
  }

  sub_238439884(v73, &qword_27DF0BB68, &unk_2387774E0);
  v47(v31, *MEMORY[0x277CC6DF0], v27);
  sub_23875EC40();
  sub_23875EC40();
  v48(v31, v27);
  sub_238439884(v84, &qword_27DF0BB68, &unk_2387774E0);
  if (v88 == v87)
  {
    v48(v34, v27);
    v55 = v69;
    v47(v69, *MEMORY[0x277CC6DE0], v27);
  }

  else
  {
    v55 = v69;
    (v68[4])(v69, v34, v27);
  }

  v58 = v79;
  (*(v51 + 104))(v55, *MEMORY[0x277CC83B8], v79);
  v49 = v78;
  (*(v51 + 32))(v78, v55, v58);
LABEL_10:
  v59 = v83;
  (*(v51 + 32))(v83, v49, v58);
  v60 = v80;
  v61 = v85;
  sub_238758190();
  sub_2385309FC(v60, v59 + v76, &qword_27DF0FD58, &unk_238774490);
  v62 = v81;
  sub_238758160();
  sub_2385309FC(v62, v59 + v75, &qword_27DF0FAF8, &unk_238774480);
  v63 = v82;
  sub_238758150();
  v64 = sub_2387581D0();
  (*(*(v64 - 8) + 8))(v61, v64);
  v65 = sub_238758270();
  (*(*(v65 - 8) + 8))(v86, v65);
  return sub_2385309FC(v63, v59 + v77, &qword_27DF0FD50, &unk_2387774D0);
}

uint64_t sub_238601BF0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_23875BC40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - v10;
  sub_23843981C(v1, &v13 - v10, &qword_27DF12E00, &unk_238763FC0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v13, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v13;
  }

  return result;
}

uint64_t sub_238601DD4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v20 = a1;
  v9 = a3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v19 - v16;
  sub_23843981C(v5, &v19 - v16, a4, a5);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    return 0;
  }

  (*(v10 + 32))(v13, v17, v9);
  v20(&v19, v13);
  if (v6)
  {
    result = (*(v10 + 8))(v13, v9);
    __break(1u);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return v19;
  }

  return result;
}

uint64_t sub_238601FC4(uint64_t a1, void (*a2)(void))
{
  v112 = a2;
  v120 = sub_23875BC40();
  v118 = *(v120 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v117 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v109 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v105 - v14;
  v16 = sub_238757FA0();
  v113 = *(v16 - 8);
  v114 = v16;
  v17 = *(v113 + 64);
  MEMORY[0x28223BE20](v16);
  v105 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v106 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v105 - v22;
  v23 = sub_2387591F0();
  v24 = *(v23 - 8);
  v123 = v23;
  v124 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v122 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v105 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v105 - v36;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v105 - v40;
  v42 = *(v28 + 16);
  v115 = a1;
  v42(&v105 - v40, a1, v27, v39);
  v43 = (*(v28 + 88))(v41, v27);
  if (v43 == *MEMORY[0x277CC83B8])
  {
    (v42)(v37, v41, v27);
    (*(v28 + 96))(v37, v27);
    v44 = sub_2387580D0();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 88))(v37, v44);
    v47 = v28;
    v48 = v41;
    if (v46 == *MEMORY[0x277CC6DF0] || v46 == *MEMORY[0x277CC6DE0] || v46 == *MEMORY[0x277CC6DD8] || v46 == *MEMORY[0x277CC6DF8] || v46 == *MEMORY[0x277CC6DE8])
    {
      v86 = v123;
      v85 = v124;
      v87 = v122;
      (*(v124 + 104))(v122, *MEMORY[0x277CC77B0], v123);
      v54 = sub_238758A40();
      (*(v85 + 8))(v87, v86);
      goto LABEL_30;
    }

    goto LABEL_48;
  }

  v121 = v41;
  v119 = v28;
  v116 = v27;
  if (v43 == *MEMORY[0x277CC83A8])
  {
    v49 = v116;
    (v42)(v34, v121, v116);
    v47 = v119;
    (*(v119 + 96))(v34, v49);
    v44 = sub_2387581B0();
    v45 = *(v44 - 8);
    v50 = (*(v45 + 88))(v34, v44);
    if (v50 == *MEMORY[0x277CC6E40])
    {
LABEL_6:
      v52 = v123;
      v51 = v124;
      v53 = v122;
      (*(v124 + 104))(v122, *MEMORY[0x277CC77B0], v123);
LABEL_7:
      v54 = sub_238758A40();
      (*(v51 + 8))(v53, v52);
LABEL_8:
      v27 = v116;
      v48 = v121;
LABEL_30:
      (*(v47 + 8))(v48, v27);
      return v54;
    }

    if (v50 == *MEMORY[0x277CC6E38])
    {
      v68 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
      sub_23843981C(v115 + *(v68 + 20), v15, &qword_27DF0FD58, &unk_238774490);
      v69 = v113;
      v70 = v114;
      if ((*(v113 + 48))(v15, 1, v114) != 1)
      {
        v79 = v108;
        (*(v69 + 32))(v108, v15, v70);
        v80 = sub_2387595E0();
        v81 = v69;
        v82 = v110;
        (*(*(v80 - 8) + 16))(v110, v111, v80);
        v54 = sub_238603188(v79, v112);
        sub_23860C2CC(v82, _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa);
        (*(v81 + 8))(v79, v70);
        goto LABEL_8;
      }

      v71 = sub_238439884(v15, &qword_27DF0FD58, &unk_238774490);
      v72 = *(v68 + 28);
      MEMORY[0x28223BE20](v71);
      v103 = v111;
      v104 = v112;
      v73 = sub_238601DD4(sub_23860C250, (&v105 - 4), MEMORY[0x277CC6CD0], &qword_27DF0FAF8, &unk_238774480);
      v48 = v121;
      if (v74)
      {
        v54 = v73;
      }

      else
      {
        v95 = v123;
        v94 = v124;
        v96 = v122;
        (*(v124 + 104))(v122, *MEMORY[0x277CC77B0], v123);
        v54 = sub_238758A40();
        (*(v94 + 8))(v96, v95);
      }

      v27 = v116;
      goto LABEL_37;
    }

    if (v50 == *MEMORY[0x277CC6E48])
    {
      v75 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
      v76 = v109;
      sub_23843981C(v115 + *(v75 + 20), v109, &qword_27DF0FD58, &unk_238774490);
      v78 = v113;
      v77 = v114;
      if ((*(v113 + 48))(v76, 1, v114) == 1)
      {
        sub_238439884(v76, &qword_27DF0FD58, &unk_238774490);
        goto LABEL_6;
      }

      v89 = v106;
      (*(v78 + 32))(v106, v76, v77);
    }

    else
    {
      if (v50 != *MEMORY[0x277CC6E20])
      {
        if (v50 != *MEMORY[0x277CC6E60])
        {
          if (v50 != *MEMORY[0x277CC6E58] && v50 != *MEMORY[0x277CC6E30] && v50 != *MEMORY[0x277CC6E28] && v50 != *MEMORY[0x277CC6E50] && v50 != *MEMORY[0x277CC6E18])
          {
            v37 = v34;
LABEL_48:
            (*(v45 + 8))(v37, v44);
            goto LABEL_49;
          }

          goto LABEL_6;
        }

        v90 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
        v91 = *(v90 + 24);
        MEMORY[0x28223BE20](v90);
        v103 = v111;
        v104 = v112;
        v92 = sub_238601DD4(sub_23860C1F4, (&v105 - 4), MEMORY[0x277CC6CB0], &qword_27DF0FD50, &unk_2387774D0);
        v27 = v116;
        v48 = v121;
        if (v93)
        {
          v54 = v92;
        }

        else
        {
          v101 = v123;
          v100 = v124;
          v102 = v122;
          (*(v124 + 104))(v122, *MEMORY[0x277CC77B0], v123);
          v54 = sub_238758A40();
          (*(v100 + 8))(v102, v101);
        }

LABEL_37:
        v47 = v119;
        goto LABEL_30;
      }

      v83 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
      v84 = v107;
      sub_23843981C(v115 + *(v83 + 20), v107, &qword_27DF0FD58, &unk_238774490);
      v78 = v113;
      v77 = v114;
      if ((*(v113 + 48))(v84, 1, v114) == 1)
      {
        sub_238439884(v84, &qword_27DF0FD58, &unk_238774490);
        v52 = v123;
        v51 = v124;
        v53 = v122;
        (*(v124 + 104))(v122, *MEMORY[0x277CC77B0], v123);
        goto LABEL_7;
      }

      v89 = v105;
      (*(v78 + 32))(v105, v84, v77);
    }

    v97 = sub_2387595E0();
    v98 = v78;
    v99 = v110;
    (*(*(v97 - 8) + 16))(v110, v111, v97);
    v54 = sub_238603188(v89, v112);
    sub_23860C2CC(v99, _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa);
    (*(v98 + 8))(v89, v77);
    goto LABEL_8;
  }

  if (v43 == *MEMORY[0x277CC83B0])
  {
    v55 = v116;
    (v42)(v31, v121, v116);
    (*(v119 + 96))(v31, v55);
    v57 = v117;
    v56 = v118;
    (*(v118 + 32))(v117, v31, v120);
    LODWORD(v113) = *MEMORY[0x277CC77B0];
    v58 = v123;
    v59 = v124;
    v112 = *(v124 + 104);
    v60 = v122;
    v112(v122);
    v61 = sub_238758A40();
    v114 = v62;
    v115 = v61;
    v124 = *(v59 + 8);
    (v124)(v60, v58);
    v111 = "Unknown displayStatus: ";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_2387632F0;
    v64 = sub_23875B9D0();
    v66 = v65;
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = sub_238448C58();
    *(v63 + 32) = v64;
    *(v63 + 40) = v66;
    (v112)(v60, v113, v58);
    v27 = v55;
    v48 = v121;
    sub_238758A50();
    v47 = v119;

    v67 = v58;
    v54 = v115;
    (v124)(v60, v67);
    (*(v56 + 8))(v57, v120);
    goto LABEL_30;
  }

LABEL_49:
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_238603188(uint64_t a1, uint64_t a2)
{
  v295 = a2;
  v258 = sub_23875B170();
  v256 = *(v258 - 8);
  v3 = *(v256 + 64);
  MEMORY[0x28223BE20](v258);
  v257 = v245 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_23875B190();
  v260 = *(v261 - 8);
  v5 = *(v260 + 64);
  MEMORY[0x28223BE20](v261);
  v259 = v245 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_238759120();
  v275 = *(v276 - 8);
  v7 = *(v275 + 64);
  MEMORY[0x28223BE20](v276);
  v274 = v245 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_238758A80();
  v254 = *(v255 - 8);
  v9 = *(v254 + 64);
  MEMORY[0x28223BE20](v255);
  v253 = v245 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2387591F0();
  v287 = *(v11 - 8);
  v288 = v11;
  v12 = *(v287 + 64);
  MEMORY[0x28223BE20](v11);
  v286 = v245 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_23875ADF0();
  v271 = *(v272 - 8);
  v14 = *(v271 + 64);
  MEMORY[0x28223BE20](v272);
  v270 = v245 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v251 = v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v250 = v245 - v20;
  MEMORY[0x28223BE20](v21);
  v249 = v245 - v22;
  MEMORY[0x28223BE20](v23);
  v248 = v245 - v24;
  MEMORY[0x28223BE20](v25);
  v265 = v245 - v26;
  MEMORY[0x28223BE20](v27);
  v263 = v245 - v28;
  v285 = sub_23875BC40();
  *&v292 = *(v285 - 8);
  v29 = *(v292 + 64);
  MEMORY[0x28223BE20](v285);
  v252 = v245 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v273 = v245 - v32;
  MEMORY[0x28223BE20](v33);
  v269 = v245 - v34;
  MEMORY[0x28223BE20](v35);
  v268 = v245 - v36;
  MEMORY[0x28223BE20](v37);
  v281 = v245 - v38;
  MEMORY[0x28223BE20](v39);
  v280 = v245 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v283 = v245 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v282 = v245 - v46;
  v47 = sub_2387595E0();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  *&v293 = v245 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_23875B650();
  v290 = *(v51 - 8);
  v291 = v51;
  v52 = v290[8];
  MEMORY[0x28223BE20](v51);
  v267 = v245 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v266 = v245 - v55;
  MEMORY[0x28223BE20](v56);
  v278 = v245 - v57;
  MEMORY[0x28223BE20](v58);
  v277 = v245 - v59;
  MEMORY[0x28223BE20](v60);
  v289 = v245 - v61;
  MEMORY[0x28223BE20](v62);
  v64 = v245 - v63;
  MEMORY[0x28223BE20](v65);
  v279 = v245 - v66;
  v67 = _s19ShippingFulfillmentO13TimeFormatterVMa(0);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v70 = v245 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa(0);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v264 = v245 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v262 = v245 - v75;
  MEMORY[0x28223BE20](v76);
  v78 = v245 - v77;
  MEMORY[0x28223BE20](v79);
  v81 = v245 - v80;
  v82 = sub_238757FA0();
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  v85 = MEMORY[0x28223BE20](v82);
  v87 = v245 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v83 + 16))(v87, a1, v82, v85);
  v88 = (*(v83 + 88))(v87, v82);
  if (v88 == *MEMORY[0x277CC6CF0])
  {
    (*(v83 + 96))(v87, v82);
    v89 = *v87;
    v90 = *(v87 + 1);
    v91 = *(v87 + 2);
    (*(v48 + 16))(v81, v296, v47);
    v92 = v89;
    v93 = v90;
    v94 = v91;
    v95 = 0;
LABEL_3:
    v96 = sub_238608320(v92, v93, v94, v95, v295);
    sub_23860C2CC(v81, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);
    return v96;
  }

  v284 = v47;
  if (v88 == *MEMORY[0x277CC6D08])
  {
    (*(v83 + 96))(v87, v82);
    v97 = *(v87 + 4);
    v98 = *(v87 + 5);
    v99 = v87[48];
    v100 = *(v48 + 16);
    v101 = *(v87 + 1);
    v292 = *v87;
    v293 = v101;
    v102 = v296;
    v103 = v284;
    v100(v81, v296, v284);
    v297 = v99;
    v298 = v292;
    v299 = v293;
    v300 = v97;
    v301 = v98;
    v302 = v99;
    v303 = 0;
LABEL_8:
    v100(v70, v102, v103);
    v109 = *(&v292 + 1);
    v108 = v292;
    v110 = v293;
    v111 = 0;
LABEL_9:
    v96 = sub_238608320(v108, v109, v110, v111, v295);
    sub_23860726C(&v298);
    sub_23860C2CC(v70, _s19ShippingFulfillmentO13TimeFormatterVMa);
    sub_23860C2CC(v81, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);
    return v96;
  }

  if (v88 == *MEMORY[0x277CC6D00])
  {
    (*(v83 + 96))(v87, v82);
    v104 = *(v87 + 4);
    v105 = *(v87 + 5);
    v106 = v87[48];
    v100 = *(v48 + 16);
    v107 = *(v87 + 1);
    v292 = *v87;
    v293 = v107;
    v102 = v296;
    v103 = v284;
    v100(v81, v296, v284);
    v297 = v106;
    v298 = v292;
    v299 = v293;
    v300 = v104;
    v301 = v105;
    v302 = v106;
    v303 = 1;
    goto LABEL_8;
  }

  if (v88 == *MEMORY[0x277CC6CE0])
  {
    (*(v83 + 96))(v87, v82);
    v113 = *v87;
    v114 = *(v87 + 1);
    v115 = *(v87 + 2);
    (*(v48 + 16))(v81, v296, v284);
    v92 = v113;
    v93 = v114;
    v94 = v115;
    v95 = 1;
    goto LABEL_3;
  }

  if (v88 == *MEMORY[0x277CC6CE8])
  {
    (*(v83 + 96))(v87, v82);
    v116 = *(v87 + 4);
    v117 = *(v87 + 5);
    v118 = v87[48];
    v119 = *(v48 + 16);
    v120 = *(v87 + 1);
    v292 = *v87;
    v293 = v120;
    v121 = v296;
    v122 = v284;
    v119(v81, v296, v284);
    v297 = v118;
    v298 = v292;
    v299 = v293;
    v300 = v116;
    v301 = v117;
    v302 = v118;
    v303 = 0;
    v119(v70, v121, v122);
    v109 = *(&v292 + 1);
    v108 = v292;
    v110 = v293;
    v111 = 1;
    goto LABEL_9;
  }

  if (v88 == *MEMORY[0x277CC6CF8])
  {
    (*(v83 + 96))(v87, v82);
    v123 = *(v87 + 1);
    v266 = *v87;
    v124 = v266;
    v267 = v123;
    v125 = *(v87 + 2);
    v268 = *(v87 + 3);
    v126 = *(v87 + 5);
    v269 = *(v87 + 4);
    v274 = v126;
    LODWORD(v273) = v87[48];
    v127 = *(v87 + 8);
    v275 = *(v87 + 7);
    v276 = v127;
    v278 = *(v87 + 9);
    LODWORD(v277) = v87[80];
    v128 = *(v48 + 16);
    v129 = v296;
    v130 = v284;
    (v128)(v78, v296, v284);
    v247 = sub_238608320(v124, v123, v125, 0, v295);
    v246 = v131;
    v132 = v293;
    v133 = v130;
    v264 = (v48 + 16);
    v262 = v128;
    (v128)(v293, v129, v130);
    v134 = v282;
    sub_2387595C0();
    v135 = sub_23875BE20();
    (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
    v136 = v283;
    sub_2387595D0();
    v137 = sub_23875BE40();
    (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
    v138 = v279;
    sub_23875B620();
    (*(v48 + 8))(v132, v133);
    v139 = v291;
    v140 = v290[2];
    v140(v64, v138, v291);
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    v140(v289, v138, v139);
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    v141 = v263;
    sub_23875B5C0();
    v142 = v292;
    v143 = *(v292 + 48);
    v144 = v285;
    if (v143(v141, 1, v285) == 1)
    {
      __break(1u);
    }

    else
    {
      v145 = *(v142 + 32);
      v145(v280, v141, v144);
      v146 = v265;
      sub_23875B5C0();
      if (v143(v146, 1, v144) != 1)
      {
        v145(v281, v146, v144);
        (v262)(v293, v296, v284);
        v147 = v270;
        sub_23875ADD0();
        v148 = sub_23875ADE0();
        v150 = v149;
        v151 = sub_23875ADE0();
        v153 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_238763B60;
        v155 = MEMORY[0x277D837D0];
        *(v154 + 56) = MEMORY[0x277D837D0];
        v156 = sub_238448C58();
        *(v154 + 32) = v148;
        *(v154 + 40) = v150;
        *(v154 + 96) = v155;
        *(v154 + 104) = v156;
        *(v154 + 64) = v156;
        *(v154 + 72) = v151;
        *(v154 + 80) = v153;
        v158 = v286;
        v157 = v287;
        v159 = v288;
        (*(v287 + 104))(v286, *MEMORY[0x277CC77B0], v288);
        sub_238758A50();

        (*(v157 + 8))(v158, v159);
        (*(v271 + 8))(v147, v272);
        v160 = *(v292 + 8);
        v160(v281, v144);
        v160(v280, v144);
        v161 = v290[1];
        v162 = v291;
        v161(v289, v291);
        v161(v64, v162);
        v161(v279, v162);
        v163 = v78;
LABEL_28:
        sub_23860C2CC(v163, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);
        return v247;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v88 == *MEMORY[0x277CC6D10])
  {
    (*(v83 + 96))(v87, v82);
    v164 = *(v87 + 1);
    v272 = *v87;
    v273 = v164;
    v165 = *(v87 + 3);
    v271 = *(v87 + 2);
    v280 = v165;
    v167 = *(v87 + 5);
    v281 = *(v87 + 4);
    v166 = v281;
    v279 = v167;
    v168 = *(v48 + 16);
    v169 = v296;
    v170 = v284;
    (v168)(v262, v296, v284);
    v289 = v168;
    v247 = sub_238608320(v165, v166, v167, 1, v295);
    v246 = v171;
    v172 = v293;
    (v168)(v293, v169, v170);
    v173 = v282;
    sub_2387595C0();
    v266 = sub_23875BE20();
    v174 = *(v266 - 1);
    v267 = *(v174 + 56);
    v270 = (v174 + 56);
    (v267)(v173, 0, 1, v266);
    v175 = v283;
    sub_2387595D0();
    v176 = sub_23875BE40();
    v265 = *(*(v176 - 8) + 56);
    (v265)(v175, 0, 1, v176);
    sub_23875B620();
    v177 = *(v48 + 8);
    v177(v172, v170);
    v273 = (v48 + 16);
    (v289)(v172, v296, v170);
    sub_2387595C0();
    (v267)(v173, 0, 1, v266);
    sub_2387595D0();
    (v265)(v175, 0, 1, v176);
    sub_23875B620();
    v177(v172, v170);
    v178 = v248;
    sub_23875B5C0();
    v179 = v292;
    v180 = *(v292 + 48);
    v181 = v285;
    if (v180(v178, 1, v285) == 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_23875B9F0();
    v182 = *(v179 + 8);
    v182(v178, v181);
    v183 = v249;
    sub_23875B5C0();
    if (v180(v183, 1, v181) == 1)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_23875B9F0();
    v182(v183, v181);
    (v289)(v293, v296, v170);
    (*(v275 + 104))(v274, *MEMORY[0x277CC7750], v276);
    v184 = v253;
    sub_238758A60();
    v185 = sub_238758A70();
    v187 = v186;
    v188 = sub_238758A70();
    v190 = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v191 = swift_allocObject();
    v296 = v182;
    v192 = v191;
    *(v191 + 16) = xmmword_238763B60;
    v193 = MEMORY[0x277D837D0];
    *(v191 + 56) = MEMORY[0x277D837D0];
    v194 = sub_238448C58();
    v192[4] = v185;
    v192[5] = v187;
    v192[12] = v193;
    v192[13] = v194;
    v192[8] = v194;
    v192[9] = v188;
    v192[10] = v190;
    v196 = v286;
    v195 = v287;
    v197 = v288;
    (*(v287 + 104))(v286, *MEMORY[0x277CC77B0], v288);
    sub_238758A50();

    (*(v195 + 8))(v196, v197);
    (*(v254 + 8))(v184, v255);
    v198 = v296;
    v296(v269, v181);
    v198(v268, v181);
    v199 = v291;
    v200 = v290[1];
    v200(v278, v291);
    v200(v277, v199);
    v201 = &v293;
LABEL_27:
    v163 = *(v201 - 32);
    goto LABEL_28;
  }

  v202 = v295;
  v203 = v296;
  if (v88 == *MEMORY[0x277CC6D18])
  {
    (*(v83 + 96))(v87, v82);
    v204 = *(v87 + 1);
    v255 = *v87;
    v262 = v204;
    v205 = *(v87 + 3);
    v254 = *(v87 + 2);
    v263 = v205;
    v206 = *(v87 + 5);
    v265 = *(v87 + 4);
    v269 = v206;
    LODWORD(v268) = v87[48];
    v207 = *(v87 + 8);
    v271 = *(v87 + 7);
    v208 = v271;
    v272 = v207;
    v270 = *(v87 + 9);
    v209 = v270;
    v210 = *(v87 + 11);
    v277 = *(v87 + 10);
    v278 = v210;
    v280 = *(v87 + 12);
    LODWORD(v279) = v87[104];
    v211 = *(v48 + 16);
    v212 = v284;
    (v211)(v264, v203, v284);
    v289 = (v48 + 16);
    v281 = v211;
    v247 = sub_238608320(v208, v207, v209, 1, v202);
    v246 = v213;
    v214 = v293;
    (v211)(v293, v203, v212);
    v215 = v282;
    sub_2387595C0();
    v248 = sub_23875BE20();
    v216 = *(v248 - 1);
    v249 = *(v216 + 56);
    v253 = (v216 + 56);
    (v249)(v215, 0, 1, v248);
    v217 = v283;
    sub_2387595D0();
    v218 = sub_23875BE40();
    v219 = *(v218 - 8);
    v245[0] = *(v219 + 56);
    v245[1] = v219 + 56;
    (v245[0])(v217, 0, 1, v218);
    sub_23875B620();
    v220 = v203;
    v262 = *(v48 + 8);
    v221 = v284;
    (v262)(v214, v284);
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    (v281)(v214, v220, v221);
    sub_2387595C0();
    (v249)(v215, 0, 1, v248);
    sub_2387595D0();
    (v245[0])(v217, 0, 1, v218);
    sub_23875B620();
    (v262)(v214, v221);
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    v222 = v250;
    sub_23875B5C0();
    v223 = v292;
    v224 = *(v292 + 48);
    v225 = v285;
    if (v224(v222, 1, v285) == 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v226 = *(v223 + 32);
    v226(v273, v222, v225);
    v227 = v251;
    sub_23875B5C0();
    if (v224(v227, 1, v225) == 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v228 = v252;
    v226(v252, v227, v225);
    (v281)(v293, v296, v284);
    (*(v256 + 104))(v257, *MEMORY[0x277CC8550], v258);
    (*(v275 + 104))(v274, *MEMORY[0x277CC7750], v276);
    v229 = v259;
    sub_23875B160();
    v230 = sub_23875B180();
    v232 = v231;
    v233 = sub_23875B180();
    v235 = v234;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v236 = swift_allocObject();
    *(v236 + 16) = xmmword_238763B60;
    v237 = MEMORY[0x277D837D0];
    *(v236 + 56) = MEMORY[0x277D837D0];
    v238 = sub_238448C58();
    *(v236 + 32) = v230;
    *(v236 + 40) = v232;
    *(v236 + 96) = v237;
    *(v236 + 104) = v238;
    *(v236 + 64) = v238;
    *(v236 + 72) = v233;
    *(v236 + 80) = v235;
    v240 = v286;
    v239 = v287;
    v241 = v288;
    (*(v287 + 104))(v286, *MEMORY[0x277CC77B0], v288);
    sub_238758A50();

    (*(v239 + 8))(v240, v241);
    (*(v260 + 8))(v229, v261);
    v242 = *(v223 + 8);
    v242(v228, v225);
    v242(v273, v225);
    v243 = v291;
    v244 = v290[1];
    v244(v267, v291);
    v244(v266, v243);
    v201 = &v294;
    goto LABEL_27;
  }

LABEL_35:
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386053A4(uint64_t a1, uint64_t a2)
{
  v111 = a2;
  v114 = a1;
  v2 = _s19ShippingFulfillmentO13TimeFormatterVMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v101 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v103 = &v96 - v9;
  v10 = sub_23875BC40();
  v117 = *(v10 - 8);
  v118 = v10;
  v11 = *(v117 + 64);
  MEMORY[0x28223BE20](v10);
  v100 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v115 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v113 = &v96 - v20;
  v21 = sub_23875B650();
  v109 = *(v21 - 8);
  v110 = v21;
  v22 = *(v109 + 64);
  MEMORY[0x28223BE20](v21);
  v104 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v102 = &v96 - v25;
  v112 = sub_238757F90();
  v26 = *(v112 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v112);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23875AD80();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2387595E0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2387592E0();
  v107 = *(v108 - 8);
  v40 = *(v107 + 64);
  v41 = MEMORY[0x28223BE20](v108);
  v43 = &v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v36;
  v46 = *(v36 + 16);
  v44 = v36 + 16;
  v45 = v46;
  v119 = v35;
  v47 = v35;
  v48 = v112;
  (v46)(v39, v120, v47, v41);
  (*(v31 + 104))(v34, *MEMORY[0x277CC8440], v30);
  v106 = v43;
  sub_2387592D0();
  (*(v26 + 16))(v29, v114, v48);
  v49 = (*(v26 + 88))(v29, v48);
  if (v49 == *MEMORY[0x277CC6CC8])
  {
    (*(v26 + 96))(v29, v48);
    v51 = *v29;
    v50 = *(v29 + 1);
    v52 = *(v29 + 2);
    v53 = v119;
    (v45)(v39, v120, v119);
    v54 = v113;
    sub_2387595C0();
    v55 = sub_23875BE20();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = v115;
    sub_2387595D0();
    v57 = sub_23875BE40();
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    v58 = v102;
    sub_23875B620();
    (*(v116 + 8))(v39, v53);
    v59 = v103;
    sub_23875B5C0();
    v61 = v117;
    v60 = v118;
    if ((*(v117 + 48))(v59, 1, v118) != 1)
    {
      v62 = v99;
      sub_23875B9F0();
      v63 = *(v61 + 8);
      v63(v59, v60);
      sub_23860BF78(&qword_27DF11168, MEMORY[0x277CC7830]);
      v64 = v108;
      v65 = v106;
      v66 = sub_238759920();
      v68 = v67;
      v63(v62, v60);
      (*(v109 + 8))(v58, v110);
      (*(v107 + 8))(v65, v64);
      if (v68)
      {
        return v66;
      }

      else
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v70 = v44;
  v71 = v113;
  v73 = v119;
  v72 = v120;
  if (v49 != *MEMORY[0x277CC6CC0])
  {
LABEL_14:
    result = sub_23875F520();
    __break(1u);
    return result;
  }

  (*(v26 + 96))(v29, v48);
  v74 = *v29;
  v75 = *(v29 + 1);
  v76 = *(v29 + 2);
  v114 = *(v29 + 3);
  v77 = *(v29 + 5);
  v112 = *(v29 + 4);
  v103 = v77;
  LODWORD(v102) = v29[48];
  v78 = v73;
  v79 = v45;
  v80 = v74;
  v99 = v79;
  v98 = v70;
  (v79)(v39, v72, v73);
  sub_2387595C0();
  v81 = sub_23875BE20();
  (*(*(v81 - 8) + 56))(v71, 0, 1, v81);
  v82 = v115;
  sub_2387595D0();
  v83 = sub_23875BE40();
  (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
  v97 = v76;
  v84 = v104;
  v115 = v80;
  v113 = v75;
  sub_23875B620();
  (*(v116 + 8))(v39, v78);
  sub_23875B5D0();
  sub_23875B600();
  v85 = v103;
  v86 = v102;
  sub_23875B610();
  v87 = v105;
  sub_23875B5C0();
  v89 = v117;
  v88 = v118;
  if ((*(v117 + 48))(v87, 1, v118) == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v90 = v100;
  (*(v89 + 32))(v100, v87, v88);
  sub_23860BF78(&qword_27DF11168, MEMORY[0x277CC7830]);
  v91 = v108;
  v92 = v106;
  v116 = sub_238759920();
  v94 = v93;
  v121 = v86;
  v122[0] = v115;
  v122[1] = v113;
  v122[2] = v97;
  v122[3] = v114;
  v122[4] = v112;
  v122[5] = v85;
  v123 = v86;
  v124 = 0;
  v95 = v101;
  (v99)(v101, v120, v119);
  sub_23860726C(v122);
  sub_23860C2CC(v95, _s19ShippingFulfillmentO13TimeFormatterVMa);
  (*(v89 + 8))(v90, v88);
  (*(v109 + 8))(v84, v110);
  (*(v107 + 8))(v92, v91);
  if (v94)
  {
    return v116;
  }

  return 0;
}

uint64_t sub_238606030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(uint64_t, uint64_t)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t *a7@<X8>)
{
  v13 = a4(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = sub_2387595E0();
  (*(*(v17 - 8) + 16))(v16, a2, v17);
  v18 = a5(a1, a3);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = sub_23860C2CC(v16, a6);
  *a7 = v18;
  a7[1] = v20;
  a7[2] = v22;
  a7[3] = v24;
  return result;
}

uint64_t sub_238606140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v105 = a2;
  v109 = a1;
  v4 = _s19ShippingFulfillmentO13TimeFormatterVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v88 - v11;
  v12 = sub_23875BC40();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  MEMORY[0x28223BE20](v12);
  v99 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v107 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v108 = &v88 - v22;
  v23 = sub_23875B650();
  v103 = *(v23 - 8);
  v104 = v23;
  v24 = *(v103 + 64);
  MEMORY[0x28223BE20](v23);
  v106 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v96 = &v88 - v27;
  v28 = sub_238757F70();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2387595E0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_238759390();
  v101 = *(v38 - 8);
  v102 = v38;
  v39 = *(v101 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v88 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v34;
  v43 = *(v34 + 16);
  v44 = v3;
  v43(v37, v3, v33, v40);
  v100 = v42;
  sub_238759380();
  (*(v29 + 16))(v32, v109, v28);
  v45 = (*(v29 + 88))(v32, v28);
  if (v45 == *MEMORY[0x277CC6CA8])
  {
    (*(v29 + 96))(v32, v28);
    v46 = *v32;
    v47 = *(v32 + 1);
    v48 = *(v32 + 2);
    (v43)(v37, v3, v33);
    v50 = v107;
    v49 = v108;
    sub_2387595C0();
    v51 = sub_23875BE20();
    (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
    sub_2387595D0();
    v52 = sub_23875BE40();
    (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
    v53 = v96;
    sub_23875B620();
    (*(v110 + 8))(v37, v33);
    v54 = v97;
    sub_23875B5C0();
    v56 = v111;
    v55 = v112;
    if ((*(v111 + 48))(v54, 1, v112) != 1)
    {
      v57 = v95;
      sub_23875B9F0();
      v58 = *(v56 + 8);
      v58(v54, v55);
      sub_23860BF78(&qword_27DF11178, MEMORY[0x277CC78B8]);
      v59 = v102;
      v60 = v100;
      v61 = sub_238759920();
      v63 = v62;
      v58(v57, v55);
      (*(v103 + 8))(v53, v104);
      (*(v101 + 8))(v60, v59);
      if (v63)
      {
        return v61;
      }

      else
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v96 = v43;
  v66 = v107;
  v65 = v108;
  v97 = v33;
  v109 = v44;
  if (v45 != *MEMORY[0x277CC6CA0])
  {
LABEL_14:
    result = sub_23875F520();
    __break(1u);
    return result;
  }

  (*(v29 + 96))(v32, v28);
  v67 = *(v32 + 1);
  v90 = *v32;
  v95 = v67;
  v68 = *(v32 + 2);
  v91 = *(v32 + 3);
  v69 = *(v32 + 4);
  v92 = *(v32 + 5);
  v93 = v32[48];
  v70 = v97;
  (v96)(v37, v109, v97);
  sub_2387595C0();
  v71 = sub_23875BE20();
  (*(*(v71 - 8) + 56))(v65, 0, 1, v71);
  sub_2387595D0();
  v72 = sub_23875BE40();
  (*(*(v72 - 8) + 56))(v66, 0, 1, v72);
  v89 = v68;
  v73 = v90;
  sub_23875B620();
  v74 = v70;
  v75 = v91;
  (*(v110 + 8))(v37, v74);
  sub_23875B5D0();
  v110 = v69;
  v76 = v92;
  sub_23875B600();
  sub_23875B610();
  v77 = v98;
  sub_23875B5C0();
  v79 = v111;
  v78 = v112;
  v80 = (*(v111 + 48))(v77, 1, v112);
  v81 = v99;
  if (v80 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  (*(v79 + 32))(v99, v77, v78);
  sub_23860BF78(&qword_27DF11178, MEMORY[0x277CC78B8]);
  v82 = v102;
  v83 = v100;
  v84 = sub_238759920();
  if (v85)
  {
    v113 = v93;
    v114[0] = v73;
    v114[1] = v95;
    v114[2] = v89;
    v114[3] = v75;
    v114[4] = v110;
    v114[5] = v76;
    v115 = v93;
    v86 = v84;
    v87 = v94;
    (v96)(v94, v109, v97);
    sub_23860726C(v114);
    sub_23860C2CC(v87, _s19ShippingFulfillmentO13TimeFormatterVMa);
    (*(v79 + 8))(v81, v78);
    (*(v103 + 8))(v106, v104);
    (*(v101 + 8))(v83, v82);
    return v86;
  }

  else
  {
    (*(v79 + 8))(v81, v78);
    (*(v103 + 8))(v106, v104);
    (*(v101 + 8))(v83, v82);
    return 0;
  }
}

uint64_t sub_238606D68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_2387595E0();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11180, &qword_2387776B8);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_23875BE40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_23875BE20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_23875BD20();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860C3FC();
  v22 = v29;
  sub_23875F780();
  if (!v22)
  {
    v23 = v27;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v28 + 8))(v10, v7);
    (*(v23 + 40))(v20, v6, v3);
    sub_23860C450(v20, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23860C2CC(v20, _s19ShippingFulfillmentO15StatusFormatterVMa);
}

uint64_t sub_2386070FC(uint64_t a1)
{
  v2 = sub_23860C3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238607138(uint64_t a1)
{
  v2 = sub_23860C3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23860718C()
{
  sub_23860BF78(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa);

  return sub_238759950();
}

uint64_t sub_23860726C(uint64_t *a1)
{
  v79 = a1;
  v1 = sub_2387591F0();
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = *(v73 + 64);
  MEMORY[0x28223BE20](v1);
  v72 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2387595E0();
  v66 = *(v68 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875ADF0();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v59 - v11;
  v12 = sub_23875BC40();
  v80 = *(v12 - 8);
  v81 = v12;
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v12);
  v71 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v59 - v21;
  v67 = sub_23875B650();
  v65 = *(v67 - 8);
  v23 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875BE20();
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2387595C0();
  v76 = v27[7];
  v76(v22, 1, 1, v26);
  v31 = sub_23875BE40();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v75 = v32 + 56;
  v33(v18, 1, 1, v31);
  sub_23875B620();
  v61 = v27;
  v34 = v27[2];
  v60 = v30;
  v34(v22, v30, v26);
  v62 = v26;
  v76(v22, 0, 1, v26);
  v35 = v77;
  sub_23875B630();
  sub_2387595D0();
  v36 = v31;
  v37 = v79;
  v33(v18, 0, 1, v36);
  sub_23875B640();
  v38 = *v37;
  sub_23875B5E0();
  v39 = v37[1];
  sub_23875B5F0();
  v40 = v37[2];
  sub_23875B5B0();
  v41 = v37[3];
  sub_23875B5D0();
  v42 = v37[4];
  sub_23875B600();
  v43 = v78;
  sub_23875B5C0();
  v44 = v80;
  v45 = v81;
  result = (*(v80 + 48))(v43, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v47 = *(v44 + 32);
    v48 = v71;
    v47(v71, v43, v45);
    sub_238759580();
    (*(v66 + 16))(v63, v35, v68);
    v49 = v64;
    sub_23875ADD0();
    sub_23860BF78(&qword_27DF11170, MEMORY[0x277CC8450]);
    v50 = v70;
    sub_238759950();
    (*(v69 + 8))(v49, v50);
    v51 = v82;
    v52 = v83;
    v53 = *(v37 + 49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_2387632F0;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = sub_238448C58();
    *(v54 + 32) = v51;
    *(v54 + 40) = v52;
    v56 = v72;
    v55 = v73;
    v57 = v74;
    (*(v73 + 104))(v72, *MEMORY[0x277CC77B0], v74);
    v58 = sub_238758A50();

    (*(v55 + 8))(v56, v57);
    (*(v80 + 8))(v48, v81);
    (*(v65 + 8))(v25, v67);
    (v61[1])(v60, v62);
    return v58;
  }

  return result;
}

uint64_t sub_238607AD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_2387595E0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11368, &qword_238778030);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = _s19ShippingFulfillmentO27DeliveryDateStatusFormatterVMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860CFDC();
  sub_23875F780();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_23860D084(v14, v17, _s19ShippingFulfillmentO27DeliveryDateStatusFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238607D74(uint64_t a1)
{
  v2 = sub_23860CFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238607DB0(uint64_t a1)
{
  v2 = sub_23860CFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238607E04()
{
  sub_23860BF78(&qword_27DF11360, _s19ShippingFulfillmentO27DeliveryDateStatusFormatterVMa);

  return sub_238759950();
}

uint64_t sub_238607EE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_2387595E0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF113C0, &qword_238778060);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = _s19ShippingFulfillmentO21ShippingDateFormatterVMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D140();
  sub_23875F780();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_23860D084(v14, v17, _s19ShippingFulfillmentO21ShippingDateFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238608180(uint64_t a1)
{
  v2 = sub_23860D140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2386081BC(uint64_t a1)
{
  v2 = sub_23860D140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238608210@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_238608240()
{
  sub_23860BF78(&qword_27DF113B8, _s19ShippingFulfillmentO21ShippingDateFormatterVMa);

  return sub_238759950();
}

uint64_t sub_238608320(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v113 = a5;
  v115 = a4;
  v127 = a2;
  v128 = a3;
  v126 = a1;
  v104 = sub_238759120();
  v102 = *(v104 - 8);
  v5 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_238758A80();
  v101 = *(v103 - 8);
  v7 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v99 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2387595E0();
  v111 = *(v112 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v114 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_238759820();
  v106 = *(v107 - 8);
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2387591F0();
  v116 = *(v13 - 8);
  v117 = v13;
  v14 = *(v116 + 64);
  MEMORY[0x28223BE20](v13);
  v124 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v122 = &v99 - v18;
  v19 = sub_23875BC40();
  v20 = *(v19 - 8);
  v133 = v19;
  v134 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v110 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v109 = &v99 - v24;
  MEMORY[0x28223BE20](v25);
  v123 = &v99 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v99 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v99 - v33;
  v129 = sub_23875B650();
  v132 = *(v129 - 8);
  v35 = *(v132 + 64);
  MEMORY[0x28223BE20](v129);
  v108 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v131 = &v99 - v38;
  v39 = sub_23875BE20();
  v40 = *(v39 - 8);
  v41 = v40[8];
  MEMORY[0x28223BE20](v39);
  v43 = &v99 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2387595C0();
  *&v121 = v40[7];
  (v121)(v34, 1, 1, v39);
  v44 = sub_23875BE40();
  v120 = *(*(v44 - 8) + 56);
  v120(v30, 1, 1, v44);
  v45 = v134;
  v46 = v131;
  sub_23875B620();
  v118 = v40;
  v47 = v40[2];
  v125 = v43;
  v47(v34, v43, v39);
  v119 = v39;
  (v121)(v34, 0, 1, v39);
  sub_23875B630();
  sub_2387595D0();
  v120(v30, 0, 1, v44);
  v48 = v46;
  sub_23875B640();
  sub_23875B5E0();
  sub_23875B5F0();
  sub_23875B5B0();
  v49 = v122;
  sub_23875B5C0();
  result = (*(v45 + 48))(v49, 1, v133);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v51 = v123;
    sub_23875B9F0();
    v52 = *(v45 + 8);
    v134 = v45 + 8;
    v52(v49, v133);
    v53 = v125;
    if (sub_23875BD70())
    {
      v55 = v116;
      v54 = v117;
      v56 = v124;
      (*(v116 + 104))(v124, *MEMORY[0x277CC77B0], v117);
      v57 = sub_238758A40();
      (*(v55 + 8))(v56, v54);
      v52(v51, v133);
      (*(v132 + 8))(v48, v129);
    }

    else
    {
      v122 = v52;
      v58 = sub_23875BD90();
      v59 = v132;
      v60 = v124;
      if (v58)
      {
        v61 = v117;
        v62 = v116 + 104;
        (*(v116 + 104))(v124, *MEMORY[0x277CC77B0], v117);
        v57 = sub_238758A40();
        (*(v62 - 96))(v60, v61);
        (v122)(v51, v133);
        (*(v59 + 8))(v48, v129);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09770, &qword_2387776B0);
        v63 = sub_23875BE00();
        v64 = *(v63 - 8);
        v65 = *(v64 + 72);
        v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v67 = swift_allocObject();
        v121 = xmmword_2387632F0;
        *(v67 + 16) = xmmword_2387632F0;
        (*(v64 + 104))(v67 + v66, *MEMORY[0x277CC9968], v63);
        sub_23844C224(v67);
        swift_setDeallocating();
        (*(v64 + 8))(v67 + v66, v63);
        swift_deallocClassInstance();
        v68 = v109;
        sub_23875B9F0();
        v69 = v110;
        sub_23875B9F0();
        v70 = v108;
        sub_23875BD80();

        v71 = v69;
        v72 = v133;
        v73 = v122;
        (v122)(v71, v133);
        v73(v68, v72);
        v74 = sub_23875B5A0();
        LOBYTE(v63) = v75;
        v76 = *(v59 + 8);
        v132 = v59 + 8;
        v76(v70, v129);
        (*(v111 + 16))(v114, v130, v112);
        if ((v63 & 1) != 0 || v74 > 6)
        {
          (*(v102 + 104))(v100, *MEMORY[0x277CC7750], v104);
          v90 = v99;
          sub_238758A60();
          v91 = sub_238758A70();
          v93 = v92;
          (*(v101 + 8))(v90, v103);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
          v94 = swift_allocObject();
          *(v94 + 16) = v121;
          *(v94 + 56) = MEMORY[0x277D837D0];
          *(v94 + 64) = sub_238448C58();
          *(v94 + 32) = v91;
          *(v94 + 40) = v93;
          v95 = v117;
          v96 = v116 + 104;
          v97 = v124;
          (*(v116 + 104))(v124, *MEMORY[0x277CC77B0], v117);
          v98 = (v96 - 96);
          v57 = sub_238758A50();

          (*v98)(v97, v95);
          (v122)(v51, v133);
          v76(v131, v129);
        }

        else
        {
          v77 = swift_allocObject();
          v79 = v126;
          v78 = v127;
          *(v77 + 16) = v126;
          *(v77 + 24) = v78;
          v130 = v76;
          v80 = v128;
          *(v77 + 32) = v128;
          v81 = v115 & 1;
          *(v77 + 40) = v115 & 1;
          v82 = swift_allocObject();
          *(v82 + 16) = v79;
          *(v82 + 24) = v78;
          *(v82 + 32) = v80;
          *(v82 + 40) = v81;
          v83 = swift_allocObject();
          *(v83 + 16) = v79;
          *(v83 + 24) = v78;
          *(v83 + 32) = v80;
          *(v83 + 40) = v81;
          v84 = swift_allocObject();
          *(v84 + 16) = v79;
          *(v84 + 24) = v78;
          *(v84 + 32) = v80;
          *(v84 + 40) = v81;
          v85 = swift_allocObject();
          *(v85 + 16) = v79;
          *(v85 + 24) = v78;
          *(v85 + 32) = v80;
          *(v85 + 40) = v81;
          v86 = swift_allocObject();
          *(v86 + 16) = v79;
          *(v86 + 24) = v78;
          *(v86 + 32) = v80;
          *(v86 + 40) = v81;
          v87 = swift_allocObject();
          *(v87 + 16) = v79;
          *(v87 + 24) = v78;
          *(v87 + 32) = v80;
          *(v87 + 40) = v81;
          v53 = v125;
          v88 = v105;
          sub_238759800();
          v89 = v123;
          v57 = sub_238759810();
          (*(v106 + 8))(v88, v107);
          (v122)(v89, v133);
          v130(v131, v129);
        }
      }
    }

    (v118[1])(v53, v119);
    return v57;
  }

  return result;
}

uint64_t sub_238609270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_2387595E0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF113E0, &qword_238778070);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D194();
  sub_23875F780();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_23860D084(v14, v17, _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23860950C(uint64_t a1)
{
  v2 = sub_23860D194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238609548(uint64_t a1)
{
  v2 = sub_23860D194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23860959C@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_2386095CC()
{
  sub_23860BF78(&qword_27DF113D8, _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa);

  return sub_238759950();
}

uint64_t sub_2386096AC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2386096EC()
{
  v0 = sub_2387591F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC77B0], v0, v3);
  v6 = sub_238758A40();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_238609824()
{
  v0 = sub_2387591F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC77B0], v0, v3);
  v6 = sub_238758A40();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_23860995C()
{
  v0 = sub_2387591F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC77B0], v0, v3);
  v6 = sub_238758A40();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_238609A94()
{
  v0 = sub_2387591F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC77B0], v0, v3);
  v6 = sub_238758A40();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_238609BCC()
{
  v0 = sub_2387591F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC77B0], v0, v3);
  v6 = sub_238758A40();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_238609D04()
{
  v0 = sub_2387591F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC77B0], v0, v3);
  v6 = sub_238758A40();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_238609E3C()
{
  v0 = sub_2387591F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC77B0], v0, v3);
  v6 = sub_238758A40();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_238609F74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_2387595E0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11388, &qword_238778040);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D030();
  sub_23875F780();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_23860D084(v14, v17, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23860A210(uint64_t a1)
{
  v2 = sub_23860D030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23860A24C(uint64_t a1)
{
  v2 = sub_23860D030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23860A288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_238608320(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_23860A2C4()
{
  sub_23860BF78(&qword_27DF11380, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);

  return sub_238759950();
}

uint64_t sub_23860A3A4(uint64_t a1, uint64_t a2)
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
  return sub_23860AD24(v5, v7) & 1;
}

uint64_t sub_23860A400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_2387595E0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF113A0, &qword_238778050);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = _s19ShippingFulfillmentO13TimeFormatterVMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D0EC();
  sub_23875F780();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_23860D084(v14, v17, _s19ShippingFulfillmentO13TimeFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23860A69C(uint64_t a1)
{
  v2 = sub_23860D0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23860A6D8(uint64_t a1)
{
  v2 = sub_23860D0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23860A714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23860726C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23860A798(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_23875F790();
  sub_2387595E0();
  sub_23860BF78(&qword_27DF09CF0, MEMORY[0x277CC7968]);
  sub_23875F5C0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_23860A918()
{
  sub_23875F700();
  sub_2387595E0();
  sub_23860BF78(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23860A9A0()
{
  sub_2387595E0();
  sub_23860BF78(&qword_27DF09CF8, MEMORY[0x277CC7968]);

  return sub_23875E960();
}

uint64_t sub_23860AA24()
{
  sub_23875F700();
  sub_2387595E0();
  sub_23860BF78(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23860AAA8(uint64_t a1)
{
  v2 = sub_23860C6E0(qword_27DF11408, &qword_27DF11400, _s9FormatterV10CodingKeysOMa);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23860AB1C(uint64_t a1)
{
  v2 = sub_23860C6E0(qword_27DF11408, &qword_27DF11400, _s9FormatterV10CodingKeysOMa);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23860AB90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23860B7C4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23860ABB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF113F8, qword_238778080);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D1E8(0, &qword_27DF11400, _s9FormatterV10CodingKeysOMa);
  sub_23860C6E0(qword_27DF11408, &qword_27DF11400, _s9FormatterV10CodingKeysOMa);
  sub_23875F790();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23860AD24(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return v2 & 1;
    }

    goto LABEL_13;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

LABEL_13:
  v2 = *(a1 + 49) ^ *(a2 + 49) ^ 1;
  return v2 & 1;
}

BOOL sub_23860ADBC(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v74 = sub_238757F90();
  v76 = *(v74 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v69 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11100, &qword_238777540);
  v8 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v83 = &v69 - v9;
  v10 = sub_238757F70();
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v10);
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v69 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11108, &qword_238777548);
  v16 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v69 - v17;
  v18 = sub_238757FA0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v77 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v69 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11110, &qword_238777550);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v69 - v28;
  sub_2387580D0();
  sub_2387581B0();
  sub_23860BF78(&qword_27DF0BBA8, MEMORY[0x277CC6E00]);
  sub_23860BF78(&qword_27DF0BBB0, MEMORY[0x277CC6E68]);
  v30 = a1;
  v31 = v84;
  if ((sub_23875AC60() & 1) == 0)
  {
    return 0;
  }

  v32 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v69 = v30;
  v70 = v32;
  v33 = *(v32 + 20);
  v34 = *(v26 + 48);
  sub_23843981C(v30 + v33, v29, &qword_27DF0FD58, &unk_238774490);
  sub_23843981C(v31 + v33, &v29[v34], &qword_27DF0FD58, &unk_238774490);
  v35 = *(v19 + 48);
  v36 = v31;
  if (v35(v29, 1, v18) == 1)
  {
    if (v35(&v29[v34], 1, v18) == 1)
    {
      sub_238439884(v29, &qword_27DF0FD58, &unk_238774490);
      goto LABEL_9;
    }

LABEL_7:
    v37 = &qword_27DF11110;
    v38 = &qword_238777550;
    v39 = v29;
LABEL_22:
    sub_238439884(v39, v37, v38);
    return 0;
  }

  sub_23843981C(v29, v25, &qword_27DF0FD58, &unk_238774490);
  if (v35(&v29[v34], 1, v18) == 1)
  {
    (*(v19 + 8))(v25, v18);
    goto LABEL_7;
  }

  v40 = v77;
  (*(v19 + 32))(v77, &v29[v34], v18);
  sub_23860BF78(&qword_27DF11128, MEMORY[0x277CC6D20]);
  v41 = sub_23875E9E0();
  v42 = *(v19 + 8);
  v42(v40, v18);
  v42(v25, v18);
  sub_238439884(v29, &qword_27DF0FD58, &unk_238774490);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v43 = v69;
  v44 = *(v70 + 24);
  v45 = v80;
  v46 = *(v79 + 48);
  sub_23843981C(v69 + v44, v80, &qword_27DF0FD50, &unk_2387774D0);
  sub_23843981C(v36 + v44, v45 + v46, &qword_27DF0FD50, &unk_2387774D0);
  v48 = v81;
  v47 = v82;
  v49 = *(v81 + 48);
  if (v49(v45, 1, v82) != 1)
  {
    v53 = v75;
    sub_23843981C(v45, v75, &qword_27DF0FD50, &unk_2387774D0);
    v54 = v49(v45 + v46, 1, v47);
    v51 = v83;
    if (v54 != 1)
    {
      v55 = v45 + v46;
      v56 = v72;
      (*(v48 + 32))(v72, v55, v47);
      sub_23860BF78(&qword_27DF11120, MEMORY[0x277CC6CB0]);
      v57 = sub_23875E9E0();
      v58 = *(v48 + 8);
      v58(v56, v47);
      v58(v53, v47);
      sub_238439884(v45, &qword_27DF0FD50, &unk_2387774D0);
      v52 = v78;
      if ((v57 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v48 + 8))(v53, v47);
    goto LABEL_14;
  }

  v50 = v49(v45 + v46, 1, v47);
  v51 = v83;
  v52 = v78;
  if (v50 != 1)
  {
LABEL_14:
    v37 = &qword_27DF11108;
    v38 = &qword_238777548;
    v39 = v45;
    goto LABEL_22;
  }

  sub_238439884(v45, &qword_27DF0FD50, &unk_2387774D0);
LABEL_16:
  v59 = *(v70 + 28);
  v60 = *(v73 + 48);
  sub_23843981C(v43 + v59, v51, &qword_27DF0FAF8, &unk_238774480);
  sub_23843981C(v36 + v59, v51 + v60, &qword_27DF0FAF8, &unk_238774480);
  v61 = *(v76 + 48);
  v62 = v74;
  if (v61(v51, 1, v74) == 1)
  {
    if (v61(v51 + v60, 1, v62) == 1)
    {
      sub_238439884(v51, &qword_27DF0FAF8, &unk_238774480);
      return 1;
    }

    goto LABEL_21;
  }

  sub_23843981C(v51, v52, &qword_27DF0FAF8, &unk_238774480);
  if (v61(v51 + v60, 1, v62) == 1)
  {
    (*(v76 + 8))(v52, v62);
LABEL_21:
    v37 = &qword_27DF11100;
    v38 = &qword_238777540;
    v39 = v51;
    goto LABEL_22;
  }

  v64 = v76;
  v65 = v51 + v60;
  v66 = v71;
  (*(v76 + 32))(v71, v65, v62);
  sub_23860BF78(&qword_27DF11118, MEMORY[0x277CC6CD0]);
  v67 = sub_23875E9E0();
  v68 = *(v64 + 8);
  v68(v66, v62);
  v68(v52, v62);
  sub_238439884(v51, &qword_27DF0FAF8, &unk_238774480);
  return (v67 & 1) != 0;
}

uint64_t sub_23860B7C4(uint64_t a1)
{
  v28 = sub_2387591F0();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v18 = *(v7 + 16);
  v18(&v27 - v16, a1, v6, v15);
  v19 = (*(v7 + 88))(v17, v6);
  if (v19 == *MEMORY[0x277CC83B8])
  {
    (v18)(v13, v17, v6);
    (*(v7 + 96))(v13, v6);
    v20 = sub_2387580D0();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 88))(v13, v20);
    if (v22 == *MEMORY[0x277CC6DF0] || v22 == *MEMORY[0x277CC6DE0] || v22 == *MEMORY[0x277CC6DD8] || v22 == *MEMORY[0x277CC6DF8] || v22 == *MEMORY[0x277CC6DE8])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (v19 == *MEMORY[0x277CC83A8])
  {
    (v18)(v10, v17, v6);
    (*(v7 + 96))(v10, v6);
    v20 = sub_2387581B0();
    v21 = *(v20 - 8);
    v23 = (*(v21 + 88))(v10, v20);
    if (v23 == *MEMORY[0x277CC6E40] || v23 == *MEMORY[0x277CC6E38] || v23 == *MEMORY[0x277CC6E48] || v23 == *MEMORY[0x277CC6E20] || v23 == *MEMORY[0x277CC6E60] || v23 == *MEMORY[0x277CC6E58] || v23 == *MEMORY[0x277CC6E30] || v23 == *MEMORY[0x277CC6E28] || v23 == *MEMORY[0x277CC6E50] || v23 == *MEMORY[0x277CC6E18])
    {
      goto LABEL_22;
    }

    v13 = v10;
LABEL_30:
    (*(v21 + 8))(v13, v20);
    goto LABEL_31;
  }

  if (v19 == *MEMORY[0x277CC83B0])
  {
LABEL_22:
    v24 = v28;
    (*(v2 + 104))(v5, *MEMORY[0x277CC77B0], v28);
    v25 = sub_238758A40();
    (*(v2 + 8))(v5, v24);
    (*(v7 + 8))(v17, v6);
    return v25;
  }

LABEL_31:
  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_23860BE70()
{
  sub_2384C5F0C();
  if (v0 <= 0x3F)
  {
    sub_23860BFC0(319, &qword_27DF110E8, MEMORY[0x277CC6D20]);
    if (v1 <= 0x3F)
    {
      sub_23860BFC0(319, &qword_27DF110F0, MEMORY[0x277CC6CB0]);
      if (v2 <= 0x3F)
      {
        sub_23860BFC0(319, &qword_27DF110F8, MEMORY[0x277CC6CD0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23860BF78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23860BFC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23860C2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23860C36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_2386096EC();
}

uint64_t sub_23860C37C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_238609824();
}

uint64_t sub_23860C38C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_23860995C();
}

uint64_t sub_23860C39C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_238609A94();
}

uint64_t sub_23860C3AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_238609BCC();
}

uint64_t sub_23860C3BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_238609D04();
}

uint64_t sub_23860C3CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_238609E3C();
}

unint64_t sub_23860C3FC()
{
  result = qword_27DF11188;
  if (!qword_27DF11188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11188);
  }

  return result;
}

uint64_t sub_23860C450(uint64_t a1, uint64_t a2)
{
  v4 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_1(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387595E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_1(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387595E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23860C6E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_23860D1E8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23860CDE8()
{
  result = qword_27DF11330;
  if (!qword_27DF11330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11330);
  }

  return result;
}

unint64_t sub_23860CE40()
{
  result = qword_27DF11338;
  if (!qword_27DF11338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11338);
  }

  return result;
}

unint64_t sub_23860CE98()
{
  result = qword_27DF11340;
  if (!qword_27DF11340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11340);
  }

  return result;
}

unint64_t sub_23860CFDC()
{
  result = qword_27DF11370;
  if (!qword_27DF11370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11370);
  }

  return result;
}

unint64_t sub_23860D030()
{
  result = qword_27DF11390;
  if (!qword_27DF11390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11390);
  }

  return result;
}

uint64_t sub_23860D084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23860D0EC()
{
  result = qword_27DF113A8;
  if (!qword_27DF113A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF113A8);
  }

  return result;
}

unint64_t sub_23860D140()
{
  result = qword_27DF113C8;
  if (!qword_27DF113C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF113C8);
  }

  return result;
}

unint64_t sub_23860D194()
{
  result = qword_27DF113E8;
  if (!qword_27DF113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF113E8);
  }

  return result;
}

void sub_23860D1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23860D2B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23860D304(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2 + 1;
    }
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

uint64_t sub_23860D378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23860D3CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_23860D434()
{
  result = qword_27DF11490;
  if (!qword_27DF11490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11490);
  }

  return result;
}

unint64_t sub_23860D48C()
{
  result = qword_27DF11498;
  if (!qword_27DF11498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11498);
  }

  return result;
}

unint64_t sub_23860D4E4()
{
  result = qword_27DF114A0;
  if (!qword_27DF114A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114A0);
  }

  return result;
}

unint64_t sub_23860D53C()
{
  result = qword_27DF114A8;
  if (!qword_27DF114A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114A8);
  }

  return result;
}

unint64_t sub_23860D594()
{
  result = qword_27DF114B0;
  if (!qword_27DF114B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114B0);
  }

  return result;
}

unint64_t sub_23860D68C()
{
  result = qword_27DF114C8;
  if (!qword_27DF114C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114C8);
  }

  return result;
}

unint64_t sub_23860D6E4()
{
  result = qword_27DF114D0;
  if (!qword_27DF114D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114D0);
  }

  return result;
}

unint64_t sub_23860D73C()
{
  result = qword_27DF114D8;
  if (!qword_27DF114D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114D8);
  }

  return result;
}

unint64_t sub_23860D794()
{
  result = qword_27DF114E0;
  if (!qword_27DF114E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114E0);
  }

  return result;
}

unint64_t sub_23860D7EC()
{
  result = qword_27DF114E8;
  if (!qword_27DF114E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114E8);
  }

  return result;
}

unint64_t sub_23860D844()
{
  result = qword_27DF114F0;
  if (!qword_27DF114F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114F0);
  }

  return result;
}

unint64_t sub_23860D89C()
{
  result = qword_27DF114F8;
  if (!qword_27DF114F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114F8);
  }

  return result;
}

unint64_t sub_23860D8F4()
{
  result = qword_27DF11500;
  if (!qword_27DF11500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11500);
  }

  return result;
}

unint64_t sub_23860D94C()
{
  result = qword_27DF11508;
  if (!qword_27DF11508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11508);
  }

  return result;
}

unint64_t sub_23860D9A4()
{
  result = qword_27DF11510;
  if (!qword_27DF11510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11510);
  }

  return result;
}

uint64_t sub_23860DA5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = type metadata accessor for OrderFileAttachmentPreview(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11518, &qword_2387787D0);
  sub_23875E1B0();
  v12 = v26;
  if (v26)
  {
    v13 = OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl;
    v14 = sub_23875B940();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v7, v12 + v13, v14);

    (*(v15 + 56))(v7, 0, 1, v14);
  }

  else
  {
    v16 = sub_23875B940();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  }

  sub_23853B5CC(v7, v11);
  v17 = *(v8 + 20);
  *&v11[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  sub_23860E36C(v2, v24);
  v18 = swift_allocObject();
  v19 = v25[0];
  v18[3] = v24[2];
  v18[4] = v19;
  *(v18 + 73) = *(v25 + 9);
  v20 = v24[1];
  v18[1] = v24[0];
  v18[2] = v20;
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6D8, &unk_2387702E0) + 36));
  v22 = v21 + *(sub_23875C6E0() + 20);
  sub_23875ED60();
  *v21 = &unk_238778818;
  v21[1] = v18;
  return sub_23857119C(v11, a1);
}

uint64_t sub_23860DD24(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_23875C1E0();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  sub_23875ED50();
  v1[24] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v1[25] = v6;
  v1[26] = v5;

  return MEMORY[0x2822009F8](sub_23860DE18, v6, v5);
}

uint64_t sub_23860DE18()
{
  v1 = v0[20];
  sub_2384D55B0((v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v3 + 16);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_23860DF60;

  return v10(v4, v5, v2, v3);
}

uint64_t sub_23860DF60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = v4[25];
    v8 = v4[26];
    v9 = sub_23860E13C;
  }

  else
  {
    v4[29] = a1;
    v7 = v4[25];
    v8 = v4[26];
    v9 = sub_23860E088;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23860E088()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);

  *(v0 + 136) = *(v3 + 16);
  *(v0 + 152) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11518, &qword_2387787D0);
  sub_23875E1C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v4 = *(v0 + 184);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23860E13C()
{
  v27 = v0;
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_23875C180();
  sub_23860E36C(v4, (v0 + 2));
  v5 = v1;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  v10 = v0[22];
  v11 = v0[23];
  v12 = v0[21];
  if (v8)
  {
    v25 = v0[21];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315394;
    v24 = v11;
    v17 = v0[2];
    v16 = v0[3];

    sub_23860E438((v0 + 2));
    v18 = sub_2384615AC(v17, v16, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2383F8000, v6, v7, "Error loading receipt %s: %@", v13, 0x16u);
    sub_238455DD4(v14);
    MEMORY[0x23EE64DF0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23EE64DF0](v15, -1, -1);
    MEMORY[0x23EE64DF0](v13, -1, -1);

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    sub_23860E438((v0 + 2));
    (*(v10 + 8))(v11, v12);
  }

  v21 = v0[23];

  v22 = v0[1];

  return v22();
}

uint64_t sub_23860E3A4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_23860DD24(v0 + 16);
}

uint64_t sub_23860E48C(uint64_t a1)
{
  v2 = sub_23875A9F0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_238758540();
}

id sub_23860E554()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23875EA50();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_23875B730();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_23860E62C(uint64_t a1, uint64_t a2)
{
  v3 = sub_238758F50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_23861C5F4(&qword_27DF11878, MEMORY[0x277CC7678]), v9 = sub_23875E950(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_23861C5F4(&qword_27DF0D430, MEMORY[0x277CC7678]);
      v17 = sub_23875E9E0();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_23860E844(uint64_t a1, uint64_t a2)
{
  v3 = sub_238758680();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_23861C5F4(&qword_27DF0B0F0, MEMORY[0x277CC6F70]), v9 = sub_23875E950(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_23861C5F4(&qword_27DF09538, MEMORY[0x277CC6F70]);
      v17 = sub_23875E9E0();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_23860EA5C()
{
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  v1 = *(v0 + 32);
}

uint64_t sub_23860EB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  *a2 = *(v3 + 32);
}

uint64_t sub_23860EBAC(uint64_t a1)
{
  v3 = *(v1 + 32);

  v5 = sub_23851A108(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
    sub_23875BE80();
  }
}

uint64_t sub_23860ED00()
{
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_23860EDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_23860EE78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23860EEA4(v4);
}

uint64_t sub_23860EEA4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);

  v5 = sub_2384A2000(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
    sub_23875BE80();
  }
}

uint64_t sub_23860EFEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
}

uint64_t sub_23860F054()
{
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  return *(v0 + 48);
}

uint64_t sub_23860F0F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_23860F19C(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
    sub_23875BE80();
  }

  return result;
}

void sub_23860F2A0(uint64_t a1)
{
  v2 = v1;
  v35[0] = sub_238758680();
  v4 = *(v35[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v35[0]);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v35 - v13;
  swift_getKeyPath();
  v37 = v1;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v15 = *(v1 + 40);

  v16 = sub_23860E844(a1, v15);

  if (v16)
  {
    swift_getKeyPath();
    v36[0] = v2;
    sub_23875BE90();

    v36[0] = v2;
    swift_getKeyPath();
    sub_23875BEB0();

    swift_beginAccess();
    sub_2386F2298(a1, v14);
    sub_238439884(v14, &qword_27DF09520, &unk_2387637E0);
    swift_endAccess();
    v36[0] = v2;
    swift_getKeyPath();
    sub_23875BEA0();

    v17 = 42;
  }

  else
  {
    v18 = v35[0];
    (*(v4 + 16))(v7, a1, v35[0]);
    swift_getKeyPath();
    v36[0] = v2;
    sub_23875BE90();

    v36[0] = v2;
    swift_getKeyPath();
    sub_23875BEB0();

    swift_beginAccess();
    sub_238709400(v10, v7);
    (*(v4 + 8))(v10, v18);
    swift_endAccess();
    v36[0] = v2;
    swift_getKeyPath();
    sub_23875BEA0();

    v17 = 41;
  }

  v19 = *(v2 + 56);
  v20 = sub_238611904();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v22 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v23 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v24;
  v25 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = sub_23844B4DC(v17);
  *(inited + 72) = v26;
  v27 = *MEMORY[0x277D384B8];
  *(inited + 80) = *MEMORY[0x277D384B8];
  strcpy((inited + 88), "accountSelect");
  *(inited + 102) = -4864;
  v28 = v22;
  v29 = v25;
  v30 = v27;
  v31 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = v31;
  sub_2385C33E4(v20, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v36);

  v33 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23861C5F4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v34 = sub_23875E910();

  [v33 subject:v19 sendEvent:v34];
}

void sub_23860F828()
{
  swift_getKeyPath();
  v21 = v0;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v1 = *(v0[5] + 16);
  swift_getKeyPath();
  v20 = v0;
  sub_23875BE90();

  if (v1 >= v0[6])
  {
    swift_getKeyPath();
    sub_23875BE90();

    v20 = v0;
    swift_getKeyPath();
    sub_23875BEB0();

    v3 = v0[5];
    v0[5] = MEMORY[0x277D84FA0];

    v20 = v0;
    swift_getKeyPath();
    sub_23875BEA0();

    v2 = 42;
  }

  else
  {
    sub_238610E14();
    v2 = 41;
  }

  v4 = v0[7];
  v5 = sub_238611904();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v8 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = sub_23844B4DC(v2);
  *(inited + 72) = v11;
  v12 = *MEMORY[0x277D384B8];
  *(inited + 80) = *MEMORY[0x277D384B8];
  strcpy((inited + 88), "accountSelect");
  *(inited + 102) = -4864;
  v13 = v7;
  v14 = v10;
  v15 = v12;
  v16 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v16;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v20);

  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23861C5F4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v19 = sub_23875E910();

  [v18 subject:v4 sendEvent:v19];
}

uint64_t sub_23860FBC0()
{
  v1 = v0;
  v2 = sub_238758680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  swift_getKeyPath();
  v31 = v0;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v9 = *(v0 + 40);
  swift_getKeyPath();
  v30 = v1;
  v21 = v9;

  sub_23875BE90();

  v10 = *(v1 + 32);
  v11 = *(v10 + 16);

  v28 = v11;
  if (v11)
  {
    v12 = 0;
    v22 = (v3 + 8);
    v26 = (v3 + 32);
    v27 = v3 + 16;
    v13 = MEMORY[0x277D84F90];
    v24 = v1;
    v25 = v2;
    v23 = v10;
    while (v12 < *(v10 + 16))
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = *(v3 + 72);
      (*(v3 + 16))(v8, v10 + v14 + v15 * v12, v2);
      if (sub_23860FF40(v8, v1))
      {
        v16 = *v26;
        (*v26)(v29, v8, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2385FE488(0, *(v13 + 16) + 1, 1);
          v13 = v30;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2385FE488(v18 > 1, v19 + 1, 1);
          v13 = v30;
        }

        *(v13 + 16) = v19 + 1;
        v2 = v25;
        v16((v13 + v14 + v19 * v15), v29, v25);
        v10 = v23;
        v1 = v24;
      }

      else
      {
        (*v22)(v8, v2);
      }

      if (v28 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v22)(v8, v2);

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_13:

    sub_2384A4E78(v13);

    return v21;
  }

  return result;
}

uint64_t sub_23860FF40(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_238757FD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v32[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v32[-v18];
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = a1;
  sub_2387585D0();
  (*(v4 + 104))(v16, *MEMORY[0x277CC6D50], v3);
  (*(v4 + 56))(v16, 0, 1, v3);
  v20 = *(v7 + 48);
  sub_23843981C(v19, v10, &qword_27DF11628, &qword_238778B70);
  sub_23843981C(v16, &v10[v20], &qword_27DF11628, &qword_238778B70);
  v21 = v4;
  v22 = *(v4 + 48);
  if (v22(v10, 1, v3) == 1)
  {
    sub_238439884(v16, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v19, &qword_27DF11628, &qword_238778B70);
    if (v22(&v10[v20], 1, v3) == 1)
    {
      sub_238439884(v10, &qword_27DF11628, &qword_238778B70);
LABEL_11:

      v27 = 0;
      return v27 & 1;
    }

    goto LABEL_8;
  }

  sub_23843981C(v10, v37, &qword_27DF11628, &qword_238778B70);
  if (v22(&v10[v20], 1, v3) == 1)
  {
    sub_238439884(v16, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v19, &qword_27DF11628, &qword_238778B70);
    (*(v21 + 8))(v37, v3);
LABEL_8:
    sub_238439884(v10, &qword_27DF11620, &qword_238778B68);
    v23 = v36;
    goto LABEL_9;
  }

  v28 = v34;
  (*(v21 + 32))(v34, &v10[v20], v3);
  sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60]);
  v29 = v37;
  v33 = sub_23875E9E0();
  v30 = *(v21 + 8);
  v30(v28, v3);
  sub_238439884(v16, &qword_27DF11628, &qword_238778B70);
  sub_238439884(v19, &qword_27DF11628, &qword_238778B70);
  v30(v29, v3);
  sub_238439884(v10, &qword_27DF11628, &qword_238778B70);
  v23 = v36;
  if (v33)
  {
    goto LABEL_11;
  }

LABEL_9:
  swift_getKeyPath();
  v24 = v35;
  v39 = v35;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v25 = *(v24 + 40);

  v26 = sub_23860E844(v23, v25);

  v27 = v26 ^ 1;
  return v27 & 1;
}

uint64_t sub_2386104D0()
{
  v1[2] = v0;
  v2 = sub_23875C1E0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_238758680();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11638, &qword_238778B78) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = sub_2387591E0();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = sub_238759400();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  sub_23875ED50();
  v1[17] = sub_23875ED40();
  v16 = sub_23875ECE0();
  v1[18] = v16;
  v1[19] = v15;

  return MEMORY[0x2822009F8](sub_23861071C, v16, v15);
}

uint64_t sub_23861071C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = *(v0[2] + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11640, &unk_238778B80);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_2387591D0();
  v5 = *(MEMORY[0x277CC66B0] + 4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_238610840;
  v7 = v0[16];
  v8 = v0[13];

  return MEMORY[0x282116D98](v7, v8);
}

uint64_t sub_238610840()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 152);
  v9 = *(v2 + 144);
  if (v0)
  {
    v10 = sub_238610D60;
  }

  else
  {
    v10 = sub_2386109D8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2386109D8()
{
  v41 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = sub_2387593F0();
  result = (*(v1 + 8))(v2, v3);
  v6 = *(v4 + 16);
  v36 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = v0[7];
    v38 = (v8 + 32);
    v9 = MEMORY[0x277D84F90];
    v35 = v4;
    while (v7 < *(v4 + 16))
    {
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v11 = *(v8 + 72);
      (*(v8 + 16))(v0[9], v4 + v10 + v11 * v7, v0[6]);
      v12 = sub_238758610();
      v13 = v0[9];
      if (v12)
      {
        v14 = *v38;
        (*v38)(v0[8], v0[9], v0[6]);
        v40 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2385FE488(0, v9[2] + 1, 1);
          v9 = v40;
        }

        v16 = v9[2];
        v15 = v9[3];
        if (v16 >= v15 >> 1)
        {
          sub_2385FE488(v15 > 1, v16 + 1, 1);
          v9 = v40;
        }

        v17 = v0[8];
        v18 = v0[6];
        v9[2] = v16 + 1;
        result = v14(v9 + v10 + v16 * v11, v17, v18);
        v4 = v35;
        v6 = v36;
      }

      else
      {
        result = (*(v8 + 8))(v0[9], v0[6]);
      }

      if (v6 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_13:
    v19 = v0[21];
    v40 = v9;

    sub_23861C6FC(&v40);
    if (v19)
    {
    }

    else
    {
      v20 = v0[17];
      v21 = v0[5];

      v39 = v40;
      v22 = v40[2];
      sub_23875C140();
      v23 = sub_23875C1B0();
      v24 = sub_23875F000();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134218241;
        *(v25 + 4) = v22;
        *(v25 + 12) = 2049;
        *(v25 + 14) = v36;
        _os_log_impl(&dword_2383F8000, v23, v24, "Got %ld accounts (%{private}ld)", v25, 0x16u);
        MEMORY[0x23EE64DF0](v25, -1, -1);
      }

      v26 = v0[16];
      v27 = v0[13];
      v29 = v0[9];
      v28 = v0[10];
      v37 = v0[8];
      v30 = v0[4];
      v31 = v0[5];
      v32 = v0[2];
      v33 = v0[3];

      (*(v30 + 8))(v31, v33);
      sub_23860EBAC(v39);
      sub_238610E14();

      v34 = v0[1];

      return v34();
    }
  }

  return result;
}

uint64_t sub_238610D60()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];

  v8 = v0[1];
  v9 = v0[21];

  return v8();
}

uint64_t sub_238610E14()
{
  v1 = v0;
  v86 = sub_238757FD0();
  v2 = *(v86 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v86);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  v6 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v8 = v69 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v69 - v13;
  MEMORY[0x28223BE20](v15);
  v76 = v69 - v16;
  v17 = sub_238758680();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v89 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v88 = v69 - v22;
  MEMORY[0x28223BE20](v23);
  v92 = v69 - v24;
  MEMORY[0x28223BE20](v25);
  v90 = v69 - v26;
  MEMORY[0x28223BE20](v27);
  v98 = v69 - v28;
  swift_getKeyPath();
  v29 = OBJC_IVAR____TtC12FinanceKitUI13AccountsModel___observationRegistrar;
  v100 = v1;
  v30 = sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  v69[2] = v29;
  v69[1] = v30;
  sub_23875BE90();

  v70 = v1;
  v31 = *(*(v1 + 32) + 16);

  v85 = v31;
  if (v31)
  {
    v33 = 0;
    v82 = v18 + 16;
    v81 = (v2 + 104);
    v80 = *MEMORY[0x277CC6D50];
    v79 = (v2 + 56);
    v78 = (v2 + 48);
    v72 = (v2 + 32);
    v74 = (v2 + 8);
    v91 = (v18 + 32);
    v73 = (v18 + 8);
    v34 = MEMORY[0x277D84F90];
    v71 = v5;
    v35 = v76;
    v83 = result;
    v84 = v18;
    v93 = v14;
    v77 = v17;
    while (1)
    {
      if (v33 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v97 = v34;
      v95 = ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v94 = *(v18 + 72);
      (*(v18 + 16))(v98, &v95[result + v94 * v33], v17);
      sub_23875ED50();
      v96 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_2387585D0();
      v36 = v35;
      v37 = v93;
      v38 = v86;
      (*v81)(v93, v80, v86);
      (*v79)(v37, 0, 1, v38);
      v39 = *(v87 + 48);
      sub_23843981C(v36, v8, &qword_27DF11628, &qword_238778B70);
      sub_23843981C(v37, &v8[v39], &qword_27DF11628, &qword_238778B70);
      v40 = *v78;
      if ((*v78)(v8, 1, v38) == 1)
      {
        sub_238439884(v37, &qword_27DF11628, &qword_238778B70);
        sub_238439884(v36, &qword_27DF11628, &qword_238778B70);
        v41 = v40(&v8[v39], 1, v38);
        v35 = v36;
        v17 = v77;
        if (v41 != 1)
        {
          goto LABEL_14;
        }

        sub_238439884(v8, &qword_27DF11628, &qword_238778B70);
      }

      else
      {
        v42 = v75;
        sub_23843981C(v8, v75, &qword_27DF11628, &qword_238778B70);
        if (v40(&v8[v39], 1, v38) == 1)
        {
          sub_238439884(v93, &qword_27DF11628, &qword_238778B70);
          v35 = v76;
          sub_238439884(v76, &qword_27DF11628, &qword_238778B70);
          (*v74)(v42, v38);
          v17 = v77;
LABEL_14:
          sub_238439884(v8, &qword_27DF11620, &qword_238778B68);

LABEL_15:
          v43 = *v91;
          (*v91)(v92, v98, v17);
          v34 = v97;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2385FE488(0, *(v34 + 16) + 1, 1);
            v34 = v100;
          }

          v46 = v94;
          v45 = v95;
          v48 = *(v34 + 16);
          v47 = *(v34 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_2385FE488(v47 > 1, v48 + 1, 1);
            v34 = v100;
          }

          *(v34 + 16) = v48 + 1;
          v43(&v45[v34 + v48 * v46], v92, v17);
          goto LABEL_5;
        }

        v49 = v71;
        (*v72)(v71, &v8[v39], v38);
        sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60]);
        v50 = sub_23875E9E0();
        v51 = *v74;
        (*v74)(v49, v38);
        sub_238439884(v93, &qword_27DF11628, &qword_238778B70);
        v35 = v76;
        sub_238439884(v76, &qword_27DF11628, &qword_238778B70);
        v51(v42, v38);
        sub_238439884(v8, &qword_27DF11628, &qword_238778B70);

        v17 = v77;
        if ((v50 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      (*v73)(v98, v17);
      v34 = v97;
LABEL_5:
      result = v83;
      v18 = v84;
      if (v85 == ++v33)
      {
        goto LABEL_23;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_23:

  v100 = MEMORY[0x277D84FA0];
  v52 = *(v34 + 16);
  if (v52)
  {
    v53 = sub_23875ED50();
    v97 = v34;
    v98 = v53;
    v56 = *(v18 + 16);
    v55 = v18 + 16;
    v54 = v56;
    v57 = v34 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
    v58 = *(v55 + 56);
    v95 = (v55 - 8);
    v96 = v58;
    v59 = v90;
    do
    {
      v65 = v17;
      v54(v59, v57, v17);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v60 = v89;
      v59 = v90;
      v54(v89, v90, v17);
      v61 = v54;
      v62 = v88;
      sub_238709400(v88, v60);
      v63 = *v95;
      v64 = v62;
      v54 = v61;
      v17 = v65;
      (*v95)(v64, v65);
      v63(v59, v65);

      v57 += v96;
      --v52;
    }

    while (v52);
  }

  v66 = v70;
  sub_23860EEA4(v100);
  swift_getKeyPath();
  v100 = v66;
  sub_23875BE90();

  result = swift_beginAccess();
  v67 = *(*(v66 + 40) + 16);
  if (*(v66 + 48) != v67)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v69[-2] = v66;
    v69[-1] = v67;
    v99 = v66;
    sub_23875BE80();
  }

  return result;
}

uint64_t sub_238611904()
{
  v1 = v0;
  v2 = sub_238758A00();
  v162 = *(v2 - 8);
  v3 = *(v162 + 64);
  MEMORY[0x28223BE20](v2);
  v141 = v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v140 = v132 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v132 - v8;
  MEMORY[0x28223BE20](v10);
  v146 = v132 - v11;
  MEMORY[0x28223BE20](v12);
  v145 = v132 - v13;
  MEMORY[0x28223BE20](v14);
  v163 = v132 - v15;
  v142 = sub_238757FD0();
  v16 = *(v142 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v142);
  v134 = v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  v19 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v157 = v132 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v147 = v132 - v26;
  MEMORY[0x28223BE20](v27);
  v164 = v132 - v28;
  v172 = sub_238758680();
  v29 = *(v172 - 1);
  v30 = *(v29 + 8);
  MEMORY[0x28223BE20](v172);
  v166 = v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v173 = (v132 - v33);
  v34 = MEMORY[0x277D84F90];
  v167 = sub_23854BC50(MEMORY[0x277D84F90]);
  v161 = sub_23854BC50(v34);
  swift_getKeyPath();
  v35 = OBJC_IVAR____TtC12FinanceKitUI13AccountsModel___observationRegistrar;
  v175 = v1;
  v36 = sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  v137 = v35;
  v136 = v36;
  sub_23875BE90();

  v37 = v1[4];
  v38 = *(v37 + 16);
  v39 = MEMORY[0x277CC7160];
  v159 = v9;
  v156 = v38;
  if (!v38)
  {
LABEL_36:
    v91 = sub_23854B138(MEMORY[0x277D84F90]);
    v92 = sub_2387589E0();
    v93 = *(v92 + 16);
    if (!v93)
    {
LABEL_70:

      return v91;
    }

    v94 = *(v162 + 16);
    v95 = (*(v162 + 80) + 32) & ~*(v162 + 80);
    v149 = v92;
    v96 = v92 + v95;
    v172 = (v162 + 104);
    v97 = (v162 + 8);
    v168 = (v162 + 88);
    v171 = *(v162 + 72);
    LODWORD(v170) = *MEMORY[0x277CC7160];
    LODWORD(v166) = *MEMORY[0x277CC7158];
    LODWORD(v164) = *MEMORY[0x277CC7170];
    LODWORD(v158) = *MEMORY[0x277CC7178];
    LODWORD(v154) = *MEMORY[0x277CC7168];
    v148 = "FINANCIAL_DATA_SELECT_ALL";
    v147 = "connectedCardAvailable";
    v151 = "appleSavingsAvailable";
    v153 = "appleCashAvailable";
    v157 = "appleCardSelected";
    v160 = *MEMORY[0x277D38528];
    v146 = "nknown_available";
    v165 = *MEMORY[0x277D38520];
    v145 = "connectedCardSelected";
    v150 = "appleSavingsSelected";
    v152 = "appleCashSelected";
    v156 = "account_origin_unknown_selected";
    v162 += 16;
    v169 = v94;
    v173 = (v162 - 8);
    v94(v9, v92 + v95, v2);
    while (1)
    {
      v104 = v163;
      (*v172)(v163, v170, v2);
      sub_23861C5F4(&qword_27DF0DE00, MEMORY[0x277CC7180]);
      v105 = sub_23875E9E0();
      v106 = *v97;
      v106(v104, v2);
      if (v105)
      {
        goto LABEL_39;
      }

      v107 = v140;
      v94(v140, v9, v2);
      v108 = *v168;
      v109 = (*v168)(v107, v2);
      if (v109 != v166)
      {
        if (v109 == v164)
        {
          v110 = &v181;
        }

        else if (v109 == v158)
        {
          v110 = &v179;
        }

        else
        {
          if (v109 != v154)
          {
            v112 = sub_23875EA50();
            v106(v140, v2);
            goto LABEL_51;
          }

          v110 = &v177;
        }

        v111 = *(v110 - 32);
      }

      v112 = sub_23875EA50();
LABEL_51:
      if (v167[2])
      {
        v113 = sub_238547B0C(v9);
        if (v114)
        {
          *(v167[7] + v113);
        }
      }

      v115 = sub_23875EA80();
      v117 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = v91;
      v119 = v115;
      v120 = v159;
      sub_2386CCCEC(v119, v117, v112, isUniquelyReferenced_nonNull_native);

      v121 = v174;
      v122 = v141;
      v169(v141, v120, v2);
      v123 = v108(v122, v2);
      if (v123 == v166)
      {
        v124 = &v182;
      }

      else
      {
        if (v123 == v164)
        {
          v126 = &v180;
LABEL_61:
          v127 = *(v126 - 32) | 0x8000000000000000;
          goto LABEL_62;
        }

        if (v123 == v158)
        {
          v126 = &v178;
          goto LABEL_61;
        }

        if (v123 != v154)
        {
          v128 = sub_23875EA50();
          v106(v141, v2);
          goto LABEL_63;
        }

        v124 = &v176;
      }

      v125 = *(v124 - 32) | 0x8000000000000000;
LABEL_62:
      v128 = sub_23875EA50();
LABEL_63:
      if (*(v161 + 16))
      {
        v129 = sub_238547B0C(v120);
        if (v130)
        {
          *(*(v161 + 56) + v129);
        }
      }

      v98 = sub_23875EA80();
      v100 = v99;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v174 = v121;
      v102 = v98;
      v9 = v159;
      sub_2386CCCEC(v102, v100, v128, v101);

      v91 = v174;
      v94 = v169;
LABEL_39:
      v103 = v173;
      v106(v9, v2);
      v97 = v103;
      v96 += v171;
      if (!--v93)
      {
        goto LABEL_70;
      }

      v94(v9, v96, v2);
    }
  }

  v139 = v24;
  v154 = v37 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v160 = v37;

  v135 = v1;
  swift_beginAccess();
  v40 = v160;
  v41 = 0;
  v171 = v29 + 16;
  v153 = (v16 + 104);
  LODWORD(v152) = *MEMORY[0x277CC6D50];
  v151 = (v16 + 56);
  v42 = (v16 + 48);
  v133 = (v16 + 32);
  v138 = (v16 + 8);
  v144 = *v39;
  v143 = (v162 + 104);
  v148 = (v162 + 8);
  v132[1] = v162 + 16;
  v170 = (v29 + 8);
  v43 = v142;
  v44 = v147;
  v45 = v164;
  v149 = v42;
  v155 = v2;
  v150 = v29;
  while (v41 < *(v40 + 16))
  {
    v169 = *(v29 + 9);
    v165 = v41;
    v168 = *(v29 + 2);
    (v168)(v173, v154 + v169 * v41, v172);
    sub_2387585D0();
    (*v153)(v44, v152, v43);
    (*v151)(v44, 0, 1, v43);
    v46 = v157;
    v47 = *(v158 + 48);
    sub_23843981C(v45, v157, &qword_27DF11628, &qword_238778B70);
    sub_23843981C(v44, &v46[v47], &qword_27DF11628, &qword_238778B70);
    v48 = v45;
    v49 = *v42;
    if ((*v42)(v46, 1, v43) == 1)
    {
      sub_238439884(v44, &qword_27DF11628, &qword_238778B70);
      sub_238439884(v48, &qword_27DF11628, &qword_238778B70);
      v50 = v49(&v46[v47], 1, v43);
      v51 = v173;
      if (v50 == 1)
      {
        sub_238439884(v46, &qword_27DF11628, &qword_238778B70);
        v2 = v155;
        goto LABEL_4;
      }
    }

    else
    {
      v52 = v139;
      sub_23843981C(v46, v139, &qword_27DF11628, &qword_238778B70);
      if (v49(&v46[v47], 1, v43) != 1)
      {
        v68 = v134;
        (*v133)(v134, &v46[v47], v43);
        sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60]);
        v69 = sub_23875E9E0();
        v70 = *v138;
        (*v138)(v68, v43);
        v44 = v147;
        sub_238439884(v147, &qword_27DF11628, &qword_238778B70);
        sub_238439884(v164, &qword_27DF11628, &qword_238778B70);
        v70(v52, v43);
        sub_238439884(v46, &qword_27DF11628, &qword_238778B70);
        v2 = v155;
        v51 = v173;
        if (v69)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      v44 = v147;
      sub_238439884(v147, &qword_27DF11628, &qword_238778B70);
      sub_238439884(v164, &qword_27DF11628, &qword_238778B70);
      (*v138)(v52, v43);
      v51 = v173;
    }

    sub_238439884(v46, &qword_27DF11620, &qword_238778B68);
    v2 = v155;
LABEL_13:
    v53 = v163;
    sub_238758580();
    v54 = v145;
    (*v143)(v145, v144, v2);
    sub_23861C5F4(&qword_27DF0DE00, MEMORY[0x277CC7180]);
    v55 = sub_23875E9E0();
    v56 = *v148;
    (*v148)(v54, v2);
    v56(v53, v2);
    if ((v55 & 1) == 0)
    {
      v57 = v146;
      sub_238758580();
      v58 = v167;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v174 = v58;
      v60 = sub_238547B0C(v57);
      v62 = v58[2];
      v63 = (v61 & 1) == 0;
      v64 = __OFADD__(v62, v63);
      v65 = v62 + v63;
      if (v64)
      {
        goto LABEL_72;
      }

      v66 = v61;
      if (v58[3] >= v65)
      {
        if ((v59 & 1) == 0)
        {
          v90 = v60;
          sub_23854A8C0();
          v60 = v90;
        }
      }

      else
      {
        sub_238549140(v65, v59);
        v60 = sub_238547B0C(v146);
        if ((v66 & 1) != (v67 & 1))
        {
          goto LABEL_74;
        }
      }

      v43 = v142;
      v45 = v164;
      v167 = v174;
      if (v66)
      {
        *(v174[7] + v60) = 1;
        v56(v146, v2);
      }

      else
      {
        v174[(v60 >> 6) + 8] |= 1 << v60;
        v71 = v60;
        v72 = v146;
        (*(v162 + 16))(v167[6] + *(v162 + 72) * v60, v146, v2);
        *(v167[7] + v71) = 1;
        v56(v72, v2);
        v73 = v167[2];
        v64 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v64)
        {
          goto LABEL_73;
        }

        v167[2] = v74;
      }

      swift_getKeyPath();
      v75 = v135;
      v174 = v135;
      sub_23875BE90();

      v76 = v75[5];
      if (*(v76 + 16))
      {
        v77 = *(v76 + 40);
        sub_23861C5F4(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);

        v78 = sub_23875E950();
        v79 = -1 << *(v76 + 32);
        v80 = v78 & ~v79;
        if ((*(v76 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
        {
          v81 = ~v79;
          while (1)
          {
            v82 = v166;
            v83 = v172;
            (v168)(v166, *(v76 + 48) + v80 * v169, v172);
            sub_23861C5F4(&qword_27DF09538, MEMORY[0x277CC6F70]);
            v84 = sub_23875E9E0();
            v85 = *v170;
            (*v170)(v82, v83);
            if (v84)
            {
              break;
            }

            v80 = (v80 + 1) & v81;
            if (((*(v76 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v86 = v163;
          v87 = v173;
          sub_238758580();
          v88 = v161;
          v89 = swift_isUniquelyReferenced_nonNull_native();
          v174 = v88;
          sub_2386CCE60(1, v86, v89);
          v56(v86, v2);
          v85(v87, v172);
          v161 = v174;
        }

        else
        {
LABEL_31:

          (*v170)(v173, v172);
        }

        v43 = v142;
        v44 = v147;
        v45 = v164;
      }

      else
      {
        (*v170)(v51, v172);
        v44 = v147;
      }

      goto LABEL_5;
    }

LABEL_4:
    (*v170)(v51, v172);
    v45 = v164;
LABEL_5:
    v41 = v165 + 1;
    v40 = v160;
    v42 = v149;
    v29 = v150;
    if ((v165 + 1) == v156)
    {

      v9 = v159;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_23875F680();
  __break(1u);
  return result;
}

uint64_t sub_238612C58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 64);

  v6 = OBJC_IVAR____TtC12FinanceKitUI13AccountsModel___observationRegistrar;
  v7 = sub_23875BED0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_238612D24()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v0[2] = sub_23854BE38(MEMORY[0x277D84F90]);
  sub_2387579D0();
  v0[3] = sub_2387579A0();
  v0[4] = v2;
  v3 = MEMORY[0x277D84FA0];
  v1[5] = MEMORY[0x277D84FA0];
  v1[6] = 0;
  v1[7] = sub_23875EA50();
  v1[8] = v3;
  sub_23875BEC0();
  return v1;
}

uint64_t SelectAccountsView.init(applicationRecord:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for AccountsModel(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_238612D24();
  sub_23875E1A0();
  *a4 = v13;
  a4[1] = v14;
  v11 = a4 + *(type metadata accessor for SelectAccountsView(0) + 28);
  result = sub_23875D490();
  a4[3] = a3;
  a4[4] = a1;
  a4[2] = a2;
  return result;
}

uint64_t sub_238612E98()
{
  v11 = *v0;
  v12 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  v1 = *(v10 + 32);

  v2 = *(v1 + 16);

  if (v2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  return v8;
}

uint64_t sub_2386130A4()
{
  v1 = v0;
  v22 = *v0;
  v23 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  v2 = *(v21 + 32);

  v3 = *(v2 + 16);

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2387632F0;
    v5 = [v1[4] localizedName];
    v6 = sub_23875EA80();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_238448C58();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v9 = qword_2814F1B90;
    v10 = sub_23875EA50();
    v11 = sub_23875EA50();
    v12 = sub_23875EA50();
    v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

    sub_23875EA80();
    v14 = sub_23875EAA0();
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v15 = qword_2814F1B90;
    v16 = sub_23875EA50();
    v17 = sub_23875EA50();
    v18 = sub_23875EA50();
    v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

    v14 = sub_23875EA80();
  }

  return v14;
}

id sub_2386133E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for SelectAccountsResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v14 = sub_238759510();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v13(v11);
  sub_23861F3B4(v11, type metadata accessor for SelectAccountsResult);
  sub_2387579D0();
  sub_2387579A0();
  if ((sub_2387577C0() & 1) == 0)
  {
    sub_2387577D0();
  }

  sub_23875B910();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v16 = result;
    sub_23843981C(v7, v4, &qword_27DF0D040, &qword_2387676A0);
    v17 = sub_23875B940();
    v18 = *(v17 - 8);
    v19 = 0;
    if ((*(v18 + 48))(v4, 1, v17) != 1)
    {
      v19 = sub_23875B860();
      (*(v18 + 8))(v4, v17);
    }

    sub_23853BB18(MEMORY[0x277D84F90]);
    v20 = sub_23875E910();

    [v16 openSensitiveURL:v19 withOptions:v20];

    return sub_238439884(v7, &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2386136F0(uint64_t a1)
{
  v3 = [*(v1 + 32) bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23875EA80();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v10 = sub_238611904();
  v8 = sub_23875EA50();
  sub_2386C41A8(v5, v7, v8);
  sub_23844C218(*(a1 + 56), 21, v10);
}

uint64_t SelectAccountsView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11520, &unk_238778830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E60, &qword_238761CE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11528, &qword_238778840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
  sub_23843A3E8(&qword_27DF11530, &qword_27DF11528, &qword_238778840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C8F0();
}

uint64_t sub_23861397C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_23875ED50();
  v54 = sub_23875ED40();
  v46 = v3;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11520, &unk_238778830);
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v41 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E60, &qword_238761CE8);
  v50 = &v41;
  v48 = *(v49 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11528, &qword_238778840);
  v45 = &v41;
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  *v13 = sub_23875D020();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11648, &qword_238778B90);
  v15 = sub_238614160(a1, &v13[*(v14 + 44)]);
  v44 = a1;
  MEMORY[0x28223BE20](v15);
  *(&v41 - 2) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C8, &unk_23877A850);
  sub_23843A3E8(&qword_27DF11530, &qword_27DF11528, &qword_238778840);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v18 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  v57 = v17;
  v58 = v18;
  swift_getOpaqueTypeConformance2();
  v47 = v9;
  sub_23875DEF0();
  sub_238439884(v13, &qword_27DF11528, &qword_238778840);
  v45 = sub_23875ED80();
  v19 = *(v45 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v41 - v43;
  sub_23875ED60();
  v22 = type metadata accessor for SelectAccountsView(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  sub_23861E93C(v44, &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAccountsView);
  v25 = sub_23875ED40();
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = MEMORY[0x277D85700];
  sub_23861E9A4(&v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for SelectAccountsView);
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v44 = sub_23875C830();
    v46 = &v41;
    v42 = *(v44 - 8);
    v28 = *(v42 + 64);
    MEMORY[0x28223BE20](v44);
    v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_23875F470();

    v57 = 0xD000000000000032;
    v58 = 0x800000023878DC90;
    v56 = 344;
    v31 = sub_23875F600();
    MEMORY[0x23EE63650](v31);

    v41 = &v41;
    v33 = MEMORY[0x28223BE20](v32);
    v34 = v45;
    (*(v19 + 16))(&v41 - v43, v21, v45, v33);
    sub_23875C820();
    (*(v19 + 8))(v21, v34);
    v35 = v51;
    (*(v48 + 32))(v51, v47, v49);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E68, &unk_238761CF0);
    (*(v42 + 32))(&v35[*(v36 + 36)], v30, v44);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E70, &qword_238778BB0);
    v35 = v51;
    v38 = &v51[*(v37 + 36)];
    v39 = sub_23875C6E0();
    (*(v19 + 32))(&v38[*(v39 + 20)], v21, v45);
    *v38 = &unk_238778BA0;
    *(v38 + 1) = v27;
    (*(v48 + 32))(v35, v47, v49);
  }

  (*(v52 + 32))(v55, v35, v53);
}

uint64_t sub_238614160@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11658, &qword_238778BC8);
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11660, &qword_238778BD0);
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v42 - 2) = a1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11668, &qword_238778BD8);
  sub_23843A3E8(&qword_27DF11670, &qword_27DF11668, &qword_238778BD8);
  v43 = v14;
  v16 = sub_23875C410();
  MEMORY[0x28223BE20](v16);
  *(&v42 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11678, &unk_238778BE0);
  sub_23861EB2C();
  sub_23875D1D0();
  v17 = sub_23875D770();
  sub_23875C3D0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116A8, &qword_238778C08) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_23875D7A0();
  sub_23875C3D0();
  v28 = v45;
  v29 = &v7[*(v46 + 36)];
  *v29 = v27;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v34 = v43;
  v35 = v44;
  v36 = *(v44 + 16);
  v36(v11, v43, v28);
  v37 = v49;
  sub_23843981C(v7, v49, &qword_27DF11658, &qword_238778BC8);
  v38 = v48;
  v36(v48, v11, v28);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116B0, &qword_238778C10);
  sub_23843981C(v37, &v38[*(v39 + 48)], &qword_27DF11658, &qword_238778BC8);
  sub_238439884(v7, &qword_27DF11658, &qword_238778BC8);
  v40 = *(v35 + 8);
  v40(v34, v28);
  sub_238439884(v37, &qword_27DF11658, &qword_238778BC8);
  v40(v11, v28);
}

uint64_t sub_2386145D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116C8, &qword_238778C50);
  sub_2386146A8(a1, a2 + *(v4 + 44));
}

uint64_t sub_2386146A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116D0, &qword_238778C58);
  v176 = *(v3 - 8);
  v177 = v3;
  v4 = *(v176 + 64);
  MEMORY[0x28223BE20](v3);
  v161 = &v145 - v5;
  v6 = type metadata accessor for AccountListView(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v155 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116D8, &qword_238778C60);
  v9 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v158 = &v145 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116E0, &qword_238778C68);
  v11 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v160 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v156 = &v145 - v14;
  MEMORY[0x28223BE20](v15);
  v159 = &v145 - v16;
  v17 = type metadata accessor for SubHeaderView(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v146 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116E8, &qword_238778C70);
  v20 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v149 = &v145 - v21;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116F0, &qword_238778C78);
  v22 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v151 = &v145 - v23;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116F8, &qword_238778C80);
  v24 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v153 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v148 = &v145 - v27;
  MEMORY[0x28223BE20](v28);
  v152 = &v145 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11700, &qword_238778C88);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v175 = &v145 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v174 = &v145 - v34;
  v35 = sub_238758850();
  v162 = *(v35 - 8);
  v163 = v35;
  v36 = *(v162 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11708, &qword_238778C90);
  v168 = *(v170 - 8);
  v39 = *(v168 + 64);
  MEMORY[0x28223BE20](v170);
  v166 = &v145 - v40;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11710, &qword_238778C98);
  v41 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v171 = &v145 - v42;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11718, &qword_238778CA0);
  v43 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v173 = &v145 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v167 = &v145 - v46;
  MEMORY[0x28223BE20](v47);
  v179 = &v145 - v48;
  sub_23875ED50();
  v172 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = *(a1 + 32);
  v50 = sub_238612E98();
  v52 = v51;
  v53 = sub_2386130A4();
  v164 = a1;
  v54 = v53;
  v56 = v55;
  sub_238449184(0, &qword_27DF0B1F0, 0x277CC1E90);
  sub_2387587F0();
  sub_238758840();
  (*(v162 + 8))(v38, v163);
  v57 = sub_23860E554();
  *&v188 = v49;
  *(&v188 + 1) = v57;
  *&v189 = v50;
  *(&v189 + 1) = v52;
  *&v190 = v54;
  *(&v190 + 1) = v56;
  v191 = vdupq_n_s64(0x4054000000000000uLL);
  v58 = *(type metadata accessor for SelectAccountsView(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
  v59 = v164;
  sub_23875D480();
  sub_23861EF78();
  v60 = v166;
  sub_23875DD70();

  v180[0] = v188;
  v180[1] = v189;
  v180[2] = v190;
  v180[3] = v191;
  sub_23861EFCC(v180);
  sub_23875E4A0();
  v61 = 1;
  sub_23875C9C0();
  v62 = v171;
  (*(v168 + 32))(v171, v60, v170);
  v63 = &v62[*(v165 + 36)];
  v64 = v180[8];
  v65 = v180[10];
  v66 = v180[11];
  *(v63 + 4) = v180[9];
  *(v63 + 5) = v65;
  *(v63 + 6) = v66;
  v67 = v180[6];
  *v63 = v180[5];
  *(v63 + 1) = v67;
  *(v63 + 2) = v180[7];
  *(v63 + 3) = v64;
  LOBYTE(v58) = sub_23875D7A0();
  sub_23875C3D0();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v62;
  v77 = v167;
  sub_2384396E4(v76, v167, &qword_27DF11710, &qword_238778C98);
  v78 = v77 + *(v169 + 36);
  *v78 = v58;
  *(v78 + 8) = v69;
  *(v78 + 16) = v71;
  *(v78 + 24) = v73;
  *(v78 + 32) = v75;
  *(v78 + 40) = 0;
  sub_2384396E4(v77, v179, &qword_27DF11718, &qword_238778CA0);
  v80 = *v59;
  v79 = v59[1];
  *&v188 = *v59;
  *(&v188 + 1) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  v81 = v181;
  swift_getKeyPath();
  *&v188 = v81;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  v82 = *(v81 + 32);

  v83 = *(v82 + 16);

  if (v83)
  {
    *&v188 = v80;
    *(&v188 + 1) = v79;
    sub_23875E1B0();
    type metadata accessor for AccountsModel(0);
    v84 = v146;
    sub_23875E420();
    sub_23875E4A0();
    sub_23875C9C0();
    v85 = v84;
    v86 = v149;
    sub_23861E9A4(v85, v149, type metadata accessor for SubHeaderView);
    v87 = (v86 + *(v145 + 36));
    v88 = v186;
    v87[4] = v185;
    v87[5] = v88;
    v87[6] = v187;
    v89 = v182;
    *v87 = v181;
    v87[1] = v89;
    v90 = v184;
    v87[2] = v183;
    v87[3] = v90;
    v91 = sub_23875D7A0();
    sub_23875C3D0();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v100 = v86;
    v101 = v151;
    sub_2384396E4(v100, v151, &qword_27DF116E8, &qword_238778C70);
    v102 = v101 + *(v147 + 36);
    *v102 = v91;
    *(v102 + 8) = v93;
    *(v102 + 16) = v95;
    *(v102 + 24) = v97;
    *(v102 + 32) = v99;
    *(v102 + 40) = 0;
    v103 = sub_23875D770();
    sub_23875C3D0();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v112 = v101;
    v113 = v148;
    sub_2384396E4(v112, v148, &qword_27DF116F0, &qword_238778C78);
    v114 = v113 + *(v150 + 36);
    *v114 = v103;
    *(v114 + 8) = v105;
    *(v114 + 16) = v107;
    *(v114 + 24) = v109;
    *(v114 + 32) = v111;
    *(v114 + 40) = 0;
    v115 = v113;
    v116 = v152;
    sub_2384396E4(v115, v152, &qword_27DF116F8, &qword_238778C80);
    *&v188 = v80;
    *(&v188 + 1) = v79;
    sub_23875E1B0();
    v117 = v155;
    sub_23875E420();
    sub_23875E4A0();
    sub_23875C9C0();
    v118 = v158;
    sub_23861E9A4(v117, v158, type metadata accessor for AccountListView);
    v119 = (v118 + *(v154 + 36));
    v120 = v193;
    v119[4] = v192;
    v119[5] = v120;
    v119[6] = v194;
    v121 = v189;
    *v119 = v188;
    v119[1] = v121;
    v122 = v191;
    v119[2] = v190;
    v119[3] = v122;
    LOBYTE(v117) = sub_23875D770();
    sub_23875C3D0();
    v124 = v123;
    v126 = v125;
    v128 = v127;
    v130 = v129;
    v131 = v156;
    sub_2384396E4(v118, v156, &qword_27DF116D8, &qword_238778C60);
    v132 = v131 + *(v157 + 36);
    *v132 = v117;
    *(v132 + 8) = v124;
    *(v132 + 16) = v126;
    *(v132 + 24) = v128;
    *(v132 + 32) = v130;
    *(v132 + 40) = 0;
    v133 = v159;
    sub_2384396E4(v131, v159, &qword_27DF116E0, &qword_238778C68);
    v134 = v153;
    sub_23843981C(v116, v153, &qword_27DF116F8, &qword_238778C80);
    v135 = v160;
    sub_23843981C(v133, v160, &qword_27DF116E0, &qword_238778C68);
    v136 = v161;
    sub_23843981C(v134, v161, &qword_27DF116F8, &qword_238778C80);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11728, &qword_238778CA8);
    sub_23843981C(v135, v136 + *(v137 + 48), &qword_27DF116E0, &qword_238778C68);
    sub_238439884(v133, &qword_27DF116E0, &qword_238778C68);
    sub_238439884(v116, &qword_27DF116F8, &qword_238778C80);
    sub_238439884(v135, &qword_27DF116E0, &qword_238778C68);
    sub_238439884(v134, &qword_27DF116F8, &qword_238778C80);
    v138 = v174;
    sub_2384396E4(v136, v174, &qword_27DF116D0, &qword_238778C58);
    v61 = 0;
  }

  else
  {
    v138 = v174;
  }

  (*(v176 + 56))(v138, v61, 1, v177);
  v139 = v179;
  v140 = v173;
  sub_23843981C(v179, v173, &qword_27DF11718, &qword_238778CA0);
  v141 = v175;
  sub_23843981C(v138, v175, &qword_27DF11700, &qword_238778C88);
  v142 = v178;
  sub_23843981C(v140, v178, &qword_27DF11718, &qword_238778CA0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11730, &qword_238778CB0);
  sub_23843981C(v141, v142 + *(v143 + 48), &qword_27DF11700, &qword_238778C88);
  sub_238439884(v138, &qword_27DF11700, &qword_238778C88);
  sub_238439884(v139, &qword_27DF11718, &qword_238778CA0);
  sub_238439884(v141, &qword_27DF11700, &qword_238778C88);
  sub_238439884(v140, &qword_27DF11718, &qword_238778CA0);
}

uint64_t sub_238615540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11690, &qword_238778BF0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v5 = &v38 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF116B8, &qword_238778C18);
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v8 = &v38 - v7;
  v9 = type metadata accessor for SelectAccountsView(0);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v38 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11678, &unk_238778BE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v38 - v17;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a1[1];
  v46 = *a1;
  v47 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  v20 = v45;
  swift_getKeyPath();
  v46 = v20;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  v21 = *(v20 + 32);

  v22 = *(v21 + 16);

  if (v22)
  {
    sub_238615B30(v5);
    sub_23843981C(v5, v8, &qword_27DF11690, &qword_238778BF0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0CAA0, &qword_27DF09580, &qword_238763900);
    sub_23861EBE4();
    sub_23875D1B0();
    sub_238439884(v5, &qword_27DF11690, &qword_238778BF0);
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v23 = qword_2814F1B90;
    v24 = sub_23875EA50();
    v25 = sub_23875EA50();
    v26 = sub_23875EA50();
    v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

    v28 = sub_23875EA80();
    v30 = v29;

    v31 = v14 + v11[9];
    sub_23875CFC0();
    v32 = a1;
    v33 = v40;
    sub_23861E93C(v32, v40, type metadata accessor for SelectAccountsView);
    v34 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v35 = swift_allocObject();
    sub_23861E9A4(v33, v35 + v34, type metadata accessor for SelectAccountsView);
    *v14 = v28;
    v14[1] = v30;
    *(v14 + v11[10]) = 0;
    v36 = (v14 + v11[11]);
    *v36 = sub_23861EEC0;
    v36[1] = v35;
    sub_23843981C(v14, v8, &qword_27DF09580, &qword_238763900);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0CAA0, &qword_27DF09580, &qword_238763900);
    sub_23861EBE4();
    sub_23875D1B0();
    sub_238439884(v14, &qword_27DF09580, &qword_238763900);
  }

  sub_2384396E4(v18, v44, &qword_27DF11678, &unk_238778BE0);
}

uint64_t sub_238615B30@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_23875D620();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11698, &unk_238778BF8);
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = v1[4];
  v13 = v1[1];
  v44 = *v1;
  v45 = v13;
  v14 = v44;
  v36 = v13;
  v37 = v44;
  v15 = v13;
  v35 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  v16 = v51;
  v44 = v14;
  v45 = v15;
  sub_23875E1B0();
  v17 = *(v51 + 56);

  v19 = v1[2];
  v18 = v1[3];
  started = type metadata accessor for SharingStartDateModel(0);
  v21 = *(started + 48);
  v22 = *(started + 52);
  swift_allocObject();

  v51 = sub_2384CA5A4();
  sub_23875E1A0();
  v23 = v44;
  v24 = v45;
  v44 = v35;
  v45 = v16;
  v46 = v17;
  v47 = v19;
  v48 = v18;
  v49 = v23;
  v50 = v24;
  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1E0, &qword_23877EA30);
  sub_2384D3460();
  sub_23861EF24();
  sub_23875C750();
  sub_23875D610();
  sub_23843A3E8(&qword_27DF116A0, &qword_27DF11698, &unk_238778BF8);
  sub_23861C5F4(&qword_27DF0DB38, MEMORY[0x277CDE400]);
  v25 = v42;
  v26 = v38;
  v27 = v40;
  sub_23875DB30();
  (*(v41 + 8))(v6, v27);
  (*(v39 + 8))(v11, v26);
  v44 = v37;
  v45 = v36;
  sub_23875E1B0();
  v28 = v51;
  swift_getKeyPath();
  v44 = v28;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v29 = *(v28 + 40);

  v30 = *(v29 + 16);

  LOBYTE(v27) = v30 == 0;
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11690, &qword_238778BF0);
  v34 = (v25 + *(result + 36));
  *v34 = KeyPath;
  v34[1] = sub_238477BAC;
  v34[2] = v32;
  return result;
}

uint64_t sub_238615F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_23875D2A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA00, &unk_238771F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875D250();
  MEMORY[0x28223BE20](v10);
  v13[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_23875C990();
  v11 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  MEMORY[0x23EE61E80](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_238616200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for SelectAccountsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
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

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  sub_23861E93C(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAccountsView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_23861E9A4(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SelectAccountsView);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x6B72616D78;
  v18[-2] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

uint64_t sub_23861652C(uint64_t a1)
{
  v2 = type metadata accessor for SelectAccountsResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = sub_238759510();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v7(v5);
  sub_23861F3B4(v5, type metadata accessor for SelectAccountsResult);
}

uint64_t sub_238616674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  sub_23875ED50();
  v3[13] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[14] = v5;
  v3[15] = v4;

  return MEMORY[0x2822009F8](sub_23861670C, v5, v4);
}

uint64_t sub_23861670C()
{
  v1 = v0[12];
  v2 = *v1;
  v0[16] = *v1;
  v3 = v1[1];
  v0[17] = v3;
  v0[5] = v2;
  v0[6] = v3;
  v0[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11650, &unk_238778BB8);
  sub_23875E1B0();
  v0[19] = v0[9];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_2386167E0;

  return sub_2386104D0();
}

uint64_t sub_2386167E0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_2386169E0;
  }

  else
  {
    v7 = v2[19];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_2386168FC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2386168FC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  sub_23875E1B0();
  sub_2386136F0(*(v0 + 88));

  v6 = *(type metadata accessor for SelectAccountsView(0) + 28);
  *(v0 + 176) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
  sub_23875D470();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2386169E0()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632F0;
  swift_getErrorValue();
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v8 = sub_23875F690();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  sub_23875F6E0();

  v10 = v0[1];

  return v10();
}

__n128 sub_238616ADC@<Q0>(uint64_t a1@<X8>)
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

  v7 = sub_23875EA80();
  v9 = v8;

  *&v30 = v7;
  *(&v30 + 1) = v9;
  sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  sub_23875D890();
  v15 = sub_23875D9E0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_2384397FC(v10, v12, v14 & 1);

  sub_23875E4A0();
  sub_23875C9C0();
  sub_23875E4A0();
  sub_23875C9C0();

  *(a1 + 96) = v34;
  *(a1 + 112) = v35;
  result = v36;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  *(a1 + 64) = v32;
  *(a1 + 80) = v33;
  *(a1 + 192) = v26;
  *(a1 + 208) = v27;
  *(a1 + 224) = v28;
  *(a1 + 240) = v29;
  *(a1 + 128) = v36;
  *(a1 + 144) = v23;
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 160) = v24;
  *(a1 + 176) = v25;
  *(a1 + 256) = 256;
  return result;
}

uint64_t sub_238616DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11520, &unk_238778830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E60, &qword_238761CE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11528, &qword_238778840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
  sub_23843A3E8(&qword_27DF11530, &qword_27DF11528, &qword_238778840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C8F0();
}

uint64_t sub_238616F8C()
{
  result = sub_23875BED0();
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

uint64_t sub_2386170A0()
{
  v0 = sub_238759510();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_238617120()
{
  sub_238617248(319, &qword_27DF11570, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_23846D0DC();
    if (v1 <= 0x3F)
    {
      sub_238449184(319, &qword_27DF0BF98, 0x277CC1E70);
      if (v2 <= 0x3F)
      {
        sub_238596E28();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238617248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AccountsModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2386173E4()
{
  sub_238617248(319, &qword_27DF115A0, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

BOOL sub_238617488()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v0 = *(v5 + 40);

  v1 = *(v0 + 16);

  sub_23875E400();
  swift_getKeyPath();
  sub_23875BE90();

  v2 = *(v4 + 48);

  return v1 < v2;
}

uint64_t sub_2386175EC()
{
  if (sub_238617488())
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v0 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v0 = qword_2814F1B90;
  }

  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_23875EA80();
  return v5;
}

uint64_t sub_23861773C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v1 = *(v11 + 40);

  v2 = *(v1 + 16);

  v3 = MEMORY[0x277D83C10];
  *(v0 + 56) = MEMORY[0x277D83B88];
  *(v0 + 64) = v3;
  *(v0 + 32) = v2;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  sub_23875EA80();
  v9 = sub_23875EAA0();

  return v9;
}

uint64_t sub_23861797C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v3 = *(v45 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v45);
  v44 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v39[-v7];
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v9 = sub_23875E400();
  MEMORY[0x28223BE20](v9);
  *&v39[-16] = a1;
  sub_23875E200();
  v46 = sub_23861773C();
  v47 = v10;
  sub_2384397A8();
  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  sub_23875D920();
  v16 = sub_23875DA60();
  v18 = v17;
  v41 = v8;
  v20 = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  sub_23875D850();
  v21 = sub_23875D9E0();
  v23 = v22;
  v40 = v24;
  v26 = v25;
  sub_2384397FC(v16, v18, v20 & 1);

  v27 = v3[2];
  v29 = v44;
  v28 = v45;
  v30 = v41;
  v27(v44, v41, v45);
  v31 = v43;
  v27(v43, v29, v28);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11618, &unk_238778B08);
  v33 = &v31[*(v32 + 48)];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v31[*(v32 + 64)];
  *v34 = v21;
  *(v34 + 1) = v23;
  v35 = v40;
  v36 = v40 & 1;
  v34[16] = v40 & 1;
  *(v34 + 3) = v26;
  sub_23843980C(v21, v23, v35 & 1);
  v37 = v3[1];

  v37(v30, v28);
  sub_2384397FC(v21, v23, v36);

  v37(v29, v28);
}

uint64_t sub_238617D14@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386175EC();
  sub_2384397A8();
  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  sub_23875D920();
  v7 = sub_23875DA60();
  v9 = v8;
  v11 = v10;

  sub_2384397FC(v2, v4, v6 & 1);

  sub_23875D850();
  v12 = sub_23875D9E0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2384397FC(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_238617E9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875CE60();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11608, &qword_238778AF0);
  sub_23861797C(v1, (a1 + *(v3 + 44)));
  v4 = sub_23875D770();
  sub_23875C3D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11610, &unk_238778AF8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_238617F68@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_23875D310();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115B8, &qword_238778A58);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115C0, &qword_238778A60);
  v34 = *(v32 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115C8, &qword_238778A68);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115D0, &qword_238778A70);
  v19 = *(v18 - 8);
  v37 = v18;
  v38 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115D8, &qword_238778A78);
  sub_23861C468();
  sub_23875D9C0();
  sub_23875D300();
  v23 = sub_23843A3E8(&qword_27DF11600, &qword_27DF115B8, &qword_238778A58);
  v24 = MEMORY[0x277CDE0D0];
  sub_23875DF50();
  (*(v39 + 8))(v5, v2);
  (*(v33 + 8))(v9, v6);
  v42 = v6;
  v43 = v2;
  v44 = v23;
  v45 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v32;
  sub_23875DD80();
  (*(v34 + 8))(v12, v26);
  v42 = v26;
  v43 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_23875DB70();
  (*(v36 + 8))(v17, v28);
  v42 = v28;
  v43 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v37;
  sub_23875DE10();
  return (*(v38 + 8))(v22, v29);
}

uint64_t sub_23861842C(uint64_t a1)
{
  v2 = type metadata accessor for AccountListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  swift_getKeyPath();
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  v5 = *(v10 + 32);

  v10 = v5;
  swift_getKeyPath();
  sub_23861E93C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountListView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23861E9A4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AccountListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115F0, &unk_238778A80);
  sub_23843A3E8(&qword_27DF0A728, &qword_27DF09548, &unk_238765CC0);
  sub_23861C5F4(&qword_27DF09508, MEMORY[0x277CC8058]);
  sub_23861C4EC();
  sub_23875E370();
}

uint64_t sub_238618748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v4 = type metadata accessor for AccountListView.AccountRow(0);
  v5 = *(v4 + 20);
  v6 = sub_238758680();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  type metadata accessor for AccountsModel(0);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875E420();
  v7 = a2 + *(v4 + 24);
  sub_23875E1A0();
  *v7 = v10;
  *(v7 + 8) = v11;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v8 = sub_23875E2D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF115F0, &unk_238778A80);
  *(a2 + *(result + 36)) = v8;
  return result;
}

double sub_238618958@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v40 - v5;
  v40 = sub_23875D990();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875E0E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11870, &qword_238778ED8);
  v44 = *(v16 - 8);
  v45 = v16;
  v17 = *(v44 + 64);
  MEMORY[0x28223BE20](v16);
  v41 = &v40 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11838, &qword_238778DF8);
  v20 = *(v19 - 8);
  v43 = v19 - 8;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v42 = &v40 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v23 = v47;
  swift_getKeyPath();
  *&v47 = v23;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v24 = *(v23 + 40);

  v25 = type metadata accessor for AccountListView.AccountRow(0);
  sub_23860E844(v2 + *(v25 + 20), v24);

  sub_23875E0D0();
  (*(v12 + 104))(v15, *MEMORY[0x277CE0FE0], v11);
  v26 = sub_23875E150();

  (*(v12 + 8))(v15, v11);
  v27 = v40;
  (*(v7 + 104))(v10, *MEMORY[0x277CE0A68], v40);
  v28 = sub_23875D840();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = sub_23875D8D0();
  sub_238439884(v6, &qword_27DF0C7F0, &qword_23877B880);
  (*(v7 + 8))(v10, v27);
  KeyPath = swift_getKeyPath();
  v47 = v26;
  LOWORD(v48) = 1;
  *(&v48 + 1) = KeyPath;
  *&v49 = v29;
  sub_23875D860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11840, &unk_238778E00);
  sub_23861F91C();
  v31 = v41;
  sub_23875DAF0();

  v32 = sub_23875DFC0();
  v33 = swift_getKeyPath();
  v34 = v42;
  (*(v44 + 32))(v42, v31, v45);
  v35 = (v34 + *(v43 + 44));
  *v35 = v33;
  v35[1] = v32;
  sub_23875E4A0();
  sub_23875C5C0();
  v36 = v46;
  sub_2384396E4(v34, v46, &qword_27DF11838, &qword_238778DF8);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11820, &qword_238778DF0) + 36));
  v38 = v48;
  *v37 = v47;
  v37[1] = v38;
  result = *&v49;
  v37[2] = v49;
  return result;
}

uint64_t sub_238618F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for AccountListView.AccountRow(0);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11760, &qword_238778D20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11768, &qword_238778D28);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11770, &qword_238778D30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  *v8 = sub_23875CE60();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11778, &unk_238778D38);
  sub_2386193D0(v2, &v8[*(v18 + 44)]);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v8, v13, &qword_27DF11760, &qword_238778D20);
  v19 = &v13[*(v10 + 44)];
  v20 = v48;
  *(v19 + 4) = v47;
  *(v19 + 5) = v20;
  *(v19 + 6) = v49;
  v21 = v44;
  *v19 = v43;
  *(v19 + 1) = v21;
  v22 = v46;
  *(v19 + 2) = v45;
  *(v19 + 3) = v22;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v23 = qword_27DF2F920;
  v24 = sub_23875D780();
  sub_2384396E4(v13, v17, &qword_27DF11768, &qword_238778D28);
  v25 = &v17[*(v14 + 36)];
  *v25 = v23;
  v25[8] = v24;
  v26 = v2 + *(v3 + 24);
  v27 = *v26;
  v28 = *(v26 + 8);
  v41 = v27;
  v42 = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  sub_23861E93C(v2, &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountListView.AccountRow);
  v29 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v30 = swift_allocObject();
  sub_23861E9A4(&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for AccountListView.AccountRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11780, &unk_238778D48);
  sub_23861F244();
  v31 = type metadata accessor for AccountInfoView(255);
  v32 = sub_23861C5F4(&qword_27DF117A0, type metadata accessor for AccountInfoView);
  v37 = v31;
  v38 = MEMORY[0x277CDF950];
  v39 = v32;
  v40 = MEMORY[0x277CDF948];
  swift_getOpaqueTypeConformance2();
  sub_23875DED0();

  return sub_238439884(v17, &qword_27DF11770, &qword_238778D30);
}

uint64_t sub_2386193D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a1;
  v162 = a2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117A8, &qword_238778D90);
  v150 = *(v151 - 8);
  v2 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v148 = &v123 - v3;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117B0, &qword_238778D98);
  v155 = *(v156 - 8);
  v4 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v172 = &v123 - v5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117B8, &qword_238778DA0);
  v6 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v158 = &v123 - v7;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117C0, &qword_238778DA8);
  v8 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v161 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v123 - v11;
  MEMORY[0x28223BE20](v12);
  v160 = &v123 - v13;
  v14 = sub_238757FD0();
  v171 = *(v14 - 8);
  v15 = *(v171 + 64);
  MEMORY[0x28223BE20](v14);
  v126 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  v17 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v153 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v123 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v125 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v147 = &v123 - v26;
  MEMORY[0x28223BE20](v27);
  v165 = &v123 - v28;
  MEMORY[0x28223BE20](v29);
  v124 = &v123 - v30;
  MEMORY[0x28223BE20](v31);
  v164 = &v123 - v32;
  MEMORY[0x28223BE20](v33);
  v140 = &v123 - v34;
  v167 = sub_23875C950();
  v173 = *(v167 - 8);
  v35 = *(v173 + 64);
  MEMORY[0x28223BE20](v167);
  v166 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for AccountListView.AccountRow(0);
  v146 = *(v135 - 8);
  v37 = *(v146 + 64);
  MEMORY[0x28223BE20](v135);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117C8, &qword_238778DB0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v123 - v41;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117D0, &qword_238778DB8);
  v141 = *(v142 - 8);
  v43 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v163 = &v123 - v44;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117D8, &qword_238778DC0);
  v45 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v144 = &v123 - v46;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117E0, &qword_238778DC8);
  v47 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v152 = &v123 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v145 = &v123 - v50;
  MEMORY[0x28223BE20](v51);
  v170 = &v123 - v52;
  sub_23875ED50();
  v149 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v53 = v169;
  sub_23861E93C(v169, &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountListView.AccountRow);
  v54 = (*(v146 + 80) + 16) & ~*(v146 + 80);
  v137 = *(v146 + 80);
  v136 = v54 + v37;
  v55 = swift_allocObject();
  v138 = v54;
  v146 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23861E9A4(v146, v55 + v54, type metadata accessor for AccountListView.AccountRow);
  MEMORY[0x28223BE20](v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117E8, &qword_238778DD0);
  sub_23861F600();
  sub_23875E200();
  v57 = v166;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF11818, &qword_27DF117C8, &qword_238778DB0);
  v58 = sub_23861C5F4(&qword_27DF0A778, MEMORY[0x277CDDB18]);
  v59 = v163;
  v60 = v167;
  v134 = v58;
  sub_23875DB30();
  v61 = *(v173 + 8);
  v173 += 8;
  v133 = v61;
  v61(v57, v60);
  (*(v39 + 8))(v42, v38);
  v62 = v140;
  v132 = v53 + *(v135 + 20);
  sub_2387585D0();
  v63 = v171;
  v64 = *(v171 + 104);
  v65 = v164;
  v131 = *MEMORY[0x277CC6D50];
  v130 = v171 + 104;
  v129 = v64;
  v64(v164);
  v66 = *(v63 + 56);
  v128 = v63 + 56;
  v127 = v66;
  v66(v65, 0, 1, v14);
  v67 = *(v168 + 48);
  sub_23843981C(v62, v21, &qword_27DF11628, &qword_238778B70);
  sub_23843981C(v65, &v21[v67], &qword_27DF11628, &qword_238778B70);
  v68 = *(v63 + 48);
  v69 = v68(v21, 1, v14);
  v135 = v68;
  if (v69 == 1)
  {
    sub_238439884(v65, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v62, &qword_27DF11628, &qword_238778B70);
    v70 = v68(&v21[v67], 1, v14);
    v71 = v170;
    if (v70 == 1)
    {
      sub_238439884(v21, &qword_27DF11628, &qword_238778B70);
      v72 = 1;
LABEL_9:
      v74 = v153;
      goto LABEL_11;
    }

LABEL_8:
    sub_238439884(v21, &qword_27DF11620, &qword_238778B68);
    v72 = 0;
    goto LABEL_9;
  }

  v73 = v124;
  sub_23843981C(v21, v124, &qword_27DF11628, &qword_238778B70);
  if (v68(&v21[v67], 1, v14) == 1)
  {
    sub_238439884(v164, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v62, &qword_27DF11628, &qword_238778B70);
    (*(v171 + 8))(v73, v14);
    v71 = v170;
    goto LABEL_8;
  }

  v75 = v62;
  v76 = v171;
  v77 = v126;
  (*(v171 + 32))(v126, &v21[v67], v14);
  sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60]);
  v72 = sub_23875E9E0();
  v78 = *(v76 + 8);
  v78(v77, v14);
  sub_238439884(v164, &qword_27DF11628, &qword_238778B70);
  sub_238439884(v75, &qword_27DF11628, &qword_238778B70);
  v78(v73, v14);
  v59 = v163;
  sub_238439884(v21, &qword_27DF11628, &qword_238778B70);
  v74 = v153;
  v71 = v170;
LABEL_11:
  v79 = v165;
  KeyPath = swift_getKeyPath();
  v81 = swift_allocObject();
  *(v81 + 16) = v72 & 1;
  v82 = v144;
  (*(v141 + 32))(v144, v59, v142);
  v83 = &v82[*(v139 + 36)];
  *v83 = KeyPath;
  v83[1] = sub_238562718;
  v83[2] = v81;
  sub_23875E4A0();
  sub_23875C9C0();
  v84 = v82;
  v85 = v145;
  sub_2384396E4(v84, v145, &qword_27DF117D8, &qword_238778DC0);
  v86 = (v85 + *(v143 + 36));
  v87 = v179;
  v86[4] = v178;
  v86[5] = v87;
  v86[6] = v180;
  v88 = v175;
  *v86 = v174;
  v86[1] = v88;
  v89 = v177;
  v86[2] = v176;
  v86[3] = v89;
  sub_2384396E4(v85, v71, &qword_27DF117E0, &qword_238778DC8);
  v90 = v146;
  sub_23861E93C(v169, v146, type metadata accessor for AccountListView.AccountRow);
  v91 = swift_allocObject();
  sub_23861E9A4(v90, v91 + v138, type metadata accessor for AccountListView.AccountRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11820, &qword_238778DF0);
  sub_23861F79C();
  v92 = v148;
  sub_23875E200();
  v93 = v166;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF11850, &qword_27DF117A8, &qword_238778D90);
  v94 = v151;
  v95 = v167;
  sub_23875DB30();
  v133(v93, v95);
  (*(v150 + 8))(v92, v94);
  sub_2387585D0();
  v96 = v147;
  v129(v147, v131, v14);
  v127(v96, 0, 1, v14);
  v97 = *(v168 + 48);
  sub_23843981C(v79, v74, &qword_27DF11628, &qword_238778B70);
  sub_23843981C(v96, v74 + v97, &qword_27DF11628, &qword_238778B70);
  v98 = v135;
  if ((v135)(v74, 1, v14) != 1)
  {
    v102 = v125;
    sub_23843981C(v74, v125, &qword_27DF11628, &qword_238778B70);
    if (v98(v74 + v97, 1, v14) != 1)
    {
      v103 = v96;
      v104 = v171;
      v105 = v126;
      (*(v171 + 32))(v126, v74 + v97, v14);
      sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60]);
      v101 = sub_23875E9E0();
      v106 = *(v104 + 8);
      v106(v105, v14);
      sub_238439884(v103, &qword_27DF11628, &qword_238778B70);
      sub_238439884(v165, &qword_27DF11628, &qword_238778B70);
      v106(v102, v14);
      sub_238439884(v74, &qword_27DF11628, &qword_238778B70);
      v100 = v170;
      goto LABEL_18;
    }

    sub_238439884(v96, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v165, &qword_27DF11628, &qword_238778B70);
    (*(v171 + 8))(v102, v14);
    v100 = v170;
    goto LABEL_16;
  }

  sub_238439884(v96, &qword_27DF11628, &qword_238778B70);
  sub_238439884(v79, &qword_27DF11628, &qword_238778B70);
  v99 = v98(v74 + v97, 1, v14);
  v100 = v170;
  if (v99 != 1)
  {
LABEL_16:
    sub_238439884(v74, &qword_27DF11620, &qword_238778B68);
    v101 = 0;
    goto LABEL_18;
  }

  sub_238439884(v74, &qword_27DF11628, &qword_238778B70);
  v101 = 1;
LABEL_18:
  v107 = v172;
  v108 = swift_getKeyPath();
  v109 = swift_allocObject();
  *(v109 + 16) = v101 & 1;
  v110 = v158;
  (*(v155 + 32))(v158, v107, v156);
  v111 = (v110 + *(v154 + 36));
  *v111 = v108;
  v111[1] = sub_238562718;
  v111[2] = v109;
  sub_23875E4C0();
  sub_23875C9C0();
  v112 = v159;
  sub_2384396E4(v110, v159, &qword_27DF117B8, &qword_238778DA0);
  v113 = (v112 + *(v157 + 36));
  v114 = v186;
  v113[4] = v185;
  v113[5] = v114;
  v113[6] = v187;
  v115 = v182;
  *v113 = v181;
  v113[1] = v115;
  v116 = v184;
  v113[2] = v183;
  v113[3] = v116;
  v117 = v160;
  sub_2384396E4(v112, v160, &qword_27DF117C0, &qword_238778DA8);
  v118 = v152;
  sub_23843981C(v100, v152, &qword_27DF117E0, &qword_238778DC8);
  v119 = v161;
  sub_23843981C(v117, v161, &qword_27DF117C0, &qword_238778DA8);
  v120 = v162;
  sub_23843981C(v118, v162, &qword_27DF117E0, &qword_238778DC8);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11858, &unk_238778E10);
  sub_23843981C(v119, v120 + *(v121 + 48), &qword_27DF117C0, &qword_238778DA8);
  sub_238439884(v117, &qword_27DF117C0, &qword_238778DA8);
  sub_238439884(v100, &qword_27DF117E0, &qword_238778DC8);
  sub_238439884(v119, &qword_27DF117C0, &qword_238778DA8);
  sub_238439884(v118, &qword_27DF117E0, &qword_238778DC8);
}