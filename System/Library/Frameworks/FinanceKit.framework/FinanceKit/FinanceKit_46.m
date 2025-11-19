unint64_t static ManagedInternalAccount.existingAccount(with:in:)(__int128 *a1)
{
  v2 = v1;
  v12 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v16.receiver = swift_getObjCClassFromMetadata();
  v16.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v5 = objc_msgSendSuper2(&v16, sel_fetchRequest);
  v6 = sub_1B7800C18();
  [v5 setRelationshipKeyPathsForPrefetching_];

  v13 = v12;
  v14 = v3;
  v15 = v4;
  v7 = _s10FinanceKit22ManagedInternalAccountC012predicateForE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v13);
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

  v10 = result;
  v11 = sub_1B7801958();
  result = v10;
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(result + 32);
LABEL_8:
    v2 = v9;

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t static ManagedInternalAccount.existingAccount(withExternalAccountID:in:)(uint64_t a1, uint64_t a2)
{
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v4 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1B7800C18();
  [v4 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  v7 = "isAccountEnabled == true";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v5;
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1B78010E8();
  [v4 setPredicate_];

  v10 = v16;
  result = sub_1B7801498();
  if (v10)
  {

    return v7;
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

  v13 = result;
  v14 = sub_1B7801958();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v7 = v12;

    return v7;
  }

  __break(1u);
  return result;
}

id static ManagedInternalAccount.fetchRequest()()
{
  v3.receiver = swift_getObjCClassFromMetadata();
  v3.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v0 = objc_msgSendSuper2(&v3, sel_fetchRequest);
  v1 = sub_1B7800C18();
  [v0 setRelationshipKeyPathsForPrefetching_];

  return v0;
}

unint64_t static ManagedInternalAccount.existingAccount(accountID:consentID:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v17.receiver = swift_getObjCClassFromMetadata();
  v17.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v10 = objc_msgSendSuper2(&v17, sel_fetchRequest);
  v11 = sub_1B7800C18();
  [v10 setRelationshipKeyPathsForPrefetching_];

  v12 = _s10FinanceKit22ManagedInternalAccountC012predicateForE09accountID07consentI0So11NSPredicateCSS_SStFZ_0(a1, a2, a3, a4);
  [v10 setPredicate_];

  result = sub_1B7801498();
  if (v4)
  {

    return v5;
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

  v15 = result;
  v16 = sub_1B7801958();
  result = v15;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_8:
    v5 = v14;

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t static ManagedInternalAccount.existingEnabledAccount(withPrimaryAccountIdentifier:context:)(uint64_t a1, uint64_t a2)
{
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v4 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1B7800C18();
  [v4 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  v7 = "16CoreDataProvider";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v5;
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1B78010E8();
  [v4 setPredicate_];

  v10 = v16;
  result = sub_1B7801498();
  if (v10)
  {

    return v7;
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

  v13 = result;
  v14 = sub_1B7801958();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v7 = v12;

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedInternalAccount.existingAccounts(withExternalAccountIDs:in:)(uint64_t a1)
{
  v8.receiver = swift_getObjCClassFromMetadata();
  v8.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v2 = objc_msgSendSuper2(&v8, sel_fetchRequest);
  v3 = sub_1B7800C18();
  [v2 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v4 + 64) = sub_1B74C9A04(&qword_1EDAF64A0, &unk_1EB99A670);
  *(v4 + 32) = a1;

  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  v6 = sub_1B7801498();
  return v6;
}

id static ManagedInternalAccount.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

id static ManagedInternalAccount.existingObject(with:in:)(uint64_t a1, id a2)
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

uint64_t static ManagedInternalAccount.predicateForAccount(withExternalAccountID:)(uint64_t a1, uint64_t a2)
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

uint64_t static ManagedInternalAccount.linkedAccounts(withInstitutionID:in:)(uint64_t a1, uint64_t a2)
{
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v4 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1B7800C18();
  [v4 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v5;
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  *(v7 + 32) = sub_1B78010E8();
  *(v7 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v4 setPredicate_];
  v11 = sub_1B7801498();

  return v11;
}

uint64_t static ManagedInternalAccount.predicateForAccounts(withInstitutionID:)(uint64_t a1, uint64_t a2)
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

uint64_t static ManagedInternalAccount.accounts(grantedByConsentID:in:)(uint64_t a1, uint64_t a2)
{
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v4 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1B7800C18();
  [v4 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = v5;
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v4 setPredicate_];

  v9 = sub_1B7801498();
  return v9;
}

uint64_t static ManagedInternalAccount.predicateForAccounts(withConsentID:)(uint64_t a1, uint64_t a2)
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

void static ManagedInternalAccount.deleteAccount(with:in:)(__int128 *a1, void *a2)
{
  v15 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v19.receiver = swift_getObjCClassFromMetadata();
  v19.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v6 = objc_msgSendSuper2(&v19, sel_fetchRequest);
  v7 = sub_1B7800C18();
  [v6 setRelationshipKeyPathsForPrefetching_];

  v16 = v15;
  v17 = v4;
  v18 = v5;
  v8 = _s10FinanceKit22ManagedInternalAccountC012predicateForE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v16);
  [v6 setPredicate_];

  [v6 setIncludesPropertyValues_];
  v9 = sub_1B7801498();
  if (v2)
  {
    goto LABEL_12;
  }

  if (v9 >> 62)
  {
    v13 = v9;
    if (sub_1B7801958() > 1)
    {
      goto LABEL_15;
    }

    v14 = sub_1B7801958();
    v9 = v13;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 > 1)
  {
    goto LABEL_15;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_8:
    v12 = v11;

    [a2 deleteObject_];

    v6 = v12;
LABEL_12:

    return;
  }

  __break(1u);
LABEL_15:
  sub_1B7801C88();
  __break(1u);
}

uint64_t static ManagedInternalAccount.predicateForAccount(withPublicAccountID:)()
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

uint64_t static ManagedInternalAccount.existingAccounts(withPublicAccountIDs:in:)(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v3 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  v4 = sub_1B7800C18();
  [v3 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = sub_1B75E91EC(a1);
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996010);
  *(v5 + 64) = sub_1B74C9A04(&qword_1EB996018, &qword_1EB996010);
  *(v5 + 32) = v6;
  v7 = sub_1B78010E8();
  [v3 setPredicate_];

  v8 = sub_1B7801498();
  return v8;
}

uint64_t static ManagedInternalAccount.predicateForAccounts(withPublicAccountIDs:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  v3 = sub_1B75E91EC(a1);
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996010);
  *(v2 + 64) = sub_1B74C9A04(&qword_1EB996018, &qword_1EB996010);
  *(v2 + 32) = v3;
  return sub_1B78010E8();
}

uint64_t sub_1B75EABB8(uint64_t a1, uint64_t a2)
{
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v4 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1B7800C18();
  [v4 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = v5;
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v4 setPredicate_];

  v9 = sub_1B7801498();
  return v9;
}

uint64_t static ManagedInternalAccount.predicateForAccounts(grantingAccessByConsentUUID:)()
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

id static ManagedInternalAccount.predicateForTransactionPickerShareableAccounts()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B780C060;
  *(v0 + 32) = _s10FinanceKit22ManagedInternalAccountC39predicateForThirdPartyShareableAccountsSo11NSPredicateCyFZ_0();
  v4 = 3;
  *(v0 + 40) = _s10FinanceKit22ManagedInternalAccountC20predicateForAccounts07withoutE6StatusSo11NSPredicateCAA0eJ0O_tFZ_0(&v4);
  sub_1B7205540(0, &qword_1EDAFAF30);
  v1 = sub_1B7800C18();

  v2 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v2;
}

id _s10FinanceKit22ManagedInternalAccountC012predicateForE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(uint64_t *a1)
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

id _s10FinanceKit22ManagedInternalAccountC012predicateForE09accountID07consentI0So11NSPredicateCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1B721FF04();
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  *(v8 + 32) = sub_1B78010E8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  *(v8 + 40) = sub_1B78010E8();
  v13 = sub_1B7800C18();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v14;
}

id _s10FinanceKit22ManagedInternalAccountC20predicateForAccounts10withFqaidsSo11NSPredicateCSayAA014FullyQualifiedE10IdentifierVG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7801B98();
    sub_1B7205540(0, &qword_1EDAFAF30);
    v17 = objc_opt_self();
    v3 = (a1 + 56);
    v4 = MEMORY[0x1E69E6158];
    do
    {
      v5 = *(v3 - 2);
      v18 = *(v3 - 3);
      v6 = *(v3 - 1);
      v7 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B780C060;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1B7807CD0;
      *(v9 + 56) = v4;
      v10 = sub_1B721FF04();
      *(v9 + 64) = v10;
      *(v9 + 32) = v6;
      *(v9 + 40) = v7;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      *(v8 + 32) = sub_1B78010E8();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B7807CD0;
      *(v11 + 56) = v4;
      *(v11 + 64) = v10;
      *(v11 + 32) = v18;
      *(v11 + 40) = v5;
      *(v8 + 40) = sub_1B78010E8();
      v12 = sub_1B7800C18();

      v13 = [v17 andPredicateWithSubpredicates_];

      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  sub_1B7205540(0, &qword_1EDAFAF30);
  v14 = sub_1B7800C18();

  v15 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v15;
}

id _s10FinanceKit22ManagedInternalAccountC39predicateForThirdPartyShareableAccountsSo11NSPredicateCyFZ_0()
{
  v14 = &type metadata for UncheckedSendableUserDefaults;
  v15 = &protocol witness table for UncheckedSendableUserDefaults;
  v0 = swift_allocObject();
  v13 = v0;
  if (qword_1EDAF7308 != -1)
  {
    v7 = v0;
    swift_once();
    v0 = v7;
  }

  sub_1B7201D1C(qword_1EDAF7310, v0 + 16);
  v10[0] = 0xD00000000000001DLL;
  v10[1] = 0x80000001B78753B0;
  v11 = 0;
  v12 = 1;
  v16 = &type metadata for DeviceInfo;
  v17 = &protocol witness table for DeviceInfo;
  sub_1B73D47F0(v10, v8);
  if (v8[18] != 1 || ((*(v9 + 16))() & 1) != 0)
  {
    v1 = sub_1B71FBF7C();
    if (v1 == 2)
    {
      v2 = v8[16];
    }

    else
    {
      v2 = v1;
    }

    sub_1B75EB8AC(v8);
    if (v2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1B7205540(0, &qword_1EDAFAF30);
    v3 = sub_1B78010E8();
    goto LABEL_12;
  }

  v4 = v8[17];
  sub_1B75EB8AC(v8);
  if (v4 != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v3 = [objc_opt_self() predicateWithValue_];
LABEL_12:
  v5 = v3;
  sub_1B75EB8AC(v10);
  return v5;
}

id _s10FinanceKit22ManagedInternalAccountC20predicateForAccounts07withoutE6StatusSo11NSPredicateCAA0eJ0O_tFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  *(v2 + 32) = sub_1B78010E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v3 + 56) = sub_1B7205540(0, &qword_1EDAFC4C8);
  *(v3 + 64) = sub_1B73B4AF0(&qword_1EDAF6448, &qword_1EDAFC4C8);
  *(v3 + 32) = v4;
  *(v2 + 40) = sub_1B78010E8();
  v5 = sub_1B7800C18();

  v6 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v6;
}

uint64_t sub_1B75EB8AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B75EB914(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F500);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1B71FDD38(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for Order.ContentItem(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B71FDD38(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1B722376C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_1EB98F500);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B75EBB14(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v55 = MEMORY[0x1E69E7CC0];
  sub_1B71FDDBC(0, v5, 0);
  v6 = v55;
  v9 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v11 = v9[5];
    v12 = v9[3];
    v51 = v9[4];
    v52 = v11;
    v13 = v9[5];
    v14 = v9[7];
    v53 = v9[6];
    v54 = v14;
    v15 = v9[1];
    v48[0] = *v9;
    v48[1] = v15;
    v16 = v9[3];
    v18 = *v9;
    v17 = v9[1];
    v49 = v9[2];
    v50 = v16;
    v43 = v51;
    v44 = v13;
    v19 = v9[7];
    v45 = v53;
    v46 = v19;
    v39 = v18;
    v40 = v17;
    v41 = v49;
    v42 = v12;
    sub_1B73261F0(v48, &v31);
    a1(v47, &v39);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v30[4] = v43;
    v30[5] = v44;
    v30[6] = v45;
    v30[7] = v46;
    v30[0] = v39;
    v30[1] = v40;
    v30[2] = v41;
    v30[3] = v42;
    sub_1B732624C(v30);
    v33 = v47[2];
    v34 = v47[3];
    v37 = v47[6];
    v38 = v47[7];
    v35 = v47[4];
    v36 = v47[5];
    v31 = v47[0];
    v32 = v47[1];
    v55 = v6;
    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1B71FDDBC((v20 > 1), v21 + 1, 1);
      v6 = v55;
    }

    *(v6 + 16) = v21 + 1;
    v22 = (v6 + (v21 << 7));
    v23 = v31;
    v24 = v32;
    v25 = v34;
    v22[4] = v33;
    v22[5] = v25;
    v22[2] = v23;
    v22[3] = v24;
    v26 = v35;
    v27 = v36;
    v28 = v38;
    v22[8] = v37;
    v22[9] = v28;
    v22[6] = v26;
    v22[7] = v27;
    if (!i)
    {
      return v6;
    }

    v9 += 8;
  }

  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  sub_1B732624C(&v31);

  __break(1u);
  return result;
}

void sub_1B75EBCFC(void (*a1)(_OWORD *__return_ptr, unsigned int **), uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v37 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v8 = sub_1B7801958();
  }

  else
  {
    v8 = *(a3 + 16);
  }

  if (v8)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B71FE244(0, v8 & ~(v8 >> 63), 0);
    v52 = v51;
    if (v37)
    {
      v9 = sub_1B78018F8();
    }

    else
    {
      v9 = sub_1B78018C8();
      v10 = v7[9];
    }

    v48 = v9;
    v49 = v10;
    v50 = v37 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v35 = v7 + 14;
      v34 = v7 + 16;
      while (!__OFADD__(v11++, 1))
      {
        v6 = v48;
        v5 = v49;
        LODWORD(v4) = v50;
        v13 = v7;
        sub_1B76B53FC(v48, v49, v50, v7);
        v7 = v14;
        v45 = v14;
        a1(v46, &v45);
        if (v3)
        {
          goto LABEL_45;
        }

        v44 = v47;
        v42 = v46[3];
        v43 = v46[4];
        v40 = v46[1];
        v41 = v46[2];
        v39 = v46[0];
        v15 = v52;
        v51 = v52;
        v17 = *(v52 + 16);
        v16 = *(v52 + 24);
        v7 = (v17 + 1);
        if (v17 >= v16 >> 1)
        {
          sub_1B71FE244((v16 > 1), v17 + 1, 1);
          v15 = v51;
        }

        *(v15 + 16) = v7;
        v18 = v15 + 88 * v17;
        v19 = v40;
        *(v18 + 32) = v39;
        *(v18 + 48) = v19;
        v20 = v41;
        v21 = v42;
        v22 = v43;
        *(v18 + 112) = v44;
        *(v18 + 80) = v21;
        *(v18 + 96) = v22;
        *(v18 + 64) = v20;
        v52 = v15;
        if (v37)
        {
          if (!v4)
          {
            goto LABEL_46;
          }

          v7 = v13;
          if (sub_1B7801918())
          {
            LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v4) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999398);
          v27 = sub_1B7800FD8();
          sub_1B78019B8();
          v27(v38, 0);
          v28 = v11 >= v8;
          if (v11 == v8)
          {
LABEL_37:
            sub_1B723BB64(v48, v49, v50);
            return;
          }
        }

        else
        {
          if (v4)
          {
            goto LABEL_47;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v7 = v13;
          v23 = 1 << *(v13 + 32);
          if (v6 >= v23)
          {
            goto LABEL_41;
          }

          v24 = v6 >> 6;
          v25 = *&v35[2 * (v6 >> 6)];
          if (((v25 >> v6) & 1) == 0)
          {
            goto LABEL_42;
          }

          if (v13[9] != v5)
          {
            goto LABEL_43;
          }

          v26 = v25 & (-2 << (v6 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = v24 << 6;
            v29 = v24 + 1;
            v30 = &v34[2 * v24];
            while (v29 < (v23 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v4 += 64;
              ++v29;
              if (v32)
              {
                sub_1B723BB64(v6, v5, 0);
                v23 = __clz(__rbit64(v31)) + v4;
                goto LABEL_33;
              }
            }

            sub_1B723BB64(v6, v5, 0);
          }

LABEL_33:
          v33 = v13[9];
          v48 = v23;
          v49 = v33;
          v50 = 0;
          v28 = v11 >= v8;
          if (v11 == v8)
          {
            goto LABEL_37;
          }
        }

        if (v28)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:

    sub_1B723BB64(v6, v5, v4);

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }
}

void sub_1B75EC0BC(void (*a1)(uint64_t *__return_ptr, unsigned int **), uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = a3;
  v45 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v9 = sub_1B7801958();
  }

  else
  {
    v9 = *(a3 + 16);
  }

  if (v9)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1B71FE224(0, v9 & ~(v9 >> 63), 0);
    v10 = v56;
    if (v45)
    {
      v11 = sub_1B78018F8();
    }

    else
    {
      v11 = sub_1B78018C8();
      v12 = v8[9];
    }

    v53 = v11;
    v54 = v12;
    v55 = v45 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v42 = v8 + 14;
      v41 = v8 + 16;
      v43 = v9;
      while (v13 < v9)
      {
        v15 = __OFADD__(v13, 1);
        v16 = v13 + 1;
        if (v15)
        {
          goto LABEL_38;
        }

        v46 = v16;
        v6 = v53;
        LODWORD(v4) = v55;
        v5 = v54;
        v17 = v8;
        sub_1B76B53E4(v53, v54, v55, v8);
        v8 = v18;
        v47 = v18;
        a1(&v48, &v47);
        if (v7)
        {
          goto LABEL_43;
        }

        v7 = 0;

        v19 = v48;
        v20 = v49;
        v21 = v50;
        v23 = v51;
        v22 = v52;
        v24 = v10;
        v56 = v10;
        v25 = *(v10 + 16);
        v26 = *(v24 + 24);
        v8 = (v25 + 1);
        if (v25 >= v26 >> 1)
        {
          v40 = v50;
          v38 = v49;
          v39 = v48;
          v37 = v52;
          sub_1B71FE224((v26 > 1), v25 + 1, 1);
          v22 = v37;
          v20 = v38;
          v19 = v39;
          v21 = v40;
          v24 = v56;
        }

        *(v24 + 16) = v8;
        v27 = v24 + 48 * v25;
        *(v27 + 32) = v19;
        *(v27 + 40) = v20;
        *(v27 + 48) = v21;
        *(v27 + 64) = v23;
        *(v27 + 72) = v22;
        if (v45)
        {
          if (!v4)
          {
            goto LABEL_44;
          }

          v10 = v24;
          v8 = v17;
          if (sub_1B7801918())
          {
            LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v4) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9993A8);
          v14 = sub_1B7800FD8();
          sub_1B78019B8();
          v14(&v48, 0);
        }

        else
        {
          if (v4)
          {
            goto LABEL_45;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v8 = v17;
          v28 = 1 << *(v17 + 32);
          if (v6 >= v28)
          {
            goto LABEL_39;
          }

          v10 = v24;
          v29 = v6 >> 6;
          v30 = *&v42[2 * (v6 >> 6)];
          if (((v30 >> v6) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (v17[9] != v5)
          {
            goto LABEL_41;
          }

          v31 = v30 & (-2 << (v6 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = v29 << 6;
            v32 = v29 + 1;
            v33 = &v41[2 * v29];
            while (v32 < (v28 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v4 += 64;
              ++v32;
              if (v35)
              {
                sub_1B723BB64(v6, v5, 0);
                v28 = __clz(__rbit64(v34)) + v4;
                goto LABEL_34;
              }
            }

            sub_1B723BB64(v6, v5, 0);
          }

LABEL_34:
          v36 = v8[9];
          v53 = v28;
          v54 = v36;
          v55 = 0;
        }

        v9 = v43;
        v13 = v46;
        if (v46 == v43)
        {
          sub_1B723BB64(v53, v54, v55);
          return;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:

    sub_1B723BB64(v6, v5, v4);

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void sub_1B75EC470(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for Order.PriorityInfo(0);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B71FE138(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x1B8CA5DC0](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B71FE138(v14 > 1, v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_1B75F6BC4(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, type metadata accessor for Order.PriorityInfo);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_1B75EC6A8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F328);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B71FE600(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x1B8CA5DC0](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B71FE600(v14 > 1, v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_1B722376C(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, &qword_1EB98F328);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1B75EC8E4(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v9 = *(type metadata accessor for Institution(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B75ECA28(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = v10;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1B75ECB14(void (*a1)(_OWORD *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B71FE820(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v20;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B8CA5DC0](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v18 = v11;
      a1(v19, &v18);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v20 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      v4 = (v13 + 1);
      if (v13 >= v12 >> 1)
      {
        sub_1B71FE820((v12 > 1), v13 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v4;
      v14 = (v9 + 48 * v13);
      v15 = v19[0];
      v16 = v19[2];
      v14[3] = v19[1];
      v14[4] = v16;
      v14[2] = v15;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_1B75ECCB4(void (*a1)(_OWORD *__return_ptr, unsigned int **), uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v36 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v8 = sub_1B7801958();
  }

  else
  {
    v8 = *(a3 + 16);
  }

  if (v8)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B71FE8E8(0, v8 & ~(v8 >> 63), 0);
    v37 = v49;
    if (v36)
    {
      v9 = sub_1B78018F8();
    }

    else
    {
      v9 = sub_1B78018C8();
      v10 = v7[9];
    }

    v46 = v9;
    v47 = v10;
    v48 = v36 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v34 = v7 + 14;
      v33 = v7 + 16;
      while (!__OFADD__(v11++, 1))
      {
        v6 = v46;
        v5 = v47;
        LODWORD(v4) = v48;
        v13 = v7;
        sub_1B76B53FC(v46, v47, v48, v7);
        v7 = v14;
        v44 = v14;
        a1(v45, &v44);
        if (v3)
        {
          goto LABEL_45;
        }

        v42 = v45[3];
        v43 = v45[4];
        v40 = v45[1];
        v41 = v45[2];
        v39 = v45[0];
        v15 = v37;
        v49 = v37;
        v17 = *(v37 + 16);
        v16 = *(v37 + 24);
        v7 = (v17 + 1);
        if (v17 >= v16 >> 1)
        {
          sub_1B71FE8E8((v16 > 1), v17 + 1, 1);
          v15 = v49;
        }

        *(v15 + 16) = v7;
        v18 = (v15 + 80 * v17);
        v18[2] = v39;
        v19 = v40;
        v20 = v41;
        v21 = v43;
        v18[5] = v42;
        v18[6] = v21;
        v18[3] = v19;
        v18[4] = v20;
        v37 = v15;
        if (v36)
        {
          if (!v4)
          {
            goto LABEL_46;
          }

          v7 = v13;
          if (sub_1B7801918())
          {
            LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v4) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999398);
          v26 = sub_1B7800FD8();
          sub_1B78019B8();
          v26(v38, 0);
          v27 = v11 >= v8;
          if (v11 == v8)
          {
LABEL_37:
            sub_1B723BB64(v46, v47, v48);
            return;
          }
        }

        else
        {
          if (v4)
          {
            goto LABEL_47;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v7 = v13;
          v22 = 1 << *(v13 + 32);
          if (v6 >= v22)
          {
            goto LABEL_41;
          }

          v23 = v6 >> 6;
          v24 = *&v34[2 * (v6 >> 6)];
          if (((v24 >> v6) & 1) == 0)
          {
            goto LABEL_42;
          }

          if (v13[9] != v5)
          {
            goto LABEL_43;
          }

          v25 = v24 & (-2 << (v6 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = v23 << 6;
            v28 = v23 + 1;
            v29 = &v33[2 * v23];
            while (v28 < (v22 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v4 += 64;
              ++v28;
              if (v31)
              {
                sub_1B723BB64(v6, v5, 0);
                v22 = __clz(__rbit64(v30)) + v4;
                goto LABEL_33;
              }
            }

            sub_1B723BB64(v6, v5, 0);
          }

LABEL_33:
          v32 = v13[9];
          v46 = v22;
          v47 = v32;
          v48 = 0;
          v27 = v11 >= v8;
          if (v11 == v8)
          {
            goto LABEL_37;
          }
        }

        if (v27)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:

    sub_1B723BB64(v6, v5, v4);

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }
}

void sub_1B75ED05C(void (*a1)(char *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = a3;
  v35 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v9 = sub_1B7801958();
  }

  else
  {
    v9 = *(a3 + 16);
  }

  if (v9)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1B71FE9D0(0, v9 & ~(v9 >> 63), 0);
    v37 = v43;
    if (v35)
    {
      v10 = sub_1B78018F8();
    }

    else
    {
      v10 = sub_1B78018C8();
      v11 = v8[9];
    }

    v40 = v10;
    v41 = v11;
    v42 = v35 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v32 = v8 + 14;
      v31 = v8 + 16;
      v33 = v9;
      while (v12 < v9)
      {
        v14 = __OFADD__(v12, 1);
        v15 = v12 + 1;
        if (v14)
        {
          goto LABEL_38;
        }

        v36 = v15;
        v6 = v40;
        v5 = v41;
        LODWORD(v4) = v42;
        v16 = v8;
        sub_1B76B562C(v40, v41, v42, v8);
        v8 = v17;
        v38[0] = v17;
        a1(&v39, v38);
        if (v7)
        {
          goto LABEL_43;
        }

        v7 = 0;

        v18 = v39;
        v19 = v37;
        v43 = v37;
        v21 = *(v37 + 16);
        v20 = *(v37 + 24);
        v8 = (v21 + 1);
        if (v21 >= v20 >> 1)
        {
          sub_1B71FE9D0((v20 > 1), v21 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v8;
        *(v19 + v21 + 32) = v18;
        v37 = v19;
        if (v35)
        {
          if (!v4)
          {
            goto LABEL_44;
          }

          v8 = v16;
          if (sub_1B7801918())
          {
            LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v4) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999390);
          v13 = sub_1B7800FD8();
          sub_1B78019B8();
          v13(v38, 0);
        }

        else
        {
          if (v4)
          {
            goto LABEL_45;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v8 = v16;
          v22 = 1 << *(v16 + 32);
          if (v6 >= v22)
          {
            goto LABEL_39;
          }

          v23 = v6 >> 6;
          v24 = *&v32[2 * (v6 >> 6)];
          if (((v24 >> v6) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (v16[9] != v5)
          {
            goto LABEL_41;
          }

          v25 = v24 & (-2 << (v6 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = v23 << 6;
            v26 = v23 + 1;
            v27 = &v31[2 * v23];
            while (v26 < (v22 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v4 += 64;
              ++v26;
              if (v29)
              {
                sub_1B723BB64(v6, v5, 0);
                v22 = __clz(__rbit64(v28)) + v4;
                goto LABEL_34;
              }
            }

            sub_1B723BB64(v6, v5, 0);
          }

LABEL_34:
          v30 = v16[9];
          v40 = v22;
          v41 = v30;
          v42 = 0;
        }

        v9 = v33;
        v12 = v36;
        if (v36 == v33)
        {
          sub_1B723BB64(v40, v41, v42);
          return;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:

    sub_1B723BB64(v6, v5, v4);

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

uint64_t RawECommerceOrderContent.topPriorityContentItem(bundle:)@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v124 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v111 - v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v111 - v8;
  v119 = sub_1B77FF988();
  v114 = *(v119 - 8);
  v9 = MEMORY[0x1EEE9AC00](v119);
  v121 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v120 = &v111 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v111 - v13;
  v14 = type metadata accessor for RawOrderReturn();
  v116 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v118 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v140 = &v111 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F500);
  v133 = *(v132 - 8);
  v18 = MEMORY[0x1EEE9AC00](v132);
  v136 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v134 = &v111 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v111 - v22;
  v23 = type metadata accessor for RawOrderPickupFulfillment();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v131 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v130 = &v111 - v26;
  v27 = type metadata accessor for RawOrderShippingFulfillment();
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v129 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v128 = &v111 - v30;
  v139 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for RawOrderFulfillment();
  v135 = *(v137 - 8);
  v32 = MEMORY[0x1EEE9AC00](v137);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v111 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v111 - v38;
  v40 = type metadata accessor for Order.ContentItem(0);
  v142 = *(v40 - 8);
  v143 = v40;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v111 - v44;
  v46 = type metadata accessor for RawECommerceOrderContent(0);
  v47 = *(v2 + *(v46 + 68));
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  v141 = a1;
  v122 = v2;
  if (v48)
  {
    v112 = v46;
    v113 = v43;
    v148 = MEMORY[0x1E69E7CC0];
    sub_1B71FDD78(0, v48, 0);
    v49 = v148;
    v50 = v47 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
    v135 = *(v135 + 72);
    do
    {
      sub_1B75F6AFC(v50, v39, type metadata accessor for RawOrderFulfillment);
      sub_1B75F6AFC(v39, v37, type metadata accessor for RawOrderFulfillment);
      v146 = type metadata accessor for OrderBundle();
      v147 = &protocol witness table for OrderBundle;
      v145 = a1;
      sub_1B75F6AFC(v37, v34, type metadata accessor for RawOrderFulfillment);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v130;
        sub_1B75F6BC4(v34, v130, type metadata accessor for RawOrderPickupFulfillment);
        v52 = v131;
        sub_1B75F6AFC(v51, v131, type metadata accessor for RawOrderPickupFulfillment);
        sub_1B719B06C(&v145, &v144);

        v53 = v138;
        Order.PickupFulfillment.init(_:previewResourceLoader:)(v52, &v144, v138);
        sub_1B75F6B64(v51, type metadata accessor for RawOrderPickupFulfillment);
      }

      else
      {
        v54 = v128;
        sub_1B75F6BC4(v34, v128, type metadata accessor for RawOrderShippingFulfillment);
        v55 = v129;
        sub_1B75F6AFC(v54, v129, type metadata accessor for RawOrderShippingFulfillment);
        sub_1B719B06C(&v145, &v144);

        v53 = v138;
        Order.ShippingFulfillment.init(_:previewResourceLoader:)(v55, &v144, v138);
        sub_1B75F6B64(v54, type metadata accessor for RawOrderShippingFulfillment);
      }

      sub_1B75F6B64(v37, type metadata accessor for RawOrderFulfillment);
      sub_1B75F6B64(v39, type metadata accessor for RawOrderFulfillment);
      __swift_destroy_boxed_opaque_existential_1(&v145);
      swift_storeEnumTagMultiPayload();
      sub_1B75F6BC4(v53, v45, type metadata accessor for Order.Fulfillment);
      swift_storeEnumTagMultiPayload();
      v148 = v49;
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1B71FDD78(v56 > 1, v57 + 1, 1);
        v49 = v148;
      }

      *(v49 + 16) = v57 + 1;
      sub_1B75F6BC4(v45, v49 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v57, type metadata accessor for Order.ContentItem);
      v50 += v135;
      --v48;
      a1 = v141;
    }

    while (v48);
    v2 = v122;
    v43 = v113;
    v46 = v112;
  }

  v144 = v49;
  v58 = *(v2 + *(v46 + 64));
  v59 = *(v58 + 16);
  v60 = MEMORY[0x1E69E7CC0];
  v61 = v125;
  v62 = v118;
  if (v59)
  {
    v148 = MEMORY[0x1E69E7CC0];
    sub_1B71FDD78(0, v59, 0);
    v60 = v148;
    v63 = v58 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v64 = *(v116 + 72);
    do
    {
      v65 = v140;
      sub_1B75F6AFC(v63, v140, type metadata accessor for RawOrderReturn);
      sub_1B75F6AFC(v65, v62, type metadata accessor for RawOrderReturn);
      v146 = type metadata accessor for OrderBundle();
      v147 = &protocol witness table for OrderBundle;
      v145 = v141;

      Order.Return.init(_:previewResourceLoader:)(v62, &v145, v43);
      sub_1B75F6B64(v65, type metadata accessor for RawOrderReturn);
      swift_storeEnumTagMultiPayload();
      v148 = v60;
      v67 = *(v60 + 16);
      v66 = *(v60 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1B71FDD78(v66 > 1, v67 + 1, 1);
        v60 = v148;
      }

      *(v60 + 16) = v67 + 1;
      sub_1B75F6BC4(v43, v60 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v67, type metadata accessor for Order.ContentItem);
      v63 += v64;
      --v59;
    }

    while (v59);
  }

  v68 = sub_1B7244618(v60);
  v69 = v144;
  MEMORY[0x1EEE9AC00](v68);
  *(&v111 - 2) = v122;
  v70 = sub_1B75EB914(sub_1B75F6C2C, (&v111 - 4), v69);
  v71 = v70;
  v72 = *(v70 + 16);
  v73 = v119;
  v74 = v127;
  if (!v72)
  {

    return (*(v142 + 56))(v117, 1, 1, v143);
  }

  v131 = v69;
  v140 = v70 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
  result = sub_1B7205588(v140, v134, &qword_1EB98F500);
  if (v72 == 1)
  {
LABEL_17:

    v76 = v115;
    sub_1B722376C(v134, v115, &qword_1EB98F500);
    v77 = *(v132 + 48);
    v78 = v117;
    sub_1B75F6BC4(v76, v117, type metadata accessor for Order.ContentItem);
    (*(v142 + 56))(v78, 0, 1, v143);
    return sub_1B75F6B64(v76 + v77, type metadata accessor for Order.PriorityInfo);
  }

  v139 = (v114 + 8);
  v141 = (v114 + 48);
  v135 = v114 + 32;
  v79 = 1;
  v137 = v72;
  v138 = v71;
  while (v79 < *(v71 + 16))
  {
    v80 = v136;
    sub_1B7205588(v140 + *(v133 + 72) * v79, v136, &qword_1EB98F500);
    v81 = *(v132 + 48);
    v82 = v134 + v81;
    v83 = v80 + v81;
    sub_1B77FF938();
    v84 = type metadata accessor for Order.PriorityInfo(0);
    v85 = *(v84 + 20);
    v86 = word_1B784A122[*(v83 + v85)];
    v87 = word_1B784A122[*(v82 + v85)];
    if (v86 != v87)
    {
      (*v139)(v74, v73);
      v95 = v87 >= v86;
      v94 = v137;
      v71 = v138;
      if (!v95)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    v88 = *(v84 + 24);
    v89 = *(v126 + 48);
    sub_1B7205588(v83 + v88, v61, &qword_1EB98EBD0);
    sub_1B7205588(v82 + v88, v61 + v89, &qword_1EB98EBD0);
    v90 = v61;
    v91 = *v141;
    if ((*v141)(v90, 1, v73) == 1)
    {
      if (v91(v90 + v89, 1, v73) == 1)
      {
        v92 = sub_1B77FF8C8();
        v93 = v127;
        (*v139)(v127, v73);
        sub_1B7205418(v90, &qword_1EB98EBD0);
        v61 = v90;
        v74 = v93;
        v94 = v137;
        v71 = v138;
        if (v92)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

      v74 = v127;
      (*v139)(v127, v73);
      goto LABEL_33;
    }

    v96 = v123;
    sub_1B7205588(v90, v123, &qword_1EB98EBD0);
    if (v91(v90 + v89, 1, v73) == 1)
    {
      v97 = *v139;
      v74 = v127;
      (*v139)(v127, v73);
      v97(v96, v73);
LABEL_33:
      v98 = v124;
      sub_1B7205588(v83 + v88, v124, &qword_1EB98EBD0);
      v99 = v91(v98, 1, v73);
      sub_1B7205418(v98, &qword_1EB98EBD0);
      v61 = v125;
      sub_1B7205418(v125, &qword_1EB98FCE0);
      v94 = v137;
      v71 = v138;
      if (v99 != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    v100 = *v135;
    v101 = v120;
    (*v135)(v120, v96, v73);
    v102 = v90 + v89;
    v103 = v121;
    v100(v121, v102, v73);
    v104 = v127;
    sub_1B77FF808();
    v106 = fabs(v105);
    sub_1B77FF808();
    v108 = fabs(v107);
    v109 = *v139;
    (*v139)(v103, v73);
    v109(v101, v73);
    v109(v104, v73);
    sub_1B7205418(v90, &qword_1EB98EBD0);
    v61 = v90;
    v74 = v104;
    v94 = v137;
    v71 = v138;
    if (v106 < v108)
    {
LABEL_36:
      v110 = v134;
      sub_1B7205418(v134, &qword_1EB98F500);
      result = sub_1B722376C(v136, v110, &qword_1EB98F500);
      goto LABEL_21;
    }

LABEL_20:
    result = sub_1B7205418(v136, &qword_1EB98F500);
LABEL_21:
    if (v94 == ++v79)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t Order.ContentItem.lineItems.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Order.Return();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Order.PickupFulfillment();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Order.ShippingFulfillment();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.ContentItem(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75F6AFC(v1, v16, type metadata accessor for Order.ContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75F6BC4(v16, v4, type metadata accessor for Order.Return);
    v17 = *v4;

    v18 = type metadata accessor for Order.Return;
    v19 = v4;
  }

  else
  {
    sub_1B75F6BC4(v16, v13, type metadata accessor for Order.Fulfillment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B75F6BC4(v13, v7, type metadata accessor for Order.PickupFulfillment);
      v17 = *v7;

      v18 = type metadata accessor for Order.PickupFulfillment;
      v19 = v7;
    }

    else
    {
      sub_1B75F6BC4(v13, v10, type metadata accessor for Order.ShippingFulfillment);
      v17 = *v10;

      v18 = type metadata accessor for Order.ShippingFulfillment;
      v19 = v10;
    }
  }

  sub_1B75F6B64(v19, v18);
  return v17;
}

uint64_t Order.StatusPriority.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 0xAu)
  {
    v2 = 10;
  }

  *a2 = v2;
  return result;
}

char *ManagedOrderContentItem.lineItems.getter()
{
  v1 = *v0;
  if ((v1 & 0x4000000000000000) != 0)
  {
    return ManagedOrderReturn.lineItems.getter();
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    return ManagedOrderShippingFulfillment.lineItems.getter();
  }

  v3 = [v1 & 0x3FFFFFFFFFFFFFFFLL lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B75F73F8(&qword_1EB98FFA0, type metadata accessor for ManagedOrderLineItem);
  v4 = sub_1B7800FA8();

  v5 = sub_1B7519CE0(v4);
  sub_1B74D29C8(&v5);

  return v5;
}

uint64_t ManagedExtractedOrderContent.priorityInfo(calendar:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9970D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-v8];
  v10 = ManagedExtractedOrderContent.shippingFulfillments.getter();
  v20 = v3;
  v21 = a1;
  v22 = a2;
  sub_1B75EC470(sub_1B7554ABC, v19, v10);
  v12 = v11;

  sub_1B7527F68(v12, v9);

  v13 = type metadata accessor for Order.PriorityInfo(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v9, 1, v13) != 1)
  {
    return sub_1B75F6BC4(v9, a3, type metadata accessor for Order.PriorityInfo);
  }

  v15 = [v3 orderUpdateDate];
  sub_1B77FF928();

  v16 = *(v13 + 24);
  v17 = sub_1B77FF988();
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  *(a3 + *(v13 + 20)) = 0;
  result = (v14)(v9, 1, v13);
  if (result != 1)
  {
    return sub_1B7205418(v9, &qword_1EB9970D8);
  }

  return result;
}

uint64_t ManagedECommerceOrderContent.priorityInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v9 = type metadata accessor for Order.PriorityInfo(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9970D8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v37 - v16;
  v47 = v1;
  v18 = ManagedECommerceOrderContent.fulfillments.getter();
  v19 = *(v18 + 2);
  if (v19)
  {
    v46 = v18;
    v42 = v13;
    v43 = v3;
    v38 = v17;
    v39 = v9;
    v40 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1B71FE138(0, v19, 0);
    v20 = v48;
    v41 = (v4 + 16);
    v21 = (v4 + 8);
    v22 = 32;
    do
    {
      v23 = v10;
      v24 = *&v46[v22];
      v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = [v47 updatedDate];
      sub_1B77FF928();

      if ((v24 & 0x8000000000000000) != 0)
      {
        v30 = v45;
        v28 = v43;
        (*v41)(v45, v8, v43);
        v29 = v42;
        Order.PriorityInfo.init(_:updatedDate:)(v25, v30, v42);
      }

      else
      {
        v27 = v45;
        v28 = v43;
        (*v41)(v45, v8, v43);
        v29 = v42;
        Order.PriorityInfo.init(_:updatedDate:)(v24, v27, v42);
      }

      (*v21)(v8, v28);
      v31 = v29;
      v32 = v44;
      sub_1B75F6BC4(v31, v44, type metadata accessor for Order.PriorityInfo);
      v48 = v20;
      v34 = *(v20 + 16);
      v33 = *(v20 + 24);
      v10 = v23;
      if (v34 >= v33 >> 1)
      {
        sub_1B71FE138(v33 > 1, v34 + 1, 1);
        v20 = v48;
      }

      *(v20 + 16) = v34 + 1;
      sub_1B75F6BC4(v32, v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v34, type metadata accessor for Order.PriorityInfo);
      v22 += 8;
      --v19;
    }

    while (v19);

    v9 = v39;
    a1 = v40;
    v17 = v38;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1B7527F68(v20, v17);

  v35 = *(v10 + 48);
  if (v35(v17, 1, v9) != 1)
  {
    return sub_1B75F6BC4(v17, a1, type metadata accessor for Order.PriorityInfo);
  }

  Order.PriorityInfo.init(orderWithNoFulfillments:)(v47, a1);
  result = (v35)(v17, 1, v9);
  if (result != 1)
  {
    return sub_1B7205418(v17, &qword_1EB9970D8);
  }

  return result;
}

uint64_t Order.PriorityInfo.orderUpdateDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Order.PriorityInfo.orderUpdateDate.setter(uint64_t a1)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Order.PriorityInfo.statusPriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Order.PriorityInfo(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Order.PriorityInfo.statusPriority.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Order.PriorityInfo(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t Order.PriorityInfo.estimatedCompletionDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Order.PriorityInfo(0) + 24);

  return sub_1B72DFF88(a1, v3);
}

uint64_t Order.PriorityInfo.isHigherPriority(than:now:)(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = type metadata accessor for Order.PriorityInfo(0);
  v21 = *(v20 + 20);
  v22 = word_1B784A122[*(v2 + v21)];
  v23 = word_1B784A122[*(a1 + v21)];
  if (v22 == v23)
  {
    v41 = v10;
    v42 = v8;
    v24 = *(v20 + 24);
    v25 = *(v17 + 48);
    v44 = v2;
    sub_1B7205588(v2 + v24, v19, &qword_1EB98EBD0);
    v40 = a1;
    sub_1B7205588(a1 + v24, &v19[v25], &qword_1EB98EBD0);
    v43 = v5;
    v26 = *(v5 + 48);
    if (v26(v19, 1, v4) == 1)
    {
      if (v26(&v19[v25], 1, v4) == 1)
      {
        v27 = sub_1B77FF8C8();
LABEL_10:
        v28 = &qword_1EB98EBD0;
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B7205588(v19, v16, &qword_1EB98EBD0);
      if (v26(&v19[v25], 1, v4) != 1)
      {
        v29 = v43;
        v30 = *(v43 + 32);
        v31 = v41;
        v30(v41, v16, v4);
        v32 = &v19[v25];
        v33 = v42;
        v30(v42, v32, v4);
        sub_1B77FF808();
        v35 = fabs(v34);
        sub_1B77FF808();
        v37 = fabs(v36);
        v38 = *(v29 + 8);
        v38(v33, v4);
        v38(v31, v4);
        v27 = v35 < v37;
        goto LABEL_10;
      }

      (*(v43 + 8))(v16, v4);
    }

    sub_1B7205588(v44 + v24, v14, &qword_1EB98EBD0);
    v27 = v26(v14, 1, v4) != 1;
    sub_1B7205418(v14, &qword_1EB98EBD0);
    v28 = &qword_1EB98FCE0;
LABEL_11:
    sub_1B7205418(v19, v28);
    return v27 & 1;
  }

  v27 = v23 < v22;
  return v27 & 1;
}

uint64_t static Order.PriorityInfo.< infix(_:_:)(uint64_t a1)
{
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  LOBYTE(a1) = Order.PriorityInfo.isHigherPriority(than:now:)(a1, v5);
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t sub_1B75EF724(uint64_t a1)
{
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  LOBYTE(a1) = Order.PriorityInfo.isHigherPriority(than:now:)(a1, v5);
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

BOOL sub_1B75EF808(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  LOBYTE(a2) = Order.PriorityInfo.isHigherPriority(than:now:)(a2, v6);
  (*(v4 + 8))(v6, v3);
  return (a2 & 1) == 0;
}

BOOL sub_1B75EF8F0(uint64_t a1)
{
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  LOBYTE(a1) = Order.PriorityInfo.isHigherPriority(than:now:)(a1, v5);
  (*(v3 + 8))(v5, v2);
  return (a1 & 1) == 0;
}

uint64_t sub_1B75EF9D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  LOBYTE(a2) = Order.PriorityInfo.isHigherPriority(than:now:)(a2, v6);
  (*(v4 + 8))(v6, v3);
  return a2 & 1;
}

uint64_t Order.PriorityInfo.init(_:updatedDate:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6);
  if ((a1 & 0x8000000000000000) != 0)
  {
    Order.PriorityInfo.init(_:updatedDate:)((a1 & 0x7FFFFFFFFFFFFFFFLL), v9, a3);
  }

  else
  {
    Order.PriorityInfo.init(_:updatedDate:)(a1, v9, a3);
  }

  return (*(v7 + 8))(a2, v6);
}

uint64_t Order.PriorityInfo.init(orderWithNoFulfillments:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ManagedECommerceOrderContent.status.getter(&v15);
  v8 = v15;
  v9 = [a1 updatedDate];
  sub_1B77FF928();

  v10 = type metadata accessor for Order.PriorityInfo(0);
  v11 = *(v10 + 24);
  v12 = *(v5 + 56);
  v12(a2 + v11, 1, 1, v4);
  *(a2 + *(v10 + 20)) = 0x90500u >> (8 * v8);
  sub_1B7205418(a2 + v11, &qword_1EB98EBD0);
  v12(a2 + v11, 1, 1, v4);
  return (*(v5 + 32))(a2, v7, v4);
}

uint64_t ManagedECommerceOrderContent.topPriorityContentItem.getter@<X0>(void *a1@<X8>)
{
  v109 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v114 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v113 = &v107 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v107 - v7;
  v127 = type metadata accessor for Order.PriorityInfo(0);
  v8 = MEMORY[0x1EEE9AC00](v127);
  v120 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v107 - v10;
  v134 = sub_1B77FF988();
  v108 = *(v134 - 8);
  v11 = MEMORY[0x1EEE9AC00](v134);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v123 = &v107 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v119 = &v107 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v121 = &v107 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v118 = &v107 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v131 = &v107 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F338);
  v23 = *(v22 - 8);
  v132 = v22;
  v133 = v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v126 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v129 = (&v107 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v122 = &v107 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v107 = (&v107 - v30);
  v130 = v2;
  v31 = ManagedECommerceOrderContent.fulfillments.getter();
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v136 = MEMORY[0x1E69E7CC0];
    sub_1B71FE5C8(0, v32, 0);
    v34 = 0;
    v35 = v136;
    while (v34 < *(v31 + 16))
    {
      v36 = *(v31 + 8 * v34 + 32);
      v136 = v35;
      v37 = *(v35 + 16);
      v1 = *(v35 + 24);
      v38 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      if (v37 >= v1 >> 1)
      {
        sub_1B71FE5C8((v1 > 1), v37 + 1, 1);
        v35 = v136;
      }

      ++v34;
      *(v35 + 16) = v37 + 1;
      *(v35 + 8 * v37 + 32) = v36;
      if (v32 == v34)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v139 = v35;
  v39 = ManagedECommerceOrderContent.returns.getter();
  v31 = v39;
  if (v39 >> 62)
  {
LABEL_25:
    v40 = sub_1B7801958();
    if (!v40)
    {
      goto LABEL_26;
    }

LABEL_11:
    v136 = v33;
    sub_1B71FE5C8(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      goto LABEL_63;
    }

    v41 = 0;
    v42 = v136;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1B8CA5DC0](v41, v31);
      }

      else
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (v41 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v43 = *(v31 + 8 * v41 + 32);
      }

      v44 = v43;
      v136 = v42;
      v1 = *(v42 + 16);
      v45 = *(v42 + 24);
      v33 = v1 + 1;
      if (v1 >= v45 >> 1)
      {
        sub_1B71FE5C8((v45 > 1), v1 + 1, 1);
        v42 = v136;
      }

      ++v41;
      *(v42 + 16) = v33;
      *(v42 + 8 * v1 + 32) = v44 | 0x4000000000000000;
    }

    while (v40 != v41);

    goto LABEL_27;
  }

  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
    goto LABEL_11;
  }

LABEL_26:

  v42 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v46 = v123;
  sub_1B724488C(v42);
  v47 = v139;
  v48 = *(v139 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  v111 = v139;
  if (v48)
  {
    v138 = MEMORY[0x1E69E7CC0];
    sub_1B71FE588(0, v48, 0);
    v50 = (v47 + 32);
    v51 = (v108 + 16);
    v49 = v138;
    v125 = (v108 + 8);
    v117 = (v108 + 56);
    v116 = (v108 + 32);
    v52 = v129;
    v53 = v134;
    do
    {
      v55 = *v50++;
      v54 = v55;
      *v52 = v55;
      sub_1B729067C(v55);
      sub_1B729067C(v55);
      v56 = [v130 updatedDate];
      v57 = v131;
      sub_1B77FF928();

      if ((v55 & 0x4000000000000000) != 0)
      {
        v124 = v49;
        v62 = v119;
        (*v51)(v119, v57, v53);
        v63 = sub_1B7800838();
        [v54 & 0xBFFFFFFFFFFFFFFFLL willAccessValueForKey_];

        LODWORD(v1) = [v54 & 0xBFFFFFFFFFFFFFFFLL statusValue];
        v64 = sub_1B7800838();
        [v54 & 0xBFFFFFFFFFFFFFFFLL didAccessValueForKey_];

        if (v1 >= 6)
        {
          goto LABEL_64;
        }

        sub_1B729064C(v54);
        (*v125)(v57, v53);
        v65 = v127;
        v66 = v128;
        v67 = *v117;
        (*v117)(v128 + *(v127 + 24), 1, 1, v53);
        *(v66 + *(v65 + 20)) = 0x90509080807uLL >> (8 * v1);
        v68 = *(v65 + 24);
        sub_1B7205418(v66 + v68, &qword_1EB98EBD0);
        v67(v66 + v68, 1, 1, v53);
        (*v116)(v66, v62, v53);
        v52 = v129;
        v49 = v124;
      }

      else
      {
        v58 = *v51;
        v59 = v118;
        (*v51)(v118, v57, v134);
        v60 = v121;
        v58(v121, v59, v134);
        v61 = v120;
        if (v54 < 0)
        {
          Order.PriorityInfo.init(_:updatedDate:)((v54 & 0x3FFFFFFFFFFFFFFFLL), v60, v120);
        }

        else
        {
          Order.PriorityInfo.init(_:updatedDate:)(v54, v60, v120);
        }

        v69 = *v125;
        v70 = v134;
        (*v125)(v59, v134);
        (v69)(v131, v70);
        v71 = v61;
        v66 = v128;
        sub_1B75F6BC4(v71, v128, type metadata accessor for Order.PriorityInfo);
        v52 = v129;
      }

      sub_1B75F6BC4(v66, v52 + *(v132 + 48), type metadata accessor for Order.PriorityInfo);
      v138 = v49;
      v73 = *(v49 + 16);
      v72 = *(v49 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1B71FE588(v72 > 1, v73 + 1, 1);
        v52 = v129;
        v49 = v138;
      }

      *(v49 + 16) = v73 + 1;
      sub_1B722376C(v52, v49 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v73, &qword_1EB98F338);
      --v48;
    }

    while (v48);
    v46 = v123;
  }

  v74 = *(v49 + 16);
  v75 = v110;
  if (!v74)
  {

    *v109 = 0x7000000000000007;
    return result;
  }

  v131 = v49 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
  sub_1B7205588(v131, v122, &qword_1EB98F338);
  if (v74 == 1)
  {
LABEL_42:

    v76 = v107;
    sub_1B722376C(v122, v107, &qword_1EB98F338);
    v77 = *(v132 + 48);
    *v109 = *v76;
    return sub_1B75F6B64(v76 + v77, type metadata accessor for Order.PriorityInfo);
  }

  LOWORD(v1) = v108 + 48;
  v125 = (v108 + 32);
  v79 = 1;
  v128 = v74;
  v129 = (v108 + 48);
  v130 = (v108 + 8);
  while (v79 < *(v49 + 16))
  {
    v1 = v126;
    sub_1B7205588(v131 + *(v133 + 72) * v79, v126, &qword_1EB98F338);
    v80 = *(v132 + 48);
    v81 = v122 + v80;
    v82 = v1 + v80;
    sub_1B77FF938();
    v83 = *(v127 + 20);
    v84 = v46;
    v85 = word_1B784A122[*(v82 + v83)];
    v86 = word_1B784A122[*(v81 + v83)];
    if (v85 != v86)
    {
      (*v130)(v84, v134);
      if (v86 < v85)
      {
        goto LABEL_61;
      }

      goto LABEL_45;
    }

    v87 = *(v127 + 24);
    v88 = *(v115 + 48);
    sub_1B7205588(v82 + v87, v75, &qword_1EB98EBD0);
    sub_1B7205588(v81 + v87, v75 + v88, &qword_1EB98EBD0);
    LOWORD(v1) = v129;
    v89 = *v129;
    if ((*v129)(v75, 1, v134) == 1)
    {
      if (v89(v75 + v88, 1, v134) == 1)
      {
        v90 = sub_1B77FF8C8();
        (*v130)(v123, v134);
        sub_1B7205418(v75, &qword_1EB98EBD0);
        v74 = v128;
        if (v90)
        {
          goto LABEL_61;
        }

        goto LABEL_45;
      }

      (*v130)(v123, v134);
      v74 = v128;
      goto LABEL_58;
    }

    v91 = v113;
    sub_1B7205588(v75, v113, &qword_1EB98EBD0);
    if (v89(v75 + v88, 1, v134) == 1)
    {
      v92 = *v130;
      v93 = v134;
      (*v130)(v123, v134);
      v92(v91, v93);
      v74 = v128;
      LOWORD(v1) = v129;
LABEL_58:
      v94 = v82 + v87;
      v95 = v114;
      sub_1B7205588(v94, v114, &qword_1EB98EBD0);
      v96 = v89(v95, 1, v134);
      sub_1B7205418(v95, &qword_1EB98EBD0);
      sub_1B7205418(v75, &qword_1EB98FCE0);
      if (v96 != 1)
      {
        goto LABEL_61;
      }

      goto LABEL_45;
    }

    v97 = *v125;
    v1 = v121;
    v98 = v134;
    (*v125)(v121, v91, v134);
    v99 = v112;
    v97(v112, v75 + v88, v98);
    v100 = v123;
    sub_1B77FF808();
    v102 = fabs(v101);
    sub_1B77FF808();
    v104 = fabs(v103);
    v105 = *v130;
    (*v130)(v99, v98);
    v105(v1, v98);
    v105(v100, v98);
    sub_1B7205418(v75, &qword_1EB98EBD0);
    v74 = v128;
    if (v102 < v104)
    {
LABEL_61:
      v1 = v122;
      sub_1B7205418(v122, &qword_1EB98F338);
      sub_1B722376C(v126, v1, &qword_1EB98F338);
      goto LABEL_46;
    }

LABEL_45:
    sub_1B7205418(v126, &qword_1EB98F338);
LABEL_46:
    ++v79;
    v46 = v123;
    if (v74 == v79)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  v136 = 0;
  v137 = 0xE000000000000000;
  sub_1B7801A78();

  v136 = 0xD000000000000020;
  v137 = 0x80000001B7883EA0;
  v135 = v1;
  v106 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v106);

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t Order.PriorityInfo.init(_:updatedDate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Order.PriorityInfo(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v26 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  v19 = *a1;
  if ((v19 & 0x4000000000000000) != 0)
  {
    (*(v10 + 16))(v13, a2, v9);
    v21 = ManagedOrderReturn.status.getter();
    sub_1B729064C(v19);
    (*(v10 + 8))(a2, v9);
    v22 = *(v6 + 24);
    v23 = *(v10 + 56);
    v23(a3 + v22, 1, 1, v9);
    *(a3 + *(v6 + 20)) = 0x90509080807uLL >> (8 * v21);
    sub_1B7205418(a3 + v22, &qword_1EB98EBD0);
    v23(a3 + v22, 1, 1, v9);
    return (*(v10 + 32))(a3, v13, v9);
  }

  else
  {
    v20 = *(v10 + 16);
    v20(&v26 - v17, a2, v9);
    v20(v16, v18, v9);
    if (v19 < 0)
    {
      Order.PriorityInfo.init(_:updatedDate:)((v19 & 0x3FFFFFFFFFFFFFFFLL), v16, v8);
    }

    else
    {
      Order.PriorityInfo.init(_:updatedDate:)(v19, v16, v8);
    }

    v25 = *(v10 + 8);
    v25(a2, v9);
    v25(v18, v9);
    return sub_1B75F6BC4(v8, a3, type metadata accessor for Order.PriorityInfo);
  }
}

uint64_t sub_1B75F0FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.ContentItem(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F500) + 48);
  sub_1B75F6AFC(a1, a3, type metadata accessor for Order.ContentItem);
  sub_1B75F6AFC(a1, v12, type metadata accessor for Order.ContentItem);
  v14 = type metadata accessor for RawECommerceOrderContent(0);
  (*(v7 + 16))(v9, a2 + *(v14 + 48), v6);
  return Order.PriorityInfo.init(_:updatedDate:)(v12, v9, a3 + v13);
}

uint64_t Order.PriorityInfo.init(_:updatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = a2;
  v4 = type metadata accessor for Order.Return();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Order.Fulfillment();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = type metadata accessor for Order.ContentItem(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75F6AFC(a1, v21, type metadata accessor for Order.ContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75F6B64(a1, type metadata accessor for Order.ContentItem);
    sub_1B75F6BC4(v21, v6, type metadata accessor for Order.Return);
    v22 = *(v8 + 32);
    v23 = v32;
    v22(v32, v34, v7);
    v24 = v6[8];
    sub_1B75F6B64(v6, type metadata accessor for Order.Return);
    v25 = type metadata accessor for Order.PriorityInfo(0);
    v26 = *(v25 + 24);
    v27 = *(v8 + 56);
    v28 = v33;
    v27(v33 + v26, 1, 1, v7);
    *(v28 + *(v25 + 20)) = 0x90509080807uLL >> (8 * v24);
    sub_1B7205418(v28 + v26, &qword_1EB98EBD0);
    v27(v28 + v26, 1, 1, v7);
    return (v22)(v28, v23, v7);
  }

  else
  {
    sub_1B75F6BC4(v21, v18, type metadata accessor for Order.Fulfillment);
    sub_1B75F6AFC(v18, v16, type metadata accessor for Order.Fulfillment);
    v30 = v34;
    (*(v8 + 16))(v12, v34, v7);
    Order.PriorityInfo.init(_:updatedDate:)(v16, v12, v33);
    (*(v8 + 8))(v30, v7);
    sub_1B75F6B64(a1, type metadata accessor for Order.ContentItem);
    return sub_1B75F6B64(v18, type metadata accessor for Order.Fulfillment);
  }
}

{
  v31 = a3;
  v32 = a2;
  v4 = type metadata accessor for Order.ShippingFulfillment();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.PickupFulfillment();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v20 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_1B75F6AFC(a1, v22, type metadata accessor for Order.Fulfillment);
  v23 = (v11 + 16);
  v24 = (v11 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75F6BC4(v22, v19, type metadata accessor for Order.PickupFulfillment);
    sub_1B75F6AFC(v19, v17, type metadata accessor for Order.PickupFulfillment);
    v25 = v32;
    (*v23)(v13, v32, v10);
    Order.PriorityInfo.init(_:updatedDate:)(v17, v13, v31);
    (*v24)(v25, v10);
    sub_1B75F6B64(v33, type metadata accessor for Order.Fulfillment);
    v26 = type metadata accessor for Order.PickupFulfillment;
    v27 = v19;
  }

  else
  {
    sub_1B75F6BC4(v22, v9, type metadata accessor for Order.ShippingFulfillment);
    sub_1B75F6AFC(v9, v7, type metadata accessor for Order.ShippingFulfillment);
    v28 = v32;
    (*v23)(v13, v32, v10);
    Order.PriorityInfo.init(_:updatedDate:)(v7, v13, v31);
    (*v24)(v28, v10);
    sub_1B75F6B64(v33, type metadata accessor for Order.Fulfillment);
    v26 = type metadata accessor for Order.ShippingFulfillment;
    v27 = v9;
  }

  return sub_1B75F6B64(v27, v26);
}

{
  v5 = *(a1 + 8);
  sub_1B75F6B64(a1, type metadata accessor for Order.Return);
  v6 = type metadata accessor for Order.PriorityInfo(0);
  v7 = *(v6 + 24);
  v8 = sub_1B77FF988();
  v12 = *(v8 - 8);
  v9 = *(v12 + 56);
  v9(a3 + v7, 1, 1, v8);
  *(a3 + *(v6 + 20)) = 0x90509080807uLL >> (8 * v5);
  sub_1B7205418(a3 + v7, &qword_1EB98EBD0);
  v9(a3 + v7, 1, 1, v8);
  v10 = *(v12 + 32);

  return v10(a3, a2, v8);
}

{
  v48 = a2;
  v5 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Order.FulfillmentWindow(0);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v41 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = *(a1 + 8);
  v22 = type metadata accessor for Order.PickupFulfillment();
  sub_1B7205588(a1 + *(v22 + 48), v20, &qword_1EB990828);
  sub_1B7205588(a1 + *(v22 + 52), v15, &qword_1EB98EBD0);
  sub_1B75F6B64(a1, type metadata accessor for Order.PickupFulfillment);
  v45 = type metadata accessor for Order.PriorityInfo(0);
  v23 = *(v45 + 24);
  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v47 = a3;
  v26(a3 + v23, 1, 1, v24);
  if (((1 << v21) & 0x33) != 0)
  {
    sub_1B7205418(v15, &qword_1EB98EBD0);
    sub_1B7205418(v20, &qword_1EB990828);
    v27 = v46;
    v26(v46, 1, 1, v24);
    v28 = 0x90905040100uLL >> (8 * v21);
  }

  else
  {
    v27 = v46;
    if (v21 == 2)
    {
      sub_1B7205418(v15, &qword_1EB98EBD0);
      v31 = v20;
      v32 = v41;
      sub_1B722376C(v31, v41, &qword_1EB990828);
      if ((*(v42 + 48))(v32, 1, v43) == 1)
      {
        sub_1B7205418(v32, &qword_1EB990828);
        v33 = 1;
        v34 = v44;
      }

      else
      {
        v35 = v40;
        sub_1B75F6AFC(v32, v40, type metadata accessor for Order.FulfillmentWindow);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v34 = v44;
        if (EnumCaseMultiPayload == 1)
        {
          v37 = v35;
          v38 = v39;
          sub_1B75F6BC4(v37, v39, type metadata accessor for TimeWindow);
          (*(v25 + 16))(v34, v38, v24);
          sub_1B75F6B64(v38, type metadata accessor for TimeWindow);
        }

        else
        {
          (*(v25 + 32))(v44, v35, v24);
        }

        sub_1B75F6B64(v32, type metadata accessor for Order.FulfillmentWindow);
        v33 = 0;
      }

      v26(v34, v33, 1, v24);
      sub_1B722376C(v34, v27, &qword_1EB98EBD0);
      LOBYTE(v28) = 4;
    }

    else
    {
      sub_1B7205418(v20, &qword_1EB990828);
      sub_1B722376C(v15, v27, &qword_1EB98EBD0);
      LOBYTE(v28) = 5;
    }
  }

  v29 = v47;
  *(v47 + *(v45 + 20)) = v28;
  sub_1B72DFF88(v27, v29 + v23);
  return (*(v25 + 32))(v29, v48, v24);
}

{
  v51 = a2;
  v52 = a3;
  v4 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Order.FulfillmentWindow(0);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v44 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v23 = *(a1 + 40);
  v24 = type metadata accessor for Order.ShippingFulfillment();
  sub_1B7205588(a1 + v24[13], v22, &qword_1EB990828);
  sub_1B7205588(a1 + v24[14], v17, &qword_1EB98EBD0);
  sub_1B7205588(a1 + v24[16], v15, &qword_1EB98EBD0);
  sub_1B75F6B64(a1, type metadata accessor for Order.ShippingFulfillment);
  v25 = type metadata accessor for Order.PriorityInfo(0);
  v26 = *(v25 + 24);
  v48 = v26;
  v49 = v25;
  v27 = sub_1B77FF988();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v29(v52 + v26, 1, 1, v27);
  if (v23 <= 3)
  {
    if (v23 >= 2)
    {
      sub_1B7205418(v15, &qword_1EB98EBD0);
      sub_1B7205418(v17, &qword_1EB98EBD0);
      v30 = v44;
      sub_1B722376C(v22, v44, &qword_1EB990828);
      if ((*(v45 + 48))(v30, 1, v46) == 1)
      {
        sub_1B7205418(v30, &qword_1EB990828);
        v31 = 1;
        v32 = v50;
        v33 = v47;
      }

      else
      {
        v35 = v43;
        sub_1B75F6AFC(v30, v43, type metadata accessor for Order.FulfillmentWindow);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v32 = v50;
        v33 = v47;
        if (EnumCaseMultiPayload == 1)
        {
          v37 = v35;
          v38 = v42;
          sub_1B75F6BC4(v37, v42, type metadata accessor for TimeWindow);
          (*(v28 + 16))(v33, v38, v27);
          sub_1B75F6B64(v38, type metadata accessor for TimeWindow);
        }

        else
        {
          (*(v28 + 32))(v47, v35, v27);
        }

        sub_1B75F6B64(v30, type metadata accessor for Order.FulfillmentWindow);
        v31 = 0;
      }

      v29(v33, v31, 1, v27);
      sub_1B722376C(v33, v32, &qword_1EB98EBD0);
      goto LABEL_15;
    }

LABEL_6:
    sub_1B7205418(v15, &qword_1EB98EBD0);
    sub_1B7205418(v17, &qword_1EB98EBD0);
    sub_1B7205418(v22, &qword_1EB990828);
    v32 = v50;
    v29(v50, 1, 1, v27);
LABEL_15:
    v34 = 0x909060503020100uLL >> (8 * v23);
    goto LABEL_16;
  }

  if ((v23 - 6) < 2)
  {
    goto LABEL_6;
  }

  if (v23 == 4)
  {
    sub_1B7205418(v15, &qword_1EB98EBD0);
    sub_1B7205418(v22, &qword_1EB990828);
    v32 = v50;
    sub_1B722376C(v17, v50, &qword_1EB98EBD0);
    LOBYTE(v34) = 5;
  }

  else
  {
    sub_1B7205418(v17, &qword_1EB98EBD0);
    sub_1B7205418(v22, &qword_1EB990828);
    v32 = v50;
    sub_1B722376C(v15, v50, &qword_1EB98EBD0);
    LOBYTE(v34) = 6;
  }

LABEL_16:
  v39 = v52;
  *(v52 + *(v49 + 20)) = v34;
  sub_1B72DFF88(v32, v39 + v48);
  return (*(v28 + 32))(v39, v51, v27);
}

uint64_t ManagedExtractedOrderContent.topPriorityShippingFulfillment(calendar:timeZone:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v68 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v68 - v10;
  v84 = sub_1B77FF988();
  v11 = *(v84 - 8);
  v12 = MEMORY[0x1EEE9AC00](v84);
  v71 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v68 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F328);
  v18 = *(v74 - 8);
  v19 = MEMORY[0x1EEE9AC00](v74);
  v85 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v69 = (&v68 - v24);
  v25 = ManagedExtractedOrderContent.shippingFulfillments.getter();
  v87 = v2;
  v88 = a1;
  v89 = a2;
  sub_1B75EC6A8(sub_1B75F7334, v86, v25);
  v27 = v26;

  v28 = *(v27 + 16);
  if (!v28)
  {

    return 0;
  }

  v83 = v27 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  result = sub_1B7205588(v83, v23, &qword_1EB98F328);
  v30 = v74;
  if (v28 == 1)
  {
LABEL_3:

    v31 = v69;
    sub_1B722376C(v23, v69, &qword_1EB98F328);
    v32 = *v31;
    sub_1B75F6B64(v31 + *(v30 + 48), type metadata accessor for Order.PriorityInfo);
    return v32;
  }

  v82 = (v11 + 8);
  v33 = (v11 + 48);
  v68 = (v11 + 32);
  v34 = 1;
  v72 = v9;
  v76 = v17;
  v79 = v27;
  v80 = v23;
  v78 = v28;
  v81 = v18;
  while (v34 < *(v27 + 16))
  {
    v35 = v33;
    v36 = v85;
    sub_1B7205588(v83 + *(v18 + 72) * v34, v85, &qword_1EB98F328);
    v37 = *(v30 + 48);
    v38 = &v23[v37];
    v39 = v36 + v37;
    sub_1B77FF938();
    v40 = type metadata accessor for Order.PriorityInfo(0);
    v41 = *(v40 + 20);
    v42 = word_1B784A122[*(v39 + v41)];
    v43 = word_1B784A122[v38[v41]];
    if (v42 != v43)
    {
      (*v82)(v17, v84);
      v49 = v43 >= v42;
      v18 = v81;
      if (!v49)
      {
        goto LABEL_23;
      }

      goto LABEL_7;
    }

    v44 = *(v40 + 24);
    v45 = *(v75 + 48);
    v46 = v77;
    sub_1B7205588(v39 + v44, v77, &qword_1EB98EBD0);
    sub_1B7205588(&v38[v44], v46 + v45, &qword_1EB98EBD0);
    v47 = *v33;
    if ((*v33)(v46, 1, v84) == 1)
    {
      if (v47(v46 + v45, 1, v84) == 1)
      {
        v48 = sub_1B77FF8C8();
        v17 = v76;
        (*v82)(v76, v84);
        sub_1B7205418(v46, &qword_1EB98EBD0);
        v18 = v81;
        if (v48)
        {
          goto LABEL_23;
        }

        goto LABEL_7;
      }

      (*v82)(v76, v84);
      goto LABEL_20;
    }

    v50 = v46;
    v51 = v46;
    v52 = v84;
    v53 = v72;
    sub_1B7205588(v50, v72, &qword_1EB98EBD0);
    if (v47(v51 + v45, 1, v52) == 1)
    {
      v54 = *v82;
      (*v82)(v76, v52);
      v54(v53, v52);
      v46 = v77;
LABEL_20:
      v18 = v81;
      v55 = v39 + v44;
      v56 = v73;
      sub_1B7205588(v55, v73, &qword_1EB98EBD0);
      v57 = v47(v56, 1, v84);
      sub_1B7205418(v56, &qword_1EB98EBD0);
      sub_1B7205418(v46, &qword_1EB98FCE0);
      v17 = v76;
      v30 = v74;
      if (v57 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_7;
    }

    v58 = *v68;
    v59 = v70;
    (*v68)(v70, v53, v52);
    v60 = v77;
    v61 = v77 + v45;
    v62 = v71;
    v58(v71, v61, v52);
    v17 = v76;
    sub_1B77FF808();
    v64 = fabs(v63);
    sub_1B77FF808();
    v66 = fabs(v65);
    v67 = *v82;
    (*v82)(v62, v52);
    v67(v59, v52);
    v67(v17, v52);
    sub_1B7205418(v60, &qword_1EB98EBD0);
    v30 = v74;
    v18 = v81;
    v33 = v35;
    if (v64 < v66)
    {
LABEL_23:
      v23 = v80;
      sub_1B7205418(v80, &qword_1EB98F328);
      result = sub_1B722376C(v85, v23, &qword_1EB98F328);
      goto LABEL_8;
    }

LABEL_7:
    result = sub_1B7205418(v85, &qword_1EB98F328);
    v23 = v80;
LABEL_8:
    v27 = v79;
    if (v78 == ++v34)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B75F1D5C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v23 = a2;
  v24 = sub_1B77FFCF8();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFC88();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F328) + 48);
  *a5 = v17;
  v18 = v17;
  v19 = [v23 orderUpdateDate];
  sub_1B77FF928();

  (*(v11 + 16))(v13, v25, v10);
  (*(v7 + 16))(v9, v26, v24);
  return Order.PriorityInfo.init(shippingFulfillment:updatedDate:calendar:timeZone:)(v18, v16, v13, v9, a5 + v22);
}

uint64_t Order.PriorityInfo.init(shippingFulfillment:updatedDate:calendar:timeZone:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v105 = a3;
  v110 = a2;
  v108 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v91 = &v79 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v88 = &v79 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v87 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v79 - v15;
  v16 = sub_1B77FFCF8();
  v109 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1B77FFC88();
  v19 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B77FF988();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ManagedExtractedOrderShippingFulfillment.Status.init(rawValue:)([a1 statusValue]);
  if (v139 == 10)
  {
    v26 = 0;
  }

  else
  {
    v26 = v139;
  }

  v107 = v26;
  ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.getter(v127);
  v136 = v127[0];
  v137 = v127[1];
  v138 = v127[2];
  v89 = v128;
  v133 = v129;
  v134 = v130;
  v135 = v131;
  LODWORD(v90) = v132;
  ManagedExtractedOrderShippingFulfillment.deliveryDate.getter(v123);
  v82 = v123[1];
  v79 = v123[0];
  v80 = v125;
  v81 = v124;
  v27 = v126;
  v94 = a1;
  ManagedExtractedOrderShippingFulfillment.shippingDate.getter(v119);
  v86 = v119[1];
  v83 = v119[0];
  v84 = v121;
  v85 = v120;
  v28 = v122;
  v29 = *(v23 + 16);
  v99 = v25;
  v30 = v25;
  v31 = v105;
  v29(v30, v110, v22);
  v97 = v19;
  v32 = v19;
  v33 = v106;
  v34 = *(v32 + 16);
  v104 = v21;
  v35 = v21;
  v36 = v102;
  v34(v35, v31, v106);
  v37 = *(v109 + 16);
  v103 = v18;
  v38 = v18;
  v39 = v16;
  v37(v38, v36, v16);
  v98 = type metadata accessor for Order.PriorityInfo(0);
  v40 = *(v98 + 24);
  v100 = v23;
  v41 = v23;
  v42 = v40;
  v43 = *(v41 + 56);
  v93 = v22;
  v95 = v43;
  v96 = v41 + 56;
  v43(&v42[v108], 1, 1, v22);
  if (v107 > 3)
  {
    if ((v107 - 5) < 5)
    {
      goto LABEL_13;
    }

    v53 = v101;
    if (v27 <= 0xFD)
    {
      v111 = v79;
      v112 = v82;
      *&v113 = v81;
      *(&v113 + 1) = v80;
      LOBYTE(v114) = v27;
      TrackedOrder.DeliveryDate.convertToDate(calendar:timeZone:)(v104, v103);

      v109 = *(v109 + 8);
      (v109)(v36, v16);
      v78 = *(v97 + 8);
      v78(v31, v33);
      v45 = v100;
      v49 = v93;
      (*(v100 + 8))(v110, v93);
      (v109)(v103, v16);
      v57 = v87;
      v78(v104, v33);
      v56 = 0;
    }

    else
    {

      v109 = *(v109 + 8);
      (v109)(v36, v16);
      v55 = *(v97 + 8);
      v55(v31, v33);
      v45 = v100;
      v49 = v93;
      (*(v100 + 8))(v110, v93);
      (v109)(v103, v16);
      v55(v104, v33);
      v56 = 1;
      v57 = v87;
    }

    v95(v57, v56, 1, v49);
    sub_1B722376C(v57, v53, &qword_1EB98EBD0);
    v74 = 5;
  }

  else
  {
    if ((v107 - 2) < 2)
    {
      v88 = v42;
      v44 = v89;
      v45 = v100;
      if (v89 >> 1 == 0xFFFFFFFF && v90 < 2)
      {

        v46 = *(v109 + 8);
        v46(v36, v39);
        v47 = *(v97 + 8);
        v48 = v106;
        v47(v105, v106);
        v49 = v93;
        (*(v45 + 8))(v110, v93);
        v46(v103, v39);
        v47(v104, v48);
        v50 = v92;
        v51 = v95;
        v95(v92, 1, 1, v49);
        v52 = v91;
        v51(v91, 1, 1, v49);
        v53 = v101;
        v54 = (*(v45 + 48))(v50, 1, v49);
      }

      else
      {
        v111 = v136;
        v112 = v137;
        v113 = v138;
        v114 = v89;
        v115 = v133;
        v116 = v134;
        v117 = v135;
        v118 = v90;
        v60 = v92;
        v62 = v103;
        v61 = v104;
        TrackedOrder.EstimatedDeliveryDate.convertStartToDate(calendar:timeZone:)(v104, v103, v92);
        v63 = *(v45 + 48);
        v49 = v93;
        v64 = v63(v60, 1, v93);
        v53 = v101;
        if (v64 != 1)
        {

          v71 = *(v109 + 8);
          v71(v102, v39);
          v72 = *(v97 + 8);
          v73 = v106;
          v72(v105, v106);
          (*(v45 + 8))(v110, v49);
          v71(v103, v39);
          v72(v104, v73);
          v52 = v91;
          (*(v45 + 32))(v91, v92, v49);
          v95(v52, 0, 1, v49);
          v42 = v88;
LABEL_21:
          sub_1B722376C(v52, v53, &qword_1EB98EBD0);
          goto LABEL_22;
        }

        v111 = v136;
        v112 = v137;
        v113 = v138;
        v115 = v133;
        v116 = v134;
        v117 = v135;
        v114 = v44;
        v118 = v90;
        v90 = v63;
        TrackedOrder.EstimatedDeliveryDate.convertEndToDate(calendar:timeZone:)(v61, v62, v91);

        v109 = *(v109 + 8);
        (v109)(v102, v39);
        v65 = *(v97 + 8);
        v66 = v106;
        v65(v105, v106);
        (*(v45 + 8))(v110, v49);
        (v109)(v103, v39);
        v67 = v90;
        v65(v104, v66);
        v52 = v91;
        v95(v91, 0, 1, v49);
        v50 = v92;
        v54 = v67(v92, 1, v49);
      }

      v42 = v88;
      if (v54 != 1)
      {
        sub_1B7205418(v50, &qword_1EB98EBD0);
      }

      goto LABEL_21;
    }

    if (!v107)
    {
LABEL_13:

      v58 = *(v109 + 8);
      v58(v36, v16);
      v59 = *(v97 + 8);
      v59(v31, v33);
      v45 = v100;
      v49 = v93;
      (*(v100 + 8))(v110, v93);
      v58(v103, v16);
      v59(v104, v33);
      v53 = v101;
      v95(v101, 1, 1, v49);
LABEL_22:
      v74 = byte_1B784A136[v107];
      goto LABEL_23;
    }

    v53 = v101;
    if (v28 <= 0xFD)
    {
      v111 = v83;
      v112 = v86;
      *&v113 = v85;
      *(&v113 + 1) = v84;
      LOBYTE(v114) = v28;
      TrackedOrder.ShippingDate.convertToDate(calendar:timeZone:)(v104, v103);

      v109 = *(v109 + 8);
      (v109)(v36, v16);
      v77 = *(v97 + 8);
      v77(v31, v33);
      v45 = v100;
      v49 = v93;
      (*(v100 + 8))(v110, v93);
      (v109)(v103, v16);
      v70 = v88;
      v77(v104, v33);
      v69 = 0;
    }

    else
    {

      v109 = *(v109 + 8);
      (v109)(v36, v16);
      v68 = *(v97 + 8);
      v68(v31, v33);
      v45 = v100;
      v49 = v93;
      (*(v100 + 8))(v110, v93);
      (v109)(v103, v16);
      v68(v104, v33);
      v69 = 1;
      v70 = v88;
    }

    v95(v70, v69, 1, v49);
    sub_1B722376C(v70, v53, &qword_1EB98EBD0);
    v74 = 6;
  }

LABEL_23:
  v75 = v108;
  *(v108 + *(v98 + 20)) = v74;
  sub_1B72DFF88(v53, &v42[v75]);
  return (*(v45 + 32))(v75, v99, v49);
}

uint64_t sub_1B75F2BF8@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v7 = sub_1B77FFCF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FFC88();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = [a2 orderUpdateDate];
  sub_1B77FF928();

  (*(v12 + 16))(v14, v22, v11);
  (*(v8 + 16))(v10, v23, v7);
  return Order.PriorityInfo.init(shippingFulfillment:updatedDate:calendar:timeZone:)(v18, v17, v14, v10, v24);
}

uint64_t sub_1B75F2E24(void *a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v37 = sub_1B77FF4F8();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Order.PriorityInfo(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - v17;
  v19 = a3(v16);
  v36 = a2;
  a3(v19);
  if (_s10FinanceKit5OrderV12PriorityInfoV2eeoiySbAE_AEtFZ_0(v18, v15))
  {
    v20 = [a1 objectID];
    v21 = [v20 URIRepresentation];

    sub_1B77FF478();
    v22 = sub_1B77FF3B8();
    v24 = v23;
    v25 = *(v35 + 8);
    v26 = v37;
    v25(v7, v37);
    v27 = [v36 objectID];
    v28 = [v27 URIRepresentation];

    sub_1B77FF478();
    v29 = sub_1B77FF3B8();
    v31 = v30;
    v25(v7, v26);
    if (v22 == v29 && v24 == v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1B78020F8();
    }
  }

  else
  {
    sub_1B77FF938();
    v32 = Order.PriorityInfo.isHigherPriority(than:now:)(v15, v11);
    (*(v9 + 8))(v11, v8);
  }

  sub_1B75F6B64(v15, type metadata accessor for Order.PriorityInfo);
  sub_1B75F6B64(v18, type metadata accessor for Order.PriorityInfo);
  return v32 & 1;
}

uint64_t Order.PriorityInfo.init(_:updatedDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = ManagedOrderReturn.status.getter();

  v7 = type metadata accessor for Order.PriorityInfo(0);
  v8 = *(v7 + 24);
  v9 = sub_1B77FF988();
  v13 = *(v9 - 8);
  v10 = *(v13 + 56);
  v10(a3 + v8, 1, 1, v9);
  *(a3 + *(v7 + 20)) = 0x90509080807uLL >> (8 * v6);
  sub_1B7205418(a3 + v8, &qword_1EB98EBD0);
  v10(a3 + v8, 1, 1, v9);
  v11 = *(v13 + 32);

  return v11(a3, a2, v9);
}

{
  v47 = a2;
  v48 = a3;
  v4 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Order.FulfillmentWindow(0);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v20 = ManagedOrderPickupFulfillment.status.getter();
  ManagedOrderPickupFulfillment.pickupWindow.getter(v19);
  v21 = [a1 pickedUpDate];
  if (v21)
  {
    v22 = v21;
    sub_1B77FF928();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(v14, v23, 1, v24);
  v27 = type metadata accessor for Order.PriorityInfo(0);
  v46 = *(v27 + 24);
  v26((v48 + v46), 1, 1, v24);
  if (((1 << v20) & 0x33) != 0)
  {
    sub_1B7205418(v14, &qword_1EB98EBD0);
    sub_1B7205418(v19, &qword_1EB990828);
    v26(v12, 1, 1, v24);
    v28 = 0x90905040100uLL >> (8 * v20);
  }

  else if (v20 == 2)
  {
    sub_1B7205418(v14, &qword_1EB98EBD0);
    v31 = v19;
    v32 = v43;
    sub_1B722376C(v31, v43, &qword_1EB990828);
    if ((*(v42 + 48))(v32, 1, v44) == 1)
    {
      sub_1B7205418(v32, &qword_1EB990828);
      v33 = 1;
      v34 = v45;
    }

    else
    {
      v35 = v41;
      sub_1B75F6AFC(v32, v41, type metadata accessor for Order.FulfillmentWindow);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = v45;
      if (EnumCaseMultiPayload == 1)
      {
        v37 = v35;
        v38 = v40;
        sub_1B75F6BC4(v37, v40, type metadata accessor for TimeWindow);
        (*(v25 + 16))(v34, v38, v24);
        sub_1B75F6B64(v38, type metadata accessor for TimeWindow);
      }

      else
      {
        (*(v25 + 32))(v45, v35, v24);
      }

      sub_1B75F6B64(v32, type metadata accessor for Order.FulfillmentWindow);
      v33 = 0;
    }

    v26(v34, v33, 1, v24);
    sub_1B722376C(v34, v12, &qword_1EB98EBD0);
    LOBYTE(v28) = 4;
  }

  else
  {
    sub_1B7205418(v19, &qword_1EB990828);
    sub_1B722376C(v14, v12, &qword_1EB98EBD0);
    LOBYTE(v28) = 5;
  }

  v29 = v48;
  *(v48 + *(v27 + 20)) = v28;
  sub_1B72DFF88(v12, v29 + v46);
  return (*(v25 + 32))(v29, v47, v24);
}

{
  v56 = a2;
  v5 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Order.FulfillmentWindow(0);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v52 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - v22;
  v57 = ManagedOrderShippingFulfillment.status.getter();
  ManagedOrderShippingFulfillment.estimatedDeliveryWindow.getter(v23);
  v24 = [a1 deliveryDate];
  if (v24)
  {
    v25 = v24;
    sub_1B77FF928();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_1B77FF988();
  v54 = *(v27 - 8);
  v28 = *(v54 + 56);
  v29 = 1;
  v28(v18, v26, 1, v27);
  v30 = [a1 shippedDate];
  if (v30)
  {
    v31 = v30;
    sub_1B77FF928();

    v29 = 0;
  }

  v28(v16, v29, 1, v27);
  v32 = type metadata accessor for Order.PriorityInfo(0);
  v33 = a3;
  v53 = *(v32 + 24);
  v28((a3 + v53), 1, 1, v27);
  if (v57 <= 3u)
  {
    if (v57 >= 2u)
    {
      sub_1B7205418(v16, &qword_1EB98EBD0);
      sub_1B7205418(v18, &qword_1EB98EBD0);
      v34 = v52;
      sub_1B722376C(v23, v52, &qword_1EB990828);
      if ((*(v49 + 48))(v34, 1, v50) == 1)
      {
        sub_1B7205418(v34, &qword_1EB990828);
        v35 = 1;
        v33 = a3;
        v37 = v54;
        v36 = v55;
        v38 = v51;
      }

      else
      {
        v40 = v48;
        sub_1B75F6AFC(v34, v48, type metadata accessor for Order.FulfillmentWindow);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v37 = v54;
        v36 = v55;
        v38 = v51;
        if (EnumCaseMultiPayload == 1)
        {
          v42 = v40;
          v43 = v47;
          sub_1B75F6BC4(v42, v47, type metadata accessor for TimeWindow);
          (*(v37 + 16))(v38, v43, v27);
          sub_1B75F6B64(v43, type metadata accessor for TimeWindow);
        }

        else
        {
          (*(v54 + 32))(v51, v40, v27);
        }

        v33 = a3;
        sub_1B75F6B64(v52, type metadata accessor for Order.FulfillmentWindow);
        v35 = 0;
      }

      v28(v38, v35, 1, v27);
      sub_1B722376C(v38, v36, &qword_1EB98EBD0);
      goto LABEL_21;
    }

LABEL_11:
    sub_1B7205418(v16, &qword_1EB98EBD0);
    sub_1B7205418(v18, &qword_1EB98EBD0);
    sub_1B7205418(v23, &qword_1EB990828);
    v36 = v55;
    v28(v55, 1, 1, v27);
    v37 = v54;
LABEL_21:
    v39 = 0x909060503020100uLL >> (8 * v57);
    goto LABEL_22;
  }

  if (v57 - 6 < 2)
  {
    goto LABEL_11;
  }

  if (v57 == 4)
  {
    sub_1B7205418(v16, &qword_1EB98EBD0);
    sub_1B7205418(v23, &qword_1EB990828);
    v36 = v55;
    sub_1B722376C(v18, v55, &qword_1EB98EBD0);
    LOBYTE(v39) = 5;
  }

  else
  {
    sub_1B7205418(v18, &qword_1EB98EBD0);
    sub_1B7205418(v23, &qword_1EB990828);
    v44 = v16;
    v36 = v55;
    sub_1B722376C(v44, v55, &qword_1EB98EBD0);
    LOBYTE(v39) = 6;
  }

  v37 = v54;
LABEL_22:
  *(v33 + *(v32 + 20)) = v39;
  sub_1B72DFF88(v36, v33 + v53);
  return (*(v37 + 32))(v33, v56, v27);
}

uint64_t Order.PriorityInfo.init(status:pickupWindow:pickedUpDate:updatedDate:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v36 = a3;
  v37 = a2;
  v7 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Order.FulfillmentWindow(0);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v35 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v19 = *a1;
  v38 = type metadata accessor for Order.PriorityInfo(0);
  v20 = *(v38 + 24);
  v21 = sub_1B77FF988();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v39 = v20;
  v23(a5 + v20, 1, 1, v21);
  if (((1 << v19) & 0x33) != 0)
  {
    sub_1B7205418(v36, &qword_1EB98EBD0);
    sub_1B7205418(v37, &qword_1EB990828);
    v23(v18, 1, 1, v21);
    v24 = 0x90905040100uLL >> (8 * v19);
  }

  else if (v19 == 2)
  {
    sub_1B7205418(v36, &qword_1EB98EBD0);
    sub_1B722376C(v37, v13, &qword_1EB990828);
    if ((*(v33 + 48))(v13, 1, v34) == 1)
    {
      sub_1B7205418(v13, &qword_1EB990828);
      v26 = 1;
      v27 = v35;
    }

    else
    {
      v28 = v32;
      sub_1B75F6AFC(v13, v32, type metadata accessor for Order.FulfillmentWindow);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = v35;
      if (EnumCaseMultiPayload == 1)
      {
        v30 = v31;
        sub_1B75F6BC4(v28, v31, type metadata accessor for TimeWindow);
        (*(v22 + 16))(v27, v30, v21);
        sub_1B75F6B64(v30, type metadata accessor for TimeWindow);
      }

      else
      {
        (*(v22 + 32))(v35, v28, v21);
      }

      sub_1B75F6B64(v13, type metadata accessor for Order.FulfillmentWindow);
      v26 = 0;
    }

    v23(v27, v26, 1, v21);
    sub_1B722376C(v27, v18, &qword_1EB98EBD0);
    LOBYTE(v24) = 4;
  }

  else
  {
    sub_1B7205418(v37, &qword_1EB990828);
    sub_1B722376C(v36, v18, &qword_1EB98EBD0);
    LOBYTE(v24) = 5;
  }

  *(a5 + *(v38 + 20)) = v24;
  sub_1B72DFF88(v18, a5 + v39);
  return (*(v22 + 32))(a5, v40, v21);
}

_BYTE *Order.StatusPriority.init(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0x90905040100uLL >> (8 * *result);
  return result;
}

{
  *a2 = 0x909060503020100uLL >> (8 * *result);
  return result;
}

{
  *a2 = 0x90509080807uLL >> (8 * *result);
  return result;
}

{
  *a2 = 0x90500u >> (8 * *result);
  return result;
}

uint64_t Order.PriorityInfo.init(status:estimatedDeliveryWindow:deliveryDate:shippedDate:updatedDate:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v38 = a4;
  v39 = a3;
  v40 = a2;
  v8 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.FulfillmentWindow(0);
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v37 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v20 = *a1;
  v41 = type metadata accessor for Order.PriorityInfo(0);
  v21 = *(v41 + 24);
  v22 = sub_1B77FF988();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v42 = v21;
  v43 = a6;
  v24(a6 + v21, 1, 1, v22);
  if (v20 <= 3)
  {
    if (v20 >= 2)
    {
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v39, &qword_1EB98EBD0);
      sub_1B722376C(v40, v14, &qword_1EB990828);
      if ((*(v36 + 48))(v14, 1, v10) == 1)
      {
        sub_1B7205418(v14, &qword_1EB990828);
        v25 = 1;
        v26 = v37;
      }

      else
      {
        v28 = v35;
        sub_1B75F6AFC(v14, v35, type metadata accessor for Order.FulfillmentWindow);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = v28;
          v30 = v34;
          sub_1B75F6BC4(v29, v34, type metadata accessor for TimeWindow);
          v26 = v37;
          (*(v23 + 16))(v37, v30, v22);
          sub_1B75F6B64(v30, type metadata accessor for TimeWindow);
        }

        else
        {
          v26 = v37;
          (*(v23 + 32))(v37, v28, v22);
        }

        sub_1B75F6B64(v14, type metadata accessor for Order.FulfillmentWindow);
        v25 = 0;
      }

      v24(v26, v25, 1, v22);
      sub_1B722376C(v26, v19, &qword_1EB98EBD0);
      goto LABEL_15;
    }

LABEL_6:
    sub_1B7205418(v38, &qword_1EB98EBD0);
    sub_1B7205418(v39, &qword_1EB98EBD0);
    sub_1B7205418(v40, &qword_1EB990828);
    v24(v19, 1, 1, v22);
LABEL_15:
    v27 = 0x909060503020100uLL >> (8 * v20);
    goto LABEL_16;
  }

  if ((v20 - 6) < 2)
  {
    goto LABEL_6;
  }

  if (v20 == 4)
  {
    sub_1B7205418(v38, &qword_1EB98EBD0);
    sub_1B7205418(v40, &qword_1EB990828);
    sub_1B722376C(v39, v19, &qword_1EB98EBD0);
    LOBYTE(v27) = 5;
  }

  else
  {
    sub_1B7205418(v39, &qword_1EB98EBD0);
    sub_1B7205418(v40, &qword_1EB990828);
    sub_1B722376C(v38, v19, &qword_1EB98EBD0);
    LOBYTE(v27) = 6;
  }

LABEL_16:
  v31 = v43;
  *(v43 + *(v41 + 20)) = v27;
  sub_1B72DFF88(v19, v31 + v42);
  return (*(v23 + 32))(v31, v44, v22);
}

uint64_t Order.PriorityInfo.init(status:updatedDate:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for Order.PriorityInfo(0);
  v7 = *(v6 + 24);
  v8 = sub_1B77FF988();
  v12 = *(v8 - 8);
  v9 = *(v12 + 56);
  v9(a3 + v7, 1, 1, v8);
  *(a3 + *(v6 + 20)) = 0x90509080807uLL >> (8 * v5);
  sub_1B7205418(a3 + v7, &qword_1EB98EBD0);
  v9(a3 + v7, 1, 1, v8);
  v10 = *(v12 + 32);

  return v10(a3, a2, v8);
}

{
  v5 = *a1;
  v6 = type metadata accessor for Order.PriorityInfo(0);
  v7 = *(v6 + 24);
  v8 = sub_1B77FF988();
  v12 = *(v8 - 8);
  v9 = *(v12 + 56);
  v9(a3 + v7, 1, 1, v8);
  *(a3 + *(v6 + 20)) = 0x90500u >> (8 * v5);
  sub_1B7205418(a3 + v7, &qword_1EB98EBD0);
  v9(a3 + v7, 1, 1, v8);
  v10 = *(v12 + 32);

  return v10(a3, a2, v8);
}

uint64_t Order.PriorityInfo.init(shippingStatus:estimatedDeliveryDate:deliveryDate:shippedDate:updatedDate:calendar:timeZone:)@<X0>(unsigned __int8 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v92 = a6;
  v98 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v86 = &v80 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v88 = &v80 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v80 - v22;
  v23 = *a1;
  v24 = *(a2 + 6);
  v25 = *(a2 + 104);
  v26 = *a3;
  v83 = a3[1];
  v80 = v26;
  v27 = *(a3 + 5);
  v82 = *(a3 + 4);
  v81 = v27;
  v28 = *(a3 + 48);
  v29 = *a4;
  v85 = a4[1];
  v84 = v29;
  v31 = *(a4 + 4);
  v30 = *(a4 + 5);
  v32 = *(a4 + 48);
  v94 = type metadata accessor for Order.PriorityInfo(0);
  v33 = *(v94 + 24);
  v34 = sub_1B77FF988();
  v93 = *(v34 - 8);
  v35 = *(v93 + 56);
  v97 = a8;
  v95 = v33;
  v36 = a8 + v33;
  v37 = (v93 + 56);
  v38 = v34;
  v91 = v35;
  v35(v36, 1, 1, v34);
  if (v23 > 3)
  {
    if ((v23 - 5) < 5)
    {
      goto LABEL_11;
    }

    if (v28 < 0xFE)
    {
      v99 = v80;
      v100 = v83;
      *&v101 = v82;
      *(&v101 + 1) = v81;
      LOBYTE(v102) = v28;
      v54 = v86;
      v76 = v92;
      v77 = v90;
      TrackedOrder.DeliveryDate.convertToDate(calendar:timeZone:)(v92, v90);
      v78 = sub_1B77FFCF8();
      (*(*(v78 - 8) + 8))(v77, v78);
      v79 = sub_1B77FFC88();
      (*(*(v79 - 8) + 8))(v76, v79);
      v53 = 0;
      v49 = v93;
    }

    else
    {
      v51 = sub_1B77FFCF8();
      (*(*(v51 - 8) + 8))(v90, v51);
      v52 = sub_1B77FFC88();
      (*(*(v52 - 8) + 8))(v92, v52);
      v53 = 1;
      v49 = v93;
      v54 = v86;
    }

    v91(v54, v53, 1, v38);
    v57 = v96;
    sub_1B722376C(v54, v96, &qword_1EB98EBD0);
    v69 = 5;
  }

  else
  {
    if ((v23 - 2) < 2)
    {
      v39 = v23;
      v40 = v24 >> 1 == 0xFFFFFFFF;
      v41 = v24;
      v42 = v92;
      v43 = v90;
      if (v40 && v25 < 2)
      {
        v44 = v88;
        v45 = v91;
        v91(v88, 1, 1, v38);
        v46 = sub_1B77FFCF8();
        (*(*(v46 - 8) + 8))(v43, v46);
        v47 = sub_1B77FFC88();
        (*(*(v47 - 8) + 8))(v42, v47);
        v48 = v89;
        v45(v89, 1, 1, v38);
        v49 = v93;
        v50 = *(v93 + 48);
      }

      else
      {
        v87 = v37;
        v58 = a2[1];
        v99 = *a2;
        v100 = v58;
        v101 = a2[2];
        v102 = v41;
        v103 = *(a2 + 56);
        v104 = *(a2 + 72);
        v105 = *(a2 + 88);
        v106 = v25;
        v44 = v88;
        v86 = v41;
        TrackedOrder.EstimatedDeliveryDate.convertStartToDate(calendar:timeZone:)(v92, v90, v88);
        v59 = v42;
        v49 = v93;
        v50 = *(v93 + 48);
        if (v50(v44, 1, v38) != 1)
        {
          v67 = sub_1B77FFCF8();
          (*(*(v67 - 8) + 8))(v43, v67);
          v68 = sub_1B77FFC88();
          (*(*(v68 - 8) + 8))(v59, v68);
          v48 = v89;
          (*(v49 + 32))(v89, v44, v38);
          v91(v48, 0, 1, v38);
          v57 = v96;
LABEL_19:
          sub_1B722376C(v48, v57, &qword_1EB98EBD0);
          goto LABEL_20;
        }

        v60 = a2[1];
        v99 = *a2;
        v100 = v60;
        v101 = a2[2];
        v103 = *(a2 + 56);
        v104 = *(a2 + 72);
        v105 = *(a2 + 88);
        v102 = v86;
        v106 = v25;
        v48 = v89;
        TrackedOrder.EstimatedDeliveryDate.convertEndToDate(calendar:timeZone:)(v59, v43, v89);
        v61 = sub_1B77FFCF8();
        (*(*(v61 - 8) + 8))(v43, v61);
        v62 = sub_1B77FFC88();
        (*(*(v62 - 8) + 8))(v59, v62);
        v91(v48, 0, 1, v38);
      }

      v57 = v96;
      if (v50(v44, 1, v38) != 1)
      {
        sub_1B7205418(v44, &qword_1EB98EBD0);
      }

      goto LABEL_19;
    }

    if (!v23)
    {
LABEL_11:
      v39 = v23;
      v55 = sub_1B77FFCF8();
      (*(*(v55 - 8) + 8))(v90, v55);
      v56 = sub_1B77FFC88();
      (*(*(v56 - 8) + 8))(v92, v56);
      v57 = v96;
      v91(v96, 1, 1, v38);
      v49 = v93;
LABEL_20:
      v69 = byte_1B784A136[v39];
      goto LABEL_21;
    }

    if (v32 < 0xFE)
    {
      v99 = v84;
      v100 = v85;
      *&v101 = v31;
      *(&v101 + 1) = v30;
      LOBYTE(v102) = v32;
      v66 = v87;
      v72 = v92;
      v73 = v90;
      TrackedOrder.ShippingDate.convertToDate(calendar:timeZone:)(v92, v90);
      v74 = sub_1B77FFCF8();
      (*(*(v74 - 8) + 8))(v73, v74);
      v75 = sub_1B77FFC88();
      (*(*(v75 - 8) + 8))(v72, v75);
      v65 = 0;
      v49 = v93;
    }

    else
    {
      v63 = sub_1B77FFCF8();
      (*(*(v63 - 8) + 8))(v90, v63);
      v64 = sub_1B77FFC88();
      (*(*(v64 - 8) + 8))(v92, v64);
      v65 = 1;
      v49 = v93;
      v66 = v87;
    }

    v91(v66, v65, 1, v38);
    v57 = v96;
    sub_1B722376C(v66, v96, &qword_1EB98EBD0);
    v69 = 6;
  }

LABEL_21:
  v70 = v97;
  *(v97 + *(v94 + 20)) = v69;
  sub_1B72DFF88(v57, v70 + v95);
  return (*(v49 + 32))(v70, v98, v38);
}

uint64_t Order.StatusPriority.init(contentItem:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for Order.Return();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Order.PickupFulfillment();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.ShippingFulfillment();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Order.ContentItem(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75F6BC4(a1, v6, type metadata accessor for Order.Return);
    v16 = v6[8];
    result = sub_1B75F6B64(v6, type metadata accessor for Order.Return);
    v18 = 8 * v16;
    v19 = 0x90509080807;
  }

  else
  {
    sub_1B75F6BC4(a1, v15, type metadata accessor for Order.Fulfillment);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B75F6BC4(v15, v12, type metadata accessor for Order.ShippingFulfillment);
      v22 = v12[40];
      result = sub_1B75F6B64(v12, type metadata accessor for Order.ShippingFulfillment);
      v21 = 0x909060503020100uLL >> (8 * v22);
      goto LABEL_7;
    }

    sub_1B75F6BC4(v15, v9, type metadata accessor for Order.PickupFulfillment);
    v20 = v9[8];
    result = sub_1B75F6B64(v9, type metadata accessor for Order.PickupFulfillment);
    v18 = 8 * v20;
    v19 = 0x90905040100;
  }

  v21 = v19 >> v18;
LABEL_7:
  *a2 = v21;
  return result;
}

void Order.StatusPriority.init(contentItem:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x4000000000000000) != 0)
  {
    v7 = ManagedOrderReturn.status.getter();
    sub_1B729064C(v3);
    v8 = 0x90509080807uLL >> (8 * v7);
  }

  else
  {
    if (v3 < 0)
    {
      v9 = ManagedOrderPickupFulfillment.status.getter();
      sub_1B729064C(v3);
      v5 = 8 * v9;
      v6 = 0x90905040100;
    }

    else
    {
      v4 = ManagedOrderShippingFulfillment.status.getter();
      sub_1B729064C(v3);
      v5 = 8 * v4;
      v6 = 0x909060503020100;
    }

    v8 = v6 >> v5;
  }

  *a2 = v8;
}

uint64_t sub_1B75F6AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75F6B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75F6BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s10FinanceKit5OrderV12PriorityInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((sub_1B77FF918() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for Order.PriorityInfo(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  sub_1B7205588(a1 + v15, v13, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v15, &v13[v16], &qword_1EB98EBD0);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B7205588(v13, v10, &qword_1EB98EBD0);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_1B75F73F8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v19 = sub_1B7800828();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  return (v19 & 1) != 0;
}

uint64_t _s10FinanceKit5OrderV11ContentItemO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.Return();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.ContentItem(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9993A0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B75F6AFC(a1, &v27 - v18, type metadata accessor for Order.ContentItem);
  sub_1B75F6AFC(a2, &v19[v20], type metadata accessor for Order.ContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75F6AFC(v19, v13, type metadata accessor for Order.ContentItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B75F6BC4(&v19[v20], v6, type metadata accessor for Order.Return);
      v21 = _s10FinanceKit5OrderV6ReturnV2eeoiySbAE_AEtFZ_0(v13, v6);
      sub_1B75F6B64(v6, type metadata accessor for Order.Return);
      v22 = v13;
      v23 = type metadata accessor for Order.Return;
LABEL_9:
      sub_1B75F6B64(v22, v23);
      sub_1B75F6B64(v19, type metadata accessor for Order.ContentItem);
      return v21 & 1;
    }

    v24 = type metadata accessor for Order.Return;
    v25 = v13;
  }

  else
  {
    sub_1B75F6AFC(v19, v15, type metadata accessor for Order.ContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B75F6BC4(&v19[v20], v9, type metadata accessor for Order.Fulfillment);
      v21 = _s10FinanceKit5OrderV11FulfillmentO2eeoiySbAE_AEtFZ_0(v15, v9);
      sub_1B75F6B64(v9, type metadata accessor for Order.Fulfillment);
      v22 = v15;
      v23 = type metadata accessor for Order.Fulfillment;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Order.Fulfillment;
    v25 = v15;
  }

  sub_1B75F6B64(v25, v24);
  sub_1B7205418(v19, &qword_1EB9993A0);
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_1B75F735C()
{
  result = qword_1EB999360;
  if (!qword_1EB999360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999360);
  }

  return result;
}

uint64_t sub_1B75F73F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B75F7440()
{
  result = type metadata accessor for Order.Fulfillment();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Order.Return();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B75F74EC()
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

uint64_t sub_1B75F7584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 8))
  {
    return (*a1 + 63);
  }

  v3 = (((*a1 >> 57) >> 5) & 1 | (2 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B75F75DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = (v3 | (v3 << 57)) & 0x7000000000000007;
    }
  }

  return result;
}

uint64_t sub_1B75F766C()
{
  v1 = v0;
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = [v1 usageInformation];
  v19 = [v18 expirationDate];

  if (v19)
  {
    sub_1B77FF928();

    v20 = *(v3 + 32);
    v20(v15, v12, v2);
    v21 = [v1 maximumExpirationDate];
    sub_1B77FF928();

    sub_1B71A6F54(&qword_1EB98EBD8);
    v22 = sub_1B78007E8();
    v23 = *(v3 + 8);
    if (v22)
    {
      v23(v15, v2);
      v24 = v17;
      v25 = v9;
    }

    else
    {
      v23(v9, v2);
      v24 = v17;
      v25 = v15;
    }

    v20(v24, v25, v2);
  }

  else
  {
    v26 = [v1 defaultExpirationDate];
    sub_1B77FF928();
  }

  v27 = [v1 effectiveExpirationDate];
  sub_1B77FF928();

  sub_1B71A6F54(&qword_1EB98FAC0);
  LOBYTE(v27) = sub_1B7800828();
  v28 = *(v3 + 8);
  v28(v6, v2);
  if ((v27 & 1) == 0)
  {
    v29 = sub_1B77FF8B8();
    [v1 setEffectiveExpirationDate_];
  }

  return (v28)(v17, v2);
}

id ManagedApplePayMerchantTokenUsageMetadata.__allocating_init(updateSequenceNumber:updateDate:usageInformation:usageInformationPackage:defaultExpirationDate:maximumExpirationDate:context:)(uint64_t a1, char *a2, void *a3, void *a4, char *a5, char *a6, void *a7)
{
  v26 = a7;
  v27 = a5;
  v24 = a6;
  v25 = a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(v7) initWithContext_];
  [v16 setUpdateSequenceNumber_];
  v17 = sub_1B77FF8B8();
  [v16 setUpdateDate_];

  [v16 setUsageInformation_];
  [v16 setUsageInformationPackage_];
  v18 = sub_1B77FF8B8();
  [v16 setDefaultExpirationDate_];

  v19 = v24;
  v20 = sub_1B77FF8B8();
  [v16 setMaximumExpirationDate_];

  sub_1B77FF7E8();
  v21 = sub_1B77FF8B8();
  v22 = *(v13 + 8);
  v22(v15, v12);
  [v16 setEffectiveExpirationDate_];

  sub_1B75F766C();
  v22(v19, v12);
  v22(v27, v12);
  v22(v25, v12);
  return v16;
}

Swift::Void __swiftcall ManagedApplePayMerchantTokenUsageMetadata.willSave()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_willSave);
  sub_1B75F766C();
}

id ManagedApplePayMerchantTokenUsageMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenUsageMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenUsageMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B75F7E44()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = sub_1B73ADA9C();
    *(v1 + 16) = v2;
  }

  os_unfair_lock_unlock((v1 + 24));
  v3 = [*(v2 + 2) newBackgroundContext];

  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9993B0);
  sub_1B7801468();

  return v6;
}

uint64_t sub_1B75F7F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v97 = a4;
  v98 = a3;
  v96 = a2;
  v78 = a5;
  v81 = type metadata accessor for PredictedTransaction.StylingMetadata(0);
  v79 = *(v81 - 8);
  v8 = MEMORY[0x1EEE9AC00](v81);
  v85 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v78 - v10;
  v88 = type metadata accessor for InternalTransaction(0);
  v11 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v78 - v16;
  v18 = sub_1B77FFA18();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v100 = &v78 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v101 = &v78 - v26;
  v27 = *(a1 + 16);
  if (!v27)
  {
    v87 = MEMORY[0x1E69E7CC8];
LABEL_23:
    *v78 = v87;
    return result;
  }

  v94 = *(v98 + 16);
  v95 = v98 + 16;
  v29 = *(v19 + 16);
  v28 = v19 + 16;
  v102 = v29;
  v30 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
  v99 = *(v28 + 56);
  v93 = (v28 - 8);
  v83 = (v11 + 48);
  v87 = MEMORY[0x1E69E7CC8];
  *&v25 = 136315138;
  v82 = v25;
  v31 = v88;
  v90 = v17;
  v33 = v100;
  v32 = v101;
  v92 = v28;
  while (1)
  {
    v103 = v30;
    v104 = v27;
    v102(v32);
    v94(v32, v97);
    if (v6)
    {
      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v35 = sub_1B78000B8();
      __swift_project_value_buffer(v35, qword_1EDAFAF58);
      v32 = v101;
      (v102)(v33, v101, v18);
      v36 = sub_1B7800098();
      v37 = sub_1B78011D8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v105 = v39;
        *v38 = v82;
        sub_1B729D260();
        v40 = sub_1B7802068();
        v91 = v6;
        v42 = v41;
        v43 = *v93;
        (*v93)(v100, v18);
        v44 = sub_1B71A3EF8(v40, v42, &v105);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_1B7198000, v36, v37, "Failed to fetch styling information for predicted transaction with ID: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v45 = v39;
        v33 = v100;
        v46 = v88;
        MEMORY[0x1B8CA7A40](v45, -1, -1);
        v47 = v38;
        v17 = v90;
        MEMORY[0x1B8CA7A40](v47, -1, -1);

        v48 = v101;
        result = (v43)(v101, v18);
        v31 = v46;
        v6 = 0;
        v32 = v48;
      }

      else
      {

        v34 = *v93;
        (*v93)(v33, v18);
        result = (v34)(v32, v18);
        v6 = 0;
      }

      goto LABEL_4;
    }

    v49 = v86;
    sub_1B75F8838(v17, v86);
    if ((*v83)(v49, 1, v31) == 1)
    {
      sub_1B75F88A8(v17);
      v32 = v101;
      (*v93)(v101, v18);
      result = sub_1B75F88A8(v49);
      goto LABEL_4;
    }

    v50 = v49;
    v51 = v84;
    sub_1B75F8910(v50, v84, type metadata accessor for InternalTransaction);
    v52 = v89;
    v53 = v102;
    (v102)(v89, v101, v18);
    v54 = v80;
    v53(v80, v51, v18);
    v55 = (v51 + *(v31 + 56));
    v56 = *v55;
    v57 = v55[1];
    v58 = (v54 + *(v81 + 20));
    *v58 = v56;
    v58[1] = v57;
    sub_1B75F8910(v54, v85, type metadata accessor for PredictedTransaction.StylingMetadata);

    v59 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v59;
    v61 = sub_1B72454E8(v52);
    v63 = *(v59 + 16);
    v64 = (v62 & 1) == 0;
    v65 = __OFADD__(v63, v64);
    v66 = v63 + v64;
    if (v65)
    {
      break;
    }

    v67 = v62;
    if (*(v59 + 24) >= v66)
    {
      v33 = v100;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = v61;
        sub_1B725E4BC();
        v61 = v77;
      }
    }

    else
    {
      sub_1B724CBE8(v66, isUniquelyReferenced_nonNull_native);
      v61 = sub_1B72454E8(v89);
      v33 = v100;
      if ((v67 & 1) != (v68 & 1))
      {
        goto LABEL_26;
      }
    }

    v17 = v90;
    v69 = v105;
    v87 = v105;
    if (v67)
    {
      sub_1B75F8978(v85, *(v105 + 56) + *(v79 + 72) * v61);
      v70 = *v93;
      (*v93)(v89, v18);
      sub_1B73B4A74(v84);
      sub_1B75F88A8(v17);
      v32 = v101;
      result = (v70)(v101, v18);
    }

    else
    {
      *(v105 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v71 = v61;
      v72 = v89;
      (v102)(*(v69 + 48) + v61 * v99, v89, v18);
      sub_1B75F8910(v85, *(v69 + 56) + *(v79 + 72) * v71, type metadata accessor for PredictedTransaction.StylingMetadata);
      v73 = *v93;
      (*v93)(v72, v18);
      sub_1B73B4A74(v84);
      sub_1B75F88A8(v17);
      v74 = v69;
      v32 = v101;
      result = (v73)(v101, v18);
      v75 = *(v74 + 16);
      v65 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v65)
      {
        goto LABEL_25;
      }

      *(v74 + 16) = v76;
      v31 = v88;
    }

LABEL_4:
    v30 = v103 + v99;
    v27 = v104 - 1;
    if (v104 == 1)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}

uint64_t sub_1B75F8838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75F88A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B75F8910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75F8978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedTransaction.StylingMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ManagedBackgroundDeliveryApplication.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBackgroundDeliveryApplication.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBackgroundDeliveryApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedBackgroundDeliveryApplication.__allocating_init(identifier:context:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithContext_];
  v5 = sub_1B7800838();

  [v4 setIdentifier_];

  return v4;
}

id static ManagedBackgroundDeliveryApplication.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedBackgroundDeliveryApplication;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedBackgroundDeliveryApplication.existingObject(with:in:)(uint64_t a1, id a2)
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

void static ManagedBackgroundDeliveryApplication.existingApplication(bundleIdentifier:in:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedBackgroundDeliveryApplication;
  v4 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  v6 = sub_1B78010E8();
  [v4 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60);
  v7 = sub_1B7801498();
  if (v1)
  {

    return;
  }

  if (v7 >> 62)
  {
    v8 = v7;
    v9 = sub_1B7801958();
    v7 = v8;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_10:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_8:

    swift_dynamicCastClassUnconditional();
    return;
  }

  __break(1u);
}

uint64_t static ManagedBackgroundDeliveryApplication.predicateForBundleIdentifier(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1B721FF04();
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return sub_1B78010E8();
}

void static ManagedBackgroundDeliveryApplication.fetchOrCreate(bundleIdentifier:in:)(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;
  static ManagedBackgroundDeliveryApplication.existingApplication(bundleIdentifier:in:)(&v8);
  if (!v3 && !v5)
  {
    v6 = [objc_allocWithZone(v2) initWithContext_];
    v7 = sub_1B7800838();
    [v6 setIdentifier_];
  }
}

uint64_t static ManagedBackgroundDeliveryApplication.fetchAllApplications(context:)()
{
  v3.receiver = swift_getObjCClassFromMetadata();
  v3.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedBackgroundDeliveryApplication;
  v0 = objc_msgSendSuper2(&v3, sel_fetchRequest);
  v1 = sub_1B7801498();

  return v1;
}

void static ManagedBackgroundDeliveryApplication.deleteApplication(bundleIdentifier:in:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  static ManagedBackgroundDeliveryApplication.existingApplication(bundleIdentifier:in:)(v7);
  if (!v2)
  {
    v6 = v5;
    if (v5)
    {
      [a2 deleteObject_];
    }
  }
}

uint64_t BankConnectConsentStatusDataLoader.__allocating_init(environment:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B71E4C44(a1, v2 + 16);
  return v2;
}

uint64_t BankConnectConsentStatusDataLoader.loadConsentStatus(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for BankConnectConsent();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v3[20] = *(v5 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75F928C, 0, 0);
}

uint64_t sub_1B75F928C()
{
  v25 = v0;
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
    v5 = v0[15];
    v4 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v24);
    _os_log_impl(&dword_1B7198000, v2, v3, "Fetching consent status for consent with consentID: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];
  v11 = v9[5];
  v12 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v11);
  (*(v12 + 24))(v11, v12);
  v13 = v0[13];
  v14 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v13);
  (*(v14 + 8))(v10, v8, v13, v14);
  v15 = v0[22];
  v16 = v0[18];
  __swift_destroy_boxed_opaque_existential_1((v0 + 10));
  v18 = v9[5];
  v17 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v18);
  v19 = (v15 + *(v16 + 20));
  v20 = *v19;
  v21 = v19[1];
  v22 = swift_task_alloc();
  v0[23] = v22;
  *v22 = v0;
  v22[1] = sub_1B75F9568;

  return BankConnectDataLoaderEnvironment.makeTaskQueue(forConsentID:)(v20, v21, v18, v17);
}

uint64_t sub_1B75F9568(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B75F9668, 0, 0);
}

uint64_t sub_1B75F9668()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  sub_1B75FB7F0(v0[22], v2, type metadata accessor for BankConnectConsent);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[25] = v6;
  *(v6 + 16) = v4;
  sub_1B75FB788(v2, v6 + v5, type metadata accessor for BankConnectConsent);
  sub_1B75FB8B8(&qword_1EB992D70, type metadata accessor for BankConnectTaskQueue);

  if (v1)
  {
    swift_getObjectType();
    v7 = sub_1B7800CD8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B75F97B4, v7, v9);
}

uint64_t sub_1B75F97B4()
{
  v2 = v0[24];
  v1 = v0[25];
  v0[2] = v0;
  v0[3] = sub_1B75F986C;
  v3 = swift_continuation_init();
  sub_1B7388288(v3, v2, &unk_1B784A1E0, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B75F986C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = *(v1 + 192);
    swift_willThrow();
    v4 = sub_1B75F9A34;
    v5 = v3;
  }

  else
  {

    v4 = sub_1B75F99A0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B75F99A0()
{
  v1 = *(v0 + 176);

  sub_1B75FB858(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B75F9A34()
{

  return MEMORY[0x1EEE6DFA0](sub_1B75F9A9C, 0, 0);
}

uint64_t sub_1B75F9A9C()
{
  v1 = *(v0 + 176);

  sub_1B75FB858(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B75F9B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B7201BB0;

  return sub_1B75F9CB0(a3);
}

uint64_t sub_1B75F9BCC(uint64_t a1)
{
  v4 = *(type metadata accessor for BankConnectConsent() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7201BB0;

  return sub_1B75F9B30(a1, v6, v1 + v5);
}

uint64_t sub_1B75F9CB0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990730);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75F9D50, 0, 0);
}

uint64_t sub_1B75F9D50()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v5 = BankConnectDataLoaderEnvironment.makeWebServiceClient()(v4, v3);
  v0[11] = v5;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v1;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1B75F9E64;
  v8 = v0[10];

  return (sub_1B76A2800)(v8, &unk_1B784A2B8, v6);
}

uint64_t sub_1B75F9E64()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B75FA0BC;
  }

  else
  {

    v2 = sub_1B75F9F80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B75F9F80()
{
  v11 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  (*(v5 + 24))(v4, v5);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10[0] = *(v1 + *(v2 + 36));
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v1, v10, v6, v7);
  sub_1B7205418(v0[10], &qword_1EB990730);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B75FA0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectConsentStatusDataLoader.loadPendingConsentStatus(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  type metadata accessor for BankConnectConsent();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75FA1C4, 0, 0);
}

uint64_t sub_1B75FA1C4()
{
  v19 = v0;
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
    v5 = v0[7];
    v4 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v18);
    _os_log_impl(&dword_1B7198000, v2, v3, "Fetching consent status for pending consent with consentID: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = v0[9];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v8[5];
  v12 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v11);
  (*(v12 + 24))(v11, v12);
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  (*(v14 + 8))(v10, v9, v13, v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_1B75FA454;
  v16 = v0[10];

  return sub_1B75F9CB0(v16);
}

uint64_t sub_1B75FA454()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B75FA5EC;
  }

  else
  {
    v2 = sub_1B75FA568;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B75FA568()
{
  sub_1B75FB858(*(v0 + 80), type metadata accessor for BankConnectConsent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B75FA5EC()
{
  sub_1B75FB858(*(v0 + 80), type metadata accessor for BankConnectConsent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B75FA66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D88);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for FinanceNetworkError();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for BankConnectErrorWithConsent(0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for BankConnectWebServiceConsentStatusRequest(0);
  v4[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75FA7E0, 0, 0);
}

uint64_t sub_1B75FA7E0()
{
  v1 = v0[26];
  v2 = v0[27];
  sub_1B75FB7F0(v0[16], v2, type metadata accessor for BankConnectConsent);
  v0[5] = v1;
  v0[6] = &protocol witness table for BankConnectWebServiceConsentStatusRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B75FB7F0(v2, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceConsentStatusRequest);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1B75FA8E4;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B75FA8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[29] = a1;
  v5[30] = a2;
  v5[31] = a3;
  v5[32] = v3;

  if (v3)
  {
    v6 = sub_1B75FAE88;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B75FAA04;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B75FAA04()
{
  v32 = v0;
  v1 = *(v0 + 256);
  sub_1B727E2D8(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 112));
  v2 = v1;
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  if (v2)
  {
    sub_1B75FB858(v6, type metadata accessor for BankConnectWebServiceConsentStatusRequest);

    sub_1B720A388(v5, v3);
    *(v0 + 96) = v2;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 192);
      v9 = *(v0 + 200);
      v10 = *(v0 + 176);
      v11 = *(v0 + 184);
      v12 = *(v0 + 136);

      sub_1B75FB788(v9, v8, type metadata accessor for BankConnectErrorWithConsent);
      v13 = v12[5];
      v14 = v12[6];
      __swift_project_boxed_opaque_existential_1(v12 + 2, v13);
      (*(v14 + 24))(v13, v14);
      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
      v17 = *(v11 + 20);
      sub_1B75FB7F0(v8 + v17, v10, type metadata accessor for FinanceNetworkError);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 7)
      {
        sub_1B75FB858(*(v0 + 176), type metadata accessor for FinanceNetworkError);
      }

      v19 = *(v0 + 192);
      v31[0] = EnumCaseMultiPayload == 7;
      BankConnectConsentStoring.updateConsent(_:consentStatus:)(v19, v31, v15, v16);
      v20 = *(v0 + 192);
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      sub_1B77AE5D0(v8 + v17);
      sub_1B75FB8B8(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      sub_1B75FB7F0(v8 + v17, v29, type metadata accessor for FinanceNetworkError);
      swift_willThrow();
      sub_1B75FB858(v20, type metadata accessor for BankConnectErrorWithConsent);
    }

    else
    {
      v22 = *(v0 + 160);

      *(v0 + 104) = v2;
      v23 = v2;
      v24 = swift_dynamicCast();
      v25 = *(v22 + 56);
      if (v24)
      {
        v26 = *(v0 + 168);
        v27 = *(v0 + 144);
        v25(v27, 0, 1, *(v0 + 152));
        sub_1B75FB788(v27, v26, type metadata accessor for FinanceNetworkError);
        sub_1B77AE5D0(v26);
        sub_1B75FB858(v26, type metadata accessor for FinanceNetworkError);
      }

      else
      {
        v28 = *(v0 + 144);
        v25(v28, 1, 1, *(v0 + 152));
        sub_1B7205418(v28, &qword_1EB992D88);
      }

      swift_willThrow();
    }

    v21 = *(v0 + 8);
  }

  else
  {
    sub_1B75FB858(v6, type metadata accessor for BankConnectWebServiceConsentStatusRequest);

    sub_1B720A388(v5, v3);

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_1B75FAE88()
{
  v27 = v0;
  sub_1B75FB858(*(v0 + 216), type metadata accessor for BankConnectWebServiceConsentStatusRequest);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 256);
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 136);

    sub_1B75FB788(v3, v4, type metadata accessor for BankConnectErrorWithConsent);
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
    (*(v9 + 24))(v8, v9);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v10);
    v12 = *(v6 + 20);
    sub_1B75FB7F0(v4 + v12, v5, type metadata accessor for FinanceNetworkError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 7)
    {
      sub_1B75FB858(*(v0 + 176), type metadata accessor for FinanceNetworkError);
    }

    v14 = *(v0 + 192);
    v26[0] = EnumCaseMultiPayload == 7;
    BankConnectConsentStoring.updateConsent(_:consentStatus:)(v14, v26, v10, v11);
    v15 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    sub_1B77AE5D0(v4 + v12);
    sub_1B75FB8B8(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B75FB7F0(v4 + v12, v23, type metadata accessor for FinanceNetworkError);
    swift_willThrow();
    sub_1B75FB858(v15, type metadata accessor for BankConnectErrorWithConsent);
  }

  else
  {
    v16 = *(v0 + 160);

    *(v0 + 104) = v1;
    v17 = v1;
    v18 = swift_dynamicCast();
    v19 = *(v16 + 56);
    if (v18)
    {
      v20 = *(v0 + 168);
      v21 = *(v0 + 144);
      v19(v21, 0, 1, *(v0 + 152));
      sub_1B75FB788(v21, v20, type metadata accessor for FinanceNetworkError);
      sub_1B77AE5D0(v20);
      sub_1B75FB858(v20, type metadata accessor for FinanceNetworkError);
    }

    else
    {
      v22 = *(v0 + 144);
      v19(v22, 1, 1, *(v0 + 152));
      sub_1B7205418(v22, &qword_1EB992D88);
    }

    swift_willThrow();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t BankConnectConsentStatusDataLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B75FB2D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return BankConnectConsentStatusDataLoader.loadConsentStatus(forConsentID:)(a1, a2);
}

uint64_t sub_1B75FB37C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return BankConnectConsentStatusDataLoader.loadPendingConsentStatus(forConsentID:)(a1, a2);
}

uint64_t dispatch thunk of BankConnectConsentStatusDataLoading.loadConsentStatus(forConsentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BankConnectConsentStatusDataLoading.loadPendingConsentStatus(forConsentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B75FB6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B75FA66C(a1, v4, v5, v6);
}

uint64_t sub_1B75FB788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75FB7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75FB858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75FB8B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B75FB900()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B75FBAAC(uint64_t a1)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B75FBACC, 0, 0);
}

uint64_t sub_1B75FBACC()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + 89);
  v3 = v1[5];
  *(v0 + 16) = v1[4];
  *(v0 + 32) = v3;
  *(v0 + 41) = v2;
  v5 = v1[4];
  v4 = v1[5];
  *(v0 + 89) = *(v1 + 89);
  *(v0 + 64) = v5;
  *(v0 + 80) = v4;
  swift_getKeyPath();
  sub_1B71B4C14(v0 + 16, v0 + 112);
  XPCEntitlements.check(_:)();
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 80);
  *(v0 + 208) = *(v0 + 64);
  *(v0 + 224) = v8;
  *(v0 + 233) = *(v0 + 89);
  sub_1B71B4F10(v0 + 208);

  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
  v11 = OBJC_IVAR___XPCMapsTransactionInsight_value;
  v14 = (*(v10 + 8) + **(v10 + 8));
  v12 = swift_task_alloc();
  *(v0 + 328) = v12;
  *v12 = v0;
  v12[1] = sub_1B75FBCE4;

  return v14(v0 + 256, v7 + v11, v9, v10);
}

uint64_t sub_1B75FBCE4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1B75FBED0;
  }

  else
  {
    v2 = sub_1B75FBDF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B75FBDF8()
{
  v1 = *(v0 + 288);
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    v5 = *(v0 + 272);
    v6 = *(v0 + 280);
    v7 = type metadata accessor for Transaction.Icon.XPC();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___XPCTransactionIcon_value];
    *v9 = v3;
    *(v9 + 1) = v4;
    *(v9 + 2) = v5;
    v9[24] = v6;
    *(v9 + 4) = v1;
    *(v0 + 296) = v8;
    *(v0 + 304) = v7;
    v2 = objc_msgSendSuper2((v0 + 296), sel_init);
  }

  v10 = *(v0 + 8);

  return v10(v2);
}

uint64_t sub_1B75FC074(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1B75FC138;

  return sub_1B75FBAAC(v5);
}

uint64_t sub_1B75FC138(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 32);
  if (v3)
  {
    v9 = sub_1B77FF308();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 32), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1B75FC2F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7201BB0;

  return sub_1B75FC074(v2, v3, v4);
}

id sub_1B75FC3A8(void *a1, uint64_t a2)
{
  sub_1B75FC874(a2, v9);
  v3 = a1[6];
  v4 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v3);
  v5 = a1[2];
  [v5 auditToken];
  (*(v4 + 8))(&v10, v10, *(&v10 + 1), *&v11[0], *(&v11[0] + 1), v3, v4);
  type metadata accessor for ImageProcessingXPCServiceModel();
  v6 = swift_allocObject();
  sub_1B75FC8D8(v9, v6 + 1);
  v7 = v11[0];
  v6[4] = v10;
  v6[5] = v7;
  *(v6 + 89) = *(v11 + 9);
  [v5 setExportedObject_];

  return [v5 resume];
}

void sub_1B75FC4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 80);
  v19 = *(a3 + 64);
  v20[0] = v8;
  *(v20 + 9) = *(a3 + 89);
  v9 = *(a3 + 80);
  v17 = *(a3 + 64);
  v18[0] = v9;
  *(v18 + 9) = *(a3 + 89);
  swift_getKeyPath();
  sub_1B71B4C14(&v19, &v15);
  XPCEntitlements.check(_:)();
  v15 = v17;
  v16[0] = v18[0];
  *(v16 + 9) = *(v18 + 9);
  sub_1B71B4F10(&v15);

  v10 = *(a3 + 40);
  v11 = *(a3 + 56);
  __swift_project_boxed_opaque_existential_1((a3 + 16), v10);
  v12 = (*(v11 + 8))(a1, a2, v10, v11);
  v13 = objc_allocWithZone(type metadata accessor for StorableColor());
  v14 = StorableColor.init(color:)(v12);
  (*(a4 + 16))(a4, v14, 0);
}

uint64_t sub_1B75FC648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v36 = *(a2 + 64);
  v37[0] = v6;
  *(v37 + 9) = *(a2 + 89);
  v7 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35[0] = v7;
  *(v35 + 9) = *(a2 + 89);
  swift_getKeyPath();
  sub_1B71B4C14(&v36, &v32);
  XPCEntitlements.check(_:)();
  v32 = v34;
  v33[0] = v35[0];
  *(v33 + 9) = *(v35 + 9);
  sub_1B71B4F10(&v32);

  v25 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value);
  v8 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 8);
  v9 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 16);
  v10 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 24);
  v11 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 32);
  v12 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 40);
  v13 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 41);
  v14 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 42);
  v15 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 48);
  v16 = *(a1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 56);
  v17 = *(a2 + 40);
  v18 = *(a2 + 56);
  __swift_project_boxed_opaque_existential_1((a2 + 16), v17);
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v19 = (*(v18 + 16))(v25, &v26, v17, v18, v8, v9, v10);
  if (v20 >> 60 == 15)
  {
    v21 = v20;
    v22 = v19;
    v23 = 0;
  }

  else
  {
    v22 = v19;
    v21 = v20;
    v23 = sub_1B77FF598();
  }

  (*(a3 + 16))(a3, v23, 0);

  return sub_1B72380B8(v22, v21);
}

uint64_t sub_1B75FC874(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1B75FC8D8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t FinanceStore.internalConsents(since:isMonitoring:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  static DeviceInfo.deviceType.getter(v8);
  if (LOBYTE(v8[0]))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8[3] = type metadata accessor for FinanceStore();
    v8[4] = &off_1F2F66960;
    v8[0] = v2;

    v2 = sub_1B73AC6BC(&v9, a2 & 1, v8);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return v2;
}

uint64_t FinanceStore.internalConsents(with:sortDescriptors:limit:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v8 + 73) = a7;
  *(v8 + 48) = a6;
  *(v8 + 56) = v7;
  *(v8 + 72) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B75FCA08, 0, 0);
}

uint64_t sub_1B75FCA08()
{
  v13 = v0;
  static DeviceInfo.deviceType.getter(v12);
  if (v12[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 73);
    v5 = *(v0 + 72);
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1B7227A08;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);

    return sub_1B73AC948(v11, v9, v10, v7, v5 & 1, v8, v4 & 1);
  }
}

id InternalConsentResult.token.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1B72274E8(v2, v3);
}

uint64_t sub_1B75FCB9C(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  static DeviceInfo.deviceType.getter(&v14);
  if (v14)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v11 = 3;
    return swift_willThrow();
  }

  else
  {
    *v8 = v10;
    *(v8 + 1) = v9;
    *(v8 + 2) = a2;
    v8[24] = a3 & 1;
    swift_storeEnumTagMultiPayload();

    sub_1B75FCDE0(v8);
    return sub_1B72A820C(v8);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinanceStore.deleteApplication(with:)(FinanceKit::BundleIdentifier with)
{
  countAndFlagsBits = with.rawValue._countAndFlagsBits;
  v2 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *countAndFlagsBits;
  v5 = countAndFlagsBits[1];
  static DeviceInfo.deviceType.getter(&v9);
  if (v9)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
  }

  else
  {
    *v4 = v6;
    v4[1] = v5;
    swift_storeEnumTagMultiPayload();

    sub_1B75FCDE0(v4);
    sub_1B72A820C(v4);
  }
}

void sub_1B75FCDE0(uint64_t a1)
{
  v3 = v1;
  v45 = a1;
  v47 = sub_1B7800168();
  v43 = *(v47 - 8);
  v4 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = sub_1B78001B8();
  v44 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *(v1 + 16);
  v48 = v3;
  v49 = v14;
  sub_1B7801338();
  if (v2)
  {
    goto LABEL_2;
  }

  v41 = v7;
  v39 = v15;
  v42 = 0;
  v40 = v13;
  v38 = v3;
  v16 = v46;
  v17 = v47;
  swift_beginAccess();
  v18 = *(v14 + 16);
  if (!v18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    sub_1B78020E8();
    __break(1u);
    return;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v19 = v42;
  sub_1B7800138();
  if (v19)
  {
    v56 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v21 = v41;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v22 = v43;
    (*(v43 + 32))(v16, v21, v17);
    v23 = swift_allocObject();
    *(v23 + 16) = v38;
    *(v23 + 24) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1B72CB9F0;
    *(v24 + 24) = v23;
    v54 = sub_1B720493C;
    v55 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1B737BA64;
    v53 = &block_descriptor_15;
    v25 = _Block_copy(&aBlock);

    dispatch_sync(v39, v25);
    _Block_release(v25);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if ((v25 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      swift_allocError();
      (*(v22 + 16))(v26, v16, v17);
      swift_willThrow();

      (*(v22 + 8))(v16, v17);

LABEL_2:

      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v27 = v44;
  v28 = v40;
  v29 = v11;
  v30 = v8;
  (*(v44 + 32))(v40, v29, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9993B8);
  sub_1B75FD79C();
  sub_1B78001A8();
  if (BYTE1(v53) != 1)
  {
    if (BYTE1(v53) == 2)
    {

      (*(v27 + 8))(v28, v8);
      return;
    }

    goto LABEL_19;
  }

  v31 = aBlock;
  v32 = v51;
  v33 = v52;
  v34 = v53;
  if (v53)
  {
    v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v36 = sub_1B7800838();
    [v35 initWithDomain:v36 code:v33 userInfo:0];
  }

  else
  {
    sub_1B7201CA4();
    swift_allocError();
    *v37 = v31;
  }

  swift_willThrow();
  sub_1B71B7A20(v31, v32, v33, v34, 1);

  (*(v27 + 8))(v40, v30);
}

uint64_t FinanceStore.migratedAccountIdentifier(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1[1];
  v23 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 processName];

  v11 = sub_1B7800868();
  v13 = v12;

  if (v11 == 0xD000000000000012 && 0x80000001B7878970 == v13)
  {
  }

  else
  {
    v15 = sub_1B78020F8();

    if ((v15 & 1) == 0)
    {
      static DeviceInfo.deviceType.getter(&v25);
      if (v25)
      {
        sub_1B7201CA4();
        swift_allocError();
        *v16 = 3;
        return swift_willThrow();
      }

      else
      {
        *v5 = v23;
        v5[1] = v6;
        v5[2] = v7;
        v5[3] = v8;
        swift_storeEnumTagMultiPayload();

        sub_1B73B5338(v5, v24);
        return sub_1B72A820C(v5);
      }
    }
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v18 = sub_1B78000B8();
  __swift_project_value_buffer(v18, qword_1EDAFAF58);
  v19 = sub_1B7800098();
  v20 = sub_1B78011D8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B7198000, v19, v20, "migratedAccountIdentifier: called from daemon", v21, 2u);
    MEMORY[0x1B8CA7A40](v21, -1, -1);
  }

  v22 = sub_1B77FFA18();
  return (*(*(v22 - 8) + 56))(v24, 1, 1, v22);
}

unint64_t sub_1B75FD79C()
{
  result = qword_1EDAF9020;
  if (!qword_1EDAF9020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9993B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9020);
  }

  return result;
}

unint64_t static ManagedScheduledPreauthorizedPayment.existingScheduledPayment(with:fullyQualifiedAccountIdentifier:in:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = *a3;
  v5 = *(a3 + 3);
  v17 = *(a3 + 2);
  v22.receiver = swift_getObjCClassFromMetadata();
  v22.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedScheduledPreauthorizedPayment;
  v6 = objc_msgSendSuper2(&v22, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  v8 = "TermsAndConditions.";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B721FF04();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  *(v7 + 32) = sub_1B78010E8();
  v19 = v18;
  v20 = v17;
  v21 = v5;
  *(v7 + 40) = _s10FinanceKit27ManagedPreauthorizedPaymentC19predicateForAccount4withSo11NSPredicateCAA014FullyQualifiedH10IdentifierV_tFZ_0(&v19);
  v10 = sub_1B7800C18();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v6 setPredicate_];
  v12 = v23;
  result = sub_1B7801498();
  if (v12)
  {

    return v8;
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

  v15 = result;
  v16 = sub_1B7801958();
  result = v15;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_8:
    v8 = v14;

    return v8;
  }

  __break(1u);
  return result;
}

id static ManagedScheduledPreauthorizedPayment.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedScheduledPreauthorizedPayment;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

unint64_t static ManagedScheduledPreauthorizedPayment.existingScheduledPayment(with:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedScheduledPreauthorizedPayment;
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

void PIIRedactionConfiguration.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 piiRedactionConfigurationCountryCodes];
  v5 = sub_1B7800FA8();

  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = [a1 piiRedactionConfigurationCountryCodes];
    v6 = sub_1B7800FA8();
  }

  *a2 = v6;
}

uint64_t PIIRedactionConfiguration.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B723B658(*a1);

  *a2 = v3;
  return result;
}

void PIIRedactionConfiguration.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 countryCodes];
  v5 = sub_1B7800FA8();

  *a2 = v5;
}

uint64_t PIIRedactionConfiguration.countryCodes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B75FDEAC(uint64_t a1)
{
  v2 = sub_1B75FE380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75FDEE8(uint64_t a1)
{
  v2 = sub_1B75FE380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PIIRedactionConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9993C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75FE380();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80);
  sub_1B72FFDB4(&qword_1EB99E260);
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PIIRedactionConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B7345D5C(v3, v1);
  return sub_1B7802368();
}

uint64_t PIIRedactionConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9993D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75FE380();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80);
    sub_1B72FFDB4(&qword_1EB991D78);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B75FE2EC()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B7345D5C(v3, v1);
  return sub_1B7802368();
}

uint64_t sub_1B75FE33C()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B7345D5C(v3, v1);
  return sub_1B7802368();
}

unint64_t sub_1B75FE380()
{
  result = qword_1EB9993C8;
  if (!qword_1EB9993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9993C8);
  }

  return result;
}

unint64_t sub_1B75FE3D8()
{
  result = qword_1EB9993D8;
  if (!qword_1EB9993D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9993D8);
  }

  return result;
}

unint64_t sub_1B75FE450()
{
  result = qword_1EB9993E0;
  if (!qword_1EB9993E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9993E0);
  }

  return result;
}

unint64_t sub_1B75FE4A8()
{
  result = qword_1EB9993E8;
  if (!qword_1EB9993E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9993E8);
  }

  return result;
}

unint64_t sub_1B75FE500()
{
  result = qword_1EB9993F0;
  if (!qword_1EB9993F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9993F0);
  }

  return result;
}

uint64_t HTTPRequest.authenticated(using:forceRenewToken:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 136) = a5;
  *(v6 + 144) = v5;
  *(v6 + 120) = a2;
  *(v6 + 128) = a4;
  *(v6 + 200) = a3;
  *(v6 + 112) = a1;
  *(v6 + 152) = *(a4 - 8);
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75FE614, 0, 0);
}

uint64_t sub_1B75FE614()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  if (v1 == 1)
  {
    v11 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_1B75FE830;
    v6 = v3;
    v7 = v4;
    v8 = v11;
  }

  else
  {
    v12 = (*(v4 + 8) + **(v4 + 8));
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_1B75FEA58;
    v6 = v3;
    v7 = v4;
    v8 = v12;
  }

  return v8(v6, v7);
}

uint64_t sub_1B75FE830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = v4;
  v6[22] = v4;

  if (v4)
  {
    v7 = sub_1B75FEC80;
  }

  else
  {
    v7 = sub_1B75FE950;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B75FE950()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[14];
  (*(v0[19] + 16))(v5, v0[18], v6);
  (*(*(v6 - 8) + 32))(v7, v5, v6);
  v8 = type metadata accessor for HTTPRequestWithGrandSlamAuthentication();
  v9 = (v7 + *(v8 + 36));
  *v9 = v1;
  v9[1] = v2;
  v10 = (v7 + *(v8 + 40));
  *v10 = v3;
  v10[1] = v4;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B75FEA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[8] = v5;
  v6[9] = a1;
  v6[10] = a2;
  v6[11] = a3;
  v6[12] = a4;
  v6[13] = v4;
  v6[24] = v4;

  if (v4)
  {
    v7 = sub_1B75FED40;
  }

  else
  {
    v7 = sub_1B75FEB78;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B75FEB78()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[14];
  (*(v0[19] + 16))(v5, v0[18], v6);
  (*(*(v6 - 8) + 32))(v7, v5, v6);
  v8 = type metadata accessor for HTTPRequestWithGrandSlamAuthentication();
  v9 = (v7 + *(v8 + 36));
  *v9 = v1;
  v9[1] = v2;
  v10 = (v7 + *(v8 + 40));
  *v10 = v3;
  v10[1] = v4;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B75FEC80()
{
  v1 = *(v0 + 176);
  type metadata accessor for FinanceNetworkError();
  sub_1B743DD44();
  swift_allocError();
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B75FED40()
{
  v1 = *(v0 + 192);
  type metadata accessor for FinanceNetworkError();
  sub_1B743DD44();
  swift_allocError();
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t GrandSlamAuthenticationError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t GrandSlamAuthenticator.serviceID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *GrandSlamAuthenticator.__allocating_init(accountStore:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0xD000000000000014;
  result[4] = 0x80000001B7886900;
  result[2] = a1;
  return result;
}

void *GrandSlamAuthenticator.init(accountStore:)(uint64_t a1)
{
  v1[3] = 0xD000000000000014;
  v1[4] = 0x80000001B7886900;
  v1[2] = a1;
  return v1;
}

uint64_t sub_1B75FEF58()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = [v1 aida_accountForPrimaryiCloudAccount];
  *(v0 + 24) = v2;
  if (!v2)
  {
    if (qword_1EB98EA28 != -1)
    {
      swift_once();
    }

    v21 = sub_1B78000B8();
    __swift_project_value_buffer(v21, qword_1EB994810);
    v22 = sub_1B7800098();
    v23 = sub_1B78011D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B7198000, v22, v23, "Cannot provide grand slam token without account", v24, 2u);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
    }

    sub_1B760099C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
LABEL_16:
    v26 = *(v0 + 8);

    return v26();
  }

  v3 = v2;
  v4 = sub_1B7800838();
  v5 = [v1 credentialForAccount:v3 serviceID:v4];
  *(v0 + 32) = v5;

  if (v5)
  {
    v6 = [v5 token];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B7800868();
      v10 = v9;

      v11 = [*(v0 + 24) aida_alternateDSID];
      if (v11)
      {
        v13 = *(v0 + 24);
        v12 = *(v0 + 32);
        v14 = v11;
        v15 = sub_1B7800868();
        v17 = v16;

        v18 = *(v0 + 8);

        return v18(v15, v17, v8, v10);
      }

      if (qword_1EB98EA28 != -1)
      {
        swift_once();
      }

      v27 = sub_1B78000B8();
      __swift_project_value_buffer(v27, qword_1EB994810);
      v28 = sub_1B7800098();
      v29 = sub_1B78011D8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1B7198000, v28, v29, "Cannot provide grand slam token without alternate DSID", v30, 2u);
        MEMORY[0x1B8CA7A40](v30, -1, -1);
      }

      v32 = *(v0 + 24);
      v31 = *(v0 + 32);

      sub_1B760099C();
      swift_allocError();
      *v33 = 3;
      swift_willThrow();

      goto LABEL_16;
    }
  }

  v20 = swift_task_alloc();
  *(v0 + 40) = v20;
  *v20 = v0;
  v20[1] = sub_1B75FF354;

  return sub_1B75FF6E8(v3);
}

uint64_t sub_1B75FF354(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_1B75FF680;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_1B75FF488;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B75FF488()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = [*(v0 + 24) aida_alternateDSID];
  if (v3)
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = v3;
    v7 = sub_1B7800868();
    v9 = v8;

    v10 = *(v0 + 8);

    return v10(v7, v9, v1, v2);
  }

  else
  {

    if (qword_1EB98EA28 != -1)
    {
      swift_once();
    }

    v12 = sub_1B78000B8();
    __swift_project_value_buffer(v12, qword_1EB994810);
    v13 = sub_1B7800098();
    v14 = sub_1B78011D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B7198000, v13, v14, "Cannot provide grand slam token without alternate DSID", v15, 2u);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
    }

    v17 = *(v0 + 24);
    v16 = *(v0 + 32);

    sub_1B760099C();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1B75FF680()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B75FF6E8(uint64_t a1)
{
  v2[56] = a1;
  v2[57] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999488);
  v2[58] = v3;
  v2[59] = *(v3 - 8);
  v2[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75FF7B4, 0, 0);
}

uint64_t sub_1B75FF7B4()
{
  if (qword_1EB98EA28 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  v0[61] = __swift_project_value_buffer(v1, qword_1EB994810);
  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "Renewing credentials for account without grand slam token", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  v5 = v0[59];
  v6 = v0[60];
  v8 = v0[57];
  v7 = v0[58];
  v23 = v0[56];

  v22 = v8[2];
  v0[62] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B780D870;
  v0[49] = sub_1B7800868();
  v0[50] = v10;
  sub_1B78019E8();
  v11 = sub_1B7449284();
  v12 = sub_1B7801528();
  *(inited + 96) = v11;
  *(inited + 72) = v12;
  v0[51] = sub_1B7800868();
  v0[52] = v13;
  sub_1B78019E8();
  v14 = sub_1B7801528();
  *(inited + 168) = v11;
  *(inited + 144) = v14;
  v0[53] = sub_1B7800868();
  v0[54] = v15;
  sub_1B78019E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7807CD0;
  v17 = v8[3];
  v0[63] = v17;
  v18 = v8[4];
  v0[64] = v18;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(inited + 216) = v16;

  sub_1B72030AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F318);
  swift_arrayDestroy();
  v19 = sub_1B7800708();
  v0[65] = v19;

  v0[2] = v0;
  v0[7] = v0 + 55;
  v0[3] = sub_1B75FFBF4;
  swift_continuation_init();
  v0[48] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 45);
  type metadata accessor for ACAccountCredentialRenewResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  sub_1B7800CE8();
  (*(v5 + 32))(boxed_opaque_existential_1, v6, v7);
  v0[41] = MEMORY[0x1E69E9820];
  v0[42] = 1107296256;
  v0[43] = sub_1B7600648;
  v0[44] = &block_descriptor_16;
  [v22 renewCredentialsForAccount:v23 options:v19 completion:?];
  (*(v5 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B75FFBF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 528) = v1;
  if (v1)
  {
    v2 = sub_1B75FFF90;
  }

  else
  {
    v2 = sub_1B75FFD04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B75FFD04()
{
  v1 = *(v0 + 440);

  if (v1)
  {
    v2 = sub_1B7800098();
    v3 = sub_1B78011D8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B7198000, v2, v3, "Failed to renew credentials for account", v4, 2u);
      MEMORY[0x1B8CA7A40](v4, -1, -1);
    }

    sub_1B760099C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
LABEL_13:

    v21 = *(v0 + 8);

    return v21();
  }

  v6 = *(v0 + 496);
  v7 = *(v0 + 448);
  v8 = sub_1B7800838();
  v9 = [v6 credentialForAccount:v7 serviceID:v8];

  if (!v9 || (v10 = [v9 token]) == 0)
  {
    v17 = sub_1B7800098();
    v18 = sub_1B78011D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B7198000, v17, v18, "Renewed credential has no grand slam token", v19, 2u);
      MEMORY[0x1B8CA7A40](v19, -1, -1);
    }

    sub_1B760099C();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();

    goto LABEL_13;
  }

  v11 = v10;
  v12 = sub_1B7800868();
  v14 = v13;

  v15 = *(v0 + 8);

  return v15(v12, v14);
}

uint64_t sub_1B75FFF90()
{
  v1 = v0[66];
  v2 = v0[65];
  swift_willThrow();

  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[66];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7198000, v4, v5, "Failed to renew credentials for account with error: %@", v7, 0xCu);
    sub_1B726B694(v8);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B760010C()
{
  v1 = [*(v0[6] + 16) aida_accountForPrimaryiCloudAccount];
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1B76002E4;

    return sub_1B75FF6E8(v2);
  }

  else
  {
    if (qword_1EB98EA28 != -1)
    {
      swift_once();
    }

    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EB994810);
    v6 = sub_1B7800098();
    v7 = sub_1B78011D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7198000, v6, v7, "Cannot provide grand slam token without account", v8, 2u);
      MEMORY[0x1B8CA7A40](v8, -1, -1);
    }

    sub_1B760099C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1B76002E4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v5 = sub_1B76005E4;
  }

  else
  {
    v5 = sub_1B7600400;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B7600400()
{
  v1 = [*(v0 + 56) aida_alternateDSID];
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 56);
    v4 = v1;
    v5 = sub_1B7800868();
    v7 = v6;

    v8 = *(v0 + 8);
    v9 = *(v0 + 72);

    return v8(v5, v7, v2, v9);
  }

  else
  {

    if (qword_1EB98EA28 != -1)
    {
      swift_once();
    }

    v11 = sub_1B78000B8();
    __swift_project_value_buffer(v11, qword_1EB994810);
    v12 = sub_1B7800098();
    v13 = sub_1B78011D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Cannot provide grand slam token without alternate DSID", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = *(v0 + 56);

    sub_1B760099C();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1B76005E4()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1B7600648(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999488);
    sub_1B7800CF8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999488);
    sub_1B7800D08();
  }
}

uint64_t GrandSlamAuthenticator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7600754()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B760133C;

  return GrandSlamAuthenticator.token()();
}

uint64_t sub_1B76007E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7600874;

  return GrandSlamAuthenticator.renewToken()();
}

uint64_t sub_1B7600874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *v5;

  v14 = *(v16 + 8);
  if (!v4)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;
  }

  return v14(v10, v11, v12, v13);
}

unint64_t sub_1B760099C()
{
  result = qword_1EB9993F8;
  if (!qword_1EB9993F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9993F8);
  }

  return result;
}

char *sub_1B76009F0(uint64_t a1)
{
  v4 = (*(*(a1 + 24) + 32))(*(a1 + 16));
  if (!v2)
  {
    sub_1B7801A78();

    MEMORY[0x1B8CA4D30](*(v1 + *(a1 + 36)), *(v1 + *(a1 + 36) + 8));
    MEMORY[0x1B8CA4D30](58, 0xE100000000000000);
    MEMORY[0x1B8CA4D30](*(v1 + *(a1 + 40)), *(v1 + *(a1 + 40) + 8));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B723E73C(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1B723E73C((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[32 * v6];
    strcpy(v7 + 32, "Authorization");
    *(v7 + 23) = -4864;
    *(v7 + 6) = 0x6B6F54656C707041;
    *(v7 + 7) = 0xEB00000000206E65;
  }

  return v4;
}

unint64_t sub_1B7600B7C()
{
  result = qword_1EB999400[0];
  if (!qword_1EB999400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB999400);
  }

  return result;
}

uint64_t dispatch thunk of GrandSlamAuthenticating.token()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7601340;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GrandSlamAuthenticating.renewToken()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7600E10;

  return v7(a1, a2);
}

uint64_t sub_1B7600E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

uint64_t sub_1B7600F8C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B760100C(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

_BYTE *sub_1B7601150(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

__n128 RecurringPayment.Payment.init(date:amount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = sub_1B77FF988();
  v10 = *(a2 + 16);
  v11 = *a2;
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = a3 + *(type metadata accessor for RecurringPayment.Payment(0) + 20);
  result = v11;
  *v8 = v11;
  *(v8 + 16) = v10;
  *(v8 + 32) = v6;
  return result;
}

uint64_t sub_1B7601404()
{
  if (*v0)
  {
    return 0x746E756F6D61;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1B7601434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000)
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

uint64_t sub_1B760150C(uint64_t a1)
{
  v2 = sub_1B76035C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7601548(uint64_t a1)
{
  v2 = sub_1B76035C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecurringPayment.Payment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9994A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76035C8();
  sub_1B78023F8();
  LOBYTE(v14) = 0;
  sub_1B77FF988();
  sub_1B71A7220(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for RecurringPayment.Payment(0) + 20));
    v10 = *(v9 + 4);
    v11 = v9[1];
    v14 = *v9;
    v15 = v11;
    v16 = v10;
    v13[15] = 1;
    sub_1B7215044();

    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RecurringPayment.Payment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_1B77FF988();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9994B0);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for RecurringPayment.Payment(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76035C8();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v10;
  v13 = v12;
  v14 = v27;
  LOBYTE(v31) = 0;
  sub_1B71A7220(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v15 = v30;
  v16 = v28;
  sub_1B7801E48();
  v17 = *(v14 + 32);
  v24 = v13;
  v17(v13, v5, v15);
  v34 = 1;
  sub_1B72153F8();
  sub_1B7801DB8();
  (*(v29 + 8))(v9, v16);
  v18 = v33;
  v19 = v24;
  v20 = v24 + *(v25 + 20);
  v21 = v32;
  *v20 = v31;
  *(v20 + 16) = v21;
  *(v20 + 32) = v18;
  sub_1B760435C(v19, v26, type metadata accessor for RecurringPayment.Payment);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B76043C4(v19, type metadata accessor for RecurringPayment.Payment);
}

uint64_t RecurringPayment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RecurringPayment.paymentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecurringPayment(0) + 20));

  return v1;
}

uint64_t RecurringPayment.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecurringPayment(0) + 24);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecurringPayment.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecurringPayment(0) + 28));

  return v1;
}

uint64_t RecurringPayment.frequency.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for RecurringPayment(0);
  v4 = (v1 + *(result + 32));
  *a1 = *v4;
  *(a1 + 7) = *(v4 + 7);
  return result;
}

uint64_t RecurringPayment.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecurringPayment(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t RecurringPayment.schedulingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecurringPayment(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RecurringPayment.firstPayment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecurringPayment(0) + 48);

  return sub_1B760363C(v3, a1);
}

uint64_t RecurringPayment.lastPayment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecurringPayment(0) + 52);

  return sub_1B760363C(v3, a1);
}

uint64_t RecurringPayment.mostRecentPayment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecurringPayment(0) + 56);

  return sub_1B760363C(v3, a1);
}

uint64_t RecurringPayment.upcomingPayment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecurringPayment(0) + 60);

  return sub_1B760363C(v3, a1);
}

uint64_t RecurringPayment.mandateDetails.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecurringPayment(0) + 64));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_1B72D1A90(v9, &v8);
}

__n128 RecurringPayment.init(id:paymentIdentifier:accountID:description:frequency:status:schedulingType:isVariable:firstPayment:lastPayment:mostRecentPayment:upcomingPayment:mandateDetails:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v32 = *a8;
  v33 = *a10;
  v22 = sub_1B77FFA18();
  v23 = *(*(v22 - 8) + 32);
  v23(a9, a1, v22);
  v24 = type metadata accessor for RecurringPayment(0);
  v25 = (a9 + v24[5]);
  *v25 = a2;
  v25[1] = a3;
  v23(a9 + v24[6], a4, v22);
  v26 = (a9 + v24[7]);
  *v26 = a5;
  v26[1] = a6;
  v27 = (a9 + v24[8]);
  *v27 = *a7;
  *(v27 + 7) = *(a7 + 7);
  *(a9 + v24[9]) = v32;
  *(a9 + v24[10]) = v33;
  *(a9 + v24[11]) = a11;
  sub_1B732BE4C(a12, a9 + v24[12]);
  sub_1B732BE4C(a13, a9 + v24[13]);
  sub_1B732BE4C(a14, a9 + v24[14]);
  sub_1B732BE4C(a15, a9 + v24[15]);
  v28 = a9 + v24[16];
  v29 = *(a16 + 16);
  *v28 = *a16;
  *(v28 + 16) = v29;
  result = *(a16 + 32);
  v31 = *(a16 + 48);
  *(v28 + 32) = result;
  *(v28 + 48) = v31;
  return result;
}

unint64_t sub_1B7602080(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x49746E756F636361;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x636E657571657266;
      break;
    case 5:
      result = 0x737574617473;
      break;
    case 6:
      result = 0x696C756465686373;
      break;
    case 7:
      result = 0x6261697261567369;
      break;
    case 8:
      result = 0x7961507473726966;
      break;
    case 9:
      result = 0x6D7961507473616CLL;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x676E696D6F637075;
      break;
    case 12:
      result = 0x44657461646E616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7602220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7604DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7602248(uint64_t a1)
{
  v2 = sub_1B7604068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7602284(uint64_t a1)
{
  v2 = sub_1B7604068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecurringPayment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9994B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7604068();
  sub_1B78023F8();
  LOBYTE(v23[0]) = 0;
  sub_1B77FFA18();
  sub_1B71A7220(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for RecurringPayment(0);
    LOBYTE(v23[0]) = 1;
    sub_1B7801F78();
    LOBYTE(v23[0]) = 2;
    sub_1B7801FC8();
    v26 = 3;
    sub_1B7801F78();
    v10 = (v3 + v9[8]);
    *&v23[0] = *v10;
    *(v23 + 7) = *(v10 + 7);
    LOBYTE(v19) = 4;
    sub_1B76040BC();
    sub_1B7801FC8();
    LOBYTE(v23[0]) = *(v3 + v9[9]);
    LOBYTE(v19) = 5;
    sub_1B7604110();
    sub_1B7801F38();
    LOBYTE(v23[0]) = *(v3 + v9[10]);
    LOBYTE(v19) = 6;
    sub_1B7604164();
    sub_1B7801F38();
    LOBYTE(v23[0]) = 7;
    sub_1B7801F88();
    LOBYTE(v23[0]) = 8;
    type metadata accessor for RecurringPayment.Payment(0);
    sub_1B71A7220(&qword_1EB9994E0, type metadata accessor for RecurringPayment.Payment);
    sub_1B7801F38();
    LOBYTE(v23[0]) = 9;
    sub_1B7801F38();
    LOBYTE(v23[0]) = 10;
    sub_1B7801F38();
    v25 = 11;
    sub_1B7801F38();
    v11 = (v3 + v9[16]);
    v12 = v11[1];
    v23[0] = *v11;
    v23[1] = v12;
    v13 = v11[3];
    v15 = *v11;
    v14 = v11[1];
    v23[2] = v11[2];
    v23[3] = v13;
    v19 = v15;
    v20 = v14;
    v16 = v11[3];
    v21 = v11[2];
    v22 = v16;
    v24 = 12;
    sub_1B72D1A90(v23, v18);
    sub_1B76041B8();
    sub_1B7801FC8();
    v18[0] = v19;
    v18[1] = v20;
    v18[2] = v21;
    v18[3] = v22;
    sub_1B72D1AC8(v18);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RecurringPayment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v52 = &v44 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v44 - v10;
  v11 = sub_1B77FFA18();
  v55 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9994F0);
  v17 = *(v16 - 8);
  v57 = v16;
  v58 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  v20 = type metadata accessor for RecurringPayment(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7604068();
  v59 = v19;
  v23 = v60;
  sub_1B78023C8();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = v14;
  v60 = a1;
  v48 = v20;
  v49 = v22;
  LOBYTE(v61) = 0;
  sub_1B71A7220(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  v24 = v56;
  sub_1B7801E48();
  v25 = v11;
  v26 = *(v55 + 32);
  v27 = v49;
  v26(v49, v24, v25);
  LOBYTE(v61) = 1;
  v28 = sub_1B7801DF8();
  v46 = v25;
  v56 = 0;
  v45 = v26;
  v29 = v27;
  v30 = v48;
  v31 = &v29[v48[5]];
  *v31 = v28;
  v31[1] = v32;
  LOBYTE(v61) = 2;
  v33 = v47;
  sub_1B7801E48();
  v45(&v49[v30[6]], v33, v25);
  LOBYTE(v61) = 3;
  v34 = sub_1B7801DF8();
  v35 = &v49[v30[7]];
  *v35 = v34;
  v35[1] = v36;
  v67 = 4;
  sub_1B760420C();
  sub_1B7801E48();
  v37 = &v49[v30[8]];
  *v37 = v65[0];
  *(v37 + 7) = *(v65 + 7);
  v66 = 5;
  sub_1B7604260();
  sub_1B7801DB8();
  v49[v30[9]] = v61;
  v66 = 6;
  sub_1B76042B4();
  sub_1B7801DB8();
  v49[v30[10]] = v61;
  LOBYTE(v61) = 7;
  v49[v48[11]] = sub_1B7801E08() & 1;
  type metadata accessor for RecurringPayment.Payment(0);
  LOBYTE(v61) = 8;
  sub_1B71A7220(&qword_1EB999510, type metadata accessor for RecurringPayment.Payment);
  v38 = v54;
  sub_1B7801DB8();
  sub_1B732BE4C(v38, &v49[v48[12]]);
  LOBYTE(v61) = 9;
  sub_1B7801DB8();
  sub_1B732BE4C(v53, &v49[v48[13]]);
  LOBYTE(v61) = 10;
  sub_1B7801DB8();
  sub_1B732BE4C(v52, &v49[v48[14]]);
  LOBYTE(v61) = 11;
  sub_1B7801DB8();
  sub_1B732BE4C(v51, &v49[v48[15]]);
  v66 = 12;
  sub_1B7604308();
  sub_1B7801E48();
  (*(v58 + 8))(v59, v57);
  v39 = v49;
  v40 = &v49[v48[16]];
  v41 = v62;
  *v40 = v61;
  *(v40 + 1) = v41;
  v42 = v64;
  *(v40 + 2) = v63;
  *(v40 + 3) = v42;
  sub_1B760435C(v39, v50, type metadata accessor for RecurringPayment);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_1B76043C4(v39, type metadata accessor for RecurringPayment);
}

uint64_t static ManagedRecurringPreauthorizedPayment.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98EB18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B76033D4()
{
  if (qword_1EB98EB18 != -1)
  {
    swift_once();
  }
}

uint64_t _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B77FF918() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for RecurringPayment.Payment(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 32);
  v7 = (a2 + v4);
  v8 = v7[4];
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v10 = v5[2];
  v9 = v5[3];
  v12 = *v5;
  v11 = v5[1];
  if (!v8)
  {
    v20 = *v5;
    v21 = v11;
    v22 = v10;
    v23 = v9;
    v24 = v6;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v20);
LABEL_15:

LABEL_18:

    return 0;
  }

  v13 = *v7;
  v14 = v7[1];
  v16 = v7[2];
  v15 = v7[3];
  swift_bridgeObjectRetain_n();

  if ((MEMORY[0x1B8CA5970](v12, v11, v10, v13, v14, v16) & 1) == 0)
  {

LABEL_17:
    v20 = v12;
    v21 = v11;
    v22 = v10;
    v23 = v9;
    v24 = v6;
    sub_1B721722C(&v20);
    goto LABEL_18;
  }

  if (v9 != v15 || v6 != v8)
  {
    v18 = sub_1B78020F8();

    if (v18)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_21:
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v9;
  v24 = v6;
  sub_1B721722C(&v20);
LABEL_22:

  return 1;
}

unint64_t sub_1B76035C8()
{
  result = qword_1EB9994A8;
  if (!qword_1EB9994A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9994A8);
  }

  return result;
}

uint64_t sub_1B760363C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10FinanceKit16RecurringPaymentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecurringPayment.Payment(0);
  v5 = *(v4 - 8);
  v97 = v4;
  v98 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v89 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v89 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999588);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v95 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v89 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v89 - v27;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v93 = v12;
  v29 = v18;
  v30 = type metadata accessor for RecurringPayment(0);
  v31 = v30[5];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if ((v32 != *v34 || v33 != v34[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v35 = v30[7];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  if ((v36 != *v38 || v37 != v38[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_48;
  }

  v39 = v30[8];
  *&v110[0] = *(a1 + v39);
  *(v110 + 7) = *(a1 + v39 + 7);
  v40 = (a2 + v39);
  *&v109[0] = *v40;
  *(v109 + 7) = *(v40 + 7);
  if (!_s10FinanceKit16RecurringPaymentV19FrequencyComponentsV2eeoiySbAE_AEtFZ_0(v110, v109))
  {
    goto LABEL_48;
  }

  v41 = v30[9];
  v42 = *(a1 + v41);
  v43 = *(a2 + v41);
  if (v42 == 6)
  {
    if (v43 != 6)
    {
      goto LABEL_48;
    }
  }

  else if (v42 != v43)
  {
    goto LABEL_48;
  }

  v44 = v30[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v46 == 2 || ((v46 ^ v45) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (*(a1 + v30[11]) == *(a2 + v30[11]))
  {
    v91 = v30;
    v47 = v30[12];
    v89 = v29;
    v48 = *(v29 + 48);
    sub_1B760363C(a1 + v47, v28);
    v92 = v48;
    sub_1B760363C(a2 + v47, &v28[v48]);
    v49 = *(v98 + 48);
    v50 = v98 + 48;
    v51 = v49(v28, 1, v97);
    v98 = v50;
    v90 = v49;
    if (v51 == 1)
    {
      if (v49(&v28[v92], 1, v97) == 1)
      {
        sub_1B7205418(v28, &qword_1EB9923F8);
        goto LABEL_27;
      }
    }

    else
    {
      sub_1B760363C(v28, v17);
      if (v49(&v28[v92], 1, v97) != 1)
      {
        v53 = v96;
        sub_1B7605224(&v28[v92], v96);
        v54 = _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(v17, v53);
        sub_1B76043C4(v53, type metadata accessor for RecurringPayment.Payment);
        sub_1B76043C4(v17, type metadata accessor for RecurringPayment.Payment);
        sub_1B7205418(v28, &qword_1EB9923F8);
        if ((v54 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_27:
        v55 = v91[13];
        v56 = v89;
        v57 = *(v89 + 48);
        sub_1B760363C(a1 + v55, v26);
        v92 = v57;
        sub_1B760363C(a2 + v55, &v26[v57]);
        v58 = v97;
        v59 = v90;
        if (v90(v26, 1, v97) == 1)
        {
          if (v59(&v26[v92], 1, v58) == 1)
          {
            sub_1B7205418(v26, &qword_1EB9923F8);
LABEL_34:
            v62 = v91[14];
            v63 = *(v56 + 48);
            sub_1B760363C(a1 + v62, v23);
            sub_1B760363C(a2 + v62, &v23[v63]);
            v64 = v90;
            if (v90(v23, 1, v58) == 1)
            {
              if (v64(&v23[v63], 1, v58) == 1)
              {
                sub_1B7205418(v23, &qword_1EB9923F8);
LABEL_41:
                v67 = v91[15];
                v68 = *(v56 + 48);
                v69 = v95;
                sub_1B760363C(a1 + v67, v95);
                sub_1B760363C(a2 + v67, v69 + v68);
                if (v64(v69, 1, v58) == 1)
                {
                  if (v64(v69 + v68, 1, v58) == 1)
                  {
                    sub_1B7205418(v69, &qword_1EB9923F8);
LABEL_51:
                    v75 = v91[16];
                    v76 = *(a1 + v75 + 16);
                    v107[0] = *(a1 + v75);
                    v107[1] = v76;
                    v77 = *(a1 + v75 + 48);
                    v79 = *(a1 + v75);
                    v78 = *(a1 + v75 + 16);
                    v107[2] = *(a1 + v75 + 32);
                    v107[3] = v77;
                    v103 = v79;
                    v104 = v78;
                    v80 = *(a1 + v75 + 48);
                    v105 = *(a1 + v75 + 32);
                    v106 = v80;
                    v81 = (a2 + v75);
                    v82 = *v81;
                    v83 = v81[1];
                    v84 = v81[3];
                    v108[2] = v81[2];
                    v108[3] = v84;
                    v85 = v81[1];
                    v86 = v81[2];
                    v87 = *v81;
                    v108[0] = v82;
                    v108[1] = v85;
                    v99 = v87;
                    v100 = v83;
                    v88 = v81[3];
                    v101 = v86;
                    v102 = v88;
                    v71 = _s10FinanceKit14MandateDetailsV2eeoiySbAC_ACtFZ_0(&v103, &v99);
                    v109[0] = v99;
                    v109[1] = v100;
                    v109[2] = v101;
                    v109[3] = v102;
                    sub_1B72D1A90(v107, v110);
                    sub_1B72D1A90(v108, v110);
                    sub_1B72D1AC8(v109);
                    v110[0] = v103;
                    v110[1] = v104;
                    v110[2] = v105;
                    v110[3] = v106;
                    sub_1B72D1AC8(v110);
                    return v71 & 1;
                  }

                  goto LABEL_46;
                }

                v70 = v94;
                sub_1B760363C(v69, v94);
                if (v64(v69 + v68, 1, v58) == 1)
                {
                  sub_1B76043C4(v70, type metadata accessor for RecurringPayment.Payment);
LABEL_46:
                  v52 = v69;
                  goto LABEL_47;
                }

                v73 = v96;
                sub_1B7605224(v69 + v68, v96);
                v74 = _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(v70, v73);
                sub_1B76043C4(v73, type metadata accessor for RecurringPayment.Payment);
                sub_1B76043C4(v70, type metadata accessor for RecurringPayment.Payment);
                sub_1B7205418(v69, &qword_1EB9923F8);
                if (v74)
                {
                  goto LABEL_51;
                }

                goto LABEL_48;
              }
            }

            else
            {
              v65 = v93;
              sub_1B760363C(v23, v93);
              if (v64(&v23[v63], 1, v58) != 1)
              {
                v66 = v96;
                sub_1B7605224(&v23[v63], v96);
                LODWORD(v97) = _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(v65, v66);
                sub_1B76043C4(v66, type metadata accessor for RecurringPayment.Payment);
                sub_1B76043C4(v65, type metadata accessor for RecurringPayment.Payment);
                sub_1B7205418(v23, &qword_1EB9923F8);
                if ((v97 & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_41;
              }

              sub_1B76043C4(v65, type metadata accessor for RecurringPayment.Payment);
            }

            v52 = v23;
LABEL_47:
            sub_1B7205418(v52, &qword_1EB999588);
            goto LABEL_48;
          }
        }

        else
        {
          sub_1B760363C(v26, v15);
          if (v59(&v26[v92], 1, v58) != 1)
          {
            v60 = v96;
            sub_1B7605224(&v26[v92], v96);
            v61 = _s10FinanceKit16RecurringPaymentV0D0V2eeoiySbAE_AEtFZ_0(v15, v60);
            sub_1B76043C4(v60, type metadata accessor for RecurringPayment.Payment);
            v58 = v97;
            sub_1B76043C4(v15, type metadata accessor for RecurringPayment.Payment);
            sub_1B7205418(v26, &qword_1EB9923F8);
            if ((v61 & 1) == 0)
            {
              goto LABEL_48;
            }

            goto LABEL_34;
          }

          sub_1B76043C4(v15, type metadata accessor for RecurringPayment.Payment);
        }

        v52 = v26;
        goto LABEL_47;
      }

      sub_1B76043C4(v17, type metadata accessor for RecurringPayment.Payment);
    }

    v52 = v28;
    goto LABEL_47;
  }

LABEL_48:
  v71 = 0;
  return v71 & 1;
}