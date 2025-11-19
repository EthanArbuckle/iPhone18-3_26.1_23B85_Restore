void sub_1B74C7880(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleID];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1B74C78D8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 sharingStartDate];
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

void sub_1B74C797C(uint64_t a1, void **a2)
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

  [v7 setSharingStartDate_];
}

void ManagedApplication.bundleIdentifier.setter()
{
  v1 = sub_1B7800838();

  [v0 setBundleID_];
}

void (*ManagedApplication.bundleIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 bundleID];
  v4 = sub_1B7800868();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return sub_1B74C7B88;
}

void sub_1B74C7B88(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    v3 = sub_1B7800838();

    [v2 setBundleID_];
  }

  else
  {
    v3 = sub_1B7800838();

    [v2 setBundleID_];
  }
}

id ManagedApplication.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplication.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedApplication.__allocating_init(bundleID:accountID:institutionID:externalAccountID:sharingStartDate:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = a7;
  v28[1] = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v28 - v14;
  v16 = objc_allocWithZone(v8);
  v29 = a8;
  v17 = [v16 initWithContext_];
  v18 = sub_1B7800838();

  [v17 setBundleID_];

  v19 = sub_1B77FF9B8();
  [v17 setAccountID_];

  if (a6)
  {
    v20 = sub_1B7800838();
  }

  else
  {
    v20 = 0;
  }

  [v17 setExternalAccountID_];

  v21 = v30;
  if (a4)
  {
    v22 = sub_1B7800838();
  }

  else
  {
    v22 = 0;
  }

  [v17 setInstitutionID_];

  sub_1B7280900(v21, v15);
  v23 = sub_1B77FF988();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v15, 1, v23) != 1)
  {
    v25 = sub_1B77FF8B8();
    (*(v24 + 8))(v15, v23);
  }

  [v17 setSharingStartDate_];

  sub_1B7205418(v21, &qword_1EB98EBD0);
  v26 = sub_1B77FFA18();
  (*(*(v26 - 8) + 8))(a2, v26);
  return v17;
}

void ManagedApplication.updateSharingStartDate(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B7280900(a1, &v10 - v5);
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_1B77FF8B8();
    (*(v8 + 8))(v6, v7);
  }

  [v2 setSharingStartDate_];
}

id static ManagedApplication.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedApplication;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedApplication.existingApplications(associatedWith:in:)()
{
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedApplication;
  v0 = objc_msgSendSuper2(&v6, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = sub_1B77FF9B8();
  *(v1 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v1 + 64) = sub_1B726E47C();
  *(v1 + 32) = v2;
  v3 = sub_1B78010E8();
  [v0 setPredicate_];

  v4 = sub_1B7801498();
  return v4;
}

uint64_t static ManagedApplication.predicateFor(accountID:)()
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

uint64_t static ManagedApplication.existingApplicationsAssociatedWithDeletedAccounts(accountsToBeRemoved:in:)(uint64_t a1, __objc2_prot **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v45 - v5;
  v65 = sub_1B77FFA18();
  v6 = *(v65 - 8);
  v7 = MEMORY[0x1EEE9AC00](v65);
  v59 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v45 - v11;
  v57 = type metadata accessor for ManagedAccount();
  v64.receiver = swift_getObjCClassFromMetadata();
  v64.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedAccount;
  v12 = objc_msgSendSuper2(&v64, sel_fetchRequest);
  v13 = v12;
  v14 = *(a1 + 16);
  v52 = v6;
  if (v14)
  {
    v15 = v12;
    v16 = sub_1B72470E8(v14, 0);
    v17 = sub_1B7262594(v63, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v14, a1);
    v13 = v63[1];
    v18 = v63[3];

    sub_1B71B7B58();
    if (v17 != v14)
    {
      goto LABEL_30;
    }

    v13 = v15;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1B7205540(0, &qword_1EDAFAF30);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v19 = swift_allocObject();
  v49 = xmmword_1B7807CD0;
  *(v19 + 16) = xmmword_1B7807CD0;
  *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F708);
  *(v19 + 64) = sub_1B74C9A04(&qword_1EB996008, &qword_1EB98F708);
  *(v19 + 32) = v16;
  v20 = sub_1B78010E8();
  v21 = [objc_opt_self() notPredicateWithSubpredicate_];

  v16 = &off_1E7CAF000;
  [v13 setPredicate_];

  v22 = a2;
  v23 = v61;
  v24 = sub_1B7801498();
  v50 = v23;
  if (v23)
  {
  }

  else
  {
    v14 = v24;
    if (v24 >> 62)
    {
      goto LABEL_31;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    v45 = v18;
    v46 = v17;
    v47 = v13;
    v48 = a2;
    if (v25)
    {
      v26 = 0;
      v56 = v14 & 0xFFFFFFFFFFFFFF8;
      v57 = v14 & 0xC000000000000001;
      v13 = (v52 + 32);
      v54 = (v52 + 56);
      v61 = MEMORY[0x1E69E7CC0];
      v53 = (v52 + 48);
      v55 = v25;
      while (1)
      {
        if (v57)
        {
          v27 = MEMORY[0x1B8CA5DC0](v26, v14);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v26 >= *(v56 + 16))
          {
            goto LABEL_29;
          }

          v27 = *(v14 + 8 * v26 + 32);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            v25 = sub_1B7801958();
            goto LABEL_9;
          }
        }

        v18 = v14;
        a2 = v16;
        v29 = v27;
        v30 = [v29 id];
        v31 = v58;
        sub_1B77FF9E8();

        v17 = v60;
        v32 = *v13;
        v33 = v31;
        v34 = v65;
        (*v13)(v60, v33, v65);

        (*v54)(v17, 0, 1, v34);
        if ((*v53)(v17, 1, v34) == 1)
        {
          sub_1B7205418(v17, &unk_1EB993A10);
          v16 = a2;
        }

        else
        {
          v35 = v51;
          v32(v51, v17, v34);
          v32(v59, v35, v34);
          v16 = a2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_1B723E954(0, v61[2] + 1, 1, v61);
          }

          v37 = v61[2];
          v36 = v61[3];
          v17 = v37 + 1;
          if (v37 >= v36 >> 1)
          {
            v61 = sub_1B723E954(v36 > 1, v37 + 1, 1, v61);
          }

          v38 = v61;
          v61[2] = v17;
          v32(&v38[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v37], v59, v65);
        }

        v14 = v18;
        ++v26;
        if (v28 == v55)
        {
          goto LABEL_26;
        }
      }
    }

    v61 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v39 = sub_1B723AF4C(v61);

    v62.receiver = swift_getObjCClassFromMetadata();
    v62.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedApplication;
    v40 = objc_msgSendSuper2(&v62, sel_fetchRequest);
    v41 = swift_allocObject();
    *(v41 + 16) = v49;
    v42 = sub_1B74C72FC(v39);

    *(v41 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996010);
    *(v41 + 64) = sub_1B74C9A04(&qword_1EB996018, &qword_1EB996010);
    *(v41 + 32) = v42;
    v43 = sub_1B78010E8();
    [v40 v16[51]];

    v22 = sub_1B7801498();
  }

  return v22;
}

uint64_t static ManagedApplication.predicateForExcluding(accountIDs:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  v3 = sub_1B74C72FC(a1);
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996010);
  *(v2 + 64) = sub_1B74C9A04(&qword_1EB996018, &qword_1EB996010);
  *(v2 + 32) = v3;
  return sub_1B78010E8();
}

uint64_t static ManagedApplication.existingApplications(with:in:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v8.receiver = swift_getObjCClassFromMetadata();
  v8.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedApplication;
  v3 = objc_msgSendSuper2(&v8, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  v5 = sub_1B78010E8();
  [v3 setPredicate_];

  v6 = sub_1B7801498();
  return v6;
}

uint64_t static ManagedApplication.predicateFor(bundleID:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1B721FF04();
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return sub_1B78010E8();
}

uint64_t ApplicationMigrationError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t sub_1B74C8EDC(uint64_t a1)
{
  v2 = sub_1B74C9BDC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B74C8F18(uint64_t a1)
{
  v2 = sub_1B74C9BDC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

double ManagedApplication.fullyQualifiedIdentifier.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 externalAccountID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = [v2 institutionID];
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

  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v15 = sub_1B78000B8();
  __swift_project_value_buffer(v15, qword_1EDAF6590);
  v16 = sub_1B7800098();
  v17 = sub_1B78011D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B7198000, v16, v17, "ManagedApplication missing fully qualified identifier", v18, 2u);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

void sub_1B74C90E0(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v4[3] = v3;
  sub_1B7420484(v4[0], v1);
  ManagedApplication.fullyQualifiedIdentifier.setter(v4);
}

void ManagedApplication.fullyQualifiedIdentifier.setter(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;

    v4 = sub_1B7800838();

    [v1 setExternalAccountID_];

    sub_1B74204FC(v3, v2);
    v5 = sub_1B7800838();
  }

  else
  {
    [v1 setExternalAccountID_];
    v5 = 0;
  }

  [v1 setInstitutionID_];
}

void (*ManagedApplication.fullyQualifiedIdentifier.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  ManagedApplication.fullyQualifiedIdentifier.getter(v3);
  return sub_1B74C9298;
}

void sub_1B74C9298(uint64_t *a1, char a2)
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

      [v4 setExternalAccountID_];

      sub_1B74204FC(v5, v3);
      v3 = sub_1B7800838();
    }

    else
    {
      [*(v2 + 32) setExternalAccountID_];
    }

    [*(v2 + 32) setInstitutionID_];

    sub_1B74204FC(*v2, *(v2 + 8));
  }

  else
  {
    v7 = *(v2 + 32);
    if (v3)
    {
      v8 = *v2;

      v9 = sub_1B7800838();

      [v7 setExternalAccountID_];

      sub_1B74204FC(v8, v3);
      v3 = sub_1B7800838();
    }

    else
    {
      [*(v2 + 32) setExternalAccountID_];
    }

    [*(v2 + 32) setInstitutionID_];
  }

  free(v2);
}

id static ManagedApplication.predicate(for:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
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

  v8 = sub_1B78010E8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  v10 = sub_1B78010E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B780C060;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = v8;
  v13 = v10;
  v14 = sub_1B7800C18();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v15;
}

id _s10FinanceKit18ManagedApplicationC12predicateFor8bundleID10accountIDsSo11NSPredicateCAA16BundleIdentifierV_Shy10Foundation4UUIDVGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7807CD0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B721FF04();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;

  *(v5 + 32) = sub_1B78010E8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  v8 = sub_1B74C72FC(a2);
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996010);
  *(v7 + 64) = sub_1B74C9A04(&qword_1EB996018, &qword_1EB996010);
  *(v7 + 32) = v8;
  *(v5 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

id _s10FinanceKit18ManagedApplicationC12predicateFor8bundleID07accountH0So11NSPredicateCAA16BundleIdentifierV_10Foundation4UUIDVtFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  *(v3 + 32) = sub_1B78010E8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = sub_1B77FF9B8();
  *(v5 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v5 + 64) = sub_1B726E47C();
  *(v5 + 32) = v6;
  *(v3 + 40) = sub_1B78010E8();
  v7 = sub_1B7800C18();

  v8 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v8;
}

uint64_t sub_1B74C9A04(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74C9A5C()
{
  result = qword_1EB996020;
  if (!qword_1EB996020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996020);
  }

  return result;
}

unint64_t sub_1B74C9AB4()
{
  result = qword_1EB996028;
  if (!qword_1EB996028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996028);
  }

  return result;
}

void keypath_setTm_6(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setBundleID_];
}

unint64_t sub_1B74C9BDC()
{
  result = qword_1EB996030;
  if (!qword_1EB996030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996030);
  }

  return result;
}

void sub_1B74C9C30(uint64_t a1, void **a2)
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

  [v7 setCredentialIdentifier_];
}

uint64_t ManagedDropboxApplePayOrder.EncryptionScheme.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B74C9DE8()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74C9E6C()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74C9EC8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

void ManagedDropboxApplePayOrder.encryptionScheme.getter(BOOL *a1@<X8>)
{
  v3 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v4 = [v1 primitiveEncryptionScheme];
  if (v4)
  {
    v5 = v4;
    sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  if (v7)
  {
    v9 = sub_1B7801D18();

    v10 = v9 != 0;
  }

  else
  {
    v10 = 1;
  }

  *a1 = v10;
}

void sub_1B74CA050(char *a1)
{
  v2 = *a1;
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B7800838();
  }

  [v1 setPrimitiveEncryptionScheme_];

  v5 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

uint64_t ManagedDropboxApplePayOrder.ephemeralPublicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v5 = [v1 primitiveEphemeralPublicKey];
  if (v5)
  {
    v6 = v5;
    sub_1B77FF5B8();
    v8 = v7;
  }

  else
  {
    v8 = 0xF000000000000000;
  }

  v9 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  if (v8 >> 60 == 15)
  {
    v10 = sub_1B7800658();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    result = sub_1B7800648();
    if (!v2)
    {
      v12 = sub_1B7800658();
      return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    }
  }

  return result;
}

uint64_t sub_1B74CA2E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996048);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  sub_1B7205588(a1, &v16 - v5, &qword_1EB996048);
  v7 = sub_1B7800658();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B7205418(v6, &qword_1EB996048);
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  else
  {
    v9 = MEMORY[0x1B8CA4950]();
    v10 = v11;
    (*(v8 + 8))(v6, v7);
  }

  v12 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  if (v10 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    sub_1B720ABEC(v9, v10);
    v13 = sub_1B77FF598();
    sub_1B72380B8(v9, v10);
  }

  [v2 setPrimitiveEphemeralPublicKey_];

  v14 = sub_1B7800838();
  [v2 didChangeValueForKey_];

  return sub_1B72380B8(v9, v10);
}

void sub_1B74CA4F0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B77FF5B8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1B74CA554(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1B77FF598();
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_1B74CA5CC@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
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

void sub_1B74CA684(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &qword_1EB98EBD0);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setCreationDate_];
}

id ManagedDropboxApplePayOrder.__allocating_init(ckSchemaVersion:credentialIdentifier:transactionInfo:encryptionScheme:ephemeralPublicKey:data:creationDate:context:)(__int16 a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v43 = a7;
  v44 = a8;
  v45 = a6;
  v47 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - v20;
  v22 = *a5;
  v23 = objc_allocWithZone(v11);
  v42 = a10;
  v24 = [v23 initWithContext_];
  [v24 setCkSchemaVersion_];
  v46 = a2;
  sub_1B7205588(a2, v21, &unk_1EB993A10);
  v25 = sub_1B77FFA18();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v21, 1, v25) != 1)
  {
    v27 = sub_1B77FF9B8();
    (*(v26 + 8))(v21, v25);
  }

  [v24 setCredentialIdentifier_];

  v28 = a4;
  if (a4 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v30 = v47;
    sub_1B720ABEC(v47, a4);
    v29 = sub_1B77FF598();
    sub_1B72380B8(v30, a4);
  }

  v32 = v44;
  v31 = v45;
  [v24 setTransactionInfo_];

  v33 = sub_1B7800838();
  [v24 willChangeValueForKey_];

  if (v22)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_1B7800838();
  }

  [v24 setPrimitiveEncryptionScheme_];

  v35 = sub_1B7800838();
  [v24 didChangeValueForKey_];

  sub_1B74CA2E8(v31);
  if (v32 >> 60 == 15)
  {
    v36 = 0;
    v37 = v43;
  }

  else
  {
    v37 = v43;
    sub_1B720ABEC(v43, v32);
    v36 = sub_1B77FF598();
    sub_1B72380B8(v37, v32);
  }

  [v24 setData_];

  sub_1B7205588(a9, v18, &qword_1EB98EBD0);
  v38 = sub_1B77FF988();
  v39 = *(v38 - 8);
  v40 = 0;
  if ((*(v39 + 48))(v18, 1, v38) != 1)
  {
    v40 = sub_1B77FF8B8();
    (*(v39 + 8))(v18, v38);
  }

  [v24 setCreationDate_];

  sub_1B72380B8(v37, v32);
  sub_1B72380B8(v47, v28);
  sub_1B7205418(a9, &qword_1EB98EBD0);
  sub_1B7205418(v31, &qword_1EB996048);
  sub_1B7205418(v46, &unk_1EB993A10);
  return v24;
}

id ManagedDropboxApplePayOrder.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedDropboxApplePayOrder.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedDropboxApplePayOrder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedDropboxApplePayOrder.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedDropboxApplePayOrder;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedDropboxApplePayOrder.existingObject(with:in:)(uint64_t a1, id a2)
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

void DropboxApplePayOrder.init(validating:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v71 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v70 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996048);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v67 - v9;
  v11 = sub_1B7800658();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B77FFA18();
  v76 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v67 - v18;
  if ([a1 ckSchemaVersion] != 1)
  {
    v35 = [a1 ckSchemaVersion];
    sub_1B74CBC28();
    swift_allocError();
    *v36 = v35;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
LABEL_8:
    swift_willThrow();

    return;
  }

  v72 = a2;
  v20 = [a1 credentialIdentifier];
  if (!v20)
  {
    sub_1B74CBC28();
    swift_allocError();
    *v37 = 0xD000000000000014;
    *(v37 + 8) = 0x80000001B787DE60;
    *(v37 + 16) = 1;
    goto LABEL_8;
  }

  v21 = v20;
  v67 = v4;
  sub_1B77FF9E8();

  v22 = v76;
  (*(v76 + 32))(v19, v17, v14);
  v23 = v72;
  (*(v22 + 16))(v72, v19, v14);
  v24 = [a1 transactionInfo];
  if (!v24)
  {
    sub_1B74CBC28();
    swift_allocError();
    *v38 = xmmword_1B7834AF0;
    *(v38 + 16) = 1;
    swift_willThrow();

    v39 = *(v22 + 8);
    v39(v19, v14);
    v39(v23, v14);
    return;
  }

  v68 = v14;
  v25 = v24;
  v26 = sub_1B77FF5B8();
  v28 = v27;

  v29 = type metadata accessor for DropboxApplePayOrder();
  v30 = &v23[v29[5]];
  *v30 = v26;
  v30[1] = v28;
  ManagedDropboxApplePayOrder.encryptionScheme.getter(&v77);
  if (v77)
  {
    sub_1B74CBC28();
    swift_allocError();
    *v31 = 0xD000000000000010;
    *(v31 + 8) = 0x80000001B7881BF0;
    *(v31 + 16) = 1;
    swift_willThrow();

    v32 = *(v76 + 8);
    v33 = v19;
    v34 = v68;
    v32(v33, v68);
LABEL_13:
    v42 = 0;
    v43 = 0;
LABEL_14:
    v44 = v72;
    goto LABEL_15;
  }

  v40 = v73;
  ManagedDropboxApplePayOrder.ephemeralPublicKey.getter(v10);
  if (v40)
  {
    v32 = *(v76 + 8);
    v41 = v19;
    v34 = v68;
    v32(v41, v68);

    goto LABEL_13;
  }

  v46 = v74;
  v45 = v75;
  v47 = (*(v74 + 48))(v10, 1, v75);
  v44 = v72;
  if (v47 == 1)
  {
    sub_1B7205418(v10, &qword_1EB996048);
    sub_1B74CBC28();
    swift_allocError();
    *v48 = 0xD000000000000012;
    *(v48 + 8) = 0x80000001B7881C10;
    *(v48 + 16) = 1;
    swift_willThrow();

    v32 = *(v76 + 8);
    v49 = v19;
    v34 = v68;
    v32(v49, v68);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    (*(v46 + 32))(v13, v10, v45);
    (*(v46 + 16))(&v44[v29[7]], v13, v45);
    v50 = [a1 data];
    if (v50)
    {
      v51 = v50;
      v52 = sub_1B77FF5B8();
      v54 = v53;

      v55 = &v44[v29[8]];
      *v55 = v52;
      v55[1] = v54;
      v56 = [a1 creationDate];
      if (v56)
      {
        v57 = v70;
        v58 = v56;
        sub_1B77FF928();

        (*(v74 + 8))(v13, v75);
        (*(v76 + 8))(v19, v68);
        v59 = *(v71 + 32);
        v60 = v69;
        v61 = v67;
        v59(v69, v57, v67);
        v59(&v72[v29[9]], v60, v61);
        return;
      }

      sub_1B74CBC28();
      swift_allocError();
      *v65 = xmmword_1B7834AD0;
      v42 = 1;
      *(v65 + 16) = 1;
      swift_willThrow();

      (*(v74 + 8))(v13, v75);
      v32 = *(v76 + 8);
      v66 = v19;
      v34 = v68;
      v32(v66, v68);
      v43 = 1;
      goto LABEL_14;
    }

    v62 = v46;
    sub_1B74CBC28();
    swift_allocError();
    *v63 = xmmword_1B7834AE0;
    v42 = 1;
    *(v63 + 16) = 1;
    swift_willThrow();

    (*(v62 + 8))(v13, v45);
    v32 = *(v76 + 8);
    v64 = v19;
    v34 = v68;
    v32(v64, v68);
    v43 = 0;
  }

LABEL_15:
  v32(v44, v34);
  sub_1B720A388(*&v44[v29[5]], *&v44[v29[5] + 8]);
  if (v42)
  {
    (*(v74 + 8))(&v44[v29[7]], v75);
    if (v43)
    {
      goto LABEL_19;
    }
  }

  else if (v43)
  {
LABEL_19:
    sub_1B720A388(*&v44[v29[8]], *&v44[v29[8] + 8]);
  }
}

id ManagedDropboxApplePayOrder.__allocating_init(ckSchemaVersion:order:context:)(__int16 a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996048);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = [objc_allocWithZone(v3) initWithContext_];
  [v10 setCkSchemaVersion_];
  v11 = sub_1B77FF9B8();
  [v10 setCredentialIdentifier_];

  v12 = type metadata accessor for DropboxApplePayOrder();
  v13 = sub_1B77FF598();
  [v10 setTransactionInfo_];

  v14 = sub_1B7800838();
  [v10 willChangeValueForKey_];

  v15 = sub_1B7800838();
  [v10 setPrimitiveEncryptionScheme_];

  v16 = sub_1B7800838();
  [v10 didChangeValueForKey_];

  v17 = *(v12 + 28);
  v18 = sub_1B7800658();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v9, a2 + v17, v18);
  (*(v19 + 56))(v9, 0, 1, v18);
  sub_1B74CA2E8(v9);
  sub_1B7205418(v9, &qword_1EB996048);
  v20 = sub_1B77FF598();
  [v10 setData_];

  v21 = sub_1B77FF8B8();
  [v10 setCreationDate_];

  sub_1B74CBC7C(a2);
  return v10;
}

BOOL _s10FinanceKit27ManagedDropboxApplePayOrderC15ValidationErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v12 = *a1;
      sub_1B74CBD9C(*a1, v2, 0);
      sub_1B74CBD9C(v5, v6, 0);
      return v12 == v5;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 16) & 1) == 0)
  {

LABEL_11:
    sub_1B74CBD8C(v5, v6, v7);
    sub_1B74CBD9C(v3, v2, v4);
    sub_1B74CBD9C(v5, v6, v7);
    return 0;
  }

  v8 = *a1;
  if (v3 == v5 && v2 == v6)
  {
    sub_1B74CBD8C(v8, v2, 1);
    sub_1B74CBD8C(v3, v2, 1);
    sub_1B74CBD9C(v3, v2, 1);
    sub_1B74CBD9C(v3, v2, 1);
    return 1;
  }

  else
  {
    v10 = sub_1B78020F8();
    sub_1B74CBD8C(v5, v6, 1);
    sub_1B74CBD8C(v3, v2, 1);
    sub_1B74CBD9C(v3, v2, 1);
    sub_1B74CBD9C(v5, v6, 1);
    return v10 & 1;
  }
}

unint64_t sub_1B74CBC28()
{
  result = qword_1EB996050;
  if (!qword_1EB996050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996050);
  }

  return result;
}

uint64_t sub_1B74CBC7C(uint64_t a1)
{
  v2 = type metadata accessor for DropboxApplePayOrder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B74CBCDC()
{
  result = qword_1EB996058;
  if (!qword_1EB996058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996058);
  }

  return result;
}

uint64_t sub_1B74CBD8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B74CBD9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B74CBDAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  result = sub_1B78009A8();
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_51;
  }

  result = sub_1B78009A8();
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = v8 * v9;
  if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v11 = sub_1B7800C78();
    *(v11 + 16) = v10;
    v35 = v11;
    bzero((v11 + 32), v10);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1B7800A38();
  if (!v13)
  {
    v33 = 0;
    goto LABEL_40;
  }

  v14 = v12;
  v15 = v13;
  v16 = 0;
  v36 = 0;
  v17 = v35 + 32;
  result = a2;
  v34 = a2;
  while (2)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v20 = 0;
    while (1)
    {
      v22 = v20;
      result = sub_1B7800A38();
      if (!v23)
      {
        break;
      }

      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v14 == result && v15 == v23)
      {

LABEL_27:
        v25 = v24 * v8;
        if ((v24 * v8) >> 64 != (v24 * v8) >> 63)
        {
          goto LABEL_42;
        }

        v26 = __OFADD__(v19, v25);
        v27 = v19 + v25;
        if (v26)
        {
          goto LABEL_43;
        }

        v28 = v22 * v8;
        if ((v22 * v8) >> 64 != (v22 * v8) >> 63)
        {
          goto LABEL_44;
        }

        v26 = __OFADD__(v16, v28);
        v29 = v16 + v28;
        if (v26)
        {
          goto LABEL_45;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v30 = *(v35 + 16);
        if (v29 >= v30)
        {
          goto LABEL_47;
        }

        v31 = *(v17 + v29) + 1;
        if ((v31 & 0x100) != 0)
        {
          goto LABEL_48;
        }

        if (v27 >= v30)
        {
          goto LABEL_49;
        }

        *(v17 + v27) = v31;
        v32 = v31;
        if (v36 > v31)
        {
          v32 = v36;
        }

        v36 = v32;
        v20 = v22 + 1;
      }

      else
      {
        v21 = sub_1B78020F8();

        v20 = v22 + 1;
        if (v21)
        {
          goto LABEL_27;
        }
      }
    }

    v14 = sub_1B7800A38();
    v15 = v18;
    ++v16;
    result = v34;
    if (v18)
    {
      continue;
    }

    break;
  }

  v33 = v36;
LABEL_40:

  return v33;
}

uint64_t PastSingleDateFormatter.format(_:now:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FFC88();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF988();
  sub_1B7282114();
  v18 = sub_1B7800808();
  result = 0;
  if (v18)
  {
    v45 = a2;
    v46 = a1;
    v20 = (*(a4 + 40))(a3, a4);
    v21 = *(a4 + 16);
    v44 = a4 + 16;
    v21(a3, a4);
    if (v20)
    {
      v41 = v21;
      v42 = v4;
      v49 = a4;
      v43 = a3;
      v22 = v50;
      v23 = v51;
      v24 = *(v50 + 16);
      v24(v14, &v17[*(v15 + 20)], v51);
      sub_1B74CC544(v17, type metadata accessor for FormatterConfiguration);
      v25 = v46;
      v26 = sub_1B77FFB98();
      v27 = *(v22 + 8);
      v27(v14, v23);
      if (v26)
      {
        return (*(v49 + 32))(v43);
      }

      v41(v43, v49);
      v24(v14, &v17[*(v15 + 20)], v23);
      sub_1B74CC544(v17, type metadata accessor for FormatterConfiguration);
      v33 = sub_1B77FFB38();
      v27(v14, v23);
      if (v33)
      {
        return (*(v49 + 24))(v43);
      }

      v35 = v48;
      v34 = v49;
      v36 = v43;
      v41(v43, v49);
      *(v35 + *(v47 + 20)) = 0;
      v37 = SingleDateFormatter.format(_:now:)(v25, v45);
      v39 = v38;
      sub_1B74CC544(v35, type metadata accessor for SingleDateFormatter);
      v31 = (*(v34 + 48))(v37, v39, v36, v34);
    }

    else
    {
      sub_1B77FFA68();
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      sub_1B72A2B9C(v17, v10);
      v10[*(v49 + 20)] = 0;
      v28 = FullDateFormatter.format(_:now:)(v46, v45);
      v30 = v29;
      sub_1B74CC544(v10, type metadata accessor for FullDateFormatter);
      v31 = (*(a4 + 48))(v28, v30, a3, a4);
    }

    v32 = v31;

    return v32;
  }

  return result;
}

uint64_t sub_1B74CC51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B767A75C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B74CC544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B74CC608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B767A2F4(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B74CC630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B767A000(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t PIIRedactionRegexCollectionProvider.__allocating_init(trialProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1B74CCE50(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t PIIRedactionRegexCollectionProvider.version.getter()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 40));
  sub_1B74CCF3C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 40));
  v2 = v4;

  return v2;
}

uint64_t PIIRedactionRegexCollectionProvider.regexes.getter()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 40));
  sub_1B74CD068((v1 + 16), v4);
  os_unfair_lock_unlock((v1 + 40));
  v2 = v4[2];

  return v2;
}

uint64_t PIIRedactionRegexCollectionProvider.init(trialProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1B74CCD90(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1B74CC858@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
  }

  else
  {
    sub_1B74CCFD0(*a1, 0);
    sub_1B74CC914(v10);
    v5 = v10[0];
    v6 = v10[1];
    v7 = v10[2];
    *a1 = v10[0];
    a1[1] = v6;
    a1[2] = v7;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return sub_1B74084D8(v3, v4);
}

uint64_t sub_1B74CC914@<X0>(void *a1@<X8>)
{
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v7);
  v17[0] = 0xD000000000000013;
  v17[1] = 0x80000001B7881D70;
  v16 = 2;
  (*(v8 + 16))(v17, &v16, v7, v8);
  v10 = v9;

  if (v10)
  {
    sub_1B77FF3D8();

    v12 = sub_1B77FF518();
    v14 = v13;
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    sub_1B74CD014();
    sub_1B77FE8D8();
    (*(v4 + 8))(v6, v3);

    return sub_1B720A388(v12, v14);
  }

  else
  {
    *a1 = 4271950;
    a1[1] = 0xE300000000000000;
    a1[2] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t PIIRedactionRegexCollectionProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t PIIRedactionRegexCollectionProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B74CCCC8()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock((v1 + 40));
  sub_1B74CD068((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 40));
  v2 = v4;

  return v2;
}

uint64_t sub_1B74CCD30()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock((v1 + 40));
  sub_1B74CD068((v1 + 16), v4);
  os_unfair_lock_unlock((v1 + 40));
  v2 = v4[2];

  return v2;
}

uint64_t sub_1B74CCD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_1B719B06C(v10, a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD58);
  v8 = swift_allocObject();
  *(v8 + 40) = 0;
  __swift_destroy_boxed_opaque_existential_1(v10);
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(a2 + 56) = v8;
  return a2;
}

uint64_t sub_1B74CCE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_1B74CCD90(v9, v10, a3, a4);
}

uint64_t sub_1B74CCFD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B74CD014()
{
  result = qword_1EB996060;
  if (!qword_1EB996060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996060);
  }

  return result;
}

void sub_1B74CD080(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
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

id ManagedPendingConsent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPendingConsent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPendingConsent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedPendingConsent.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = [objc_allocWithZone(v2) initWithContext_];
  v9 = type metadata accessor for BankConnectCloudConsent();
  v10 = v8;
  v11 = sub_1B77FF8B8();
  [v10 setAuthorizedAt_];

  v12 = sub_1B77FF8B8();
  [v10 setAuthorizedUntil_];

  v13 = sub_1B7800838();
  [v10 setConsentID_];

  [v10 setRefreshSequenceNumber_];
  v14 = sub_1B7800838();
  [v10 setConsentToken_];

  sub_1B7280900(a1 + *(v9 + 44), v7);
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v7, 1, v15) != 1)
  {
    v17 = sub_1B77FF8B8();
    (*(v16 + 8))(v7, v15);
  }

  [v10 setBackgroundRefreshLastConfirmedAt_];

  v18 = sub_1B7800838();
  [v10 setInstitutionID_];

  sub_1B74CD818(a1, type metadata accessor for BankConnectCloudConsent);
  return v10;
}

id ManagedPendingConsent.__allocating_init(_:forInstitutionID:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(v4) initWithContext_];
  v11 = type metadata accessor for BankConnectConsent();
  v12 = v10;
  v13 = sub_1B77FF8B8();
  [v12 setAuthorizedAt_];

  v14 = sub_1B77FF8B8();
  [v12 setAuthorizedUntil_];

  v15 = sub_1B7800838();
  [v12 setConsentID_];

  [v12 setRefreshSequenceNumber_];
  v16 = sub_1B7800838();
  [v12 setConsentToken_];

  sub_1B7280900(a1 + *(v11 + 32), v9);
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v9, 1, v17) != 1)
  {
    v19 = sub_1B77FF8B8();
    (*(v18 + 8))(v9, v17);
  }

  [v12 setBackgroundRefreshLastConfirmedAt_];

  v20 = sub_1B7800838();

  [v12 setInstitutionID_];

  sub_1B74CD818(a1, type metadata accessor for BankConnectConsent);
  return v12;
}

uint64_t sub_1B74CD818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ManagedPendingConsent.update(_:context:)(void *a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - v10;
  v11 = [a1 institutionID];
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

  v16 = v2;
  v17 = [v2 institutionID];
  v18 = sub_1B7800868();
  v20 = v19;

  if (!v15)
  {

    goto LABEL_12;
  }

  if (v13 == v18 && v15 == v20)
  {

    v23 = v16;
    goto LABEL_17;
  }

  v22 = sub_1B78020F8();

  v23 = v16;
  if ((v22 & 1) == 0)
  {
LABEL_12:
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B78000B8();
    __swift_project_value_buffer(v24, qword_1EDAFD2D0);
    v25 = sub_1B7800098();
    v26 = sub_1B78011D8();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_34;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Tried to update pending consent using a different cloud consent";
    goto LABEL_33;
  }

LABEL_17:
  v29 = [a1 authorizedAt];
  if (!v29)
  {
LABEL_29:
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v53 = sub_1B78000B8();
    __swift_project_value_buffer(v53, qword_1EDAFD2D0);
    v25 = sub_1B7800098();
    v26 = sub_1B78011D8();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_34;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Missing cloud consent properties. This is unexpected.";
LABEL_33:
    _os_log_impl(&dword_1B7198000, v25, v26, v28, v27, 2u);
    MEMORY[0x1B8CA7A40](v27, -1, -1);
LABEL_34:

    sub_1B7359AA4();
    swift_allocError();
    *v54 = 2;
    return swift_willThrow();
  }

  v30 = v61;
  v31 = v29;
  sub_1B77FF928();

  v32 = [a1 authorizedUntil];
  if (!v32)
  {
    (*(v59 + 8))(v30, v60);
    goto LABEL_29;
  }

  v33 = v9;
  v34 = v32;
  sub_1B77FF928();

  v35 = [a1 consentID];
  v36 = v60;
  if (!v35)
  {
    v51 = *(v59 + 8);
    v51(v9, v60);
    v51(v30, v36);
    goto LABEL_29;
  }

  v37 = v35;
  v38 = [a1 refreshSequenceNumber];
  if (!v38)
  {

LABEL_28:
    v52 = *(v59 + 8);
    v52(v33, v36);
    v52(v61, v36);
    goto LABEL_29;
  }

  v39 = v38;
  v40 = [a1 consentToken];
  if (!v40)
  {

    goto LABEL_28;
  }

  v57 = v40;
  v41 = sub_1B77FF8B8();
  [v23 setAuthorizedAt_];

  v42 = sub_1B77FF8B8();
  [v23 setAuthorizedUntil_];

  [v23 setConsentID_];
  [v23 setRefreshSequenceNumber_];
  v43 = v57;
  [v23 setConsentToken_];

  v44 = [a1 backgroundRefreshLastConfirmedAt];
  if (v44)
  {
    v45 = v39;
    v46 = v58;
    v47 = v44;
    sub_1B77FF928();

    v48 = sub_1B77FF8B8();
    v49 = v59;
    v50 = v46;
    v39 = v45;
    (*(v59 + 8))(v50, v36);
  }

  else
  {
    v48 = 0;
    v49 = v59;
  }

  [v23 setBackgroundRefreshLastConfirmedAt_];

  v56 = *(v49 + 8);
  v56(v33, v36);
  return (v56)(v61, v36);
}

void ManagedPendingConsent.update(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B7800838();
  [v2 setConsentID_];

  v5 = type metadata accessor for RawBankConnectData.Consent(0);
  v6 = sub_1B77FF8B8();
  [v2 setAuthorizedAt_];

  v7 = sub_1B77FF8B8();
  [v2 setAuthorizedUntil_];

  [v2 setRefreshSequenceNumber_];
  v8 = sub_1B7800838();
  [v2 setConsentToken_];
}

id static ManagedPendingConsent.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedPendingConsent;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedPendingConsent.existingObject(with:in:)(uint64_t a1, id a2)
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

uint64_t static ManagedPendingConsent.existingConsents(forInstitutionID:in:)(uint64_t a1, uint64_t a2)
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedPendingConsent;
  v4 = objc_msgSendSuper2(&v9, sel_fetchRequest);
  sub_1B729D790();
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

uint64_t static ManagedPendingConsent.predicateForConsent(withInstitutionID:)(uint64_t a1, uint64_t a2)
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

unint64_t static ManagedPendingConsent.existingConsent(withConsentID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedPendingConsent;
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

uint64_t static ManagedPendingConsent.predicateForConsent(withConsentID:)(uint64_t a1, uint64_t a2)
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

uint64_t OrderRegistrationIdentifier.orderTypeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OrderRegistrationIdentifier.orderTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrderRegistrationIdentifier.orderIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OrderRegistrationIdentifier.orderIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OrderRegistrationIdentifier.deviceLibraryIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t OrderRegistrationIdentifier.deviceLibraryIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall OrderRegistrationIdentifier.init(orderTypeIdentifier:orderIdentifier:deviceLibraryIdentifier:)(FinanceKit::OrderRegistrationIdentifier *__return_ptr retstr, Swift::String orderTypeIdentifier, Swift::String orderIdentifier, Swift::String deviceLibraryIdentifier)
{
  retstr->orderTypeIdentifier = orderTypeIdentifier;
  retstr->orderIdentifier = orderIdentifier;
  retstr->deviceLibraryIdentifier = deviceLibraryIdentifier;
}

uint64_t static OrderRegistrationIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t OrderRegistrationIdentifier.hash(into:)()
{
  sub_1B7800798();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t OrderRegistrationIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74CE948()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74CE9CC()
{
  sub_1B7800798();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t sub_1B74CEA38()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74CEAB8(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t OrderRegistrationIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000016, 0x80000001B7881280);
  MEMORY[0x1B8CA4D30](v1, v2);
  MEMORY[0x1B8CA4D30](0xD000000000000013, 0x80000001B78812A0);
  MEMORY[0x1B8CA4D30](v3, v4);
  MEMORY[0x1B8CA4D30](0xD000000000000014, 0x80000001B7881ED0);
  MEMORY[0x1B8CA4D30](v5, v6);
  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B74CECBC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastRequestAttemptDate];
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

void sub_1B74CED60(uint64_t a1, void **a2)
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

Swift::Void __swiftcall ManagedOrderRegistration.awakeFromInsert()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_awakeFromInsert);
  sub_1B77FF938();
  v7 = sub_1B77FF8B8();
  v8 = *(v4 + 8);
  v8(v6, v3);
  [v1 setCreationDate_];

  v9 = [v1 creationDate];
  sub_1B77FF928();

  v10 = sub_1B77FF8B8();
  v8(v6, v3);
  [v1 setCancellationDate_];
}

id ManagedOrderRegistration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderRegistration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderRegistration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderRegistration.existingObject(with:context:)(uint64_t a1, id a2)
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

id static ManagedOrderRegistration.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit24ManagedOrderRegistration;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

unint64_t static ManagedOrderRegistration.fetchOrderRegistration(orderTypeIdentifier:orderIdentifier:deviceLibraryIdentifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26.receiver = swift_getObjCClassFromMetadata();
  v26.super_class = &OBJC_METACLASS____TtC10FinanceKit24ManagedOrderRegistration;
  v22 = objc_msgSendSuper2(&v26, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B781E650;
  sub_1B729D790();
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
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7807CD0;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;

  *(v8 + 48) = sub_1B78010E8();
  v14 = sub_1B7800C18();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v22 setPredicate_];
  v16 = v27;
  result = sub_1B7801498();
  if (v16)
  {

    return v11;
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

  v19 = result;
  v20 = sub_1B7801958();
  result = v19;
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(result + 32);
LABEL_8:
    v11 = v18;

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B74CF68C(SEL *a1)
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

unint64_t sub_1B74CF7A0()
{
  result = qword_1EB996068;
  if (!qword_1EB996068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996068);
  }

  return result;
}

uint64_t sub_1B74CF870(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

id ManagedOrderShippingFulfillment.recipientModel.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 recipientFamilyName];
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

  v8 = [v1 recipientGivenName];
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

  v13 = [v1 recipientOrganizationName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B7800868();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  result = [v1 recipientAddress];
  *a1 = v5;
  a1[1] = v7;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v15;
  a1[5] = v17;
  a1[6] = result;
  return result;
}

uint64_t ManagedOrderShippingFulfillment.lineItems.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 lineItemObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B7440FE4();
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(v11, &v9);
    type metadata accessor for ManagedOrderLineItem();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);

  v11[0] = sub_1B725F284(v6);
  sub_1B74D29C8(v11);

  return v11[0];
}

uint64_t ManagedOrderShippingFulfillment.status.getter()
{
  result = _s10FinanceKit26ManagedOrderShippingStatusO8rawValueACSgs5Int16V_tcfC_0([v0 statusValue]);
  if (result == 8)
  {
    sub_1B7801A78();

    [v0 statusValue];
    v2 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v2);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

uint64_t ManagedOrderShippingFulfillment.shippingType.getter()
{
  result = [v0 shippingTypeValue];
  if (result)
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      sub_1B7801A78();

      [v0 shippingTypeValue];
      v2 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v2);

      result = sub_1B7801C88();
      __break(1u);
    }
  }

  return result;
}

char *ManagedOrderShippingFulfillment.__allocating_init(_:bundle:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B74D2B48(a1, a2, a3);

  return v4;
}

uint64_t ManagedOrderShippingFulfillment.rawOrderShippingFulfillment.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v121 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v126 = &v119 - v6;
  v7 = type metadata accessor for Duration();
  v141 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v129 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v119 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v137 = &v119 - v16;
  v142 = v1;
  v17 = [v1 fulfillmentIdentifier];
  v18 = sub_1B7800868();
  v131 = v19;
  v132 = v18;

  v20 = 0x706020504030100uLL >> (8 * ManagedOrderShippingFulfillment.status.getter());
  v21 = type metadata accessor for RawOrderShippingFulfillment();
  v22 = v21[11];
  v23 = sub_1B77FF4F8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v135 = v23;
  v136 = v22;
  v133 = v24 + 56;
  v134 = v25;
  (v25)(&a1[v22], 1, 1);
  v26 = &a1[v21[12]];
  sub_1B74D3990(v157);
  v27 = v157[7];
  *(v26 + 6) = v157[6];
  *(v26 + 7) = v27;
  *(v26 + 8) = v157[8];
  *(v26 + 18) = v158;
  v28 = v157[3];
  *(v26 + 2) = v157[2];
  *(v26 + 3) = v28;
  v29 = v157[5];
  *(v26 + 4) = v157[4];
  *(v26 + 5) = v29;
  v30 = v157[1];
  *v26 = v157[0];
  *(v26 + 1) = v30;
  v31 = v21[13];
  v32 = sub_1B77FF988();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v33 + 56;
  v138 = v31;
  v34(&a1[v31], 1, 1, v32);
  v36 = *(v141 + 56);
  v120 = v21[14];
  v128 = v7;
  v122 = v141 + 56;
  v139 = v36;
  v36(&a1[v120], 1, 1, v7);
  v125 = v21[15];
  v34(&a1[v125], 1, 1, v32);
  v124 = v21[17];
  v127 = v32;
  v143 = v35;
  v144 = v34;
  v34(&a1[v124], 1, 1, v32);
  v37 = &a1[v21[16]];
  v38 = v131;
  *v37 = v132;
  v37[1] = v38;
  v39 = v142;
  a1[40] = v20;
  v40 = a1;
  v132 = v21[18];
  a1[v132] = 0;
  v41 = [v39 statusDescription];
  if (v41)
  {
    v43 = *&v41[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
    v42 = *&v41[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
    v44 = v41;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  *(v40 + 6) = v43;
  *(v40 + 7) = v42;
  v45 = [v39 notes];
  if (v45)
  {
    v47 = *&v45[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
    v46 = *&v45[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
    v48 = v45;
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  *(v40 + 8) = v47;
  *(v40 + 9) = v46;
  v49 = [v39 trackingNumber];
  if (v49)
  {
    v50 = v39;
    v51 = v49;
    v52 = sub_1B7800868();
    v54 = v53;

    v39 = v50;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = v137;
  *(v40 + 10) = v52;
  *(v40 + 11) = v54;
  v56 = [v39 trackingURL];
  if (v56)
  {
    v57 = v56;
    sub_1B77FF478();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v134(v55, v58, 1, v135);
  sub_1B7213740(v55, &v40[v136], &unk_1EB994C70);
  v59 = [v39 carrier];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1B7800868();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  *(v40 + 1) = v61;
  *(v40 + 2) = v63;
  v64 = [v39 carrierIdentifier];
  if (v64)
  {
    v65 = v64;
    v66 = sub_1B7800868();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  *(v40 + 3) = v66;
  *(v40 + 4) = v68;
  v69 = ManagedOrderShippingFulfillment.lineItems.getter();
  v70 = v69;
  if (v69 >> 62)
  {
    v71 = sub_1B7801958();
    if (v71)
    {
      goto LABEL_21;
    }

LABEL_32:

    v73 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
    goto LABEL_32;
  }

LABEL_21:
  *&v145[0] = MEMORY[0x1E69E7CC0];
  sub_1B71FE27C(0, v71 & ~(v71 >> 63), 0);
  if (v71 < 0)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v137 = v40;
  v72 = 0;
  v73 = *&v145[0];
  if ((v70 & 0xC000000000000001) == 0)
  {
    goto LABEL_24;
  }

LABEL_23:
  for (i = MEMORY[0x1B8CA5DC0](v72, v70); ; i = *(v70 + 8 * v72 + 32))
  {
    v75 = i;
    ManagedOrderLineItem.rawOrderLineItem.getter(&v147);

    *&v145[0] = v73;
    v77 = *(v73 + 16);
    v76 = *(v73 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_1B71FE27C((v76 > 1), v77 + 1, 1);
      v73 = *&v145[0];
    }

    *(v73 + 16) = v77 + 1;
    v78 = (v73 + (v77 << 7));
    v79 = v147;
    v80 = v148;
    v81 = v150;
    v78[4] = v149;
    v78[5] = v81;
    v78[2] = v79;
    v78[3] = v80;
    v82 = v151;
    v83 = v152;
    v84 = v154;
    v78[8] = v153;
    v78[9] = v84;
    v78[6] = v82;
    v78[7] = v83;
    if (v71 - 1 == v72)
    {
      break;
    }

    ++v72;
    if ((v70 & 0xC000000000000001) != 0)
    {
      goto LABEL_23;
    }

LABEL_24:
    ;
  }

  v40 = v137;
LABEL_33:
  v85 = v123;
  *v40 = v73;
  v86 = v142;
  sub_1B74D27BC(v145);
  v87 = *(v26 + 7);
  v153 = *(v26 + 6);
  v154 = v87;
  v155 = *(v26 + 8);
  v156 = *(v26 + 18);
  v88 = *(v26 + 3);
  v149 = *(v26 + 2);
  v150 = v88;
  v89 = *(v26 + 5);
  v151 = *(v26 + 4);
  v152 = v89;
  v90 = *(v26 + 1);
  v147 = *v26;
  v148 = v90;
  sub_1B7205418(&v147, &qword_1EB996070);
  v91 = v145[7];
  *(v26 + 6) = v145[6];
  *(v26 + 7) = v91;
  *(v26 + 8) = v145[8];
  *(v26 + 18) = v146;
  v92 = v145[3];
  *(v26 + 2) = v145[2];
  *(v26 + 3) = v92;
  v93 = v145[5];
  *(v26 + 4) = v145[4];
  *(v26 + 5) = v93;
  v94 = v145[1];
  *v26 = v145[0];
  *(v26 + 1) = v94;
  v95 = [v86 estimatedDeliveryDate];
  if (v95)
  {
    v96 = v95;
    sub_1B77FF928();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = v139;
  v99 = v140;
  v101 = v126;
  v100 = v127;
  v144(v85, v97, 1, v127);
  sub_1B7213740(v85, &v40[v138], &qword_1EB98EBD0);
  v102 = [v86 estimatedDeliveryWindowDurationValue];
  if (!v102)
  {
    v98(v101, 1, 1, v128);
    v106 = v129;
    goto LABEL_40;
  }

  v103 = v102;
  sub_1B7800868();

  Duration.init(from:)(v101);
  v104 = v128;
  v105 = (*(v141 + 48))(v101, 1, v128);
  v106 = v129;
  if (v105 == 1)
  {
LABEL_40:
    sub_1B7205418(v101, &qword_1EB995FF0);
    goto LABEL_41;
  }

  sub_1B719AAB4(v101, v99, type metadata accessor for Duration);
  v107 = v121;
  sub_1B71B43D0(v99, v121, type metadata accessor for Duration);
  v108 = v139;
  v139(v107, 0, 1, v104);
  sub_1B76E0B9C(v107, &v40[v138]);
  sub_1B7205418(v107, &qword_1EB995FF0);
  v109 = v120;
  sub_1B7205418(&v40[v120], &qword_1EB995FF0);
  sub_1B719AAB4(v140, &v40[v109], type metadata accessor for Duration);
  v108(&v40[v109], 0, 1, v104);
LABEL_41:
  v110 = [v86 shippedDate];
  if (v110)
  {
    v111 = v110;
    sub_1B77FF928();

    v112 = 0;
  }

  else
  {
    v112 = 1;
  }

  v113 = 1;
  v144(v106, v112, 1, v100);
  sub_1B7213740(v106, &v40[v124], &qword_1EB98EBD0);
  v40[v132] = ManagedOrderShippingFulfillment.shippingType.getter();
  v114 = [v86 deliveryDate];
  v115 = v130;
  if (v114)
  {
    v116 = v114;
    sub_1B77FF928();

    v113 = 0;
  }

  v117 = v125;
  v144(v115, v113, 1, v100);
  return sub_1B7213740(v115, &v40[v117], &qword_1EB98EBD0);
}

void sub_1B74D0988(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &unk_1EB994C70);
  v7 = *a2;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF3F8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setTrackingURL_];
}

void sub_1B74D0AC4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
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

uint64_t sub_1B74D0C00@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
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

id ManagedOrderShippingFulfillment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderShippingFulfillment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderShippingFulfillment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*ManagedOrderShippingFulfillment.status.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedOrderShippingFulfillment.status.getter();
  return sub_1B74C4A2C;
}

id (*ManagedOrderShippingFulfillment.shippingType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedOrderShippingFulfillment.shippingType.getter();
  return sub_1B74D0EC0;
}

void sub_1B74D0ED8(unint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_1B72407CC(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v4 = sub_1B7800C18();

  v5 = [v3 initWithArray_];

  [v2 setLineItemObjects_];
}

void ManagedOrderShippingFulfillment.lineItems.setter(unint64_t a1)
{
  sub_1B72407CC(a1);

  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v3 = sub_1B7800C18();

  v4 = [v2 initWithArray_];

  [v1 setLineItemObjects_];
}

void (*ManagedOrderShippingFulfillment.lineItems.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedOrderShippingFulfillment.lineItems.getter();
  return sub_1B74D1084;
}

void sub_1B74D1084(unint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_1B72407CC(v4);

    v5 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
    v6 = sub_1B7800C18();

    v9 = [v5 initWithArray_];

    [v2 setLineItemObjects_];
  }

  else
  {
    sub_1B72407CC(v3);

    v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
    v8 = sub_1B7800C18();

    v9 = [v7 initWithArray_];

    [v2 setLineItemObjects_];
  }
}

uint64_t ManagedOrderShippingFulfillment.estimatedDeliveryWindowDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 estimatedDeliveryWindowDurationValue];
  if (v3)
  {
    v4 = v3;
    sub_1B7800868();

    return Duration.init(from:)(a1);
  }

  else
  {
    v6 = type metadata accessor for Duration();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t sub_1B74D1294@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 estimatedDeliveryWindowDurationValue];
  if (v3)
  {
    v4 = v3;
    sub_1B7800868();

    return Duration.init(from:)(a2);
  }

  else
  {
    v6 = type metadata accessor for Duration();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

uint64_t ManagedOrderShippingFulfillment.estimatedDeliveryWindowDuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B7205588(a1, &v10 - v5, &qword_1EB995FF0);
  v7 = type metadata accessor for Duration();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B7205418(v6, &qword_1EB995FF0);
    v8 = 0;
  }

  else
  {
    Duration.description.getter();
    sub_1B74D3A60(v6, type metadata accessor for Duration);
    v8 = sub_1B7800838();
  }

  [v2 setEstimatedDeliveryWindowDurationValue_];

  return sub_1B7205418(a1, &qword_1EB995FF0);
}

void (*ManagedOrderShippingFulfillment.estimatedDeliveryWindowDuration.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
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
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = [v1 estimatedDeliveryWindowDurationValue];
  if (v9)
  {
    v10 = v9;
    sub_1B7800868();

    Duration.init(from:)(v8);
  }

  else
  {
    v11 = type metadata accessor for Duration();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  return sub_1B74D1668;
}

void sub_1B74D1668(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    sub_1B7205588(v3, v4, &qword_1EB995FF0);
    sub_1B7205588(v4, v5, &qword_1EB995FF0);
    v6 = type metadata accessor for Duration();
    v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
    v8 = *(v2 + 8);
    if (v7 == 1)
    {
      sub_1B7205418(*(v2 + 8), &qword_1EB995FF0);
      v9 = 0;
    }

    else
    {
      Duration.description.getter();
      sub_1B74D3A60(v8, type metadata accessor for Duration);
      v9 = sub_1B7800838();
    }

    v16 = *(v2 + 24);
    v15 = *(v2 + 32);
    v18 = *(v2 + 8);
    v17 = *(v2 + 16);
    [*v2 setEstimatedDeliveryWindowDurationValue_];

    sub_1B7205418(v17, &qword_1EB995FF0);
  }

  else
  {
    v10 = *(v2 + 24);
    sub_1B7205588(v3, v10, &qword_1EB995FF0);
    v11 = type metadata accessor for Duration();
    v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
    v13 = *(v2 + 24);
    if (v12 == 1)
    {
      sub_1B7205418(*(v2 + 24), &qword_1EB995FF0);
      v14 = 0;
    }

    else
    {
      Duration.description.getter();
      sub_1B74D3A60(v13, type metadata accessor for Duration);
      v14 = sub_1B7800838();
    }

    v16 = *(v2 + 24);
    v15 = *(v2 + 32);
    v18 = *(v2 + 8);
    v17 = *(v2 + 16);
    [*v2 setEstimatedDeliveryWindowDurationValue_];
  }

  sub_1B7205418(v15, &qword_1EB995FF0);
  free(v15);
  free(v16);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t ManagedOrderShippingFulfillment.estimatedDeliveryWindow.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for Duration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = [v2 estimatedDeliveryDate];
  if (v18)
  {
    v31 = v10;
    v32 = a1;
    v19 = v18;
    sub_1B77FF928();

    v20 = *(v12 + 32);
    v20(v17, v15, v11);
    v21 = [v2 estimatedDeliveryWindowDurationValue];
    if (v21)
    {
      v22 = v21;
      sub_1B7800868();

      Duration.init(from:)(v6);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        v23 = v6;
        v24 = v31;
        sub_1B719AAB4(v23, v31, type metadata accessor for Duration);
        v25 = v32;
        v20(v32, v17, v11);
        v26 = type metadata accessor for TimeWindow(0);
        sub_1B719AAB4(v24, &v25[*(v26 + 20)], type metadata accessor for Duration);
        v27 = type metadata accessor for Order.FulfillmentWindow(0);
LABEL_10:
        swift_storeEnumTagMultiPayload();
        return (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_1B7205418(v6, &qword_1EB995FF0);
    v25 = v32;
    v20(v32, v17, v11);
    v27 = type metadata accessor for Order.FulfillmentWindow(0);
    goto LABEL_10;
  }

  v28 = type metadata accessor for Order.FulfillmentWindow(0);
  v29 = *(*(v28 - 8) + 56);

  return v29(a1, 1, 1, v28);
}

uint64_t sub_1B74D1CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1B7205588(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t ManagedOrderShippingFulfillment.estimatedDeliveryWindow.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v42 - v6;
  v43 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Order.FulfillmentWindow(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v42 - v21;
  sub_1B7205588(a1, v19, &qword_1EB990828);
  v23 = *(v9 + 48);
  if (v23(v19, 1, v8) == 1)
  {
    sub_1B7205418(v19, &qword_1EB990828);
    v24 = sub_1B77FF988();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    v25 = 0;
  }

  else
  {
    v42 = a1;
    sub_1B71B43D0(v19, v13, type metadata accessor for Order.FulfillmentWindow);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v13;
      v27 = v45;
      sub_1B719AAB4(v26, v45, type metadata accessor for TimeWindow);
      v28 = sub_1B77FF988();
      (*(*(v28 - 8) + 16))(v22, v27, v28);
      sub_1B74D3A60(v27, type metadata accessor for TimeWindow);
    }

    else
    {
      v28 = sub_1B77FF988();
      (*(*(v28 - 8) + 32))(v22, v13, v28);
    }

    sub_1B74D3A60(v19, type metadata accessor for Order.FulfillmentWindow);
    sub_1B77FF988();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v22, 0, 1, v28);
    v25 = sub_1B77FF8B8();
    (*(v29 + 8))(v22, v28);
    a1 = v42;
  }

  v30 = v47;
  [v47 setEstimatedDeliveryDate_];

  sub_1B7205588(a1, v17, &qword_1EB990828);
  if (v23(v17, 1, v8) == 1)
  {
    sub_1B7205418(v17, &qword_1EB990828);
    v31 = type metadata accessor for Duration();
    v32 = v46;
    (*(*(v31 - 8) + 56))(v46, 1, 1, v31);
  }

  else
  {
    v33 = v44;
    sub_1B71B43D0(v17, v44, type metadata accessor for Order.FulfillmentWindow);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = v46;
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v33;
      v36 = v45;
      sub_1B719AAB4(v35, v45, type metadata accessor for TimeWindow);
      sub_1B71B43D0(v36 + *(v43 + 20), v32, type metadata accessor for Duration);
      sub_1B74D3A60(v36, type metadata accessor for TimeWindow);
      v37 = type metadata accessor for Duration();
      (*(*(v37 - 8) + 56))(v32, 0, 1, v37);
    }

    else
    {
      v38 = type metadata accessor for Duration();
      (*(*(v38 - 8) + 56))(v32, 1, 1, v38);
      sub_1B74D3A60(v33, type metadata accessor for Order.FulfillmentWindow);
    }

    sub_1B74D3A60(v17, type metadata accessor for Order.FulfillmentWindow);
  }

  sub_1B7205588(v32, v5, &qword_1EB995FF0);
  v39 = type metadata accessor for Duration();
  if ((*(*(v39 - 8) + 48))(v5, 1, v39) == 1)
  {
    sub_1B7205418(v5, &qword_1EB995FF0);
    v40 = 0;
  }

  else
  {
    Duration.description.getter();
    sub_1B74D3A60(v5, type metadata accessor for Duration);
    v40 = sub_1B7800838();
  }

  [v30 setEstimatedDeliveryWindowDurationValue_];

  sub_1B7205418(a1, &qword_1EB990828);
  return sub_1B7205418(v32, &qword_1EB995FF0);
}

void (*ManagedOrderShippingFulfillment.estimatedDeliveryWindow.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  ManagedOrderShippingFulfillment.estimatedDeliveryWindow.getter(v4);
  return sub_1B74D25F8;
}

void sub_1B74D25F8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B7205588(*(a1 + 16), v2, &qword_1EB990828);
    ManagedOrderShippingFulfillment.estimatedDeliveryWindow.setter(v2);
    sub_1B7205418(v3, &qword_1EB990828);
  }

  else
  {
    ManagedOrderShippingFulfillment.estimatedDeliveryWindow.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

id static ManagedOrderShippingFulfillment.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit31ManagedOrderShippingFulfillment;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderShippingFulfillment.existingObject(with:in:)(uint64_t a1, id a2)
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

double sub_1B74D27BC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 recipientFamilyName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v2 recipientGivenName];
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

  v14 = [v2 recipientOrganizationName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1B7800868();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [v2 recipientAddress];
  v20 = 0uLL;
  if (v19)
  {
    RawAddress.init(_:)(v19, &v40);
    v20 = 0uLL;
    v31 = v41;
    v32 = v40;
    v29 = v43;
    v30 = v42;
    v27 = v45;
    v28 = v44;
    v21 = v46;
  }

  else
  {
    v21 = 0;
    v31 = 0u;
    v32 = xmmword_1B78347C0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
  }

  v33 = 1;
  v34 = v20;
  v35 = v20;
  v36 = v20;
  v37 = v20;
  v38 = v20;
  v39 = v20;
  sub_1B7205418(&v33, &qword_1EB995F40);
  *&v40 = v6;
  *(&v40 + 1) = v8;
  v41.n128_u64[0] = v11;
  v41.n128_u64[1] = v13;
  *&v42 = v16;
  *(&v42 + 1) = v18;
  v43 = v32;
  v44 = v31;
  v45 = v30;
  v46 = v29;
  v47 = v28;
  v48 = v27;
  v49 = v21;
  nullsub_1(&v40, v28);
  v22 = v47;
  *(a1 + 96) = v46;
  *(a1 + 112) = v22;
  *(a1 + 128) = v48;
  *(a1 + 144) = v49;
  v23 = v43;
  *(a1 + 32) = v42;
  *(a1 + 48) = v23;
  v24 = v45;
  *(a1 + 64) = v44;
  *(a1 + 80) = v24;
  result = *&v40;
  v26 = v41;
  *a1 = v40;
  *(a1 + 16) = v26;
  return result;
}

uint64_t sub_1B74D29C8(uint64_t *a1)
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
  sub_1B74D2A44(v6);
  return sub_1B7801B78();
}

void sub_1B74D2A44(uint64_t *a1)
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
        type metadata accessor for ManagedOrderLineItem();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B72B0A5C(v8, v9, a1, v4);
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
    sub_1B72AFCB8(0, v2, 1, a1);
  }
}

char *sub_1B74D2B48(uint64_t a1, uint64_t a2, void *a3)
{
  v119 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v108 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v112 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v106 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v110 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v109 = &v106 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v106 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v106 - v20;
  v22 = objc_allocWithZone(v3);
  v118 = a3;
  v23 = [v22 initWithContext_];
  v24 = *(a1 + 16);
  v25 = v23;
  if (v24)
  {
    v24 = sub_1B7800838();
  }

  [v23 setCarrier_];

  v26 = *(a1 + 32);
  v117 = v21;
  if (v26)
  {
    v27 = sub_1B7800838();
  }

  else
  {
    v27 = 0;
  }

  v111 = v12;
  [v23 setCarrierIdentifier_];

  v29 = *(a1 + 72);
  if (v29)
  {
    MEMORY[0x1EEE9AC00](v28);
    *(&v106 - 4) = v30;
    *(&v106 - 3) = v29;
    *(&v106 - 2) = 0x726564726FLL;
    *(&v106 - 1) = 0xE500000000000000;

    v31 = sub_1B723940C(sub_1B726357C, (&v106 - 6));
  }

  else
  {
    v31 = 0;
  }

  [v23 setNotes_];

  v32 = [v23 setStatusValue_];
  v33 = *(a1 + 56);
  v114 = v23;
  if (v33)
  {
    MEMORY[0x1EEE9AC00](v32);
    *(&v106 - 4) = v34;
    *(&v106 - 3) = v33;
    *(&v106 - 2) = 0x726564726FLL;
    *(&v106 - 1) = 0xE500000000000000;

    v35 = sub_1B723940C(sub_1B7262E4C, (&v106 - 6));

    v23 = v114;
  }

  else
  {
    v35 = 0;
  }

  v36 = v111;
  v37 = v117;
  [v23 setStatusDescription_];

  if (*(a1 + 88))
  {
    v38 = sub_1B7800838();
  }

  else
  {
    v38 = 0;
  }

  [v23 setTrackingNumber_];

  v113 = type metadata accessor for RawOrderShippingFulfillment();
  sub_1B7205588(a1 + v113[11], v37, &unk_1EB994C70);
  v39 = sub_1B77FF4F8();
  v40 = *(v39 - 8);
  v41 = 0;
  if ((*(v40 + 48))(v37, 1, v39) != 1)
  {
    v41 = sub_1B77FF3F8();
    (*(v40 + 8))(v37, v39);
  }

  [v23 setTrackingURL_];

  v42 = v113;
  v43 = a1 + v113[12];
  v44 = *(v43 + 112);
  v164[6] = *(v43 + 96);
  v164[7] = v44;
  v164[8] = *(v43 + 128);
  v165 = *(v43 + 144);
  v45 = *(v43 + 48);
  v164[2] = *(v43 + 32);
  v164[3] = v45;
  v46 = *(v43 + 80);
  v164[4] = *(v43 + 64);
  v164[5] = v46;
  v47 = *(v43 + 16);
  v164[0] = *v43;
  v164[1] = v47;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v164) == 1 || !*(&v164[0] + 1))
  {
    v48 = 0;
  }

  else
  {

    v48 = sub_1B7800838();
  }

  [v23 setRecipientFamilyName_];

  v49 = *(v43 + 112);
  v160 = *(v43 + 96);
  v161 = v49;
  v162 = *(v43 + 128);
  v163 = *(v43 + 144);
  v50 = *(v43 + 48);
  v156 = *(v43 + 32);
  v157 = v50;
  v51 = *(v43 + 80);
  v158 = *(v43 + 64);
  v159 = v51;
  v52 = *(v43 + 16);
  v154 = *v43;
  v155 = v52;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v154) == 1 || !*(&v155 + 1))
  {
    v53 = 0;
  }

  else
  {

    v53 = sub_1B7800838();
  }

  [v23 setRecipientGivenName_];

  v54 = *(v43 + 112);
  v150 = *(v43 + 96);
  v151 = v54;
  v152 = *(v43 + 128);
  v153 = *(v43 + 144);
  v55 = *(v43 + 48);
  v146 = *(v43 + 32);
  v147 = v55;
  v56 = *(v43 + 80);
  v148 = *(v43 + 64);
  v149 = v56;
  v57 = *(v43 + 16);
  v145[0] = *v43;
  v145[1] = v57;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v145) == 1 || !*(&v146 + 1))
  {
    v58 = 0;
  }

  else
  {

    v58 = sub_1B7800838();
  }

  [v23 setRecipientOrganizationName_];

  v59 = *(v43 + 112);
  v141 = *(v43 + 96);
  v142 = v59;
  v143 = *(v43 + 128);
  v144 = *(v43 + 144);
  v60 = *(v43 + 48);
  v137[2] = *(v43 + 32);
  v138 = v60;
  v61 = *(v43 + 80);
  v139 = *(v43 + 64);
  v140 = v61;
  v62 = *(v43 + 16);
  v137[0] = *v43;
  v137[1] = v62;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v137) == 1 || v138 == 1)
  {
    v63 = 0;
  }

  else
  {
    *&v135[8] = v142;
    *&v135[10] = v143;
    v135[12] = v144;
    *v135 = v138;
    *&v135[2] = v139;
    *&v135[4] = v140;
    *&v135[6] = v141;
    sub_1B74BA2BC();
    *&v132[64] = v142;
    *&v132[80] = v143;
    *&v132[96] = v144;
    *v132 = v138;
    *&v132[16] = v139;
    *&v132[32] = v140;
    *&v132[48] = v141;
    sub_1B74C6B2C(v135, v120);
    v63 = CNMutablePostalAddress.init(rawAddress:)(v132);
  }

  [v23 setRecipientAddress_];

  v64 = *a1;
  v65 = *(*a1 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  if (!v65)
  {
LABEL_43:
    sub_1B72407CC(v66);

    v85 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
    v86 = sub_1B7800C18();

    v87 = [v85 initWithArray_];

    [v23 setLineItemObjects_];
    v88 = v107;
    sub_1B7205588(a1 + v42[13], v107, &qword_1EB98EBD0);
    v89 = sub_1B77FF988();
    v90 = *(v89 - 8);
    v91 = *(v90 + 48);
    v92 = 0;
    if (v91(v88, 1, v89) != 1)
    {
      v92 = sub_1B77FF8B8();
      (*(v90 + 8))(v88, v89);
    }

    [v114 setEstimatedDeliveryDate_];

    sub_1B7205588(a1 + v42[14], v36, &qword_1EB995FF0);
    v93 = v112;
    sub_1B7205588(v36, v112, &qword_1EB995FF0);
    v94 = v93;
    v95 = v108;
    sub_1B7205588(v94, v108, &qword_1EB995FF0);
    v96 = type metadata accessor for Duration();
    if ((*(*(v96 - 8) + 48))(v95, 1, v96) == 1)
    {
      sub_1B7205418(v95, &qword_1EB995FF0);
      v97 = 0;
    }

    else
    {
      Duration.description.getter();
      sub_1B74D3A60(v95, type metadata accessor for Duration);
      v97 = sub_1B7800838();
    }

    v98 = v109;
    [v114 setEstimatedDeliveryWindowDurationValue_];

    sub_1B7205418(v112, &qword_1EB995FF0);
    v99 = v113;
    sub_1B7205588(a1 + v113[15], v98, &qword_1EB98EBD0);
    if (v91(v98, 1, v89) == 1)
    {
      v100 = 0;
    }

    else
    {
      v100 = sub_1B77FF8B8();
      (*(v90 + 8))(v98, v89);
    }

    v101 = v114;
    [v114 setDeliveryDate_];

    v102 = sub_1B7800838();
    [v101 setFulfillmentIdentifier_];

    v103 = v110;
    sub_1B7205588(a1 + v99[17], v110, &qword_1EB98EBD0);
    if (v91(v103, 1, v89) == 1)
    {
      v104 = 0;
    }

    else
    {
      v104 = sub_1B77FF8B8();
      (*(v90 + 8))(v103, v89);
    }

    v105 = v114;
    [v114 setShippedDate_];

    [v105 setShippingTypeValue_];
    sub_1B7205418(v36, &qword_1EB995FF0);
    sub_1B74D3A60(a1, type metadata accessor for RawOrderShippingFulfillment);
    return v105;
  }

  v106 = a1;
  v136 = MEMORY[0x1E69E7CC0];
  sub_1B7801B98();
  v67 = *(v64 + 16);
  result = type metadata accessor for ManagedOrderLineItem();
  v117 = result;
  v115 = v67;
  if (!v67)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    v66 = v136;
    a1 = v106;
    v36 = v111;
    v42 = v113;
    v23 = v114;
    goto LABEL_43;
  }

  v69 = 0;
  v70 = (v64 + 32);
  v116 = v65 - 1;
  while (v69 < *(v64 + 16))
  {
    v71 = *v70;
    v72 = v70[1];
    v73 = v70[3];
    v130[2] = v70[2];
    v130[3] = v73;
    v130[0] = v71;
    v130[1] = v72;
    v74 = v70[4];
    v75 = v70[5];
    v76 = v70[7];
    v130[6] = v70[6];
    v130[7] = v76;
    v130[4] = v74;
    v130[5] = v75;
    v77 = *v70;
    v78 = v70[1];
    v79 = v70[3];
    v124 = v70[2];
    v125 = v79;
    v122 = v77;
    v123 = v78;
    v80 = v70[4];
    v81 = v70[5];
    v82 = v70[7];
    v128 = v70[6];
    v129 = v82;
    v126 = v80;
    v127 = v81;
    memmove(v131, v70, 0x80uLL);
    *&v132[72] = v131[4];
    *&v132[88] = v131[5];
    v133 = v131[6];
    v134 = v131[7];
    *&v132[8] = v131[0];
    *&v132[24] = v131[1];
    *&v132[40] = v131[2];
    *&v132[56] = v131[3];
    *&v135[15] = v129;
    *&v135[13] = v128;
    *&v135[11] = v127;
    *&v135[9] = v126;
    *&v135[7] = v125;
    *&v135[5] = v124;
    *&v135[3] = v123;
    *v132 = v69;
    v135[0] = v69;
    *&v135[1] = v122;
    sub_1B73261F0(v130, v120);
    sub_1B73261F0(v131, v120);
    sub_1B7205418(v135, &qword_1EB995FF8);
    v83 = *v132;
    v121[4] = *&v132[72];
    v121[5] = *&v132[88];
    v121[6] = v133;
    v121[7] = v134;
    v121[0] = *&v132[8];
    v121[1] = *&v132[24];
    v121[2] = *&v132[40];
    v121[3] = *&v132[56];
    v84 = v119;

    sub_1B7205588(v132, v120, &qword_1EB995FF8);
    result = ManagedOrderLineItem.__allocating_init(_:bundle:context:)(v121, v84, v118);
    if (v83 < -32768)
    {
      goto LABEL_56;
    }

    if (v83 >= 0x8000)
    {
      goto LABEL_57;
    }

    [result setPositionIndex_];
    sub_1B7205418(v132, &qword_1EB995FF8);
    sub_1B7801B68();
    sub_1B7801BA8();
    sub_1B7801BB8();
    result = sub_1B7801B78();
    if (v116 == v69)
    {
      goto LABEL_42;
    }

    ++v69;
    v70 += 8;
    if (v115 == v69)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

double sub_1B74D3990(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1B78301C0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_1B74D3A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id ManagedInternalTransaction.__allocating_init(_:for:context:)(void *a1, void *a2, void *a3)
{
  v7 = [objc_allocWithZone(v3) initWithContext_];
  type metadata accessor for ManagedTransaction();
  v8 = v7;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = ManagedTransaction.__allocating_init(_:for:context:)(v9, v10, v11);
  [v8 setPublicTransactionObject_];

  v13 = objc_allocWithZone(type metadata accessor for ManagedTransactionActions());
  v14 = v9;
  v15 = v11;
  v16 = [v13 initWithContext_];
  _s10FinanceKit25ManagedTransactionActionsC6update_011withPaymentD0yAC_So09FKPaymentD0CtFZ_0(v16, v14);

  [v8 setActionsObject_];
  v17 = sub_1B7800838();
  v18 = [v10 mutableSetValueForKeyPath_];

  [v18 addObject_];
  _s10FinanceKit26ManagedInternalTransactionC6update_011withPaymentE026shouldUpdateRelatedObjectsyAC_So09FKPaymentE0CSbtFZ_0(v8, v14, 0);

  return v8;
}

id ManagedTransaction.__allocating_init(_:for:context:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(v4) initWithContext_];
  sub_1B77FFA08();
  v13 = sub_1B77FF9B8();
  v14 = *(v9 + 8);
  v14(v11, v8);
  [v12 setId_];

  v15 = [a2 publicAccountObject];
  v16 = [v15 id];

  sub_1B77FF9E8();
  v17 = sub_1B77FF9B8();
  v14(v11, v8);
  [v12 setAccountId_];

  v18 = [a1 transactionDescription];
  if (!v18)
  {
    sub_1B7800868();
    v18 = sub_1B7800838();
  }

  [v12 setOriginalTransactionDescription_];

  _s10FinanceKit18ManagedTransactionC6update_011withPaymentD0yAC_So09FKPaymentD0CtFZ_0(v12, a1);
  return v12;
}

id ManagedTransactionActions.__allocating_init(_:context:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  _s10FinanceKit25ManagedTransactionActionsC6update_011withPaymentD0yAC_So09FKPaymentD0CtFZ_0(v5, a1);

  return v5;
}

void _s10FinanceKit25ManagedTransactionActionsC6update_011withPaymentD0yAC_So09FKPaymentD0CtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v77 = &v74 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v74 = &v74 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v74 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v74 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v74 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v74 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v74 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v74 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v74 - v28;
  v30 = [a2 actions];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 transferFundsURL];

    if (v32)
    {
      sub_1B77FF478();

      v33 = sub_1B77FF4F8();
      (*(*(v33 - 8) + 56))(v27, 0, 1, v33);
    }

    else
    {
      v33 = sub_1B77FF4F8();
      (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
    }

    sub_1B726A728(v27, v29);
    sub_1B77FF4F8();
    v36 = *(v33 - 8);
    v35 = 0;
    if ((*(v36 + 48))(v29, 1, v33) != 1)
    {
      v35 = sub_1B77FF3F8();
      (*(v36 + 8))(v29, v33);
    }
  }

  else
  {
    v34 = sub_1B77FF4F8();
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
    v35 = 0;
  }

  [a1 setTransferFunds_];

  v37 = [a2 actions];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 payNowURL];

    if (v39)
    {
      sub_1B77FF478();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v44 = sub_1B77FF4F8();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v21, v40, 1, v44);
    sub_1B726A728(v21, v24);
    v46 = (*(v45 + 48))(v24, 1, v44);
    v42 = 0;
    v43 = v75;
    if (v46 != 1)
    {
      v42 = sub_1B77FF3F8();
      (*(v45 + 8))(v24, v44);
    }
  }

  else
  {
    v41 = sub_1B77FF4F8();
    (*(*(v41 - 8) + 56))(v24, 1, 1, v41);
    v42 = 0;
    v43 = v75;
  }

  [a1 setPayNow_];

  v47 = [a2 actions];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 digitalServicingURL];

    v50 = v76;
    if (v49)
    {
      sub_1B77FF478();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v54 = sub_1B77FF4F8();
    v55 = *(v54 - 8);
    (*(v55 + 56))(v15, v51, 1, v54);
    sub_1B726A728(v15, v18);
    v53 = 0;
    if ((*(v55 + 48))(v18, 1, v54) != 1)
    {
      v53 = sub_1B77FF3F8();
      (*(v55 + 8))(v18, v54);
    }
  }

  else
  {
    v52 = sub_1B77FF4F8();
    (*(*(v52 - 8) + 56))(v18, 1, 1, v52);
    v53 = 0;
    v50 = v76;
  }

  [a1 setDigitalServicing_];

  v56 = [a2 actions];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 postInstallmentURL];

    if (v58)
    {
      v59 = v74;
      sub_1B77FF478();

      v60 = 0;
    }

    else
    {
      v60 = 1;
      v59 = v74;
    }

    v63 = sub_1B77FF4F8();
    v64 = *(v63 - 8);
    (*(v64 + 56))(v59, v60, 1, v63);
    sub_1B726A728(v59, v43);
    v62 = 0;
    if ((*(v64 + 48))(v43, 1, v63) != 1)
    {
      v62 = sub_1B77FF3F8();
      (*(v64 + 8))(v43, v63);
    }
  }

  else
  {
    v61 = sub_1B77FF4F8();
    (*(*(v61 - 8) + 56))(v43, 1, 1, v61);
    v62 = 0;
  }

  [a1 setPostInstallment_];

  v65 = [a2 actions];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 redeemRewardsURL];

    v68 = v77;
    if (v67)
    {
      sub_1B77FF478();

      v69 = 0;
    }

    else
    {
      v69 = 1;
    }

    v72 = sub_1B77FF4F8();
    v73 = *(v72 - 8);
    (*(v73 + 56))(v50, v69, 1, v72);
    sub_1B726A728(v50, v68);
    v71 = 0;
    if ((*(v73 + 48))(v68, 1, v72) != 1)
    {
      v71 = sub_1B77FF3F8();
      (*(v73 + 8))(v68, v72);
    }
  }

  else
  {
    v70 = sub_1B77FF4F8();
    (*(*(v70 - 8) + 56))(v77, 1, 1, v70);
    v71 = 0;
  }

  [a1 setRedeemRewards_];
}

id _s10FinanceKit18ManagedTransactionC6update_011withPaymentD0yAC_So09FKPaymentD0CtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v54 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - v7;
  v9 = [a2 amount];
  v10 = [v9 decimal];

  v11 = sub_1B7801678();
  v13 = v12;
  v15 = v14;

  v16 = [a2 amount];
  v17 = [v16 currency];

  v18 = sub_1B7800868();
  v20 = v19;

  CurrencyAmount.init(_:currencyCode:)(v11, v13, v15, v18, v20, v59);
  v57 = *v59;
  v58 = *&v59[16];
  v21 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [a1 setAmount_];

  v22 = sub_1B7800838();

  [a1 setCurrency_];

  v23 = [a2 foreignAmount];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 decimal];
    [v25 decimalValue];
    v26 = *&v59[16];
    v27 = *&v59[8];
    v28 = *v59;

    v29 = [v24 currency];
    v30 = sub_1B7800868();
    v32 = v31;

    CurrencyAmount.init(_:currencyCode:)(v28, v27, v26, v30, v32, v59);
    LODWORD(v29) = *v59;
    v33 = v60;
    v53 = *&v59[4];
    v34 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *v59 = v29;
    *&v59[4] = v53;
    v35 = [v34 initWithDecimal_];
  }

  else
  {
    v35 = 0;
    v33 = 0;
  }

  [a1 setForeignAmount_];

  if (v33)
  {
    v36 = sub_1B7800838();
  }

  else
  {
    v36 = 0;
  }

  [a1 setForeignCurrency_];

  v37 = [a2 foreignCurrencyExchangeRate];
  [a1 setForeignCurrencyExchangeRate_];

  v38 = [a2 transactionDescription];
  if (!v38)
  {
    sub_1B7800868();
    v38 = sub_1B7800838();
  }

  [a1 setTransactionDescription_];

  v39 = &off_1E7CAF000;
  v40 = [a2 creditDebitIndicator];
  v41 = v55;
  if (v40)
  {
    v43 = v56;
    if (v40 != 1)
    {
      goto LABEL_26;
    }

    v42 = 1;
  }

  else
  {
    v42 = 0;
    v43 = v56;
  }

  [a1 setCreditDebitIndicatorValue_];
  TransactionType.init(_:)([a2 type], v59);
  [a1 setTransactionTypeValue_];
  v44 = [a2 status];
  if (v44 > 8)
  {
    v45 = 3;
  }

  else
  {
    v45 = asc_1B7882201[v44];
  }

  [a1 setStatusValue_];
  v46 = [a2 transactionDate];
  sub_1B77FF928();

  v39 = sub_1B77FF8B8();
  v47 = *(v41 + 8);
  v47(v8, v43);
  [a1 setTransactionDate_];

  v48 = [a2 transactionStatusChangedDate];
  if (v48)
  {
    v39 = v54;
    v49 = v48;
    sub_1B77FF928();

    v50 = sub_1B77FF8B8();
    v47(v39, v43);
  }

  else
  {
    v50 = 0;
  }

  [a1 setPostedDate_];

  if (![a2 merchantCategoryCode])
  {
    goto LABEL_23;
  }

  v51 = [a2 merchantCategoryCode];
  if (v51 >= -32768)
  {
    if (v51 < 0x8000)
    {
      return [a1 setMerchantCategoryCodeValue_];
    }

    __break(1u);
LABEL_23:
    LOWORD(v51) = -1;
    return [a1 setMerchantCategoryCodeValue_];
  }

  __break(1u);
LABEL_26:
  *v59 = 0;
  *&v59[8] = 0xE000000000000000;
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000030, 0x80000001B78821B0);
  *&v57 = [a2 v39[171]];
  type metadata accessor for FKCreditDebitIndicator(0);
  sub_1B7801C48();
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t _s10FinanceKit26ManagedInternalTransactionC6update_011withPaymentE026shouldUpdateRelatedObjectsyAC_So09FKPaymentE0CSbtFZ_0(void *a1, void *a2, int a3)
{
  v67 = a3;
  v5 = sub_1B77FFB08();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFC88();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FED28();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v65 - v15;
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v65 - v22;
  v24 = [a2 transactionId];
  if (!v24)
  {
    sub_1B7800868();
    v24 = sub_1B7800838();
  }

  [a1 setTransactionId_];

  [a1 setIsTransactionIDStable_];
  v25 = [a2 paymentHash];
  [a1 setPaymentHash_];

  [a1 setSourceValue_];
  v26 = [a2 transactionStatusChangedDate];
  v68 = a2;
  if (v26)
  {
    v27 = v26;
    sub_1B77FF928();

    v28 = *(v18 + 32);
    v29 = v17;
    v30 = v18;
    v28(v16, v21, v29);
    (*(v18 + 56))(v16, 0, 1, v29);
    v28(v23, v16, v29);
  }

  else
  {
    v31 = v17;
    v30 = v18;
    (*(v18 + 56))(v16, 1, 1, v31);
    v32 = a2;
    v29 = v31;
    v33 = [v32 transactionDate];
    sub_1B77FF928();

    if ((*(v18 + 48))(v16, 1, v29) != 1)
    {
      sub_1B71F31EC(v16);
    }
  }

  v69 = v29;
  v34 = sub_1B77FF8B8();
  v35 = *(v30 + 8);
  v70 = v30 + 8;
  v35(v23, v29);
  v71 = v35;
  [a1 setUpdatedAt_];

  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v36 = [a1 publicTransactionObject];
  v37 = [v36 transactionDate];

  sub_1B77FF928();
  ManagedInternalTransaction.MonthYearFormatter.format(_:)(v21);
  v35(v21, v29);
  sub_1B74D5870(v13);
  v38 = sub_1B7800838();

  [a1 setMonthAndYear_];

  v40 = v72;
  v39 = v73;
  v41 = v74;
  (*(v73 + 104))(v72, *MEMORY[0x1E6969830], v74);
  v42 = v75;
  sub_1B77FFB18();
  (*(v39 + 8))(v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v43 = sub_1B77FFC68();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1B780D870;
  v48 = v47 + v46;
  v49 = *(v44 + 104);
  v49(v48, *MEMORY[0x1E6969A68], v43);
  v49(v48 + v45, *MEMORY[0x1E6969A20], v43);
  v49(v48 + 2 * v45, *MEMORY[0x1E6969A48], v43);
  sub_1B7545E58(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = [a1 publicTransactionObject];
  v51 = [v50 transactionDate];

  sub_1B77FF928();
  v52 = v78;
  sub_1B77FFB68();

  v71(v21, v69);
  (*(v76 + 8))(v42, v77);
  result = sub_1B77FEC58();
  if (v54)
  {
    v55 = 0;
  }

  else
  {
    v55 = result;
  }

  if (v55 < -32768)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v55 >= 0x8000)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [a1 setYear_];
  result = sub_1B77FEBE8();
  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = result;
  }

  if (v57 < -32768)
  {
    goto LABEL_27;
  }

  if (v57 >= 0x8000)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [a1 setWeekOfMonth_];
  result = sub_1B77FEC08();
  if (v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = result;
  }

  if (v59 < -32768)
  {
    goto LABEL_29;
  }

  if (v59 >= 0x8000)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  [a1 setDay_];
  v60 = v68;
  [a1 setHasNotificationServiceData_];
  v61 = [v60 altDSID];
  [a1 setAltDSID_];

  v62 = [v60 serviceIdentifier];
  [a1 setPkServiceIdentifier_];

  if (v67)
  {
    v63 = [a1 actionsObject];
    _s10FinanceKit25ManagedTransactionActionsC6update_011withPaymentD0yAC_So09FKPaymentD0CtFZ_0(v63, v60);

    v64 = [a1 publicTransactionObject];
    _s10FinanceKit18ManagedTransactionC6update_011withPaymentD0yAC_So09FKPaymentD0CtFZ_0(v64, v60);
  }

  return (*(v65 + 8))(v52, v66);
}

uint64_t sub_1B74D5870(uint64_t a1)
{
  v2 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B74D593C@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10FinanceKit26ManagedOrderShippingStatusO8rawValueACSgs5Int16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s10FinanceKit26ManagedOrderShippingStatusO8rawValueACSgs5Int16V_tcfC_0(uint64_t result)
{
  if ((result & 0xFFF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1B74D5980()
{
  result = qword_1EB996078;
  if (!qword_1EB996078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996078);
  }

  return result;
}

unint64_t static ManagedPredictedTransaction.existingPredictedTransaction(withID:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedPredictedTransaction;
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

id ManagedPredictedTransaction.update(with:relatedTransactionIDs:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1B7800838();
  v8 = [v1 valueForKeyPath_];

  if (v8)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
    sub_1B7205418(&v23, &qword_1EB98FCB0);
    v9 = [v1 managedObjectContext];
    if (v9)
    {
      v10 = v9;
      [v9 refreshObject:v1 mergeChanges:0];
    }

    sub_1B77FFA18();
    sub_1B74D75B0();
    v11 = sub_1B7800F78();
    [v2 setRelatedTransactionIDs_];

    v12 = type metadata accessor for PredictedTransaction(0);
    v13 = sub_1B7800838();
    [v2 setTransactionDescription_];

    v14 = (a1 + v12[9]);
    v23 = *v14;
    LODWORD(v24) = *(v14 + 4);
    v15 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v21 = v23;
    v22 = v24;
    v16 = [v15 initWithDecimal_];
    [v2 setAmount_];

    [v2 setCreditDebitIndicatorValue_];
    if (*(a1 + v12[11] + 40))
    {
      [v2 setAmountLowerBound_];
      [v2 setAmountUpperBound_];
    }

    else
    {
      v25 = v6;
      v18 = sub_1B7801608();
      [v2 setAmountLowerBound_];

      v6 = v25;
      v19 = sub_1B7801608();
      [v2 setAmountUpperBound_];
    }

    v20 = sub_1B77FF8B8();
    [v2 setPredictedDate_];

    sub_1B74D7608(a1 + v12[13], v6);
    ManagedPredictedTransaction.predictedDateInterval.setter(v6);
    [v2 setSourceValue_];
    [v2 setIsRecurring_];
    return [v2 setIsSuppressedByUser_];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    sub_1B7205418(&v23, &qword_1EB98FCB0);
    sub_1B74D755C();
    swift_allocError();
    return swift_willThrow();
  }
}

id ManagedPredictedTransaction.__allocating_init(_:for:relatedTransactionIDs:context:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_1B74D8530(a1, a2, a3, a4);

  return v6;
}

uint64_t PredictedTransaction.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FEA78();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v67 - v9;
  v85 = sub_1B77FF988();
  v10 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v101 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FFA18();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v98 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v67 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v67 - v21;
  v23 = [a1 accountObject];
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v23;
  v82 = v10;
  v25 = [v23 publicAccountObject];
  v26 = [v25 id];

  sub_1B77FF9E8();
  v27 = *(v13 + 32);
  v81 = v13 + 32;
  v80 = v27;
  v27(v22, v20, v12);
  v28 = [a1 id];
  sub_1B77FF9E8();

  v29 = *(v13 + 16);
  v84 = v12;
  v29(v98, v22, v12);
  v79 = [a1 isRecurring];
  v30 = [a1 transactionDescription];
  v96 = sub_1B7800868();
  v32 = v31;

  v33 = [a1 amount];
  [v33 decimalValue];
  v95 = v106;
  v94 = WORD2(v106);
  v93 = WORD3(v106);
  v92 = WORD4(v106);
  v91 = WORD5(v106);
  v90 = WORD6(v106);
  v89 = HIWORD(v106);
  v88 = *v107;
  v87 = *&v107[2];

  v34 = [a1 currency];
  v78 = sub_1B7800868();
  v77 = v35;

  ManagedPredictedTransaction.creditDebitIndicator.getter(&v105);
  v76 = v105;
  ManagedPredictedTransaction.amountRange.getter(&v106);
  v36 = [a1 predictedDate];
  sub_1B77FF928();

  v37 = v86;
  ManagedPredictedTransaction.predictedDateInterval.getter(v86);
  v38 = [a1 isSuppressedByUser];
  if (![a1 sourceValue])
  {
    v39 = v13;
    v40 = v22;
    v41 = type metadata accessor for PredictedTransaction(0);
    v42 = (a2 + v41[6]);
    *v42 = 0;
    v42[1] = 0x100000000000000;
    v43 = a2 + v41[11];
    *(v43 + 32) = 0;
    *v43 = 0u;
    *(v43 + 16) = 0u;
    *(v43 + 40) = 1;
    v44 = v41[13];
    (*(v99 + 56))(a2 + v44, 1, 1, v100);
    v45 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v45 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v71 = v44;
      v72 = v38;
      v73 = v32;
      v74 = v40;
      v75 = v39;
      v46 = v37;
      if ((v107[24] & 1) != 0 || (v47 = *&v107[8], v67 = *&v107[10], v69 = *&v107[12], v68 = *&v107[20], v48 = *&v107[4], v49 = v95 | (v94 << 32) | (v93 << 48), v50 = v92 | (v91 << 16) | (v90 << 32) | (v89 << 48), v51 = v88 | (v87 << 16), (MEMORY[0x1B8CA5940](v49, v50, v51, v106, *(&v106 + 1), *v107) & 1) == 0) && (MEMORY[0x1B8CA5940](v48 | (v47 << 32) | (v67 << 48), v69, v68, v49, v50, v51) & 1) == 0)
      {
        v52 = v83;
        sub_1B74D7608(v46, v83);
        v54 = v99;
        v53 = v100;
        if ((*(v99 + 48))(v52, 1, v100) == 1)
        {

          v55 = v84;
          (*(v75 + 8))(v74, v84);
          sub_1B7205418(v52, &qword_1EB992798);
          v56 = v85;
          v57 = v101;
LABEL_12:
          v60 = v80;
          v80(a2, v97, v55);
          v60(a2 + v41[5], v98, v55);
          *(a2 + v41[7]) = v79;
          v61 = (a2 + v41[8]);
          v62 = v73;
          *v61 = v96;
          v61[1] = v62;
          v63 = a2 + v41[9];
          LOWORD(v62) = v94;
          *v63 = v95;
          *(v63 + 4) = v62;
          LOWORD(v62) = v92;
          *(v63 + 6) = v93;
          *(v63 + 8) = v62;
          *(v63 + 10) = v91;
          *(v63 + 12) = v90;
          *(v63 + 14) = v89;
          *(v63 + 16) = v88;
          *(v63 + 18) = v87;
          *(v63 + 24) = v78;
          *(v63 + 32) = v77;
          *(a2 + v41[10]) = v76;
          v64 = *v107;
          *v43 = v106;
          *(v43 + 16) = v64;
          *(v43 + 25) = *&v107[9];
          (*(v82 + 32))(a2 + v41[12], v57, v56);
          result = sub_1B74D8918(v46, a2 + v71);
          *(a2 + v41[14]) = v72;
          return result;
        }

        v58 = v70;
        (*(v54 + 32))(v70, v52, v53);
        v57 = v101;
        v59 = sub_1B77FEA58();

        (*(v54 + 8))(v58, v53);
        v55 = v84;
        (*(v75 + 8))(v74, v84);
        v56 = v85;
        if (v59)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_18;
  }

  v103 = 0;
  v104 = 0xE000000000000000;
  sub_1B7801A78();

  v103 = 0xD00000000000001ALL;
  v104 = 0x80000001B7882220;
  v102 = [a1 sourceValue];
  v66 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v66);

LABEL_18:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

id static ManagedPredictedTransaction.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedPredictedTransaction;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

void sub_1B74D6A1C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 transactionDescription];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B74D6A74(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 relatedTransactionIDs];
  if (v3)
  {
    v4 = v3;
    sub_1B77FFA18();
    sub_1B74D75B0();
    v5 = sub_1B7800FA8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1B74D6AF0(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1B77FFA18();
    sub_1B74D75B0();
    v3 = sub_1B7800F78();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRelatedTransactionIDs_];
}

id ManagedPredictedTransaction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPredictedTransaction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPredictedTransaction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedPredictedTransaction.predictedDateInterval.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1B77FEA78();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B74D7608(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB992798);
    [v2 setPredictedDateIntervalStart_];
    [v2 setPredictedDateIntervalDuration_];
    return sub_1B7205418(a1, &qword_1EB992798);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1B77FEA48();
    v16 = sub_1B77FF8B8();
    (*(v5 + 8))(v7, v4);
    [v2 setPredictedDateIntervalStart_];

    sub_1B77FEA68();
    v17 = sub_1B7800F48();
    [v2 setPredictedDateIntervalDuration_];

    sub_1B7205418(a1, &qword_1EB992798);
    return (*(v12 + 8))(v14, v11);
  }
}

id ManagedPredictedTransaction.creditDebitIndicator.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 creditDebitIndicatorValue];
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

  [v2 creditDebitIndicatorValue];
  v6 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v6);

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

id (*ManagedPredictedTransaction.creditDebitIndicator.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedPredictedTransaction.creditDebitIndicator.getter((a1 + 8));
  return sub_1B74D7198;
}

void ManagedPredictedTransaction.amountRange.getter(uint64_t a1@<X8>)
{
  v3 = [v1 amountLowerBound];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v1 amountUpperBound];
  if (!v5)
  {

LABEL_6:
    v7 = 0;
    v8 = 0;
    v13 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  [v4 decimalValue];
  v7 = v14;
  v8 = v15;
  [v6 decimalValue];
  v9 = MEMORY[0x1B8CA5940]((HIWORD(v14) << 48) | (WORD2(v14) << 32) | v14, (WORD2(v15) << 32) | (WORD1(v15) << 16) | (HIWORD(v15) << 48) | v15, v16 | (v17 << 16), v14, v15, v16 | (v17 << 16));

  if ((v9 & 1) == 0)
  {
    v10 = 0;
    v11 = (v15 << 32) | (HIWORD(v14) << 16) | (WORD1(v15) << 48) | WORD2(v14);
    v12 = (v16 << 32) | (HIWORD(v15) << 16) | (v17 << 48) | WORD2(v15);
    v13 = v16 | (v17 << 16) | (v14 << 32);
LABEL_7:
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v13;
    *(a1 + 24) = v11;
    *(a1 + 32) = v12;
    *(a1 + 40) = v10;
    return;
  }

  __break(1u);
}

void sub_1B74D7364(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 40))
  {
    [v2 setAmountLowerBound_];

    [v2 setAmountUpperBound_];
  }

  else
  {
    v3 = sub_1B7801608();
    [v2 setAmountLowerBound_];

    v4 = sub_1B7801608();
    [v2 setAmountUpperBound_];
  }
}

void ManagedPredictedTransaction.amountRange.setter(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [v1 setAmountLowerBound_];

    [v1 setAmountUpperBound_];
  }

  else
  {
    v2 = sub_1B7801608();
    [v1 setAmountLowerBound_];

    v3 = sub_1B7801608();
    [v1 setAmountUpperBound_];
  }
}

unint64_t sub_1B74D755C()
{
  result = qword_1EB996080;
  if (!qword_1EB996080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996080);
  }

  return result;
}

unint64_t sub_1B74D75B0()
{
  result = qword_1EB99DAF0;
  if (!qword_1EB99DAF0)
  {
    sub_1B77FFA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DAF0);
  }

  return result;
}

uint64_t sub_1B74D7608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*ManagedPredictedTransaction.amountRange.modify(void *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *v3 = v1;
  ManagedPredictedTransaction.amountRange.getter((v3 + 1));
  return sub_1B74D76F0;
}

void sub_1B74D76F0(id **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((*a1)[6])
  {
    [**a1 setAmountLowerBound_];
    [v2 setAmountUpperBound_];
  }

  else
  {
    v3 = sub_1B7801608();
    [v2 setAmountLowerBound_];

    v4 = sub_1B7801608();
    [v2 setAmountUpperBound_];
  }

  free(v1);
}

double ManagedPredictedTransaction.predictedAmount.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 amount];
  [v3 decimalValue];

  v4 = [v1 currency];
  v5 = sub_1B7800868();
  v7 = v6;

  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  return result;
}

double sub_1B74D7874@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 amount];
  [v4 decimalValue];

  v5 = [v3 currency];
  v6 = sub_1B7800868();
  v8 = v7;

  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  return result;
}

void sub_1B74D7918(__int128 *a1, void **a2)
{
  v5 = *a1;
  LODWORD(v6) = *(a1 + 4);
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v2 setAmount_];

  v4 = sub_1B7800838();
  [v2 setCurrency_];
}

void ManagedPredictedTransaction.predictedAmount.setter(__int128 *a1)
{
  v4 = *a1;
  LODWORD(v5) = *(a1 + 4);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v1 setAmount_];

  v3 = sub_1B7800838();

  [v1 setCurrency_];
}

void (*ManagedPredictedTransaction.predictedAmount.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = [v2 amount];
  [v6 decimalValue];

  v7 = [v2 currency];
  v8 = sub_1B7800868();
  v10 = v9;

  *(v5 + 24) = v8;
  *(v5 + 32) = v10;
  return sub_1B74D7B40;
}

void sub_1B74D7B40(uint64_t a1, char a2)
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
    [v3 setAmount_];

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
    [v3 setAmount_];

    v11 = sub_1B7800838();

    [v3 setCurrency_];
  }

  free(v2);
}

uint64_t ManagedPredictedTransaction.predictedDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = [v2 predictedDateIntervalStart];
  if (v14)
  {
    v15 = v14;
    sub_1B77FF928();

    (*(v5 + 32))(v13, v11, v4);
    v16 = [v2 predictedDateIntervalDuration];
    if (v16)
    {
      v17 = v16;
      (*(v5 + 16))(v8, v13, v4);
      [v17 doubleValue];
      sub_1B77FEA38();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    (*(v5 + 8))(v13, v4);
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_1B77FEA78();
  return (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
}

uint64_t sub_1B74D7EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B74D7608(a1, &v6 - v3);
  return ManagedPredictedTransaction.predictedDateInterval.setter(v4);
}

void (*ManagedPredictedTransaction.predictedDateInterval.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  ManagedPredictedTransaction.predictedDateInterval.getter(v4);
  return sub_1B74D803C;
}

void sub_1B74D803C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B74D7608(v3, v2);
    ManagedPredictedTransaction.predictedDateInterval.setter(v2);
    sub_1B7205418(v3, &qword_1EB992798);
  }

  else
  {
    ManagedPredictedTransaction.predictedDateInterval.setter(v3);
  }

  free(v3);

  free(v2);
}

id ManagedPredictedTransaction.source.getter()
{
  result = [v0 sourceValue];
  if (result)
  {
    sub_1B7801A78();

    [v0 sourceValue];
    v2 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v2);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

id (*ManagedPredictedTransaction.source.modify(uint64_t a1))(id *a1)
{
  *a1 = v1;
  if (![v1 sourceValue])
  {
    return sub_1B74D82BC;
  }

  sub_1B7801A78();

  *(a1 + 8) = [v1 sourceValue];
  v4 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v4);

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t ManagedPredictedTransaction.ValidationError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

id static ManagedPredictedTransaction.existingObject(with:in:)(uint64_t a1, id a2)
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

void static ManagedPredictedTransaction.deleteAllPredictedTransactions(in:)(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v8[0] = 0;
  v4 = [a1 executeRequest:v3 error:v8];
  if (v4)
  {
    v5 = v4;
    v6 = v8[0];
  }

  else
  {
    v7 = v8[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

id sub_1B74D8530(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v34 - v8;
  v9 = [objc_allocWithZone(v4) initWithContext_];
  v10 = sub_1B77FF9B8();
  [v9 setId_];

  v11 = type metadata accessor for PredictedTransaction(0);
  v12 = a1 + v11[9];
  v40 = *v12;
  v41 = *(v12 + 16);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v9 setAmount_];

  v14 = sub_1B7800838();
  [v9 setCurrency_];

  v15 = 0;
  v16 = a1 + v11[11];
  if ((*(v16 + 40) & 1) == 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
    v19 = *v16;
    v20 = HIDWORD(*v16);
    v21 = HIWORD(*v16);
    v34 = HIDWORD(v18);
    v35 = HIWORD(v18);
    v36 = v17 >> 16;
    v22 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    LODWORD(v40) = v19;
    WORD2(v40) = v20;
    WORD3(v40) = v21;
    DWORD2(v40) = v18;
    WORD6(v40) = v34;
    HIWORD(v40) = v35;
    LOWORD(v41) = v17;
    HIWORD(v41) = v36;
    v15 = [v22 initWithDecimal_];
  }

  [v9 setAmountLowerBound_];

  if (*(v16 + 40))
  {
    v23 = 0;
  }

  else
  {
    v25 = *(v16 + 24);
    v24 = *(v16 + 32);
    v26 = *(v16 + 20);
    v35 = HIDWORD(v24);
    v36 = HIWORD(v24);
    v27 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *&v40 = __PAIR64__(v25, v26);
    WORD4(v40) = WORD2(v25);
    WORD5(v40) = HIWORD(v25);
    HIDWORD(v40) = v24;
    LOWORD(v41) = v35;
    HIWORD(v41) = v36;
    v23 = [v27 initWithDecimal_];
  }

  [v9 setAmountUpperBound_];

  [v9 setCreditDebitIndicatorValue_];
  v28 = sub_1B77FF8B8();
  [v9 setPredictedDate_];

  v29 = v37;
  sub_1B74D7608(a1 + v11[13], v37);
  ManagedPredictedTransaction.predictedDateInterval.setter(v29);
  v30 = sub_1B7800838();
  [v9 setTransactionDescription_];

  [v9 setIsRecurring_];
  [v9 setIsSuppressedByUser_];
  [v9 setSourceValue_];
  sub_1B77FFA18();
  sub_1B74D75B0();
  v31 = sub_1B7800F78();

  [v9 setRelatedTransactionIDs_];

  v32 = v39;
  [v9 setAccountObject_];

  sub_1B72A6BCC(a1);
  return v9;
}

uint64_t sub_1B74D8918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B74D898C()
{
  result = qword_1EB996088;
  if (!qword_1EB996088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996088);
  }

  return result;
}

unint64_t sub_1B74D89E4()
{
  result = qword_1EB996090;
  if (!qword_1EB996090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996090);
  }

  return result;
}

unint64_t sub_1B74D8A4C()
{
  result = qword_1EB9960A0;
  if (!qword_1EB9960A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9960A0);
  }

  return result;
}

id ManagedAbstractMapsItem.init(item:context:)(uint64_t a1, void *a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_1B74DA00C(v9, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t ManagedAbstractMapsItem.update(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1B74D98DC(v4, v1, v2, v3);
}

unint64_t ManagedAbstractMapsItem.resultProviderIdentifier.getter()
{
  v1 = [v0 resultProviderIdentifierValue];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue];

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 == 0) << 32);
}

char ManagedAbstractMapsItem.mapsCategory.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 walletCategoryValue];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 shortValue];

    LOBYTE(v3) = MapsCategory.init(rawValue:)(v5);
  }

  else
  {
    *a1 = 8;
  }

  return v3;
}

uint64_t static ManagedAbstractMapsItem.predicateForMUID(_:)(uint64_t a1)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E76D8];
  *(v2 + 16) = xmmword_1B7807CD0;
  v4 = MEMORY[0x1E69E7738];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  return sub_1B78010E8();
}

void sub_1B74D8DF4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &unk_1EB994C70);
  v11 = *a2;
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF3F8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_1B74D8F30(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 encodedStylingInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B77FF5B8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B74D8F98(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B77FF598();
  }

  v4 = v3;
  [v2 setEncodedStylingInfo_];
}

uint64_t sub_1B74D9010@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
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

void sub_1B74D90C8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &qword_1EB98EBD0);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLastProcessedDate_];
}

id ManagedAbstractMapsItem.__allocating_init(item:context:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1B74DA00C(v10, a2, v5, v6, v7);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

id ManagedAbstractMapsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAbstractMapsItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ManagedAbstractMapsItem.resultProviderIdentifier.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  }

  v3 = v2;
  [v1 setResultProviderIdentifierValue_];
}

void ManagedAbstractMapsItem.mapsCategory.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = v3;
  [v1 setWalletCategoryValue_];
}

void sub_1B74D9494(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 resultProviderIdentifierValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = v4 == 0;
}

void sub_1B74D950C(unsigned int *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  }

  v4 = v3;
  [v2 setResultProviderIdentifierValue_];
}

void (*ManagedAbstractMapsItem.resultProviderIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 resultProviderIdentifierValue];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6;
  *(a1 + 12) = v5 == 0;
  return sub_1B74D9630;
}

void sub_1B74D9630(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  }

  v3 = v2;
  [*a1 setResultProviderIdentifierValue_];
}

char sub_1B74D96B4@<W0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = [*a1 walletCategoryValue];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 shortValue];

    LOBYTE(v3) = MapsCategory.init(rawValue:)(v5);
    v6 = v8;
  }

  else
  {
    v6 = 8;
  }

  *a2 = v6;
  return v3;
}

void sub_1B74D9734(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v5 = v4;
  [v3 setWalletCategoryValue_];
}

void (*ManagedAbstractMapsItem.mapsCategory.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = a1 + 1;
  v3 = [v1 walletCategoryValue];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 shortValue];

    MapsCategory.init(rawValue:)(v5);
  }

  else
  {
    *v2 = 8;
  }

  return sub_1B74D9854;
}

void sub_1B74D9854(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = v3;
  [*a1 setWalletCategoryValue_];
}

uint64_t sub_1B74D98DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v22;
  (*(v22 + 16))(v21, a1, a3);
  v23 = (*(a4 + 16))(a3, a4);
  if ((v23 & 0x100000000) != 0)
  {
    v24 = 0;
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  }

  [a2 setResultProviderIdentifierValue_];

  (*(a4 + 24))(a3, a4);
  if (v25)
  {
    v26 = sub_1B7800838();
  }

  else
  {
    v26 = 0;
  }

  [a2 setName_];

  (*(a4 + 32))(a3, a4);
  v53 = v10;
  if (v27)
  {
    v28 = sub_1B7800838();
  }

  else
  {
    v28 = 0;
  }

  [a2 setPhoneNumber_];

  (*(a4 + 40))(a3, a4);
  v29 = sub_1B77FF4F8();
  v30 = *(v29 - 8);
  v54 = *(v30 + 48);
  v31 = 0;
  if (v54(v19, 1, v29) != 1)
  {
    v31 = sub_1B77FF3F8();
    (*(v30 + 8))(v19, v29);
  }

  [a2 setUrl_];

  (*(a4 + 48))(a3, a4);
  if (v54(v16, 1, v29) == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_1B77FF3F8();
    (*(v30 + 8))(v16, v29);
  }

  [a2 setHeroImageURL_];

  (*(a4 + 56))(a3, a4);
  if (v33)
  {
    v34 = sub_1B7800838();
  }

  else
  {
    v34 = 0;
  }

  [a2 setHeroImageAttributionName_];

  (*(a4 + 64))(&v55, a3, a4);
  if (v55 == 8)
  {
    v35 = 0;
  }

  else
  {
    v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  [a2 setWalletCategoryValue_];

  (*(a4 + 72))(a3, a4);
  if (v36)
  {
    v37 = sub_1B7800838();
  }

  else
  {
    v37 = 0;
  }

  [a2 setMapsCategoryIdentifier_];

  v38 = (*(a4 + 80))(a3, a4);
  if (v39 >> 60 == 15)
  {
    v40 = 0;
  }

  else
  {
    v41 = v38;
    v42 = v39;
    v40 = sub_1B77FF598();
    sub_1B72380B8(v41, v42);
  }

  v43 = v51;
  [a2 setEncodedStylingInfo_];

  (*(a4 + 88))(a3, a4);
  if (v54(v43, 1, v29) == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_1B77FF3F8();
    (*(v30 + 8))(v43, v29);
  }

  [a2 setBusinessChatURL_];

  v45 = v53;
  (*(a4 + 96))(a3, a4);
  v46 = sub_1B77FF988();
  v47 = *(v46 - 8);
  v48 = 0;
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {
    v48 = sub_1B77FF8B8();
    (*(v47 + 8))(v45, v46);
  }

  [a2 setLastProcessedDate_];

  return (*(v52 + 8))(v21, a3);
}

id sub_1B74DA00C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v13, a1, a4);
  v14 = [swift_getObjCClassFromMetadata() entity];
  v15 = type metadata accessor for ManagedAbstractMapsItem();
  v20.receiver = a3;
  v20.super_class = v15;
  v16 = objc_msgSendSuper2(&v20, sel_initWithEntity_insertIntoManagedObjectContext_, v14, a2);

  v17 = *(a5 + 8);
  v18 = v16;
  [v18 setMuid_];
  sub_1B74D98DC(v13, v18, a4, a5);

  (*(v11 + 8))(v13, a4);
  return v18;
}

FinanceKit::ManagedOrderStatus_optional __swiftcall ManagedOrderStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B74DA2A8()
{
  result = qword_1EB9960A8;
  if (!qword_1EB9960A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9960A8);
  }

  return result;
}

uint64_t FinanceStore.deleteOrder(with:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for FinanceStore.Message();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B74DA3B8, 0, 0);
}

uint64_t sub_1B74DA3B8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v0[17] = *(v0[10] + 24);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7396B44, 0, 0);
}

uint64_t FinanceStore.deleteOrdersForDashboardItem(year:month:)(__int16 a1, __int16 a2)
{
  *(v3 + 80) = v2;
  *(v3 + 122) = a2;
  *(v3 + 120) = a1;
  *(v3 + 88) = type metadata accessor for FinanceStore.Message();
  *(v3 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74DA4F8, 0, 0);
}

uint64_t sub_1B74DA4F8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  *(v0 + 104) = *(*(v0 + 80) + 24);
  *v1 = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B74DA578, 0, 0);
}

uint64_t sub_1B74DA578()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_1B74DA61C;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B74DA61C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B745B390;
  }

  else
  {
    v2 = sub_1B74DA738;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B74DA73C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 orderTypeIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B74DA794(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 deviceLibraryIdentifier];
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

void sub_1B74DA7FC(uint64_t a1, void **a2)
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
  [v2 setDeviceLibraryIdentifier_];
}

void sub_1B74DA86C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 pushToken];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B77FF5B8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B74DA8D4(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B77FF598();
  }

  v4 = v3;
  [v2 setPushToken_];
}

void sub_1B74DA94C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
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

Swift::Void __swiftcall ManagedOrderType.willSave()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_willSave);
  v1 = [v0 deviceLibraryIdentifier];
  if (v1 && (v1, (v2 = [v0 pushToken]) != 0))
  {
    v3 = v2;
    v4 = sub_1B77FF5B8();
    v6 = v5;

    sub_1B720A388(v4, v6);
    if ([v0 hasPushToken])
    {
      return;
    }

    v7 = 1;
  }

  else
  {
    if (([v0 hasPushToken] & 1) == 0)
    {
      return;
    }

    v7 = 0;
  }

  [v0 setHasPushToken_];
}

id ManagedOrderType.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderType.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderType.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedOrderType;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderType.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedOrderType;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

id static ManagedOrderType.existingObject(with:in:)(uint64_t a1, id a2)
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

uint64_t static ManagedOrderType.predicateForObject(with:)(uint64_t a1, uint64_t a2)
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

unint64_t static ManagedOrderType.existingOrNewObject(with:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B74DAFEC(a1, a2);
  if (!v3 && !result)
  {
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v7 = sub_1B7800838();
    [v6 setOrderTypeIdentifier_];

    return v6;
  }

  return result;
}

unint64_t sub_1B74DAFEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ManagedOrderType();
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedOrderType;
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

uint64_t RawBankConnectData.CompleteConsentRequestBody.init(redirectURI:extensionPayload:codeVerifier:fraudAssessment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1B77FF4F8();
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0);
  v16 = v15[5];
  v17 = (a7 + v15[7]);
  result = sub_1B727CBBC(a1, a7);
  v19 = (a7 + v15[6]);
  *v19 = a3;
  v19[1] = a4;
  *v17 = a5;
  v17[1] = a6;
  *(a7 + v16) = a2;
  return result;
}

uint64_t RawBankConnectData.InitiatedConsent.init(id:consentToken:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t RawBankConnectData.RevokeConsentRequestBody.init(fpanIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Consent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.Consent.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Consent.authorizedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.Consent(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.Consent.authorizedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.Consent(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.Consent.authorizedUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.Consent(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.Consent.authorizedUntil.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.Consent(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.Consent.refreshSequence.setter(uint64_t a1)
{
  result = type metadata accessor for RawBankConnectData.Consent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t RawBankConnectData.Consent.consentToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.Consent(0) + 32));

  return v1;
}

uint64_t RawBankConnectData.Consent.consentToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.Consent(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Consent.init(id:authorizedAt:authorizedUntil:refreshSequence:consentToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v13 = type metadata accessor for RawBankConnectData.Consent(0);
  v14 = v13[5];
  v15 = sub_1B77FF988();
  v16 = *(*(v15 - 8) + 32);
  v16(&a8[v14], a3, v15);
  result = (v16)(&a8[v13[6]], a4, v15);
  *&a8[v13[7]] = a5;
  v18 = &a8[v13[8]];
  *v18 = a6;
  *(v18 + 1) = a7;
  return result;
}

uint64_t sub_1B74DB934()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7A69726F68747561;
  v4 = 0x5368736572666572;
  if (v1 != 3)
  {
    v4 = 0x54746E65736E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7A69726F68747561;
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

uint64_t sub_1B74DB9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74E23B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74DBA14(uint64_t a1)
{
  v2 = sub_1B74E0BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74DBA50(uint64_t a1)
{
  v2 = sub_1B74E0BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Consent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9960B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E0BC0();
  sub_1B78023F8();
  v13 = 0;
  sub_1B7801F78();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.Consent(0);
    v12 = 1;
    sub_1B77FF988();
    sub_1B71A7100(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v11 = 2;
    sub_1B7801FC8();
    v10 = 3;
    sub_1B7801FF8();
    v9 = 4;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.Consent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9960C0);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for RawBankConnectData.Consent(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E0BC0();
  v40 = v12;
  v16 = v41;
  sub_1B78023C8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v7;
  v17 = v38;
  v46 = 0;
  *v15 = sub_1B7801DF8();
  v15[1] = v18;
  v33 = v18;
  v34 = v15;
  v45 = 1;
  v19 = sub_1B71A7100(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v20 = v36;
  v32 = v19;
  sub_1B7801E48();
  v21 = v34 + v13[5];
  v31 = *(v37 + 32);
  v31(v21, v9, v20);
  v44 = 2;
  v22 = v41;
  v32 = 0;
  sub_1B7801E48();
  v23 = v34;
  v31(v34 + v13[6], v22, v20);
  v43 = 3;
  *(v23 + v13[7]) = sub_1B7801E78();
  v42 = 4;
  v24 = v13;
  v25 = sub_1B7801DF8();
  v27 = v26;
  (*(v17 + 8))(v40, v39);
  v28 = (v23 + v24[8]);
  *v28 = v25;
  v28[1] = v27;
  sub_1B74E122C(v23, v35, type metadata accessor for RawBankConnectData.Consent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B74E1294(v23, type metadata accessor for RawBankConnectData.Consent);
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.uuid.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.uuid.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.institutionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.institutionId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.fpanIds.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.fpanIds.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.codeChallenge.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.codeChallenge.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.challengeMethod.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.challengeMethod.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.clientState.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.clientState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1B74DC57C()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 0x7453746E65696C63;
  if (v1 != 5)
  {
    v3 = 0x54746E65736E6F63;
  }

  v4 = 0x6C61684365646F63;
  if (v1 != 3)
  {
    v4 = 0x676E656C6C616863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7475746974736E69;
  if (v1 != 1)
  {
    v5 = 0x7364496E617066;
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

uint64_t sub_1B74DC688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74E2578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74DC6B0(uint64_t a1)
{
  v2 = sub_1B74E0C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74DC6EC(uint64_t a1)
{
  v2 = sub_1B74E0C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9960C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v7;
  v8 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v8;
  v9 = *(v1 + 48);
  v19 = *(v1 + 56);
  v20 = v9;
  v10 = *(v1 + 64);
  v17 = *(v1 + 72);
  v18 = v10;
  v11 = *(v1 + 88);
  v15 = *(v1 + 80);
  v16 = v11;
  HIDWORD(v14) = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E0C14();
  sub_1B78023F8();
  v33 = 0;
  v12 = v25;
  sub_1B7801F78();
  if (!v12)
  {
    v32 = 1;
    sub_1B7801F78();
    v31 = 2;
    sub_1B7801EF8();
    v30 = 3;
    sub_1B7801F78();
    v29 = 4;
    sub_1B7801F78();
    v28 = 5;
    sub_1B7801EF8();
    v27 = BYTE4(v14);
    v26 = 6;
    sub_1B74E0C68();
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  sub_1B7800798();
  sub_1B7800798();
  if (v2)
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v3 == 3)
    {
      return sub_1B7802318();
    }
  }

  else
  {
    sub_1B7802318();
    if (v3 == 3)
    {
      return sub_1B7802318();
    }
  }

  sub_1B7802318();
  sub_1B7800798();
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.InitiateConsentRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.InitiateConsentRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9960E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E0C14();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = a2;
    LOBYTE(v49[0]) = 0;
    v10 = sub_1B7801DF8();
    v12 = v11;
    v13 = v10;
    LOBYTE(v49[0]) = 1;
    *&v41 = sub_1B7801DF8();
    *(&v41 + 1) = v14;
    LOBYTE(v49[0]) = 2;
    v37 = sub_1B7801D78();
    v39 = v15;
    LOBYTE(v49[0]) = 3;
    v16 = sub_1B7801DF8();
    v40 = v17;
    v51 = 1;
    v38 = v12;
    v36 = v16;
    LOBYTE(v49[0]) = 4;
    v18 = sub_1B7801DF8();
    v20 = v19;
    v34 = v18;
    v35 = v13;
    LOBYTE(v49[0]) = 5;
    v21 = sub_1B7801D78();
    v23 = v22;
    v33 = v21;
    v52 = 6;
    sub_1B74E0CBC();
    sub_1B7801DB8();
    (*(v6 + 8))(v8, v5);
    *&v42 = v35;
    v24 = v38;
    *(&v42 + 1) = v38;
    v43 = v41;
    v25 = *(&v41 + 1);
    *&v44 = v37;
    v26 = v39;
    *(&v44 + 1) = v39;
    *&v45 = v36;
    *(&v45 + 1) = v40;
    *&v46 = v34;
    *(&v46 + 1) = v20;
    *&v47 = v33;
    *(&v47 + 1) = v23;
    v27 = v53;
    v48 = v53;
    *(v9 + 96) = v53;
    v28 = v47;
    *(v9 + 64) = v46;
    *(v9 + 80) = v28;
    v29 = v43;
    *v9 = v42;
    *(v9 + 16) = v29;
    v30 = v45;
    *(v9 + 32) = v44;
    *(v9 + 48) = v30;
    sub_1B74E0D10(&v42, v49);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v49[0] = v35;
    v49[1] = v24;
    v49[2] = v41;
    v49[3] = v25;
    v49[4] = v37;
    v49[5] = v26;
    v49[6] = v36;
    v49[7] = v40;
    v49[8] = v34;
    v49[9] = v20;
    v49[10] = v33;
    v49[11] = v23;
    v50 = v27;
    return sub_1B74E0D48(v49);
  }
}

uint64_t sub_1B74DD16C()
{
  sub_1B78022F8();
  RawBankConnectData.InitiateConsentRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B74DD1B0()
{
  sub_1B78022F8();
  RawBankConnectData.InitiateConsentRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.InitiateConsentResponse.authorizationUri.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.InitiateConsentResponse.authorizationUri.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.InitiateConsentResponse.extensionPayload.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B74DD2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001B78826D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787E480 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1B74DD3E4(uint64_t a1)
{
  v2 = sub_1B74E0D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74DD420(uint64_t a1)
{
  v2 = sub_1B74E0D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InitiateConsentResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9960F0);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E0D78();
  sub_1B78023F8();
  v13 = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
    sub_1B727C37C(&qword_1EDAF6530);
    sub_1B7801F38();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t RawBankConnectData.InitiateConsentResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996100);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E0D78();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
  v16 = 1;
  sub_1B727C37C(&qword_1EDAF6528);
  sub_1B7801DB8();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.InitiateConsentFlowType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t RawBankConnectData.InitiateConsentFlowType.rawValue.getter()
{
  v1 = 0x4E45534E4F434552;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x534E4F435F57454ELL;
  }
}

uint64_t sub_1B74DD978()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B74DDA2C()
{
  sub_1B7800798();
}

uint64_t sub_1B74DDACC()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B74DDB88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000544E45;
  v4 = 0xE900000000000054;
  v5 = 0x4E45534E4F434552;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001B7873D60;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x534E4F435F57454ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B74DDCA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E45534E4F434552;
  v4 = 0xE900000000000054;
  v5 = 0x80000001B7873D60;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001B7873D60;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x534E4F435F57454ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000544E45;
  }

  v8 = 0x4E45534E4F434552;
  if (*a2 == 1)
  {
    v5 = 0xE900000000000054;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x534E4F435F57454ELL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000544E45;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t RawBankConnectData.InitiatedConsent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.InitiatedConsent.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.InitiatedConsent.consentToken.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.InitiatedConsent.consentToken.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static RawBankConnectData.InitiatedConsent.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_1B74DDF74()
{
  if (*v0)
  {
    return 0x54746E65736E6F63;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B74DDFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54746E65736E6F63 && a2 == 0xEC0000006E656B6FLL)
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

uint64_t sub_1B74DE084(uint64_t a1)
{
  v2 = sub_1B74E0DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74DE0C0(uint64_t a1)
{
  v2 = sub_1B74E0DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InitiatedConsent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996108);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E0DCC();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.InitiatedConsent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996118);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E0DCC();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1B7801DF8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.extensionPayload.getter()
{
  type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0);
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.extensionPayload.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.codeVerifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0) + 24));

  return v1;
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.codeVerifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.fraudAssessment.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0) + 28));

  return v1;
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.fraudAssessment.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_1B74DE754()
{
  v1 = 0x7463657269646572;
  v2 = 0x6972655665646F63;
  if (*v0 != 2)
  {
    v2 = 0x7373416475617266;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1B74DE7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74E27E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74DE818(uint64_t a1)
{
  v2 = sub_1B74E11D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74DE854(uint64_t a1)
{
  v2 = sub_1B74E11D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996120);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E11D8();
  sub_1B78023F8();
  v12 = 0;
  sub_1B77FF4F8();
  sub_1B71A7100(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
  sub_1B7801F38();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
    sub_1B727C37C(&qword_1EDAF6530);
    sub_1B7801F38();
    v10[14] = 2;
    sub_1B7801F78();
    v10[13] = 3;
    sub_1B7801EF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1B7228664(v2, &v14 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1B7802318();
    sub_1B71A7100(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
    sub_1B7800768();
    (*(v5 + 8))(v7, v4);
  }

  v11 = type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0);
  v12 = *(v2 + *(v11 + 20));
  sub_1B7802318();
  if (v12)
  {
    sub_1B7223414(a1, v12);
  }

  sub_1B7800798();
  if (!*(v2 + *(v11 + 28) + 8))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();
  return sub_1B7800798();
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.CompleteConsentRequestBody.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.CompleteConsentRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996130);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v27 = type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FF4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E11D8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B7205418(v11, &unk_1EB994C70);
  }

  else
  {
    v13 = v25;
    v32 = 0;
    sub_1B71A7100(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    sub_1B7801DB8();
    sub_1B727CBBC(v6, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
    v31 = 1;
    sub_1B727C37C(&qword_1EDAF6528);
    sub_1B7801DB8();
    v14 = v27;
    *&v11[*(v27 + 20)] = v28;
    v30 = 2;
    v15 = sub_1B7801DF8();
    v16 = &v11[*(v14 + 24)];
    *v16 = v15;
    v16[1] = v17;
    v29 = 3;
    v18 = sub_1B7801D78();
    v20 = v19;
    v21 = &v11[*(v14 + 28)];
    (*(v13 + 8))(v9, v26);
    *v21 = v18;
    v21[1] = v20;
    sub_1B74E122C(v11, v24, type metadata accessor for RawBankConnectData.CompleteConsentRequestBody);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B74E1294(v11, type metadata accessor for RawBankConnectData.CompleteConsentRequestBody);
  }
}

uint64_t sub_1B74DF240()
{
  sub_1B78022F8();
  RawBankConnectData.CompleteConsentRequestBody.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t sub_1B74DF284()
{
  sub_1B78022F8();
  RawBankConnectData.CompleteConsentRequestBody.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.CompleteConsentResponse.parties.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B74DF340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 32481125921350000 && a2 == 0xE700000000000000)
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

uint64_t sub_1B74DF3C8(uint64_t a1)
{
  v2 = sub_1B74E12F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74DF404(uint64_t a1)
{
  v2 = sub_1B74E12F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.CompleteConsentResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996138);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E12F4();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996148);
  sub_1B74E139C(&qword_1EB996150, sub_1B74E1348);
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.CompleteConsentResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996160);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E12F4();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996148);
    sub_1B74E139C(&qword_1EB996168, sub_1B74E1414);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static RawBankConnectData.ConsentStatusResponse.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x524F485455414E55;
  }

  else
  {
    v3 = 0x5A49524F48545541;
  }

  if (v2)
  {
    v4 = 0xEA00000000004445;
  }

  else
  {
    v4 = 0xEC00000044455A49;
  }

  if (*a2)
  {
    v5 = 0x524F485455414E55;
  }

  else
  {
    v5 = 0x5A49524F48545541;
  }

  if (*a2)
  {
    v6 = 0xEC00000044455A49;
  }

  else
  {
    v6 = 0xEA00000000004445;
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

uint64_t sub_1B74DF8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53746E65736E6F63 && a2 == 0xED00007375746174)
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

uint64_t sub_1B74DF97C(uint64_t a1)
{
  v2 = sub_1B74E1468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74DF9B8(uint64_t a1)
{
  v2 = sub_1B74E1468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.ConsentStatusResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996178);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E1468();
  sub_1B78023F8();
  v10 = v7;
  sub_1B74E14BC();
  sub_1B7801FC8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.ConsentStatusResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996190);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E1468();
  sub_1B78023C8();
  if (!v2)
  {
    sub_1B74E1510();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.ConsentStatus.init(rawValue:)@<X0>(char *a1@<X8>)
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

uint64_t RawBankConnectData.ConsentStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0x524F485455414E55;
  }

  else
  {
    return 0x5A49524F48545541;
  }
}

uint64_t sub_1B74DFD88()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B74DFE18()
{
  sub_1B7800798();
}

uint64_t sub_1B74DFE94()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B74DFF20@<X0>(char *a1@<X8>)
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

void sub_1B74DFF80(uint64_t *a1@<X8>)
{
  v2 = 0x5A49524F48545541;
  if (*v1)
  {
    v2 = 0x524F485455414E55;
  }

  v3 = 0xEA00000000004445;
  if (*v1)
  {
    v3 = 0xEC00000044455A49;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RawBankConnectData.RevokeConsentRequestBody.fpanIds.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.RevokeConsentRequestBody.fpanIds.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static RawBankConnectData.RevokeConsentRequestBody.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_1B74E0178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7364496E617066 && a2 == 0xE700000000000000)
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

uint64_t sub_1B74E0200(uint64_t a1)
{
  v2 = sub_1B74E1564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74E023C(uint64_t a1)
{
  v2 = sub_1B74E1564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.RevokeConsentRequestBody.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9961A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E1564();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.RevokeConsentRequestBody.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t RawBankConnectData.RevokeConsentRequestBody.hashValue.getter()
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

uint64_t RawBankConnectData.RevokeConsentRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9961B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E1564();
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

uint64_t sub_1B74E0628(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9961A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74E1564();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s10FinanceKit18RawBankConnectDataO23InitiateConsentResponseV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1B78020F8(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {

        v7 = sub_1B7220360(v2, v3);

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s10FinanceKit18RawBankConnectDataO26InitiateConsentRequestBodyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v28 = *(a1 + 56);
  v29 = *(a1 + 48);
  v26 = *(a1 + 72);
  v27 = *(a1 + 64);
  v20 = *(a1 + 96);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v25 = *(a2 + 64);
  v23 = *(a1 + 88);
  v24 = *(a2 + 72);
  v18 = *(a2 + 80);
  v19 = *(a1 + 80);
  v22 = *(a2 + 88);
  v21 = *(a2 + 96);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1B78020F8() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v8 || v5 != v9) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v29 != v10 || v28 != v11) && (sub_1B78020F8() & 1) == 0 || (v27 != v25 || v26 != v24) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v23)
  {
    if (!v22 || (v19 != v18 || v23 != v22) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v20 == 3)
  {
    return v21 == 3;
  }

  if (v21 == 3)
  {
    return 0;
  }

  v13 = 0xEB00000000544E45;
  v14 = 0x534E4F435F57454ELL;
  if (v20)
  {
    if (v20 == 1)
    {
      v15 = 0x4E45534E4F434552;
      v16 = 0xE900000000000054;
    }

    else
    {
      v15 = 0xD000000000000012;
      v16 = 0x80000001B7873D60;
    }
  }

  else
  {
    v15 = 0x534E4F435F57454ELL;
    v16 = 0xEB00000000544E45;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v14 = 0x4E45534E4F434552;
      v13 = 0xE900000000000054;
    }

    else
    {
      v14 = 0xD000000000000012;
      v13 = 0x80000001B7873D60;
    }
  }

  if (v15 == v14 && v16 == v13)
  {
  }

  else
  {
    v17 = sub_1B78020F8();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO7ConsentV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for RawBankConnectData.Consent(0);
  if ((sub_1B77FF918() & 1) == 0 || (sub_1B77FF918() & 1) == 0 || *(a1 + *(v5 + 28)) != *(a2 + *(v5 + 28)))
  {
    return 0;
  }

  v6 = *(v5 + 32);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1B78020F8();
}

unint64_t sub_1B74E0BC0()
{
  result = qword_1EB9960B8;
  if (!qword_1EB9960B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9960B8);
  }

  return result;
}

unint64_t sub_1B74E0C14()
{
  result = qword_1EB9960D0;
  if (!qword_1EB9960D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9960D0);
  }

  return result;
}

unint64_t sub_1B74E0C68()
{
  result = qword_1EB9960D8;
  if (!qword_1EB9960D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9960D8);
  }

  return result;
}

unint64_t sub_1B74E0CBC()
{
  result = qword_1EB9960E8;
  if (!qword_1EB9960E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9960E8);
  }

  return result;
}

unint64_t sub_1B74E0D78()
{
  result = qword_1EB9960F8;
  if (!qword_1EB9960F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9960F8);
  }

  return result;
}

unint64_t sub_1B74E0DCC()
{
  result = qword_1EB996110;
  if (!qword_1EB996110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996110);
  }

  return result;
}

uint64_t _s10FinanceKit18RawBankConnectDataO26CompleteConsentRequestBodyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - v13;
  v15 = *(v12 + 56);
  sub_1B7228664(a1, &v34 - v13);
  sub_1B7228664(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B7228664(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B71A7100(&qword_1EB990310, MEMORY[0x1E6968FB0]);
      v18 = sub_1B7800828();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B7205418(v14, &unk_1EB994C70);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1B7205418(v14, &qword_1EB991C30);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1B7205418(v14, &unk_1EB994C70);
LABEL_10:
  v20 = type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0);
  v21 = v20[5];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = sub_1B7220360(v22, v23);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v25 = v20[6];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if (v26 == *v28 && v27 == v28[1] || (sub_1B78020F8() & 1) != 0)
  {
    v29 = v20[7];
    v30 = (a1 + v29);
    v31 = *(a1 + v29 + 8);
    v32 = (a2 + v29);
    v33 = v32[1];
    if (v31)
    {
      if (v33 && (*v30 == *v32 && v31 == v33 || (sub_1B78020F8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v33)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B74E11D8()
{
  result = qword_1EB996128;
  if (!qword_1EB996128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996128);
  }

  return result;
}