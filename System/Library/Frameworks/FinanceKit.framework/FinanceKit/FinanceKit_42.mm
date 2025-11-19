void sub_1B758C968(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B78000B8();
  __swift_project_value_buffer(v10, qword_1EDAF65B0);

  v11 = sub_1B7800098();
  v12 = sub_1B78011F8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1B71A3EF8(a2, a3, &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1B71A3EF8(a4, a5, &v17);
    _os_log_impl(&dword_1B7198000, v11, v12, "Deleting payment transaction with transactionID: %s for fpanID: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v14, -1, -1);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
  }

  v15 = [*(*(a1 + 16) + 16) newBackgroundContext];
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  sub_1B7801468();
}

void sub_1B758CBC4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v12 = sub_1B758D6E0(a2, a3);
  if (!v6)
  {
    v13 = v12;
    if (v12)
    {
      type metadata accessor for ManagedInternalTransaction();
      v14 = [v13 accountId];
      v15 = sub_1B7800868();
      v17 = v16;

      v18 = [v13 institutionId];
      v19 = sub_1B7800868();
      v21 = v20;

      v37[0] = v15;
      v37[1] = v17;
      v37[2] = v19;
      v37[3] = v21;
      sub_1B729D790();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1B7807CD0;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1B721FF04();
      *(v22 + 32) = a5;
      *(v22 + 40) = a6;

      v23 = sub_1B78010E8();
      v24 = sub_1B74F3DC8(v37, v23);

      sub_1B74F0D7C(v24, a4);

      v37[0] = 0;
      if ([a4 save_])
      {
        v30 = qword_1EDAF65A8;
        v31 = v37[0];
        if (v30 != -1)
        {
          swift_once();
        }

        v32 = sub_1B78000B8();
        __swift_project_value_buffer(v32, qword_1EDAF65B0);
        v33 = sub_1B7800098();
        v34 = sub_1B78011F8();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1B7198000, v33, v34, "Successfully deleted payment transaction.", v35, 2u);
          MEMORY[0x1B8CA7A40](v35, -1, -1);
        }
      }

      else
      {
        v36 = v37[0];
        sub_1B77FF318();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v25 = sub_1B78000B8();
      __swift_project_value_buffer(v25, qword_1EDAF65B0);

      v26 = sub_1B7800098();
      v27 = sub_1B78011D8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1B71A3EF8(a2, a3, v37);
        _os_log_impl(&dword_1B7198000, v26, v27, "Failed to find account for fpanID: %s, unable to delete transaction.", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1B8CA7A40](v29, -1, -1);
        MEMORY[0x1B8CA7A40](v28, -1, -1);
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PaymentTransactionDeleter.deleteAllTransactions(forPrimaryAccountIdentifier:)(Swift::String forPrimaryAccountIdentifier)
{
  v6 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&dword_1B7198000, "bankConnect/deleteAllPaymentTransactions", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);
  v3 = [*(*(v1 + 16) + 16) newBackgroundContext];
  v4 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B7801468();

  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
}

void sub_1B758D190(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = [objc_opt_self() currentQueryGenerationToken];
  *&v29 = 0;
  v9 = [a1 setQueryGenerationFromToken:v8 error:&v29];

  if (!v9)
  {
    v21 = v29;
    sub_1B77FF318();

LABEL_6:
    swift_willThrow();
    return;
  }

  v10 = v29;
  v11 = sub_1B758D6E0(a3, a4);
  if (v4)
  {
    return;
  }

  if (v11)
  {
    v12 = v11;
    v13 = [v11 accountId];
    v14 = sub_1B7800868();
    v16 = v15;

    v17 = [v12 institutionId];
    v18 = sub_1B7800868();
    v20 = v19;

    *&v29 = v14;
    *(&v29 + 1) = v16;
    v30 = v18;
    v31 = v20;
    sub_1B74F4D80(&v29, a1);

    *&v29 = 0;
    if ([a1 save_])
    {
      v27 = v29;
      return;
    }

    v28 = v29;
    sub_1B77FF318();

    goto LABEL_6;
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1B78000B8();
  __swift_project_value_buffer(v22, qword_1EDAF65B0);

  v23 = sub_1B7800098();
  v24 = sub_1B78011D8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v29 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1B71A3EF8(a3, a4, &v29);
    _os_log_impl(&dword_1B7198000, v23, v24, "deleteAllTransactions() called with primaryAccountIdentifier, %s, that does not match any known accounts.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1B8CA7A40](v26, -1, -1);
    MEMORY[0x1B8CA7A40](v25, -1, -1);
  }
}

uint64_t PaymentTransactionDeleter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B758D508(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v10 = _os_activity_create(&dword_1B7198000, "bankConnect/deletePaymentTransaction", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v10, &state);
  sub_1B758C968(v9, a1, a2, a3, a4);
  os_activity_scope_leave(&state);
  return swift_unknownObjectRelease();
}

unint64_t sub_1B758D6E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ManagedInternalAccount();
  result = static ManagedInternalAccount.existingAccount(withExternalAccountID:in:)(a1, a2);
  if (!v2 && !result)
  {
    *&v7 = a1;
    *(&v7 + 1) = a2;
    v8 = 0xD000000000000021;
    v9 = 0x80000001B787E620;

    v6 = static ManagedInternalAccount.existingAccount(with:in:)(&v7);

    return v6;
  }

  return result;
}

uint64_t ManagedConsent.institution.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 institutionObject];

  return Institution.init(_:)(v3, a1);
}

uint64_t static ManagedConsent.existingConsents(forInstitutionID:in:)(uint64_t a1, uint64_t a2)
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v4 = objc_msgSendSuper2(&v9, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_1B78010E8();
  [v4 setPredicate_];

  v7 = sub_1B7801498();
  return v7;
}

unint64_t static ManagedConsent.existingConsent(withID:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
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

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

id ManagedConsent.__allocating_init(_:managedInstitution:context:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(v4) initWithContext_];
  v9 = sub_1B77FF9B8();
  [v8 setId_];

  type metadata accessor for BankConnectConsent();
  v10 = sub_1B7800838();
  [v8 setConsentID_];

  [v8 setInstitutionObject_];
  _s10FinanceKit14ManagedConsentC6update_4withyAC_AA011BankConnectD0VtFZ_0(v8, a1);

  sub_1B75906B0(a1, type metadata accessor for BankConnectConsent);
  return v8;
}

unint64_t static ManagedConsent.existingConsent(withConsentID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
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

id static ManagedConsent.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedConsent.predicateForConsent(withInstitutionID:)(uint64_t a1, uint64_t a2)
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

unint64_t static ManagedConsent.existingConsent(grantingAccessTo:in:)(__int128 *a1)
{
  v2 = v1;
  v11 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v5 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v12 = v11;
  v13 = v3;
  v14 = v4;
  v6 = _s10FinanceKit14ManagedConsentC012predicateForD016grantingAccessToSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_tFZ_0(&v12);
  [v5 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
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

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v2 = v8;

    return v2;
  }

  __break(1u);
  return result;
}

void static ManagedConsent.update(_:with:consentStatus:lastUpdatedAt:)(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v6 = [a1 consentID];
  v7 = sub_1B7800868();
  v9 = v8;

  if (v7 == *a2 && v9 == a2[1])
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  v12 = [a1 refreshSequenceNumber];
  v13 = *(a2 + *(type metadata accessor for RawBankConnectData.Consent(0) + 28));
  if (v12 < v13)
  {
    [a1 setConsentTokenIdentifiedAsOutdatedAt_];
  }

  v14 = sub_1B7800838();
  [a1 setConsentID_];

  v15 = sub_1B77FF8B8();
  [a1 setAuthorizedAt_];

  v16 = sub_1B77FF8B8();
  [a1 setAuthorizedUntil_];

  v17 = sub_1B77FF8B8();
  [a1 setBackgroundRefreshLastConfirmedAt_];

  [a1 setRefreshSequenceNumber_];
  v18 = sub_1B7800838();
  [a1 setConsentToken_];

  [a1 setConsentStatusValue_];
  v19 = sub_1B77FF8B8();
  [a1 setLastUpdatedAt_];

  if ((v11 & 1) == 0)
  {

    [a1 setNotificationSubscriptionObject_];
  }
}

id ManagedConsent.consentStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 consentStatusValue];
  if (!result)
  {
    v5 = 0;
LABEL_4:
    *a1 = v5;
    return result;
  }

  v5 = result;
  if (result == 1)
  {
    goto LABEL_4;
  }

  sub_1B7801A78();

  [v2 consentStatusValue];
  v6 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v6);

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

void sub_1B758E460(id *a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(void))
{
  v6 = [*a1 *a4];
  a5();
}

void sub_1B758E4C4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7280900(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedConsent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedConsent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedConsent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedConsent.__allocating_init(_:consentStatus:managedInstitution:context:)(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4)
{
  v5 = v4;
  v37 = a3;
  v36 = sub_1B77FF988();
  v9 = *(v36 - 8);
  v10 = MEMORY[0x1EEE9AC00](v36);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34[-v13];
  v15 = sub_1B77FFA18();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *a2;
  v19 = objc_allocWithZone(v5);
  v38 = a4;
  v20 = [v19 initWithContext_];
  sub_1B77FFA08();
  v21 = sub_1B77FF9B8();
  (*(v16 + 8))(v18, v15);
  [v20 setId_];

  v22 = sub_1B7800838();
  [v20 setConsentID_];

  v23 = type metadata accessor for RawBankConnectData.Consent(0);
  v24 = sub_1B77FF8B8();
  [v20 setAuthorizedAt_];

  v25 = sub_1B77FF8B8();
  [v20 setAuthorizedUntil_];

  v26 = [v20 backgroundRefreshLastConfirmedAt];
  if (v26)
  {
    v27 = v26;
    sub_1B77FF928();

    v28 = sub_1B77FF8B8();
    v29 = v36;
    (*(v9 + 8))(v14, v36);
  }

  else
  {
    v28 = 0;
    v29 = v36;
  }

  [v20 setBackgroundRefreshLastConfirmedAt_];

  [v20 setRefreshSequenceNumber_];
  v30 = sub_1B7800838();
  [v20 setConsentToken_];

  [v20 setConsentStatusValue_];
  sub_1B77FF938();
  v31 = sub_1B77FF8B8();
  (*(v9 + 8))(v12, v29);
  [v20 setLastUpdatedAt_];

  v32 = v37;
  [v20 setInstitutionObject_];

  sub_1B75906B0(a1, type metadata accessor for RawBankConnectData.Consent);
  return v20;
}

id (*ManagedConsent.consentStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedConsent.consentStatus.getter((a1 + 8));
  return sub_1B750CD24;
}

void ManagedConsent.setAccountRelationship(_:)(uint64_t a1)
{
  v3 = sub_1B7800838();
  v4 = [v1 mutableSetValueForKeyPath_];

  [v4 addObject_];
}

void ManagedConsent.grantedAccounts.getter()
{
  v1 = [v0 accountObjects];
  type metadata accessor for ManagedInternalAccount();
  sub_1B7590710(&qword_1EB997F30, type metadata accessor for ManagedInternalAccount);
  sub_1B7800F98();

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B7801958())
  {
    v2 = MEMORY[0x1E69E7CC0];

    sub_1B75474CC(v2);
  }
}

id static ManagedConsent.existingObject(with:in:)(uint64_t a1, id a2)
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

uint64_t static ManagedConsent.predicateForConsent(withID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

uint64_t static ManagedConsent.predicateForConsent(withConsentID:)(uint64_t a1, uint64_t a2)
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

uint64_t static ManagedConsent.existingConsents(forInstitutionObjectID:in:)(void *a1)
{
  v8.receiver = swift_getObjCClassFromMetadata();
  v8.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v2 = objc_msgSendSuper2(&v8, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB98F930);
  *(v3 + 64) = sub_1B73B4AF0(&qword_1EB996CF8, &qword_1EB98F930);
  *(v3 + 32) = a1;
  v4 = a1;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  v6 = sub_1B7801498();
  return v6;
}

uint64_t static ManagedConsent.linkedFPANIDs(forConsentID:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a3;
  v5 = sub_1B77FF338();
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49.receiver = swift_getObjCClassFromMetadata();
  v49.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v8 = objc_msgSendSuper2(&v49, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B721FF04();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = v8;
  v11 = sub_1B78010E8();
  [v8 setPredicate_];

  [v8 setReturnsObjectsAsFaults_];
  v12 = sub_1B7800C18();
  [v8 setRelationshipKeyPathsForPrefetching_];

  v13 = v43;
  v14 = sub_1B7801498();
  v34 = v13;
  if (v13)
  {

    return v5;
  }

  v15 = v14;
  v16 = v41;
  v50 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v18 = v41;
  if (v17)
  {
LABEL_5:
    v33 = v10;
    v16 = 0;
    v39 = v15 & 0xFFFFFFFFFFFFFF8;
    v40 = v15 & 0xC000000000000001;
    v35 = v15 + 32;
    v36 = (v18 + 8);
    v10 = MEMORY[0x1E69E7CA0];
    v38 = v15;
    v37 = v17;
    while (1)
    {
      if (v40)
      {
        v20 = MEMORY[0x1B8CA5DC0](v16, v15);
        v21 = __OFADD__(v16, 1);
        v22 = (v16 + 1);
        if (v21)
        {
LABEL_24:
          __break(1u);
LABEL_25:
          v5 = v50;
          v10 = v33;
          goto LABEL_29;
        }
      }

      else
      {
        if (v16 >= *(v39 + 16))
        {
          __break(1u);
LABEL_27:
          v17 = sub_1B7801958();
          v18 = v16;
          if (!v17)
          {
            break;
          }

          goto LABEL_5;
        }

        v20 = *(v35 + 8 * v16);
        v21 = __OFADD__(v16, 1);
        v22 = (v16 + 1);
        if (v21)
        {
          goto LABEL_24;
        }
      }

      v42 = v20;
      v43 = v22;
      v41 = [v20 accountObjects];
      sub_1B78014D8();
      sub_1B7590710(&qword_1EB990510, MEMORY[0x1E6968EB0]);
      sub_1B78017B8();
      if (v48)
      {
        v19 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1B72051F0(&v47, v46);
          sub_1B719BDE4(v46, v45);
          type metadata accessor for ManagedInternalAccount();
          if (swift_dynamicCast() && (v23 = v44, v24 = [v44 externalAccountId], v23, v24))
          {
            v25 = sub_1B7800868();
            v27 = v26;

            __swift_destroy_boxed_opaque_existential_1(v46);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_1B723E180(0, *(v19 + 2) + 1, 1, v19);
            }

            v29 = *(v19 + 2);
            v28 = *(v19 + 3);
            if (v29 >= v28 >> 1)
            {
              v19 = sub_1B723E180((v28 > 1), v29 + 1, 1, v19);
            }

            *(v19 + 2) = v29 + 1;
            v30 = &v19[16 * v29];
            *(v30 + 4) = v25;
            *(v30 + 5) = v27;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v46);
          }

          sub_1B78017B8();
        }

        while (v48);
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      (*v36)(v7, v5);
      sub_1B724428C(v19);
      v16 = v43;
      v15 = v38;
      if (v43 == v37)
      {
        goto LABEL_25;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_29:

  return v5;
}

uint64_t static ManagedConsent.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98EB08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B758F6A0()
{
  if (qword_1EB98EB08 != -1)
  {
    swift_once();
  }
}

uint64_t ManagedConsent.BackgroundRefreshInfo.authorizationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ManagedConsent.BackgroundRefreshInfo.authorizationDate.setter(uint64_t a1)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ManagedConsent.BackgroundRefreshInfo.lastConfirmationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ManagedConsent.BackgroundRefreshInfo() + 20);

  return sub_1B7280900(v3, a1);
}

uint64_t ManagedConsent.BackgroundRefreshInfo.lastConfirmationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ManagedConsent.BackgroundRefreshInfo() + 20);

  return sub_1B72DFF88(a1, v3);
}

uint64_t ManagedConsent.BackgroundRefreshInfo.confirmationSequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ManagedConsent.BackgroundRefreshInfo.confirmationNotificationSequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t ManagedConsent.BackgroundRefreshInfo.maximumNumberOfRefreshes.setter(__int16 a1)
{
  result = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ManagedConsent.BackgroundRefreshInfo.confirmationWindow.setter(double a1)
{
  result = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ManagedConsent.BackgroundRefreshInfo.confirmationExpiryWindow.setter(double a1)
{
  result = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ManagedConsent.BackgroundRefreshInfo.earliestNotificationDate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
  sub_1B7280900(v0 + *(refreshed + 20), v3);
  v9 = *(v5 + 48);
  if (v9(v3, 1, v4) == 1)
  {
    (*(v5 + 16))(v7, v0, v4);
    if (v9(v3, 1, v4) != 1)
    {
      sub_1B71F31EC(v3);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  sub_1B77FF828();
  return (*(v5 + 8))(v7, v4);
}

void ManagedConsent.backgroundRefreshInfo.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 institutionObject];
  v12 = [v11 maximumNumberOfBackgroundRefreshes];

  if (v12 >= 1 && (v13 = [v2 institutionObject], v31 = objc_msgSend(v13, sel_backgroundRefreshConfirmationWindow), v13, v31))
  {
    v14 = [v2 institutionObject];
    v15 = [v14 backgroundRefreshConfirmationExpiryWindow];

    if (v15)
    {
      v30 = [v2 backgroundRefreshConfirmationSequenceNumber];
      v16 = [v2 backgroundRefreshConfirmationNotificationSequenceNumber];
      v17 = [v2 authorizedAt];
      sub_1B77FF928();

      v18 = [v2 backgroundRefreshLastConfirmedAt];
      if (v18)
      {
        v19 = v18;
        sub_1B77FF928();

        v20 = 0;
      }

      else
      {
        v20 = 1;
      }

      (*(v8 + 56))(v6, v20, 1, v7);
      [v31 doubleValue];
      v26 = v25;
      [v15 doubleValue];
      v28 = v27;

      (*(v8 + 32))(a1, v10, v7);
      refreshed = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
      sub_1B7205340(v6, a1 + refreshed[5]);
      *(a1 + refreshed[6]) = v30;
      *(a1 + refreshed[7]) = v16;
      *(a1 + refreshed[8]) = v12;
      *(a1 + refreshed[9]) = v26;
      *(a1 + refreshed[10]) = v28;
      (*(*(refreshed - 1) + 56))(a1, 0, 1, refreshed);
    }

    else
    {
      v23 = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
      (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
      v24 = v31;
    }
  }

  else
  {
    v21 = type metadata accessor for ManagedConsent.BackgroundRefreshInfo();
    v22 = *(*(v21 - 8) + 56);

    v22(a1, 1, 1, v21);
  }
}

void _s10FinanceKit14ManagedConsentC6update_4withyAC_AA011BankConnectD0VtFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = [a1 consentID];
  v8 = sub_1B7800868();
  v10 = v9;

  v11 = type metadata accessor for BankConnectConsent();
  v12 = (a2 + v11[5]);
  if (v8 == *v12 && v10 == v12[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B78020F8();
  }

  v15 = [a1 refreshSequenceNumber];
  v16 = *(a2 + v11[9]);
  if (v15 < v16)
  {
    [a1 setConsentTokenIdentifiedAsOutdatedAt_];
  }

  v17 = sub_1B7800838();
  [a1 setConsentID_];

  v18 = sub_1B77FF8B8();
  [a1 setAuthorizedAt_];

  v19 = sub_1B77FF8B8();
  [a1 setAuthorizedUntil_];

  sub_1B7280900(a2 + v11[8], v6);
  v20 = sub_1B77FF988();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v6, 1, v20) != 1)
  {
    v22 = sub_1B77FF8B8();
    (*(v21 + 8))(v6, v20);
  }

  [a1 setBackgroundRefreshLastConfirmedAt_];

  [a1 setRefreshSequenceNumber_];
  v23 = sub_1B7800838();
  [a1 setConsentToken_];

  [a1 setConsentStatusValue_];
  v24 = sub_1B77FF8B8();
  [a1 setLastUpdatedAt_];

  if ((v14 & 1) == 0)
  {
    [a1 setNotificationSubscriptionObject_];
  }
}

id _s10FinanceKit14ManagedConsentC012predicateForD016grantingAccessToSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_tFZ_0(uint64_t *a1)
{
  v1 = a1[1];
  v12 = *a1;
  v3 = a1[2];
  v2 = a1[3];
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
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v12;
  *(v8 + 40) = v1;
  *(v4 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

uint64_t sub_1B75906B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7590710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ManagedConsent.BackgroundRefreshInfo()
{
  result = qword_1EDAF8BA8;
  if (!qword_1EDAF8BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void keypath_setTm_8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  v8 = a5();
  [v7 *a6];
}

void sub_1B75908AC()
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

id ManagedCascadeExtractedOrderEmail.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v3 = sub_1B7590F74(a1, a2);

  return v3;
}

FinanceKit::CascadeExtractedOrder::OrderEmail::EmailType_optional ManagedCascadeExtractedOrderEmail.emailType.getter@<W0>(_BYTE *a1@<X8>)
{
  result.value = CascadeExtractedOrder.OrderEmail.EmailType.init(rawValue:)([v1 emailTypeValue]).value;
  v4 = v5;
  if (v5 == 9)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

FinanceKit::CascadeExtractedOrder::ShippingFulfillment::Status_optional ManagedCascadeExtractedOrderEmail.shippingDetailsShippingStatus.getter@<W0>(_BYTE *a1@<X8>)
{
  result.value = CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)([v1 shippingDetailsShippingStatusValue]).value;
  v4 = v5;
  if (v5 == 10)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

id ManagedCascadeExtractedOrderEmail.orderContentType.getter@<X0>(char *a1@<X8>)
{
  result = [v1 orderContentTypeValue];
  v4 = result == 1;
  if (result == 2)
  {
    v4 = 2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1B7590A68@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateSent];
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

void sub_1B7590B0C(uint64_t a1, void **a2)
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

  [v7 setDateSent_];
}

id (*ManagedCascadeExtractedOrderEmail.emailType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  CascadeExtractedOrder.OrderEmail.EmailType.init(rawValue:)([v1 emailTypeValue]);
  v3 = v5;
  if (v5 == 9)
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_1B748511C;
}

id (*ManagedCascadeExtractedOrderEmail.shippingDetailsShippingStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)([v1 shippingDetailsShippingStatusValue]);
  v3 = v5;
  if (v5 == 10)
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_1B7590D40;
}

id (*ManagedCascadeExtractedOrderEmail.orderContentType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 orderContentTypeValue];
  v4 = v3 == 1;
  if (v3 == 2)
  {
    v4 = 2;
  }

  *(a1 + 8) = v4;
  return sub_1B74852DC;
}

id ManagedCascadeExtractedOrderEmail.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCascadeExtractedOrderEmail.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCascadeExtractedOrderEmail.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCascadeExtractedOrderEmail.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit33ManagedCascadeExtractedOrderEmail;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id sub_1B7590F74(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = [objc_allocWithZone(v2) initWithContext_];
  v9 = *(a1 + 8);
  v10 = v8;
  if (v9)
  {
    v9 = sub_1B7800838();
  }

  [v8 setMessageID_];

  CascadeExtractedOrder.OrderEmail.messageIDHash.getter();
  if (v11)
  {
    v12 = sub_1B7800838();
  }

  else
  {
    v12 = 0;
  }

  [v8 setMessageIDHash_];

  v13 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  sub_1B7280900(a1 + v13[5], v7);
  v14 = sub_1B77FF988();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v7, 1, v14) != 1)
  {
    v16 = sub_1B77FF8B8();
    (*(v15 + 8))(v7, v14);
  }

  [v8 setDateSent_];

  if (*(a1 + v13[6] + 8))
  {
    v17 = sub_1B7800838();
  }

  else
  {
    v17 = 0;
  }

  [v8 setSubject_];

  if (*(a1 + v13[7] + 8))
  {
    v18 = sub_1B7800838();
  }

  else
  {
    v18 = 0;
  }

  [v8 setSenderDomain_];

  if (*(a1 + v13[8] + 8))
  {
    v19 = sub_1B7800838();
  }

  else
  {
    v19 = 0;
  }

  [v8 setFromEmailAddress_];

  if (*(a1 + v13[9] + 8))
  {
    v20 = sub_1B7800838();
  }

  else
  {
    v20 = 0;
  }

  [v8 setFromDisplayName_];

  if (*(a1 + v13[10] + 8))
  {
    v21 = sub_1B7800838();
  }

  else
  {
    v21 = 0;
  }

  [v8 setToEmailAddress_];

  if (*(a1 + v13[11] + 8))
  {
    v22 = sub_1B7800838();
  }

  else
  {
    v22 = 0;
  }

  [v8 setToDisplayName_];

  if (*(a1 + v13[12] + 8))
  {
    v23 = sub_1B7800838();
  }

  else
  {
    v23 = 0;
  }

  [v8 setReplyToEmailAddress_];

  if (*(a1 + v13[13] + 8))
  {
    v24 = sub_1B7800838();
  }

  else
  {
    v24 = 0;
  }

  [v8 setReplyToDisplayName_];

  [v8 setEmailTypeValue_];
  v25 = a1 + v13[17];
  if (*(v25 + 8))
  {
    v26 = sub_1B7800838();
  }

  else
  {
    v26 = 0;
  }

  [v8 setOrderDetailsOrderNumber_];

  if (*(v25 + 24))
  {
    v27 = sub_1B7800838();
  }

  else
  {
    v27 = 0;
  }

  [v8 setOrderDetailsMerchantDisplayName_];

  [v8 setShippingDetailsShippingStatusValue_];
  if (*(v25 + 48))
  {
    v28 = sub_1B7800838();
  }

  else
  {
    v28 = 0;
  }

  [v8 setShippingDetailsTrackingNumber_];

  if (*(v25 + 64))
  {
    v29 = sub_1B7800838();
  }

  else
  {
    v29 = 0;
  }

  [v8 setShippingDetailsCarrierName_];

  [v8 setOrderContentTypeValue_];
  if (*(a1 + v13[16] + 8))
  {
    v30 = sub_1B7800838();
  }

  else
  {
    v30 = 0;
  }

  [v8 setSpotlightDomainIdentifier_];

  if (*(a1 + v13[15] + 8))
  {
    v31 = sub_1B7800838();
  }

  else
  {
    v31 = 0;
  }

  [v8 setSpotlightUniqueIdentifier_];

  sub_1B7591528(a1);
  return v8;
}

uint64_t sub_1B7591528(uint64_t a1)
{
  v2 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HTTPRequest.addingAppleClientInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v6[5];
  v32 = v6[4];
  v33 = v9;
  v10 = v6[7];
  v34 = v6[6];
  v35 = v10;
  v11 = v6[1];
  v28 = *v6;
  v29 = v11;
  v12 = v6[3];
  v30 = v6[2];
  v31 = v12;
  (*(v5 + 16))(v8, v13, a2);
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  (*(v5 + 32))(a3, v8, a2);
  v14 = (a3 + *(type metadata accessor for HTTPRequestWithAppleClientInfo() + 36));
  v15 = v25;
  v14[4] = v24;
  v14[5] = v15;
  v16 = v27;
  v14[6] = v26;
  v14[7] = v16;
  v17 = v21;
  *v14 = v20;
  v14[1] = v17;
  v18 = v23;
  v14[2] = v22;
  v14[3] = v18;
  return sub_1B743E6F8(&v28, &v20);
}

uint64_t HTTPRequest.addingApplePayClientInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ApplePayHTTPClientInfo();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v4, a2);
  sub_1B75920C0(a1, v11);
  return sub_1B75925F0(v13, v11, a2, a3);
}

uint64_t HTTPRequest.addingAppleWebServiceSessionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v4, a2);
  (*(v9 + 16))(v12, a1, v8);
  return sub_1B7592AB4(v14, v12, a2, a3);
}

uint64_t AppleHTTPClientInfo.productType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppleHTTPClientInfo.productType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppleHTTPClientInfo.productName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppleHTTPClientInfo.productName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AppleHTTPClientInfo.productVersion.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppleHTTPClientInfo.productVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AppleHTTPClientInfo.buildVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AppleHTTPClientInfo.buildVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AppleHTTPClientInfo.frameworkBundleIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AppleHTTPClientInfo.frameworkBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t AppleHTTPClientInfo.frameworkBundleVersion.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t AppleHTTPClientInfo.frameworkBundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t AppleHTTPClientInfo.mainBundleIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t AppleHTTPClientInfo.mainBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t AppleHTTPClientInfo.mainBundleVersion.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t AppleHTTPClientInfo.mainBundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

void __swiftcall AppleHTTPClientInfo.init(productType:productName:productVersion:buildVersion:frameworkBundleIdentifier:frameworkBundleVersion:mainBundleIdentifier:mainBundleVersion:)(FinanceKit::AppleHTTPClientInfo *__return_ptr retstr, Swift::String productType, Swift::String productName, Swift::String productVersion, Swift::String buildVersion, Swift::String frameworkBundleIdentifier, Swift::String frameworkBundleVersion, Swift::String mainBundleIdentifier, Swift::String mainBundleVersion)
{
  retstr->productType = productType;
  retstr->productName = productName;
  retstr->productVersion = productVersion;
  retstr->buildVersion = buildVersion;
  retstr->frameworkBundleIdentifier = frameworkBundleIdentifier;
  retstr->frameworkBundleVersion = frameworkBundleVersion;
  retstr->mainBundleIdentifier = mainBundleIdentifier;
  retstr->mainBundleVersion = mainBundleVersion;
}

uint64_t static HTTPHeaderField.appleClientInfo(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v7 = a1[9];
  v9 = a1[10];
  v10 = a1[13];
  v12 = a1[11];
  v13 = a1[12];
  v15 = a1[14];
  v16 = *a1;
  v14 = a1[15];
  v18 = a1[2];
  v19 = a1[3];

  MEMORY[0x1B8CA4D30](59, 0xE100000000000000);
  MEMORY[0x1B8CA4D30](v3, v4);
  MEMORY[0x1B8CA4D30](59, 0xE100000000000000);
  MEMORY[0x1B8CA4D30](v5, v6);

  MEMORY[0x1B8CA4D30](47, 0xE100000000000000);
  MEMORY[0x1B8CA4D30](v9, v12);

  MEMORY[0x1B8CA4D30](47, 0xE100000000000000);
  MEMORY[0x1B8CA4D30](v15, v14);
  MEMORY[0x1B8CA4D30](10272, 0xE200000000000000);
  MEMORY[0x1B8CA4D30](v13, v10);

  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  MEMORY[0x1B8CA4D30](v16, v2);

  MEMORY[0x1B8CA4D30](3940414, 0xE300000000000000);
  MEMORY[0x1B8CA4D30](v18, v19);

  MEMORY[0x1B8CA4D30](3940414, 0xE300000000000000);
  MEMORY[0x1B8CA4D30](v8, v7);

  result = MEMORY[0x1B8CA4D30](62, 0xE100000000000000);
  *a2 = 0xD000000000000013;
  a2[1] = 0x80000001B78855D0;
  a2[2] = 60;
  a2[3] = 0xE100000000000000;
  return result;
}

uint64_t type metadata accessor for ApplePayHTTPClientInfo()
{
  result = qword_1EB997F38;
  if (!qword_1EB997F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B75920C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplePayHTTPClientInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1B7592124(uint64_t a1)
{
  v4 = (*(*(a1 + 24) + 32))(*(a1 + 16));
  if (!v2)
  {
    v5 = (v1 + *(a1 + 36));
    v6 = v5[5];
    v7 = v5[3];
    v35 = v5[4];
    v36 = v6;
    v8 = v5[5];
    v9 = v5[7];
    v37 = v5[6];
    v38 = v9;
    v10 = v5[1];
    v32[0] = *v5;
    v32[1] = v10;
    v11 = v5[3];
    v13 = *v5;
    v12 = v5[1];
    v33 = v5[2];
    v34 = v11;
    v27 = v35;
    v28 = v8;
    v14 = v5[7];
    v29 = v37;
    v30 = v14;
    v23 = v13;
    v24 = v12;
    v25 = v33;
    v26 = v7;
    sub_1B743E6F8(v32, v39);
    static HTTPHeaderField.appleClientInfo(_:)(&v23, v31);
    v39[4] = v27;
    v39[5] = v28;
    v39[6] = v29;
    v39[7] = v30;
    v39[0] = v23;
    v39[1] = v24;
    v39[2] = v25;
    v39[3] = v26;
    sub_1B743E754(v39);
    v15 = v31[0];
    v16 = v31[1];
    v17 = v31[2];
    v18 = v31[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B723E73C(0, *(v4 + 2) + 1, 1, v4);
    }

    v20 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v20 >= v19 >> 1)
    {
      v4 = sub_1B723E73C((v19 > 1), v20 + 1, 1, v4);
    }

    *(v4 + 2) = v20 + 1;
    v21 = &v4[32 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = v16;
    *(v21 + 6) = v17;
    *(v21 + 7) = v18;
  }

  return v4;
}

uint64_t ApplePayHTTPClientInfo.hardwarePlatform.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ApplePayHTTPClientInfo.hardwarePlatform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ApplePayHTTPClientInfo.currentRegion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ApplePayHTTPClientInfo() + 24);

  return sub_1B7592B74(v3, a1);
}

uint64_t ApplePayHTTPClientInfo.currentRegion.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ApplePayHTTPClientInfo() + 24);

  return sub_1B74396FC(a1, v3);
}

uint64_t ApplePayHTTPClientInfo.init(hardwarePlatform:isInternalBuild:currentRegion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for ApplePayHTTPClientInfo() + 24);
  v11 = sub_1B77FFA98();
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;

  return sub_1B74396FC(a4, a5 + v10);
}

uint64_t static HTTPHeaderField.appleSoCType(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xD000000000000010;
  a3[1] = 0x80000001B787EEE0;
  a3[2] = a1;
  a3[3] = a2;
}

void static HTTPHeaderField.appleInternalInstall()(void *a1@<X8>)
{
  *a1 = 0xD000000000000018;
  a1[1] = 0x80000001B787EEC0;
  a1[2] = 1702195828;
  a1[3] = 0xE400000000000000;
}

uint64_t static HTTPHeaderField.appleDeviceRegion(_:)@<X0>(void *a1@<X8>)
{
  result = sub_1B77FFA88();
  *a1 = 0xD000000000000015;
  a1[1] = 0x80000001B787EEA0;
  a1[2] = result;
  a1[3] = v3;
  return result;
}

uint64_t sub_1B75925F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for HTTPRequestWithApplePayClientInfo() + 36);

  return sub_1B75939EC(a2, v6);
}

char *sub_1B7592680(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_1B77FFA98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*(a1 + 24) + 32))(*(a1 + 16));
  if (!v2)
  {
    v3 = v12;
    v13 = (v1 + *(a1 + 36));
    v14 = v13[1];
    v33 = 0;
    if (v14)
    {
      v15 = *v13;
      v31 = 0x80000001B787EEE0;
      v32 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B723E73C(0, *(v3 + 2) + 1, 1, v3);
      }

      v17 = *(v3 + 2);
      v16 = *(v3 + 3);
      if (v17 >= v16 >> 1)
      {
        v3 = sub_1B723E73C((v16 > 1), v17 + 1, 1, v3);
      }

      *(v3 + 2) = v17 + 1;
      v18 = &v3[32 * v17];
      *(v18 + 4) = 0xD000000000000010;
      v19 = v32;
      *(v18 + 5) = v31;
      *(v18 + 6) = v19;
      *(v18 + 7) = v14;
    }

    if (*(v13 + 16) == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B723E73C(0, *(v3 + 2) + 1, 1, v3);
      }

      v21 = *(v3 + 2);
      v20 = *(v3 + 3);
      if (v21 >= v20 >> 1)
      {
        v3 = sub_1B723E73C((v20 > 1), v21 + 1, 1, v3);
      }

      *(v3 + 2) = v21 + 1;
      v22 = &v3[32 * v21];
      *(v22 + 4) = 0xD000000000000018;
      *(v22 + 5) = 0x80000001B787EEC0;
      *(v22 + 6) = 1702195828;
      *(v22 + 7) = 0xE400000000000000;
    }

    v23 = type metadata accessor for ApplePayHTTPClientInfo();
    sub_1B7592B74(v13 + *(v23 + 24), v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1B753A884(v7);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v24 = sub_1B77FFA88();
      v26 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B723E73C(0, *(v3 + 2) + 1, 1, v3);
      }

      v28 = *(v3 + 2);
      v27 = *(v3 + 3);
      if (v28 >= v27 >> 1)
      {
        v3 = sub_1B723E73C((v27 > 1), v28 + 1, 1, v3);
      }

      (*(v9 + 8))(v11, v8);
      *(v3 + 2) = v28 + 1;
      v29 = &v3[32 * v28];
      *(v29 + 4) = 0xD000000000000015;
      *(v29 + 5) = 0x80000001B787EEA0;
      *(v29 + 6) = v24;
      *(v29 + 7) = v26;
    }
  }

  return v3;
}

uint64_t static HTTPHeaderField.appleWebServiceSession(id:)@<X0>(void *a1@<X8>)
{
  result = sub_1B77FF9A8();
  *a1 = 0xD00000000000001BLL;
  a1[1] = 0x80000001B787EE80;
  a1[2] = result;
  a1[3] = v3;
  return result;
}

uint64_t sub_1B7592AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for HTTPRequestWithAppleWebServiceSessionID() + 36);
  v7 = sub_1B77FFA18();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t sub_1B7592B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7592BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1B7592C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B7592CC4()
{
  sub_1B7280028();
  if (v0 <= 0x3F)
  {
    sub_1B743DF34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B7592D50()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7592DC8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 128;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1B7592F04(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 128;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF80)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF80)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF80)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 128);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v19 + 120) = 0;
      result = 0.0;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 8) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_1B7593110(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1B77FFA98();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v9 + 80);
  if (v11)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = (v15 | 7) + *(v6 + 64);
  v19 = v15 + 17;
  if (a2 <= v14)
  {
    goto LABEL_37;
  }

  v20 = v16 + (v19 & ~v15) + (v18 & ~v17);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if (v7 >= v13)
      {
        v29 = *(v6 + 48);

        return v29(a1, v7, v5);
      }

      else if (v12 > 0x7FFFFFFE)
      {
        v30 = (*(v10 + 48))((v19 + ((a1 + v18) & ~v17)) & ~v15);
        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v28 = *(((a1 + v18) & ~v17) + 8);
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        if ((v28 + 1) >= 2)
        {
          return v28;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void sub_1B75933C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_1B77FFA98() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v11 + 80);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v14 | 7) + *(v8 + 64);
  if (v13)
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = ((v14 + 17) & ~v14) + v19;
  v21 = (v18 & ~(v14 | 7)) + v20;
  if (a3 <= v17)
  {
    goto LABEL_27;
  }

  if (v21 > 3)
  {
    v10 = 1;
    if (v17 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v24 = ~v17 + a2;
    if (v21 >= 4)
    {
      bzero(a1, v21);
      *a1 = v24;
      v25 = 1;
      if (v10 > 1)
      {
        goto LABEL_30;
      }

LABEL_65:
      if (v10)
      {
        a1[v21] = v25;
      }

      return;
    }

    v25 = (v24 >> (8 * v21)) + 1;
    if (v21)
    {
      v30 = v24 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v30;
          if (v10 <= 1)
          {
            goto LABEL_65;
          }
        }

        else
        {
          *a1 = v24;
          if (v10 <= 1)
          {
            goto LABEL_65;
          }
        }

LABEL_30:
        if (v10 == 2)
        {
          *&a1[v21] = v25;
        }

        else
        {
          *&a1[v21] = v25;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v10 <= 1)
    {
      goto LABEL_65;
    }

    goto LABEL_30;
  }

  v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

LABEL_27:
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v10 = 4;
  if (v17 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v21] = 0;
  }

  else if (v10)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v16)
  {
    v31 = *(v34 + 56);

    v31(a1, a2, v9, v7);
  }

  else
  {
    v26 = (&a1[v18] & ~(v14 | 7));
    if (v16 >= a2)
    {
      if (v15 > 0x7FFFFFFE)
      {
        v26 = ((v26 + v14 + 17) & ~v14);
        if (v15 >= a2)
        {
          v33 = *(v12 + 56);

          v33(v26, (a2 + 1));
        }

        else
        {
          if (v19 <= 3)
          {
            v32 = ~(-1 << (8 * v19));
          }

          else
          {
            v32 = -1;
          }

          if (v19)
          {
            v28 = v32 & (~v15 + a2);
            if (v19 <= 3)
            {
              v29 = v19;
            }

            else
            {
              v29 = 4;
            }

            bzero(v26, v19);
            if (v29 <= 2)
            {
              if (v29 == 1)
              {
                goto LABEL_46;
              }

              goto LABEL_80;
            }

            goto LABEL_81;
          }
        }
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *v26 = 0;
        v26[1] = 0;
        *v26 = a2 - 0x7FFFFFFF;
      }

      else
      {
        v26[1] = a2;
      }
    }

    else
    {
      if (v20 <= 3)
      {
        v27 = ~(-1 << (8 * v20));
      }

      else
      {
        v27 = -1;
      }

      if (v20)
      {
        v28 = v27 & (~v16 + a2);
        if (v20 <= 3)
        {
          v29 = ((v14 + 17) & ~v14) + v19;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v20);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
LABEL_46:
            *v26 = v28;
            return;
          }

LABEL_80:
          *v26 = v28;
          return;
        }

LABEL_81:
        if (v29 == 3)
        {
          *v26 = v28;
          *(v26 + 2) = BYTE2(v28);
        }

        else
        {
          *v26 = v28;
        }
      }
    }
  }
}

uint64_t sub_1B759382C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = swift_checkMetadataState();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *sub_1B75938D4(uint64_t a1)
{
  v2 = (*(*(a1 + 24) + 32))(*(a1 + 16));
  if (!v1)
  {
    v3 = sub_1B77FF9A8();
    v5 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B723E73C(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B723E73C((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[32 * v7];
    *(v8 + 4) = 0xD00000000000001BLL;
    *(v8 + 5) = 0x80000001B787EE80;
    *(v8 + 6) = v3;
    *(v8 + 7) = v5;
  }

  return v2;
}

uint64_t sub_1B75939EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplePayHTTPClientInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id ManagedOrderContent.orderData.getter()
{
  v1 = [*v0 orderData];

  return v1;
}

void ManagedOrderContent.updatedDate.getter()
{
  v1 = [*v0 updatedDate];
  sub_1B77FF928();
}

uint64_t ManagedOrderContent.isActive.getter()
{
  v1 = *v0;
  ManagedECommerceOrderContent.status.getter(&v10);
  if (v10)
  {
    if (v10 == 1)
    {
      return ManagedECommerceOrderContent.hasActiveReturn.getter() & 1;
    }

    v5 = 0;
  }

  else
  {
    v3 = *(ManagedECommerceOrderContent.fulfillments.getter() + 2);

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v6 = ManagedECommerceOrderContent.returns.getter();
      if (v6 >> 62)
      {
        v9 = v6;
        v7 = sub_1B7801958();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = v7 == 0;
    }

    if ([v1 hasActiveFulfillment])
    {
      active = 1;
    }

    else
    {
      active = ManagedECommerceOrderContent.hasActiveReturn.getter();
    }

    v5 = v4 | active;
  }

  return v5 & 1;
}

uint64_t ContentPackageUnarchiver.__allocating_init(maximumCompressedSize:maximumTotalSize:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ContentPackageUnarchiver.unarchive(_:workingDirectory:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v21 = a1;
  v22 = a2;
  v24 = a4;
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1B77FFA18();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA08();
  sub_1B77FF9A8();
  (*(v12 + 8))(v14, v11);
  v15 = v24;
  sub_1B77FF428();

  (*(v5 + 16))(v7, v15, v4);
  sub_1B7800248();
  v16 = sub_1B7800378();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v10, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v23;
    ContentPackageUnarchiver.unarchive(_:to:)(v21, v22, v10);
    if (v19)
    {
      (*(v5 + 8))(v15, v4);
    }

    return (*(v17 + 8))(v10, v16);
  }

  return result;
}

unint64_t ContentPackageUnarchivingError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1B7800378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentPackageUnarchivingError();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B75947CC(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v27 = [objc_opt_self() stringFromByteCount:*v8 countStyle:3];
        v28 = sub_1B7800868();
        v30 = v29;

        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1B7801A78();

        v36 = 0xD00000000000001BLL;
        v37 = 0x80000001B78856F0;
        MEMORY[0x1B8CA4D30](v28, v30);
        goto LABEL_16;
      }

      v12 = *v8;
      v13 = v8[1];
      v14 = objc_opt_self();
      v15 = [v14 stringFromByteCount:v12 countStyle:3];
      v16 = sub_1B7800868();
      v18 = v17;

      v19 = [v14 stringFromByteCount:v13 countStyle:3];
      v20 = sub_1B7800868();
      v22 = v21;

      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1B7801A78();

      v36 = 0x2061746144;
      v37 = 0xE500000000000000;
      MEMORY[0x1B8CA4D30](v16, v18);

      MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7885710);
      v23 = v20;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v5, v8, v2);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1B7801A78();

      v24 = 0x80000001B78856C0;
      v25 = 0xD00000000000002CLL;
LABEL_21:
      v36 = v25;
      v37 = v24;
      sub_1B7596550(&qword_1EB9980C8, MEMORY[0x1E69E83A8]);
      v33 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v33);

      v31 = v36;
      (*(v3 + 8))(v5, v2);
      return v31;
    }

    (*(v3 + 32))(v5, v8, v2);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1B7801A78();

    v32 = "Destination path invalid: ";
LABEL_20:
    v24 = (v32 - 32) | 0x8000000000000000;
    v25 = 0xD00000000000001ALL;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v26 = *v8;
      v22 = v8[1];
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1B7801A78();

      v36 = 0xD000000000000024;
      v37 = 0x80000001B7885650;
      v23 = v26;
LABEL_13:
      MEMORY[0x1B8CA4D30](v23, v22);
      goto LABEL_16;
    }

    (*(v3 + 32))(v5, v8, v2);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1B7801A78();

    v32 = "Archive entry path empty: ";
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 6)
  {
    (*(v3 + 32))(v5, v8, v2);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1B7801A78();

    v24 = 0x80000001B7885610;
    v25 = 0xD00000000000001CLL;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 7)
  {
    return 0xD000000000000013;
  }

  v10 = *v8;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1B7801A78();

  v36 = 0xD00000000000001ALL;
  v37 = 0x80000001B78855F0;
  v35[7] = v10;
  v11 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v11);
LABEL_16:

  return v36;
}

uint64_t ContentPackageUnarchiver.init(maximumCompressedSize:maximumTotalSize:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ContentPackageUnarchiver.unarchive(_:to:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = sub_1B7800378();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = v14;
LABEL_10:
  v18 = *(v3 + 16);
  if (v18 < v14)
  {
    type metadata accessor for ContentPackageUnarchivingError();
    sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
    result = swift_allocError();
    if (v13 > 1)
    {
      v20 = 0;
      if (v13 != 2)
      {
        goto LABEL_22;
      }

      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v17 = __OFSUB__(v23, v24);
      v20 = v23 - v24;
      if (!v17)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v13)
    {
      v20 = BYTE6(a2);
LABEL_22:
      *v19 = v20;
      v19[1] = v18;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    LODWORD(v20) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v20 = v20;
      goto LABEL_22;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v21 = result;
  type metadata accessor for ArchiveMemoryReader();
  swift_allocObject();
  result = sub_1B72BC070();
  if (!v4)
  {
    v22 = result;
    sub_1B7595CB8(a3);
    sub_1B7594830();
    MEMORY[0x1EEE9AC00](v25);
    v26[-4] = v22;
    v26[-3] = v3;
    v26[-2] = v12;
    sub_1B74A4D64(sub_1B759632C, &v26[-6], a1, a2);

    return (*(v9 + 8))(v12, v21);
  }

  return result;
}

uint64_t type metadata accessor for ContentPackageUnarchivingError()
{
  result = qword_1EB9980D8;
  if (!qword_1EB9980D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B75947CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentPackageUnarchivingError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B7594830()
{
  sub_1B78002E8();
  v0 = sub_1B7800948();

  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (v1)
  {
    MEMORY[0x1B8CA45E0](v1);
    free(v1);
  }

  else
  {
    type metadata accessor for ContentPackageUnarchivingError();
    sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
    swift_allocError();
    v3 = v2;
    v4 = MEMORY[0x1B8CA44E0]();
    if (strerror(v4))
    {
      *v3 = sub_1B7800A28();
      v3[1] = v5;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1B7594940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v133 = a2;
  v123 = a4;
  v124 = a5;
  v132 = a1;
  v140 = *MEMORY[0x1E69E9840];
  v127 = sub_1B7800298();
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v125 = &v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996EC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v131 = &v108 - v10;
  v11 = sub_1B7800348();
  v129 = *(v11 - 8);
  v130 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B7800378();
  v128 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v108 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v108 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v108 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v108 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v108 - v30;
  v32 = v134;
  result = sub_1B72BC298();
  if (v32)
  {
    return result;
  }

  v134 = v29;
  v117 = v20;
  v121 = v13;
  v122 = v17;
  v116 = v23;
  v133 = a3;
  v119 = v26;
  v118 = v31;
  v132 = v14;
  type metadata accessor for ArchiveDiskWriter();
  swift_allocObject();
  v34 = 0;
  v35 = sub_1B72BCAEC();
  v36 = sub_1B72BBD14();
  v110 = 0;
  v37 = v128;
  v120 = (v128 + 4);
  v38 = (v128 + 1);
  v115 = (v129 + 6);
  v113 = (v129 + 4);
  ++v129;
  v111 = (v128 + 2);
  v128 += 7;
  v39 = v132;
  v40 = v118;
  v41 = v122;
  v112 = v35;
  v114 = (v37 + 1);
LABEL_4:
  for (i = v134; ; i = v134)
  {
    if (!v36)
    {
    }

    if (!archive_entry_pathname_utf8())
    {
      type metadata accessor for ContentPackageUnarchivingError();
      sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    MEMORY[0x1B8CA45E0]();
    v43 = *v120;
    (*v120)(v40, i, v39);
    v44 = archive_entry_filetype();
    if (v44 != sub_1B78001F8())
    {
      v45 = archive_entry_filetype();
      if (v45 != sub_1B78001D8())
      {
        type metadata accessor for ContentPackageUnarchivingError();
        sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
        swift_allocError();
        *v72 = archive_entry_filetype();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return (*v38)(v40, v39);
      }
    }

    if (!archive_entry_size_is_set())
    {

      (*v38)(v40, v39);
      goto LABEL_6;
    }

    v46 = archive_entry_size();
    if (v46 < 1)
    {
      (*v38)(v40, v39);

      goto LABEL_6;
    }

    v47 = v46;
    v48 = v131;
    MEMORY[0x1B8CA45C0]();
    v49 = v130;
    if ((*v115)(v48, 1, v130) == 1)
    {
      break;
    }

    v50 = v121;
    (*v113)(v121, v48, v49);
    v51 = v49;
    v138 = sub_1B7800328();
    v139 = v52;
    v135 = 0x726F74535F53442ELL;
    v136 = 0xE900000000000065;
    sub_1B7205210();
    v53 = sub_1B78017F8();
    v54 = v50;
    v41 = v122;
    (*v129)(v54, v51);

    if (v53)
    {
      goto LABEL_18;
    }

    v38 = v114;
    v39 = v132;
    (*v114)(v40, v132);

LABEL_6:
    v36 = sub_1B72BBD14();
  }

  sub_1B7205418(v48, &qword_1EB996EC0);
LABEL_18:
  LODWORD(v108) = archive_entry_filetype();
  v55 = sub_1B78001D8();
  v109 = *v111;
  v109(v117, v40, v132);
  v56 = v116;
  sub_1B7800288();
  if ((sub_1B78002F8() & 1) != 0 && v108 != v55)
  {
    type metadata accessor for ContentPackageUnarchivingError();
    sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
    swift_allocError();
    v97 = v114;
    v99 = v98;
    v100 = v56;
    v101 = v56;
    v102 = v132;
    v109(v99, v100, v132);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v81 = *v97;
    (*v97)(v101, v102);
    v83 = v40;
    goto LABEL_45;
  }

  v57 = v119;
  v58 = v132;
  v43(v119, v56, v132);
  v59 = v57;
  v60 = v109;
  v109(v117, v124, v58);
  v60(v41, v57, v58);
  sub_1B7800258();
  sub_1B7596550(&qword_1EB998100, MEMORY[0x1E69E8368]);
  v61 = v125;
  sub_1B7800368();
  (*v128)(v61, 0, 1, v58);
  sub_1B72B91F0(v61);
  archive_entry_perm();
  archive_entry_filetype();
  sub_1B78001D8();
  archive_entry_set_perm();
  sub_1B72BC938();
  v108 = v34;
  v62 = 0;
  v63 = v123;
  while (1)
  {
    v137 = 0;
    v138 = 0;
    v135 = 0;
    data_block = archive_read_data_block();
    if (data_block)
    {
      if (data_block != 1)
      {
        v73 = v114;
        sub_1B72BBAB4();
        v74 = swift_allocError();
        v76 = v75;
        v77 = archive_errno();
        result = archive_error_string();
        if (!result)
        {
          __break(1u);
          goto LABEL_52;
        }

        v78 = sub_1B7800A28();
        *v76 = v77;
        *(v76 + 8) = v78;
        *(v76 + 16) = v79;
        sub_1B72BBB70();
        swift_allocError();
        *v80 = v74;
        *(v80 + 8) = 0xD000000000000019;
        *(v80 + 16) = 0x80000001B78857C0;
        *(v80 + 24) = 1;
        swift_willThrow();

        v81 = *v73;
        v82 = v132;
        (*v73)(v59, v132);
        v83 = v118;
        v84 = v82;
        return v81(v83, v84);
      }

      if (v62 == v47)
      {
        v69 = v110 + v47;
        v34 = v108;
        if (!__OFADD__(v110, v47))
        {
          v70 = *(v63 + 24);
          v110 += v47;
          v39 = v132;
          v38 = v114;
          v40 = v118;
          if (v70 < v69)
          {
            type metadata accessor for ContentPackageUnarchivingError();
            sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
            swift_allocError();
            *v105 = v70;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            v106 = *v38;
            (*v38)(v59, v39);
            return v106(v40, v39);
          }

          sub_1B72BCA14();
          if (v34)
          {

            v107 = *v38;
            (*v38)(v59, v39);
            return v107(v40, v39);
          }

          v71 = *v38;
          (*v38)(v59, v39);
          v71(v40, v39);
          v36 = sub_1B72BBD14();
          goto LABEL_4;
        }

LABEL_50:
        __break(1u);
      }

      type metadata accessor for ContentPackageUnarchivingError();
      sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
      swift_allocError();
      v103 = v114;
      v102 = v132;
      v109(v104, v59, v132);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v81 = *v103;
      (*v103)(v59, v102);
      v83 = v118;
LABEL_45:
      v84 = v102;
      return v81(v83, v84);
    }

    v65 = v137;
    v66 = v138 ? v135 : 0;
    if (archive_write_data_block() < 0)
    {
      break;
    }

    v67 = __OFADD__(v65, v66);
    v62 = v65 + v66;
    if (v67)
    {
      __break(1u);
      goto LABEL_50;
    }

    v68 = *(v63 + 24);
    v59 = v119;
    if (v68 < v62)
    {
      type metadata accessor for ContentPackageUnarchivingError();
      sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
      swift_allocError();
      *v93 = v68;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v94 = *v114;
      v95 = v59;
      goto LABEL_43;
    }
  }

  v85 = v114;
  sub_1B72BBAB4();
  v86 = swift_allocError();
  v88 = v87;
  v89 = archive_errno();
  result = archive_error_string();
  if (!result)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v90 = sub_1B7800A28();
  *v88 = v89;
  *(v88 + 8) = v90;
  *(v88 + 16) = v91;
  sub_1B72BC894();
  swift_allocError();
  *v92 = v86;
  *(v92 + 8) = 0xD00000000000001ALL;
  *(v92 + 16) = 0x80000001B78857E0;
  *(v92 + 24) = 1;
  swift_willThrow();

  v94 = *v85;
  v95 = v119;
LABEL_43:
  v96 = v132;
  v94(v95, v132);
  return (v94)(v118, v96);
}

uint64_t sub_1B759598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = v23 - v6;
  v7 = sub_1B77FF3A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7800378();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = sub_1B78009E8();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = sub_1B77FF4F8();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    sub_1B77FF4E8();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = sub_1B77FF4F8();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

void sub_1B7595CB8(uint64_t a1)
{
  v46[10] = *MEMORY[0x1E69E9840];
  v44 = sub_1B77FF3A8();
  v2 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7800378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = a1;
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = *(v6 + 16);
  v16(v8, v15, v5);
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v44);
  v17 = v8;
  v18 = v13;
  sub_1B759598C(v17, v4, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B7205418(v11, &unk_1EB994C70);
    type metadata accessor for ContentPackageUnarchivingError();
    sub_1B7596550(&qword_1EB9980D0, type metadata accessor for ContentPackageUnarchivingError);
    swift_allocError();
    v16(v19, v42, v5);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v20 = v43;
  (*(v13 + 32))(v43, v11, v12);
  v21 = [objc_opt_self() defaultManager];
  v22 = sub_1B77FF3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998108);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  v24 = *MEMORY[0x1E696A370];
  *(inited + 32) = *MEMORY[0x1E696A370];
  v25 = v24;
  v26 = sub_1B7800208();
  *(inited + 64) = MEMORY[0x1E69E75F8];
  *(inited + 40) = v26;
  sub_1B72031E8(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &qword_1EB98F3B0);
  type metadata accessor for FileAttributeKey(0);
  sub_1B7596550(&qword_1EB98F0F8, type metadata accessor for FileAttributeKey);
  v27 = sub_1B7800708();

  v46[0] = 0;
  v28 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:0 attributes:v27 error:v46];

  if (v28)
  {
    v29 = *(v18 + 8);
    v30 = v46[0];
    v29(v20, v12);
    return;
  }

  v31 = v46[0];
  v32 = sub_1B77FF318();

  swift_willThrow();
  v46[0] = v32;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  sub_1B7596598();
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v34 = v45;
  v35 = [v45 domain];
  v36 = sub_1B7800868();
  v38 = v37;

  if (v36 == sub_1B7800868() && v38 == v39)
  {

    goto LABEL_10;
  }

  v40 = sub_1B78020F8();

  if (v40)
  {
LABEL_10:
    if ([v34 code] == 516)
    {
      (*(v18 + 8))(v20, v12);

      return;
    }
  }

  swift_willThrow();
LABEL_13:
  (*(v18 + 8))(v20, v12);
}

void sub_1B7596394()
{
  sub_1B7596440();
  if (v0 <= 0x3F)
  {
    sub_1B75964A0();
    if (v1 <= 0x3F)
    {
      sub_1B7800378();
      if (v2 <= 0x3F)
      {
        sub_1B75964D0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7596440()
{
  if (!qword_1EB9980E8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB9980E8);
    }
  }
}

uint64_t sub_1B75964A0()
{
  result = qword_1EB9980F0;
  if (!qword_1EB9980F0)
  {
    result = MEMORY[0x1E69E7360];
    atomic_store(MEMORY[0x1E69E7360], &qword_1EB9980F0);
  }

  return result;
}

uint64_t sub_1B75964D0()
{
  result = qword_1EB9980F8;
  if (!qword_1EB9980F8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB9980F8);
  }

  return result;
}

uint64_t sub_1B7596550(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7596598()
{
  result = qword_1EB992C30;
  if (!qword_1EB992C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB992C30);
  }

  return result;
}

id ManagedOrderReturnLabel.__allocating_init(name:url:localizationName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v46 = a1;
  v48 = a5;
  v49 = a6;
  v47 = a4;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1B77FEE18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990530);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_1B77FF518();
  v39 = v10;
  v40 = v11;
  v41 = v18;
  v42 = v17;
  v43 = a2;
  v44 = v9;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  v21 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v22 = v21;
  sub_1B7545498(inited);
  swift_setDeallocating();
  sub_1B7263FD4(inited + 32);
  sub_1B77FF3C8();

  sub_1B77FEDF8();
  (*(v40 + 8))(v13, v39);
  v23 = sub_1B77FFF98();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v16, 1, v23);
  v26 = v49;
  if (v25 == 1)
  {
    sub_1B7264030(v16);
    v27 = 0;
  }

  else
  {
    sub_1B77FFF38();
    v27 = v28;
    (*(v24 + 8))(v16, v23);
  }

  v29 = v19;
  v30 = v41;
  v31 = [objc_allocWithZone(v45) initWithContext_];
  v32 = v42;
  v33 = sub_1B77FF598();
  [v31 setData_];

  v34 = sub_1B7800838();

  [v31 setName_];

  v35 = v44;
  if (v27)
  {
    v36 = sub_1B7800838();
  }

  else
  {
    v36 = 0;
  }

  [v31 setMimeType_];

  if (v48)
  {
    v37 = sub_1B7800838();
  }

  else
  {
    v37 = 0;
  }

  [v31 setLocalizationName_];

  sub_1B720A388(v32, v30);
  (*(v35 + 8))(a3, v29);
  return v31;
}

id ManagedOrderReturnLabel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderReturnLabel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderReturnLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedOrderReturnLabel.__allocating_init(data:name:mimeType:localizationName:context:)(uint64_t a1, unint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v15 = [objc_allocWithZone(v10) initWithContext_];
  v16 = sub_1B77FF598();
  [v15 setData_];

  v17 = sub_1B7800838();

  [v15 setName_];

  if (a6)
  {
    v18 = sub_1B7800838();
  }

  else
  {
    v18 = 0;
  }

  [v15 setMimeType_];

  if (a8)
  {
    v19 = sub_1B7800838();
  }

  else
  {
    v19 = 0;
  }

  [v15 setLocalizationName_];

  sub_1B720A388(a1, a2);
  return v15;
}

uint64_t BankConnectAutoBugCaptureReporter.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(FKAutoBugCaptureReporter) init];
  return v0;
}

void BankConnectAutoBugCaptureReporter.reportInstitutionsBatchRequestIssue(_:lastRefreshDate:secondsBetweenLastRefreshDateAndNow:primaryAccountIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1B7598CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B780D870;
  *(inited + 32) = 0x726665527473616CLL;
  *(inited + 40) = 0xEF65746144687365;
  *(inited + 48) = sub_1B77FF958();
  *(inited + 56) = v8;
  *(inited + 64) = 0xD000000000000023;
  *(inited + 72) = 0x80000001B7876F70;
  *(inited + 80) = sub_1B7800F58();
  *(inited + 88) = v9;
  *(inited + 96) = 0xD000000000000018;
  *(inited + 104) = 0x80000001B78769B0;
  v10 = 7104878;
  if (a4)
  {
    v10 = a3;
  }

  v11 = 0xE300000000000000;
  if (a4)
  {
    v11 = a4;
  }

  *(inited + 112) = v10;
  *(inited + 120) = v11;

  sub_1B72020F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D8);
  swift_arrayDestroy();
  v12 = *(v4 + 16);
  v13 = sub_1B7800838();
  v14 = sub_1B7800838();
  v15 = sub_1B7800838();
  v16 = sub_1B7800838();

  v17 = sub_1B7800708();

  [v12 reportIssueWithDomain:v13 type:v14 subtype:v15 subtypeContext:v16 event:v17];
}

void BankConnectAutoBugCaptureReporter.reportValidationIssue(_:error:)()
{
  sub_1B75972F0();
  sub_1B759A52C();
  v1 = *(v0 + 16);
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();

  v6 = sub_1B7800708();

  [v1 reportIssueWithDomain:v2 type:v3 subtype:v4 subtypeContext:v5 event:v6];
}

uint64_t sub_1B75972F0()
{
  if (*v0)
  {
    v1 = 0x45676E6964616F6CLL;
  }

  else
  {
    v1 = 0x69746164696C6176;
  }

  if (*v0)
  {
    v2 = 0xEC000000726F7272;
  }

  else
  {
    v2 = 0xEF726F7272456E6FLL;
  }

  sub_1B759A490(1);

  sub_1B759ABBC();
  v3 = sub_1B78017D8();

  sub_1B74372D0(1uLL, v1, v2);

  sub_1B759AC10();
  sub_1B78009F8();

  return v3;
}

uint64_t BankConnectAutoBugCaptureReporter.ValidationIssueType.rawValue.getter()
{
  if (*v0)
  {
    return 0x45676E6964616F6CLL;
  }

  else
  {
    return 0x69746164696C6176;
  }
}

FinanceKit::BankConnectAutoBugCaptureReporter::ValidationIssueType_optional __swiftcall BankConnectAutoBugCaptureReporter.ValidationIssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B75974E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x45676E6964616F6CLL;
  }

  else
  {
    v3 = 0x69746164696C6176;
  }

  if (v2)
  {
    v4 = 0xEF726F7272456E6FLL;
  }

  else
  {
    v4 = 0xEC000000726F7272;
  }

  if (*a2)
  {
    v5 = 0x45676E6964616F6CLL;
  }

  else
  {
    v5 = 0x69746164696C6176;
  }

  if (*a2)
  {
    v6 = 0xEC000000726F7272;
  }

  else
  {
    v6 = 0xEF726F7272456E6FLL;
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

uint64_t sub_1B759759C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7597634()
{
  sub_1B7800798();
}

uint64_t sub_1B75976B8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B759774C@<X0>(char *a1@<X8>)
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

void sub_1B75977AC(uint64_t *a1@<X8>)
{
  v2 = 0x69746164696C6176;
  if (*v1)
  {
    v2 = 0x45676E6964616F6CLL;
  }

  v3 = 0xEF726F7272456E6FLL;
  if (*v1)
  {
    v3 = 0xEC000000726F7272;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B7597800()
{
  v1 = *v0;
  sub_1B759A490(1);

  sub_1B759ABBC();
  v2 = sub_1B78017D8();

  v3 = 0x61766E4961746164;
  v4 = 0xEB0000000064696CLL;
  if (v1 == 1)
  {
    v3 = 0x65736E6F70736572;
    v4 = 0xEF64696C61766E49;
  }

  if (v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x80000001B78745C0;
  }

  sub_1B74372D0(1uLL, v5, v6);

  sub_1B759AC10();
  sub_1B78009F8();

  return v2;
}

unint64_t BankConnectAutoBugCaptureReporter.WebServiceIssueType.rawValue.getter()
{
  v1 = 0x65736E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x61766E4961746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

FinanceKit::BankConnectAutoBugCaptureReporter::WebServiceIssueType_optional __swiftcall BankConnectAutoBugCaptureReporter.WebServiceIssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7597A6C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF64696C61766E49;
  v3 = 0x65736E6F70736572;
  v4 = *a1;
  v5 = 0x61766E4961746164;
  v6 = 0xEB0000000064696CLL;
  if (v4 == 1)
  {
    v5 = 0x65736E6F70736572;
    v6 = 0xEF64696C61766E49;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001B78745C0;
  }

  if (*a2 != 1)
  {
    v3 = 0x61766E4961746164;
    v2 = 0xEB0000000064696CLL;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001B78745C0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B7597B80()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7597C3C()
{
  sub_1B7800798();
}

uint64_t sub_1B7597CE4()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7597DA8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF64696C61766E49;
  v4 = 0x65736E6F70736572;
  if (v2 != 1)
  {
    v4 = 0x61766E4961746164;
    v3 = 0xEB0000000064696CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v5)
  {
    v3 = 0x80000001B78745C0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1B7597E20()
{
  v1 = *v0;
  sub_1B759A490(1);

  sub_1B759ABBC();
  v2 = sub_1B78017D8();

  if (v1 <= 4)
  {
    v3 = "deleteLocalConsent";
    v13 = 0xD000000000000014;
    v14 = "deletePendingConsent";
    v15 = 0xD00000000000001CLL;
    if (v1 == 3)
    {
      v15 = 0xD000000000000012;
    }

    else
    {
      v14 = "insertCloudConsent";
    }

    if (v1 != 2)
    {
      v13 = v15;
      v3 = v14;
    }

    v7 = "deleteCloudConsent";
    if (!v1)
    {
      v7 = "valid";
    }

    v11 = v1 <= 1;
    if (v1 <= 1)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v3 = "ntWithLocalPendingConsent";
    v4 = 0xD000000000000035;
    v5 = "rmedAtForLocalConsent";
    v6 = 0xD000000000000037;
    if (v1 == 9)
    {
      v6 = 0xD000000000000035;
    }

    else
    {
      v5 = "rmedAtForCloudConsent";
    }

    if (v1 != 8)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = "insertOrUpdatePendingConsent";
    v8 = 0xD000000000000011;
    v9 = "mergeCloudConsent";
    v10 = 0xD000000000000022;
    if (v1 != 6)
    {
      v10 = 0xD000000000000029;
      v9 = "ntWithLocalConsent";
    }

    if (v1 != 5)
    {
      v8 = v10;
      v7 = v9;
    }

    v11 = v1 <= 7;
    if (v1 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (v11)
  {
    v16 = v7;
  }

  else
  {
    v16 = v3;
  }

  sub_1B74372D0(1uLL, v12, v16 | 0x8000000000000000);

  sub_1B759AC10();
  sub_1B78009F8();

  return v2;
}

unint64_t BankConnectAutoBugCaptureReporter.ConsentMirroringIssueType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD00000000000001CLL;
    if (v1 == 3)
    {
      v7 = 0xD000000000000012;
    }

    if (v1 != 2)
    {
      v6 = v7;
    }

    if (*v0 <= 1u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000035;
    v3 = 0xD000000000000037;
    if (v1 == 9)
    {
      v3 = 0xD000000000000035;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000029;
    if (v1 == 6)
    {
      v4 = 0xD000000000000022;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000011;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

FinanceKit::BankConnectAutoBugCaptureReporter::ConsentMirroringIssueType_optional __swiftcall BankConnectAutoBugCaptureReporter.ConsentMirroringIssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B75982C4()
{
  sub_1B78022F8();
  sub_1B76AE948();
  return sub_1B7802368();
}

uint64_t sub_1B7598314()
{
  sub_1B78022F8();
  sub_1B76AE948();
  return sub_1B7802368();
}

unint64_t sub_1B7598364@<X0>(unint64_t *a1@<X8>)
{
  result = BankConnectAutoBugCaptureReporter.ConsentMirroringIssueType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B759838C()
{
  v1 = *v0;
  sub_1B759A490(1);

  sub_1B759ABBC();
  v2 = sub_1B78017D8();

  v3 = 0xD00000000000001FLL;
  v4 = "updateCloudAccountMatch";
  if (v1 != 4)
  {
    v4 = "deleteLocalAccountMatch";
  }

  if (v1 == 3)
  {
    v4 = "mergeCloudAccountMatch";
  }

  if (v1 == 1)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v1 == 1)
  {
    v6 = "insertOrUpdateLocalAccountMatch";
  }

  else
  {
    v6 = "insertCloudAccountMatch";
  }

  if (v1)
  {
    v3 = v5;
  }

  v7 = "rmedAtForPendingConsent";
  if (v1)
  {
    v7 = v6;
  }

  if (v1 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xD000000000000017;
  }

  if (v1 <= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  sub_1B74372D0(1uLL, v8, v9 | 0x8000000000000000);

  sub_1B759AC10();
  sub_1B78009F8();

  return v2;
}

unint64_t BankConnectAutoBugCaptureReporter.AccountMatchMirroringIssueType.rawValue.getter()
{
  v1 = 0xD00000000000001FLL;
  v2 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = v2;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

FinanceKit::BankConnectAutoBugCaptureReporter::AccountMatchMirroringIssueType_optional __swiftcall BankConnectAutoBugCaptureReporter.AccountMatchMirroringIssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7598660()
{
  sub_1B7800798();
}

void sub_1B759873C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = 0xD00000000000001FLL;
  v5 = "rmedAtForPendingConsent";
  v6 = "mergeCloudAccountMatch";
  v7 = "updateCloudAccountMatch";
  if (v3 != 4)
  {
    v7 = "deleteLocalAccountMatch";
  }

  if (v3 != 3)
  {
    v6 = v7;
  }

  v8 = "insertOrUpdateLocalAccountMatch";
  v9 = 0xD000000000000016;
  if (v3 == 1)
  {
    v9 = 0xD000000000000017;
  }

  else
  {
    v8 = "insertCloudAccountMatch";
  }

  if (*v1)
  {
    v4 = v9;
    v5 = v8;
  }

  if (*v1 > 2u)
  {
    v10 = v6;
  }

  else
  {
    v2 = v4;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_1B75987D8()
{
  v1 = *v0;
  v2 = "deleteCloudAccountMatch";
  sub_1B759A490(1);

  sub_1B759ABBC();
  v3 = sub_1B78017D8();

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  if (v1 == 1)
  {
    v5 = "institutionRequest";
  }

  else
  {
    v5 = "pendingConsentTask";
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v1)
  {
    v2 = v5;
  }

  sub_1B74372D0(1uLL, v6, v2 | 0x8000000000000000);

  sub_1B759AC10();
  sub_1B78009F8();

  return v3;
}

unint64_t BankConnectAutoBugCaptureReporter.PlaceholderInstitutionRequestIssueType.rawValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

FinanceKit::BankConnectAutoBugCaptureReporter::PlaceholderInstitutionRequestIssueType_optional __swiftcall BankConnectAutoBugCaptureReporter.PlaceholderInstitutionRequestIssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B75989E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "institutionRequest";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v2 == 1)
  {
    v6 = "institutionRequest";
  }

  else
  {
    v6 = "pendingConsentTask";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "deleteCloudAccountMatch";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "pendingConsentTask";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "deleteCloudAccountMatch";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B7598AB8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7598B50()
{
  sub_1B7800798();
}

uint64_t sub_1B7598BD4()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7598C74(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "institutionRequest";
  v4 = 0xD000000000000018;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "pendingConsentTask";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "deleteCloudAccountMatch";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_1B7598CCC()
{
  v1 = *v0;
  sub_1B759A490(1);

  sub_1B759ABBC();
  v2 = sub_1B78017D8();

  v3 = 0x766F725073736170;
  v4 = 0xEF64656E6F697369;
  if (v1 != 1)
  {
    v3 = 0x656C654473736170;
    v4 = 0xEB00000000646574;
  }

  if (v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x756F72676B636162;
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE006B736154646ELL;
  }

  sub_1B74372D0(1uLL, v5, v6);

  sub_1B759AC10();
  sub_1B78009F8();

  return v2;
}

uint64_t BankConnectAutoBugCaptureReporter.InstitutionsBatchRequestIssueType.rawValue.getter()
{
  v1 = 0x766F725073736170;
  if (*v0 != 1)
  {
    v1 = 0x656C654473736170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

FinanceKit::BankConnectAutoBugCaptureReporter::InstitutionsBatchRequestIssueType_optional __swiftcall BankConnectAutoBugCaptureReporter.InstitutionsBatchRequestIssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7598F58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x766F725073736170;
  v4 = 0xEF64656E6F697369;
  if (v2 != 1)
  {
    v3 = 0x656C654473736170;
    v4 = 0xEB00000000646574;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x756F72676B636162;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE006B736154646ELL;
  }

  v7 = 0x766F725073736170;
  v8 = 0xEF64656E6F697369;
  if (*a2 != 1)
  {
    v7 = 0x656C654473736170;
    v8 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE006B736154646ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B759908C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7599150()
{
  sub_1B7800798();
}

uint64_t sub_1B7599200()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B75992CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006B736154646ELL;
  v4 = 0xEF64656E6F697369;
  v5 = 0x766F725073736170;
  if (v2 != 1)
  {
    v5 = 0x656C654473736170;
    v4 = 0xEB00000000646574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x756F72676B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B759934C()
{
  v1 = *v0;
  v2 = "isioned";
  sub_1B759A490(1);

  sub_1B759ABBC();
  v3 = sub_1B78017D8();

  v4 = 0xD000000000000011;
  if (v1 == 1)
  {
    v5 = "accountMatchMissing";
  }

  else
  {
    v4 = 0xD000000000000016;
    v5 = "externalIDMissing";
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v1)
  {
    v2 = v5;
  }

  sub_1B74372D0(1uLL, v6, v2 | 0x8000000000000000);

  sub_1B759AC10();
  sub_1B78009F8();

  return v3;
}

unint64_t BankConnectAutoBugCaptureReporter.AccountMatchInconsistencyIssueType.rawValue.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

FinanceKit::BankConnectAutoBugCaptureReporter::AccountMatchInconsistencyIssueType_optional __swiftcall BankConnectAutoBugCaptureReporter.AccountMatchInconsistencyIssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7599570(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = "accountMatchMissing";
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = "accountMatchMissing";
  }

  else
  {
    v6 = "externalIDMissing";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "isioned";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000016;
    v4 = "externalIDMissing";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "isioned";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B759964C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B75996E8()
{
  sub_1B7800798();
}

uint64_t sub_1B7599770()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7599814(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "accountMatchMissing";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000016;
    v3 = "externalIDMissing";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000013;
    v4 = "isioned";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

void BankConnectAutoBugCaptureReporter.reportWebServiceIssue(_:error:)()
{
  sub_1B7597800();
  sub_1B759A52C();
  v1 = *(v0 + 16);
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();

  v6 = sub_1B7800708();

  [v1 reportIssueWithDomain:v2 type:v3 subtype:v4 subtypeContext:v5 event:v6];
}

void BankConnectAutoBugCaptureReporter.reportConsentMirroringIssue(_:error:)()
{
  sub_1B7597E20();
  sub_1B759A52C();
  v1 = *(v0 + 16);
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();

  v6 = sub_1B7800708();

  [v1 reportIssueWithDomain:v2 type:v3 subtype:v4 subtypeContext:v5 event:v6];
}

void BankConnectAutoBugCaptureReporter.reportAccountMatchMirroringIssue(_:error:)()
{
  sub_1B759838C();
  sub_1B759A52C();
  v1 = *(v0 + 16);
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();

  v6 = sub_1B7800708();

  [v1 reportIssueWithDomain:v2 type:v3 subtype:v4 subtypeContext:v5 event:v6];
}

Swift::Void __swiftcall BankConnectAutoBugCaptureReporter.reportPlaceholderInstitutionRequestIssue(_:institutionID:)(FinanceKit::BankConnectAutoBugCaptureReporter::PlaceholderInstitutionRequestIssueType _, Swift::String institutionID)
{
  object = institutionID._object;
  countAndFlagsBits = institutionID._countAndFlagsBits;
  sub_1B75987D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  strcpy((inited + 32), "institutionID");
  *(inited + 46) = -4864;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;

  sub_1B72020F4(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &qword_1EB98F4D8);
  v6 = *(v2 + 16);
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = sub_1B7800838();

  v11 = sub_1B7800708();

  [v6 reportIssueWithDomain:v7 type:v8 subtype:v9 subtypeContext:v10 event:v11];
}

void BankConnectAutoBugCaptureReporter.reportAccountMatchInconsistencyIssue(_:institutionID:accountMatchingType:accountBelievesMismatched:accountMatchMatchingType:accountMatchLastUpdatedAt:accountMatchBelievesMismatched:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, char a5, unsigned __int8 *a6, uint64_t a7, int a8)
{
  v48 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  v49 = *a1;
  v18 = *a4;
  v19 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D0);
  inited = swift_initStackObject();
  v21 = inited;
  *(inited + 16) = xmmword_1B781DFC0;
  *(inited + 32) = 0x7475746974736E69;
  if (a3)
  {
    v22 = a2;
  }

  else
  {
    v22 = 7104878;
  }

  v23 = 0xE300000000000000;
  if (a3)
  {
    v23 = a3;
  }

  *(inited + 40) = 0xED000044496E6F69;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  *(inited + 64) = 0xD000000000000013;
  *(inited + 72) = 0x80000001B7885890;
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v24 = 0x69666675536E6170;
      v25 = 0xE900000000000078;
    }

    else if (v18 == 4)
    {
      v24 = 0x746361736E617274;
      v25 = 0xEC000000736E6F69;
    }

    else
    {
      v25 = 0xE300000000000000;
      v24 = 7104878;
    }
  }

  else if (v18)
  {
    if (v18 == 1)
    {
      v24 = 0x656C655372657375;
      v25 = 0xED00006E6F697463;
    }

    else
    {
      v25 = 0xE600000000000000;
      v24 = 0x44496E617066;
    }
  }

  else
  {
    v25 = 0xE800000000000000;
    v24 = 0x746963696C706D69;
  }

  *(inited + 80) = v24;
  *(inited + 88) = v25;
  *(inited + 96) = 0xD000000000000019;
  *(inited + 104) = 0x80000001B78858B0;
  if (a5)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  v27 = 0xE500000000000000;
  if (a5)
  {
    v27 = 0xE400000000000000;
  }

  v28 = 7104878;
  if (a5 != 2)
  {
    v28 = v26;
  }

  v29 = 0xE300000000000000;
  if (a5 != 2)
  {
    v29 = v27;
  }

  *(inited + 112) = v28;
  *(inited + 120) = v29;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000001B78858D0;
  sub_1B7280900(a7, v17);
  v30 = sub_1B77FF988();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v17, 1, v30);

  if (v32 == 1)
  {
    sub_1B7205418(v17, &qword_1EB98EBD0);
    v33 = 0xE300000000000000;
    v34 = 7104878;
  }

  else
  {
    v34 = sub_1B77FF958();
    v33 = v35;
    (*(v31 + 8))(v17, v30);
  }

  v21[18] = v34;
  v21[19] = v33;
  v21[20] = 0xD00000000000001ALL;
  v21[21] = 0x80000001B78858F0;
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v36 = 0x69666675536E6170;
      v37 = 0xE900000000000078;
    }

    else if (v19 == 4)
    {
      v36 = 0x746361736E617274;
      v37 = 0xEC000000736E6F69;
    }

    else
    {
      v37 = 0xE300000000000000;
      v36 = 7104878;
    }
  }

  else if (v19)
  {
    if (v19 == 1)
    {
      v36 = 0x656C655372657375;
      v37 = 0xED00006E6F697463;
    }

    else
    {
      v37 = 0xE600000000000000;
      v36 = 0x44496E617066;
    }
  }

  else
  {
    v37 = 0xE800000000000000;
    v36 = 0x746963696C706D69;
  }

  v21[22] = v36;
  v21[23] = v37;
  v21[24] = 0xD00000000000001ELL;
  v21[25] = 0x80000001B7885910;
  v38 = 0x65736C6166;
  if (v48)
  {
    v38 = 1702195828;
  }

  v39 = 0xE500000000000000;
  if (v48)
  {
    v39 = 0xE400000000000000;
  }

  v40 = 7104878;
  if (v48 != 2)
  {
    v40 = v38;
  }

  v41 = 0xE300000000000000;
  if (v48 != 2)
  {
    v41 = v39;
  }

  v21[26] = v40;
  v21[27] = v41;
  sub_1B72020F4(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D8);
  swift_arrayDestroy();
  v51 = v49;
  sub_1B759934C();
  v42 = *(v50 + 16);
  v43 = sub_1B7800838();
  v44 = sub_1B7800838();
  v45 = sub_1B7800838();
  v46 = sub_1B7800838();

  v47 = sub_1B7800708();

  [v42 reportIssueWithDomain:v43 type:v44 subtype:v45 subtypeContext:v46 event:v47];
}

uint64_t BankConnectAutoBugCaptureReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B759A490(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B78009D8();

    return sub_1B7800AC8();
  }

  return result;
}

unint64_t sub_1B759A52C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B780D870;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  v1 = sub_1B77FF308();
  v2 = [v1 domain];

  v3 = sub_1B7800868();
  v5 = v4;

  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 64) = 0x646F43726F727265;
  *(inited + 72) = 0xE900000000000065;
  v6 = sub_1B77FF308();
  [v6 code];

  *(inited + 80) = sub_1B7802068();
  *(inited + 88) = v7;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x80000001B78859B0;
  v8 = sub_1B77FF308();
  v9 = [v8 localizedDescription];

  v10 = sub_1B7800868();
  v12 = v11;

  *(inited + 112) = v10;
  *(inited + 120) = v12;
  v13 = sub_1B72020F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D8);
  swift_arrayDestroy();
  return v13;
}

unint64_t sub_1B759A6F0()
{
  result = qword_1EB998110;
  if (!qword_1EB998110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998110);
  }

  return result;
}

unint64_t sub_1B759A748()
{
  result = qword_1EB998118;
  if (!qword_1EB998118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998118);
  }

  return result;
}

unint64_t sub_1B759A7A0()
{
  result = qword_1EB998120;
  if (!qword_1EB998120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998120);
  }

  return result;
}

unint64_t sub_1B759A7F8()
{
  result = qword_1EB998128;
  if (!qword_1EB998128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998128);
  }

  return result;
}

unint64_t sub_1B759A850()
{
  result = qword_1EB998130;
  if (!qword_1EB998130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998130);
  }

  return result;
}

unint64_t sub_1B759A8A8()
{
  result = qword_1EB998138;
  if (!qword_1EB998138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998138);
  }

  return result;
}

unint64_t sub_1B759A900()
{
  result = qword_1EB998140;
  if (!qword_1EB998140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998140);
  }

  return result;
}

unint64_t sub_1B759A958()
{
  result = qword_1EB998148;
  if (!qword_1EB998148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998148);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BankConnectAutoBugCaptureReporter.ConsentMirroringIssueType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BankConnectAutoBugCaptureReporter.ConsentMirroringIssueType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B759ABBC()
{
  result = qword_1EB998158;
  if (!qword_1EB998158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998158);
  }

  return result;
}

unint64_t sub_1B759AC10()
{
  result = qword_1EB998160;
  if (!qword_1EB998160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998160);
  }

  return result;
}

uint64_t OrderBundleValidator.init(walletPreferences:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static OrderBundleValidationError.Context.== infix(_:_:)(void *a1, void *a2)
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

uint64_t OrderBundleValidationError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static OrderBundleValidationError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_1B78020F8();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t OrderBundleValidator.validate(_:)(uint64_t a1)
{
  v3 = v1;
  v44 = type metadata accessor for RawECommerceOrderContent(0);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawOrderContent();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = *v1;
  v15 = v3[1];
  v16 = *(a1 + 16);
  v48 = v40 - v17;
  sub_1B738F24C(a1 + OBJC_IVAR____TtC10FinanceKit11OrderBundle_content, v40 - v17);
  if (((*(v15 + 16))(v14, v15) & 1) == 0)
  {
    v27 = ContentPackageReader.manifest()(&v46);
    if (v2)
    {
      v29 = v48;
    }

    else
    {
      v42 = v27;
      v43 = v28;
      v40[2] = v40;
      v41 = v46;
      MEMORY[0x1EEE9AC00](v27);
      v40[-4] = 0x727574616E676973;
      v40[-3] = 0xE900000000000065;
      v40[-2] = 0;
      v40[-1] = 0;
      v30 = *(v16 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
      v31 = (*(v7 + 16))(v9, v16 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v6);
      v40[1] = v40;
      MEMORY[0x1EEE9AC00](v31);
      v40[-4] = v9;
      v40[-3] = sub_1B7537210;
      v40[-2] = &v40[-6];
      os_unfair_lock_lock((v30 + 24));
      sub_1B7262DE4((v30 + 16), &v46);
      os_unfair_lock_unlock((v30 + 24));
      (*(v7 + 8))(v9, v6);
      v32 = v47;
      if (v47 >> 60 != 15)
      {
        v34 = v46;
        v35 = v48;
        sub_1B738F24C(v48, v13);
        v36 = v45;
        sub_1B738F2B0(v13, v45);
        v37 = (v36 + *(v44 + 20));
        v39 = *v37;
        v38 = v37[1];

        sub_1B759B388(v36, type metadata accessor for RawECommerceOrderContent);
        sub_1B759B418(v39, v38, v34, v32, v42, v43);

        v46 = v41;
        ContentPackageManifestValidator.validate(_:using:)(&v46, v16);
        sub_1B720A388(v42, v43);
        sub_1B72380B8(v34, v32);
        sub_1B759B388(v35, type metadata accessor for RawOrderContent);
      }

      sub_1B7537230();
      swift_allocError();
      *v33 = xmmword_1B783CCD0;
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      swift_willThrow();
      sub_1B720A388(v42, v43);
      v29 = v48;
    }

    return sub_1B759B388(v29, type metadata accessor for RawOrderContent);
  }

  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v18 = sub_1B78000B8();
  __swift_project_value_buffer(v18, qword_1EDAF6550);

  v19 = sub_1B7800098();
  v20 = sub_1B78011B8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v21 = 136315138;
    sub_1B755CD04();
    v23 = sub_1B7802068();
    v25 = sub_1B71A3EF8(v23, v24, &v46);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1B7198000, v19, v20, "Skipping validation of order at %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1B8CA7A40](v22, -1, -1);
    MEMORY[0x1B8CA7A40](v21, -1, -1);
  }

  return sub_1B759B388(v48, type metadata accessor for RawOrderContent);
}

uint64_t sub_1B759B388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B759B418(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_1B7800838();
  OrderBundleSigner = SecPolicyCreateOrderBundleSigner();

  if (OrderBundleSigner)
  {
    sub_1B720ABEC(a3, a4);
    sub_1B720ABEC(a5, a6);
    ContentPackageSignatureValidator.validateSignature()();
    sub_1B720A388(a3, a4);
    sub_1B720A388(a5, a6);
  }

  else
  {
    sub_1B759B520();
    swift_allocError();
    *v12 = 0xD000000000000039;
    v12[1] = 0x80000001B78859D0;
    swift_willThrow();
  }
}

unint64_t sub_1B759B520()
{
  result = qword_1EB998168;
  if (!qword_1EB998168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998168);
  }

  return result;
}

uint64_t sub_1B759B5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B7205588(a3, v25 - v10, &unk_1EB99C280);
  v12 = sub_1B7800DF8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7205418(v11, &unk_1EB99C280);
  }

  else
  {
    sub_1B7800DE8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B7800CD8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B7800948() + 32;
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

      sub_1B7205418(a3, &unk_1EB99C280);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7205418(a3, &unk_1EB99C280);
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

uint64_t sub_1B759B8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B7205588(a3, v25 - v10, &unk_1EB99C280);
  v12 = sub_1B7800DF8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7205418(v11, &unk_1EB99C280);
  }

  else
  {
    sub_1B7800DE8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B7800CD8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B7800948() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C270);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1B7205418(a3, &unk_1EB99C280);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7205418(a3, &unk_1EB99C280);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C270);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B759BBE4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B78000B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = [a1 primaryAccountIdentifier];
  v14 = sub_1B7800868();
  v16 = v15;

  v17 = sub_1B7800DF8();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_1EDAF65B0);
  (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v6);
  v19 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v14;
  *(v20 + 5) = v16;
  *(v20 + 6) = a2;
  *(v20 + 7) = a3;
  (*(v7 + 32))(&v20[v19], v9, v6);

  sub_1B759B5D0(0, 0, v12, &unk_1B7842D30, v20);
}

uint64_t sub_1B759BE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for Institution(0);
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v8[11] = type metadata accessor for BankConnectService.Message();
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE48);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B759BF88, 0, 0);
}

uint64_t sub_1B759BF88()
{
  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[3];
  *v1 = v0[2];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1B759C098;
  v4 = v0[14];
  v5 = v0[12];

  return sub_1B7275774(v4, v5);
}

uint64_t sub_1B759C098()
{
  v2 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  sub_1B759DE9C(v2, type metadata accessor for BankConnectService.Message);
  if (v0)
  {
    v3 = sub_1B759C33C;
  }

  else
  {
    v3 = sub_1B759C1DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B759C1DC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1B7205588(*(v0 + 112), v1, &qword_1EB98FE48);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    sub_1B739983C(*(v0 + 104), v6);
    sub_1B759DE50();
    sub_1B721D304(v6, v5);
    v4 = FKInstitution.init(_:)(v5);
    sub_1B759DE9C(v6, type metadata accessor for Institution);
  }

  v7 = *(v0 + 112);
  (*(v0 + 32))(v4);

  sub_1B7205418(v7, &qword_1EB98FE48);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B759C33C()
{
  v11 = v0;

  v1 = sub_1B7800098();
  v2 = sub_1B78011D8();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B71A3EF8(v4, v3, &v10);
    _os_log_impl(&dword_1B7198000, v1, v2, "Failed to match institution with a pass: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
    MEMORY[0x1B8CA7A40](v5, -1, -1);
  }

  v7 = *(v0 + 128);
  (*(v0 + 32))(0);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B759C4C8(uint64_t a1)
{
  v4 = *(sub_1B78000B8() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B723838C;

  return sub_1B759BE40(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1B759C870(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B721FB60;

  return (sub_1B759D1D0)(a1, a2);
}

uint64_t sub_1B759CAAC(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1B7800868();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1B759CB94;

  return sub_1B759D1D0(v5, v7);
}

uint64_t sub_1B759CB94(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

id BankConnectInstitutionMatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectInstitutionMatcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectInstitutionMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BankConnectInstitutionMatcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectInstitutionMatcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B759CDD8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B759CED0;

  return v6(a1);
}

uint64_t sub_1B759CED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B759CFC8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B759D0BC;

  return v5(v2 + 32);
}

uint64_t sub_1B759D0BC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B759D1D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Institution(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for BankConnectService.Message();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE48);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B759D310, 0, 0);
}

uint64_t sub_1B759D310()
{
  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[3];
  *v1 = v0[2];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1B759D420;
  v4 = v0[11];
  v5 = v0[9];

  return sub_1B7275774(v4, v5);
}

uint64_t sub_1B759D420()
{
  v2 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  sub_1B759DE9C(v2, type metadata accessor for BankConnectService.Message);
  if (v0)
  {
    v3 = sub_1B759D6D4;
  }

  else
  {
    v3 = sub_1B759D564;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B759D564()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];
  sub_1B7205588(v0[11], v1, &qword_1EB98FE48);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[11];
  if (v4 == 1)
  {
    sub_1B7205418(v0[11], &qword_1EB98FE48);
    v6 = 0;
  }

  else
  {
    v7 = v0[6];
    v8 = v0[7];
    sub_1B739983C(v0[10], v8);
    sub_1B759DE50();
    sub_1B721D304(v8, v7);
    v6 = FKInstitution.init(_:)(v7);
    sub_1B759DE9C(v8, type metadata accessor for Institution);
    sub_1B7205418(v5, &qword_1EB98FE48);
  }

  v9 = v0[1];

  return v9(v6);
}

uint64_t sub_1B759D6D4()
{
  v13 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011D8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1B71A3EF8(v7, v6, &v12);
    _os_log_impl(&dword_1B7198000, v2, v3, "Failed to match institution with a pass: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t dispatch thunk of BankConnectInstitutionMatcher.institution(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B721FB60;

  return v9(a1, a2);
}

uint64_t sub_1B759DA40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B759CAAC(v2, v3, v4);
}

uint64_t objectdestroyTm_5()
{
  v1 = sub_1B78000B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B759DBC8(uint64_t a1)
{
  v4 = *(sub_1B78000B8() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B7201BB0;

  return sub_1B759BE40(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1B759DCE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return sub_1B759CFC8(a1, v4);
}

uint64_t sub_1B759DD98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return sub_1B759CFC8(a1, v4);
}

unint64_t sub_1B759DE50()
{
  result = qword_1EB9969B0;
  if (!qword_1EB9969B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB9969B0);
  }

  return result;
}

uint64_t sub_1B759DE9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B759DEFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return sub_1B759CDD8(a1, v4);
}

uint64_t OrderBundleWriter.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10FinanceKit17OrderBundleWriter_bundleURL;
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderBundleWriter.__allocating_init(bundleURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OrderBundleWriter.init(bundleURL:)(a1);
  return v2;
}

void *OrderBundleWriter.init(bundleURL:)(uint64_t a1)
{
  v3 = v1;
  v24 = *v1;
  v5 = sub_1B77FEE18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  v10 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v11 = *MEMORY[0x1E695DBC8];
  *(inited + 40) = *MEMORY[0x1E695DBC8];
  v12 = v10;
  v13 = v11;
  sub_1B7545498(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_1B77FF3C8();
  if (v2)
  {
    v14 = sub_1B77FF4F8();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  else
  {

    v15 = sub_1B77FEDD8();
    if (v15 == 2 || (v15 & 1) == 0)
    {
      sub_1B759F1F0();
      swift_allocError();
      *v18 = 0;
      v18[1] = 0;
    }

    else
    {
      v16 = sub_1B77FEDE8();
      if (v16 != 2 && (v16 & 1) == 0)
      {
        (*(v6 + 8))(v8, v5);
        v21 = OBJC_IVAR____TtC10FinanceKit17OrderBundleWriter_bundleURL;
        v22 = sub_1B77FF4F8();
        (*(*(v22 - 8) + 32))(v3 + v21, a1, v22);
        return v3;
      }

      sub_1B759F1F0();
      swift_allocError();
      *v17 = xmmword_1B78301C0;
    }

    swift_willThrow();
    v19 = sub_1B77FF4F8();
    (*(*(v19 - 8) + 8))(a1, v19);
    (*(v6 + 8))(v8, v5);
  }

  swift_deallocPartialClassInstance();
  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OrderBundleWriter.updateManifest()()
{
  v25 = sub_1B77FE938();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC10FinanceKit17OrderBundleWriter_bundleURL;
  (*(v4 + 16))(&v18 - v8, v0 + OBJC_IVAR____TtC10FinanceKit17OrderBundleWriter_bundleURL, v3);
  type metadata accessor for ContentPackageHashesEnumerator();
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL, v9, v3);
  v26 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
  sub_1B754384C(0, j___s10FinanceKit30ContentPackageHashesEnumeratorC29fileShouldBePresentInManifestySb6System8FilePathVFZ_0, 0, v11, &v26);
  if (v1)
  {
    swift_setDeallocating();
    (*(v4 + 8))(v11 + OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL, v3);
    swift_deallocClassInstance();
  }

  else
  {
    v20 = v10;
    v21 = v7;
    v22 = v0;
    swift_setDeallocating();
    v19 = *(v4 + 8);
    v19(v11 + OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL, v3);
    swift_deallocClassInstance();
    v12 = v26;
    sub_1B77FE9B8();
    swift_allocObject();

    sub_1B77FE9A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998178);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B780D870;
    sub_1B77FE918();
    sub_1B77FE928();
    sub_1B77FE908();
    v26 = v13;
    sub_1B759F324(&qword_1EB998180, MEMORY[0x1E6967F78]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998188);
    sub_1B759F244();
    sub_1B78018B8();
    sub_1B77FE948();
    v26 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
    sub_1B759F2A8();
    v14 = sub_1B77FE998();
    v16 = v15;

    v17 = v21;
    sub_1B77FF428();
    sub_1B77FF5D8();

    sub_1B720A388(v14, v16);

    v19(v17, v3);
  }
}

FinanceKit::ContentPackageManifest __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OrderBundleWriter.generateManifest(loadFilesInChunks:)(Swift::Bool loadFilesInChunks)
{
  v4 = loadFilesInChunks;
  v5 = v1;
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC10FinanceKit17OrderBundleWriter_bundleURL, v6);
  type metadata accessor for ContentPackageHashesEnumerator();
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL, v9, v6);
  v13 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
  sub_1B754384C(v4, j___s10FinanceKit30ContentPackageHashesEnumeratorC29fileShouldBePresentInManifestySb6System8FilePathVFZ_0, 0, v10, &v13);
  swift_setDeallocating();
  (*(v7 + 8))(v10 + OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL, v6);
  if (v3)
  {
    swift_deallocClassInstance();
  }

  else
  {
    result.hashesByFileName._rawValue = swift_deallocClassInstance();
    *v5 = v13;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OrderBundleWriter.writeManifest(_:)(FinanceKit::ContentPackageManifest a1)
{
  v2 = sub_1B77FF4F8();
  v15 = *(v2 - 8);
  v16 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FE938();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *a1.hashesByFileName._rawValue;
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998178);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780D870;
  sub_1B77FE918();
  sub_1B77FE928();
  sub_1B77FE908();
  v18 = v7;
  sub_1B759F324(&qword_1EB998180, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998188);
  sub_1B759F244();
  sub_1B78018B8();
  sub_1B77FE948();
  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
  sub_1B759F2A8();
  v8 = v17;
  v9 = sub_1B77FE998();
  if (v8)
  {
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v14 = v15;
    v13 = v16;

    sub_1B77FF428();
    sub_1B77FF5D8();
    (*(v14 + 8))(v4, v13);
    sub_1B720A388(v11, v12);
  }
}

uint64_t OrderBundleWriter.writeOrder(_:)()
{
  v1 = sub_1B77FE968();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FF4F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF428();
  sub_1B77FE9B8();
  swift_allocObject();
  sub_1B77FE9A8();
  (*(v2 + 104))(v4, *MEMORY[0x1E6967FC8], v1);
  sub_1B77FE988();
  type metadata accessor for RawOrderContent();
  sub_1B759F324(&qword_1EB998198, type metadata accessor for RawOrderContent);
  v9 = sub_1B77FE998();
  if (v0)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    sub_1B77FF5D8();
    (*(v6 + 8))(v8, v5);
    sub_1B720A388(v11, v12);
  }
}

uint64_t OrderBundleWriter.deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit17OrderBundleWriter_bundleURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OrderBundleWriter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit17OrderBundleWriter_bundleURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1B759F1F0()
{
  result = qword_1EB998170;
  if (!qword_1EB998170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998170);
  }

  return result;
}

unint64_t sub_1B759F244()
{
  result = qword_1EB998190;
  if (!qword_1EB998190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998190);
  }

  return result;
}

unint64_t sub_1B759F2A8()
{
  result = qword_1EDAF6530;
  if (!qword_1EDAF6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF6530);
  }

  return result;
}

uint64_t sub_1B759F324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_10FinanceKit22OrderBundleWriterErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for OrderBundleWriter()
{
  result = qword_1EB9981A0;
  if (!qword_1EB9981A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OrderChanges.identifiersForFulfillmentsToRemove.getter()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 16);
  if (v1)
  {
    v4 = Array<A>.pickupFulfillments.getter(*(v0 + 8));
    v5 = sub_1B759F5A8(v4);

    if (v3)
    {
LABEL_5:
      v6 = Array<A>.pickupFulfillments.getter(v3);
      v7 = sub_1B759F5A8(v6);

      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1B7204658(MEMORY[0x1E69E7CC0]);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v7 = sub_1B7204658(MEMORY[0x1E69E7CC0]);
LABEL_8:
  v8 = sub_1B759F7F8(v5, v7);

  if (!v1)
  {
    v10 = sub_1B720466C(MEMORY[0x1E69E7CC0]);
    if (v3)
    {
      goto LABEL_10;
    }

LABEL_12:
    v12 = sub_1B720466C(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  v9 = Array<A>.shippingFulfillments.getter(v1);
  v10 = sub_1B75A02A4(v9);

  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_10:
  v11 = Array<A>.shippingFulfillments.getter(v3);
  v12 = sub_1B75A02A4(v11);

LABEL_13:
  v13 = sub_1B759FB84(v10, v12);

  sub_1B724428C(v13);
  return v8;
}

uint64_t sub_1B759F5A8(uint64_t a1)
{
  v18 = type metadata accessor for RawOrderPickupFulfillment();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1B71FE440(0, v5, 0);
    v6 = v19;
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    do
    {
      sub_1B75A1BEC(v7, v4, type metadata accessor for RawOrderPickupFulfillment);
      v8 = &v4[*(v18 + 60)];
      v10 = *v8;
      v9 = *(v8 + 1);
      v11 = v4[8];

      sub_1B75A1C54(v4, type metadata accessor for RawOrderPickupFulfillment);
      v19 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B71FE440((v12 > 1), v13 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      v7 += v17;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v15 = MEMORY[0x1E69E7CC8];
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3A0);
  v15 = sub_1B7801CD8();
LABEL_9:
  v19 = v15;
  sub_1B75A1844(v6, 1, &v19, sub_1B725E328, sub_1B724C914);
  return v19;
}

uint64_t sub_1B759F7F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + v12);
    v17 = *(a2 + 16);

    if (v17 && (v18 = sub_1B724548C(v15, v14), (v19 & 1) != 0))
    {
      v20 = v18;
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v22 = 0xE800000000000000;
          v21 = 0x705564656B636970;
        }

        else if (v16 == 4)
        {
          v22 = 0xE500000000000000;
          v21 = 0x6575737369;
        }

        else
        {
          v21 = 0x656C6C65636E6163;
          v22 = 0xE900000000000064;
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          v21 = 0x69737365636F7270;
          v22 = 0xEA0000000000676ELL;
        }

        else
        {
          v21 = 0x726F467964616572;
          v22 = 0xEE0070756B636950;
        }
      }

      else
      {
        v22 = 0xE400000000000000;
        v21 = 1852141679;
      }

      v23 = *(*(a2 + 56) + v20);
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = 0xE800000000000000;
          if (v21 == 0x705564656B636970)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v23 != 4)
          {
            v24 = 0xE900000000000064;
            if (v21 != 0x656C6C65636E6163)
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }

          v24 = 0xE500000000000000;
          if (v21 == 0x6575737369)
          {
            goto LABEL_37;
          }
        }

LABEL_39:
        v25 = sub_1B78020F8();

        if ((v25 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (!v23)
        {
          v24 = 0xE400000000000000;
          if (v21 == 1852141679)
          {
            goto LABEL_37;
          }

          goto LABEL_39;
        }

        if (v23 != 1)
        {
          v24 = 0xEE0070756B636950;
          if (v21 == 0x726F467964616572)
          {
            goto LABEL_37;
          }

          goto LABEL_39;
        }

        v24 = 0xEA0000000000676ELL;
        if (v21 != 0x69737365636F7270)
        {
          goto LABEL_39;
        }

LABEL_37:
        if (v22 != v24)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_41:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B723E180(0, *(v29 + 16) + 1, 1, v29);
        v29 = result;
      }

      v27 = *(v29 + 16);
      v26 = *(v29 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1B723E180((v26 > 1), v27 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 16) = v27 + 1;
      v28 = v29 + 16 * v27;
      *(v28 + 32) = v15;
      *(v28 + 40) = v14;
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v29;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B759FB84(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + v12);
    v17 = *(a2 + 16);

    if (v17 && (v18 = sub_1B724548C(v15, v14), (v19 & 1) != 0))
    {
      v20 = v18;
      if (v16 > 3)
      {
        if (v16 > 5)
        {
          if (v16 == 6)
          {
            v21 = 0xE500000000000000;
            v22 = 0x6575737369;
            goto LABEL_26;
          }

          v22 = 0x656C6C65636E6163;
        }

        else
        {
          if (v16 == 4)
          {
            v22 = 0x6544726F4674756FLL;
            v21 = 0xEE0079726576696CLL;
            goto LABEL_26;
          }

          v22 = 0x65726576696C6564;
        }

        v21 = 0xE900000000000064;
      }

      else if (v16 > 1)
      {
        if (v16 == 2)
        {
          v21 = 0xE700000000000000;
          v22 = 0x64657070696873;
        }

        else
        {
          v21 = 0xE800000000000000;
          v22 = 0x7961576568546E6FLL;
        }
      }

      else if (v16)
      {
        v21 = 0xEA0000000000676ELL;
        v22 = 0x69737365636F7270;
      }

      else
      {
        v21 = 0xE400000000000000;
        v22 = 1852141679;
      }

LABEL_26:
      v23 = *(*(a2 + 56) + v20);
      if (v23 <= 3)
      {
        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v24 = 0xE700000000000000;
            v25 = 0x64657070696873;
          }

          else
          {
            v24 = 0xE800000000000000;
            v25 = 0x7961576568546E6FLL;
          }
        }

        else if (v23)
        {
          v24 = 0xEA0000000000676ELL;
          v25 = 0x69737365636F7270;
        }

        else
        {
          v24 = 0xE400000000000000;
          v25 = 1852141679;
        }

        goto LABEL_42;
      }

      if (v23 > 5)
      {
        if (v23 == 6)
        {
          v24 = 0xE500000000000000;
          v25 = 0x6575737369;
          goto LABEL_42;
        }

        v25 = 0x656C6C65636E6163;
      }

      else
      {
        if (v23 == 4)
        {
          v25 = 0x6544726F4674756FLL;
          v24 = 0xEE0079726576696CLL;
          goto LABEL_42;
        }

        v25 = 0x65726576696C6564;
      }

      v24 = 0xE900000000000064;
LABEL_42:
      if (v22 == v25 && v21 == v24)
      {
      }

      else
      {
        v26 = sub_1B78020F8();

        if ((v26 & 1) == 0)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
LABEL_47:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B723E180(0, *(v30 + 16) + 1, 1, v30);
        v30 = result;
      }

      v28 = *(v30 + 16);
      v27 = *(v30 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_1B723E180((v27 > 1), v28 + 1, 1, v30);
        v30 = result;
      }

      *(v30 + 16) = v28 + 1;
      v29 = v30 + 16 * v28;
      *(v29 + 32) = v15;
      *(v29 + 40) = v14;
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v30;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B759FF60(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + v12);
    v17 = *(a2 + 16);

    if (v17 && (v18 = sub_1B724548C(v15, v14), (v19 & 1) != 0))
    {
      v20 = v18;
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v21 = 0xE500000000000000;
          v22 = 0x6575737369;
        }

        else
        {
          if (v16 == 4)
          {
            v22 = 0x6574656C706D6F63;
          }

          else
          {
            v22 = 0x656C6C65636E6163;
          }

          v21 = 0xE900000000000064;
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          v21 = 0xE800000000000000;
          v22 = 0x7961576568546E6FLL;
        }

        else
        {
          v22 = 0x69737365636F7270;
          v21 = 0xEA0000000000676ELL;
        }
      }

      else
      {
        v21 = 0xE400000000000000;
        v22 = 1852141679;
      }

      v23 = *(*(a2 + 56) + v20);
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = 0xE500000000000000;
          v25 = 0x6575737369;
        }

        else
        {
          if (v23 == 4)
          {
            v25 = 0x6574656C706D6F63;
          }

          else
          {
            v25 = 0x656C6C65636E6163;
          }

          v24 = 0xE900000000000064;
        }
      }

      else if (v23)
      {
        if (v23 == 1)
        {
          v24 = 0xE800000000000000;
          v25 = 0x7961576568546E6FLL;
        }

        else
        {
          v25 = 0x69737365636F7270;
          v24 = 0xEA0000000000676ELL;
        }
      }

      else
      {
        v24 = 0xE400000000000000;
        v25 = 1852141679;
      }

      if (v22 == v25 && v21 == v24)
      {
      }

      else
      {
        v26 = sub_1B78020F8();

        if ((v26 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B723E180(0, *(v30 + 16) + 1, 1, v30);
        v30 = result;
      }

      v28 = *(v30 + 16);
      v27 = *(v30 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_1B723E180((v27 > 1), v28 + 1, 1, v30);
        v30 = result;
      }

      *(v30 + 16) = v28 + 1;
      v29 = v30 + 16 * v28;
      *(v29 + 32) = v15;
      *(v29 + 40) = v14;
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v30;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B75A02A4(uint64_t a1)
{
  v18 = type metadata accessor for RawOrderShippingFulfillment();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1B71FE480(0, v5, 0);
    v6 = v19;
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    do
    {
      sub_1B75A1BEC(v7, v4, type metadata accessor for RawOrderShippingFulfillment);
      v8 = &v4[*(v18 + 64)];
      v10 = *v8;
      v9 = *(v8 + 1);
      v11 = v4[40];

      sub_1B75A1C54(v4, type metadata accessor for RawOrderShippingFulfillment);
      v19 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B71FE480((v12 > 1), v13 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      v7 += v17;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v15 = MEMORY[0x1E69E7CC8];
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F398);
  v15 = sub_1B7801CD8();
LABEL_9:
  v19 = v15;
  sub_1B75A1844(v6, 1, &v19, sub_1B725E33C, sub_1B724C928);
  return v19;
}

uint64_t OrderChanges.identifiersForReturnsToRemove.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v1)
  {
    if (v1 == 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = sub_1B75A0594(v1);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = sub_1B7204680(MEMORY[0x1E69E7CC0]);
    if (!v2)
    {
LABEL_7:
      v5 = sub_1B7204680(MEMORY[0x1E69E7CC0]);
      goto LABEL_8;
    }
  }

  v5 = sub_1B75A0594(v2);
LABEL_8:
  v6 = sub_1B759FF60(v4, v5);

  return v6;
}

uint64_t sub_1B75A0594(uint64_t a1)
{
  v18 = type metadata accessor for RawOrderReturn();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1B71FE4C0(0, v5, 0);
    v6 = v19;
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    do
    {
      sub_1B75A1BEC(v7, v4, type metadata accessor for RawOrderReturn);
      v8 = &v4[*(v18 + 64)];
      v10 = *v8;
      v9 = *(v8 + 1);
      v11 = v4[8];

      sub_1B75A1C54(v4, type metadata accessor for RawOrderReturn);
      v19 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B71FE4C0((v12 > 1), v13 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      v7 += v17;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v15 = MEMORY[0x1E69E7CC8];
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F370);
  v15 = sub_1B7801CD8();
LABEL_9:
  v19 = v15;
  sub_1B75A1844(v6, 1, &v19, sub_1B725E350, sub_1B724C93C);
  return v19;
}

uint64_t OrderChanges.identifiersForFulfillmentsToInsert.getter()
{
  v0 = sub_1B75A0874();
  v1 = sub_1B75A0CB4();
  sub_1B724428C(v1);
  return v0;
}

uint64_t sub_1B75A0874()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 16);
  if (!v3)
  {
    v5 = sub_1B7204658(MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = sub_1B7204658(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  v4 = Array<A>.pickupFulfillments.getter(v3);
  v5 = sub_1B759F5A8(v4);

  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = Array<A>.pickupFulfillments.getter(v1);
  v7 = sub_1B759F5A8(v6);

LABEL_8:
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_15:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v5 + 48) + 16 * v15);
    v17 = v16[1];
    v32 = *v16;
    v18 = *(*(v5 + 56) + v15);
    v19 = *(v7 + 16);

    if (v19 && (v20 = sub_1B724548C(v32, v17), (v21 & 1) != 0))
    {
      v22 = *(*(v7 + 56) + v20);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v23 = 0xE800000000000000;
          v24 = 0x705564656B636970;
          if (v18 <= 2)
          {
            goto LABEL_38;
          }
        }

        else if (v22 == 4)
        {
          v23 = 0xE500000000000000;
          v24 = 0x6575737369;
          if (v18 <= 2)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v23 = 0xE900000000000064;
          v24 = 0x656C6C65636E6163;
          if (v18 <= 2)
          {
LABEL_38:
            if (v18)
            {
              if (v18 == 1)
              {
                v25 = 0xEA0000000000676ELL;
                if (v24 != 0x69737365636F7270)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v25 = 0xEE0070756B636950;
                if (v24 != 0x726F467964616572)
                {
                  goto LABEL_49;
                }
              }
            }

            else
            {
              v25 = 0xE400000000000000;
              if (v24 != 1852141679)
              {
                goto LABEL_49;
              }
            }

            goto LABEL_47;
          }
        }
      }

      else if (*(*(v7 + 56) + v20))
      {
        if (v22 == 1)
        {
          v23 = 0xEA0000000000676ELL;
          v24 = 0x69737365636F7270;
          if (v18 <= 2)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v24 = 0x726F467964616572;
          v23 = 0xEE0070756B636950;
          if (v18 <= 2)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v23 = 0xE400000000000000;
        v24 = 1852141679;
        if (v18 <= 2)
        {
          goto LABEL_38;
        }
      }

      if (v18 == 3)
      {
        v25 = 0xE800000000000000;
        if (v24 != 0x705564656B636970)
        {
          goto LABEL_49;
        }
      }

      else if (v18 == 4)
      {
        v25 = 0xE500000000000000;
        if (v24 != 0x6575737369)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v25 = 0xE900000000000064;
        if (v24 != 0x656C6C65636E6163)
        {
          goto LABEL_49;
        }
      }

LABEL_47:
      if (v23 != v25)
      {
LABEL_49:
        v26 = sub_1B78020F8();

        if (v26)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }
    }

    else
    {
LABEL_50:
      if (v18)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B723E180(0, *(v31 + 16) + 1, 1, v31);
          v31 = result;
        }

        v27 = v31;
        v29 = *(v31 + 16);
        v28 = *(v31 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1B723E180((v28 > 1), v29 + 1, 1, v31);
          v27 = result;
        }

        *(v27 + 16) = v29 + 1;
        v31 = v27;
        v30 = v27 + 16 * v29;
        *(v30 + 32) = v32;
        *(v30 + 40) = v17;
      }

      else
      {
LABEL_51:
      }
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return v31;
    }

    v10 = *(v5 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B75A0CB4()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 16);
  if (!v3)
  {
    v5 = sub_1B720466C(MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = sub_1B720466C(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  v4 = Array<A>.shippingFulfillments.getter(v3);
  v5 = sub_1B75A02A4(v4);

  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = Array<A>.shippingFulfillments.getter(v1);
  v7 = sub_1B75A02A4(v6);

LABEL_8:
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_15:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v5 + 48) + 16 * v15);
    v17 = v16[1];
    v32 = *v16;
    v18 = *(*(v5 + 56) + v15);
    v19 = *(v7 + 16);

    if (v19 && (v20 = sub_1B724548C(v32, v17), (v21 & 1) != 0))
    {
      v22 = *(*(v7 + 56) + v20);
      if (v22 > 3)
      {
        if (*(*(v7 + 56) + v20) > 5u)
        {
          if (v22 == 6)
          {
            v23 = 0xE500000000000000;
            v24 = 0x6575737369;
            if (v18 <= 3)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v23 = 0xE900000000000064;
            v24 = 0x656C6C65636E6163;
            if (v18 <= 3)
            {
LABEL_45:
              if (v18 > 1)
              {
                if (v18 == 2)
                {
                  v25 = 0xE700000000000000;
                  if (v24 != 0x64657070696873)
                  {
                    goto LABEL_61;
                  }
                }

                else
                {
                  v25 = 0xE800000000000000;
                  if (v24 != 0x7961576568546E6FLL)
                  {
                    goto LABEL_61;
                  }
                }
              }

              else if (v18)
              {
                v25 = 0xEA0000000000676ELL;
                if (v24 != 0x69737365636F7270)
                {
                  goto LABEL_61;
                }
              }

              else
              {
                v25 = 0xE400000000000000;
                if (v24 != 1852141679)
                {
                  goto LABEL_61;
                }
              }

              goto LABEL_59;
            }
          }
        }

        else if (v22 == 4)
        {
          v24 = 0x6544726F4674756FLL;
          v23 = 0xEE0079726576696CLL;
          if (v18 <= 3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v23 = 0xE900000000000064;
          v24 = 0x65726576696C6564;
          if (v18 <= 3)
          {
            goto LABEL_45;
          }
        }
      }

      else if (*(*(v7 + 56) + v20) > 1u)
      {
        if (v22 == 2)
        {
          v23 = 0xE700000000000000;
          v24 = 0x64657070696873;
          if (v18 <= 3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v23 = 0xE800000000000000;
          v24 = 0x7961576568546E6FLL;
          if (v18 <= 3)
          {
            goto LABEL_45;
          }
        }
      }

      else if (*(*(v7 + 56) + v20))
      {
        v23 = 0xEA0000000000676ELL;
        v24 = 0x69737365636F7270;
        if (v18 <= 3)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v23 = 0xE400000000000000;
        v24 = 1852141679;
        if (v18 <= 3)
        {
          goto LABEL_45;
        }
      }

      if (v18 > 5)
      {
        if (v18 == 6)
        {
          v25 = 0xE500000000000000;
          if (v24 != 0x6575737369)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v25 = 0xE900000000000064;
          if (v24 != 0x656C6C65636E6163)
          {
            goto LABEL_61;
          }
        }
      }

      else if (v18 == 4)
      {
        v25 = 0xEE0079726576696CLL;
        if (v24 != 0x6544726F4674756FLL)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v25 = 0xE900000000000064;
        if (v24 != 0x65726576696C6564)
        {
          goto LABEL_61;
        }
      }

LABEL_59:
      if (v23 != v25)
      {
LABEL_61:
        v26 = sub_1B78020F8();

        if (v26)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }

    else
    {
LABEL_62:
      if (v18)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B723E180(0, *(v31 + 16) + 1, 1, v31);
          v31 = result;
        }

        v27 = v31;
        v29 = *(v31 + 16);
        v28 = *(v31 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1B723E180((v28 > 1), v29 + 1, 1, v31);
          v27 = result;
        }

        *(v27 + 16) = v29 + 1;
        v31 = v27;
        v30 = v27 + 16 * v29;
        *(v30 + 32) = v32;
        *(v30 + 40) = v17;
      }

      else
      {
LABEL_63:
      }
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return v31;
    }

    v10 = *(v5 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B75A11E8()
{
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 32);
  if (!v3)
  {
    v32 = sub_1B7204680(MEMORY[0x1E69E7CC0]);
    if (v1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = sub_1B7204680(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  v32 = sub_1B75A0594(v3);
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = sub_1B75A0594(v1);
LABEL_8:
  v5 = v4;
  v6 = 1 << *(v32 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v32 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v32 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v32 + 56) + v13);
    v18 = *(v5 + 16);

    if (!v18)
    {
      goto LABEL_51;
    }

    v19 = sub_1B724548C(v16, v15);
    if ((v20 & 1) == 0)
    {
      goto LABEL_51;
    }

    v21 = *(*(v5 + 56) + v19);
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = 0xE500000000000000;
        v23 = 0x6575737369;
        if (v17 > 2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v21 == 4)
        {
          v23 = 0x6574656C706D6F63;
        }

        else
        {
          v23 = 0x656C6C65636E6163;
        }

        v22 = 0xE900000000000064;
        if (v17 > 2)
        {
          goto LABEL_30;
        }
      }

LABEL_37:
      if (!v17)
      {
        v25 = 0xE400000000000000;
        if (v23 != 1852141679)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      if (v17 == 1)
      {
        v25 = 0xE800000000000000;
        if (v23 != 0x7961576568546E6FLL)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      v25 = 0xEA0000000000676ELL;
      if (v23 == 0x69737365636F7270)
      {
        goto LABEL_47;
      }

LABEL_49:
      v26 = sub_1B78020F8();

      if (v26)
      {
      }

      else
      {
LABEL_51:
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v27 = v31;
        }

        else
        {
          result = sub_1B723E180(0, *(v31 + 16) + 1, 1, v31);
          v27 = result;
        }

        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1B723E180((v28 > 1), v29 + 1, 1, v27);
          v27 = result;
        }

        *(v27 + 16) = v29 + 1;
        v31 = v27;
        v30 = v27 + 16 * v29;
        *(v30 + 32) = v16;
        *(v30 + 40) = v15;
      }
    }

    else
    {
      if (!*(*(v5 + 56) + v19))
      {
        v22 = 0xE400000000000000;
        v23 = 1852141679;
        if (v17 > 2)
        {
          goto LABEL_30;
        }

        goto LABEL_37;
      }

      if (v21 == 1)
      {
        v22 = 0xE800000000000000;
        v23 = 0x7961576568546E6FLL;
        if (v17 <= 2)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v23 = 0x69737365636F7270;
        v22 = 0xEA0000000000676ELL;
        if (v17 <= 2)
        {
          goto LABEL_37;
        }
      }

LABEL_30:
      if (v17 == 3)
      {
        v25 = 0xE500000000000000;
        if (v23 != 0x6575737369)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v17 == 4)
        {
          v24 = 0x6574656C706D6F63;
        }

        else
        {
          v24 = 0x656C6C65636E6163;
        }

        v25 = 0xE900000000000064;
        if (v23 != v24)
        {
          goto LABEL_49;
        }
      }

LABEL_47:
      if (v22 != v25)
      {
        goto LABEL_49;
      }
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v31;
    }

    v8 = *(v32 + 64 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B75A15CC(__int16 a1, __int16 a2)
{
  if (a1 == 4)
  {
    if (a2 == 4)
    {
      return 1;
    }
  }

  else if (a2 != 4)
  {
    if (a1 == 3)
    {
      if (a2 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (a2 == 3)
      {
        return 0;
      }

      if (a1)
      {
        v3 = 0x6574656C706D6F63;
        if (a1 != 1)
        {
          v3 = 0x656C6C65636E6163;
        }

        v4 = 0xE900000000000064;
      }

      else
      {
        v4 = 0xE400000000000000;
        v3 = 1852141679;
      }

      v5 = 0x6574656C706D6F63;
      if (a2 != 1)
      {
        v5 = 0x656C6C65636E6163;
      }

      if (a2)
      {
        v6 = v5;
      }

      else
      {
        v6 = 1852141679;
      }

      if (a2)
      {
        v7 = 0xE900000000000064;
      }

      else
      {
        v7 = 0xE400000000000000;
      }

      v8 = HIBYTE(a1);
      v9 = HIBYTE(a2);
      if (v3 == v6 && v4 == v7)
      {

        HIBYTE(a2) = v9;
        HIBYTE(a1) = v8;
      }

      else
      {
        v10 = sub_1B78020F8();

        HIBYTE(a2) = v9;
        HIBYTE(a1) = v8;
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (HIBYTE(a1) == 3)
    {
      if (HIBYTE(a2) == 3)
      {
        return 1;
      }
    }

    else if (HIBYTE(a2) != 3)
    {
      v11 = 0xE900000000000064;
      v12 = 1852141679;
      if (HIBYTE(a1))
      {
        if (HIBYTE(a1) == 1)
        {
          v13 = 0x6574656C706D6F63;
        }

        else
        {
          v13 = 0x656C6C65636E6163;
        }

        v14 = 0xE900000000000064;
      }

      else
      {
        v14 = 0xE400000000000000;
        v13 = 1852141679;
      }

      if (HIBYTE(a2))
      {
        if (HIBYTE(a2) == 1)
        {
          v12 = 0x6574656C706D6F63;
        }

        else
        {
          v12 = 0x656C6C65636E6163;
        }
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      if (v13 == v12 && v14 == v11)
      {

        return 1;
      }

      v15 = sub_1B78020F8();

      if (v15)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1B75A1844(uint64_t a1, char a2, void *a3, unint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v41 = *(a1 + 16);
  if (!v41)
  {
    goto LABEL_23;
  }

  v9 = *(a1 + 48);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);

  if (!v10)
  {
    goto LABEL_23;
  }

  v12 = *a3;
  v13 = sub_1B724548C(v11, v10);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    a5(v18, a2 & 1);
    v13 = sub_1B724548C(v11, v10);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_1B78021C8();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v23 = v9;
  v24 = v13;
  (a4)();
  v13 = v24;
  v9 = v23;
  if (v19)
  {
LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();

    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v25 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v26 = (v25[6] + 16 * v13);
  *v26 = v11;
  v26[1] = v10;
  *(v25[7] + v13) = v9;
  v27 = v25[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000001BLL, 0x80000001B7885AF0);
    sub_1B7801C48();
    MEMORY[0x1B8CA4D30](39, 0xE100000000000000);
    sub_1B7801C88();
    __break(1u);
    return;
  }

  v25[2] = v28;
  if (v41 != 1)
  {
    v19 = (a1 + 72);
    a4 = 1;
    while (a4 < *(a1 + 16))
    {
      v9 = *v19;
      v11 = *(v19 - 2);
      v10 = *(v19 - 1);

      if (!v10)
      {
        goto LABEL_23;
      }

      v29 = *a3;
      v30 = sub_1B724548C(v11, v10);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v17 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v17)
      {
        goto LABEL_25;
      }

      a2 = v31;
      if (v29[3] < v34)
      {
        a5(v34, 1);
        v30 = sub_1B724548C(v11, v10);
        if ((a2 & 1) != (v35 & 1))
        {
          goto LABEL_6;
        }
      }

      if (a2)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v37 = (v36[6] + 16 * v30);
      *v37 = v11;
      v37[1] = v10;
      *(v36[7] + v30) = v9;
      v38 = v36[2];
      v17 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v17)
      {
        goto LABEL_26;
      }

      ++a4;
      v36[2] = v39;
      v19 += 24;
      if (v41 == a4)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}