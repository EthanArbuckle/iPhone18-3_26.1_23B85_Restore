uint64_t sub_1B71D758C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71D7604(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B71D7690()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B71D76E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7800DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1B71D77A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B7800DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71D786C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71D7928(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71D79D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71D7A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71D7A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1B71D7B24(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setLastUpdatedAt_];
}

uint64_t sub_1B71D7BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B71D7CFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71D7E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFAF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B77FFC88();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1B77FFCF8();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1B71D7F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B77FFAF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1B77FFC88();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1B77FFCF8();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

id sub_1B71D80C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 72);
  *a2 = v2;
  return v2;
}

void sub_1B71D80D0(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 72);
  v5 = *a1;

  *(a2 + 72) = v3;
}

uint64_t sub_1B71D810C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B71D81C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A9D0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B71D81F4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A9D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B71D8234()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71D8294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71D8364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

void sub_1B71D8488(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF9B8();
  [v2 setConsentID_];
}

void sub_1B71D84E8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800C18();
  [v2 setFpanIds_];
}

id sub_1B71D8580@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 accountNumberSchemeTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71D85C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountStatusValue];
  *a2 = result;
  return result;
}

id sub_1B71D8618@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 backgroundRefreshUserPreferenceValue];
  *a2 = result;
  return result;
}

id sub_1B71D86E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAccountEnabled];
  *a2 = result;
  return result;
}

id sub_1B71D8728@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAccountSyncable];
  *a2 = result;
  return result;
}

id sub_1B71D8770@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAccountMismatched];
  *a2 = result;
  return result;
}

id sub_1B71D87B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountMatchingTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71D8908@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountRequestAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71D89D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transactionsRequestAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71D8A98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 historicalTransactionsRequestAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71D8BE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionsObject];
  *a2 = result;
  return result;
}

id sub_1B71D8C30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferencesObject];
  *a2 = result;
  return result;
}

id sub_1B71D8C88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountMatchObject];
  *a2 = result;
  return result;
}

id sub_1B71D8CD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicAccountObject];
  *a2 = result;
  return result;
}

id sub_1B71D8D28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transactionObjects];
  *a2 = result;
  return result;
}

id sub_1B71D8D78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 predictedTransactionObjects];
  *a2 = result;
  return result;
}

id sub_1B71D8DC8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountBalanceObjects];
  *a2 = result;
  return result;
}

id sub_1B71D8E18@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 originTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71D8E60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 labRequestObject];
  *a2 = result;
  return result;
}

id sub_1B71D8EB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 thirdPartyShareable];
  *a2 = result;
  return result;
}

id sub_1B71D8EF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preauthorizedPaymentObjects];
  *a2 = result;
  return result;
}

id sub_1B71D8F48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 needsPassLinking];
  *a2 = result;
  return result;
}

id sub_1B71D9010@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 loadingStatusValue];
  *a2 = result;
  return result;
}

void sub_1B71D9098(uint64_t a1@<X8>)
{
  ManagedInternalAccount.accountNumber.getter(v4);
  v2 = v4[1];
  v3 = v5;
  *a1 = v4[0];
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id sub_1B71D9120@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedInternalAccount.backgroundRefreshUserPreference.getter(&v3);
  *a1 = v3;
  return result;
}

id sub_1B71D91C8@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedInternalAccount.originType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1B71D9250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1B71D93B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

id sub_1B71D95DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 merchantAddress];
  *a2 = result;
  return result;
}

uint64_t sub_1B71D962C@<X0>(uint64_t a1@<X8>)
{
  result = ManagedBankMerchantInformationInsight.merchantCategoryCodeValue.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1B71D9758(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1B77FF4F8();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[12];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1B71D9890(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1B77FF4F8();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1B71D9A2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for RawMerchant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1B77FF988();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[11];
LABEL_15:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_16;
  }

  v16 = sub_1B77FF4F8();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[15];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[23];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[24];

  return v20(v21, a2, v19);
}

uint64_t sub_1B71D9CA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for RawMerchant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1B77FF988();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[11];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_1B77FF4F8();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[15];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[23];
    goto LABEL_13;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[24];

  return v20(v21, a2, a2, v19);
}

id sub_1B71D9F94@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 failedAttemptCount];
  *a2 = result;
  return result;
}

uint64_t sub_1B71D9FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1B71DA0B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B71DA184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B71DA2CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71DA408(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71DA4C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71DA574()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71DA6F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71DA734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B71DA868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71DA99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B71DAAB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71DABD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B71DAC28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B71DACF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B71DAE30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71DAFEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B590);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71DB0A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B590);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71DB15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B71DB284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71DB44C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1B77FF988();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[17];

  return v15(v16, a2, v14);
}

uint64_t sub_1B71DB5D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1B77FF988();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[17];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71DB754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71DB884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71DBA1C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[14]];

  return v15(v16, a2, v14);
}

char *sub_1B71DBBAC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[14]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71DBD3C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B71DBE98@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 responseStatusCode];
  *a2 = result;
  return result;
}

uint64_t sub_1B71DBF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_1B77FF988();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1B71DC06C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71DC21C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[17];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[29];

  return v15(v16, a2, v14);
}

uint64_t sub_1B71DC3AC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[17];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[29];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71DC53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B71DC5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = sub_1B77FF988();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B71DC630()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71DC668()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71DC6B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71DC6F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71DC738()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71DC778()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71DC7D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71DC808()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B71DC858@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastConvertedHistoryTransactionID];
  *a2 = result;
  return result;
}

id sub_1B71DC8A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxInsertedHistoryID];
  *a2 = result;
  return result;
}

void sub_1B71DC8FC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B78022B8();
  [v2 setMaxInsertedHistoryID_];
}

uint64_t sub_1B71DC958@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B71DCA10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71DCA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B71DCB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B71DCBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71DCCA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71DCD48()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_1B7703678(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B71DCD94()
{

  sub_1B720A388(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71DCDE4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B71DCE9C()
{
  MEMORY[0x1B8CA7B50](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71DCED4()
{
  v1 = sub_1B78000B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B71DCFB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71DCFF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71DD030()
{
  v1 = sub_1B77FFA18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B71DD0D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1B71DD3F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 amount];
  *a2 = result;
  return result;
}

id sub_1B71DD4C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 foreignAmount];
  *a2 = result;
  return result;
}

id sub_1B71DD558@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 foreignCurrencyExchangeRate];
  *a2 = result;
  return result;
}

id sub_1B71DD5A8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 creditDebitIndicatorValue];
  *a2 = result;
  return result;
}

id sub_1B71DD630@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 merchantCategoryCodeValue];
  *a2 = result;
  return result;
}

id sub_1B71DD678@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 transactionTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71DD6C0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 statusValue];
  *a2 = result;
  return result;
}

double sub_1B71DD76C@<D0>(uint64_t a1@<X8>)
{
  ManagedTransaction.foreignCurrencyAmount.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_1B71DD7B4@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedTransaction.creditDebitIndicator.getter(&v3);
  *a1 = v3;
  return result;
}

id sub_1B71DD804@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 merchantCategoryCodeValue];
  if (v4 < 0)
  {
    result = 0;
  }

  else
  {
    result = [v3 merchantCategoryCodeValue];
  }

  *a2 = result;
  *(a2 + 2) = v4 < 0;
  return result;
}

id sub_1B71DD86C(uint64_t a1, id *a2)
{
  if (*(a1 + 2))
  {
    v2 = -1;
  }

  else
  {
    v2 = *a1;
  }

  return [*a2 setMerchantCategoryCodeValue_];
}

id sub_1B71DD890@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedTransaction.status.getter(&v3);
  *a1 = v3;
  return result;
}

FinanceKit::TransactionType_optional sub_1B71DD8E0@<W0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = TransactionType.init(rawValue:)([*a1 transactionTypeValue]).value;
  v4 = v5;
  if (v5 == 17)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B71DD944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71DDA74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71DDBA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1B71DDBEC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 userSuppressedNotifications];
  *a2 = result;
  return result;
}

id sub_1B71DDC34@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 year];
  *a2 = result;
  return result;
}

id sub_1B71DDC7C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 month];
  *a2 = result;
  return result;
}

id sub_1B71DDCC4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 countOfDashboardItems];
  *a2 = result;
  return result;
}

id sub_1B71DDD0C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 countOfDashboardItemsThatShowAsActive];
  *a2 = result;
  return result;
}

id sub_1B71DDD54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dashboardItems];
  *a2 = result;
  return result;
}

id sub_1B71DDFA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedApplicationObjects];
  *a2 = result;
  return result;
}

id sub_1B71DDFFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 merchant];
  *a2 = result;
  return result;
}

id sub_1B71DE04C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderData];
  *a2 = result;
  return result;
}

id sub_1B71DE0DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusDescription];
  *a2 = result;
  return result;
}

id sub_1B71DE228@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payment];
  *a2 = result;
  return result;
}

id sub_1B71DE278@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 returnInfo];
  *a2 = result;
  return result;
}

id sub_1B71DE2C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 returnObjects];
  *a2 = result;
  return result;
}

id sub_1B71DE458@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 barcode];
  *a2 = result;
  return result;
}

id sub_1B71DE4A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderProviderDisplayName];
  *a2 = result;
  return result;
}

id sub_1B71DE5C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasActiveFulfillment];
  *a2 = result;
  return result;
}

id sub_1B71DE60C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 schemaVersion];
  *a2 = result;
  return result;
}

id sub_1B71DE654@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 statusPriorityValue];
  *a2 = result;
  return result;
}

uint64_t sub_1B71DE6E8@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedECommerceOrderContent.associatedApplications.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71DE748@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedECommerceOrderContent.lineItems.getter();
  *a1 = result;
  return result;
}

id sub_1B71DE7A8@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedECommerceOrderContent.changeNotifications.getter(&v3);
  *a1 = v3;
  return result;
}

id sub_1B71DE7F8@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedECommerceOrderContent.status.getter(&v3);
  *a1 = v3;
  return result;
}

char *sub_1B71DE848@<X0>(char **a1@<X8>)
{
  result = ManagedECommerceOrderContent.fulfillments.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71DE8A0@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedECommerceOrderContent.returns.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71DE900(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF4F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71DE9AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF4F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71DEA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 56);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B71DEB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 56) = a2;
  }

  return result;
}

uint64_t sub_1B71DEBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71DEC84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71DED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71DEDE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71DEE9C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 242)
  {
    v4 = *a1;
    if (v4 <= 0xD)
    {
      v5 = 13;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 13;
    if (v4 >= 0xD)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1B71DEFDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 242)
  {
    *result = a2 + 13;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71DF114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71DF1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B71DF2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B71DF3A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B71DF4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B78006A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71DF588(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1B78006A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71DF634()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71DF67C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B71DF734()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71DF788()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71DF7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71DF900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71DFA30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71DFAA8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

id sub_1B71DFBB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for InternalTransaction(0) + 112));
  *a2 = v3;

  return v3;
}

uint64_t sub_1B71DFBFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1B77FF988();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[19];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[20];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA00);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[21];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[23];

  return v19(v20, a2, v18);
}

uint64_t sub_1B71DFE28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1B77FF988();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[19];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[20];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA00);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[21];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[23];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1B71E0070@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedFoundInTransactionInsight.mailItems.getter();
  *a1 = result;
  return result;
}

void sub_1B71E00A4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setId_];
}

id sub_1B71E020C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountObject];
  *a2 = result;
  return result;
}

void sub_1B71E0260(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setTransactionId_];
}

id sub_1B71E02C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isTransactionIDStable];
  *a2 = result;
  return result;
}

id sub_1B71E038C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sourceValue];
  *a2 = result;
  return result;
}

id sub_1B71E03D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionsObject];
  *a2 = result;
  return result;
}

id sub_1B71E044C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 weekOfMonth];
  *a2 = result;
  return result;
}

id sub_1B71E0494@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 day];
  *a2 = result;
  return result;
}

id sub_1B71E04E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 insightsObject];
  *a2 = result;
  return result;
}

id sub_1B71E0534@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transactionCategoryObject];
  *a2 = result;
  return result;
}

id sub_1B71E0584@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasNotificationServiceData];
  *a2 = result;
  return result;
}

id sub_1B71E05CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isVisible];
  *a2 = result;
  return result;
}

id sub_1B71E079C@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedInternalTransaction.source.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1B71E08A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BankConnectWebServiceAccountsRequest.ConsentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = type metadata accessor for UserPresence();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1B71E09DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BankConnectWebServiceAccountsRequest.ConsentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for UserPresence();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71E0B10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for BankConnectConsent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1B77FF988();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = type metadata accessor for UserPresence();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_1B71E0CDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for BankConnectConsent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1B77FF988();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = type metadata accessor for UserPresence();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1B71E0EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Consent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71E0F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Consent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71E0F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TransactionTagQuery.Tag(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B71E10AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TransactionTagQuery.Tag(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B71E11C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1B71E1378@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMismatched];
  *a2 = result;
  return result;
}

uint64_t sub_1B71E1454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B71E152C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_1B71E15F8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setPaymentDate_];
}

id sub_1B71E1654@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 amountValue];
  *a2 = result;
  return result;
}

void sub_1B71E16A8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setCurrency_];
}

uint64_t sub_1B71E1714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF4F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71E17C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF4F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71E1868()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B71E18D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B71E1930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RawBankConnectData.Consent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FinanceNetworkError();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B71E1A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RawBankConnectData.Consent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FinanceNetworkError();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B71E1B1C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71E1B70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B71E1C54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B71E1CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1B77FF988();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71E1E1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1B77FF988();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71E1F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B71E2068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B71E2174(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for InternalTransaction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B77FFA18();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E210);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1B71E22D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for InternalTransaction(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1B77FFA18();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99E210);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B71E247C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 32);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1B77FF988();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[16];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[17];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1B71E2600(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 32) = (a2 - 1);
    return result;
  }

  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[16];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[17];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B71E2798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71E2844(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71E28E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B77FF988();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1B77FED28();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1B71E2A18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1B77FED28();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71E2B3C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71E2B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71E2C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B71E2D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B78004C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1B77FF988();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1B71E2E5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1B78004C8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1B77FF988();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1B71E2FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RawBankConnectData.AccountBalances(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71E310C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for RawBankConnectData.AccountBalances(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71E323C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_1B71E33C0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71E3544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71E35BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71E3638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71E36E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71E381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71E38C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71E39D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71E3A08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71E3A44()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71E3AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB78);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71E3B28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EB78);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B71E3BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC50);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71E3C30(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EC50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

id sub_1B71E3CCC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 rawValue];
  *a2 = result;
  return result;
}

uint64_t sub_1B71E3D14()
{
  sub_1B720A388(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71E3D4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71E3D9C()
{
  v1 = sub_1B7801C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1B7801C28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 17) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1B71E3F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71E3F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

FinanceKit::CascadeExtractedOrder::ShippingFulfillment::Status_optional sub_1B71E4000@<W0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)([*a1 statusValue]).value;
  v4 = v5;
  if (v5 == 10)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id sub_1B71E43E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipientAddress];
  *a2 = result;
  return result;
}

id sub_1B71E4434@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

uint64_t sub_1B71E4648@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedCloudAccountMatch.isMismatched.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71E469C@<X0>(uint64_t a1@<X8>)
{
  result = ManagedCloudAccountMatch.ckSchemaVersion.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1B71E4708(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1B77FF988();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[12];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1B71E488C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[12];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B71E4A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B71E4AD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71E4C44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B71E4C5C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *sub_1B71E4C94(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CurrencyAmount(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B71E4D6C()
{
  if (*v0)
  {
    return 0x6D754E726564726FLL;
  }

  else
  {
    return 0x496567617373656DLL;
  }
}

uint64_t sub_1B71E4DF0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1B71E4E04(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t FKCombinedHash(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FKCombinedHash_block_invoke;
  v6[3] = &unk_1E7CAA000;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1B71E8948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FKCombinedHash_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) = result - v3 + 32 * v3;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

char *FKSetCrashLogSignatureString(void *a1)
{
  v1 = a1;
  v2 = malloc_type_malloc([v1 length] + 1, 0xBC8AA18EuLL);
  v3 = [v1 UTF8String];
  v4 = [v1 length];

  return strncpy(v2, v3, v4 + 1);
}

uint64_t FKEqualObjects(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return a1 == a2;
  }
}

id FKHardwarePlatform()
{
  v0 = MGGetStringAnswer();

  return v0;
}

id FKProductType()
{
  v0 = MGGetStringAnswer();

  return v0;
}

id FKProductName()
{
  v0 = MGGetStringAnswer();

  return v0;
}

id FKProductVersion()
{
  v0 = MGGetStringAnswer();

  return v0;
}

id FKBuildVersion()
{
  v0 = MGGetStringAnswer();

  return v0;
}

uint64_t BackgroundDeliveryRegistration.lastDeliveryDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundDeliveryRegistration() + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BackgroundDeliveryRegistration()
{
  result = qword_1EB98EC50;
  if (!qword_1EB98EC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BackgroundDeliveryRegistration.lastDeliveryDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BackgroundDeliveryRegistration() + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BackgroundDeliveryRegistration.updateFrequency.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BackgroundDeliveryRegistration();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t BackgroundDeliveryRegistration.updateFrequency.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BackgroundDeliveryRegistration();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t BackgroundDeliveryRegistration.deliverySequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for BackgroundDeliveryRegistration();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t BackgroundDeliveryRegistration.scheduleSequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for BackgroundDeliveryRegistration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t BackgroundDeliveryRegistration.bundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BackgroundDeliveryRegistration() + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t BackgroundDeliveryRegistration.bundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for BackgroundDeliveryRegistration() + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t BackgroundDeliveryRegistration.nextDeliveryDate.getter()
{
  type metadata accessor for BackgroundDeliveryRegistration();

  return sub_1B77FF8E8();
}

uint64_t BackgroundDeliveryRegistration.init(dataType:lastDeliveryDate:updateFrequency:deliverySequenceNumber:scheduleSequenceNumber:bundleIdentifier:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, _BYTE *a7@<X8>)
{
  v11 = *a3;
  v12 = *a6;
  v13 = a6[1];
  *a7 = *a1;
  v14 = type metadata accessor for BackgroundDeliveryRegistration();
  v15 = v14[5];
  v16 = sub_1B77FF988();
  result = (*(*(v16 - 8) + 32))(&a7[v15], a2, v16);
  a7[v14[6]] = v11;
  *&a7[v14[7]] = a4;
  *&a7[v14[8]] = a5;
  v18 = &a7[v14[9]];
  *v18 = v12;
  v18[1] = v13;
  return result;
}

uint64_t _s10FinanceKit0A5StoreC15UpdateFrequencyO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t sub_1B71F070C()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B71F0750()
{
  v1 = *v0;
  v2 = 0x6570795461746164;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000010;
  if (v1 == 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x7246657461647075;
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

uint64_t sub_1B71F0824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B71F2964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B71F0858(uint64_t a1)
{
  v2 = sub_1B71F2658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B71F0894(uint64_t a1)
{
  v2 = sub_1B71F2658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BackgroundDeliveryRegistration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B71F2658();
  sub_1B78023F8();
  LOBYTE(v14) = *v3;
  v16 = 0;
  sub_1B71F26AC();
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for BackgroundDeliveryRegistration();
    LOBYTE(v14) = 1;
    sub_1B77FF988();
    sub_1B71A6F0C(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    LOBYTE(v14) = v3[*(v9 + 24)];
    v16 = 2;
    sub_1B71F2700();
    sub_1B7801FC8();
    LOBYTE(v14) = 3;
    sub_1B7801FF8();
    LOBYTE(v14) = 4;
    sub_1B7801FF8();
    v10 = &v3[*(v9 + 36)];
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 5;
    sub_1B71F2754();

    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BackgroundDeliveryRegistration.hash(into:)()
{
  MEMORY[0x1B8CA6620](*v0);
  v1 = type metadata accessor for BackgroundDeliveryRegistration();
  sub_1B77FF988();
  sub_1B71A6F0C(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](v0[v1[6]]);
  MEMORY[0x1B8CA6660](*&v0[v1[7]]);
  MEMORY[0x1B8CA6660](*&v0[v1[8]]);

  return sub_1B7800798();
}

uint64_t BackgroundDeliveryRegistration.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](*v0);
  v1 = type metadata accessor for BackgroundDeliveryRegistration();
  sub_1B77FF988();
  sub_1B71A6F0C(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](v0[v1[6]]);
  MEMORY[0x1B8CA6660](*&v0[v1[7]]);
  MEMORY[0x1B8CA6660](*&v0[v1[8]]);
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t BackgroundDeliveryRegistration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v19 = sub_1B77FF988();
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBC0);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v16 - v5;
  v7 = type metadata accessor for BackgroundDeliveryRegistration();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B71F2658();
  v10 = v21;
  sub_1B78023C8();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = a1;
  v11 = v18;
  v12 = v19;
  v24 = 0;
  sub_1B71F27A8();
  sub_1B7801E48();
  *v9 = v22;
  LOBYTE(v22) = 1;
  sub_1B71A6F0C(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801E48();
  (*(v17 + 32))(&v9[v7[5]], v4, v12);
  v24 = 2;
  sub_1B71F27FC();
  sub_1B7801E48();
  v9[v7[6]] = v22;
  LOBYTE(v22) = 3;
  *&v9[v7[7]] = sub_1B7801E78();
  LOBYTE(v22) = 4;
  *&v9[v7[8]] = sub_1B7801E78();
  v24 = 5;
  sub_1B71F2850();
  sub_1B7801E48();
  (*(v11 + 8))(v6, v20);
  v13 = v23;
  v14 = &v9[v7[9]];
  *v14 = v22;
  v14[1] = v13;
  sub_1B71F28A4(v9, v16);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1B71F2908(v9);
}

uint64_t sub_1B71F11EC(uint64_t a1, int *a2)
{
  MEMORY[0x1B8CA6620](*v2);
  sub_1B77FF988();
  sub_1B71A6F0C(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](v2[a2[6]]);
  MEMORY[0x1B8CA6660](*&v2[a2[7]]);
  MEMORY[0x1B8CA6660](*&v2[a2[8]]);

  return sub_1B7800798();
}

uint64_t sub_1B71F12D0(uint64_t a1, int *a2)
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](*v2);
  sub_1B77FF988();
  sub_1B71A6F0C(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](v2[a2[6]]);
  MEMORY[0x1B8CA6660](*&v2[a2[7]]);
  MEMORY[0x1B8CA6660](*&v2[a2[8]]);
  sub_1B7800798();
  return sub_1B7802368();
}

void BackgroundDeliveryRegistration.init(_:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 dataTypeValue];
  v5 = sub_1B7800868();
  v7 = v6;

  FinanceStore.BackgroundDataType.init(from:)(v5, v7, &v17);
  *a2 = v17;
  v8 = [a1 lastDeliveryDate];
  v9 = type metadata accessor for BackgroundDeliveryRegistration();
  sub_1B77FF928();

  ManagedBackgroundDeliveryRegistration.updateFrequency.getter(&v16);
  a2[v9[6]] = v16;
  *&a2[v9[7]] = [a1 deliverySequenceNumber];
  *&a2[v9[8]] = [a1 scheduleSequenceNumber];
  v10 = [a1 application];
  v11 = [v10 identifier];

  v12 = sub_1B7800868();
  v14 = v13;

  v15 = &a2[v9[9]];
  *v15 = v12;
  v15[1] = v14;
}

uint64_t sub_1B71F1548(uint64_t a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t Array<A>.earliestNextDeliveryDate.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for BackgroundDeliveryRegistration();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = (&v61 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBC8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v61 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v61 - v23;
  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v63 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v61 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v72 = &v61 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v66 = &v61 - v33;
  v67 = a1;
  v76 = *(a1 + 16);
  if (v76)
  {
    sub_1B71F28A4(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v18);
    v34 = *(v4 + 56);
    v35 = v4;
    v36 = 1;
    v75 = v34;
    v34(v18, 0, 1, v3);
  }

  else
  {
    v75 = *(v4 + 56);
    v75(v18, 1, 1, v3);
    v35 = v4;
    v36 = 0;
  }

  sub_1B71F317C(v18, v16);
  v65 = v35;
  v73 = *(v35 + 48);
  v74 = v35 + 48;
  if (v73(v16, 1, v3) == 1)
  {
    v37 = v78;
    v77 = *(v25 + 56);
    v77(v78, 1, 1, v24);
    swift_bridgeObjectRetain_n();
    v38 = v66;
    v39 = v62;
  }

  else
  {
    v40 = v77;
    sub_1B71F3254(v16, v77);
    swift_bridgeObjectRetain_n();
    v41 = v72;
    sub_1B77FF8E8();
    v37 = v78;
    (*(v25 + 32))(v78, v41, v24);
    v42 = v40;
    v39 = v62;
    sub_1B71F2908(v42);
    v77 = *(v25 + 56);
    v77(v37, 0, 1, v24);
    v38 = v66;
  }

  v71 = *(v25 + 48);
  v72 = (v25 + 48);
  if (v71(v37, 1, v24) == 1)
  {

    sub_1B71F31EC(v37);
    v77(v39, 1, 1, v24);
  }

  v44 = *(v25 + 32);
  v43 = v25 + 32;
  v78 = v44;
  v69 = v43;
  result = (v44)(v38, v37, v24);
  v68 = v65 + 56;
  v70 = v43 + 24;
  v46 = (v43 - 24);
  while (1)
  {
    if (v36 == v76)
    {
      v47 = 1;
      v36 = v76;
      goto LABEL_16;
    }

    if (v36 >= v76)
    {
      break;
    }

    result = sub_1B71F28A4(v67 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v36, v13);
    if (__OFADD__(v36++, 1))
    {
      goto LABEL_24;
    }

    v47 = 0;
LABEL_16:
    v49 = 1;
    v75(v13, v47, 1, v3);
    v50 = v79;
    sub_1B71F317C(v13, v79);
    if (v73(v50, 1, v3) != 1)
    {
      v51 = v64;
      sub_1B71F3254(v79, v64);
      v52 = v30;
      v53 = v3;
      v54 = v13;
      v55 = v63;
      sub_1B77FF8E8();
      v56 = v55;
      v13 = v54;
      v3 = v53;
      v30 = v52;
      v38 = v66;
      (v78)(v22, v56, v24);
      sub_1B71F2908(v51);
      v49 = 0;
    }

    v77(v22, v49, 1, v24);
    if (v71(v22, 1, v24) == 1)
    {

      sub_1B71F31EC(v22);
      v60 = v62;
      (v78)(v62, v38, v24);
      v77(v60, 0, 1, v24);
    }

    v57 = v78;
    (v78)(v30, v22, v24);
    sub_1B71A6F0C(&qword_1EB98EBD8, MEMORY[0x1E6969530]);
    v58 = sub_1B78007E8();
    v59 = *v46;
    if (v58)
    {
      v59(v38, v24);
      result = (v57)(v38, v30, v24);
    }

    else
    {
      result = (v59)(v30, v24);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B71F1E18()
{
  sub_1B78022F8();
  swift_getWitnessTable();
  sub_1B77FFDE8();
  return sub_1B7802368();
}

uint64_t sub_1B71F1E80(uint64_t a1, id *a2)
{
  result = sub_1B7800848();
  *a2 = 0;
  return result;
}

uint64_t sub_1B71F1EF8@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7800868();
  v2 = sub_1B7800838();

  *a1 = v2;
  return result;
}

uint64_t sub_1B71F1F3C()
{
  v0 = sub_1B7800868();
  v1 = MEMORY[0x1B8CA4DB0](v0);

  return v1;
}

uint64_t sub_1B71F1F78()
{
  sub_1B7800868();
  sub_1B7800798();
}

uint64_t sub_1B71F1FCC()
{
  sub_1B7800868();
  sub_1B78022F8();
  sub_1B7800798();
  v0 = sub_1B7802368();

  return v0;
}

uint64_t sub_1B71F2040()
{
  swift_getWitnessTable();

  return sub_1B77FFDD8();
}

uint64_t sub_1B71F20AC()
{
  v0 = sub_1B7800868();
  v2 = v1;
  if (v0 == sub_1B7800868() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B78020F8();
  }

  return v5 & 1;
}

uint64_t sub_1B71F2134(uint64_t a1)
{
  v2 = sub_1B71A6F0C(&qword_1EB98F038, type metadata accessor for URLResourceKey);
  v3 = sub_1B71A6F0C(&qword_1EB98F040, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B71F21F0(uint64_t a1)
{
  v2 = sub_1B71A6F0C(&qword_1EB98F028, type metadata accessor for CIContextOption);
  v3 = sub_1B71A6F0C(&qword_1EB98F030, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B71F22AC(uint64_t a1)
{
  v2 = sub_1B71A6F0C(&qword_1EDAF6468, type metadata accessor for NSPersistentHistoryTrackingOptionKey);
  v3 = sub_1B71A6F0C(&qword_1EB98F020, type metadata accessor for NSPersistentHistoryTrackingOptionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B71F2368(uint64_t a1)
{
  v2 = sub_1B71A6F0C(&qword_1EB98F0E8, type metadata accessor for ODIAttributeKey);
  v3 = sub_1B71A6F0C(&qword_1EB98F0F0, type metadata accessor for ODIAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B71F2424@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B7800838();

  *a1 = v2;
  return result;
}

uint64_t sub_1B71F246C(uint64_t a1)
{
  v2 = sub_1B71A6F0C(&qword_1EB98F0F8, type metadata accessor for FileAttributeKey);
  v3 = sub_1B71A6F0C(&qword_1EB98F100, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t _s10FinanceKit30BackgroundDeliveryRegistrationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BackgroundDeliveryRegistration();
  if ((sub_1B77FF918() & 1) == 0 || a1[v4[6]] != a2[v4[6]] || *&a1[v4[7]] != *&a2[v4[7]] || *&a1[v4[8]] != *&a2[v4[8]])
  {
    return 0;
  }

  v5 = v4[9];
  v6 = *&a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = &a2[v5];
  if (v6 == *v8 && v7 == *(v8 + 1))
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B71F2658()
{
  result = qword_1EB98EBB0;
  if (!qword_1EB98EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98EBB0);
  }

  return result;
}

unint64_t sub_1B71F26AC()
{
  result = qword_1EDAF9070;
  if (!qword_1EDAF9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9070);
  }

  return result;
}

unint64_t sub_1B71F2700()
{
  result = qword_1EDAF9088[0];
  if (!qword_1EDAF9088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAF9088);
  }

  return result;
}

unint64_t sub_1B71F2754()
{
  result = qword_1EDAF89A0;
  if (!qword_1EDAF89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF89A0);
  }

  return result;
}

unint64_t sub_1B71F27A8()
{
  result = qword_1EDAF9060;
  if (!qword_1EDAF9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9060);
  }

  return result;
}

unint64_t sub_1B71F27FC()
{
  result = qword_1EDAF9078;
  if (!qword_1EDAF9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9078);
  }

  return result;
}

unint64_t sub_1B71F2850()
{
  result = qword_1EDAF8990;
  if (!qword_1EDAF8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF8990);
  }

  return result;
}

uint64_t sub_1B71F28A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundDeliveryRegistration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B71F2908(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundDeliveryRegistration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B71F2964(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7874EA0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7246657461647075 && a2 == 0xEF79636E65757165 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7874EC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7874EE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7874F00 == a2)
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

uint64_t sub_1B71F2B74(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundDeliveryRegistration();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v38 - v6;
  v7 = MEMORY[0x1E69E7CC8];
  v46 = MEMORY[0x1E69E7CC8];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v40 = *(v5 + 80);
  v9 = *(v5 + 72);
  v43 = (v40 + 32) & ~v40;
  v10 = a1 + v43;
  v39 = xmmword_1B7807CD0;
  v41 = v2;
  v42 = v9;
  while (1)
  {
    v13 = v45;
    sub_1B71F28A4(v10, v45);
    v14 = v2;
    v15 = (v13 + *(v2 + 36));
    v17 = *v15;
    v16 = v15[1];

    v19 = sub_1B724548C(v17, v16);
    v20 = v7[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v7[3] < v22)
    {
      sub_1B724744C(v22, 1);
      v7 = v46;
      v24 = sub_1B724548C(v17, v16);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {

      v26 = v7[7];
      sub_1B71F3254(v45, v44);
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1B723E158(0, v27[2] + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1B723E158(v29 > 1, v30 + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v27[2] = v30 + 1;
      v11 = v27 + v43 + v30 * v42;
      v12 = v42;
      sub_1B71F3254(v44, v11);
      v2 = v41;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F048);
      v31 = v43;
      v32 = swift_allocObject();
      *(v32 + 16) = v39;
      sub_1B71F3254(v45, v32 + v31);
      v7[(v19 >> 6) + 8] |= 1 << v19;
      v33 = (v7[6] + 16 * v19);
      *v33 = v17;
      v33[1] = v16;
      *(v7[7] + 8 * v19) = v32;
      v34 = v7[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      v7[2] = v36;
      v12 = v42;
      v2 = v14;
    }

    v10 += v12;
    if (!--v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}

uint64_t sub_1B71F2E90(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundDeliveryRegistration();
  v3 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1E69E7CC8];
  v42 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_1B7807CD0;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_1B71F28A4(v11, v7);
    v15 = v7[*(v2 + 24)];
    v17 = sub_1B726359C(v15);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_1B72476F4(v20, 1);
      v8 = v42;
      v22 = sub_1B726359C(v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_1B71F3254(v7, v41);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1B723E158(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1B723E158(v27 > 1, v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_1B71F3254(v41, v13);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F048);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_1B71F3254(v7, v30 + v29);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}

uint64_t sub_1B71F317C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B71F31EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B71F3254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundDeliveryRegistration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B71F3328()
{
  result = sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B71F33FC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t _s12DoubleStringVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12DoubleStringVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BankConnectNotificationEventTypes(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BankConnectNotificationEventTypes(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BackgroundDeliveryRegistration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundDeliveryRegistration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B71F3790()
{
  result = qword_1EB98EFA8;
  if (!qword_1EB98EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98EFA8);
  }

  return result;
}

unint64_t sub_1B71F3B00()
{
  result = qword_1EB98F008;
  if (!qword_1EB98F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F008);
  }

  return result;
}

unint64_t sub_1B71F3B58()
{
  result = qword_1EB98F010;
  if (!qword_1EB98F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F010);
  }

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

void sub_1B71F3E80(uint64_t a1, unint64_t *a2)
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

uint64_t static AccountInstitutionKey.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (sub_1B78020F8()) && v2 == v4 && v3 == v5)
  {
    return 0;
  }

  return sub_1B78020F8();
}

uint64_t AccountInstitutionKey.institutionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccountInstitutionKey.institutionName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static AccountInstitutionKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t AccountInstitutionKey.hash(into:)()
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t AccountInstitutionKey.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B71F4190()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B71F41F8()
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t sub_1B71F4248()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B71F42AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (sub_1B78020F8()) && v2 == v4 && v3 == v5)
  {
    return 0;
  }

  return sub_1B78020F8();
}

BOOL sub_1B71F4378(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2] == a1[2] && a2[3] == a1[3];
  if (v6 || (sub_1B78020F8()) && (v4 == v2 ? (v7 = v5 == v3) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return (v8 & 1) == 0;
}

BOOL sub_1B71F442C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (sub_1B78020F8()) && (v2 == v4 ? (v7 = v3 == v5) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return (v8 & 1) == 0;
}

uint64_t sub_1B71F44E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2] == a1[2] && a2[3] == a1[3];
  if (v6 || (sub_1B78020F8()) && v4 == v2 && v5 == v3)
  {
    return 0;
  }

  return sub_1B78020F8();
}

uint64_t _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t sub_1B71F4650@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B7205180;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B71B6A14(v4);
}

uint64_t sub_1B71F46E4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B7205158;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  sub_1B71B6A14(v3);
  return sub_1B71F4844(v8);
}

uint64_t PrivacySettingsStoreCoordinator.updateHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_1B71B6A14(v1);
  return v1;
}

uint64_t PrivacySettingsStoreCoordinator.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_1B71F4844(v5);
}

uint64_t sub_1B71F4844(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *PrivacySettingsStoreCoordinator.init()()
{
  v1 = v0;
  v2 = type metadata accessor for CoreDataStoreConfiguration(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-v6];
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 32) = sub_1B7800868();
  *(inited + 40) = v9;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = sub_1B7800868();
  *(inited + 88) = v10;
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = 0xD000000000000028;
  *(inited + 104) = 0x80000001B7874E50;
  v11 = sub_1B72018E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
  swift_arrayDestroy();
  if (qword_1EDAFCB50 != -1)
  {
    swift_once();
  }

  v12 = sub_1B77FF4F8();
  v13 = __swift_project_value_buffer(v12, qword_1EDAFCB58);
  (*(*(v12 - 8) + 16))(v7, v13, v12);
  v14 = type metadata accessor for CoreDataStoreClientConfiguration(0);
  v7[*(v14 + 20)] = 0;
  *&v7[*(v14 + 24)] = v11;
  swift_storeEnumTagMultiPayload();
  sub_1B72053B0(v7, v5, type metadata accessor for CoreDataStoreConfiguration);
  type metadata accessor for CoreDataStore();
  swift_allocObject();
  v15 = CoreDataStore.init(configuration:)(v5);
  v1[2] = v15;
  v1[6] = [*(v15 + 2) newBackgroundContext];
  sub_1B71F4C08();
  sub_1B7205478(v7, type metadata accessor for CoreDataStoreConfiguration);
  return v1;
}

void sub_1B71F4C08()
{
  v1 = v0;
  if (*(v0 + 48))
  {
    v2 = NSManagedObjectContext.localStore.getter();
    if (v2)
    {
      v3 = v2;
      v4 = [*(*(v1 + 16) + 16) persistentStoreCoordinator];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1B7807CD0;
      *(v5 + 56) = sub_1B7205540(0, &qword_1EDAFC540);
      *(v5 + 32) = v3;
      v6 = v3;
      v7 = sub_1B7800C18();

      v8 = [v4 currentPersistentHistoryTokenFromStores_];

      v9 = *(v1 + 40);
      *(v1 + 40) = v8;

      v10 = [objc_opt_self() defaultCenter];
      [v10 addObserver:v1 selector:sel_didChange_ name:*MEMORY[0x1E695D420] object:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t PrivacySettingsStoreCoordinator.modifyLinking(accountID:bundleID:linked:since:completion:)(void (*a1)(uint64_t, uint64_t, uint64_t), void (**a2)(uint64_t, uint64_t, uint64_t), int a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v53 = a1;
  v54 = a4;
  v56 = a3;
  v10 = sub_1B77FFA18();
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_1B78000B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  result = MEMORY[0x1EEE9AC00](v18);
  v22 = &v44 - v21;
  v23 = *(v6 + 48);
  if (v23)
  {
    v45 = v20;
    v46 = v14;
    v47 = v10;
    v49 = a5;
    v50 = a6;
    v24 = a2[1];
    v55 = *a2;
    v57 = v24;
    v25 = v23;
    v26 = sub_1B7800838();
    [v25 setTransactionAuthor_];

    v27 = qword_1EDAF65A8;
    v28 = v25;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v15, qword_1EDAF65B0);
    v30 = *(v16 + 16);
    v48 = v29;
    v44 = v30;
    v31 = (v30)(v22);
    v32 = MEMORY[0x1EEE9AC00](v31);
    *(&v44 - 8) = v53;
    *(&v44 - 7) = v28;
    *(&v44 - 6) = v22;
    *(&v44 - 40) = v56 & 1;
    v33 = v55;
    *(&v44 - 4) = v54;
    *(&v44 - 3) = v33;
    *(&v44 - 2) = v57;
    MEMORY[0x1EEE9AC00](v32);
    *(&v44 - 4) = sub_1B7201A10;
    *(&v44 - 3) = v34;
    *(&v44 - 2) = v28;
    sub_1B7801468();

    (*(v16 + 8))(v22, v15);
    v35 = sub_1B7800DF8();
    v36 = v46;
    (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
    v37 = v45;
    v44(v45, v48, v15);
    v38 = (*(v16 + 80) + 56) & ~*(v16 + 80);
    v39 = swift_allocObject();
    *(v39 + 2) = 0;
    *(v39 + 3) = 0;
    v40 = v55;
    *(v39 + 4) = v28;
    *(v39 + 5) = v40;
    *(v39 + 6) = v57;
    (*(v16 + 32))(&v39[v38], v37, v15);
    v41 = &v39[(v17 + v38 + 7) & 0xFFFFFFFFFFFFFFF8];
    v42 = v50;
    *v41 = v49;
    *(v41 + 1) = v42;
    v43 = v28;

    sub_1B71F7940(0, 0, v36, &unk_1B7808CB8, v39);

    return sub_1B7205418(v36, &unk_1EB99C280);
  }

  return result;
}

void sub_1B71F54AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v53 = a6;
  v54 = a3;
  v56 = a5;
  LODWORD(v55) = a4;
  v9 = sub_1B77FFA18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - v14;
  started = type metadata accessor for AccountStartDate();
  MEMORY[0x1EEE9AC00](started);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInternalAccount();
  v19 = static ManagedInternalAccount.existingAccount(withPublicAccountID:in:)();
  if (!v7)
  {
    v20 = v56;
    v51 = v18;
    v52 = v9;
    v21 = v59;
    if (v19)
    {
      if (v55)
      {
        v54 = 0;
        v55 = v19;
        sub_1B7205588(v56, v15, &qword_1EB98EBD0);
        v22 = sub_1B77FF988();
        v23 = (*(*(v22 - 8) + 48))(v20, 1, v22) == 1;
        v24 = v51;
        sub_1B7205340(v15, v51);
        *(v24 + *(started + 20)) = v23;
        if (qword_1EDAFB7C0 != -1)
        {
          swift_once();
        }

        v56 = qword_1EDAFB7C8;
        v57 = v53;
        v58 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6C0);
        v25 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6C8) - 8);
        v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1B7807CD0;
        v28 = v27 + v26;
        v29 = v25[14];
        (*(v10 + 16))(v28, a1, v52);
        sub_1B72053B0(v24, v28 + v29, type metadata accessor for AccountStartDate);
        v30 = sub_1B7202208(v27);
        swift_setDeallocating();
        sub_1B7205418(v28, &qword_1EB98F6C8);
        swift_deallocClassInstance();
        v31.rawValue._countAndFlagsBits = &v57;
        v31.rawValue._object = v30;
        FinanceStore.insertOrUpdateApplication(with:for:updateSharingStartDate:)(v31, 1, v32);
        sub_1B7205478(v24, type metadata accessor for AccountStartDate);
      }

      else
      {
        v44 = v19;
        v45 = v53;
        if (qword_1EDAFB7C0 != -1)
        {
          swift_once();
          v45 = v53;
        }

        v57 = v45;
        v58 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2F8);
        v46 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1B7807CD0;
        v48 = [v44 publicAccountObject];
        v49 = [v48 id];

        sub_1B77FF9E8();
        v50 = sub_1B723AF4C(v47);
        swift_setDeallocating();
        (*(v10 + 8))(v47 + v46, v52);
        swift_deallocClassInstance();
        FinanceStore.removeApplication(with:for:onlyForExistingAccounts:)(&v57, v50, 1);
      }
    }

    else
    {
      v33 = v10;
      v34 = v52;
      (*(v10 + 16))(v12, a1, v52);
      v35 = sub_1B7800098();
      v36 = sub_1B78011D8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136315138;
        sub_1B72051A8(&qword_1EB98F120, MEMORY[0x1E69695A8]);
        v39 = sub_1B7802068();
        v40 = v34;
        v42 = v41;
        (*(v33 + 8))(v12, v40);
        v43 = sub_1B71A3EF8(v39, v42, &v57);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_1B7198000, v35, v36, "Unable to obtain managedInternalAccount for accountID %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1B8CA7A40](v38, -1, -1);
        MEMORY[0x1B8CA7A40](v37, -1, -1);
      }

      else
      {

        (*(v33 + 8))(v12, v34);
      }
    }
  }
}

uint64_t sub_1B71F5B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = *(type metadata accessor for InternalAccount() - 8);
  v8[9] = swift_task_alloc();
  v9 = sub_1B77FFA18();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B71F5C84, 0, 0);
}

uint64_t sub_1B71F5C84()
{
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1B71F5D48;

  return FinanceStore.allAccountsByInstitutionKey()();
}

uint64_t sub_1B71F5D48(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {

    v4 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B71F5EB0, 0, 0);
}

uint64_t sub_1B71F5EB0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v35 = *(v0 + 64);
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v47 = MEMORY[0x1E69E7CD0];
  v7 = (63 - v5) >> 6;
  v8 = (v2 + 16);
  v45 = *(v0 + 88);
  v42 = (v2 + 8);
  v39 = *(v0 + 128);

  v10 = 0;
  v37 = v7;
  v38 = v3;
  v36 = v8;
  while (v6)
  {
LABEL_10:
    v40 = v10;
    v41 = v6;
    v12 = *(*(v39 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
    v13 = *(v12 + 16);
    if (!v13)
    {

      v14 = MEMORY[0x1E69E7CC0];
      v23 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v23)
      {
        goto LABEL_4;
      }

LABEL_18:
      v24 = v14 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v44 = *(v45 + 72);
      v25 = *(v45 + 16);
      do
      {
        v26 = *(v0 + 112);
        v27 = *(v0 + 96);
        v28 = *(v0 + 80);
        v25(v26, v24, v28);
        sub_1B724E840(v27, v26);
        (*v42)(v27, v28);
        v24 += v44;
        --v23;
      }

      while (v23);
      goto LABEL_4;
    }

    v48 = MEMORY[0x1E69E7CC0];

    sub_1B71FD958(0, v13, 0);
    v14 = v48;
    v15 = v12 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v43 = *(v35 + 72);
    do
    {
      v16 = *(v0 + 104);
      v18 = *(v0 + 72);
      v17 = *(v0 + 80);
      sub_1B72053B0(v15, v18, type metadata accessor for InternalAccount);
      (*v8)(v16, v18, v17);
      sub_1B7205478(v18, type metadata accessor for InternalAccount);
      v20 = *(v48 + 16);
      v19 = *(v48 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B71FD958(v19 > 1, v20 + 1, 1);
      }

      v21 = *(v0 + 104);
      v22 = *(v0 + 80);
      *(v48 + 16) = v20 + 1;
      (*(v45 + 32))(v48 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v20, v21, v22);
      v15 += v43;
      --v13;
    }

    while (v13);
    v23 = *(v48 + 16);
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_4:

    v8 = v36;
    v6 = (v41 - 1) & v41;

    v7 = v37;
    v3 = v38;
    v10 = v40;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  v29 = *(v0 + 56);
  v31 = *(v0 + 24);
  v30 = *(v0 + 32);
  v32 = *(v0 + 16);
  v46 = *(v0 + 40);

  v33 = swift_task_alloc();
  *(v33 + 16) = v31;
  *(v33 + 24) = v30;
  *(v33 + 32) = v47;
  *(v33 + 40) = v32;
  *(v33 + 48) = v46;
  *(v33 + 64) = v29;
  sub_1B7801468();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t FinanceStore.allAccountsByInstitutionKey()()
{
  v1[33] = v0;
  v2 = type metadata accessor for InternalAccount();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F128);
  v1[38] = v3;
  v1[39] = *(v3 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F130);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = type metadata accessor for InternalAccountQuery();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B71F648C, 0, 0);
}

uint64_t sub_1B71F648C()
{
  v26 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[38];
  v6 = v0[39];
  (*(v6 + 56))(v4, 1, 1, v5);
  *v2 = MEMORY[0x1E69E7CC0];
  sub_1B7205588(v4, v2 + *(v1 + 20), &qword_1EB98F130);
  sub_1B7205588(v4, v3, &qword_1EB98F130);
  v7 = (*(v6 + 48))(v3, 1, v5);
  v9 = v0[42];
  v8 = v0[43];
  if (v7 == 1)
  {
    sub_1B7205418(v0[43], &qword_1EB98F130);
    sub_1B7205418(v9, &qword_1EB98F130);
    v10 = 0;
  }

  else
  {
    v12 = v0[40];
    v11 = v0[41];
    v13 = v0[38];
    v14 = v0[39];
    (*(v14 + 32))(v11, v0[42], v13);
    sub_1B7205540(0, &qword_1EDAFAF30);
    (*(v14 + 16))(v12, v11, v13);
    v10 = sub_1B71F8678(v12);
    (*(v14 + 8))(v11, v13);
    sub_1B7205418(v8, &qword_1EB98F130);
  }

  v15 = v0[45];
  v16 = v0[46];
  v17 = v0[44];
  *(v15 + v17[8]) = v10;
  v18 = v15 + v17[6];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v15 + v17[7];
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_1B72054D8(v15, v16, type metadata accessor for InternalAccountQuery);
  static DeviceInfo.deviceType.getter(v25);
  if (v25[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
    sub_1B7205478(v0[46], type metadata accessor for InternalAccountQuery);

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = swift_task_alloc();
    v0[47] = v23;
    *v23 = v0;
    v23[1] = sub_1B71F67FC;
    v24 = v0[46];

    return sub_1B73A1550((v0 + 30), v24);
  }
}

uint64_t sub_1B71F67FC()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_1B71F6F78;
  }

  else
  {
    sub_1B7205478(*(v2 + 368), type metadata accessor for InternalAccountQuery);
    v3 = sub_1B71F692C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B71F692C()
{
  v44 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 256);
  v3 = *(v0 + 248);

  sub_1B7201CF8(v1, v3);

  v42 = v2;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    v40 = v0 + 16;
    v41 = v0 + 96;
    v35 = (v0 + 176);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = MEMORY[0x1E69E7CC0];
    v34 = v5;
    v39 = v8;
    while (1)
    {
      if (v6 >= *(v42 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v0 + 296);
      v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v12 = *(v8 + 72);
      sub_1B72053B0(v42 + v11 + v12 * v6, v10, type metadata accessor for InternalAccount);
      v13 = *(v0 + 296);
      if (*(v10 + v7[24]) != 1 || *(v13 + v7[13]) == 1)
      {
        goto LABEL_3;
      }

      *(v0 + 64) = &type metadata for UncheckedSendableUserDefaults;
      *(v0 + 72) = &protocol witness table for UncheckedSendableUserDefaults;
      v14 = swift_allocObject();
      *(v0 + 40) = v14;
      if (qword_1EDAF7308 != -1)
      {
        v29 = v14;
        swift_once();
        v14 = v29;
      }

      sub_1B7201D1C(&qword_1EDAF7310, v14 + 16);
      *(v0 + 16) = 0xD00000000000001DLL;
      *(v0 + 24) = 0x80000001B78753B0;
      *(v0 + 32) = 0;
      *(v0 + 34) = 1;
      *(v0 + 80) = &type metadata for DeviceInfo;
      *(v0 + 88) = &protocol witness table for DeviceInfo;
      sub_1B7205588(v40, v41, &qword_1EB98F140);
      if (*(v0 + 114) == 1 && ((*(*(v0 + 168) + 16))() & 1) == 0)
      {
        sub_1B7205418(v40, &qword_1EB98F140);
        v37 = *(v0 + 113);
        sub_1B7205418(v41, &qword_1EB98F140);
        if (v37 == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v36 = v9;
        v16 = *(v0 + 144);
        v15 = *(v0 + 152);
        __swift_project_boxed_opaque_existential_1((v0 + 120), v16);
        v17 = *(v0 + 96);
        v18 = *(v0 + 104);
        (*(*(v15 + 8) + 16))(v17, v18, v16);
        if (*(v0 + 200))
        {
          v20 = *(v0 + 144);
          v19 = *(v0 + 152);
          __swift_project_boxed_opaque_existential_1((v0 + 120), v20);
          v21 = (*(*(v19 + 8) + 24))(v17, v18, v20);
          sub_1B7205418(v35, &qword_1EB98FCB0);
          sub_1B7205418(v40, &qword_1EB98F140);
          sub_1B7205418(v41, &qword_1EB98F140);
          v5 = v34;
          v9 = v36;
          v8 = v39;
          if (v21)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v22 = *(v0 + 192);
          *(v0 + 208) = *v35;
          *(v0 + 224) = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0);
          if (!swift_dynamicCast())
          {
            sub_1B7205418(v40, &qword_1EB98F140);
            v5 = v34;
            v9 = v36;
            v8 = v39;
LABEL_28:
            v38 = *(v0 + 112);
            sub_1B7205418(v41, &qword_1EB98F140);
            if (v38)
            {
LABEL_14:
              v13 = *(v0 + 296);
LABEL_22:
              sub_1B72054D8(v13, *(v0 + 288), type metadata accessor for InternalAccount);
              v43 = v9;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B71FD914(0, v9[2] + 1, 1);
                v9 = v43;
              }

              v26 = v9[2];
              v25 = v9[3];
              v27 = v9;
              if (v26 >= v25 >> 1)
              {
                sub_1B71FD914(v25 > 1, v26 + 1, 1);
                v27 = v43;
              }

              v28 = *(v0 + 288);
              v27[2] = v26 + 1;
              result = sub_1B72054D8(v28, v27 + v11 + v26 * v12, type metadata accessor for InternalAccount);
              v9 = v27;
              v8 = v39;
              goto LABEL_4;
            }

            goto LABEL_20;
          }

          v23 = *(v0 + 392);
          sub_1B7205418(v40, &qword_1EB98F140);
          v33 = v23;
          v24 = v23 == 2;
          v5 = v34;
          v9 = v36;
          v8 = v39;
          if (v24)
          {
            goto LABEL_28;
          }

          sub_1B7205418(v41, &qword_1EB98F140);
          if (v33)
          {
            goto LABEL_14;
          }
        }
      }

LABEL_20:
      v13 = *(v0 + 296);
      if (*(v13 + v7[28]) - 1 < 3 || (*(v13 + v7[30]) & 1) != 0)
      {
        goto LABEL_22;
      }

LABEL_3:
      result = sub_1B7205478(v13, type metadata accessor for InternalAccount);
LABEL_4:
      if (v5 == ++v6)
      {
        goto LABEL_31;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v30 = *(v0 + 384);

  v43 = v9;

  sub_1B71FBED4(&v43);
  if (v30)
  {
  }

  else
  {

    v31 = sub_1B7201540(v43);

    v32 = *(v0 + 8);

    return v32(v31);
  }
}

uint64_t sub_1B71F6F78()
{
  sub_1B7205478(*(v0 + 368), type metadata accessor for InternalAccountQuery);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B71F7060(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a7;
  v78 = a6;
  v87 = a4;
  v88 = a5;
  v77 = sub_1B7800398();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v89 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1B78003C8();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FFA18();
  v82 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedApplication();
  v97.receiver = swift_getObjCClassFromMetadata();
  v97.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedApplication;
  v16 = objc_msgSendSuper2(&v97, sel_fetchRequest);
  aBlock = a1;
  v91 = a2;
  v17 = _s10FinanceKit18ManagedApplicationC12predicateFor8bundleID10accountIDsSo11NSPredicateCAA16BundleIdentifierV_Shy10Foundation4UUIDVGtFZ_0(&aBlock, a3);
  [v16 setPredicate_];

  v18 = v98;
  v19 = sub_1B7801498();

  if (!v18)
  {
    v21 = v82;
    v22 = v80;
    v85 = v15;
    v86 = v13;
    v72 = a1;
    v73 = a2;
    v74 = 0;
    v71 = v12;
    v87 = v19;
    if (v19 >> 62)
    {
      v23 = sub_1B7801958();
    }

    else
    {
      v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v79;
    v25 = v78;
    v26 = v73;
    v27 = v72;
    if (v23)
    {
      v28 = v23;
      if (v23 >= 1)
      {
        v29 = 0;
        v30 = v87;
        v31 = v87 & 0xC000000000000001;
        v82 = v21 + 1;
        *&v20 = 141558787;
        v81 = v20;
        v32 = v89;
        v83 = v87 & 0xC000000000000001;
        v84 = v23;
        do
        {
          if (v31)
          {
            v50 = MEMORY[0x1B8CA5DC0](v29, v30);
          }

          else
          {
            v50 = *(v30 + 8 * v29 + 32);
          }

          v51 = v50;
          v52 = sub_1B7800098();
          v53 = sub_1B78011D8();

          if (os_log_type_enabled(v52, v53))
          {
            v33 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            aBlock = v98;
            *v33 = v81;
            *(v33 + 4) = 1752392040;
            *(v33 + 12) = 2081;
            v34 = [v51 bundleID];
            v35 = sub_1B7800868();
            v37 = v36;

            v38 = v35;
            v39 = v86;
            v40 = sub_1B71A3EF8(v38, v37, &aBlock);

            *(v33 + 14) = v40;
            *(v33 + 22) = 2160;
            *(v33 + 24) = 1752392040;
            *(v33 + 32) = 2081;
            v41 = [v51 accountID];
            v42 = v85;
            sub_1B77FF9E8();

            sub_1B72051A8(&qword_1EB98F120, MEMORY[0x1E69695A8]);
            v43 = sub_1B7802068();
            v45 = v44;
            v46 = v39;
            v30 = v87;
            (*v82)(v42, v46);
            v47 = sub_1B71A3EF8(v43, v45, &aBlock);

            *(v33 + 34) = v47;
            v28 = v84;
            _os_log_impl(&dword_1B7198000, v52, v53, "App %{private,mask.hash}s\n- %{private,mask.hash}s", v33, 0x2Au);
            v48 = v98;
            swift_arrayDestroy();
            v32 = v89;
            MEMORY[0x1B8CA7A40](v48, -1, -1);
            v49 = v33;
            v31 = v83;
            MEMORY[0x1B8CA7A40](v49, -1, -1);
          }

          else
          {
          }

          ++v29;
        }

        while (v28 != v29);

        v54 = v72;
        v55 = v73;
        v96[0] = v72;
        v96[1] = v73;
        v56.rawValue._countAndFlagsBits = v96;
        FinancialDataTCC.tccInfo(forBundleID:)(v56);
        if (v91)
        {
          v57 = v92;

          v59 = v77;
          v22 = v80;
          v60 = v75;
          v24 = v79;
          v25 = v78;
          if ((v57 & 1) == 0)
          {
            aBlock = v54;
            v91 = v55;
            p_aBlock = &aBlock;
            FinancialDataTCC.setGranted(_:forBundleID:)(1, *(&v58 - 1));
          }
        }

        else
        {
          v59 = v77;
          v22 = v80;
          v60 = v75;
          v24 = v79;
          v25 = v78;
        }

LABEL_21:
        sub_1B7205540(0, &qword_1EDAFC530);
        v67 = sub_1B7801328();
        v68 = swift_allocObject();
        *(v68 + 16) = v25;
        *(v68 + 24) = v24;
        v94 = sub_1B720528C;
        v95 = v68;
        aBlock = MEMORY[0x1E69E9820];
        v91 = 1107296256;
        v92 = sub_1B72A58C8;
        v93 = &block_descriptor_36;
        v69 = _Block_copy(&aBlock);

        v70 = v71;
        sub_1B78003B8();
        v96[0] = MEMORY[0x1E69E7CC0];
        sub_1B72051A8(&qword_1EB98F6A8, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA10);
        sub_1B7205294();
        sub_1B78018B8();
        MEMORY[0x1B8CA5660](0, v70, v32, v69);
        _Block_release(v69);

        (*(v22 + 8))(v32, v59);
        (*(v60 + 8))(v70, v76);

        return;
      }

      __break(1u);
    }

    else
    {

      if (qword_1EDAFB7C0 == -1)
      {
LABEL_18:
        aBlock = v27;
        v91 = v26;
        v63 = &aBlock;
        FinanceStore.deleteApplication(with:)(*(&v62 - 1));
        v32 = v89;
        v74 = v65;
        if (v65)
        {
          return;
        }

        aBlock = v27;
        v91 = v26;
        v66 = &aBlock;
        FinancialDataTCC.setGranted(_:forBundleID:)(0, *(&v64 - 1));
        v59 = v77;
        v60 = v75;
        goto LABEL_21;
      }
    }

    swift_once();
    goto LABEL_18;
  }
}

uint64_t sub_1B71F7890(void (*a1)(uint64_t))
{
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_1B71F7940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B7205588(a3, v22 - v9, &unk_1EB99C280);
  v11 = sub_1B7800DF8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B7205418(v10, &unk_1EB99C280);
  }

  else
  {
    sub_1B7800DE8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B7800CD8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B7800948() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t PrivacySettingsStoreCoordinator.linkedAccountDate(toBundleID:withAccountID:)(uint64_t result)
{
  if (*(v1 + 48))
  {
    MEMORY[0x1EEE9AC00](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F148);
    return sub_1B7801468();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B71F7C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v26 = a4;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - v14;
  v24 = a1;
  v25 = a2;
  if (*(a3 + 48))
  {
    type metadata accessor for ManagedApplication();
    result = static ManagedApplication.existingApplication(with:associatedWith:in:)(&v24);
    if (!v4)
    {
      if (result)
      {
        v16 = result;
        v17 = [result sharingStartDate];
        if (v17)
        {
          v18 = v17;
          sub_1B77FF928();

          v19 = *(v9 + 32);
          v19(v15, v12, v8);
          v20 = v26;
          v19(v26, v15, v8);
          (*(v9 + 56))(v20, 0, 1, v8);
          started = type metadata accessor for AccountStartDate();
          v22 = started;
          v20[*(started + 20)] = 0;
        }

        else
        {

          v20 = v26;
          (*(v9 + 56))(v26, 1, 1, v8);
          started = type metadata accessor for AccountStartDate();
          v22 = started;
          v20[*(started + 20)] = 1;
        }

        return (*(*(started - 8) + 56))(v20, 0, 1, v22);
      }

      else
      {
        v23 = type metadata accessor for AccountStartDate();
        return (*(*(v23 - 8) + 56))(v26, 1, 1, v23);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B71F7ED4(void *a1)
{
  v3 = *v1;
  v4 = sub_1B78000B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 userInfo];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B7800728();

    v11 = v1[6];
    if (v11)
    {
      v30 = v3;
      v27 = v10;
      v12 = v1[5];
      swift_beginAccess();
      v13 = v1[3];
      v14 = v1[4];
      v15 = v12;
      v16 = v11;
      v28 = v13;
      v29 = v16;
      sub_1B71B6A14(v13);
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v4, qword_1EDAF65B0);
      (*(v5 + 16))(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v4);
      v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      *(v20 + 16) = v12;
      v21 = v29;
      *(v20 + 24) = v29;
      (*(v5 + 32))(v20 + v18, v7, v4);
      v22 = (v20 + v19);
      *v22 = v28;
      v22[1] = v14;
      *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1B720489C;
      *(v23 + 24) = v20;
      aBlock[4] = sub_1B720493C;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B737BA64;
      aBlock[3] = &block_descriptor;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v25 performBlockAndWait_];
      _Block_release(v24);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if (v24)
      {
        __break(1u);
      }

      else
      {
        sub_1B71F8270(v1, v27);
      }
    }

    else
    {
    }
  }
}

void sub_1B71F8270(uint64_t a1, uint64_t a2)
{
  v12[0] = sub_1B7800868();
  v12[1] = v4;
  sub_1B78019E8();
  if (*(a2 + 16) && (v5 = sub_1B7245898(v11), (v6 & 1) != 0))
  {
    sub_1B719BDE4(*(a2 + 56) + 32 * v5, v12);
    sub_1B720494C(v11);
    sub_1B7205540(0, &qword_1EB996830);
    v7 = swift_dynamicCast();
    v8 = v10;
    if (!v7)
    {
      v8 = 0;
    }
  }

  else
  {
    sub_1B720494C(v11);
    v8 = 0;
  }

  v9 = *(a1 + 40);
  *(a1 + 40) = v8;
}

void sub_1B71F8358(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = [objc_opt_self() fetchHistoryAfterToken_];
  v24[0] = 0;
  v7 = [a2 executeRequest:v6 error:v24];
  v8 = v24[0];
  if (v7)
  {
    v9 = v7;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = v8;
    if (!v10)
    {
    }

    v21 = v10;
    sub_1B7204CC0(v10);
    v23 = v22;

    if (v23)
    {
      if (a4)
      {
        a4();
      }
    }
  }

  else
  {
    v12 = v24[0];
    v13 = sub_1B77FF318();

    swift_willThrow();
    v14 = v13;
    v15 = sub_1B7800098();
    v16 = sub_1B78011D8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1B7198000, v15, v16, "Unable to obtain persistent history: %@", v17, 0xCu);
      sub_1B7205418(v18, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v18, -1, -1);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t PrivacySettingsStoreCoordinator.deinit()
{

  sub_1B71F4844(*(v0 + 24));

  return v0;
}

uint64_t PrivacySettingsStoreCoordinator.__deallocating_deinit()
{

  sub_1B71F4844(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1B71F8678(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1B77FEF58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F698);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v33[5] = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F128);
  sub_1B77FFD18();
  v9 = _s10FinanceKit22ManagedInternalAccountC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0();
  v26 = v5;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  (*(v2 + 16))(v13, v4, v1);
  v15 = objc_opt_self();

  *v14 = [v15 expressionForEvaluatedObject];
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  v16 = sub_1B720261C(v12);
  swift_setDeallocating();
  sub_1B7205418(v13, &qword_1EB98F218);
  swift_deallocClassInstance();
  (*(v2 + 8))(v4, v1);
  v33[0] = 1;
  v33[1] = v16;
  v17 = v24;
  v33[3] = 0;
  v33[4] = 0;
  v33[2] = v9;
  sub_1B77FFD08();
  v18 = v31;
  v19 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1B730DF10(v33, v18, *(v19 + 8));

  (*(*(v8 - 8) + 8))(v17, v8);

  __swift_destroy_boxed_opaque_existential_1(v30);
  v20 = v27;
  v28 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v28, v20, &v29);
  v21 = v29;
  (*(v25 + 8))(v7, v26);
  return v21;
}

uint64_t sub_1B71F8AC8(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1B77FEF58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F620);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v33[5] = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F628);
  sub_1B77FFD18();
  v9 = _s10FinanceKit36ManagedScheduledPreauthorizedPaymentC14mappedKeyPathsSDys03AnyH4PathCSSGvgZ_0();
  v26 = v5;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  (*(v2 + 16))(v13, v4, v1);
  v15 = objc_opt_self();

  *v14 = [v15 expressionForEvaluatedObject];
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  v16 = sub_1B720261C(v12);
  swift_setDeallocating();
  sub_1B7205418(v13, &qword_1EB98F218);
  swift_deallocClassInstance();
  (*(v2 + 8))(v4, v1);
  v33[0] = 1;
  v33[1] = v16;
  v17 = v24;
  v33[3] = 0;
  v33[4] = 0;
  v33[2] = v9;
  sub_1B77FFD08();
  v18 = v31;
  v19 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1B730DF10(v33, v18, *(v19 + 8));

  (*(*(v8 - 8) + 8))(v17, v8);

  __swift_destroy_boxed_opaque_existential_1(v30);
  v20 = v27;
  v28 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v28, v20, &v29);
  v21 = v29;
  (*(v25 + 8))(v7, v26);
  return v21;
}

uint64_t sub_1B71F8F18(uint64_t a1)
{
  v36 = a1;
  v39 = sub_1B77FEF58();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F610);
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - v3;
  v49[13] = &v33 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F618);
  sub_1B77FFD18();
  v35 = _s10FinanceKit14ManagedAccountC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 32) = swift_getKeyPath();
  v6 = sub_1B7800838();
  v7 = objc_opt_self();
  v8 = [v7 expressionForKeyPath_];

  v49[0] = 1;
  v9 = [v7 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v8 rightExpression:v9 modifier:0 type:4 options:0];

  *(inited + 40) = v10;
  *(inited + 48) = swift_getKeyPath();
  v11 = sub_1B7800838();
  v12 = [v7 expressionForKeyPath_];

  v49[0] = 0;
  v13 = [v7 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v12 rightExpression:v13 modifier:0 type:4 options:0];

  *(inited + 56) = v14;
  v15 = sub_1B7202524(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBB0);
  swift_arrayDestroy();
  v16 = v34;
  v41 = v2;
  v40 = v4;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B7807CD0;
  v20 = v19 + v18;
  v21 = (v19 + v18 + v17[14]);
  v22 = v37;
  v23 = v39;
  (*(v37 + 16))(v20, v16, v39);
  v24 = v35;

  *v21 = [v7 expressionForEvaluatedObject];
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0;
  v25 = v36;
  v26 = sub_1B720261C(v19);
  swift_setDeallocating();
  sub_1B7205418(v20, &qword_1EB98F218);
  v27 = v38;
  swift_deallocClassInstance();
  (*(v22 + 8))(v16, v23);
  v49[0] = 1;
  v49[1] = v26;
  v49[2] = v24;
  v49[3] = v15;
  v49[4] = 0;
  sub_1B77FFD08();
  v28 = v47;
  v29 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  sub_1B730DF10(v49, v28, *(v29 + 8));

  (*(*(v27 - 8) + 8))(v25, v27);

  __swift_destroy_boxed_opaque_existential_1(v46);
  v30 = v43;
  v44 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v44, v30, &v45);
  v31 = v45;
  (*(v42 + 8))(v40, v41);
  return v31;
}

uint64_t sub_1B71F95F0(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1B77FEF58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F600);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v33[5] = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F608);
  sub_1B77FFD18();
  v9 = _s10FinanceKit18ManagedInstitutionC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0();
  v26 = v5;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  (*(v2 + 16))(v13, v4, v1);
  v15 = objc_opt_self();

  *v14 = [v15 expressionForEvaluatedObject];
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  v16 = sub_1B720261C(v12);
  swift_setDeallocating();
  sub_1B7205418(v13, &qword_1EB98F218);
  swift_deallocClassInstance();
  (*(v2 + 8))(v4, v1);
  v33[0] = 1;
  v33[1] = v16;
  v17 = v24;
  v33[3] = 0;
  v33[4] = 0;
  v33[2] = v9;
  sub_1B77FFD08();
  v18 = v31;
  v19 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1B730DF10(v33, v18, *(v19 + 8));

  (*(*(v8 - 8) + 8))(v17, v8);

  __swift_destroy_boxed_opaque_existential_1(v30);
  v20 = v27;
  v28 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v28, v20, &v29);
  v21 = v29;
  (*(v25 + 8))(v7, v26);
  return v21;
}

uint64_t sub_1B71F9A40(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1B77FEF58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5E8);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v33[5] = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5F0);
  sub_1B77FFD18();
  v9 = _s10FinanceKit21ManagedAccountBalanceC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0();
  v26 = v5;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  (*(v2 + 16))(v13, v4, v1);
  v15 = objc_opt_self();

  *v14 = [v15 expressionForEvaluatedObject];
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  v16 = sub_1B720261C(v12);
  swift_setDeallocating();
  sub_1B7205418(v13, &qword_1EB98F218);
  swift_deallocClassInstance();
  (*(v2 + 8))(v4, v1);
  v33[0] = 1;
  v33[1] = v16;
  v17 = v24;
  v33[3] = 0;
  v33[4] = 0;
  v33[2] = v9;
  sub_1B77FFD08();
  v18 = v31;
  v19 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1B730DF10(v33, v18, *(v19 + 8));

  (*(*(v8 - 8) + 8))(v17, v8);

  __swift_destroy_boxed_opaque_existential_1(v30);
  v20 = v27;
  v28 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v28, v20, &v29);
  v21 = v29;
  (*(v25 + 8))(v7, v26);
  return v21;
}

uint64_t sub_1B71F9E90(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1B77FEF58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5D0);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v33[5] = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5D8);
  sub_1B77FFD18();
  v9 = _s10FinanceKit36ManagedRecurringPreauthorizedPaymentC14mappedKeyPathsSDys03AnyH4PathCSSGvgZ_0();
  v26 = v5;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  (*(v2 + 16))(v13, v4, v1);
  v15 = objc_opt_self();

  *v14 = [v15 expressionForEvaluatedObject];
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  v16 = sub_1B720261C(v12);
  swift_setDeallocating();
  sub_1B7205418(v13, &qword_1EB98F218);
  swift_deallocClassInstance();
  (*(v2 + 8))(v4, v1);
  v33[0] = 1;
  v33[1] = v16;
  v17 = v24;
  v33[3] = 0;
  v33[4] = 0;
  v33[2] = v9;
  sub_1B77FFD08();
  v18 = v31;
  v19 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1B730DF10(v33, v18, *(v19 + 8));

  (*(*(v8 - 8) + 8))(v17, v8);

  __swift_destroy_boxed_opaque_existential_1(v30);
  v20 = v27;
  v28 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v28, v20, &v29);
  v21 = v29;
  (*(v25 + 8))(v7, v26);
  return v21;
}

uint64_t sub_1B71FA2E0(uint64_t a1)
{
  v33 = a1;
  v34 = sub_1B77FEF58();
  v1 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A0);
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v44[11] = &v30 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A8);
  sub_1B77FFD18();
  v31 = _s10FinanceKit26ManagedInternalTransactionC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F208);
  inited = swift_initStackObject();
  v30 = xmmword_1B7807CD0;
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = swift_getKeyPath();
  v8 = sub_1B7800838();
  v9 = objc_opt_self();
  v10 = [v9 expressionForKeyPath_];

  v44[0] = -1;
  v11 = [v9 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v10 rightExpression:v11 modifier:0 type:5 options:0];

  *(inited + 40) = v12;
  v13 = sub_1B7202524(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &unk_1EB99DBB0);
  v37 = v4;
  v35 = v6;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v30;
  v17 = v16 + v15;
  v18 = (v16 + v15 + v14[14]);
  v19 = v16 + v15;
  v20 = v34;
  (*(v1 + 16))(v19, v3, v34);
  v21 = v31;

  *v18 = [v9 expressionForEvaluatedObject];
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0;
  v22 = v32;
  v23 = sub_1B720261C(v16);
  swift_setDeallocating();
  v24 = v33;
  sub_1B7205418(v17, &qword_1EB98F218);
  swift_deallocClassInstance();
  (*(v1 + 8))(v3, v20);
  v44[0] = 1;
  v44[1] = v23;
  v44[2] = v21;
  v44[3] = v13;
  v44[4] = 0;
  sub_1B77FFD08();
  v25 = v42;
  v26 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  sub_1B730DF10(v44, v25, *(v26 + 8));

  (*(*(v22 - 8) + 8))(v24, v22);

  __swift_destroy_boxed_opaque_existential_1(v41);
  v27 = v38;
  v39 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v39, v27, &v40);
  v28 = v40;
  (*(v36 + 8))(v35, v37);
  return v28;
}

uint64_t sub_1B71FA8D0(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1B77FEF58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4C0);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v33[5] = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4C8);
  sub_1B77FFD18();
  v9 = _s10FinanceKit27ManagedPredictedTransactionC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0();
  v26 = v5;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  (*(v2 + 16))(v13, v4, v1);
  v15 = objc_opt_self();

  *v14 = [v15 expressionForEvaluatedObject];
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  v16 = sub_1B720261C(v12);
  swift_setDeallocating();
  sub_1B7205418(v13, &qword_1EB98F218);
  swift_deallocClassInstance();
  (*(v2 + 8))(v4, v1);
  v33[0] = 1;
  v33[1] = v16;
  v17 = v24;
  v33[3] = 0;
  v33[4] = 0;
  v33[2] = v9;
  sub_1B77FFD08();
  v18 = v31;
  v19 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1B730DF10(v33, v18, *(v19 + 8));

  (*(*(v8 - 8) + 8))(v17, v8);

  __swift_destroy_boxed_opaque_existential_1(v30);
  v20 = v27;
  v28 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v28, v20, &v29);
  v21 = v29;
  (*(v25 + 8))(v7, v26);
  return v21;
}

uint64_t sub_1B71FAD20(uint64_t a1)
{
  v33 = a1;
  v34 = sub_1B77FEF58();
  v1 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1F8);
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v44[11] = &v30 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F200);
  sub_1B77FFD18();
  v31 = _s10FinanceKit18ManagedTransactionC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F208);
  inited = swift_initStackObject();
  v30 = xmmword_1B7807CD0;
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = swift_getKeyPath();
  v8 = sub_1B7800838();
  v9 = objc_opt_self();
  v10 = [v9 expressionForKeyPath_];

  v44[0] = -1;
  v11 = [v9 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v10 rightExpression:v11 modifier:0 type:5 options:0];

  *(inited + 40) = v12;
  v13 = sub_1B7202524(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &unk_1EB99DBB0);
  v37 = v4;
  v35 = v6;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v30;
  v17 = v16 + v15;
  v18 = (v16 + v15 + v14[14]);
  v19 = v16 + v15;
  v20 = v34;
  (*(v1 + 16))(v19, v3, v34);
  v21 = v31;

  *v18 = [v9 expressionForEvaluatedObject];
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0;
  v22 = v32;
  v23 = sub_1B720261C(v16);
  swift_setDeallocating();
  v24 = v33;
  sub_1B7205418(v17, &qword_1EB98F218);
  swift_deallocClassInstance();
  (*(v1 + 8))(v3, v20);
  v44[0] = 1;
  v44[1] = v23;
  v44[2] = v21;
  v44[3] = v13;
  v44[4] = 0;
  sub_1B77FFD08();
  v25 = v42;
  v26 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  sub_1B730DF10(v44, v25, *(v26 + 8));

  (*(*(v22 - 8) + 8))(v24, v22);

  __swift_destroy_boxed_opaque_existential_1(v41);
  v27 = v38;
  v39 = swift_dynamicCastUnknownClassUnconditional();
  sub_1B73177D8(&v39, v27, &v40);
  v28 = v40;
  (*(v36 + 8))(v35, v37);
  return v28;
}

void sub_1B71FB310(void (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v8 = sub_1B77FE748();
  v57 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  v14 = sub_1B77FE758();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v55 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v58 = &v42 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v42 - v21;
  v52 = a4;
  v53 = a1;
  v54 = a2;
  (a1)(v20);
  if (v4)
  {
    v49 = (v15 + 32);
    v23 = (v57 + 8);
    v45 = (v15 + 16);
    *&v22 = 134218242;
    v42 = v22;
    v47 = v13;
    v48 = v11;
    v43 = v8;
    v44 = v14;
    v50 = (v15 + 8);
    v46 = v57 + 8;
    v59 = v4;
    v24 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v25 = v56;
    if (!swift_dynamicCast())
    {
LABEL_16:

      return;
    }

    v57 = 1;
    (*v49)(v58, v25, v14);
    sub_1B72051A8(&qword_1EDAF6608, MEMORY[0x1E6967E98]);
    sub_1B77FF2E8();
    sub_1B77FE6B8();
    sub_1B72051A8(&qword_1EB98F1C8, MEMORY[0x1E6967E70]);
    v26 = sub_1B7800828();
    v27 = v13;
    v28 = *v23;
    (*v23)(v11, v8);
    if (v26)
    {
      v28(v27, v8);
    }

    else
    {
      sub_1B77FE708();
      v29 = sub_1B7800828();
      v28(v11, v8);
      v28(v27, v8);
      if ((v29 & 1) == 0)
      {
        v39 = *v50;
        v41 = v58;
LABEL_15:
        v39(v41, v14);
        goto LABEL_16;
      }
    }

    v30 = v58;
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v31 = sub_1B78000B8();
    __swift_project_value_buffer(v31, qword_1EDAFD2D0);
    v32 = v55;
    (*v45)(v55, v30, v14);
    v33 = sub_1B7800098();
    v34 = sub_1B78011D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = v42;
      v37 = v57;
      *(v35 + 4) = v57;
      *(v35 + 12) = 2112;
      sub_1B77FE688();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = *v50;
      (*v50)(v32, v44);
      *(v35 + 14) = v38;
      *v36 = v38;
      _os_log_impl(&dword_1B7198000, v33, v34, "Failed to perform operation (#%ld) with error: %@", v35, 0x16u);
      sub_1B7205418(v36, &qword_1EB9910D0);
      v40 = v36;
      v14 = v44;
      MEMORY[0x1B8CA7A40](v40, -1, -1);
      MEMORY[0x1B8CA7A40](v35, -1, -1);
    }

    else
    {

      v39 = *v50;
      (*v50)(v32, v14);
      v37 = v57;
    }

    if (v37 != 5)
    {
      [v51 reset];
      v39(v58, v14);

      v53();
      return;
    }

    v41 = v58;
    sub_1B77FE688();
    swift_willThrow();
    goto LABEL_15;
  }
}

void sub_1B71FB8F4(void (*a1)(uint64_t *__return_ptr), uint64_t a2, void *a3)
{
  v53 = a3;
  v6 = sub_1B77FE748();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - v11;
  v13 = sub_1B77FE758();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = &v45 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v56 = &v45 - v20;
  v52 = a2;
  v54 = a1;
  (a1)(&v61, v19);
  if (v3)
  {
    v50 = v12;
    v51 = v10;
    v48 = (v7 + 8);
    v49 = (v14 + 32);
    v47 = (v14 + 16);
    v22 = (v14 + 8);
    *&v21 = 134218242;
    v45 = v21;
    v23 = v57;
    v46 = v6;
    v59 = v13;
    v60 = v3;
    v24 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v25 = v56;
    if (!swift_dynamicCast())
    {
LABEL_17:

      return;
    }

    v58 = 1;
    (*v49)(v23, v25, v13);
    sub_1B72051A8(&qword_1EDAF6608, MEMORY[0x1E6967E98]);
    v26 = v50;
    sub_1B77FF2E8();
    v27 = v51;
    sub_1B77FE6B8();
    sub_1B72051A8(&qword_1EB98F1C8, MEMORY[0x1E6967E70]);
    v28 = sub_1B7800828();
    v29 = *v48;
    (*v48)(v27, v6);
    if (v28)
    {
      v29(v26, v6);
    }

    else
    {
      sub_1B77FE708();
      v30 = sub_1B7800828();
      v29(v27, v6);
      v29(v26, v6);
      if ((v30 & 1) == 0)
      {
        v42 = *v22;
        v31 = v59;
        v32 = v57;
        goto LABEL_16;
      }
    }

    v31 = v59;
    v32 = v57;
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v33 = sub_1B78000B8();
    __swift_project_value_buffer(v33, qword_1EDAFD2D0);
    v34 = v55;
    (*v47)(v55, v32, v31);
    v35 = sub_1B7800098();
    v36 = sub_1B78011D8();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v58;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = v45;
      *(v39 + 4) = v38;
      *(v39 + 12) = 2112;
      sub_1B77FE688();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *v22;
      (*v22)(v34, v59);
      *(v39 + 14) = v41;
      *v40 = v41;
      _os_log_impl(&dword_1B7198000, v35, v36, "Failed to perform operation (#%ld) with error: %@", v39, 0x16u);
      sub_1B7205418(v40, &qword_1EB9910D0);
      v43 = v40;
      v32 = v57;
      MEMORY[0x1B8CA7A40](v43, -1, -1);
      v44 = v39;
      v31 = v59;
      MEMORY[0x1B8CA7A40](v44, -1, -1);

      if (v38 == 5)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v42 = *v22;
      (*v22)(v34, v31);
      if (v38 == 5)
      {
LABEL_14:
        sub_1B77FE688();
        swift_willThrow();
LABEL_16:
        v42(v32, v31);
        goto LABEL_17;
      }
    }

    [v53 reset];
    v42(v32, v31);

    v54(&v61);
  }
}

uint64_t sub_1B71FBED4(void **a1)
{
  v2 = *(type metadata accessor for InternalAccount() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B77E4CB8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B71FC400(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1B71FBF7C()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  v3 = *v0;
  v4 = v0[1];
  (*(*(v2 + 8) + 16))(&v9, *v0, v4, v1);
  if (v10)
  {
    v5 = v0[6];
    v6 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v5);
    v7 = (*(*(v6 + 8) + 24))(v3, v4, v5);
    sub_1B7205418(&v9, &qword_1EB98FCB0);
    return v7 & 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0);
    if (swift_dynamicCast())
    {
      return v11;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B71FC0A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B71FC0F0(a1, a2);
  sub_1B71FC220(&unk_1F2F40CE0);
  return v3;
}

uint64_t sub_1B71FC0F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B75D52A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B7801B48();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B7800A48();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B75D52A4(v10, 0);
        result = sub_1B7801A38();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B71FC220(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B71FC30C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B71FC30C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B71FC400(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for InternalAccount();
        v6 = sub_1B7800C78();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for InternalAccount() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B71FC7D0(v8, v9, a1, v4);
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
    return sub_1B71FC52C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B71FC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = type metadata accessor for InternalAccount();
  v8 = MEMORY[0x1EEE9AC00](v43);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v38 = *a4;
    v32 = v18;
    v22 = v38 + v18 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      sub_1B72053B0(v22, v17, type metadata accessor for InternalAccount);
      sub_1B72053B0(v19, v13, type metadata accessor for InternalAccount);
      v23 = *(v43 + 44);
      v24 = *&v17[v23 + 8];
      v41 = *&v17[v23];
      v42 = v24;
      v25 = &v13[v23];
      v27 = *v25;
      v26 = *(v25 + 1);
      v39 = v27;
      v40 = v26;
      sub_1B7205210();
      v28 = sub_1B7801808();
      if (v28)
      {
        v29 = v28 == -1;
      }

      else
      {
        v29 = MEMORY[0x1B8CA3CE0](v17, v13);
      }

      sub_1B7205478(v13, type metadata accessor for InternalAccount);
      result = sub_1B7205478(v17, type metadata accessor for InternalAccount);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      sub_1B72054D8(v22, v10, type metadata accessor for InternalAccount);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1B72054D8(v10, v19, type metadata accessor for InternalAccount);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B71FC7D0(int64_t *a1, uint64_t a2, char *a3, int64_t a4)
{
  v5 = v4;
  v143 = a1;
  v8 = type metadata accessor for InternalAccount();
  v151 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v146 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v156 = &v137 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v137 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v137 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v140 = &v137 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  result = MEMORY[0x1EEE9AC00](v22);
  v27 = *(a3 + 1);
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v31 = *v143;
    if (!*v143)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v162 = v29;
      v131 = *(v29 + 16);
      if (v131 >= 2)
      {
        while (1)
        {
          v132 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v133 = a3;
          v134 = *(v29 + 16 * v131);
          a3 = v29;
          v135 = *(v29 + 16 * (v131 - 1) + 32);
          v29 = *(v29 + 16 * (v131 - 1) + 40);
          sub_1B71FD32C(v132 + *(v151 + 72) * v134, v132 + *(v151 + 72) * v135, v132 + *(v151 + 72) * v29, v31);
          if (v5)
          {
          }

          if (v29 < v134)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1B77E4CA4(a3);
          }

          if (v131 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v136 = &a3[16 * v131];
          *v136 = v134;
          *(v136 + 1) = v29;
          v162 = a3;
          result = sub_1B77E4C18(v131 - 1);
          v29 = v162;
          v131 = *(v162 + 16);
          a3 = v133;
          if (v131 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1B77E4CA4(v29);
    v29 = result;
    goto LABEL_105;
  }

  v138 = &v137 - v24;
  v139 = v26;
  v147 = v25;
  v137 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v145 = a3;
  v157 = v8;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v149 = v27;
      v32 = *a3;
      v33 = *(v151 + 72);
      v154 = v28 + 1;
      v34 = v138;
      sub_1B72053B0(v32 + v33 * v31, v138, type metadata accessor for InternalAccount);
      v144 = v30;
      v152 = v33;
      v35 = v32 + v33 * v30;
      v36 = v139;
      sub_1B72053B0(v35, v139, type metadata accessor for InternalAccount);
      v37 = *(v157 + 44);
      v38 = *(v34 + v37 + 8);
      v160 = *(v34 + v37);
      v161 = v38;
      v39 = (v36 + v37);
      v41 = *v39;
      v40 = v39[1];
      v158 = v41;
      v159 = v40;
      v148 = sub_1B7205210();
      v42 = sub_1B7801808();
      v142 = v5;
      if (v42)
      {
        LODWORD(v150) = v42 == -1;
      }

      else
      {
        LODWORD(v150) = MEMORY[0x1B8CA3CE0](v34, v36);
      }

      v141 = v29;
      sub_1B7205478(v36, type metadata accessor for InternalAccount);
      result = sub_1B7205478(v34, type metadata accessor for InternalAccount);
      v43 = v144 + 2;
      v44 = v152 * (v144 + 2);
      v45 = v32 + v44;
      v46 = v154;
      v47 = v152 * v154;
      v48 = v32 + v152 * v154;
      a3 = v140;
      do
      {
        v5 = v43;
        v50 = v46;
        v29 = v47;
        v31 = v44;
        if (v43 >= v149)
        {
          break;
        }

        v154 = v43;
        v155 = v46;
        sub_1B72053B0(v45, a3, type metadata accessor for InternalAccount);
        v51 = v147;
        sub_1B72053B0(v48, v147, type metadata accessor for InternalAccount);
        v52 = *(v157 + 44);
        v53 = *&a3[v52 + 8];
        v160 = *&a3[v52];
        v161 = v53;
        v54 = (v51 + v52);
        v56 = *v54;
        v55 = v54[1];
        v158 = v56;
        v159 = v55;
        v57 = sub_1B7801808();
        v153 = v31;
        v49 = v57 ? v57 == -1 : MEMORY[0x1B8CA3CE0](a3, v51);
        sub_1B7205478(v51, type metadata accessor for InternalAccount);
        result = sub_1B7205478(a3, type metadata accessor for InternalAccount);
        v5 = v154;
        v50 = v155;
        v43 = v154 + 1;
        v31 = v153;
        v45 += v152;
        v48 += v152;
        v46 = v155 + 1;
        v47 = v29 + v152;
        v44 = v153 + v152;
      }

      while ((v150 & 1) == (v49 & 1));
      if ((v150 & 1) == 0)
      {
        v31 = v5;
        v29 = v141;
        v5 = v142;
        a3 = v145;
        v8 = v157;
LABEL_30:
        v30 = v144;
        goto LABEL_31;
      }

      v30 = v144;
      v8 = v157;
      if (v5 < v144)
      {
        goto LABEL_132;
      }

      if (v144 < v5)
      {
        v58 = v144 * v152;
        do
        {
          if (v30 != v50)
          {
            v155 = v50;
            v60 = *v145;
            if (!*v145)
            {
              goto LABEL_138;
            }

            sub_1B72054D8(v60 + v58, v146, type metadata accessor for InternalAccount);
            if (v58 < v29 || v60 + v58 >= (v60 + v31))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1B72054D8(v146, v60 + v29, type metadata accessor for InternalAccount);
            v8 = v157;
            v50 = v155;
          }

          ++v30;
          v29 -= v152;
          v31 -= v152;
          v58 += v152;
        }

        while (v30 < v50--);
        v31 = v5;
        v29 = v141;
        v5 = v142;
        a3 = v145;
        goto LABEL_30;
      }

      v31 = v5;
      v29 = v141;
      v5 = v142;
      a3 = v145;
    }

LABEL_31:
    v61 = *(a3 + 1);
    if (v31 < v61)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v137)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v154 = v31;
    if ((result & 1) == 0)
    {
      result = sub_1B723E420(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v84 = *(v29 + 16);
    v83 = *(v29 + 24);
    v85 = v84 + 1;
    if (v84 >= v83 >> 1)
    {
      result = sub_1B723E420((v83 > 1), v84 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v85;
    v86 = v29 + 16 * v84;
    v87 = v154;
    *(v86 + 32) = v30;
    *(v86 + 40) = v87;
    v155 = *v143;
    if (!v155)
    {
      goto LABEL_140;
    }

    if (v84)
    {
      while (1)
      {
        v31 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v88 = *(v29 + 32);
          v89 = *(v29 + 40);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_72:
          if (v91)
          {
            goto LABEL_119;
          }

          v104 = (v29 + 16 * v85);
          v106 = *v104;
          v105 = v104[1];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_122;
          }

          v110 = (v29 + 32 + 16 * v31);
          v112 = *v110;
          v111 = v110[1];
          v98 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v98)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v108, v113))
          {
            goto LABEL_126;
          }

          if (v108 + v113 >= v90)
          {
            if (v90 < v113)
            {
              v31 = v85 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v114 = (v29 + 16 * v85);
        v116 = *v114;
        v115 = v114[1];
        v98 = __OFSUB__(v115, v116);
        v108 = v115 - v116;
        v109 = v98;
LABEL_86:
        if (v109)
        {
          goto LABEL_121;
        }

        v117 = v29 + 16 * v31;
        v119 = *(v117 + 32);
        v118 = *(v117 + 40);
        v98 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v98)
        {
          goto LABEL_124;
        }

        if (v120 < v108)
        {
          goto LABEL_3;
        }

LABEL_93:
        v125 = v31 - 1;
        if (v31 - 1 >= v85)
        {
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
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v126 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v127 = a3;
        a3 = v29;
        v128 = *(v29 + 32 + 16 * v125);
        v129 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1B71FD32C(v126 + *(v151 + 72) * v128, v126 + *(v151 + 72) * v129, v126 + *(v151 + 72) * v29, v155);
        if (v5)
        {
        }

        if (v29 < v128)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1B77E4CA4(a3);
        }

        if (v125 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v130 = &a3[16 * v125];
        *(v130 + 4) = v128;
        *(v130 + 5) = v29;
        v162 = a3;
        result = sub_1B77E4C18(v31);
        v29 = v162;
        v85 = *(v162 + 16);
        v8 = v157;
        a3 = v127;
        if (v85 <= 1)
        {
          goto LABEL_3;
        }
      }

      v92 = v29 + 32 + 16 * v85;
      v93 = *(v92 - 64);
      v94 = *(v92 - 56);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_117;
      }

      v97 = *(v92 - 48);
      v96 = *(v92 - 40);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_118;
      }

      v99 = (v29 + 16 * v85);
      v101 = *v99;
      v100 = v99[1];
      v98 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v98)
      {
        goto LABEL_120;
      }

      v98 = __OFADD__(v90, v102);
      v103 = v90 + v102;
      if (v98)
      {
        goto LABEL_123;
      }

      if (v103 >= v95)
      {
        v121 = (v29 + 32 + 16 * v31);
        v123 = *v121;
        v122 = v121[1];
        v98 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v98)
        {
          goto LABEL_127;
        }

        if (v90 < v124)
        {
          v31 = v85 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v154;
    if (v154 >= v27)
    {
      goto LABEL_103;
    }
  }

  v62 = v30 + v137;
  if (__OFADD__(v30, v137))
  {
    goto LABEL_133;
  }

  if (v62 >= v61)
  {
    v62 = *(a3 + 1);
  }

  if (v62 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v62)
  {
    goto LABEL_52;
  }

  v141 = v29;
  v142 = v5;
  v63 = *a3;
  v64 = *(v151 + 72);
  v65 = *a3 + v64 * (v31 - 1);
  v66 = -v64;
  v144 = v30;
  v67 = v30 - v31;
  v155 = v63;
  v148 = v64;
  v149 = v62;
  v68 = v63 + v31 * v64;
LABEL_42:
  v153 = v65;
  v154 = v31;
  v150 = v68;
  v69 = v68;
  v152 = v67;
  v70 = v65;
  while (1)
  {
    sub_1B72053B0(v69, v18, type metadata accessor for InternalAccount);
    sub_1B72053B0(v70, v15, type metadata accessor for InternalAccount);
    v71 = *(v8 + 44);
    v72 = *&v18[v71 + 8];
    v160 = *&v18[v71];
    v161 = v72;
    v73 = &v15[v71];
    v75 = *v73;
    v74 = *(v73 + 1);
    v158 = v75;
    v159 = v74;
    sub_1B7205210();
    v76 = sub_1B7801808();
    if (v76)
    {
      v77 = v76 == -1;
    }

    else
    {
      v77 = MEMORY[0x1B8CA3CE0](v18, v15);
    }

    sub_1B7205478(v15, type metadata accessor for InternalAccount);
    result = sub_1B7205478(v18, type metadata accessor for InternalAccount);
    if ((v77 & 1) == 0)
    {
      v8 = v157;
LABEL_41:
      v31 = v154 + 1;
      v65 = v153 + v148;
      v67 = v152 - 1;
      v68 = v150 + v148;
      if (v154 + 1 == v149)
      {
        v31 = v149;
        v29 = v141;
        v5 = v142;
        v30 = v144;
        a3 = v145;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v8 = v157;
    if (!v155)
    {
      break;
    }

    v78 = v18;
    v79 = v15;
    v80 = v156;
    sub_1B72054D8(v69, v156, type metadata accessor for InternalAccount);
    swift_arrayInitWithTakeFrontToBack();
    v81 = v80;
    v15 = v79;
    v18 = v78;
    sub_1B72054D8(v81, v70, type metadata accessor for InternalAccount);
    v70 += v66;
    v69 += v66;
    if (__CFADD__(v67++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}