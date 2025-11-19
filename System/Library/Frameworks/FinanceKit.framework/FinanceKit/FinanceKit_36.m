void _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA18RawBankConnectDataO0D0VSo22NSManagedObjectContextCtFZ_0(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1B7800838();
  [a1 setName_];

  v7 = type metadata accessor for RawBankConnectData.Institution(0);
  [a1 setReconsentTypeValue_];
  v8 = a2 + v7[10];
  v9 = *(v8 + 88);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14)
      {
        if (v13 == 1)
        {
          v11 |= 2u;
          if (v10 == 1)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v11 |= 4u;
          if (v10 == 1)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v11 |= 1u;
        if (v10 == 1)
        {
          goto LABEL_13;
        }
      }

      --v10;
    }

    while (v10);
    __break(1u);
  }

  LOWORD(v11) = 0;
LABEL_13:
  [a1 setAuthTypeObjects_];
  v16 = *(v8 + 72);
  v15 = *(v8 + 80);
  if (*(v8 + 64))
  {
    v17 = 0;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [a1 setFirstTransactionsRequestWindow_];

  [a1 setMaxAgeTransactionsFirstRequest_];
  [a1 setMaxAgeTransactionsRefreshRequest_];
  if (*(a2 + v7[9]))
  {
    v18 = sub_1B7800C18();
  }

  else
  {
    v18 = 0;
  }

  [a1 setExtensionsBundleIdentifiers_];

  v19 = *v8;
  if (*(v8 + 8))
  {
    v19 = 0;
  }

  if (v19 < -32768)
  {
    goto LABEL_70;
  }

  if (v19 >= 0x8000)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v20 = *(v8 + 16);
  v21 = *(v8 + 24);
  v22 = *(v8 + 32);
  v23 = *(v8 + 40);
  [a1 setMaximumNumberOfBackgroundRefreshes_];
  if (v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [a1 setBackgroundRefreshConfirmationWindow_];

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [a1 setBackgroundRefreshConfirmationExpiryWindow_];

  v26 = *(v8 + 96);
  if (v26 != 2)
  {
    [a1 setMultipleConsentsEnabled_];
  }

  v27 = *(v8 + 97);
  if (v27 != 2)
  {
    [a1 setProblemReportingEnabled_];
  }

  v28 = *(v8 + 98);
  if (v28 != 2)
  {
    [a1 setFinancialLabEnabled_];
  }

  v29 = *(v8 + 99);
  if (v29 != 2)
  {
    [a1 setTimestampSuitableForUserDisplay_];
  }

  v30 = *(v8 + 112);
  if (v30 != 2)
  {
    [a1 setConsentSyncingEnabled_];
  }

  if ((*(v8 + 128) & 1) == 0)
  {
    [a1 setConsentSyncingOutdatedTokenWaitTimeout_];
  }

  v31 = *(v8 + 144);
  if (v31 != 2)
  {
    [a1 setBalanceWidgetEnabled_];
  }

  v32 = *(v8 + 160);
  if (v32 != 2)
  {
    [a1 setPersonalizedInsightsEnabled_];
  }

  v33 = [a1 piiRedactionConfiguration];
  if (v33)
  {
    v34 = v33;
    [a3 deleteObject_];
  }

  v35 = *(v8 + 104);
  if (v35)
  {
    v36 = objc_allocWithZone(type metadata accessor for ManagedPIIRedactionConfiguration());

    v37 = [v36 initWithContext_];
    sub_1B723B658(v35);

    v38 = sub_1B7800F78();

    [v37 setCountryCodes_];

    [a1 setPiiRedactionConfiguration_];
  }

  if (*(v8 + 136))
  {
    v39 = *(v8 + 136);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = 0;
    v42 = v39 + 32;
    v43 = 0;
    while (v43 < v40)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_69;
      }

      if (*(v42 + v43))
      {
        if (*(v42 + v43) == 1)
        {
          v41 = v41 | 1;
        }

        else
        {
          v41 = v41 | 2;
        }

        if (v44 == v40)
        {
          goto LABEL_65;
        }

        ++v43;
      }

      else
      {
        ++v43;
        if (v44 == v40)
        {
          goto LABEL_65;
        }
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v41 = 0;
LABEL_65:

  [a1 setSupportedNotificationEventTypesValue_];
  v45 = (*(v8 + 161) == 2) | *(v8 + 161) & 1u;

  [a1 setSupportsTransactions_];
}

uint64_t sub_1B74FAC9C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v44 - v11;
  v12 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FFB08();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B77FFC88();
  v49 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1B77FF988();
  v21 = *(v50 - 8);
  v22 = MEMORY[0x1EEE9AC00](v50);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v44 - v25;
  v26 = objc_allocWithZone(v3);
  v44 = a2;
  v27 = [v26 initWithContext_];
  v47 = a1;
  v28 = v27;
  v29 = sub_1B7800838();
  [v28 setId_];

  sub_1B77FF938();
  (*(v16 + 104))(v18, *MEMORY[0x1E6969830], v15);
  v30 = v48;
  sub_1B77FFB18();
  (*(v16 + 8))(v18, v15);
  v31 = v49;
  v32 = *(v49 + 56);
  v45 = v19;
  v32(v51, 1, 1, v19);
  v33 = sub_1B77FFCF8();
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  v34 = v30;
  v35 = v50;
  sub_1B77FECD8();
  v36 = v53;
  sub_1B77FFC08();
  result = (*(v21 + 48))(v36, 1, v35);
  if (result != 1)
  {
    sub_1B74FB4AC(v14, type metadata accessor for Duration);
    (*(v31 + 8))(v34, v45);
    v38 = *(v21 + 8);
    v38(v24, v35);
    v39 = v46;
    (*(v21 + 32))(v46, v36, v35);
    v40 = sub_1B77FF8B8();
    v38(v39, v35);
    [v28 setEarliestUpdateRequestStartDate_];

    result = type metadata accessor for RawBankConnectData.Institution(0);
    v41 = v47;
    v42 = v47 + *(result + 40);
    if (*(v42 + 8))
    {
      v43 = 0;
    }

    else
    {
      v43 = *v42;
    }

    if (v43 < -32768)
    {
      __break(1u);
    }

    else if (v43 < 0x8000)
    {
      [v28 setNumberOfRemainingBackgroundRefreshes_];
      _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA18RawBankConnectDataO0D0VSo22NSManagedObjectContextCtFZ_0(v28, v41, v44);

      sub_1B74FB4AC(v41, type metadata accessor for RawBankConnectData.Institution);
      return v28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B74FB448(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_1B74FB4AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B74FB50C(id *a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(void))
{
  v6 = [*a1 *a4];
  a5();
}

id ManagedBankCredential.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBankCredential.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBankCredential.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedBankCredential.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  v6 = sub_1B77FF9B8();
  [v5 setId_];

  _s10FinanceKit21ManagedBankCredentialC6update_06sealedE0yAC_AA0dE0O9SealedBoxVtFZ_0(v5, a1);
  sub_1B74FC4C0(a1);
  return v5;
}

void ManagedBankCredential.update(_:context:)(void *a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = [a1 credentialIdentifier];
  sub_1B77FF9E8();

  v14 = [v2 id];
  sub_1B77FF9E8();

  LOBYTE(v14) = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  if (v14)
  {
    v16 = [a1 credentialIdentifier];
    sub_1B77FF9E8();

    v17 = sub_1B77FF9B8();
    v15(v12, v6);
    [v2 setId_];

    v18 = [a1 credentialData];
    v19 = sub_1B77FF5B8();
    v21 = v20;

    v22 = sub_1B77FF598();
    sub_1B720A388(v19, v21);
    [v2 setCredentialData_];

    [v2 setCredentialTypeValue_];
    v23 = [a1 nickname];
    [v2 setNickname_];

    v24 = [a1 updatedDate];
    v25 = v30;
    sub_1B77FF928();

    v26 = sub_1B77FF8B8();
    (*(v31 + 8))(v25, v32);
    [v2 setUpdatedDate_];

    v27 = [a1 keyIdentifier];
    sub_1B77FF9E8();

    v28 = sub_1B77FF9B8();
    v15(v12, v6);
    [v2 setKeyIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t static ManagedBankCredential.existingCredential(withCredentialID:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedBankCredential;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B726E47C();
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

id static ManagedBankCredential.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedBankCredential;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedBankCredential.predicateForCredential(withCredentialID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B726E47C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

id static ManagedBankCredential.existingObject(with:in:)(uint64_t a1, id a2)
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

id ManagedBankCredential.credentialType.getter()
{
  result = [v0 credentialTypeValue];
  if (result != 1)
  {
    sub_1B7801A78();

    [v0 credentialTypeValue];
    v2 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v2);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

void _s10FinanceKit21ManagedBankCredentialC6update_06sealedE0yAC_AA0dE0O9SealedBoxVtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 id];
  sub_1B77FF9E8();

  LOBYTE(v8) = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_1B77FF9B8();
    [a1 setId_];

    [a1 setCredentialTypeValue_];
    v10 = type metadata accessor for BankCredential.SealedBox(0);
    v11 = sub_1B77FF598();
    [a1 setCredentialData_];

    if (*(a2 + *(v10 + 20) + 8))
    {
      v12 = sub_1B7800838();
    }

    else
    {
      v12 = 0;
    }

    [a1 setNickname_];

    v13 = sub_1B77FF8B8();
    [a1 setUpdatedDate_];

    v14 = sub_1B77FF9B8();
    [a1 setKeyIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B74FC4C0(uint64_t a1)
{
  v2 = type metadata accessor for BankCredential.SealedBox(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void keypath_setTm_7(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  v8 = a5();
  [v7 *a6];
}

void sub_1B74FC5A8(uint64_t a1, void **a2)
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

  [v7 setLastRequestAttemptDate_];
}

BOOL ManagedPendingApplePayOrder.isEligibleForFetch(now:)()
{
  v1 = v0;
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = [v0 creationDate];
  sub_1B77FF928();

  sub_1B77FF828();
  v10 = *(v3 + 8);
  v10(v6, v2);
  sub_1B7282114();
  LOBYTE(v9) = sub_1B78007F8();
  v10(v8, v2);
  result = 1;
  if ((v9 & 1) == 0)
  {
    if ([v1 responseCount] > 2)
    {
      return 0;
    }

    v12 = [v1 creationDate];
    sub_1B77FF928();

    sub_1B77FF828();
    v10(v6, v2);
    LOBYTE(v12) = sub_1B78007F8();
    v10(v8, v2);
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall ManagedPendingApplePayOrder.awakeFromInsert()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_awakeFromInsert);
  sub_1B77FF938();
  v7 = sub_1B77FF8B8();
  (*(v4 + 8))(v6, v3);
  [v1 setCreationDate_];
}

id ManagedPendingApplePayOrder.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPendingApplePayOrder.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPendingApplePayOrder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedPendingApplePayOrder.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedPendingApplePayOrder;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedPendingApplePayOrder.existingObject(with:in:)(uint64_t a1, id a2)
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

unint64_t static ManagedPendingApplePayOrder.existingPendingApplePayOrder(with:in:)(__int128 *a1)
{
  v2 = v1;
  v11 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedPendingApplePayOrder;
  v5 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v12 = v11;
  v13 = v3;
  v14 = v4;
  v6 = _s10FinanceKit27ManagedPendingApplePayOrderC012predicateFordefG04withSo11NSPredicateCAA014FullyQualifiedG10IdentifierV_tFZ_0(&v12);
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

uint64_t sub_1B74FCFC4(SEL *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.super_class = swift_getObjectType();
  v10[0] = 0;
  v9.receiver = v1;
  v4 = objc_msgSendSuper2(&v9, *a1, v10);
  v5 = v10[0];
  if (v4)
  {
    swift_getKeyPath();
    v6 = v5;
    sub_1B7451E8C(v1);

    if (!v2)
    {
      swift_getKeyPath();
      sub_1B7451E8C(v1);
    }
  }

  else
  {
    v8 = v10[0];
    sub_1B77FF318();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B74FD0EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

id _s10FinanceKit27ManagedPendingApplePayOrderC012predicateFordefG04withSo11NSPredicateCAA014FullyQualifiedG10IdentifierV_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  v12 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B729D790();
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

void *BankConnectConsentStore.__allocating_init(store:activityVoucherManager:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_1B74FFAA8(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void *BankConnectConsentStore.init(store:activityVoucherManager:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_1B74FFA30(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

void *BankConnectConsentStore.__allocating_init(store:)(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectCloudKitActivityVoucherManaging();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  v4[6] = v2;
  v4[7] = &protocol witness table for BankConnectCloudKitActivityVoucherManaging;
  v4[2] = a1;
  v4[3] = v3;

  return v4;
}

void BankConnectConsentStore.getConsent(grantingAccessTo:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAF65B0);

  v8 = sub_1B7800098();
  v9 = sub_1B78011B8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v10 = 136315138;

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    MEMORY[0x1B8CA4D30](v4, v3);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    MEMORY[0x1B8CA4D30](v6, v5);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v11 = sub_1B71A3EF8(0, 0xE000000000000000, &v14);

    *(v10 + 4) = v11;
    _os_log_impl(&dword_1B7198000, v8, v9, "Getting consent for %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
  }

  v12 = [*(*(v2 + 16) + 16) newBackgroundContext];
  MEMORY[0x1EEE9AC00](v12);
  type metadata accessor for BankConnectConsent();
  sub_1B7801468();
}

void sub_1B74FD828(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ManagedConsent();
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  v11 = static ManagedConsent.existingConsent(grantingAccessTo:in:)(&v19);
  if (!v5)
  {
    if (v11)
    {
      BankConnectConsent.init(_:)(v11, a5);
    }

    else
    {
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v12 = sub_1B78000B8();
      __swift_project_value_buffer(v12, qword_1EDAF65B0);

      v13 = sub_1B7800098();
      v14 = sub_1B78011D8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22 = v16;
        *v15 = 136315138;
        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;

        sub_1B7801A78();
        MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
        MEMORY[0x1B8CA4D30](a1, a2);
        MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
        MEMORY[0x1B8CA4D30](a3, a4);
        MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

        v17 = sub_1B71A3EF8(v19, *(&v19 + 1), &v22);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_1B7198000, v13, v14, "Failed to find consent for %s.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1B8CA7A40](v16, -1, -1);
        MEMORY[0x1B8CA7A40](v15, -1, -1);
      }

      sub_1B74599EC();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();
    }
  }
}

void sub_1B74FDB08(uint64_t a1, unint64_t a2, const char *a3)
{
  v5 = v3;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B78000B8();
  __swift_project_value_buffer(v8, qword_1EDAF65B0);

  v9 = sub_1B7800098();
  v10 = sub_1B78011B8();

  if (os_log_type_enabled(v9, v10))
  {
    v16 = v5;
    v11 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1B71A3EF8(a1, a2, &v17);
    v14 = v11;
    v5 = v16;
    _os_log_impl(&dword_1B7198000, v9, v10, v14, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
  }

  v15 = [*(*(v5 + 16) + 16) newBackgroundContext];
  MEMORY[0x1EEE9AC00](v15);
  type metadata accessor for BankConnectConsent();
  sub_1B7801468();
}

uint64_t sub_1B74FDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)())
{
  a5(0);
  result = sub_1B7801468();
  if (!v7)
  {
    return a7();
  }

  return result;
}

void BankConnectConsentStore.updateConsent(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BankConnectConsent();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAF65B0);
  sub_1B74FFD08(a1, v6, type metadata accessor for BankConnectConsent);
  v8 = sub_1B7800098();
  v9 = sub_1B78011B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v12 = &v6[*(v4 + 20)];
    v21 = v2;
    v14 = *v12;
    v13 = v12[1];

    sub_1B74FFD70(v6, type metadata accessor for BankConnectConsent);
    v15 = sub_1B71A3EF8(v14, v13, &v22);
    v2 = v21;

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1B7198000, v8, v9, "Updating consent for consentID: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
  }

  else
  {

    sub_1B74FFD70(v6, type metadata accessor for BankConnectConsent);
  }

  v16 = [*(*(v2 + 16) + 16) newBackgroundContext];
  v17 = MEMORY[0x1EEE9AC00](v16);
  *(&v20 - 4) = v2;
  *(&v20 - 3) = a1;
  *(&v20 - 2) = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  *(&v20 - 4) = sub_1B74FFC98;
  *(&v20 - 3) = v19;
  *(&v20 - 2) = v18;
  sub_1B7801468();
}

void sub_1B74FE078(void *a1, uint64_t a2, void *a3)
{
  v13[8] = *MEMORY[0x1E69E9840];
  v7 = a2 + *(type metadata accessor for BankConnectConsent() + 20);
  v9 = *v7;
  v8 = *(v7 + 8);
  v13[3] = v9;
  v13[4] = v8;
  v13[5] = a3;
  v13[6] = a1;
  type metadata accessor for ManagedConsent();
  sub_1B7801468();
  if (!v3)
  {
    v10 = v13[0];
    _s10FinanceKit14ManagedConsentC6update_4withyAC_AA011BankConnectD0VtFZ_0(v13[0], a2);
    v13[0] = 0;
    if ([a3 save_])
    {
      v11 = v13[0];
    }

    else
    {
      v12 = v13[0];
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

void BankConnectConsentStore.updateConsent(_:consentStatus:lastUpdatedAt:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for RawBankConnectData.Consent(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v11) = *a2;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1B78000B8();
  __swift_project_value_buffer(v12, qword_1EDAF65B0);
  sub_1B74FFD08(a1, v10, type metadata accessor for RawBankConnectData.Consent);
  v13 = sub_1B7800098();
  v14 = sub_1B78011B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v11;
    v11 = v17;
    v31 = v17;
    *v16 = 136315138;
    v30 = v4;
    v18 = *v10;
    v19 = v10[1];

    sub_1B74FFD70(v10, type metadata accessor for RawBankConnectData.Consent);
    v20 = sub_1B71A3EF8(v18, v19, &v31);

    *(v16 + 4) = v20;
    v4 = v30;
    _os_log_impl(&dword_1B7198000, v13, v14, "Updating consent for consentID: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v21 = v11;
    LOBYTE(v11) = v28;
    MEMORY[0x1B8CA7A40](v21, -1, -1);
    v22 = v16;
    a1 = v29;
    MEMORY[0x1B8CA7A40](v22, -1, -1);
  }

  else
  {

    sub_1B74FFD70(v10, type metadata accessor for RawBankConnectData.Consent);
  }

  v23 = [*(*(v4 + 16) + 16) newBackgroundContext];
  v24 = MEMORY[0x1EEE9AC00](v23);
  *&v27[-48] = v4;
  *&v27[-40] = a1;
  *&v27[-32] = v24;
  v27[-24] = v11;
  *&v27[-16] = a3;
  v25 = MEMORY[0x1EEE9AC00](v24);
  *&v27[-32] = sub_1B74FFCB8;
  *&v27[-24] = v26;
  *&v27[-16] = v25;
  sub_1B7801468();
}

void sub_1B74FE494(void *a1, id *a2, void *a3, char a4)
{
  v27[8] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = a2[1];
  v27[3] = *a2;
  v27[4] = v9;
  v27[5] = a3;
  v27[6] = a1;
  type metadata accessor for ManagedConsent();
  sub_1B7801468();
  if (!v4)
  {
    v10 = v27[0];
    v11 = [v27[0] consentID];
    v12 = sub_1B7800868();
    v14 = v13;

    if (v12 == v8 && v14 == v9)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_1B78020F8();
    }

    v16 = [v27[0] refreshSequenceNumber];
    v17 = *(a2 + *(type metadata accessor for RawBankConnectData.Consent(0) + 28));
    if (v16 < v17)
    {
      [v27[0] setConsentTokenIdentifiedAsOutdatedAt_];
    }

    v18 = sub_1B7800838();
    [v27[0] setConsentID_];

    v19 = sub_1B77FF8B8();
    [v27[0] setAuthorizedAt_];

    v20 = sub_1B77FF8B8();
    [v27[0] setAuthorizedUntil_];

    v21 = sub_1B77FF8B8();
    [v27[0] setBackgroundRefreshLastConfirmedAt_];

    [v27[0] setRefreshSequenceNumber_];
    v22 = sub_1B7800838();
    [v27[0] setConsentToken_];

    [v27[0] setConsentStatusValue_];
    v23 = sub_1B77FF8B8();
    [v27[0] setLastUpdatedAt_];

    if ((v26 & 1) == 0)
    {
      [v27[0] setNotificationSubscriptionObject_];
    }

    v27[0] = 0;
    if ([a3 save_])
    {
      v24 = v27[0];
    }

    else
    {
      v25 = v27[0];
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

void BankConnectConsentStore.updateConsent(withConsentID:consentStatus:lastUpdatedAt:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B78000B8();
  __swift_project_value_buffer(v6, qword_1EDAF65B0);

  v7 = sub_1B7800098();
  v8 = sub_1B78011B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1B71A3EF8(a1, a2, &v13);
    _os_log_impl(&dword_1B7198000, v7, v8, "Updating consent for consentID: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  v11 = [*(*(v3 + 16) + 16) newBackgroundContext];
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B7801468();
}

void sub_1B74FE9D0(void *a1, void *a2, void *a3, void *a4, char a5)
{
  v12[8] = *MEMORY[0x1E69E9840];
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a1;
  type metadata accessor for ManagedConsent();
  sub_1B7801468();
  if (!v5)
  {
    v8 = v12[0];
    [v12[0] setConsentStatusValue_];
    v9 = sub_1B77FF8B8();
    [v12[0] setLastUpdatedAt_];

    v12[0] = 0;
    if ([a4 save_])
    {
      v10 = v12[0];
    }

    else
    {
      v11 = v12[0];
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

uint64_t sub_1B74FEB18@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X4>, uint64_t (*a5)(uint64_t, unint64_t, uint64_t)@<X5>, const char *a6@<X6>, uint64_t *a7@<X8>)
{
  a4(0);
  result = a5(a1, a2, a3);
  if (!v7)
  {
    if (result)
    {
      *a7 = result;
    }

    else
    {
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
        v19 = swift_slowAlloc();
        v21 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1B71A3EF8(a1, a2, &v21);
        _os_log_impl(&dword_1B7198000, v16, v17, a6, v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1B8CA7A40](v19, -1, -1);
        MEMORY[0x1B8CA7A40](v18, -1, -1);
      }

      sub_1B74599EC();
      swift_allocError();
      *v20 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

void BankConnectConsentStore.setIdentifiedOutdatedAtAndApplyActivityVoucherIfNeeded(forConsentID:userPresence:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for UserPresence();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B74FFD08(a3, v11, type metadata accessor for UserPresence);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  LODWORD(a3) = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_1B74FFD70(v11, type metadata accessor for UserPresence);
  if (a3 == 1)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v13 = sub_1B78000B8();
    __swift_project_value_buffer(v13, qword_1EDAF65B0);

    v14 = sub_1B7800098();
    v15 = sub_1B78011F8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B71A3EF8(a1, a2, &v30);
      _os_log_impl(&dword_1B7198000, v14, v15, "Out of date token detected for consentID: %s. User is present so applying import voucher and setting the identified as outdated date if needed.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
    }

    v18 = [*(v5[2] + 16) newBackgroundContext];
    v19 = MEMORY[0x1EEE9AC00](v18);
    *(&v29 - 4) = a1;
    *(&v29 - 3) = a2;
    *(&v29 - 2) = v19;
    v20 = MEMORY[0x1EEE9AC00](v19);
    *(&v29 - 4) = sub_1B74FFDD0;
    *(&v29 - 3) = v21;
    *(&v29 - 2) = v20;
    sub_1B7801468();
    if (!v4)
    {
      v27 = v5[6];
      v28 = v5[7];
      __swift_project_boxed_opaque_existential_1(v5 + 3, v27);
      (*(v28 + 8))(a1, a2, v27, v28);
    }
  }

  else
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1B78000B8();
    __swift_project_value_buffer(v22, qword_1EDAF65B0);

    v23 = sub_1B7800098();
    v24 = sub_1B78011F8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1B71A3EF8(a1, a2, &v30);
      _os_log_impl(&dword_1B7198000, v23, v24, "Out of date token detected for consentID: %s. User is not present so suppressing the error and waiting for updated token.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1B8CA7A40](v26, -1, -1);
      MEMORY[0x1B8CA7A40](v25, -1, -1);
    }
  }
}

void sub_1B74FF10C(void *a1, uint64_t a2, void *a3)
{
  v85[1] = *MEMORY[0x1E69E9840];
  v81 = sub_1B77FF818();
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FF988();
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v71 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v71 - v17;
  type metadata accessor for ManagedConsent();
  v19 = a1;
  v20 = a1;
  v21 = a2;
  v22 = a2;
  v23 = a3;
  v24 = v82;
  v25 = static ManagedConsent.existingConsent(withConsentID:in:)(v20, v22);
  if (!v24)
  {
    v74 = v10;
    v75 = v19;
    v26 = v21;
    v73 = v13;
    v28 = v80;
    v27 = v81;
    v29 = v79;
    v76 = v23;
    v82 = 0;
    if (v25)
    {
      v75 = v25;
      v30 = [v25 consentTokenIdentifiedAsOutdatedAt];
      if (v30)
      {
        v31 = v18;
        v32 = v30;
        sub_1B77FF928();

        v33 = v27;
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v34 = sub_1B78000B8();
        __swift_project_value_buffer(v34, qword_1EDAF65B0);
        v35 = v74;
        v36 = v28;
        (*(v29 + 16))(v74, v31, v28);
        v37 = sub_1B7800098();
        v38 = sub_1B78011F8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = v35;
          v40 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v85[0] = v73;
          *v40 = 136315138;
          v41 = v77;
          MEMORY[0x1B8CA2B90]();
          sub_1B74F6928();
          sub_1B77FF968();
          (*(v78 + 8))(v41, v33);
          v42 = *(v29 + 8);
          v42(v39, v36);
          v43 = v31;
          v44 = sub_1B71A3EF8(v83, v84, v85);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_1B7198000, v37, v38, "Consent was already identified as outdated at: %s.", v40, 0xCu);
          v45 = v73;
          __swift_destroy_boxed_opaque_existential_1(v73);
          MEMORY[0x1B8CA7A40](v45, -1, -1);
          MEMORY[0x1B8CA7A40](v40, -1, -1);

          v42(v43, v36);
        }

        else
        {

          v66 = *(v29 + 8);
          v66(v35, v28);
          v66(v31, v28);
        }
      }

      else
      {
        v53 = v16;
        sub_1B77FF938();
        v54 = sub_1B77FF8B8();
        [v75 setConsentTokenIdentifiedAsOutdatedAt_];

        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v55 = sub_1B78000B8();
        __swift_project_value_buffer(v55, qword_1EDAF65B0);
        v56 = v73;
        (*(v29 + 16))(v73, v53, v28);
        v57 = sub_1B7800098();
        v58 = sub_1B78011F8();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v74 = v53;
          v60 = v59;
          v72 = swift_slowAlloc();
          v85[0] = v72;
          *v60 = 136315138;
          v61 = v56;
          v62 = v77;
          MEMORY[0x1B8CA2B90]();
          sub_1B74F6928();
          sub_1B77FF968();
          (*(v78 + 8))(v62, v27);
          v63 = *(v29 + 8);
          v63(v61, v28);
          v64 = sub_1B71A3EF8(v83, v84, v85);

          *(v60 + 4) = v64;
          _os_log_impl(&dword_1B7198000, v57, v58, "Consent was not already identified as outdated, setting date to: %s.", v60, 0xCu);
          v65 = v72;
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x1B8CA7A40](v65, -1, -1);
          MEMORY[0x1B8CA7A40](v60, -1, -1);

          v63(v74, v28);
        }

        else
        {

          v67 = *(v29 + 8);
          v67(v56, v28);
          v67(v53, v28);
        }
      }

      v68 = v76;
      if ([v76 hasChanges])
      {
        v83 = 0;
        if (![v68 save_])
        {
          v70 = v83;
          sub_1B77FF318();

          swift_willThrow();
          return;
        }

        v69 = v83;
      }
    }

    else
    {
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v46 = sub_1B78000B8();
      __swift_project_value_buffer(v46, qword_1EDAF65B0);

      v47 = sub_1B7800098();
      v48 = sub_1B78011D8();

      v49 = os_log_type_enabled(v47, v48);
      v50 = v75;
      if (v49)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v83 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1B71A3EF8(v50, v26, &v83);
        _os_log_impl(&dword_1B7198000, v47, v48, "Failed to find consent with consentID: %s. Unable to set the date when the token was identified as outdated if needed.", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1B8CA7A40](v52, -1, -1);
        MEMORY[0x1B8CA7A40](v51, -1, -1);
      }
    }
  }
}

uint64_t BankConnectConsentStore.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t BankConnectConsentStore.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_1B74FFA30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  a3[2] = a1;
  return a3;
}

void *sub_1B74FFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v12[6] = a4;
  v12[7] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 3);
  (*(v9 + 32))(boxed_opaque_existential_1, v11, a4);
  v12[2] = a1;
  return v12;
}

uint64_t sub_1B74FFD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B74FFD70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BankConnectService.updateConsentStatus(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74FFF90, 0, 0);
}

uint64_t sub_1B74FFF90()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t sub_1B750001C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return BankConnectService.updateConsentStatus(forConsentID:)(a1, a2);
}

uint64_t dispatch thunk of BankConnectConsentStatusUpdating.updateConsentStatus(forConsentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

unint64_t FinancialInsightsService.__allocating_init(connections:)(unint64_t a1)
{
  swift_allocObject();
  v2 = sub_1B7500690(a1);

  return v2;
}

unint64_t FinancialInsightsService.init(connections:)(unint64_t a1)
{
  v1 = sub_1B7500690(a1);

  return v1;
}

uint64_t sub_1B7500294()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v5 = type metadata accessor for XPCEntitlementChecker();
  v6 = swift_allocObject();
  v0[4] = v6;
  v7 = sub_1B7202D08(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992510);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *(v6 + 16) = v8;
  v0[2] = v6;
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1B75003E8;

  return static ExtensionServiceConfiguration.makeConnections<A, B>(extensionFinder:withBundleIdentifiers:entitlementChecker:)(v4, 0, (v0 + 2), &type metadata for FinancialInsightsServiceConfiguration, v2, v5, &protocol witness table for FinancialInsightsServiceConfiguration, v3);
}

uint64_t sub_1B75003E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1B75005D4;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1B7500534;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B7500534()
{
  v1 = v0[7];
  v2 = v0[3];
  type metadata accessor for FinancialInsightsService();
  swift_allocObject();
  v3 = sub_1B7500690(v1);

  __swift_destroy_boxed_opaque_existential_1(v2);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1B75005D4()
{
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinancialInsightsService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1B7500690(unint64_t result)
{
  v2 = result;
  *(v1 + 16) = result;
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return v1;
  }

  result = sub_1B7801958();
  v3 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8CA5DC0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      [*(v5 + 16) resume];
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B75007E4(uint64_t a1)
{
  v2 = sub_1B77FEAA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1B77FEA88();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B75008D8()
{
  v3 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v0 = _os_activity_create(&dword_1B7198000, "orders/MapsSuggestions", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v0, &state);
  sub_1B75009D0();
  os_activity_scope_leave(&state);
  return swift_unknownObjectRelease();
}

void sub_1B75009D0()
{
  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF6550);
  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "Some orders changed, refetching pickup orders", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1B71A40D0();
    if (v0)
    {

      v5 = v0;
      v6 = sub_1B7800098();
      v7 = sub_1B78011D8();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v0;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_1B7198000, v6, v7, "Failed to fetch changed orders: %@", v8, 0xCu);
        sub_1B7205418(v9, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](v9, -1, -1);
        MEMORY[0x1B8CA7A40](v8, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1B7500C00()
{

  sub_1B71A4CB4(v0 + OBJC_IVAR____TtC10FinanceKit30TimeWindowOrderPickupsObserver_timeWindow, type metadata accessor for TimeWindow);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t MapsSuggestionsOrderPickup.orderIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 MapsSuggestionsOrderPickup.orderIdentifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t MapsSuggestionsOrderPickup.pickupIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MapsSuggestionsOrderPickup.pickupIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MapsSuggestionsOrderPickup.pickupLocationDisplayName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MapsSuggestionsOrderPickup.pickupLocationDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MapsSuggestionsOrderPickup.pickupWindow.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 28);

  return sub_1B7500F10(a1, v3);
}

uint64_t sub_1B7500F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *MapsSuggestionsOrderPickup.pickupAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 32));
  v2 = v1;
  return v1;
}

void MapsSuggestionsOrderPickup.pickupAddress.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 32);

  *(v1 + v3) = a1;
}

void *MapsSuggestionsOrderPickup.pickupLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 36));
  v2 = v1;
  return v1;
}

void MapsSuggestionsOrderPickup.pickupLocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t MapsSuggestionsOrderPickup.merchantDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 40));

  return v1;
}

uint64_t MapsSuggestionsOrderPickup.merchantDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MapsSuggestionsOrderPickup.merchantBusinessChatURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 44);

  return sub_1B7228664(v3, a1);
}

uint64_t MapsSuggestionsOrderPickup.merchantBusinessChatURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MapsSuggestionsOrderPickup(0) + 44);

  return sub_1B727CBBC(a1, v3);
}

id sub_1B75012D4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = [*a1 ecommerceOrderContent];
  if (result)
  {
    v7 = result;
    v8 = ManagedECommerceOrderContent.pickupFulfillments.getter();
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = a2;
    v10[3] = v5;
    v10[4] = v7;
    v9 = sub_1B755DCA0(sub_1B7503E68, v10, v8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1B75013D8@<X0>(void **a1@<X0>, void (*a2)(id, uint64_t)@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v106 = a3;
  v107 = a4;
  v120 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v119 = &v103 - v10;
  v11 = sub_1B77FFB08();
  v117 = *(v11 - 8);
  v118 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FFC88();
  v111 = *(v13 - 8);
  v112 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v114);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  v122 = v17;
  v123 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v110 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v109 = &v103 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v121 = &v103 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v103 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v103 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v103 - v30;
  v32 = type metadata accessor for Order.FulfillmentWindow(0);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v113 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v103 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v125 = &v103 - v39;
  v40 = *a1;
  if (ManagedOrderPickupFulfillment.status.getter() != 2)
  {
    v42 = type metadata accessor for MapsSuggestionsOrderPickup(0);
    return (*(*(v42 - 8) + 56))(a5, 1, 1, v42);
  }

  v105 = a5;
  v41 = [v40 address];
  if (!v41)
  {
    v41 = [v40 location];
    if (!v41)
    {
      goto LABEL_25;
    }
  }

  ManagedOrderPickupFulfillment.pickupWindow.getter(v31);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_1B7205418(v31, &qword_1EB990828);
LABEL_24:
    v41 = 0;
LABEL_25:
    v93 = type metadata accessor for MapsSuggestionsOrderPickup(v41);
    return (*(*(v93 - 8) + 56))(v105, 1, 1, v93);
  }

  v44 = v125;
  sub_1B719B148(v31, v125, type metadata accessor for Order.FulfillmentWindow);
  sub_1B719A8B8(v44, v38, type metadata accessor for Order.FulfillmentWindow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v104 = v40;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B719B148(v38, v16, type metadata accessor for TimeWindow);
    v46 = v122;
    v47 = v123;
    (*(v123 + 16))(v27, v16, v122);
    sub_1B71A4CB4(v16, type metadata accessor for TimeWindow);
  }

  else
  {
    v46 = v122;
    v47 = v123;
    (*(v123 + 32))(v27, v38, v122);
  }

  v48 = v124;
  v49 = v120;
  sub_1B719BCF0(&qword_1EB98EBD8, MEMORY[0x1E6969530]);
  if (sub_1B78007F8())
  {
    (*(v47 + 32))(v48, v27, v46);
  }

  else
  {
    (*(v47 + 8))(v27, v46);
    (*(v47 + 16))(v48, v49, v46);
  }

  v50 = v115;
  v52 = v117;
  v51 = v118;
  (*(v117 + 104))(v115, *MEMORY[0x1E6969830], v118);
  v53 = v116;
  sub_1B77FFB18();
  (*(v52 + 8))(v50, v51);
  v54 = v119;
  sub_1B77FFC08();
  result = (*(v47 + 48))(v54, 1, v46);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (v111)[1](v53, v112);
  v55 = *(v47 + 32);
  v56 = v109;
  v55(v109, v54, v46);
  v57 = v110;
  Order.FulfillmentWindow.endDate.getter(v110);
  v58 = sub_1B78007E8();
  v61 = *(v47 + 8);
  v60 = v47 + 8;
  v59 = v61;
  v62 = (v58 & 1) == 0;
  if (v58)
  {
    v63 = v56;
  }

  else
  {
    v63 = v57;
  }

  if (v62)
  {
    v64 = v56;
  }

  else
  {
    v64 = v57;
  }

  v59(v63, v46);
  v65 = v121;
  v55(v121, v64, v46);
  v66 = v124;
  if ((sub_1B7800808() & 1) == 0)
  {
    v59(v65, v46);
    v59(v66, v46);
    sub_1B71A4CB4(v125, type metadata accessor for Order.FulfillmentWindow);
    goto LABEL_24;
  }

  v120 = v59;
  v123 = v60;
  v67 = v106;
  v68 = [v106 orderTypeIdentifier];
  v69 = sub_1B7800868();
  v118 = v70;
  v119 = v69;

  v71 = [v67 orderIdentifier];
  v72 = sub_1B7800868();
  v116 = v73;
  v117 = v72;

  v74 = v104;
  v75 = [v104 fulfillmentIdentifier];
  v76 = sub_1B7800868();
  v114 = v77;
  v115 = v76;

  v78 = [v74 displayName];
  v79 = sub_1B77FFA48();
  v112 = sub_1B741F7D4(v79);
  v81 = v80;

  sub_1B719A8B8(v125, v113, type metadata accessor for Order.FulfillmentWindow);
  v111 = [v74 address];
  v110 = [v74 location];
  v82 = v107;
  v83 = [v107 merchant];
  v84 = [v83 displayName];

  v85 = sub_1B77FFA48();
  v109 = sub_1B741F7D4(v85);
  v87 = v86;

  v88 = [v82 merchant];
  v89 = [v88 businessChatURL];

  if (v89)
  {
    v90 = v108;
    sub_1B77FF478();

    v91 = 0;
    v92 = v105;
  }

  else
  {
    v91 = 1;
    v92 = v105;
    v90 = v108;
  }

  v94 = v120;
  v95 = v122;
  v120(v121, v122);
  v94(v124, v95);
  sub_1B71A4CB4(v125, type metadata accessor for Order.FulfillmentWindow);
  v96 = sub_1B77FF4F8();
  (*(*(v96 - 8) + 56))(v90, v91, 1, v96);
  v97 = v118;
  *v92 = v119;
  v92[1] = v97;
  v98 = v116;
  v92[2] = v117;
  v92[3] = v98;
  v99 = v114;
  v92[4] = v115;
  v92[5] = v99;
  v92[6] = v112;
  v92[7] = v81;
  v100 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  sub_1B719B148(v113, v92 + v100[7], type metadata accessor for Order.FulfillmentWindow);
  v101 = v110;
  *(v92 + v100[8]) = v111;
  *(v92 + v100[9]) = v101;
  v102 = (v92 + v100[10]);
  *v102 = v109;
  v102[1] = v87;
  sub_1B726A728(v90, v92 + v100[11]);
  return (*(*(v100 - 1) + 56))(v92, 0, 1, v100);
}

uint64_t MapsSuggestionsOrderPickup.hash(into:)()
{
  sub_1B7800798();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t MapsSuggestionsOrderPickup.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B7502080()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B75020EC()
{
  sub_1B7800798();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t sub_1B7502148()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B75021DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7503E0C();
  *a1 = result;
  return result;
}

void sub_1B750220C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001B7873F00;
    v9 = 0xD000000000000017;
    if (v2 == 6)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v8 = 0x80000001B7873F20;
    }

    v10 = 0xED00007373657264;
    v11 = 0x644170756B636970;
    if (v2 != 4)
    {
      v11 = 0x6F4C70756B636970;
      v10 = 0xEE006E6F69746163;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEF7265696669746ELL;
    v4 = 0x656449726564726FLL;
    v5 = 0x80000001B7873EB0;
    v6 = 0xD000000000000019;
    if (v2 != 2)
    {
      v6 = 0x695770756B636970;
      v5 = 0xEC000000776F646ELL;
    }

    if (*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x80000001B7873E90;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_1B7502354()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000017;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0x644170756B636970;
    if (v1 != 4)
    {
      v6 = 0x6F4C70756B636970;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656449726564726FLL;
    v3 = 0xD000000000000019;
    if (v1 != 2)
    {
      v3 = 0x695770756B636970;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_1B7502494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7503E0C();
  *a1 = result;
  return result;
}

uint64_t sub_1B75024BC(uint64_t a1)
{
  v2 = sub_1B750396C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75024F8(uint64_t a1)
{
  v2 = sub_1B750396C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsSuggestionsOrderPickup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v49 - v4;
  v56 = sub_1B77FF988();
  v52 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v54);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996738);
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v49 - v9;
  v11 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 44);
  v16 = sub_1B77FF4F8();
  v17 = *(*(v16 - 8) + 56);
  v58 = v15;
  v18 = v14;
  v17(&v14[v15], 1, 1, v16);
  v19 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B750396C();
  v20 = v57;
  sub_1B78023C8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
    return sub_1B7205418(v18 + v58, &unk_1EB994C70);
  }

  else
  {
    v57 = v7;
    v49[1] = v16;
    v21 = v56;
    v22 = v55;
    LOBYTE(v60) = 0;
    sub_1B731BBF0();
    v23 = v10;
    sub_1B7801E48();
    v25 = *&v69[16];
    v26 = v70;
    *v18 = *v69;
    *(v18 + 16) = v25;
    *(v18 + 24) = v26;
    v69[0] = 1;
    *(v18 + 32) = sub_1B7801DF8();
    *(v18 + 40) = v27;
    v69[0] = 2;
    v49[0] = 0;
    v28 = v22;
    *(v18 + 48) = sub_1B7801DF8();
    *(v18 + 56) = v29;
    v69[0] = 3;
    sub_1B719BCF0(&qword_1EB996748, type metadata accessor for Order.FulfillmentWindow);
    v30 = v57;
    sub_1B7801E48();
    sub_1B719B148(v30, v18 + v11[7], type metadata accessor for Order.FulfillmentWindow);
    v68 = 4;
    sub_1B73043C4();
    sub_1B7801DB8();
    v54 = v23;
    v31 = *v69;
    if (*v69 == 1)
    {
      v32 = 0;
    }

    else
    {
      v63 = v71;
      v64 = v72;
      v65 = v73;
      v66 = v74;
      v61 = *&v69[8];
      v62 = v70;
      sub_1B7205540(0, &qword_1EB990D70);
      v60 = *&v31;
      v32 = CNMutablePostalAddress.init(rawAddress:)(&v60);
    }

    v33 = v11[8];
    v57 = v32;
    *(v18 + v33) = v32;
    v67 = 5;
    sub_1B75039C0();
    sub_1B7801DB8();
    if (BYTE1(v62))
    {
      v34 = 0;
    }

    else
    {
      v35 = v60;
      v36 = *&v61;
      if (v62)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = *(&v61 + 1);
      }

      v38 = objc_allocWithZone(MEMORY[0x1E6985C40]);
      v39 = v51;
      sub_1B77FF978();
      v40 = sub_1B77FF8B8();
      (*(v52 + 8))(v39, v21);
      v34 = [v38 initWithCoordinate:v40 altitude:v35 horizontalAccuracy:v36 verticalAccuracy:v37 timestamp:{0.0, 1.0}];
    }

    v41 = v53;
    v42 = v11[9];
    v56 = v34;
    *(v18 + v42) = v34;
    LOBYTE(v60) = 6;
    v43 = v8;
    v44 = v54;
    v45 = sub_1B7801DF8();
    v46 = (v18 + v11[10]);
    *v46 = v45;
    v46[1] = v47;
    LOBYTE(v60) = 7;
    sub_1B719BCF0(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    v48 = v50;
    sub_1B7801DB8();
    (*(v28 + 8))(v44, v43);
    sub_1B727CBBC(v48, v18 + v58);
    sub_1B719A8B8(v18, v41, type metadata accessor for MapsSuggestionsOrderPickup);
    __swift_destroy_boxed_opaque_existential_1(v59);
    return sub_1B71A4CB4(v18, type metadata accessor for MapsSuggestionsOrderPickup);
  }
}

uint64_t MapsSuggestionsOrderPickup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996758);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B750396C();
  sub_1B78023F8();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  *&v42 = *v3;
  *(&v42 + 1) = v9;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  LOBYTE(v39[0]) = 0;
  sub_1B731BB9C();

  sub_1B7801FC8();
  if (v2)
  {

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v13 = v6;

    LOBYTE(v42) = 1;
    sub_1B7801F78();
    LOBYTE(v42) = 2;
    sub_1B7801F78();
    v14 = type metadata accessor for MapsSuggestionsOrderPickup(0);
    v33 = v5;
    v49 = 3;
    type metadata accessor for Order.FulfillmentWindow(0);
    sub_1B719BCF0(&qword_1EB996760, type metadata accessor for Order.FulfillmentWindow);
    sub_1B7801FC8();
    v15 = *(v3 + *(v14 + 32));
    if (v15)
    {
      RawAddress.init(_:)(v15, &v42);
      v16 = v42;
      v17 = v43;
      v18 = v44;
      v19 = v45;
      v20 = v46;
      v21 = v47;
      v15 = v48;
    }

    else
    {
      v16 = xmmword_1B78347C0;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
    }

    v42 = v16;
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v20;
    v47 = v21;
    v48 = v15;
    v41 = 4;
    sub_1B7304418();
    sub_1B7801F38();
    v39[4] = v46;
    v39[5] = v47;
    v40 = v48;
    v39[0] = v42;
    v39[1] = v43;
    v39[2] = v44;
    v39[3] = v45;
    sub_1B7205418(v39, &qword_1EB995F40);
    v32 = v14;
    v22 = *(v3 + *(v14 + 36));
    if (v22)
    {
      v23 = v22;
      [v23 coordinate];
      v31 = v24;
      [v23 coordinate];
      v30 = v25;
      [v23 altitude];
      v27 = v26;

      *&v28 = v31;
      *(&v28 + 1) = v30;
    }

    else
    {
      v28 = 0uLL;
      v27 = 0;
    }

    v35 = v28;
    v36 = v27;
    v37 = 0;
    v38 = v22 == 0;
    v34 = 5;
    sub_1B7503A14();
    v29 = v33;
    sub_1B7801F38();
    LOBYTE(v35) = 6;
    sub_1B7801F78();
    LOBYTE(v35) = 7;
    sub_1B77FF4F8();
    sub_1B719BCF0(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801F38();
    return (*(v13 + 8))(v8, v29);
  }
}

uint64_t _s10FinanceKit26MapsSuggestionsOrderPickupV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = a1[2];
  v14 = a1[3];
  v16 = a2[2];
  v15 = a2[3];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((v13 != v16 || v14 != v15) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_37;
  }

  v17 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  if ((_s10FinanceKit5OrderV17FulfillmentWindowO2eeoiySbAE_AEtFZ_0(a1 + v17[7], a2 + v17[7]) & 1) == 0)
  {
    goto LABEL_37;
  }

  v18 = v17[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_37;
    }

    sub_1B7205540(0, &qword_1EDAFAF20);
    v21 = v20;
    v22 = v19;
    v23 = sub_1B7801558();

    if ((v23 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v20)
  {
    goto LABEL_37;
  }

  v24 = v17[9];
  v25 = *(a1 + v24);
  if (v25)
  {
    v26 = v25;
    [v26 coordinate];
    v28 = v27;
    [v26 coordinate];
    v30 = v29;
    [v26 altitude];
    v32 = v31;

    v33 = *(a2 + v17[9]);
    if (!v33)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v33 = *(a2 + v24);
    if (!v33)
    {
      goto LABEL_28;
    }

    v32 = 0.0;
    v30 = 0.0;
    v28 = 0.0;
  }

  v34 = v33;
  [v34 coordinate];
  v36 = v35;
  [v34 coordinate];
  v38 = v37;
  [v34 altitude];
  v40 = v39;

  v41 = 0;
  if (v25 && v28 == v36 && v30 == v38 && v32 == v40)
  {
LABEL_28:
    v42 = v17[10];
    v43 = *(a1 + v42);
    v44 = *(a1 + v42 + 8);
    v45 = (a2 + v42);
    if ((v43 != *v45 || v44 != v45[1]) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_37;
    }

    v46 = v17[11];
    v47 = *(v10 + 48);
    sub_1B7228664(a1 + v46, v12);
    sub_1B7228664(a2 + v46, &v12[v47]);
    v49 = v53;
    v48 = v54;
    v50 = *(v53 + 48);
    if (v50(v12, 1, v54) == 1)
    {
      if (v50(&v12[v47], 1, v48) == 1)
      {
        sub_1B7205418(v12, &unk_1EB994C70);
        v41 = 1;
        return v41 & 1;
      }
    }

    else
    {
      sub_1B7228664(v12, v9);
      if (v50(&v12[v47], 1, v48) != 1)
      {
        (*(v49 + 32))(v6, &v12[v47], v48);
        sub_1B719BCF0(&qword_1EB990310, MEMORY[0x1E6968FB0]);
        v41 = sub_1B7800828();
        v52 = *(v49 + 8);
        v52(v6, v48);
        v52(v9, v48);
        sub_1B7205418(v12, &unk_1EB994C70);
        return v41 & 1;
      }

      (*(v49 + 8))(v9, v48);
    }

    sub_1B7205418(v12, &qword_1EB991C30);
LABEL_37:
    v41 = 0;
  }

  return v41 & 1;
}

unint64_t sub_1B750396C()
{
  result = qword_1EB996740;
  if (!qword_1EB996740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996740);
  }

  return result;
}

unint64_t sub_1B75039C0()
{
  result = qword_1EB996750;
  if (!qword_1EB996750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996750);
  }

  return result;
}

unint64_t sub_1B7503A14()
{
  result = qword_1EB996768;
  if (!qword_1EB996768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996768);
  }

  return result;
}

uint64_t sub_1B7503AB8()
{
  result = type metadata accessor for TimeWindow(319);
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

void sub_1B7503B98()
{
  type metadata accessor for Order.FulfillmentWindow(319);
  if (v0 <= 0x3F)
  {
    sub_1B7503C9C(319, &qword_1EDAF93F0, &qword_1EDAFAF20);
    if (v1 <= 0x3F)
    {
      sub_1B7503C9C(319, &qword_1EDAF9408, &qword_1EDAFAF38);
      if (v2 <= 0x3F)
      {
        sub_1B7325908();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7503C9C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B7205540(255, a3);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B7503D08()
{
  result = qword_1EB996770;
  if (!qword_1EB996770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996770);
  }

  return result;
}

unint64_t sub_1B7503D60()
{
  result = qword_1EB996778;
  if (!qword_1EB996778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996778);
  }

  return result;
}

unint64_t sub_1B7503DB8()
{
  result = qword_1EB996780;
  if (!qword_1EB996780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996780);
  }

  return result;
}

uint64_t sub_1B7503E0C()
{
  v0 = sub_1B7801D18();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_1B7503E88(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 notificationIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id ManagedUserNotification.__allocating_init(_:fullyQualifiedOrderIdentifier:context:)(void *a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1B77FFA18();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = a2[1];
  v13 = [objc_allocWithZone(v4) initWithContext_];
  [v13 setContent_];
  if (v12)
  {

    v14 = v8;
    v15 = a1;
    v16 = a3;
    v17 = sub_1B7800838();

    [v13 setOrderIdentifier_];

    a3 = v16;
    a1 = v15;
    v8 = v14;

    sub_1B74204FC(v11, v12);
    v18 = sub_1B7800838();
  }

  else
  {
    [v13 setOrderIdentifier_];
    v18 = 0;
  }

  [v13 setOrderTypeIdentifier_];

  sub_1B77FFA08();
  sub_1B77FF9A8();
  (*(v22 + 8))(v10, v8);
  v19 = sub_1B7800838();

  [v13 setNotificationIdentifier_];

  return v13;
}

id ManagedUserNotification.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedUserNotification.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedUserNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double ManagedUserNotification.fullyQualifiedOrderIdentifier.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 orderIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = [v2 orderTypeIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B7800868();
      v13 = v12;

      *a1 = v11;
      a1[1] = v13;
      a1[2] = v6;
      a1[3] = v8;
      return result;
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

id static ManagedUserNotification.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit23ManagedUserNotification;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedUserNotification.existingObject(with:in:)(uint64_t a1, id a2)
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

id static SaveOrderUIXPCConfiguration.serviceInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id sub_1B75044D8()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id ManagedWalletMessage.__allocating_init(messageType:creationDate:context:)(__int128 *a1, uint64_t a2, void *a3)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 48);
  v10 = [objc_allocWithZone(v3) initWithContext_];
  v11 = *a1;
  v16[1] = a1[1];
  v16[0] = v11;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  ManagedWalletMessage.messageType.setter(v16);
  v13 = sub_1B77FF8B8();
  [v12 setCreationDate_];

  v14 = sub_1B77FF988();
  (*(*(v14 - 8) + 8))(a2, v14);
  return v12;
}

void ManagedWalletMessage.messageType.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      [v2 setMessageTypeValue_];

      swift_bridgeObjectRetain_n();
      v12 = sub_1B7800838();

      [v2 setOrderIdentifier_];

      v13 = sub_1B7800838();

      [v2 setOrderTypeIdentifier_];

      v11 = sub_1B7800838();
      v14 = &selRef_setOrderFulfillmentIdentifier_;
    }

    else
    {
      [v2 setMessageTypeValue_];

      swift_bridgeObjectRetain_n();
      v15 = sub_1B7800838();

      [v2 setOrderIdentifier_];

      v16 = sub_1B7800838();

      [v2 setOrderTypeIdentifier_];

      v11 = sub_1B7800838();
      v14 = &selRef_setOrderReturnIdentifier_;
    }
  }

  else if (*(a1 + 48))
  {
    [v2 setMessageTypeValue_];
    v11 = sub_1B7800838();
    v14 = &selRef_setTermsAndConditionsID_;
  }

  else
  {
    [v2 setMessageTypeValue_];
    v10 = sub_1B7800838();
    [v2 setTitle_];

    if (v6)
    {
      v11 = sub_1B7800838();
    }

    else
    {
      v11 = 0;
    }

    v14 = &selRef_setBody_;
  }

  v17 = v11;
  [v2 *v14];
  sub_1B7504BE8(v3, v4, v5, v6, v7, v8, v9);
}

id ManagedWalletMessage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedWalletMessage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedWalletMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double ManagedWalletMessage.fullyQualifiedOrderIdentifier.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 orderTypeIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = [v2 orderIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B7800868();
      v13 = v12;

      *a1 = v6;
      a1[1] = v8;
      a1[2] = v11;
      a1[3] = v13;
      return result;
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

void sub_1B7504AA8(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v4[3] = v3;
  sub_1B7420484(v4[0], v1);
  ManagedWalletMessage.fullyQualifiedOrderIdentifier.setter(v4);
}

void ManagedWalletMessage.fullyQualifiedOrderIdentifier.setter(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;

    v4 = sub_1B7800838();

    [v1 setOrderIdentifier_];

    sub_1B74204FC(v3, v2);
    v5 = sub_1B7800838();
  }

  else
  {
    [v1 setOrderIdentifier_];
    v5 = 0;
  }

  [v1 setOrderTypeIdentifier_];
}

uint64_t sub_1B7504BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 - 2 < 2)
  {
  }

  else if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_7:
}

void (*ManagedWalletMessage.fullyQualifiedOrderIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  v6 = [v2 orderTypeIdentifier];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = sub_1B7800868();
  v10 = v9;

  v11 = [v2 orderIdentifier];
  if (!v11)
  {

LABEL_8:
    *v5 = 0u;
    *(v5 + 16) = 0u;
    return sub_1B7504D60;
  }

  v12 = v11;
  v13 = sub_1B7800868();
  v15 = v14;

  *v5 = v8;
  *(v5 + 8) = v10;
  *(v5 + 16) = v13;
  *(v5 + 24) = v15;
  return sub_1B7504D60;
}

void sub_1B7504D60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    v4 = *(v2 + 32);
    if (v3)
    {
      v5 = *v2;
      sub_1B7420484(*v2, v3);

      v6 = sub_1B7800838();

      [v4 setOrderIdentifier_];

      sub_1B74204FC(v5, v3);
      v7 = sub_1B7800838();
    }

    else
    {
      [*(v2 + 32) setOrderIdentifier_];
      v7 = 0;
    }

    [*(v2 + 32) setOrderTypeIdentifier_];

    sub_1B74204FC(*v2, *(v2 + 8));
  }

  else
  {
    v8 = *(v2 + 32);
    if (v3)
    {
      v9 = *v2;

      v10 = sub_1B7800838();

      [v8 setOrderIdentifier_];

      sub_1B74204FC(v9, v3);
      v11 = sub_1B7800838();
    }

    else
    {
      [*(v2 + 32) setOrderIdentifier_];
      v11 = 0;
    }

    [*(v2 + 32) setOrderTypeIdentifier_];
  }

  free(v2);
}

void ManagedWalletMessage.order()()
{
  v1 = v0;
  v2 = [v0 orderTypeIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B7800868();
    v6 = v5;

    v7 = [v1 orderIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1B7800868();
      v11 = v10;

      v12 = [v1 managedObjectContext];
      if (v12)
      {
        v13 = v12;
        type metadata accessor for ManagedOrder();
        *&v14 = v4;
        *(&v14 + 1) = v6;
        v15 = v9;
        v16 = v11;
        static ManagedOrder.existingOrder(with:in:)(&v14);

        return;
      }
    }
  }
}

void ManagedWalletMessage.messageType.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 messageTypeValue];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v10 = [v1 orderTypeIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1B7800868();
        v14 = v13;

        v15 = [v2 orderIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = sub_1B7800868();
          v19 = v18;

          v20 = [v2 orderReturnIdentifier];
          if (v20)
          {
            v21 = v20;
            v22 = sub_1B7800868();
            v24 = v23;

            *a1 = v12;
            *(a1 + 8) = v14;
            *(a1 + 16) = v17;
            *(a1 + 24) = v19;
            *(a1 + 32) = v22;
            *(a1 + 40) = v24;
            v25 = 3;
LABEL_17:
            *(a1 + 48) = v25;
            return;
          }
        }
      }
    }

    else if (v4 == 3)
    {
      v41 = [v1 termsAndConditionsID];
      if (v41)
      {
        v42 = v41;
        v43 = sub_1B7800868();
        v45 = v44;

        *a1 = v43;
        *(a1 + 8) = v45;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        v25 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      sub_1B7801A78();

      [v1 messageTypeValue];
      v51 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v51);
    }

LABEL_30:
    sub_1B7801C88();
    __break(1u);
    return;
  }

  if (v4)
  {
    v26 = [v1 orderTypeIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1B7800868();
      v30 = v29;

      v31 = [v2 orderIdentifier];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1B7800868();
        v35 = v34;

        v36 = [v2 orderFulfillmentIdentifier];
        if (v36)
        {
          v37 = v36;
          v38 = sub_1B7800868();
          v40 = v39;

          *a1 = v28;
          *(a1 + 8) = v30;
          *(a1 + 16) = v33;
          *(a1 + 24) = v35;
          *(a1 + 32) = v38;
          *(a1 + 40) = v40;
          v25 = 2;
          goto LABEL_17;
        }
      }
    }

    goto LABEL_30;
  }

  v5 = [v1 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7800868();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v46 = [v2 body];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1B7800868();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v48;
  *(a1 + 24) = v50;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void sub_1B7505474(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  v8 = v6;
  sub_1B75066FC(v7[0], v1, v2, v3, v4, v5, v6);
  ManagedWalletMessage.messageType.setter(v7);
}

void (*ManagedWalletMessage.messageType.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  ManagedWalletMessage.messageType.getter(v3);
  return sub_1B7505548;
}

void sub_1B7505548(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = *(v3 + 48);
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v9;
  v12 = v10;
  if (a2)
  {
    sub_1B75066FC(v4, v5, v6, v7, v8, v9, v10);
    ManagedWalletMessage.messageType.setter(v11);
    sub_1B7504BE8(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], *(v3 + 48));
  }

  else
  {
    ManagedWalletMessage.messageType.setter(v11);
  }

  free(v3);
}

id static ManagedWalletMessage.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit20ManagedWalletMessage;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedWalletMessage.existingObject(with:in:)(uint64_t a1, id a2)
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

uint64_t static ManagedWalletMessage.messagesWithOrder(_:in:)(uint64_t *a1)
{
  v1 = a1[1];
  v11 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v12.receiver = swift_getObjCClassFromMetadata();
  v12.super_class = &OBJC_METACLASS____TtC10FinanceKit20ManagedWalletMessage;
  v4 = objc_msgSendSuper2(&v12, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7808C50;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = v11;
  *(v5 + 80) = v1;

  v8 = sub_1B78010E8();
  [v4 setPredicate_];

  v9 = sub_1B7801498();
  return v9;
}

uint64_t static ManagedWalletMessage.predicateForMessagesWithOrder(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7808C50;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = v2;
  *(v5 + 80) = v1;

  return sub_1B78010E8();
}

unint64_t static ManagedWalletMessage.existingMessage(withTermsAndConditionsID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit20ManagedWalletMessage;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B729D790();
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

uint64_t static ManagedWalletMessage.predicate(withTermsAndConditionsID:)(uint64_t a1, uint64_t a2)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

BOOL static ManagedWalletMessage.cleanupInvalidWalletMessages(context:userDefaults:deviceInfo:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (((*(a4 + 16))(a3, a4) & 1) == 0)
  {
    return 0;
  }

  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  if ((*(v7 + 24))(0xD00000000000002CLL, 0x80000001B7883690, v6, v7))
  {
    return 0;
  }

  v9 = [swift_getObjCClassFromMetadata() fetchRequest];
  v10 = _s10FinanceKit20ManagedWalletMessageC019predicateForInvalidE4TypeSo11NSPredicateCyFZ_0();
  [v9 setPredicate_];

  v11 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  *&v32 = 0;
  v12 = [a1 executeRequest:v11 error:&v32];
  v13 = v32;
  if (v12)
  {
    v14 = v12;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    v16 = v13;
    if (v15)
    {
      if ([v15 result])
      {
        sub_1B7801848();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
      }

      v32 = v30;
      v33 = v31;
      if (*(&v31 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A40);
        if (swift_dynamicCast())
        {
          if (v30 >> 62)
          {
            v27 = sub_1B7801958();
          }

          else
          {
            v27 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          goto LABEL_23;
        }

LABEL_22:
        v27 = 0;
LABEL_23:
        v28 = a2[3];
        v29 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v28);
        *(&v33 + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v32) = 1;
        (*(v29 + 8))(&v32, 0xD00000000000002CLL, 0x80000001B7883690, v28, v29);

        sub_1B7205418(&v32, &qword_1EB98FCB0);
        return v27 > 0;
      }
    }

    else
    {

      v32 = 0u;
      v33 = 0u;
    }

    sub_1B7205418(&v32, &qword_1EB98FCB0);
    goto LABEL_22;
  }

  v17 = v32;
  v18 = sub_1B77FF318();

  swift_willThrow();
  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v19 = sub_1B78000B8();
  __swift_project_value_buffer(v19, qword_1EDAFAF58);
  v20 = v18;
  v21 = sub_1B7800098();
  v22 = sub_1B78011D8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v18;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1B7198000, v21, v22, "Failed to cleanup invalid messages: %@", v23, 0xCu);
    sub_1B7205418(v24, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v24, -1, -1);
    MEMORY[0x1B8CA7A40](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

BOOL _s10FinanceKit20ManagedWalletMessageC0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v44[0] = *a1;
  v44[1] = v2;
  v42 = v7;
  v43 = v4;
  v44[2] = v4;
  v44[3] = v5;
  v44[4] = v7;
  v44[5] = v6;
  v41 = v6;
  v45 = v8;
  v46 = v10;
  v47 = v9;
  v48 = v12;
  v49 = v11;
  v50 = v14;
  v51 = v13;
  v52 = v15;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_38;
      }

      if ((v3 != v10 || v2 != v9) && (sub_1B78020F8() & 1) == 0 || (v43 != v12 || v5 != v11) && (sub_1B78020F8() & 1) == 0)
      {
        sub_1B75066FC(v10, v9, v12, v11, v14, v13, 2u);
        v24 = v3;
        v25 = v2;
        v27 = v42;
        v26 = v43;
        v28 = v5;
        v29 = v41;
        v30 = 2;
        goto LABEL_39;
      }

      if (v42 == v14 && v41 == v13)
      {
        sub_1B75066FC(v10, v9, v12, v11, v42, v41, 2u);
        v16 = v3;
        v17 = v2;
        v18 = v43;
        v19 = v5;
        v20 = v42;
        v21 = v41;
        v22 = 2;
        goto LABEL_37;
      }

      v39 = sub_1B78020F8();
      sub_1B75066FC(v10, v9, v12, v11, v14, v13, 2u);
      v32 = v3;
      v33 = v2;
      v35 = v42;
      v34 = v43;
      v36 = v5;
      v37 = v41;
      v38 = 2;
    }

    else
    {
      if (v15 != 3)
      {
        goto LABEL_38;
      }

      if ((v3 != v10 || v2 != v9) && (sub_1B78020F8() & 1) == 0 || (v43 != v12 || v5 != v11) && (sub_1B78020F8() & 1) == 0)
      {
        sub_1B75066FC(v10, v9, v12, v11, v14, v13, 3u);
        v24 = v3;
        v25 = v2;
        v27 = v42;
        v26 = v43;
        v28 = v5;
        v29 = v41;
        v30 = 3;
        goto LABEL_39;
      }

      if (v42 == v14 && v41 == v13)
      {
        sub_1B75066FC(v10, v9, v12, v11, v42, v41, 3u);
        v16 = v3;
        v17 = v2;
        v18 = v43;
        v19 = v5;
        v20 = v42;
        v21 = v41;
        v22 = 3;
        goto LABEL_37;
      }

      v39 = sub_1B78020F8();
      sub_1B75066FC(v10, v9, v12, v11, v14, v13, 3u);
      v32 = v3;
      v33 = v2;
      v35 = v42;
      v34 = v43;
      v36 = v5;
      v37 = v41;
      v38 = 3;
    }

    sub_1B75066FC(v32, v33, v34, v36, v35, v37, v38);
    sub_1B7205418(v44, &qword_1EB996788);
    return v39 & 1;
  }

  if (!v8)
  {
    if (!v15)
    {
      if (v3 == v10 && v2 == v9 || (sub_1B78020F8() & 1) != 0)
      {
        if (!v5)
        {
          sub_1B75066FC(v10, v9, v12, v11, v14, v13, 0);
          sub_1B75066FC(v3, v2, v43, 0, v42, v41, 0);

          sub_1B7205418(v44, &qword_1EB996788);
          if (!v11)
          {
            return 1;
          }

          return 0;
        }

        if (v11)
        {
          if (v43 == v12 && v5 == v11)
          {
            sub_1B75066FC(v10, v9, v43, v5, v14, v13, 0);
            v16 = v3;
            v17 = v2;
            v18 = v43;
            v19 = v5;
            v20 = v42;
            v21 = v41;
            v22 = 0;
LABEL_37:
            sub_1B75066FC(v16, v17, v18, v19, v20, v21, v22);
            sub_1B7205418(v44, &qword_1EB996788);
            return 1;
          }

          v40 = sub_1B78020F8();
          sub_1B75066FC(v10, v9, v12, v11, v14, v13, 0);
          sub_1B75066FC(v3, v2, v43, v5, v42, v41, 0);
          sub_1B7205418(v44, &qword_1EB996788);
          return (v40 & 1) != 0;
        }

        sub_1B75066FC(v10, v9, v12, 0, v14, v13, 0);
        v24 = v3;
        v25 = v2;
        v27 = v42;
        v26 = v43;
        v28 = v5;
        v29 = v41;
        v30 = 0;
      }

      else
      {
        sub_1B75066FC(v10, v9, v12, v11, v14, v13, 0);
        v24 = v3;
        v25 = v2;
        v27 = v42;
        v26 = v43;
        v28 = v5;
        v29 = v41;
        v30 = 0;
      }

LABEL_39:
      sub_1B75066FC(v24, v25, v26, v28, v27, v29, v30);
      sub_1B7205418(v44, &qword_1EB996788);
      return 0;
    }

LABEL_38:
    sub_1B75066FC(v10, v9, v12, v11, v14, v13, v15);
    v24 = v3;
    v25 = v2;
    v27 = v42;
    v26 = v43;
    v28 = v5;
    v29 = v41;
    v30 = v8;
    goto LABEL_39;
  }

  if (v15 != 1)
  {
    goto LABEL_38;
  }

  if (v3 == v10 && v2 == v9)
  {
    sub_1B75066FC(v3, v2, v12, v11, v14, v13, 1u);
    v16 = v3;
    v17 = v2;
    v20 = v42;
    v18 = v43;
    v19 = v5;
    v21 = v41;
    v22 = 1;
    goto LABEL_37;
  }

  v31 = sub_1B78020F8();
  sub_1B75066FC(v10, v9, v12, v11, v14, v13, 1u);
  sub_1B75066FC(v3, v2, v43, v5, v42, v41, 1u);
  sub_1B7205418(v44, &qword_1EB996788);
  return v31 & 1;
}

uint64_t sub_1B75066FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 - 2 < 2)
  {
  }

  else if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_7:
}

id _s10FinanceKit20ManagedWalletMessageC019predicateForInvalidE4TypeSo11NSPredicateCyFZ_0()
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7290];
  v2 = MEMORY[0x1E69E72E8];
  *(v0 + 16) = xmmword_1B7807CD0;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 32) = 1;
  v3 = sub_1B78010E8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  *(v4 + 32) = 2;
  v5 = sub_1B78010E8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7807CD0;
  *(v6 + 56) = v1;
  *(v6 + 64) = v2;
  *(v6 + 32) = 3;
  v7 = sub_1B78010E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B781E650;
  *(v8 + 32) = v3;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
  v9 = v3;
  v10 = v5;
  v11 = v7;
  v12 = sub_1B7800C18();

  v13 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v13;
}

uint64_t sub_1B75069AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B75069F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t AccountBalanceChanges.init(balance:rawUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v150 = &v135 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996790);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v144 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v135 - v15;
  v16 = type metadata accessor for BalanceCalculation(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v142 = &v135 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v152 = (&v135 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v141 = &v135 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v137 = &v135 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v135 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD68);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v146 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v143 = &v135 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v149 = (&v135 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v140 = &v135 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v135 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v135 - v42;
  v155 = *(type metadata accessor for InternalAccountBalance(0) + 20);
  sub_1B750B7B8(a1 + v155, v29, type metadata accessor for BalanceCalculation);
  v151 = v16;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v147 = v19;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
      (*(*(v45 - 8) + 56))(v43, 1, 1, v45);
      v46 = type metadata accessor for BalanceCalculation;
      v47 = v29;
    }

    else
    {
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      sub_1B74279C8(v29, v43);
      v45 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
      (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
      v46 = type metadata accessor for BalanceCalculation.CalculationDetails;
      v47 = &v29[v48];
    }

    sub_1B750B710(v47, v46);
  }

  else
  {
    sub_1B74279C8(v29, v43);
    v45 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
    (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
  }

  type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v156 = *(v45 - 8);
  v49 = *(v156 + 48);
  v153 = v156 + 48;
  v154 = v49;
  v50 = v49(v43, 1, v45);
  v148 = a3;
  if (v50 == 1)
  {
    sub_1B7205418(v43, &qword_1EB98FD68);
    v51 = RawBankConnectData.Account.availableBalance.getter();
    if ((v53 & 0x100000000) != 0)
    {
      v59 = 0;
      v58 = 0;
      v62 = 0;
      v54 = 0;
      v55 = 0;
      v63 = 0;
      v64 = 1;
      goto LABEL_18;
    }

    v54 = v51;
    v55 = v52;
    v56 = v53;
    v136 = a1;
    v57 = 0;
    LODWORD(a1) = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_16;
  }

  v136 = a1;
  v59 = *v43;
  v58 = *(v43 + 1);
  a1 = *(v43 + 4);
  sub_1B750B710(v43, type metadata accessor for BalanceCalculation.CalculationDetails);
  v54 = RawBankConnectData.Account.availableBalance.getter();
  v55 = v60;
  v56 = v61;
  if ((v61 & 0x100000000) != 0)
  {
    v57 = 1;
LABEL_16:
    v64 = 0;
    v162 = v50 == 1;
    v161 = v57;
    v62 = a1 | ((v50 == 1) << 32);
    v63 = v56 | (v161 << 32);
    goto LABEL_17;
  }

  if ((MEMORY[0x1B8CA5970](v59, v58, a1, v54, v60, v61) & 1) == 0)
  {
    v57 = 0;
    goto LABEL_16;
  }

  v59 = 0;
  v58 = 0;
  v62 = 0;
  v54 = 0;
  v55 = 0;
  v63 = 0;
  v64 = 1;
LABEL_17:
  a1 = v136;
LABEL_18:
  v65 = v148;
  *v148 = v59;
  v65[1] = v58;
  v66 = v65;
  v65[2] = v62;
  v65[3] = v54;
  v65[4] = v55;
  *(v65 + 10) = v63;
  *(v65 + 44) = BYTE4(v63);
  *(v65 + 45) = v64;
  v67 = v137;
  sub_1B750B7B8(a1 + v155, v137, type metadata accessor for BalanceCalculation);
  v68 = swift_getEnumCaseMultiPayload();
  if (v68)
  {
    v69 = v139;
    if (v68 == 1)
    {
      v70 = *(v156 + 56);
      v70(v41, 1, 1, v45);
      v71 = type metadata accessor for BalanceCalculation;
      v72 = v67;
    }

    else
    {
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      sub_1B74279C8(v67, v41);
      v70 = *(v156 + 56);
      v70(v41, 0, 1, v45);
      v71 = type metadata accessor for BalanceCalculation.CalculationDetails;
      v72 = v67 + v73;
    }

    sub_1B750B710(v72, v71);
  }

  else
  {
    sub_1B74279C8(v67, v41);
    v70 = *(v156 + 56);
    v70(v41, 0, 1, v45);
    v69 = v139;
  }

  if (v154(v41, 1, v45) == 1)
  {
    sub_1B7205418(v41, &qword_1EB98FD68);
    v74 = sub_1B77FF988();
    (*(*(v74 - 8) + 56))(v69, 1, 1, v74);
  }

  else
  {
    v75 = *(v45 + 20);
    v76 = sub_1B77FF988();
    v77 = *(v76 - 8);
    (*(v77 + 16))(v69, &v41[v75], v76);
    sub_1B750B710(v41, type metadata accessor for BalanceCalculation.CalculationDetails);
    (*(v77 + 56))(v69, 0, 1, v76);
  }

  v78 = v152;
  v80 = v149;
  v79 = v150;
  RawBankConnectData.Account.availableBalanceAsOf.getter(v150);
  v81 = v138;
  sub_1B7507E80(v69, v79, v138);
  v152 = type metadata accessor for AccountBalanceChanges();
  sub_1B722376C(v81, v66 + v152[5], &qword_1EB996790);
  v82 = v141;
  sub_1B750B7B8(a1 + v155, v141, type metadata accessor for BalanceCalculation);
  v83 = swift_getEnumCaseMultiPayload();
  if (v83)
  {
    if (v83 == 1)
    {
      v84 = v140;
      v70(v140, 1, 1, v45);
      v85 = type metadata accessor for BalanceCalculation;
      v86 = v82;
    }

    else
    {
      v87 = a1;
      v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      v84 = v140;
      sub_1B74279C8(v82, v140);
      v70(v84, 0, 1, v45);
      v85 = type metadata accessor for BalanceCalculation.CalculationDetails;
      v86 = v82 + v88;
      a1 = v87;
    }

    sub_1B750B710(v86, v85);
  }

  else
  {
    v84 = v140;
    sub_1B74279C8(v82, v140);
    v70(v84, 0, 1, v45);
  }

  if (v154(v84, 1, v45) == 1)
  {
    sub_1B7205418(v84, &qword_1EB98FD68);
    RawBankConnectData.Account.availableBalanceCreditDebitIndicator.getter(&v160);
    v89 = v160;
    if (v160 != 2)
    {
      LOWORD(v90) = 2;
LABEL_38:
      v92 = v90 | (v89 << 8);
      goto LABEL_40;
    }
  }

  else
  {
    v91 = v84;
    v90 = *(v84 + *(v45 + 24));
    sub_1B750B710(v91, type metadata accessor for BalanceCalculation.CalculationDetails);
    RawBankConnectData.Account.availableBalanceCreditDebitIndicator.getter(&v160);
    v89 = v160;
    if (v160 == 2 || ((v90 ^ v160) & 1) != 0)
    {
      goto LABEL_38;
    }
  }

  v92 = 3;
LABEL_40:
  *(v66 + v152[6]) = v92;
  sub_1B750B7B8(a1 + v155, v78, type metadata accessor for BalanceCalculation);
  v93 = swift_getEnumCaseMultiPayload();
  if (v93)
  {
    if (v93 == 1)
    {
      sub_1B74279C8(v78, v80);
      v70(v80, 0, 1, v45);
      goto LABEL_46;
    }

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8);
    sub_1B74279C8(v78 + *(v95 + 48), v80);
    v70(v80, 0, 1, v45);
    v94 = type metadata accessor for BalanceCalculation.CalculationDetails;
  }

  else
  {
    v70(v80, 1, 1, v45);
    v94 = type metadata accessor for BalanceCalculation;
  }

  sub_1B750B710(v78, v94);
LABEL_46:
  v149 = v70;
  v96 = a1;
  v97 = v154(v80, 1, v45);
  if (v97 == 1)
  {
    sub_1B7205418(v80, &qword_1EB98FD68);
    v98 = RawBankConnectData.Account.bookedBalance.getter();
    if ((v100 & 0x100000000) != 0)
    {
      v107 = 0;
      v106 = 0;
      v110 = 0;
      v101 = 0;
      v102 = 0;
      v111 = 0;
      v112 = 1;
      goto LABEL_57;
    }

    v101 = v98;
    v102 = v99;
    v103 = v100;
    v104 = 0;
    LODWORD(v105) = 0;
    v106 = 0;
    v107 = 0;
    goto LABEL_55;
  }

  v107 = *v80;
  v106 = *(v80 + 8);
  v105 = *(v80 + 16);
  sub_1B750B710(v80, type metadata accessor for BalanceCalculation.CalculationDetails);
  v101 = RawBankConnectData.Account.bookedBalance.getter();
  v102 = v108;
  v103 = v109;
  if ((v109 & 0x100000000) != 0)
  {
    v104 = 1;
LABEL_55:
    v112 = 0;
    v159 = v97 == 1;
    v158 = v104;
    v110 = v105 | ((v97 == 1) << 32);
    v111 = v103 | (v158 << 32);
    goto LABEL_56;
  }

  if ((MEMORY[0x1B8CA5970](v107, v106, v105, v101, v108, v109) & 1) == 0)
  {
    v104 = 0;
    goto LABEL_55;
  }

  v107 = 0;
  v106 = 0;
  v110 = 0;
  v101 = 0;
  v102 = 0;
  v111 = 0;
  v112 = 1;
LABEL_56:
  v66 = v148;
LABEL_57:
  v113 = v66 + v152[7];
  *v113 = v107;
  *(v113 + 1) = v106;
  *(v113 + 2) = v110;
  *(v113 + 3) = v101;
  *(v113 + 4) = v102;
  v113[44] = BYTE4(v111);
  *(v113 + 10) = v111;
  v113[45] = v112;
  v114 = v96;
  v115 = v142;
  sub_1B750B7B8(v96 + v155, v142, type metadata accessor for BalanceCalculation);
  v116 = swift_getEnumCaseMultiPayload();
  if (v116)
  {
    v117 = v145;
    v118 = v143;
    if (v116 == 1)
    {
      sub_1B74279C8(v115, v143);
      v149(v118, 0, 1, v45);
    }

    else
    {
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8);
      sub_1B74279C8(v115 + *(v119 + 48), v118);
      v149(v118, 0, 1, v45);
      sub_1B750B710(v115, type metadata accessor for BalanceCalculation.CalculationDetails);
    }
  }

  else
  {
    v118 = v143;
    v149(v143, 1, 1, v45);
    sub_1B750B710(v115, type metadata accessor for BalanceCalculation);
    v117 = v145;
  }

  if (v154(v118, 1, v45) == 1)
  {
    sub_1B7205418(v118, &qword_1EB98FD68);
    v120 = sub_1B77FF988();
    (*(*(v120 - 8) + 56))(v117, 1, 1, v120);
  }

  else
  {
    v121 = *(v45 + 20);
    v122 = sub_1B77FF988();
    v123 = *(v122 - 8);
    (*(v123 + 16))(v117, v118 + v121, v122);
    sub_1B750B710(v118, type metadata accessor for BalanceCalculation.CalculationDetails);
    (*(v123 + 56))(v117, 0, 1, v122);
  }

  v125 = v146;
  v124 = v147;
  v126 = v150;
  RawBankConnectData.Account.bookedBalanceAsOf.getter(v150);
  v127 = v144;
  sub_1B7507E80(v117, v126, v144);
  sub_1B722376C(v127, v66 + v152[8], &qword_1EB996790);
  sub_1B750B7B8(v114 + v155, v124, type metadata accessor for BalanceCalculation);
  v128 = swift_getEnumCaseMultiPayload();
  if (v128)
  {
    v129 = v149;
    if (v128 == 1)
    {
      sub_1B74279C8(v124, v125);
      v129(v125, 0, 1, v45);
      goto LABEL_71;
    }

    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8);
    sub_1B74279C8(v124 + *(v131 + 48), v125);
    v129(v125, 0, 1, v45);
    v130 = type metadata accessor for BalanceCalculation.CalculationDetails;
  }

  else
  {
    v149(v125, 1, 1, v45);
    v130 = type metadata accessor for BalanceCalculation;
  }

  sub_1B750B710(v124, v130);
LABEL_71:
  if (v154(v125, 1, v45) == 1)
  {
    sub_1B7205418(v125, &qword_1EB98FD68);
    v132 = 2;
  }

  else
  {
    v132 = *(v125 + *(v45 + 24));
    sub_1B750B710(v125, type metadata accessor for BalanceCalculation.CalculationDetails);
  }

  RawBankConnectData.Account.bookedBalanceCreditDebitIndicator.getter(&v157);
  sub_1B750B710(a2, type metadata accessor for RawBankConnectData.Account);
  result = sub_1B750B710(v114, type metadata accessor for InternalAccountBalance);
  if (v132 == 2)
  {
    if (v157 != 2)
    {
LABEL_80:
      v134 = v132 | (v157 << 8);
      goto LABEL_81;
    }
  }

  else if (v157 == 2 || ((v157 ^ v132) & 1) != 0)
  {
    goto LABEL_80;
  }

  v134 = 3;
LABEL_81:
  *(v66 + v152[9]) = v134;
  return result;
}

__n128 AccountBalanceChanges.availableAmount.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 44);
  v5 = *(v1 + 45);
  result = *v1;
  v7 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v7;
  *(a1 + 32) = v2;
  *(a1 + 44) = v4;
  *(a1 + 40) = v3;
  *(a1 + 45) = v5;
  return result;
}

uint64_t AccountBalanceChanges.availableAmountCreditDebitIndicator.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AccountBalanceChanges();
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 AccountBalanceChanges.bookedAmount.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccountBalanceChanges() + 28);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 44);
  v7 = *(v3 + 45);
  result = *v3;
  v9 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v9;
  *(a1 + 32) = v4;
  *(a1 + 44) = v6;
  *(a1 + 40) = v5;
  *(a1 + 45) = v7;
  return result;
}

uint64_t AccountBalanceChanges.bookedAmountCreditDebitIndicator.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AccountBalanceChanges();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_1B7507E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v16 = *(v13 + 56);
  sub_1B7205588(a1, &v26 - v14, &qword_1EB98EBD0);
  sub_1B7205588(a2, &v15[v16], &qword_1EB98EBD0);
  v17 = *(v6 + 48);
  if (v17(v15, 1, v5) != 1)
  {
    sub_1B7205588(v15, v11, &qword_1EB98EBD0);
    if (v17(&v15[v16], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v15[v16], v5);
      sub_1B750B770(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v23 = sub_1B7800828();
      v24 = *(v6 + 8);
      v24(v8, v5);
      v24(v11, v5);
      sub_1B7205418(v15, &qword_1EB98EBD0);
      if (v23)
      {
        v15 = a1;
        goto LABEL_10;
      }

LABEL_7:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9967C8);
      v19 = *(v18 + 48);
      v20 = a1;
      v21 = v27;
      sub_1B722376C(v20, v27, &qword_1EB98EBD0);
      sub_1B722376C(a2, v21 + v19, &qword_1EB98EBD0);
      return (*(*(v18 - 8) + 56))(v21, 0, 1, v18);
    }

    (*(v6 + 8))(v11, v5);
LABEL_6:
    sub_1B7205418(v15, &qword_1EB98FCE0);
    goto LABEL_7;
  }

  if (v17(&v15[v16], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B7205418(a2, &qword_1EB98EBD0);
  a2 = a1;
LABEL_10:
  sub_1B7205418(a2, &qword_1EB98EBD0);
  sub_1B7205418(v15, &qword_1EB98EBD0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9967C8);
  return (*(*(v25 - 8) + 56))(v27, 1, 1, v25);
}

uint64_t sub_1B75082A4@<X0>(unsigned __int8 a1@<W0>, int a2@<W1>, _WORD *a3@<X8>)
{
  if (a1 != 3)
  {
    if (a2 == 3)
    {
      goto LABEL_5;
    }

    v4 = 0xE900000000000064;
    v5 = 1852141679;
    if (a1)
    {
      v6 = 0x6574656C706D6F63;
      if (a1 != 1)
      {
        v6 = 0x656C6C65636E6163;
      }

      v7 = 0xE900000000000064;
      v8 = a2;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = 0xE400000000000000;
      v6 = 1852141679;
      v8 = a2;
      if (a2)
      {
LABEL_11:
        if (v8 == 1)
        {
          v5 = 0x6574656C706D6F63;
        }

        else
        {
          v5 = 0x656C6C65636E6163;
        }

LABEL_16:
        v9 = a3;
        if (v6 == v5 && v7 == v4)
        {

          result = 4;
          a3 = v9;
          goto LABEL_6;
        }

        v10 = a1;
        v11 = a2;
        v12 = sub_1B78020F8();

        a2 = v11;
        a1 = v10;
        a3 = v9;
        if (v12)
        {
          goto LABEL_3;
        }

LABEL_5:
        result = a1 | (a2 << 8);
        goto LABEL_6;
      }
    }

    v4 = 0xE400000000000000;
    goto LABEL_16;
  }

  if (a2 != 3)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = 4;
LABEL_6:
  *a3 = result;
  return result;
}

uint64_t AccountBalanceChanges.init(balance:appleAccountUpdate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v157 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v155 = &v148 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v151 = &v148 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v148 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996790);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v154 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v150 = &v148 - v17;
  v18 = type metadata accessor for BalanceCalculation(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v161 = &v148 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v160 = (&v148 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v164 = &v148 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v162 = &v148 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v148 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD68);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v156 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v153 = &v148 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v152 = &v148 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v163 = (&v148 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v148 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v148 - v44;
  v46 = *(type metadata accessor for InternalAccountBalance(0) + 20);
  v168 = a1;
  sub_1B750B7B8(a1 + v46, v31, type metadata accessor for BalanceCalculation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v158 = v21;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v48 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
      (*(*(v48 - 8) + 56))(v45, 1, 1, v48);
      v49 = type metadata accessor for BalanceCalculation;
      v50 = v31;
    }

    else
    {
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      sub_1B74279C8(v31, v45);
      v48 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
      (*(*(v48 - 8) + 56))(v45, 0, 1, v48);
      v49 = type metadata accessor for BalanceCalculation.CalculationDetails;
      v50 = &v31[v51];
    }

    sub_1B750B710(v50, v49);
  }

  else
  {
    sub_1B74279C8(v31, v45);
    v48 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
    (*(*(v48 - 8) + 56))(v45, 0, 1, v48);
  }

  v167 = v46;
  v169 = v18;
  type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v172 = *(v48 - 8);
  v52 = *(v172 + 48);
  v170 = v172 + 48;
  v171 = v52;
  v53 = v52(v45, 1, v48);
  if (v53 == 1)
  {
    sub_1B7205418(v45, &qword_1EB98FD68);
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v54 = *v45;
    v55 = *(v45 + 1);
    v56 = *(v45 + 4);
    sub_1B750B710(v45, type metadata accessor for BalanceCalculation.CalculationDetails);
  }

  v57 = [a2 totalBalance];
  v58 = v57;
  v159 = a3;
  v166 = a2;
  if (!v57)
  {
    if (v53 == 1)
    {
      v54 = 0;
      v55 = 0;
      v62 = 0;
      v60 = 0;
      v59 = 0;
      v63 = 0;
      v64 = 1;
      goto LABEL_19;
    }

    LODWORD(v61) = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_17;
  }

  [v57 decimalValue];
  v60 = v173;
  v59 = v174;
  v61 = v175;

  if (v53 == 1 || (MEMORY[0x1B8CA5970](v54, v55, v56, v60, v59, v61) & 1) == 0)
  {
LABEL_17:
    v64 = 0;
    LOBYTE(v173) = v53 == 1;
    LOBYTE(v176) = v58 == 0;
    v62 = v56 | ((v53 == 1) << 32);
    v63 = v61 | ((v58 == 0) << 32);
    goto LABEL_18;
  }

  v54 = 0;
  v55 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v63 = 0;
  v64 = 1;
LABEL_18:
  a3 = v159;
LABEL_19:
  *a3 = v54;
  *(a3 + 8) = v55;
  *(a3 + 16) = v62;
  *(a3 + 24) = v60;
  *(a3 + 32) = v59;
  *(a3 + 40) = v63;
  *(a3 + 44) = BYTE4(v63);
  *(a3 + 45) = v64;
  v66 = v167;
  v65 = v168;
  v67 = v162;
  sub_1B750B7B8(v168 + v167, v162, type metadata accessor for BalanceCalculation);
  v68 = swift_getEnumCaseMultiPayload();
  if (v68)
  {
    v69 = v166;
    if (v68 == 1)
    {
      v70 = *(v172 + 56);
      v70(v43, 1, 1, v48);
      v71 = type metadata accessor for BalanceCalculation;
      v72 = v67;
    }

    else
    {
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      sub_1B74279C8(v67, v43);
      v70 = *(v172 + 56);
      v70(v43, 0, 1, v48);
      v71 = type metadata accessor for BalanceCalculation.CalculationDetails;
      v72 = v67 + v73;
    }

    sub_1B750B710(v72, v71);
  }

  else
  {
    sub_1B74279C8(v67, v43);
    v70 = *(v172 + 56);
    v70(v43, 0, 1, v48);
    v69 = v166;
  }

  if (v171(v43, 1, v48) == 1)
  {
    sub_1B7205418(v43, &qword_1EB98FD68);
    v74 = sub_1B77FF988();
    (*(*(v74 - 8) + 56))(v165, 1, 1, v74);
  }

  else
  {
    v75 = v65;
    v76 = *(v48 + 20);
    v77 = sub_1B77FF988();
    v78 = v69;
    v79 = v70;
    v80 = *(v77 - 8);
    v81 = &v43[v76];
    v65 = v75;
    v82 = v165;
    (*(v80 + 16))(v165, v81, v77);
    sub_1B750B710(v43, type metadata accessor for BalanceCalculation.CalculationDetails);
    (*(v80 + 56))(v82, 0, 1, v77);
    v70 = v79;
    v69 = v78;
  }

  v84 = v163;
  v83 = v164;
  v85 = [v69 lastUpdated];
  v86 = v151;
  if (v85)
  {
    v87 = v85;
    sub_1B77FF928();

    v88 = 0;
  }

  else
  {
    v88 = 1;
  }

  v89 = sub_1B77FF988();
  v149 = *(v89 - 8);
  v163 = *(v149 + 56);
  v164 = v89;
  v162 = v149 + 56;
  v163(v86, v88, 1);
  v90 = v150;
  sub_1B7507E80(v165, v86, v150);
  v91 = type metadata accessor for AccountBalanceChanges();
  sub_1B722376C(v90, a3 + *(v91 + 20), &qword_1EB996790);
  sub_1B750B7B8(v65 + v66, v83, type metadata accessor for BalanceCalculation);
  v92 = swift_getEnumCaseMultiPayload();
  if (v92)
  {
    if (v92 == 1)
    {
      v70(v84, 1, 1, v48);
      v93 = type metadata accessor for BalanceCalculation;
      v94 = v83;
    }

    else
    {
      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      sub_1B74279C8(v83, v84);
      v70(v84, 0, 1, v48);
      v93 = type metadata accessor for BalanceCalculation.CalculationDetails;
      v94 = v83 + v95;
    }

    sub_1B750B710(v94, v93);
  }

  else
  {
    sub_1B74279C8(v83, v84);
    v70(v84, 0, 1, v48);
  }

  if (v171(v84, 1, v48) == 1)
  {
    sub_1B7205418(v84, &qword_1EB98FD68);
    v96 = 2;
  }

  else
  {
    v96 = *(v84 + *(v48 + 24));
    sub_1B750B710(v84, type metadata accessor for BalanceCalculation.CalculationDetails);
  }

  v97 = [v69 creditDebitIndicator];
  if (v97)
  {
    if (v97 != 1)
    {
      goto LABEL_93;
    }

    v99 = v96 ^ 1;
    v98 = 256;
  }

  else
  {
    v98 = 0;
    v99 = (v96 == 2) | v96;
  }

  v100 = v98 | v96;
  if ((v99 & 1) == 0)
  {
    v100 = 3;
  }

  v165 = v91;
  *(a3 + *(v91 + 24)) = v100;
  v101 = v160;
  sub_1B750B7B8(v65 + v66, v160, type metadata accessor for BalanceCalculation);
  v102 = swift_getEnumCaseMultiPayload();
  if (v102)
  {
    v103 = v152;
    if (v102 == 1)
    {
      sub_1B74279C8(v101, v152);
      v70(v103, 0, 1, v48);
      goto LABEL_52;
    }

    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8);
    sub_1B74279C8(v101 + *(v105 + 48), v103);
    v70(v103, 0, 1, v48);
    v104 = type metadata accessor for BalanceCalculation.CalculationDetails;
  }

  else
  {
    v103 = v152;
    v70(v152, 1, 1, v48);
    v104 = type metadata accessor for BalanceCalculation;
  }

  sub_1B750B710(v101, v104);
LABEL_52:
  v160 = v70;
  v106 = v65;
  v107 = v171(v103, 1, v48);
  if (v107 == 1)
  {
    sub_1B7205418(v103, &qword_1EB98FD68);
    v108 = 0;
    v109 = 0;
    v110 = 0;
  }

  else
  {
    v108 = *v103;
    v109 = *(v103 + 8);
    v110 = *(v103 + 16);
    sub_1B750B710(v103, type metadata accessor for BalanceCalculation.CalculationDetails);
  }

  v111 = [v69 currentBalance];
  v112 = v111;
  if (!v111)
  {
    if (v107 == 1)
    {
      v108 = 0;
      v109 = 0;
      v116 = 0;
      v113 = 0;
      v114 = 0;
      v117 = 0;
      v118 = 1;
      goto LABEL_64;
    }

    LODWORD(v115) = 0;
    v114 = 0;
    v113 = 0;
    goto LABEL_62;
  }

  [v111 decimalValue];
  v113 = v173;
  v114 = v174;
  v115 = v175;

  if (v107 == 1 || (MEMORY[0x1B8CA5970](v108, v109, v110, v113, v114, v115) & 1) == 0)
  {
LABEL_62:
    v118 = 0;
    LOBYTE(v173) = v107 == 1;
    LOBYTE(v176) = v112 == 0;
    v116 = v110 | ((v107 == 1) << 32);
    v117 = v115 | ((v112 == 0) << 32);
    goto LABEL_63;
  }

  v108 = 0;
  v109 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v117 = 0;
  v118 = 1;
LABEL_63:
  v106 = v168;
LABEL_64:
  v119 = v159;
  v120 = v159 + *(v165 + 28);
  *v120 = v108;
  *(v120 + 8) = v109;
  *(v120 + 16) = v116;
  *(v120 + 24) = v113;
  *(v120 + 32) = v114;
  *(v120 + 44) = BYTE4(v117);
  *(v120 + 40) = v117;
  *(v120 + 45) = v118;
  sub_1B750B7B8(v106 + v167, v161, type metadata accessor for BalanceCalculation);
  v121 = swift_getEnumCaseMultiPayload();
  v122 = v153;
  if (v121)
  {
    v123 = v166;
    v125 = v157;
    v124 = v158;
    v126 = v155;
    v127 = &off_1E7CAF000;
    if (v121 == 1)
    {
      sub_1B74279C8(v161, v153);
      v160(v122, 0, 1, v48);
    }

    else
    {
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8);
      v129 = v161;
      sub_1B74279C8(v161 + *(v128 + 48), v122);
      v160(v122, 0, 1, v48);
      sub_1B750B710(v129, type metadata accessor for BalanceCalculation.CalculationDetails);
    }
  }

  else
  {
    v160(v153, 1, 1, v48);
    sub_1B750B710(v161, type metadata accessor for BalanceCalculation);
    v123 = v166;
    v125 = v157;
    v124 = v158;
    v126 = v155;
    v127 = &off_1E7CAF000;
  }

  if (v171(v122, 1, v48) == 1)
  {
    sub_1B7205418(v122, &qword_1EB98FD68);
    v130 = 1;
    v131 = v164;
  }

  else
  {
    v131 = v164;
    (*(v149 + 16))(v126, v122 + *(v48 + 20), v164);
    sub_1B750B710(v122, type metadata accessor for BalanceCalculation.CalculationDetails);
    v130 = 0;
  }

  v132 = 1;
  (v163)(v126, v130, 1, v131);
  v133 = [v123 v127[120]];
  if (v133)
  {
    v134 = v133;
    sub_1B77FF928();

    v132 = 0;
  }

  (v163)(v125, v132, 1, v164);
  v135 = v154;
  sub_1B7507E80(v126, v125, v154);
  v136 = v165;
  sub_1B722376C(v135, v119 + *(v165 + 32), &qword_1EB996790);
  sub_1B750B7B8(v168 + v167, v124, type metadata accessor for BalanceCalculation);
  v137 = swift_getEnumCaseMultiPayload();
  if (v137)
  {
    v138 = v156;
    v139 = &off_1E7CAF000;
    if (v137 == 1)
    {
      sub_1B74279C8(v124, v156);
      v160(v138, 0, 1, v48);
    }

    else
    {
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8);
      sub_1B74279C8(v124 + *(v140 + 48), v138);
      v160(v138, 0, 1, v48);
      sub_1B750B710(v124, type metadata accessor for BalanceCalculation.CalculationDetails);
    }
  }

  else
  {
    v138 = v156;
    v160(v156, 1, 1, v48);
    sub_1B750B710(v124, type metadata accessor for BalanceCalculation);
    v139 = &off_1E7CAF000;
  }

  if (v171(v138, 1, v48) == 1)
  {
    sub_1B7205418(v138, &qword_1EB98FD68);
    v141 = 2;
  }

  else
  {
    v141 = *(v138 + *(v48 + 24));
    sub_1B750B710(v138, type metadata accessor for BalanceCalculation.CalculationDetails);
  }

  v97 = [v123 v139[171]];
  if (v97)
  {
    if (v97 == 1)
    {
      v142 = 1;
      goto LABEL_86;
    }

LABEL_93:
    v173 = 0;
    v174 = 0xE000000000000000;
    v147 = v97;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000029, 0x80000001B7876650);
    v176 = v147;
    type metadata accessor for FKCreditDebitIndicator(0);
    sub_1B7801C48();
    result = sub_1B7801C88();
    __break(1u);
    return result;
  }

  v142 = 0;
LABEL_86:

  result = sub_1B750B710(v168, type metadata accessor for InternalAccountBalance);
  if (v142)
  {
    v144 = 256;
  }

  else
  {
    v144 = 0;
  }

  v145 = v144 | v141;
  if ((v141 == 2) | (v142 ^ v141) & 1)
  {
    v146 = v145;
  }

  else
  {
    v146 = 3;
  }

  *(v119 + *(v136 + 36)) = v146;
  return result;
}

uint64_t sub_1B7509850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996790);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for InternalAccountBalance(0);
  sub_1B750B7B8(a2 + *(v19 + 20), v18, type metadata accessor for BalanceCalculation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = type metadata accessor for AccountBalanceChanges();
    v21 = type metadata accessor for BalanceCalculation;
    if (*(a1 + v25[7] + 45) == 1)
    {
      v21 = type metadata accessor for BalanceCalculation;
      if (*(a1 + 45) == 1)
      {
        v21 = type metadata accessor for BalanceCalculation;
        if (*(a1 + v25[6]) == 3)
        {
          sub_1B7205588(a1 + v25[5], v15, &qword_1EB996790);
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9967C8);
          if ((*(*(v26 - 8) + 48))(v15, 1, v26) == 1)
          {
            v24 = v15;
            goto LABEL_13;
          }

          sub_1B7205418(&v15[*(v26 + 48)], &qword_1EB98EBD0);
          v33 = v15;
LABEL_26:
          sub_1B7205418(v33, &qword_1EB98EBD0);
          v27 = 1;
          v21 = type metadata accessor for BalanceCalculation;
          goto LABEL_23;
        }
      }
    }

LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
    if (*(a1 + 45))
    {
      v29 = type metadata accessor for AccountBalanceChanges();
      if (*(a1 + v29[6]) == 3 && (*(a1 + v29[7] + 45) & 1) != 0 && *(a1 + v29[9]) == 3)
      {
        v36 = v29;
        sub_1B7205588(a1 + v29[5], v10, &qword_1EB996790);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9967C8);
        v31 = *(*(v30 - 8) + 48);
        if (v31(v10, 1, v30) == 1)
        {
          sub_1B7205418(v10, &qword_1EB996790);
          sub_1B7205588(a1 + v36[8], v7, &qword_1EB996790);
          if (v31(v7, 1, v30) == 1)
          {
            sub_1B7205418(v7, &qword_1EB996790);
            sub_1B750B710(&v18[v28], type metadata accessor for BalanceCalculation.CalculationDetails);
            v21 = type metadata accessor for BalanceCalculation.CalculationDetails;
            v27 = 2;
            goto LABEL_23;
          }

          sub_1B7205418(&v7[*(v30 + 48)], &qword_1EB98EBD0);
          v34 = v7;
        }

        else
        {
          sub_1B7205418(&v10[*(v30 + 48)], &qword_1EB98EBD0);
          v34 = v10;
        }

        sub_1B7205418(v34, &qword_1EB98EBD0);
        sub_1B750B710(&v18[v28], type metadata accessor for BalanceCalculation.CalculationDetails);
        v21 = type metadata accessor for BalanceCalculation.CalculationDetails;
        v27 = 1;
        goto LABEL_23;
      }
    }

    sub_1B750B710(&v18[v28], type metadata accessor for BalanceCalculation.CalculationDetails);
    v21 = type metadata accessor for BalanceCalculation.CalculationDetails;
    goto LABEL_22;
  }

  v21 = type metadata accessor for BalanceCalculation;
  if (*(a1 + 45) != 1)
  {
    goto LABEL_22;
  }

  v22 = type metadata accessor for AccountBalanceChanges();
  v21 = type metadata accessor for BalanceCalculation;
  if (*(a1 + v22[7] + 45) != 1)
  {
    goto LABEL_22;
  }

  v21 = type metadata accessor for BalanceCalculation;
  if (*(a1 + v22[9]) != 3)
  {
    goto LABEL_22;
  }

  sub_1B7205588(a1 + v22[8], v13, &qword_1EB996790);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9967C8);
  if ((*(*(v23 - 8) + 48))(v13, 1, v23) != 1)
  {
    sub_1B7205418(&v13[*(v23 + 48)], &qword_1EB98EBD0);
    v33 = v13;
    goto LABEL_26;
  }

  v24 = v13;
LABEL_13:
  sub_1B7205418(v24, &qword_1EB996790);
  v27 = 2;
  v21 = type metadata accessor for BalanceCalculation;
LABEL_23:
  sub_1B750B710(v18, v21);
  return v27;
}

id sub_1B7509E90(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawBankConnectData.Account(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  sub_1B750B7B8(a1, &v24 - v14, type metadata accessor for RawBankConnectData.Account);
  sub_1B77FF938();
  v16 = [objc_allocWithZone(type metadata accessor for ManagedInternalAccountBalance()) initWithContext_];
  v17 = sub_1B77FF8B8();
  [v16 setLastUpdatedAt_];

  type metadata accessor for ManagedAccountBalance();
  sub_1B750B7B8(v15, v13, type metadata accessor for RawBankConnectData.Account);
  v18 = a2;
  v19 = a3;
  v20 = sub_1B7266780(v13, v18, v19);

  [v16 setPublicAccountBalanceObject_];
  (*(v7 + 8))(v9, v6);
  sub_1B750B710(v15, type metadata accessor for RawBankConnectData.Account);
  v21 = sub_1B7800838();
  v22 = [v18 mutableSetValueForKeyPath_];

  [v22 addObject_];
  return v16;
}

id sub_1B750A128(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1B77FF4F8();
  v70 = *(v6 - 1);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF988();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v67 - v14;
  v15 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccountBalanceChanges();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for InternalAccountBalance(0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v67 - v25;
  v27 = ManagedInternalAccount.latestAccountBalanceObject.getter();
  if (!v27)
  {
    return sub_1B7509E90(a1, a2, a3);
  }

  v67 = v13;
  v28 = v27;
  InternalAccountBalance.init(_:)(v28, v26);
  sub_1B750B7B8(v26, v24, type metadata accessor for InternalAccountBalance);
  sub_1B750B7B8(a1, v17, type metadata accessor for RawBankConnectData.Account);
  AccountBalanceChanges.init(balance:rawUpdate:)(v24, v17, v20);
  v29 = sub_1B7509850(v20, v26);
  sub_1B750B710(v20, type metadata accessor for AccountBalanceChanges);
  sub_1B750B710(v26, type metadata accessor for InternalAccountBalance);
  if (v29)
  {
    if (v29 == 1)
    {
      v30 = v68;
      RawBankConnectData.Account.availableBalanceAsOf.getter(v68);
      v31 = v67;
      RawBankConnectData.Account.bookedBalanceAsOf.getter(v67);
      v32 = v72;
      sub_1B77FF938();
      v33 = sub_1B77FF8B8();
      [v28 setLastUpdatedAt_];

      v34 = [v28 publicAccountBalanceObject];
      _s10FinanceKit21ManagedAccountBalanceC6update_23withAvailableAmountAsOf0g6BookedijK0yAC_10Foundation4DateVSgAJtFZ_0(v34, v30, v31);

      (*(v73 + 8))(v32, v74);
      sub_1B7205418(v31, &qword_1EB98EBD0);
      sub_1B7205418(v30, &qword_1EB98EBD0);
    }

    else
    {
      v37 = v72;
      sub_1B77FF938();
      v38 = sub_1B77FF8B8();
      (*(v73 + 8))(v37, v74);
      [v28 setLastUpdatedAt_];
    }

    v36 = v28;
  }

  else
  {
    v36 = sub_1B7509E90(a1, a2, a3);
  }

  v39 = v36;
  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v40 = sub_1B78000B8();
  __swift_project_value_buffer(v40, qword_1EDAFAF58);
  v41 = v39;
  v42 = sub_1B7800098();
  v43 = sub_1B78011F8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v75 = v68;
    *v44 = 136315906;
    v45 = [v41 objectID];
    LODWORD(v67) = v43;
    v46 = v45;
    v47 = [v45 URIRepresentation];

    v48 = v29;
    v49 = v69;
    sub_1B77FF478();

    v50 = sub_1B77FF3E8();
    v52 = v51;
    (*(v70 + 8))(v49, v71);
    v53 = sub_1B71A3EF8(v50, v52, &v75);

    *(v44 + 4) = v53;
    *(v44 + 12) = 2080;
    v54 = sub_1B71A3EF8(*&aInsert_0[8 * v48], 0xE600000000000000, &v75);

    *(v44 + 14) = v54;
    *(v44 + 22) = 2080;
    v55 = [v41 lastUpdatedAt];
    v56 = v72;
    sub_1B77FF928();

    sub_1B750B770(&qword_1EB991200, MEMORY[0x1E6969530]);
    v71 = v28;
    v57 = v74;
    v58 = sub_1B7802068();
    v60 = v59;
    v61 = *(v73 + 8);
    v61(v56, v57);
    v62 = sub_1B71A3EF8(v58, v60, &v75);

    *(v44 + 24) = v62;
    *(v44 + 32) = 2048;
    v63 = [v41 lastUpdatedAt];
    sub_1B77FF928();

    sub_1B77FF908();
    v65 = v64;
    v61(v56, v57);
    *(v44 + 34) = v65;
    _os_log_impl(&dword_1B7198000, v42, v67, "Inserted or updated balance: %s with strategy: %s lastUpdatedAt: %s (%f ms)", v44, 0x2Au);
    v66 = v68;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v66, -1, -1);
    MEMORY[0x1B8CA7A40](v44, -1, -1);
  }

  else
  {
  }

  return v41;
}

void *sub_1B750A8E4(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = [a1 lastUpdated];
  if (v14)
  {
    v15 = v14;
    sub_1B77FF928();

    v16 = *(v5 + 56);
    v16(v13, 0, 1, v4);
  }

  else
  {
    v16 = *(v5 + 56);
    v16(v13, 1, 1, v4);
  }

  v17 = [a1 lastUpdated];
  if (v17)
  {
    v18 = v17;
    sub_1B77FF928();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v16(v11, v19, 1, v4);
  sub_1B77FF938();
  v20 = sub_1B77FF8B8();
  [a2 setLastUpdatedAt_];

  v21 = [a2 publicAccountBalanceObject];
  _s10FinanceKit21ManagedAccountBalanceC6update_23withAvailableAmountAsOf0g6BookedijK0yAC_10Foundation4DateVSgAJtFZ_0(v21, v13, v11);

  (*(v5 + 8))(v7, v4);
  sub_1B7205418(v11, &qword_1EB98EBD0);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  return a2;
}

id sub_1B750AB68(void *a1, void *a2, void *a3)
{
  v6 = sub_1B77FF988();
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B77FF4F8();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AccountBalanceChanges();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v72[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for InternalAccountBalance(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v72[-v19];
  v21 = ManagedInternalAccount.latestAccountBalanceObject.getter();
  if (!v21)
  {
    type metadata accessor for ManagedInternalAccountBalance();
    v25 = a1;
    v26 = a2;
    v27 = sub_1B7227028(v25, v26, a3);
    v28 = sub_1B7800838();
    v29 = [v26 mutableSetValueForKeyPath_];

    [v29 addObject_];
    return v27;
  }

  v75 = v6;
  v79 = v21;
  InternalAccountBalance.init(_:)(v79, v20);
  sub_1B750B7B8(v20, v18, type metadata accessor for InternalAccountBalance);
  v22 = a1;
  AccountBalanceChanges.init(balance:appleAccountUpdate:)(v18, v22, v14);
  v23 = sub_1B7509850(v14, v20);
  sub_1B750B710(v14, type metadata accessor for AccountBalanceChanges);
  sub_1B750B710(v20, type metadata accessor for InternalAccountBalance);
  if (!v23)
  {
    type metadata accessor for ManagedInternalAccountBalance();
    v30 = v22;
    v31 = a2;
    v24 = sub_1B7227028(v30, v31, a3);
    v32 = sub_1B7800838();
    v33 = [v31 mutableSetValueForKeyPath_];

    [v33 addObject_];
    goto LABEL_7;
  }

  if (v23 == 1)
  {
    v24 = sub_1B750A8E4(v22, v79);
LABEL_7:
    v34 = qword_1EDAFAF50;
    v35 = v24;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = sub_1B78000B8();
    __swift_project_value_buffer(v36, qword_1EDAFAF58);
    v27 = v35;
    v37 = sub_1B7800098();
    v38 = sub_1B78011F8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v80 = v74;
      *v39 = 136315906;
      v40 = [v27 objectID];
      v73 = v38;
      v41 = v40;
      v42 = [v40 URIRepresentation];

      sub_1B77FF478();
      v43 = sub_1B77FF3E8();
      v45 = v44;
      (*(v77 + 8))(v11, v78);
      v46 = sub_1B71A3EF8(v43, v45, &v80);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2080;
      if (v23)
      {
        v47 = 0x657461647075;
      }

      else
      {
        v47 = 0x747265736E69;
      }

      v48 = sub_1B71A3EF8(v47, 0xE600000000000000, &v80);

      *(v39 + 14) = v48;
      *(v39 + 22) = 2080;
      v49 = [v27 lastUpdatedAt];
      sub_1B77FF928();

      sub_1B750B770(&qword_1EB991200, MEMORY[0x1E6969530]);
      v50 = v75;
      v51 = sub_1B7802068();
      v53 = v52;
      v54 = *(v76 + 8);
      v54(v8, v50);
      v55 = sub_1B71A3EF8(v51, v53, &v80);

      *(v39 + 24) = v55;
      *(v39 + 32) = 2048;
      v56 = [v27 lastUpdatedAt];
      sub_1B77FF928();

      sub_1B77FF908();
      v58 = v57;

      v54(v8, v50);
      *(v39 + 34) = v58;
      _os_log_impl(&dword_1B7198000, v37, v73, "Inserted or updated balance: %s with strategy: %s lastUpdateAt: %s (%f ms)", v39, 0x2Au);
      v59 = v74;
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v59, -1, -1);
      MEMORY[0x1B8CA7A40](v39, -1, -1);
    }

    else
    {
    }

    return v27;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v60 = sub_1B78000B8();
  __swift_project_value_buffer(v60, qword_1EDAFAF58);
  v27 = v79;
  v61 = sub_1B7800098();
  v62 = sub_1B78011F8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v80 = v64;
    *v63 = 136315394;
    v65 = [v27 objectID];
    v66 = [v65 URIRepresentation];

    sub_1B77FF478();
    v67 = sub_1B77FF3E8();
    v69 = v68;
    (*(v77 + 8))(v11, v78);
    v70 = sub_1B71A3EF8(v67, v69, &v80);

    *(v63 + 4) = v70;
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_1B71A3EF8(0x65726F6E6769, 0xE600000000000000, &v80);
    _os_log_impl(&dword_1B7198000, v61, v62, "Skipping update for balance: %s due to strategy: %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v64, -1, -1);
    MEMORY[0x1B8CA7A40](v63, -1, -1);
  }

  return v27;
}

uint64_t type metadata accessor for AccountBalanceChanges()
{
  result = qword_1EB996798;
  if (!qword_1EB996798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B750B4D0()
{
  sub_1B750B58C();
  if (v0 <= 0x3F)
  {
    sub_1B750B620();
    if (v1 <= 0x3F)
    {
      sub_1B750B6B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B750B58C()
{
  if (!qword_1EB9967A8)
  {
    type metadata accessor for Decimal(255);
    sub_1B750B770(&qword_1EB9967B0, type metadata accessor for Decimal);
    v0 = type metadata accessor for Change();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB9967A8);
    }
  }
}

void sub_1B750B620()
{
  if (!qword_1EB9967B8)
  {
    sub_1B77FF988();
    sub_1B750B770(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for Change();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB9967B8);
    }
  }
}

void sub_1B750B6B4()
{
  if (!qword_1EB9967C0)
  {
    sub_1B739BE14();
    v0 = type metadata accessor for Change();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB9967C0);
    }
  }
}

uint64_t sub_1B750B710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B750B770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B750B7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B750B820(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0);
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

uint64_t sub_1B750B95C@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B750BA14(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &unk_1EB993A10);
  v7 = *a2;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF9B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

id ManagedCloudConsent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCloudConsent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCloudConsent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedCloudConsent.__allocating_init(consent:context:)(void *a1, void *a2)
{
  v3 = v2;
  v34 = sub_1B77FFA18();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = objc_allocWithZone(v3);
  v35 = a2;
  v17 = [v16 initWithContext_];
  v18 = [a1 consentID];
  [v17 setConsentID_];

  v19 = [a1 authorizedAt];
  sub_1B77FF928();

  v20 = sub_1B77FF8B8();
  v21 = *(v10 + 8);
  v21(v15, v9);
  [v17 setAuthorizedAt_];

  v22 = [a1 authorizedUntil];
  sub_1B77FF928();

  v23 = sub_1B77FF8B8();
  v21(v15, v9);
  [v17 setAuthorizedUntil_];

  [a1 refreshSequenceNumber];
  v24 = sub_1B78022B8();
  [v17 setRefreshSequenceNumber_];

  v25 = [a1 consentToken];
  [v17 setConsentToken_];

  ManagedConsent.consentStatus.getter(&v36);
  [v17 setConsentStatusValue_];
  v26 = [a1 backgroundRefreshLastConfirmedAt];
  if (v26)
  {
    v27 = v26;
    sub_1B77FF928();

    v28 = sub_1B77FF8B8();
    v21(v13, v9);
  }

  else
  {
    v28 = 0;
  }

  [v17 setBackgroundRefreshLastConfirmedAt_];

  v29 = [a1 institutionObject];
  v30 = [v29 id];

  [v17 setInstitutionID_];
  sub_1B77FFA08();
  v31 = sub_1B77FF9B8();
  (*(v6 + 8))(v8, v34);
  [v17 setId_];

  return v17;
}

void ManagedCloudConsent.update(_:context:)(void *a1)
{
  v2 = v1;
  v35 = sub_1B77FF988();
  v4 = *(v35 - 8);
  v5 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = [a1 institutionID];
  v10 = sub_1B7800868();
  v12 = v11;

  v13 = [v2 institutionID];
  if (!v13)
  {

    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_1B7800868();
  v17 = v16;

  if (v10 == v15 && v12 == v17)
  {
    goto LABEL_8;
  }

  v19 = sub_1B78020F8();

  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_8:
  }

  v20 = [a1 consentID];
  [v2 setConsentID_];

  v21 = [a1 authorizedAt];
  sub_1B77FF928();

  v22 = sub_1B77FF8B8();
  v23 = *(v4 + 8);
  v24 = v35;
  v23(v8, v35);
  [v2 setAuthorizedAt_];

  v25 = [a1 authorizedUntil];
  sub_1B77FF928();

  v26 = sub_1B77FF8B8();
  v23(v8, v24);
  [v2 setAuthorizedUntil_];

  [a1 refreshSequenceNumber];
  v27 = sub_1B78022B8();
  [v2 setRefreshSequenceNumber_];

  v28 = [a1 consentToken];
  [v2 setConsentToken_];

  ManagedConsent.consentStatus.getter(&v36);
  [v2 setConsentStatusValue_];
  v29 = [a1 backgroundRefreshLastConfirmedAt];
  if (v29)
  {
    v30 = v34;
    v31 = v29;
    sub_1B77FF928();

    v32 = sub_1B77FF8B8();
    v23(v30, v24);
  }

  else
  {
    v32 = 0;
  }

  [v2 setBackgroundRefreshLastConfirmedAt_];
}

{
  v2 = v1;
  v4 = sub_1B77FF988();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = [a1 institutionID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B7800868();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v2 institutionID];
  if (!v17)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v18 = v17;
  v19 = sub_1B7800868();
  v21 = v20;

  if (!v16)
  {
    if (!v21)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v21)
  {
LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  if (v14 == v19 && v16 == v21)
  {

    goto LABEL_15;
  }

LABEL_14:
  v22 = sub_1B78020F8();

  if ((v22 & 1) == 0)
  {
    __break(1u);
    return;
  }

LABEL_15:
  v23 = [a1 consentID];
  [v2 setConsentID_];

  v24 = [a1 authorizedAt];
  if (v24)
  {
    v25 = v24;
    sub_1B77FF928();

    v26 = sub_1B77FF8B8();
    v28 = v39;
    v27 = v40;
    (*(v39 + 8))(v11, v40);
  }

  else
  {
    v26 = 0;
    v27 = v40;
    v28 = v39;
  }

  [v2 setAuthorizedAt_];

  v29 = [a1 authorizedUntil];
  if (v29)
  {
    v30 = v29;
    sub_1B77FF928();

    v31 = sub_1B77FF8B8();
    (*(v28 + 8))(v9, v27);
  }

  else
  {
    v31 = 0;
  }

  [v2 setAuthorizedUntil_];

  v32 = [a1 refreshSequenceNumber];
  [v2 setRefreshSequenceNumber_];

  v33 = [a1 consentToken];
  [v2 setConsentToken_];

  ManagedCloudConsent.consentStatus.getter(&v41);
  [v2 setConsentStatusValue_];
  v34 = [a1 backgroundRefreshLastConfirmedAt];
  if (v34)
  {
    v35 = v38;
    v36 = v34;
    sub_1B77FF928();

    v37 = sub_1B77FF8B8();
    (*(v28 + 8))(v35, v27);
  }

  else
  {
    v37 = 0;
  }

  [v2 setBackgroundRefreshLastConfirmedAt_];
}

void ManagedCloudConsent.update(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = [a1 institutionID];
  v11 = sub_1B7800868();
  v13 = v12;

  v14 = [v2 institutionID];
  if (!v14)
  {

    __break(1u);
    return;
  }

  v15 = v14;
  v16 = sub_1B7800868();
  v18 = v17;

  if (v11 == v16 && v13 == v18)
  {
    goto LABEL_8;
  }

  v20 = sub_1B78020F8();

  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_8:
  }

  v21 = [a1 consentID];
  [v2 setConsentID_];

  v22 = [a1 authorizedAt];
  sub_1B77FF928();

  v23 = sub_1B77FF8B8();
  v24 = *(v5 + 8);
  v24(v9, v4);
  [v2 setAuthorizedAt_];

  v25 = [a1 authorizedUntil];
  sub_1B77FF928();

  v26 = sub_1B77FF8B8();
  v24(v9, v4);
  [v2 setAuthorizedUntil_];

  [a1 refreshSequenceNumber];
  v27 = sub_1B78022B8();
  [v2 setRefreshSequenceNumber_];

  v28 = [a1 consentToken];
  [v2 setConsentToken_];

  v29 = [a1 backgroundRefreshLastConfirmedAt];
  if (v29)
  {
    v30 = v34;
    v31 = v29;
    sub_1B77FF928();

    v32 = sub_1B77FF8B8();
    v24(v30, v4);
  }

  else
  {
    v32 = 0;
  }

  [v2 setBackgroundRefreshLastConfirmedAt_];
}

id ManagedCloudConsent.consentStatus.getter@<X0>(_BYTE *a1@<X8>)
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

id (*ManagedCloudConsent.consentStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedCloudConsent.consentStatus.getter((a1 + 8));
  return sub_1B750CD24;
}

id static ManagedCloudConsent.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit19ManagedCloudConsent;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedCloudConsent.existingObject(with:in:)(uint64_t a1, id a2)
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

unint64_t static ManagedCloudConsent.existingConsent(withConsentID:schemaVersion:in:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v19.receiver = swift_getObjCClassFromMetadata();
  v19.super_class = &OBJC_METACLASS____TtC10FinanceKit19ManagedCloudConsent;
  v6 = objc_msgSendSuper2(&v19, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780C060;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  *(v7 + 32) = sub_1B78010E8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7290];
  *(v9 + 16) = xmmword_1B7807CD0;
  v11 = MEMORY[0x1E69E72E8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = a3;
  *(v7 + 40) = sub_1B78010E8();
  v12 = sub_1B7800C18();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v6 setPredicate_];
  v14 = v20;
  result = sub_1B7801498();
  if (v14)
  {

    return v13;
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

  v17 = result;
  v18 = sub_1B7801958();
  result = v17;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);
LABEL_8:
    v13 = v16;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedCloudConsent.predicateForCloudConsent(withConsentID:)(uint64_t a1, uint64_t a2)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

uint64_t static ManagedCloudConsent.predicateForCloudConsent(withCKSchemaVersion:)(__int16 a1)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7290];
  *(v2 + 16) = xmmword_1B7807CD0;
  v4 = MEMORY[0x1E69E72E8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  return sub_1B78010E8();
}

uint64_t static ManagedCloudConsent.predicateForCloudConsent(institutionID:)(uint64_t a1, uint64_t a2)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

uint64_t BankConnectCloudConsent.init(validating:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v113 = &v106 - v6;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v114 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v115 = &v106 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v106 - v16;
  v18 = sub_1B77FFA18();
  v119 = *(v18 - 8);
  v120 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v106 - v22;
  v23 = type metadata accessor for BankConnectCloudConsent();
  v116 = v8;
  v117 = v23;
  v24 = *(v8 + 56);
  v121 = *(v23 + 44);
  v25 = a2;
  v112 = v24;
  v24(&a2[v121], 1, 1, v7);
  if ([a1 ckSchemaVersion] != 1)
  {
    v77 = [a1 ckSchemaVersion];
    sub_1B750DD24();
    swift_allocError();
    *v78 = v77;
    *(v78 + 8) = 0;
    *(v78 + 16) = 0;
LABEL_13:
    swift_willThrow();

    return sub_1B71F31EC(&a2[v121]);
  }

  v108 = v2;
  v26 = [a1 id];
  if (!v26)
  {
    sub_1B750DD24();
    swift_allocError();
    *v79 = xmmword_1B7838280;
    *(v79 + 16) = 1;
    goto LABEL_13;
  }

  v27 = v26;
  v109 = v17;
  v111 = v7;
  sub_1B77FF9E8();

  v28 = v119;
  v29 = a1;
  v30 = v118;
  v31 = v21;
  v32 = v120;
  (*(v119 + 32))(v118, v31, v120);
  (*(v28 + 16))(a2, v30, v32);
  v33 = [v29 consentID];
  if (!v33)
  {
    sub_1B750DD24();
    swift_allocError();
    *v81 = xmmword_1B7838270;
    *(v81 + 16) = 1;
    swift_willThrow();

    v82 = *(v28 + 8);
    v82(v30, v32);
    v82(a2, v32);
    return sub_1B71F31EC(&a2[v121]);
  }

  v34 = v33;
  v35 = sub_1B7800868();
  v37 = v36;

  v38 = v117;
  v39 = v117[5];
  v110 = v25;
  v40 = &v25[v39];
  *v40 = v35;
  v40[1] = v37;
  v41 = [v29 authorizedAt];
  v42 = v29;
  v107 = v41;
  if (!v41)
  {
    sub_1B750DD24();
    swift_allocError();
    *v83 = xmmword_1B7838260;
    *(v83 + 16) = 1;
    swift_willThrow();

    v84 = 0;
    v85 = 0;
    a2 = v110;
    v86 = v116;
    goto LABEL_20;
  }

  v43 = v41;
  sub_1B77FF928();

  v44 = v116;
  v45 = v109;
  v46 = v111;
  v106 = *(v116 + 32);
  v106(v109, v15, v111);
  v47 = *(v44 + 16);
  v47(&v110[v38[6]], v45, v46);
  v48 = [v42 authorizedUntil];
  if (!v48)
  {
    sub_1B750DD24();
    v86 = v44;
    swift_allocError();
    *v87 = xmmword_1B7838250;
    *(v87 + 16) = 1;
    swift_willThrow();

    (*(v44 + 8))(v45, v46);
    v84 = 0;
LABEL_19:
    v85 = 0;
    a2 = v110;
    goto LABEL_20;
  }

  v49 = v42;
  v50 = v114;
  v51 = v48;
  sub_1B77FF928();

  v52 = v115;
  v53 = v50;
  v54 = v49;
  v106(v115, v53, v46);
  v47(&v110[v38[7]], v52, v46);
  v55 = [v49 refreshSequenceNumber];
  if (!v55)
  {
    sub_1B750DD24();
    swift_allocError();
    *v88 = 0xD000000000000015;
    *(v88 + 8) = 0x80000001B7881E20;
    v84 = 1;
    *(v88 + 16) = 1;
    swift_willThrow();

    v86 = v116;
    v89 = *(v116 + 8);
    v89(v52, v46);
    v89(v109, v46);
    goto LABEL_19;
  }

  v56 = v55;
  v57 = [v55 longLongValue];
  a2 = v110;
  *&v110[v38[8]] = v57;
  v58 = [v49 consentToken];
  v59 = v109;
  if (!v58)
  {
    sub_1B750DD24();
    swift_allocError();
    *v94 = xmmword_1B7838240;
    v95 = v59;
    v84 = 1;
    *(v94 + 16) = 1;
    swift_willThrow();

    v86 = v116;
    v96 = *(v116 + 8);
    v97 = v111;
    v96(v115, v111);
    v96(v95, v97);
    v85 = 0;
    goto LABEL_20;
  }

  v60 = v58;
  v61 = sub_1B7800868();
  v63 = v62;

  v64 = &a2[v38[9]];
  *v64 = v61;
  v64[1] = v63;
  v65 = [v54 institutionID];
  if (!v65)
  {
    sub_1B750DD24();
    swift_allocError();
    *v98 = xmmword_1B7838230;
    v99 = v59;
    v84 = 1;
    *(v98 + 16) = 1;
    swift_willThrow();

    v86 = v116;
    v100 = *(v116 + 8);
    v101 = v111;
    v100(v115, v111);
    v100(v99, v101);
    v85 = 1;
LABEL_20:
    v90 = *(v119 + 8);
    v91 = v120;
    v90(v118, v120);
    v90(a2, v91);
    v92 = v117;

    if (v107)
    {
      v93 = v111;
      (*(v86 + 8))(&a2[v92[6]], v111);
      if (v84)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v93 = v111;
      if (v84)
      {
LABEL_22:
        (*(v86 + 8))(&a2[v92[7]], v93);
        if (v85)
        {
          goto LABEL_26;
        }

        return sub_1B71F31EC(&a2[v121]);
      }
    }

    if (v85)
    {
LABEL_26:
    }

    return sub_1B71F31EC(&a2[v121]);
  }

  v66 = v65;
  v67 = sub_1B7800868();
  v69 = v68;

  v70 = &a2[v38[12]];
  *v70 = v67;
  v70[1] = v69;
  v71 = [v54 backgroundRefreshLastConfirmedAt];
  if (v71)
  {
    v72 = v113;
    v73 = v71;
    sub_1B77FF928();

    v74 = 0;
    v75 = v116;
    v76 = v119;
  }

  else
  {
    v74 = 1;
    v75 = v116;
    v76 = v119;
    v72 = v113;
  }

  v102 = v111;
  v112(v72, v74, 1, v111);
  sub_1B72DFF88(v72, &a2[v121]);
  ManagedCloudConsent.consentStatus.getter(&v122);
  v103 = v117;
  a2[v117[10]] = v122;
  v104 = [v54 ckSchemaVersion];

  v105 = *(v75 + 8);
  v105(v115, v102);
  v105(v109, v102);
  result = (*(v76 + 8))(v118, v120);
  *&a2[v103[13]] = v104;
  return result;
}

unint64_t sub_1B750DD24()
{
  result = qword_1EB9967D0;
  if (!qword_1EB9967D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9967D0);
  }

  return result;
}

FinanceKit::ManagedUserTransactionInsight::TransactionCategory_optional __swiftcall ManagedUserTransactionInsight.TransactionCategory.init(from:)(FinanceKit::TransactionCategory from)
{
  v2 = v1;
  result.value = ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)(*from).value;
  *v2 = v4;
  return result;
}

FinanceKit::ManagedUserTransactionInsight::TransactionCategory_optional ManagedUserTransactionInsight.transactionCategory.getter@<W0>(_BYTE *a1@<X8>)
{
  result.value = ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)([v1 transactionCategoryValue]).value;
  v4 = v5;
  if (v5 == 13)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

Swift::Void __swiftcall ManagedUserTransactionInsight.willSave()()
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

Swift::Void __swiftcall ManagedUserTransactionInsight.awakeFromInsert()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_awakeFromInsert);
  sub_1B77FF938();
  v7 = sub_1B77FF8B8();
  (*(v4 + 8))(v6, v3);
  [v1 setUpdatedAt_];
}

id ManagedUserTransactionInsight.__allocating_init(transactionCategory:updatedAt:context:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = [objc_allocWithZone(v4) initWithContext_];
  [v8 setTransactionCategoryValue_];
  v9 = sub_1B77FF8B8();
  [v8 setUpdatedAt_];

  v10 = sub_1B77FF988();
  (*(*(v10 - 8) + 8))(a2, v10);
  return v8;
}

id ManagedUserTransactionInsight.__allocating_init(insight:context:)(unsigned __int8 *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)(*a1);
  if (v11 == 13)
  {
    v6 = 0;
  }

  else
  {
    v6 = v11;
  }

  v7 = v5;
  [v7 setTransactionCategoryValue_];
  v8 = type metadata accessor for UserTransactionInsight(0);
  v9 = sub_1B77FF8B8();
  [v7 setUpdatedAt_];

  [v7 setExcludeFromSpendingSummary_];
  sub_1B750E87C(a1);
  return v7;
}

uint64_t sub_1B750E3D4(void **a1, void **a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = [v11 updatedAt];
  sub_1B77FF928();

  v14 = [v12 updatedAt];
  sub_1B77FF928();

  LOBYTE(v14) = sub_1B77FF918();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if ((v14 & 1) == 0)
  {
    v19 = [v11 updatedAt];
    sub_1B77FF928();

    v20 = [v12 updatedAt];
    sub_1B77FF928();

    v18 = sub_1B77FF8C8();
    v15(v8, v4);
    v15(v10, v4);
    return v18 & 1;
  }

  ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)([v11 transactionCategoryValue]);
  if (v30 == 13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v30;
  }

  ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)([v12 transactionCategoryValue]);
  if (v29 != 13)
  {
    if (v16 != v29)
    {
      goto LABEL_7;
    }

LABEL_14:
    v21 = [v11 objectID];
    v22 = [v21 hash];

    v23 = [v12 objectID];
    v24 = [v23 hash];

    v18 = v24 < v22;
    return v18 & 1;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)([v11 transactionCategoryValue]);
  if (v28 == 13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v28;
  }

  ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)([v12 transactionCategoryValue]);
  if (v27 == 13)
  {
    v18 = v17 != 0;
  }

  else
  {
    v18 = v27 < v17;
  }

  return v18 & 1;
}

id ManagedUserTransactionInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedUserTransactionInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedUserTransactionInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

FinanceKit::ManagedUserTransactionInsight::TransactionCategory_optional __swiftcall ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xDu)
  {
    v2 = 13;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B750E87C(uint64_t a1)
{
  v2 = type metadata accessor for UserTransactionInsight(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static ManagedUserTransactionInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedUserTransactionInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t sub_1B750E950(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B77E6DD4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B750E9CC(v6);
  return sub_1B7801B78();
}

void sub_1B750E9CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B7802038();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManagedUserTransactionInsight();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B750EBBC(v8, v9, a1, v4);
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
    sub_1B750EACC(0, v2, 1, a1);
  }
}

void sub_1B750EACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_1B750E3D4(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1B750EBBC(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_20;
    }

    v98 = v6;
    v10 = *a3;
    v11 = *(*a3 + 8 * v7);
    v101 = *(*a3 + 8 * v9);
    v12 = v101;
    v102 = v11;
    v13 = v11;
    v14 = v12;
    v15 = sub_1B750E3D4(&v102, &v101);
    if (v4)
    {

      return;
    }

    v16 = v15;

    v17 = v9 + 2;
    v95 = v9;
    v18 = 8 * v9;
    v5 = v10 + v18 + 16;
    while (1)
    {
      v7 = v98;
      if (v98 == v17)
      {
        break;
      }

      v19 = *v5;
      v101 = *(v5 - 8);
      v20 = v101;
      v102 = v19;
      v21 = v19;
      v22 = v20;
      v23 = sub_1B750E3D4(&v102, &v101);

      ++v17;
      v5 += 8;
      if ((v16 ^ v23))
      {
        v7 = v17 - 1;
        break;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v95;
    if (v7 < v95)
    {
      goto LABEL_124;
    }

    if (v95 < v7)
    {
      v25 = 8 * v7 - 8;
      v26 = v7;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v28 = *(v27 + v18);
          *(v27 + v18) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v18 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v9 = v95;
      goto LABEL_20;
    }

    v9 = v95;
LABEL_20:
    v29 = a3[1];
    if (v7 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_120;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_133;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v9 + a4 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v9 + a4;
    }

    if (v30 < v9)
    {
      goto LABEL_123;
    }

    if (v7 == v30)
    {
LABEL_133:
      if (v7 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = v9;
      v78 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v96 = v77;
      v79 = v77 - v7;
      v92 = v30;
      do
      {
        v80 = *(v78 + 8 * v7);
        v93 = v79;
        v99 = v5;
        do
        {
          v101 = *v5;
          v81 = v101;
          v102 = v80;
          v82 = v80;
          v83 = v81;
          v84 = sub_1B750E3D4(&v102, &v101);
          if (v4)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v5;
          v80 = *(v5 + 8);
          *v5 = v80;
          *(v5 + 8) = v86;
          v5 -= 8;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v5 = v99 + 8;
        v79 = v93 - 1;
      }

      while (v7 != v92);
      v7 = v92;
      v9 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B723E420(0, *(v8 + 2) + 1, 1, v8);
    }

    v32 = *(v8 + 2);
    v31 = *(v8 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = sub_1B723E420((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = &v8[16 * v32];
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v8[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v8[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v8[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v37 = *(v8 + 4);
      v38 = *(v8 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_49:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v8[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v8[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v63 = &v8[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_63:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v8[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_70:
    v74 = v36 - 1;
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_125;
    }

    v5 = *&v8[16 * v74 + 32];
    v75 = *&v8[16 * v36 + 40];
    sub_1B750F218((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v36 + 32]), (*a3 + 8 * v75), v35);
    if (v4)
    {
      goto LABEL_100;
    }

    if (v75 < v5)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B77E4CA4(v8);
    }

    if (v74 >= *(v8 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v8[16 * v74];
    *(v76 + 4) = v5;
    *(v76 + 5) = v75;
    v103 = v8;
    sub_1B77E4C18(v36);
    v8 = v103;
    v33 = *(v103 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v8 = sub_1B77E4CA4(v8);
LABEL_92:
  v103 = v8;
  v88 = *(v8 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*a3)
    {
      v89 = *&v8[16 * v88];
      v90 = *&v8[16 * v88 + 24];
      sub_1B750F218((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v5);
      if (v4)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1B77E4CA4(v8);
      }

      if (v88 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v8[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v103 = v8;
      sub_1B77E4C18(v88 - 1);
      v8 = v103;
      v88 = *(v103 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_1B750F218(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B750E3D4(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B750E3D4(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

unint64_t sub_1B750F5B8()
{
  result = qword_1EB9967D8;
  if (!qword_1EB9967D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9967D8);
  }

  return result;
}

unint64_t sub_1B750F610()
{
  result = qword_1EB9967E0;
  if (!qword_1EB9967E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9967E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9967E0);
  }

  return result;
}

uint64_t sub_1B750F6C0(uint64_t a1)
{
  v5 = sub_1B7519C5C(a1);
  sub_1B750E950(&v5);
  v1 = v5;
  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!sub_1B7801958())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1B8CA5DC0](0, v1);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
LABEL_7:
    v3 = v2;

    return v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

FinanceKit::AuxiliaryEntityPredicateProvider __swiftcall AuxiliaryEntityPredicateProvider.init(auxEntitiesPredicates:)(Swift::OpaquePointer_optional auxEntitiesPredicates)
{
  v2 = v1;
  if (!auxEntitiesPredicates.value._rawValue)
  {
    auxEntitiesPredicates.value._rawValue = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
  }

  *v2 = auxEntitiesPredicates.value._rawValue;
  return auxEntitiesPredicates.value._rawValue;
}

uint64_t sub_1B750F7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001B7883BA0 == a2)
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

uint64_t sub_1B750F890(uint64_t a1)
{
  v2 = sub_1B751583C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B750F8CC(uint64_t a1)
{
  v2 = sub_1B751583C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuxiliaryEntityPredicateProvider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9967F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B751583C();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
  sub_1B727C37C(&qword_1EDAF6530);
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t AuxiliaryEntityPredicateProvider.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996800);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B751583C();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
    sub_1B727C37C(&qword_1EDAF6528);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B750FC74(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = a5;
  *(v5 + 16) = a2;
  *(v5 + 40) = type metadata accessor for FinanceStore.Message();
  v8 = swift_task_alloc();
  v9 = *a1;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  *(v5 + 88) = *(a1 + 8);
  *(v5 + 64) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B750FD28, 0, 0);
}

uint64_t sub_1B750FD28()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  *v3 = v1;
  *(v3 + 8) = v6;
  *(v3 + 16) = v5;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  swift_storeEnumTagMultiPayload();
  sub_1B72274E8(v1, v6);

  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1B750FE50;
  v8 = *(v0 + 48);

  return sub_1B7274A3C(v8);
}

uint64_t sub_1B750FE50()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  sub_1B72A820C(*(v2 + 48));
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B750FFC0, 0, 0);
}

uint64_t sub_1B750FFC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7510024(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  *(v7 + 40) = a5;
  *(v7 + 48) = a7;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a1;
  *(v7 + 56) = type metadata accessor for FinanceStore.Message();
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v7 + 64) = v10;
  *(v7 + 72) = v11;
  *(v7 + 104) = *(a2 + 8);
  *(v7 + 80) = *a6;

  return MEMORY[0x1EEE6DFA0](sub_1B75100DC, 0, 0);
}

uint64_t sub_1B75100DC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996858);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  *v4 = v3;
  *(v4 + 8) = v1;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  sub_1B7227AFC(v5, v4 + v9);
  *(v4 + v10) = v2;
  swift_storeEnumTagMultiPayload();
  sub_1B7227500(v3, v1);

  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1B7510238;
  v12 = *(v0 + 64);
  v13 = *(v0 + 16);

  return sub_1B7275038(v13, v12);
}

uint64_t sub_1B7510238()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 96) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B751039C, 0, 0);
}

uint64_t sub_1B751039C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7510400(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v2[32] = *v1;
  v3 = sub_1B78013E8();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996810);
  v2[36] = swift_task_alloc();
  v4 = sub_1B77FEAA8();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75105A8, 0, 0);
}

uint64_t sub_1B75105A8()
{
  v32 = v0;
  v31[1] = *MEMORY[0x1E69E9840];
  *(v0 + 192) = 0;
  v1 = *(v0 + 248);
  *(v0 + 200) = 0;
  os_activity_scope_enter(*(v1 + qword_1EDB08738), (v0 + 192));
  *(v0 + 320) = qword_1EDB08700;

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136315138;
    v7 = *(v4 + qword_1EDB086F0 + 8);
    *(v0 + 208) = *(v4 + qword_1EDB086F0);
    *(v0 + 216) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996820);
    v8 = sub_1B7801748();
    v10 = sub_1B71A3EF8(v8, v9, v31);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B7198000, v2, v3, "Processing next FinanceStore change for token %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
    MEMORY[0x1B8CA7A40](v5, -1, -1);
  }

  v11 = *(v0 + 248);
  if (*(v11 + 16))
  {
    v12 = *(v0 + 256);
    if (*(v11 + 32))
    {
      v13 = qword_1EDB08730;
      *(v0 + 344) = qword_1EDB08750;
      *(v0 + 352) = v13;
      *(v0 + 360) = qword_1EDB08720;
      swift_beginAccess();
      *(v0 + 368) = *(v12 + 128);
      *(v0 + 376) = *(v12 + 152);
      *(v0 + 232) = *(*(v0 + 248) + 24);
      type metadata accessor for FinanceStore.Changes();
      sub_1B7800CB8();
      swift_getWitnessTable();
      if (sub_1B7801078())
      {
        (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 248) + *(v0 + 344), *(v0 + 264));
        v14 = swift_task_alloc();
        *(v0 + 384) = v14;
        *v14 = v0;
        v14[1] = sub_1B7511108;
        v15 = *(v0 + 288);

        return MEMORY[0x1EEDC63C0](v15);
      }

      v21 = *(v0 + 240);
      swift_beginAccess();
      swift_getWitnessTable();
      sub_1B78010B8();
      swift_endAccess();
      v22 = *(v0 + 72);
      v23 = *(v0 + 80);
      v24 = *(v0 + 88);
      v25 = *(v0 + 56);
    }

    else
    {
      swift_beginAccess();
      *(v0 + 224) = *(v11 + 24);
      type metadata accessor for FinanceStore.Changes();
      sub_1B7800CB8();
      swift_getWitnessTable();
      if (sub_1B7801078())
      {
        v20 = *(v0 + 240);
        *(v20 + 32) = 0;
        *v20 = 0u;
        *(v20 + 16) = 0u;
LABEL_21:
        os_activity_scope_leave((v0 + 192));

        v29 = *(v0 + 8);

        return v29();
      }

      v26 = sub_1B7800098();
      v27 = sub_1B78011F8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1B7198000, v26, v27, "Not monitoring changes, removing from buffer", v28, 2u);
        MEMORY[0x1B8CA7A40](v28, -1, -1);
      }

      v21 = *(v0 + 240);

      swift_beginAccess();
      swift_getWitnessTable();
      sub_1B78010B8();
      swift_endAccess();
      v22 = *(v0 + 32);
      v23 = *(v0 + 40);
      v24 = *(v0 + 48);
      v25 = *(v0 + 16);
    }

    *v21 = v25;
    *(v21 + 16) = v22;
    *(v21 + 24) = v23;
    *(v21 + 32) = v24;
    goto LABEL_21;
  }

  v16 = sub_1B7800098();
  v17 = sub_1B78011F8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B7198000, v16, v17, "Not initialized, performing initial fetch", v18, 2u);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
  }

  v19 = swift_task_alloc();
  *(v0 + 328) = v19;
  *v19 = v0;
  v19[1] = sub_1B7510BF0;

  return sub_1B75123C0();
}

uint64_t sub_1B7510BF0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1B7511A20;
  }

  else
  {
    v2 = sub_1B7510D30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7510D30()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  if (*(v2 + 32))
  {
    v3 = qword_1EDB08730;
    *(v0 + 344) = qword_1EDB08750;
    *(v0 + 352) = v3;
    *(v0 + 360) = qword_1EDB08720;
    swift_beginAccess();
    *(v0 + 368) = *(v1 + 128);
    *(v0 + 376) = *(v1 + 152);
    *(v0 + 232) = *(*(v0 + 248) + 24);
    type metadata accessor for FinanceStore.Changes();
    sub_1B7800CB8();
    swift_getWitnessTable();
    if (sub_1B7801078())
    {
      (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 248) + *(v0 + 344), *(v0 + 264));
      v4 = swift_task_alloc();
      *(v0 + 384) = v4;
      *v4 = v0;
      v4[1] = sub_1B7511108;
      v5 = *(v0 + 288);

      return MEMORY[0x1EEDC63C0](v5);
    }

    v7 = *(v0 + 240);
    swift_beginAccess();
    swift_getWitnessTable();
    sub_1B78010B8();
    swift_endAccess();
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v0 + 56);
    goto LABEL_12;
  }

  swift_beginAccess();
  *(v0 + 224) = *(v2 + 24);
  type metadata accessor for FinanceStore.Changes();
  sub_1B7800CB8();
  swift_getWitnessTable();
  if ((sub_1B7801078() & 1) == 0)
  {
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Not monitoring changes, removing from buffer", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v7 = *(v0 + 240);

    swift_beginAccess();
    swift_getWitnessTable();
    sub_1B78010B8();
    swift_endAccess();
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 16);
LABEL_12:
    *v7 = v11;
    *(v7 + 16) = v8;
    *(v7 + 24) = v9;
    *(v7 + 32) = v10;
    goto LABEL_13;
  }

  v6 = *(v0 + 240);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
LABEL_13:
  os_activity_scope_leave((v0 + 192));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B7511108()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B751128C, 0, 0);
}

uint64_t sub_1B751128C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 240);
    sub_1B7205418(v3, &unk_1EB996810);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
LABEL_3:
    os_activity_scope_leave((v0 + 192));

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 360);
  v8 = *(v0 + 248);
  v9 = (v8 + *(v0 + 352));
  (*(v2 + 32))(*(v0 + 312), v3, v1);
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v8 + v7);
  v13 = v12;
  LOBYTE(v11) = sub_1B7511DA0(v11, v10, v12);

  if (v11)
  {
    v14 = sub_1B7800098();
    v15 = sub_1B78011F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B7198000, v14, v15, "Found relevant change, performing fetch", v16, 2u);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
    }

    v17 = swift_task_alloc();
    *(v0 + 392) = v17;
    *v17 = v0;
    v17[1] = sub_1B75116A0;

    return sub_1B75123C0();
  }

  else
  {
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    *(v0 + 232) = *(*(v0 + 248) + 24);
    type metadata accessor for FinanceStore.Changes();
    sub_1B7800CB8();
    swift_getWitnessTable();
    if ((sub_1B7801078() & 1) == 0)
    {
      v20 = *(v0 + 240);
      swift_beginAccess();
      swift_getWitnessTable();
      sub_1B78010B8();
      swift_endAccess();
      v21 = *(v0 + 72);
      v22 = *(v0 + 80);
      v23 = *(v0 + 88);
      *v20 = *(v0 + 56);
      *(v20 + 16) = v21;
      *(v20 + 24) = v22;
      *(v20 + 32) = v23;
      goto LABEL_3;
    }

    (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 248) + *(v0 + 344), *(v0 + 264));
    v18 = swift_task_alloc();
    *(v0 + 384) = v18;
    *v18 = v0;
    v18[1] = sub_1B7511108;
    v19 = *(v0 + 288);

    return MEMORY[0x1EEDC63C0](v19);
  }
}

uint64_t sub_1B75116A0()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_1B7511BD0;
  }

  else
  {
    v2 = sub_1B75117E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B75117E0()
{
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  *(v0 + 232) = *(*(v0 + 248) + 24);
  type metadata accessor for FinanceStore.Changes();
  sub_1B7800CB8();
  swift_getWitnessTable();
  if (sub_1B7801078())
  {
    (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 248) + *(v0 + 344), *(v0 + 264));
    v1 = swift_task_alloc();
    *(v0 + 384) = v1;
    *v1 = v0;
    v1[1] = sub_1B7511108;
    v2 = *(v0 + 288);

    return MEMORY[0x1EEDC63C0](v2);
  }

  else
  {
    v3 = *(v0 + 240);
    swift_beginAccess();
    swift_getWitnessTable();
    sub_1B78010B8();
    swift_endAccess();
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    *v3 = *(v0 + 56);
    *(v3 + 16) = v4;
    *(v3 + 24) = v5;
    *(v3 + 32) = v6;
    os_activity_scope_leave((v0 + 192));

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B7511A20()
{
  v1 = v0[21].opaque[0];
  v2 = v1;
  v3 = sub_1B7800098();
  v4 = sub_1B78011D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21].opaque[0];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7198000, v3, v4, "Fetch changes error: %@", v6, 0xCu);
    sub_1B7205418(v7, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  swift_willThrow();
  os_activity_scope_leave(v0 + 12);

  v10 = v0->opaque[1];

  return v10();
}

uint64_t sub_1B7511BD0()
{
  v1 = v0[25].opaque[0];
  v2 = v1;
  v3 = sub_1B7800098();
  v4 = sub_1B78011D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25].opaque[0];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7198000, v3, v4, "Fetch changes error: %@", v6, 0xCu);
    sub_1B7205418(v7, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v11 = v0[19].opaque[0];
  v10 = v0[19].opaque[1];
  v12 = v0[18].opaque[1];

  swift_willThrow();
  (*(v11 + 8))(v10, v12);
  os_activity_scope_leave(v0 + 12);

  v13 = v0->opaque[1];

  return v13();
}

uint64_t sub_1B7511DA0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1B77FEA98();
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  sub_1B7800868();
  sub_1B78019E8();
  if (!*(v7 + 16) || (v8 = sub_1B7245898(v38), (v9 & 1) == 0))
  {

    sub_1B720494C(v38);
LABEL_18:
    v39 = 0u;
    v40 = 0u;
    goto LABEL_19;
  }

  sub_1B719BDE4(*(v7 + 56) + 32 * v8, &v39);
  sub_1B720494C(v38);

  if (!*(&v40 + 1))
  {
LABEL_19:
    sub_1B7205418(&v39, &qword_1EB98FCB0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v21 = sub_1B78000B8();
    __swift_project_value_buffer(v21, qword_1EDAF6590);
    v22 = sub_1B7800098();
    v23 = sub_1B78011F8();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_25;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No store identifier, notification is not relevant.";
    goto LABEL_24;
  }

  v11 = v38[0];
  v10 = v38[1];
  v12 = sub_1B77FEA98();
  if (!v12)
  {

    v39 = 0u;
    v40 = 0u;
    goto LABEL_31;
  }

  v13 = v12;
  sub_1B7800868();
  sub_1B78019E8();
  if (!*(v13 + 16) || (v14 = sub_1B7245898(v38), (v15 & 1) == 0))
  {

    sub_1B720494C(v38);
    v39 = 0u;
    v40 = 0u;
    goto LABEL_29;
  }

  sub_1B719BDE4(*(v13 + 56) + 32 * v14, &v39);
  sub_1B720494C(v38);

  if (!*(&v40 + 1))
  {
LABEL_29:

LABEL_31:
    sub_1B7205418(&v39, &qword_1EB98FCB0);
LABEL_32:
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v27 = sub_1B78000B8();
    __swift_project_value_buffer(v27, qword_1EDAF6590);
    v22 = sub_1B7800098();
    v23 = sub_1B78011F8();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_25;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No notification token, notification is not relevant";
LABEL_24:
    _os_log_impl(&dword_1B7198000, v22, v23, v25, v24, 2u);
    MEMORY[0x1B8CA7A40](v24, -1, -1);
LABEL_25:

LABEL_26:
    v20 = 0;
    return v20 & 1;
  }

  sub_1B7205540(0, &qword_1EB996830);
  if (!swift_dynamicCast())
  {

    goto LABEL_32;
  }

  v16 = v38[0];
  if (!a2)
  {

    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v28 = sub_1B78000B8();
    __swift_project_value_buffer(v28, qword_1EDAF6590);
    v29 = sub_1B7800098();
    v30 = sub_1B78011F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B7198000, v29, v30, "No local store identifier, notification is not relevant", v31, 2u);
      MEMORY[0x1B8CA7A40](v31, -1, -1);
    }

    goto LABEL_49;
  }

  if ((v11 != a1 || v10 != a2) && (sub_1B78020F8() & 1) == 0)
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v32 = sub_1B78000B8();
    __swift_project_value_buffer(v32, qword_1EDAF6590);

    v33 = sub_1B7800098();
    v34 = sub_1B78011F8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *v35 = 136315394;
      v37 = sub_1B71A3EF8(v11, v10, v38);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_1B71A3EF8(a1, a2, v38);
      _os_log_impl(&dword_1B7198000, v33, v34, "Store identifier: %s does not match local identifier:%s, notification is not relevant", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v36, -1, -1);
      MEMORY[0x1B8CA7A40](v35, -1, -1);
    }

    else
    {
    }

LABEL_49:
    goto LABEL_26;
  }

  if (a3)
  {
    v17 = v16;
    v18 = a3;
    v19 = sub_1B7801558();

    v20 = v19 ^ 1;
  }

  else
  {

    v20 = 1;
  }

  return v20 & 1;
}

uint64_t sub_1B75123C0()
{
  *(v1 + 424) = v0;
  *(v1 + 432) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7512408, 0, 0);
}

uint64_t sub_1B7512408()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 16);
  *(v0 + 49) = v2;
  if ((v2 & 1) == 0)
  {
    *(v1 + 16) = 1;
    v1 = *(v0 + 424);
  }

  if (*(v1 + qword_1EDB08710))
  {
    v3 = *(v1 + qword_1EDB08710);
  }

  else
  {
    v3 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
    v1 = *(v0 + 424);
  }

  *(v0 + 440) = v3;
  v4 = *(v0 + 432);
  v5 = *(v1 + qword_1EDB08708);
  v6 = qword_1EDB086F0;
  *(v0 + 448) = qword_1EDB086F0;
  v7 = v1 + v6;
  v8 = *v7;
  v9 = *(v7 + 8);
  *(v0 + 312) = *v7;
  *(v0 + 320) = v9;
  v10 = *(v4 + 120);
  *(v0 + 456) = v10;
  v11 = *(v4 + 144);
  *(v0 + 464) = v11;
  v12 = *(v11 + 16);
  *(v0 + 472) = v12;
  *(v0 + 480) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE5AE000000000000;

  sub_1B72274E8(v8, v9);
  v13 = v12(v10, v11);
  v15 = v14;
  *(v0 + 488) = v14;
  *(v0 + 376) = v3;
  swift_bridgeObjectRetain_n();
  v18 = (v5 + *v5);
  v16 = swift_task_alloc();
  *(v0 + 496) = v16;
  *v16 = v0;
  v16[1] = sub_1B7512610;

  return v18(v0 + 312, v13, v15, v0 + 376);
}

uint64_t sub_1B7512610(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 504) = a1;
  *(v3 + 512) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    sub_1B7201CF8(*(v3 + 312), *(v3 + 320));
    v4 = sub_1B75147F0;
  }

  else
  {

    sub_1B7201CF8(*(v3 + 312), *(v3 + 320));
    v4 = sub_1B751278C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B751278C()
{
  v55 = v0;
  v1 = *(*(v0 + 504) + 16);
  *(v0 + 520) = v1;
  if (v1)
  {
    v2 = 0;
    *(v0 + 528) = qword_1EDB08718;
    *(v0 + 536) = qword_1EDB086F8;
    *(v0 + 544) = qword_1EDB08748;
    *(v0 + 552) = qword_1EDB08700;
    do
    {
      *(v0 + 600) = v2;
      *(v0 + 50) = -256;
      *(v0 + 560) = 0u;
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0;
      v3 = *(v0 + 504);
      if (v2 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v4 = v3 + 16 * v2;
      v5 = *(v0 + 424) + *(v0 + 448);
      v6 = *(v4 + 32);
      *(v0 + 608) = v6;
      v7 = *(v4 + 40);
      *(v0 + 52) = v7;
      v8 = *v5;
      v9 = *(v5 + 8);
      if (v9 == 255)
      {
        sub_1B7227500(v6, v7);
        sub_1B7227500(v6, v7);
        sub_1B7227500(v6, v7);
        sub_1B72274E8(v8, 255);
        sub_1B7201CF8(v8, 255);
        v19 = v6;
        v20 = v7;
        goto LABEL_28;
      }

      *(v0 + 640) = v9;
      if (v9)
      {
        sub_1B7227500(v6, v7);
        if ((v7 & 1) == 0)
        {
          goto LABEL_27;
        }

        v10 = 1;
        sub_1B7227500(v6, 1);
        sub_1B7227500(v6, 1);
        sub_1B72274E8(v8, v9);
        sub_1B72274E8(v8, v9);
        sub_1B7201D10(v8, 1);
        sub_1B7201D10(v6, 1);
        v11 = v8 == v6;
      }

      else
      {
        if (v7)
        {
          sub_1B7227500(v6, 1);
          v36 = v8;
LABEL_27:
          v7 = v9 ^ 1;
          sub_1B7227500(v6, (v9 ^ 1) & 1);
          sub_1B7227500(v6, (v9 ^ 1) & 1);
          sub_1B72274E8(v8, v9);
          sub_1B72274E8(v8, v9);
          sub_1B7201D10(v8, v9 & 1);
          sub_1B7201D10(v6, (v9 ^ 1) & 1);
          sub_1B7201D10(v8, v9 & 1);
          v19 = v8;
          v20 = v9;
LABEL_28:
          sub_1B7201CF8(v19, v20);
LABEL_29:
          v37 = *(v0 + 472);
          v38 = *(v0 + 456);
          v39 = *(v0 + 464);
          v40 = *(v0 + 440);
          v41 = *(v0 + 424);
          v42 = *(v41 + *(v0 + 528));
          v50 = *(v0 + 536);
          *(v0 + 328) = v6;
          *(v0 + 336) = v7 & 1;

          v43 = v37(v38, v39);
          v45 = v44;
          *(v0 + 616) = v44;
          *(v0 + 384) = v40;
          v48 = (v42 + *v42);
          v46 = swift_task_alloc();
          *(v0 + 624) = v46;
          *v46 = v0;
          v46[1] = sub_1B7512F3C;

          v48(v0 + 216, v0 + 328, v43, v45, v41 + v50, v0 + 384);
          return;
        }

        sub_1B7205540(0, &qword_1EDAFC4C0);
        sub_1B7227500(v6, 0);
        sub_1B7227500(v6, 0);
        sub_1B7227500(v6, 0);
        sub_1B72274E8(v8, v9);
        sub_1B7227500(v6, 0);
        sub_1B72274E8(v8, v9);
        sub_1B72274E8(v8, v9);
        sub_1B72274E8(v6, v7);
        sub_1B7227500(v8, 0);
        v11 = sub_1B7801558();
        sub_1B7201D10(v6, 0);
        sub_1B7201CF8(v8, v9);
        sub_1B7201D10(v8, 0);
        sub_1B7201D10(v6, 0);
        sub_1B7201CF8(v6, v7);
        v10 = *(v0 + 640);
      }

      sub_1B7201D10(v8, v10);
      sub_1B7201CF8(v8, v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_1B7201D10(v6, v7);
      sub_1B7201D10(v6, v7);
      v2 = *(v0 + 600) + 1;
    }

    while (v2 != *(v0 + 520));
  }

  if (*(v0 + 49))
  {
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
  }

  else
  {
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Initial fetch, sending empty updates", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = *(v0 + 424);
    if (*(v0 + 520) || (v21 = v15 + *(v0 + 448), v18 = *(v21 + 8), v18 == 255))
    {
      v16 = [*(*(v15 + qword_1EDB08748) + 16) newBackgroundContext];
      v17 = NSManagedObjectContext.currentLocalHistoryToken.getter();

      if (!v17)
      {
LABEL_33:
        __break(1u);
        return;
      }

      LOBYTE(v18) = 0;
    }

    else
    {
      v17 = *v21;
      sub_1B7227500(*v21, v18 & 1);
    }

    v22 = *(v0 + 448);
    v23 = *(v0 + 424);

    v24 = v23 + v22;
    v25 = sub_1B7800C68();
    v26 = sub_1B7800C68();
    swift_getAssociatedTypeWitness();
    v27 = sub_1B7800C68();
    v53 = v17;
    LOBYTE(v22) = v18 & 1;
    v54 = v18 & 1;
    sub_1B74E33B8(v25, v26, v27, &v53, v51);
    v28 = v17;
    v29 = v51[0];
    v30 = v51[1];
    v31 = v51[2];
    v47 = v51[3];
    v32 = v52;
    v33 = *v24;
    *v24 = v28;
    LOBYTE(v25) = *(v24 + 8);
    *(v24 + 8) = v22;
    v34 = v28;
    v49 = v28;
    sub_1B7227500(v28, v22);
    sub_1B7227500(v34, v22);
    sub_1B7201CF8(v33, v25);
    *(v0 + 56) = v29;
    *(v0 + 64) = v30;
    *(v0 + 72) = v31;
    *(v0 + 80) = v47;
    *(v0 + 88) = v32;
    swift_beginAccess();

    sub_1B7227500(v47, v32);
    type metadata accessor for FinanceStore.Changes();
    sub_1B7800CB8();
    sub_1B7800CA8();
    swift_endAccess();
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);

    sub_1B7201D10(v47, v32);
    sub_1B7201D10(v49, v22);
  }

  v35 = *(v0 + 8);

  v35();
}