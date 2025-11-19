uint64_t sub_1B7420F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001B787E7E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B78020F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B742100C(uint64_t a1)
{
  v2 = sub_1B7422364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7421048(uint64_t a1)
{
  v2 = sub_1B7422364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.PaymentInfoResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9944D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[3];
  v18 = v1[2];
  v19 = v7;
  v20 = v1[4];
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74222FC(&v16, &v11);
  sub_1B7422364();
  sub_1B78023F8();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v11 = v16;
  v12 = v17;
  sub_1B74223B8();
  sub_1B7801FC8();
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  v10[1] = v12;
  v10[0] = v11;
  sub_1B7422224(v10);
  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.PaymentInfoResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9944E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7422364();
  sub_1B78023C8();
  if (!v2)
  {
    sub_1B742240C();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    a2[4] = v12[4];
    v10 = v12[1];
    *a2 = v12[0];
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B74213F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[3];
  v25 = a1[4];
  v5 = a1[1];
  v22[0] = *a1;
  v22[1] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v27 = a2[2];
  v28 = v7;
  v8 = a2[3];
  v29 = a2[4];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v19 = v23;
  v20 = v4;
  v21 = a1[4];
  v17 = v22[0];
  v18 = v2;
  v14 = v27;
  v15 = v8;
  v16 = a2[4];
  v12 = v26[0];
  v13 = v6;
  sub_1B74222FC(v22, v31);
  sub_1B74222FC(v26, v31);
  v10 = _s10FinanceKit18RawBankConnectDataO18PaymentInformationV2eeoiySbAE_AEtFZ_0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_1B7422224(v30);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[0] = v17;
  v31[1] = v18;
  sub_1B7422224(v31);
  return v10 & 1;
}

uint64_t RawBankConnectData.PaymentInfoRequestBody.accountId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.PaymentInfoRequestBody.accountId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.PaymentInfoRequestBody.init(accountId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static RawBankConnectData.PaymentInfoRequestBody.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8();
  }
}

uint64_t sub_1B74215C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B7421650(uint64_t a1)
{
  v2 = sub_1B7422460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B742168C(uint64_t a1)
{
  v2 = sub_1B7422460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.PaymentInfoRequestBody.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9944F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7422460();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.PaymentInfoRequestBody.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.PaymentInfoRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994508);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7422460();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801DF8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B74219E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9944F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7422460();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s10FinanceKit18RawBankConnectDataO18PaymentInformationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v28 = a1[6];
  v29 = a1[4];
  v26 = a1[5];
  v27 = a1[7];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[7];
  v24 = a2[6];
  v25 = a2[5];
  if (!v3)
  {
    v20 = a2[8];
    v21 = a1[8];
    v22 = a2[9];
    v23 = a1[9];
    sub_1B7420484(v2, 0);
    if (!v6)
    {
      sub_1B7420484(v7, 0);
      v3 = 0;
      goto LABEL_23;
    }

    sub_1B7420484(v7, v6);
    goto LABEL_12;
  }

  if (!v6)
  {
    sub_1B7420484(v2, v3);
    sub_1B7420484(v7, 0);
    sub_1B7420484(v2, v3);

LABEL_12:
    sub_1B74204FC(v2, v3);
    v12 = v7;
    v13 = v6;
LABEL_29:
    sub_1B74204FC(v12, v13);
    return 0;
  }

  v20 = a2[8];
  v21 = a1[8];
  v22 = a2[9];
  v23 = a1[9];
  if ((v2 != v7 || v3 != v6) && (sub_1B78020F8() & 1) == 0)
  {
    sub_1B7420484(v2, v3);
    sub_1B7420484(v7, v6);
    sub_1B7420484(v2, v3);
    sub_1B74204FC(v7, v6);

    v12 = v2;
    v13 = v3;
    goto LABEL_29;
  }

  if (v5 != v8 || v4 != v9)
  {
    v19 = sub_1B78020F8();
    sub_1B7420484(v2, v3);
    sub_1B7420484(v7, v6);
    sub_1B7420484(v2, v3);
    sub_1B74204FC(v7, v6);

    sub_1B74204FC(v2, v3);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v14 = v26;
    if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  sub_1B7420484(v2, v3);
  sub_1B7420484(v7, v6);
  sub_1B7420484(v2, v3);
  sub_1B74204FC(v7, v6);

LABEL_23:
  sub_1B74204FC(v2, v3);
  v14 = v26;
  if (!v26)
  {
LABEL_24:
    v15 = v29;
    sub_1B7420484(v29, 0);
    v16 = v25;
    if (v25)
    {
      sub_1B7420484(v10, v25);
LABEL_28:
      sub_1B74204FC(v15, v14);
      v12 = v10;
      v13 = v16;
      goto LABEL_29;
    }

    sub_1B7420484(v10, 0);
    v14 = 0;
    goto LABEL_34;
  }

LABEL_15:
  v15 = v29;
  v16 = v25;
  if (!v25)
  {
    sub_1B7420484(v29, v14);
    sub_1B7420484(v10, 0);
    sub_1B7420484(v29, v14);

    goto LABEL_28;
  }

  if ((v29 != v10 || v14 != v25) && (sub_1B78020F8() & 1) == 0)
  {
    sub_1B7420484(v29, v14);
    sub_1B7420484(v10, v25);
    sub_1B7420484(v29, v14);
    sub_1B74204FC(v10, v25);

    v12 = v29;
    v13 = v14;
    goto LABEL_29;
  }

  if (v28 == v24 && v27 == v11)
  {
    sub_1B7420484(v29, v14);
    sub_1B7420484(v10, v25);
    sub_1B7420484(v29, v14);
    sub_1B74204FC(v10, v25);

LABEL_34:
    sub_1B74204FC(v15, v14);
    goto LABEL_35;
  }

  v18 = sub_1B78020F8();
  sub_1B7420484(v29, v14);
  sub_1B7420484(v10, v25);
  sub_1B7420484(v29, v14);
  sub_1B74204FC(v10, v25);

  sub_1B74204FC(v29, v14);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  if (v23)
  {
    if (!v22 || (v21 != v20 || v23 != v22) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1B7422128()
{
  result = qword_1EB9944A0;
  if (!qword_1EB9944A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9944A0);
  }

  return result;
}

unint64_t sub_1B742217C()
{
  result = qword_1EB9944A8;
  if (!qword_1EB9944A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9944A8);
  }

  return result;
}

unint64_t sub_1B74221D0()
{
  result = qword_1EB9944B0;
  if (!qword_1EB9944B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9944B0);
  }

  return result;
}

unint64_t sub_1B7422254()
{
  result = qword_1EB9944C0;
  if (!qword_1EB9944C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9944C0);
  }

  return result;
}

unint64_t sub_1B74222A8()
{
  result = qword_1EB9944C8;
  if (!qword_1EB9944C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9944C8);
  }

  return result;
}

unint64_t sub_1B7422364()
{
  result = qword_1EB9944D8;
  if (!qword_1EB9944D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9944D8);
  }

  return result;
}

unint64_t sub_1B74223B8()
{
  result = qword_1EB9944E0;
  if (!qword_1EB9944E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9944E0);
  }

  return result;
}

unint64_t sub_1B742240C()
{
  result = qword_1EB9944F0;
  if (!qword_1EB9944F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9944F0);
  }

  return result;
}

unint64_t sub_1B7422460()
{
  result = qword_1EB994500;
  if (!qword_1EB994500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994500);
  }

  return result;
}

unint64_t sub_1B74224B8()
{
  result = qword_1EB994510;
  if (!qword_1EB994510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994510);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit18RawBankConnectDataO18PaymentInformationV3ACHVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7422554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B74225B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B742268C()
{
  result = qword_1EB994518;
  if (!qword_1EB994518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994518);
  }

  return result;
}

unint64_t sub_1B74226E4()
{
  result = qword_1EB994520;
  if (!qword_1EB994520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994520);
  }

  return result;
}

unint64_t sub_1B742273C()
{
  result = qword_1EB994528;
  if (!qword_1EB994528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994528);
  }

  return result;
}

unint64_t sub_1B7422794()
{
  result = qword_1EB994530;
  if (!qword_1EB994530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994530);
  }

  return result;
}

unint64_t sub_1B74227EC()
{
  result = qword_1EB994538;
  if (!qword_1EB994538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994538);
  }

  return result;
}

unint64_t sub_1B7422844()
{
  result = qword_1EB994540;
  if (!qword_1EB994540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994540);
  }

  return result;
}

unint64_t sub_1B742289C()
{
  result = qword_1EB994548;
  if (!qword_1EB994548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994548);
  }

  return result;
}

unint64_t sub_1B74228F4()
{
  result = qword_1EB994550;
  if (!qword_1EB994550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994550);
  }

  return result;
}

unint64_t sub_1B742294C()
{
  result = qword_1EB994558;
  if (!qword_1EB994558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994558);
  }

  return result;
}

unint64_t sub_1B74229A4()
{
  result = qword_1EB994560;
  if (!qword_1EB994560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994560);
  }

  return result;
}

unint64_t sub_1B74229FC()
{
  result = qword_1EB994568;
  if (!qword_1EB994568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994568);
  }

  return result;
}

unint64_t sub_1B7422A54()
{
  result = qword_1EB994570;
  if (!qword_1EB994570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994570);
  }

  return result;
}

unint64_t sub_1B7422AAC()
{
  result = qword_1EB994578;
  if (!qword_1EB994578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994578);
  }

  return result;
}

unint64_t sub_1B7422B04()
{
  result = qword_1EB994580;
  if (!qword_1EB994580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994580);
  }

  return result;
}

unint64_t sub_1B7422B5C()
{
  result = qword_1EB994588;
  if (!qword_1EB994588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994588);
  }

  return result;
}

uint64_t sub_1B7422BB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001B787E7A0 == a2;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B787E7C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851875945 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t FinanceStore.invokeFinancialInsightExtensions(with:)(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = type metadata accessor for FinanceStore.Message();
  v2[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_1B7422DC8;

  return sub_1B74231C8(a1);
}

uint64_t sub_1B7422DC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B7422F1C, 0, 0);
}

uint64_t sub_1B7422F1C()
{
  *v0[4] = v0[6];
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B7422FE0;
  v2 = v0[4];

  return sub_1B7272BB0(v2);
}

uint64_t sub_1B7422FE0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 64) = v0;

  sub_1B71A4C54(*(v2 + 32), type metadata accessor for FinanceStore.Message);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7423164, 0, 0);
}

uint64_t sub_1B7423164()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B74231C8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A8);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for InternalTransactionQuery();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7423320, 0, 0);
}

uint64_t sub_1B7423320()
{
  v29 = v0;
  v1 = v0[11];
  if (v1 && *(v1 + 16))
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[17];
    v5 = v0[18];
    v6 = v0[13];
    v7 = v0[14];
    v8 = swift_task_alloc();
    v0[22] = v8;
    *(v8 + 16) = v1;
    v0[10] = type metadata accessor for InternalTransaction(0);
    sub_1B77FFD38();
    (*(v7 + 56))(v5, 0, 1, v6);
    *v2 = MEMORY[0x1E69E7CC0];
    sub_1B7423DE0(v5, v2 + *(v3 + 20));
    sub_1B7423DE0(v5, v4);
    v9 = (*(v7 + 48))(v4, 1, v6);
    v11 = v0[17];
    v10 = v0[18];
    if (v9 == 1)
    {
      sub_1B7336A10(v0[18]);
      sub_1B7336A10(v11);
      v12 = 0;
    }

    else
    {
      v16 = v0[15];
      v15 = v0[16];
      v17 = v0[13];
      v18 = v0[14];
      (*(v18 + 32))(v15, v0[17], v17);
      sub_1B729D790();
      (*(v18 + 16))(v16, v15, v17);
      v12 = sub_1B71FA2E0(v16);
      (*(v18 + 8))(v15, v17);
      sub_1B7336A10(v10);
    }

    v19 = v0[20];
    v20 = v0[21];
    v21 = v0[19];
    *(v19 + v21[8]) = v12;
    v22 = v19 + v21[6];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v19 + v21[7];
    *v23 = 0;
    *(v23 + 8) = 1;
    sub_1B7336A78(v19, v20);
    v0[5] = v21;
    v0[6] = &protocol witness table for InternalTransactionQuery;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_1B7423E50(v20, boxed_opaque_existential_1);
    static DeviceInfo.deviceType.getter(v28);
    if (v28[0])
    {
      sub_1B7201CA4();
      swift_allocError();
      *v25 = 3;
      swift_willThrow();
      sub_1B71A4C54(v0[21], type metadata accessor for InternalTransactionQuery);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));

      v26 = v0[1];

      return v26();
    }

    else
    {
      v27 = swift_task_alloc();
      v0[23] = v27;
      *v27 = v0;
      v27[1] = sub_1B7423718;

      return sub_1B739F168((v0 + 7), (v0 + 2));
    }
  }

  else
  {

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_1B7423718()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1B7423928;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_1B7423834;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7423834()
{
  sub_1B71A4C54(*(v0 + 168), type metadata accessor for InternalTransactionQuery);
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 64);

  sub_1B7201CF8(v1, v3);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1B7423928()
{
  sub_1B71A4C54(*(v0 + 168), type metadata accessor for InternalTransactionQuery);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7423A08@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994590);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994598);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F708);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB9945A0, &qword_1EB98F5A0);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v5 + 8))(v7, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9945A8);
  a2[4] = sub_1B7423EB4();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1B728216C(&qword_1EB9945D0, &qword_1EB994598);
  sub_1B728216C(&qword_1EB9945D8, &qword_1EB994590);
  sub_1B728216C(&qword_1EB996850, &qword_1EB98F708);
  sub_1B71A6970(&qword_1EB99DBE0);
  v16 = v19;
  sub_1B77FF028();
  (*(v20 + 8))(v11, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1B7423DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7423E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransactionQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7423EB4()
{
  result = qword_1EB9945B0;
  if (!qword_1EB9945B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9945A8);
    sub_1B7423F40();
    sub_1B74240C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9945B0);
  }

  return result;
}

unint64_t sub_1B7423F40()
{
  result = qword_1EB9945B8;
  if (!qword_1EB9945B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994598);
    sub_1B742403C(&qword_1EB98F738, &qword_1EB98F740);
    sub_1B742403C(&qword_1EB98F710, &qword_1EB98F718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9945B8);
  }

  return result;
}

uint64_t sub_1B742403C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F708);
    sub_1B71A6970(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74240C4()
{
  result = qword_1EB9945C0;
  if (!qword_1EB9945C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994590);
    sub_1B728216C(&qword_1EB9945C8, &qword_1EB98F5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9945C0);
  }

  return result;
}

uint64_t BankConnectPaymentInfoDataLoader.__allocating_init(environment:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B71E4C44(a1, v2 + 16);
  return v2;
}

uint64_t BankConnectPaymentInfoDataLoader.loadPaymentInformation(for:userPresence:)(uint64_t *a1, uint64_t a2)
{
  *(v3 + 120) = a2;
  *(v3 + 128) = v2;
  v5 = *(type metadata accessor for UserPresence() - 8);
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 + 64);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = type metadata accessor for BankConnectConsent();
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v3 + 168) = v6;
  *(v3 + 176) = v7;
  *(v3 + 184) = *(a1 + 1);
  *(v3 + 200) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B74242E4, 0, 0);
}

uint64_t sub_1B74242E4()
{
  v32 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v7 = v0[22];
    v6 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    MEMORY[0x1B8CA4D30](v7, v6);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    MEMORY[0x1B8CA4D30](v5, v4);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v10 = sub_1B71A3EF8(0, 0xE000000000000000, &v31);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1B7198000, v2, v3, "Fetching payment information for: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  v12 = v0[24];
  v11 = v0[25];
  v27 = *(v0 + 11);
  v13 = v0[21];
  v14 = v0[16];
  v15 = v14[5];
  v16 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v15);
  (*(v16 + 24))(v15, v16);
  v17 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
  v28 = v27;
  v29 = v12;
  v30 = v11;
  BankConnectConsentStoring.getAuthorizedConsent(grantingAccessTo:)(&v28, v17, v13);
  v19 = v0[20];
  v18 = v0[21];
  __swift_destroy_boxed_opaque_existential_1((v0 + 10));
  v21 = v14[5];
  v20 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v21);
  v22 = (v18 + *(v19 + 20));
  v23 = *v22;
  v24 = v22[1];
  v25 = swift_task_alloc();
  v0[26] = v25;
  *v25 = v0;
  v25[1] = sub_1B74246A4;

  return BankConnectDataLoaderEnvironment.makeTaskQueue(forConsentID:)(v23, v24, v21, v20);
}

uint64_t sub_1B74246A4(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B74247A4, 0, 0);
}

uint64_t sub_1B74247A4()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  sub_1B74277B0(v0[15], v6, type metadata accessor for UserPresence);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v0[28] = v10;
  v10[2] = v7;
  v10[3] = v5;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v2;
  sub_1B74276E8(v6, v10 + v9, type metadata accessor for UserPresence);
  sub_1B7389608(&qword_1EB992D70, type metadata accessor for BankConnectTaskQueue);

  if (v1)
  {
    swift_getObjectType();
    v11 = sub_1B7800CD8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7424920, v11, v13);
}

uint64_t sub_1B7424920()
{
  v2 = v0[27];
  v1 = v0[28];
  v0[2] = v0;
  v0[3] = sub_1B74249D8;
  v3 = swift_continuation_init();
  sub_1B7388288(v3, v2, &unk_1B782A0E8, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B74249D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = *(v1 + 216);
    swift_willThrow();
    v4 = sub_1B7424BA4;
    v5 = v3;
  }

  else
  {

    v4 = sub_1B7424B0C;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B7424B0C()
{
  v1 = *(v0 + 168);

  sub_1B7427750(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7424BA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7424C0C, 0, 0);
}

uint64_t sub_1B7424C0C()
{
  v1 = *(v0 + 168);

  sub_1B7427750(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7424CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_1B738077C;

  return sub_1B7424D5C(v7 + 2, a7);
}

uint64_t sub_1B7424D5C(uint64_t *a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  v5 = sub_1B78004C8();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  type metadata accessor for BankConnectResponseHeaders();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9945E0);
  *(v3 + 152) = swift_task_alloc();
  type metadata accessor for BankConnectConsent();
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v3 + 160) = v6;
  *(v3 + 168) = v7;
  *(v3 + 176) = *(a1 + 1);
  *(v3 + 192) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B7424EC8, 0, 0);
}

uint64_t sub_1B7424EC8()
{
  v25 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v20 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  (*(v5 + 24))(v4, v5);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  v22 = v20;
  v23 = v2;
  v24 = v1;
  (*(v7 + 16))(&v22, v6, v7);
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  isa = BankConnectDataLoaderEnvironment.makeBackgroundContext()().super.isa;
  *(v0 + 200) = isa;
  *(swift_task_alloc() + 16) = isa;
  sub_1B7801468();
  v9 = *(v0 + 192);
  v19 = *(v0 + 160);
  v21 = *(v0 + 176);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);

  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  v14 = BankConnectDataLoaderEnvironment.makeWebServiceClient()(v12, v13);
  *(v0 + 208) = v14;
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v19;
  *(v15 + 40) = v21;
  *(v15 + 56) = v9;
  *(v15 + 64) = v11;
  *(v15 + 72) = v0 + 16;
  *(v15 + 80) = v10;
  *(v15 + 88) = isa;
  v16 = swift_task_alloc();
  *(v0 + 224) = v16;
  *v16 = v0;
  v16[1] = sub_1B74251BC;
  v17 = *(v0 + 152);

  return sub_1B76A2248(v17, dword_1B782A1B0);
}

uint64_t sub_1B74251BC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1B742566C;
  }

  else
  {

    v2 = sub_1B74252D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B74252D8()
{
  v31 = v0;
  v1 = *(v0 + 232);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  sub_1B74277B0(v2 + *(v3 + 28), v4, type metadata accessor for BankConnectResponseHeaders);
  v30[0] = 0;
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v4, v30, v5, v6);
  if (v1)
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = *(v0 + 136);

    sub_1B7427750(v9, type metadata accessor for RawBankConnectData.Consent);
  }

  else
  {
    v10 = *(v0 + 104);
    sub_1B7427750(*(v0 + 136), type metadata accessor for RawBankConnectData.Consent);
    v11 = v10[5];
    v12 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
    (*(v12 + 32))(v11, v12);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v13);
    (*(v14 + 8))(v13, v14);
    v15 = *(v0 + 192);
    v16 = *(v0 + 200);
    v18 = *(v0 + 176);
    v17 = *(v0 + 184);
    v19 = *(v0 + 168);
    v20 = *(v0 + 152);
    v21 = *(v0 + 128);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    v22 = swift_task_alloc();
    v22[2] = v20;
    v22[3] = v19;
    v22[4] = v18;
    v22[5] = v17;
    v22[6] = v15;
    v22[7] = v16;
    v22[8] = v21;
    v23 = swift_task_alloc();
    v23[2] = sub_1B74276C0;
    v23[3] = v22;
    v23[4] = v16;
    sub_1B7801468();
    v24 = *(v0 + 200);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v27 = *(v0 + 128);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);

    (*(v29 + 8))(v27, v28);
  }

  sub_1B7205418(v7, &qword_1EB9945E0);
  sub_1B7427750(v8, type metadata accessor for BankConnectConsent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1B742566C()
{
  v1 = v0[25];
  v2 = v0[20];

  sub_1B7427750(v2, type metadata accessor for BankConnectConsent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B7425740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v13;
  v8[19] = v14;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D88);
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8[21] = swift_task_alloc();
  v9 = sub_1B77FF988();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for FinanceNetworkError();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = type metadata accessor for BankConnectErrorWithConsent(0);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = type metadata accessor for BankConnectWebServiceAccountPaymentInfoRequest(0);
  v8[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7425984, 0, 0);
}

uint64_t sub_1B7425984()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  sub_1B74277B0(v0[12], v1, type metadata accessor for BankConnectConsent);
  sub_1B74277B0(v3, v1 + *(v2 + 24), type metadata accessor for UserPresence);
  v6 = (v1 + *(v2 + 20));
  *v6 = v5;
  v6[1] = v4;

  v0[5] = v2;
  v0[6] = &protocol witness table for BankConnectWebServiceAccountPaymentInfoRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B74277B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountPaymentInfoRequest);
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_1B7425AD0;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B7425AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;

  if (v3)
  {
    v6 = sub_1B7426610;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7425BF0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7425BF0()
{
  v79 = v0;
  v1 = *(v0 + 328);
  sub_1B77834F4(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 80));
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  if (v1)
  {
    sub_1B7427750(v5, type metadata accessor for BankConnectWebServiceAccountPaymentInfoRequest);

    sub_1B720A388(v4, v2);
    *(v0 + 56) = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 264);
      v8 = *(v0 + 272);
      v9 = *(v0 + 240);
      v10 = *(v0 + 248);
      v11 = *(v0 + 144);

      sub_1B74276E8(v8, v7, type metadata accessor for BankConnectErrorWithConsent);
      v12 = v11[3];
      v13 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v76 = *(v10 + 20);
      sub_1B74277B0(v7 + v76, v9, type metadata accessor for FinanceNetworkError);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 7)
      {
        sub_1B7427750(*(v0 + 240), type metadata accessor for FinanceNetworkError);
      }

      v15 = *(v0 + 264);
      LOBYTE(v78[0]) = EnumCaseMultiPayload == 7;
      BankConnectConsentStoring.updateConsent(_:consentStatus:)(v15, v78, v12, v13);
      sub_1B74277B0(v7 + v76, *(v0 + 232), type metadata accessor for FinanceNetworkError);
      v24 = swift_getEnumCaseMultiPayload();
      v25 = *(v0 + 232);
      if (v24 == 1)
      {
        v51 = *v25;
        *(v0 + 72) = *v25;
        v52 = v51;
        if (swift_dynamicCast())
        {
          v53 = *(v0 + 264);
          v75 = *(v0 + 136);
          v55 = v11[3];
          v54 = v11[4];
          __swift_project_boxed_opaque_existential_1(*(v0 + 144), v55);
          v56 = *v53;
          v57 = v53[1];
          v58 = *(v54 + 56);

          v58(v56, v57, v75, v55, v54);
        }

        else
        {
        }
      }

      else if (v24 == 6)
      {
        v26 = *(v0 + 200);
        v27 = *(v0 + 176);
        v28 = *(v0 + 184);
        v77 = *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
        (*(v28 + 32))(v26, v25, v27);
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v30 = *(v0 + 256);
        v29 = *(v0 + 264);
        v32 = *(v0 + 192);
        v31 = *(v0 + 200);
        v33 = *(v0 + 176);
        v34 = *(v0 + 184);
        v35 = sub_1B78000B8();
        __swift_project_value_buffer(v35, qword_1EDAF65B0);
        v74 = *(v34 + 16);
        v74(v32, v31, v33);
        sub_1B74277B0(v29, v30, type metadata accessor for BankConnectErrorWithConsent);
        v36 = sub_1B7800098();
        v37 = sub_1B78011F8();
        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 256);
        if (v38)
        {
          v72 = v37;
          v41 = *(v0 + 184);
          v40 = *(v0 + 192);
          v42 = *(v0 + 176);
          v43 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v78[0] = v71;
          *v43 = 136315650;
          sub_1B7389608(&qword_1EB991200, MEMORY[0x1E6969530]);
          v44 = sub_1B7802068();
          v69 = v39;
          v46 = v45;
          v73 = *(v41 + 8);
          v73(v40, v42);
          v47 = sub_1B71A3EF8(v44, v46, v78);

          *(v43 + 4) = v47;
          *(v43 + 12) = 512;
          *(v43 + 14) = v77;
          *(v43 + 16) = 2112;
          v48 = *(v10 + 20);
          sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
          swift_allocError();
          sub_1B74277B0(v69 + v48, v49, type metadata accessor for FinanceNetworkError);
          v50 = _swift_stdlib_bridgeErrorToNSError();
          sub_1B7427750(v69, type metadata accessor for BankConnectErrorWithConsent);
          *(v43 + 18) = v50;
          *v70 = v50;
          _os_log_impl(&dword_1B7198000, v36, v72, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@", v43, 0x1Au);
          sub_1B7205418(v70, &qword_1EB9910D0);
          MEMORY[0x1B8CA7A40](v70, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v71);
          MEMORY[0x1B8CA7A40](v71, -1, -1);
          MEMORY[0x1B8CA7A40](v43, -1, -1);
        }

        else
        {
          v60 = *(v0 + 184);
          v59 = *(v0 + 192);
          v61 = *(v0 + 176);

          sub_1B7427750(v39, type metadata accessor for BankConnectErrorWithConsent);
          v73 = *(v60 + 8);
          v73(v59, v61);
        }

        v62 = *(v0 + 200);
        v63 = *(v0 + 176);
        v64 = *(v0 + 184);
        v65 = *(v0 + 168);
        type metadata accessor for ManagedInstitution();
        v74(v65, v62, v63);
        (*(v64 + 56))(v65, 0, 1, v63);
        static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
        sub_1B7205418(v65, &qword_1EB98EBD0);
        v73(v62, v63);
      }

      else
      {
        sub_1B7427750(*(v0 + 232), type metadata accessor for FinanceNetworkError);
      }

      v66 = *(v0 + 264);
      sub_1B77AE5D0(v7 + v76);
      sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      sub_1B74277B0(v7 + v76, v67, type metadata accessor for FinanceNetworkError);
      swift_willThrow();
      sub_1B7427750(v66, type metadata accessor for BankConnectErrorWithConsent);
    }

    else
    {
      v17 = *(v0 + 216);

      *(v0 + 64) = v1;
      v18 = v1;
      v19 = swift_dynamicCast();
      v20 = *(v17 + 56);
      if (v19)
      {
        v21 = *(v0 + 224);
        v22 = *(v0 + 160);
        v20(v22, 0, 1, *(v0 + 208));
        sub_1B74276E8(v22, v21, type metadata accessor for FinanceNetworkError);
        sub_1B77AE5D0(v21);
        sub_1B7427750(v21, type metadata accessor for FinanceNetworkError);
      }

      else
      {
        v23 = *(v0 + 160);
        v20(v23, 1, 1, *(v0 + 208));
        sub_1B7205418(v23, &qword_1EB992D88);
      }

      swift_willThrow();
    }

    v16 = *(v0 + 8);
  }

  else
  {
    sub_1B7427750(v5, type metadata accessor for BankConnectWebServiceAccountPaymentInfoRequest);

    sub_1B720A388(v4, v2);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1B7426610()
{
  v77 = v0;
  sub_1B7427750(*(v0 + 288), type metadata accessor for BankConnectWebServiceAccountPaymentInfoRequest);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 328);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 264);
    v3 = *(v0 + 272);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v7 = *(v0 + 144);

    sub_1B74276E8(v3, v4, type metadata accessor for BankConnectErrorWithConsent);
    v8 = v7[3];
    v74 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v71 = v5;
    v9 = *(v5 + 20);
    v10 = v4;
    v73 = v9;
    sub_1B74277B0(v4 + v9, v6, type metadata accessor for FinanceNetworkError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 7)
    {
      sub_1B7427750(*(v0 + 240), type metadata accessor for FinanceNetworkError);
    }

    v12 = *(v0 + 264);
    LOBYTE(v76[0]) = EnumCaseMultiPayload == 7;
    BankConnectConsentStoring.updateConsent(_:consentStatus:)(v12, v76, v8, v74);
    sub_1B74277B0(v4 + v73, *(v0 + 232), type metadata accessor for FinanceNetworkError);
    v20 = swift_getEnumCaseMultiPayload();
    v21 = *(v0 + 232);
    if (v20 == 1)
    {
      v47 = *v21;
      *(v0 + 72) = *v21;
      v48 = v47;
      if (swift_dynamicCast())
      {
        v49 = *(v0 + 264);
        v50 = *(v0 + 136);
        v51 = v7[3];
        v52 = v7[4];
        __swift_project_boxed_opaque_existential_1(*(v0 + 144), v51);
        v54 = *v49;
        v53 = v49[1];
        v72 = *(v52 + 56);

        v72(v54, v53, v50, v51, v52);
      }

      else
      {
      }
    }

    else if (v20 == 6)
    {
      v22 = *(v0 + 200);
      v23 = *(v0 + 176);
      v24 = *(v0 + 184);
      v75 = *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
      (*(v24 + 32))(v22, v21, v23);
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 256);
      v25 = *(v0 + 264);
      v28 = *(v0 + 192);
      v27 = *(v0 + 200);
      v29 = *(v0 + 176);
      v30 = *(v0 + 184);
      v31 = sub_1B78000B8();
      __swift_project_value_buffer(v31, qword_1EDAF65B0);
      v70 = *(v30 + 16);
      v70(v28, v27, v29);
      sub_1B74277B0(v25, v26, type metadata accessor for BankConnectErrorWithConsent);
      v32 = sub_1B7800098();
      v33 = sub_1B78011F8();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 256);
      if (v34)
      {
        v68 = v33;
        v37 = *(v0 + 184);
        v36 = *(v0 + 192);
        v38 = *(v0 + 176);
        v39 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v76[0] = v67;
        *v39 = 136315650;
        sub_1B7389608(&qword_1EB991200, MEMORY[0x1E6969530]);
        v40 = sub_1B7802068();
        v42 = v41;
        v69 = *(v37 + 8);
        v69(v36, v38);
        v43 = sub_1B71A3EF8(v40, v42, v76);

        *(v39 + 4) = v43;
        *(v39 + 12) = 512;
        *(v39 + 14) = v75;
        *(v39 + 16) = 2112;
        v44 = *(v71 + 20);
        sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        sub_1B74277B0(v35 + v44, v45, type metadata accessor for FinanceNetworkError);
        v46 = _swift_stdlib_bridgeErrorToNSError();
        sub_1B7427750(v35, type metadata accessor for BankConnectErrorWithConsent);
        *(v39 + 18) = v46;
        *v66 = v46;
        _os_log_impl(&dword_1B7198000, v32, v68, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@", v39, 0x1Au);
        sub_1B7205418(v66, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](v66, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1B8CA7A40](v67, -1, -1);
        MEMORY[0x1B8CA7A40](v39, -1, -1);
      }

      else
      {
        v56 = *(v0 + 184);
        v55 = *(v0 + 192);
        v57 = *(v0 + 176);

        sub_1B7427750(v35, type metadata accessor for BankConnectErrorWithConsent);
        v69 = *(v56 + 8);
        v69(v55, v57);
      }

      v58 = *(v0 + 200);
      v59 = *(v0 + 176);
      v60 = *(v0 + 184);
      v61 = *(v0 + 168);
      type metadata accessor for ManagedInstitution();
      v70(v61, v58, v59);
      (*(v60 + 56))(v61, 0, 1, v59);
      static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
      sub_1B7205418(v61, &qword_1EB98EBD0);
      v69(v58, v59);
    }

    else
    {
      sub_1B7427750(*(v0 + 232), type metadata accessor for FinanceNetworkError);
    }

    v62 = *(v0 + 264);
    sub_1B77AE5D0(v10 + v73);
    sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B74277B0(v10 + v73, v63, type metadata accessor for FinanceNetworkError);
    swift_willThrow();
    sub_1B7427750(v62, type metadata accessor for BankConnectErrorWithConsent);
  }

  else
  {
    v13 = *(v0 + 216);

    *(v0 + 64) = v1;
    v14 = v1;
    v15 = swift_dynamicCast();
    v16 = *(v13 + 56);
    if (v15)
    {
      v17 = *(v0 + 224);
      v18 = *(v0 + 160);
      v16(v18, 0, 1, *(v0 + 208));
      sub_1B74276E8(v18, v17, type metadata accessor for FinanceNetworkError);
      sub_1B77AE5D0(v17);
      sub_1B7427750(v17, type metadata accessor for FinanceNetworkError);
    }

    else
    {
      v19 = *(v0 + 160);
      v16(v19, 1, 1, *(v0 + 208));
      sub_1B7205418(v19, &qword_1EB992D88);
    }

    swift_willThrow();
  }

  v64 = *(v0 + 8);

  return v64();
}

id sub_1B7426F70(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9945E0) + 28);
  if ((*(a1 + *(type metadata accessor for BankConnectResponseHeaders() + 20) + v14 + 2) & 1) == 0)
  {
    v26 = a5;
    type metadata accessor for ManagedInstitution();
    v15 = sub_1B77FF988();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v7 = v6;
    a5 = v26;
    static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
    sub_1B7205418(v13, &qword_1EB98EBD0);
  }

  type metadata accessor for ManagedAccountPaymentInfoImporter();
  swift_initStackObject();
  v16 = a1[2];
  v17 = *a1;
  v42 = a1[1];
  v43 = v16;
  v18 = a1[2];
  v19 = a1[4];
  v44 = a1[3];
  v45 = v19;
  v20 = *a1;
  v38 = v18;
  v39 = v44;
  v40 = a1[4];
  v41 = v20;
  v36 = v17;
  v37 = v42;
  v30[1] = v27;
  v30[2] = v28;
  v30[3] = v29;
  v30[4] = a5;
  sub_1B74222FC(&v41, &v31);
  v21 = ManagedAccountPaymentInfoImporter.insertOrUpdateAccountPaymentInfo(_:with:context:key:)(&v36);
  if (v7)
  {
    v33 = v38;
    v34 = v39;
    v35 = v40;
    v31 = v36;
    v32 = v37;
    return sub_1B7422224(&v31);
  }

  else
  {
    sub_1B720A388(v21, v22);
    v33 = v38;
    v34 = v39;
    v35 = v40;
    v31 = v36;
    v32 = v37;
    sub_1B7422224(&v31);
    v30[0] = 0;
    if ([a6 save_])
    {
      return v30[0];
    }

    else
    {
      v24 = v30[0];
      sub_1B77FF318();

      return swift_willThrow();
    }
  }
}

uint64_t BankConnectPaymentInfoDataLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B742728C(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return BankConnectPaymentInfoDataLoader.loadPaymentInformation(for:userPresence:)(a1, a2);
}

uint64_t sub_1B7427334(uint64_t a1)
{
  v4 = *(type metadata accessor for UserPresence() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7201BB0;

  return sub_1B7424CA4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t dispatch thunk of BankConnectPaymentInfoDataLoading.loadPaymentInformation(for:userPresence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B74275C0(uint64_t a1)
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
  v11[1] = sub_1B723838C;

  return sub_1B7425740(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B74276E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7427750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B74277B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t BalanceCalculation.currencyCode.getter()
{
  v1 = v0;
  v2 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7427964(v1, v7);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v9 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48)];
    sub_1B74279C8(v7, v4);
    v8 = *(v4 + 3);

    sub_1B7427A2C(v4);
    v4 = v9;
  }

  else
  {
    sub_1B74279C8(v7, v4);
    v8 = *(v4 + 3);
  }

  sub_1B7427A2C(v4);
  return v8;
}

uint64_t sub_1B7427964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceCalculation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B74279C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7427A2C(uint64_t a1)
{
  v2 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BalanceCalculation.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B7427964(v2, v9);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
    sub_1B74279C8(v9, v6);
    v14 = *(v6 + 1);
    v18 = *v6;
    v19 = v14;
    v20 = *(v6 + 4);
    sub_1B7215720(&v18, v17);
    sub_1B7427A2C(v6);
    v15 = v19;
    *a1 = v18;
    *(a1 + 16) = v15;
    *(a1 + 32) = v20;
    return sub_1B7427A2C(&v9[v13]);
  }

  else
  {
    sub_1B74279C8(v9, v6);
    v10 = *(v6 + 1);
    v18 = *v6;
    v19 = v10;
    v20 = *(v6 + 4);
    sub_1B7215720(&v18, v17);
    result = sub_1B7427A2C(v6);
    v12 = v19;
    *a1 = v18;
    *(a1 + 16) = v12;
    *(a1 + 32) = v20;
  }

  return result;
}

uint64_t BalanceCalculation.asOf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7427964(v2, v9);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48)];
    sub_1B74279C8(v9, v6);
    v13 = *(v4 + 20);
    v14 = sub_1B77FF988();
    (*(*(v14 - 8) + 16))(a1, &v6[v13], v14);
    sub_1B7427A2C(v6);
    v6 = v12;
  }

  else
  {
    sub_1B74279C8(v9, v6);
    v10 = *(v4 + 20);
    v11 = sub_1B77FF988();
    (*(*(v11 - 8) + 16))(a1, &v6[v10], v11);
  }

  return sub_1B7427A2C(v6);
}

uint64_t Order.ReturnStatus.localizedTitle.getter()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v2 = qword_1EDAF93B0;
    }

    else if (v1 == 4)
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v2 = qword_1EDAF93B0;
    }

    else
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v2 = qword_1EDAF93B0;
    }
  }

  else if (*v0)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDAF93B0;
  }

  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_1B7800868();
  return v7;
}

uint64_t sub_1B7428058(uint64_t a1)
{
  v2 = sub_1B7428AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7428094(uint64_t a1)
{
  v2 = sub_1B7428AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74280D0()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x6575737369;
  v4 = 0x6574656C706D6F63;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7961576568546E6FLL;
  if (v1 != 1)
  {
    v5 = 0x69737365636F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B742818C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B742D520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74281B4(uint64_t a1)
{
  v2 = sub_1B7428A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74281F0(uint64_t a1)
{
  v2 = sub_1B7428A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B742822C(uint64_t a1)
{
  v2 = sub_1B7428B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7428268(uint64_t a1)
{
  v2 = sub_1B7428B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74282A4(uint64_t a1)
{
  v2 = sub_1B7428B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74282E0(uint64_t a1)
{
  v2 = sub_1B7428B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B742831C(uint64_t a1)
{
  v2 = sub_1B7428C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7428358(uint64_t a1)
{
  v2 = sub_1B7428C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7428394(uint64_t a1)
{
  v2 = sub_1B7428C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74283D0(uint64_t a1)
{
  v2 = sub_1B7428C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B742840C(uint64_t a1)
{
  v2 = sub_1B7428BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7428448(uint64_t a1)
{
  v2 = sub_1B7428BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ReturnStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9945E8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9945F0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9945F8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994600);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994608);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994610);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994618);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7428A70();
  sub_1B78023F8();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1B7428B6C();
      v21 = v33;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1B7428B18();
      v21 = v36;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1B7428AC4();
      v21 = v39;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1B7428C14();
      v21 = v27;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1B7428BC0();
      v21 = v30;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1B7428C68();
  v22 = v42;
  sub_1B7801ED8();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1B7428A70()
{
  result = qword_1EB994620;
  if (!qword_1EB994620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994620);
  }

  return result;
}

unint64_t sub_1B7428AC4()
{
  result = qword_1EB994628;
  if (!qword_1EB994628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994628);
  }

  return result;
}

unint64_t sub_1B7428B18()
{
  result = qword_1EB994630;
  if (!qword_1EB994630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994630);
  }

  return result;
}

unint64_t sub_1B7428B6C()
{
  result = qword_1EB994638;
  if (!qword_1EB994638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994638);
  }

  return result;
}

unint64_t sub_1B7428BC0()
{
  result = qword_1EB994640;
  if (!qword_1EB994640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994640);
  }

  return result;
}

unint64_t sub_1B7428C14()
{
  result = qword_1EB994648;
  if (!qword_1EB994648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994648);
  }

  return result;
}

unint64_t sub_1B7428C68()
{
  result = qword_1EB994650;
  if (!qword_1EB994650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994650);
  }

  return result;
}

uint64_t Order.ReturnStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t Order.ReturnStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994658);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994660);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994668);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994670);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994678);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994680);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994688);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B7428A70();
  v22 = v56;
  sub_1B78023C8();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1B7801E98();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1B721CE5C();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1B7801B18();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v36 = &type metadata for Order.ReturnStatus;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1B7428B6C();
          sub_1B7801D38();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1B7428B18();
          sub_1B7801D38();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1B7428AC4();
          sub_1B7801D38();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1B7428C14();
            v31 = v56;
            sub_1B7801D38();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1B7428BC0();
            v31 = v51;
            sub_1B7801D38();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1B7428C68();
          sub_1B7801D38();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t Order.Return.lineItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Order.Return.statusDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Order.Return.statusDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Order.Return.notes.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Order.Return.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t type metadata accessor for Order.Return()
{
  result = qword_1EB9946F0;
  if (!qword_1EB9946F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Order.Return.returnNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.Return() + 44));

  return v1;
}

uint64_t Order.Return.returnNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.Return() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Order.Return.carrier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.Return() + 48));

  return v1;
}

uint64_t Order.Return.carrier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.Return() + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Order.Return.trackingNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.Return() + 52));

  return v1;
}

uint64_t Order.Return.trackingNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.Return() + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Order.Return.returnLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.Return() + 56));

  return v1;
}

uint64_t Order.Return.returnLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.Return() + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Order.Return.returnIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.Return() + 64));

  return v1;
}

uint64_t Order.Return.returnIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.Return() + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_1B7429E8C(char a1)
{
  result = 0x6D657449656E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x7365746F6ELL;
      break;
    case 4:
      result = 0x6974616974696E69;
      break;
    case 5:
      result = 0x4466664F706F7264;
      break;
    case 6:
      result = 0x61446E7275746572;
      break;
    case 7:
      result = 0x754E6E7275746572;
      break;
    case 8:
      result = 0x72656972726163;
      break;
    case 9:
      result = 0x676E696B63617274;
      break;
    case 10:
      result = 0x614C6E7275746572;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B742A034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B742D730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B742A068(uint64_t a1)
{
  v2 = sub_1B742C8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B742A0A4(uint64_t a1)
{
  v2 = sub_1B742C8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.Return.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994690);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B742C8C8();
  sub_1B78023F8();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946A0);
  sub_1B742C9C4(&qword_1EB9946A8, sub_1B742C91C);
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 8);
    v11 = 1;
    sub_1B742C970();
    sub_1B7801FC8();
    LOBYTE(v12) = 2;
    sub_1B7801EF8();
    LOBYTE(v12) = 3;
    sub_1B7801EF8();
    type metadata accessor for Order.Return();
    LOBYTE(v12) = 4;
    sub_1B77FF988();
    sub_1B71A70B8(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    LOBYTE(v12) = 5;
    sub_1B7801F38();
    LOBYTE(v12) = 6;
    sub_1B7801F38();
    LOBYTE(v12) = 7;
    sub_1B7801EF8();
    LOBYTE(v12) = 8;
    sub_1B7801EF8();
    LOBYTE(v12) = 9;
    sub_1B7801EF8();
    LOBYTE(v12) = 10;
    sub_1B7801EF8();
    LOBYTE(v12) = 11;
    sub_1B77FF4F8();
    sub_1B71A70B8(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801F38();
    LOBYTE(v12) = 12;
    sub_1B7801F78();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Order.Return.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v58 = v54 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v54 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946C0);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = v54 - v12;
  v14 = type metadata accessor for Order.Return();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 32);
  v19 = sub_1B77FF988();
  v20 = *(*(v19 - 8) + 56);
  v65 = v18;
  v20(&v17[v18], 1, 1, v19);
  v67 = v14[9];
  v20(&v17[v67], 1, 1, v19);
  v66 = v14[10];
  v20(&v17[v66], 1, 1, v19);
  v21 = v14[15];
  v22 = sub_1B77FF4F8();
  v23 = *(*(v22 - 8) + 56);
  v64 = v21;
  v68 = v17;
  v23(&v17[v21], 1, 1, v22);
  v24 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B742C8C8();
  v60 = v13;
  v25 = v62;
  sub_1B78023C8();
  if (v25)
  {
    v26 = v65;
    __swift_destroy_boxed_opaque_existential_1(v63);
    swift_bridgeObjectRelease_n();
    v28 = v68;
    sub_1B7205418(v68 + v26, &qword_1EB98EBD0);
    sub_1B7205418(v28 + v67, &qword_1EB98EBD0);
    sub_1B7205418(v28 + v66, &qword_1EB98EBD0);

    return sub_1B7205418(v28 + v64, &unk_1EB994C70);
  }

  else
  {
    v62 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946A0);
    v69 = 0;
    sub_1B742C9C4(&qword_1EB9946C8, sub_1B742CA3C);
    sub_1B7801E48();
    v27 = v65;
    v30 = v68;
    *v68 = v70;
    v69 = 1;
    sub_1B742CA90();
    sub_1B7801E48();
    *(v30 + 8) = v70;
    LOBYTE(v70) = 2;
    v30[2] = sub_1B7801D78();
    v30[3] = v31;
    v54[2] = v31;
    LOBYTE(v70) = 3;
    v30[4] = sub_1B7801D78();
    v30[5] = v32;
    v54[1] = v32;
    LOBYTE(v70) = 4;
    v33 = sub_1B71A70B8(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v34 = v62;
    v54[0] = v33;
    sub_1B7801DB8();
    sub_1B7213740(v34, v30 + v27, &qword_1EB98EBD0);
    LOBYTE(v70) = 5;
    v35 = v58;
    sub_1B7801DB8();
    sub_1B7213740(v35, v30 + v67, &qword_1EB98EBD0);
    LOBYTE(v70) = 6;
    v36 = v57;
    sub_1B7801DB8();
    sub_1B7213740(v36, v30 + v66, &qword_1EB98EBD0);
    LOBYTE(v70) = 7;
    v37 = sub_1B7801D78();
    v38 = (v68 + v14[11]);
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v70) = 8;
    v40 = sub_1B7801D78();
    v41 = (v68 + v14[12]);
    *v41 = v40;
    v41[1] = v42;
    LOBYTE(v70) = 9;
    v43 = sub_1B7801D78();
    v44 = (v68 + v14[13]);
    *v44 = v43;
    v44[1] = v45;
    LOBYTE(v70) = 10;
    v46 = sub_1B7801D78();
    v47 = (v68 + v14[14]);
    *v47 = v46;
    v47[1] = v48;
    LOBYTE(v70) = 11;
    sub_1B71A70B8(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    sub_1B7801DB8();
    sub_1B7213740(v56, v68 + v64, &unk_1EB994C70);
    LOBYTE(v70) = 12;
    v49 = sub_1B7801DF8();
    v51 = v50;
    (*(v59 + 8))(v60, v61);
    v52 = v68;
    v53 = (v68 + v14[16]);
    *v53 = v49;
    v53[1] = v51;
    sub_1B742CAE4(v52, v55);
    __swift_destroy_boxed_opaque_existential_1(v63);
    return sub_1B742CB68(v52, type metadata accessor for Order.Return);
  }
}

uint64_t Order.Return.init(_:previewResourceLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for Order.Return();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 32);
  v10 = sub_1B77FF988();
  v11 = *(*(v10 - 8) + 56);
  v56 = v9;
  v11(&v8[v9], 1, 1, v10);
  v55 = v5[9];
  v11(&v8[v55], 1, 1, v10);
  v54 = v5[10];
  v11(&v8[v54], 1, 1, v10);
  v58 = v5;
  v12 = v5[15];
  v13 = sub_1B77FF4F8();
  v14 = *(*(v13 - 8) + 56);
  v57 = v12;
  v14(&v8[v12], 1, 1, v13);
  v15 = *a1;
  v62 = a2;
  *v8 = sub_1B75EBB14(sub_1B742CB48, v61, v15);
  v8[8] = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  sub_1B719B06C(a2, v63);
  if (v17)
  {
    v19 = v64;
    v18 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v20 = *(v18 + 8);

    v21 = v20(v16, v17, v19, v18);
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
  *(v8 + 2) = v21;
  *(v8 + 3) = v23;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  sub_1B719B06C(a2, v63);
  v60 = a2;
  if (v25)
  {
    v26 = v64;
    v27 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v28 = *(v27 + 8);

    v29 = v28(v24, v25, v26, v27);
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = v58;
  v33 = &v8[v58[11]];
  v34 = &v8[v58[12]];
  v35 = &v8[v58[13]];
  v53 = &v8[v58[14]];
  __swift_destroy_boxed_opaque_existential_1(v63);
  *(v8 + 4) = v29;
  *(v8 + 5) = v31;
  v36 = type metadata accessor for RawOrderReturn();
  sub_1B73FE224(a1 + v36[8], &v8[v56], &qword_1EB98EBD0);
  sub_1B73FE224(a1 + v36[9], &v8[v55], &qword_1EB98EBD0);
  sub_1B73FE224(a1 + v36[10], &v8[v54], &qword_1EB98EBD0);
  v37 = (a1 + v36[11]);
  v38 = v37[1];
  *v33 = *v37;
  *(v33 + 1) = v38;
  v39 = (a1 + v36[12]);
  v40 = v39[1];
  *v34 = *v39;
  *(v34 + 1) = v40;
  v41 = (a1 + v36[13]);
  v42 = v41[1];
  *v35 = *v41;
  *(v35 + 1) = v42;
  v43 = (a1 + v36[14]);
  v45 = *v43;
  v44 = v43[1];
  v46 = v53;
  *v53 = v45;
  *(v46 + 1) = v44;
  v47 = v36[15];

  sub_1B73FE224(a1 + v47, &v8[v57], &unk_1EB994C70);
  v48 = (a1 + v36[16]);
  v49 = *v48;
  v50 = v48[1];

  sub_1B742CB68(a1, type metadata accessor for RawOrderReturn);
  v51 = &v8[v32[16]];
  *v51 = v49;
  *(v51 + 1) = v50;
  sub_1B742CAE4(v8, v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_1B742CB68(v8, type metadata accessor for Order.Return);
}

uint64_t sub_1B742B354@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[5];
  v5 = a1[3];
  v20 = a1[4];
  v21 = v4;
  v6 = a1[5];
  v7 = a1[7];
  v22 = a1[6];
  v23 = v7;
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v18 = a1[2];
  v19 = v9;
  v16[4] = v20;
  v16[5] = v6;
  v12 = a1[7];
  v16[6] = v22;
  v16[7] = v12;
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v18;
  v16[3] = v5;
  sub_1B719B06C(a2, v15);
  sub_1B73261F0(v17, v14);
  return Order.LineItem.init(_:previewResourceLoader:)(v16, v15, a3);
}

void Order.Return.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v96 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v101 = &v96 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v96 - v12;
  v13 = type metadata accessor for Order.Return();
  v14 = v13[8];
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v98 = v14;
  v17(a2 + v14, 1, 1, v15);
  v100 = v13[9];
  v17(a2 + v100, 1, 1, v15);
  v102 = v13[10];
  v103 = v17;
  v109 = v18;
  v17(a2 + v102, 1, 1, v15);
  v19 = v13[15];
  v20 = sub_1B77FF4F8();
  v21 = *(v20 - 8);
  v106 = *(v21 + 56);
  v107 = v20;
  v105 = v21 + 56;
  v106(a2 + v19, 1, 1);
  v22 = ManagedOrderReturn.lineItems.getter();
  v23 = v22;
  if (v22 >> 62)
  {
    v24 = sub_1B7801958();
    v108 = v19;
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_14:

    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v108 = v19;
  if (!v24)
  {
    goto LABEL_14;
  }

LABEL_3:
  v111 = MEMORY[0x1E69E7CC0];
  sub_1B71FDDBC(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
    return;
  }

  v96 = v13;
  v97 = v6;
  v25 = 0;
  v26 = v111;
  if ((v23 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = MEMORY[0x1B8CA5DC0](v25, v23); ; i = *(v23 + 8 * v25 + 32))
  {
    Order.LineItem.init(_:)(i, v110);
    v111 = v26;
    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1B71FDDBC((v28 > 1), v29 + 1, 1);
      v26 = v111;
    }

    *(v26 + 16) = v29 + 1;
    v30 = (v26 + (v29 << 7));
    v31 = v110[0];
    v32 = v110[1];
    v33 = v110[3];
    v30[4] = v110[2];
    v30[5] = v33;
    v30[2] = v31;
    v30[3] = v32;
    v34 = v110[4];
    v35 = v110[5];
    v36 = v110[7];
    v30[8] = v110[6];
    v30[9] = v36;
    v30[6] = v34;
    v30[7] = v35;
    if (v24 - 1 == v25)
    {
      break;
    }

    ++v25;
    if ((v23 & 0xC000000000000001) != 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  v6 = v97;
  v13 = v96;
LABEL_15:
  *a2 = v26;
  *(a2 + 8) = ManagedOrderReturn.status.getter();
  v37 = [a1 statusDescription];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1B77FFA48();
    v40 = sub_1B741F7D4(v39);
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  *(a2 + 16) = v40;
  *(a2 + 24) = v42;
  v43 = [a1 notes];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1B77FFA48();
    v46 = sub_1B741F7D4(v45);
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = v104;
  v50 = v103;
  *(a2 + 32) = v46;
  *(a2 + 40) = v48;
  v51 = [a1 initiationDate];
  if (v51)
  {
    v52 = v99;
    v53 = v51;
    sub_1B77FF928();

    v54 = 0;
    v55 = v101;
  }

  else
  {
    v54 = 1;
    v55 = v101;
    v52 = v99;
  }

  v56 = 1;
  v50(v52, v54, 1, v15);
  sub_1B7213740(v52, a2 + v98, &qword_1EB98EBD0);
  v57 = [a1 dropOffDate];
  if (v57)
  {
    v58 = v57;
    sub_1B77FF928();

    v56 = 0;
  }

  v59 = v55;
  v60 = 1;
  v50(v59, v56, 1, v15);
  sub_1B7213740(v59, a2 + v100, &qword_1EB98EBD0);
  v61 = [a1 returnDate];
  if (v61)
  {
    v62 = v61;
    sub_1B77FF928();

    v60 = 0;
  }

  v50(v49, v60, 1, v15);
  sub_1B7213740(v49, a2 + v102, &qword_1EB98EBD0);
  v63 = [a1 returnNumber];
  if (v63)
  {
    v64 = v63;
    v65 = sub_1B7800868();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = (a2 + v13[11]);
  *v68 = v65;
  v68[1] = v67;
  v69 = [a1 carrier];
  if (v69)
  {
    v70 = v69;
    v71 = sub_1B7800868();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  v74 = (a2 + v13[12]);
  *v74 = v71;
  v74[1] = v73;
  v75 = [a1 trackingNumber];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1B7800868();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = (a2 + v13[13]);
  *v80 = v77;
  v80[1] = v79;
  v81 = [a1 returnLabel];
  if (v81)
  {
    v82 = v81;
    v83 = sub_1B7800868();
    v85 = v84;
  }

  else
  {
    v83 = 0;
    v85 = 0;
  }

  v86 = (a2 + v13[14]);
  *v86 = v83;
  v86[1] = v85;
  v87 = [a1 returnManagementURL];
  if (v87)
  {
    v88 = v87;
    sub_1B77FF478();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = v108;
  (v106)(v6, v89, 1, v107);
  sub_1B7213740(v6, a2 + v90, &unk_1EB994C70);
  v91 = [a1 returnIdentifier];
  v92 = sub_1B7800868();
  v94 = v93;

  v95 = (a2 + v13[16]);
  *v95 = v92;
  v95[1] = v94;
}

uint64_t _s10FinanceKit5OrderV6ReturnV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v99 - v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v106);
  v110 = &v99 - v8;
  v9 = sub_1B77FF988();
  v112 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v99 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v99 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v99 - v27;
  if ((sub_1B731C3C0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_38;
  }

  v29 = *(a1 + 24);
  v30 = *(a2 + 24);
  if (v29)
  {
    if (!v30 || (*(a1 + 16) != *(a2 + 16) || v29 != v30) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v30)
  {
    goto LABEL_38;
  }

  v31 = *(a1 + 40);
  v32 = *(a2 + 40);
  if (v31)
  {
    if (!v32)
    {
      goto LABEL_38;
    }

    v104 = a1;
    if ((*(a1 + 32) != *(a2 + 32) || v31 != v32) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v104 = a1;
    if (v32)
    {
      goto LABEL_38;
    }
  }

  v33 = type metadata accessor for Order.Return();
  v102 = a2;
  v100 = v33;
  v34 = *(v33 + 32);
  v35 = *(v20 + 48);
  sub_1B7205588(v104 + v34, v28, &qword_1EB98EBD0);
  v101 = v35;
  sub_1B7205588(v102 + v34, &v28[v35], &qword_1EB98EBD0);
  v36 = *(v112 + 48);
  v103 = v112 + 48;
  if (v36(v28, 1, v9) == 1)
  {
    if (v36(&v28[v101], 1, v9) == 1)
    {
      v99 = v36;
      sub_1B7205418(v28, &qword_1EB98EBD0);
      goto LABEL_24;
    }

LABEL_22:
    v37 = &qword_1EB98FCE0;
    v38 = v28;
LABEL_37:
    sub_1B7205418(v38, v37);
    goto LABEL_38;
  }

  sub_1B7205588(v28, v19, &qword_1EB98EBD0);
  if (v36(&v28[v101], 1, v9) == 1)
  {
    (*(v112 + 8))(v19, v9);
    goto LABEL_22;
  }

  v99 = v36;
  v39 = v112;
  (*(v112 + 32))(v111, &v28[v101], v9);
  sub_1B71A70B8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  LODWORD(v101) = sub_1B7800828();
  v40 = *(v39 + 8);
  v40(v111, v9);
  v40(v19, v9);
  sub_1B7205418(v28, &qword_1EB98EBD0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_24:
  v41 = v100[9];
  v42 = *(v20 + 48);
  sub_1B7205588(v104 + v41, v26, &qword_1EB98EBD0);
  sub_1B7205588(v102 + v41, &v26[v42], &qword_1EB98EBD0);
  v43 = v99;
  if (v99(v26, 1, v9) == 1)
  {
    if (v43(&v26[v42], 1, v9) == 1)
    {
      v99 = v43;
      sub_1B7205418(v26, &qword_1EB98EBD0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_1B7205588(v26, v17, &qword_1EB98EBD0);
  if (v43(&v26[v42], 1, v9) == 1)
  {
    (*(v112 + 8))(v17, v9);
LABEL_29:
    v37 = &qword_1EB98FCE0;
    v38 = v26;
    goto LABEL_37;
  }

  v99 = v43;
  v44 = v112;
  v45 = &v26[v42];
  v46 = v111;
  (*(v112 + 32))(v111, v45, v9);
  sub_1B71A70B8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v47 = sub_1B7800828();
  v48 = *(v44 + 8);
  v48(v46, v9);
  v48(v17, v9);
  sub_1B7205418(v26, &qword_1EB98EBD0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v49 = v100[10];
  v50 = *(v20 + 48);
  sub_1B7205588(v104 + v49, v23, &qword_1EB98EBD0);
  v51 = v102 + v49;
  v52 = v102;
  sub_1B7205588(v51, &v23[v50], &qword_1EB98EBD0);
  v53 = v99;
  if (v99(v23, 1, v9) == 1)
  {
    if (v53(&v23[v50], 1, v9) == 1)
    {
      sub_1B7205418(v23, &qword_1EB98EBD0);
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  sub_1B7205588(v23, v14, &qword_1EB98EBD0);
  if (v53(&v23[v50], 1, v9) == 1)
  {
    (*(v112 + 8))(v14, v9);
LABEL_36:
    v37 = &qword_1EB98FCE0;
    v38 = v23;
    goto LABEL_37;
  }

  v56 = v112;
  v57 = &v23[v50];
  v58 = v111;
  (*(v112 + 32))(v111, v57, v9);
  sub_1B71A70B8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v59 = sub_1B7800828();
  v60 = *(v56 + 8);
  v60(v58, v9);
  v60(v14, v9);
  v52 = v102;
  sub_1B7205418(v23, &qword_1EB98EBD0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_41:
  v61 = v100[11];
  v62 = v104;
  v63 = (v104 + v61);
  v64 = *(v104 + v61 + 8);
  v65 = (v52 + v61);
  v66 = v65[1];
  if (v64)
  {
    if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v66)
  {
    goto LABEL_38;
  }

  v67 = v100[12];
  v68 = (v62 + v67);
  v69 = *(v62 + v67 + 8);
  v70 = (v52 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v71)
  {
    goto LABEL_38;
  }

  v72 = v100[13];
  v73 = (v62 + v72);
  v74 = *(v62 + v72 + 8);
  v75 = (v52 + v72);
  v76 = v75[1];
  if (v74)
  {
    if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v76)
  {
    goto LABEL_38;
  }

  v77 = v100[14];
  v78 = (v62 + v77);
  v79 = *(v62 + v77 + 8);
  v80 = (v52 + v77);
  v81 = v80[1];
  if (v79)
  {
    if (!v81 || (*v78 != *v80 || v79 != v81) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v81)
  {
    goto LABEL_38;
  }

  v82 = v100[15];
  v83 = *(v106 + 48);
  v84 = v110;
  sub_1B7205588(v62 + v82, v110, &unk_1EB994C70);
  sub_1B7205588(v102 + v82, v84 + v83, &unk_1EB994C70);
  v85 = v109;
  v86 = *(v108 + 48);
  if (v86(v84, 1, v109) != 1)
  {
    sub_1B7205588(v84, v107, &unk_1EB994C70);
    if (v86(v84 + v83, 1, v85) == 1)
    {
      (*(v108 + 8))(v107, v109);
      goto LABEL_74;
    }

    v88 = v108;
    v87 = v109;
    v89 = v110;
    v90 = v110 + v83;
    v91 = v105;
    (*(v108 + 32))(v105, v90, v109);
    sub_1B71A70B8(&qword_1EB990310, MEMORY[0x1E6968FB0]);
    v92 = v107;
    v93 = sub_1B7800828();
    v94 = *(v88 + 8);
    v94(v91, v87);
    v94(v92, v87);
    sub_1B7205418(v89, &unk_1EB994C70);
    if (v93)
    {
      goto LABEL_76;
    }

LABEL_38:
    v54 = 0;
    return v54 & 1;
  }

  if (v86(v84 + v83, 1, v85) != 1)
  {
LABEL_74:
    v37 = &qword_1EB991C30;
    v38 = v110;
    goto LABEL_37;
  }

  sub_1B7205418(v110, &unk_1EB994C70);
LABEL_76:
  v95 = v100[16];
  v96 = *(v62 + v95);
  v97 = *(v62 + v95 + 8);
  v98 = (v102 + v95);
  if (v96 == *v98 && v97 == v98[1])
  {
    v54 = 1;
  }

  else
  {
    v54 = sub_1B78020F8();
  }

  return v54 & 1;
}

unint64_t sub_1B742C8C8()
{
  result = qword_1EB994698;
  if (!qword_1EB994698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994698);
  }

  return result;
}

unint64_t sub_1B742C91C()
{
  result = qword_1EB9946B0;
  if (!qword_1EB9946B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9946B0);
  }

  return result;
}

unint64_t sub_1B742C970()
{
  result = qword_1EB9946B8;
  if (!qword_1EB9946B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9946B8);
  }

  return result;
}

uint64_t sub_1B742C9C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9946A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B742CA3C()
{
  result = qword_1EB9946D0;
  if (!qword_1EB9946D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9946D0);
  }

  return result;
}

unint64_t sub_1B742CA90()
{
  result = qword_1EB9946D8;
  if (!qword_1EB9946D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9946D8);
  }

  return result;
}

uint64_t sub_1B742CAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.Return();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B742CB68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B742CBD0()
{
  result = qword_1EB9946E0;
  if (!qword_1EB9946E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9946E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9946E0);
  }

  return result;
}

void sub_1B742CC6C()
{
  sub_1B742CDCC(319, &qword_1EB992E20, &type metadata for Order.LineItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B742CDCC(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B742CE1C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1B742CE1C(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B742CDCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B742CE1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B742CEF4()
{
  result = qword_1EB994700;
  if (!qword_1EB994700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994700);
  }

  return result;
}

unint64_t sub_1B742CF4C()
{
  result = qword_1EB994708;
  if (!qword_1EB994708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994708);
  }

  return result;
}

unint64_t sub_1B742CFA4()
{
  result = qword_1EB994710;
  if (!qword_1EB994710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994710);
  }

  return result;
}

unint64_t sub_1B742CFFC()
{
  result = qword_1EB994718;
  if (!qword_1EB994718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994718);
  }

  return result;
}

unint64_t sub_1B742D054()
{
  result = qword_1EB994720;
  if (!qword_1EB994720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994720);
  }

  return result;
}

unint64_t sub_1B742D0AC()
{
  result = qword_1EB994728;
  if (!qword_1EB994728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994728);
  }

  return result;
}

unint64_t sub_1B742D104()
{
  result = qword_1EB994730;
  if (!qword_1EB994730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994730);
  }

  return result;
}

unint64_t sub_1B742D15C()
{
  result = qword_1EB994738;
  if (!qword_1EB994738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994738);
  }

  return result;
}

unint64_t sub_1B742D1B4()
{
  result = qword_1EB994740;
  if (!qword_1EB994740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994740);
  }

  return result;
}

unint64_t sub_1B742D20C()
{
  result = qword_1EB994748;
  if (!qword_1EB994748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994748);
  }

  return result;
}

unint64_t sub_1B742D264()
{
  result = qword_1EB994750;
  if (!qword_1EB994750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994750);
  }

  return result;
}

unint64_t sub_1B742D2BC()
{
  result = qword_1EB994758;
  if (!qword_1EB994758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994758);
  }

  return result;
}

unint64_t sub_1B742D314()
{
  result = qword_1EB994760;
  if (!qword_1EB994760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994760);
  }

  return result;
}

unint64_t sub_1B742D36C()
{
  result = qword_1EB994768;
  if (!qword_1EB994768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994768);
  }

  return result;
}

unint64_t sub_1B742D3C4()
{
  result = qword_1EB994770;
  if (!qword_1EB994770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994770);
  }

  return result;
}

unint64_t sub_1B742D41C()
{
  result = qword_1EB994778;
  if (!qword_1EB994778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994778);
  }

  return result;
}

unint64_t sub_1B742D474()
{
  result = qword_1EB994780;
  if (!qword_1EB994780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994780);
  }

  return result;
}

unint64_t sub_1B742D4CC()
{
  result = qword_1EB994788;
  if (!qword_1EB994788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994788);
  }

  return result;
}

uint64_t sub_1B742D520(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961576568546E6FLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEA0000000000676ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575737369 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B742D730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449656E696CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78749D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974616974696E69 && a2 == 0xEE00657461446E6FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4466664F706F7264 && a2 == 0xEB00000000657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61446E7275746572 && a2 == 0xEA00000000006574 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x754E6E7275746572 && a2 == 0xEC0000007265626DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72656972726163 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x614C6E7275746572 && a2 == 0xEB000000006C6562 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7879410 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787E960 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1B742DB88(uint64_t a1, void *a2)
{
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 coordinate];
  v9 = v8;
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v7);
  if (v9 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  MEMORY[0x1B8CA6660](*&v10);
  [a2 altitude];
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v11);
  [a2 horizontalAccuracy];
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v12);
  [a2 verticalAccuracy];
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v13);
  [a2 course];
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v14);
  [a2 courseAccuracy];
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v15);
  [a2 speed];
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v16);
  [a2 speedAccuracy];
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v17);
  v18 = [a2 timestamp];
  sub_1B77FF928();

  sub_1B742E924();
  sub_1B7800768();
  (*(v4 + 8))(v6, v3);
  v19 = [a2 floor];
  if (!v19)
  {
    return sub_1B7802318();
  }

  v20 = v19;
  v21 = [v19 level];

  sub_1B7802318();
  return MEMORY[0x1B8CA6620](v21);
}

uint64_t sub_1B742DE08()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B742DB88(v3, v1);
  return sub_1B7802368();
}

uint64_t sub_1B742DE58()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B742DB88(v3, v1);
  return sub_1B7802368();
}

unint64_t sub_1B742DEAC()
{
  result = qword_1EB994790;
  if (!qword_1EB994790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994790);
  }

  return result;
}

uint64_t sub_1B742DF00()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B742DF6C()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B742DFBC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B742E044@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B742E09C(uint64_t a1)
{
  v2 = sub_1B742E364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B742E0D8(uint64_t a1)
{
  v2 = sub_1B742E364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B742E114(void *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994798);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B742E364();
  sub_1B78023F8();
  v8 = objc_opt_self();
  v17[0] = 0;
  v9 = [v8 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v17];
  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1B77FF5B8();
    v13 = v12;

    v17[0] = v11;
    v17[1] = v13;
    sub_1B727A60C();
    sub_1B7801FC8();
    (*(v5 + 8))(v7, v4);
    return sub_1B720A388(v11, v13);
  }

  else
  {
    v15 = v10;
    sub_1B77FF318();

    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1B742E31C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B742E70C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B742E364()
{
  result = qword_1EB9947A0;
  if (!qword_1EB9947A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9947A0);
  }

  return result;
}

BOOL sub_1B742E3B8(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - v9;
  [a1 coordinate];
  v12 = v11;
  v14 = v13;
  [a2 coordinate];
  if (v12 != v16 || v14 != v15)
  {
    return 0;
  }

  [a1 altitude];
  v19 = v18;
  [a2 altitude];
  if (v19 != v20)
  {
    return 0;
  }

  [a1 horizontalAccuracy];
  v22 = v21;
  [a2 horizontalAccuracy];
  if (v22 != v23)
  {
    return 0;
  }

  [a1 verticalAccuracy];
  v25 = v24;
  [a2 verticalAccuracy];
  if (v25 != v26)
  {
    return 0;
  }

  [a1 course];
  v28 = v27;
  [a2 course];
  if (v28 != v29)
  {
    return 0;
  }

  [a1 courseAccuracy];
  v31 = v30;
  [a2 courseAccuracy];
  if (v31 != v32)
  {
    return 0;
  }

  [a1 speed];
  v34 = v33;
  [a2 speed];
  if (v34 != v35)
  {
    return 0;
  }

  [a1 speedAccuracy];
  v37 = v36;
  [a2 speedAccuracy];
  if (v37 != v38)
  {
    return 0;
  }

  v39 = [a1 timestamp];
  sub_1B77FF928();

  v40 = [a2 timestamp];
  sub_1B77FF928();

  LOBYTE(v40) = sub_1B77FF918();
  v41 = *(v5 + 8);
  v41(v8, v4);
  v41(v10, v4);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

  v42 = [a1 floor];
  v43 = v42;
  if (v42)
  {
    v44 = [v42 level];
  }

  else
  {
    v44 = 0;
  }

  v46 = [a2 floor];
  v47 = v46;
  v48 = v46 == 0;
  if (v46)
  {
    v49 = [v46 level];
  }

  else
  {
    v49 = 0;
  }

  if (!v43)
  {
    return v48;
  }

  return v47 && v44 == v49;
}

uint64_t sub_1B742E70C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9947A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B742E364();
  sub_1B78023C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  sub_1B727A53C();
  sub_1B7801E48();
  v8 = v11[0];
  v9 = v11[1];
  sub_1B7205540(0, &qword_1EB9905D0);
  sub_1B7205540(0, &qword_1EDAFAF38);
  result = sub_1B78012B8();
  v7 = result;
  if (result)
  {
    (*(v4 + 8))(v6, v3);
    sub_1B720A388(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B742E924()
{
  result = qword_1EB98EBB8;
  if (!qword_1EB98EBB8)
  {
    sub_1B77FF988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98EBB8);
  }

  return result;
}

unint64_t sub_1B742E990()
{
  result = qword_1EB9947B0;
  if (!qword_1EB9947B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9947B0);
  }

  return result;
}

unint64_t sub_1B742E9E8()
{
  result = qword_1EB9947B8;
  if (!qword_1EB9947B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9947B8);
  }

  return result;
}

unint64_t sub_1B742EA40()
{
  result = qword_1EB9947C0;
  if (!qword_1EB9947C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9947C0);
  }

  return result;
}

uint64_t sub_1B742ECC4()
{
  v0 = sub_1B78000B8();
  __swift_allocate_value_buffer(v0, qword_1EB994858);
  __swift_project_value_buffer(v0, qword_1EB994858);
  return sub_1B78000A8();
}

uint64_t sub_1B742EDAC()
{
  v0 = sub_1B78000B8();
  __swift_allocate_value_buffer(v0, qword_1EB994888);
  __swift_project_value_buffer(v0, qword_1EB994888);
  return sub_1B78000A8();
}

uint64_t sub_1B742F078()
{
  v0 = sub_1B78000B8();
  __swift_allocate_value_buffer(v0, qword_1EB994930);
  __swift_project_value_buffer(v0, qword_1EB994930);
  return sub_1B78000A8();
}

uint64_t sub_1B742F168()
{
  v0 = sub_1B78000B8();
  __swift_allocate_value_buffer(v0, qword_1EB994948);
  __swift_project_value_buffer(v0, qword_1EB994948);
  return sub_1B78000A8();
}

uint64_t sub_1B742F25C()
{
  v0 = sub_1B78000B8();
  __swift_allocate_value_buffer(v0, qword_1EB994960);
  __swift_project_value_buffer(v0, qword_1EB994960);
  return sub_1B78000A8();
}

uint64_t sub_1B742F328(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B78000B8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B78000A8();
}

uint64_t sub_1B742F3C4()
{
  v0 = sub_1B78000B8();
  __swift_allocate_value_buffer(v0, qword_1EB994990);
  __swift_project_value_buffer(v0, qword_1EB994990);
  return sub_1B78000A8();
}

uint64_t sub_1B742F468@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B78000B8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1B742F500()
{
  v0 = sub_1B7800038();
  __swift_allocate_value_buffer(v0, qword_1EBA45940);
  __swift_project_value_buffer(v0, qword_1EBA45940);
  return sub_1B7800028();
}

int *WeekdayCustomFormatter.init(configuration:sundayFormatter:mondayFormatter:tuesdayFormatter:wednesdayFormatter:thursdayFormatter:fridayFormatter:saturdayFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B742F678(a1, a9);
  result = type metadata accessor for WeekdayCustomFormatter();
  v24 = (a9 + result[5]);
  *v24 = a2;
  v24[1] = a3;
  v25 = (a9 + result[6]);
  *v25 = a4;
  v25[1] = a5;
  v26 = (a9 + result[7]);
  *v26 = a6;
  v26[1] = a7;
  v27 = (a9 + result[8]);
  *v27 = a8;
  v27[1] = a10;
  v28 = (a9 + result[9]);
  *v28 = a11;
  v28[1] = a12;
  v29 = (a9 + result[10]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + result[11]);
  *v30 = a15;
  v30[1] = a16;
  return result;
}

uint64_t sub_1B742F678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WeekdayCustomFormatter()
{
  result = qword_1EB9949A8;
  if (!qword_1EB9949A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeekdayCustomFormatter.format(_:)()
{
  v1 = v0;
  v2 = sub_1B77FFC68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatterConfiguration();
  (*(v3 + 104))(v5, *MEMORY[0x1E6969AB0], v2);
  v6 = sub_1B77FFC78();
  (*(v3 + 8))(v5, v2);
  v7 = v6 - 1;
  if (v7 >= 7)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v8 = type metadata accessor for WeekdayCustomFormatter();
    return (*(v1 + *(v8 + 4 * v7 + 20)))();
  }

  return result;
}

unint64_t sub_1B742F8E0()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    result = sub_1B742F978();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B742F978()
{
  result = qword_1EB9949B8;
  if (!qword_1EB9949B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB9949B8);
  }

  return result;
}

void sub_1B742F9C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 orderData];
  v4 = sub_1B77FF5B8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1B742FA20@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 isMarkedAsCompleteModificationDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B742FAC4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7280900(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setIsMarkedAsCompleteModificationDate_];
}

id ManagedCloudOrder.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCloudOrder.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCloudOrder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedCloudOrder.__allocating_init(_:orderIdentifier:orderTypeIdentifier:updatedDate:schemaVersion:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v29 = a8;
  v26 = a5;
  v27 = a7;
  v28 = a1;
  v11 = sub_1B77FFA18();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v9);
  v16 = [v15 initWithContext_];
  v17 = a2;
  v18 = sub_1B77FF598();
  [v16 setOrderData_];

  v19 = sub_1B7800838();

  [v16 setOrderIdentifier_];

  v20 = sub_1B7800838();

  [v16 setOrderTypeIdentifier_];

  v21 = v27;
  v22 = sub_1B77FF8B8();
  [v16 setUpdatedDate_];

  [v16 setSchemaVersion_];
  sub_1B77FFA08();
  v23 = sub_1B77FF9B8();
  (*(v12 + 8))(v14, v11);
  [v16 setId_];

  sub_1B720A388(v28, v17);
  v24 = sub_1B77FF988();
  (*(*(v24 - 8) + 8))(v21, v24);
  return v16;
}

uint64_t ManagedCloudOrder.__allocating_init(_:context:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1B77FFA18();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  v14 = sub_1B77FF988();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v3);
  v49 = a2;
  v19 = [v18 initWithContext_];
  v20 = [a1 ecommerceOrderContent];
  if (v20 && (v21 = v20, v22 = [v20 orderData], v21, v23 = objc_msgSend(v22, sel_data), v22, v24 = sub_1B77FF5B8(), v26 = v25, v23, v27 = sub_1B77FF598(), sub_1B720A388(v24, v26), objc_msgSend(v19, sel_setOrderData_, v27), v27, v28 = objc_msgSend(a1, sel_orderIdentifier), objc_msgSend(v19, sel_setOrderIdentifier_, v28), v28, v29 = objc_msgSend(a1, sel_orderTypeIdentifier), objc_msgSend(v19, sel_setOrderTypeIdentifier_, v29), v29, (v30 = objc_msgSend(a1, sel_ecommerceOrderContent)) != 0) && (v31 = v30, v32 = objc_msgSend(v30, sel_updatedDate), sub_1B77FF928(), v32, v33 = sub_1B77FF8B8(), v31, v34 = *(v15 + 8), v34(v17, v14), objc_msgSend(v19, sel_setUpdatedDate_, v33), v33, (v35 = objc_msgSend(a1, sel_ecommerceOrderContent)) != 0))
  {
    v36 = v35;
    v37 = [v35 schemaVersion];

    [v19 setSchemaVersion_];
    v38 = [a1 isMarkedAsComplete];
    v39 = [a1 isMarkedAsCompleteModificationDate];
    if (v39)
    {
      v40 = v39;
      sub_1B77FF928();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    (*(v15 + 56))(v13, v41, 1, v14);
    [v19 setIsMarkedAsComplete_];
    sub_1B7280900(v13, v11);
    if ((*(v15 + 48))(v11, 1, v14) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = sub_1B77FF8B8();
      v34(v11, v14);
    }

    [v19 setIsMarkedAsCompleteModificationDate_];

    sub_1B71F31EC(v13);
    v43 = v46;
    sub_1B77FFA08();
    v44 = sub_1B77FF9B8();
    (*(v47 + 8))(v43, v48);
    [v19 setId_];

    return v19;
  }

  else
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

void ManagedCloudOrder.setIsMarkedAsComplete(_:modificationDate:)(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  [v3 setIsMarkedAsComplete_];
  sub_1B7280900(a2, v8);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B77FF8B8();
    (*(v10 + 8))(v8, v9);
  }

  [v3 setIsMarkedAsCompleteModificationDate_];
}

id ManagedCloudOrder.update(_:context:)(void *a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 orderTypeIdentifier];
  v7 = sub_1B7800868();
  v9 = v8;

  v51 = a1;
  v10 = [a1 orderIdentifier];
  v11 = sub_1B7800868();
  v13 = v12;

  v14 = [v1 orderTypeIdentifier];
  v15 = sub_1B7800868();
  v17 = v16;

  v52 = v2;
  v18 = [v2 orderIdentifier];
  v19 = sub_1B7800868();
  v21 = v20;

  if (v7 == v15 && v9 == v17 || (sub_1B78020F8() & 1) != 0)
  {
    if (v11 == v19 && v13 == v21)
    {

LABEL_8:
      v23 = v51;
      v24 = [v51 ecommerceOrderContent];
      if (v24 && (v25 = v24, v26 = [v24 orderData], v25, v27 = objc_msgSend(v26, sel_data), v26, v28 = sub_1B77FF5B8(), v30 = v29, v27, v31 = sub_1B77FF598(), sub_1B720A388(v28, v30), v32 = v52, objc_msgSend(v52, sel_setOrderData_, v31), v31, (v33 = objc_msgSend(v23, sel_ecommerceOrderContent)) != 0) && (v34 = v33, v35 = objc_msgSend(v33, sel_updatedDate), v36 = v48, sub_1B77FF928(), v35, v37 = sub_1B77FF8B8(), v34, (*(v49 + 8))(v36, v50), objc_msgSend(v32, sel_setUpdatedDate_, v37), v37, (v38 = objc_msgSend(v23, sel_ecommerceOrderContent)) != 0))
      {
        v39 = v38;
        v40 = [v38 schemaVersion];

        return [v32 setSchemaVersion_];
      }

      else
      {
        result = sub_1B7801C88();
        __break(1u);
      }

      return result;
    }

    v22 = sub_1B78020F8();

    if (v22)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v42 = sub_1B78000B8();
  __swift_project_value_buffer(v42, qword_1EDAFD2D0);
  v43 = sub_1B7800098();
  v44 = sub_1B78011D8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1B7198000, v43, v44, "Tried to update cloud order using a different local order", v45, 2u);
    MEMORY[0x1B8CA7A40](v45, -1, -1);
  }

  sub_1B7359AA4();
  swift_allocError();
  *v46 = 2;
  return swift_willThrow();
}

{
  v2 = v1;
  v4 = sub_1B77FF988();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 orderTypeIdentifier];
  v7 = sub_1B7800868();
  v9 = v8;

  v43 = a1;
  v10 = [a1 orderIdentifier];
  v11 = sub_1B7800868();
  v13 = v12;

  v14 = [v1 orderTypeIdentifier];
  v15 = sub_1B7800868();
  v17 = v16;

  v44 = v2;
  v18 = [v2 orderIdentifier];
  v19 = sub_1B7800868();
  v21 = v20;

  if (v7 == v15 && v9 == v17 || (sub_1B78020F8() & 1) != 0)
  {
    if (v11 == v19 && v13 == v21)
    {

LABEL_8:
      v23 = v43;
      v24 = [v43 orderData];
      v25 = sub_1B77FF5B8();
      v27 = v26;

      v28 = sub_1B77FF598();
      sub_1B720A388(v25, v27);
      v29 = v44;
      [v44 setOrderData_];

      v30 = [v23 updatedDate];
      v31 = v40;
      sub_1B77FF928();

      v32 = sub_1B77FF8B8();
      (*(v41 + 8))(v31, v42);
      [v29 setUpdatedDate_];

      return [v29 setSchemaVersion_];
    }

    v22 = sub_1B78020F8();

    if (v22)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v34 = sub_1B78000B8();
  __swift_project_value_buffer(v34, qword_1EDAFD2D0);
  v35 = sub_1B7800098();
  v36 = sub_1B78011D8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1B7198000, v35, v36, "Tried to update cloud order using a different cloud order", v37, 2u);
    MEMORY[0x1B8CA7A40](v37, -1, -1);
  }

  sub_1B7359AA4();
  swift_allocError();
  *v38 = 2;
  return swift_willThrow();
}

void ManagedCloudOrder.fullyQualifiedOrderIdentifier.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 orderTypeIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = [v1 orderIdentifier];
  v8 = sub_1B7800868();
  v10 = v9;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
}

uint64_t ManagedCloudOrder.recentlyUpdated.getter()
{
  v1 = v0;
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1B77FF938();
  sub_1B77FF828();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = [v1 updatedDate];
  sub_1B77FF928();

  LOBYTE(v10) = sub_1B77FF8C8();
  v9(v6, v2);
  v9(v8, v2);
  return v10 & 1;
}

id static ManagedCloudOrder.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedCloudOrder;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id sub_1B743119C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedCloudOrder;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);
  [v2 setResultType_];
  return v2;
}

id static ManagedCloudOrder.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void static ManagedCloudOrder.existingCloudOrder(with:sortDescriptors:in:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780B190;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1B7800838();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v5 + 32) = v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25.receiver = ObjCClassFromMetadata;
  v25.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedCloudOrder;
  v19 = objc_msgSendSuper2(&v25, sel_fetchRequest);
  v21 = v1;
  v22 = v2;
  v10 = v1;
  v11 = v2;
  v23 = v4;
  v24 = v3;
  v12 = _s10FinanceKit17ManagedCloudOrderC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v21);
  [v19 setPredicate_];

  v20.receiver = ObjCClassFromMetadata;
  v20.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedCloudOrder;
  v13 = objc_msgSendSuper2(&v20, sel_fetchRequest);
  v21 = v10;
  v22 = v11;
  v23 = v4;
  v24 = v3;
  v14 = _s10FinanceKit17ManagedCloudOrderC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v21);
  [v13 setPredicate_];

  sub_1B7205540(0, &qword_1EDAF6470);
  v15 = sub_1B7800C18();

  [v13 setSortDescriptors_];

  [v13 setFetchLimit_];
  v16 = v26;
  v17 = sub_1B7801498();

  if (v16)
  {
    return;
  }

  if (v17 >> 62)
  {
    if (sub_1B7801958())
    {
      goto LABEL_4;
    }

LABEL_9:

    return;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v17 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CA5DC0](0, v17);
    goto LABEL_7;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);
LABEL_7:

    return;
  }

  __break(1u);
}

uint64_t static ManagedCloudOrder.existingCloudOrders(with:sortDescriptors:fetchLimit:in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B780B190;
    v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v9 = v3;
    v10 = sub_1B7800838();
    v11 = [v8 initWithKey:v10 ascending:0];

    v3 = v9;
    *(v7 + 32) = v11;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29.receiver = ObjCClassFromMetadata;
  v29.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedCloudOrder;

  v13 = objc_msgSendSuper2(&v29, sel_fetchRequest);
  v25 = v4;
  v26 = v3;
  v27 = v6;
  v28 = v5;
  v14 = v5;
  v15 = v6;
  v16 = v3;
  v17 = _s10FinanceKit17ManagedCloudOrderC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v25);
  [v13 setPredicate_];

  v24.receiver = ObjCClassFromMetadata;
  v24.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedCloudOrder;
  v18 = objc_msgSendSuper2(&v24, sel_fetchRequest);
  v25 = v4;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v19 = _s10FinanceKit17ManagedCloudOrderC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v25);
  [v18 setPredicate_];

  sub_1B7205540(0, &qword_1EDAF6470);
  v20 = sub_1B7800C18();

  [v18 setSortDescriptors_];

  [v18 setFetchLimit_];
  v21 = sub_1B7801498();

  return v21;
}

uint64_t CloudOrder.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 updatedDate];
  sub_1B77FF928();

  v5 = [a1 orderTypeIdentifier];
  v6 = sub_1B7800868();
  v8 = v7;

  v9 = [a1 orderIdentifier];
  v10 = sub_1B7800868();
  v12 = v11;

  result = type metadata accessor for CloudOrder();
  v14 = (a2 + *(result + 20));
  *v14 = v6;
  v14[1] = v8;
  v14[2] = v10;
  v14[3] = v12;
  return result;
}

id _s10FinanceKit17ManagedCloudOrderC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  v12 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v12;
  *(v8 + 40) = v3;
  *(v4 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

void keypath_setTm_4(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = a5(*a1, a1[1]);
  [v7 *a6];
}

uint64_t CoreDataStorePolicyLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B7431B98()
{
  result = qword_1EB9949C0;
  if (!qword_1EB9949C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9949C0);
  }

  return result;
}

uint64_t sub_1B7431C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000021 && 0x80000001B787E620 == a2;
  if (v4 || (sub_1B78020F8() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001B7875C90 == a2)
  {
    return 1;
  }

  return sub_1B78020F8();
}

FinanceKit::FoundInMailItem::DataSource_optional __swiftcall FoundInMailItem.DataSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

FinanceKit::FoundInMailItem::OrderDetails::EmailType_optional __swiftcall FoundInMailItem.OrderDetails.EmailType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 9u)
  {
    v2 = 9;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FoundInMailItem.OrderDetails.Merchant.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FoundInMailItem.OrderDetails.Merchant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

FinanceKit::FoundInMailItem::OrderDetails::Merchant __swiftcall FoundInMailItem.OrderDetails.Merchant.init(displayName:)(Swift::String_optional displayName)
{
  object = displayName.value._object;
  countAndFlagsBits = displayName.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.displayName.value._object = v6;
  result.displayName.value._countAndFlagsBits = v5;
  return result;
}

uint64_t static FoundInMailItem.OrderDetails.Merchant.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1B78020F8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B7432008(uint64_t a1)
{
  v2 = sub_1B74321BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7432044(uint64_t a1)
{
  v2 = sub_1B74321BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FoundInMailItem.OrderDetails.Merchant.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9949C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74321BC();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B74321BC()
{
  result = qword_1EB9949D0;
  if (!qword_1EB9949D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9949D0);
  }

  return result;
}

uint64_t FoundInMailItem.OrderDetails.Merchant.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t FoundInMailItem.OrderDetails.Merchant.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B78022F8();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7802368();
}

uint64_t FoundInMailItem.OrderDetails.Merchant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9949D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74321BC();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801D78();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B743246C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1B78020F8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B74324E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9949C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74321BC();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B743261C()
{
  v1 = *(v0 + 8);
  sub_1B78022F8();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7802368();
}

uint64_t sub_1B743268C()
{
  if (!*(v0 + 8))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t sub_1B7432704()
{
  v1 = *(v0 + 8);
  sub_1B78022F8();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7802368();
}

FinanceKit::FoundInMailItem::OrderDetails::ShippingDetails::Status_optional __swiftcall FoundInMailItem.OrderDetails.ShippingDetails.Status.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xAu)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FoundInMailItem.OrderDetails.ShippingDetails.trackingNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FoundInMailItem.OrderDetails.ShippingDetails.trackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FoundInMailItem.OrderDetails.ShippingDetails.carrierName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FoundInMailItem.OrderDetails.ShippingDetails.carrierName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall FoundInMailItem.OrderDetails.ShippingDetails.init(shippingStatus:trackingNumber:carrierName:)(FinanceKit::FoundInMailItem::OrderDetails::ShippingDetails *__return_ptr retstr, FinanceKit::FoundInMailItem::OrderDetails::ShippingDetails::Status shippingStatus, Swift::String_optional trackingNumber, Swift::String_optional carrierName)
{
  retstr->shippingStatus = *shippingStatus;
  retstr->trackingNumber = trackingNumber;
  retstr->carrierName = carrierName;
}

uint64_t sub_1B74329A8()
{
  v1 = 0x676E696B63617274;
  if (*v0 != 1)
  {
    v1 = 0x4E72656972726163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E697070696873;
  }
}

uint64_t sub_1B7432A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7437FA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7432A4C(uint64_t a1)
{
  v2 = sub_1B7436444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7432A88(uint64_t a1)
{
  v2 = sub_1B7436444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FoundInMailItem.OrderDetails.ShippingDetails.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9949E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[2] = *(v1 + 2);
  v12[3] = v9;
  v10 = *(v1 + 3);
  v12[0] = *(v1 + 4);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7436444();
  sub_1B78023F8();
  v16 = v8;
  v15 = 0;
  sub_1B7436498();
  sub_1B7801FC8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_1B7801EF8();
  v13 = 2;
  sub_1B7801EF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t FoundInMailItem.OrderDetails.ShippingDetails.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1B7802328();
  if (!v1)
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1B7802318();
  }

  sub_1B7802318();
  sub_1B7800798();
  if (!v2)
  {
    return sub_1B7802318();
  }

LABEL_3:
  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t FoundInMailItem.OrderDetails.ShippingDetails.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1B78022F8();
  sub_1B7802328();
  if (!v1)
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B7802318();
    return sub_1B7802368();
  }

  sub_1B7802318();
  sub_1B7800798();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B7802318();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t FoundInMailItem.OrderDetails.ShippingDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9949F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7436444();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v23 = 0;
    sub_1B74364EC();
    sub_1B7801E48();
    v9 = v24;
    v22 = 1;
    v10 = sub_1B7801D78();
    v13 = v12;
    v20 = v10;
    v21 = 2;
    v14 = sub_1B7801D78();
    v16 = v15;
    v17 = *(v6 + 8);
    v19 = v14;
    v17(v8, v5);
    *a2 = v9;
    v18 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v13;
    *(a2 + 24) = v18;
    *(a2 + 32) = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B7433080()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1B78022F8();
  sub_1B7802328();
  if (!v1)
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B7802318();
    return sub_1B7802368();
  }

  sub_1B7802318();
  sub_1B7800798();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B7802318();
  sub_1B7800798();
  return sub_1B7802368();
}

FinanceKit::FoundInMailItem::OrderDetails::OrderContentType_optional __swiftcall FoundInMailItem.OrderDetails.OrderContentType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FoundInMailItem.OrderDetails.orderNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FoundInMailItem.OrderDetails.orderNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FoundInMailItem.OrderDetails.merchant.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t FoundInMailItem.OrderDetails.merchant.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t FoundInMailItem.OrderDetails.shippingDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 56);
  *(a1 + 32) = v3;
}

__n128 FoundInMailItem.OrderDetails.shippingDetails.setter(char *a1)
{
  v3 = *a1;

  *(v1 + 40) = v3;
  result = *(a1 + 8);
  v5 = *(a1 + 24);
  *(v1 + 48) = result;
  *(v1 + 64) = v5;
  return result;
}

void __swiftcall FoundInMailItem.OrderDetails.init(emailType:orderNumber:merchant:shippingDetails:orderContentType:)(FinanceKit::FoundInMailItem::OrderDetails *__return_ptr retstr, FinanceKit::FoundInMailItem::OrderDetails::EmailType emailType, Swift::String_optional orderNumber, FinanceKit::FoundInMailItem::OrderDetails::Merchant merchant, FinanceKit::FoundInMailItem::OrderDetails::ShippingDetails *shippingDetails, FinanceKit::FoundInMailItem::OrderDetails::OrderContentType orderContentType)
{
  v6 = *merchant.displayName.value._object;
  shippingStatus = shippingDetails->shippingStatus;
  retstr->emailType = *emailType;
  retstr->orderNumber = orderNumber;
  retstr->merchant = *merchant.displayName.value._countAndFlagsBits;
  retstr->shippingDetails.shippingStatus = v6;
  v8 = *(merchant.displayName.value._object + 24);
  retstr->shippingDetails.trackingNumber = *(merchant.displayName.value._object + 8);
  retstr->shippingDetails.carrierName = v8;
  retstr->orderContentType = shippingStatus;
}

uint64_t sub_1B7433460()
{
  v1 = *v0;
  v2 = 0x7079546C69616D65;
  v3 = 0x746E61686372656DLL;
  v4 = 0x676E697070696873;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D754E726564726FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7433518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74380CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7433540(uint64_t a1)
{
  v2 = sub_1B7436754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B743357C(uint64_t a1)
{
  v2 = sub_1B7436754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FoundInMailItem.OrderDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994A08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v24 = *(v1 + 2);
  v25 = v8;
  v9 = *(v1 + 3);
  v22 = *(v1 + 4);
  v23 = v9;
  v32 = v1[40];
  v10 = *(v1 + 7);
  v18 = *(v1 + 6);
  v19 = v10;
  v11 = *(v1 + 9);
  v20 = *(v1 + 8);
  v21 = v11;
  v12 = v1[80];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7436754();
  sub_1B78023F8();
  LOBYTE(v27) = v7;
  v33 = 0;
  sub_1B74367A8();
  v13 = v26;
  sub_1B7801FC8();
  if (!v13)
  {
    v14 = v22;
    v15 = v23;
    v16 = v32;
    LOBYTE(v27) = 1;
    sub_1B7801EF8();
    v27 = v15;
    v28 = v14;
    v33 = 2;
    sub_1B74367FC();

    sub_1B7801FC8();

    LOBYTE(v27) = v16;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v33 = 3;
    sub_1B7436850();

    sub_1B7801FC8();

    LOBYTE(v27) = v12;
    v33 = 4;
    sub_1B74368A4();
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FoundInMailItem.OrderDetails.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[7];
  v4 = v0[9];
  sub_1B7802328();
  if (v1)
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v2)
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_1B7802318();
LABEL_6:
  sub_1B7802328();
  if (!v3)
  {
    sub_1B7802318();
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_1B7802318();
    return sub_1B7802328();
  }

  sub_1B7802318();
  sub_1B7800798();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_1B7802318();
  sub_1B7800798();
  return sub_1B7802328();
}

uint64_t FoundInMailItem.OrderDetails.hashValue.getter()
{
  sub_1B78022F8();
  FoundInMailItem.OrderDetails.hash(into:)();
  return sub_1B7802368();
}

uint64_t FoundInMailItem.OrderDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994A38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7436754();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1B74368F8();
    sub_1B7801E48();
    v9 = v33;
    LOBYTE(v33) = 1;
    v10 = sub_1B7801D78();
    v12 = v11;
    v26 = v10;
    LOBYTE(v27) = 2;
    sub_1B743694C();
    sub_1B7801E48();
    v24 = v33;
    v25 = v34;
    LOBYTE(v27) = 3;
    sub_1B74369A0();
    sub_1B7801E48();
    HIDWORD(v21) = v9;
    v42 = v33;
    v23 = v34;
    v13 = v36;
    v22 = v35;
    v43 = 4;
    sub_1B74369F4();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v14 = BYTE4(v21);
    LOBYTE(v27) = BYTE4(v21);
    v15 = v26;
    *(&v27 + 1) = v26;
    *&v28 = v12;
    v16 = v25;
    *(&v28 + 1) = v24;
    *&v29 = v25;
    BYTE8(v29) = v42;
    v30 = v23;
    *&v31 = v22;
    *(&v31 + 1) = v13;
    v17 = v44;
    v32 = v44;
    *(a2 + 80) = v44;
    v18 = v30;
    *(a2 + 32) = v29;
    *(a2 + 48) = v18;
    *(a2 + 64) = v31;
    v19 = v28;
    *a2 = v27;
    *(a2 + 16) = v19;
    sub_1B723C474(&v27, &v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v33) = v14;
    *&v34 = v15;
    *(&v34 + 1) = v12;
    v35 = v24;
    v36 = v16;
    v37 = v42;
    v38 = v23;
    v39 = v22;
    v40 = v13;
    v41 = v17;
    return sub_1B723C4D0(&v33);
  }
}

uint64_t sub_1B7433E34()
{
  sub_1B78022F8();
  FoundInMailItem.OrderDetails.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B7433E78()
{
  sub_1B78022F8();
  FoundInMailItem.OrderDetails.hash(into:)();
  return sub_1B7802368();
}

uint64_t FoundInMailItem.messageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FoundInMailItem.messageID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FoundInMailItem.messageIDHash.getter()
{
  v0 = sub_1B78006D8();
  v19 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B78008E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7800478();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B78008C8();
  v10 = sub_1B7800878();
  v12 = v11;
  result = (*(v4 + 8))(v6, v3);
  if (v12 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B7437698(&qword_1EB99ED20, MEMORY[0x1E6966620]);
    sub_1B7800468();
    sub_1B720ABEC(v10, v12);
    sub_1B72B82D4(v10, v12);
    sub_1B72380B8(v10, v12);
    sub_1B7800448();
    sub_1B72380B8(v10, v12);
    (*(v19 + 8))(v2, v0);
    v24 = v7;
    v25 = sub_1B7437698(&qword_1EB98F940, MEMORY[0x1E69663E0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
    v15 = v20;
    (*(v20 + 16))(boxed_opaque_existential_1, v9, v7);
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1B77FEDA8();
    v16 = v21;
    v17 = v22;
    __swift_destroy_boxed_opaque_existential_1(v23);
    v18 = sub_1B72B71E4(v16, v17);
    sub_1B720A388(v16, v17);
    (*(v15 + 8))(v9, v7);
    return v18;
  }

  return result;
}

uint64_t FoundInMailItem.dateSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FoundInMailItem() + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FoundInMailItem.dateSent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FoundInMailItem() + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FoundInMailItem.subject.getter()
{
  v1 = *(v0 + *(type metadata accessor for FoundInMailItem() + 24));

  return v1;
}

uint64_t FoundInMailItem.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FoundInMailItem() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FoundInMailItem.senderDomain.getter()
{
  v1 = *(v0 + *(type metadata accessor for FoundInMailItem() + 28));

  return v1;
}

uint64_t FoundInMailItem.senderDomain.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FoundInMailItem() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FoundInMailItem.deeplinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FEA08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v13 = *v1;
  v14 = v7;

  sub_1B77FE9D8();
  sub_1B7205210();
  v8 = sub_1B78017E8();
  v10 = v9;
  (*(v4 + 8))(v6, v3);

  if (v10)
  {
    v13 = 0x3A6567617373656DLL;
    v14 = 0xEA00000000002F2FLL;
    MEMORY[0x1B8CA4D30](v8, v10);

    sub_1B77FF4D8();
  }

  else
  {
    v12 = sub_1B77FF4F8();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t FoundInMailItem.fromEmailAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for FoundInMailItem() + 32));

  return v1;
}

uint64_t FoundInMailItem.fromEmailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FoundInMailItem() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FoundInMailItem.fromDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FoundInMailItem() + 36));

  return v1;
}

uint64_t FoundInMailItem.fromDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FoundInMailItem() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FoundInMailItem.toEmailAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for FoundInMailItem() + 40));

  return v1;
}

uint64_t FoundInMailItem.toEmailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FoundInMailItem() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FoundInMailItem.toDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FoundInMailItem() + 44));

  return v1;
}

uint64_t FoundInMailItem.toDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FoundInMailItem() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FoundInMailItem.replyToEmailAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for FoundInMailItem() + 48));

  return v1;
}

uint64_t FoundInMailItem.replyToEmailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FoundInMailItem() + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FoundInMailItem.replyToDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FoundInMailItem() + 52));

  return v1;
}

uint64_t FoundInMailItem.replyToDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FoundInMailItem() + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FoundInMailItem.dataSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FoundInMailItem();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t FoundInMailItem.dataSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FoundInMailItem();
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t FoundInMailItem.orderDetails.getter()
{
  type metadata accessor for FoundInMailItem();
}

uint64_t FoundInMailItem.orderDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FoundInMailItem() + 60);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FoundInMailItem.spotlightUniqueIdentifiers.getter()
{
  type metadata accessor for FoundInMailItem();
}

uint64_t FoundInMailItem.spotlightUniqueIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FoundInMailItem() + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FoundInMailItem.init(messageID:dateSent:subject:senderDomain:fromEmailAddress:fromDisplayName:toEmailAddress:toDisplayName:replyToEmailAddress:replyToDisplayName:dataSource:orderDetails:spotlightUniqueIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23)
{
  v42 = *a21;
  v26 = type metadata accessor for FoundInMailItem();
  v27 = &a9[v26[6]];
  v28 = &a9[v26[9]];
  v29 = &a9[v26[11]];
  v30 = &a9[v26[12]];
  v31 = &a9[v26[13]];
  v32 = v26[16];
  *a9 = a1;
  *(a9 + 1) = a2;
  v33 = v26[5];
  v34 = sub_1B77FF988();
  result = (*(*(v34 - 8) + 32))(&a9[v33], a3, v34);
  *v27 = a4;
  *(v27 + 1) = a5;
  v36 = &a9[v26[7]];
  *v36 = a6;
  *(v36 + 1) = a7;
  v37 = &a9[v26[8]];
  *v37 = a8;
  *(v37 + 1) = a10;
  *v28 = a11;
  *(v28 + 1) = a12;
  v38 = &a9[v26[10]];
  *v38 = a13;
  *(v38 + 1) = a14;
  *v29 = a15;
  *(v29 + 1) = a16;
  *v30 = a17;
  *(v30 + 1) = a18;
  *v31 = a19;
  *(v31 + 1) = a20;
  a9[v26[14]] = v42;
  *&a9[v26[15]] = a22;
  *&a9[v32] = a23;
  return result;
}

unint64_t sub_1B7435078(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x746E655365746164;
      break;
    case 2:
      result = 0x7463656A627573;
      break;
    case 3:
      result = 0x6F447265646E6573;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x707369446D6F7266;
      break;
    case 6:
      result = 0x416C69616D456F74;
      break;
    case 7:
      result = 0x616C707369446F74;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x72756F5361746164;
      break;
    case 11:
      result = 0x746544726564726FLL;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7435238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7438298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7435260(uint64_t a1)
{
  v2 = sub_1B7436D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B743529C(uint64_t a1)
{
  v2 = sub_1B7436D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FoundInMailItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994A60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7436D48();
  sub_1B78023F8();
  LOBYTE(v11) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v9 = type metadata accessor for FoundInMailItem();
    LOBYTE(v11) = 1;
    sub_1B77FF988();
    sub_1B7437698(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    LOBYTE(v11) = 2;
    sub_1B7801EF8();
    LOBYTE(v11) = 3;
    sub_1B7801F78();
    LOBYTE(v11) = 4;
    sub_1B7801F78();
    LOBYTE(v11) = 5;
    sub_1B7801EF8();
    LOBYTE(v11) = 6;
    sub_1B7801F78();
    LOBYTE(v11) = 7;
    sub_1B7801EF8();
    LOBYTE(v11) = 8;
    sub_1B7801EF8();
    LOBYTE(v11) = 9;
    sub_1B7801EF8();
    LOBYTE(v11) = *(v3 + v9[14]);
    v12 = 10;
    sub_1B7436D9C();
    sub_1B7801FC8();
    v11 = *(v3 + v9[15]);
    v12 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994A78);
    sub_1B7436F64(&qword_1EB994A80, sub_1B7436DF0);
    sub_1B7801FC8();
    v11 = *(v3 + v9[16]);
    v12 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994A90);
    sub_1B7436E44(&qword_1EB994A98, sub_1B7436EBC);
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FoundInMailItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994AA8);
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = v45 - v9;
  v54 = type metadata accessor for FoundInMailItem();
  MEMORY[0x1EEE9AC00](v54);
  v52 = (v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7436D48();
  v50 = v10;
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v47 = v4;
    v48 = v8;
    v46 = v5;
    LOBYTE(v55) = 0;
    v12 = sub_1B7801DF8();
    v13 = v52;
    *v52 = v12;
    v13[1] = v14;
    LOBYTE(v55) = 1;
    sub_1B7437698(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v15 = v47;
    sub_1B7801E48();
    v16 = v54;
    (*(v46 + 32))(v13 + v54[5], v7, v15);
    LOBYTE(v55) = 2;
    v17 = sub_1B7801D78();
    v19 = v18;
    v20 = (v13 + v16[6]);
    *v20 = v17;
    v20[1] = v18;
    LOBYTE(v55) = 3;
    v21 = sub_1B7801DF8();
    v22 = (v13 + v16[7]);
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v55) = 4;
    v24 = sub_1B7801DF8();
    v25 = (v13 + v16[8]);
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v55) = 5;
    v27 = sub_1B7801D78();
    v28 = (v13 + v16[9]);
    *v28 = v27;
    v28[1] = v29;
    v45[1] = v29;
    LOBYTE(v55) = 6;
    v30 = sub_1B7801DF8();
    v31 = (v13 + v16[10]);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v55) = 7;
    v33 = sub_1B7801D78();
    v45[0] = v19;
    v34 = (v52 + v54[11]);
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v55) = 8;
    v36 = sub_1B7801D78();
    v37 = (v52 + v54[12]);
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v55) = 9;
    v39 = sub_1B7801D78();
    v40 = (v52 + v54[13]);
    *v40 = v39;
    v40[1] = v41;
    v56 = 10;
    sub_1B7436F10();
    sub_1B7801E48();
    *(v52 + v54[14]) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994A78);
    v56 = 11;
    sub_1B7436F64(&qword_1EB994AB8, sub_1B7436FDC);
    sub_1B7801E48();
    *(v52 + v54[15]) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994A90);
    v56 = 12;
    sub_1B7436E44(&qword_1EB994AC8, sub_1B7437030);
    sub_1B7801E48();
    v42 = v54[16];
    (*(v48 + 8))(v50, v51);
    v43 = v52;
    *(v52 + v42) = v55;
    sub_1B7437084(v43, v49);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_1B74370E8(v43);
  }
}

uint64_t static FoundInMailItem.MessageIDSanitizer.sanitize(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  if (sub_1B7800AA8() == 60 && v5 == 0xE100000000000000)
  {
  }

  else
  {
    v6 = sub_1B78020F8();

    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v7 = sub_1B74362FC(v3, a2);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v7 == 62 && v8 == 0xE100000000000000)
  {

    goto LABEL_13;
  }

  v9 = sub_1B78020F8();

  if ((v9 & 1) == 0)
  {
LABEL_19:

    return v3;
  }

LABEL_13:

  v10 = sub_1B74372D0(1uLL, v3, a2);
  v12 = v11;

  result = sub_1B7801798();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_1B7801778();
    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = result;
    }

    if (v15 >> 14 >= v10 >> 14)
    {
      v16 = sub_1B78017A8();
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v3 = MEMORY[0x1B8CA4C70](v16, v18, v20, v22);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B74362FC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1B78009C8();
  return sub_1B7800AA8();
}

uint64_t _s10FinanceKit15FoundInMailItemV12OrderDetailsV08ShippingH0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = a1[1] == a2[1] && v3 == v6;
    if (!v9 && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B7436444()
{
  result = qword_1EB9949E8;
  if (!qword_1EB9949E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9949E8);
  }

  return result;
}

unint64_t sub_1B7436498()
{
  result = qword_1EB9949F0;
  if (!qword_1EB9949F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9949F0);
  }

  return result;
}

unint64_t sub_1B74364EC()
{
  result = qword_1EB994A00;
  if (!qword_1EB994A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A00);
  }

  return result;
}

uint64_t _s10FinanceKit15FoundInMailItemV12OrderDetailsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v45 = v2;
  v46 = v3;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = a1[40];
  v9 = *(a1 + 6);
  v10 = *(a1 + 56);
  v11 = *(a1 + 9);
  v12 = a1[80];
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v15 = *(a2 + 4);
  v16 = a2[40];
  v17 = *(a2 + 6);
  v18 = *(a2 + 56);
  v19 = *(a2 + 9);
  v20 = a2[80];
  if (v5)
  {
    if (!v13)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v5 != v13)
    {
      v33 = a1[40];
      v32 = *(a2 + 9);
      v21 = *(a1 + 9);
      v22 = a2[80];
      v23 = a1[80];
      v35 = *(a2 + 56);
      v37 = *(a1 + 56);
      v24 = *(a2 + 6);
      v25 = a2[40];
      v26 = *(a1 + 6);
      v27 = sub_1B78020F8();
      v9 = v26;
      v16 = v25;
      v17 = v24;
      v18 = v35;
      v10 = v37;
      v12 = v23;
      v20 = v22;
      v11 = v21;
      v19 = v32;
      v8 = v33;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v7)
  {
    if (v15)
    {
      v34 = v12;
      if (v6 == v14 && v7 == v15)
      {
        goto LABEL_15;
      }

      v36 = v18;
      v38 = v10;
      v29 = v9;
      v30 = sub_1B78020F8();
      v9 = v29;
      v18 = v36;
      v10 = v38;
      if (v30)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v34 = v12;
    if (!v15)
    {
LABEL_15:
      LOBYTE(v42[0]) = v8;
      v42[1] = v9;
      v43 = v10;
      v44 = v11;
      LOBYTE(v39[0]) = v16;
      v39[1] = v17;
      v40 = v18;
      v41 = v19;
      v31 = _s10FinanceKit15FoundInMailItemV12OrderDetailsV08ShippingH0V2eeoiySbAG_AGtFZ_0(v42, v39);

      return v31 & (v34 == v20);
    }
  }

  return 0;
}

unint64_t sub_1B7436754()
{
  result = qword_1EB994A10;
  if (!qword_1EB994A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A10);
  }

  return result;
}

unint64_t sub_1B74367A8()
{
  result = qword_1EB994A18;
  if (!qword_1EB994A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A18);
  }

  return result;
}

unint64_t sub_1B74367FC()
{
  result = qword_1EB994A20;
  if (!qword_1EB994A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A20);
  }

  return result;
}

unint64_t sub_1B7436850()
{
  result = qword_1EB994A28;
  if (!qword_1EB994A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A28);
  }

  return result;
}

unint64_t sub_1B74368A4()
{
  result = qword_1EB994A30;
  if (!qword_1EB994A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A30);
  }

  return result;
}

unint64_t sub_1B74368F8()
{
  result = qword_1EB994A40;
  if (!qword_1EB994A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A40);
  }

  return result;
}

unint64_t sub_1B743694C()
{
  result = qword_1EB994A48;
  if (!qword_1EB994A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A48);
  }

  return result;
}

unint64_t sub_1B74369A0()
{
  result = qword_1EB994A50;
  if (!qword_1EB994A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A50);
  }

  return result;
}

unint64_t sub_1B74369F4()
{
  result = qword_1EB994A58;
  if (!qword_1EB994A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A58);
  }

  return result;
}

uint64_t type metadata accessor for FoundInMailItem()
{
  result = qword_1EDAFCED8;
  if (!qword_1EDAFCED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10FinanceKit15FoundInMailItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FoundInMailItem();
  if ((sub_1B77FF918() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v17 = v5[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v22 = v5[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = v5[10];
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if ((v28 != *v30 || v29 != v30[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v31 = v5[11];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = v5[12];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v41 = v5[13];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (!v43)
  {
    if (!v45)
    {
      goto LABEL_57;
    }

    return 0;
  }

  if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  if (*(a1 + v5[14]) != *(a2 + v5[14]) || (sub_1B72F4C74(*(a1 + v5[15]), *(a2 + v5[15])) & 1) == 0)
  {
    return 0;
  }

  v46 = v5[16];
  v47 = *(a1 + v46);
  v48 = *(a2 + v46);

  return sub_1B72F5070(v47, v48);
}

unint64_t sub_1B7436D48()
{
  result = qword_1EB994A68;
  if (!qword_1EB994A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A68);
  }

  return result;
}

unint64_t sub_1B7436D9C()
{
  result = qword_1EB994A70;
  if (!qword_1EB994A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A70);
  }

  return result;
}

unint64_t sub_1B7436DF0()
{
  result = qword_1EB994A88;
  if (!qword_1EB994A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994A88);
  }

  return result;
}

uint64_t sub_1B7436E44(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994A90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7436EBC()
{
  result = qword_1EB994AA0;
  if (!qword_1EB994AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994AA0);
  }

  return result;
}

unint64_t sub_1B7436F10()
{
  result = qword_1EB994AB0;
  if (!qword_1EB994AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994AB0);
  }

  return result;
}

uint64_t sub_1B7436F64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994A78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7436FDC()
{
  result = qword_1EB994AC0;
  if (!qword_1EB994AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994AC0);
  }

  return result;
}

unint64_t sub_1B7437030()
{
  result = qword_1EB994AD0;
  if (!qword_1EB994AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994AD0);
  }

  return result;
}

uint64_t sub_1B7437084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoundInMailItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B74370E8(uint64_t a1)
{
  v2 = type metadata accessor for FoundInMailItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10FinanceKit15FoundInMailItemV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FoundInMailItem();
  if (sub_1B77FF918())
  {
    v5 = *(v4 + 32);
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (!v9 && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_23;
    }

    v10 = *(v4 + 24);
    v11 = (a1 + v10);
    v12 = *(a1 + v10 + 8);
    v13 = (a2 + v10);
    v14 = v13[1];
    if (v12)
    {
      if (!v14)
      {
        return 0;
      }

      v15 = *v11 == *v13 && v12 == v14;
      if (!v15 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v14)
    {
      return 1;
    }

    if (*a1 != *a2 || a1[1] != a2[1])
    {
LABEL_23:

      return sub_1B78020F8();
    }

    return 0;
  }

  return sub_1B77FF8D8();
}

unint64_t sub_1B74372D0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1B78009D8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1B7800AC8();
}

unint64_t sub_1B7437384()
{
  result = qword_1EB994AD8;
  if (!qword_1EB994AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994AD8);
  }

  return result;
}

unint64_t sub_1B74373DC()
{
  result = qword_1EB994AE0;
  if (!qword_1EB994AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994AE0);
  }

  return result;
}

unint64_t sub_1B7437444()
{
  result = qword_1EB994AF0;
  if (!qword_1EB994AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994AF0);
  }

  return result;
}

unint64_t sub_1B743749C()
{
  result = qword_1EB994AF8;
  if (!qword_1EB994AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994AF8);
  }

  return result;
}

unint64_t sub_1B74374F4()
{
  result = qword_1EB994B00;
  if (!qword_1EB994B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B00);
  }

  return result;
}

unint64_t sub_1B743754C()
{
  result = qword_1EB994B08;
  if (!qword_1EB994B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B08);
  }

  return result;
}

unint64_t sub_1B74375A4()
{
  result = qword_1EB994B10;
  if (!qword_1EB994B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B10);
  }

  return result;
}

unint64_t sub_1B74375FC()
{
  result = qword_1EDAFCEE8;
  if (!qword_1EDAFCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFCEE8);
  }

  return result;
}

uint64_t sub_1B7437698(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B7437708()
{
  sub_1B77FF988();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      sub_1B7437834(319, &qword_1EDAFC558, sub_1B723C420);
      if (v2 <= 0x3F)
      {
        sub_1B7437834(319, &qword_1EDAFC550, sub_1B723C370);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7437834(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1B7800FF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B74378A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7437900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1B743798C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B74379E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7437A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7437AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1B7437B84()
{
  result = qword_1EB994B20;
  if (!qword_1EB994B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B20);
  }

  return result;
}

unint64_t sub_1B7437BDC()
{
  result = qword_1EB994B28;
  if (!qword_1EB994B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B28);
  }

  return result;
}

unint64_t sub_1B7437C34()
{
  result = qword_1EB994B30;
  if (!qword_1EB994B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B30);
  }

  return result;
}

unint64_t sub_1B7437C8C()
{
  result = qword_1EB994B38;
  if (!qword_1EB994B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B38);
  }

  return result;
}

unint64_t sub_1B7437CE4()
{
  result = qword_1EB994B40;
  if (!qword_1EB994B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B40);
  }

  return result;
}

unint64_t sub_1B7437D3C()
{
  result = qword_1EB994B48;
  if (!qword_1EB994B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B48);
  }

  return result;
}

unint64_t sub_1B7437D94()
{
  result = qword_1EB994B50;
  if (!qword_1EB994B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B50);
  }

  return result;
}

unint64_t sub_1B7437DEC()
{
  result = qword_1EB994B58;
  if (!qword_1EB994B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B58);
  }

  return result;
}

unint64_t sub_1B7437E44()
{
  result = qword_1EB994B60;
  if (!qword_1EB994B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B60);
  }

  return result;
}

unint64_t sub_1B7437E9C()
{
  result = qword_1EB994B68;
  if (!qword_1EB994B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B68);
  }

  return result;
}

unint64_t sub_1B7437EF4()
{
  result = qword_1EB994B70;
  if (!qword_1EB994B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B70);
  }

  return result;
}

unint64_t sub_1B7437F4C()
{
  result = qword_1EB994B78;
  if (!qword_1EB994B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B78);
  }

  return result;
}

uint64_t sub_1B7437FA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697070696873 && a2 == 0xEE00737574617453;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E72656972726163 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B74380CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546C69616D65 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E726564726FLL && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E697070696873 && a2 == 0xEF736C6961746544 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787EC20 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B7438298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E655365746164 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F447265646E6573 && a2 == 0xEC0000006E69616DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787EC40 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x707369446D6F7266 && a2 == 0xEF656D614E79616CLL || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x416C69616D456F74 && a2 == 0xEE00737365726464 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x616C707369446F74 && a2 == 0xED0000656D614E79 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B787EC60 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787EC80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746544726564726FLL && a2 == 0xEC000000736C6961 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B787ECA0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_1B74386DC()
{
  result = qword_1EB994B80;
  if (!qword_1EB994B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B80);
  }

  return result;
}

unint64_t sub_1B7438730()
{
  result = qword_1EB994B88;
  if (!qword_1EB994B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B88);
  }

  return result;
}

unint64_t sub_1B7438784()
{
  result = qword_1EB994B90;
  if (!qword_1EB994B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B90);
  }

  return result;
}

unint64_t sub_1B74387D8()
{
  result = qword_1EB994B98;
  if (!qword_1EB994B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994B98);
  }

  return result;
}

uint64_t sub_1B7438844(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FF4F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B7643A78(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B77FE808();
  sub_1B77FE788();
  sub_1B77FE778();

  _sSD10FinanceKitSSRszSSRs_rlEySDyS2SGSayAA15HTTPHeaderFieldVGcfC_0(v6);
  sub_1B77FE7D8();
  sub_1B720ABEC(*(v2 + 32), *(v2 + 40));
  sub_1B77FE848();
  return sub_1B77FE7E8();
}

uint64_t sub_1B7438958(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FF4F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B7643318(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B77FE808();
  sub_1B77FE788();
  sub_1B77FE778();
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  v12 = 0x64724F656C707041;
  v13 = 0xEB00000000207265;

  MEMORY[0x1B8CA4D30](v7, v6);
  v9 = v12;
  v10 = v13;

  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  _sSD10FinanceKitSSRszSSRs_rlEySDyS2SGSayAA15HTTPHeaderFieldVGcfC_0(inited);
  sub_1B77FE7D8();
  sub_1B77FE848();
  return sub_1B77FE7E8();
}

uint64_t sub_1B7438AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1B77FF4F8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v2[1];
  v13[0] = *v2;
  v13[1] = v8;
  v9 = v2[3];
  v14 = v2[2];
  v15 = v9;
  v16 = v13[0];
  v17 = v8;
  v18 = v14;
  v19 = v9;
  sub_1B7642FAC(a1, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B77FE808();
  sub_1B77FE788();
  sub_1B77FE778();
  v10 = OrderWebServiceFetchRequest.makeHTTPHeaderFields()();
  if (v3)
  {
    v11 = sub_1B77FE858();
    return (*(*(v11 - 8) + 8))(a2, v11);
  }

  else
  {
    _sSD10FinanceKitSSRszSSRs_rlEySDyS2SGSayAA15HTTPHeaderFieldVGcfC_0(v10);
    sub_1B77FE7D8();
    sub_1B77FE848();
    return sub_1B77FE7E8();
  }
}

uint64_t sub_1B7438C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B77FF4F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B7642E54(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_1B77FE808();
  sub_1B77FE788();
  sub_1B77FE778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  strcpy((inited + 32), "Content-Type");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x80000001B7873B70;
  v11 = inited;
  sub_1B7244198(MEMORY[0x1E69E7CC0]);
  _sSD10FinanceKitSSRszSSRs_rlEySDyS2SGSayAA15HTTPHeaderFieldVGcfC_0(v11);
  sub_1B77FE7D8();
  sub_1B764075C();
  if (v2)
  {
    v8 = sub_1B77FE858();
    return (*(*(v8 - 8) + 8))(a2, v8);
  }

  else
  {
    sub_1B77FE848();
    return sub_1B77FE7E8();
  }
}

uint64_t sub_1B7438DF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BD8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16 - v12;
  sub_1B7205588(v1, &v16 - v12, &qword_1EB994BD8);
  sub_1B7205588(v13, v10, &qword_1EB994BF8);
  sub_1B7205588(v10, v7, &qword_1EB994BF0);
  sub_1B7205588(v7, v4, &qword_1EB994BE8);
  v14 = sub_1B7641250();
  sub_1B7205418(v4, &qword_1EB994BE8);
  sub_1B7205418(v7, &qword_1EB994BF0);
  sub_1B7205418(v10, &qword_1EB994BF8);
  sub_1B7205418(v13, &qword_1EB994BD8);
  return v14;
}

char *sub_1B7439060()
{
  v1 = sub_1B743CFC4();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BD8);
    v2 = sub_1B77FF9A8();
    v4 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1B723E73C(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_1B723E73C((v5 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 2) = v6 + 1;
    v7 = &v1[32 * v6];
    strcpy(v7 + 32, "X-Request-ID");
    v7[45] = 0;
    *(v7 + 23) = -5120;
    *(v7 + 6) = v2;
    *(v7 + 7) = v4;
  }

  return v1;
}

uint64_t PrismWebServiceClientInfo.hardwarePlatform.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrismWebServiceClientInfo.hardwarePlatform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.productType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrismWebServiceClientInfo.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.productName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrismWebServiceClientInfo.productName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.productVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PrismWebServiceClientInfo.productVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.buildVersion.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PrismWebServiceClientInfo.buildVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.frameworkBundleIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t PrismWebServiceClientInfo.frameworkBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.frameworkBundleVersion.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t PrismWebServiceClientInfo.frameworkBundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.mainBundleIdentifier.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t PrismWebServiceClientInfo.mainBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.mainBundleVersion.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t PrismWebServiceClientInfo.mainBundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t PrismWebServiceClientInfo.currentRegion.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PrismWebServiceClientInfo(0) + 56);

  return sub_1B74396FC(a1, v3);
}

uint64_t sub_1B74396FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PrismWebServiceClientInfo.init(hardwarePlatform:productType:productName:productVersion:buildVersion:isInternalBuild:frameworkBundleIdentifier:frameworkBundleVersion:mainBundleIdentifier:mainBundleVersion:currentRegion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = *(type metadata accessor for PrismWebServiceClientInfo(0) + 56);
  v25 = sub_1B77FFA98();
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 136) = a16;
  *(a9 + 144) = a17;

  return sub_1B74396FC(a18, a9 + v24);
}

void PrismWebServiceClientInfo.init()(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v78 - v3;
  v5 = sub_1B77FFAF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for PrismWebServiceClientInfo(0) + 56);
  v10 = sub_1B77FFA98();
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = FKHardwarePlatform();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1B7800868();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *a1 = v13;
  *(a1 + 8) = v15;
  v16 = FKProductType();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B7800868();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(a1 + 16) = v18;
  *(a1 + 24) = v20;
  v21 = FKProductName();
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7800868();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  v26 = FKProductVersion();
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B7800868();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *(a1 + 48) = v28;
  *(a1 + 56) = v30;
  v31 = FKBuildVersion();
  if (v31)
  {
    v32 = v31;
    v33 = sub_1B7800868();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v78 = v9;
  v79 = v6;
  v80 = v5;
  v81 = v4;
  *(a1 + 64) = v33;
  *(a1 + 72) = v35;
  *(a1 + 80) = FKIsInternalBuild();
  type metadata accessor for PrismWebServiceClient(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = objc_opt_self();
  v38 = [v37 bundleForClass_];
  v39 = [v38 bundleIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1B7800868();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  *(a1 + 88) = v41;
  *(a1 + 96) = v43;
  v44 = [v38 infoDictionary];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1B7800728();

    if (v46)
    {
      if (!*MEMORY[0x1E695E500])
      {
        __break(1u);
        goto LABEL_45;
      }

      v47 = sub_1B7800868();
      v49 = v48;
      if (*(v46 + 16))
      {
        v50 = v47;

        v51 = sub_1B724548C(v50, v49);
        v53 = v52;

        if (v53)
        {
          sub_1B719BDE4(*(v46 + 56) + 32 * v51, v84);

          v54 = swift_dynamicCast();
          v55 = v82;
          v56 = v83;
          if (!v54)
          {
            v55 = 0;
            v56 = 0;
          }
        }

        else
        {

          v55 = 0;
          v56 = 0;
        }

        goto LABEL_29;
      }
    }
  }

  v55 = 0;
  v56 = 0;
LABEL_29:
  *(a1 + 104) = v55;
  *(a1 + 112) = v56;
  v57 = [v37 mainBundle];
  v58 = [v57 bundleIdentifier];
  if (v58)
  {
    v59 = v58;
    v60 = sub_1B7800868();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  *(a1 + 120) = v60;
  *(a1 + 128) = v62;
  v63 = [v57 infoDictionary];
  if (!v63)
  {
    goto LABEL_39;
  }

  v64 = v63;
  v65 = sub_1B7800728();

  if (!v65)
  {
    goto LABEL_39;
  }

  if (*MEMORY[0x1E695E500])
  {

    v66 = sub_1B7800868();
    if (*(v65 + 16))
    {
      v68 = sub_1B724548C(v66, v67);
      v70 = v69;

      if (v70)
      {
        sub_1B719BDE4(*(v65 + 56) + 32 * v68, v84);

        v71 = swift_dynamicCast();
        v72 = v82;
        v73 = v83;
        if (!v71)
        {
          v72 = 0;
          v73 = 0;
        }

        goto LABEL_40;
      }
    }

    else
    {
    }

LABEL_39:

    v72 = 0;
    v73 = 0;
LABEL_40:
    v75 = v80;
    v74 = v81;
    v77 = v78;
    v76 = v79;
    *(a1 + 136) = v72;
    *(a1 + 144) = v73;
    sub_1B77FFAB8();
    sub_1B77FFAA8();

    (*(v76 + 8))(v8, v75);
    sub_1B74396FC(v74, a1 + v77);
    return;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_1B7439F3C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t PrismWebServiceClient.__allocating_init(baseURL:clientInfo:configuration:authenticator:signer:walletPreferences:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  sub_1B77FFA08();
  v14 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_baseURL;
  v15 = sub_1B77FF4F8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13 + v14, a1, v15);
  sub_1B743DCDC(a2, v13 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_clientInfo, type metadata accessor for PrismWebServiceClientInfo);
  sub_1B719B06C(a4, v13 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_authenticator);
  sub_1B719B06C(a5, v13 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_signer);
  v17 = (v13 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_walletPreferences);
  *v17 = a6;
  v17[1] = a7;
  v18 = [objc_allocWithZone(type metadata accessor for SessionDelegate()) init];
  *(v13 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionDelegate) = v18;
  v19 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v13 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionDelegateQueue) = v19;
  v20 = v19;
  v21 = sub_1B7800838();
  [v20 setName_];

  [v20 setMaxConcurrentOperationCount_];
  v22 = [objc_opt_self() sessionWithConfiguration:a3 delegate:v18 delegateQueue:v20];

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_1B743DC80(a2);
  (*(v16 + 8))(a1, v15);
  *(v13 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_session) = v22;
  return v13;
}

uint64_t PrismWebServiceClient.init(baseURL:clientInfo:configuration:authenticator:signer:walletPreferences:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B77FFA08();
  v14 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_baseURL;
  v15 = sub_1B77FF4F8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7 + v14, a1, v15);
  sub_1B743DCDC(a2, v7 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_clientInfo, type metadata accessor for PrismWebServiceClientInfo);
  sub_1B719B06C(a4, v7 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_authenticator);
  sub_1B719B06C(a5, v7 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_signer);
  v17 = (v7 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_walletPreferences);
  *v17 = a6;
  v17[1] = a7;
  v18 = [objc_allocWithZone(type metadata accessor for SessionDelegate()) init];
  v19 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionDelegate;
  *(v7 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionDelegate) = v18;
  v20 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v21 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionDelegateQueue;
  *(v7 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionDelegateQueue) = v20;
  v22 = v20;
  v23 = sub_1B7800838();
  [v22 setName_];

  [*(v7 + v21) setMaxConcurrentOperationCount_];
  v24 = [objc_opt_self() sessionWithConfiguration:a3 delegate:*(v7 + v19) delegateQueue:*(v7 + v21)];

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_1B743DC80(a2);
  (*(v16 + 8))(a1, v15);
  *(v7 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_session) = v24;
  return v7;
}

uint64_t sub_1B743A464(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B743A500, 0, 0);
}

uint64_t sub_1B743A500()
{
  v20 = v0;
  if ((*(*(v0[3] + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_walletPreferences + 8) + 8))())
  {
    v1 = v0[4];
    sub_1B77FE818();
    v2 = sub_1B77FF4F8();
    v3 = *(v2 - 8);
    v4 = (*(v3 + 48))(v1, 1, v2);
    v5 = v0[4];
    if (v4 == 1)
    {
      sub_1B7205418(v0[4], &unk_1EB994C70);
    }

    else
    {
      v6 = sub_1B77FF498();
      v8 = v7;
      (*(v3 + 8))(v5, v2);
      if (v8)
      {
        if (qword_1EDAF6548 != -1)
        {
          swift_once();
        }

        v9 = sub_1B78000B8();
        __swift_project_value_buffer(v9, qword_1EDAF6550);

        v10 = sub_1B7800098();
        v11 = sub_1B78011B8();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v19 = v13;
          *v12 = 136315138;
          *(v12 + 4) = sub_1B71A3EF8(v6, v8, &v19);
          _os_log_impl(&dword_1B7198000, v10, v11, "Allowing any HTTP certificate for host: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x1B8CA7A40](v13, -1, -1);
          MEMORY[0x1B8CA7A40](v12, -1, -1);
        }

        v14 = objc_opt_self();
        v15 = sub_1B7800838();

        [v14 setAllowsAnyHTTPSCertificate:1 forHost:v15];
      }
    }
  }

  v16 = swift_task_alloc();
  v0[5] = v16;
  *v16 = v0;
  v16[1] = sub_1B743A7F8;
  v17 = v0[2];

  return MEMORY[0x1EEDC6260](v17, 0);
}

uint64_t sub_1B743A7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[6] = a1;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = v3;

  if (v3)
  {
    v6 = sub_1B743AA70;
  }

  else
  {
    v6 = sub_1B743A910;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B743A910()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;

    v3 = v0[1];
    v4 = v0[6];
    v5 = v0[7];

    return v3(v4, v5, v2);
  }

  else
  {
    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[6];
    type metadata accessor for FinanceNetworkError();
    sub_1B743DD44();
    swift_allocError();
    v11 = v10;
    v12 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v11 = v12;
    v11[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1B720A388(v9, v7);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B743AA70()
{
  v1 = *(v0 + 72);
  type metadata accessor for FinanceNetworkError();
  sub_1B743DD44();
  swift_allocError();
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B743AB24(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = sub_1B77FE858();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = type metadata accessor for PrismWebServiceClientInfo(0);
  v3[42] = swift_task_alloc();
  v3[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BD8);
  v3[44] = swift_task_alloc();
  v3[45] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BE0);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B743AC9C, 0, 0);
}

uint64_t sub_1B743AC9C()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v6 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_clientInfo;
  sub_1B743DCDC(v5 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_clientInfo, v2, type metadata accessor for PrismWebServiceClientInfo);
  sub_1B743B9AC(v2, (v0 + 16));
  sub_1B743DCDC(v4, v1, type metadata accessor for PrismWebServiceRegisterTransactionRequest);
  v7 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BE8) + 36));
  v9 = *(v0 + 112);
  v8 = *(v0 + 128);
  v10 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v10;
  v7[6] = v9;
  v7[7] = v8;
  v12 = *(v0 + 48);
  v11 = *(v0 + 64);
  v13 = *(v0 + 32);
  *v7 = *(v0 + 16);
  v7[1] = v13;
  v7[2] = v12;
  v7[3] = v11;
  sub_1B743DCDC(v5 + v6, v2, type metadata accessor for PrismWebServiceClientInfo);
  v14 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BF0) + 36);
  v15 = *(type metadata accessor for ApplePayHTTPClientInfo() + 24);
  v16 = sub_1B77FFA98();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  v17 = *(v2 + 8);
  *v14 = *v2;
  *(v14 + 8) = v17;
  *(v14 + 16) = *(v2 + 80);
  v18 = *(v3 + 56);

  sub_1B7205418(v14 + v15, &qword_1EB994BA0);
  sub_1B7205588(v2 + v18, v14 + v15, &qword_1EB994BA0);
  sub_1B743DC80(v2);
  v19 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionID;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BF8) + 36);
  v21 = sub_1B77FFA18();
  (*(*(v21 - 8) + 16))(v1 + v20, v5 + v19, v21);
  sub_1B77FFA08();
  v22 = *(v5 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_authenticator + 24);
  v23 = *(v5 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_authenticator + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_authenticator), v22);
  v26 = (*(v23 + 8) + **(v23 + 8));
  v24 = swift_task_alloc();
  *(v0 + 384) = v24;
  *v24 = v0;
  v24[1] = sub_1B743AFB4;

  return v26(v22, v23);
}

uint64_t sub_1B743AFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 392) = v4;

  if (v4)
  {
    v11 = sub_1B743B358;
  }

  else
  {
    v10[50] = a4;
    v10[51] = a3;
    v10[52] = a2;
    v10[53] = a1;
    v11 = sub_1B743B0FC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1B743B0FC()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[45];
  v8 = v0[37];
  sub_1B743DD9C(v0[44], v6);
  v9 = (v6 + *(v7 + 36));
  *v9 = v1;
  v9[1] = v2;
  v10 = (v6 + *(v7 + 40));
  *v10 = v3;
  v10[1] = v4;
  v11 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_signer;
  sub_1B7205588(v6, v5, &qword_1EB994BE0);
  sub_1B719B06C(v8 + v11, (v0 + 30));
  v12 = swift_task_alloc();
  v0[54] = v12;
  *v12 = v0;
  v12[1] = sub_1B743B22C;
  v13 = v0[46];

  return (sub_1B743D230)(v0 + 24, v13, v0 + 30);
}

uint64_t sub_1B743B22C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_1B743B5B0;
  }

  else
  {
    sub_1B7205418(*(v2 + 376), &qword_1EB994BE0);
    v3 = sub_1B743B45C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B743B358()
{
  v1 = v0[49];
  v2 = v0[44];
  type metadata accessor for FinanceNetworkError();
  sub_1B743DD44();
  swift_allocError();
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1B7205418(v2, &qword_1EB994BD8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B743B45C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 296);
  v3 = *(v0 + 208);
  *(v0 + 144) = *(v0 + 192);
  *(v0 + 160) = v3;
  *(v0 + 176) = *(v0 + 224);
  sub_1B7438844(v2 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_baseURL);
  if (v1)
  {
    sub_1B743DE0C(v0 + 144);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 448) = v6;
    *v6 = v0;
    v6[1] = sub_1B743B668;
    v7 = *(v0 + 320);

    return sub_1B743A464(v7);
  }
}