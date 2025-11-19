uint64_t sub_1B7778380(SEL *a1)
{
  v3 = [v1 publicTransactionObject];
  v4 = [v3 *a1];

  v5 = sub_1B7800868();
  return v5;
}

id ManagedInternalTransaction.__allocating_init(_:for:context:)(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1B777BED8(a1, a2, a3);

  return v5;
}

double ManagedInternalTransaction.bankTransactionCode.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 bankTransactionCodeValue];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = [v2 bankTransactionCodeSubCode];
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

void ManagedInternalTransaction.proprietaryBankTransactionCode.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 proprietaryBankTransactionCodeValue];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = [v2 proprietaryBankTransactionCodeIssuer];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B7800868();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v11;
    a1[3] = v13;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

void ManagedInternalTransaction.transactionCategory.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 transactionCategoryObject];
  if (v3)
  {
    v4 = v3;
    ManagedTransactionCategory.transactionCategory.getter(&v6);

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_1B7778618(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 transactionId];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B7778670(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setTransactionId_];
}

id sub_1B77786D4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sourceValue];
  *a2 = result;
  return result;
}

id sub_1B777871C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountObject];
  *a2 = result;
  return result;
}

id ManagedInternalTransaction.displayLocation.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for ApplePayTransactionInsight.Location(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v12 = [v0 insightsObject];
  if (v12 && (v13 = v12, v14 = [v12 applePayInsightObject], v13, v14))
  {
    ManagedApplePayTransactionInsight.location.getter(v4);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_1B777C2DC(v4, v11, type metadata accessor for ApplePayTransactionInsight.Location);
      sub_1B777C214(v11, v9, type metadata accessor for ApplePayTransactionInsight.Location);
      v15 = objc_allocWithZone(MEMORY[0x1E6985C40]);
      v16 = *v9;
      v17 = v9[1];
      v18 = v9[2];
      v19 = v9[3];
      v20 = v9[4];
      v21 = sub_1B77FF8B8();
      v22 = [v15 initWithCoordinate:v21 altitude:v16 horizontalAccuracy:v17 verticalAccuracy:v18 timestamp:{v19, v20}];

      sub_1B777C27C(v9, type metadata accessor for ApplePayTransactionInsight.Location);
      sub_1B777C27C(v11, type metadata accessor for ApplePayTransactionInsight.Location);
      return v22;
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_1B7205418(v4, &qword_1EB990980);
  v24 = [v1 insightsObject];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 mapsInsightObject];

    if (v26)
    {
      v27 = [v26 merchantObject];

      if (v27)
      {
        v28 = [v27 locationLatitudeValue];
        if (v28 && (v29 = v28, [v28 doubleValue], v31 = v30, v29, (v32 = objc_msgSend(v27, sel_locationLongitudeValue)) != 0))
        {
          v33 = v32;
          [v32 doubleValue];
          v35 = v34;

          v36 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v31 longitude:v35];
          result = v36;
          if (v36)
          {
            return result;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t ManagedInternalTransaction.displayLocationName.getter()
{
  v1 = [v0 insightsObject];
  if (!v1)
  {
LABEL_5:
    v5 = 0;
    v3 = 0;
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 applePayInsightObject];

  if (v3)
  {
    v4 = [v3 merchantCity];

    if (v4)
    {
      v5 = sub_1B7800868();
      v3 = v6;

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v7 = [v0 insightsObject];
  if (!v7)
  {
LABEL_11:
    v13 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v7 applePayInsightObject];

  if (v9)
  {
    v10 = [v9 merchantState];

    if (v10)
    {
      v11 = sub_1B7800868();
      v9 = v12;

      v13 = v11;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v13 = 0;
LABEL_13:
  v14 = sub_1B777B1D4(v5, v3, v13, v9);
  v16 = v15;

  if (!v16)
  {
    v17 = [v0 insightsObject];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 mapsInsightObject];

      if (!v19)
      {
LABEL_21:
        v20 = 0;
LABEL_22:
        v23 = [v0 insightsObject];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 mapsInsightObject];

          if (!v25)
          {
            goto LABEL_28;
          }

          v26 = [v25 merchantObject];

          if (v26)
          {
            v25 = [v26 postalAddress];

            if (v25)
            {
              v27 = [v25 state];

              v28 = sub_1B7800868();
              v25 = v29;

              v30 = v28;
LABEL_29:
              v14 = sub_1B777B1D4(v20, v19, v30, v25);

              return v14;
            }

LABEL_28:
            v30 = 0;
            goto LABEL_29;
          }
        }

        v30 = 0;
        v25 = 0;
        goto LABEL_29;
      }

      v20 = [v19 merchantObject];

      if (v20)
      {
        v19 = [v20 postalAddress];

        if (v19)
        {
          v21 = [v19 city];

          v20 = sub_1B7800868();
          v19 = v22;

          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
    }

    v19 = 0;
    goto LABEL_22;
  }

  return v14;
}

Swift::Void __swiftcall ManagedInternalTransaction.setNeedsSpotlightReindexing()()
{
  v1 = [v0 publicTransactionObject];
  [v1 setSpotlightGeneration_];
}

uint64_t sub_1B7778ED0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 sharedId];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF9E8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FFA18();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B7778F74(uint64_t a1, void **a2)
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

  [v7 setSharedId_];
}

id ManagedInternalTransaction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInternalTransaction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInternalTransaction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B77792C0(SEL *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v19.super_class = swift_getObjectType();
  v20[0] = 0;
  v19.receiver = v1;
  v4 = objc_msgSendSuper2(&v19, *a1, v20);
  v5 = v20[0];
  if (v4)
  {
    swift_getKeyPath();
    v6 = v5;
    sub_1B7451E8C(v1);
    if (v2)
    {

      v7 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      if (swift_dynamicCast())
      {

        v8 = v20[0];
        v9 = v20[1];
        v10 = v20[2];
        v11 = v20[3];
        v12 = v21;
        type metadata accessor for BankConnectAutoBugCaptureReporter();
        inited = swift_initStackObject();
        v14 = [objc_allocWithZone(FKAutoBugCaptureReporter) init];
        *(inited + 16) = v14;
        sub_1B7269974();
        v15 = swift_allocError();
        *v16 = v8;
        *(v16 + 8) = v9;
        *(v16 + 16) = v10;
        *(v16 + 24) = v11;
        *(v16 + 32) = v12;
        sub_1B7269A94();
        BankConnectAutoBugCaptureReporter.reportValidationIssue(_:error:)();

        swift_allocError();
        *v17 = v8;
        *(v17 + 8) = v9;
        *(v17 + 16) = v10;
        *(v17 + 24) = v11;
        *(v17 + 32) = v12;
        swift_willThrow();
      }
    }

    else
    {
    }
  }

  else
  {
    v18 = v20[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t sub_1B7779500(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t ManagedInternalTransaction.__allocating_init(_:for:context:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v103 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v95 - v8;
  v9 = sub_1B77FF988();
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FFB08();
  v105 = *(v11 - 8);
  v106 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FFC88();
  v108 = *(v13 - 8);
  v109 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FED28();
  v100 = *(v15 - 8);
  v101 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for InternalTransaction(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA00);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v95 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v95 - v27;
  v29 = objc_allocWithZone(v4);
  v102 = a3;
  v30 = [v29 initWithContext_];
  v31 = a1 + *(v20 + 24);
  v32 = v30;
  v33 = sub_1B7800838();
  [v32 setTransactionId_];

  [v32 setIsTransactionIDStable_];
  v111 = v20;
  v112 = a1;
  if (*(a1 + *(v20 + 28) + 8))
  {
    v34 = sub_1B7800838();
  }

  else
  {
    v34 = 0;
  }

  [v32 setPaymentHash_];

  v35 = v111;
  v36 = v112;
  [v32 setSourceValue_];
  [v32 setIsVisible_];
  sub_1B7205588(v36 + v35[23], v28, &unk_1EB993A10);
  v37 = sub_1B77FFA18();
  v38 = *(v37 - 8);
  v39 = 0;
  if ((*(v38 + 48))(v28, 1, v37) != 1)
  {
    v39 = sub_1B77FF9B8();
    (*(v38 + 8))(v28, v37);
  }

  [v32 setSharedId_];

  type metadata accessor for ManagedTransactionActions();
  v40 = v112;
  sub_1B7205588(v112 + v35[21], v25, &qword_1EB99DA00);
  v41 = v102;
  v42 = ManagedTransactionActions.__allocating_init(_:context:)(v25, v41);
  [v32 setActionsObject_];

  type metadata accessor for ManagedTransaction();
  v43 = v40;
  sub_1B777C214(v40, v22, type metadata accessor for InternalTransaction);
  v44 = v41;
  v45 = v103;
  v46 = sub_1B771A0EC(v22, v45, v44);
  v103 = v45;

  v102 = v44;
  [v32 setPublicTransactionObject_];

  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v47 = v35[19];
  ManagedInternalTransaction.MonthYearFormatter.format(_:)(v43 + v47);
  sub_1B777C27C(v19, type metadata accessor for ManagedInternalTransaction.MonthYearFormatter);
  v48 = sub_1B7800838();

  [v32 setMonthAndYear_];

  v50 = v104;
  v49 = v105;
  v51 = v106;
  (*(v105 + 104))(v104, *MEMORY[0x1E6969830], v106);
  v52 = v107;
  sub_1B77FFB18();
  (*(v49 + 8))(v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v53 = sub_1B77FFC68();
  v54 = *(v53 - 8);
  v55 = *(v54 + 72);
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1B780D870;
  v58 = v57 + v56;
  v59 = *(v54 + 104);
  v59(v58, *MEMORY[0x1E6969A68], v53);
  v59(v58 + v55, *MEMORY[0x1E6969A20], v53);
  v60 = v47;
  v59(v58 + 2 * v55, *MEMORY[0x1E6969A48], v53);
  sub_1B7545E58(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v61 = v110;
  sub_1B77FFB68();

  (*(v108 + 8))(v52, v109);
  result = sub_1B77FEC58();
  if (v63)
  {
    v64 = 0;
  }

  else
  {
    v64 = result;
  }

  if (v64 < -32768)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v64 >= 0x8000)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v32 setYear_];
  result = sub_1B77FEBE8();
  if (v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = result;
  }

  if (v66 < -32768)
  {
    goto LABEL_42;
  }

  if (v66 >= 0x8000)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v32 setWeekOfMonth_];
  result = sub_1B77FEC08();
  if (v67)
  {
    v68 = 0;
  }

  else
  {
    v68 = result;
  }

  if (v68 < -32768)
  {
    goto LABEL_44;
  }

  if (v68 >= 0x8000)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  [v32 setDay_];
  v70 = v111;
  v69 = v112;
  v71 = v97;
  sub_1B7205588(v112 + v111[20], v97, &qword_1EB98EBD0);
  v73 = v98;
  v72 = v99;
  v74 = *(v98 + 48);
  if (v74(v71, 1, v99) == 1)
  {
    v75 = v69 + v60;
    v76 = v96;
    (*(v73 + 16))(v96, v75, v72);
    if (v74(v71, 1, v72) != 1)
    {
      sub_1B7205418(v71, &qword_1EB98EBD0);
    }
  }

  else
  {
    v76 = v96;
    (*(v73 + 32))(v96, v71, v72);
  }

  v77 = sub_1B77FF8B8();
  (*(v73 + 8))(v76, v72);
  [v32 setUpdatedAt_];

  [v32 setHasNotificationServiceData_];
  if (*(v69 + v70[25] + 8))
  {
    v78 = sub_1B7800838();
  }

  else
  {
    v78 = 0;
  }

  v79 = v103;
  [v32 setAltDSID_];

  v80 = (v69 + v70[32]);
  v81 = v80[1];
  if (v81)
  {
    v82 = *v80;
    sub_1B7420484(*v80, v80[1]);

    v83 = sub_1B7800838();

    [v32 setBankTransactionCodeValue_];

    sub_1B74204FC(v82, v81);
    v81 = sub_1B7800838();
  }

  else
  {
    [v32 setBankTransactionCodeValue_];
  }

  [v32 setBankTransactionCodeSubCode_];

  v84 = (v69 + v70[33]);
  v85 = v84[1];
  if (!v85)
  {
    [v32 setProprietaryBankTransactionCodeValue_];
    goto LABEL_35;
  }

  v86 = v84[3];
  v87 = *v84;
  sub_1B7586148(*v84, v84[1]);

  v88 = sub_1B7800838();

  [v32 setProprietaryBankTransactionCodeValue_];

  sub_1B74204FC(v87, v85);
  if (!v86)
  {
LABEL_35:
    v89 = 0;
    goto LABEL_36;
  }

  v89 = sub_1B7800838();

LABEL_36:
  v90 = v101;
  [v32 setProprietaryBankTransactionCodeIssuer_];

  if (*(v69 + v70[26] + 8))
  {
    v91 = sub_1B7800838();
  }

  else
  {
    v91 = 0;
  }

  v92 = v100;
  [v32 setPkServiceIdentifier_];

  v93 = sub_1B7800838();
  v94 = [v79 mutableSetValueForKeyPath_];

  [v94 addObject_];
  (*(v92 + 8))(v61, v90);
  sub_1B777C27C(v69, type metadata accessor for InternalTransaction);
  return v32;
}

void ManagedInternalTransaction.bankTransactionCode.setter(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;

    v4 = sub_1B7800838();

    [v1 setBankTransactionCodeValue_];

    sub_1B74204FC(v3, v2);
    v5 = sub_1B7800838();
  }

  else
  {
    [v1 setBankTransactionCodeValue_];
    v5 = 0;
  }

  [v1 setBankTransactionCodeSubCode_];
}

void ManagedInternalTransaction.proprietaryBankTransactionCode.setter(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[3];
    v4 = *a1;

    v5 = sub_1B7800838();

    [v1 setProprietaryBankTransactionCodeValue_];

    sub_1B74204FC(v4, v2);
    if (v3)
    {
      v7 = sub_1B7800838();

      v6 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    [v1 setProprietaryBankTransactionCodeValue_];
  }

  v6 = 0;
LABEL_6:
  v8 = v6;
  [v1 setProprietaryBankTransactionCodeIssuer_];
}

void ManagedInternalTransaction.displayDate.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = [v1 insightsObject];
  if (!v9 || (v10 = v9, v11 = [v9 applePayInsightObject], v10, !v11))
  {
    v14 = sub_1B77FF988();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
LABEL_8:
    sub_1B7205418(v8, &qword_1EB98EBD0);
    v16 = [v1 publicTransactionObject];
    v17 = [v16 transactionDate];

    sub_1B77FF928();
    return;
  }

  v12 = [v11 transactionDate];

  if (v12)
  {
    sub_1B77FF928();

    v13 = sub_1B77FF988();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v13 = sub_1B77FF988();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_1B7205340(v6, v8);
  sub_1B77FF988();
  v15 = *(v13 - 8);
  if ((*(v15 + 48))(v8, 1, v13) == 1)
  {
    goto LABEL_8;
  }

  (*(v15 + 32))(a1, v8, v13);
}

id sub_1B777A8C0(SEL *a1)
{
  v3 = [v1 publicTransactionObject];
  v4 = [v3 *a1];

  return v4;
}

uint64_t sub_1B777A9D8(SEL *a1)
{
  v3 = [v1 publicTransactionObject];
  v4 = [v3 *a1];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1B7800868();

  return v5;
}

id sub_1B777AA6C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 publicTransactionObject];
  v6 = [v5 *a3];

  return v6;
}

id sub_1B777AB14(SEL *a1)
{
  v3 = [v1 publicTransactionObject];
  v4 = [v3 *a1];

  return v4;
}

id (*ManagedInternalTransaction.source.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 sourceValue];
  v4 = v3 == 1;
  if (v3 == 2)
  {
    v4 = 2;
  }

  *(a1 + 8) = v4;
  return sub_1B720B110;
}

void (*ManagedInternalTransaction.bankTransactionCode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = [v2 bankTransactionCodeValue];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = sub_1B7800868();
  v10 = v9;

  v11 = [v2 bankTransactionCodeSubCode];
  if (!v11)
  {

LABEL_8:
    *v5 = 0u;
    *(v5 + 16) = 0u;
    return sub_1B777ACC8;
  }

  v12 = v11;
  v13 = sub_1B7800868();
  v15 = v14;

  *v5 = v8;
  *(v5 + 8) = v10;
  *(v5 + 16) = v13;
  *(v5 + 24) = v15;
  return sub_1B777ACC8;
}

void sub_1B777ACC8(uint64_t *a1, char a2)
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

      [v4 setBankTransactionCodeValue_];

      sub_1B74204FC(v5, v3);
      v3 = sub_1B7800838();
    }

    else
    {
      [*(v2 + 32) setBankTransactionCodeValue_];
    }

    [*(v2 + 32) setBankTransactionCodeSubCode_];

    sub_1B74204FC(*v2, *(v2 + 8));
  }

  else
  {
    v7 = *(v2 + 32);
    if (v3)
    {
      v8 = *v2;

      v9 = sub_1B7800838();

      [v7 setBankTransactionCodeValue_];

      sub_1B74204FC(v8, v3);
      v3 = sub_1B7800838();
    }

    else
    {
      [*(v2 + 32) setBankTransactionCodeValue_];
    }

    [*(v2 + 32) setBankTransactionCodeSubCode_];
  }

  free(v2);
}

uint64_t sub_1B777AE98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t (*a6)(void *))
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  a5(v11[0], v7);
  return a6(v11);
}

void (*ManagedInternalTransaction.proprietaryBankTransactionCode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = [v2 proprietaryBankTransactionCodeValue];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B7800868();
    v10 = v9;

    v11 = [v2 proprietaryBankTransactionCodeIssuer];
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

    *v5 = v8;
    v5[1] = v10;
    v5[2] = v13;
    v5[3] = v15;
  }

  else
  {
    *v5 = 0u;
    *(v5 + 1) = 0u;
  }

  return sub_1B777AFF4;
}

void sub_1B777AFF4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    v4 = *(v2 + 32);
    if (v3)
    {
      v5 = *(v2 + 24);
      v6 = *v2;
      sub_1B7586148(*v2, v3);

      v7 = sub_1B7800838();

      [v4 setProprietaryBankTransactionCodeValue_];

      sub_1B74204FC(v6, v3);
      if (v5)
      {
        v8 = sub_1B7800838();

LABEL_10:
        [*(v2 + 32) setProprietaryBankTransactionCodeIssuer_];

        sub_1B74204FC(*v2, *(v2 + 8));
        goto LABEL_14;
      }
    }

    else
    {
      [*(v2 + 32) setProprietaryBankTransactionCodeValue_];
    }

    v8 = 0;
    goto LABEL_10;
  }

  v9 = *(v2 + 32);
  if (!v3)
  {
    [*(v2 + 32) setProprietaryBankTransactionCodeValue_];
    goto LABEL_12;
  }

  v10 = *(v2 + 24);
  v11 = *v2;

  v12 = sub_1B7800838();

  [v9 setProprietaryBankTransactionCodeValue_];

  sub_1B74204FC(v11, v3);
  if (!v10)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v13 = sub_1B7800838();

LABEL_13:
  [*(v2 + 32) setProprietaryBankTransactionCodeIssuer_];

LABEL_14:

  free(v2);
}

uint64_t sub_1B777B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B7808C50;
      v9 = MEMORY[0x1E69E6158];
      *(v8 + 56) = MEMORY[0x1E69E6158];
      v10 = sub_1B721FF04();
      *(v8 + 32) = a1;
      *(v8 + 40) = a2;
      *(v8 + 96) = v9;
      *(v8 + 104) = v10;
      *(v8 + 64) = v10;
      *(v8 + 72) = a3;
      *(v8 + 80) = a4;
      v11 = qword_1EDAF93A8;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = qword_1EDAF93B0;
      v13 = sub_1B7800838();
      v14 = sub_1B7800838();
      v15 = sub_1B7800838();
      v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

      sub_1B7800868();
      a1 = sub_1B78008A8();
    }

    else
    {
    }
  }

  return a1;
}

uint64_t _s10FinanceKit26ManagedInternalTransactionC6update_07withRawE0yAC_AA0H15BankConnectDataO0E0VtFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v70 - v5;
  v6 = type metadata accessor for RawBankConnectData.Actions();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v70 - v9;
  v10 = sub_1B77FF988();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FFB08();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B77FFC88();
  v84 = *(v16 - 8);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B77FED28();
  v76 = *(v19 - 8);
  v77 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setSourceValue_];
  v82 = a2;
  [a1 setIsTransactionIDStable_];
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v75 = type metadata accessor for RawBankConnectData.Transaction(0);
  v24 = *(v75 + 28);
  ManagedInternalTransaction.MonthYearFormatter.format(_:)(a2 + v24);
  sub_1B777C27C(v23, type metadata accessor for ManagedInternalTransaction.MonthYearFormatter);
  v25 = sub_1B7800838();

  [a1 setMonthAndYear_];

  (*(v13 + 104))(v15, *MEMORY[0x1E6969830], v12);
  sub_1B77FFB18();
  (*(v13 + 8))(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v26 = sub_1B77FFC68();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B780D870;
  v31 = v30 + v29;
  v33 = *(v27 + 104);
  v32 = v27 + 104;
  v33(v31, *MEMORY[0x1E6969A68], v26);
  v33(v31 + v28, *MEMORY[0x1E6969A20], v26);
  v34 = v82;
  v33(v31 + 2 * v28, *MEMORY[0x1E6969A48], v26);
  v35 = v24;
  sub_1B7545E58(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v36 = v83;
  sub_1B77FFB68();
  v37 = v36;

  (*(v84 + 8))(v18, v85);
  v38 = v36;
  v39 = sub_1B77FEC58();
  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v39;
  }

  if (v41 < -32768)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v41 >= 0x8000)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [a1 setYear_];
  v38 = v36;
  v42 = sub_1B77FEBE8();
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  if (v44 < -32768)
  {
    goto LABEL_45;
  }

  if (v44 >= 0x8000)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [a1 setWeekOfMonth_];
  v38 = v36;
  v45 = sub_1B77FEC08();
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  if (v47 < -32768)
  {
    goto LABEL_47;
  }

  if (v47 >= 0x8000)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
    goto LABEL_39;
  }

  [a1 setDay_];
  v48 = v75;
  v49 = v72;
  sub_1B7205588(v34 + *(v75 + 24), v72, &qword_1EB98EBD0);
  v51 = v73;
  v50 = v74;
  v52 = *(v73 + 48);
  if (v52(v49, 1, v74) == 1)
  {
    v53 = v34 + v35;
    v54 = v71;
    (*(v51 + 16))(v71, v53, v50);
    if (v52(v49, 1, v50) != 1)
    {
      sub_1B7205418(v49, &qword_1EB98EBD0);
    }
  }

  else
  {
    v54 = v71;
    (*(v51 + 32))(v71, v49, v50);
  }

  v55 = sub_1B77FF8B8();
  (*(v51 + 8))(v54, v50);
  [a1 setUpdatedAt_];

  [a1 setHasNotificationServiceData_];
  if (*(v34 + v48[19] + 8))
  {
    v56 = sub_1B7800838();
  }

  else
  {
    v56 = 0;
  }

  [a1 setPaymentHash_];

  v57 = (v34 + v48[20]);
  v58 = v57[1];
  if (v58)
  {
    v59 = *v57;
    swift_bridgeObjectRetain_n();

    v60 = sub_1B7800838();
  }

  else
  {
    v60 = 0;
    v59 = 0;
  }

  [a1 setBankTransactionCodeValue_];

  if (v58)
  {

    sub_1B74204FC(v59, v58);
    v58 = sub_1B7800838();
  }

  [a1 setBankTransactionCodeSubCode_];

  v61 = (v34 + v48[21]);
  v62 = v61[1];
  if (v62)
  {
    v63 = v61[3];
    v64 = *v61;

    swift_bridgeObjectRetain_n();
    v65 = sub_1B7800838();
  }

  else
  {
    v65 = 0;
    v64 = 0;
    v63 = 0;
  }

  [a1 setProprietaryBankTransactionCodeValue_];

  if (v62)
  {

    sub_1B74204FC(v64, v62);
    v66 = v78;
    v32 = v79;
    if (v63)
    {
      v62 = sub_1B7800838();
    }

    else
    {
      v62 = 0;
    }

    v31 = v80;
    v18 = v81;
  }

  else
  {
    v31 = v80;
    v18 = v81;
    v66 = v78;
    v32 = v79;
  }

  [a1 setProprietaryBankTransactionCodeIssuer_];

  v67 = [a1 publicTransactionObject];
  _s10FinanceKit18ManagedTransactionC6update_07withRawD0yAC_AA0G15BankConnectDataO0D0VtFZ_0(v67, v34);

  v36 = [a1 actionsObject];
  sub_1B7205588(v34 + v48[17], v31, &qword_1EB990770);
  v38 = *(v66 + 48);
  if (v38(v31, 1, v32) != 1)
  {
    sub_1B777C2DC(v31, v18, type metadata accessor for RawBankConnectData.Actions);
    goto LABEL_42;
  }

  if (qword_1EB98E9C8 != -1)
  {
    goto LABEL_49;
  }

LABEL_39:
  v68 = __swift_project_value_buffer(v32, qword_1EBA45918);
  sub_1B777C214(v68, v18, type metadata accessor for RawBankConnectData.Actions);
  if (v38(v31, 1, v32) != 1)
  {
    sub_1B7205418(v31, &qword_1EB990770);
  }

LABEL_42:
  _s10FinanceKit25ManagedTransactionActionsC6update_5usingyAC_AA18RawBankConnectDataO0E0VtFZ_0(v36, v18);

  sub_1B777C27C(v18, type metadata accessor for RawBankConnectData.Actions);
  return (*(v76 + 8))(v37, v77);
}

id sub_1B777BED8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for RawBankConnectData.Transaction(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(v4) initWithContext_];
  v12 = sub_1B7800838();
  [v11 setTransactionId_];

  [v11 setIsTransactionIDStable_];
  type metadata accessor for ManagedTransaction();
  sub_1B777C214(a1, v10, type metadata accessor for RawBankConnectData.Transaction);
  v13 = a2;
  v14 = a3;
  v15 = sub_1B7719F1C(v10, v13, v14);

  [v11 setPublicTransactionObject_];
  v16 = sub_1B7800838();
  v17 = [v13 mutableSetValueForKeyPath_];

  [v17 addObject_];
  type metadata accessor for ManagedTransactionActions();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  [v11 setActionsObject_];

  _s10FinanceKit26ManagedInternalTransactionC6update_07withRawE0yAC_AA0H15BankConnectDataO0E0VtFZ_0(v11, a1);
  sub_1B777C27C(a1, type metadata accessor for RawBankConnectData.Transaction);
  return v11;
}

double keypath_get_49Tm@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1B777C214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B777C27C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B777C2DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B777C37C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BankConnectWebServiceAccountsRequest.init(using:fraudAssessment:userPresence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BankConnectWebServiceAccountsRequest(0);
  v11 = (a5 + *(v10 + 20));
  sub_1B777C37C(a1, a5, type metadata accessor for BankConnectWebServiceAccountsRequest.ConsentType);
  *v11 = a2;
  v11[1] = a3;
  return sub_1B777C37C(a4, a5 + *(v10 + 24), type metadata accessor for UserPresence);
}

uint64_t sub_1B777C518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  sub_1B777C37C(a1, a6, type metadata accessor for BankConnectConsent);
  v11 = a5(0);
  v12 = (a6 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  return sub_1B777C37C(a4, a6 + *(v11 + 24), type metadata accessor for UserPresence);
}

uint64_t BankConnectWebServiceAccountsRequest.fraudAssessment.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectWebServiceAccountsRequest(0) + 20));

  return v1;
}

uint64_t BankConnectWebServiceAccountsRequest.fraudAssessment.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectWebServiceAccountsRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1B777C73C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B777C7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t BankConnectWebServiceAccountsRequest.jsonBody.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BankConnectWebServiceAccountsRequest(0) + 20));
  v5 = *v3;
  v4 = v3[1];

  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t BankConnectWebServiceAccountsRequest.makeAdditionalHTTPHeaderFields()()
{
  v2 = v0;
  v3 = type metadata accessor for RawBankConnectData.Consent(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FE968();
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankConnectConsent();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BankConnectWebServiceAccountsRequest.ConsentType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B777C73C(v2, v13, type metadata accessor for BankConnectWebServiceAccountsRequest.ConsentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B777C37C(v13, v5, type metadata accessor for RawBankConnectData.Consent);
    v65 = v3;
    v66 = sub_1B778684C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
    sub_1B777C73C(v5, boxed_opaque_existential_1, type metadata accessor for RawBankConnectData.Consent);
    __swift_project_boxed_opaque_existential_1(v64, v65);
    sub_1B77FE9B8();
    swift_allocObject();
    sub_1B77FE9A8();
    if (qword_1EB98E9C0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_1EB991BE8);
    (*(v63 + 16))(v62, v15, v6);
    sub_1B77FE988();
    v16 = sub_1B77FE998();
    if (v1)
    {
      v18 = type metadata accessor for RawBankConnectData.Consent;
      v19 = v5;
LABEL_10:
      sub_1B7786894(v19, v18);

      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    v61 = v2;
    v39 = v16;
    v40 = v17;

    v41 = sub_1B77FF5A8();
    v43 = v42;
    sub_1B720A388(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v44 = sub_1B723E73C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v44 = sub_1B723E73C((v45 > 1), v46 + 1, 1, v44);
    }

    v48 = type metadata accessor for RawBankConnectData.Consent;
    v49 = v5;
  }

  else
  {
    v59 = v6;
    v60 = v1;
    v61 = v2;
    sub_1B777C37C(v13, v10, type metadata accessor for BankConnectConsent);
    v20 = v8[6];
    v21 = &v10[v8[5]];
    v22 = *v21;
    v57 = *(v21 + 1);
    v58 = v22;
    v65 = v3;
    v66 = sub_1B778684C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent);
    v23 = __swift_allocate_boxed_opaque_existential_1(v64);
    v24 = v3[5];
    v25 = sub_1B77FF988();
    v26 = *(*(v25 - 8) + 16);
    v26(v23 + v24, &v10[v20], v25);
    v26(v23 + v3[6], &v10[v8[7]], v25);
    v27 = *&v10[v8[9]];
    v28 = &v10[v8[10]];
    v29 = *v28;
    v30 = *(v28 + 1);
    v31 = v57;
    *v23 = v58;
    v23[1] = v31;
    *(v23 + v3[7]) = v27;
    v32 = (v23 + v3[8]);
    *v32 = v29;
    v32[1] = v30;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    sub_1B77FE9B8();
    swift_allocObject();

    sub_1B77FE9A8();
    if (qword_1EB98E9C0 != -1)
    {
      swift_once();
    }

    v33 = v59;
    v34 = __swift_project_value_buffer(v59, qword_1EB991BE8);
    (*(v63 + 16))(v62, v34, v33);
    sub_1B77FE988();
    v35 = v60;
    v36 = sub_1B77FE998();
    if (v35)
    {
      v18 = type metadata accessor for BankConnectConsent;
      v19 = v10;
      goto LABEL_10;
    }

    v50 = v36;
    v51 = v37;

    v41 = sub_1B77FF5A8();
    v43 = v52;
    sub_1B720A388(v50, v51);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v44 = sub_1B723E73C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v46 = *(v44 + 2);
    v53 = *(v44 + 3);
    v47 = v46 + 1;
    if (v46 >= v53 >> 1)
    {
      v44 = sub_1B723E73C((v53 > 1), v46 + 1, 1, v44);
    }

    v48 = type metadata accessor for BankConnectConsent;
    v49 = v10;
  }

  sub_1B7786894(v49, v48);
  *(v44 + 2) = v47;
  v54 = &v44[32 * v46];
  *(v54 + 4) = 0x746E65736E6F43;
  *(v54 + 5) = 0xE700000000000000;
  *(v54 + 6) = v41;
  *(v54 + 7) = v43;
  v67 = v44;
  v55 = type metadata accessor for BankConnectWebServiceAccountsRequest(0);
  v56 = sub_1B751B72C(v61 + *(v55 + 24));
  sub_1B7244198(v56);
  return v67;
}

uint64_t sub_1B777CFA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v6 = *v4;
  v5 = v4[1];

  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1B777D014(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v172 = a1;
  v173 = a2;
  v162 = a4;
  v5 = type metadata accessor for FinanceNetworkError();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v168 = (&v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v169 = (&v161 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v170 = (&v161 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v161 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v171 = &v161 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v167 = (&v161 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v165 = (&v161 - v19);
  v166 = type metadata accessor for RawBankConnectData.Consent(0);
  v20 = MEMORY[0x1EEE9AC00](v166);
  v22 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v161 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v164 = &v161 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v163 = &v161 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v161 = &v161 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v161 - v32;
  v34 = type metadata accessor for BankConnectResponseHeaders();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_1B77FE8B8();
  v177 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v46 = v45;
    v47 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v46 = v47;
    v46[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v39 = v38;
  v40 = a3;
  v41 = [v39 statusCode];
  if (v41 > 402)
  {
    if (v41 != 403)
    {
      if (v41 == 429)
      {
        v49 = v176;
        sub_1B777EE54();
        if (!v49)
        {
          swift_willThrow();
        }

        return;
      }

LABEL_15:
      *v169 = v41;
      swift_storeEnumTagMultiPayload();
      v50 = type metadata accessor for BankConnectErrorWithConsent(0);
      sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
      v51 = swift_allocError();
      v172 = v52;
      v53 = v40;
      v54 = sub_1B7800838();
      v55 = [v39 valueForHTTPHeaderField_];

      if (v55)
      {
        v173 = v51;
        sub_1B7800868();

        v56 = sub_1B77FF548();
        v58 = v57;

        if (v58 >> 60 == 15)
        {
          sub_1B7280708();
          v59 = swift_allocError();
          *v60 = 3;
          swift_willThrow();
        }

        else
        {
          sub_1B77FE8F8();
          swift_allocObject();
          sub_1B77FE8E8();
          if (qword_1EB98E9B0 != -1)
          {
            swift_once();
          }

          v115 = v174;
          v116 = __swift_project_value_buffer(v174, qword_1EB991BC8);
          (*(v177 + 16))(v175, v116, v115);
          sub_1B77FE8C8();
          sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
          v117 = v176;
          sub_1B77FE8D8();
          if (!v117)
          {

            sub_1B72380B8(v56, v58);

            v134 = v172;
            sub_1B777C37C(v25, v172, type metadata accessor for RawBankConnectData.Consent);
            sub_1B777C37C(v169, v134 + *(v50 + 20), type metadata accessor for FinanceNetworkError);
            swift_willThrow();

            return;
          }

          sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
          v59 = swift_allocError();
          *v118 = v117;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1B72380B8(v56, v58);
        }

        v51 = v173;
      }

      else
      {
        sub_1B7280708();
        v59 = swift_allocError();
        *v81 = 0;
        swift_willThrow();
      }

      sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      v119 = v169;
      sub_1B777C73C(v169, v120, type metadata accessor for FinanceNetworkError);
      swift_willThrow();

      sub_1B7786894(v119, type metadata accessor for FinanceNetworkError);
      v121 = v51;
      v122 = v50;
LABEL_60:
      MEMORY[0x1B8CA76D0](v121, v122);
      return;
    }

    v169 = v5;
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v64 = v174;
    v65 = __swift_project_value_buffer(v174, qword_1EB991BC8);
    v66 = *(v177 + 16);
    v177 += 16;
    v168 = v66;
    (v66)(v175, v65, v64);
    sub_1B77FE8C8();
    sub_1B7280970();
    v67 = v176;
    sub_1B77FE8D8();
    if (v67)
    {
    }

    else
    {

      if (v180 == 1)
      {
        goto LABEL_27;
      }

      if (v180 == 2)
      {
        sub_1B72809C4();
        *v14 = swift_allocError();
        goto LABEL_27;
      }
    }

    *v14 = 403;
LABEL_27:
    swift_storeEnumTagMultiPayload();
    v68 = v171;
    sub_1B777C37C(v14, v171, type metadata accessor for FinanceNetworkError);
    sub_1B777C73C(v68, v170, type metadata accessor for FinanceNetworkError);
    v69 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v176 = v69;
    v70 = swift_allocError();
    v72 = v71;
    v73 = v40;
    v74 = sub_1B7800838();
    v75 = [v39 valueForHTTPHeaderField_];

    if (v75)
    {
      v172 = v72;
      v173 = v70;
      sub_1B7800868();

      v76 = sub_1B77FF548();
      v78 = v77;

      if (v78 >> 60 != 15)
      {
        swift_allocObject();
        sub_1B77FE8E8();
        (v168)(v175, v65, v174);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v123 = v164;
        sub_1B77FE8D8();

        sub_1B72380B8(v76, v78);

        v135 = v172;
        sub_1B777C37C(v123, v172, type metadata accessor for RawBankConnectData.Consent);
        sub_1B777C37C(v170, v135 + v176[5], type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        sub_1B7786894(v171, type metadata accessor for FinanceNetworkError);
        return;
      }

      sub_1B7280708();
      v79 = swift_allocError();
      *v80 = 3;
      swift_willThrow();
      v70 = v173;
    }

    else
    {
      sub_1B7280708();
      v79 = swift_allocError();
      *v113 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v124 = v170;
    sub_1B777C73C(v170, v125, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v124, type metadata accessor for FinanceNetworkError);
    sub_1B7786894(v171, type metadata accessor for FinanceNetworkError);

    v121 = v70;
    v122 = v176;
    goto LABEL_60;
  }

  if (v41 == 200)
  {
    v169 = v5;
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v174, qword_1EB991BC8);
    v62 = v177 + 16;
    v170 = *(v177 + 16);
    v171 = v61;
    v170(v175);
    sub_1B77FE8C8();
    sub_1B77867F8();
    v63 = v176;
    sub_1B77FE8D8();
    if (!v63)
    {

      v101 = v178;
      static BankConnectResponseHeadersParser.parse(httpURLResponse:)(v39, v36);

      v132 = v162;
      *v162 = v101;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D78);
      sub_1B777C37C(v36, v132 + *(v133 + 28), type metadata accessor for BankConnectResponseHeaders);
      return;
    }

    v177 = v62;

    *v168 = v63;
    swift_storeEnumTagMultiPayload();
    v102 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v176 = swift_allocError();
    v172 = v103;
    v104 = v40;
    v105 = v63;
    v106 = sub_1B7800838();
    v107 = [v39 valueForHTTPHeaderField_];

    if (v107)
    {
      v173 = v102;
      sub_1B7800868();

      v108 = sub_1B77FF548();
      v110 = v109;

      if (v110 >> 60 != 15)
      {
        swift_allocObject();
        sub_1B77FE8E8();
        (v170)(v175, v171, v174);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        sub_1B77FE8D8();

        sub_1B72380B8(v108, v110);

        v136 = v172;
        sub_1B777C37C(v22, v172, type metadata accessor for RawBankConnectData.Consent);
        sub_1B777C37C(v168, v136 + *(v173 + 5), type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        return;
      }

      sub_1B7280708();
      v111 = swift_allocError();
      *v112 = 3;
      swift_willThrow();
      v102 = v173;
    }

    else
    {
      sub_1B7280708();
      v111 = swift_allocError();
      *v114 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v127 = v168;
    sub_1B777C73C(v168, v128, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v127, type metadata accessor for FinanceNetworkError);
    v121 = v176;
    v122 = v102;
    goto LABEL_60;
  }

  if (v41 != 400)
  {
    goto LABEL_15;
  }

  v171 = v39;
  v169 = v5;
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v174, qword_1EB991BC8);
  v43 = *(v177 + 16);
  v170 = v42;
  v177 += 16;
  v43(v175);
  sub_1B77FE8C8();
  sub_1B7280970();
  v44 = v176;
  sub_1B77FE8D8();
  if (v44)
  {

LABEL_35:
    *v167 = 400;
    swift_storeEnumTagMultiPayload();
    v89 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v90 = swift_allocError();
    v173 = v91;
    v92 = v40;
    v93 = sub_1B7800838();
    v94 = [v171 valueForHTTPHeaderField_];

    if (v94)
    {
      v176 = v89;
      v95 = v43;
      sub_1B7800868();

      v96 = sub_1B77FF548();
      v98 = v97;

      if (v98 >> 60 != 15)
      {
        swift_allocObject();
        sub_1B77FE8E8();
        (v95)(v175, v170, v174);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v129 = v163;
        sub_1B77FE8D8();

        sub_1B72380B8(v96, v98);

        v137 = v129;
        v138 = v173;
        sub_1B777C37C(v137, v173, type metadata accessor for RawBankConnectData.Consent);
        sub_1B777C37C(v167, v138 + v176[5], type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        return;
      }

      sub_1B7280708();
      v99 = swift_allocError();
      *v100 = 3;
      swift_willThrow();
      v89 = v176;
    }

    else
    {
      sub_1B7280708();
      v99 = swift_allocError();
      *v126 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v130 = v167;
    sub_1B777C73C(v167, v131, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v130, type metadata accessor for FinanceNetworkError);
    v121 = v90;
    v122 = v89;
    goto LABEL_60;
  }

  if (v179 != 3)
  {
    goto LABEL_35;
  }

  v82 = sub_1B7800838();
  v83 = [v171 valueForHTTPHeaderField_];

  if (v83)
  {
    v173 = v43;
    v176 = v40;
    sub_1B7800868();

    v84 = sub_1B77FF548();
    v86 = v85;

    if (v86 >> 60 != 15)
    {
      swift_allocObject();
      sub_1B77FE8E8();
      (v173)(v175, v170, v174);
      sub_1B77FE8C8();
      sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
      sub_1B77FE8D8();

      sub_1B72380B8(v84, v86);

      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D78);
      v156 = v162;
      v157 = v162 + *(v155 + 28);
      sub_1B777C37C(v33, v157, type metadata accessor for RawBankConnectData.Consent);
      v158 = v157 + *(v34 + 20);
      *v158 = 0;
      *(v158 + 2) = 1;
      *v156 = MEMORY[0x1E69E7CC0];
      return;
    }

    sub_1B7280708();
    v87 = swift_allocError();
    *v88 = 3;
    swift_willThrow();
    v40 = v176;
    v43 = v173;
  }

  else
  {
    sub_1B7280708();
    v87 = swift_allocError();
    *v139 = 0;
    swift_willThrow();
  }

  *v165 = v87;
  swift_storeEnumTagMultiPayload();
  v140 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
  v176 = swift_allocError();
  v172 = v141;
  v142 = v40;
  v143 = v87;
  v144 = sub_1B7800838();
  v145 = [v171 valueForHTTPHeaderField_];

  if (!v145)
  {
    sub_1B7280708();
    v149 = swift_allocError();
    *v151 = 0;
    swift_willThrow();
    goto LABEL_70;
  }

  v173 = v140;
  sub_1B7800868();

  v146 = sub_1B77FF548();
  v148 = v147;

  if (v148 >> 60 == 15)
  {
    sub_1B7280708();
    v149 = swift_allocError();
    *v150 = 3;
    swift_willThrow();
    v140 = v173;
LABEL_70:
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v153 = v165;
    sub_1B777C73C(v165, v154, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v153, type metadata accessor for FinanceNetworkError);
    v121 = v176;
    v122 = v140;
    goto LABEL_60;
  }

  swift_allocObject();
  sub_1B77FE8E8();
  (v43)(v175, v170, v174);
  sub_1B77FE8C8();
  sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v152 = v161;
  sub_1B77FE8D8();

  sub_1B72380B8(v146, v148);

  v159 = v152;
  v160 = v172;
  sub_1B777C37C(v159, v172, type metadata accessor for RawBankConnectData.Consent);
  sub_1B777C37C(v165, v160 + *(v173 + 5), type metadata accessor for FinanceNetworkError);
  swift_willThrow();
}

uint64_t sub_1B777EE54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v93 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v84 - v4;
  v5 = sub_1B77FE8B8();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for RawBankConnectData.Consent(0);
  v7 = MEMORY[0x1EEE9AC00](v89);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v84 - v9;
  v10 = type metadata accessor for FinanceNetworkError();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v96 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v84 - v13;
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v84 - v23;
  v24 = sub_1B7800838();
  v25 = [v0 valueForHTTPHeaderField_];

  if (v25)
  {
    sub_1B7800868();
    v92 = v15;

    v26 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v91 = v16;
    v27 = v26;
    v28 = sub_1B7800838();
    v15 = v92;

    v29 = [v27 dateFromString_];

    v16 = v91;
    if (v29)
    {
      sub_1B77FF928();

      v30 = v94;
      (*(v16 + 32))(v94, v22, v15);
      v31 = sub_1B7785E60();
      if ((v31 & 0x10000) == 0)
      {
        v32 = v31;
        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48);
        (*(v16 + 16))(v14, v30, v15);
        *&v14[v33] = v32;
        swift_storeEnumTagMultiPayload();
        v34 = type metadata accessor for BankConnectErrorWithConsent(0);
        sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
        v35 = swift_allocError();
        v37 = v36;
        v38 = v0;
        v39 = sub_1B7800838();
        v40 = [v38 valueForHTTPHeaderField_];

        if (v40)
        {
          v96 = v14;
          sub_1B7800868();

          v41 = sub_1B77FF548();
          v43 = v42;

          if (v43 >> 60 == 15)
          {
            sub_1B7280708();
            v44 = swift_allocError();
            *v45 = 3;
            swift_willThrow();
          }

          else
          {
            v95 = v37;
            sub_1B77FE8F8();
            swift_allocObject();
            sub_1B77FE8E8();
            if (qword_1EB98E9B0 != -1)
            {
              swift_once();
            }

            v77 = v88;
            v78 = __swift_project_value_buffer(v88, qword_1EB991BC8);
            (*(v87 + 16))(v86, v78, v77);
            sub_1B77FE8C8();
            sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
            v79 = v84;
            v80 = v90;
            sub_1B77FE8D8();
            if (!v80)
            {

              sub_1B72380B8(v41, v43);

              v83 = v95;
              sub_1B777C37C(v79, v95, type metadata accessor for RawBankConnectData.Consent);
              sub_1B777C37C(v96, v83 + *(v34 + 20), type metadata accessor for FinanceNetworkError);
              (*(v91 + 8))(v94, v92);
              return v35;
            }

            sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
            v44 = swift_allocError();
            *v81 = v80;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_1B72380B8(v41, v43);
          }

          v14 = v96;
          v30 = v94;
        }

        else
        {
          sub_1B7280708();
          v44 = swift_allocError();
          *v76 = 0;
          swift_willThrow();
        }

        sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        sub_1B777C73C(v14, v82, type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        sub_1B7786894(v14, type metadata accessor for FinanceNetworkError);
        (*(v91 + 8))(v30, v92);
        v73 = v35;
        v74 = v34;
        goto LABEL_20;
      }

      (*(v16 + 8))(v30, v15);
    }
  }

  v46 = v95;
  (*(v16 + 56))(v95, 1, 1, v15);
  v47 = v16;
  v48 = sub_1B7800838();
  v49 = [v0 valueForHTTPHeaderField_];

  if (v49)
  {
    v50 = sub_1B7800868();
    v52 = v51;

    sub_1B77FF938();
    v53 = v93;
    sub_1B7404B00(v50, v52, v93);

    (*(v47 + 8))(v19, v15);
    sub_1B7205418(v46, &qword_1EB98EBD0);
    sub_1B7205340(v53, v46);
  }

  sub_1B7280900(v46, v96);
  swift_storeEnumTagMultiPayload();
  v54 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
  v34 = swift_allocError();
  v56 = v55;
  v57 = v0;
  v58 = sub_1B7800838();
  v59 = [v57 valueForHTTPHeaderField_];

  if (v59)
  {
    v94 = v10;
    sub_1B7800868();

    v60 = sub_1B77FF548();
    v62 = v61;

    if (v62 >> 60 == 15)
    {
      sub_1B7280708();
      v63 = swift_allocError();
      *v64 = 3;
      swift_willThrow();
    }

    else
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v66 = v88;
      v67 = __swift_project_value_buffer(v88, qword_1EB991BC8);
      (*(v87 + 16))(v86, v67, v66);
      sub_1B77FE8C8();
      sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
      v68 = v85;
      v69 = v90;
      sub_1B77FE8D8();
      if (!v69)
      {

        sub_1B72380B8(v60, v62);

        sub_1B777C37C(v68, v56, type metadata accessor for RawBankConnectData.Consent);
        sub_1B777C37C(v96, v56 + *(v54 + 20), type metadata accessor for FinanceNetworkError);
        sub_1B7205418(v95, &qword_1EB98EBD0);
        return v34;
      }

      sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      v63 = swift_allocError();
      *v70 = v69;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1B72380B8(v60, v62);
    }

    v46 = v95;
  }

  else
  {
    sub_1B7280708();
    v63 = swift_allocError();
    *v65 = 0;
    swift_willThrow();
  }

  sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
  swift_allocError();
  v71 = v96;
  sub_1B777C73C(v96, v72, type metadata accessor for FinanceNetworkError);
  swift_willThrow();

  sub_1B7786894(v71, type metadata accessor for FinanceNetworkError);
  sub_1B7205418(v46, &qword_1EB98EBD0);
  v73 = v34;
  v74 = v54;
LABEL_20:
  MEMORY[0x1B8CA76D0](v73, v74);
  return v34;
}

uint64_t BankConnectWebServiceAccountRequest.jsonBody.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BankConnectWebServiceAccountRequest(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = 12630;
  a1[3] = 0xE200000000000000;
}

uint64_t sub_1B777FDC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = 12630;
  a2[3] = 0xE200000000000000;
}

void sub_1B777FE08(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a1;
  v108 = a2;
  v101 = a4;
  v104 = type metadata accessor for RawBankConnectData.Consent(0);
  v5 = MEMORY[0x1EEE9AC00](v104);
  v102 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v100 - v10;
  v11 = type metadata accessor for FinanceNetworkError();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v106 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v109 = (&v100 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v110 = &v100 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v100 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v100 - v21;
  v22 = type metadata accessor for BankConnectResponseHeaders();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1B77FE8B8();
  v115 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for RawBankConnectData.Account(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v100 - v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v41 = v40;
    v42 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v41 = v42;
    v41[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v33 = v32;
  v34 = a3;
  v35 = [v33 statusCode];
  if (v35 == 429)
  {
    v58 = v114;
    sub_1B777EE54();
    if (v58)
    {

      return;
    }

    goto LABEL_46;
  }

  v105 = v11;
  if (v35 == 403)
  {
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v44 = v113;
    v45 = __swift_project_value_buffer(v113, qword_1EB991BC8);
    v109 = *(v115 + 16);
    v109(v112, v45, v44);
    sub_1B77FE8C8();
    sub_1B7280970();
    v46 = v114;
    sub_1B77FE8D8();
    if (v46)
    {

LABEL_14:
      *v20 = 403;
      goto LABEL_15;
    }

    if (v116 != 1)
    {
      if (v116 != 2)
      {
        goto LABEL_14;
      }

      sub_1B72809C4();
      *v20 = swift_allocError();
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
    v47 = v111;
    sub_1B777C37C(v20, v111, type metadata accessor for FinanceNetworkError);
    sub_1B777C73C(v47, v110, type metadata accessor for FinanceNetworkError);
    v48 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v115 = v48;
    v114 = swift_allocError();
    v108 = v49;
    v50 = v34;
    v51 = sub_1B7800838();
    v52 = [v33 valueForHTTPHeaderField_];

    if (v52)
    {
      sub_1B7800868();

      v53 = sub_1B77FF548();
      v55 = v54;

      if (v55 >> 60 != 15)
      {
        swift_allocObject();
        sub_1B77FE8E8();
        v109(v112, v45, v113);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v85 = v103;
        sub_1B77FE8D8();

        sub_1B72380B8(v53, v55);

        v98 = v108;
        sub_1B777C37C(v85, v108, type metadata accessor for RawBankConnectData.Consent);
        sub_1B777C37C(v110, v98 + *(v115 + 20), type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        sub_1B7786894(v111, type metadata accessor for FinanceNetworkError);
        return;
      }

      sub_1B7280708();
      v56 = swift_allocError();
      *v57 = 3;
    }

    else
    {
      sub_1B7280708();
      v56 = swift_allocError();
      *v70 = 0;
    }

    swift_willThrow();
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v86 = v110;
    sub_1B777C73C(v110, v87, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v86, type metadata accessor for FinanceNetworkError);
    sub_1B7786894(v111, type metadata accessor for FinanceNetworkError);

    MEMORY[0x1B8CA76D0](v114, v115);
    return;
  }

  if (v35 != 200)
  {
    *v109 = v35;
    swift_storeEnumTagMultiPayload();
    v59 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v60 = swift_allocError();
    v62 = v61;
    v34 = v34;
    v63 = sub_1B7800838();
    v64 = [v33 valueForHTTPHeaderField_];

    if (!v64)
    {
      sub_1B7280708();
      v68 = swift_allocError();
      *v83 = 0;
      swift_willThrow();
LABEL_42:
      sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      v92 = v109;
      sub_1B777C73C(v109, v93, type metadata accessor for FinanceNetworkError);
      swift_willThrow();

      sub_1B7786894(v92, type metadata accessor for FinanceNetworkError);
      MEMORY[0x1B8CA76D0](v60, v59);
      return;
    }

    v111 = v60;
    sub_1B7800868();

    v65 = sub_1B77FF548();
    v67 = v66;

    if (v67 >> 60 == 15)
    {
      sub_1B7280708();
      v68 = swift_allocError();
      *v69 = 3;
      swift_willThrow();
LABEL_41:
      v60 = v111;
      goto LABEL_42;
    }

    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v88 = v113;
    v89 = __swift_project_value_buffer(v113, qword_1EB991BC8);
    (*(v115 + 16))(v112, v89, v88);
    sub_1B77FE8C8();
    sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
    v90 = v114;
    sub_1B77FE8D8();
    if (v90)
    {

      sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      v68 = swift_allocError();
      *v91 = v90;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1B72380B8(v65, v67);
      goto LABEL_41;
    }

    sub_1B72380B8(v65, v67);

    sub_1B777C37C(v9, v62, type metadata accessor for RawBankConnectData.Consent);
    sub_1B777C37C(v109, v62 + *(v59 + 20), type metadata accessor for FinanceNetworkError);
LABEL_46:
    swift_willThrow();

    return;
  }

  v111 = v34;
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v113, qword_1EB991BC8);
  v37 = *(v115 + 16);
  v109 = v36;
  v115 += 16;
  v103 = v37;
  (v37)(v112);
  sub_1B77FE8C8();
  sub_1B778684C(&qword_1EB996DB0, type metadata accessor for RawBankConnectData.Account);
  v38 = v114;
  sub_1B77FE8D8();
  if (!v38)
  {

    sub_1B777C73C(v31, v29, type metadata accessor for RawBankConnectData.Account);
    static BankConnectResponseHeadersParser.parse(httpURLResponse:)(v33, v24);
    sub_1B7786894(v31, type metadata accessor for RawBankConnectData.Account);

    v96 = v101;
    sub_1B777C37C(v29, v101, type metadata accessor for RawBankConnectData.Account);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992DA0);
    sub_1B777C37C(v24, v96 + *(v97 + 28), type metadata accessor for BankConnectResponseHeaders);
    return;
  }

  v39 = v106;
  *v106 = v38;
  swift_storeEnumTagMultiPayload();
  v71 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
  v114 = v71;
  v110 = swift_allocError();
  v73 = v72;
  v74 = v111;
  v75 = v38;
  v76 = sub_1B7800838();
  v77 = [v33 valueForHTTPHeaderField_];

  if (!v77)
  {
    sub_1B7280708();
    v81 = swift_allocError();
    *v84 = 0;
    goto LABEL_35;
  }

  v111 = v73;
  sub_1B7800868();

  v78 = sub_1B77FF548();
  v80 = v79;

  if (v80 >> 60 == 15)
  {
    sub_1B7280708();
    v81 = swift_allocError();
    *v82 = 3;
LABEL_35:
    swift_willThrow();
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B777C73C(v39, v95, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v39, type metadata accessor for FinanceNetworkError);
    MEMORY[0x1B8CA76D0](v110, v114);
    return;
  }

  swift_allocObject();
  sub_1B77FE8E8();
  (v103)(v112, v109, v113);
  sub_1B77FE8C8();
  sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v94 = v102;
  sub_1B77FE8D8();

  sub_1B72380B8(v78, v80);

  v99 = v111;
  sub_1B777C37C(v94, v111, type metadata accessor for RawBankConnectData.Consent);
  sub_1B777C37C(v39, &v99[*(v114 + 20)], type metadata accessor for FinanceNetworkError);
  swift_willThrow();
}

uint64_t sub_1B7781158(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_1B77811B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.startTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0) + 28);

  return sub_1B7280900(v3, a1);
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.endTime.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0) + 28);

  return sub_1B72DFF88(a1, v3);
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.cursor.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0) + 32));

  return v1;
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.cursor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.init(consent:accountId:startTime:endTime:cursor:userPresence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0);
  v15 = v14[7];
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  (*(v17 + 56))(a9 + v15, 1, 1, v16);
  v18 = (a9 + v14[8]);
  sub_1B777C37C(a1, a9, type metadata accessor for BankConnectConsent);
  v19 = (a9 + v14[5]);
  *v19 = a2;
  v19[1] = a3;
  (*(v17 + 32))(a9 + v14[6], a4, v16);
  sub_1B72DFF88(a5, a9 + v15);
  *v18 = a6;
  v18[1] = a7;
  return sub_1B777C37C(a8, a9 + v14[9], type metadata accessor for UserPresence);
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.jsonBody.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0);
  v7 = v6[6];
  v8 = (v1 + v6[5]);
  v9 = v8[1];
  v21 = *v8;
  v10 = type metadata accessor for RawBankConnectData.TransactionsRequestBody(0);
  v11 = v10[5];
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a1[v11], v1 + v7, v12);
  sub_1B7280900(v1 + v6[7], v5);
  v14 = (v1 + v6[8]);
  v16 = *v14;
  v15 = v14[1];
  v17 = v10[6];
  (*(v13 + 56))(&a1[v17], 1, 1, v12);
  v18 = &a1[v10[7]];
  *a1 = v21;
  *(a1 + 1) = v9;

  result = sub_1B72DFF88(v5, &a1[v17]);
  *v18 = v16;
  *(v18 + 1) = v15;
  return result;
}

uint64_t BankConnectWebServiceAccountTransactionsRequest.makeAdditionalHTTPHeaderFields()()
{
  v1 = sub_1B77FE968();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B7807CD0;
  v3 = type metadata accessor for BankConnectConsent();
  v4 = v3[6];
  v5 = (v0 + v3[5]);
  v6 = *v5;
  v32 = v5[1];
  v33 = v6;
  v7 = type metadata accessor for RawBankConnectData.Consent(0);
  v40 = v7;
  v41 = sub_1B778684C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v9 = v7[5];
  v10 = sub_1B77FF988();
  v11 = *(*(v10 - 8) + 16);
  v11(boxed_opaque_existential_1 + v9, v0 + v4, v10);
  v11(boxed_opaque_existential_1 + v7[6], v0 + v3[7], v10);
  v12 = v0;
  v13 = *(v0 + v3[9]);
  v14 = (v0 + v3[10]);
  v15 = *v14;
  v16 = v14[1];
  v17 = v32;
  *boxed_opaque_existential_1 = v33;
  boxed_opaque_existential_1[1] = v17;
  *(boxed_opaque_existential_1 + v7[7]) = v13;
  v18 = (boxed_opaque_existential_1 + v7[8]);
  *v18 = v15;
  v18[1] = v16;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v19 = v36;
  v20 = __swift_project_value_buffer(v36, qword_1EB991BE8);
  (*(v35 + 16))(v34, v20, v19);
  sub_1B77FE988();
  v21 = v37;
  v22 = sub_1B77FE998();
  v24 = v23;

  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    *(v38 + 16) = 0;
  }

  else
  {
    v26 = sub_1B77FF5A8();
    v28 = v27;
    sub_1B720A388(v22, v24);
    v29 = v38;
    *(v38 + 32) = 0x746E65736E6F43;
    v29[5] = 0xE700000000000000;
    v29[6] = v26;
    v29[7] = v28;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v42 = v29;
    v30 = type metadata accessor for BankConnectWebServiceAccountTransactionsRequest(0);
    v31 = sub_1B751B72C(v12 + *(v30 + 36));
    sub_1B7244198(v31);
    return v42;
  }
}

uint64_t sub_1B7781C50@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = a1[6];
  v9 = (v2 + a1[5]);
  v10 = v9[1];
  v22 = *v9;
  v11 = type metadata accessor for RawBankConnectData.TransactionsRequestBody(0);
  v12 = v11[5];
  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&a2[v12], v2 + v8, v13);
  sub_1B7280900(v2 + a1[7], v7);
  v15 = (v2 + a1[8]);
  v17 = *v15;
  v16 = v15[1];
  v18 = v11[6];
  (*(v14 + 56))(&a2[v18], 1, 1, v13);
  v19 = &a2[v11[7]];
  *a2 = v22;
  *(a2 + 1) = v10;

  result = sub_1B72DFF88(v7, &a2[v18]);
  *v19 = v17;
  *(v19 + 1) = v16;
  return result;
}

void sub_1B7781DF0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v106 = a1;
  v107 = a2;
  v102 = a4;
  v103 = type metadata accessor for RawBankConnectData.Consent(0);
  v5 = MEMORY[0x1EEE9AC00](v103);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v102 - v11;
  v13 = type metadata accessor for FinanceNetworkError();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v105 = (&v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v102 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v108 = (&v102 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v102 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v102 - v24;
  v25 = type metadata accessor for BankConnectResponseHeaders();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1B77FE8B8();
  v116 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v37 = v36;
    v38 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v37 = v38;
    v37[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v30 = v29;
  v31 = a3;
  v32 = [v30 statusCode];
  if (v32 == 429)
  {
    v55 = v112;
    sub_1B777EE54();
    if (!v55)
    {
      swift_willThrow();
    }

    return;
  }

  v104 = v13;
  if (v32 == 403)
  {
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v111, qword_1EB991BC8);
    v41 = *(v116 + 16);
    v105 = v40;
    v116 += 16;
    v102 = v41;
    v41(v110);
    sub_1B77FE8C8();
    sub_1B7280970();
    v42 = v112;
    sub_1B77FE8D8();
    if (v42)
    {
    }

    else
    {

      if (v113 == 1)
      {
        goto LABEL_15;
      }

      if (v113 == 2)
      {
        sub_1B72809C4();
        *v23 = swift_allocError();
        goto LABEL_15;
      }
    }

    *v23 = 403;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v43 = v109;
    sub_1B777C37C(v23, v109, type metadata accessor for FinanceNetworkError);
    sub_1B777C73C(v43, v108, type metadata accessor for FinanceNetworkError);
    v44 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v112 = v44;
    v45 = swift_allocError();
    v106 = v46;
    v47 = v31;
    v48 = sub_1B7800838();
    v49 = [v30 valueForHTTPHeaderField_];

    if (v49)
    {
      v107 = v45;
      sub_1B7800868();

      v50 = sub_1B77FF548();
      v52 = v51;

      if (v52 >> 60 != 15)
      {
        swift_allocObject();
        sub_1B77FE8E8();
        (v102)(v110, v105, v111);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        sub_1B77FE8D8();

        sub_1B72380B8(v50, v52);

        v99 = v106;
        sub_1B777C37C(v12, v106, type metadata accessor for RawBankConnectData.Consent);
        sub_1B777C37C(v108, v99 + v112[5], type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        sub_1B7786894(v109, type metadata accessor for FinanceNetworkError);
        return;
      }

      sub_1B7280708();
      v53 = swift_allocError();
      *v54 = 3;
      swift_willThrow();
      v45 = v107;
    }

    else
    {
      sub_1B7280708();
      v53 = swift_allocError();
      *v67 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v84 = v108;
    sub_1B777C73C(v108, v85, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v84, type metadata accessor for FinanceNetworkError);
    sub_1B7786894(v109, type metadata accessor for FinanceNetworkError);

    v86 = v45;
    v87 = v112;
    goto LABEL_46;
  }

  if (v32 != 200)
  {
    *v18 = v32;
    swift_storeEnumTagMultiPayload();
    v56 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v57 = swift_allocError();
    v108 = v58;
    v59 = v31;
    v60 = sub_1B7800838();
    v61 = [v30 valueForHTTPHeaderField_];

    if (v61)
    {
      v109 = v57;
      sub_1B7800868();

      v62 = sub_1B77FF548();
      v64 = v63;

      if (v64 >> 60 == 15)
      {
        sub_1B7280708();
        v65 = swift_allocError();
        *v66 = 3;
        swift_willThrow();
      }

      else
      {
        sub_1B77FE8F8();
        swift_allocObject();
        sub_1B77FE8E8();
        if (qword_1EB98E9B0 != -1)
        {
          swift_once();
        }

        v88 = v111;
        v89 = __swift_project_value_buffer(v111, qword_1EB991BC8);
        (*(v116 + 16))(v110, v89, v88);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v90 = v112;
        sub_1B77FE8D8();
        if (!v90)
        {

          sub_1B72380B8(v62, v64);

          v100 = v108;
          sub_1B777C37C(v10, v108, type metadata accessor for RawBankConnectData.Consent);
          sub_1B777C37C(v18, v100 + *(v56 + 20), type metadata accessor for FinanceNetworkError);
          swift_willThrow();

          return;
        }

        sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        v65 = swift_allocError();
        *v91 = v90;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1B72380B8(v62, v64);
      }

      v57 = v109;
    }

    else
    {
      sub_1B7280708();
      v65 = swift_allocError();
      *v82 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B777C73C(v18, v92, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v18, type metadata accessor for FinanceNetworkError);
    v86 = v57;
    v87 = v56;
LABEL_46:
    MEMORY[0x1B8CA76D0](v86, v87);
    return;
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v111, qword_1EB991BC8);
  v108 = *(v116 + 16);
  v109 = v33;
  v116 += 16;
  v108(v110);
  sub_1B77FE8C8();
  sub_1B77866FC();
  v34 = v112;
  sub_1B77FE8D8();
  v35 = v34;
  if (!v34)
  {
    v112 = v31;

    v68 = v113;
    v69 = v114;
    v70 = v115;
    static BankConnectResponseHeadersParser.parse(httpURLResponse:)(v30, v27);

    v97 = v102;
    *v102 = v68;
    v97[1] = v69;
    v97[2] = v70;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DCD0);
    sub_1B777C37C(v27, v97 + *(v98 + 28), type metadata accessor for BankConnectResponseHeaders);
    return;
  }

  v107 = 0;
  *v105 = v34;
  swift_storeEnumTagMultiPayload();
  v71 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
  v112 = swift_allocError();
  v106 = v72;
  v73 = v31;
  v74 = v34;
  v75 = sub_1B7800838();
  v76 = [v30 valueForHTTPHeaderField_];

  if (!v76)
  {
    sub_1B7280708();
    v80 = swift_allocError();
    *v83 = 0;
    goto LABEL_34;
  }

  sub_1B7800868();

  v77 = sub_1B77FF548();
  v79 = v78;

  if (v79 >> 60 == 15)
  {
    sub_1B7280708();
    v80 = swift_allocError();
    *v81 = 3;
LABEL_34:
    swift_willThrow();
LABEL_45:
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v95 = v105;
    sub_1B777C73C(v105, v96, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v95, type metadata accessor for FinanceNetworkError);
    v86 = v112;
    v87 = v71;
    goto LABEL_46;
  }

  swift_allocObject();
  sub_1B77FE8E8();
  (v108)(v110, v109, v111);
  sub_1B77FE8C8();
  sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v93 = v107;
  sub_1B77FE8D8();
  if (v93)
  {

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    v80 = swift_allocError();
    *v94 = v93;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1B72380B8(v77, v79);
    goto LABEL_45;
  }

  sub_1B72380B8(v77, v79);

  v101 = v106;
  sub_1B777C37C(v7, v106, type metadata accessor for RawBankConnectData.Consent);
  sub_1B777C37C(v105, v101 + *(v71 + 20), type metadata accessor for FinanceNetworkError);
  swift_willThrow();
}

uint64_t sub_1B7783164(uint64_t (*a1)(void))
{
  v34 = a1;
  v2 = sub_1B77FE968();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1B7807CD0;
  v4 = type metadata accessor for BankConnectConsent();
  v5 = v4[6];
  v6 = (v1 + v4[5]);
  v7 = *v6;
  v35 = v6[1];
  v36 = v7;
  v8 = type metadata accessor for RawBankConnectData.Consent(0);
  v43 = v8;
  v44 = sub_1B778684C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v10 = v8[5];
  v11 = sub_1B77FF988();
  v12 = *(*(v11 - 8) + 16);
  v12(boxed_opaque_existential_1 + v10, v1 + v5, v11);
  v12(boxed_opaque_existential_1 + v8[6], v1 + v4[7], v11);
  v13 = v1;
  v14 = *(v1 + v4[9]);
  v15 = (v1 + v4[10]);
  v16 = *v15;
  v17 = v15[1];
  v18 = v35;
  *boxed_opaque_existential_1 = v36;
  boxed_opaque_existential_1[1] = v18;
  *(boxed_opaque_existential_1 + v8[7]) = v14;
  v19 = (boxed_opaque_existential_1 + v8[8]);
  *v19 = v16;
  v19[1] = v17;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v20 = v39;
  v21 = __swift_project_value_buffer(v39, qword_1EB991BE8);
  (*(v38 + 16))(v37, v21, v20);
  sub_1B77FE988();
  v22 = v40;
  v23 = sub_1B77FE998();
  v25 = v24;

  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    *(v41 + 16) = 0;
  }

  else
  {
    v27 = sub_1B77FF5A8();
    v29 = v28;
    sub_1B720A388(v23, v25);
    v30 = v41;
    *(v41 + 32) = 0x746E65736E6F43;
    v30[5] = 0xE700000000000000;
    v30[6] = v27;
    v30[7] = v29;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v45 = v30;
    v31 = v34(0);
    v32 = sub_1B751B72C(v13 + *(v31 + 24));
    sub_1B7244198(v32);
    return v45;
  }
}

void sub_1B77834F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void)@<X8>)
{
  v109 = a2;
  v108 = a1;
  v104 = a4;
  v105 = type metadata accessor for RawBankConnectData.Consent(0);
  v5 = MEMORY[0x1EEE9AC00](v105);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v103 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v103 - v11;
  v13 = type metadata accessor for FinanceNetworkError();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v107 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v103 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v110 = (&v103 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v103 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v103 - v24;
  v25 = type metadata accessor for BankConnectResponseHeaders();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1B77FE8B8();
  v125 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v38 = v37;
    v39 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v38 = v39;
    v38[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v30 = v29;
  v31 = a3;
  v32 = [v30 statusCode];
  if (v32 == 429)
  {
    v57 = v114;
    sub_1B777EE54();
    if (!v57)
    {
      swift_willThrow();
    }

    return;
  }

  v106 = v13;
  if (v32 == 403)
  {
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v113, qword_1EB991BC8);
    v43 = v125 + 16;
    v42 = *(v125 + 16);
    v107 = v41;
    v104 = v42;
    v42(v112);
    sub_1B77FE8C8();
    sub_1B7280970();
    v44 = v114;
    sub_1B77FE8D8();
    v125 = v43;
    if (v44)
    {
    }

    else
    {

      if (v120 == 1)
      {
        goto LABEL_15;
      }

      if (v120 == 2)
      {
        sub_1B72809C4();
        *v23 = swift_allocError();
        goto LABEL_15;
      }
    }

    *v23 = 403;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v45 = v111;
    sub_1B777C37C(v23, v111, type metadata accessor for FinanceNetworkError);
    sub_1B777C73C(v45, v110, type metadata accessor for FinanceNetworkError);
    v46 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v114 = v46;
    v47 = swift_allocError();
    v108 = v48;
    v49 = v31;
    v50 = sub_1B7800838();
    v51 = [v30 valueForHTTPHeaderField_];

    if (v51)
    {
      v109 = v47;
      sub_1B7800868();

      v52 = sub_1B77FF548();
      v54 = v53;

      if (v54 >> 60 != 15)
      {
        swift_allocObject();
        sub_1B77FE8E8();
        (v104)(v112, v107, v113);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        sub_1B77FE8D8();

        sub_1B72380B8(v52, v54);

        v100 = v108;
        sub_1B777C37C(v12, v108, type metadata accessor for RawBankConnectData.Consent);
        sub_1B777C37C(v110, v100 + *(v114 + 20), type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        sub_1B7786894(v111, type metadata accessor for FinanceNetworkError);
        return;
      }

      sub_1B7280708();
      v55 = swift_allocError();
      *v56 = 3;
      swift_willThrow();
      v47 = v109;
    }

    else
    {
      sub_1B7280708();
      v55 = swift_allocError();
      *v69 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v83 = v110;
    sub_1B777C73C(v110, v84, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v83, type metadata accessor for FinanceNetworkError);
    sub_1B7786894(v111, type metadata accessor for FinanceNetworkError);

    v85 = v47;
    v86 = v114;
    goto LABEL_46;
  }

  if (v32 != 200)
  {
    *v18 = v32;
    swift_storeEnumTagMultiPayload();
    v58 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v59 = swift_allocError();
    v110 = v60;
    v61 = v31;
    v62 = sub_1B7800838();
    v63 = [v30 valueForHTTPHeaderField_];

    if (v63)
    {
      v111 = v59;
      sub_1B7800868();

      v64 = sub_1B77FF548();
      v66 = v65;

      if (v66 >> 60 == 15)
      {
        sub_1B7280708();
        v67 = swift_allocError();
        *v68 = 3;
        swift_willThrow();
      }

      else
      {
        sub_1B77FE8F8();
        swift_allocObject();
        sub_1B77FE8E8();
        if (qword_1EB98E9B0 != -1)
        {
          swift_once();
        }

        v87 = v113;
        v88 = __swift_project_value_buffer(v113, qword_1EB991BC8);
        (*(v125 + 16))(v112, v88, v87);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v89 = v114;
        sub_1B77FE8D8();
        if (!v89)
        {

          sub_1B72380B8(v64, v66);

          v101 = v110;
          sub_1B777C37C(v10, v110, type metadata accessor for RawBankConnectData.Consent);
          sub_1B777C37C(v18, v101 + *(v58 + 20), type metadata accessor for FinanceNetworkError);
          swift_willThrow();

          return;
        }

        sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        v67 = swift_allocError();
        *v90 = v89;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1B72380B8(v64, v66);
      }

      v59 = v111;
    }

    else
    {
      sub_1B7280708();
      v67 = swift_allocError();
      *v81 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B777C73C(v18, v91, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v18, type metadata accessor for FinanceNetworkError);
    v85 = v59;
    v86 = v58;
LABEL_46:
    MEMORY[0x1B8CA76D0](v85, v86);
    return;
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v113, qword_1EB991BC8);
  v34 = *(v125 + 16);
  v111 = v33;
  v110 = v34;
  v34(v112);
  sub_1B77FE8C8();
  sub_1B77867A4();
  v35 = v114;
  sub_1B77FE8D8();
  v36 = v35;
  if (!v35)
  {

    v117 = v122;
    v118 = v123;
    v119 = v124;
    v115 = v120;
    v116 = v121;
    static BankConnectResponseHeadersParser.parse(httpURLResponse:)(v30, v27);

    v96 = v118;
    v97 = v104;
    *(v104 + 2) = v117;
    v97[3] = v96;
    v97[4] = v119;
    v98 = v116;
    *v97 = v115;
    v97[1] = v98;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9945E0);
    sub_1B777C37C(v27, v97 + *(v99 + 28), type metadata accessor for BankConnectResponseHeaders);
    return;
  }

  v109 = 0;
  *v107 = v35;
  swift_storeEnumTagMultiPayload();
  v70 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
  v125 = v70;
  v114 = swift_allocError();
  v108 = v71;
  v72 = v31;
  v73 = v35;
  v74 = sub_1B7800838();
  v75 = [v30 valueForHTTPHeaderField_];

  if (!v75)
  {
    sub_1B7280708();
    v79 = swift_allocError();
    *v82 = 0;
    goto LABEL_34;
  }

  sub_1B7800868();

  v76 = sub_1B77FF548();
  v78 = v77;

  if (v78 >> 60 == 15)
  {
    sub_1B7280708();
    v79 = swift_allocError();
    *v80 = 3;
LABEL_34:
    swift_willThrow();
LABEL_45:
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v94 = v107;
    sub_1B777C73C(v107, v95, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v94, type metadata accessor for FinanceNetworkError);
    v85 = v114;
    v86 = v125;
    goto LABEL_46;
  }

  swift_allocObject();
  sub_1B77FE8E8();
  (v110)(v112, v111, v113);
  sub_1B77FE8C8();
  sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v92 = v109;
  sub_1B77FE8D8();
  if (v92)
  {

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    v79 = swift_allocError();
    *v93 = v92;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1B72380B8(v76, v78);
    goto LABEL_45;
  }

  sub_1B72380B8(v76, v78);

  v102 = v108;
  sub_1B777C37C(v7, v108, type metadata accessor for RawBankConnectData.Consent);
  sub_1B777C37C(v107, v102 + *(v125 + 20), type metadata accessor for FinanceNetworkError);
  swift_willThrow();
}

uint64_t sub_1B7784A60@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 20));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t _s10FinanceKit35BankConnectWebServiceAccountRequestV15makeJSONEncoder10Foundation0J0CyF_0()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

uint64_t sub_1B7784C04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void sub_1B7784C3C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(char *, int **, uint64_t)@<X8>)
{
  v108 = a1;
  v109 = a2;
  v104 = a4;
  v105 = type metadata accessor for RawBankConnectData.Consent(0);
  v5 = MEMORY[0x1EEE9AC00](v105);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v103 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v103 - v11;
  v13 = type metadata accessor for FinanceNetworkError();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v107 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v103 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v110 = (&v103 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v103 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v103 - v24;
  v25 = type metadata accessor for BankConnectResponseHeaders();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1B77FE8B8();
  v117 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v37 = v36;
    v38 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v37 = v38;
    v37[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v30 = v29;
  v31 = a3;
  v32 = [v30 statusCode];
  if (v32 == 429)
  {
    v55 = v114;
    sub_1B777EE54();
    if (!v55)
    {
      swift_willThrow();
    }

    return;
  }

  v106 = v13;
  if (v32 == 403)
  {
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v113, qword_1EB991BC8);
    v41 = *(v117 + 16);
    v107 = v40;
    v117 += 16;
    v104 = v41;
    (v41)(v112);
    sub_1B77FE8C8();
    sub_1B7280970();
    v42 = v114;
    sub_1B77FE8D8();
    if (v42)
    {
    }

    else
    {

      if (v115 == 1)
      {
        goto LABEL_15;
      }

      if (v115 == 2)
      {
        sub_1B72809C4();
        *v23 = swift_allocError();
        goto LABEL_15;
      }
    }

    *v23 = 403;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v43 = v111;
    sub_1B777C37C(v23, v111, type metadata accessor for FinanceNetworkError);
    sub_1B777C73C(v43, v110, type metadata accessor for FinanceNetworkError);
    v44 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v114 = v44;
    v45 = swift_allocError();
    v108 = v46;
    v47 = v31;
    v48 = sub_1B7800838();
    v49 = [v30 valueForHTTPHeaderField_];

    if (v49)
    {
      v109 = v45;
      sub_1B7800868();

      v50 = sub_1B77FF548();
      v52 = v51;

      if (v52 >> 60 != 15)
      {
        swift_allocObject();
        sub_1B77FE8E8();
        v104(v112, v107, v113);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        sub_1B77FE8D8();

        sub_1B72380B8(v50, v52);

        v100 = v108;
        sub_1B777C37C(v12, v108, type metadata accessor for RawBankConnectData.Consent);
        sub_1B777C37C(v110, v100 + v114[5], type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        sub_1B7786894(v111, type metadata accessor for FinanceNetworkError);
        return;
      }

      sub_1B7280708();
      v53 = swift_allocError();
      *v54 = 3;
      swift_willThrow();
      v45 = v109;
    }

    else
    {
      sub_1B7280708();
      v53 = swift_allocError();
      *v67 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v85 = v110;
    sub_1B777C73C(v110, v86, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v85, type metadata accessor for FinanceNetworkError);
    sub_1B7786894(v111, type metadata accessor for FinanceNetworkError);

    v87 = v45;
    v88 = v114;
    goto LABEL_46;
  }

  if (v32 != 200)
  {
    *v18 = v32;
    swift_storeEnumTagMultiPayload();
    v56 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v57 = swift_allocError();
    v110 = v58;
    v59 = v31;
    v60 = sub_1B7800838();
    v61 = [v30 valueForHTTPHeaderField_];

    if (v61)
    {
      v111 = v57;
      sub_1B7800868();

      v62 = sub_1B77FF548();
      v64 = v63;

      if (v64 >> 60 == 15)
      {
        sub_1B7280708();
        v65 = swift_allocError();
        *v66 = 3;
        swift_willThrow();
      }

      else
      {
        sub_1B77FE8F8();
        swift_allocObject();
        sub_1B77FE8E8();
        if (qword_1EB98E9B0 != -1)
        {
          swift_once();
        }

        v89 = v113;
        v90 = __swift_project_value_buffer(v113, qword_1EB991BC8);
        (*(v117 + 16))(v112, v90, v89);
        sub_1B77FE8C8();
        sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v91 = v114;
        sub_1B77FE8D8();
        if (!v91)
        {

          sub_1B72380B8(v62, v64);

          v101 = v110;
          sub_1B777C37C(v10, v110, type metadata accessor for RawBankConnectData.Consent);
          sub_1B777C37C(v18, v101 + *(v56 + 20), type metadata accessor for FinanceNetworkError);
          swift_willThrow();

          return;
        }

        sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        v65 = swift_allocError();
        *v92 = v91;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1B72380B8(v62, v64);
      }

      v57 = v111;
    }

    else
    {
      sub_1B7280708();
      v65 = swift_allocError();
      *v83 = 0;
      swift_willThrow();
    }

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B777C73C(v18, v93, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v18, type metadata accessor for FinanceNetworkError);
    v87 = v57;
    v88 = v56;
LABEL_46:
    MEMORY[0x1B8CA76D0](v87, v88);
    return;
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v113, qword_1EB991BC8);
  v110 = *(v117 + 16);
  v111 = v33;
  v117 += 16;
  v110(v112);
  sub_1B77FE8C8();
  sub_1B7786750();
  v34 = v114;
  sub_1B77FE8D8();
  v35 = v34;
  if (!v34)
  {
    v68 = v31;

    v69 = v115;
    v70 = v116;
    static BankConnectResponseHeadersParser.parse(httpURLResponse:)(v30, v27);

    v98 = v104;
    *v104 = v69;
    *(v98 + 1) = v70;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995658);
    sub_1B777C37C(v27, v98 + *(v99 + 28), type metadata accessor for BankConnectResponseHeaders);
    return;
  }

  v114 = 0;
  *v107 = v34;
  swift_storeEnumTagMultiPayload();
  v71 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B778684C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
  v72 = swift_allocError();
  v108 = v73;
  v74 = v31;
  v75 = v34;
  v76 = sub_1B7800838();
  v77 = [v30 valueForHTTPHeaderField_];

  if (!v77)
  {
    sub_1B7280708();
    v81 = swift_allocError();
    *v84 = 0;
    swift_willThrow();
LABEL_45:
    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v96 = v107;
    sub_1B777C73C(v107, v97, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B7786894(v96, type metadata accessor for FinanceNetworkError);
    v87 = v72;
    v88 = v71;
    goto LABEL_46;
  }

  v109 = v72;
  sub_1B7800868();

  v78 = sub_1B77FF548();
  v80 = v79;

  if (v80 >> 60 == 15)
  {
    sub_1B7280708();
    v81 = swift_allocError();
    *v82 = 3;
    swift_willThrow();
LABEL_44:
    v72 = v109;
    goto LABEL_45;
  }

  v104 = v71;
  swift_allocObject();
  sub_1B77FE8E8();
  (v110)(v112, v111, v113);
  sub_1B77FE8C8();
  sub_1B778684C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v94 = v114;
  sub_1B77FE8D8();
  if (v94)
  {

    sub_1B778684C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    v81 = swift_allocError();
    *v95 = v94;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1B72380B8(v78, v80);
    v71 = v104;
    goto LABEL_44;
  }

  sub_1B72380B8(v78, v80);

  v102 = v108;
  sub_1B777C37C(v7, v108, type metadata accessor for RawBankConnectData.Consent);
  sub_1B777C37C(v107, v102 + *(v104 + 5), type metadata accessor for FinanceNetworkError);
  swift_willThrow();
}

void sub_1B778619C()
{
  type metadata accessor for BankConnectWebServiceAccountsRequest.ConsentType(319);
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UserPresence();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7786238()
{
  result = type metadata accessor for BankConnectConsent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawBankConnectData.Consent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B77862FC()
{
  type metadata accessor for BankConnectConsent();
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      sub_1B72F2B80();
      if (v2 <= 0x3F)
      {
        sub_1B7280028();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UserPresence();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BankConnectConsent();
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
    v11 = type metadata accessor for UserPresence();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BankConnectConsent();
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
    v11 = type metadata accessor for UserPresence();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B7786670()
{
  result = type metadata accessor for BankConnectConsent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UserPresence();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B77866FC()
{
  result = qword_1EB99DCC8;
  if (!qword_1EB99DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DCC8);
  }

  return result;
}

unint64_t sub_1B7786750()
{
  result = qword_1EB99DCD8;
  if (!qword_1EB99DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DCD8);
  }

  return result;
}

unint64_t sub_1B77867A4()
{
  result = qword_1EB99DCE0;
  if (!qword_1EB99DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DCE0);
  }

  return result;
}

unint64_t sub_1B77867F8()
{
  result = qword_1EB99DCE8;
  if (!qword_1EB99DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DCE8);
  }

  return result;
}

uint64_t sub_1B778684C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7786894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BankConnectResponseHeaders.init(consent:remainingRefreshes:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for BankConnectResponseHeaders() + 20);
  result = sub_1B751BD9C(a1, a3);
  *v6 = a2;
  *(v6 + 2) = BYTE2(a2) & 1;
  return result;
}

uint64_t type metadata accessor for BankConnectResponseHeaders()
{
  result = qword_1EB99DCF0;
  if (!qword_1EB99DCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B77869E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Consent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7786A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Consent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectResponseHeaders.remainingRefreshes.setter(int a1)
{
  result = type metadata accessor for BankConnectResponseHeaders();
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

void sub_1B7786BBC()
{
  type metadata accessor for RawBankConnectData.Consent(319);
  if (v0 <= 0x3F)
  {
    sub_1B7786C40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7786C40()
{
  if (!qword_1EB99BEE8)
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB99BEE8);
    }
  }
}

uint64_t TransactionTagQuery.init(tag:accountID:sortDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[0] = a3;
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v27 - v15;
  v17 = type metadata accessor for TransactionTagQuery.Tag(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77877E4(a1, v19);
  sub_1B7205588(a2, v13, &unk_1EB993A10);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1B7205418(a2, &unk_1EB993A10);
    sub_1B7787848(a1);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A8);
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  else
  {
    v21 = (*(v8 + 32))(v10, v13, v7);
    MEMORY[0x1EEE9AC00](v21);
    v27[-2] = v10;
    v27[1] = type metadata accessor for InternalTransaction(0);
    sub_1B77FFD38();
    sub_1B7205418(a2, &unk_1EB993A10);
    sub_1B7787848(a1);
    (*(v8 + 8))(v10, v7);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A8);
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  }

  sub_1B77878A4(v19, a4);
  v23 = type metadata accessor for TransactionTagQuery(0);
  *(a4 + v23[6]) = v27[0];
  result = sub_1B7787928(v16, a4 + v23[5]);
  v25 = a4 + v23[7];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = a4 + v23[8];
  *v26 = 0;
  *(v26 + 8) = 1;
  return result;
}

uint64_t sub_1B7787064@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD30);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994590);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - v13;
  sub_1B728216C(&qword_1EB9945A0, &qword_1EB98F5A0);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v8 + 8))(v10, v7);
  sub_1B77FFA18();
  sub_1B77FF2C8();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD38);
  a2[4] = sub_1B7788094();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1B728216C(&qword_1EB9945D8, &qword_1EB994590);
  sub_1B728216C(&qword_1EB99DD50, &qword_1EB99DD30);
  sub_1B71A6970(&qword_1EB99DBE0);
  v15 = v18;
  sub_1B77FEFD8();
  (*(v19 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t TransactionTagQuery.init(tag:sortDescriptors:additionalPredicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_1B77878A4(a1, a8);
  v15 = type metadata accessor for TransactionTagQuery(0);
  *(a8 + v15[6]) = a2;
  result = sub_1B7787928(a3, a8 + v15[5]);
  v17 = a8 + v15[7];
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  v18 = a8 + v15[8];
  *v18 = a6;
  *(v18 + 8) = a7 & 1;
  return result;
}

uint64_t _s10FinanceKit19TransactionTagQueryV0D0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_1B77FFA18();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = type metadata accessor for TransactionTagQuery.Tag(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD58);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  v20 = *(v17 + 56);
  sub_1B77877E4(a1, &v25 - v18);
  sub_1B77877E4(v26, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B77877E4(v19, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v4 + 32))(v9, &v19[v20], v3);
      v21 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      v23 = *(v4 + 8);
      v23(v9, v3);
      v23(v15, v3);
      goto LABEL_6;
    }

LABEL_8:
    (*(v4 + 8))(v15, v3);
    sub_1B7205418(v19, &qword_1EB99DD58);
    v21 = 0;
    return v21 & 1;
  }

  sub_1B77877E4(v19, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = v13;
    goto LABEL_8;
  }

  (*(v4 + 32))(v7, &v19[v20], v3);
  v21 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
  v22 = *(v4 + 8);
  v22(v7, v3);
  v22(v13, v3);
LABEL_6:
  sub_1B7787848(v19);
  return v21 & 1;
}

uint64_t sub_1B77877E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionTagQuery.Tag(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7787848(uint64_t a1)
{
  v2 = type metadata accessor for TransactionTagQuery.Tag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B77878A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionTagQuery.Tag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7787928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B77879C8()
{
  type metadata accessor for TransactionTagQuery.Tag(319);
  if (v0 <= 0x3F)
  {
    sub_1B7787AD4(319, &qword_1EB994D28, &qword_1EB98F5A8, &unk_1B7809310, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B7787AD4(319, &qword_1EB991F98, &qword_1EB991FA0, &unk_1B782C2E0, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B729D994();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7787AD4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B7787B38()
{
  sub_1B75ABA24(319, &qword_1EB99DD20);
  if (v0 <= 0x3F)
  {
    sub_1B75ABA24(319, &qword_1EB99DD28);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

id sub_1B7787BBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v28 - v8;
  v9 = sub_1B77FFA18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TransactionTagQuery.Tag(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77877E4(v0, v15);
  swift_getEnumCaseMultiPayload();
  (*(v10 + 32))(v12, v15, v9);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7807CD0;
  v17 = sub_1B77FF9B8();
  *(v16 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v16 + 64) = sub_1B726E47C();
  *(v16 + 32) = v17;
  v18 = sub_1B78010E8();
  (*(v10 + 8))(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B780B190;
  *(v19 + 32) = v18;
  v31 = v19;
  v20 = type metadata accessor for TransactionTagQuery(0);
  sub_1B7205588(v30 + *(v20 + 20), v3, &qword_1EB9924B0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v21 = v18;
    sub_1B7205418(v3, &qword_1EB9924B0);
  }

  else
  {
    v22 = v29;
    (*(v5 + 32))(v29, v3, v4);
    v23 = v28;
    (*(v5 + 16))(v28, v22, v4);
    v24 = v18;
    sub_1B71FA2E0(v23);
    MEMORY[0x1B8CA4F20]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    (*(v5 + 8))(v22, v4);
  }

  v25 = sub_1B7800C18();

  v26 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v26;
}

unint64_t sub_1B7788094()
{
  result = qword_1EB99DD40;
  if (!qword_1EB99DD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99DD38);
    sub_1B74240C4();
    sub_1B7788120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DD40);
  }

  return result;
}

unint64_t sub_1B7788120()
{
  result = qword_1EB99DD48;
  if (!qword_1EB99DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99DD30);
    sub_1B71A6970(&qword_1EB98F740);
    sub_1B71A6970(&qword_1EB98F718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DD48);
  }

  return result;
}

uint64_t sub_1B7788208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_1B7800DF8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);

  sub_1B76A1F9C(0, 0, v12, &unk_1B786B1D0, v15);
  return sub_1B7800E08();
}

uint64_t sub_1B7788424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[40] = a5;
  v6[41] = a6;
  v6[39] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD68);
  v6[42] = v7;
  v6[43] = *(v7 - 8);
  v6[44] = swift_task_alloc();
  v8 = sub_1B77FEAA8();
  v6[45] = v8;
  v6[46] = *(v8 - 8);
  v6[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996810);
  v6[48] = swift_task_alloc();
  v9 = sub_1B78013E8();
  v6[49] = v9;
  v6[50] = *(v9 - 8);
  v6[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77885E4, 0, 0);
}

uint64_t sub_1B77885E4()
{
  v1 = v0[39];
  if (v1)
  {
    [*(v1 + 16) copy];
    sub_1B7801848();
    swift_unknownObjectRelease();
    sub_1B7205540(0, &qword_1EB996830);
    swift_dynamicCast();
    v2 = v0[38];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() defaultCenter];
  v0[52] = sub_1B78013F8();

  sub_1B78013C8();
  v4 = *MEMORY[0x1E695D3A8];
  v0[53] = *MEMORY[0x1E695D4B8];
  v0[54] = v4;
  v0[55] = v2;
  v5 = sub_1B76F8670();
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_1B7788780;
  v7 = v0[48];
  v8 = v0[49];

  return MEMORY[0x1EEE6D8C8](v7, v8, v5);
}

uint64_t sub_1B7788780()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1B7789104;
  }

  else
  {
    v2 = sub_1B7788894;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77888B0()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[55];

LABEL_3:
    (*(v0[50] + 8))(v0[51], v0[49]);

    v5 = v0[1];
LABEL_6:

    return v5();
  }

  v6 = v0[57];
  (*(v3 + 32))(v0[47], v1, v2);
  sub_1B7800EB8();
  if (v6)
  {
    v7 = v0[55];
    v8 = v0[51];
    v9 = v0[49];
    v10 = v0[50];
    v11 = v0[47];
    v12 = v0[45];
    v13 = v0[46];

    (*(v13 + 8))(v11, v12);
    (*(v10 + 8))(v8, v9);

    v5 = v0[1];
    goto LABEL_6;
  }

  v15 = sub_1B77FEA98();
  if (!v15)
  {
    v45 = v0[55];
    v47 = v0[46];
    v46 = v0[47];
    v48 = v0[45];

    (*(v47 + 8))(v46, v48);
    goto LABEL_3;
  }

  v16 = v15;
  v0[28] = sub_1B7800868();
  v0[29] = v17;
  sub_1B78019E8();
  if (!*(v16 + 16) || (v18 = sub_1B7245898((v0 + 2)), (v19 & 1) == 0))
  {
    v39 = v0[46];
    v38 = v0[47];
    v40 = v0[45];

    sub_1B720494C((v0 + 2));
    (*(v39 + 8))(v38, v40);
    goto LABEL_32;
  }

  sub_1B719BDE4(*(v16 + 56) + 32 * v18, (v0 + 12));
  sub_1B720494C((v0 + 2));
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v20 = v0[30];
  v21 = v0[31];
  v0[32] = sub_1B7800868();
  v0[33] = v22;
  sub_1B78019E8();
  if (!*(v16 + 16) || (v23 = sub_1B7245898((v0 + 7)), (v24 & 1) == 0))
  {
    v50 = v0[46];
    v49 = v0[47];
    v51 = v0[45];

    sub_1B720494C((v0 + 7));
    (*(v50 + 8))(v49, v51);
    goto LABEL_32;
  }

  sub_1B719BDE4(*(v16 + 56) + 32 * v23, (v0 + 16));
  sub_1B720494C((v0 + 7));

  sub_1B7205540(0, &qword_1EB996830);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    (*(v0[46] + 8))(v0[47], v0[45]);

    goto LABEL_32;
  }

  v79 = v0[35];
  v78 = [*(v0[40] + 16) persistentStoreCoordinator];
  v25 = [v78 persistentStores];
  sub_1B7205540(0, &qword_1EDAFC540);
  v26 = sub_1B7800C38();

  v77 = v21;
  if (v26 >> 62)
  {
    goto LABEL_60;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_61:
    v66 = v0[46];
    v65 = v0[47];
    v67 = v0[45];

LABEL_62:
    (*(v66 + 8))(v65, v67);
    goto LABEL_32;
  }

LABEL_18:
  v28 = 0;
  v80 = v27;
  while (1)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1B8CA5DC0](v28, v26);
    }

    else
    {
      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v29 = *(v26 + 8 * v28 + 32);
    }

    v30 = v29;
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v27 = sub_1B7801958();
      if (!v27)
      {
        goto LABEL_61;
      }

      goto LABEL_18;
    }

    v32 = [v29 configurationName];
    v33 = sub_1B7800868();
    v35 = v34;

    if (v33 == 0x6C61636F4CLL && v35 == 0xE500000000000000)
    {
      break;
    }

    v37 = sub_1B78020F8();

    if (v37)
    {
      goto LABEL_40;
    }

    ++v28;
    if (v31 == v80)
    {
      goto LABEL_61;
    }
  }

LABEL_40:

  v52 = [v30 identifier];
  if (!v52)
  {

    goto LABEL_49;
  }

  v53 = v52;
  v54 = sub_1B7800868();
  v56 = v55;

  if (v20 == v54 && v77 == v56)
  {

    goto LABEL_46;
  }

  v57 = sub_1B78020F8();

  if ((v57 & 1) == 0)
  {
LABEL_49:
    v66 = v0[46];
    v65 = v0[47];
    v67 = v0[45];

    goto LABEL_62;
  }

LABEL_46:
  v58 = v0[55];
  if (!v58)
  {
    goto LABEL_52;
  }

  v59 = v79;
  v60 = v58;
  v61 = sub_1B7801558();

  if (v61)
  {
    v63 = v0[46];
    v62 = v0[47];
    v64 = v0[45];

    (*(v63 + 8))(v62, v64);
    v79 = v0[55];
    goto LABEL_57;
  }

  [v60 copy];
  sub_1B7801848();

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v68 = v0[36];
  }

  else
  {
LABEL_52:
    v68 = 0;
  }

  type metadata accessor for SendableNSPersistentHistoryToken();
  v69 = swift_allocObject();
  if (v68)
  {
    *(v69 + 16) = v68;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v69 = 0;
  }

  v71 = v0[46];
  v70 = v0[47];
  v73 = v0[44];
  v72 = v0[45];
  v74 = v0[42];
  v75 = v0[43];
  v0[37] = v69;
  v76 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD60);
  sub_1B7800E18();

  (*(v75 + 8))(v73, v74);
  (*(v71 + 8))(v70, v72);
LABEL_57:
  v0[55] = v79;
LABEL_32:
  v41 = sub_1B76F8670();
  v42 = swift_task_alloc();
  v0[56] = v42;
  *v42 = v0;
  v42[1] = sub_1B7788780;
  v43 = v0[48];
  v44 = v0[49];

  return MEMORY[0x1EEE6D8C8](v43, v44, v41);
}

uint64_t sub_1B7789104()
{
  *(v0 + 272) = *(v0 + 456);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1B7789190(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD60) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7201BB0;

  return sub_1B7788424(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1B77892A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);

  return sub_1B7800E68();
}

void ManagedAccountMatch.matchingType.getter(_BYTE *a1@<X8>)
{
  v3 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v4 = [v1 primitiveMatchingType];
  v5 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  v6 = [v4 integerValue];
  if (v6 > 4)
  {
    sub_1B7801A78();

    [v4 integerValue];
    v8 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v8);

    sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v7 = v6;

    *a1 = v7;
  }
}

void sub_1B7789478(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B7800838();
  [v3 willChangeValueForKey_];

  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v3 setPrimitiveMatchingType_];

  v6 = sub_1B7800838();
  [v3 didChangeValueForKey_];
}

void ManagedAccountMatch.matchingType.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v1 setPrimitiveMatchingType_];

  v5 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedAccountMatch.matchingType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedAccountMatch.matchingType.getter((a1 + 8));
  return sub_1B7789690;
}

void sub_1B7789690(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v1 setPrimitiveMatchingType_];

  v5 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

id ManagedAccountMatch.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAccountMatch.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAccountMatch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedAccountMatch.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  _s10FinanceKit19ManagedAccountMatchC6update_4withyAC_AA0dE0VtFZ_0(v5, a1);

  sub_1B7789FFC(a1);
  return v5;
}

void ManagedAccountMatch.fullyQualifiedAccountIdentifier.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 accountID];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = [v1 institutionID];
  v8 = sub_1B7800868();
  v10 = v9;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
}

void AccountMatch.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 id];
  sub_1B77FF9E8();

  v5 = [a1 accountID];
  v6 = sub_1B7800868();
  v8 = v7;

  v9 = [a1 institutionID];
  v10 = sub_1B7800868();
  v12 = v11;

  v13 = type metadata accessor for AccountMatch();
  v14 = (a2 + v13[5]);
  *v14 = v6;
  v14[1] = v8;
  v14[2] = v10;
  v14[3] = v12;
  v15 = [a1 fpanID];
  v16 = sub_1B7800868();
  v18 = v17;

  v19 = (a2 + v13[6]);
  *v19 = v16;
  v19[1] = v18;
  ManagedAccountMatch.matchingType.getter(&v21);
  *(a2 + v13[7]) = v21;
  *(a2 + v13[8]) = [a1 isMismatched];
  v20 = [a1 lastUpdatedAt];
  sub_1B77FF928();
}

id static ManagedAccountMatch.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit19ManagedAccountMatch;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedAccountMatch.existingObject(with:in:)(uint64_t a1, id a2)
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

unint64_t static ManagedAccountMatch.existingAccountMatch(with:in:)(__int128 *a1)
{
  v2 = v1;
  v11 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit19ManagedAccountMatch;
  v5 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v12 = v11;
  v13 = v3;
  v14 = v4;
  matched = _s10FinanceKit19ManagedAccountMatchC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedD10IdentifierV_tFZ_0(&v12);
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

void _s10FinanceKit19ManagedAccountMatchC6update_4withyAC_AA0dE0VtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_1B77FF9B8();
  [a1 setId_];

  v5 = type metadata accessor for AccountMatch();
  v6 = sub_1B7800838();
  [a1 setAccountID_];

  v7 = sub_1B7800838();
  [a1 setInstitutionID_];

  v8 = sub_1B7800838();
  [a1 setFpanID_];

  v9 = *(a2 + *(v5 + 28));
  v10 = sub_1B7800838();
  [a1 willChangeValueForKey_];

  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [a1 setPrimitiveMatchingType_];

  v12 = sub_1B7800838();
  [a1 didChangeValueForKey_];

  [a1 setIsMismatched_];
  v13 = sub_1B77FF8B8();
  [a1 setLastUpdatedAt_];
}

uint64_t sub_1B7789FFC(uint64_t a1)
{
  v2 = type metadata accessor for AccountMatch();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id _s10FinanceKit19ManagedAccountMatchC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedD10IdentifierV_tFZ_0(uint64_t *a1)
{
  v1 = a1[1];
  v12 = *a1;
  v3 = a1[2];
  v2 = a1[3];
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

uint64_t sub_1B778A240(void **a1)
{
  v2 = *(type metadata accessor for InternalTransaction(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B77E4D08(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B778CCE8(v6);
  *a1 = v3;
  return result;
}

uint64_t TransactionStatistics.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TransactionStatistics() + 20);

  return sub_1B7280900(v3, a1);
}

uint64_t type metadata accessor for TransactionStatistics()
{
  result = qword_1EB99DDB8;
  if (!qword_1EB99DDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransactionStatistics.currencyCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for TransactionStatistics() + 24));

  return v1;
}

uint64_t TransactionStatistics.maximum.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TransactionStatistics() + 28);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t TransactionStatistics.mean.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TransactionStatistics() + 32);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t TransactionStatistics.median.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TransactionStatistics() + 36);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t TransactionStatistics.minimum.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TransactionStatistics() + 40);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t TransactionStatistics.sum.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TransactionStatistics() + 44);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t sub_1B778A580()
{
  v1 = *v0;
  v2 = 0x7461447472617473;
  v3 = 0x6D756D696E696DLL;
  if (v1 != 6)
  {
    v3 = 7173491;
  }

  v4 = 1851876717;
  if (v1 != 4)
  {
    v4 = 0x6E616964656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79636E6572727563;
  if (v1 != 2)
  {
    v5 = 0x6D756D6978616DLL;
  }

  if (*v0)
  {
    v2 = 0x65746144646E65;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B778A670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7790128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B778A698(uint64_t a1)
{
  v2 = sub_1B778F580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B778A6D4(uint64_t a1)
{
  v2 = sub_1B778F580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransactionStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B778F580();
  sub_1B78023F8();
  LOBYTE(v31) = 0;
  sub_1B77FF988();
  sub_1B71A6F54(&qword_1EDAF65F0);
  sub_1B7801F38();
  if (!v2)
  {
    v9 = type metadata accessor for TransactionStatistics();
    LOBYTE(v31) = 1;
    sub_1B7801F38();
    LOBYTE(v31) = 2;
    sub_1B7801EF8();
    v10 = (v3 + v9[7]);
    v11 = *(v10 + 4);
    v12 = *(v10 + 40);
    v13 = v10[1];
    v31 = *v10;
    v32 = v13;
    v33 = v11;
    v34 = v12;
    v35 = 3;
    sub_1B778F5D4();

    sub_1B7801F38();

    v14 = (v3 + v9[8]);
    v15 = *(v14 + 4);
    v16 = *(v14 + 40);
    v17 = v14[1];
    v31 = *v14;
    v32 = v17;
    v33 = v15;
    v34 = v16;
    v35 = 4;

    sub_1B7801F38();

    v19 = (v3 + v9[9]);
    v20 = *(v19 + 4);
    v21 = *(v19 + 40);
    v22 = v19[1];
    v31 = *v19;
    v32 = v22;
    v33 = v20;
    v34 = v21;
    v35 = 5;

    sub_1B7801F38();

    v23 = (v3 + v9[10]);
    v24 = *(v23 + 4);
    v25 = *(v23 + 40);
    v26 = v23[1];
    v31 = *v23;
    v32 = v26;
    v33 = v24;
    v34 = v25;
    v35 = 6;

    sub_1B7801F38();

    v27 = (v3 + v9[11]);
    v28 = *(v27 + 4);
    v29 = *(v27 + 40);
    v30 = v27[1];
    v31 = *v27;
    v32 = v30;
    v33 = v28;
    v34 = v29;
    v35 = 7;

    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TransactionStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DD90);
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = type metadata accessor for TransactionStatistics();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B778F580();
  v52 = v13;
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v18 = v7;
  v48 = v16;
  sub_1B77FF988();
  LOBYTE(v54) = 0;
  sub_1B71A6F54(&unk_1EDAF65E0);
  v19 = v50;
  sub_1B7801DB8();
  v20 = v9;
  v21 = v48;
  sub_1B722376C(v20, v48, &qword_1EB98EBD0);
  LOBYTE(v54) = 1;
  sub_1B7801DB8();
  sub_1B722376C(v18, v21 + v14[5], &qword_1EB98EBD0);
  LOBYTE(v54) = 2;
  v22 = sub_1B7801D78();
  v23 = v51;
  v24 = (v21 + v14[6]);
  *v24 = v22;
  v24[1] = v25;
  v58 = 3;
  sub_1B778F628();
  sub_1B7801DB8();
  v26 = v56;
  v27 = v57;
  v28 = v21 + v14[7];
  v29 = v55;
  *v28 = v54;
  *(v28 + 16) = v29;
  *(v28 + 32) = v26;
  *(v28 + 40) = v27;
  v58 = 4;
  sub_1B7801DB8();
  v30 = v56;
  v31 = v57;
  v32 = v21 + v14[8];
  v33 = v55;
  *v32 = v54;
  *(v32 + 16) = v33;
  *(v32 + 32) = v30;
  *(v32 + 40) = v31;
  v58 = 5;
  sub_1B7801DB8();
  v34 = v56;
  v35 = v57;
  v36 = v21 + v14[9];
  v37 = v55;
  *v36 = v54;
  *(v36 + 16) = v37;
  *(v36 + 32) = v34;
  *(v36 + 40) = v35;
  v58 = 6;
  sub_1B7801DB8();
  v38 = v56;
  v39 = v57;
  v40 = v21 + v14[10];
  v41 = v55;
  *v40 = v54;
  *(v40 + 16) = v41;
  *(v40 + 32) = v38;
  *(v40 + 40) = v39;
  v58 = 7;
  v42 = v52;
  sub_1B7801DB8();
  (*(v23 + 8))(v42, v19);
  v43 = v56;
  v44 = v57;
  v45 = v21 + v14[11];
  v46 = v55;
  *v45 = v54;
  *(v45 + 16) = v46;
  *(v45 + 32) = v43;
  *(v45 + 40) = v44;
  sub_1B77903C4(v21, v49, type metadata accessor for TransactionStatistics);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return sub_1B779042C(v21, type metadata accessor for TransactionStatistics);
}

uint64_t TransactionStatistics.Statistic.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = *(v1 + 32);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

uint64_t sub_1B778B298()
{
  if (*v0)
  {
    return 0x6F74616369646E69;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

uint64_t sub_1B778B2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F74616369646E69 && a2 == 0xE900000000000072)
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

uint64_t sub_1B778B3B4(uint64_t a1)
{
  v2 = sub_1B778F67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B778B3F0(uint64_t a1)
{
  v2 = sub_1B778F67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransactionStatistics.Statistic.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DDA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v19 = *(v1 + 4);
  v20 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7215720(&v17, &v14);
  sub_1B778F67C();
  sub_1B78023F8();
  v14 = v17;
  v15 = v18;
  v16 = v19;
  v13 = 0;
  sub_1B7215044();
  sub_1B7801FC8();
  v11[0] = v14;
  v11[1] = v15;
  v12 = v16;
  sub_1B721722C(v11);
  if (!v2)
  {
    v10[15] = v20;
    v10[14] = 1;
    sub_1B721BF7C();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TransactionStatistics.Statistic.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DDB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7 - 16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B778F67C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_1B72153F8();
  sub_1B7801E48();
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = 1;
  sub_1B721BFD0();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v9 = v24;
  *&v13[16] = v22;
  v10 = v21;
  *v13 = v21;
  v12 = v20;
  v13[24] = v24;
  *a2 = v20;
  a2[1] = v10;
  *(a2 + 25) = *&v13[9];
  sub_1B778F6D0(&v12, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v14[0] = v20;
  v14[1] = v21;
  v15 = v22;
  v16 = v9;
  return sub_1B76F0388(v14);
}

uint64_t sub_1B778B8D0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  *&v79 = type metadata accessor for InternalTransaction(0);
  v6 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v8 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a2;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v73 = v13;
  v74 = a1;
  if (v13)
  {
    v70 = v12;
    v71 = a3;
    *&v80 = MEMORY[0x1E69E7CC0];
    *&v78 = v10;
    sub_1B71FE348(0, v13, 0);
    v15 = v80;
    v16 = v13;
    v17 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = *(v6 + 72);
    v75 = v78 + 32;
    v76 = (v78 + 16);
    v19 = v17;
    v20 = v16;
    v21 = v72;
    v77 = v18;
    do
    {
      sub_1B77903C4(v19, v8, type metadata accessor for InternalTransaction);
      (*v76)(v21, &v8[*(v79 + 76)], v9);
      sub_1B779042C(v8, type metadata accessor for InternalTransaction);
      *&v80 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B71FE348(v22 > 1, v23 + 1, 1);
        v15 = v80;
      }

      *(v15 + 16) = v23 + 1;
      (*(v78 + 32))(v15 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v23, v21, v9);
      v24 = v77;
      v19 += v77;
      --v20;
    }

    while (v20);
    v86 = MEMORY[0x1E69E7CC0];
    v25 = v73;
    sub_1B71FE928(0, v73, 0);
    v14 = v86;
    do
    {
      sub_1B77903C4(v17, v8, type metadata accessor for InternalTransaction);
      v26 = &v8[*(v79 + 32)];
      v82 = *(v26 + 4);
      v27 = *(v26 + 1);
      v80 = *v26;
      v81 = v27;
      sub_1B7215720(&v80, v84);
      sub_1B779042C(v8, type metadata accessor for InternalTransaction);
      v86 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1B71FE928((v28 > 1), v29 + 1, 1);
        v14 = v86;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 40 * v29;
      v31 = v80;
      v32 = v81;
      *(v30 + 64) = v82;
      *(v30 + 32) = v31;
      *(v30 + 48) = v32;
      v17 += v24;
      --v25;
    }

    while (v25);
    a3 = v71;
    LOBYTE(v12) = v70;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1B77A41E8(v15, a3);
  v33 = type metadata accessor for TransactionStatistics();
  sub_1B75286C8(v15, a3 + v33[5]);

  if (*(v14 + 16))
  {
    v34 = *(v14 + 48);
    v80 = *(v14 + 32);
    v81 = v34;
    v35 = *(v14 + 64);
    v82 = v35;
    v36 = *(&v34 + 1);
    sub_1B7215720(&v80, v84);
  }

  else
  {

    v36 = 0;
    v35 = 0;
  }

  v37 = v74;
  v38 = (a3 + v33[6]);
  *v38 = v36;
  v38[1] = v35;
  v39 = 0uLL;
  if ((v12 & 2) != 0)
  {
    sub_1B778BECC(v37, &v80);
    v39 = 0uLL;
    v42 = v80;
    v43 = v81;
    v40 = v82;
    v41 = v83;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0uLL;
    v43 = 0uLL;
  }

  v44 = a3 + v33[7];
  *v44 = v42;
  *(v44 + 16) = v43;
  *(v44 + 32) = v40;
  *(v44 + 40) = v41;
  if ((v12 & 0x10) != 0)
  {
    sub_1B778C2B8(v37, &v80);
    v39 = v80;
    v47 = v81;
    v45 = v82;
    v46 = v83;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0uLL;
  }

  v48 = a3 + v33[10];
  *v48 = v39;
  *(v48 + 16) = v47;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  v49 = 0uLL;
  if (v12)
  {
    sub_1B778C6A4(v37, &v80);
    v49 = 0uLL;
    v52 = v80;
    v53 = v81;
    v50 = v82;
    v51 = v83;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v52 = 0uLL;
    v53 = 0uLL;
  }

  v54 = a3 + v33[11];
  *v54 = v52;
  *(v54 + 16) = v53;
  *(v54 + 32) = v50;
  *(v54 + 40) = v51;
  if ((v12 & 4) != 0)
  {
    sub_1B778C6A4(v37, &v80);
    v49 = v80;
    v57 = v81;
    v58 = v82;
    v56 = v83;
    if (v82)
    {
      v78 = v80;
      v79 = v81;
      MEMORY[0x1B8CA5A10](v73);
      v59 = sub_1B7801618();
      CurrencyAmount.init(_:currencyCode:)(v59, v60, v61, *(&v79 + 1), v58, v84);
      v49 = v84[0];
      v57 = v84[1];
      v56 &= 1u;
      v55 = v85;
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0uLL;
  }

  v62 = a3 + v33[8];
  *v62 = v49;
  *(v62 + 16) = v57;
  *(v62 + 32) = v55;
  *(v62 + 40) = v56;
  if ((v12 & 8) != 0)
  {
    sub_1B778C994(v37, &v80);

    v66 = v80;
    v67 = v81;
    v64 = v82;
    v65 = v83;
  }

  else
  {

    v64 = 0;
    v65 = 0;
    v66 = 0uLL;
    v67 = 0uLL;
  }

  v68 = a3 + v33[9];
  *v68 = v66;
  *(v68 + 16) = v67;
  *(v68 + 32) = v64;
  *(v68 + 40) = v65;
  return result;
}

uint64_t sub_1B778BECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InternalTransaction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = *(a1 + 16);
  if (!v19)
  {
    (*(v5 + 56))(&v34 - v17, 1, 1, v4);
    goto LABEL_5;
  }

  v34 = v16;
  v35 = a2;
  v20 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  result = sub_1B77903C4(v20, v12, type metadata accessor for InternalTransaction);
  if (v19 != 1)
  {
    v27 = 1;
    do
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return result;
      }

      sub_1B77903C4(v20 + *(v5 + 72) * v27, v10, type metadata accessor for InternalTransaction);
      v29 = *(v4 + 44);
      v30 = v12[v29];
      v31 = v10[v29];
      if (v30)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_19;
        }

        v32 = *(v4 + 32);
        if (MEMORY[0x1B8CA5940](*&v10[v32], *&v10[v32 + 8], *&v10[v32 + 16], *&v12[v32], *&v12[v32 + 8], *&v12[v32 + 16]))
        {
          goto LABEL_19;
        }
      }

      else if ((v31 & 1) == 0)
      {
        v33 = *(v4 + 32);
        if (MEMORY[0x1B8CA5940](*&v12[v33], *&v12[v33 + 8], *&v12[v33 + 16], *&v10[v33], *&v10[v33 + 8], *&v10[v33 + 16]))
        {
LABEL_19:
          sub_1B779042C(v12, type metadata accessor for InternalTransaction);
          result = sub_1B779048C(v10, v12, type metadata accessor for InternalTransaction);
          goto LABEL_11;
        }
      }

      result = sub_1B779042C(v10, type metadata accessor for InternalTransaction);
LABEL_11:
      ++v27;
    }

    while (v28 != v19);
  }

  sub_1B779048C(v12, v18, type metadata accessor for InternalTransaction);
  (*(v5 + 56))(v18, 0, 1, v4);
  v16 = v34;
  a2 = v35;
LABEL_5:
  sub_1B722376C(v18, v16, &qword_1EB98F7B0);
  result = (*(v5 + 48))(v16, 1, v4);
  if (result == 1)
  {
    v22 = 0;
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v23 = v36;
    sub_1B779048C(v16, v36, type metadata accessor for InternalTransaction);
    v24 = v23 + *(v4 + 32);
    v40 = *(v24 + 32);
    v25 = *(v24 + 16);
    v38 = *v24;
    v39 = v25;
    v22 = *(v23 + *(v4 + 44));
    sub_1B7215720(&v38, v37);
    result = sub_1B779042C(v23, type metadata accessor for InternalTransaction);
    v26 = v39;
    *a2 = v38;
    *(a2 + 16) = v26;
    *(a2 + 32) = v40;
  }

  *(a2 + 40) = v22;
  return result;
}

uint64_t sub_1B778C2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InternalTransaction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = *(a1 + 16);
  if (!v19)
  {
    (*(v5 + 56))(&v34 - v17, 1, 1, v4);
    goto LABEL_5;
  }

  v34 = v16;
  v35 = a2;
  v20 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  result = sub_1B77903C4(v20, v12, type metadata accessor for InternalTransaction);
  if (v19 != 1)
  {
    v27 = 1;
    do
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return result;
      }

      sub_1B77903C4(v20 + *(v5 + 72) * v27, v10, type metadata accessor for InternalTransaction);
      v29 = *(v4 + 44);
      v30 = v10[v29];
      v31 = v12[v29];
      if (v30)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_19;
        }

        v32 = *(v4 + 32);
        if (MEMORY[0x1B8CA5940](*&v12[v32], *&v12[v32 + 8], *&v12[v32 + 16], *&v10[v32], *&v10[v32 + 8], *&v10[v32 + 16]))
        {
          goto LABEL_19;
        }
      }

      else if ((v31 & 1) == 0)
      {
        v33 = *(v4 + 32);
        if (MEMORY[0x1B8CA5940](*&v10[v33], *&v10[v33 + 8], *&v10[v33 + 16], *&v12[v33], *&v12[v33 + 8], *&v12[v33 + 16]))
        {
LABEL_19:
          sub_1B779042C(v12, type metadata accessor for InternalTransaction);
          result = sub_1B779048C(v10, v12, type metadata accessor for InternalTransaction);
          goto LABEL_11;
        }
      }

      result = sub_1B779042C(v10, type metadata accessor for InternalTransaction);
LABEL_11:
      ++v27;
    }

    while (v28 != v19);
  }

  sub_1B779048C(v12, v18, type metadata accessor for InternalTransaction);
  (*(v5 + 56))(v18, 0, 1, v4);
  v16 = v34;
  a2 = v35;
LABEL_5:
  sub_1B722376C(v18, v16, &qword_1EB98F7B0);
  result = (*(v5 + 48))(v16, 1, v4);
  if (result == 1)
  {
    v22 = 0;
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v23 = v36;
    sub_1B779048C(v16, v36, type metadata accessor for InternalTransaction);
    v24 = v23 + *(v4 + 32);
    v40 = *(v24 + 32);
    v25 = *(v24 + 16);
    v38 = *v24;
    v39 = v25;
    v22 = *(v23 + *(v4 + 44));
    sub_1B7215720(&v38, v37);
    result = sub_1B779042C(v23, type metadata accessor for InternalTransaction);
    v26 = v39;
    *a2 = v38;
    *(a2 + 16) = v26;
    *(a2 + 32) = v40;
  }

  *(a2 + 40) = v22;
  return result;
}

double sub_1B778C6A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for InternalTransaction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = *(a1 + 16);
  if (v10)
  {
    v33 = a2;
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v31 = &v31 - v9;
    sub_1B77903C4(v11, &v31 - v9, type metadata accessor for InternalTransaction);
    v12 = v11;
    v37 = 0;
    v38 = v8;
    v32 = v4;
    v35 = *(v4 + 44);
    v36 = 0;
    v34 = *(v5 + 72);
    for (i = v10 - 1; ; --i)
    {
      v14 = v12;
      v15 = v38;
      sub_1B77903C4(v12, v38, type metadata accessor for InternalTransaction);
      v16 = *(v15 + v35) == 1 ? sub_1B7801648() : sub_1B7801638();
      v19 = v16;
      v20 = v17;
      v21 = v18;
      sub_1B779042C(v38, type metadata accessor for InternalTransaction);
      if (!i)
      {
        break;
      }

      v37 = v21;
      v36 = v19 & 0xFFFF000000000000;
      v12 = v14 + v34;
    }

    v41 = v19;
    v42 = v20;
    v43 = v21;
    v22 = sub_1B78015D8();
    if (v22)
    {
      sub_1B78016A8();
      v21 = v43;
      v19 = v41;
      v20 = v42;
    }

    v23 = v31;
    v24 = &v31[*(v32 + 32)];
    v25 = *(v24 + 3);
    v26 = *(v24 + 4);

    CurrencyAmount.init(_:currencyCode:)(v19, v20, v21, v25, v26, v39);
    sub_1B779042C(v23, type metadata accessor for InternalTransaction);
    v27 = v40;
    result = *v39;
    v29 = v39[1];
    v30 = v33;
    *v33 = v39[0];
    v30[1] = v29;
    *(v30 + 4) = v27;
    *(v30 + 40) = v22 & 1;
  }

  else
  {
    result = 0.0;
    *(a2 + 25) = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1B778C994(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InternalTransaction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = a1;

  sub_1B778A240(&v31);
  v8 = v31;
  v9 = *(v31 + 16);
  if (v9)
  {
    sub_1B77903C4(v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v9 >> 1), v7, type metadata accessor for InternalTransaction);

    v26 = &v7[*(v4 + 32)];
    v27 = *(v26 + 1);
    v31 = *v26;
    v32 = v27;
    v33 = *(v26 + 4);
    v28 = v7[*(v4 + 44)];
    sub_1B7215720(&v31, v35);
    sub_1B779042C(v7, type metadata accessor for InternalTransaction);
    v29 = v33;
    v30 = v32;
    *a2 = v31;
    *(a2 + 16) = v30;
    *(a2 + 32) = v29;
    *(a2 + 40) = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1B8);
    v10 = *(v5 + 72);
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B7808C50;
    if (v9)
    {
      v13 = v12 + v11;
      v14 = v9 >> 1;
      v15 = v8 + v11 + v10 * (v9 >> 1);
      v16 = v12;
      sub_1B77903C4(v15, v12 + v11, type metadata accessor for InternalTransaction);
      sub_1B77903C4(v8 + v11 + v10 * (v14 - 1), v13 + v10, type metadata accessor for InternalTransaction);

      sub_1B778C6A4(v16, &v31);
      swift_setDeallocating();
      swift_arrayDestroy();
      v17 = swift_deallocClassInstance();
      v18 = v32;
      v19 = v33;
      v20 = v34;
      if (v33)
      {
        MEMORY[0x1B8CA5900](v17, 2.0);
        v21 = sub_1B7801618();
        CurrencyAmount.init(_:currencyCode:)(v21, v22, v23, *(&v18 + 1), v19, v35);
        v24 = v36;
        v25 = v35[1];
        *a2 = v35[0];
        *(a2 + 16) = v25;
        *(a2 + 32) = v24;
        *(a2 + 40) = v20 & 1;
      }

      else
      {
        *a2 = v31;
        *(a2 + 16) = v18;
        *(a2 + 32) = 0;
        *(a2 + 40) = v20;
      }
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }
}

uint64_t static TransactionStatistics.generate(for:options:)(uint64_t a1, char *a2)
{
  v2 = *a2;

  v4 = sub_1B778F71C(v3);

  v7[16] = v2;
  v5 = sub_1B778FACC(v4, sub_1B778FA88, v7);

  return v5;
}

uint64_t sub_1B778CCE8(uint64_t *a1)
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
        type metadata accessor for InternalTransaction(0);
        v6 = sub_1B7800C78();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for InternalTransaction(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B778D370(v8, v9, a1, v4);
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
    return sub_1B778CE14(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B778CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for InternalTransaction(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v41 = v18;
    v35 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v39 = v20;
      v40 = a3;
      v37 = v23;
      v38 = v22;
      while (1)
      {
        sub_1B77903C4(v23, v17, type metadata accessor for InternalTransaction);
        sub_1B77903C4(v20, v13, type metadata accessor for InternalTransaction);
        v24 = *(v8 + 44);
        v25 = v17[v24];
        v26 = v13[v24];
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (v26)
        {
          v27 = *(v8 + 32);
          v28 = &v17[v27];
          v29 = &v13[v27];
LABEL_12:
          v31 = MEMORY[0x1B8CA5940](*v29, *(v29 + 1), *(v29 + 4), *v28, *(v28 + 1), *(v28 + 4));
          sub_1B779042C(v13, type metadata accessor for InternalTransaction);
          result = sub_1B779042C(v17, type metadata accessor for InternalTransaction);
          if ((v31 & 1) == 0)
          {
            goto LABEL_5;
          }

          if (!v41)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

        sub_1B779042C(v13, type metadata accessor for InternalTransaction);
        result = sub_1B779042C(v17, type metadata accessor for InternalTransaction);
        if (!v41)
        {
LABEL_19:
          __break(1u);
          return result;
        }

LABEL_16:
        v32 = v42;
        sub_1B779048C(v23, v42, type metadata accessor for InternalTransaction);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1B779048C(v32, v20, type metadata accessor for InternalTransaction);
        v20 += v21;
        v23 += v21;
        if (__CFADD__(v22++, 1))
        {
          goto LABEL_5;
        }
      }

      if (v26)
      {
        sub_1B779042C(v13, type metadata accessor for InternalTransaction);
        result = sub_1B779042C(v17, type metadata accessor for InternalTransaction);
LABEL_5:
        a3 = v40 + 1;
        v20 = v39 + v35;
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v30 = *(v8 + 32);
    v29 = &v17[v30];
    v28 = &v13[v30];
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B778D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for InternalTransaction(0);
  v9 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_1B77903C4(v22, v17, type metadata accessor for InternalTransaction);
      sub_1B77903C4(v23, v13, type metadata accessor for InternalTransaction);
      v24 = v37(v17, v13);
      sub_1B779042C(v13, type metadata accessor for InternalTransaction);
      result = sub_1B779042C(v17, type metadata accessor for InternalTransaction);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_1B779048C(v22, v35, type metadata accessor for InternalTransaction);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1B779048C(v25, v23, type metadata accessor for InternalTransaction);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1B778D370(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v141 = a1;
  v8 = type metadata accessor for InternalTransaction(0);
  v150 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v147 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v157 = &v138 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v138 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v138 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v155 = &v138 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v154 = &v138 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v142 = &v138 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v144 = &v138 - v26;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_117:
    v30 = *v141;
    if (!*v141)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_119:
      v159 = v29;
      v131 = *(v29 + 16);
      if (v131 >= 2)
      {
        while (1)
        {
          v132 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v133 = a3;
          a3 = v131 - 1;
          v134 = v29;
          v29 = *(v29 + 16 * v131);
          v135 = v134;
          v136 = *&v134[16 * v131 + 24];
          sub_1B778DF1C(v132 + *(v150 + 72) * v29, v132 + *(v150 + 72) * *&v134[16 * v131 + 16], v132 + *(v150 + 72) * v136, v30);
          if (v5)
          {
          }

          if (v136 < v29)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_1B77E4CA4(v135);
          }

          if (v131 - 2 >= *(v135 + 2))
          {
            goto LABEL_143;
          }

          v137 = &v135[16 * v131];
          *v137 = v29;
          v137[1] = v136;
          v159 = v135;
          result = sub_1B77E4C18(v131 - 1);
          v29 = v159;
          v131 = *(v159 + 16);
          a3 = v133;
          if (v131 <= 1)
          {
          }
        }
      }
    }

LABEL_149:
    result = sub_1B77E4CA4(v29);
    v29 = result;
    goto LABEL_119;
  }

  v138 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v151 = a3;
  v158 = v8;
  while (2)
  {
    v30 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      goto LABEL_41;
    }

    v148 = v27;
    v139 = v29;
    v31 = *a3;
    v32 = *(v150 + 72);
    v153 = v28 + 1;
    sub_1B77903C4(v31 + v32 * v30, v144, type metadata accessor for InternalTransaction);
    v143 = v28;
    v152 = v32;
    v33 = v31 + v32 * v28;
    v34 = v31;
    v35 = v142;
    sub_1B77903C4(v33, v142, type metadata accessor for InternalTransaction);
    v36 = *(v8 + 44);
    v37 = *(v144 + v36);
    v38 = *(v35 + v36);
    v140 = v5;
    if (v37)
    {
      v30 = v153;
      if (v38)
      {
        v39 = *(v8 + 32);
        v40 = v144 + v39;
        v41 = v142 + v39;
LABEL_12:
        v42 = v143;
        LODWORD(v149) = MEMORY[0x1B8CA5940](*v41, *(v41 + 8), *(v41 + 16), *v40, *(v40 + 8), *(v40 + 16));
        goto LABEL_13;
      }

      LODWORD(v149) = 1;
      v42 = v143;
    }

    else
    {
      v30 = v153;
      if ((v38 & 1) == 0)
      {
        v43 = *(v8 + 32);
        v41 = v144 + v43;
        v40 = v142 + v43;
        goto LABEL_12;
      }

      LODWORD(v149) = 0;
      v42 = v143;
    }

LABEL_13:
    sub_1B779042C(v142, type metadata accessor for InternalTransaction);
    result = sub_1B779042C(v144, type metadata accessor for InternalTransaction);
    v44 = v42 + 2;
    v45 = v152 * (v42 + 2);
    v46 = v34 + v45;
    v47 = v152 * v30;
    v48 = v34 + v152 * v30;
    do
    {
      v5 = v44;
      v54 = v30;
      v29 = v47;
      v52 = v45;
      if (v44 >= v148)
      {
        break;
      }

      v156 = v30;
      v153 = v45;
      v55 = v44;
      v56 = v154;
      sub_1B77903C4(v46, v154, type metadata accessor for InternalTransaction);
      v57 = v155;
      sub_1B77903C4(v48, v155, type metadata accessor for InternalTransaction);
      v58 = *(v158 + 44);
      v59 = *(v56 + v58);
      v60 = *(v57 + v58);
      v5 = v55;
      if (v59)
      {
        if ((v60 & 1) == 0)
        {
          v53 = 1;
          v52 = v153;
          goto LABEL_16;
        }

        v61 = *(v158 + 32);
        v51 = v154 + v61;
        v50 = v155 + v61;
      }

      else
      {
        if (v60)
        {
          v53 = 0;
          v52 = v153;
          goto LABEL_16;
        }

        v49 = *(v158 + 32);
        v50 = v154 + v49;
        v51 = v155 + v49;
      }

      v52 = v153;
      v53 = MEMORY[0x1B8CA5940](*v50, *(v50 + 8), *(v50 + 16), *v51, *(v51 + 8), *(v51 + 16));
LABEL_16:
      sub_1B779042C(v155, type metadata accessor for InternalTransaction);
      result = sub_1B779042C(v154, type metadata accessor for InternalTransaction);
      v44 = v5 + 1;
      v46 += v152;
      v48 += v152;
      v54 = v156;
      v30 = v156 + 1;
      v47 = v29 + v152;
      v45 = v52 + v152;
    }

    while (((v149 ^ v53) & 1) == 0);
    if ((v149 & 1) == 0)
    {
      v30 = v5;
      v29 = v139;
      v5 = v140;
      a3 = v151;
      v8 = v158;
      goto LABEL_40;
    }

    a3 = v143;
    if (v5 < v143)
    {
      goto LABEL_146;
    }

    if (v143 >= v5)
    {
      v30 = v5;
      v29 = v139;
      v5 = v140;
      v8 = v158;
      v28 = v143;
      a3 = v151;
    }

    else
    {
      v62 = v143 * v152;
      v8 = v158;
      do
      {
        if (a3 != v54)
        {
          v156 = v54;
          v64 = *v151;
          if (!*v151)
          {
            goto LABEL_152;
          }

          sub_1B779048C(v64 + v62, v147, type metadata accessor for InternalTransaction);
          if (v62 < v29 || v64 + v62 >= (v64 + v52))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1B779048C(v147, v64 + v29, type metadata accessor for InternalTransaction);
          v8 = v158;
          v54 = v156;
        }

        ++a3;
        v29 -= v152;
        v52 -= v152;
        v62 += v152;
      }

      while (a3 < v54--);
      v30 = v5;
      v29 = v139;
      v5 = v140;
      a3 = v151;
LABEL_40:
      v28 = v143;
    }

LABEL_41:
    v65 = *(a3 + 8);
    if (v30 >= v65)
    {
      goto LABEL_66;
    }

    if (__OFSUB__(v30, v28))
    {
      goto LABEL_145;
    }

    if (v30 - v28 >= v138)
    {
LABEL_66:
      if (v30 < v28)
      {
        goto LABEL_144;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B723E420(0, *(v29 + 16) + 1, 1, v29);
        v29 = result;
      }

      v87 = *(v29 + 16);
      v86 = *(v29 + 24);
      a3 = v87 + 1;
      if (v87 >= v86 >> 1)
      {
        result = sub_1B723E420((v86 > 1), v87 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 16) = a3;
      v88 = v29 + 16 * v87;
      *(v88 + 32) = v28;
      *(v88 + 40) = v30;
      v153 = v30;
      v30 = *v141;
      if (!*v141)
      {
        goto LABEL_154;
      }

      if (!v87)
      {
LABEL_3:
        a3 = v151;
        v27 = v151[1];
        v28 = v153;
        v8 = v158;
        if (v153 >= v27)
        {
          goto LABEL_117;
        }

        continue;
      }

      while (1)
      {
        v89 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v90 = *(v29 + 32);
          v91 = *(v29 + 40);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_86:
          if (v93)
          {
            goto LABEL_133;
          }

          v106 = (v29 + 16 * a3);
          v108 = *v106;
          v107 = v106[1];
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_136;
          }

          v112 = (v29 + 32 + 16 * v89);
          v114 = *v112;
          v113 = v112[1];
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_140;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v89 = a3 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v116 = (v29 + 16 * a3);
        v118 = *v116;
        v117 = v116[1];
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_100:
        if (v111)
        {
          goto LABEL_135;
        }

        v119 = v29 + 16 * v89;
        v121 = *(v119 + 32);
        v120 = *(v119 + 40);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_138;
        }

        if (v122 < v110)
        {
          goto LABEL_3;
        }

LABEL_107:
        v127 = v89 - 1;
        if (v89 - 1 >= a3)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v151)
        {
          goto LABEL_151;
        }

        v128 = v29;
        v129 = v29 + 32;
        v29 = *(v29 + 32 + 16 * v127);
        a3 = *(v129 + 16 * v89 + 8);
        sub_1B778DF1C(*v151 + *(v150 + 72) * v29, *v151 + *(v150 + 72) * *(v129 + 16 * v89), *v151 + *(v150 + 72) * a3, v30);
        if (v5)
        {
        }

        if (a3 < v29)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_1B77E4CA4(v128);
        }

        if (v127 >= *(v128 + 2))
        {
          goto LABEL_130;
        }

        v130 = &v128[16 * v127];
        *(v130 + 4) = v29;
        *(v130 + 5) = a3;
        v159 = v128;
        result = sub_1B77E4C18(v89);
        v29 = v159;
        a3 = *(v159 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v94 = v29 + 32 + 16 * a3;
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_131;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_132;
      }

      v101 = (v29 + 16 * a3);
      v103 = *v101;
      v102 = v101[1];
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_134;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_137;
      }

      if (v105 >= v97)
      {
        v123 = (v29 + 32 + 16 * v89);
        v125 = *v123;
        v124 = v123[1];
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_141;
        }

        if (v92 < v126)
        {
          v89 = a3 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

    break;
  }

  v66 = v28 + v138;
  if (__OFADD__(v28, v138))
  {
    goto LABEL_147;
  }

  if (v66 >= v65)
  {
    v66 = *(a3 + 8);
  }

  if (v66 < v28)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v30 == v66)
  {
    goto LABEL_66;
  }

  v139 = v29;
  v140 = v5;
  v67 = *a3;
  v68 = *(v150 + 72);
  a3 = *a3 + v68 * (v30 - 1);
  v69 = v28;
  v70 = -v68;
  v143 = v69;
  v71 = v69 - v30;
  v156 = v67;
  v145 = v68;
  v146 = v66;
  v72 = v67 + v30 * v68;
  while (2)
  {
    v152 = a3;
    v153 = v30;
    v148 = v72;
    v149 = v71;
    v73 = v72;
    while (2)
    {
      sub_1B77903C4(v73, v18, type metadata accessor for InternalTransaction);
      sub_1B77903C4(a3, v15, type metadata accessor for InternalTransaction);
      v74 = *(v8 + 44);
      v75 = v18[v74];
      v76 = v15[v74];
      if (v75)
      {
        if (v76)
        {
          v77 = *(v8 + 32);
          v78 = &v18[v77];
          v79 = &v15[v77];
          goto LABEL_58;
        }

        sub_1B779042C(v15, type metadata accessor for InternalTransaction);
        result = sub_1B779042C(v18, type metadata accessor for InternalTransaction);
        if (!v156)
        {
          goto LABEL_150;
        }

LABEL_62:
        v82 = v18;
        v83 = v15;
        v84 = v157;
        sub_1B779048C(v73, v157, type metadata accessor for InternalTransaction);
        swift_arrayInitWithTakeFrontToBack();
        sub_1B779048C(v84, a3, type metadata accessor for InternalTransaction);
        a3 += v70;
        v73 += v70;
        v85 = __CFADD__(v71++, 1);
        v15 = v83;
        v18 = v82;
        if (v85)
        {
          goto LABEL_51;
        }

        continue;
      }

      break;
    }

    if (v76)
    {
      sub_1B779042C(v15, type metadata accessor for InternalTransaction);
      sub_1B779042C(v18, type metadata accessor for InternalTransaction);
LABEL_51:
      v30 = v153 + 1;
      a3 = v152 + v145;
      v71 = v149 - 1;
      v72 = v148 + v145;
      if (v153 + 1 == v146)
      {
        v30 = v146;
        v29 = v139;
        v5 = v140;
        v28 = v143;
        goto LABEL_66;
      }

      continue;
    }

    break;
  }

  v80 = *(v8 + 32);
  v79 = &v18[v80];
  v78 = &v15[v80];
LABEL_58:
  v81 = MEMORY[0x1B8CA5940](*v79, *(v79 + 1), *(v79 + 4), *v78, *(v78 + 1), *(v78 + 4));
  sub_1B779042C(v15, type metadata accessor for InternalTransaction);
  result = sub_1B779042C(v18, type metadata accessor for InternalTransaction);
  v8 = v158;
  if ((v81 & 1) == 0)
  {
    goto LABEL_51;
  }

  if (v156)
  {
    goto LABEL_62;
  }

LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_1B778DF1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for InternalTransaction(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v54 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_76;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_77;
  }

  v22 = (a2 - a1) / v20;
  v65 = a1;
  v64 = a4;
  v59 = v8;
  if (v22 < v21 / v20)
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v23;
    v63 = a4 + v23;
    if (v23 < 1 || a2 >= a3)
    {
      goto LABEL_74;
    }

    while (1)
    {
      sub_1B77903C4(a2, v18, type metadata accessor for InternalTransaction);
      sub_1B77903C4(a4, v15, type metadata accessor for InternalTransaction);
      v26 = *(v8 + 44);
      v27 = v18[v26];
      v28 = v15[v26];
      if (v27)
      {
        if ((v28 & 1) == 0)
        {
          sub_1B779042C(v15, type metadata accessor for InternalTransaction);
          sub_1B779042C(v18, type metadata accessor for InternalTransaction);
          goto LABEL_28;
        }

        v29 = *(v8 + 32);
        v30 = &v18[v29];
        v31 = &v15[v29];
      }

      else
      {
        if (v28)
        {
          sub_1B779042C(v15, type metadata accessor for InternalTransaction);
          sub_1B779042C(v18, type metadata accessor for InternalTransaction);
LABEL_32:
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v64 = a4 + v20;
          a4 += v20;
          goto LABEL_40;
        }

        v32 = *(v8 + 32);
        v31 = &v18[v32];
        v30 = &v15[v32];
      }

      v33 = MEMORY[0x1B8CA5940](*v31, *(v31 + 1), *(v31 + 4), *v30, *(v30 + 1), *(v30 + 4));
      sub_1B779042C(v15, type metadata accessor for InternalTransaction);
      sub_1B779042C(v18, type metadata accessor for InternalTransaction);
      v8 = v59;
      if ((v33 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_28:
      if (a1 < a2 || a1 >= a2 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v20;
LABEL_40:
      a1 += v20;
      v65 = a1;
      if (a4 >= v62 || a2 >= a3)
      {
        goto LABEL_74;
      }
    }
  }

  v24 = v21 / v20 * v20;
  if (a4 < a2 || a2 + v24 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v34 = a4 + v24;
  if (v24 < 1)
  {
    goto LABEL_73;
  }

  v35 = -v20;
  v36 = a4 + v24;
  v57 = -v20;
  while (2)
  {
    while (2)
    {
      v55 = v34;
      v37 = a2;
      a2 += v35;
      v58 = v37;
      while (1)
      {
        if (v37 <= a1)
        {
          v65 = v37;
          v63 = v55;
          goto LABEL_74;
        }

        v38 = a3;
        v56 = v34;
        v39 = v35;
        v40 = a4;
        v62 = v36 + v39;
        v41 = a2;
        v42 = v60;
        sub_1B77903C4(v36 + v39, v60, type metadata accessor for InternalTransaction);
        v43 = v41;
        v44 = v41;
        v45 = v61;
        sub_1B77903C4(v44, v61, type metadata accessor for InternalTransaction);
        v46 = *(v8 + 44);
        v47 = *(v42 + v46);
        v48 = *(v45 + v46);
        a2 = v43;
        if (v47)
        {
          if ((v48 & 1) == 0)
          {
            v52 = 1;
            a4 = v40;
            goto LABEL_59;
          }

          v49 = *(v8 + 32);
          v50 = v60 + v49;
          v51 = v61 + v49;
        }

        else
        {
          if (v48)
          {
            v52 = 0;
            a4 = v40;
            goto LABEL_59;
          }

          v53 = *(v8 + 32);
          v51 = v60 + v53;
          v50 = v61 + v53;
        }

        a4 = v40;
        v52 = MEMORY[0x1B8CA5940](*v51, *(v51 + 8), *(v51 + 16), *v50, *(v50 + 8), *(v50 + 16));
LABEL_59:
        v35 = v57;
        a3 = v38 + v57;
        sub_1B779042C(v61, type metadata accessor for InternalTransaction);
        sub_1B779042C(v60, type metadata accessor for InternalTransaction);
        if (v52)
        {
          break;
        }

        v34 = v62;
        v8 = v59;
        if (v38 < v36 || a3 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v38 != v36)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v36 = v34;
        v37 = v58;
        if (v62 <= a4)
        {
          a2 = v58;
          goto LABEL_73;
        }
      }

      v8 = v59;
      if (v38 >= v58 && a3 < v58)
      {
        v34 = v56;
        if (v38 != v58)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v36 <= a4)
        {
          goto LABEL_73;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v34 = v56;
    if (v36 > a4)
    {
      continue;
    }

    break;
  }

LABEL_73:
  v65 = a2;
  v63 = v34;
LABEL_74:
  sub_1B778E5BC(&v65, &v64, &v63, type metadata accessor for InternalTransaction);
  return 1;
}

uint64_t sub_1B778E5BC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t _s10FinanceKit21TransactionStatisticsV9StatisticV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v13 = *a1;
  v14[0] = v2;
  *&v14[1] = *(a1 + 4);
  v3 = *(a1 + 40);
  v4 = a2[1];
  v15 = *a2;
  v16[0] = v4;
  *&v16[1] = *(a2 + 4);
  v5 = *(a2 + 40);
  v6 = LODWORD(v14[0]);
  v7 = v4;
  v8 = v13;
  v9 = v15;
  sub_1B7215720(&v13, v12);
  sub_1B7215720(&v15, v12);
  if ((MEMORY[0x1B8CA5970](v8, *(&v8 + 1), v6, v9, *(&v9 + 1), v7) & 1) == 0)
  {
    sub_1B721722C(&v15);
    sub_1B721722C(&v13);
    return 0;
  }

  if (*(v14 + 8) == *(v16 + 8))
  {
    sub_1B721722C(&v15);
    sub_1B721722C(&v13);
  }

  else
  {
    v11 = sub_1B78020F8();
    sub_1B721722C(&v15);
    sub_1B721722C(&v13);
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  return v3 ^ v5 ^ 1u;
}

BOOL _s10FinanceKit21TransactionStatisticsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v118 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v115 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v115 - v17;
  v19 = *(v16 + 48);
  v120 = a1;
  sub_1B7280900(a1, &v115 - v17);
  sub_1B7280900(a2, &v18[v19]);
  v20 = *(v5 + 48);
  if (v20(v18, 1, v4) == 1)
  {
    if (v20(&v18[v19], 1, v4) == 1)
    {
      v116 = v5;
      v117 = a2;
      sub_1B7205418(v18, &qword_1EB98EBD0);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_1EB98FCE0;
    v22 = v18;
LABEL_14:
    sub_1B7205418(v22, v21);
    return 0;
  }

  sub_1B7280900(v18, v11);
  if (v20(&v18[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  v117 = a2;
  v23 = *(v5 + 32);
  v24 = v5;
  v25 = v119;
  v23(v119, &v18[v19], v4);
  sub_1B71A6F54(&qword_1EB98FAC0);
  LODWORD(v115) = sub_1B7800828();
  v116 = v24;
  v26 = *(v24 + 8);
  v26(v25, v4);
  v26(v11, v4);
  sub_1B7205418(v18, &qword_1EB98EBD0);
  if ((v115 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v27 = type metadata accessor for TransactionStatistics();
  v28 = v27[5];
  v29 = *(v12 + 48);
  v30 = v120;
  sub_1B7280900(v120 + v28, v15);
  v31 = v117 + v28;
  v32 = v117;
  sub_1B7280900(v31, &v15[v29]);
  if (v20(v15, 1, v4) == 1)
  {
    if (v20(&v15[v29], 1, v4) == 1)
    {
      sub_1B7205418(v15, &qword_1EB98EBD0);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v33 = v118;
  sub_1B7280900(v15, v118);
  if (v20(&v15[v29], 1, v4) == 1)
  {
    (*(v116 + 8))(v33, v4);
LABEL_13:
    v21 = &qword_1EB98FCE0;
    v22 = v15;
    goto LABEL_14;
  }

  v35 = v116;
  v36 = v119;
  (*(v116 + 32))(v119, &v15[v29], v4);
  sub_1B71A6F54(&qword_1EB98FAC0);
  v37 = sub_1B7800828();
  v38 = *(v35 + 8);
  v38(v36, v4);
  v38(v33, v4);
  sub_1B7205418(v15, &qword_1EB98EBD0);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v39 = v27[6];
  v40 = (v30 + v39);
  v41 = *(v30 + v39 + 8);
  v42 = (v32 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v44 = v27[7];
  v46 = *(v30 + v44);
  v45 = *(v30 + v44 + 8);
  v47 = *(v30 + v44 + 16);
  v48 = *(v30 + v44 + 24);
  v49 = *(v30 + v44 + 32);
  v50 = *(v30 + v44 + 40);
  v51 = (v32 + v44);
  v52 = *v51;
  v53 = v51[1];
  v55 = v51[2];
  v54 = v51[3];
  v56 = v51[4];
  v57 = *(v51 + 40);
  if (v49)
  {
    LODWORD(v119) = v57;
    if (!v56)
    {
      v120 = v55;
      v126 = v46;
      v127 = v45;
      v128 = v47;
      v129 = v48;
      v130 = v49;
      v131 = v50;
      v60 = v50;
      v61 = v47;
LABEL_59:
      v70 = v48;
      swift_bridgeObjectRetain_n();
      sub_1B76F0388(&v126);
      goto LABEL_60;
    }

    LODWORD(v118) = v50;
    v121 = v46;
    v122 = v45;
    v123 = v47;
    v124 = v48;
    v115 = v48;
    v125 = v49;
    v58 = v47;

    swift_bridgeObjectRetain_n();
    sub_1B7215720(&v121, &v126);
    v116 = v58;
    if ((MEMORY[0x1B8CA5970](v46, v45, v58, v52, v53, v55) & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v124 == v54 && v56 == v125)
    {

      sub_1B721722C(&v121);
      v59 = v120;
    }

    else
    {
      v62 = sub_1B78020F8();

      sub_1B721722C(&v121);
      v59 = v120;
      if ((v62 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v63 = v118 ^ v119;
    v126 = v46;
    v127 = v45;
    v128 = v116;
    v129 = v115;
    v130 = v49;
    v131 = v118;
    sub_1B76F0388(&v126);

    if (v63)
    {
      return 0;
    }
  }

  else
  {
    if (v56)
    {
      v120 = v55;
      LODWORD(v119) = v57;
      v60 = v50;
      v61 = v47;
LABEL_45:
      v70 = v48;

LABEL_60:
      v126 = v46;
      v127 = v45;
      v128 = v61;
      v129 = v70;
      v130 = v49;
      v131 = v60;
      v132 = v52;
      v133 = v53;
      v134 = v120;
      v135 = v54;
      v136 = v56;
LABEL_61:
      v137 = v119;
LABEL_62:
      v21 = &unk_1EB99DE00;
      v22 = &v126;
      goto LABEL_14;
    }

    v59 = v120;
  }

  v64 = v27[8];
  v46 = *(v59 + v64);
  v45 = *(v59 + v64 + 8);
  v61 = *(v59 + v64 + 16);
  v48 = *(v59 + v64 + 24);
  v49 = *(v59 + v64 + 32);
  v65 = *(v59 + v64 + 40);
  v66 = (v117 + v64);
  v52 = *v66;
  v53 = v66[1];
  v67 = v66[2];
  v54 = v66[3];
  v56 = v66[4];
  v68 = *(v66 + 40);
  if (v49)
  {
    LODWORD(v119) = v68;
    if (!v56)
    {
LABEL_58:
      v120 = v67;
      v126 = v46;
      v127 = v45;
      v128 = v61;
      v129 = v48;
      v130 = v49;
      v131 = v65;
      v60 = v65;
      goto LABEL_59;
    }

    LODWORD(v118) = v65;
    v121 = v46;
    v122 = v45;
    v123 = v61;
    v124 = v48;
    v115 = v48;
    v125 = v49;

    swift_bridgeObjectRetain_n();
    sub_1B7215720(&v121, &v126);
    v116 = v61;
    if (MEMORY[0x1B8CA5970](v46, v45, v61, v52, v53, v67))
    {
      if (v124 == v54 && v56 == v125)
      {

        sub_1B721722C(&v121);
        v69 = v120;
      }

      else
      {
        v71 = sub_1B78020F8();

        sub_1B721722C(&v121);
        v69 = v120;
        if ((v71 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      v72 = v118 ^ v119;
      v126 = v46;
      v127 = v45;
      v128 = v116;
      v129 = v115;
      v130 = v49;
      v131 = v118;
      sub_1B76F0388(&v126);

      if (v72)
      {
        return 0;
      }

      goto LABEL_49;
    }

LABEL_55:

    sub_1B721722C(&v121);
    goto LABEL_56;
  }

  if (v56)
  {
LABEL_44:
    v120 = v67;
    LODWORD(v119) = v68;
    v60 = v65;
    goto LABEL_45;
  }

  v69 = v120;
LABEL_49:
  v73 = v27[9];
  v46 = *(v69 + v73);
  v45 = *(v69 + v73 + 8);
  v61 = *(v69 + v73 + 16);
  v48 = *(v69 + v73 + 24);
  v49 = *(v69 + v73 + 32);
  v65 = *(v69 + v73 + 40);
  v74 = (v117 + v73);
  v52 = *v74;
  v53 = v74[1];
  v67 = v74[2];
  v54 = v74[3];
  v56 = v74[4];
  v68 = *(v74 + 40);
  if (!v49)
  {
    if (!v56)
    {

      v75 = v120;
      goto LABEL_67;
    }

    goto LABEL_44;
  }

  LODWORD(v119) = v68;
  if (!v56)
  {
    goto LABEL_58;
  }

  LODWORD(v118) = v65;
  v121 = v46;
  v122 = v45;
  v123 = v61;
  v124 = v48;
  v115 = v48;
  v125 = v49;

  swift_bridgeObjectRetain_n();
  sub_1B7215720(&v121, &v126);
  v116 = v61;
  if ((MEMORY[0x1B8CA5970](v46, v45, v61, v52, v53, v67) & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v124 == v54 && v56 == v125)
  {

    sub_1B721722C(&v121);
    v75 = v120;
    goto LABEL_66;
  }

  v77 = sub_1B78020F8();

  sub_1B721722C(&v121);
  v75 = v120;
  if ((v77 & 1) == 0)
  {
LABEL_56:
    v126 = v46;
    v127 = v45;
    v128 = v116;
    v129 = v115;
    v130 = v49;
    v76 = v118;
LABEL_57:
    v131 = v76;
    sub_1B76F0388(&v126);

    return 0;
  }

LABEL_66:
  v78 = v118 ^ v119;
  v126 = v46;
  v127 = v45;
  v128 = v116;
  v129 = v115;
  v130 = v49;
  v131 = v118;
  sub_1B76F0388(&v126);

  if (v78)
  {
    return 0;
  }

LABEL_67:
  v79 = v27[10];
  v81 = *(v75 + v79);
  v80 = *(v75 + v79 + 8);
  v83 = *(v75 + v79 + 16);
  v82 = *(v75 + v79 + 24);
  v84 = *(v75 + v79 + 32);
  v85 = *(v75 + v79 + 40);
  v86 = (v117 + v79);
  v87 = *v86;
  v88 = v86[1];
  v89 = v86[2];
  v118 = v86[3];
  v119 = v89;
  v90 = v86[4];
  v91 = *(v86 + 40);
  if (!v84)
  {
    LODWORD(v116) = *(v86 + 40);
    if (!v90)
    {

      goto LABEL_82;
    }

    v92 = v81;
    v93 = v80;
    v94 = v82;
    v95 = v83;
    v96 = v85;

    v97 = v96;
    v83 = v95;
    v82 = v94;
    v80 = v93;
    v81 = v92;
    v91 = v116;
LABEL_76:
    v126 = v81;
    v127 = v80;
    v128 = v83;
    v129 = v82;
    v130 = v84;
    v131 = v97;
    v132 = v87;
    v133 = v88;
    v134 = v119;
    v135 = v118;
    v136 = v90;
    v137 = v91;
    goto LABEL_62;
  }

  if (!v90)
  {
    v126 = v81;
    v127 = v80;
    v128 = v83;
    v129 = v82;
    v130 = v84;
    v131 = v85;
    v97 = v85;
    swift_bridgeObjectRetain_n();
    sub_1B76F0388(&v126);
    goto LABEL_76;
  }

  LODWORD(v116) = v85;
  v121 = v81;
  v122 = v80;
  v123 = v83;
  v124 = v82;
  v125 = v84;

  swift_bridgeObjectRetain_n();
  sub_1B7215720(&v121, &v126);
  if ((MEMORY[0x1B8CA5970](v81, v80, v83, v87, v88, v119) & 1) == 0)
  {

    sub_1B721722C(&v121);
LABEL_78:
    v126 = v81;
    v127 = v80;
    v128 = v83;
    v129 = v82;
    v130 = v84;
    v76 = v116;
    goto LABEL_57;
  }

  if (v124 == v118 && v90 == v125)
  {

    sub_1B721722C(&v121);
    goto LABEL_81;
  }

  v98 = sub_1B78020F8();

  sub_1B721722C(&v121);
  if ((v98 & 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_81:
  v99 = v83;
  v100 = v116 ^ v91;
  v126 = v81;
  v127 = v80;
  v128 = v99;
  v129 = v82;
  v130 = v84;
  v131 = v116;
  sub_1B76F0388(&v126);

  if (v100)
  {
    return 0;
  }

LABEL_82:
  v101 = v27[11];
  v103 = *(v120 + v101);
  v102 = *(v120 + v101 + 8);
  v104 = *(v120 + v101 + 16);
  v105 = *(v120 + v101 + 24);
  v106 = *(v120 + v101 + 32);
  LODWORD(v120) = *(v120 + v101 + 40);
  v107 = (v117 + v101);
  v109 = *v107;
  v108 = v107[1];
  v111 = v107[2];
  v110 = v107[3];
  v112 = v107[4];
  LODWORD(v119) = *(v107 + 40);
  if (!v106)
  {
    if (!v112)
    {

      return 1;
    }

    goto LABEL_91;
  }

  if (!v112)
  {
    v126 = v103;
    v127 = v102;
    v128 = v104;
    v129 = v105;
    v130 = v106;
    v131 = v120;
    swift_bridgeObjectRetain_n();
    sub_1B76F0388(&v126);
LABEL_91:
    v126 = v103;
    v127 = v102;
    v128 = v104;
    v129 = v105;
    v130 = v106;
    v131 = v120;
    v132 = v109;
    v133 = v108;
    v134 = v111;
    v135 = v110;
    v136 = v112;
    goto LABEL_61;
  }

  v121 = v103;
  v122 = v102;
  v123 = v104;
  v124 = v105;
  v125 = v106;

  swift_bridgeObjectRetain_n();
  sub_1B7215720(&v121, &v126);
  if ((MEMORY[0x1B8CA5970](v103, v102, v104, v109, v108, v111) & 1) == 0)
  {

    sub_1B721722C(&v121);
LABEL_93:
    v126 = v103;
    v127 = v102;
    v128 = v104;
    v129 = v105;
    v130 = v106;
    v76 = v120;
    goto LABEL_57;
  }

  if (v124 == v110 && v112 == v125)
  {

    sub_1B721722C(&v121);
    goto LABEL_96;
  }

  v113 = sub_1B78020F8();

  sub_1B721722C(&v121);
  if ((v113 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_96:
  v114 = v120 ^ v119;
  v126 = v103;
  v127 = v102;
  v128 = v104;
  v129 = v105;
  v130 = v106;
  v131 = v120;
  sub_1B76F0388(&v126);

  return (v114 & 1) == 0;
}

unint64_t sub_1B778F580()
{
  result = qword_1EB99DD80;
  if (!qword_1EB99DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DD80);
  }

  return result;
}

unint64_t sub_1B778F5D4()
{
  result = qword_1EB99DD88;
  if (!qword_1EB99DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DD88);
  }

  return result;
}

unint64_t sub_1B778F628()
{
  result = qword_1EB99DD98;
  if (!qword_1EB99DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DD98);
  }

  return result;
}

unint64_t sub_1B778F67C()
{
  result = qword_1EB99DDA8;
  if (!qword_1EB99DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DDA8);
  }

  return result;
}

uint64_t sub_1B778F6D0(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 4);
  *a2 = v3;
  v4 = *(a1 + 4);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 32) = v4;
  *(a2 + 40) = *(a1 + 40);

  return a2;
}

uint64_t sub_1B778F71C(uint64_t a1)
{
  v2 = type metadata accessor for InternalTransaction(0);
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
    sub_1B77903C4(v10, v45, type metadata accessor for InternalTransaction);
    v14 = v2;
    v15 = v13 + *(v2 + 32);
    v17 = *(v15 + 24);
    v16 = *(v15 + 32);

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
      sub_1B724DD40(v22, 1);
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
      sub_1B779048C(v45, v44, type metadata accessor for InternalTransaction);
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1B723EA38(0, v27[2] + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1B723EA38(v29 > 1, v30 + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v27[2] = v30 + 1;
      v11 = v27 + v43 + v30 * v42;
      v12 = v42;
      sub_1B779048C(v44, v11, type metadata accessor for InternalTransaction);
      v2 = v41;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1B8);
      v31 = v43;
      v32 = swift_allocObject();
      *(v32 + 16) = v39;
      sub_1B779048C(v45, v32 + v31, type metadata accessor for InternalTransaction);
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

uint64_t sub_1B778FA88@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);

  return sub_1B778B8D0(v3, &v5, a1);
}

uint64_t sub_1B778FACC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v5 = type metadata accessor for TransactionStatistics();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v31[1] = v3;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B71FE948(0, v8, 0);
    v38 = v40;
    v10 = a1 + 64;
    result = sub_1B78018C8();
    v11 = result;
    v12 = 0;
    v39 = *(a1 + 36);
    v32 = a1 + 72;
    v33 = v8;
    v34 = a1 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v39 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v16 = (*(a1 + 48) + 16 * v11);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(a1 + 56) + 8 * v11);

      v36(v17, v18, v19);

      v20 = v38;
      v40 = v38;
      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B71FE948(v21 > 1, v22 + 1, 1);
        v20 = v40;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v38 = v20;
      result = sub_1B779048C(v7, v20 + v23 + *(v35 + 72) * v22, type metadata accessor for TransactionStatistics);
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_25;
      }

      v10 = v34;
      v24 = *(v34 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (v39 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v33;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v14 = v33;
        v28 = (v32 + 8 * v15);
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1B723BB64(v11, v39, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1B723BB64(v11, v39, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_1B778FE20()
{
  sub_1B72F2B80();
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EB99DDC8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B778FF1C()
{
  result = qword_1EB99DDD0;
  if (!qword_1EB99DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DDD0);
  }

  return result;
}

unint64_t sub_1B778FF74()
{
  result = qword_1EB99DDD8;
  if (!qword_1EB99DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DDD8);
  }

  return result;
}

unint64_t sub_1B778FFCC()
{
  result = qword_1EB99DDE0;
  if (!qword_1EB99DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DDE0);
  }

  return result;
}

unint64_t sub_1B7790024()
{
  result = qword_1EB99DDE8;
  if (!qword_1EB99DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DDE8);
  }

  return result;
}

unint64_t sub_1B779007C()
{
  result = qword_1EB99DDF0;
  if (!qword_1EB99DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DDF0);
  }

  return result;
}

unint64_t sub_1B77900D4()
{
  result = qword_1EB99DDF8;
  if (!qword_1EB99DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DDF8);
  }

  return result;
}

uint64_t sub_1B7790128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756D6978616DLL && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1851876717 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E616964656DLL && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7173491 && a2 == 0xE300000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B77903C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B779042C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B779048C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void ScheduledPayment.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 id];
  sub_1B77FF9E8();

  v5 = [v3 paymentIdentifier];
  v6 = sub_1B7800868();
  v8 = v7;

  v9 = type metadata accessor for ScheduledPayment();
  v10 = (a2 + v9[5]);
  *v10 = v6;
  v10[1] = v8;
  v11 = [v3 accountObject];
  v12 = [v11 publicAccountObject];
  v13 = [v12 id];

  sub_1B77FF9E8();
  v14 = [v3 paymentDescription];
  v15 = sub_1B7800868();
  v17 = v16;

  v18 = (a2 + v9[7]);
  *v18 = v15;
  v18[1] = v17;
  v19 = [v3 amountValue];
  [v19 decimalValue];
  LODWORD(v15) = v61;
  v20 = v60;

  v21 = [v3 currency];
  v22 = sub_1B7800868();
  v24 = v23;

  CurrencyAmount.init(_:currencyCode:)(v20, *(&v20 + 1), v15, v22, v24, &v60);
  v25 = a2 + v9[9];
  v26 = v61;
  *v25 = v60;
  *(v25 + 16) = v26;
  *(v25 + 32) = v62;
  v27 = [v3 paymentDate];
  sub_1B77FF928();

  v28 = [v3 schedulingTypeValue];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 integerValue];

    if (v30 == 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    if (!v30)
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 2;
  }

  *(a2 + v9[10]) = v31;
  v32 = [v3 statusValue];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 integerValue];

    ScheduledPayment.Status.init(rawValue:)(v34, &v59);
    v35 = v59;
  }

  else
  {
    v35 = 6;
  }

  *(a2 + v9[11]) = v35;
  v36 = [v3 mandateName];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1B7800868();
    v55 = v39;
    v57 = v38;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v40 = [v3 mandateReason];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1B7800868();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = [v3 purposeCode];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1B7800868();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = [v3 classificationCode];

  if (v50)
  {
    v51 = sub_1B7800868();
    v53 = v52;
  }

  else
  {

    v51 = 0;
    v53 = 0;
  }

  v54 = (a2 + v9[12]);
  *v54 = v58;
  v54[1] = v56;
  v54[2] = v42;
  v54[3] = v44;
  v54[4] = v47;
  v54[5] = v49;
  v54[6] = v51;
  v54[7] = v53;
}

void sub_1B77908D4(id *a1)
{
  v1 = [*a1 paymentDate];
  sub_1B77FF928();
}

id ManagedScheduledPreauthorizedPayment.__allocating_init(id:paymentIdentifier:statusValue:schedulingTypeValue:paymentDescription:paymentDate:amountValue:currency:mandateName:mandateReason:classificationCode:purposeCode:accountObject:context:)(char *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, void *a16, void *a17)
{
  v22 = objc_allocWithZone(v17);
  v23 = sub_1B7791564(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, *(&a10 + 1), a11, *(&a11 + 1), a12, *(&a12 + 1), a13, *(&a13 + 1), a14, a15, a16, a17);

  return v23;
}

id ManagedScheduledPreauthorizedPayment.init(id:paymentIdentifier:statusValue:schedulingTypeValue:paymentDescription:paymentDate:amountValue:currency:mandateName:mandateReason:classificationCode:purposeCode:accountObject:context:)(char *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21)
{
  v23 = sub_1B7791564(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);

  return v23;
}

id ManagedScheduledPreauthorizedPayment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedScheduledPreauthorizedPayment.__allocating_init(_:account:context:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v54 = a2;
  v55 = a3;
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v53 = v12;
  v14();
  v15 = type metadata accessor for ScheduledPayment();
  v16 = a1 + v15[5];
  v17 = *v16;
  v50 = *(v16 + 8);
  v51 = v17;
  if (*(a1 + v15[11]) == 6)
  {

    v52 = 0;
  }

  else
  {

    v52 = sub_1B7801008();
  }

  if (*(a1 + v15[10]) == 2)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_1B7801008();
  }

  v18 = v15[8];
  v19 = (a1 + v15[7]);
  v20 = *v19;
  v47 = v19[1];
  v48 = v20;
  (*(v7 + 16))(v9, a1 + v18, v6);
  v21 = a1 + v15[9];
  v58 = *v21;
  v59 = *(v21 + 16);
  v22 = objc_allocWithZone(MEMORY[0x1E696AB90]);

  v56 = v58;
  v57 = v59;
  v23 = [v22 initWithDecimal_];
  v24 = *(v21 + 24);
  v25 = *(v21 + 32);
  v26 = (a1 + v15[12]);
  v27 = v26[1];
  v45 = *v26;
  v46 = v24;
  v28 = v26[2];
  v29 = v26[3];
  v30 = v26[7];
  v42 = v26[6];
  v43 = v28;
  v32 = v26[4];
  v31 = v26[5];
  v44 = objc_allocWithZone(v4);

  v33 = v55;
  v34 = v9;
  v35 = v54;
  v41 = v29;
  v40 = v25;
  v36 = v52;
  v37 = v49;
  v38 = sub_1B7791564(v53, v51, v50, v52, v49, v48, v47, v34, v23, v46, v40, v45, v27, v43, v41, v42, v30, v32, v31, v54, v55);

  sub_1B7791D10(a1, type metadata accessor for ScheduledPayment);
  return v38;
}