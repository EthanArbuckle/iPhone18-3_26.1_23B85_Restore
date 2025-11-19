void ManagedScheduledPreauthorizedPayment.paymentAmount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 amountValue];
  [v3 decimalValue];

  v4 = [v1 currency];
  v5 = sub_1B7800868();
  v7 = v6;

  CurrencyAmount.init(_:currencyCode:)(v8, v9, v10, v5, v7, a1);
}

double sub_1B7790F38@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 amountValue];
  [v4 decimalValue];
  v5 = v14;
  v6 = v13;

  v7 = [v3 currency];
  v8 = sub_1B7800868();
  v10 = v9;

  CurrencyAmount.init(_:currencyCode:)(v6, *(&v6 + 1), v5, v8, v10, &v13);
  result = *&v13;
  v12 = v14;
  *a2 = v13;
  *(a2 + 16) = v12;
  *(a2 + 32) = v15;
  return result;
}

void sub_1B7791010(__int128 *a1, void **a2)
{
  v5 = *a1;
  LODWORD(v6) = *(a1 + 4);
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v2 setAmountValue_];

  v4 = sub_1B7800838();
  [v2 setCurrency_];
}

void ManagedScheduledPreauthorizedPayment.paymentAmount.setter(__int128 *a1)
{
  v4 = *a1;
  LODWORD(v5) = *(a1 + 4);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v1 setAmountValue_];

  v3 = sub_1B7800838();

  [v1 setCurrency_];
}

void (*ManagedScheduledPreauthorizedPayment.paymentAmount.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 160) = v2;
  v6 = [v2 amountValue];
  [v6 decimalValue];

  v7 = [v2 currency];
  v8 = sub_1B7800868();
  v10 = v9;

  CurrencyAmount.init(_:currencyCode:)(v12, v13, v14, v8, v10, v5);
  return sub_1B779126C;
}

void sub_1B779126C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  if (a2)
  {
    v4 = v2[1];
    v2[5] = *v2;
    v2[6] = v4;
    *(v2 + 14) = *(v2 + 4);
    v5 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    sub_1B7215720((v2 + 5), v2 + 120);
    *(v2 + 30) = *(v2 + 20);
    *(v2 + 124) = *(v2 + 84);
    v6 = [v5 initWithDecimal_];
    [v3 setAmountValue_];

    v7 = sub_1B7800838();
    sub_1B721722C((v2 + 5));
    [v3 setCurrency_];

    v8 = v2[1];
    *(v2 + 40) = *v2;
    *(v2 + 56) = v8;
    *(v2 + 9) = *(v2 + 4);
    sub_1B721722C(v2 + 40);
  }

  else
  {
    v12 = *v2;
    v13 = *(v2 + 4);
    v9 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *(v2 + 40) = v12;
    *(v2 + 14) = v13;
    v10 = [v9 initWithDecimal_];
    [v3 setAmountValue_];

    v11 = sub_1B7800838();

    [v3 setCurrency_];
  }

  free(v2);
}

void _s10FinanceKit36ManagedScheduledPreauthorizedPaymentC6update_07withRawF0yAC_AA0I15BankConnectDataO0dF0VtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.ScheduledPayment(0);
  v5 = sub_1B7801008();
  [a1 setSchedulingTypeValue_];

  v6 = 0;
  if (*(a2 + *(v4 + 32)) != 6)
  {
    v6 = sub_1B7801008();
  }

  [a1 setStatusValue_];

  v7 = sub_1B7800838();
  [a1 setPaymentDescription_];

  v8 = sub_1B77FF8B8();
  [a1 setPaymentDate_];

  v9 = (a2 + *(v4 + 36));
  v12 = *v9;
  LODWORD(v13) = *(v9 + 4);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [a1 setAmountValue_];

  v11 = sub_1B7800838();
  [a1 setCurrency_];
}

id sub_1B7791564(char *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21)
{
  v22 = v21;
  v69 = a8;
  v62 = a2;
  v60 = a6;
  v61 = a15;
  v59 = a13;
  swift_getObjectType();
  v26 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v30;
  v67 = v29;
  v31 = *(v30 + 16);
  v68 = a1;
  v31(v28, a1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = a5;
  v64 = a20;
  v34 = a21;
  v35 = a4;
  v36 = [ObjCClassFromMetadata entity];
  v37 = type metadata accessor for ManagedPreauthorizedPayment();
  v70.receiver = v22;
  v70.super_class = v37;
  v63 = v34;
  v38 = objc_msgSendSuper2(&v70, sel_initWithEntity_insertIntoManagedObjectContext_, v36, v34);

  v39 = v38;
  v65 = v28;
  v40 = sub_1B77FF9B8();
  v41 = v33;
  v42 = v59;
  v43 = v40;
  [v39 setId_];

  v44 = sub_1B7800838();

  [v39 setPaymentIdentifier_];

  v62 = v35;
  [v39 setStatusValue_];
  [v39 setSchedulingTypeValue_];
  v45 = sub_1B7800838();

  [v39 setPaymentDescription_];

  if (v42)
  {
    v46 = sub_1B7800838();
  }

  else
  {
    v46 = 0;
  }

  [v39 setMandateName_];

  if (v61)
  {
    v47 = sub_1B7800838();
  }

  else
  {
    v47 = 0;
  }

  [v39 setMandateReason_];

  if (a17)
  {
    v48 = sub_1B7800838();
  }

  else
  {
    v48 = 0;
  }

  [v39 setClassificationCode_];

  if (a19)
  {
    v49 = sub_1B7800838();
  }

  else
  {
    v49 = 0;
  }

  [v39 setPurposeCode_];

  v50 = v64;
  [v39 setAccountObject_];

  v51 = *(v66 + 8);
  v52 = v67;
  v51(v65, v67);
  v53 = v39;
  v54 = v69;
  v55 = sub_1B77FF8B8();
  [v53 setPaymentDate_];

  [v53 setAmountValue_];
  v56 = sub_1B7800838();

  [v53 setCurrency_];

  v57 = sub_1B77FF988();
  (*(*(v57 - 8) + 8))(v54, v57);
  v51(v68, v52);
  return v53;
}

id _s10FinanceKit36ManagedScheduledPreauthorizedPaymentC_7account7contextAcA18RawBankConnectDataO0dF0V_AA0C15InternalAccountCSo22NSManagedObjectContextCtcfC_0(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v34 = a3;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA08();
  v11 = *(a1 + 8);
  v32 = *a1;
  v12 = type metadata accessor for RawBankConnectData.ScheduledPayment(0);
  v13 = *(a1 + v12[8]);
  v31 = v11;

  if (v13 == 6)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1B7801008();
  }

  v14 = sub_1B7801008();
  v15 = *(a1 + 24);
  v29 = *(a1 + 16);
  (*(v5 + 16))(v7, a1 + v12[6], v4);
  v16 = a1 + v12[9];
  v37 = *v16;
  v38 = *(v16 + 16);
  v17 = objc_allocWithZone(MEMORY[0x1E696AB90]);

  v35 = v37;
  v36 = v38;
  v18 = [v17 initWithDecimal_];
  v19 = *(v16 + 48);
  v20 = *(v16 + 56);
  v21 = objc_allocWithZone(type metadata accessor for ManagedScheduledPreauthorizedPayment());

  v22 = v34;
  v23 = v7;
  v24 = v33;
  v28 = v19;
  v25 = v30;
  v26 = sub_1B7791564(v10, v32, v31, v30, v14, v29, v15, v23, v18, v28, v20, 0, 0, 0, 0, 0, 0, 0, 0, v33, v34);

  sub_1B7791D10(a1, type metadata accessor for RawBankConnectData.ScheduledPayment);
  return v26;
}

uint64_t sub_1B7791D10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RawOrderProvider.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawOrderProvider.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawOrderProvider.trackingLogoNameDarkColorScheme.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawOrderProvider.trackingLogoNameDarkColorScheme.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawOrderProvider.trackingLogoNameLightColorScheme.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawOrderProvider.trackingLogoNameLightColorScheme.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RawOrderProvider.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawOrderProvider() + 28);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RawOrderProvider()
{
  result = qword_1EDAF8940;
  if (!qword_1EDAF8940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawOrderProvider.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawOrderProvider() + 28);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawOrderProvider.init(displayName:trackingLogoNameDarkColorScheme:trackingLogoNameLightColorScheme:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v10 = *(type metadata accessor for RawOrderProvider() + 28);
  v11 = sub_1B77FF4F8();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a7, v11);
}

unint64_t sub_1B7792150()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  if (v1 == 2)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v3 = 7107189;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001FLL;
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

uint64_t sub_1B77921D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7792C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B77921FC(uint64_t a1)
{
  v2 = sub_1B779296C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7792238(uint64_t a1)
{
  v2 = sub_1B779296C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderProvider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DE08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B779296C();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F78();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B7801F78();
    v8[13] = 2;
    sub_1B7801F78();
    type metadata accessor for RawOrderProvider();
    v8[12] = 3;
    sub_1B77FF4F8();
    sub_1B7535C74(&qword_1EB98F700);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawOrderProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1B77FF4F8();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DE18);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for RawOrderProvider();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B779296C();
  v27 = v8;
  v12 = v28;
  sub_1B78023C8();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v5;
  v15 = v25;
  v16 = v26;
  v28 = v3;
  v32 = 0;
  *v11 = sub_1B7801DF8();
  v11[1] = v17;
  v31 = 1;
  v11[2] = sub_1B7801DF8();
  v11[3] = v18;
  v30 = 2;
  v22[1] = 0;
  v11[4] = sub_1B7801DF8();
  v11[5] = v19;
  v29 = 3;
  sub_1B7535C74(&qword_1EB98F730);
  v22[0] = v14;
  v20 = v28;
  sub_1B7801E48();
  (*(v15 + 8))(v27, v16);
  (*(v23 + 32))(v11 + *(v9 + 28), v22[0], v20);
  sub_1B77929C0(v11, v24);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_1B7792A24(v11);
}

uint64_t _s10FinanceKit16RawOrderProviderV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B78020F8() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RawOrderProvider();

  return sub_1B77FF458();
}

unint64_t sub_1B779296C()
{
  result = qword_1EB99DE10;
  if (!qword_1EB99DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DE10);
  }

  return result;
}

uint64_t sub_1B77929C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7792A24(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7792AA8()
{
  result = sub_1B77FF4F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B7792B40()
{
  result = qword_1EB99DE20;
  if (!qword_1EB99DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DE20);
  }

  return result;
}

unint64_t sub_1B7792B98()
{
  result = qword_1EB99DE28;
  if (!qword_1EB99DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DE28);
  }

  return result;
}

unint64_t sub_1B7792BF0()
{
  result = qword_1EB99DE30;
  if (!qword_1EB99DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DE30);
  }

  return result;
}

uint64_t sub_1B7792C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B788D950 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B788D970 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t BankConnectResponseWithConsent.init<>(consent:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  v9 = type metadata accessor for BankConnectResponseWithConsent();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

{
  sub_1B779C474(a1, a4, type metadata accessor for RawBankConnectData.Consent);
  type metadata accessor for RawBankConnectData.Consent(255);
  v7 = type metadata accessor for BankConnectResponseWithConsent();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t BankConnectErrorWithConsent.init(httpURLResponse:wrappedError:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RawBankConnectData.Consent(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7800838();
  v13 = [a1 valueForHTTPHeaderField_];

  if (!v13)
  {
    sub_1B7280708();
    v17 = swift_allocError();
    *v19 = 0;
    swift_willThrow();
LABEL_10:
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B779D7B0(a2, v23, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    return sub_1B76BB470(a2);
  }

  v29 = a1;
  v30 = a2;
  sub_1B7800868();

  v14 = sub_1B77FF548();
  v16 = v15;

  if (v16 >> 60 == 15)
  {
    sub_1B7280708();
    v17 = swift_allocError();
    *v18 = 3;
    swift_willThrow();
LABEL_9:
    a1 = v29;
    a2 = v30;
    goto LABEL_10;
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_1EB991BC8);
  (*(v6 + 16))(v8, v20, v5);
  sub_1B77FE8C8();
  sub_1B7793380(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v21 = v31;
  sub_1B77FE8D8();
  if (v21)
  {

    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    v17 = swift_allocError();
    *v22 = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1B72380B8(v14, v16);
    goto LABEL_9;
  }

  sub_1B72380B8(v14, v16);

  v25 = v28;
  sub_1B779C474(v11, v28, type metadata accessor for RawBankConnectData.Consent);
  v26 = type metadata accessor for BankConnectErrorWithConsent(0);
  return sub_1B779C474(v30, v25 + *(v26 + 20), type metadata accessor for FinanceNetworkError);
}

uint64_t sub_1B7793380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BankConnectWebServiceClient.account(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B779340C, 0, 0);
}

uint64_t sub_1B779340C()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceAccountRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceAccountRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B77934F0;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B77934F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7793610;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7793610()
{
  sub_1B777FE08(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectErrorWithConsent.wrappedErrorAwareConsentStatus.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for FinanceNetworkError();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B779D7B0(v1 + *(v6 + 20), v5, type metadata accessor for FinanceNetworkError);
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    v8 = 1;
  }

  else
  {
    result = sub_1B76BB470(v5);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t BankConnectWebServiceClient.invalidateAndCancelAfter<A>(_:)(uint64_t a1, int *a2)
{
  *(v3 + 16) = v2;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1B779387C;

  return v7(a1);
}

uint64_t sub_1B779387C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B7793990;
  }

  else
  {
    v2 = sub_1B76A2A18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7793990()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B743C06C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76A8000, v2, v3);
}

uint64_t BankConnectWebServiceClient.accounts(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7793A88, 0, 0);
}

uint64_t sub_1B7793A88()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceAccountsRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceAccountsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountsRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B7793B6C;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B7793B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7793C8C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7793C8C()
{
  sub_1B777D014(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.accountPaymentInfo(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7793D48, 0, 0);
}

uint64_t sub_1B7793D48()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceAccountPaymentInfoRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceAccountPaymentInfoRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountPaymentInfoRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B7793E2C;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B7793E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7793F4C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7793F4C()
{
  sub_1B77834F4(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.accountScheduledPayments(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7794008, 0, 0);
}

uint64_t sub_1B7794008()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceAccountScheduledPaymentsRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceAccountScheduledPaymentsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountScheduledPaymentsRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B77940EC;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B77940EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B779420C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B779420C()
{
  sub_1B7784C3C(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.consentStatus(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B77942C8, 0, 0);
}

uint64_t sub_1B77942C8()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceConsentStatusRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceConsentStatusRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceConsentStatusRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B77943AC;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B77943AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B7794564;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B77944CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B77944CC()
{
  sub_1B727E2D8(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B7794564()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectWebServiceClient.institutionLogo(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B77945EC, 0, 0);
}

uint64_t sub_1B77945EC()
{
  v1 = v0[8];
  v2 = type metadata accessor for BankConnectWebServiceInstitutionLogoRequest();
  v0[5] = v2;
  v0[6] = &protocol witness table for BankConnectWebServiceInstitutionLogoRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceInstitutionLogoRequest);
  v4 = *(v1 + *(v2 + 24));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1B77946E4;

  return sub_1B77955F8((v0 + 2), 1, v4, 0);
}

uint64_t sub_1B77946E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7794804;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7794804()
{
  sub_1B74645D8(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectResponseWithHeaders.init(response:headers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for BankConnectResponseWithHeaders();
  return sub_1B779C474(a2, a4 + *(v6 + 28), type metadata accessor for BankConnectResponseHeaders);
}

uint64_t sub_1B779492C()
{
  v0 = sub_1B77FF4F8();
  __swift_allocate_value_buffer(v0, qword_1EB99DE40);
  v1 = __swift_project_value_buffer(v0, qword_1EB99DE40);
  return sub_1B7794978(v1);
}

uint64_t sub_1B7794978@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - v6;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  if (qword_1EDAF7308 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDAF7328;
  v16 = unk_1EDAF7330;
  __swift_project_boxed_opaque_existential_1(qword_1EDAF7310, qword_1EDAF7328);
  v17 = (*(v16 + 32))(0x42706F6F6B736F62, 0xEE004C5255657361, v15, v16);
  v19 = v18;
  if (!v18)
  {
    goto LABEL_6;
  }

  sub_1B77FF4D8();

  if ((*(v9 + 6))(v7, 1, v8) == 1)
  {
    sub_1B7205418(v7, &unk_1EB994C70);
LABEL_6:
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v20 = sub_1B78000B8();
    __swift_project_value_buffer(v20, qword_1EDAF65B0);

    v21 = sub_1B7800098();
    v22 = sub_1B78011D8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v23 = 136315138;
      if (!v19)
      {
        v17 = 0x6E776F6E6B6E753CLL;
      }

      v43 = v9;
      v44 = v24;
      v26 = v5;
      v27 = v8;
      v28 = a1;
      if (v19)
      {
        v29 = v19;
      }

      else
      {
        v29 = 0xE90000000000003ELL;
      }

      v30 = sub_1B71A3EF8(v17, v29, &v44);
      a1 = v28;
      v8 = v27;
      v5 = v26;
      v9 = v43;

      *(v23 + 4) = v30;
      _os_log_impl(&dword_1B7198000, v21, v22, "Bank Connect endpoint overridden with an invalid URL: %s, falling back to the default URL.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1B8CA7A40](v25, -1, -1);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
    }

    sub_1B77FF4D8();
    result = (*(v9 + 6))(v5, 1, v8);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      return (*(v9 + 4))(a1, v5, v8);
    }

    return result;
  }

  v43 = *(v9 + 4);
  v43(v14, v7, v8);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v32 = sub_1B78000B8();
  __swift_project_value_buffer(v32, qword_1EDAF65B0);
  (*(v9 + 2))(v12, v14, v8);
  v33 = sub_1B7800098();
  v34 = sub_1B78011D8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v35 = 136315138;
    sub_1B7793380(&qword_1EB99E0D0, MEMORY[0x1E6968FB0]);
    v36 = sub_1B7802068();
    v42 = a1;
    v38 = v37;
    (*(v9 + 1))(v12, v8);
    v39 = sub_1B71A3EF8(v36, v38, &v44);
    a1 = v42;

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1B7198000, v33, v34, "Bank Connect endpoint overridden with URL: %s.", v35, 0xCu);
    v40 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1B8CA7A40](v40, -1, -1);
    MEMORY[0x1B8CA7A40](v35, -1, -1);
  }

  else
  {

    (*(v9 + 1))(v12, v8);
  }

  return (v43)(a1, v14, v8);
}

uint64_t static BankConnectWebServiceClient.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB98EB60 != -1)
  {
    swift_once();
  }

  v2 = sub_1B77FF4F8();
  v3 = __swift_project_value_buffer(v2, qword_1EB99DE40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t BankConnectWebServiceClient.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *BankConnectWebServiceClient.__allocating_init(baseURL:configuration:authenticator:secureElementIdentifierProvider:userIdentifierProviding:networkEventRecorder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v12 = &v11[OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_signpostRequestName];
  *v12 = "BankConnectWebServiceRequest";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v13 = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
  v14 = sub_1B77FF4F8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v11[v13], a1, v14);
  v16 = [objc_allocWithZone(_s10FinanceKit15SessionDelegateCMa_1()) init];
  *(v11 + 2) = v16;
  sub_1B719B06C(a3, (v11 + 40));
  sub_1B719B06C(a4, (v11 + 80));
  sub_1B719B06C(a5, (v11 + 120));
  *&v11[OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_networkEventRecorder] = a6;
  v17 = objc_allocWithZone(MEMORY[0x1E696ADC8]);

  v18 = [v17 init];
  *(v11 + 3) = v18;
  *(v11 + 20) = sub_1B779CF5C();
  *(v11 + 21) = v19;
  v20 = v18;
  v21 = sub_1B7800838();
  [v20 setName_];

  [v20 setMaxConcurrentOperationCount_];
  v22 = [objc_opt_self() sessionWithConfiguration:a2 delegate:v16 delegateQueue:v20];
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v15 + 8))(a1, v14);

  *(v11 + 4) = v22;

  return v11;
}

uint64_t BankConnectWebServiceClient.init(baseURL:configuration:authenticator:secureElementIdentifierProvider:userIdentifierProviding:networkEventRecorder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1B779D45C(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t BankConnectWebServiceClient.institutionsForPasses(for:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7795364, 0, 0);
}

uint64_t sub_1B7795364()
{
  v1 = v0[9];
  v2 = v0[10];
  v0[5] = &type metadata for BankConnectWebServiceInstitutionsForPassesRequest;
  v0[6] = &protocol witness table for BankConnectWebServiceInstitutionsForPassesRequest;
  v0[2] = v1;
  v0[3] = v2;

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1B7795440;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B7795440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  v5[15] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7795560;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7795560()
{
  sub_1B7463268(*(v0 + 112), *(v0 + 56));
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B77955F8(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  *(v5 + 832) = v4;
  *(v5 + 1099) = a4;
  *(v5 + 824) = a3;
  *(v5 + 1096) = a2;
  *(v5 + 816) = a1;
  v6 = sub_1B77FE8B8();
  *(v5 + 840) = v6;
  *(v5 + 848) = *(v6 - 8);
  *(v5 + 856) = swift_task_alloc();
  v7 = sub_1B77FE858();
  *(v5 + 864) = v7;
  *(v5 + 872) = *(v7 - 8);
  *(v5 + 880) = swift_task_alloc();
  *(v5 + 888) = swift_task_alloc();
  *(v5 + 896) = swift_task_alloc();
  *(v5 + 904) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7795748, 0, 0);
}

uint64_t sub_1B7795748()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = v2[3];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v4 = *(v1 + 160);
  *(v0 + 912) = v4;
  v5 = *(v1 + 168);
  *(v0 + 920) = v5;
  *(v0 + 80) = type metadata accessor for HTTPRequestWithCustomHeaderField();
  *(v0 + 88) = &off_1F2F779D0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  HTTPRequest.addingMMeClientInfo(_:)(v4, v5, v3, boxed_opaque_existential_1);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v7);
  *(v0 + 120) = type metadata accessor for HTTPRequestWithCustomHeaderField();
  *(v0 + 128) = &off_1F2F779D0;
  v9 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  HTTPRequest.addingRequestTraceID()(v7, v8, v9);
  v10 = *(v0 + 832);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v11);
  v13 = type metadata accessor for HTTPRequestWithCustomHeaderField();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  HTTPRequest.addingEphemeralUserIdentifier(userIdentifierProviding:)((v10 + 120), v11, v12, v15);
  HTTPRequest.addingInternalInstallIfNeeded(deviceInfo:)(&type metadata for DeviceInfo, v13, &off_1F2F779D0, (v0 + 136));
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v16);
  *(v0 + 200) = type metadata accessor for HTTPRequestWithCustomHeaderField();
  *(v0 + 208) = &off_1F2F779D0;
  v18 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  HTTPRequest.addingRateLimitIdentifier(userIdentifierProviding:)((v10 + 120), v16, v17, v18);
  v19 = *(v0 + 200);
  v20 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v19);
  v21 = _s10FinanceKit18RawBankConnectDataO21SupportedCapabilitiesO08filteredH0SayAEGvgZ_0();
  *(v0 + 40) = type metadata accessor for HTTPRequestWithCustomHeaderField();
  *(v0 + 48) = &off_1F2F779D0;
  v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  HTTPRequest.addingSupportedCapabilities(supportedCapabilities:)(v21, v19, v20, v22);
  LOWORD(v19) = *(v0 + 1096);

  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  (*(v14 + 8))(v15, v13);

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  if (v19)
  {
    v23 = *(v0 + 832);
    sub_1B719B06C(v0 + 16, v0 + 736);
    v24 = *(v0 + 760);
    v25 = *(v0 + 768);
    __swift_project_boxed_opaque_existential_1((v0 + 736), v24);
    *(v0 + 800) = type metadata accessor for HTTPRequestWithGrandSlamAuthentication();
    *(v0 + 808) = &off_1F2F66628;
    v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 776));
    v27 = swift_task_alloc();
    *(v0 + 928) = v27;
    *v27 = v0;
    v27[1] = sub_1B7795DE0;

    return HTTPRequest.authenticated(using:forceRenewToken:)(v26, v23 + 40, 0, v24, v25);
  }

  else
  {
    v29 = *(v0 + 832);
    if ((*(v0 + 1096) & 0x100) != 0)
    {
      sub_1B719B06C(v0 + 16, v0 + 656);
      v34 = *(v0 + 680);
      v35 = *(v0 + 688);
      __swift_project_boxed_opaque_existential_1((v0 + 656), v34);
      *(v0 + 720) = type metadata accessor for HTTPRequestWithSecureElementIdentifier();
      *(v0 + 728) = &off_1F2F77E88;
      v36 = __swift_allocate_boxed_opaque_existential_1((v0 + 696));
      v37 = swift_task_alloc();
      *(v0 + 944) = v37;
      *v37 = v0;
      v37[1] = sub_1B7796284;

      return HTTPRequest.addingSecureElementIdentifier(with:)(v36, v29 + 80, v34, v35);
    }

    else
    {
      v30 = *(v0 + 896);
      sub_1B719B06C(v0 + 16, v0 + 216);
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
      *(v0 + 960) = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
      HTTPRequest.makeURLRequest(baseURL:)(v29 + v33, v31, v32, v30);
      v38 = *(v0 + 1099);
      __swift_destroy_boxed_opaque_existential_1(v0 + 216);
      if ((v38 & 1) == 0)
      {
        sub_1B77FE798();
      }

      v39 = *(v0 + 904);
      v40 = *(v0 + 896);
      v41 = *(v0 + 872);
      v42 = *(v0 + 864);
      v43 = *(v41 + 32);
      *(v0 + 968) = v43;
      *(v0 + 976) = (v41 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v43(v39, v40, v42);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      v44 = swift_task_alloc();
      *(v0 + 984) = v44;
      *v44 = v0;
      v44[1] = sub_1B7796644;
      v45 = *(v0 + 904);

      return sub_1B779B39C(v45);
    }
  }
}

uint64_t sub_1B7795DE0()
{
  *(*v1 + 936) = v0;

  if (v0)
  {
    v2 = sub_1B77961C8;
  }

  else
  {
    v2 = sub_1B7795EF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7795EF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1B71E4C44((v0 + 776), v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 736);
  if ((*(v0 + 1096) & 0x100) != 0)
  {
    v9 = *(v0 + 832);
    sub_1B719B06C(v0 + 16, v0 + 656);
    v10 = *(v0 + 680);
    v11 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1((v0 + 656), v10);
    *(v0 + 720) = type metadata accessor for HTTPRequestWithSecureElementIdentifier();
    *(v0 + 728) = &off_1F2F77E88;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 696));
    v13 = swift_task_alloc();
    *(v0 + 944) = v13;
    *v13 = v0;
    v13[1] = sub_1B7796284;

    return HTTPRequest.addingSecureElementIdentifier(with:)(boxed_opaque_existential_1, v9 + 80, v10, v11);
  }

  else
  {
    v1 = *(v0 + 936);
    v2 = *(v0 + 896);
    v3 = *(v0 + 832);
    sub_1B719B06C(v0 + 16, v0 + 216);
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v4);
    v6 = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
    *(v0 + 960) = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
    HTTPRequest.makeURLRequest(baseURL:)(v3 + v6, v4, v5, v2);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 216);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);

      v7 = *(v0 + 8);

      return v7();
    }

    else
    {
      v14 = *(v0 + 1099);
      __swift_destroy_boxed_opaque_existential_1(v0 + 216);
      if ((v14 & 1) == 0)
      {
        sub_1B77FE798();
      }

      v15 = *(v0 + 904);
      v16 = *(v0 + 896);
      v17 = *(v0 + 872);
      v18 = *(v0 + 864);
      v19 = *(v17 + 32);
      *(v0 + 968) = v19;
      *(v0 + 976) = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v19(v15, v16, v18);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      v20 = swift_task_alloc();
      *(v0 + 984) = v20;
      *v20 = v0;
      v20[1] = sub_1B7796644;
      v21 = *(v0 + 904);

      return sub_1B779B39C(v21);
    }
  }
}

uint64_t sub_1B77961C8()
{
  __swift_deallocate_boxed_opaque_existential_1(v0 + 776);
  __swift_destroy_boxed_opaque_existential_1(v0 + 736);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7796284()
{
  *(*v1 + 952) = v0;

  if (v0)
  {
    v2 = sub_1B7796588;
  }

  else
  {
    v2 = sub_1B7796398;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7796398()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1B71E4C44((v0 + 696), v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 656);
  v1 = *(v0 + 952);
  v2 = *(v0 + 896);
  v3 = *(v0 + 832);
  sub_1B719B06C(v0 + 16, v0 + 216);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v4);
  v6 = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
  *(v0 + 960) = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
  HTTPRequest.makeURLRequest(baseURL:)(v3 + v6, v4, v5, v2);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 216);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 1099);
    __swift_destroy_boxed_opaque_existential_1(v0 + 216);
    if ((v9 & 1) == 0)
    {
      sub_1B77FE798();
    }

    v10 = *(v0 + 904);
    v11 = *(v0 + 896);
    v12 = *(v0 + 872);
    v13 = *(v0 + 864);
    v14 = *(v12 + 32);
    *(v0 + 968) = v14;
    *(v0 + 976) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v10, v11, v13);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v15 = swift_task_alloc();
    *(v0 + 984) = v15;
    *v15 = v0;
    v15[1] = sub_1B7796644;
    v16 = *(v0 + 904);

    return sub_1B779B39C(v16);
  }
}

uint64_t sub_1B7796588()
{
  __swift_deallocate_boxed_opaque_existential_1(v0 + 696);
  __swift_destroy_boxed_opaque_existential_1(v0 + 656);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7796644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[124] = a1;
  v5[125] = a2;
  v5[126] = a3;
  v5[127] = v3;

  if (v3)
  {
    v6 = sub_1B7797CC4;
  }

  else
  {
    v6 = sub_1B7796764;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7796764()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    (*(*(v0 + 872) + 8))(*(v0 + 904), *(v0 + 864));
    goto LABEL_10;
  }

  v2 = v1;
  v3 = *(v0 + 1008);
  if ([v2 statusCode] != 401)
  {
    goto LABEL_9;
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 1016);
  v5 = *(v0 + 856);
  v6 = *(v0 + 848);
  v7 = *(v0 + 840);
  v8 = __swift_project_value_buffer(v7, qword_1EB991BC8);
  (*(v6 + 16))(v5, v8, v7);
  sub_1B77FE8C8();
  sub_1B7280970();
  sub_1B77FE8D8();
  if (v4)
  {
    v9 = *(v0 + 1008);
    v10 = *(v0 + 904);
    v11 = *(v0 + 872);
    v12 = *(v0 + 864);

    (*(v11 + 8))(v10, v12);
LABEL_10:
    v14 = *(v0 + 1000);
    v15 = *(v0 + 992);
    v16 = *(v0 + 1008);

    v17 = *(v0 + 8);

    return v17(v15, v14, v16);
  }

  if (*(v0 + 1098))
  {
LABEL_9:
    v13 = *(v0 + 1008);
    (*(*(v0 + 872) + 8))(*(v0 + 904), *(v0 + 864));

    goto LABEL_10;
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v19 = sub_1B78000B8();
  __swift_project_value_buffer(v19, qword_1EDAF65B0);
  v20 = sub_1B7800098();
  v21 = sub_1B78011D8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B7198000, v20, v21, "Request failed (401) with an invalid GrandSlam token, renewing the token and retrying the original request.", v22, 2u);
    MEMORY[0x1B8CA7A40](v22, -1, -1);
  }

  v23 = *(v0 + 920);
  v24 = *(v0 + 912);
  v25 = *(v0 + 816);

  v26 = v25[3];
  __swift_project_boxed_opaque_existential_1(v25, v26);
  *(v0 + 320) = type metadata accessor for HTTPRequestWithCustomHeaderField();
  *(v0 + 328) = &off_1F2F779D0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
  HTTPRequest.addingMMeClientInfo(_:)(v24, v23, v26, boxed_opaque_existential_1);
  v28 = *(v0 + 320);
  v29 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1((v0 + 296), v28);
  *(v0 + 360) = type metadata accessor for HTTPRequestWithCustomHeaderField();
  *(v0 + 368) = &off_1F2F779D0;
  v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
  HTTPRequest.addingRequestTraceID()(v28, v29, v30);
  v31 = *(v0 + 832);
  v32 = *(v0 + 360);
  v33 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v32);
  v34 = type metadata accessor for HTTPRequestWithCustomHeaderField();
  v35 = *(v34 - 8);
  v36 = swift_task_alloc();
  HTTPRequest.addingEphemeralUserIdentifier(userIdentifierProviding:)((v31 + 120), v32, v33, v36);
  v37 = *(v0 + 832);
  HTTPRequest.addingInternalInstallIfNeeded(deviceInfo:)(&type metadata for DeviceInfo, v34, &off_1F2F779D0, (v0 + 376));
  v38 = *(v0 + 400);
  v39 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v38);
  *(v0 + 440) = type metadata accessor for HTTPRequestWithCustomHeaderField();
  *(v0 + 448) = &off_1F2F779D0;
  v40 = __swift_allocate_boxed_opaque_existential_1((v0 + 416));
  HTTPRequest.addingRateLimitIdentifier(userIdentifierProviding:)((v37 + 120), v38, v39, v40);
  v41 = *(v0 + 440);
  v42 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v41);
  v43 = _s10FinanceKit18RawBankConnectDataO21SupportedCapabilitiesO08filteredH0SayAEGvgZ_0();
  *(v0 + 280) = type metadata accessor for HTTPRequestWithCustomHeaderField();
  *(v0 + 288) = &off_1F2F779D0;
  v44 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
  HTTPRequest.addingSupportedCapabilities(supportedCapabilities:)(v43, v41, v42, v44);
  LOWORD(v41) = *(v0 + 1096);

  __swift_destroy_boxed_opaque_existential_1(v0 + 416);
  __swift_destroy_boxed_opaque_existential_1(v0 + 376);
  (*(v35 + 8))(v36, v34);

  __swift_destroy_boxed_opaque_existential_1(v0 + 336);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  if (v41)
  {
    v45 = *(v0 + 832);
    sub_1B719B06C(v0 + 256, v0 + 576);
    v46 = *(v0 + 600);
    v47 = *(v0 + 608);
    __swift_project_boxed_opaque_existential_1((v0 + 576), v46);
    *(v0 + 640) = type metadata accessor for HTTPRequestWithGrandSlamAuthentication();
    *(v0 + 648) = &off_1F2F66628;
    v48 = __swift_allocate_boxed_opaque_existential_1((v0 + 616));
    v49 = swift_task_alloc();
    *(v0 + 1024) = v49;
    *v49 = v0;
    v49[1] = sub_1B7797104;

    return HTTPRequest.authenticated(using:forceRenewToken:)(v48, v45 + 40, 1, v46, v47);
  }

  else if ((*(v0 + 1096) & 0x100) != 0)
  {
    v55 = *(v0 + 832);
    sub_1B719B06C(v0 + 256, v0 + 496);
    v56 = *(v0 + 520);
    v57 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_1((v0 + 496), v56);
    *(v0 + 560) = type metadata accessor for HTTPRequestWithSecureElementIdentifier();
    *(v0 + 568) = &off_1F2F77E88;
    v58 = __swift_allocate_boxed_opaque_existential_1((v0 + 536));
    v59 = swift_task_alloc();
    *(v0 + 1040) = v59;
    *v59 = v0;
    v59[1] = sub_1B7797628;

    return HTTPRequest.addingSecureElementIdentifier(with:)(v58, v55 + 80, v56, v57);
  }

  else
  {
    v50 = *(v0 + 960);
    v51 = *(v0 + 880);
    v52 = *(v0 + 832);
    sub_1B719B06C(v0 + 256, v0 + 456);
    v53 = *(v0 + 480);
    v54 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v53);
    HTTPRequest.makeURLRequest(baseURL:)(v52 + v50, v53, v54, v51);
    v60 = *(v0 + 1099);
    __swift_destroy_boxed_opaque_existential_1(v0 + 456);
    if ((v60 & 1) == 0)
    {
      sub_1B77FE798();
    }

    (*(v0 + 968))(*(v0 + 888), *(v0 + 880), *(v0 + 864));
    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    v61 = swift_task_alloc();
    *(v0 + 1056) = v61;
    *v61 = v0;
    v61[1] = sub_1B7797A64;
    v62 = *(v0 + 888);

    return sub_1B779B39C(v62);
  }
}

uint64_t sub_1B7797104()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_1B7797520;
  }

  else
  {
    v2 = sub_1B7797218;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7797218()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  sub_1B71E4C44((v0 + 616), v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 576);
  if ((*(v0 + 1096) & 0x100) != 0)
  {
    v15 = *(v0 + 832);
    sub_1B719B06C(v0 + 256, v0 + 496);
    v16 = *(v0 + 520);
    v17 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_1((v0 + 496), v16);
    *(v0 + 560) = type metadata accessor for HTTPRequestWithSecureElementIdentifier();
    *(v0 + 568) = &off_1F2F77E88;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 536));
    v19 = swift_task_alloc();
    *(v0 + 1040) = v19;
    *v19 = v0;
    v19[1] = sub_1B7797628;

    return HTTPRequest.addingSecureElementIdentifier(with:)(boxed_opaque_existential_1, v15 + 80, v16, v17);
  }

  else
  {
    v1 = *(v0 + 1032);
    v2 = *(v0 + 960);
    v3 = *(v0 + 880);
    v4 = *(v0 + 832);
    sub_1B719B06C(v0 + 256, v0 + 456);
    v5 = *(v0 + 480);
    v6 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v5);
    HTTPRequest.makeURLRequest(baseURL:)(v4 + v2, v5, v6, v3);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 456);
      __swift_destroy_boxed_opaque_existential_1(v0 + 256);
      v7 = *(v0 + 1008);
      v8 = *(v0 + 1000);
      v9 = *(v0 + 992);
      v10 = *(v0 + 904);
      v11 = *(v0 + 872);
      v12 = *(v0 + 864);

      sub_1B720A388(v9, v8);
      (*(v11 + 8))(v10, v12);

      v13 = *(v0 + 8);

      return v13();
    }

    else
    {
      v20 = *(v0 + 1099);
      __swift_destroy_boxed_opaque_existential_1(v0 + 456);
      if ((v20 & 1) == 0)
      {
        sub_1B77FE798();
      }

      (*(v0 + 968))(*(v0 + 888), *(v0 + 880), *(v0 + 864));
      __swift_destroy_boxed_opaque_existential_1(v0 + 256);
      v21 = swift_task_alloc();
      *(v0 + 1056) = v21;
      *v21 = v0;
      v21[1] = sub_1B7797A64;
      v22 = *(v0 + 888);

      return sub_1B779B39C(v22);
    }
  }
}

uint64_t sub_1B7797520()
{
  __swift_deallocate_boxed_opaque_existential_1((v0 + 77));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[113];
  v5 = v0[109];
  v6 = v0[108];

  sub_1B720A388(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7797628()
{
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v2 = sub_1B779795C;
  }

  else
  {
    v2 = sub_1B779773C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B779773C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  sub_1B71E4C44((v0 + 536), v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 496);
  v1 = *(v0 + 1048);
  v2 = *(v0 + 960);
  v3 = *(v0 + 880);
  v4 = *(v0 + 832);
  sub_1B719B06C(v0 + 256, v0 + 456);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v5);
  HTTPRequest.makeURLRequest(baseURL:)(v4 + v2, v5, v6, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 456);
    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 1000);
    v9 = *(v0 + 992);
    v10 = *(v0 + 904);
    v11 = *(v0 + 872);
    v12 = *(v0 + 864);

    sub_1B720A388(v9, v8);
    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 1099);
    __swift_destroy_boxed_opaque_existential_1(v0 + 456);
    if ((v15 & 1) == 0)
    {
      sub_1B77FE798();
    }

    (*(v0 + 968))(*(v0 + 888), *(v0 + 880), *(v0 + 864));
    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    v16 = swift_task_alloc();
    *(v0 + 1056) = v16;
    *v16 = v0;
    v16[1] = sub_1B7797A64;
    v17 = *(v0 + 888);

    return sub_1B779B39C(v17);
  }
}

uint64_t sub_1B779795C()
{
  __swift_deallocate_boxed_opaque_existential_1((v0 + 67));
  __swift_destroy_boxed_opaque_existential_1((v0 + 62));
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[113];
  v5 = v0[109];
  v6 = v0[108];

  sub_1B720A388(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7797A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 1064) = v3;

  if (v3)
  {
    v9 = sub_1B7797D84;
  }

  else
  {
    v8[134] = a3;
    v8[135] = a2;
    v8[136] = a1;
    v9 = sub_1B7797BA4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B7797BA4()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[113];
  v5 = v0[111];
  v6 = v0[109];
  v7 = v0[108];

  sub_1B720A388(v3, v2);
  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  v9 = v0[136];
  v10 = v0[135];
  v11 = v0[134];

  v12 = v0[1];

  return v12(v9, v10, v11);
}

uint64_t sub_1B7797CC4()
{
  (*(v0[109] + 8))(v0[113], v0[108]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7797D84()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[113];
  v5 = v0[111];
  v6 = v0[109];
  v7 = v0[108];

  sub_1B720A388(v3, v2);
  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);

  v9 = v0[1];

  return v9();
}

uint64_t BankConnectWebServiceClient.institutions(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a2;
  *(v3 + 248) = v2;
  *(v3 + 232) = a1;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1B7797ED0, 0, 0);
}

uint64_t sub_1B7797ED0()
{
  v1 = v0[30];
  v0[27] = &type metadata for BankConnectWebServiceInstitutionsRequest;
  v0[28] = &protocol witness table for BankConnectWebServiceInstitutionsRequest;
  v2 = swift_allocObject();
  v0[24] = v2;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  v5 = *(v1 + 48);
  v4 = *(v1 + 64);
  v6 = *(v1 + 32);
  *(v2 + 96) = *(v1 + 80);
  *(v2 + 64) = v5;
  *(v2 + 80) = v4;
  *(v2 + 48) = v6;
  sub_1B779D6A0((v0 + 2), (v0 + 13));
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_1B7797FD8;

  return sub_1B77955F8((v0 + 24), 1, 0, 1);
}

uint64_t sub_1B7797FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[33] = a1;
  v5[34] = a2;
  v5[35] = a3;
  v5[36] = v3;

  if (v3)
  {
    v6 = sub_1B7798190;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    v6 = sub_1B77980F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B77980F8()
{
  sub_1B74622BC(*(v0 + 280), *(v0 + 232));
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B7798190()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectWebServiceClient.institution(for:)(uint64_t a1, void *a2)
{
  v3[10] = a1;
  v3[11] = v2;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1B779821C, 0, 0);
}

uint64_t sub_1B779821C()
{
  v11 = v0;
  if (sub_1B7431C4C(v0[12], v0[13]))
  {
    v1 = v0[12];
    v2 = v0[13];
    type metadata accessor for BankConnectAutoBugCaptureReporter();
    inited = swift_initStackObject();
    v4 = [objc_allocWithZone(FKAutoBugCaptureReporter) init];
    *(inited + 16) = v4;
    v10 = 0;
    v5._countAndFlagsBits = v1;
    v5._object = v2;
    BankConnectAutoBugCaptureReporter.reportPlaceholderInstitutionRequestIssue(_:institutionID:)(&v10, v5);
  }

  v7 = v0[12];
  v6 = v0[13];
  v0[5] = &type metadata for BankConnectWebServiceInstitutionRequest;
  v0[6] = &protocol witness table for BankConnectWebServiceInstitutionRequest;
  v0[2] = v7;
  v0[3] = v6;

  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1B7798358;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B7798358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {
    v6 = sub_1B7798510;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7798478;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7798478()
{
  sub_1B7464AE8(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B7798510()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectWebServiceClient.initiateConsent(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7798598, 0, 0);
}

uint64_t sub_1B7798598()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceInitiateConsentRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceInitiateConsentRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceInitiateConsentRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B779867C;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B779867C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B779879C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B779879C()
{
  sub_1B727AE10(*(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.completeConsent(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7798858, 0, 0);
}

uint64_t sub_1B7798858()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceCompleteConsentRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceCompleteConsentRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceCompleteConsentRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B779893C;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B779893C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7798A5C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7798A5C()
{
  sub_1B727CEC8(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.revokeConsent(for:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7798B14, 0, 0);
}

uint64_t sub_1B7798B14()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for BankConnectWebServiceRevokeConsentRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceRevokeConsentRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceRevokeConsentRequest);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B7798BF8;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B7798BF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 80) = a3;
  *(v7 + 88) = v3;

  if (v3)
  {
    v8 = sub_1B7798F08;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 16);
    sub_1B720A388(a1, a2);
    v8 = sub_1B7798D30;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B7798D30()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 statusCode];
    v2 = *(v0 + 80);
    if (v5 == 200)
    {

      v6 = *(v0 + 8);
      goto LABEL_7;
    }

    v11 = v5;
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    *v12 = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v8 = v7;
    v9 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v8 = v9;
    v8[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_1B7798F08()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectWebServiceClient.accountTransactions(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7798F90, 0, 0);
}

uint64_t sub_1B7798F90()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceAccountTransactionsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountTransactionsRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B7799074;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B7799074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7799194;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7799194()
{
  sub_1B7781DF0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.transactionInsights(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a2;
  *(v3 + 248) = v2;
  *(v3 + 232) = a1;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1B7799270, 0, 0);
}

uint64_t sub_1B7799270()
{
  v1 = v0[30];
  v0[27] = &type metadata for BankConnectWebServiceInsightsRequest;
  v0[28] = &protocol witness table for BankConnectWebServiceInsightsRequest;
  v2 = swift_allocObject();
  v0[24] = v2;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  v5 = *(v1 + 48);
  v4 = *(v1 + 64);
  v6 = *(v1 + 32);
  *(v2 + 96) = *(v1 + 80);
  *(v2 + 64) = v5;
  *(v2 + 80) = v4;
  *(v2 + 48) = v6;
  sub_1B779D6FC((v0 + 2), (v0 + 13));
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_1B7799378;

  return sub_1B77955F8((v0 + 24), 1, 0, 1);
}

uint64_t sub_1B7799378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[33] = a1;
  v5[34] = a2;
  v5[35] = a3;
  v5[36] = v3;

  if (v3)
  {
    v6 = sub_1B779F1B8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    v6 = sub_1B7799498;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7799498()
{
  sub_1B72DF458(*(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 232));
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.uploadOfflineLabData(for:)(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_1B77FE858();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77995FC, 0, 0);
}

uint64_t sub_1B77995FC()
{
  v2 = v0[37];
  v1 = v0[38];
  v0[5] = type metadata accessor for BankConnectWebServiceOfflineLabItemsRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceOfflineLabItemsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v2, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceOfflineLabItemsRequest);
  v4 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v0[15] = type metadata accessor for HTTPRequestWithCustomHeaderField();
  v0[16] = &off_1F2F779D0;
  v7 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  HTTPRequest.addingMMeClientInfo(_:)(v5, v6, v4, v7);
  v8 = v0[15];
  v9 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
  v0[20] = type metadata accessor for HTTPRequestWithCustomHeaderField();
  v0[21] = &off_1F2F779D0;
  v10 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  HTTPRequest.addingRequestTraceID()(v8, v9, v10);
  v11 = v0[38];
  v12 = v0[20];
  v13 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v12);
  v14 = type metadata accessor for HTTPRequestWithCustomHeaderField();
  v15 = *(v14 - 8);
  v16 = swift_task_alloc();
  HTTPRequest.addingEphemeralUserIdentifier(userIdentifierProviding:)((v11 + 120), v12, v13, v16);
  HTTPRequest.addingInternalInstallIfNeeded(deviceInfo:)(&type metadata for DeviceInfo, v14, &off_1F2F779D0, v0 + 22);
  v17 = v0[25];
  v18 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v17);
  v0[30] = type metadata accessor for HTTPRequestWithCustomHeaderField();
  v0[31] = &off_1F2F779D0;
  v19 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
  HTTPRequest.addingRateLimitIdentifier(userIdentifierProviding:)((v11 + 120), v17, v18, v19);
  v20 = v0[30];
  v21 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v20);
  v22 = _s10FinanceKit18RawBankConnectDataO21SupportedCapabilitiesO08filteredH0SayAEGvgZ_0();
  v0[10] = type metadata accessor for HTTPRequestWithCustomHeaderField();
  v0[11] = &off_1F2F779D0;
  v23 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  HTTPRequest.addingSupportedCapabilities(supportedCapabilities:)(v22, v20, v21, v23);
  v24 = v0[41];
  v25 = v0[38];

  __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  (*(v15 + 8))(v16, v14);

  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  sub_1B719B06C((v0 + 7), (v0 + 32));
  v26 = v0[35];
  v27 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v26);
  HTTPRequest.makeURLRequest(baseURL:)(v25 + OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL, v26, v27, v24);
  v28 = v0[41];
  v29 = v0[42];
  v30 = v0[39];
  v31 = v0[40];
  v33 = v0[37];
  v32 = v0[38];
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v31 + 32))(v29, v28, v30);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v34 = *(v32 + 32);
  v35 = sub_1B77FE7B8();
  v36 = [v34 uploadTaskWithStreamedRequest_];
  v0[43] = v36;

  v37 = swift_task_alloc();
  v0[44] = v37;
  *(v37 + 16) = v36;
  *(v37 + 24) = v33;
  v38 = swift_task_alloc();
  v0[45] = v38;
  *v38 = v0;
  v38[1] = sub_1B7799B34;
  v39 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v38, 0, 0, 0xD00000000000001ALL, 0x80000001B788DA00, sub_1B779D7A8, v37, v39);
}

uint64_t sub_1B7799B34()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1B7799D04;
  }

  else
  {
    v2 = sub_1B7799C68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7799C68()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 312);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7799D04()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

id sub_1B7799D9C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *(a3 + *(type metadata accessor for BankConnectWebServiceOfflineLabItemsRequest(0) + 24));
  v11 = *(v7 + 16);
  v11(v9, a1, v6);
  v12 = type metadata accessor for BankConnectWebServiceClient.OfflineLabSessionTaskDelegate(0);
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtCFC10FinanceKit27BankConnectWebServiceClient20uploadOfflineLabDataFzZT3forVS_43BankConnectWebServiceOfflineLabItemsRequest_T_L_29OfflineLabSessionTaskDelegate_inputStream] = v10;
  v11(&v13[OBJC_IVAR____TtCFC10FinanceKit27BankConnectWebServiceClient20uploadOfflineLabDataFzZT3forVS_43BankConnectWebServiceOfflineLabItemsRequest_T_L_29OfflineLabSessionTaskDelegate_continuation], v9, v6);
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = v10;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v7 + 8))(v9, v6);
  [a2 setDelegate_];

  return [a2 resume];
}

uint64_t BankConnectWebServiceClient.linkAccountWithPass(for:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7799F5C, 0, 0);
}

uint64_t sub_1B7799F5C()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for BankConnectWebServicePassLinkingRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServicePassLinkingRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServicePassLinkingRequest);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B779A040;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B779A040(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 80) = a3;
  *(v7 + 88) = v3;

  if (v3)
  {
    v8 = sub_1B779F1C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 16);
    sub_1B720A388(a1, a2);
    v8 = sub_1B779A178;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B779A178()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 statusCode];
    v2 = *(v0 + 80);
    if (v5 == 204)
    {

      v6 = *(v0 + 8);
      goto LABEL_7;
    }

    v11 = v5;
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    *v12 = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v8 = v7;
    v9 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v8 = v9;
    v8[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t BankConnectWebServiceClient.unlinkAccountWithPass(for:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B779A370, 0, 0);
}

uint64_t sub_1B779A370()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for BankConnectWebServicePassUnlinkRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServicePassUnlinkRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServicePassUnlinkRequest);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B779A454;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B779A454(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 80) = a3;
  *(v7 + 88) = v3;

  if (v3)
  {
    v8 = sub_1B779F1C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 16);
    sub_1B720A388(a1, a2);
    v8 = sub_1B779F1B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t BankConnectWebServiceClient.termsAndConditions(for:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B779A5B4, 0, 0);
}

uint64_t sub_1B779A5B4()
{
  v1 = v0[9];
  v2 = v0[10];
  v0[5] = &type metadata for BankConnectWebServiceTermsAndConditionsRequest;
  v0[6] = &protocol witness table for BankConnectWebServiceTermsAndConditionsRequest;
  v0[2] = v1;
  v0[3] = v2;

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1B779A690;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B779A690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  v5[15] = v3;

  if (v3)
  {
    v6 = sub_1B779A848;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B779A7B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B779A7B0()
{
  static BankConnectWebServiceTermsAndConditionsResponse.parse(data:urlResponse:)(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B779A848()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

id *BankConnectWebServiceClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 5));
  __swift_destroy_boxed_opaque_existential_1((v0 + 10));
  __swift_destroy_boxed_opaque_existential_1((v0 + 15));

  v1 = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BankConnectWebServiceClient.__deallocating_deinit()
{
  BankConnectWebServiceClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t BankConnectWebServiceClient.notificationEvents(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B779A9D0, 0, 0);
}

uint64_t sub_1B779A9D0()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceNotificationEventsRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceNotificationEventsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceNotificationEventsRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B779AAB4;

  return sub_1B77955F8((v0 + 2), 257, 0, 1);
}

uint64_t sub_1B779AAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B779ABD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B779ABD4()
{
  static RawBankConnectData.NotificationEventsResponse.parse(data:urlResponse:)(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.registerToNotificationEvents(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B779AC90, 0, 0);
}

uint64_t sub_1B779AC90()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BankConnectWebServiceRegisterToNotificationEventsRequest(0);
  v0[6] = &protocol witness table for BankConnectWebServiceRegisterToNotificationEventsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B779D7B0(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceRegisterToNotificationEventsRequest);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B779AD74;

  return sub_1B77955F8((v0 + 2), 257, 0, 1);
}

uint64_t sub_1B779AD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[14] = v3;

  if (v3)
  {
    v6 = sub_1B779F1C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B779AE94;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B779AE94()
{
  static RawBankConnectData.RegisterToNotificationEventsResponse.parse(data:urlResponse:)(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_1B720A388(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t BankConnectWebServiceClient.unregisterFromNotificationEvents(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[7] = v1;
  v2[8] = v3;
  v2[9] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1B779AF54, 0, 0);
}

uint64_t sub_1B779AF54()
{
  v2 = v0[8];
  v1 = v0[9];
  v0[5] = &type metadata for BankConnectWebServiceUnregisterFromNotificationEventsRequest;
  v0[6] = &protocol witness table for BankConnectWebServiceUnregisterFromNotificationEventsRequest;
  v0[2] = v2;
  v0[3] = v1;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B779B028;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B779B028(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 88) = a3;
  *(v7 + 96) = v3;

  if (v3)
  {
    v8 = sub_1B779B338;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 16);
    sub_1B720A388(a1, a2);
    v8 = sub_1B779B160;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B779B160()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 88);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 statusCode];
    v2 = *(v0 + 88);
    if (v5 == 200)
    {

      v6 = *(v0 + 8);
      goto LABEL_7;
    }

    v11 = v5;
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    *v12 = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v8 = v7;
    v9 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v8 = v9;
    v8[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_1B779B338()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B779B39C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1B77FFA18();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_1B77FE858();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_1B7800008();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B779B564, 0, 0);
}

uint64_t sub_1B779B564()
{
  v32 = v0;
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_networkEventRecorder);
  *(v0 + 176) = v1;
  if (v1)
  {
    NetworkEventRecorder.recordNetworkRequest(_:)(*(v0 + 168));
  }

  else
  {
    (*(*(v0 + 88) + 56))(*(v0 + 168), 1, 1, *(v0 + 80));
  }

  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = sub_1B7800038();
  *(v0 + 184) = __swift_project_value_buffer(v7, qword_1EBA45940);
  sub_1B7800018();
  sub_1B77FFFD8();
  v8 = v5 + OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_signpostRequestName;
  v9 = *(v5 + OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_signpostRequestName);
  *(v0 + 192) = v9;
  v10 = *(v8 + 16);
  *(v0 + 248) = v10;
  (*(v3 + 16))(v2, v6, v4);
  v11 = sub_1B7800018();
  v12 = sub_1B7801388();
  v13 = sub_1B7801738();
  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = v12;
  if (v10)
  {
    if (v9 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v9 & 0xFFFFF800) == 0xD800)
      {
LABEL_21:
        __break(1u);
        return MEMORY[0x1EEDC6260](v13, v14);
      }

      if (v9 >> 16 <= 0x10)
      {
        v9 = (v0 + 56);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    __break(1u);
LABEL_10:
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 104);

    (*(v16 + 8))(v15, v17);
    goto LABEL_16;
  }

LABEL_15:
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v31 = v22;
  *v21 = 136315138;
  v23 = sub_1B77FE7A8();
  v25 = v24;
  (*(v19 + 8))(v18, v20);
  v26 = sub_1B71A3EF8(v23, v25, &v31);

  *(v21 + 4) = v26;
  v27 = sub_1B77FFFE8();
  _os_signpost_emit_with_name_impl(&dword_1B7198000, v11, v30, v27, v9, "%s", v21, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v22);
  MEMORY[0x1B8CA7A40](v22, -1, -1);
  MEMORY[0x1B8CA7A40](v21, -1, -1);

LABEL_16:
  (*(*(v0 + 136) + 16))(*(v0 + 144), *(v0 + 152), *(v0 + 128));
  sub_1B7800078();
  swift_allocObject();
  *(v0 + 200) = sub_1B7800068();
  v28 = swift_task_alloc();
  *(v0 + 208) = v28;
  *v28 = v0;
  v28[1] = sub_1B779B8C8;
  v13 = *(v0 + 64);
  v14 = 0;

  return MEMORY[0x1EEDC6260](v13, v14);
}

uint64_t sub_1B779B8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = a3;
  v5[30] = v3;

  if (v3)
  {
    v6 = sub_1B779BBFC;
  }

  else
  {
    v6 = sub_1B779B9E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B779B9E0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1B7205588(*(v0 + 168), v1, &unk_1EB993A10);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1B7205418(*(v0 + 160), &unk_1EB993A10);
  }

  else
  {
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 160), *(v0 + 80));
    objc_opt_self();
    if (swift_dynamicCastObjCClass() && *(v0 + 176))
    {
      v5 = *(v0 + 88);
      v4 = *(v0 + 96);
      v6 = *(v0 + 80);
      v7 = *(v0 + 232);
      NetworkEventRecorder.recordNetworkResponse(response:body:traceID:)();

      (*(v5 + 8))(v4, v6);
    }

    else
    {
      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    }
  }

  v8 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  sub_1B779BF90(*(v0 + 72));

  (*(v11 + 8))(v9, v10);
  sub_1B7205418(v8, &unk_1EB993A10);

  v12 = *(v0 + 8);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v15 = *(v0 + 216);

  return v12(v15, v13, v14);
}

uint64_t sub_1B779BBFC()
{
  v29 = v0;
  v2 = *(v0 + 240);
  v3 = sub_1B7800018();
  v4 = sub_1B7801398();
  if ((sub_1B7801738() & 1) == 0)
  {
    v7 = *(v0 + 240);

    goto LABEL_13;
  }

  if (*(v0 + 248))
  {
    v6 = *(v0 + 192);
    if (!HIDWORD(v6))
    {
      v8 = v6 & 0xFFFFF800;
      if ((*(v0 + 192) & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v6 >> 16 <= 0x10)
      {
        v1 = (v0 + 40);
        if (v6 < 0x80)
        {
          v8 = 1;
LABEL_11:
          v9 = *(v0 + 240);
          *(v0 + 40) = (v6 + v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6 + v8) & 0x18)));

          goto LABEL_12;
        }

LABEL_19:
        v8 = (v6 & 0x3F) << 8;
        if (v6 <= 0x7FF)
        {
          v25 = v6 >> 6;
          v26 = 33217;
LABEL_21:
          LODWORD(v6) = v25 + v26;
          goto LABEL_11;
        }

LABEL_23:
        v8 = (v8 | (v6 >> 6) & 0x3F) << 8;
        if (v6 >= 0x10000)
        {
          v27 = v8 | (v6 >> 12) & 0x3F;
          v25 = v6 >> 18;
          v8 = v27 << 8;
          v26 = -2122219023;
        }

        else
        {
          v25 = v6 >> 12;
          v26 = 8487393;
        }

        goto LABEL_21;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v0 + 192);

  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v1 = *(v0 + 192);
LABEL_12:
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v28 = v11;
  *v10 = 136315138;
  swift_getErrorValue();
  v12 = sub_1B7802228();
  v14 = sub_1B71A3EF8(v12, v13, &v28);

  *(v10 + 4) = v14;
  v15 = sub_1B77FFFE8();
  _os_signpost_emit_with_name_impl(&dword_1B7198000, v3, v4, v15, v1, "%s", v10, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v11);
  MEMORY[0x1B8CA7A40](v11, -1, -1);
  MEMORY[0x1B8CA7A40](v10, -1, -1);

LABEL_13:
  v16 = *(v0 + 240);
  v17 = *(v0 + 168);
  v18 = *(v0 + 152);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = *(v0 + 72);
  type metadata accessor for FinanceNetworkError();
  sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
  swift_allocError();
  *v22 = v16;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1B779BF90(v21);

  (*(v19 + 8))(v18, v20);
  sub_1B7205418(v17, &unk_1EB993A10);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1B779BF90(uint64_t a1)
{
  v2 = sub_1B7800048();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1B7800008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B7800038();
  __swift_project_value_buffer(v9, qword_1EBA45940);
  v10 = *(a1 + OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_signpostRequestName);
  v11 = *(a1 + OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_signpostRequestName + 16);
  v12 = sub_1B7800018();
  sub_1B7800058();
  v19 = sub_1B7801378();
  result = sub_1B7801738();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v11 & 1) == 0)
  {
    if (v10)
    {
LABEL_11:

      sub_1B7800088();

      v14 = v20;
      if ((*(v20 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v4, v2);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1B77FFFE8();
      _os_signpost_emit_with_name_impl(&dword_1B7198000, v12, v19, v17, v10, v15, v16, 2u);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
LABEL_15:

      return (*(v6 + 8))(v8, v5);
    }

    __break(1u);
  }

  if (v10 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v10 & 0xFFFFF800) != 0xD800)
  {
    if (v10 >> 16 <= 0x10)
    {
      v10 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1B779C27C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[2];
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(v13 + v12, v8, v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  aBlock[4] = sub_1B779F110;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B72A58C8;
  aBlock[3] = &block_descriptor_28;
  v14 = _Block_copy(aBlock);
  v15 = v10;
  v16 = v11;

  [v9 addOperationWithBlock_];
  _Block_release(v14);
}

uint64_t sub_1B779C474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1B779C4DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  if (*(a1 + OBJC_IVAR____TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate_sessionDidBecomeInvalid) == 1)
  {
    return sub_1B7800D08();
  }

  (*(v7 + 16))(v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  v13 = (a1 + OBJC_IVAR____TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate_sessionDidBecomeInvalidHandler);
  v14 = *(a1 + OBJC_IVAR____TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate_sessionDidBecomeInvalidHandler);
  *v13 = sub_1B743E68C;
  v13[1] = v12;
  sub_1B71F4844(v14);
  return [a3 invalidateAndCancel];
}

uint64_t BankConnectErrorWithConsent.errorDescription.getter()
{
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000028, 0x80000001B788DA20);
  MEMORY[0x1B8CA4D30](*v0, v0[1]);
  MEMORY[0x1B8CA4D30](0xD000000000000010, 0x80000001B788DA50);
  type metadata accessor for BankConnectErrorWithConsent(0);
  type metadata accessor for FinanceNetworkError();
  sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
  v1 = sub_1B7802228();
  MEMORY[0x1B8CA4D30](v1);

  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B779CD8C(int a1, int a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = _Block_copy(aBlock);
  v6 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B779CE08, 0, 0);
}

uint64_t sub_1B779CE08()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *&v2[OBJC_IVAR____TtCFC10FinanceKit27BankConnectWebServiceClient20uploadOfflineLabDataFzZT3forVS_43BankConnectWebServiceOfflineLabItemsRequest_T_L_29OfflineLabSessionTaskDelegate_inputStream];

  (v1)[2](v1, v3);
  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B779CF5C()
{
  type metadata accessor for BankConnectWebServiceClient(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v55 = [v1 mainBundle];
  v3 = [v55 infoDictionary];
  v4 = MEMORY[0x1E695E500];
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = v3;
  v6 = sub_1B7800728();

  result = *v4;
  if (!*v4)
  {
    __break(1u);
    goto LABEL_47;
  }

  v8 = sub_1B7800868();
  if (!*(v6 + 16))
  {

    goto LABEL_7;
  }

  v10 = sub_1B724548C(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    memset(v67, 0, 32);
    goto LABEL_9;
  }

  sub_1B719BDE4(*(v6 + 56) + 32 * v10, v67);

LABEL_9:
  v13 = [v2 infoDictionary];
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13;
  v15 = sub_1B7800728();

  result = *v4;
  if (*v4)
  {
    v16 = sub_1B7800868();
    if (*(v15 + 16))
    {
      v18 = sub_1B724548C(v16, v17);
      v20 = v19;

      if (v20)
      {
        sub_1B719BDE4(*(v15 + 56) + 32 * v18, v66);

        goto LABEL_17;
      }
    }

    else
    {
    }

LABEL_16:
    memset(v66, 0, sizeof(v66));
LABEL_17:
    v21 = FKProductType();
    if (v21)
    {
      v22 = v21;
      *&v54 = sub_1B7800868();
      *(&v54 + 1) = v23;
    }

    else
    {
      *&v54 = 7104878;
      *(&v54 + 1) = 0xE300000000000000;
    }

    v24 = FKProductName();
    if (v24)
    {
      v25 = v24;
      *&v53 = sub_1B7800868();
      *(&v53 + 1) = v26;
    }

    else
    {
      *&v53 = 7104878;
      *(&v53 + 1) = 0xE300000000000000;
    }

    v27 = FKProductVersion();
    if (v27)
    {
      v28 = v27;
      *&v52 = sub_1B7800868();
      *(&v52 + 1) = v29;
    }

    else
    {
      *&v52 = 7104878;
      *(&v52 + 1) = 0xE300000000000000;
    }

    v30 = FKBuildVersion();
    if (v30)
    {
      v31 = v30;
      v32 = sub_1B7800868();
      v50 = v33;
    }

    else
    {
      v50 = 0xE300000000000000;
      v32 = 7104878;
    }

    v34 = [v2 bundleIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = sub_1B7800868();
      v38 = v37;
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7104878;
    }

    sub_1B7205588(v66, &v58, &qword_1EB98FCB0);
    if (*(&v59 + 1))
    {
      v39 = v2;
      if (swift_dynamicCast())
      {
        v40 = *(&v56[0] + 1);
        v41 = *&v56[0];
        goto LABEL_37;
      }
    }

    else
    {
      v39 = v2;
      sub_1B7205418(&v58, &qword_1EB98FCB0);
    }

    v40 = 0xE300000000000000;
    v41 = 7104878;
LABEL_37:
    v42 = [v55 bundleIdentifier];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1B7800868();
      v46 = v45;
    }

    else
    {
      v46 = 0xE300000000000000;
      v44 = 7104878;
    }

    sub_1B7205588(v67, &v58, &qword_1EB98FCB0);
    if (*(&v59 + 1))
    {
      if (swift_dynamicCast())
      {
        v47 = *(&v56[0] + 1);
        v48 = *&v56[0];
LABEL_45:
        v58 = v54;
        v59 = v53;
        v60 = v52;
        *&v61 = v32;
        *(&v61 + 1) = v51;
        *&v62 = v36;
        *(&v62 + 1) = v38;
        *&v63 = v41;
        *(&v63 + 1) = v40;
        *&v64 = v44;
        *(&v64 + 1) = v46;
        *&v65 = v48;
        *(&v65 + 1) = v47;
        v56[4] = v62;
        v56[5] = v63;
        v56[6] = v64;
        v56[7] = v65;
        v56[0] = v54;
        v56[1] = v53;
        v56[2] = v52;
        v56[3] = v61;
        static HTTPHeaderField.appleClientInfo(_:)(v56, v57);

        sub_1B7205418(v66, &qword_1EB98FCB0);
        sub_1B7205418(v67, &qword_1EB98FCB0);
        sub_1B743E754(&v58);
        v49 = v57[2];

        return v49;
      }
    }

    else
    {
      sub_1B7205418(&v58, &qword_1EB98FCB0);
    }

    v47 = 0xE300000000000000;
    v48 = 7104878;
    goto LABEL_45;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1B779D45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_signpostRequestName;
  *v12 = "BankConnectWebServiceRequest";
  *(v12 + 8) = 28;
  *(v12 + 16) = 2;
  v13 = OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_baseURL;
  v14 = sub_1B77FF4F8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6 + v13, a1, v14);
  *(v6 + 16) = [objc_allocWithZone(_s10FinanceKit15SessionDelegateCMa_1()) init];
  sub_1B719B06C(a3, v6 + 40);
  sub_1B719B06C(a4, v6 + 80);
  sub_1B719B06C(a5, v6 + 120);
  *(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectWebServiceClient_networkEventRecorder) = a6;
  v16 = objc_allocWithZone(MEMORY[0x1E696ADC8]);

  *(v6 + 24) = [v16 init];
  *(v6 + 160) = sub_1B779CF5C();
  *(v6 + 168) = v17;
  v18 = *(v6 + 24);
  v19 = sub_1B7800838();
  [v18 setName_];

  [*(v6 + 24) setMaxConcurrentOperationCount_];
  v20 = [objc_opt_self() sessionWithConfiguration:a2 delegate:*(v6 + 16) delegateQueue:*(v6 + 24)];
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v15 + 8))(a1, v14);
  *(v6 + 32) = v20;
  return v6;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B8CA7A40);
  }

  return result;
}

uint64_t sub_1B779D7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B779D818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B779D8F0()
{
  result = sub_1B77FF4F8();
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

uint64_t sub_1B779D9EC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B779DA78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1B779DC54(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1B779DF10()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BankConnectResponseHeaders();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B779DF98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1B77FF988() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v10 | 7;
  v15 = (v10 | 7) + *(v6 + 64);
  v16 = v10 + 16;
  if (v13 < a2)
  {
    v17 = ((((((v11 + ((v11 + v10 + (v16 & ~v10)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) | 3) + (v15 & ~v14);
    v18 = (((((((v11 + ((v11 + v10 + (v16 & ~v10)) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 17) | 3) + (v15 & ~v14)) & 0xFFFFFFFB;
    v19 = v18 == 3 ? ((a2 - v13 + 0xFFFFFF) >> 24) + 1 : 2;
    v20 = v19 < 0x100 ? 1 : 2;
    v21 = v19 >= 2 ? v20 : 0;
    if (v21)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (v22)
        {
LABEL_21:
          v23 = (v22 << 24) - 0x1000000;
          if (v18 == 3)
          {
            v28 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = 0;
            v28 = *a1;
          }

          return v13 + (v28 | v23) + 1;
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_21;
        }
      }
    }
  }

  if (v7 >= v12)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, v5);
  }

  else if ((v9 & 0x80000000) != 0)
  {
    v27 = *(v8 + 48);

    return v27((v16 + ((a1 + v15) & ~v14)) & ~v10);
  }

  else
  {
    v25 = *(((a1 + v15) & ~v14) + 8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void sub_1B779E21C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1B77FF988() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = (v12 | 7) + *(v8 + 64);
  v16 = (((((*(v10 + 64) + ((*(v10 + 64) + v12 + ((v12 + 16) & ~v12)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) | 3;
  v17 = v16 + (v15 & ~(v12 | 7));
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v17 == 3)
    {
      v18 = ((a3 - v14 + 0xFFFFFF) >> 24) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v14 >= a2)
    {
LABEL_18:
      if (v20)
      {
        if (v20 != 2)
        {
          a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 >= v13)
      {
        v25 = *(v27 + 56);

        v25(a1, a2, v9, v7);
      }

      else
      {
        v23 = (&a1[v15] & ~(v12 | 7));
        if (v13 >= a2)
        {
          if ((v11 & 0x80000000) != 0)
          {
            v26 = *(v10 + 56);

            v26(&v23[v12 + 16] & ~v12, a2);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v23 = a2 & 0x7FFFFFFF;
            *(v23 + 1) = 0;
          }

          else
          {
            *(v23 + 1) = (a2 - 1);
          }
        }

        else
        {
          v24 = ~v13 + a2;
          bzero(v23, v16);
          if (v16 == 3)
          {
            *v23 = v24;
            v23[2] = BYTE2(v24);
          }

          else
          {
            *v23 = v24;
          }
        }
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, v16 + (v15 & ~(v12 | 7)));
  if (v17 == 3)
  {
    v22 = HIBYTE(v21) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 == 3)
  {
    *a1 = v21;
    a1[2] = BYTE2(v21);
    if (!v20)
    {
      return;
    }
  }

  else
  {
    *a1 = v21;
    if (!v20)
    {
      return;
    }
  }

  if (v20 == 2)
  {
    *&a1[v17] = v22;
  }

  else
  {
    a1[v17] = v22;
  }
}

uint64_t sub_1B779E54C()
{
  result = type metadata accessor for RawBankConnectData.Consent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FinanceNetworkError();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B779E5F8()
{
  sub_1B779E698();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B779E698()
{
  if (!qword_1EB99E0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110);
    v0 = sub_1B7800D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB99E0A8);
    }
  }
}

uint64_t sub_1B779E710()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B7201BB0;

  return sub_1B779CD8C(v2, v3, v5, v4);
}

uint64_t sub_1B779E7D0(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = a1;
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EDAF65B0);
    v6 = a1;
    v7 = sub_1B7800098();
    v8 = sub_1B78011D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B7198000, v7, v8, "BankConnect web service client session did become invalid with error: %@", v9, 0xCu);
      sub_1B7205418(v10, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
      MEMORY[0x1B8CA7A40](v9, -1, -1);

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v13 = sub_1B78000B8();
    __swift_project_value_buffer(v13, qword_1EDAF65B0);
    v7 = sub_1B7800098();
    v14 = sub_1B78011B8();
    if (os_log_type_enabled(v7, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B7198000, v7, v14, "BankConnect web service client session did become invalid", v15, 2u);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
    }
  }

LABEL_12:
  *(v2 + OBJC_IVAR____TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate_sessionDidBecomeInvalid) = 1;
  v16 = (v2 + OBJC_IVAR____TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate_sessionDidBecomeInvalidHandler);
  v17 = *(v2 + OBJC_IVAR____TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate_sessionDidBecomeInvalidHandler);
  if (v17)
  {

    v17(v18);
    sub_1B71F4844(v17);
    v19 = *v16;
  }

  else
  {
    v19 = 0;
  }

  *v16 = 0;
  v16[1] = 0;

  return sub_1B71F4844(v19);
}

uint64_t sub_1B779EA5C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99E0B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  if (a2)
  {
    (*(v12 + 16))(v14, v2 + OBJC_IVAR____TtCFC10FinanceKit27BankConnectWebServiceClient20uploadOfflineLabDataFzZT3forVS_43BankConnectWebServiceOfflineLabItemsRequest_T_L_29OfflineLabSessionTaskDelegate_continuation, v11);
    v50 = a2;
    v15 = a2;
LABEL_22:
    sub_1B7800CF8();
    return (*(v12 + 8))(v14, v11);
  }

  v49 = v2;
  v16 = [a1 response];
  if (!v16 || (objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) == 0))
  {
    v47 = v10;
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    v20 = swift_allocError();
    v22 = v21;
    v23 = sub_1B72806BC();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99E0C0);
    *v22 = v23;
    v22[1] = v24;
    swift_storeEnumTagMultiPayload();
    v48 = v20;
    swift_willThrow();
LABEL_9:

    v28 = [a1 currentRequest];
    v29 = v47;
    if (v28)
    {
      v30 = v28;
      sub_1B77FE7F8();

      v31 = sub_1B77FE858();
      (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
    }

    else
    {
      v31 = sub_1B77FE858();
      (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
    }

    v32 = v49;
    sub_1B779F0A0(v8, v29);
    sub_1B77FE858();
    v33 = *(v31 - 8);
    if ((*(v33 + 48))(v29, 1, v31) == 1)
    {
      sub_1B7205418(v29, &unk_1EB99E0B0);
    }

    else
    {
      v34 = v29;
      v35 = v32;
      v36 = sub_1B77FE828();
      v38 = v37;
      (*(v33 + 8))(v34, v31);
      if (v38)
      {
        if (qword_1EB98EAA0 != -1)
        {
          swift_once();
        }

        v39 = sub_1B78000B8();
        __swift_project_value_buffer(v39, qword_1EB994948);

        v40 = sub_1B7800098();
        v41 = sub_1B78011D8();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v50 = v43;
          *v42 = 136315138;
          v44 = sub_1B71A3EF8(v36, v38, &v50);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_1B7198000, v40, v41, "Lab upload task received error. Debug using request id: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1B8CA7A40](v43, -1, -1);
          MEMORY[0x1B8CA7A40](v42, -1, -1);
        }

        else
        {
        }

        v32 = v35;
      }
    }

    (*(v12 + 16))(v14, v32 + OBJC_IVAR____TtCFC10FinanceKit27BankConnectWebServiceClient20uploadOfflineLabDataFzZT3forVS_43BankConnectWebServiceOfflineLabItemsRequest_T_L_29OfflineLabSessionTaskDelegate_continuation, v11);
    v50 = v48;
    goto LABEL_22;
  }

  v18 = v17;
  v16 = v16;
  v19 = [v18 statusCode];
  if (v19 != 200)
  {
    v25 = v19;
    v47 = v10;
    type metadata accessor for FinanceNetworkError();
    sub_1B7793380(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    v26 = swift_allocError();
    *v27 = v25;
    swift_storeEnumTagMultiPayload();
    v48 = v26;
    swift_willThrow();

    goto LABEL_9;
  }

  (*(v12 + 16))(v14, v49 + OBJC_IVAR____TtCFC10FinanceKit27BankConnectWebServiceClient20uploadOfflineLabDataFzZT3forVS_43BankConnectWebServiceOfflineLabItemsRequest_T_L_29OfflineLabSessionTaskDelegate_continuation, v11);
  sub_1B7800D08();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1B779F0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99E0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B779F110()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B779C4DC(v3, v0 + v2, v4);
}

uint64_t RawBankConnectData.TermsAndConditionsRequestBody.init(ids:languageIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t RawBankConnectData.TermsAndConditionsResponse.termsAndConditions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B779F258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001B787A5B0 == a2)
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

uint64_t sub_1B779F2EC(uint64_t a1)
{
  v2 = sub_1B779F510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B779F328(uint64_t a1)
{
  v2 = sub_1B779F510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TermsAndConditionsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E0E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B779F510();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E0F8);
  sub_1B779F768(&qword_1EB99E100, &qword_1EB9956E8);
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B779F510()
{
  result = qword_1EB99E0F0;
  if (!qword_1EB99E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E0F0);
  }

  return result;
}

uint64_t type metadata accessor for RawBankConnectData.TermsAndConditions()
{
  result = qword_1EB99E150;
  if (!qword_1EB99E150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawBankConnectData.TermsAndConditionsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B779F510();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E0F8);
    sub_1B779F768(&qword_1EB99E110, &qword_1EB995710);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B779F768(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99E0F8);
    sub_1B77A1A34(a2, type metadata accessor for RawBankConnectData.TermsAndConditions);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RawBankConnectData.TermsAndConditions.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.TermsAndConditions.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.TermsAndConditions.link.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.TermsAndConditions() + 20);

  return sub_1B7228664(v3, a1);
}

uint64_t RawBankConnectData.TermsAndConditions.link.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.TermsAndConditions() + 20);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawBankConnectData.TermsAndConditions.publishedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.TermsAndConditions() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.TermsAndConditions.publishedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.TermsAndConditions() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.TermsAndConditions.inEffectOn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.TermsAndConditions() + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.TermsAndConditions.inEffectOn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.TermsAndConditions() + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.TermsAndConditions.init(id:link:publishedAt:inEffectOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  v13 = v12[5];
  v14 = sub_1B77FF4F8();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = a1;
  *(a6 + 1) = a2;
  sub_1B727CBBC(a3, &a6[v13]);
  v15 = v12[6];
  v16 = sub_1B77FF988();
  v19 = *(*(v16 - 8) + 32);
  (v19)((v16 - 8), &a6[v15], a4, v16);
  v17 = &a6[v12[7]];

  return v19(v17, a5, v16);
}

uint64_t sub_1B779FD48()
{
  v1 = 25705;
  v2 = 0x656873696C627570;
  if (*v0 != 2)
  {
    v2 = 0x7463656666456E69;
  }

  if (*v0)
  {
    v1 = 1802398060;
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

uint64_t sub_1B779FDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B77A18CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B779FDE4(uint64_t a1)
{
  v2 = sub_1B77A12E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B779FE20(uint64_t a1)
{
  v2 = sub_1B77A12E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TermsAndConditions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E118);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77A12E8();
  sub_1B78023F8();
  v12 = 0;
  sub_1B7801F78();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.TermsAndConditions();
    v11 = 1;
    sub_1B77FF4F8();
    sub_1B77A1A34(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801F38();
    v10 = 2;
    sub_1B77FF988();
    sub_1B77A1A34(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v9 = 3;
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.TermsAndConditions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v36 = sub_1B77FF988();
  v34 = *(v36 - 8);
  v3 = MEMORY[0x1EEE9AC00](v36);
  v32 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v33 = v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E128);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 20);
  v16 = sub_1B77FF4F8();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77A12E8();
  v39 = v10;
  v17 = v40;
  sub_1B78023C8();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7205418(v14 + v15, &unk_1EB994C70);
  }

  else
  {
    v29 = v11;
    v30 = v15;
    v40 = v14;
    v18 = v35;
    v19 = v36;
    v44 = 0;
    v20 = v38;
    v21 = sub_1B7801DF8();
    v22 = v40;
    *v40 = v21;
    *(v22 + 8) = v23;
    v28[1] = v23;
    v43 = 1;
    sub_1B77A1A34(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    sub_1B7801DB8();
    sub_1B727CBBC(v18, v22 + v30);
    v42 = 2;
    sub_1B77A1A34(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v24 = v33;
    sub_1B7801E48();
    v25 = v24;
    v26 = *(v34 + 32);
    v26(v22 + *(v29 + 24), v25, v19);
    v41 = 3;
    sub_1B7801E48();
    (*(v37 + 8))(v39, v20);
    v26(v22 + *(v29 + 28), v32, v19);
    sub_1B77A133C(v22, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B77A13A0(v22);
  }
}

uint64_t RawBankConnectData.TermsAndConditionsRequestBody.ids.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawBankConnectData.TermsAndConditionsRequestBody.languageIds.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static RawBankConnectData.TermsAndConditionsRequestBody.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B731D168(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B731D168(v2, v3);
}

uint64_t sub_1B77A0798()
{
  if (*v0)
  {
    return 0x65676175676E616CLL;
  }

  else
  {
    return 7562345;
  }
}

uint64_t sub_1B77A07D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7562345 && a2 == 0xE300000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEB00000000736449)
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

uint64_t sub_1B77A08B4(uint64_t a1)
{
  v2 = sub_1B77A13FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77A08F0(uint64_t a1)
{
  v2 = sub_1B77A13FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TermsAndConditionsRequestBody.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E130);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77A13FC();

  sub_1B78023F8();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B721523C(&qword_1EB98F960);
  sub_1B7801FC8();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.TermsAndConditionsRequestBody.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1B8CA6620](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {

      sub_1B7800798();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  result = MEMORY[0x1B8CA6620](*(v2 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = v2 + 40;
    do
    {

      sub_1B7800798();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t RawBankConnectData.TermsAndConditionsRequestBody.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.TermsAndConditionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.TermsAndConditionsRequestBody.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E140);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77A13FC();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  v14 = 0;
  sub_1B721523C(&qword_1EDAF64A8);
  sub_1B7801E48();
  v9 = v15;
  v14 = 1;
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B77A0E94(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B731D168(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B731D168(v2, v3);
}

uint64_t sub_1B77A0EF0()
{
  sub_1B78022F8();
  RawBankConnectData.TermsAndConditionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B77A0F40()
{
  sub_1B78022F8();
  RawBankConnectData.TermsAndConditionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit18RawBankConnectDataO18TermsAndConditionsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_13;
  }

  v22 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_1B7228664(a1 + v14, v13);
  sub_1B7228664(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B7205418(v13, &unk_1EB994C70);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1B7228664(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_1B7205418(v13, &qword_1EB991C30);
LABEL_13:
    v19 = 0;
    return v19 & 1;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1B77A1A34(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v17 = sub_1B7800828();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_1B7205418(v13, &unk_1EB994C70);
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((sub_1B77FF918() & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = sub_1B77FF918();
  return v19 & 1;
}

unint64_t sub_1B77A12E8()
{
  result = qword_1EB99E120;
  if (!qword_1EB99E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E120);
  }

  return result;
}

uint64_t sub_1B77A133C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B77A13A0(uint64_t a1)
{
  v2 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B77A13FC()
{
  result = qword_1EB99E138;
  if (!qword_1EB99E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E138);
  }

  return result;
}

unint64_t sub_1B77A1454()
{
  result = qword_1EB99E148;
  if (!qword_1EB99E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E148);
  }

  return result;
}

void sub_1B77A14E0()
{
  sub_1B7325908();
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B77A15B8()
{
  result = qword_1EB99E160;
  if (!qword_1EB99E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E160);
  }

  return result;
}

unint64_t sub_1B77A1610()
{
  result = qword_1EB99E168;
  if (!qword_1EB99E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E168);
  }

  return result;
}

unint64_t sub_1B77A1668()
{
  result = qword_1EB99E170;
  if (!qword_1EB99E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E170);
  }

  return result;
}

unint64_t sub_1B77A16C0()
{
  result = qword_1EB99E178;
  if (!qword_1EB99E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E178);
  }

  return result;
}

unint64_t sub_1B77A1718()
{
  result = qword_1EB99E180;
  if (!qword_1EB99E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E180);
  }

  return result;
}

unint64_t sub_1B77A1770()
{
  result = qword_1EB99E188;
  if (!qword_1EB99E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E188);
  }

  return result;
}

unint64_t sub_1B77A17C8()
{
  result = qword_1EB99E190;
  if (!qword_1EB99E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E190);
  }

  return result;
}

unint64_t sub_1B77A1820()
{
  result = qword_1EB99E198;
  if (!qword_1EB99E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E198);
  }

  return result;
}

unint64_t sub_1B77A1878()
{
  result = qword_1EB99E1A0;
  if (!qword_1EB99E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E1A0);
  }

  return result;
}

uint64_t sub_1B77A18CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEB00000000744164 || (sub_1B78020F8() & 1) != 0)
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

uint64_t sub_1B77A1A34(unint64_t *a1, void (*a2)(uint64_t))
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

void *ManagedExtractedOrder.searchableItemAttributeSet(configuration:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E1A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v97 = &v90 - v2;
  v3 = sub_1B77FF988();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v96 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v100 = &v90 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v90 - v8;
  v98 = sub_1B77FFCF8();
  v94 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98);
  v92 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B77FFC88();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v99 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v90 - v17;
  v18 = sub_1B77FF4F8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(MEMORY[0x1E6964E90]);
  v23 = sub_1B7800838();
  v24 = v22;
  v25 = v0;
  v26 = [v24 initWithItemContentType_];

  v27 = [v0 objectID];
  v28 = [v27 URIRepresentation];

  sub_1B77FF478();
  sub_1B77FF3B8();
  v29 = v21;
  v30 = v26;
  (*(v19 + 8))(v29, v18);
  v31 = sub_1B7800838();

  [v26 setIdentifier_];

  sub_1B77A2628();
  v32 = sub_1B7800838();

  [v26 setDisplayName_];

  v33 = [v25 orderContent];
  v34 = [v33 merchantDisplayName];

  v35 = sub_1B7800868();
  v37 = v36;

  v38 = [v26 displayName];
  if (v38 && (v39 = v38, v40 = sub_1B7800868(), v42 = v41, v39, *&v108[0] = v40, *(&v108[0] + 1) = v42, *&v104 = v35, *(&v104 + 1) = v37, sub_1B7205210(), LOBYTE(v39) = sub_1B7801828(), , (v39 & 1) == 0))
  {
    v43 = sub_1B723E180(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1B723E180((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[16 * v45];
    *(v46 + 4) = v35;
    *(v46 + 5) = v37;
  }

  else
  {

    v43 = MEMORY[0x1E69E7CC0];
  }

  v47 = v103;
  *&v108[0] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B723E0F4();
  sub_1B78007C8();

  v48 = sub_1B7800838();

  [v30 setContentDescription_];

  v49 = [v25 merchantEmailAddress];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1B7800868();
    v53 = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1B7807CD0;
    *(v54 + 32) = v51;
    *(v54 + 40) = v53;
    v55 = sub_1B7800C18();

    [v30 setEmailAddresses_];
  }

  v56 = [v25 orderContent];
  ManagedExtractedOrderContent.orderDate.getter(v108);

  if (v109 <= 0xFDu)
  {
    v104 = v108[0];
    v105 = v108[1];
    v106 = v108[2];
    v107 = v109;
    v58 = v90;
    sub_1B77FFC58();
    v59 = v92;
    sub_1B77FFCE8();
    TrackedOrder.OrderDate.convertToDate(calendar:timeZone:)(v58, v59, v47);
    (*(v94 + 8))(v59, v98);
    (*(v91 + 8))(v58, v93);
    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v60 = v25;
  v61 = v101;
  v62 = v102;
  (*(v101 + 56))(v47, v57, 1, v102);
  v63 = v47;
  v64 = v61;
  sub_1B7280900(v63, v16);
  v98 = *(v61 + 48);
  if (v98(v16, 1, v62) == 1)
  {
    sub_1B7205418(v16, &qword_1EB98EBD0);
  }

  else
  {
    v65 = v95;
    (*(v61 + 32))(v95, v16, v62);
    v66 = sub_1B77FF8B8();
    [v30 setContentCreationDate_];

    (*(v64 + 8))(v65, v62);
  }

  v67 = [v60 orderContent];
  v68 = [v67 orderUpdateDate];

  v69 = v100;
  sub_1B77FF928();

  v70 = sub_1B77FF8B8();
  v95 = *(v64 + 8);
  (v95)(v69, v62);
  v102 = v30;
  [v30 setContentModificationDate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3F8);
  v71 = v60;
  v72 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1B7807CD0;
  v74 = [v71 orderContent];
  v75 = [v74 orderUpdateDate];

  sub_1B77FF928();
  v76 = *(v64 + 32);
  v76(v73 + v72, v69, v62);
  v77 = v99;
  sub_1B7280900(v103, v99);
  if (v98(v77, 1, v62) == 1)
  {
    sub_1B7205418(v77, &qword_1EB98EBD0);
  }

  else
  {
    v78 = v96;
    v76(v96, v77, v62);
    v79 = v97;
    (*(v64 + 16))(v97, v78, v62);
    *&v108[0] = v73;
    v80 = *(v73 + 16);
    if (v80 >= *(v73 + 24) >> 1)
    {
      *&v108[0] = sub_1B723F170(1uLL, v80 + 1, 1, v73);
    }

    sub_1B77A3094(0, 0, 1, v79);
    (v95)(v78, v62);
  }

  v81 = v102;
  v82 = sub_1B7800C18();

  [v81 setImportantDates_];

  sub_1B77A2798();
  v83 = sub_1B7800838();

  [v81 setTextContent_];

  v84 = sub_1B77A2D64();
  if (v85 >> 60 == 15)
  {
    v86 = 0;
  }

  else
  {
    v87 = v84;
    v88 = v85;
    v86 = sub_1B77FF598();
    sub_1B72380B8(v87, v88);
  }

  [v81 setThumbnailData_];

  sub_1B7205418(v103, &qword_1EB98EBD0);
  return v81;
}

uint64_t sub_1B77A2628()
{
  v1 = v0;
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7808C50;
  v4 = [v1 orderContent];
  v5 = [v4 merchantDisplayName];

  v6 = sub_1B7800868();
  v8 = v7;

  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  v9 = [v1 orderContent];
  v10 = [v9 orderNumber];

  v11 = sub_1B7800868();
  v13 = v12;

  *(v3 + 48) = v11;
  *(v3 + 56) = v13;
  v14 = sub_1B7800C18();

  v15 = [v2 localizedStringByJoiningStrings_];

  v16 = sub_1B7800868();
  return v16;
}

uint64_t sub_1B77A2798()
{
  v1 = v0;
  if (qword_1EDAF93A8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v2 = qword_1EDAF93B0;
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_1B7800868();
  v9 = v8;

  v10 = sub_1B723E180(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1B723E180((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = v7;
  *(v13 + 5) = v9;
  v14 = sub_1B7800838();
  v15 = sub_1B7800838();
  v16 = sub_1B7800838();
  v17 = [v2 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_1B7800868();
  v20 = v19;

  v22 = *(v10 + 2);
  v21 = *(v10 + 3);
  if (v22 >= v21 >> 1)
  {
    v10 = sub_1B723E180((v21 > 1), v22 + 1, 1, v10);
  }

  *(v10 + 2) = v22 + 1;
  v23 = &v10[16 * v22];
  *(v23 + 4) = v18;
  *(v23 + 5) = v20;
  v24 = [v1 orderContent];
  v25 = [v24 orderNumber];

  v26 = sub_1B7800868();
  v28 = v27;

  v30 = *(v10 + 2);
  v29 = *(v10 + 3);
  if (v30 >= v29 >> 1)
  {
    v10 = sub_1B723E180((v29 > 1), v30 + 1, 1, v10);
  }

  *(v10 + 2) = v30 + 1;
  v31 = &v10[16 * v30];
  *(v31 + 4) = v26;
  *(v31 + 5) = v28;
  v32 = [v1 orderContent];
  v33 = ManagedExtractedOrderContent.shippingFulfillments.getter();

  if (v33 >> 62)
  {
    v34 = sub_1B7801958();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v34 >= 1)
  {
    v35 = sub_1B7800838();
    v36 = sub_1B7800838();
    v37 = sub_1B7800838();
    v38 = [v2 localizedStringForKey:v35 value:v36 table:v37];

    v39 = sub_1B7800868();
    v41 = v40;

    v43 = *(v10 + 2);
    v42 = *(v10 + 3);
    if (v43 >= v42 >> 1)
    {
      v10 = sub_1B723E180((v42 > 1), v43 + 1, 1, v10);
    }

    *(v10 + 2) = v43 + 1;
    v44 = &v10[16 * v43];
    *(v44 + 4) = v39;
    *(v44 + 5) = v41;
    v45 = [v1 orderContent];
    v1 = ManagedExtractedOrderContent.shippingFulfillments.getter();

    if (v1 >> 62)
    {
      v46 = sub_1B7801958();
      if (v46)
      {
LABEL_15:
        v47 = 0;
        v48 = MEMORY[0x1E69E7CC0];
        do
        {
          v49 = v47;
          while (1)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v50 = MEMORY[0x1B8CA5DC0](v49, v1);
              v47 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v49 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v50 = *(v1 + 8 * v49 + 32);
              v47 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            v51 = v50;
            v52 = [v51 carrierName];
            if (v52)
            {
              break;
            }

            ++v49;
            if (v47 == v46)
            {
              goto LABEL_38;
            }
          }

          v53 = v52;
          v54 = sub_1B7800868();
          v61 = v55;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1B723E180(0, *(v48 + 2) + 1, 1, v48);
          }

          v57 = *(v48 + 2);
          v56 = *(v48 + 3);
          if (v57 >= v56 >> 1)
          {
            v48 = sub_1B723E180((v56 > 1), v57 + 1, 1, v48);
          }

          *(v48 + 2) = v57 + 1;
          v58 = &v48[16 * v57];
          *(v58 + 4) = v54;
          *(v58 + 5) = v61;
        }

        while (v47 != v46);
        goto LABEL_38;
      }
    }

    else
    {
      v46 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        goto LABEL_15;
      }
    }

    v48 = MEMORY[0x1E69E7CC0];
LABEL_38:

    sub_1B724428C(v48);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B723E0F4();
  v59 = sub_1B78007C8();

  return v59;
}

id sub_1B77A2D64()
{
  result = [v0 managedObjectContext];
  if (result)
  {
    v2 = result;
    v3 = [v0 businessConnectBrandObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 logo];
      v6 = sub_1B77FF5B8();

      [v2 refreshObject:v4 mergeChanges:0];
      return v6;
    }

    v7 = [v0 merchantEmailAddress];
    if (!v7 || (v8 = v7, sub_1B7800868(), v8, type metadata accessor for ManagedMapsBrand(), static ManagedMapsBrand.brand(withEmail:in:)(), v10 = v9, , !v10))
    {
LABEL_6:

      return 0;
    }

    v11 = sub_1B7800838();
    v12 = [v10 valueForKeyPath_];

    if (v12)
    {
      sub_1B7801848();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    *v19 = v17;
    v20 = v18;
    if (*(&v18 + 1))
    {
      sub_1B77A3370();
      if (swift_dynamicCast())
      {
        v13 = [v16 anyObject];

        if (v13)
        {
          sub_1B7801848();
          swift_unknownObjectRelease();
        }

        else
        {
          *v19 = 0u;
          v20 = 0u;
        }

        v21 = *v19;
        v22 = v20;
        if (*(&v20 + 1))
        {
          type metadata accessor for ManagedTransactionIcon();
          if (swift_dynamicCast())
          {
            v14 = [v19[0] data];
            v15 = sub_1B77FF5B8();

            [v2 refreshObject:v19[0] mergeChanges:0];
            return v15;
          }

          goto LABEL_6;
        }

LABEL_20:
        sub_1B7205418(&v21, &qword_1EB98FCB0);
        return 0;
      }
    }

    else
    {

      sub_1B7205418(v19, &qword_1EB98FCB0);
    }

    v21 = 0u;
    v22 = 0u;
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B77A3094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1B77FF988();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1B7205418(v25, &qword_1EB99E1A8);
  }

  if (v18 < 1)
  {
    return sub_1B7205418(v25, &qword_1EB99E1A8);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1B7205418(v25, &qword_1EB99E1A8);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1B77A3294(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *v4;
  v9 = v8 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v5);
  v11 = a3 - v5;
  if (v10)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = *(v8 + 16);
  v10 = __OFSUB__(v12, a2);
  v13 = v12 - a2;
  if (v10)
  {
    goto LABEL_17;
  }

  result = v9 + 40 * a3;
  v14 = (v8 + 32 + 40 * a2);
  v15 = 40 * v13;
  v16 = &v14[40 * v13];
  if (result != v14 || result >= v16)
  {
    result = memmove(result, v14, v15);
  }

  v18 = *(v8 + 16);
  v10 = __OFADD__(v18, v11);
  v19 = v18 + v11;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v8 + 16) = v19;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B77A3370()
{
  result = qword_1EB99C298;
  if (!qword_1EB99C298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB99C298);
  }

  return result;
}

uint64_t BankConnectAutomatingError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t sub_1B77A3454(uint64_t a1)
{
  v2 = sub_1B77A3B4C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B77A3490(uint64_t a1)
{
  v2 = sub_1B77A3B4C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t BankConnectService.getConsent(for:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for BankConnectService.Message();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  *(v3 + 56) = *(a2 + 1);
  *(v3 + 72) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1B77A3594, 0, 0);
}

uint64_t sub_1B77A3594()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  *v4 = v0[6];
  v4[1] = v3;
  v4[2] = v1;
  v4[3] = v2;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1B75A58E4;
  v6 = v0[5];
  v7 = v0[2];

  return sub_1B727755C(v7, v6);
}

unint64_t sub_1B77A3688()
{
  result = qword_1EB99E1B0;
  if (!qword_1EB99E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E1B0);
  }

  return result;
}

unint64_t sub_1B77A36E0()
{
  result = qword_1EB99E1B8;
  if (!qword_1EB99E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E1B8);
  }

  return result;
}

uint64_t sub_1B77A3734(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = type metadata accessor for BankConnectService.Message();
  v5 = swift_task_alloc();
  v6 = *v2;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = *a2;
  *(v3 + 56) = *(a2 + 8);
  *(v3 + 72) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B77A37E8, 0, 0);
}

uint64_t sub_1B77A37E8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  *v4 = v0[6];
  v4[1] = v3;
  v4[2] = v1;
  v4[3] = v2;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1B75A5D64;
  v6 = v0[4];
  v7 = v0[2];

  return sub_1B727755C(v7, v6);
}

uint64_t dispatch thunk of BankConnectAutomating.revokeConsents(forInstitutionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BankConnectAutomating.getConsent(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_1B77A3B4C()
{
  result = qword_1EB99E1C0;
  if (!qword_1EB99E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E1C0);
  }

  return result;
}

uint64_t BankConnectNotificationEventTypes.init(fromRawNotificationEventTypes:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = 0;
    while (v6 < v3)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

      if (*(v5 + v6))
      {
        if (*(v5 + v6) == 1)
        {
          v4 |= 1u;
        }

        else
        {
          v4 |= 2u;
        }

        if (v7 == v3)
        {
          goto LABEL_14;
        }

        ++v6;
      }

      else
      {
        ++v6;
        if (v7 == v3)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    v4 = 0;
LABEL_14:

    *a2 = v4;
  }

  return result;
}

uint64_t sub_1B77A3D24()
{
  sub_1B78022F8();
  sub_1B7802338();
  return sub_1B7802368();
}

uint64_t sub_1B77A3D98()
{
  sub_1B78022F8();
  sub_1B7802338();
  return sub_1B7802368();
}

BOOL sub_1B77A3E20(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1B77A3E50@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1B77A3E7C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1B77A3F3C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

char *BankConnectNotificationEventTypes.rawEventTypes.getter()
{
  v1 = *v0;
  if ((v1 & 1) == 0)
  {
    result = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_1B723FE3C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v4 >= v3 >> 1)
  {
    result = sub_1B723FE3C((v3 > 1), v4 + 1, 1, result);
  }

  *(result + 2) = v4 + 1;
  result[v4 + 32] = 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v5 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v5;
    }

    else
    {
      result = sub_1B723FE3C(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(result + 2);
    v6 = *(result + 3);
    if (v7 >= v6 >> 1)
    {
      result = sub_1B723FE3C((v6 > 1), v7 + 1, 1, result);
    }

    *(result + 2) = v7 + 1;
    result[v7 + 32] = 2;
  }

  return result;
}

unint64_t sub_1B77A4078()
{
  result = qword_1EB99E1C8;
  if (!qword_1EB99E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E1C8);
  }

  return result;
}

unint64_t sub_1B77A40D0()
{
  result = qword_1EB99E1D0;
  if (!qword_1EB99E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E1D0);
  }

  return result;
}

unint64_t sub_1B77A4124()
{
  result = qword_1EB99E1D8;
  if (!qword_1EB99E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E1D8);
  }

  return result;
}

unint64_t sub_1B77A417C()
{
  result = qword_1EB99E1E0;
  if (!qword_1EB99E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E1E0);
  }

  return result;
}

uint64_t sub_1B77A41E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1B77AE558(&qword_1EB98EBD8, MEMORY[0x1E6969530]);
        v20 = sub_1B78007E8();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

void sub_1B77A4498(uint64_t a1)
{
  v2 = type metadata accessor for FinanceNetworkError();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B77AE41C(a1, v4, type metadata accessor for FinanceNetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v6 = 0;
      goto LABEL_7;
    case 2:
      v6 = 1;
LABEL_8:
      type metadata accessor for BankConnectAutoBugCaptureReporter();
      inited = swift_initStackObject();
      v8 = [objc_allocWithZone(FKAutoBugCaptureReporter) init];
      *(inited + 16) = v8;
      v15[7] = v6;
      sub_1B77AE558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      v9 = swift_allocError();
      sub_1B77AE41C(a1, v10, type metadata accessor for FinanceNetworkError);
      BankConnectAutoBugCaptureReporter.reportWebServiceIssue(_:error:)();

      return;
    case 5:
      v6 = 2;
LABEL_7:
      sub_1B77AE484(v4, type metadata accessor for FinanceNetworkError);
      goto LABEL_8;
  }

  sub_1B77AE484(v4, type metadata accessor for FinanceNetworkError);
  if (qword_1EDAF6568 != -1)
  {
    swift_once();
  }

  v11 = sub_1B78000B8();
  __swift_project_value_buffer(v11, qword_1EDAF6570);
  v12 = sub_1B7800098();
  v13 = sub_1B78011B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7198000, v12, v13, "Attempted to report unsupported error type, aborting.", v14, 2u);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
  }
}

uint64_t BankConnectTransactionsDataLoader.__allocating_init(environment:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B71E4C44(a1, v2 + 16);
  return v2;
}

uint64_t BankConnectTransactionsDataLoader.loadTransactions(for:using:userPresence:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 120) = a2;
  v6 = *(type metadata accessor for UserPresence() - 8);
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 + 64);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = type metadata accessor for BankConnectConsent();
  *(v4 + 176) = swift_task_alloc();
  v7 = *(type metadata accessor for BankConnectTransactionsDataLoader.DateQuery() - 8);
  *(v4 + 184) = v7;
  *(v4 + 192) = *(v7 + 64);
  *(v4 + 200) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  *(v4 + 208) = v8;
  *(v4 + 216) = v9;
  *(v4 + 224) = *(a1 + 1);
  *(v4 + 240) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B77A48FC, 0, 0);
}

uint64_t sub_1B77A48FC()
{
  v40 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[15];
  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAF65B0);
  sub_1B77AE41C(v2, v1, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);

  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v34 = v0[29];
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39[0] = v11;
    *v10 = 136315394;
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    MEMORY[0x1B8CA4D30](v8, v7);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    MEMORY[0x1B8CA4D30](v34, v6);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v12 = sub_1B71A3EF8(0, 0xE000000000000000, v39);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = BankConnectTransactionsDataLoader.DateQuery.description.getter();
    v15 = v14;
    sub_1B77AE484(v9, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);
    v16 = sub_1B71A3EF8(v13, v15, v39);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1B7198000, v4, v5, "Fetching transactions for %s using %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v11, -1, -1);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
  }

  else
  {
    v17 = v0[26];

    sub_1B77AE484(v17, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);
  }

  v19 = v0[29];
  v18 = v0[30];
  v35 = *(v0 + 27);
  v20 = v0[22];
  v21 = v0[17];
  v22 = v21[5];
  v23 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v22);
  (*(v23 + 24))(v22, v23);
  v24 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
  v36 = v35;
  v37 = v19;
  v38 = v18;
  BankConnectConsentStoring.getAuthorizedConsent(grantingAccessTo:)(&v36, v24, v20);
  v26 = v0[21];
  v25 = v0[22];
  __swift_destroy_boxed_opaque_existential_1((v0 + 10));
  v28 = v21[5];
  v27 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v28);
  v29 = (v25 + *(v26 + 20));
  v30 = *v29;
  v31 = v29[1];
  v32 = swift_task_alloc();
  v0[31] = v32;
  *v32 = v0;
  v32[1] = sub_1B77A4D90;

  return BankConnectDataLoaderEnvironment.makeTaskQueue(forConsentID:)(v30, v31, v28, v27);
}

uint64_t sub_1B77A4D90(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B77A4E90, 0, 0);
}

uint64_t sub_1B77A4E90()
{
  v1 = v0[30];
  v18 = v0[29];
  v19 = v0[32];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[20];
  v17 = v0[27];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  sub_1B77AE41C(v0[15], v3, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);
  sub_1B77AE41C(v9, v6, type metadata accessor for UserPresence);
  v10 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v11 = (v4 + *(v7 + 80) + v10) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v0[33] = v12;
  v12[2] = v8;
  v12[3] = v17;
  v12[4] = v2;
  v12[5] = v18;
  v12[6] = v1;
  sub_1B77ADFC8(v3, v12 + v10, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);
  sub_1B77ADFC8(v6, v12 + v11, type metadata accessor for UserPresence);
  sub_1B77AE558(&qword_1EB992D70, type metadata accessor for BankConnectTaskQueue);

  if (v19)
  {
    swift_getObjectType();
    v13 = sub_1B7800CD8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B77A5080, v13, v15);
}

uint64_t sub_1B77A5080()
{
  v2 = v0[32];
  v1 = v0[33];
  v0[2] = v0;
  v0[3] = sub_1B77A5138;
  v3 = swift_continuation_init();
  sub_1B7388288(v3, v2, &unk_1B786C4E8, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B77A5138()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = *(v1 + 256);
    swift_willThrow();
    v4 = sub_1B77A526C;
    v5 = v3;
  }

  else
  {

    v4 = sub_1B77AE5C8;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B77A526C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B77AE5CC, 0, 0);
}

uint64_t type metadata accessor for BankConnectTransactionsDataLoader.DateQuery()
{
  result = qword_1EB99E1E8;
  if (!qword_1EB99E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B77A5320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v11 = swift_task_alloc();
  v8[6] = v11;
  *v11 = v8;
  v11[1] = sub_1B77A53E8;

  return sub_1B77A5690((v8 + 2), a7, 0, 0, a8);
}

uint64_t sub_1B77A53E8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B77AE5D4, 0, 0);
}

uint64_t sub_1B77A551C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BankConnectTransactionsDataLoader.DateQuery() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UserPresence() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1B723838C;

  return sub_1B77A5320(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

uint64_t sub_1B77A5690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 344) = a5;
  *(v6 + 352) = v5;
  *(v6 + 328) = a3;
  *(v6 + 336) = a4;
  *(v6 + 320) = a2;
  *(v6 + 360) = *(type metadata accessor for RawBankConnectData.Transaction(0) - 8);
  *(v6 + 368) = swift_task_alloc();
  type metadata accessor for BankConnectResponseHeaders();
  *(v6 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D88);
  *(v6 + 384) = swift_task_alloc();
  v8 = type metadata accessor for FinanceNetworkError();
  *(v6 + 392) = v8;
  *(v6 + 400) = *(v8 - 8);
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = type metadata accessor for BankConnectErrorWithConsent(0);
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0);
  *(v6 + 488) = swift_task_alloc();
  type metadata accessor for BankConnectConsent();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DCD0);
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  *(v6 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  v9 = sub_1B77FF988();
  *(v6 + 560) = v9;
  *(v6 + 568) = *(v9 - 8);
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = swift_task_alloc();
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();
  v10 = sub_1B77FEA78();
  *(v6 + 608) = v10;
  *(v6 + 616) = *(v10 - 8);
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = *a1;
  *(v6 + 640) = *(a1 + 8);
  *(v6 + 656) = *(a1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B77A5AA8, 0, 0);
}

uint64_t sub_1B77A5AA8()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 320);
  *(v0 + 280) = MEMORY[0x1E69E7CD0];
  v6 = *(v2 + 16);
  *(v0 + 664) = v6;
  *(v0 + 672) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = *(type metadata accessor for BankConnectTransactionsDataLoader.DateQuery() + 20);
  *(v0 + 808) = v7;
  sub_1B7205588(v5 + v7, v4, &qword_1EB98EBD0);
  v8 = *(v2 + 48);
  if (v8(v4, 1, v3) == 1)
  {
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    sub_1B77FF7F8();
    if (v8(v10, 1, v9) != 1)
    {
      sub_1B7205418(*(v0 + 552), &qword_1EB98EBD0);
    }
  }

  else
  {
    (*(*(v0 + 568) + 32))(*(v0 + 592), *(v0 + 552), *(v0 + 560));
  }

  v11 = *(v0 + 656);
  v12 = *(v0 + 648);
  v46 = *(v0 + 632);
  v13 = *(v0 + 624);
  v14 = *(v0 + 352);
  sub_1B77FEA28();
  type metadata accessor for ManagedTransactionImporter();
  *(v0 + 680) = swift_initStackObject();
  *(v0 + 688) = ManagedTransactionImporter.init()();
  __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
  isa = BankConnectDataLoaderEnvironment.makeBackgroundContext()().super.isa;
  *(v0 + 696) = isa;
  v16 = swift_task_alloc();
  *(v16 + 16) = v46;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  *(v16 + 48) = isa;
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  sub_1B7801468();

  *(v0 + 813) = 0;
  *(v0 + 704) = 0;
  sub_1B7800EB8();
  v17 = *(v0 + 656);
  v18 = *(v0 + 648);
  v47 = *(v0 + 632);
  v19 = *(v0 + 352);
  v21 = v19[5];
  v20 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v21);
  (*(v20 + 24))(v21, v20);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v22);
  *(v0 + 160) = v47;
  *(v0 + 176) = v18;
  *(v0 + 184) = v17;
  (*(v23 + 16))(v0 + 160, v22, v23);
  v43 = *(v0 + 808);
  v42 = *(v0 + 664);
  *&v47 = *(v0 + 640);
  v24 = *(v0 + 568);
  v25 = *(v0 + 560);
  v26 = *(v0 + 544);
  v27 = *(v0 + 488);
  v28 = *(v0 + 496);
  v29 = *(v0 + 480);
  v30 = *(v0 + 352);
  v44 = *(v0 + 344);
  v45 = *(v0 + 632);
  v31 = *(v0 + 320);
  v32 = v30[5];
  v33 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v32);
  *(v0 + 712) = BankConnectDataLoaderEnvironment.makeWebServiceClient()(v32, v33);
  sub_1B77AE41C(v28, v27, type metadata accessor for BankConnectConsent);
  v42(v27 + v29[6], v31, v25);
  v34 = v26;
  sub_1B7205588(v31 + v43, v26, &qword_1EB98EBD0);
  sub_1B77AE41C(v44, v27 + v29[9], type metadata accessor for UserPresence);
  v35 = v29[7];
  v36 = *(v24 + 56);
  *(v0 + 720) = v36;
  *(v0 + 728) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v36(v27 + v35, 1, 1, v25);
  v37 = (v27 + v29[8]);
  v38 = (v27 + v29[5]);
  *v38 = v45;
  v38[1] = v47;

  sub_1B72DFF88(v34, v27 + v35);
  *v37 = 0;
  v37[1] = 0;
  *(v0 + 144) = v29;
  *(v0 + 152) = &protocol witness table for BankConnectWebServiceAccountTransactionsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
  sub_1B77AE41C(v27, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountTransactionsRequest);
  v40 = swift_task_alloc();
  *(v0 + 736) = v40;
  *v40 = v0;
  v40[1] = sub_1B77A638C;

  return sub_1B77955F8(v0 + 120, 1, 0, 1);
}

uint64_t sub_1B77A638C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[93] = a1;
  v5[94] = a2;
  v5[95] = a3;
  v5[96] = v3;

  if (v3)
  {
    v6 = sub_1B77A721C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 15));
    v6 = sub_1B77A64B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B77A64B4()
{
  v107 = v0;
  v1 = *(v0 + 768);
  sub_1B7781DF0(*(v0 + 744), *(v0 + 752), *(v0 + 760), *(v0 + 512));
  *(v0 + 776) = v1;
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  if (!v1)
  {
    v14 = *(v0 + 488);

    sub_1B720A388(v4, v3);
    sub_1B77AE484(v14, type metadata accessor for BankConnectWebServiceAccountTransactionsRequest);
    v15 = swift_task_alloc();
    *(v0 + 784) = v15;
    *v15 = v0;
    v15[1] = sub_1B77A7EBC;
    v16 = *(v0 + 712);
    v17 = MEMORY[0x1E69E7CA8];
    v18 = sub_1B76A802C;
    goto LABEL_42;
  }

  sub_1B720A388(v4, v3);
  sub_1B77AE484(*(v0 + 488), type metadata accessor for BankConnectWebServiceAccountTransactionsRequest);
  *(v0 + 288) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (!swift_dynamicCast())
  {
    v19 = *(v0 + 400);

    *(v0 + 296) = v1;
    v20 = v1;
    v21 = swift_dynamicCast();
    v22 = *(v19 + 56);
    if (v21)
    {
      v23 = *(v0 + 424);
      v24 = *(v0 + 384);
      v22(v24, 0, 1, *(v0 + 392));
      sub_1B77ADFC8(v24, v23, type metadata accessor for FinanceNetworkError);
      sub_1B77A4498(v23);
      sub_1B77AE484(v23, type metadata accessor for FinanceNetworkError);
    }

    else
    {
      v25 = *(v0 + 384);
      v22(v25, 1, 1, *(v0 + 392));
      sub_1B7205418(v25, &qword_1EB992D88);
    }

    swift_willThrow();
    goto LABEL_41;
  }

  v6 = *(v0 + 464);
  v7 = *(v0 + 472);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);

  sub_1B77ADFC8(v7, v6, type metadata accessor for BankConnectErrorWithConsent);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v10);
  v102 = *(v9 + 20);
  sub_1B77AE41C(v6 + v102, v8, type metadata accessor for FinanceNetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B77AE484(*(v0 + 432), type metadata accessor for FinanceNetworkError);
  }

  v13 = *(v0 + 464);
  LOBYTE(v103) = EnumCaseMultiPayload == 7;
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v13, &v103, v10, v11);
  v26 = v102;
  sub_1B77AE41C(v6 + v102, *(v0 + 416), type metadata accessor for FinanceNetworkError);
  v27 = swift_getEnumCaseMultiPayload();
  switch(v27)
  {
    case 1:
      v55 = **(v0 + 416);
      *(v0 + 304) = v55;
      v56 = v55;
      if (swift_dynamicCast())
      {
        v57 = *(v0 + 464);
        v100 = *(v0 + 344);
        v58 = *(v0 + 104);
        v59 = *(v0 + 112);
        __swift_project_boxed_opaque_existential_1((v0 + 80), v58);
        v61 = *v57;
        v60 = v57[1];
        v97 = *(v59 + 56);

        v97(v61, v60, v100, v58, v59);

LABEL_39:
        v26 = v102;
        break;
      }

      break;
    case 3:
      sub_1B77AE41C(v6 + v102, *(v0 + 408), type metadata accessor for FinanceNetworkError);
      v53 = swift_getEnumCaseMultiPayload();
      v54 = *(v0 + 408);
      if (v53 == 3)
      {
        sub_1B7205418(v54, &qword_1EB98EBD0);
      }

      else
      {
        sub_1B77AE484(v54, type metadata accessor for FinanceNetworkError);
      }

      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v62 = *(v0 + 464);
      v63 = *(v0 + 448);
      v64 = sub_1B78000B8();
      __swift_project_value_buffer(v64, qword_1EDAF65B0);
      sub_1B77AE41C(v62, v63, type metadata accessor for BankConnectErrorWithConsent);
      v65 = sub_1B7800098();
      v66 = sub_1B78011B8();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v0 + 448);
      if (v67)
      {
        v69 = swift_slowAlloc();
        v101 = v53;
        v70 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v103 = v98;
        *v69 = 136315394;
        if (v101 == 3)
        {
          v71 = 0xD000000000000029;
        }

        else
        {
          v71 = 0xD00000000000002ALL;
        }

        if (v101 == 3)
        {
          v72 = "shFailure.unspecifiedError";
        }

        else
        {
          v72 = ".merchantObject.muid = %lu";
        }

        v73 = sub_1B71A3EF8(v71, v72 | 0x8000000000000000, &v103);

        *(v69 + 4) = v73;
        *(v69 + 12) = 2112;
        v74 = *(v9 + 20);
        sub_1B77AE558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        v75 = v68 + v74;
        v26 = v102;
        sub_1B77AE41C(v75, v76, type metadata accessor for FinanceNetworkError);
        v77 = _swift_stdlib_bridgeErrorToNSError();
        sub_1B77AE484(v68, type metadata accessor for BankConnectErrorWithConsent);
        *(v69 + 14) = v77;
        *v70 = v77;
        _os_log_impl(&dword_1B7198000, v65, v66, "Setting lastTransactionsRefreshFailure to: %s for error: %@", v69, 0x16u);
        sub_1B7205418(v70, &qword_1EB9910D0);
        v78 = v70;
        v53 = v101;
        MEMORY[0x1B8CA7A40](v78, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x1B8CA7A40](v98, -1, -1);
        MEMORY[0x1B8CA7A40](v69, -1, -1);
      }

      else
      {

        sub_1B77AE484(v68, type metadata accessor for BankConnectErrorWithConsent);
      }

      v79 = *(v0 + 656);
      v80 = *(v0 + 648);
      v81 = *(v0 + 416);
      v103 = *(v0 + 632);
      v104 = v80;
      v105 = v79;
      v106 = v53 != 3;
      sub_1B77AE030();
      sub_1B7205418(v81, &qword_1EB98EBD0);
      break;
    case 6:
      v28 = *(v0 + 584);
      v29 = *(v0 + 568);
      v30 = *(v0 + 560);
      v31 = *(v0 + 416);
      v99 = *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
      (*(v29 + 32))(v28, v31, v30);
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 664);
      v33 = *(v0 + 584);
      v34 = *(v0 + 576);
      v35 = *(v0 + 560);
      v36 = *(v0 + 456);
      v95 = *(v0 + 464);
      v37 = sub_1B78000B8();
      __swift_project_value_buffer(v37, qword_1EDAF65B0);
      v32(v34, v33, v35);
      sub_1B77AE41C(v95, v36, type metadata accessor for BankConnectErrorWithConsent);
      v38 = sub_1B7800098();
      v39 = sub_1B78011F8();
      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 576);
      v42 = *(v0 + 568);
      v43 = *(v0 + 560);
      v44 = *(v0 + 456);
      if (v40)
      {
        v93 = v39;
        v45 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&v103 = v94;
        *v45 = 136315650;
        sub_1B77AE558(&qword_1EB991200, MEMORY[0x1E6969530]);
        v91 = v44;
        v46 = sub_1B7802068();
        v48 = v47;
        v96 = *(v42 + 8);
        v96(v41, v43);
        v49 = sub_1B71A3EF8(v46, v48, &v103);

        *(v45 + 4) = v49;
        *(v45 + 12) = 512;
        *(v45 + 14) = v99;
        *(v45 + 16) = 2112;
        v50 = *(v9 + 20);
        sub_1B77AE558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        sub_1B77AE41C(v91 + v50, v51, type metadata accessor for FinanceNetworkError);
        v52 = _swift_stdlib_bridgeErrorToNSError();
        sub_1B77AE484(v91, type metadata accessor for BankConnectErrorWithConsent);
        *(v45 + 18) = v52;
        *v92 = v52;
        _os_log_impl(&dword_1B7198000, v38, v93, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@", v45, 0x1Au);
        sub_1B7205418(v92, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](v92, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x1B8CA7A40](v94, -1, -1);
        MEMORY[0x1B8CA7A40](v45, -1, -1);
      }

      else
      {

        sub_1B77AE484(v44, type metadata accessor for BankConnectErrorWithConsent);
        v96 = *(v42 + 8);
        v96(v41, v43);
      }

      v82 = *(v0 + 720);
      v83 = *(v0 + 664);
      v84 = *(v0 + 584);
      v85 = *(v0 + 560);
      v86 = *(v0 + 544);
      type metadata accessor for ManagedInstitution();
      v83(v86, v84, v85);
      v82(v86, 0, 1, v85);
      static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
      sub_1B7205418(v86, &qword_1EB98EBD0);
      v96(v84, v85);
      goto LABEL_39;
    default:
      sub_1B77AE484(*(v0 + 416), type metadata accessor for FinanceNetworkError);
      break;
  }

  v87 = *(v0 + 464);
  sub_1B77A4498(v6 + v26);
  sub_1B77AE558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
  v88 = swift_allocError();
  sub_1B77AE41C(v6 + v26, v89, type metadata accessor for FinanceNetworkError);
  swift_willThrow();
  v1 = v88;
  sub_1B77AE484(v87, type metadata accessor for BankConnectErrorWithConsent);

LABEL_41:
  *(v0 + 792) = v1;
  v15 = swift_task_alloc();
  *(v0 + 800) = v15;
  *v15 = v0;
  v15[1] = sub_1B77A8FC8;
  v16 = *(v0 + 712);
  v17 = MEMORY[0x1E69E7CA8];
  v18 = sub_1B76A8000;
LABEL_42:

  return MEMORY[0x1EEE6DDE0](v15, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, v18, v16, v17 + 8);
}

uint64_t sub_1B77A721C()
{
  v101 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  v1 = *(v0 + 768);
  sub_1B77AE484(*(v0 + 488), type metadata accessor for BankConnectWebServiceAccountTransactionsRequest);
  *(v0 + 288) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (!swift_dynamicCast())
  {
    v11 = *(v0 + 400);

    *(v0 + 296) = v1;
    v12 = v1;
    v13 = swift_dynamicCast();
    v14 = *(v11 + 56);
    if (v13)
    {
      v15 = *(v0 + 424);
      v16 = *(v0 + 384);
      v14(v16, 0, 1, *(v0 + 392));
      sub_1B77ADFC8(v16, v15, type metadata accessor for FinanceNetworkError);
      sub_1B77A4498(v15);
      sub_1B77AE484(v15, type metadata accessor for FinanceNetworkError);
    }

    else
    {
      v17 = *(v0 + 384);
      v14(v17, 1, 1, *(v0 + 392));
      sub_1B7205418(v17, &qword_1EB992D88);
    }

    swift_willThrow();
    goto LABEL_39;
  }

  v3 = *(v0 + 464);
  v4 = *(v0 + 472);
  v5 = *(v0 + 432);
  v6 = *(v0 + 440);

  sub_1B77ADFC8(v4, v3, type metadata accessor for BankConnectErrorWithConsent);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v7);
  v96 = *(v6 + 20);
  sub_1B77AE41C(v3 + v96, v5, type metadata accessor for FinanceNetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B77AE484(*(v0 + 432), type metadata accessor for FinanceNetworkError);
  }

  v10 = *(v0 + 464);
  LOBYTE(v97) = EnumCaseMultiPayload == 7;
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v10, &v97, v7, v8);
  v18 = v96;
  sub_1B77AE41C(v3 + v96, *(v0 + 416), type metadata accessor for FinanceNetworkError);
  v19 = swift_getEnumCaseMultiPayload();
  switch(v19)
  {
    case 1:
      v47 = **(v0 + 416);
      *(v0 + 304) = v47;
      v48 = v47;
      if (swift_dynamicCast())
      {
        v49 = *(v0 + 464);
        v94 = *(v0 + 344);
        v50 = *(v0 + 104);
        v51 = *(v0 + 112);
        __swift_project_boxed_opaque_existential_1((v0 + 80), v50);
        v52 = *v49;
        v53 = v49[1];
        v91 = *(v51 + 56);

        v91(v52, v53, v94, v50, v51);

LABEL_37:
        v18 = v96;
        break;
      }

      break;
    case 3:
      sub_1B77AE41C(v3 + v96, *(v0 + 408), type metadata accessor for FinanceNetworkError);
      v45 = swift_getEnumCaseMultiPayload();
      v46 = *(v0 + 408);
      if (v45 == 3)
      {
        sub_1B7205418(v46, &qword_1EB98EBD0);
      }

      else
      {
        sub_1B77AE484(v46, type metadata accessor for FinanceNetworkError);
      }

      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 464);
      v55 = *(v0 + 448);
      v56 = sub_1B78000B8();
      __swift_project_value_buffer(v56, qword_1EDAF65B0);
      sub_1B77AE41C(v54, v55, type metadata accessor for BankConnectErrorWithConsent);
      v57 = sub_1B7800098();
      v58 = sub_1B78011B8();
      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 448);
      if (v59)
      {
        v61 = swift_slowAlloc();
        v95 = v45;
        v62 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&v97 = v92;
        *v61 = 136315394;
        if (v95 == 3)
        {
          v63 = 0xD000000000000029;
        }

        else
        {
          v63 = 0xD00000000000002ALL;
        }

        if (v95 == 3)
        {
          v64 = "shFailure.unspecifiedError";
        }

        else
        {
          v64 = ".merchantObject.muid = %lu";
        }

        v65 = sub_1B71A3EF8(v63, v64 | 0x8000000000000000, &v97);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2112;
        v66 = *(v6 + 20);
        sub_1B77AE558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        v67 = v60 + v66;
        v18 = v96;
        sub_1B77AE41C(v67, v68, type metadata accessor for FinanceNetworkError);
        v69 = _swift_stdlib_bridgeErrorToNSError();
        sub_1B77AE484(v60, type metadata accessor for BankConnectErrorWithConsent);
        *(v61 + 14) = v69;
        *v62 = v69;
        _os_log_impl(&dword_1B7198000, v57, v58, "Setting lastTransactionsRefreshFailure to: %s for error: %@", v61, 0x16u);
        sub_1B7205418(v62, &qword_1EB9910D0);
        v70 = v62;
        v45 = v95;
        MEMORY[0x1B8CA7A40](v70, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x1B8CA7A40](v92, -1, -1);
        MEMORY[0x1B8CA7A40](v61, -1, -1);
      }

      else
      {

        sub_1B77AE484(v60, type metadata accessor for BankConnectErrorWithConsent);
      }

      v71 = *(v0 + 656);
      v72 = *(v0 + 648);
      v73 = *(v0 + 416);
      v97 = *(v0 + 632);
      v98 = v72;
      v99 = v71;
      v100 = v45 != 3;
      sub_1B77AE030();
      sub_1B7205418(v73, &qword_1EB98EBD0);
      break;
    case 6:
      v20 = *(v0 + 584);
      v21 = *(v0 + 568);
      v22 = *(v0 + 560);
      v23 = *(v0 + 416);
      v93 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
      (*(v21 + 32))(v20, v23, v22);
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 664);
      v25 = *(v0 + 584);
      v26 = *(v0 + 576);
      v27 = *(v0 + 560);
      v28 = *(v0 + 456);
      v89 = *(v0 + 464);
      v29 = sub_1B78000B8();
      __swift_project_value_buffer(v29, qword_1EDAF65B0);
      v24(v26, v25, v27);
      sub_1B77AE41C(v89, v28, type metadata accessor for BankConnectErrorWithConsent);
      v30 = sub_1B7800098();
      v31 = sub_1B78011F8();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 576);
      v34 = *(v0 + 568);
      v35 = *(v0 + 560);
      v36 = *(v0 + 456);
      if (v32)
      {
        v87 = v31;
        v37 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v97 = v88;
        *v37 = 136315650;
        sub_1B77AE558(&qword_1EB991200, MEMORY[0x1E6969530]);
        v85 = v36;
        v38 = sub_1B7802068();
        v40 = v39;
        v90 = *(v34 + 8);
        v90(v33, v35);
        v41 = sub_1B71A3EF8(v38, v40, &v97);

        *(v37 + 4) = v41;
        *(v37 + 12) = 512;
        *(v37 + 14) = v93;
        *(v37 + 16) = 2112;
        v42 = *(v6 + 20);
        sub_1B77AE558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        sub_1B77AE41C(v85 + v42, v43, type metadata accessor for FinanceNetworkError);
        v44 = _swift_stdlib_bridgeErrorToNSError();
        sub_1B77AE484(v85, type metadata accessor for BankConnectErrorWithConsent);
        *(v37 + 18) = v44;
        *v86 = v44;
        _os_log_impl(&dword_1B7198000, v30, v87, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@", v37, 0x1Au);
        sub_1B7205418(v86, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](v86, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x1B8CA7A40](v88, -1, -1);
        MEMORY[0x1B8CA7A40](v37, -1, -1);
      }

      else
      {

        sub_1B77AE484(v36, type metadata accessor for BankConnectErrorWithConsent);
        v90 = *(v34 + 8);
        v90(v33, v35);
      }

      v74 = *(v0 + 720);
      v75 = *(v0 + 664);
      v76 = *(v0 + 584);
      v77 = *(v0 + 560);
      v78 = *(v0 + 544);
      type metadata accessor for ManagedInstitution();
      v75(v78, v76, v77);
      v74(v78, 0, 1, v77);
      static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
      sub_1B7205418(v78, &qword_1EB98EBD0);
      v90(v76, v77);
      goto LABEL_37;
    default:
      sub_1B77AE484(*(v0 + 416), type metadata accessor for FinanceNetworkError);
      break;
  }

  v79 = *(v0 + 464);
  sub_1B77A4498(v3 + v18);
  sub_1B77AE558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
  v1 = swift_allocError();
  sub_1B77AE41C(v3 + v18, v80, type metadata accessor for FinanceNetworkError);
  swift_willThrow();
  sub_1B77AE484(v79, type metadata accessor for BankConnectErrorWithConsent);

LABEL_39:
  *(v0 + 792) = v1;
  v81 = swift_task_alloc();
  *(v0 + 800) = v81;
  *v81 = v0;
  v81[1] = sub_1B77A8FC8;
  v82 = *(v0 + 712);
  v83 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v81, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76A8000, v82, v83);
}

uint64_t sub_1B77A7EBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B77A7FB8, 0, 0);
}

uint64_t sub_1B77A7FB8()
{

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v121 = sub_1B78000B8();
  __swift_project_value_buffer(v121, qword_1EDAF65B0);
  v1 = sub_1B7800098();
  v2 = sub_1B78011B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B7198000, v1, v2, "Clearing lastAccountTransactionsFailure", v3, 2u);
    MEMORY[0x1B8CA7A40](v3, -1, -1);
  }

  v4 = *(v0 + 776);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v123 = *(v0 + 632);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 376);

  *(v0 + 192) = v123;
  *(v0 + 208) = v6;
  *(v0 + 216) = v5;
  sub_1B77AE030();
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v10);
  sub_1B77AE41C(v7 + *(v8 + 28), v9, type metadata accessor for BankConnectResponseHeaders);
  *(v0 + 812) = 0;
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v9, (v0 + 812), v10, v11);
  v12 = v4;
  if (v4)
  {
    v13 = *(v0 + 512);
    v14 = *(v0 + 496);
    v15 = *(v0 + 376);

    sub_1B77AE484(v15, type metadata accessor for RawBankConnectData.Consent);
    sub_1B7205418(v13, &qword_1EB99DCD0);
    sub_1B77AE484(v14, type metadata accessor for BankConnectConsent);
    __swift_destroy_boxed_opaque_existential_1(v0 + 80);
    v25 = *(*(v0 + 280) + 16);

    if (v25)
    {
      v26 = *(v0 + 696);
      v27 = *(v0 + 656);
      v28 = *(v0 + 648);
      v124 = *(v0 + 632);
      v29 = swift_task_alloc();
      *(v29 + 16) = v124;
      *(v29 + 32) = v28;
      *(v29 + 40) = v27;
      *(v29 + 48) = v26;
      v30 = swift_task_alloc();
      v30[2] = sub_1B77ADFB0;
      v30[3] = v29;
      v30[4] = v26;
      sub_1B7801468();

      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v121, qword_1EDAF65B0);
      v31 = v12;
      v32 = sub_1B7800098();
      v33 = sub_1B78011D8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v12;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7198000, v32, v33, "Failed to load transaction page with: %@. Successfully merged similar BC and CNS transactions.", v34, 0xCu);
        sub_1B7205418(v35, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](v35, -1, -1);
        MEMORY[0x1B8CA7A40](v34, -1, -1);
      }
    }

    v38 = *(v0 + 696);
    v39 = *(v0 + 536);
    swift_willThrow();

    sub_1B7205418(v39, &qword_1EB992798);
    (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));

    v40 = *(v0 + 8);
LABEL_15:

    return v40();
  }

  v16 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 640);
  v21 = *(v0 + 632);
  v22 = *(v0 + 512);
  sub_1B77AE484(*(v0 + 376), type metadata accessor for RawBankConnectData.Consent);
  v23 = swift_task_alloc();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = v20;
  v23[5] = v19;
  v23[6] = v18;
  v23[7] = v16;
  v23[8] = v17;
  v24 = swift_task_alloc();
  v24[2] = sub_1B77AE384;
  v24[3] = v23;
  v24[4] = v16;
  sub_1B7801468();
  v42 = *(v0 + 520);
  v43 = *(v0 + 512);
  v44 = *(v0 + 496);

  sub_1B77AE3AC(v43, v42);
  sub_1B77AE484(v44, type metadata accessor for BankConnectConsent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  v125 = *(v42 + 16);
  v45 = *(v125 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    v47 = *(v0 + 360);
    *(v0 + 312) = MEMORY[0x1E69E7CC0];
    sub_1B71FDB50(0, v45, 0);
    v46 = *(v0 + 312);
    v48 = v125 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v49 = *(v47 + 72);
    do
    {
      v50 = *(v0 + 368);
      sub_1B77AE41C(v48, v50, type metadata accessor for RawBankConnectData.Transaction);
      v51 = *v50;
      v52 = v50[1];

      sub_1B77AE484(v50, type metadata accessor for RawBankConnectData.Transaction);
      *(v0 + 312) = v46;
      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1B71FDB50((v53 > 1), v54 + 1, 1);
        v46 = *(v0 + 312);
      }

      *(v46 + 16) = v54 + 1;
      v55 = v46 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v52;
      v48 += v49;
      --v45;
    }

    while (v45);
  }

  v56 = *(v0 + 813);
  sub_1B7262E6C(v46);

  if (v56)
  {
    v57 = 1;
  }

  else
  {
    v58 = *(v0 + 696);
    v59 = *(v0 + 656);
    v60 = *(v0 + 648);
    v61 = *(v0 + 632);
    v62 = *(v0 + 536);
    v63 = *(v0 + 520);
    v64 = *v63;
    v65 = v63[1];
    v66 = v63[2];
    *(v0 + 256) = *v63;
    *(v0 + 264) = v65;
    *(v0 + 272) = v66;
    v67 = *(v0 + 280);
    *(v0 + 224) = v61;
    *(v0 + 240) = v60;
    *(v0 + 248) = v59;
    sub_1B76D5CF8(v64, v65);
    v125 = v66;

    v57 = sub_1B77AAED8(v0 + 256, v67, (v0 + 224), v62, v58);
    sub_1B76D5D0C(*(v0 + 256), *(v0 + 264));
  }

  v68 = *(v0 + 520);
  v69 = *(v0 + 328);
  v71 = *v68;
  v70 = v68[1];
  sub_1B76D5CF8(*v68, v70);
  if (v69)
  {
    (*(v0 + 328))(v125);
  }

  v72 = sub_1B7800098();
  v73 = sub_1B78011F8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_1B7198000, v72, v73, "Transaction page successfully fetched and stored.", v74, 2u);
    MEMORY[0x1B8CA7A40](v74, -1, -1);
  }

  v75 = *(v0 + 520);

  sub_1B7205418(v75, &qword_1EB99DCD0);
  if (v70 <= 1)
  {
    v76 = *(v0 + 696);
    v77 = *(v0 + 656);
    v78 = *(v0 + 648);
    v126 = *(v0 + 632);
    v79 = *(v0 + 624);
    v80 = *(v0 + 280);
    v81 = swift_task_alloc();
    *(v81 + 16) = v126;
    *(v81 + 32) = v78;
    *(v81 + 40) = v77;
    *(v81 + 48) = v80;
    *(v81 + 56) = v79;
    *(v81 + 64) = v76;
    v82 = swift_task_alloc();
    v82[2] = sub_1B77AE4E4;
    v82[3] = v81;
    v82[4] = v76;
    sub_1B7801468();
    v83 = *(v0 + 696);
    v84 = *(v0 + 656);
    v85 = *(v0 + 648);
    v127 = *(v0 + 632);

    v86 = swift_task_alloc();
    *(v86 + 16) = v127;
    *(v86 + 32) = v85;
    *(v86 + 40) = v84;
    *(v86 + 48) = v83;
    v87 = swift_task_alloc();
    v87[2] = sub_1B77AE5D8;
    v87[3] = v86;
    v87[4] = v83;
    sub_1B7801468();

    v95 = sub_1B7800098();
    v96 = sub_1B78011F8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1B7198000, v95, v96, "Finished post-processing transactions. Missing transactions are cleaned up, similar BankConnect and PassKit transactions are linked.", v97, 2u);
      MEMORY[0x1B8CA7A40](v97, -1, -1);
    }

    v98 = *(v0 + 624);
    v99 = *(v0 + 616);
    v100 = *(v0 + 608);
    v101 = *(v0 + 536);

    sub_1B7205418(v101, &qword_1EB992798);
    (*(v99 + 8))(v98, v100);

    v40 = *(v0 + 8);
    goto LABEL_15;
  }

  *(v0 + 813) = v57 & 1;
  *(v0 + 704) = v70;
  sub_1B7800EB8();
  v88 = *(v0 + 656);
  v89 = *(v0 + 648);
  v128 = *(v0 + 632);
  v90 = *(v0 + 352);
  v91 = v90[5];
  v92 = v90[6];
  __swift_project_boxed_opaque_existential_1(v90 + 2, v91);
  (*(v92 + 24))(v91, v92);
  v93 = *(v0 + 104);
  v94 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v93);
  *(v0 + 160) = v128;
  *(v0 + 176) = v89;
  *(v0 + 184) = v88;
  (*(v94 + 16))(v0 + 160, v93, v94);
  v119 = *(v0 + 808);
  v117 = *(v0 + 664);
  v122 = *(v0 + 632);
  *&v128 = *(v0 + 640);
  v102 = *(v0 + 568);
  v116 = *(v0 + 560);
  v118 = *(v0 + 544);
  v103 = *(v0 + 488);
  v104 = *(v0 + 496);
  v105 = *(v0 + 480);
  v106 = *(v0 + 352);
  v120 = *(v0 + 344);
  v107 = *(v0 + 320);
  v108 = v106[5];
  v109 = v106[6];
  __swift_project_boxed_opaque_existential_1(v106 + 2, v108);
  *(v0 + 712) = BankConnectDataLoaderEnvironment.makeWebServiceClient()(v108, v109);
  sub_1B77AE41C(v104, v103, type metadata accessor for BankConnectConsent);
  v117(v103 + v105[6], v107, v116);
  sub_1B7205588(v107 + v119, v118, &qword_1EB98EBD0);
  sub_1B77AE41C(v120, v103 + v105[9], type metadata accessor for UserPresence);
  v110 = v105[7];
  v111 = *(v102 + 56);
  *(v0 + 720) = v111;
  *(v0 + 728) = (v102 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v111(v103 + v110, 1, 1, v116);
  v112 = (v103 + v105[8]);
  v113 = (v103 + v105[5]);
  *v113 = v122;
  v113[1] = v128;

  sub_1B72DFF88(v118, v103 + v110);
  *v112 = v71;
  v112[1] = v70;

  *(v0 + 144) = v105;
  *(v0 + 152) = &protocol witness table for BankConnectWebServiceAccountTransactionsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
  sub_1B77AE41C(v103, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountTransactionsRequest);
  v115 = swift_task_alloc();
  *(v0 + 736) = v115;
  *v115 = v0;
  v115[1] = sub_1B77A638C;

  return sub_1B77955F8(v0 + 120, 1, 0, 1);
}

uint64_t sub_1B77A8FC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B77A90C4, 0, 0);
}

uint64_t sub_1B77A90C4()
{
  v1 = *(v0 + 496);
  swift_willThrow();

  sub_1B77AE484(v1, type metadata accessor for BankConnectConsent);
  v2 = *(v0 + 792);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  v3 = *(*(v0 + 280) + 16);

  if (v3)
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 656);
    v6 = *(v0 + 648);
    v21 = *(v0 + 632);
    v7 = swift_task_alloc();
    *(v7 + 16) = v21;
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;
    *(v7 + 48) = v4;
    v8 = swift_task_alloc();
    v8[2] = sub_1B77ADFB0;
    v8[3] = v7;
    v8[4] = v4;
    sub_1B7801468();

    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B78000B8();
    __swift_project_value_buffer(v9, qword_1EDAF65B0);
    v10 = v2;
    v11 = sub_1B7800098();
    v12 = sub_1B78011D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1B7198000, v11, v12, "Failed to load transaction page with: %@. Successfully merged similar BC and CNS transactions.", v13, 0xCu);
      sub_1B7205418(v14, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
    }
  }

  v17 = *(v0 + 696);
  v18 = *(v0 + 536);
  swift_willThrow();

  sub_1B7205418(v18, &qword_1EB992798);
  (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t BankConnectTransactionsDataLoader.loadHistoricalTransactions(for:using:userPresence:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 120) = a2;
  v6 = *(type metadata accessor for UserPresence() - 8);
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 + 64);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = type metadata accessor for BankConnectConsent();
  *(v4 + 176) = swift_task_alloc();
  v7 = *(type metadata accessor for BankConnectTransactionsDataLoader.DateQuery() - 8);
  *(v4 + 184) = v7;
  *(v4 + 192) = *(v7 + 64);
  *(v4 + 200) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  *(v4 + 208) = v8;
  *(v4 + 216) = v9;
  *(v4 + 224) = *(a1 + 1);
  *(v4 + 240) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B77A968C, 0, 0);
}

uint64_t sub_1B77A968C()
{
  v40 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[15];
  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAF65B0);
  sub_1B77AE41C(v2, v1, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);

  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v34 = v0[29];
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39[0] = v11;
    *v10 = 136315394;
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    MEMORY[0x1B8CA4D30](v8, v7);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    MEMORY[0x1B8CA4D30](v34, v6);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v12 = sub_1B71A3EF8(0, 0xE000000000000000, v39);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = BankConnectTransactionsDataLoader.DateQuery.description.getter();
    v15 = v14;
    sub_1B77AE484(v9, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);
    v16 = sub_1B71A3EF8(v13, v15, v39);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1B7198000, v4, v5, "Fetching historical transactions for %s using %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v11, -1, -1);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
  }

  else
  {
    v17 = v0[26];

    sub_1B77AE484(v17, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);
  }

  v19 = v0[29];
  v18 = v0[30];
  v35 = *(v0 + 27);
  v20 = v0[22];
  v21 = v0[17];
  v22 = v21[5];
  v23 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v22);
  (*(v23 + 24))(v22, v23);
  v24 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
  v36 = v35;
  v37 = v19;
  v38 = v18;
  BankConnectConsentStoring.getAuthorizedConsent(grantingAccessTo:)(&v36, v24, v20);
  v26 = v0[21];
  v25 = v0[22];
  __swift_destroy_boxed_opaque_existential_1((v0 + 10));
  v28 = v21[5];
  v27 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v28);
  v29 = (v25 + *(v26 + 20));
  v30 = *v29;
  v31 = v29[1];
  v32 = swift_task_alloc();
  v0[31] = v32;
  *v32 = v0;
  v32[1] = sub_1B77A9B20;

  return BankConnectDataLoaderEnvironment.makeTaskQueue(forConsentID:)(v30, v31, v28, v27);
}

uint64_t sub_1B77A9B20(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B77A9C20, 0, 0);
}

uint64_t sub_1B77A9C20()
{
  v1 = v0[30];
  v18 = v0[29];
  v19 = v0[32];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[20];
  v17 = v0[27];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  sub_1B77AE41C(v0[15], v3, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);
  sub_1B77AE41C(v9, v6, type metadata accessor for UserPresence);
  v10 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v11 = (v4 + *(v7 + 80) + v10) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v0[33] = v12;
  v12[2] = v8;
  v12[3] = v17;
  v12[4] = v2;
  v12[5] = v18;
  v12[6] = v1;
  sub_1B77ADFC8(v3, v12 + v10, type metadata accessor for BankConnectTransactionsDataLoader.DateQuery);
  sub_1B77ADFC8(v6, v12 + v11, type metadata accessor for UserPresence);
  sub_1B77AE558(&qword_1EB992D70, type metadata accessor for BankConnectTaskQueue);

  if (v19)
  {
    swift_getObjectType();
    v13 = sub_1B7800CD8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B77A9E10, v13, v15);
}

uint64_t sub_1B77A9E10()
{
  v2 = v0[32];
  v1 = v0[33];
  v0[2] = v0;
  v0[3] = sub_1B77A9EC8;
  v3 = swift_continuation_init();
  sub_1B7388288(v3, v2, &unk_1B786C500, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B77A9EC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = *(v1 + 256);
    swift_willThrow();
    v4 = sub_1B77AA0B0;
    v5 = v3;
  }

  else
  {

    v4 = sub_1B77A9FFC;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B77A9FFC()
{
  v1 = *(v0 + 176);

  sub_1B77AE484(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B77AA0B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B77AA118, 0, 0);
}

uint64_t sub_1B77AA118()
{
  v1 = *(v0 + 176);

  sub_1B77AE484(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B77AA1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v11 = swift_task_alloc();
  v8[6] = v11;
  *v11 = v8;
  v11[1] = sub_1B738077C;

  return sub_1B77AA28C(v8 + 2, a7, a8);
}

uint64_t sub_1B77AA28C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_1B77FF988();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v4 + 128) = v7;
  *(v4 + 136) = v8;
  *(v4 + 144) = *(a1 + 1);
  *(v4 + 160) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B77AA3A4, 0, 0);
}

uint64_t sub_1B77AA3A4()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v12 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = swift_allocBox();
  *(v0 + 168) = v6;
  *(v0 + 176) = v7;
  (*(v4 + 56))(v7, 1, 1, v3);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  *(v0 + 184) = BankConnectDataLoaderEnvironment.makeBackgroundContext()();
  *(v0 + 16) = v12;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_1B77AA4E4;
  v9 = *(v0 + 80);
  v10 = *(v0 + 72);

  return sub_1B77A5690(v0 + 16, v10, sub_1B77ADF5C, v6, v9);
}

uint64_t sub_1B77AA4E4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_1B77AA698;
  }

  else
  {
    v2 = sub_1B77AA608;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77AA608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77AA698()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);

  swift_beginAccess();
  sub_1B7205588(v1, v4, &qword_1EB98EBD0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1B7205418(*(v0 + 104), &qword_1EB98EBD0);
  }

  else
  {
    v5 = *(v0 + 184);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v17 = *(v0 + 136);
    v8 = *(v0 + 128);
    (*(*(v0 + 120) + 32))(v8, *(v0 + 104), *(v0 + 112));
    v9 = swift_task_alloc();
    *(v9 + 16) = v17;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;
    *(v9 + 48) = v5;
    *(v9 + 56) = v8;
    v10 = swift_task_alloc();
    v10[2] = sub_1B77ADF64;
    v10[3] = v9;
    v10[4] = v5;
    sub_1B7801468();
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 112);

    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 184);
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t BankConnectTransactionsDataLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B77AA93C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return BankConnectTransactionsDataLoader.loadTransactions(for:using:userPresence:)(a1, a2, a3);
}

uint64_t sub_1B77AA9EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return BankConnectTransactionsDataLoader.loadHistoricalTransactions(for:using:userPresence:)(a1, a2, a3);
}

uint64_t sub_1B77AAA9C(uint64_t a1)
{
  v25 = type metadata accessor for RawBankConnectData.Transaction(0);
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = swift_projectBox();
  v13 = v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v21 = v12;
    v22 = v11;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B71FE348(0, v14, 0);
    v15 = v26;
    v16 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    v23 = v6 + 32;
    v24 = v17;
    do
    {
      sub_1B77AE41C(v16, v4, type metadata accessor for RawBankConnectData.Transaction);
      (*(v6 + 16))(v8, &v4[*(v25 + 28)], v5);
      sub_1B77AE484(v4, type metadata accessor for RawBankConnectData.Transaction);
      v26 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B71FE348(v18 > 1, v19 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v19 + 1;
      (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v8, v5);
      v16 += v24;
      --v14;
    }

    while (v14);
    v13 = v21;
    v11 = v22;
  }

  sub_1B77A41E8(v15, v11);

  swift_beginAccess();
  return sub_1B72DFF88(v11, v13);
}

void sub_1B77AAD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedInternalAccount();
  *&v18 = a1;
  *(&v18 + 1) = a2;
  v19 = a3;
  v20 = a4;
  v11 = static ManagedInternalAccount.existingAccount(with:in:)(&v18);
  if (!v5)
  {
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      v14 = sub_1B77FF8B8();
      [v13 setOldestFetchedHistoricalTransactionTimestamp_];
    }

    *&v18 = 0;
    v15 = [a5 save_];
    v16 = v18;
    if ((v15 & 1) == 0)
    {
      v17 = v16;
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

uint64_t sub_1B77AAED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v100 = a5;
  v106 = a4;
  v107 = type metadata accessor for RawBankConnectData.Transaction(0);
  v103 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v104 = (&v88 - v11);
  v105 = sub_1B77FF988();
  v108 = *(v105 - 8);
  v12 = MEMORY[0x1EEE9AC00](v105);
  v101 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v102 = &v88 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v88 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v88 - v22;
  v24 = sub_1B77FEA78();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v88 - v28;
  v98 = a2;
  if (!*(a2 + 16))
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v40 = sub_1B78000B8();
    __swift_project_value_buffer(v40, qword_1EDAF65B0);
    v36 = sub_1B7800098();
    v37 = sub_1B78011B8();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_12;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Skip transactions cleanup. seenTransactionIDs is empty.";
    goto LABEL_11;
  }

  v97 = v20;
  v30 = *(a1 + 16);
  v31 = *a3;
  v32 = a3[1];
  v94 = v27;
  v95 = v31;
  v33 = a3[2];
  v34 = a3[3];
  v96 = v33;
  sub_1B7205588(v106, v23, &qword_1EB992798);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1B7205418(v23, &qword_1EB992798);
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v35 = sub_1B78000B8();
    __swift_project_value_buffer(v35, qword_1EDAF65B0);
    v36 = sub_1B7800098();
    v37 = sub_1B78011B8();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_12;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Skip transactions cleanup. dateInterval is nil.";
LABEL_11:
    _os_log_impl(&dword_1B7198000, v36, v37, v39, v38, 2u);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
LABEL_12:

    return 0;
  }

  v42 = v25;
  v90 = v32;
  (*(v25 + 32))(v29, v23, v24);
  v43 = *(v30 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  v89 = v34;
  if (v43)
  {
    v92 = v42;
    v93 = v29;
    v91 = v24;
    v109 = MEMORY[0x1E69E7CC0];
    sub_1B71FE348(0, v43, 0);
    v45 = v30 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v106 = *(v103 + 72);
    v44 = v109;
    v46 = (v108 + 16);
    v47 = v105;
    do
    {
      sub_1B77AE41C(v45, v9, type metadata accessor for RawBankConnectData.Transaction);
      (*v46)(v18, &v9[*(v107 + 28)], v47);
      sub_1B77AE484(v9, type metadata accessor for RawBankConnectData.Transaction);
      v109 = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1B71FE348(v48 > 1, v49 + 1, 1);
        v44 = v109;
      }

      *(v44 + 16) = v49 + 1;
      (*(v108 + 32))(v44 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v49, v18, v47);
      v45 += v106;
      --v43;
    }

    while (v43);
    v24 = v91;
    v42 = v92;
    v29 = v93;
  }

  else
  {
    v47 = v105;
  }

  v50 = v104;
  sub_1B77A41E8(v44, v104);

  v51 = v108;
  v52 = (*(v108 + 48))(v50, 1, v47);
  v53 = v97;
  if (v52 == 1)
  {
    sub_1B7205418(v50, &qword_1EB98EBD0);
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v54 = sub_1B78000B8();
    __swift_project_value_buffer(v54, qword_1EDAF65B0);
    v55 = sub_1B7800098();
    v56 = sub_1B78011B8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1B7198000, v55, v56, "Skip transactions cleanup. oldestTransaction is nil.", v57, 2u);
      MEMORY[0x1B8CA7A40](v57, -1, -1);
    }

    (*(v42 + 8))(v29, v24);
    return 0;
  }

  (*(v51 + 32))(v97, v50, v47);
  v58 = v102;
  sub_1B77FEA48();
  v59 = sub_1B77FF8D8();
  v61 = v51 + 8;
  v60 = *(v51 + 8);
  v62 = v60(v58, v47);
  if ((v59 & 1) == 0)
  {
    v107 = v61;
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v69 = sub_1B78000B8();
    __swift_project_value_buffer(v69, qword_1EDAF65B0);
    v70 = v101;
    (*(v108 + 16))(v101, v53, v47);
    v71 = *(v42 + 16);
    v72 = v94;
    v93 = v29;
    v71(v94, v29, v24);
    v73 = sub_1B7800098();
    v74 = sub_1B78011B8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v47;
      v76 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v109 = v108;
      *v76 = 136315394;
      sub_1B77AE558(&qword_1EB991200, MEMORY[0x1E6969530]);
      LODWORD(v106) = v74;
      v77 = sub_1B7802068();
      v78 = v24;
      v80 = v79;
      v60(v70, v75);
      v81 = sub_1B71A3EF8(v77, v80, &v109);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2080;
      sub_1B77AE558(&qword_1EB99E1F8, MEMORY[0x1E6968130]);
      v82 = sub_1B7802068();
      v84 = v83;
      v85 = *(v42 + 8);
      v104 = v60;
      v85(v72, v78);
      v86 = sub_1B71A3EF8(v82, v84, &v109);
      v24 = v78;

      *(v76 + 14) = v86;
      _os_log_impl(&dword_1B7198000, v73, v106, "Skip transactions cleanup. Non-terminal transactions aren't fully loaded. oldestTransactionDate: %s, dateInterval: %s", v76, 0x16u);
      v87 = v108;
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v87, -1, -1);
      MEMORY[0x1B8CA7A40](v76, -1, -1);

      v104(v97, v105);
    }

    else
    {

      v85 = *(v42 + 8);
      v85(v72, v24);
      v60(v70, v47);
      v60(v53, v47);
    }

    v85(v93, v24);
    return 0;
  }

  v63 = MEMORY[0x1EEE9AC00](v62);
  v64 = v90;
  *(&v88 - 8) = v95;
  *(&v88 - 7) = v64;
  v65 = v89;
  *(&v88 - 6) = v96;
  *(&v88 - 5) = v65;
  v66 = v99;
  *(&v88 - 4) = v98;
  *(&v88 - 3) = v29;
  v67 = v100;
  *(&v88 - 2) = v100;
  *(&v88 - 1) = v66;
  MEMORY[0x1EEE9AC00](v63);
  *(&v88 - 4) = sub_1B77AE530;
  *(&v88 - 3) = v68;
  *(&v88 - 2) = v67;
  sub_1B7801468();
  v60(v53, v105);
  (*(v42 + 8))(v29, v24);
  return 1;
}

id sub_1B77ABD34(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v23 = a2;
  v24[4] = *MEMORY[0x1E69E9840];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DCD0) + 28);
  if ((*(a1 + *(type metadata accessor for BankConnectResponseHeaders() + 20) + v16 + 2) & 1) == 0)
  {
    v22 = a3;
    type metadata accessor for ManagedInstitution();
    v17 = sub_1B77FF988();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v7 = v6;
    a3 = v22;
    static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
    sub_1B7205418(v15, &qword_1EB98EBD0);
  }

  v18 = *(a1 + 16);
  v24[0] = v23;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  result = ManagedTransactionImporter.insertOrUpdateTransactions(_:with:context:)(v18, v24, a6);
  if (!v7)
  {

    v24[0] = 0;
    if ([a6 save_])
    {
      return v24[0];
    }

    else
    {
      v20 = v24[0];
      sub_1B77FF318();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B77ABF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedTransactionImporter();
  swift_initStackObject();
  ManagedTransactionImporter.init()();
  *&v18 = a1;
  *(&v18 + 1) = a2;
  v19 = a3;
  v20 = a4;
  sub_1B737B18C(&v18, a5, &unk_1F2F47A00, a6, a7);
  if (!v17)
  {
    *&v18 = 0;
    if ([a7 save_])
    {
      v14 = v18;
    }

    else
    {
      v15 = v18;
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

id sub_1B77AC08C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v15[9] = *MEMORY[0x1E69E9840];
  type metadata accessor for BankConnectTransactionsMatcher();
  inited = swift_initStackObject();
  type metadata accessor for ManagedTransactionCategoryImporter();
  *(inited + 16) = swift_initStackObject();
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v16.accountID._countAndFlagsBits = v15;
  v16.accountID._object = a5;
  BankConnectTransactionsMatcher.matchTransactions(for:in:)(v16, v11);

  if (!v13)
  {
    v15[0] = 0;
    if ([a5 save_])
    {
      return v15[0];
    }

    else
    {
      v14 = v15[0];
      sub_1B77FF318();

      return swift_willThrow();
    }
  }

  return result;
}

void sub_1B77AC1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v22 = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedInternalAccount();
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  v13 = static ManagedInternalAccount.existingAccount(with:in:)(&v19);
  if (!v6 && v13)
  {
    if (a6 == 2)
    {
      v14 = 0;
    }

    else
    {
      v15 = v13;
      v14 = sub_1B7801008();
      v13 = v15;
    }

    v16 = v13;
    [v13 setLastTransactionsRefreshFailureValue_];

    *&v19 = 0;
    if ([a5 save_])
    {
      v17 = v19;
    }

    else
    {
      v18 = v19;
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

uint64_t sub_1B77AC304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v51 = a5;
  v56[1] = *MEMORY[0x1E69E9840];
  v13 = sub_1B77FEA78();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedTransactionImporter();
  swift_initStackObject();
  v16 = ManagedTransactionImporter.init()();
  v17 = a1;
  *&v53 = a1;
  *(&v53 + 1) = a2;
  v18 = a2;
  v19 = a3;
  v54 = a3;
  v55 = a4;
  v20 = a4;
  v21 = v52;
  sub_1B737B18C(&v53, v51, &unk_1F2F47A28, a6, a7);
  if (v21)
  {
  }

  v47 = v19;
  v48 = a6;
  v46 = v17;
  v23 = v18;
  v51 = v15;
  v52 = v16;
  v24 = v49;
  v25 = v50;
  *&v53 = 0;
  if (([a7 save_] & 1) == 0)
  {
    v43 = v53;
    sub_1B77FF318();

    swift_willThrow();
  }

  v26 = qword_1EDAF65A8;
  v27 = v53;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = sub_1B78000B8();
  __swift_project_value_buffer(v28, qword_1EDAF65B0);
  v29 = v51;
  v30 = v25;
  (*(v24 + 16))(v51, v48, v25);

  v31 = v20;

  v32 = sub_1B7800098();
  v33 = sub_1B78011F8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v29;
    v35 = swift_slowAlloc();
    v44 = v35;
    v48 = swift_slowAlloc();
    v56[0] = v48;
    *v35 = 136315394;
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    v45 = v33;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    MEMORY[0x1B8CA4D30](v46, v23);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    MEMORY[0x1B8CA4D30](v47, v31);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v36 = sub_1B71A3EF8(v53, *(&v53 + 1), v56);

    v37 = v44;
    *(v44 + 1) = v36;
    *(v37 + 6) = 2080;
    sub_1B77AE558(&qword_1EB99E1F8, MEMORY[0x1E6968130]);
    v38 = sub_1B7802068();
    v40 = v39;
    (*(v24 + 8))(v34, v30);
    v41 = sub_1B71A3EF8(v38, v40, v56);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_1B7198000, v32, v45, "Cleaned up transactions in non-terminal state for account: %s dateInterval: %s", v37, 0x16u);
    v42 = v48;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v42, -1, -1);
    MEMORY[0x1B8CA7A40](v37, -1, -1);
  }

  return (*(v24 + 8))(v29, v30);
}

unint64_t sub_1B77AC7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v63 - v11);
  v13 = sub_1B77FF988();
  v68 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  type metadata accessor for ManagedInternalAccount();
  v70 = a1;
  v71 = a3;
  *&v77 = a1;
  *(&v77 + 1) = a2;
  v20 = a2;
  *&v78 = a3;
  v21 = v73;
  *(&v78 + 1) = v73;
  v22 = v79;
  v23 = static ManagedInternalAccount.existingAccount(with:in:)(&v77);
  v79 = v22;
  if (v22)
  {
    goto LABEL_2;
  }

  v64 = v17;
  v65 = v19;
  v43 = v68;
  v44 = v69;
  v66 = v12;
  if (!v23)
  {
LABEL_28:
    v62 = sub_1B77FEA78();
    return (*(*(v62 - 8) + 56))(v72, 1, 1, v62);
  }

  v67 = v23;
  type metadata accessor for ManagedInternalTransaction();
  *&v77 = v70;
  *(&v77 + 1) = v20;
  *&v78 = v71;
  *(&v78 + 1) = v21;
  LOBYTE(v75) = 1;
  v45 = sub_1B74F0788(&v77, &v75, &unk_1F2F47A50, v44);
  sub_1B76A1EF4();
  v46 = v79;
  result = sub_1B7801498();
  v79 = v46;
  if (!v46)
  {
    if (result >> 62)
    {
      v59 = v45;
      v60 = result;
      v61 = sub_1B7801958();
      result = v60;
      v45 = v59;
      v47 = v13;
      if (v61)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v47 = v13;
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_13:
        if ((result & 0xC000000000000001) != 0)
        {
          v48 = v45;
          v49 = MEMORY[0x1B8CA5DC0](0);
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v48 = v45;
          v49 = *(result + 32);
        }

        v50 = v49;

        v51 = sub_1B7800838();
        v52 = [v50 valueForKeyPath_];

        if (v52)
        {
          sub_1B7801848();

          swift_unknownObjectRelease();
        }

        else
        {

          v75 = 0u;
          v76 = 0u;
        }

        v54 = v65;
        v53 = v66;
        v77 = v75;
        v78 = v76;
        v55 = v64;
        if (*(&v76 + 1))
        {
          v56 = swift_dynamicCast();
          (v43[7])(v53, v56 ^ 1u, 1, v47);
          if ((v43[6])(v53, 1, v47) != 1)
          {
            (v43[4])(v54, v53, v47);
            (v43[2])(v55, v54, v47);
            sub_1B77FEA18();
            v57 = v72;
            sub_1B77FEA28();

            (v43[1])(v54, v47);
            v58 = sub_1B77FEA78();
            return (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
          }

          goto LABEL_27;
        }

LABEL_26:
        sub_1B7205418(&v77, &qword_1EB98FCB0);
        (v43[7])(v53, 1, 1, v47);
LABEL_27:
        sub_1B7205418(v53, &qword_1EB98EBD0);
        goto LABEL_28;
      }
    }

    v77 = 0u;
    v78 = 0u;
    v53 = v66;
    goto LABEL_26;
  }

LABEL_2:
  v74 = 0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v24 = sub_1B78000B8();
  __swift_project_value_buffer(v24, qword_1EDAF65B0);

  v25 = v79;
  v26 = v79;
  v27 = sub_1B7800098();
  v28 = sub_1B78011D8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v75 = v69;
    *v29 = 136315650;
    *&v77 = 0;
    *(&v77 + 1) = 0xE000000000000000;

    LODWORD(v67) = v28;
    sub_1B7801A78();
    v65 = "T@NSDate,N,D,C";
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    v30 = v70;
    MEMORY[0x1B8CA4D30](v70, v20);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    v31 = v71;
    MEMORY[0x1B8CA4D30](v71, v21);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v32 = sub_1B71A3EF8(v77, *(&v77 + 1), &v75);
    v66 = v27;
    v33 = v32;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *&v77 = 0;
    *(&v77 + 1) = 0xE000000000000000;

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, v65 | 0x8000000000000000);
    MEMORY[0x1B8CA4D30](v30, v20);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    MEMORY[0x1B8CA4D30](v31, v21);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v34 = sub_1B71A3EF8(v77, *(&v77 + 1), &v75);

    *(v29 + 14) = v34;
    *(v29 + 22) = 2112;
    v35 = v79;
    v36 = v79;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 24) = v37;
    v38 = v68;
    *v68 = v37;
    v39 = v66;
    _os_log_impl(&dword_1B7198000, v66, v67, "Failed to fetch the oldest non-terminal transaction for account: %s dateQuery: %s error: %@", v29, 0x20u);
    sub_1B7205418(v38, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
    v40 = v69;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v40, -1, -1);
    MEMORY[0x1B8CA7A40](v29, -1, -1);
  }

  else
  {
  }

  v41 = sub_1B77FEA78();
  return (*(*(v41 - 8) + 56))(v72, 1, 1, v41);
}