void BankConnectTermsAndConditions.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = *(type metadata accessor for BankConnectTermsAndConditions() + 24);
  v8 = sub_1B77FF988();
  v9 = 1;
  v18 = *(*(v8 - 8) + 56);
  v19 = v7;
  v18(a2 + v7, 1, 1, v8);
  v10 = [a1 id];
  v11 = sub_1B7800868();
  v13 = v12;

  *a2 = v11;
  a2[1] = v13;
  v14 = [a1 publishedAt];
  sub_1B77FF928();

  v15 = [a1 reviewedAt];
  if (v15)
  {
    v16 = v15;
    sub_1B77FF928();

    v9 = 0;
  }

  v18(v6, v9, 1, v8);
  sub_1B72DFF88(v6, a2 + v19);
  v17 = [a1 inEffectOn];
  sub_1B77FF928();
}

uint64_t BankConnectTermsAndConditions.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BankConnectTermsAndConditions.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BankConnectTermsAndConditions.publishedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectTermsAndConditions() + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectTermsAndConditions.publishedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectTermsAndConditions() + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankConnectTermsAndConditions.reviewedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BankConnectTermsAndConditions() + 24);

  return sub_1B7280900(v3, a1);
}

uint64_t BankConnectTermsAndConditions.reviewedAt.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BankConnectTermsAndConditions() + 24);

  return sub_1B72DFF88(a1, v3);
}

uint64_t BankConnectTermsAndConditions.inEffectOn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectTermsAndConditions() + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectTermsAndConditions.inEffectOn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectTermsAndConditions() + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B775E758()
{
  v1 = 25705;
  v2 = 0x6465776569766572;
  if (*v0 != 2)
  {
    v2 = 0x7463656666456E69;
  }

  if (*v0)
  {
    v1 = 0x656873696C627570;
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

uint64_t sub_1B775E7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B776006C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B775E804(uint64_t a1)
{
  v2 = sub_1B775FDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B775E840(uint64_t a1)
{
  v2 = sub_1B775FDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectTermsAndConditions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99D950);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B775FDF8();
  sub_1B78023F8();
  v12 = 0;
  sub_1B7801F78();
  if (!v1)
  {
    type metadata accessor for BankConnectTermsAndConditions();
    v11 = 1;
    sub_1B77FF988();
    sub_1B71A73D0(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v10 = 2;
    sub_1B7801F38();
    v9 = 3;
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BankConnectTermsAndConditions.hash(into:)()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1B7800798();
  v8 = type metadata accessor for BankConnectTermsAndConditions();
  sub_1B71A73D0(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7280900(v0 + *(v8 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1B7802318();
    sub_1B7800768();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1B7800768();
}

uint64_t BankConnectTermsAndConditions.hashValue.getter()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1B78022F8();
  sub_1B7800798();
  v8 = type metadata accessor for BankConnectTermsAndConditions();
  sub_1B71A73D0(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7280900(v0 + *(v8 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1B7802318();
    sub_1B7800768();
    (*(v2 + 8))(v4, v1);
  }

  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t BankConnectTermsAndConditions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v27 - v4;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99D960);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for BankConnectTermsAndConditions();
  v16 = *(MEMORY[0x1EEE9AC00](v14) + 24);
  v17 = *(v6 + 56);
  v36 = (v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v16;
  v17(v36 + v16, 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B775FDF8();
  v34 = v13;
  v18 = v35;
  sub_1B78023C8();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7205418(v36 + v37, &qword_1EB98EBD0);
  }

  else
  {
    v19 = v32;
    v35 = a1;
    v28 = v14;
    v41 = 0;
    v20 = sub_1B7801DF8();
    v21 = v36;
    *v36 = v20;
    *(v21 + 8) = v22;
    v27[3] = v22;
    v40 = 1;
    v27[2] = sub_1B71A73D0(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    sub_1B7801E48();
    v23 = *(v6 + 32);
    v23(v21 + *(v28 + 20), v10, v5);
    v39 = 2;
    v24 = v31;
    v27[1] = 0;
    sub_1B7801DB8();
    v27[0] = v23;
    sub_1B72DFF88(v24, v21 + v37);
    v38 = 3;
    v25 = v30;
    sub_1B7801E48();
    (*(v19 + 8))(v34, v33);
    (v27[0])(v21 + *(v28 + 28), v25, v5);
    sub_1B72B4460(v21, v29);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_1B7688D50(v21, type metadata accessor for BankConnectTermsAndConditions);
  }
}

uint64_t sub_1B775F46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B71A73D0(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7280900(v2 + *(a2 + 24), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1B7802318();
    sub_1B7800768();
    (*(v5 + 8))(v7, v4);
  }

  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t BankConnectTermsAndConditions.shouldBeReviewed.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankConnectTermsAndConditions();
  sub_1B77FF938();
  v9 = sub_1B77FF8D8();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0 || (sub_1B7280900(v0 + *(v8 + 24), v3), v10 = 1, v11 = (*(v5 + 48))(v3, 1, v4), sub_1B7205418(v3, &qword_1EB98EBD0), v11 != 1))
  {
    v10 = sub_1B775F848();
  }

  return v10 & 1;
}

uint64_t sub_1B775F848()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v11 = type metadata accessor for BankConnectTermsAndConditions();
  sub_1B77FF938();
  v12 = sub_1B77FF8D8();
  v13 = *(v5 + 8);
  v13(v10, v4);
  if ((v12 & 1) != 0 || (v14 = *(v11 + 20), sub_1B77FF938(), v17[1] = v14, LOBYTE(v14) = sub_1B77FF8D8(), v13(v10, v4), (v14 & 1) == 0))
  {
    v15 = 0;
  }

  else
  {
    sub_1B7280900(v0 + *(v11 + 24), v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1B7205418(v3, &qword_1EB98EBD0);
      v15 = 1;
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
      v15 = sub_1B77FF8C8();
      v13(v8, v4);
    }
  }

  return v15 & 1;
}

uint64_t _s10FinanceKit29BankConnectTermsAndConditionsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for BankConnectTermsAndConditions();
  if ((sub_1B77FF918() & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  sub_1B7280900(a1 + v15, v13);
  sub_1B7280900(a2 + v15, &v13[v16]);
  v24 = v5;
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB98EBD0);
LABEL_14:
      v18 = sub_1B77FF918();
      return v18 & 1;
    }

    goto LABEL_10;
  }

  sub_1B7280900(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    (*(v24 + 8))(v10, v4);
LABEL_10:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    goto LABEL_11;
  }

  v20 = v24;
  (*(v24 + 32))(v7, &v13[v16], v4);
  sub_1B71A73D0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v21 = sub_1B7800828();
  v22 = *(v20 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  if (v21)
  {
    goto LABEL_14;
  }

LABEL_11:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_1B775FDF8()
{
  result = qword_1EB99D958;
  if (!qword_1EB99D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D958);
  }

  return result;
}

void sub_1B775FEBC()
{
  sub_1B77FF988();
  if (v0 <= 0x3F)
  {
    sub_1B72F2B80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B775FF68()
{
  result = qword_1EB99D970;
  if (!qword_1EB99D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D970);
  }

  return result;
}

unint64_t sub_1B775FFC0()
{
  result = qword_1EB99D978;
  if (!qword_1EB99D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D978);
  }

  return result;
}

unint64_t sub_1B7760018()
{
  result = qword_1EB99D980;
  if (!qword_1EB99D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D980);
  }

  return result;
}

uint64_t sub_1B776006C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEB00000000744164 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465776569766572 && a2 == 0xEA00000000007441 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656666456E69 && a2 == 0xEA00000000006E4FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

FinanceKit::ManagedOrderShippingType_optional __swiftcall ManagedOrderShippingType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = FinanceKit_ManagedOrderShippingType_delivery;
  }

  else
  {
    v1.value = FinanceKit_ManagedOrderShippingType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B7760264()
{
  result = qword_1EB99D988;
  if (!qword_1EB99D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D988);
  }

  return result;
}

FinanceKit::BackgroundRefreshUserPreference_optional __swiftcall BackgroundRefreshUserPreference.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B7760304()
{
  result = qword_1EB99D990;
  if (!qword_1EB99D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D990);
  }

  return result;
}

unint64_t sub_1B7760414()
{
  result = qword_1EB99D998;
  if (!qword_1EB99D998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99D9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D998);
  }

  return result;
}

unint64_t sub_1B7760498()
{
  result = qword_1EB99D9A8;
  if (!qword_1EB99D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D9A8);
  }

  return result;
}

uint64_t UserPresenceCreationError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

unint64_t UserPresence.XPC.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1B7760574@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t UserPresence.xpcValue.getter()
{
  v1 = type metadata accessor for UserPresence();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77606E0(v0, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  result = 0;
  if (v5 != 1)
  {
    v7 = sub_1B77FFA18();
    (*(*(v7 - 8) + 8))(v3, v7);
    return 1;
  }

  return result;
}

uint64_t type metadata accessor for UserPresence()
{
  result = qword_1EB99D9C8;
  if (!qword_1EB99D9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B77606E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserPresence();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UserPresence.init(xpcValue:operationID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1B77FFA18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1B7227AFC(a2, v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_1B7205418(v8, &unk_1EB993A10);
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v15 = sub_1B78000B8();
        __swift_project_value_buffer(v15, qword_1EDAF65B0);
        v16 = sub_1B7800098();
        v17 = sub_1B78011D8();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1B7198000, v16, v17, "Operation ID is not provided for background fetch", v18, 2u);
          MEMORY[0x1B8CA7A40](v18, -1, -1);
        }

        sub_1B7760AD8();
        swift_allocError();
        swift_willThrow();
        return sub_1B7205418(a2, &unk_1EB993A10);
      }

      else
      {
        sub_1B7205418(a2, &unk_1EB993A10);
        v19 = *(v10 + 32);
        v19(v12, v8, v9);
        v19(a3, v12, v9);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
        return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
      }
    }

    else
    {
      result = sub_1B7801C88();
      __break(1u);
    }
  }

  else
  {
    sub_1B7205418(a2, &unk_1EB993A10);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return result;
}

unint64_t sub_1B7760AD8()
{
  result = qword_1EB99D9B0;
  if (!qword_1EB99D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D9B0);
  }

  return result;
}

uint64_t _s10FinanceKit12UserPresenceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UserPresence();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D9E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B77606E0(a1, &v21 - v13);
  sub_1B77606E0(a2, &v14[v15]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) != 1)
  {
    sub_1B77606E0(v14, v10);
    if (v17(&v14[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B7760F88(v14);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_1B7205418(v14, &unk_1EB99D9E0);
    v18 = 0;
    return v18 & 1;
  }

  sub_1B7760F88(v14);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_1B7760DF4()
{
  result = qword_1EB99D9B8;
  if (!qword_1EB99D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D9B8);
  }

  return result;
}

unint64_t sub_1B7760E4C()
{
  result = qword_1EB99D9C0;
  if (!qword_1EB99D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D9C0);
  }

  return result;
}

uint64_t sub_1B7760ED8()
{
  sub_1B7760F30();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B7760F30()
{
  if (!qword_1EB99D9D8)
  {
    v0 = sub_1B77FFA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB99D9D8);
    }
  }
}

uint64_t sub_1B7760F88(uint64_t a1)
{
  v2 = type metadata accessor for UserPresence();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7760FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
  MEMORY[0x1B8CA4D30](a1, a2);
  MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
  MEMORY[0x1B8CA4D30](a3, a4);
  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  MEMORY[0x1B8CA4D30](0, 0xE000000000000000);
}

void __swiftcall FullyQualifiedTransactionIdentifier.init(transactionId:fullyQualifiedAccountIdentifier:)(FinanceKit::FullyQualifiedTransactionIdentifier *__return_ptr retstr, Swift::String transactionId, FinanceKit::FullyQualifiedAccountIdentifier fullyQualifiedAccountIdentifier)
{
  v3 = *fullyQualifiedAccountIdentifier.accountID._countAndFlagsBits;
  v4 = *(fullyQualifiedAccountIdentifier.accountID._countAndFlagsBits + 16);
  v5 = *(fullyQualifiedAccountIdentifier.accountID._countAndFlagsBits + 24);
  retstr->transactionId = transactionId;
  retstr->fullyQualifiedAccountIdentifier.accountID = v3;
  retstr->fullyQualifiedAccountIdentifier.institutionID._countAndFlagsBits = v4;
  retstr->fullyQualifiedAccountIdentifier.institutionID._object = v5;
}

void *InternalTransaction.displayLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 112));
  v2 = v1;
  return v1;
}

void sub_1B776114C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for InternalTransaction(0) + 112);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void InternalTransaction.displayLocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalTransaction(0) + 112);

  *(v1 + v3) = a1;
}

id InternalTransaction.xpcValue.getter()
{
  v1 = type metadata accessor for InternalTransaction(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B73B4A10(v0, v3);
  v4 = type metadata accessor for InternalTransaction.XPC(0);
  v5 = objc_allocWithZone(v4);
  sub_1B73B4A10(v3, v5 + OBJC_IVAR___XPCInternalTransaction_value);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1B7767C80(v3, type metadata accessor for InternalTransaction);
  return v6;
}

uint64_t InternalTransaction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InternalTransaction.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InternalTransaction.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InternalTransaction(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InternalTransaction.accountID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalTransaction(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InternalTransaction.transactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InternalTransaction(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t InternalTransaction.transactionID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for InternalTransaction(0) + 24);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t InternalTransaction.paymentHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 28));

  return v1;
}

uint64_t InternalTransaction.paymentHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalTransaction(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalTransaction.transactionAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InternalTransaction(0) + 32);
  v9 = *(v3 + 32);
  v4 = v9;
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  return sub_1B7215720(v8, v7);
}

__n128 InternalTransaction.transactionAmount.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InternalTransaction(0) + 32);
  v8 = *(v3 + 32);
  v4 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v4;
  sub_1B721722C(v7);
  result = *a1;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t InternalTransaction.foreignCurrencyAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InternalTransaction(0) + 36);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
}

__n128 InternalTransaction.foreignCurrencyAmount.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for InternalTransaction(0) + 36);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t InternalTransaction.foreignCurrencyExchangeRate.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for InternalTransaction(0);
  v8 = v3 + *(result + 40);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  *(v8 + 20) = BYTE4(a3) & 1;
  return result;
}

uint64_t InternalTransaction.creditDebitIndicator.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalTransaction(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t InternalTransaction.creditDebitIndicator.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalTransaction(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t InternalTransaction.merchantCategoryCode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for InternalTransaction(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

uint64_t InternalTransaction.merchantCategoryCode.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = type metadata accessor for InternalTransaction(0);
  v5 = v1 + *(result + 48);
  *v5 = v2;
  *(v5 + 2) = v3;
  return result;
}

uint64_t InternalTransaction.merchantName.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 52));

  return v1;
}

uint64_t InternalTransaction.merchantName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalTransaction(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalTransaction.transactionDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 56));

  return v1;
}

uint64_t InternalTransaction.transactionDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalTransaction(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalTransaction.originalTransactionDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 60));

  return v1;
}

uint64_t InternalTransaction.originalTransactionDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalTransaction(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalTransaction.transactionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalTransaction(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t InternalTransaction.transactionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalTransaction(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t InternalTransaction.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalTransaction(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t InternalTransaction.status.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalTransaction(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t InternalTransaction.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalTransaction(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t InternalTransaction.transactionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InternalTransaction(0) + 76);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InternalTransaction.transactionDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalTransaction(0) + 76);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InternalTransaction.isVisible.setter(char a1)
{
  result = type metadata accessor for InternalTransaction(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t InternalTransaction.hasNotificationServiceData.setter(char a1)
{
  result = type metadata accessor for InternalTransaction(0);
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t InternalTransaction.altDSID.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 100));

  return v1;
}

uint64_t InternalTransaction.altDSID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalTransaction(0) + 100));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalTransaction.pkServiceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 104));

  return v1;
}

uint64_t InternalTransaction.pkServiceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalTransaction(0) + 104));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*InternalTransaction.displayLocation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for InternalTransaction(0) + 112);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_1B77625D4;
}

void sub_1B77625D4(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  if (a2)
  {
    v6 = v5;

    *(v3 + v4) = v5;
  }

  else
  {

    *(v3 + v4) = v5;
  }
}

uint64_t InternalTransaction.displayLocationName.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 108));

  return v1;
}

uint64_t InternalTransaction.displayLocationName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalTransaction(0) + 108));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalTransaction.displayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InternalTransaction(0) + 116);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InternalTransaction.displayDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalTransaction(0) + 116);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InternalTransaction.monthAndYear.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalTransaction(0) + 120));

  return v1;
}

uint64_t InternalTransaction.monthAndYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalTransaction(0) + 120));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalTransaction.year.setter(uint64_t a1)
{
  result = type metadata accessor for InternalTransaction(0);
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t InternalTransaction.bankTransactionCode.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InternalTransaction(0) + 128));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1B7420484(v4, v5);
}

__n128 InternalTransaction.bankTransactionCode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InternalTransaction(0) + 128);
  sub_1B74204FC(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t InternalTransaction.proprietaryBankTransactionCode.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InternalTransaction(0) + 132));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1B7586148(v4, v5);
}

__n128 InternalTransaction.proprietaryBankTransactionCode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InternalTransaction(0) + 132);
  sub_1B74204FC(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t InternalTransaction.transactionCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalTransaction(0);
  *a1 = *(v1 + *(result + 136));
  return result;
}

uint64_t InternalTransaction.transactionCategory.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalTransaction(0);
  *(v1 + *(result + 136)) = v2;
  return result;
}

double InternalTransaction.init(id:accountID:transactionID:paymentHash:transactionAmount:foreignCurrencyAmount:foreignCurrencyExchangeRate:creditDebitIndicator:merchantCategoryCode:merchantName:transactionDescription:originalTransactionDescription:transactionType:status:source:transactionDate:postedDate:actions:isVisible:sharedId:hasNotificationServiceData:altDSID:pkServiceIdentifier:displayLocation:displayLocationName:displayDate:monthAndYear:year:bankTransactionCode:proprietaryBankTransactionCode:transactionCategory:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 *a12, unsigned __int16 *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 *a20, unsigned __int8 *a21, unsigned __int8 *a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, unsigned __int8 a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned __int8 a40, __int128 *a41, __int128 *a42, unsigned __int8 *a43)
{
  v186 = a8;
  v166 = a6;
  v165 = a5;
  v164 = a4;
  v197 = a2;
  v198 = a1;
  LODWORD(v180) = a40;
  v179 = a38;
  v178 = a36;
  v195 = a27;
  v196 = a25;
  v194 = a24;
  v187 = a32;
  v177 = a31;
  v176 = a30;
  v175 = a29;
  v174 = a28;
  v173 = a26;
  v172 = a19;
  v171 = a18;
  v170 = a17;
  v169 = a16;
  v168 = a15;
  v167 = a14;
  v162 = a11;
  v161 = a10;
  v189 = a43;
  v163 = a23;
  v135 = sub_1B77FFB08();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v132 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1B77FFC88();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v132 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1B77FED28();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v132 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  MEMORY[0x1EEE9AC00](v49 - 8);
  v132 = &v132 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3[1];
  v152 = *a3;
  v151 = v51;
  v150 = *(a3 + 16);
  v154 = *(a7 + 4);
  v155 = *a12;
  v157 = *a13;
  v156 = *(a13 + 2);
  v158 = *a20;
  v159 = *a21;
  v160 = *a22;
  v52 = *a41;
  v190 = a41[1];
  v191 = v52;
  v53 = *a42;
  v192 = a42[1];
  v193 = v53;
  LODWORD(v189) = *v189;
  v54 = type metadata accessor for InternalTransaction(0);
  v145 = (a9 + v54[7]);
  v55 = a9 + v54[9];
  *(v55 + 32) = 0;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  v56 = a9 + v54[10];
  *v56 = 0;
  *(v56 + 8) = 0;
  *(v56 + 16) = 0;
  *(v56 + 20) = 1;
  v57 = a9 + v54[12];
  *v57 = 0;
  *(v57 + 2) = 1;
  v148 = (a9 + v54[13]);
  v58 = v54[20];
  v153 = v58;
  v59 = sub_1B77FF988();
  v60 = *(v59 - 8);
  v61 = *(v60 + 56);
  v62 = a7[1];
  v143 = *a7;
  v142 = v62;
  v61(a9 + v58, 1, 1, v59);
  v63 = v54[21];
  v149 = v63;
  v64 = type metadata accessor for Actions();
  (*(*(v64 - 8) + 56))(a9 + v63, 1, 1, v64);
  v65 = v54[23];
  v147 = v65;
  v66 = sub_1B77FFA18();
  v67 = *(v66 - 8);
  (*(v67 + 56))(a9 + v65, 1, 1, v66);
  v68 = v54[26];
  v146 = (a9 + v54[25]);
  v69 = (a9 + v54[27]);
  *v69 = 0;
  v69[1] = 0;
  v184 = v69;
  v182 = v54[28];
  *(a9 + v182) = 0;
  v144 = (a9 + v68);
  v70 = (a9 + v54[32]);
  *v70 = 0u;
  v70[1] = 0u;
  v185 = v70;
  v71 = (a9 + v54[33]);
  *v71 = 0u;
  *(v71 + 1) = 0u;
  v188 = v71;
  v181 = v67;
  v72 = *(v67 + 16);
  v72(a9, v198, v66);
  v73 = a9 + v54[5];
  v183 = v66;
  v72(v73, v197, v66);
  v74 = a9 + v54[6];
  v75 = v151;
  *v74 = v152;
  *(v74 + 8) = v75;
  *(v74 + 16) = v150;
  v76 = v145;
  v77 = v165;
  *v145 = v164;
  v76[1] = v77;
  v78 = a9 + v54[8];
  v79 = v166;
  v80 = v166[1];
  *v78 = *v166;
  *(v78 + 16) = v80;
  *(v78 + 32) = *(v79 + 4);

  v81 = v142;
  *v55 = v143;
  *(v55 + 16) = v81;
  *(v55 + 32) = v154;
  v82 = v161;
  *v56 = v186;
  *(v56 + 8) = v82;
  BYTE4(v82) = BYTE4(v162);
  *(v56 + 16) = v162;
  *(v56 + 20) = BYTE4(v82) & 1;
  v83 = v163;
  *(a9 + v54[11]) = v155;
  v84 = v148;
  v85 = v168;
  *v148 = v167;
  v84[1] = v85;
  *v57 = v157;
  *(v57 + 2) = v156;
  v86 = (a9 + v54[14]);
  v87 = v170;
  *v86 = v169;
  v86[1] = v87;
  v88 = (a9 + v54[15]);
  v89 = v172;
  *v88 = v171;
  v88[1] = v89;
  *(a9 + v54[16]) = v158;
  *(a9 + v54[17]) = v159;
  *(a9 + v54[18]) = v160;
  v90 = v54[19];
  v186 = v60;
  v91 = *(v60 + 16);
  v91(a9 + v90, v83, v59);
  sub_1B73FE224(v194, a9 + v153, &qword_1EB98EBD0);
  sub_1B73FE224(v196, a9 + v149, &qword_1EB99DA00);
  *(a9 + v54[22]) = v173;
  sub_1B73FE224(v195, a9 + v147, &unk_1EB993A10);
  *(a9 + v54[24]) = v174;
  v92 = v146;
  v93 = v176;
  *v146 = v175;
  v92[1] = v93;
  v94 = v144;
  v95 = v187;
  *v144 = v177;
  v94[1] = v95;
  v96 = v178;
  v97 = a9 + v54[29];
  v187 = v59;
  v91(v97, v178, v59);
  v98 = v179;
  if (!v179)
  {
    v100 = v132;
    sub_1B77FFA68();
    type metadata accessor for FormatterConfiguration();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    a37 = ManagedInternalTransaction.MonthYearFormatter.format(_:)(v83);
    v98 = v101;
    sub_1B7767C80(v100, type metadata accessor for ManagedInternalTransaction.MonthYearFormatter);
  }

  v103 = a34;
  v102 = a35;
  v179 = a33;
  v104 = (a9 + v54[30]);
  *v104 = a37;
  v104[1] = v98;
  if (v180)
  {
    v105 = v134;
    v106 = v133;
    v107 = v135;
    (*(v134 + 104))(v133, *MEMORY[0x1E6969830], v135);
    v177 = a34;
    v108 = v136;
    sub_1B77FFB18();
    (*(v105 + 8))(v106, v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
    v109 = sub_1B77FFC68();
    v110 = *(v109 - 8);
    v111 = *(v110 + 80);
    v180 = a35;
    v112 = v83;
    v113 = (v111 + 32) & ~v111;
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_1B7807CD0;
    (*(v110 + 104))(v114 + v113, *MEMORY[0x1E6969A68], v109);
    sub_1B7545E58(v114);
    swift_setDeallocating();
    (*(v110 + 8))(v114 + v113, v109);
    swift_deallocClassInstance();
    v115 = v139;
    sub_1B77FFB68();

    (*(v137 + 8))(v108, v138);
    v116 = sub_1B77FEC58();
    LOBYTE(v109) = v117;
    v118 = v187;
    v119 = *(v186 + 8);
    v119(v96, v187);
    sub_1B7205418(v195, &unk_1EB993A10);
    sub_1B7205418(v196, &qword_1EB99DA00);
    sub_1B7205418(v194, &qword_1EB98EBD0);
    v119(v112, v118);
    v103 = v177;
    v120 = *(v181 + 8);
    v121 = v183;
    v120(v197, v183);
    v120(v198, v121);
    v102 = v180;
    (*(v140 + 8))(v115, v141);
    if (v109)
    {
      v116 = 0;
    }
  }

  else
  {
    v116 = a39;
    v122 = v187;
    v123 = *(v186 + 8);
    v123(v96, v187);
    sub_1B7205418(v195, &unk_1EB993A10);
    sub_1B7205418(v196, &qword_1EB99DA00);
    sub_1B7205418(v194, &qword_1EB98EBD0);
    v123(v83, v122);
    v124 = *(v181 + 8);
    v125 = v183;
    v124(v197, v183);
    v124(v198, v125);
  }

  *(a9 + v54[31]) = v116;
  *(a9 + v54[34]) = v189;
  *(a9 + v182) = v179;
  v126 = v184;
  v127 = v185;
  *v184 = v103;
  v126[1] = v102;
  sub_1B74204FC(*v127, *(v127 + 1));
  v128 = v190;
  *v127 = v191;
  v127[1] = v128;
  v129 = v188;
  sub_1B74204FC(*v188, v188[1]);
  v131 = v192;
  result = *&v193;
  *v129 = v193;
  *(v129 + 1) = v131;
  return result;
}

unint64_t sub_1B776391C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x49746E756F636361;
      break;
    case 2:
    case 12:
    case 15:
      result = 0x746361736E617274;
      break;
    case 3:
      result = 0x48746E656D796170;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x746E61686372656DLL;
      break;
    case 10:
    case 24:
      result = 0xD000000000000016;
      break;
    case 11:
    case 29:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0x737574617473;
      break;
    case 14:
      result = 0x656372756F73;
      break;
    case 16:
      result = 0x6144646574736F70;
      break;
    case 17:
      result = 0x736E6F69746361;
      break;
    case 18:
      result = 0x6C62697369567369;
      break;
    case 19:
      result = 0x6449646572616873;
      break;
    case 20:
      result = 0xD00000000000001ALL;
      break;
    case 21:
      result = 0x44495344746C61;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0x4479616C70736964;
      break;
    case 26:
      result = 0x646E4168746E6F6DLL;
      break;
    case 27:
      result = 1918985593;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    case 30:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7763C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B776ADB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7763C88(uint64_t a1)
{
  v2 = sub_1B77697F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7763CC4(uint64_t a1)
{
  v2 = sub_1B77697F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InternalTransaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77697F8();
  sub_1B78023F8();
  LOBYTE(v48) = 0;
  sub_1B77FFA18();
  sub_1B71A6BAC(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for InternalTransaction(0);
    LOBYTE(v48) = 1;
    sub_1B7801FC8();
    v52 = v9;
    v10 = (v3 + *(v9 + 24));
    v11 = *v10;
    v12 = v10[1];
    LOBYTE(v10) = *(v10 + 16);
    *&v48 = v11;
    *(&v48 + 1) = v12;
    LOBYTE(v49) = v10;
    LOBYTE(v45) = 2;
    sub_1B776984C();

    sub_1B7801FC8();

    v51 = 3;
    sub_1B7801EF8();
    v13 = (v3 + v52[8]);
    v14 = v13[1];
    v48 = *v13;
    v49 = v14;
    v50 = *(v13 + 4);
    v15 = v13[1];
    v45 = *v13;
    v46 = v15;
    v47 = *(v13 + 4);
    v44 = 4;
    sub_1B7215720(&v48, v42);
    v37 = sub_1B7215044();
    sub_1B7801FC8();
    v42[0] = v45;
    v42[1] = v46;
    v43 = v47;
    sub_1B721722C(v42);
    v16 = v52;
    v17 = (v3 + v52[9]);
    v18 = *(v17 + 4);
    v19 = v17[1];
    v39 = *v17;
    v40 = v19;
    v41 = v18;
    v38 = 5;

    sub_1B7801F38();

    v20 = (v3 + v16[10]);
    v21 = *(v20 + 4);
    v22 = *(v20 + 20);
    v39 = *v20;
    LODWORD(v40) = v21;
    BYTE4(v40) = v22;
    v38 = 6;
    type metadata accessor for Decimal(0);
    sub_1B71A6BAC(&unk_1EB99DA30, type metadata accessor for Decimal);
    sub_1B7801F38();
    LOBYTE(v39) = *(v3 + v16[11]);
    v38 = 7;
    sub_1B721BF7C();
    sub_1B7801FC8();
    v23 = (v3 + v16[12]);
    v24 = *v23;
    LOBYTE(v23) = *(v23 + 2);
    LOWORD(v39) = v24;
    BYTE2(v39) = v23;
    v38 = 8;
    sub_1B7408BE0();
    sub_1B7801F38();
    LOBYTE(v39) = 9;
    sub_1B7801EF8();
    LOBYTE(v39) = 10;
    sub_1B7801F78();
    LOBYTE(v39) = 11;
    sub_1B7801F78();
    LOBYTE(v39) = *(v3 + v52[16]);
    v38 = 12;
    sub_1B744B428();
    sub_1B7801FC8();
    LOBYTE(v39) = *(v3 + v52[17]);
    v38 = 13;
    sub_1B744B7F4();
    sub_1B7801FC8();
    LOBYTE(v39) = *(v3 + v52[18]);
    v38 = 14;
    sub_1B77698A0();
    sub_1B7801FC8();
    LOBYTE(v39) = 15;
    v25 = sub_1B77FF988();
    v26 = sub_1B71A6BAC(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    v37 = v25;
    v36[1] = v26;
    sub_1B7801FC8();
    LOBYTE(v39) = 16;
    sub_1B7801F38();
    LOBYTE(v39) = 17;
    type metadata accessor for Actions();
    sub_1B71A6BAC(&qword_1EB98F998, type metadata accessor for Actions);
    sub_1B7801F38();
    LOBYTE(v39) = 18;
    sub_1B7801F88();
    LOBYTE(v39) = 19;
    sub_1B7801F38();
    LOBYTE(v39) = 20;
    sub_1B7801F88();
    LOBYTE(v39) = 21;
    sub_1B7801EF8();
    LOBYTE(v39) = 22;
    sub_1B7801EF8();
    LOBYTE(v39) = 23;
    sub_1B7801EF8();
    *&v39 = *(v3 + v52[28]);
    v38 = 24;
    sub_1B75E46E4();
    sub_1B7801F38();
    LOBYTE(v39) = 25;
    sub_1B7801FC8();
    LOBYTE(v39) = 26;
    sub_1B7801F78();
    LOBYTE(v39) = 27;
    sub_1B7801FA8();
    v27 = (v3 + v52[32]);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    *&v39 = *v27;
    *(&v39 + 1) = v28;
    *&v40 = v29;
    *(&v40 + 1) = v30;
    v38 = 28;
    sub_1B7420484(v39, v28);
    sub_1B77698F4();
    sub_1B7801F38();
    sub_1B74204FC(v39, *(&v39 + 1));
    v31 = (v3 + v52[33]);
    v32 = v31[1];
    v33 = v31[2];
    v34 = v31[3];
    *&v39 = *v31;
    *(&v39 + 1) = v32;
    *&v40 = v33;
    *(&v40 + 1) = v34;
    v38 = 29;
    sub_1B7586148(v39, v32);
    sub_1B7586320();
    sub_1B7801F38();
    sub_1B74204FC(v39, *(&v39 + 1));
    LOBYTE(v39) = *(v3 + v52[34]);
    v38 = 30;
    sub_1B72C5958();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InternalTransaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a1;
  v117 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  *&v115 = &v108 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *&v114 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = &v108 - v7;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v116 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v108 - v12;
  v13 = sub_1B77FFA18();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  *&v123 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v108 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DA80);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v19 = &v108 - v18;
  v20 = type metadata accessor for InternalTransaction(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[v21[9]];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v134 = v24;
  v25 = &v23[v21[10]];
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 4) = 0;
  v25[20] = 1;
  v26 = &v23[v21[12]];
  *v26 = 0;
  v26[2] = 1;
  v27 = v21[20];
  v131 = v9;
  v132 = v8;
  v28 = *(v9 + 56);
  v128 = v27;
  v28(&v23[v27], 1, 1, v8);
  v29 = v20[21];
  v30 = type metadata accessor for Actions();
  v31 = *(*(v30 - 8) + 56);
  v127 = v29;
  v31(&v23[v29], 1, 1, v30);
  v32 = v20[23];
  v118 = v14;
  v33 = *(v14 + 56);
  v126 = v32;
  v120 = v13;
  v33(&v23[v32], 1, 1, v13);
  v34 = &v23[v20[32]];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v129 = v34;
  v135 = v20;
  v35 = v20[33];
  v133 = v23;
  v36 = &v23[v35];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v130 = v36;
  __swift_project_boxed_opaque_existential_1(v136, v136[3]);
  sub_1B77697F8();
  v37 = v125;
  sub_1B78023C8();
  if (v37)
  {
    v41 = v133;
    __swift_destroy_boxed_opaque_existential_1(v136);

    v125 = 0;
    v124 = 0;
    *&v123 = 0;
    v122 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = v135;
    goto LABEL_4;
  }

  v38 = v123;
  v125 = v25;
  v112 = v30;
  LOBYTE(v140) = 0;
  v39 = sub_1B71A6BAC(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  v40 = v120;
  sub_1B7801E48();
  v49 = *(v118 + 32);
  v50 = v19;
  v51 = v133;
  v49(v133, v124, v40);
  LOBYTE(v140) = 1;
  v111 = v50;
  sub_1B7801E48();
  v109 = 0;
  v124 = v39;
  v52 = v135;
  v49(&v51[v135[5]], v38, v40);
  LOBYTE(v137) = 2;
  sub_1B7769948();
  sub_1B7801E48();
  v57 = *(&v140 + 1);
  v58 = v141;
  v59 = &v51[v52[6]];
  *v59 = v140;
  *(v59 + 1) = v57;
  v59[16] = v58;
  LOBYTE(v140) = 3;
  v60 = sub_1B7801D78();
  v61 = &v51[v52[7]];
  *v61 = v60;
  v61[1] = v62;
  v108 = v62;
  v144 = 4;
  sub_1B72153F8();
  sub_1B7801E48();
  v63 = &v51[v52[8]];
  v64 = v141;
  *v63 = v140;
  *(v63 + 1) = v64;
  *(v63 + 4) = v142;
  v143 = 5;
  sub_1B7801DB8();
  v65 = v139;
  v66 = v134;
  v123 = v137;
  v110 = v138;

  v67 = v110;
  *v66 = v123;
  *(v66 + 1) = v67;
  *(v66 + 4) = v65;
  type metadata accessor for Decimal(0);
  v143 = 6;
  sub_1B71A6BAC(&unk_1EB99DAA0, type metadata accessor for Decimal);
  sub_1B7801DB8();
  v68 = v138;
  v69 = BYTE4(v138);
  v70 = v125;
  *v125 = v137;
  *(v70 + 4) = v68;
  v70[20] = v69;
  v143 = 7;
  sub_1B721BFD0();
  sub_1B7801E48();
  v51[v135[11]] = v137;
  v143 = 8;
  sub_1B7408B8C();
  sub_1B7801DB8();
  v71 = BYTE2(v137);
  *v26 = v137;
  v26[2] = v71;
  LOBYTE(v137) = 9;
  v72 = sub_1B7801D78();
  *&v110 = v73;
  v74 = &v133[v135[13]];
  *v74 = v72;
  v74[1] = v73;
  LOBYTE(v137) = 10;
  v75 = sub_1B7801DF8();
  v76 = &v133[v135[14]];
  *v76 = v75;
  v76[1] = v77;
  LOBYTE(v137) = 11;
  v78 = sub_1B7801DF8();
  v79 = &v133[v135[15]];
  *v79 = v78;
  v79[1] = v80;
  v143 = 12;
  sub_1B744B350();
  sub_1B7801E48();
  v133[v135[16]] = v137;
  v143 = 13;
  sub_1B744B71C();
  sub_1B7801E48();
  v133[v135[17]] = v137;
  v143 = 14;
  sub_1B776999C();
  sub_1B7801E48();
  v133[v135[18]] = v137;
  LOBYTE(v137) = 15;
  sub_1B71A6BAC(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801E48();
  v81 = *(v131 + 32);
  v81(&v133[v135[19]], v122, v132);
  LOBYTE(v137) = 16;
  sub_1B7801DB8();
  sub_1B7213740(v113, &v133[v128], &qword_1EB98EBD0);
  LOBYTE(v137) = 17;
  sub_1B71A6BAC(&qword_1EB98F9F8, type metadata accessor for Actions);
  sub_1B7801DB8();
  sub_1B7213740(v114, &v133[v127], &qword_1EB99DA00);
  LOBYTE(v137) = 18;
  v133[v135[22]] = sub_1B7801E08() & 1;
  LOBYTE(v137) = 19;
  sub_1B7801DB8();
  sub_1B7213740(v115, &v133[v126], &unk_1EB993A10);
  LOBYTE(v137) = 20;
  v133[v135[24]] = sub_1B7801E08() & 1;
  LOBYTE(v137) = 21;
  v82 = sub_1B7801D78();
  v125 = v83;
  v84 = &v133[v135[25]];
  *v84 = v82;
  v84[1] = v83;
  LOBYTE(v137) = 22;
  v85 = sub_1B7801D78();
  v124 = v86;
  v87 = &v133[v135[26]];
  *v87 = v85;
  v87[1] = v86;
  LOBYTE(v137) = 23;
  v88 = sub_1B7801D78();
  *&v123 = v89;
  v90 = &v133[v135[27]];
  *v90 = v88;
  v90[1] = v89;
  v143 = 24;
  sub_1B75E4738();
  sub_1B7801DB8();
  v91 = v135[28];
  v122 = v137;
  *&v133[v91] = v137;
  LOBYTE(v137) = 25;
  sub_1B7801E48();
  v81(&v133[v135[29]], v116, v132);
  LOBYTE(v137) = 26;
  v92 = sub_1B7801DF8();
  v94 = &v133[v135[30]];
  *v94 = v92;
  v94[1] = v93;
  LOBYTE(v137) = 27;
  v95 = sub_1B7801E28();
  v116 = 0;
  *&v133[v135[31]] = v95;
  v143 = 28;
  sub_1B77699F0();
  v96 = v116;
  sub_1B7801DB8();
  v116 = v96;
  if (!v96)
  {
    v97 = v129;
    v98 = *v129;
    v99 = v129[1];
    v115 = v137;
    v114 = v138;
    sub_1B74204FC(v98, v99);
    v100 = v114;
    *v97 = v115;
    *(v97 + 1) = v100;
    v143 = 29;
    sub_1B7586574();
    v101 = v116;
    sub_1B7801DB8();
    v116 = v101;
    if (!v101)
    {
      v102 = v130;
      v103 = *v130;
      v104 = v130[1];
      v115 = v137;
      v114 = v138;
      sub_1B74204FC(v103, v104);
      v105 = v114;
      *v102 = v115;
      *(v102 + 1) = v105;
      v143 = 30;
      sub_1B72C5A00();
      v106 = v116;
      sub_1B7801E48();
      v116 = v106;
      if (!v106)
      {
        (*(v119 + 8))(v111, v121);
        v107 = v133;
        v133[v135[34]] = v137;
        sub_1B73B4A10(v107, v117);
        __swift_destroy_boxed_opaque_existential_1(v136);
        return sub_1B7767C80(v107, type metadata accessor for InternalTransaction);
      }
    }
  }

  (*(v119 + 8))(v111, v121);
  __swift_destroy_boxed_opaque_existential_1(v136);
  LODWORD(v121) = 1;
  LODWORD(v119) = 1;
  v46 = 1;
  v45 = 1;
  v44 = 1;
  v43 = 1;
  v42 = 1;
  v41 = v133;
  v53 = *(v118 + 8);
  v54 = v120;
  v53(v133, v120);
  if (v109)
  {
    if (v121)
    {
      goto LABEL_18;
    }

LABEL_21:

    v47 = v135;
    if (!v119)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v53(&v41[v135[5]], v54);
  if ((v121 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v47 = v135;

  if ((v119 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_22:
  v55 = &v41[v47[8]];
  v56 = *(v55 + 1);
  v140 = *v55;
  v141 = v56;
  v142 = *(v55 + 4);
  sub_1B721722C(&v140);
LABEL_4:

  if (!v46)
  {
    if (!v45)
    {
      goto LABEL_6;
    }

LABEL_14:

    if (!v44)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v45)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v44)
  {
LABEL_7:
    (*(v131 + 8))(&v41[v47[19]], v132);
  }

LABEL_8:
  sub_1B7205418(&v41[v128], &qword_1EB98EBD0);
  sub_1B7205418(&v41[v127], &qword_1EB99DA00);
  sub_1B7205418(&v41[v126], &unk_1EB993A10);

  if (v43)
  {
    (*(v131 + 8))(&v41[v47[29]], v132);
  }

  if (v42)
  {
  }

  sub_1B74204FC(*v129, v129[1]);
  return sub_1B74204FC(*v130, v130[1]);
}

uint64_t sub_1B77663A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1B77FFA18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B7766418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v5 = *(v3 + 32);
  v9 = v5;
  *a2 = v8[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  return sub_1B7215720(v8, v7);
}

uint64_t sub_1B7766460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
}

uint64_t sub_1B77664A8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_1B77664E0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t sub_1B7766518@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 48));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 2);
  *a2 = v4;
  *(a2 + 2) = v3;
  return result;
}

uint64_t sub_1B7766554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_1B77FF988();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t InternalTransaction.hash(into:)()
{
  sub_1B77FFA18();
  sub_1B71A6BAC(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);

  return sub_1B7800768();
}

uint64_t InternalTransaction.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A6BAC(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7766708()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A6BAC(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7766790()
{
  sub_1B77FFA18();
  sub_1B71A6BAC(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);

  return sub_1B7800768();
}

uint64_t sub_1B7766814()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A6BAC(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t TransactionIdentifier.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransactionIdentifier.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

FinanceKit::TransactionIdentifier __swiftcall TransactionIdentifier.init(value:isStable:)(FinanceKit::TransactionIdentifier value, Swift::Bool isStable)
{
  *v2 = value.value;
  *(v2 + 16) = isStable;
  value.isStable = isStable;
  return value;
}

uint64_t static TransactionIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1B78020F8();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1B77669BC()
{
  if (*v0)
  {
    return 0x656C626174537369;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1B77669F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C626174537369 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7766ACC(uint64_t a1)
{
  v2 = sub_1B7769A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7766B08(uint64_t a1)
{
  v2 = sub_1B7769A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransactionIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DAF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7769A44();
  sub_1B78023F8();
  v12 = 0;
  v7 = v9[1];
  sub_1B7801F78();
  if (!v7)
  {
    v11 = 1;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TransactionIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t TransactionIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DB08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7769A44();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_1B7801E08();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7766F84()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B7767020()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B7767080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1B78020F8();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t FullyQualifiedTransactionIdentifier.transactionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FullyQualifiedTransactionIdentifier.transactionId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FullyQualifiedTransactionIdentifier.fullyQualifiedAccountIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 FullyQualifiedTransactionIdentifier.fullyQualifiedAccountIdentifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

uint64_t sub_1B7767228()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0x746361736E617274;
  }
}

uint64_t sub_1B7767274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B7875770 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7767360(uint64_t a1)
{
  v2 = sub_1B7769A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B776739C(uint64_t a1)
{
  v2 = sub_1B7769A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FullyQualifiedTransactionIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DB10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = v1[3];
  v13 = v1[2];
  v14 = v7;
  v8 = v1[5];
  v12 = v1[4];
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7769A98();
  sub_1B78023F8();
  LOBYTE(v17) = 0;
  v9 = v16;
  sub_1B7801F78();
  if (!v9)
  {
    v17 = v13;
    v18 = v14;
    v19 = v12;
    v20 = v15;
    v21 = 1;
    sub_1B7214EA0();

    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FullyQualifiedTransactionIdentifier.hash(into:)()
{
  sub_1B7800798();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t FullyQualifiedTransactionIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t FullyQualifiedTransactionIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DB28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7769A98();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18[0]) = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v12 = v9;
  v19 = 1;
  sub_1B72151E8();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v13 = v18[0];
  v14 = v18[1];
  v15 = v18[2];
  v16 = v18[3];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FullyQualifiedTransactionIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000033, 0x80000001B788B860);
  MEMORY[0x1B8CA4D30](v1, v2);
  MEMORY[0x1B8CA4D30](0xD000000000000023, 0x80000001B788B8A0);
  sub_1B7760FE4(v3, v4, v5, v6);
  MEMORY[0x1B8CA4D30](2695212, 0xE300000000000000);
  return 0;
}

uint64_t static ManagedInternalTransaction.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98EB58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B7767AE0()
{
  if (qword_1EB98EB58 != -1)
  {
    swift_once();
  }
}

id InternalTransaction.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B73B4A10(a1, v3 + OBJC_IVAR___XPCInternalTransaction_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B7767C80(a1, type metadata accessor for InternalTransaction);
  return v4;
}

id InternalTransaction.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1B73B4A10(a1, v1 + OBJC_IVAR___XPCInternalTransaction_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B7767C80(a1, type metadata accessor for InternalTransaction);
  return v4;
}

uint64_t sub_1B7767C80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id InternalTransaction.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B72099DC(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id InternalTransaction.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B72099DC(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id InternalTransaction.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InternalTransaction.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B7768020(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B73B4A10(a1, v3 + OBJC_IVAR___XPCInternalTransaction_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B7767C80(a1, type metadata accessor for InternalTransaction);
  return v4;
}

BOOL _s10FinanceKit35FullyQualifiedTransactionIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (v2 == v6 && v4 == v7 || (sub_1B78020F8() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_1B78020F8() & 1) != 0);
  }

  v10 = sub_1B78020F8();
  result = 0;
  if (v10)
  {
    return (v2 == v6 && v4 == v7 || (sub_1B78020F8() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_1B78020F8() & 1) != 0);
  }

  return result;
}

BOOL _s10FinanceKit19InternalTransactionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FFA18();
  v168 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v164 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v166 = &v149 - v7;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB9943A0);
  MEMORY[0x1EEE9AC00](v165);
  v169 = &v149 - v8;
  v9 = type metadata accessor for Actions();
  v170 = *(v9 - 8);
  v171 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v167 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v149 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBD0);
  MEMORY[0x1EEE9AC00](v14);
  v172 = &v149 - v15;
  v16 = sub_1B77FF988();
  v173 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v149 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v149 - v23;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v163 = v4;
  v25 = type metadata accessor for InternalTransaction(0);
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v26 = v25[6];
  v162 = a1;
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = *(a1 + v26 + 16);
  v161 = a2;
  v30 = a2 + v26;
  v31 = *(v30 + 16);
  if (v27 == *v30 && v28 == *(v30 + 8))
  {
    if (v29 != v31)
    {
      return 0;
    }

LABEL_9:
    v34 = v25[7];
    v35 = v162;
    v36 = (v162 + v34);
    v37 = *(v162 + v34 + 8);
    v38 = v161;
    v39 = (v161 + v34);
    v40 = v39[1];
    if (v37)
    {
      if (!v40 || (*v36 != *v39 || v37 != v40) && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v40)
    {
      return 0;
    }

    v41 = (v35 + v25[8]);
    *&v180[16] = *(v41 + 4);
    v42 = v41[1];
    v179 = *v41;
    *v180 = v42;
    v160 = v25;
    v43 = (v38 + v25[8]);
    *&v182[16] = *(v43 + 4);
    v44 = v43[1];
    v181 = *v43;
    *v182 = v44;
    sub_1B7215720(&v179, &v174);
    sub_1B7215720(&v181, &v174);
    if ((MEMORY[0x1B8CA5970](v179, *(&v179 + 1), *v180, v181, *(&v181 + 1), *v182) & 1) == 0)
    {
      sub_1B721722C(&v181);
      sub_1B721722C(&v179);
      return 0;
    }

    if (*&v180[8] == *&v182[8])
    {
      sub_1B721722C(&v181);
      sub_1B721722C(&v179);
    }

    else
    {
      v45 = sub_1B78020F8();
      sub_1B721722C(&v181);
      sub_1B721722C(&v179);
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }

    v46 = v160[9];
    v47 = (v35 + v46);
    v48 = *(v35 + v46 + 32);
    v49 = (v38 + v46);
    v50 = v49[4];
    if (v48)
    {
      v52 = v47[2];
      v51 = v47[3];
      v55 = v47;
      v53 = *v47;
      v54 = v55[1];
      if (v50)
      {
        v156 = v51;
        v153 = *v49;
        v152 = v49[1];
        v57 = v49[2];
        v56 = v49[3];
        v151 = v57;
        v150 = v56;
        v157 = v48;
        v158 = v54;
        v58 = v50;
        v159 = v52;
        v59 = v53;
        swift_bridgeObjectRetain_n();
        v154 = v58;

        v155 = v59;
        if (MEMORY[0x1B8CA5970](v59, v158, v159, v153, v152, v151))
        {
          if (v156 == v150 && v157 == v154)
          {

            v35 = v162;
LABEL_38:
            v174 = v155;
            v175 = v158;
            v176 = v159;
            v177 = v156;
            v178 = v157;
            sub_1B721722C(&v174);
            goto LABEL_39;
          }

          LODWORD(v153) = sub_1B78020F8();

          v35 = v162;
          if (v153)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }

        v174 = v155;
        v175 = v158;
        v176 = v159;
        v177 = v156;
        v178 = v157;
        sub_1B721722C(&v174);
LABEL_33:

        return 0;
      }

      v174 = v53;
      v175 = v54;
      v176 = v52;
      v177 = v51;
      v178 = v48;
      swift_bridgeObjectRetain_n();
      sub_1B721722C(&v174);
    }

    else
    {
      if (!v50)
      {
LABEL_39:

        v60 = v160;
        v61 = v160[10];
        v62 = v35 + v61;
        v63 = *(v35 + v61 + 20);
        v64 = v38 + v61;
        if (v63)
        {
          if ((*(v64 + 20) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (*(v64 + 20))
          {
            return 0;
          }

          v65 = MEMORY[0x1B8CA5970](*v62, *(v62 + 8), *(v62 + 16), *v64, *(v64 + 8), *(v64 + 16));
          v60 = v160;
          if ((v65 & 1) == 0)
          {
            return 0;
          }
        }

        if (*(v35 + v60[11]) != *(v38 + v60[11]))
        {
          return 0;
        }

        v66 = v60[13];
        v67 = (v35 + v66);
        v68 = *(v35 + v66 + 8);
        v69 = (v38 + v66);
        v70 = v69[1];
        if (v68)
        {
          if (!v70)
          {
            return 0;
          }

          if (*v67 != *v69 || v68 != v70)
          {
            v71 = sub_1B78020F8();
            v60 = v160;
            if ((v71 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v70)
        {
          return 0;
        }

        v72 = v60[12];
        v73 = (v35 + v72);
        v74 = *(v35 + v72 + 2);
        v75 = (v38 + v72);
        if (v74)
        {
          if ((v75[1] & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v75[1] & 1) != 0 || *v73 != *v75)
        {
          return 0;
        }

        v76 = v60[14];
        v77 = *(v35 + v76);
        v78 = *(v35 + v76 + 8);
        v79 = (v38 + v76);
        if (v77 != *v79 || v78 != v79[1])
        {
          v80 = sub_1B78020F8();
          v60 = v160;
          if ((v80 & 1) == 0)
          {
            return 0;
          }
        }

        v81 = v60[15];
        v82 = *(v35 + v81);
        v83 = *(v35 + v81 + 8);
        v84 = (v38 + v81);
        if ((v82 != *v84 || v83 != v84[1]) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }

        if (*(v35 + v160[16]) != *(v38 + v160[16]) || *(v35 + v160[17]) != *(v38 + v160[17]) || *(v162 + v160[18]) != *(v161 + v160[18]) || (sub_1B77FF918() & 1) == 0)
        {
          return 0;
        }

        v85 = v160[20];
        v86 = *(v22 + 48);
        sub_1B7205588(v162 + v85, v24, &qword_1EB98EBD0);
        sub_1B7205588(v161 + v85, &v24[v86], &qword_1EB98EBD0);
        v87 = *(v173 + 48);
        if (v87(v24, 1, v16) == 1)
        {
          if (v87(&v24[v86], 1, v16) == 1)
          {
            sub_1B7205418(v24, &qword_1EB98EBD0);
            goto LABEL_74;
          }
        }

        else
        {
          sub_1B7205588(v24, v21, &qword_1EB98EBD0);
          if (v87(&v24[v86], 1, v16) != 1)
          {
            v90 = v173;
            (*(v173 + 32))(v18, &v24[v86], v16);
            sub_1B71A6BAC(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
            v91 = sub_1B7800828();
            v92 = *(v90 + 8);
            v92(v18, v16);
            v92(v21, v16);
            sub_1B7205418(v24, &qword_1EB98EBD0);
            if ((v91 & 1) == 0)
            {
              return 0;
            }

LABEL_74:
            v93 = v160[21];
            v94 = *(v14 + 48);
            v95 = v172;
            sub_1B7205588(v162 + v93, v172, &qword_1EB99DA00);
            sub_1B7205588(v161 + v93, v95 + v94, &qword_1EB99DA00);
            v96 = *(v170 + 48);
            if (v96(v95, 1, v171) == 1)
            {
              if (v96(v172 + v94, 1, v171) == 1)
              {
                sub_1B7205418(v172, &qword_1EB99DA00);
LABEL_82:
                if (*(v162 + v160[22]) != *(v161 + v160[22]))
                {
                  return 0;
                }

                v101 = v160[23];
                v102 = *(v165 + 48);
                v103 = v169;
                sub_1B7205588(v162 + v101, v169, &unk_1EB993A10);
                sub_1B7205588(v161 + v101, v103 + v102, &unk_1EB993A10);
                v104 = *(v168 + 48);
                if (v104(v103, 1, v163) == 1)
                {
                  if (v104(v169 + v102, 1, v163) == 1)
                  {
                    sub_1B7205418(v169, &unk_1EB993A10);
LABEL_90:
                    v113 = v160[25];
                    v114 = (v162 + v113);
                    v115 = *(v162 + v113 + 8);
                    v116 = (v161 + v113);
                    v117 = v116[1];
                    if (v115)
                    {
                      if (!v117 || (*v114 != *v116 || v115 != v117) && (sub_1B78020F8() & 1) == 0)
                      {
                        return 0;
                      }
                    }

                    else if (v117)
                    {
                      return 0;
                    }

                    v118 = v160[26];
                    v119 = (v162 + v118);
                    v120 = *(v162 + v118 + 8);
                    v121 = (v161 + v118);
                    v122 = v121[1];
                    if (v120)
                    {
                      if (!v122 || (*v119 != *v121 || v120 != v122) && (sub_1B78020F8() & 1) == 0)
                      {
                        return 0;
                      }
                    }

                    else if (v122)
                    {
                      return 0;
                    }

                    v123 = v160[30];
                    v124 = (v162 + v123);
                    v125 = *(v162 + v123 + 8);
                    v126 = (v161 + v123);
                    if ((*v124 != *v126 || v125 != v126[1]) && (sub_1B78020F8() & 1) == 0 || *(v162 + v160[31]) != *(v161 + v160[31]))
                    {
                      return 0;
                    }

                    v127 = v160[32];
                    v128 = *(v162 + v127);
                    v129 = *(v162 + v127 + 8);
                    v130 = *(v162 + v127 + 16);
                    v131 = *(v162 + v127 + 24);
                    v132 = (v161 + v127);
                    v133 = *v132;
                    v134 = v132[1];
                    v136 = v132[2];
                    v135 = v132[3];
                    if (!v129)
                    {
                      sub_1B7420484(v128, 0);
                      if (v134)
                      {
                        sub_1B7420484(v133, v134);
                        goto LABEL_119;
                      }

                      sub_1B7420484(v133, 0);
                      v129 = 0;
                      goto LABEL_123;
                    }

                    if (!v134)
                    {
                      sub_1B7420484(v128, v129);
                      sub_1B7420484(v133, 0);
                      sub_1B7420484(v128, v129);

                      goto LABEL_119;
                    }

                    if ((v128 != v133 || v129 != v134) && (sub_1B78020F8() & 1) == 0)
                    {
                      sub_1B7420484(v128, v129);
                      sub_1B7420484(v133, v134);
                      sub_1B7420484(v128, v129);
                      sub_1B74204FC(v133, v134);

LABEL_143:

                      v137 = v128;
                      v138 = v129;
                      goto LABEL_144;
                    }

                    if (v130 == v136 && v131 == v135)
                    {
                      sub_1B7420484(v128, v129);
                      sub_1B7420484(v133, v134);
                      sub_1B7420484(v128, v129);
                      sub_1B74204FC(v133, v134);

LABEL_123:
                      sub_1B74204FC(v128, v129);
                      goto LABEL_124;
                    }

                    v139 = sub_1B78020F8();
                    sub_1B7420484(v128, v129);
                    sub_1B7420484(v133, v134);
                    sub_1B7420484(v128, v129);
                    sub_1B74204FC(v133, v134);

                    sub_1B74204FC(v128, v129);
                    if (v139)
                    {
LABEL_124:
                      v140 = v160[33];
                      v128 = *(v162 + v140);
                      v129 = *(v162 + v140 + 8);
                      v141 = *(v162 + v140 + 16);
                      v142 = *(v162 + v140 + 24);
                      v143 = (v161 + v140);
                      v133 = *v143;
                      v134 = v143[1];
                      v144 = v143[2];
                      v145 = v143[3];
                      if (v129)
                      {
                        if (v134)
                        {
                          if (v128 == v133 && v129 == v134 || (sub_1B78020F8() & 1) != 0)
                          {
                            if (!v142)
                            {
                              sub_1B7586148(v128, v129);
                              if (!v145)
                              {
                                sub_1B7586148(v133, v134);
                                sub_1B7586148(v128, v129);
                                v146 = v133;
                                v147 = v134;
                                goto LABEL_148;
                              }

                              goto LABEL_141;
                            }

                            if (v145)
                            {
                              if (v141 == v144 && v142 == v145)
                              {
                                sub_1B7586148(v128, v129);
                                sub_1B7586148(v133, v134);
                                sub_1B7586148(v128, v129);
                                v146 = v133;
                                v147 = v134;
LABEL_148:
                                sub_1B74204FC(v146, v147);
LABEL_149:

                                goto LABEL_150;
                              }

                              v148 = sub_1B78020F8();
                              sub_1B7586148(v128, v129);
                              sub_1B7586148(v133, v134);
                              sub_1B7586148(v128, v129);
                              sub_1B74204FC(v133, v134);
                              if (v148)
                              {
                                goto LABEL_149;
                              }

                              goto LABEL_142;
                            }
                          }

                          sub_1B7586148(v128, v129);
LABEL_141:
                          sub_1B7586148(v133, v134);
                          sub_1B7586148(v128, v129);
                          sub_1B74204FC(v133, v134);
LABEL_142:

                          goto LABEL_143;
                        }

                        sub_1B7586148(v128, v129);
                        sub_1B7586148(v133, 0);
                        sub_1B7586148(v128, v129);
                      }

                      else
                      {
                        sub_1B7586148(v128, 0);
                        if (!v134)
                        {
                          sub_1B7586148(v133, 0);
                          v129 = 0;
LABEL_150:
                          sub_1B74204FC(v128, v129);
                          return *(v162 + v160[34]) == *(v161 + v160[34]);
                        }

                        sub_1B7586148(v133, v134);
                      }

LABEL_119:
                      sub_1B74204FC(v128, v129);
                      v137 = v133;
                      v138 = v134;
LABEL_144:
                      sub_1B74204FC(v137, v138);
                    }

                    return 0;
                  }
                }

                else
                {
                  v105 = v169;
                  sub_1B7205588(v169, v166, &unk_1EB993A10);
                  if (v104(v105 + v102, 1, v163) != 1)
                  {
                    v106 = v168;
                    v107 = v169;
                    v108 = v164;
                    v109 = v163;
                    (*(v168 + 32))(v164, v169 + v102, v163);
                    sub_1B71A6BAC(&qword_1EB99DBE0, MEMORY[0x1E69695A8]);
                    v110 = v166;
                    v111 = sub_1B7800828();
                    v112 = *(v106 + 8);
                    v112(v108, v109);
                    v112(v110, v109);
                    sub_1B7205418(v107, &unk_1EB993A10);
                    if ((v111 & 1) == 0)
                    {
                      return 0;
                    }

                    goto LABEL_90;
                  }

                  (*(v168 + 8))(v166, v163);
                }

                v88 = qword_1EB9943A0;
                v89 = v169;
LABEL_80:
                sub_1B7205418(v89, v88);
                return 0;
              }
            }

            else
            {
              v97 = v172;
              sub_1B7205588(v172, v13, &qword_1EB99DA00);
              if (v96(v97 + v94, 1, v171) != 1)
              {
                v98 = v172;
                v99 = v167;
                sub_1B7349308(v172 + v94, v167);
                v100 = _s10FinanceKit7ActionsV2eeoiySbAC_ACtFZ_0(v13, v99);
                sub_1B7767C80(v99, type metadata accessor for Actions);
                sub_1B7767C80(v13, type metadata accessor for Actions);
                sub_1B7205418(v98, &qword_1EB99DA00);
                if (!v100)
                {
                  return 0;
                }

                goto LABEL_82;
              }

              sub_1B7767C80(v13, type metadata accessor for Actions);
            }

            v88 = &unk_1EB99DBD0;
            v89 = v172;
            goto LABEL_80;
          }

          (*(v173 + 8))(v21, v16);
        }

        v88 = &qword_1EB98FCE0;
        v89 = v24;
        goto LABEL_80;
      }
    }

    goto LABEL_33;
  }

  v32 = sub_1B78020F8();
  result = 0;
  if ((v32 & 1) != 0 && ((v29 ^ v31) & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1B77697F8()
{
  result = qword_1EB99DA10;
  if (!qword_1EB99DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DA10);
  }

  return result;
}

unint64_t sub_1B776984C()
{
  result = qword_1EB99DA20;
  if (!qword_1EB99DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DA20);
  }

  return result;
}

unint64_t sub_1B77698A0()
{
  result = qword_1EB99DA58;
  if (!qword_1EB99DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DA58);
  }

  return result;
}

unint64_t sub_1B77698F4()
{
  result = qword_1EB99DA68;
  if (!qword_1EB99DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DA68);
  }

  return result;
}

unint64_t sub_1B7769948()
{
  result = qword_1EB99DA90;
  if (!qword_1EB99DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DA90);
  }

  return result;
}

unint64_t sub_1B776999C()
{
  result = qword_1EB99DAC8;
  if (!qword_1EB99DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DAC8);
  }

  return result;
}

unint64_t sub_1B77699F0()
{
  result = qword_1EB99DAD8;
  if (!qword_1EB99DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DAD8);
  }

  return result;
}

unint64_t sub_1B7769A44()
{
  result = qword_1EB99DB00;
  if (!qword_1EB99DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB00);
  }

  return result;
}

unint64_t sub_1B7769A98()
{
  result = qword_1EB99DB18;
  if (!qword_1EB99DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB18);
  }

  return result;
}

unint64_t _s10FinanceKit26ManagedInternalTransactionC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B78097B0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = 0xD00000000000001ELL;
  *(v0 + 48) = 0x80000001B788CB80;
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = 0xD000000000000020;
  *(v0 + 72) = 0x80000001B788CBA0;
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = 0xD000000000000025;
  *(v0 + 96) = 0x80000001B788CBD0;
  *(v0 + 104) = swift_getKeyPath();
  *(v0 + 112) = 0xD000000000000025;
  *(v0 + 120) = 0x80000001B788CBD0;
  *(v0 + 128) = swift_getKeyPath();
  *(v0 + 136) = 0xD000000000000027;
  *(v0 + 144) = 0x80000001B788CC00;
  *(v0 + 152) = swift_getKeyPath();
  *(v0 + 160) = 0xD000000000000025;
  *(v0 + 168) = 0x80000001B788CBD0;
  *(v0 + 176) = swift_getKeyPath();
  *(v0 + 184) = 0xD000000000000027;
  *(v0 + 192) = 0x80000001B788CC00;
  *(v0 + 200) = swift_getKeyPath();
  *(v0 + 208) = 0xD000000000000033;
  *(v0 + 216) = 0x80000001B788CC30;
  *(v0 + 224) = swift_getKeyPath();
  *(v0 + 232) = 0xD00000000000001ALL;
  *(v0 + 240) = 0x80000001B7878DE0;
  *(v0 + 248) = swift_getKeyPath();
  *(v0 + 256) = 0xD000000000000021;
  *(v0 + 264) = 0x80000001B788CC70;
  *(v0 + 272) = swift_getKeyPath();
  *(v0 + 280) = 0xD000000000000031;
  *(v0 + 288) = 0x80000001B788CCA0;
  *(v0 + 296) = swift_getKeyPath();
  *(v0 + 304) = 0xD000000000000031;
  *(v0 + 312) = 0x80000001B788CCA0;
  *(v0 + 320) = swift_getKeyPath();
  *(v0 + 328) = 0xD000000000000031;
  *(v0 + 336) = 0x80000001B78754B0;
  *(v0 + 344) = swift_getKeyPath();
  *(v0 + 352) = 0xD000000000000031;
  *(v0 + 360) = 0x80000001B78754B0;
  *(v0 + 368) = swift_getKeyPath();
  *(v0 + 376) = 0xD00000000000002CLL;
  *(v0 + 384) = 0x80000001B788CCE0;
  *(v0 + 392) = swift_getKeyPath();
  *(v0 + 400) = 0xD00000000000002CLL;
  *(v0 + 408) = 0x80000001B788CCE0;
  *(v0 + 416) = swift_getKeyPath();
  *(v0 + 424) = 0xD000000000000023;
  *(v0 + 432) = 0x80000001B788CD10;
  *(v0 + 440) = swift_getKeyPath();
  *(v0 + 448) = 0xD000000000000023;
  *(v0 + 456) = 0x80000001B788CD10;
  *(v0 + 464) = swift_getKeyPath();
  *(v0 + 472) = 0xD000000000000027;
  *(v0 + 480) = 0x80000001B7878DB0;
  *(v0 + 488) = swift_getKeyPath();
  *(v0 + 496) = 0xD000000000000022;
  *(v0 + 504) = 0x80000001B788CD40;
  *(v0 + 512) = swift_getKeyPath();
  *(v0 + 520) = 0xD000000000000024;
  *(v0 + 528) = 0x80000001B788CD70;
  *(v0 + 536) = swift_getKeyPath();
  *(v0 + 544) = 0xD00000000000002ELL;
  *(v0 + 552) = 0x80000001B787D440;
  *(v0 + 560) = swift_getKeyPath();
  *(v0 + 568) = 0xD000000000000036;
  *(v0 + 576) = 0x80000001B788CDA0;
  *(v0 + 584) = swift_getKeyPath();
  *(v0 + 592) = 0x48746E656D796170;
  *(v0 + 600) = 0xEB00000000687361;
  *(v0 + 608) = swift_getKeyPath();
  *(v0 + 616) = 0x6156656372756F73;
  *(v0 + 624) = 0xEB0000000065756CLL;
  *(v0 + 632) = swift_getKeyPath();
  *(v0 + 640) = 0x6156656372756F73;
  *(v0 + 648) = 0xEB0000000065756CLL;
  *(v0 + 656) = swift_getKeyPath();
  *(v0 + 664) = 0x6449646572616873;
  *(v0 + 672) = 0xE800000000000000;
  *(v0 + 680) = swift_getKeyPath();
  *(v0 + 688) = 0xD00000000000001ALL;
  *(v0 + 696) = 0x80000001B788CB00;
  *(v0 + 704) = swift_getKeyPath();
  *(v0 + 712) = 0xD000000000000015;
  *(v0 + 720) = 0x80000001B788CDE0;
  *(v0 + 728) = swift_getKeyPath();
  strcpy((v0 + 736), "transactionId");
  *(v0 + 750) = -4864;
  *(v0 + 752) = swift_getKeyPath();
  *(v0 + 760) = 0x44495344746C61;
  *(v0 + 768) = 0xE700000000000000;
  *(v0 + 776) = swift_getKeyPath();
  *(v0 + 784) = 0xD000000000000023;
  *(v0 + 792) = 0x80000001B788CE00;
  *(v0 + 800) = swift_getKeyPath();
  *(v0 + 808) = 0xD000000000000024;
  *(v0 + 816) = 0x80000001B788CE30;
  *(v0 + 824) = swift_getKeyPath();
  *(v0 + 832) = 0xD000000000000023;
  *(v0 + 840) = 0x80000001B788CE00;
  *(v0 + 848) = swift_getKeyPath();
  *(v0 + 856) = 0xD000000000000024;
  *(v0 + 864) = 0x80000001B788CE30;
  *(v0 + 872) = swift_getKeyPath();
  *(v0 + 880) = 0xD000000000000023;
  *(v0 + 888) = 0x80000001B788CE00;
  *(v0 + 896) = swift_getKeyPath();
  *(v0 + 904) = 0xD000000000000018;
  *(v0 + 912) = 0x80000001B788CE60;
  *(v0 + 920) = swift_getKeyPath();
  *(v0 + 928) = 0xD00000000000001ALL;
  *(v0 + 936) = 0x80000001B788CE80;
  *(v0 + 944) = swift_getKeyPath();
  *(v0 + 952) = 0xD000000000000018;
  *(v0 + 960) = 0x80000001B788CE60;
  *(v0 + 968) = swift_getKeyPath();
  *(v0 + 976) = 0xD00000000000001ALL;
  *(v0 + 984) = 0x80000001B788CE80;
  *(v0 + 992) = swift_getKeyPath();
  *(v0 + 1000) = 0xD000000000000018;
  *(v0 + 1008) = 0x80000001B788CE60;
  *(v0 + 1016) = swift_getKeyPath();
  *(v0 + 1024) = 1918985593;
  *(v0 + 1032) = 0xE400000000000000;
  *(v0 + 1040) = swift_getKeyPath();
  strcpy((v0 + 1048), "monthAndYear");
  *(v0 + 1061) = 0;
  *(v0 + 1062) = -5120;
  *(v0 + 1064) = swift_getKeyPath();
  *(v0 + 1072) = 0xD000000000000013;
  *(v0 + 1080) = 0x80000001B788CB20;
  *(v0 + 1088) = swift_getKeyPath();
  *(v0 + 1096) = 0xD000000000000022;
  *(v0 + 1104) = 0x80000001B7888A90;
  *(v0 + 1112) = swift_getKeyPath();
  *(v0 + 1120) = 0xD000000000000022;
  *(v0 + 1128) = 0x80000001B7888A90;
  *(v0 + 1136) = swift_getKeyPath();
  *(v0 + 1144) = 0x6C62697369567369;
  *(v0 + 1152) = 0xE900000000000065;
  v1 = sub_1B7202424(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

unint64_t _s10FinanceKit26ManagedInternalTransactionC20comparablePredicatesSDys10AnyKeyPathCSo11NSPredicateCGSgvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = swift_getKeyPath();
  v1 = sub_1B7800838();
  v2 = objc_opt_self();
  v3 = [v2 expressionForKeyPath_];

  v4 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v3 rightExpression:v4 modifier:0 type:5 options:0];

  *(inited + 40) = v5;
  v6 = sub_1B7202524(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &unk_1EB99DBB0);
  return v6;
}

unint64_t sub_1B776A448()
{
  result = qword_1EB99DB40;
  if (!qword_1EB99DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB40);
  }

  return result;
}

unint64_t sub_1B776A4A0()
{
  result = qword_1EB99DB48;
  if (!qword_1EB99DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB48);
  }

  return result;
}

void sub_1B776A51C()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, qword_1EDAFCF10);
      if (v2 <= 0x3F)
      {
        sub_1B776A7F4(319, &qword_1EDAFC4A8, type metadata accessor for Decimal);
        if (v3 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EDAFCC50);
          if (v4 <= 0x3F)
          {
            sub_1B77FF988();
            if (v5 <= 0x3F)
            {
              sub_1B776A7F4(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
              if (v6 <= 0x3F)
              {
                sub_1B776A7F4(319, qword_1EDAFC750, type metadata accessor for Actions);
                if (v7 <= 0x3F)
                {
                  sub_1B776A7F4(319, &qword_1EDAFD2F0, MEMORY[0x1E69695A8]);
                  if (v8 <= 0x3F)
                  {
                    sub_1B72F2CB8(319, qword_1EDAFC660);
                    if (v9 <= 0x3F)
                    {
                      sub_1B72F2CB8(319, &qword_1EDAFCD68);
                      if (v10 <= 0x3F)
                      {
                        sub_1B72F2CB8(319, qword_1EDAFC8E0);
                        if (v11 <= 0x3F)
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

void sub_1B776A7F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1B776A870()
{
  result = type metadata accessor for InternalTransaction(319);
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

uint64_t getEnumTagSinglePayload for InternalTransaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalTransaction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B776AAA0()
{
  result = qword_1EB99DB60;
  if (!qword_1EB99DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB60);
  }

  return result;
}

unint64_t sub_1B776AAF8()
{
  result = qword_1EB99DB68;
  if (!qword_1EB99DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB68);
  }

  return result;
}

unint64_t sub_1B776AB50()
{
  result = qword_1EB99DB70;
  if (!qword_1EB99DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB70);
  }

  return result;
}

unint64_t sub_1B776ABA8()
{
  result = qword_1EB99DB78;
  if (!qword_1EB99DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB78);
  }

  return result;
}

unint64_t sub_1B776AC00()
{
  result = qword_1EB99DB80;
  if (!qword_1EB99DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB80);
  }

  return result;
}

unint64_t sub_1B776AC58()
{
  result = qword_1EB99DB88;
  if (!qword_1EB99DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB88);
  }

  return result;
}

unint64_t sub_1B776ACB0()
{
  result = qword_1EB99DB90;
  if (!qword_1EB99DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB90);
  }

  return result;
}

unint64_t sub_1B776AD08()
{
  result = qword_1EB99DB98;
  if (!qword_1EB99DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB98);
  }

  return result;
}

unint64_t sub_1B776AD60()
{
  result = qword_1EB99DBA0;
  if (!qword_1EB99DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DBA0);
  }

  return result;
}

uint64_t sub_1B776ADB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48746E656D796170 && a2 == 0xEB00000000687361 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B788CAC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B788CAE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B788B7C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875C70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B787E2A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC000000656D614ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7882370 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B788B770 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657461446E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6144646574736F70 && a2 == 0xEA00000000006574 || (sub_1B78020F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6C62697369567369 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6449646572616873 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B788CB00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788CB20 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788CB40 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B788CB60 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEB00000000657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x646E4168746E6F6DLL && a2 == 0xEC00000072616559 || (sub_1B78020F8() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788ADD0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B7885140 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B787E2C0 == a2)
  {

    return 30;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
}

uint64_t ManagedFinHealthTransactionInsightsImporter.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManagedTransactionCategoryImporter();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void ManagedFinHealthTransactionInsightsImporter.insertOrUpdateEntityGroup(_:transactionIDs:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for FinHealthTransactionInsight.EntityGroup(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v26 = *v3;
  sub_1B776BAC8(a2);
  if (v4)
  {
    if (qword_1EDAFAF50 != -1)
    {
      swift_once();
    }

    v12 = sub_1B78000B8();
    __swift_project_value_buffer(v12, qword_1EDAFAF58);
    sub_1B776D654(a1, v10, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
    v13 = v4;
    v14 = sub_1B7800098();
    v15 = sub_1B78011D8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315650;
      *(v16 + 4) = sub_1B71A3EF8(0xD000000000000026, 0x80000001B787CA70, &v26);
      *(v16 + 12) = 2080;
      sub_1B77FFA18();
      sub_1B71A6970(&qword_1EB98F120);
      v19 = sub_1B7802068();
      v21 = v20;
      sub_1B776D6BC(v10, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
      v22 = sub_1B71A3EF8(v19, v21, &v26);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2112;
      v23 = v4;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v24;
      *v17 = v24;
      _os_log_impl(&dword_1B7198000, v14, v15, "Could not insert or update %s with ID %s. %@", v16, 0x20u);
      sub_1B726B694(v17);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v18, -1, -1);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
    }

    else
    {

      sub_1B776D6BC(v10, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
    }

    swift_willThrow();
  }

  else
  {
    v26 = v11;
    sub_1B776BECC(a1, a2, a3);
    v26 = v11;
    sub_1B776C3D4(a1, a2);
  }
}

void sub_1B776BAC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    type metadata accessor for ManagedInternalTransaction();
    v23.receiver = swift_getObjCClassFromMetadata();
    v23.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v3 = objc_msgSendSuper2(&v23, sel_fetchRequest);
    v4 = sub_1B7800C18();
    [v3 setRelationshipKeyPathsForPrefetching_];

    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B7807CD0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
    *(v5 + 64) = sub_1B72A6DD4();
    *(v5 + 32) = a1;

    v6 = sub_1B78010E8();
    [v3 setPredicate_];

    v7 = sub_1B7801488();
    if (!v1 && v7 != *(a1 + 16))
    {
      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v8 = sub_1B78000B8();
      __swift_project_value_buffer(v8, qword_1EDAFAF58);

      v9 = sub_1B7800098();
      v10 = sub_1B78011D8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22 = v12;
        *v11 = 136315138;
        sub_1B77FFA18();
        sub_1B71A6970(&qword_1EB99DAF0);
        v13 = sub_1B7800FB8();
        v15 = sub_1B71A3EF8(v13, v14, &v22);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1B7198000, v9, v10, "Some of the transactions don't exist: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1B8CA7A40](v12, -1, -1);
        MEMORY[0x1B8CA7A40](v11, -1, -1);
      }

      sub_1B7201CA4();
      swift_allocError();
      *v16 = 6;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EDAFAF50 != -1)
    {
      swift_once();
    }

    v17 = sub_1B78000B8();
    __swift_project_value_buffer(v17, qword_1EDAFAF58);
    v18 = sub_1B7800098();
    v19 = sub_1B78011D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B7198000, v18, v19, "Failed to save FinHealth Insights. transactionIDs array is empty.", v20, 2u);
      MEMORY[0x1B8CA7A40](v20, -1, -1);
    }

    sub_1B7201CA4();
    swift_allocError();
    *v21 = 6;
    swift_willThrow();
  }
}

void sub_1B776BECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *v3;
  v7 = sub_1B776D454(a1, a3, type metadata accessor for FinHealthTransactionInsight.EntityGroup, sub_1B7287430, type metadata accessor for FinHealthTransactionInsight.EntityGroup, type metadata accessor for ManagedFinHealthTransactionEntityGroup);
  if (!v4)
  {
    v32 = v7;
    type metadata accessor for ManagedInternalTransaction();
    v34.receiver = swift_getObjCClassFromMetadata();
    v34.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v31 = objc_msgSendSuper2(&v34, sel_fetchRequest);
    v8 = sub_1B7800C18();
    [v31 setRelationshipKeyPathsForPrefetching_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B780C060;
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v33 = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B7807CD0;
    *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
    *(v10 + 64) = sub_1B72A6DD4();
    *(v10 + 32) = a2;

    *(v9 + 32) = sub_1B78010E8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B780C060;
    *(v11 + 32) = sub_1B78010E8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B7807CD0;
    v13 = sub_1B77FF9B8();
    *(v12 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
    *(v12 + 64) = sub_1B726E47C();
    *(v12 + 32) = v13;
    *(v11 + 40) = sub_1B78010E8();
    v14 = sub_1B7800C18();

    v15 = objc_opt_self();
    v16 = [v15 orPredicateWithSubpredicates_];

    *(v9 + 40) = v16;
    v17 = sub_1B7800C18();

    v18 = [v15 andPredicateWithSubpredicates_];

    [v31 setPredicate_];
    v19 = v33;
    v20 = sub_1B7801498();
    v21 = v20;
    if (v20 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1B8CA5DC0](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = MEMORY[0x1B8CA6D70]();
        ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(v19);
        v29 = v28;
        v30 = [v28 finHealthInsightObject];
        if (!v30)
        {
          type metadata accessor for ManagedFinHealthTransactionInsight();
          v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
          [v29 setFinHealthInsightObject_];
        }

        [v30 setFinHealthTransactionEntityGroupObject_];
        objc_autoreleasePoolPop(v27);

        ++v23;
        v19 = v33;
        if (v26 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }
}

void sub_1B776C3D4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ManagedInternalTransaction();
  v24.receiver = swift_getObjCClassFromMetadata();
  v24.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v3 = objc_msgSendSuper2(&v24, sel_fetchRequest);
  v4 = sub_1B7800C18();
  [v3 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7807CD0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
  *(v6 + 64) = sub_1B72A6DD4();
  *(v6 + 32) = a2;

  *(v5 + 32) = sub_1B78010E8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  v8 = sub_1B77FF9B8();
  *(v7 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v7 + 64) = sub_1B726E47C();
  *(v7 + 32) = v8;
  *(v5 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  [v3 setReturnsObjectsAsFaults_];
  v11 = sub_1B7800C18();
  [v3 setRelationshipKeyPathsForPrefetching_];

  v12 = v25;
  v13 = sub_1B7801498();
  v25 = v12;
  if (v12)
  {

    return;
  }

  v14 = v13;
  if (v13 >> 62)
  {
    v15 = sub_1B7801958();
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_17;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_5:
  v23 = v3;
  if (v15 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1B8CA5DC0](i, v14);
    }

    else
    {
      v17 = *(v14 + 8 * i + 32);
    }

    v18 = v17;
    v19 = MEMORY[0x1B8CA6D70]();
    v20 = [v18 insightsObject];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 finHealthInsightObject];

      if (v22)
      {
        [v22 setFinHealthTransactionEntityGroupObject_];
      }
    }

    objc_autoreleasePoolPop(v19);
  }

LABEL_17:
}

void ManagedFinHealthTransactionInsightsImporter.insertOrUpdateIncomeInsight(_:transactionIDs:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for FinHealthTransactionInsight.Income(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v26 = *v3;
  sub_1B776BAC8(a2);
  if (v4)
  {
    if (qword_1EDAFAF50 != -1)
    {
      swift_once();
    }

    v12 = sub_1B78000B8();
    __swift_project_value_buffer(v12, qword_1EDAFAF58);
    sub_1B776D654(a1, v10, type metadata accessor for FinHealthTransactionInsight.Income);
    v13 = v4;
    v14 = sub_1B7800098();
    v15 = sub_1B78011D8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315650;
      *(v16 + 4) = sub_1B71A3EF8(0xD00000000000001DLL, 0x80000001B787CAA0, &v26);
      *(v16 + 12) = 2080;
      sub_1B77FFA18();
      sub_1B71A6970(&qword_1EB98F120);
      v19 = sub_1B7802068();
      v21 = v20;
      sub_1B776D6BC(v10, type metadata accessor for FinHealthTransactionInsight.Income);
      v22 = sub_1B71A3EF8(v19, v21, &v26);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2112;
      v23 = v4;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v24;
      *v17 = v24;
      _os_log_impl(&dword_1B7198000, v14, v15, "Could not insert or update %s with ID %s. %@", v16, 0x20u);
      sub_1B726B694(v17);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v18, -1, -1);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
    }

    else
    {

      sub_1B776D6BC(v10, type metadata accessor for FinHealthTransactionInsight.Income);
    }

    swift_willThrow();
  }

  else
  {
    v26 = v11;
    sub_1B776CAE8(a1, a2, a3);
    v26 = v11;
    sub_1B776D010(a1, a2, a3);
  }
}

void sub_1B776CAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *v3;
  v7 = sub_1B776D454(a1, a3, type metadata accessor for FinHealthTransactionInsight.Income, sub_1B726E1F4, type metadata accessor for FinHealthTransactionInsight.Income, type metadata accessor for ManagedFinHealthIncomeInsight);
  if (!v4)
  {
    v32 = v7;
    type metadata accessor for ManagedInternalTransaction();
    v34.receiver = swift_getObjCClassFromMetadata();
    v34.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v31 = objc_msgSendSuper2(&v34, sel_fetchRequest);
    v8 = sub_1B7800C18();
    [v31 setRelationshipKeyPathsForPrefetching_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B780C060;
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v33 = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B7807CD0;
    *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
    *(v10 + 64) = sub_1B72A6DD4();
    *(v10 + 32) = a2;

    *(v9 + 32) = sub_1B78010E8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B780C060;
    *(v11 + 32) = sub_1B78010E8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B7807CD0;
    v13 = sub_1B77FF9B8();
    *(v12 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
    *(v12 + 64) = sub_1B726E47C();
    *(v12 + 32) = v13;
    *(v11 + 40) = sub_1B78010E8();
    v14 = sub_1B7800C18();

    v15 = objc_opt_self();
    v16 = [v15 orPredicateWithSubpredicates_];

    *(v9 + 40) = v16;
    v17 = v33;
    v18 = sub_1B7800C18();

    v19 = [v15 andPredicateWithSubpredicates_];

    [v31 setPredicate_];
    v20 = sub_1B7801498();
    v21 = v20;
    if (v20 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1B8CA5DC0](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = MEMORY[0x1B8CA6D70]();
        ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(v17);
        v29 = v28;
        v30 = [v28 finHealthInsightObject];
        if (!v30)
        {
          type metadata accessor for ManagedFinHealthTransactionInsight();
          v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
          [v29 setFinHealthInsightObject_];
        }

        [v30 setFinHealthIncomeInsightObject_];
        ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(v25, v33);

        objc_autoreleasePoolPop(v27);
        ++v23;
        v17 = v33;
        if (v26 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }
}

void sub_1B776D010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *v3;
  type metadata accessor for ManagedInternalTransaction();
  v27.receiver = swift_getObjCClassFromMetadata();
  v27.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v5 = objc_msgSendSuper2(&v27, sel_fetchRequest);
  v6 = sub_1B7800C18();
  [v5 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
  *(v8 + 64) = sub_1B72A6DD4();
  *(v8 + 32) = a2;

  *(v7 + 32) = sub_1B78010E8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  v10 = sub_1B77FF9B8();
  *(v9 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v9 + 64) = sub_1B726E47C();
  *(v9 + 32) = v10;
  *(v7 + 40) = sub_1B78010E8();
  v11 = sub_1B7800C18();

  v12 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v5 setPredicate_];
  [v5 setReturnsObjectsAsFaults_];
  v13 = sub_1B7800C18();
  [v5 setRelationshipKeyPathsForPrefetching_];

  v14 = sub_1B7801498();
  if (v25)
  {
  }

  else
  {
    v15 = v14;
    if (v14 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      v24 = v5;
      v5 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1B8CA5DC0](v5, v15);
        }

        else
        {
          if (v5 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v17 = *(v15 + 8 * v5 + 32);
        }

        v18 = v17;
        v19 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v20 = MEMORY[0x1B8CA6D70]();
        v21 = [v18 insightsObject];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 finHealthInsightObject];

          if (v23)
          {
            [v23 setFinHealthIncomeInsightObject_];
          }
        }

        else
        {
          v23 = 0;
        }

        ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(v18, a3);

        objc_autoreleasePoolPop(v20);
        ++v5;
        if (v19 == i)
        {

          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_22:
  }
}

uint64_t sub_1B776D454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v26 = a6;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - v17;
  result = a4(a1, a2);
  if (!v6)
  {
    v20 = v26;
    if (!result)
    {
      v21 = v13;
      sub_1B776D654(a1, v18, a5);
      v22 = [objc_allocWithZone(v20(0)) initWithContext_];
      v23 = sub_1B77FF9B8();
      [v22 setId_];

      sub_1B77FF938();
      v24 = sub_1B77FF8B8();
      (*(v21 + 8))(v15, v12);
      [v22 setUpdatedAt_];

      sub_1B776D6BC(v18, a5);
      return v22;
    }
  }

  return result;
}

uint64_t sub_1B776D654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B776D6BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id ManagedInternalTransaction.foundInInsight.getter()
{
  v1 = [v0 insightsObject];
  v2 = [v1 foundInInsightObject];

  return v2;
}

void FoundInTransactionInsight.init(managedInsight:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for FoundInMailItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ManagedFoundInTransactionInsight.mailItems.getter();
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v18 = v12;

    sub_1B776DC78(&v18);

    *a2 = v18;
    return;
  }

  v10 = sub_1B7801958();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
  sub_1B71FDFF0(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v17 = a2;
    v11 = 0;
    v12 = v18;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1B8CA5DC0](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      FoundInMailItem.init(_:)(v13, v7);
      v18 = v12;
      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_1B71FDFF0(v14 > 1, v15 + 1, 1);
        v12 = v18;
      }

      ++v11;
      v12[2] = v15 + 1;
      sub_1B776FC00(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15);
    }

    while (v10 != v11);

    a2 = v17;
    goto LABEL_14;
  }

  __break(1u);

  __break(1u);
}

uint64_t ManagedFoundInTransactionInsight.mailItems.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 mailItemObjects];
  v6 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B776FC64(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  while (v11)
  {
    sub_1B72051F0(&v10, v8);
    type metadata accessor for ManagedFoundInMailItem();
    if ((swift_dynamicCast() & 1) != 0 && v9)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      v6 = v12;
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);
  return v6;
}

void ManagedFoundInTransactionInsight.mailItems.setter(unint64_t a1)
{
  sub_1B723B6F0(a1);

  type metadata accessor for ManagedFoundInMailItem();
  sub_1B776FC64(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem);
  v2 = sub_1B7800F78();

  [v1 setMailItemObjects_];
}

uint64_t sub_1B776DC78(void **a1)
{
  v2 = *(type metadata accessor for FoundInMailItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B77E4CF4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B776E4EC(v6);
  *a1 = v3;
  return result;
}

void sub_1B776DD20(uint64_t a1, void **a2)
{
  v2 = *a2;

  sub_1B723B6F0(v3);

  type metadata accessor for ManagedFoundInMailItem();
  sub_1B776FC64(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem);
  v4 = sub_1B7800F78();

  [v2 setMailItemObjects_];
}

void (*ManagedFoundInTransactionInsight.mailItems.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedFoundInTransactionInsight.mailItems.getter();
  return sub_1B776DE38;
}

void sub_1B776DE38(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723B6F0(v3);

    type metadata accessor for ManagedFoundInMailItem();
    sub_1B776FC64(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem);
    v4 = sub_1B7800F78();

    [v2 setMailItemObjects_];
  }

  else
  {
    sub_1B723B6F0(*a1);

    type metadata accessor for ManagedFoundInMailItem();
    sub_1B776FC64(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem);
    v5 = sub_1B7800F78();

    [v2 setMailItemObjects_];
  }
}

id ManagedFoundInTransactionInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedFoundInTransactionInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedFoundInTransactionInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ManagedFoundInTransactionInsight.willSave()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
    v3 = sub_1B7800C38();

    v4 = v3 >> 62 ? sub_1B7801958() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = sub_1B7800838();
    v6 = [v0 objectIDsForRelationshipNamed_];

    v7 = sub_1B7800C38();
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v8)
      {
        return;
      }

      goto LABEL_7;
    }

    v10 = sub_1B7801958();

    if (!v10)
    {
LABEL_7:
      v9 = [v0 managedObjectContext];
      [v9 deleteObject_];
    }
  }
}

id static ManagedFoundInTransactionInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit32ManagedFoundInTransactionInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedFoundInTransactionInsight.insights(associatedWith:in:)(uint64_t a1)
{
  v7.receiver = swift_getObjCClassFromMetadata();
  v7.super_class = &OBJC_METACLASS____TtC10FinanceKit32ManagedFoundInTransactionInsight;
  v2 = objc_msgSendSuper2(&v7, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
  *(v3 + 64) = sub_1B72A6DD4();
  *(v3 + 32) = a1;

  v4 = sub_1B78010E8();
  [v2 setPredicate_];

  v5 = sub_1B7801498();
  return v5;
}

uint64_t sub_1B776E4EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B7802038();
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
        type metadata accessor for FoundInMailItem();
        v6 = sub_1B7800C78();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FoundInMailItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B776E950(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1B776E618(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B776E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FoundInMailItem();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v38 - v12);
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = (&v38 - v16);
  v40 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v46 = -v19;
    v47 = v18;
    v21 = a1 - a3;
    v39 = v19;
    v22 = v18 + v19 * a3;
    v45 = v8;
LABEL_6:
    v43 = v20;
    v44 = a3;
    v41 = v22;
    v42 = v21;
    while (1)
    {
      sub_1B7437084(v22, v17);
      sub_1B7437084(v20, v13);
      if ((sub_1B77FF918() & 1) == 0)
      {
        break;
      }

      v23 = *(v8 + 32);
      v24 = *(v17 + v23);
      v25 = *(v17 + v23 + 8);
      v26 = (v13 + v23);
      v27 = v24 == *v26 && v25 == v26[1];
      if (v27 || (sub_1B78020F8() & 1) != 0)
      {
        v8 = v45;
        v28 = *(v45 + 24);
        v29 = (v17 + v28);
        v30 = *(v17 + v28 + 8);
        v31 = (v13 + v28);
        v32 = v31[1];
        if (!v30)
        {
          if (v32)
          {
            sub_1B74370E8(v13);
            result = sub_1B74370E8(v17);
            v8 = v45;
            goto LABEL_30;
          }

LABEL_24:
          v8 = v45;
          if (*v17 == *v13 && v17[1] == v13[1])
          {
LABEL_4:
            sub_1B74370E8(v13);
            result = sub_1B74370E8(v17);
LABEL_5:
            a3 = v44 + 1;
            v20 = v43 + v39;
            v21 = v42 - 1;
            v22 = v41 + v39;
            if (v44 + 1 == v40)
            {
              return result;
            }

            goto LABEL_6;
          }

          v34 = sub_1B78020F8();
LABEL_27:
          v35 = v34;
          goto LABEL_29;
        }

        if (!v32)
        {
          goto LABEL_4;
        }

        v33 = *v29 == *v31 && v30 == v32;
        if (v33 || (sub_1B78020F8() & 1) != 0)
        {
          goto LABEL_24;
        }
      }

      v35 = sub_1B78020F8();
      v8 = v45;
LABEL_29:
      sub_1B74370E8(v13);
      result = sub_1B74370E8(v17);
      if ((v35 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_30:
      if (!v47)
      {
        __break(1u);
        return result;
      }

      v36 = v48;
      sub_1B776FC00(v22, v48);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1B776FC00(v36, v20);
      v20 += v46;
      v22 += v46;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    v34 = sub_1B77FF8D8();
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_1B776E950(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v8 = type metadata accessor for FoundInMailItem();
  v149 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v142 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v154 = &v134 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v134 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v134 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v134 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v151 = (&v134 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v135 = (&v134 - v25);
  result = MEMORY[0x1EEE9AC00](v24);
  v136 = (&v134 - v27);
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_145:
    v29 = *v138;
    if (!*v138)
    {
      goto LABEL_184;
    }

    a4 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_148:
      v157 = result;
      a4 = *(result + 16);
      if (a4 < 2)
      {
      }

      while (*a3)
      {
        v130 = *(result + 16 * a4);
        v131 = result;
        v132 = *(result + 16 * (a4 - 1) + 40);
        sub_1B776F4C0(*a3 + *(v149 + 72) * v130, *a3 + *(v149 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v149 + 72) * v132, v29);
        if (v5)
        {
        }

        if (v132 < v130)
        {
          goto LABEL_171;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_1B77E4CA4(v131);
        }

        if (a4 - 2 >= *(v131 + 2))
        {
          goto LABEL_172;
        }

        v133 = &v131[16 * a4];
        *v133 = v130;
        *(v133 + 1) = v132;
        v157 = v131;
        sub_1B77E4C18(a4 - 1);
        result = v157;
        a4 = *(v157 + 16);
        if (a4 <= 1)
        {
        }
      }

LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

LABEL_178:
    result = sub_1B77E4CA4(a4);
    goto LABEL_148;
  }

  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v137 = a4;
  v155 = v15;
  v156 = v8;
  v145 = v21;
  v140 = a3;
  while (2)
  {
    v143 = v30;
    if (v29 + 1 >= v28)
    {
      v41 = v29 + 1;
      goto LABEL_50;
    }

    v152 = v28;
    v150 = *a3;
    v31 = v150;
    v32 = *(v149 + 72);
    v33 = v29;
    v139 = v29;
    v34 = v150 + v32 * (v29 + 1);
    sub_1B7437084(v34, v136);
    v35 = v31 + v32 * v33;
    v36 = v135;
    sub_1B7437084(v35, v135);
    v37 = v136;
    LODWORD(v148) = _s10FinanceKit15FoundInMailItemV1loiySbAC_ACtFZ_0(v136, v36);
    sub_1B74370E8(v36);
    result = sub_1B74370E8(v37);
    v38 = v139 + 2;
    v153 = v32;
    v39 = v150 + v32 * (v139 + 2);
    while (1)
    {
      v41 = v152;
      if (v152 == v38)
      {
        break;
      }

      v150 = v5;
      v42 = v151;
      sub_1B7437084(v39, v151);
      sub_1B7437084(v34, v21);
      if (sub_1B77FF918())
      {
        v43 = *(v8 + 32);
        v44 = v21;
        v45 = *(v42 + v43);
        v46 = *(v42 + v43 + 8);
        v47 = &v44[v43];
        v48 = v45 == *v47 && v46 == *(v47 + 1);
        if (v48 || (sub_1B78020F8() & 1) != 0)
        {
          v8 = v156;
          v49 = *(v156 + 24);
          v50 = (v151 + v49);
          v51 = *(v151 + v49 + 8);
          v52 = &v145[v49];
          v53 = *(v52 + 1);
          if (v51)
          {
            if (v53)
            {
              v54 = *v50 == *v52 && v51 == v53;
              if (!v54 && (sub_1B78020F8() & 1) == 0)
              {
                goto LABEL_28;
              }

LABEL_25:
              v21 = v145;
              if (*v151 == *v145 && v151[1] == *(v145 + 1))
              {
                v40 = 0;
              }

              else
              {
                v40 = sub_1B78020F8();
              }

              v15 = v155;
              v8 = v156;
LABEL_33:
              v42 = v151;
              goto LABEL_7;
            }

            v40 = 0;
          }

          else
          {
            if (!v53)
            {
              goto LABEL_25;
            }

            v40 = 1;
            v8 = v156;
          }
        }

        else
        {
LABEL_28:
          v40 = sub_1B78020F8();
          v8 = v156;
        }

        v15 = v155;
        v21 = v145;
        goto LABEL_33;
      }

      v40 = sub_1B77FF8D8();
LABEL_7:
      sub_1B74370E8(v21);
      result = sub_1B74370E8(v42);
      ++v38;
      v39 += v153;
      v34 += v153;
      v5 = v150;
      if ((v148 ^ v40))
      {
        v41 = v38 - 1;
        break;
      }
    }

    v29 = v139;
    a3 = v140;
    a4 = v137;
    if (v148)
    {
      if (v41 < v139)
      {
        goto LABEL_175;
      }

      if (v139 < v41)
      {
        v150 = v5;
        v55 = v153 * (v41 - 1);
        v56 = v41 * v153;
        v57 = v41;
        v58 = v139;
        v59 = v139 * v153;
        do
        {
          if (v58 != --v57)
          {
            v60 = *v140;
            if (!*v140)
            {
              goto LABEL_181;
            }

            v61 = v41;
            sub_1B776FC00(v60 + v59, v142);
            if (v59 < v55 || v60 + v59 >= (v60 + v56))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v55)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1B776FC00(v142, v60 + v55);
            v41 = v61;
          }

          ++v58;
          v55 -= v153;
          v56 -= v153;
          v59 += v153;
        }

        while (v58 < v57);
        v5 = v150;
        v29 = v139;
        a3 = v140;
        a4 = v137;
        v15 = v155;
        v8 = v156;
      }
    }

LABEL_50:
    v62 = a3[1];
    if (v41 >= v62)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(v41, v29))
    {
      goto LABEL_174;
    }

    if (v41 - v29 >= a4)
    {
LABEL_59:
      v64 = v41;
      if (v41 < v29)
      {
        goto LABEL_173;
      }

      goto LABEL_60;
    }

    if (__OFADD__(v29, a4))
    {
      goto LABEL_176;
    }

    if ((v29 + a4) >= v62)
    {
      v63 = a3[1];
    }

    else
    {
      v63 = v29 + a4;
    }

    if (v63 < v29)
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v41 == v63)
    {
      goto LABEL_59;
    }

    v150 = v5;
    v111 = *a3;
    v112 = *(v149 + 72);
    v113 = *a3 + v112 * (v41 - 1);
    v114 = -v112;
    v139 = v29;
    v115 = v29 - v41;
    v153 = v111;
    v141 = v112;
    v116 = v111 + v41 * v112;
    v144 = v63;
    while (2)
    {
      v152 = v41;
      v146 = v116;
      v147 = v115;
      v148 = v113;
      v117 = v113;
      while (2)
      {
        sub_1B7437084(v116, v18);
        sub_1B7437084(v117, v15);
        if ((sub_1B77FF918() & 1) == 0)
        {
          v128 = sub_1B77FF8D8();
LABEL_134:
          a4 = v128;
LABEL_136:
          sub_1B74370E8(v15);
          result = sub_1B74370E8(v18);
          if ((a4 & 1) == 0)
          {
            goto LABEL_112;
          }

          goto LABEL_137;
        }

        v118 = *(v8 + 32);
        v119 = *(v18 + v118);
        v120 = *(v18 + v118 + 8);
        v121 = (v15 + v118);
        v122 = v119 == *v121 && v120 == v121[1];
        if (!v122 && (sub_1B78020F8() & 1) == 0)
        {
          goto LABEL_135;
        }

        v15 = v155;
        v8 = v156;
        v123 = *(v156 + 24);
        v124 = (v18 + v123);
        a4 = *(v18 + v123 + 8);
        v125 = (v155 + v123);
        v126 = v125[1];
        if (!a4)
        {
          if (!v126)
          {
            goto LABEL_131;
          }

          v15 = v155;
          sub_1B74370E8(v155);
          result = sub_1B74370E8(v18);
          v8 = v156;
LABEL_137:
          if (v153)
          {
            a4 = v154;
            sub_1B776FC00(v116, v154);
            swift_arrayInitWithTakeFrontToBack();
            sub_1B776FC00(a4, v117);
            v117 += v114;
            v116 += v114;
            if (__CFADD__(v115++, 1))
            {
              goto LABEL_112;
            }

            continue;
          }

          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        break;
      }

      if (!v126)
      {
        goto LABEL_111;
      }

      v127 = *v124 == *v125 && a4 == v126;
      if (!v127 && (sub_1B78020F8() & 1) == 0)
      {
LABEL_135:
        a4 = sub_1B78020F8();
        v15 = v155;
        v8 = v156;
        goto LABEL_136;
      }

LABEL_131:
      v15 = v155;
      v8 = v156;
      if (*v18 != *v155 || v18[1] != v155[1])
      {
        v128 = sub_1B78020F8();
        goto LABEL_134;
      }

LABEL_111:
      sub_1B74370E8(v15);
      sub_1B74370E8(v18);
LABEL_112:
      v41 = v152 + 1;
      v113 = v148 + v141;
      v115 = v147 - 1;
      v116 = v146 + v141;
      v64 = v144;
      if (v152 + 1 != v144)
      {
        continue;
      }

      break;
    }

    v5 = v150;
    v29 = v139;
    a3 = v140;
    if (v144 < v139)
    {
      goto LABEL_173;
    }

LABEL_60:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v143;
    }

    else
    {
      result = sub_1B723E420(0, *(v143 + 2) + 1, 1, v143);
      v30 = result;
    }

    a4 = *(v30 + 2);
    v65 = *(v30 + 3);
    v66 = a4 + 1;
    if (a4 >= v65 >> 1)
    {
      result = sub_1B723E420((v65 > 1), a4 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v66;
    v67 = &v30[16 * a4];
    *(v67 + 4) = v29;
    *(v67 + 5) = v64;
    v29 = *v138;
    if (*v138)
    {
      v144 = v64;
      if (!a4)
      {
LABEL_3:
        v28 = a3[1];
        v29 = v144;
        v21 = v145;
        a4 = v137;
        if (v144 >= v28)
        {
          goto LABEL_145;
        }

        continue;
      }

      while (2)
      {
        v68 = v66 - 1;
        if (v66 >= 4)
        {
          v73 = &v30[16 * v66 + 32];
          v74 = *(v73 - 64);
          v75 = *(v73 - 56);
          v79 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          if (v79)
          {
            goto LABEL_160;
          }

          v78 = *(v73 - 48);
          v77 = *(v73 - 40);
          v79 = __OFSUB__(v77, v78);
          v71 = v77 - v78;
          v72 = v79;
          if (v79)
          {
            goto LABEL_161;
          }

          v80 = &v30[16 * v66];
          v82 = *v80;
          v81 = *(v80 + 1);
          v79 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v79)
          {
            goto LABEL_163;
          }

          v79 = __OFADD__(v71, v83);
          v84 = v71 + v83;
          if (v79)
          {
            goto LABEL_166;
          }

          if (v84 >= v76)
          {
            v102 = &v30[16 * v68 + 32];
            v104 = *v102;
            v103 = *(v102 + 1);
            v79 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v79)
            {
              goto LABEL_170;
            }

            if (v71 < v105)
            {
              v68 = v66 - 2;
            }
          }

          else
          {
LABEL_79:
            if (v72)
            {
              goto LABEL_162;
            }

            v85 = &v30[16 * v66];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_165;
            }

            v91 = &v30[16 * v68 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_168;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_169;
            }

            if (v89 + v94 < v71)
            {
              goto LABEL_93;
            }

            if (v71 < v94)
            {
              v68 = v66 - 2;
            }
          }
        }

        else
        {
          if (v66 == 3)
          {
            v69 = *(v30 + 4);
            v70 = *(v30 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
            goto LABEL_79;
          }

          v95 = &v30[16 * v66];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_93:
          if (v90)
          {
            goto LABEL_164;
          }

          v98 = &v30[16 * v68];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_167;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }
        }

        a4 = v68 - 1;
        if (v68 - 1 >= v66)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        if (!*a3)
        {
          goto LABEL_180;
        }

        v106 = v30;
        v107 = *&v30[16 * a4 + 32];
        v108 = *&v30[16 * v68 + 40];
        sub_1B776F4C0(*a3 + *(v149 + 72) * v107, *a3 + *(v149 + 72) * *&v30[16 * v68 + 32], *a3 + *(v149 + 72) * v108, v29);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_158;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v109 = v106;
        }

        else
        {
          v109 = sub_1B77E4CA4(v106);
        }

        v15 = v155;
        if (a4 >= *(v109 + 2))
        {
          goto LABEL_159;
        }

        v110 = &v109[16 * a4];
        *(v110 + 4) = v107;
        *(v110 + 5) = v108;
        v157 = v109;
        result = sub_1B77E4C18(v68);
        v30 = v157;
        v66 = *(v157 + 16);
        v8 = v156;
        if (v66 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
  return result;
}

uint64_t sub_1B776F4C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for FoundInMailItem();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v63 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v66 = (&v60 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v60 - v14);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v60 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_108;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_109;
  }

  v22 = (a2 - a1) / v20;
  v71 = a1;
  v70 = a4;
  v68 = v8;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v24 < 1)
    {
      v41 = a4 + v24;
      goto LABEL_105;
    }

    v38 = -v20;
    v39 = a4 + v24;
    v40 = v63;
    v41 = a4 + v24;
    v67 = a4;
    v65 = v38;
    while (1)
    {
      v60 = v41;
      v42 = a2;
      a2 += v38;
      v61 = a2;
      v64 = v42;
      while (1)
      {
        if (v42 <= a1)
        {
          v71 = v42;
          v69 = v60;
          goto LABEL_106;
        }

        v43 = a3;
        v62 = v41;
        v44 = v39 + v38;
        v45 = v39 + v38;
        v46 = v66;
        sub_1B7437084(v45, v66);
        sub_1B7437084(a2, v40);
        v47 = v68;
        if ((sub_1B77FF918() & 1) == 0)
        {
          v59 = sub_1B77FF8D8();
          goto LABEL_90;
        }

        v48 = *(v47 + 32);
        v49 = *(v46 + v48);
        v50 = *(v46 + v48 + 8);
        v51 = (v40 + v48);
        v52 = v49 == *v51 && v50 == v51[1];
        if (!v52 && (sub_1B78020F8() & 1) == 0)
        {
          goto LABEL_85;
        }

        v53 = *(v68 + 24);
        v54 = (v66 + v53);
        v55 = *(v66 + v53 + 8);
        v40 = v63;
        v56 = (v63 + v53);
        v57 = v56[1];
        if (v55)
        {
          if (!v57)
          {
            goto LABEL_84;
          }

          v58 = *v54 == *v56 && v55 == v57;
          if (v58 || (sub_1B78020F8() & 1) != 0)
          {
LABEL_82:
            v40 = v63;
            if (*v66 == *v63 && v66[1] == v63[1])
            {
LABEL_84:
              v59 = 0;
            }

            else
            {
              v59 = sub_1B78020F8();
            }

            a2 = v61;
            goto LABEL_89;
          }

LABEL_85:
          v59 = sub_1B78020F8();
          goto LABEL_86;
        }

        if (!v57)
        {
          goto LABEL_82;
        }

        v59 = 1;
LABEL_86:
        a2 = v61;
        v40 = v63;
LABEL_89:
        v46 = v66;
LABEL_90:
        a3 = v43 + v65;
        sub_1B74370E8(v40);
        sub_1B74370E8(v46);
        if (v59)
        {
          break;
        }

        v41 = v44;
        if (v43 < v39 || a3 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
          v38 = v65;
        }

        else
        {
          v38 = v65;
          if (v43 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v39 = v44;
        v42 = v64;
        if (v44 <= v67)
        {
          a2 = v64;
          goto LABEL_105;
        }
      }

      if (v43 < v64 || a3 >= v64)
      {
        swift_arrayInitWithTakeFrontToBack();
        v41 = v62;
        v38 = v65;
      }

      else
      {
        v41 = v62;
        v38 = v65;
        if (v43 != v64)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      if (v39 <= v67)
      {
LABEL_105:
        v71 = a2;
        v69 = v41;
        goto LABEL_106;
      }
    }
  }

  v23 = v22 * v20;
  if (a4 < a1 || a1 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v66 = (a4 + v23);
  v69 = a4 + v23;
  if (v23 >= 1 && a2 < a3)
  {
    v65 = v20;
    do
    {
      sub_1B7437084(a2, v18);
      sub_1B7437084(a4, v15);
      if ((sub_1B77FF918() & 1) == 0)
      {
        v37 = sub_1B77FF8D8();
        goto LABEL_42;
      }

      v67 = a4;
      v26 = *(v8 + 32);
      v27 = *(v18 + v26);
      v28 = *(v18 + v26 + 8);
      v29 = (v15 + v26);
      v30 = v27 == *v29 && v28 == v29[1];
      if (v30 || (sub_1B78020F8() & 1) != 0)
      {
        v31 = *(v68 + 24);
        v32 = (v18 + v31);
        v33 = *(v18 + v31 + 8);
        v34 = (v15 + v31);
        v35 = v34[1];
        if (!v33)
        {
          if (v35)
          {
            sub_1B74370E8(v15);
            sub_1B74370E8(v18);
            a4 = v67;
            v8 = v68;
            v20 = v65;
            goto LABEL_43;
          }

LABEL_38:
          if (*v18 == *v15 && v18[1] == v15[1])
          {
LABEL_40:
            sub_1B74370E8(v15);
            sub_1B74370E8(v18);
            a4 = v67;
            v8 = v68;
            v20 = v65;
LABEL_47:
            if (a1 < a4 || a1 >= a4 + v20)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v70 = a4 + v20;
            a4 += v20;
            goto LABEL_55;
          }

          goto LABEL_41;
        }

        if (!v35)
        {
          goto LABEL_40;
        }

        v36 = *v32 == *v34 && v33 == v35;
        if (v36 || (sub_1B78020F8() & 1) != 0)
        {
          goto LABEL_38;
        }
      }

LABEL_41:
      v37 = sub_1B78020F8();
      a4 = v67;
      v8 = v68;
      v20 = v65;
LABEL_42:
      sub_1B74370E8(v15);
      sub_1B74370E8(v18);
      if ((v37 & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_43:
      if (a1 < a2 || a1 >= a2 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v20;
LABEL_55:
      a1 += v20;
      v71 = a1;
    }

    while (a4 < v66 && a2 < a3);
  }

LABEL_106:
  sub_1B778E574(&v71, &v70, &v69);
  return 1;
}

uint64_t sub_1B776FC00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoundInMailItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B776FC64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t static ManagedBankConnectTermsAndConditions.existingTermsAndConditions(withID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedBankConnectTermsAndConditions;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

void static ManagedBankConnectTermsAndConditions.update(_:with:)(void *a1)
{
  type metadata accessor for BankConnectTermsAndConditions();
  v2 = sub_1B77FF8B8();
  [a1 setPublishedAt_];

  v3 = sub_1B77FF8B8();
  [a1 setInEffectOn_];
}

id ManagedBankConnectTermsAndConditions.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  v6 = sub_1B7800838();
  [v5 setId_];

  type metadata accessor for BankConnectTermsAndConditions();
  v7 = sub_1B77FF8B8();
  [v5 setPublishedAt_];

  v8 = sub_1B77FF8B8();
  [v5 setInEffectOn_];

  sub_1B7770BE4(a1, type metadata accessor for BankConnectTermsAndConditions);
  return v5;
}

{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  v6 = sub_1B7800838();
  [v5 setId_];

  type metadata accessor for RawBankConnectData.TermsAndConditions();
  v7 = sub_1B77FF8B8();
  [v5 setPublishedAt_];

  v8 = sub_1B77FF8B8();
  [v5 setInEffectOn_];

  sub_1B7770BE4(a1, type metadata accessor for RawBankConnectData.TermsAndConditions);
  return v5;
}

void sub_1B7770058(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 id];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1B77700B0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 reviewedAt];
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

void sub_1B7770154(uint64_t a1, void **a2)
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

  [v7 setReviewedAt_];
}

id ManagedBankConnectTermsAndConditions.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBankConnectTermsAndConditions.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBankConnectTermsAndConditions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedBankConnectTermsAndConditions.__allocating_init(id:publishedAt:reviewedAt:inEffectOn:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = [objc_allocWithZone(v6) initWithContext_];
  v15 = sub_1B7800838();

  [v14 setId_];

  v16 = sub_1B77FF8B8();
  [v14 setPublishedAt_];

  sub_1B7280900(a4, v13);
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v13, 1, v17) != 1)
  {
    v19 = sub_1B77FF8B8();
    (*(v18 + 8))(v13, v17);
  }

  [v14 setReviewedAt_];

  v20 = sub_1B77FF8B8();
  [v14 setInEffectOn_];

  v21 = *(v18 + 8);
  v21(a5, v17);
  sub_1B71F31EC(a4);
  v21(a3, v17);
  return v14;
}

void static ManagedBankConnectTermsAndConditions.update(_:publishedAt:reviewedAt:inEffectOn:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1B77FF8B8();
  [a1 setPublishedAt_];

  sub_1B7280900(a3, v7);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B77FF8B8();
    (*(v10 + 8))(v7, v9);
  }

  [a1 setReviewedAt_];

  v12 = sub_1B77FF8B8();
  [a1 setInEffectOn_];
}

Swift::Void __swiftcall ManagedBankConnectTermsAndConditions.willSave()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
    v3 = sub_1B7800C38();

    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return;
      }

      goto LABEL_4;
    }

    v6 = sub_1B7801958();

    if (!v6)
    {
LABEL_4:
      v5 = [v0 managedObjectContext];
      [v5 deleteObject_];
    }
  }
}

id static ManagedBankConnectTermsAndConditions.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedBankConnectTermsAndConditions;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedBankConnectTermsAndConditions.existingObject(with:in:)(uint64_t a1, id a2)
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

uint64_t static ManagedBankConnectTermsAndConditions.predicateForTermsAndConditions(withID:)(uint64_t a1, uint64_t a2)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

uint64_t sub_1B7770BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void static PIIRedactionRegexCollection.empty.getter(void *a1@<X8>)
{
  *a1 = 4271950;
  a1[1] = 0xE300000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
}

void sub_1B7770CAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B7801B18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-1] - v10;
  v12 = type metadata accessor for PIIRedactionRegex(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B719B06C(a1, v18);
  PIIRedactionRegex.init(from:)(v18, v14);
  if (v2)
  {
    v18[0] = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {

      (*(v6 + 32))(v11, v9, v5);
      swift_allocError();
      (*(v6 + 16))(v16, v11, v5);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v6 + 8))(v11, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      *a2 = v2;
      type metadata accessor for PIIRedactionRegexCollection.RegexElement();
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B766B420(v14, a2);
    type metadata accessor for PIIRedactionRegexCollection.RegexElement();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t PIIRedactionRegexCollection.version.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PIIRedactionRegexCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DBE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v55 - v4;
  v5 = type metadata accessor for PIIRedactionRegex(0);
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v72 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - v8;
  v10 = type metadata accessor for PIIRedactionRegexCollection.RegexElement();
  v77 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DBF0);
  v69 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B7771710();
  v20 = v76;
  sub_1B78023C8();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  v70 = v10;
  v71 = v15;
  v67 = v9;
  v68 = v13;
  v80 = 0;
  v21 = sub_1B7801DF8();
  v24 = v23;
  v25 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC00);
  v79 = 1;
  sub_1B7771764();
  sub_1B7801E48();
  v56 = v25;
  v57 = v24;
  v58 = v18;
  v59 = v16;
  v60 = 0;
  result = v78;
  v66 = *(v78 + 16);
  if (v66)
  {
    v27 = 0;
    v28 = v73;
    v29 = v74;
    v64 = (v73 + 48);
    v65 = (v73 + 56);
    v76 = MEMORY[0x1E69E7CC0];
    *&v26 = 138412290;
    v61 = v26;
    v31 = v71;
    v30 = v72;
    v32 = v62;
    v33 = v67;
    v34 = v77;
    while (v27 < *(result + 16))
    {
      v35 = result;
      sub_1B7771840(result + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27, v31);
      v36 = v31;
      v37 = v68;
      sub_1B7771840(v36, v68);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = *v37;
        if (qword_1EB98EAB8 != -1)
        {
          swift_once();
        }

        v39 = sub_1B78000B8();
        __swift_project_value_buffer(v39, qword_1EB994978);
        v40 = v38;
        v41 = sub_1B7800098();
        v42 = sub_1B78011D8();

        v43 = os_log_type_enabled(v41, v42);
        v31 = v71;
        if (v43)
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = v61;
          v46 = v38;
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v47;
          *v45 = v47;
          _os_log_impl(&dword_1B7198000, v41, v42, "Failed to decode a strategy: %@", v44, 0xCu);
          sub_1B7205418(v45, &qword_1EB9910D0);
          MEMORY[0x1B8CA7A40](v45, -1, -1);
          v48 = v44;
          v33 = v67;
          MEMORY[0x1B8CA7A40](v48, -1, -1);
        }

        else
        {
        }

        v49 = 1;
        v28 = v73;
        v29 = v74;
        v30 = v72;
      }

      else
      {
        sub_1B766B420(v37, v32);
        v49 = 0;
        v31 = v71;
      }

      (*v65)(v32, v49, 1, v29);
      sub_1B77718A4(v31);
      if ((*v64)(v32, 1, v29) == 1)
      {
        sub_1B7205418(v32, &qword_1EB99DBE8);
      }

      else
      {
        sub_1B766B420(v32, v33);
        sub_1B766B420(v33, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1B723FC38(0, v76[2] + 1, 1, v76);
        }

        v51 = v76[2];
        v50 = v76[3];
        if (v51 >= v50 >> 1)
        {
          v76 = sub_1B723FC38(v50 > 1, v51 + 1, 1, v76);
        }

        v52 = v76;
        v76[2] = v51 + 1;
        sub_1B766B420(v30, v52 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v51);
        v33 = v67;
      }

      ++v27;
      v34 = v77;
      result = v35;
      if (v66 == v27)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v76 = MEMORY[0x1E69E7CC0];
LABEL_24:

    (*(v69 + 8))(v58, v59);
    v53 = v63;
    v54 = v57;
    *v63 = v56;
    v53[1] = v54;
    v53[2] = v76;

    __swift_destroy_boxed_opaque_existential_1(v75);
  }

  return result;
}

uint64_t type metadata accessor for PIIRedactionRegexCollection.RegexElement()
{
  result = qword_1EB99DC18;
  if (!qword_1EB99DC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B7771710()
{
  result = qword_1EB99DBF8;
  if (!qword_1EB99DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DBF8);
  }

  return result;
}

unint64_t sub_1B7771764()
{
  result = qword_1EB99DC08;
  if (!qword_1EB99DC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99DC00);
    sub_1B77717E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DC08);
  }

  return result;
}

unint64_t sub_1B77717E8()
{
  result = qword_1EB99DC10;
  if (!qword_1EB99DC10)
  {
    type metadata accessor for PIIRedactionRegexCollection.RegexElement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DC10);
  }

  return result;
}

uint64_t sub_1B7771840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIIRedactionRegexCollection.RegexElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77718A4(uint64_t a1)
{
  v2 = type metadata accessor for PIIRedactionRegexCollection.RegexElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7771900(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6967657461727473;
  }

  else
  {
    v3 = 0x6E6F6973726576;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v5 = 0x6967657461727473;
  }

  else
  {
    v5 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007365;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B77719AC()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7771A34()
{
  sub_1B7800798();
}

uint64_t sub_1B7771AA8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7771B2C@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B7771B8C(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F6973726576;
  if (*v1)
  {
    v2 = 0x6967657461727473;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B7771BD0()
{
  if (*v0)
  {
    return 0x6967657461727473;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1B7771C10@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1B7771C74(uint64_t a1)
{
  v2 = sub_1B7771710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7771CB0(uint64_t a1)
{
  v2 = sub_1B7771710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7771D24()
{
  result = type metadata accessor for PIIRedactionRegex(319);
  if (v1 <= 0x3F)
  {
    result = sub_1B76BC3B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B7771D9C()
{
  result = qword_1EB99DC28;
  if (!qword_1EB99DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DC28);
  }

  return result;
}

unint64_t sub_1B7771DF4()
{
  result = qword_1EB99DC30;
  if (!qword_1EB99DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DC30);
  }

  return result;
}

unint64_t sub_1B7771E4C()
{
  result = qword_1EB99DC38;
  if (!qword_1EB99DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DC38);
  }

  return result;
}

uint64_t sub_1B7771EA0()
{

  v0 = sub_1B7800A38();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1B7800A38();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1B78020F8();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1B7800A38();
      v3 = v5;
    }

    while (v5);
  }

  sub_1B7800A38();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

id ManagedSpotlightUniqueIdentifier.__allocating_init(bundleIdentifier:domainIdentifier:uniqueIdentifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = [objc_allocWithZone(v7) initWithContext_];
  v11 = sub_1B7800838();

  [v10 setBundleIdentifier_];

  if (a4)
  {
    v12 = sub_1B7800838();
  }

  else
  {
    v12 = 0;
  }

  [v10 setDomainIdentifier_];

  v13 = sub_1B7800838();

  [v10 setUniqueIdentifier_];

  return v10;
}

void SpotlightUniqueIdentifier.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 bundleIdentifier];
  v5 = sub_1B7800868();
  v7 = v6;

  v8 = [a1 domainIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B7800868();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [a1 uniqueIdentifier];
  v14 = sub_1B7800868();
  v16 = v15;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v16;
}

void sub_1B7772200(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 domainIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B7772268(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDomainIdentifier_];
}

uint64_t ManagedSpotlightUniqueIdentifier.domainHeirarchy.getter()
{
  v1 = [v0 domainIdentifier];
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  v4 = sub_1B7800868();
  v6 = v5;

  v25[0] = 46;
  v25[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v7);
  v23[2] = v25;
  v8 = sub_1B7292F48(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B766A090, v23, v4, v6, &v24);
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_8:

    return v2;
  }

  v25[0] = v2;
  result = sub_1B71FDB50(0, v9, 0);
  v11 = 0;
  v2 = v25[0];
  v12 = (v8 + 56);
  while (v11 < *(v8 + 16))
  {
    v13 = *(v12 - 3);
    v14 = *(v12 - 2);
    v15 = *(v12 - 1);
    v16 = *v12;

    v17 = MEMORY[0x1B8CA4C70](v13, v14, v15, v16);
    v19 = v18;

    v25[0] = v2;
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_1B71FDB50((v20 > 1), v21 + 1, 1);
      v2 = v25[0];
    }

    ++v11;
    *(v2 + 16) = v21 + 1;
    v22 = v2 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v12 += 4;
    if (v9 == v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ManagedSpotlightUniqueIdentifier.identifierIsMemberOf(_:)(Swift::String a1)
{
  v2 = [v1 domainIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_1B7800868();

    v4 = sub_1B7771EA0();

    LOBYTE(v2) = v4 & 1;
  }

  return v2;
}

Swift::Void __swiftcall ManagedSpotlightUniqueIdentifier.willSave()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B723C524();
    v3 = sub_1B7800C38();

    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return;
      }

      goto LABEL_4;
    }

    v6 = sub_1B7801958();

    if (!v6)
    {
LABEL_4:
      v5 = [v0 managedObjectContext];
      [v5 deleteObject_];
    }
  }
}

id ManagedSpotlightUniqueIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSpotlightUniqueIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSpotlightUniqueIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void WalletExposedDB.fetchAppleAccounts()()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store) + 16) newBackgroundContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC40);
  sub_1B7801468();
}

void sub_1B77728DC(void *a1@<X0>, id *a2@<X8>)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for InternalAccount();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentQueryGenerationToken];
  v38[0] = 0;
  v9 = [a1 setQueryGenerationFromToken:v8 error:v38];

  v10 = v38[0];
  if (!v9)
  {
    v28 = v38[0];
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7807CD0;
  v12 = qword_1EDAF9AA8;
  v13 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Institution(0);
  v15 = __swift_project_value_buffer(v14, qword_1EDAF9AB0);
  v17 = *v15;
  v16 = v15[1];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B721FF04();
  *(v11 + 32) = v17;
  *(v11 + 40) = v16;

  v18 = sub_1B78010E8();
  type metadata accessor for ManagedInternalAccount();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = v18;
  v21 = [ObjCClassFromMetadata fetchRequest];
  v22 = qword_1EDAF8080;
  v23 = v20;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = sub_1B751E2EC(qword_1EDAF8088);
  v37 = v23;
  v25 = v24;
  [v21 setPredicate_];

  v26 = v37;
  [v21 setReturnsObjectsAsFaults_];
  v27 = sub_1B7801498();
  if (v2)
  {

    return;
  }

  v29 = v27;
  if (v27 >> 62)
  {
    v30 = sub_1B7801958();
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_19:

    *a2 = MEMORY[0x1E69E7CC0];
    return;
  }

  v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_19;
  }

LABEL_11:
  v34 = 0;
  v35 = v21;
  v36 = a2;
  v38[0] = MEMORY[0x1E69E7CC0];
  sub_1B7801B98();
  if (v30 < 0)
  {
    __break(1u);
  }

  sub_1B7205540(0, &unk_1EDAF6430);
  v31 = 0;
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1B8CA5DC0](v31, v29);
    }

    else
    {
      v32 = *(v29 + 8 * v31 + 32);
    }

    ++v31;
    v33 = v32;
    InternalAccount.init(_:)(v33, v7);
    FKAccount.init(from:)(v7);

    sub_1B7801B68();
    sub_1B7801BA8();
    sub_1B7801BB8();
    sub_1B7801B78();
  }

  while (v30 != v31);

  *v36 = v38[0];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletExposedDB.insertOrUpdate(appleAccount:)(FKAppleAccount *appleAccount)
{
  v2 = v1;
  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v4 = sub_1B78000B8();
  __swift_project_value_buffer(v4, qword_1EDAFAF58);
  v5 = appleAccount;
  v6 = sub_1B7800098();
  v7 = sub_1B78011F8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v8 = 136315138;
    v9 = [(FKAppleAccount *)v5 accountIdentifier];
    v10 = sub_1B7800868();
    v12 = v11;

    v13 = sub_1B71A3EF8(v10, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B7198000, v6, v7, "Inserting or updating apple account identifier %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8CA7A40](v16, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  v14 = [*(*(v2 + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store) + 16) newBackgroundContext];
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B7801468();
}

void sub_1B77730C4(id a1, void *a2, uint64_t a3)
{
  v88 = a3;
  v91[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v74 - v7;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  v85 = v8;
  v86 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v84 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - v17;
  v83 = type metadata accessor for BankConnectConsent();
  MEMORY[0x1EEE9AC00](v83);
  v89 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() currentQueryGenerationToken];
  v91[0] = 0;
  v24 = [a1 setQueryGenerationFromToken:v23 error:v91];

  if (!v24)
  {
    v31 = v91[0];
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  v81 = a2;
  v25 = qword_1EDAF9AA8;
  v26 = v91[0];
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v20, qword_1EDAF9AB0);
  type metadata accessor for ManagedInstitution();
  v28 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*v27, v27[1]);
  if (!v3)
  {
    v29 = v28;
    if (v28)
    {
      v30 = v28;
      _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA0D0VSo22NSManagedObjectContextCtFZ_0(v30, v27, a1);
    }

    else
    {
      sub_1B721D304(v27, v22);
      v32 = a1;
      v80 = a1;
      v33 = v32;
      v30 = sub_1B74FA170(v22, v32);

      a1 = v80;
    }

    sub_1B7688858(v27 + *(v20 + 60), v30, a1);
    v79 = v30;
    v80 = a1;

    v34 = type metadata accessor for ManagedConsent();
    v90.receiver = swift_getObjCClassFromMetadata();
    v90.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
    v35 = objc_msgSendSuper2(&v90, sel_fetchRequest);
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1B7807CD0;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1B721FF04();
    *(v36 + 32) = 0xD000000000000015;
    *(v36 + 40) = 0x80000001B7875C90;
    v37 = v80;
    v38 = sub_1B78010E8();
    [v35 setPredicate_];

    v39 = sub_1B7801498();
    v40 = v39;
    if (v39 >> 62)
    {
      v43 = sub_1B7801958();
      v40 = v39;
      v41 = v89;
      if (v43)
      {
LABEL_12:
        if ((v40 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1B8CA5DC0](0, v40);
        }

        else
        {
          if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v42 = *(v40 + 32);

          v37 = v80;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v41 = v89;
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    v78 = v34;

    v77 = v79;
    v89 = "an account with id: ";
    sub_1B77FF998();
    v45 = v85;
    v44 = v86;
    v46 = *(v86 + 48);
    if (v46(v18, 1, v85) == 1)
    {
      __break(1u);
    }

    else
    {
      v47 = *(v44 + 32);
      v47(v41, v18, v45);
      sub_1B77FF998();
      if (v46(v16, 1, v45) != 1)
      {
        v48 = v82;
        v47(v82, v16, v45);
        v89 = sub_1B77FF9A8();
        v76 = v49;
        v86 = *(v86 + 8);
        (v86)(v48, v45);
        v50 = v83;
        sub_1B77FF938();
        sub_1B77FF7F8();
        v51 = v87;
        sub_1B77FF938();
        v52 = sub_1B77FF988();
        v53 = *(*(v52 - 8) + 56);
        v54 = v41;
        v53(v51, 0, 1, v52);
        v55 = v84;
        sub_1B77FFA08();
        v82 = sub_1B77FF9A8();
        v75 = v56;
        (v86)(v55, v45);
        sub_1B77FF938();
        v57 = v50[8];
        v53(&v41[v57], 1, 1, v52);
        v58 = &v41[v50[5]];
        v59 = v76;
        *v58 = v89;
        v58[1] = v59;
        sub_1B72DFF88(v87, v54 + v57);
        *(v54 + v50[9]) = 0;
        v60 = (v54 + v50[10]);
        v61 = v75;
        *v60 = v82;
        v60[1] = v61;
        *(v54 + v50[11]) = 0;
        v62 = objc_allocWithZone(v78);
        v37 = v80;
        v63 = v80;
        v42 = [v62 initWithContext_];
        v64 = sub_1B77FF9B8();
        [v42 setId_];

        v65 = sub_1B7800838();
        [v42 setConsentID_];

        v66 = v77;
        [v42 setInstitutionObject_];
        _s10FinanceKit14ManagedConsentC6update_4withyAC_AA011BankConnectD0VtFZ_0(v42, v54);

        sub_1B71A4D74(v54, type metadata accessor for BankConnectConsent);
LABEL_19:
        v67 = [v42 consentID];
        v68 = sub_1B7800868();
        v70 = v69;

        v71 = sub_1B7490F98(v81, v68, v70, v88 + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_migratedAccountsProvider, v37);

        v91[0] = 0;
        if ([v37 save_])
        {
          v72 = v91[0];
        }

        else
        {
          v73 = v91[0];
          sub_1B77FF318();

          swift_willThrow();
        }

        return;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletExposedDB.deleteAppleAccount(with:)(Swift::String with)
{
  deviceClassNumber = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v77 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v77);
  v84 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1B77FFA18();
  v85 = *(v90 - 8);
  v6 = MEMORY[0x1EEE9AC00](v90);
  v87 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v86 = &v71 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC48);
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC50);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v71 - v20;
  if (qword_1EDAFAF50 != -1)
  {
LABEL_25:
    swift_once();
  }

  v21 = sub_1B78000B8();
  v22 = __swift_project_value_buffer(v21, qword_1EDAFAF58);

  v81 = v22;
  v23 = sub_1B7800098();
  v24 = sub_1B78011F8();

  v25 = os_log_type_enabled(v23, v24);
  v88 = object;
  if (v25)
  {
    v26 = deviceClassNumber;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v95 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1B71A3EF8(countAndFlagsBits, v88, &v95);
    _os_log_impl(&dword_1B7198000, v23, v24, "Deleting apple account %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v29 = v28;
    object = v88;
    MEMORY[0x1B8CA7A40](v29, -1, -1);
    v30 = v27;
    deviceClassNumber = v26;
    MEMORY[0x1B8CA7A40](v30, -1, -1);
  }

  v31 = [*(*(deviceClassNumber + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store) + 16) newBackgroundContext];
  v32 = MEMORY[0x1EEE9AC00](v31);
  *(&v71 - 4) = v32;
  *(&v71 - 3) = countAndFlagsBits;
  *(&v71 - 2) = object;
  v33 = v32;
  v34 = MEMORY[0x1EEE9AC00](v32);
  *(&v71 - 4) = sub_1B777649C;
  *(&v71 - 3) = v35;
  *(&v71 - 2) = v34;
  v36 = countAndFlagsBits;
  v37 = deviceClassNumber;
  v38 = v76;
  v39 = v94;
  sub_1B7801468();
  object = v39;
  if (v39)
  {

    return;
  }

  v74 = v36;
  v40 = v37;
  sub_1B7205588(v38, v19, &qword_1EB99DC50);
  v41 = v93;
  if ((*(v92 + 48))(v19, 1, v93) == 1)
  {
    sub_1B7205418(v38, &qword_1EB99DC50);

    v42 = v19;
LABEL_23:
    sub_1B7205418(v42, &qword_1EB99DC50);
    return;
  }

  v91 = 0;
  v71 = v33;
  v43 = v72;
  sub_1B77764BC(v19, v72);
  sub_1B7205588(v43, v14, &qword_1EB99DC48);

  v19 = v85;
  deviceClassNumber = v90;
  (*(v85 + 4))(v89, v14, v90);
  sub_1B7205588(v43, v14, &qword_1EB99DC48);
  v44 = *&v14[*(v41 + 12)];
  v82 = *(v19 + 1);
  v83 = v19 + 8;
  v82(v14, deviceClassNumber);
  v80 = *(v44 + 16);
  if (!v80)
  {
LABEL_22:

    v82(v89, v90);
    sub_1B7205418(v72, &qword_1EB99DC48);
    v42 = v76;
    goto LABEL_23;
  }

  v46 = 0;
  v75 = *(v40 + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_financeStore);
  v79 = v19 + 16;
  v47 = (v44 + 40);
  *&v45 = 136315650;
  v73 = v45;
  countAndFlagsBits = v84;
  v78 = v44;
  while (1)
  {
    if (v46 >= *(v44 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    v93 = v47;
    v94 = v46;
    v14 = *v47;
    v92 = *(v47 - 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2F8);
    v53 = (v19[80] + 32) & ~v19[80];
    v54 = swift_allocObject();
    object = v19;
    v55 = *(v19 + 2);
    v56 = v90;
    v55(v54 + v53, v89, v90);
    v57 = sub_1B74D75B0();

    v95 = MEMORY[0x1B8CA52E0](1, v56, v57);
    v58 = v86;
    v55(v86, (v54 + v53), v56);
    swift_setDeallocating();
    v59 = v82;
    v82((v54 + v53), v56);
    swift_deallocClassInstance();
    v60 = v87;
    sub_1B724E840(v87, v58);
    v59(v60, v56);
    v61 = v95;
    v62 = MobileGestalt_get_current_device();
    if (!v62)
    {
      break;
    }

    v63 = v62;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber != 1)
    {

      sub_1B7201CA4();
      v65 = swift_allocError();
      *v66 = 3;
      swift_willThrow();
      goto LABEL_19;
    }

    *countAndFlagsBits = v92;
    countAndFlagsBits[1] = v14;
    countAndFlagsBits[2] = v61;
    *(countAndFlagsBits + 24) = 0;
    swift_storeEnumTagMultiPayload();

    v64 = v91;
    sub_1B75FCDE0(countAndFlagsBits);
    v65 = v64;
    if (v64)
    {
      sub_1B71A4D74(countAndFlagsBits, type metadata accessor for FinanceStore.Message);
LABEL_19:
      v91 = 0;
      v67 = v88;

      v68 = v65;
      v69 = sub_1B7800098();
      v70 = sub_1B78011D8();

      if (os_log_type_enabled(v69, v70))
      {
        v48 = swift_slowAlloc();
        deviceClassNumber = swift_slowAlloc();
        object = swift_slowAlloc();
        v95 = object;
        *v48 = v73;
        v49 = sub_1B71A3EF8(v92, v14, &v95);

        *(v48 + 4) = v49;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_1B71A3EF8(v74, v67, &v95);
        *(v48 + 22) = 2112;
        v50 = v65;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 24) = v51;
        *deviceClassNumber = v51;
        _os_log_impl(&dword_1B7198000, v69, v70, "Cannot delete associated application %s for apple account %s: %@", v48, 0x20u);
        sub_1B7205418(deviceClassNumber, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](deviceClassNumber, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](object, -1, -1);
        MEMORY[0x1B8CA7A40](v48, -1, -1);
      }

      else
      {
      }

      countAndFlagsBits = v84;
      v19 = v85;
      v44 = v78;
      v52 = v94;
      goto LABEL_12;
    }

    v91 = 0;

    sub_1B71A4D74(countAndFlagsBits, type metadata accessor for FinanceStore.Message);
    v44 = v78;
    v52 = v94;
    v19 = object;
LABEL_12:
    v46 = v52 + 1;
    v47 = v93 + 2;
    if (v80 == v46)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_1B77744F4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = *MEMORY[0x1E69E9840];
  v9 = sub_1B77FFA18();
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v90 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  *&v92 = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:&v92];

  v13 = v92;
  if (!v12)
  {
    v25 = v92;
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  type metadata accessor for ManagedInstitution();
  v14 = qword_1EDAF9AA8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Institution(0);
  v17 = __swift_project_value_buffer(v16, qword_1EDAF9AB0);
  v18 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*v17, v17[1]);
  if (!v4)
  {
    if (v18)
    {
      v85 = v9;
      v86 = a4;
      v19 = v18;
      v20 = type metadata accessor for ManagedInternalAccount();
      v21 = [v19 id];
      v22 = sub_1B7800868();
      v24 = v23;

      *&v92 = a2;
      *(&v92 + 1) = a3;
      v93 = v22;
      v94 = v24;

      v31 = static ManagedInternalAccount.existingAccount(with:in:)(&v92);
      v84 = v19;

      v32 = v86;
      if (v31)
      {
        v83[1] = v20;
        v33 = [v31 publicAccountObject];
        v34 = [v33 id];

        sub_1B77FF9E8();
        type metadata accessor for ManagedApplication();
        v35 = v31;
        v91.receiver = swift_getObjCClassFromMetadata();
        v91.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedApplication;
        v36 = objc_msgSendSuper2(&v91, sel_fetchRequest);
        sub_1B7205540(0, &qword_1EDAFAF30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1B7807CD0;
        v38 = sub_1B77FF9B8();
        *(v37 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
        *(v37 + 64) = sub_1B726E47C();
        *(v37 + 32) = v38;
        v39 = sub_1B78010E8();
        [v36 setPredicate_];

        v40 = sub_1B7801498();
        v83[0] = v35;
        v46 = v40;

        if (v46 >> 62)
        {
          v47 = sub_1B7801958();
          v48 = v83[0];
          if (v47)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v48 = v83[0];
          if (v47)
          {
LABEL_23:
            *&v92 = MEMORY[0x1E69E7CC0];
            sub_1B71FE908(0, v47 & ~(v47 >> 63), 0);
            if (v47 < 0)
            {
              __break(1u);
            }

            v49 = v92;
            v50 = v46;
            v87 = v46;
            if ((v46 & 0xC000000000000001) != 0)
            {
              v51 = 0;
              v88 = v47;
              do
              {
                MEMORY[0x1B8CA5DC0](v51, v50);
                v52 = [swift_unknownObjectRetain() bundleID];
                v53 = sub_1B7800868();
                v55 = v54;
                swift_unknownObjectRelease_n();

                *&v92 = v49;
                v57 = *(v49 + 16);
                v56 = *(v49 + 24);
                if (v57 >= v56 >> 1)
                {
                  sub_1B71FE908((v56 > 1), v57 + 1, 1);
                  v49 = v92;
                }

                ++v51;
                *(v49 + 16) = v57 + 1;
                v58 = v49 + 16 * v57;
                *(v58 + 32) = v53;
                *(v58 + 40) = v55;
                v50 = v87;
              }

              while (v88 != v51);
            }

            else
            {
              v59 = 32;
              do
              {
                v88 = v47;
                v60 = *(v50 + v59);
                v61 = [v60 bundleID];
                v62 = sub_1B7800868();
                v64 = v63;

                *&v92 = v49;
                v66 = *(v49 + 16);
                v65 = *(v49 + 24);
                if (v66 >= v65 >> 1)
                {
                  sub_1B71FE908((v65 > 1), v66 + 1, 1);
                  v49 = v92;
                }

                *(v49 + 16) = v66 + 1;
                v67 = v49 + 16 * v66;
                *(v67 + 32) = v62;
                *(v67 + 40) = v64;
                v59 += 8;
                v50 = v87;
                v47 = v88 - 1;
              }

              while (v88 != 1);
            }

            v48 = v83[0];
            goto LABEL_37;
          }
        }

        v49 = MEMORY[0x1E69E7CC0];
LABEL_37:
        v68 = [v48 accountId];
        v69 = sub_1B7800868();
        v71 = v70;

        v72 = [v48 institutionId];
        v73 = sub_1B7800868();
        v75 = v74;

        *&v92 = v69;
        *(&v92 + 1) = v71;
        v93 = v73;
        v94 = v75;
        static ManagedInternalAccount.deleteAccount(with:in:)(&v92, a1);

        *&v92 = 0;
        v76 = [a1 save_];
        v77 = v85;
        if (v76)
        {
          v78 = v92;

          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC48);
          v80 = *(v79 + 48);
          v81 = v86;
          (*(v89 + 32))(v86, v90, v77);
          *(v81 + v80) = v49;
          (*(*(v79 - 8) + 56))(v81, 0, 1, v79);
        }

        else
        {
          v82 = v92;

          sub_1B77FF318();

          swift_willThrow();
          (*(v89 + 8))(v90, v77);
        }

        return;
      }

      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v41 = sub_1B78000B8();
      __swift_project_value_buffer(v41, qword_1EDAFAF58);
      v42 = sub_1B7800098();
      v43 = sub_1B78011D8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1B7198000, v42, v43, "Cannot delete apple account without an internal account", v44, 2u);
        MEMORY[0x1B8CA7A40](v44, -1, -1);
      }

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC48);
      (*(*(v45 - 8) + 56))(v32, 1, 1, v45);
    }

    else
    {
      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v26 = sub_1B78000B8();
      __swift_project_value_buffer(v26, qword_1EDAFAF58);
      v27 = sub_1B7800098();
      v28 = sub_1B78011D8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B7198000, v27, v28, "Cannot delete apple account without an apple institution", v29, 2u);
        MEMORY[0x1B8CA7A40](v29, -1, -1);
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC48);
      (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletExposedDB.insertOrUpdateTransactions(_:forAppleAccountWithID:)(Swift::OpaquePointer _, Swift::String forAppleAccountWithID)
{
  v3 = v2;
  v5 = _._rawValue >> 62;
  if (_._rawValue >> 62)
  {
    if (!sub_1B7801958())
    {
      return;
    }
  }

  else if (!*((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v6 = sub_1B78000B8();
  __swift_project_value_buffer(v6, qword_1EDAFAF58);

  v7 = sub_1B7800098();
  v8 = sub_1B78011F8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (v5)
    {
      v10 = sub_1B7801958();
    }

    else
    {
      v10 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;

    _os_log_impl(&dword_1B7198000, v7, v8, "Inserting or updating %ld apple transactions", v9, 0xCu);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  else
  {
  }

  v11 = [*(*(v3 + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store) + 16) newBackgroundContext];
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B7801468();
}

void sub_1B77751AC(void *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v49 = *MEMORY[0x1E69E9840];
  v10 = [objc_opt_self() currentQueryGenerationToken];
  *&v46 = 0;
  v11 = [a1 setQueryGenerationFromToken:v10 error:&v46];

  if (v11)
  {
    v45 = a1;
    v12 = qword_1EDAF9AA8;
    v13 = v46;
    if (v12 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v14 = type metadata accessor for Institution(0);
      v15 = __swift_project_value_buffer(v14, qword_1EDAF9AB0);
      v16 = *v15;
      v17 = v15[1];
      v18 = qword_1EDAFAF50;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = sub_1B78000B8();
      __swift_project_value_buffer(v19, qword_1EDAFAF58);

      v20 = sub_1B7800098();
      v21 = sub_1B78011F8();

      if (os_log_type_enabled(v20, v21))
      {
        v41 = v16;
        v42 = v5;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v46 = v23;
        *v22 = 134218242;
        v24 = a4 >> 62 ? sub_1B7801958() : *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v22 + 4) = v24;

        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_1B71A3EF8(a2, a3, &v46);
        _os_log_impl(&dword_1B7198000, v20, v21, "Inserting or updating %ld\nApple transactions for account identifier %s", v22, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1B8CA7A40](v23, -1, -1);
        MEMORY[0x1B8CA7A40](v22, -1, -1);

        v16 = v41;
        v5 = v42;
      }

      else
      {
      }

      type metadata accessor for ManagedInternalAccount();
      *&v46 = a2;
      *(&v46 + 1) = a3;
      v47 = v16;
      v48 = v17;
      v26 = static ManagedInternalAccount.existingAccount(with:in:)(&v46);

      if (v5)
      {
        break;
      }

      if (!v26)
      {
        *&v46 = 0;
        *(&v46 + 1) = 0xE000000000000000;
        sub_1B7801A78();

        *&v46 = 0xD000000000000024;
        *(&v46 + 1) = 0x80000001B788D1F0;
        MEMORY[0x1B8CA4D30](a2, a3);
        v33 = v46;

        v34 = sub_1B7800098();
        v35 = sub_1B78011F8();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&v46 = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_1B71A3EF8(v33, *(&v33 + 1), &v46);
          _os_log_impl(&dword_1B7198000, v34, v35, "%s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          MEMORY[0x1B8CA7A40](v37, -1, -1);
          MEMORY[0x1B8CA7A40](v36, -1, -1);
        }

        sub_1B751A640();
        swift_allocError();
        *v38 = v33;
        swift_willThrow();
        return;
      }

      type metadata accessor for ManagedTransactionImporter();
      swift_initStackObject();
      ManagedTransactionImporter.init()();
      if (a4 >> 62)
      {
        v27 = sub_1B7801958();
        v44 = v26;
        if (!v27)
        {
LABEL_32:
          *&v46 = 0;
          if ([v45 save_])
          {
            v39 = v46;
          }

          else
          {
            v40 = v46;
            sub_1B77FF318();

            swift_willThrow();
          }

          return;
        }
      }

      else
      {
        v27 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v44 = v26;
        if (!v27)
        {
          goto LABEL_32;
        }
      }

      a2 = 0;
      v43 = a4 & 0xC000000000000001;
      v28 = a4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v43)
        {
          a3 = a4;
          v29 = MEMORY[0x1B8CA5DC0](a2, a4);
        }

        else
        {
          if (a2 >= *(v28 + 16))
          {
            goto LABEL_28;
          }

          a3 = a4;
          v29 = *(a4 + 8 * a2 + 32);
        }

        v5 = v29;
        a4 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          break;
        }

        v30 = v27;
        v31 = ManagedTransactionImporter.insertOrUpdateTransaction(account:appleTransaction:context:)(v44, v29, v45);

        ++a2;
        v27 = v30;
        v32 = a4 == v30;
        a4 = a3;
        if (v32)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  else
  {
    v25 = v46;
    sub_1B77FF318();

    swift_willThrow();
  }
}

void WalletExposedDB.deleteTransactions(with:for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v8 = sub_1B78000B8();
  __swift_project_value_buffer(v8, qword_1EDAFAF58);

  v9 = sub_1B7800098();
  v10 = sub_1B78011F8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 134218242;
    *(v11 + 4) = *(a1 + 16);

    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1B71A3EF8(a2, a3, &v15);
    _os_log_impl(&dword_1B7198000, v9, v10, "Deleting %ld apple transactions for\naccount %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  else
  {
  }

  v13 = [*(*(v4 + OBJC_IVAR____TtC10FinanceKit15WalletExposedDB_store) + 16) newBackgroundContext];
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B7801468();
}

void sub_1B7775A88(void *a1, int64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v75 = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedInstitution();
  if (qword_1EDAF9AA8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v10 = type metadata accessor for Institution(0);
  v11 = __swift_project_value_buffer(v10, qword_1EDAF9AB0);
  v69 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*v11, v11[1]);
  if (!v5)
  {
    if (v69)
    {
      type metadata accessor for ManagedInternalAccount();
      v68 = a1;
      v12 = [v69 id];
      v13 = sub_1B7800868();
      v15 = v14;

      a1 = v68;
      *&v70 = a2;
      *(&v70 + 1) = a3;
      v71 = v13;
      v72 = v15;

      a3 = static ManagedInternalAccount.existingAccount(with:in:)(&v70);

      if (a3)
      {
        v20 = a4 + 56;
        v21 = 1 << *(a4 + 32);
        v22 = -1;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        v23 = v22 & *(a4 + 56);
        v5 = (v21 + 63) >> 6;

        v24 = 0;
        v62 = v5;
        v63 = a4 + 56;
        v64 = a3;
        v65 = a4;
        while (v23)
        {
          a2 = v24;
LABEL_22:
          v25 = (*(a4 + 48) + ((a2 << 10) | (16 * __clz(__rbit64(v23)))));
          v26 = *v25;
          v27 = v25[1];
          swift_bridgeObjectRetain_n();
          v28 = [a3 accountId];
          v29 = sub_1B7800868();
          v31 = v30;

          v32 = [a3 institutionId];
          v33 = sub_1B7800868();
          v35 = v34;

          type metadata accessor for ManagedInternalTransaction();
          v67 = v26;
          *&v70 = v26;
          *(&v70 + 1) = v27;
          v66 = v29;
          v71 = v29;
          v72 = v31;
          v36 = v31;
          v73 = v33;
          v74 = v35;
          a1 = v68;
          v37 = static ManagedInternalTransaction.existingTransaction(with:in:)(&v70);
          v23 &= v23 - 1;
          if (v37)
          {
            v61 = v37;
            if (qword_1EDAFAF50 != -1)
            {
              swift_once();
            }

            v38 = sub_1B78000B8();
            __swift_project_value_buffer(v38, qword_1EDAFAF58);

            v39 = sub_1B7800098();
            v40 = sub_1B78011F8();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              log = v39;
              v42 = swift_slowAlloc();
              *&v70 = v42;
              *v41 = 136315138;
              v59 = sub_1B71A3EF8(v67, v27, &v70);

              *(v41 + 4) = v59;
              _os_log_impl(&dword_1B7198000, log, v40, "Deleting apple account transaction %s", v41, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v42);
              MEMORY[0x1B8CA7A40](v42, -1, -1);
              v43 = v41;
              a1 = v68;
              MEMORY[0x1B8CA7A40](v43, -1, -1);
            }

            else
            {
            }

            *&v70 = v66;
            *(&v70 + 1) = v36;
            v71 = v33;
            v72 = v35;
            sub_1B7205540(0, &qword_1EDAFAF30);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1B7807CD0;
            *(v50 + 56) = MEMORY[0x1E69E6158];
            *(v50 + 64) = sub_1B721FF04();
            *(v50 + 32) = v67;
            *(v50 + 40) = v27;

            v51 = sub_1B78010E8();
            v52 = sub_1B74F3DC8(&v70, v51);

            sub_1B74F0D7C(v52, a1);
          }

          else
          {

            if (qword_1EDAFAF50 != -1)
            {
              swift_once();
            }

            v44 = sub_1B78000B8();
            __swift_project_value_buffer(v44, qword_1EDAFAF58);

            v45 = sub_1B7800098();
            v46 = sub_1B78011D8();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              *&v70 = v48;
              *v47 = 136315138;
              v49 = sub_1B71A3EF8(v67, v27, &v70);

              *(v47 + 4) = v49;
              a1 = v68;
              _os_log_impl(&dword_1B7198000, v45, v46, "Cannot delete apple account transactions\n%s if it doesn't exist", v47, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v48);
              MEMORY[0x1B8CA7A40](v48, -1, -1);
              MEMORY[0x1B8CA7A40](v47, -1, -1);
            }

            else
            {
            }
          }

          v24 = a2;
          a3 = v64;
          a4 = v65;
          v5 = v62;
          v20 = v63;
        }

        while (1)
        {
          a2 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (a2 >= v5)
          {
            break;
          }

          v23 = *(v20 + 8 * a2);
          ++v24;
          if (v23)
          {
            goto LABEL_22;
          }
        }

        *&v70 = 0;
        if ([a1 save_])
        {
          v53 = v70;
        }

        else
        {
          v58 = v70;
          sub_1B77FF318();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_1EDAFAF50 != -1)
        {
          swift_once();
        }

        v54 = sub_1B78000B8();
        __swift_project_value_buffer(v54, qword_1EDAFAF58);
        v55 = sub_1B7800098();
        v56 = sub_1B78011D8();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1B7198000, v55, v56, "Cannot delete apple account transactions without an internal account", v57, 2u);
          MEMORY[0x1B8CA7A40](v57, -1, -1);
        }
      }
    }

    else
    {
      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v16 = sub_1B78000B8();
      __swift_project_value_buffer(v16, qword_1EDAFAF58);
      v17 = sub_1B7800098();
      v18 = sub_1B78011D8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1B7198000, v17, v18, "Cannot delete apple account transactions without an apple institution", v19, 2u);
        MEMORY[0x1B8CA7A40](v19, -1, -1);
      }
    }
  }
}

uint64_t sub_1B77764BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TransactionType.localizedDescription.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

FinanceKit::TransactionType_optional __swiftcall TransactionType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0x11u)
  {
    v2 = 17;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B77768C8()
{
  result = qword_1EB99DC58;
  if (!qword_1EB99DC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DC58);
  }

  return result;
}

unint64_t sub_1B777694C()
{
  result = qword_1EB99DC60;
  if (!qword_1EB99DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DC60);
  }

  return result;
}

void ManagedInternalTransaction.transactionAmount.getter(uint64_t a1@<X8>)
{
  v8 = [v1 publicTransactionObject];
  v3 = [v8 amount];
  [v3 decimalValue];

  v4 = [v8 currency];
  v5 = sub_1B7800868();
  v7 = v6;

  CurrencyAmount.init(_:currencyCode:)(v9, v10, v11, v5, v7, a1);
}

void ManagedInternalTransaction.foreignCurrencyAmount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 publicTransactionObject];
  ManagedTransaction.foreignCurrencyAmount.getter(a1);
}

uint64_t ManagedInternalTransaction.postedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 publicTransactionObject];
  v4 = [v3 postedDate];

  if (v4)
  {
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

FinanceKit::TransactionType_optional ManagedInternalTransaction.transactionType.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 publicTransactionObject];
  v4 = [v3 transactionTypeValue];

  result.value = TransactionType.init(rawValue:)(v4).value;
  v6 = v7;
  if (v7 == 17)
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

void ManagedInternalTransaction.status.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 publicTransactionObject];
  ManagedTransaction.status.getter(a1);
}

uint64_t sub_1B7776CC0()
{
  v1 = [v0 insightsObject];
  if (v1 && (v2 = v1, v3 = [v1 mapsInsightObject], v2, v3) && (v4 = objc_msgSend(v3, sel_merchantObject), v3, v4) && (v5 = objc_msgSend(v4, sel_name), v4, v5))
  {
    v6 = sub_1B7800868();
  }

  else
  {
    v5 = [v0 publicTransactionObject];
    v6 = ManagedTransaction.displayDescription.getter();
  }

  v7 = v6;

  return v7;
}

void ManagedInternalTransaction.creditDebitIndicator.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 publicTransactionObject];
  ManagedTransaction.creditDebitIndicator.getter(a1);
}

uint64_t ManagedInternalTransaction.actions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 actionsObject];

  return Actions.init(_:)(v3, a1);
}

void sub_1B7776E8C(SEL *a1, void (*a2)(id))
{
  v5 = [v2 publicTransactionObject];
  v6 = [v5 *a1];

  a2(v6);
}

uint64_t ManagedInternalTransaction.merchantCategoryCode.getter()
{
  v1 = [v0 publicTransactionObject];
  v2 = [v1 merchantCategoryCodeValue];
  if (v2 < 0)
  {

    v4 = 0;
  }

  else
  {
    v3 = [v1 merchantCategoryCodeValue];

    v4 = v3;
  }

  return v4 | ((v2 < 0) << 16);
}

id ManagedInternalTransaction.source.getter@<X0>(char *a1@<X8>)
{
  result = [v1 sourceValue];
  v4 = result == 1;
  if (result == 2)
  {
    v4 = 2;
  }

  *a1 = v4;
  return result;
}

id ManagedInternalTransaction.amount.getter()
{
  v1 = [v0 publicTransactionObject];
  v2 = [v1 amount];

  return v2;
}

uint64_t InternalTransaction.init(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v218 = &v156 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v217 = &v156 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v199 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v223 = &v156 - v10;
  v222 = sub_1B77FF988();
  v216 = *(v222 - 8);
  v11 = MEMORY[0x1EEE9AC00](v222);
  v215 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v219 = &v156 - v13;
  v14 = sub_1B77FFA18();
  v220 = *(v14 - 8);
  v221 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v156 - v18;
  v20 = [a1 paymentHash];
  if (v20)
  {
    goto LABEL_2;
  }

  v22 = [a1 insightsObject];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 applePayInsightObject];

    if (v24)
    {
      v20 = [v24 paymentHash];

LABEL_2:
      v210 = sub_1B7800868();
      v209 = v21;

      goto LABEL_7;
    }
  }

  v210 = 0;
  v209 = 0;
LABEL_7:
  v25 = [a1 publicTransactionObject];
  v26 = [v25 id];

  v213 = v19;
  sub_1B77FF9E8();

  v27 = [a1 publicTransactionObject];
  v28 = [v27 accountId];

  v214 = v17;
  sub_1B77FF9E8();

  v29 = [a1 transactionId];
  v208 = sub_1B7800868();
  v207 = v30;

  v206 = [a1 isTransactionIDStable];
  v31 = [a1 publicTransactionObject];
  v32 = [v31 amount];
  [v32 decimalValue];
  v33 = v230;
  v34 = v229;

  v35 = [v31 currency];
  v36 = sub_1B7800868();
  v38 = v37;

  CurrencyAmount.init(_:currencyCode:)(v34, *(&v34 + 1), v33, v36, v38, &v229);
  v39 = [a1 publicTransactionObject];
  v40 = [v39 foreignAmount];
  v212 = a1;
  if (v40)
  {
    v41 = v40;
    [v40 decimalValue];
    v42 = v224;
    v43 = WORD2(v224);
    v44 = WORD3(v224);
    v45 = *(&v224 + 1);
    v46 = v225;

    v47 = [v39 foreignCurrency];
    if (v47)
    {
      v48 = v47;
      v49 = sub_1B7800868();
      v51 = v50;

      CurrencyAmount.init(_:currencyCode:)(v42 | (v43 << 32) | (v44 << 48), v45, v46, v49, v51, &v224);
      v203 = v225;
      v204 = v224;
      v205 = v226;
    }

    else
    {

      v205 = 0;
      v204 = 0u;
      v203 = 0u;
    }

    a1 = v212;
  }

  else
  {

    v205 = 0;
    v204 = 0u;
    v203 = 0u;
  }

  v52 = [a1 publicTransactionObject];
  v53 = [v52 foreignCurrencyExchangeRate];

  if (v53)
  {
    [v53 decimalValue];
    v201 = *(&v224 + 1);
    v202 = v224;
    v200 = v225;
  }

  else
  {
    v202 = 0;
    v201 = 0;
    v200 = 0;
  }

  v54 = [a1 publicTransactionObject];
  ManagedTransaction.creditDebitIndicator.getter(&v224);

  v198 = v224;
  v55 = [a1 publicTransactionObject];
  LODWORD(v192) = [v55 merchantCategoryCodeValue];
  if ((v192 & 0x80000000) != 0)
  {
    v197 = 0;
  }

  else
  {
    v197 = [v55 merchantCategoryCodeValue];
  }

  v56 = v218;

  v57 = [a1 publicTransactionObject];
  v58 = [v57 merchantName];

  if (v58)
  {
    v196 = sub_1B7800868();
    v195 = v59;
  }

  else
  {
    v196 = 0;
    v195 = 0;
  }

  v60 = [a1 publicTransactionObject];
  v61 = [v60 transactionDescription];

  v194 = sub_1B7800868();
  v193 = v62;

  v63 = [a1 publicTransactionObject];
  v64 = [v63 originalTransactionDescription];

  v191 = sub_1B7800868();
  v190 = v65;

  v66 = [a1 publicTransactionObject];
  LOWORD(v64) = [v66 transactionTypeValue];

  TransactionType.init(rawValue:)(v64);
  LODWORD(v188) = v228;
  v67 = [a1 publicTransactionObject];
  ManagedTransaction.status.getter(&v228);

  v189 = v228;
  LODWORD(v187) = [a1 sourceValue];
  v68 = [a1 publicTransactionObject];
  v69 = [v68 transactionDate];

  sub_1B77FF928();
  v70 = [a1 publicTransactionObject];
  v71 = [v70 postedDate];

  if (v71)
  {
    v72 = v199;
    sub_1B77FF928();

    v73 = 0;
  }

  else
  {
    v73 = 1;
    v72 = v199;
  }

  v74 = 1;
  v180 = *(v216 + 56);
  v180(v72, v73, 1, v222);
  sub_1B7205340(v72, v223);
  v75 = [a1 actionsObject];
  v76 = v217;
  Actions.init(_:)(v75, v217);
  v77 = type metadata accessor for Actions();
  v78 = *(v77 - 8);
  v175 = *(v78 + 56);
  v174 = (v78 + 56);
  (v175)(v76, 0, 1, v77);
  LODWORD(v199) = [a1 isVisible];
  v79 = [a1 sharedId];
  if (v79)
  {
    v80 = v79;
    sub_1B77FF9E8();

    v74 = 0;
  }

  v171 = v220[7];
  v171(v56, v74, 1, v221);
  v186 = [a1 hasNotificationServiceData];
  v81 = [a1 altDSID];
  if (v81)
  {
    v82 = v81;
    v182 = sub_1B7800868();
    v181 = v83;
  }

  else
  {
    v182 = 0;
    v181 = 0;
  }

  v84 = [a1 pkServiceIdentifier];
  if (v84)
  {
    v85 = v84;
    v177 = sub_1B7800868();
    v176 = v86;
  }

  else
  {
    v177 = 0;
    v176 = 0;
  }

  v185 = ManagedInternalTransaction.displayLocation.getter();
  v184 = ManagedInternalTransaction.displayLocationName.getter();
  v183 = v87;
  ManagedInternalTransaction.displayDate.getter(v215);
  v88 = [a1 monthAndYear];
  v179 = sub_1B7800868();
  v178 = v89;

  v90 = [a1 year];
  v91 = [a1 bankTransactionCodeValue];
  if (v91)
  {
    v92 = v91;
    v93 = sub_1B7800868();
    v95 = v94;

    v96 = [a1 bankTransactionCodeSubCode];
    if (v96)
    {
      v97 = v96;
      v170 = sub_1B7800868();
      v169 = v98;

      goto LABEL_38;
    }
  }

  v93 = 0;
  v95 = 0;
  v170 = 0;
  v169 = 0;
LABEL_38:
  v99 = [a1 proprietaryBankTransactionCodeValue];
  if (v99)
  {
    v100 = v99;
    v168 = sub_1B7800868();
    v167 = v101;

    v102 = [a1 proprietaryBankTransactionCodeIssuer];
    if (v102)
    {
      v103 = v102;
      v166 = sub_1B7800868();
      v165 = v104;

      goto LABEL_43;
    }
  }

  else
  {
    v168 = 0;
    v167 = 0;
  }

  v166 = 0;
  v165 = 0;
LABEL_43:
  v105 = [a1 transactionCategoryObject];
  v173 = v95;
  v172 = v93;
  if (v105)
  {
    v106 = v105;
    ManagedTransactionCategory.transactionCategory.getter(&v227);

    v164 = v227;
  }

  else
  {
    v164 = 0;
  }

  v161 = v192 < 0;
  v160 = v53 == 0;
  v107 = v187 == 1;
  if (v187 == 2)
  {
    v107 = 2;
  }

  v163 = v107;
  v108 = v188;
  if (v188 == 17)
  {
    v108 = 0;
  }

  v162 = v108;
  v192 = v90;
  v109 = type metadata accessor for InternalTransaction(0);
  v110 = v211;
  v156 = (v211 + v109[7]);
  v111 = v211 + v109[9];
  *(v111 + 32) = 0;
  *v111 = 0u;
  *(v111 + 16) = 0u;
  v112 = v110 + v109[10];
  *v112 = 0;
  *(v112 + 8) = 0;
  *(v112 + 16) = 0;
  *(v112 + 20) = 1;
  v113 = v110 + v109[12];
  *v113 = 0;
  *(v113 + 2) = 1;
  v157 = (v110 + v109[13]);
  v158 = v109[20];
  v180(v110 + v158, 1, 1, v222);
  v159 = v109[21];
  (v175)(v110 + v159, 1, 1, v77);
  v180 = v109[23];
  v114 = v221;
  v171(v180 + v110, 1, 1, v221);
  v115 = v109[26];
  v175 = (v110 + v109[25]);
  v116 = (v110 + v109[27]);
  v188 = v116;
  *v116 = 0;
  v116[1] = 0;
  v187 = v109[28];
  *(v110 + v187) = 0;
  v174 = (v110 + v115);
  v117 = v110 + v109[32];
  *v117 = 0u;
  *(v117 + 16) = 0u;
  v118 = v110 + v109[33];
  *v118 = 0u;
  *(v118 + 16) = 0u;
  v119 = v220[2];
  v119(v110, v213, v114);
  v119(v110 + v109[5], v214, v114);
  v120 = v110 + v109[6];
  v121 = v207;
  *v120 = v208;
  *(v120 + 8) = v121;
  *(v120 + 16) = v206;
  v122 = v156;
  v123 = v209;
  *v156 = v210;
  v122[1] = v123;
  v124 = v110 + v109[8];
  v125 = v230;
  *v124 = v229;
  *(v124 + 16) = v125;
  *(v124 + 32) = v231;

  v126 = v203;
  *v111 = v204;
  *(v111 + 16) = v126;
  *(v111 + 32) = v205;
  v127 = v201;
  *v112 = v202;
  *(v112 + 8) = v127;
  *(v112 + 16) = v200;
  *(v112 + 20) = v160;
  *(v110 + v109[11]) = v198;
  v128 = v157;
  v129 = v195;
  *v157 = v196;
  v128[1] = v129;
  *v113 = v197;
  *(v113 + 2) = v161;
  v130 = (v110 + v109[14]);
  v131 = v193;
  *v130 = v194;
  v130[1] = v131;
  v132 = (v110 + v109[15]);
  v133 = v190;
  *v132 = v191;
  v132[1] = v133;
  *(v110 + v109[16]) = v162;
  *(v110 + v109[17]) = v189;
  *(v110 + v109[18]) = v163;
  v134 = v109[19];
  v135 = v216;
  v210 = *(v216 + 16);
  v136 = v222;
  v210(v110 + v134, v219, v222);
  sub_1B73FE224(v223, v110 + v158, &qword_1EB98EBD0);
  v137 = v217;
  sub_1B73FE224(v217, v110 + v159, &qword_1EB99DA00);
  *(v110 + v109[22]) = v199;
  v138 = v218;
  sub_1B73FE224(v218, v180 + v110, &unk_1EB993A10);
  *(v110 + v109[24]) = v186;
  v139 = v175;
  v140 = v181;
  *v175 = v182;
  v139[1] = v140;
  v141 = v174;
  v142 = v176;
  *v174 = v177;
  v141[1] = v142;
  v143 = v215;
  v210(v110 + v109[29], v215, v136);

  v144 = *(v135 + 8);
  v144(v143, v136);
  sub_1B7205418(v138, &unk_1EB993A10);
  sub_1B7205418(v137, &qword_1EB99DA00);
  sub_1B7205418(v223, &qword_1EB98EBD0);
  v144(v219, v136);
  v145 = v221;
  v146 = v220[1];
  v146(v214, v221);
  v146(v213, v145);
  v147 = (v110 + v109[30]);
  v148 = v178;
  *v147 = v179;
  v147[1] = v148;
  *(v110 + v109[31]) = v192;
  *(v110 + v109[34]) = v164;
  *(v110 + v187) = v185;
  v149 = v188;
  v150 = v183;
  *v188 = v184;
  v149[1] = v150;
  sub_1B74204FC(*v117, *(v117 + 8));
  v151 = v173;
  *v117 = v172;
  *(v117 + 8) = v151;
  v152 = v169;
  *(v117 + 16) = v170;
  *(v117 + 24) = v152;
  result = sub_1B74204FC(*v118, *(v118 + 8));
  v154 = v167;
  *v118 = v168;
  *(v118 + 8) = v154;
  v155 = v165;
  *(v118 + 16) = v166;
  *(v118 + 24) = v155;
  return result;
}