uint64_t sub_1B72A58C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id BankConnectAuthorizationSessionProvider.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_store] = a1;
  v4 = *(a1 + 16);

  v5 = [v4 newBackgroundContext];
  *&v3[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_context] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id BankConnectAuthorizationSessionProvider.init(store:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_store] = a1;
  v2 = *(a1 + 16);

  v3 = [v2 newBackgroundContext];
  *&v1[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_context] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BankConnectAuthorizationSessionProvider();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id sub_1B72A5A4C()
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v0 = *(off_1EDAF9E38 + 2);
  v1 = type metadata accessor for BankConnectAuthorizationSessionProvider();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_store] = v0;
  v3 = *(v0 + 16);
  swift_retain_n();
  v4 = [v3 newBackgroundContext];
  *&v2[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_context] = v4;
  v7.receiver = v2;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

void sub_1B72A5C0C(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC10FinanceKit39BankConnectAuthorizationSessionProvider_context];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v9[4] = sub_1B72A61F4;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B72A58C8;
  v9[3] = &block_descriptor_1;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v5 performBlock_];
  _Block_release(v7);
}

void sub_1B72A5D08(uint64_t a1, void (*a2)(id))
{
  type metadata accessor for ManagedAuthorizationSession();
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedAuthorizationSession;
  v3 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  v4 = sub_1B7801498();
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v8 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v9 = v4;
  v10 = sub_1B7801958();
  v4 = v9;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_6:
    v6 = v5;

    sub_1B72A62E4();
    v7 = v6;
    v8 = FKAuthorizationSession.init(_:)(v7);
LABEL_9:
    a2(v8);

    return;
  }

  __break(1u);
}

id BankConnectAuthorizationSessionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectAuthorizationSessionProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAuthorizationSessionProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1B72A62E4()
{
  result = qword_1EB990B50;
  if (!qword_1EB990B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB990B50);
  }

  return result;
}

id ManagedPredictedTransactionImporter.insertOrUpdatePredictedTransaction(_:relatedTransactionIDs:in:)(id a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for PredictedTransaction(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v42[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42[-v14];
  sub_1B72A685C(a2);
  if (!v3)
  {
    v47 = v10;
    type metadata accessor for ManagedPredictedTransaction();
    v16 = static ManagedPredictedTransaction.existingPredictedTransaction(withID:in:)();
    v46 = a1;
    if (v16)
    {
      a1 = v16;
      ManagedPredictedTransaction.update(with:relatedTransactionIDs:)(v46);
    }

    else
    {
      type metadata accessor for ManagedInternalAccount();
      v17 = *(v7 + 20);
      v18 = static ManagedInternalAccount.existingAccount(withPublicAccountID:in:)();
      v20 = v18;
      if (v18)
      {
        sub_1B72A6B68(v46, v15);

        v21 = a3;
        v22 = v20;
        a1 = sub_1B74D8530(v15, v20, a2, v21);
      }

      else
      {
        if (qword_1EDAFAF50 != -1)
        {
          swift_once();
        }

        v23 = sub_1B78000B8();
        __swift_project_value_buffer(v23, qword_1EDAFAF58);
        v24 = v46;
        sub_1B72A6B68(v46, v13);
        v25 = v47;
        sub_1B72A6B68(v24, v47);
        v26 = sub_1B7800098();
        v27 = sub_1B78011D8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v48 = v45;
          *v28 = 136315394;
          sub_1B77FFA18();
          v44 = v26;
          sub_1B72A6C74(&qword_1EB98F120, MEMORY[0x1E69695A8]);
          v43 = v27;
          v29 = sub_1B7802068();
          v31 = v30;
          sub_1B72A6BCC(v13);
          v32 = sub_1B71A3EF8(v29, v31, &v48);

          *(v28 + 4) = v32;
          *(v28 + 12) = 2080;
          v33 = sub_1B7802068();
          v35 = v34;
          sub_1B72A6BCC(v25);
          v36 = sub_1B71A3EF8(v33, v35, &v48);

          *(v28 + 14) = v36;
          v37 = v44;
          _os_log_impl(&dword_1B7198000, v44, v43, "Failed to save PredictedTransactionID: %s: accountNotFound: %s", v28, 0x16u);
          v38 = v45;
          swift_arrayDestroy();
          MEMORY[0x1B8CA7A40](v38, -1, -1);
          MEMORY[0x1B8CA7A40](v28, -1, -1);
        }

        else
        {

          sub_1B72A6BCC(v25);
          sub_1B72A6BCC(v13);
        }

        type metadata accessor for ManagedPredictedTransactionImporterError();
        sub_1B72A6C74(&qword_1EB990B58, type metadata accessor for ManagedPredictedTransactionImporterError);
        swift_allocError();
        a1 = v39;
        v40 = sub_1B77FFA18();
        (*(*(v40 - 8) + 16))(a1, v46 + v17, v40);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B60);
        (*(*(v41 - 8) + 56))(a1, 0, 1, v41);
        swift_willThrow();
      }
    }
  }

  return a1;
}

void sub_1B72A685C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    type metadata accessor for ManagedInternalTransaction();
    v17.receiver = swift_getObjCClassFromMetadata();
    v17.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v3 = objc_msgSendSuper2(&v17, sel_fetchRequest);
    v4 = sub_1B7800C18();
    [v3 setRelationshipKeyPathsForPrefetching_];

    sub_1B729D790();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B7807CD0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
    *(v5 + 64) = sub_1B72A6DD4();
    *(v5 + 32) = a1;

    v6 = sub_1B78010E8();
    [v3 setPredicate_];

    v7 = sub_1B7801488();
    if (!v1)
    {
      v8 = *(a1 + 16);
      if (v7 != v8)
      {
        v9 = v7;
        if (qword_1EDAFAF50 != -1)
        {
          swift_once();
        }

        v10 = sub_1B78000B8();
        __swift_project_value_buffer(v10, qword_1EDAFAF58);
        v11 = sub_1B7800098();
        v12 = sub_1B78011D8();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 134218240;
          *(v13 + 4) = v8;
          *(v13 + 12) = 2048;
          *(v13 + 14) = v9;
          _os_log_impl(&dword_1B7198000, v11, v12, "Related transaction validation failed. Expected %ld transactions but only found %ld.", v13, 0x16u);
          MEMORY[0x1B8CA7A40](v13, -1, -1);
        }

        type metadata accessor for ManagedPredictedTransactionImporterError();
        sub_1B72A6C74(&qword_1EB990B58, type metadata accessor for ManagedPredictedTransactionImporterError);
        swift_allocError();
        v15 = v14;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B60);
        (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1B72A6B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72A6BCC(uint64_t a1)
{
  v2 = type metadata accessor for PredictedTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ManagedPredictedTransactionImporterError()
{
  result = qword_1EB990B68;
  if (!qword_1EB990B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72A6C74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B72A6CE4()
{
  sub_1B72A6D3C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B72A6D3C()
{
  if (!qword_1EB990B78)
  {
    v0 = sub_1B77FFA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB990B78);
    }
  }
}

unint64_t sub_1B72A6DD4()
{
  result = qword_1EB990B88;
  if (!qword_1EB990B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990B88);
  }

  return result;
}

uint64_t sub_1B72A6E4C()
{
  v1 = 0x737473697865;
  v2 = 0x697845726577656ELL;
  if (*v0 != 2)
  {
    v2 = 0x6978457265646C6FLL;
  }

  if (*v0)
  {
    v1 = 0x646E756F46746F6ELL;
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

uint64_t sub_1B72A6ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72A9170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72A6EFC(uint64_t a1)
{
  v2 = sub_1B72A7628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72A6F38(uint64_t a1)
{
  v2 = sub_1B72A7628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72A6F80(uint64_t a1)
{
  v2 = sub_1B72A7778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72A6FBC(uint64_t a1)
{
  v2 = sub_1B72A7778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72A6FF8(uint64_t a1)
{
  v2 = sub_1B72A76D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72A7034(uint64_t a1)
{
  v2 = sub_1B72A76D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72A7070(uint64_t a1)
{
  v2 = sub_1B72A7724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72A70AC(uint64_t a1)
{
  v2 = sub_1B72A7724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72A70E8(uint64_t a1)
{
  v2 = sub_1B72A767C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72A7124(uint64_t a1)
{
  v2 = sub_1B72A767C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FinanceStore.ContainsOrderResult.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t FinanceStore.ContainsOrderResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B90);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B98);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990BA0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990BA8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990BB0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72A7628();
  sub_1B78023F8();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1B72A76D0();
      v18 = v27;
      sub_1B7801ED8();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1B72A767C();
      v18 = v30;
      sub_1B7801ED8();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1B72A7724();
    v18 = v24;
    sub_1B7801ED8();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1B72A7778();
  sub_1B7801ED8();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1B72A7628()
{
  result = qword_1EB990BB8;
  if (!qword_1EB990BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990BB8);
  }

  return result;
}

unint64_t sub_1B72A767C()
{
  result = qword_1EB990BC0;
  if (!qword_1EB990BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990BC0);
  }

  return result;
}

unint64_t sub_1B72A76D0()
{
  result = qword_1EB990BC8;
  if (!qword_1EB990BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990BC8);
  }

  return result;
}

unint64_t sub_1B72A7724()
{
  result = qword_1EB990BD0;
  if (!qword_1EB990BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990BD0);
  }

  return result;
}

unint64_t sub_1B72A7778()
{
  result = qword_1EB990BD8;
  if (!qword_1EB990BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990BD8);
  }

  return result;
}

uint64_t FinanceStore.ContainsOrderResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990BE0);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990BE8);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990BF0);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990BF8);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B72A7628();
  v15 = v46;
  sub_1B78023C8();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1B7801E98();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1B721CE50();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1B7801B18();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v28 = &type metadata for FinanceStore.ContainsOrderResult;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1B72A7724();
        v32 = v35;
        sub_1B7801D38();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1B72A7778();
        v25 = v35;
        sub_1B7801D38();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1B72A76D0();
      v31 = v35;
      sub_1B7801D38();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1B72A767C();
      v33 = v35;
      sub_1B7801D38();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t FinanceStore.containsOrder(matching:updatedDate:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for FinanceStore.Message();
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  *(v4 + 64) = *(a2 + 1);
  *(v4 + 80) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1B72A7F08, 0, 0);
}

uint64_t sub_1B72A7F08()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C08) + 48);
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  sub_1B7205588(v6, v5 + v7, &qword_1EB98EBD0);
  swift_storeEnumTagMultiPayload();

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1B72A8044;
  v9 = v0[6];
  v10 = v0[2];

  return sub_1B7270DD8(v10, v9);
}

uint64_t sub_1B72A8044()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 96) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B72A81A8, 0, 0);
}

uint64_t sub_1B72A81A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B72A820C(uint64_t a1)
{
  v2 = type metadata accessor for FinanceStore.Message();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FinanceStore.containsOrder(with:updatedDate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v17 = a3;
  v5 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C08) + 48);
  *v7 = v9;
  *(v7 + 1) = v8;
  *(v7 + 2) = v10;
  *(v7 + 3) = v11;
  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v7[v12], a2, v13);
  (*(v14 + 56))(&v7[v12], 0, 1, v13);
  swift_storeEnumTagMultiPayload();

  sub_1B72A83E8(v7, v17);
  return sub_1B72A820C(v7);
}

void sub_1B72A83E8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = sub_1B7800168();
  v18 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B73B5B58(a1, a2);
  if (v3)
  {
    v19 = v3;
    v12 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {
      sub_1B7205588(v2 + *(*v2 + 120), v8, &qword_1EB990570);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        if (qword_1EDAFAF50 != -1)
        {
          swift_once();
        }

        v13 = sub_1B78000B8();
        __swift_project_value_buffer(v13, qword_1EDAFAF58);
        v14 = sub_1B7800098();
        v15 = sub_1B78011F8();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1B7198000, v14, v15, "XPC sync call failed, retrying", v16, 2u);
          MEMORY[0x1B8CA7A40](v16, -1, -1);
        }

        sub_1B73B5B58(a1, a2);
      }

      else
      {
        sub_1B72A92DC(v8);
      }

      (*(v18 + 8))(v11, v9);
    }
  }
}

unint64_t sub_1B72A86AC()
{
  result = qword_1EB990C10;
  if (!qword_1EB990C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C10);
  }

  return result;
}

unint64_t sub_1B72A8714()
{
  result = qword_1EB990C20;
  if (!qword_1EB990C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C20);
  }

  return result;
}

unint64_t sub_1B72A87CC()
{
  result = qword_1EB990C28;
  if (!qword_1EB990C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C28);
  }

  return result;
}

unint64_t sub_1B72A8824()
{
  result = qword_1EB990C30;
  if (!qword_1EB990C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C30);
  }

  return result;
}

unint64_t sub_1B72A887C()
{
  result = qword_1EB990C38;
  if (!qword_1EB990C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C38);
  }

  return result;
}

unint64_t sub_1B72A88D4()
{
  result = qword_1EB990C40;
  if (!qword_1EB990C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C40);
  }

  return result;
}

unint64_t sub_1B72A892C()
{
  result = qword_1EB990C48;
  if (!qword_1EB990C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C48);
  }

  return result;
}

unint64_t sub_1B72A8984()
{
  result = qword_1EB990C50;
  if (!qword_1EB990C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C50);
  }

  return result;
}

unint64_t sub_1B72A89DC()
{
  result = qword_1EB990C58;
  if (!qword_1EB990C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C58);
  }

  return result;
}

unint64_t sub_1B72A8A34()
{
  result = qword_1EB990C60;
  if (!qword_1EB990C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C60);
  }

  return result;
}

unint64_t sub_1B72A8A8C()
{
  result = qword_1EB990C68;
  if (!qword_1EB990C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C68);
  }

  return result;
}

unint64_t sub_1B72A8AE4()
{
  result = qword_1EB990C70;
  if (!qword_1EB990C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C70);
  }

  return result;
}

unint64_t sub_1B72A8B3C()
{
  result = qword_1EB990C78;
  if (!qword_1EB990C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C78);
  }

  return result;
}

uint64_t sub_1B72A8BBC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = sub_1B7800168();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B73B62AC(a1);
  if (!v2)
  {
    return v11 & 1;
  }

  v20 = v2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

    return v11 & 1;
  }

  sub_1B7205588(v1 + *(*v1 + 120), v6, &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B72A92DC(v6);
    (*(v8 + 8))(v10, v7);
    goto LABEL_10;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v13 = sub_1B78000B8();
  __swift_project_value_buffer(v13, qword_1EDAFAF58);
  v14 = sub_1B7800098();
  v15 = sub_1B78011F8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1B7198000, v14, v15, "XPC sync call failed, retrying", v16, 2u);
    MEMORY[0x1B8CA7A40](v16, -1, -1);
  }

  v17 = sub_1B73B62AC(a1);
  (*(v8 + 8))(v10, v7);

  v11 = v17;
  return v11 & 1;
}

void sub_1B72A8E98(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1B7800168();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B73B8F64(a1);
  if (!v2)
  {
    return;
  }

  v17 = v2;
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

    return;
  }

  sub_1B7205588(v1 + *(*v1 + 120), v6, &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B72A92DC(v6);
    (*(v8 + 8))(v10, v7);
    goto LABEL_10;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v12 = sub_1B78000B8();
  __swift_project_value_buffer(v12, qword_1EDAFAF58);
  v13 = sub_1B7800098();
  v14 = sub_1B78011F8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B7198000, v13, v14, "XPC sync call failed, retrying", v15, 2u);
    MEMORY[0x1B8CA7A40](v15, -1, -1);
  }

  sub_1B73B8F64(a1);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B72A9170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E756F46746F6ELL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697845726577656ELL && a2 == 0xEB00000000737473 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6978457265646C6FLL && a2 == 0xEB00000000737473)
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

uint64_t sub_1B72A92DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CurrencyAmount.init(_:currencyCode:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (sub_1B78009A8() != 3)
  {
    if (qword_1EDAFAF50 != -1)
    {
      swift_once();
    }

    v12 = sub_1B78000B8();
    __swift_project_value_buffer(v12, qword_1EDAFAF58);

    v13 = sub_1B7800098();
    v14 = sub_1B78011D8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1B71A3EF8(a4, a5, &v17);
      _os_log_impl(&dword_1B7198000, v13, v14, "Attempted to create a CurrencyAmount object with invalid currencyCode: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
    }
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
}

uint64_t CurrencyAmount.currencyCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t static CurrencyAmount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if ((MEMORY[0x1B8CA5970](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t CurrencyAmount.hash(into:)()
{
  sub_1B7801688();

  return sub_1B7800798();
}

uint64_t CurrencyAmount.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B72A966C()
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B72A96E4()
{
  sub_1B7801688();

  return sub_1B7800798();
}

uint64_t sub_1B72A9738()
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B72A97AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if ((MEMORY[0x1B8CA5970](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t sub_1B72A9840()
{
  if (*v0)
  {
    return 0x79636E6572727563;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

uint64_t sub_1B72A9878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000)
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

uint64_t sub_1B72A9950(uint64_t a1)
{
  v2 = sub_1B72AA65C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72A998C(uint64_t a1)
{
  v2 = sub_1B72AA65C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72A99C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B72AAC4C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1B72A9A00()
{
  if (v0[2])
  {
    return sub_1B7800F58();
  }

  v2 = *v0;

  return v2;
}

double CurrencyAmount.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B719B06C(a1, v7);
  v10 = 0;
  CurrencyAmount.init(from:configuration:)(v7, &v10, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    result = *v8;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v9;
  }

  return result;
}

uint64_t CurrencyAmount.init(from:configuration:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C88);
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = *a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72AA65C();
  sub_1B78023C8();
  if (v3)
  {
LABEL_12:
    v38 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v13 = v43;
  v52 = 0;
  v51 = v12;
  sub_1B72AA6B0();
  v14 = sub_1B7801D58();
  v15 = v47;
  v49 = v48;
  v41 = *&v46;
  if (v48)
  {
    v16 = MEMORY[0x1B8CA5A00](v14, v46);
    LODWORD(v19) = v18;
    v20 = a1;
  }

  else
  {
    v21 = sub_1B77FFAF8();
    v22 = v8;
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v40 = sub_1B78016B8();
    v24 = v23;
    v19 = v25;
    sub_1B72AA778(v22);
    if ((v19 & 0x100000000) != 0)
    {
LABEL_7:
      v50 = 0;
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1B7801A78();

      v44 = 39;
      v45 = 0xE100000000000000;
      v27 = v49;
      if (v49)
      {
        v28 = v41;
        v29 = sub_1B7800F58();
        v31 = v30;
      }

      else
      {

        v28 = v41;
        v29 = v41;
        v31 = v15;
      }

      MEMORY[0x1B8CA4D30](v29, v31);

      sub_1B72AA704(v28, v15, v27);
      MEMORY[0x1B8CA4D30](0xD000000000000016, 0x80000001B7877650);
      sub_1B7801B18();
      swift_allocError();
      sub_1B72AA714();
      sub_1B7801AD8();

      swift_willThrow();
      (*(v43 + 8))(v11, v9);
      goto LABEL_12;
    }

    v20 = a1;
    v16 = v40;
    v17 = v24;
  }

  v26 = v16;
  v40 = v17;
  if (sub_1B7801698())
  {
    goto LABEL_7;
  }

  sub_1B72AA704(v41, v15, v49);
  LOBYTE(v44) = 1;
  v33 = sub_1B7801DF8();
  v35 = v34;
  (*(v13 + 8))(v11, v9);
  v36 = v42;
  v37 = v40;
  *v42 = v26;
  v36[1] = v37;
  *(v36 + 4) = v19;
  v36[3] = v33;
  v36[4] = v35;
  v38 = v20;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t CurrencyAmount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990CA8);
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - v4;
  v6 = *(v1 + 24);
  v9[0] = *(v1 + 32);
  v9[1] = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72AA65C();
  sub_1B78023F8();
  sub_1B78015C8();
  v12 = 0;
  v7 = v9[2];
  sub_1B7801F78();
  if (v7)
  {
    (*(v10 + 8))(v5, v3);
  }

  else
  {

    v11 = 1;
    sub_1B7801F78();
    return (*(v10 + 8))(v5, v3);
  }
}

double sub_1B72AA0B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B719B06C(a1, v7);
  v10 = 0;
  CurrencyAmount.init(from:configuration:)(v7, &v10, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    result = *v8;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v9;
  }

  return result;
}

double CurrencyAmount.init(_:currency:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  CurrencyAmount.init(_:currencyCode:)(a1, a2, a3, a4, a5, v9);
  result = *v9;
  v8 = v9[1];
  *a6 = v9[0];
  *(a6 + 16) = v8;
  *(a6 + 32) = v10;
  return result;
}

uint64_t CurrencyAmount.formatted(locale:)(uint64_t a1)
{
  v24 = a1;
  v2 = sub_1B77FFAF8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B78015B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v20 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v13 = sub_1B77FF358();
  v22 = *(v13 - 8);
  v23 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 16);
  v16 = *(v1 + 8);
  v20[0] = *v1;
  v20[1] = v16;
  sub_1B77FF348();

  sub_1B77FFA68();
  sub_1B7801588();
  sub_1B7801598();
  v17 = *(v4 + 8);
  v17(v7, v3);
  sub_1B78015A8();
  v17(v10, v3);
  sub_1B72AA7E0();
  sub_1B78016C8();
  v17(v12, v3);
  v18 = v25;
  (*(v22 + 8))(v15, v23);
  return v18;
}

uint64_t CurrencyAmount.formatted(locale:signDisplayStrategy:)(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  v3 = sub_1B77FFAF8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1B78015B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v17 = *(v2 + 16);
  v16 = *(v2 + 8);

  sub_1B77FFA68();
  sub_1B7801588();
  sub_1B7801598();
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_1B78015A8();
  v14(v11, v4);
  sub_1B72AA7E0();
  sub_1B78016C8();
  v14(v13, v4);
  return v20;
}

unint64_t sub_1B72AA65C()
{
  result = qword_1EB990C90;
  if (!qword_1EB990C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C90);
  }

  return result;
}

unint64_t sub_1B72AA6B0()
{
  result = qword_1EB990C98;
  if (!qword_1EB990C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990C98);
  }

  return result;
}

uint64_t sub_1B72AA704(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1B72AA714()
{
  result = qword_1EB990CA0;
  if (!qword_1EB990CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990CA0);
  }

  return result;
}

uint64_t sub_1B72AA778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B72AA7E0()
{
  result = qword_1EB990CB0;
  if (!qword_1EB990CB0)
  {
    sub_1B78015B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990CB0);
  }

  return result;
}

unint64_t sub_1B72AA83C()
{
  result = qword_1EB990CB8;
  if (!qword_1EB990CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990CB8);
  }

  return result;
}

uint64_t initializeWithCopy for CurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t assignWithCopy for CurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for CurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for CurrencyAmount(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CurrencyAmount(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B72AAA8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B72AAAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B72AAB48()
{
  result = qword_1EB990CC0;
  if (!qword_1EB990CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990CC0);
  }

  return result;
}

unint64_t sub_1B72AABA0()
{
  result = qword_1EB990CC8;
  if (!qword_1EB990CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990CC8);
  }

  return result;
}

unint64_t sub_1B72AABF8()
{
  result = qword_1EB990CD0;
  if (!qword_1EB990CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990CD0);
  }

  return result;
}

uint64_t sub_1B72AAC4C(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1B7802118();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t _s11PreferencesVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B72AAE6C()
{
  if (*v0)
  {
    return 0x79726576696C6564;
  }

  else
  {
    return 0x676E697070696873;
  }
}

uint64_t sub_1B72AAEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E697070696873 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xE800000000000000)
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

uint64_t sub_1B72AAF7C(uint64_t a1)
{
  v2 = sub_1B72AB394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72AAFB8(uint64_t a1)
{
  v2 = sub_1B72AB394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72AAFF4(uint64_t a1)
{
  v2 = sub_1B72AB3E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72AB030(uint64_t a1)
{
  v2 = sub_1B72AB3E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72AB06C(uint64_t a1)
{
  v2 = sub_1B72AB43C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72AB0A8(uint64_t a1)
{
  v2 = sub_1B72AB43C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ShippingType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990CD8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990CE0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990CE8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72AB394();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B72AB3E8();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B72AB43C();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B72AB394()
{
  result = qword_1EB990CF0;
  if (!qword_1EB990CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990CF0);
  }

  return result;
}

unint64_t sub_1B72AB3E8()
{
  result = qword_1EB990CF8;
  if (!qword_1EB990CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990CF8);
  }

  return result;
}

unint64_t sub_1B72AB43C()
{
  result = qword_1EB990D00;
  if (!qword_1EB990D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D00);
  }

  return result;
}

uint64_t Order.ShippingType.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t Order.ShippingType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990D08);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990D10);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990D18);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72AB394();
  v12 = v31;
  sub_1B78023C8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B7801E98();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B721CE4C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B7801B18();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v22 = &type metadata for Order.ShippingType;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B72AB3E8();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B72AB43C();
        sub_1B7801D38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1B72ABA0C()
{
  result = qword_1EB990D20;
  if (!qword_1EB990D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D20);
  }

  return result;
}

unint64_t sub_1B72ABAA4()
{
  result = qword_1EB990D28;
  if (!qword_1EB990D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D28);
  }

  return result;
}

unint64_t sub_1B72ABAFC()
{
  result = qword_1EB990D30;
  if (!qword_1EB990D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D30);
  }

  return result;
}

unint64_t sub_1B72ABB54()
{
  result = qword_1EB990D38;
  if (!qword_1EB990D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D38);
  }

  return result;
}

unint64_t sub_1B72ABBAC()
{
  result = qword_1EB990D40;
  if (!qword_1EB990D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D40);
  }

  return result;
}

unint64_t sub_1B72ABC04()
{
  result = qword_1EB990D48;
  if (!qword_1EB990D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D48);
  }

  return result;
}

unint64_t sub_1B72ABC5C()
{
  result = qword_1EB990D50;
  if (!qword_1EB990D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D50);
  }

  return result;
}

unint64_t sub_1B72ABCB4()
{
  result = qword_1EB990D58;
  if (!qword_1EB990D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990D58);
  }

  return result;
}

id sub_1B72ABD10(void *a1)
{
  result = [a1 sourceValue];
  if (result == 1)
  {
    sub_1B72AC258();
    v3 = [a1 publicTransactionObject];
    v4 = [v3 amount];

    v5 = sub_1B7801538();
    v6 = sub_1B7801558();

    return ((v6 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B72ABDC0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  result = [a1 sourceValue];
  if (result == 2)
  {
    v31 = v11;
    v32 = a2;
    sub_1B72AC258();
    v18 = [a1 publicTransactionObject];
    v19 = [v18 amount];

    v20 = sub_1B7801538();
    v21 = sub_1B7801558();

    v22 = [a1 hasNotificationServiceData];
    v23 = [a1 sharedId];
    if (v23)
    {
      v24 = v23;
      sub_1B77FF9E8();

      v25 = sub_1B77FFA18();
      (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
      sub_1B7205418(v16, &unk_1EB993A10);
      v26 = 0;
    }

    else
    {
      v27 = sub_1B77FFA18();
      v26 = 1;
      (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
      sub_1B7205418(v16, &unk_1EB993A10);
    }

    if (v21 & 1 | ((v22 & 1) == 0))
    {
      v26 = 0;
    }

    sub_1B7280900(v32, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1B7205418(v6, &qword_1EB98EBD0);
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
      v28 = [a1 updatedAt];
      v29 = v31;
      sub_1B77FF928();

      LODWORD(v28) = sub_1B77FF8C8();
      v30 = *(v8 + 8);
      v30(v29, v7);
      v30(v13, v7);
      return (v26 & v28);
    }

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B72AC1A8(void *a1)
{
  result = [a1 sourceValue];
  if (result == 2)
  {
    sub_1B72AC258();
    v3 = [a1 publicTransactionObject];
    v4 = [v3 amount];

    v5 = sub_1B7801538();
    v6 = sub_1B7801558();

    return ((v6 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B72AC258()
{
  result = qword_1EB990D60;
  if (!qword_1EB990D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB990D60);
  }

  return result;
}

void sub_1B72AC2A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sourceItemIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B72AC2FC(uint64_t a1, void **a2)
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

  [v7 setPrefixedSharedIdentifier_];
}

uint64_t ManagedCascadeExtractedOrder.orderEmails.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 orderEmailObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B72B1C5C(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(v11, &v9);
    type metadata accessor for ManagedCascadeExtractedOrderEmail();
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

  v11[0] = sub_1B725F1DC(v6);
  sub_1B72AF59C(v11);

  return v11[0];
}

void sub_1B72AC684(uint64_t a1, void **a2)
{
  v2 = *a2;

  sub_1B723B4D8(v3);

  type metadata accessor for ManagedCascadeExtractedOrderEmail();
  sub_1B72B1C5C(&qword_1EB990000, type metadata accessor for ManagedCascadeExtractedOrderEmail);
  v4 = sub_1B7800F78();

  [v2 setOrderEmailObjects_];
}

void ManagedCascadeExtractedOrder.orderEmails.setter(unint64_t a1)
{
  sub_1B723B4D8(a1);

  type metadata accessor for ManagedCascadeExtractedOrderEmail();
  sub_1B72B1C5C(&qword_1EB990000, type metadata accessor for ManagedCascadeExtractedOrderEmail);
  v2 = sub_1B7800F78();

  [v1 setOrderEmailObjects_];
}

uint64_t sub_1B72AC818(void **a1, id *a2)
{
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v38 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v38 - v16;
  v18 = *a1;
  v39 = *a2;
  v19 = [v18 dateSent];
  if (v19)
  {
    v38[0] = v9;
    v38[1] = v2;
    v20 = v19;
    sub_1B77FF928();

    v21 = *(v6 + 32);
    v21(v17, v15, v5);
    v22 = [v39 dateSent];
    if (v22)
    {
      v23 = v38[0];
      v24 = v22;
      sub_1B77FF928();

      v21(v12, v23, v5);
      v25 = sub_1B77FF8D8();
      v26 = *(v6 + 8);
      v26(v12, v5);
      v26(v17, v5);
      return v25 & 1;
    }

    (*(v6 + 8))(v17, v5);
  }

  v27 = [v18 messageID];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1B7800868();
    v31 = v30;

    v32 = [v39 messageID];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1B7800868();
      v36 = v35;

      if (v29 != v34 || v31 != v36)
      {
        v25 = sub_1B78020F8();

        return v25 & 1;
      }
    }

    v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

void (*ManagedCascadeExtractedOrder.orderEmails.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedCascadeExtractedOrder.orderEmails.getter();
  return sub_1B72ACB50;
}

void sub_1B72ACB50(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723B4D8(v3);

    type metadata accessor for ManagedCascadeExtractedOrderEmail();
    sub_1B72B1C5C(&qword_1EB990000, type metadata accessor for ManagedCascadeExtractedOrderEmail);
    v4 = sub_1B7800F78();

    [v2 setOrderEmailObjects_];
  }

  else
  {
    sub_1B723B4D8(*a1);

    type metadata accessor for ManagedCascadeExtractedOrderEmail();
    sub_1B72B1C5C(&qword_1EB990000, type metadata accessor for ManagedCascadeExtractedOrderEmail);
    v5 = sub_1B7800F78();

    [v2 setOrderEmailObjects_];
  }
}

void sub_1B72ACCD4(uint64_t a1, void **a2)
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

  [v7 setMerchantDisplayNameUpdateDate_];
}

uint64_t ManagedCascadeExtractedOrder.shippingFulfillments.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 shippingFulfillmentObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B72B1C5C(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(v11, &v9);
    type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
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

  v11[0] = sub_1B725F1F4(v6);
  sub_1B72AF618(v11, sub_1B77E6DD4, type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment);

  return v11[0];
}

void sub_1B72AD084(uint64_t a1, void **a2)
{
  v2 = *a2;

  sub_1B723B520(v3);

  type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
  sub_1B72B1C5C(&qword_1EB98FFF8, type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment);
  v4 = sub_1B7800F78();

  [v2 setShippingFulfillmentObjects_];
}

void ManagedCascadeExtractedOrder.shippingFulfillments.setter(unint64_t a1)
{
  sub_1B723B520(a1);

  type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
  sub_1B72B1C5C(&qword_1EB98FFF8, type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment);
  v2 = sub_1B7800F78();

  [v1 setShippingFulfillmentObjects_];
}

void (*ManagedCascadeExtractedOrder.shippingFulfillments.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedCascadeExtractedOrder.shippingFulfillments.getter();
  return sub_1B72AD260;
}

void sub_1B72AD260(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723B520(v3);

    type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
    sub_1B72B1C5C(&qword_1EB98FFF8, type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment);
    v4 = sub_1B7800F78();

    [v2 setShippingFulfillmentObjects_];
  }

  else
  {
    sub_1B723B520(*a1);

    type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
    sub_1B72B1C5C(&qword_1EB98FFF8, type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment);
    v5 = sub_1B7800F78();

    [v2 setShippingFulfillmentObjects_];
  }
}

uint64_t ManagedCascadeExtractedOrder.paymentTransactions.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 paymentTransactionObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B72B1C5C(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(v11, &v9);
    type metadata accessor for ManagedCascadeExtractedOrderTransaction();
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

  v11[0] = sub_1B725F20C(v6);
  sub_1B72AF618(v11, sub_1B77E6DD4, type metadata accessor for ManagedCascadeExtractedOrderTransaction);

  return v11[0];
}

void sub_1B72AD658(uint64_t a1, void **a2)
{
  v2 = *a2;

  sub_1B723B568(v3);

  type metadata accessor for ManagedCascadeExtractedOrderTransaction();
  sub_1B72B1C5C(&qword_1EB98FFF0, type metadata accessor for ManagedCascadeExtractedOrderTransaction);
  v4 = sub_1B7800F78();

  [v2 setPaymentTransactionObjects_];
}

void ManagedCascadeExtractedOrder.paymentTransactions.setter(unint64_t a1)
{
  sub_1B723B568(a1);

  type metadata accessor for ManagedCascadeExtractedOrderTransaction();
  sub_1B72B1C5C(&qword_1EB98FFF0, type metadata accessor for ManagedCascadeExtractedOrderTransaction);
  v2 = sub_1B7800F78();

  [v1 setPaymentTransactionObjects_];
}

void (*ManagedCascadeExtractedOrder.paymentTransactions.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedCascadeExtractedOrder.paymentTransactions.getter();
  return sub_1B72AD834;
}

void sub_1B72AD834(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723B568(v3);

    type metadata accessor for ManagedCascadeExtractedOrderTransaction();
    sub_1B72B1C5C(&qword_1EB98FFF0, type metadata accessor for ManagedCascadeExtractedOrderTransaction);
    v4 = sub_1B7800F78();

    [v2 setPaymentTransactionObjects_];
  }

  else
  {
    sub_1B723B568(*a1);

    type metadata accessor for ManagedCascadeExtractedOrderTransaction();
    sub_1B72B1C5C(&qword_1EB98FFF0, type metadata accessor for ManagedCascadeExtractedOrderTransaction);
    v5 = sub_1B7800F78();

    [v2 setPaymentTransactionObjects_];
  }
}

void sub_1B72AD9B8(uint64_t a1, void **a2)
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

  [v7 setOrderUpdateDate_];
}

id ManagedCascadeExtractedOrder.orderStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 orderStatusValue];
  if (result >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  return result;
}

id (*ManagedCascadeExtractedOrder.orderStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 orderStatusValue];
  if (v3 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 8) = v4;
  return sub_1B72ADBA0;
}

void sub_1B72ADBB8(uint64_t a1, void **a2)
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

  [v7 setOrderStatusUpdateDate_];
}

uint64_t sub_1B72ADCF4@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
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

void sub_1B72ADDAC(uint64_t a1, void **a2)
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

  [v7 setEarliestEmailDateSent_];
}

uint64_t ManagedCascadeExtractedOrder.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990D68);
  v5 = MEMORY[0x1EEE9AC00](v127);
  v126 = (&v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v125 = &v110 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v124 = (&v110 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v110 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v112 = &v110 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v111 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v110 - v20;
  v22 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v120 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v110 - v26;
  v28 = objc_allocWithZone(v2);
  v128 = a2;
  v29 = [v28 initWithContext_];
  v30 = type metadata accessor for CascadeExtractedOrder(0);
  v31 = v29;
  v32 = sub_1B77FF9B8();
  [v31 setPrefixedSharedIdentifier_];

  v33 = sub_1B7800838();
  [v31 setSourceItemIdentifier_];

  if (*(a1 + v30[6] + 8))
  {
    v34 = sub_1B7800838();
  }

  else
  {
    v34 = 0;
  }

  [v31 setOrderTypeIdentifier_];

  v35 = *(a1 + v30[7] + 8);
  v113 = v15;
  if (v35)
  {
    v36 = sub_1B7800838();
  }

  else
  {
    v36 = 0;
  }

  v121 = v27;
  [v31 setOrderIdentifier_];

  v37 = (a1 + v30[8]);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    v40 = sub_1B7800838();
    [v31 setOrderNumber_];

    _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(v39, v38);
    v38 = sub_1B7800838();
  }

  else
  {
    [v31 setOrderNumber_];
  }

  [v31 setSanitizedOrderNumber_];

  v41 = *(a1 + v30[9]);
  v42 = *(v41 + 16);
  countAndFlagsBits = MEMORY[0x1E69E7CC0];
  v115 = v31;
  v116 = a1;
  v114 = v30;
  if (v42)
  {
    v119 = v21;
    v132.street.value._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v123 = type metadata accessor for ManagedCascadeExtractedOrderEmail();
    v44 = v121;
    v45 = v41 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v46 = *(v120 + 72);
    v47 = v128;
    do
    {
      sub_1B72B1CA4(v45, v44, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      sub_1B72B1CA4(v44, v25, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      v48 = v47;
      sub_1B7590F74(v25, v48);

      sub_1B72B1E90(v44, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v45 += v46;
      --v42;
    }

    while (v42);
    countAndFlagsBits = v132.street.value._countAndFlagsBits;
    v31 = v115;
    a1 = v116;
    v30 = v114;
    v21 = v119;
  }

  sub_1B723B4D8(countAndFlagsBits);

  type metadata accessor for ManagedCascadeExtractedOrderEmail();
  sub_1B72B1C5C(&qword_1EB990000, type metadata accessor for ManagedCascadeExtractedOrderEmail);
  v49 = sub_1B7800F78();

  [v31 setOrderEmailObjects_];

  if (*(a1 + v30[10] + 8))
  {
    v50 = sub_1B7800838();
  }

  else
  {
    v50 = 0;
  }

  [v31 setOrderDate_];

  v51 = a1 + v30[11];
  if (*(v51 + 8))
  {
    v52 = sub_1B7800838();
  }

  else
  {
    v52 = 0;
  }

  [v31 setMerchantDisplayName_];

  v53 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  sub_1B7205588(v51 + *(v53 + 20), v21, &qword_1EB98EBD0);
  v54 = sub_1B77FF988();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  v119 = (v55 + 48);
  v117 = v55;
  v118 = v56;
  v57 = 0;
  if (v56(v21, 1, v54) != 1)
  {
    v57 = sub_1B77FF8B8();
    (*(v117 + 8))(v21, v54);
  }

  [v31 setMerchantDisplayNameUpdateDate_];

  if (*(v51 + *(v53 + 24) + 8))
  {
    v58 = sub_1B7800838();
  }

  else
  {
    v58 = 0;
  }

  [v31 setMerchantDomainName_];

  v59 = *(a1 + v30[12]);
  v60 = *(v59 + 16);
  v61 = MEMORY[0x1E69E7CC0];
  v110 = v54;
  if (v60)
  {
    v132.street.value._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v120 = type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
    v123 = *(v59 + 16);
    v62 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
    v63 = 0;
    v65 = *(v62 - 8);
    result = v62 - 8;
    v121 = v65;
    v66 = v59 + ((v121[80] + 32) & ~v121[80]);
    while (v123 != v63)
    {
      v67 = v127;
      v68 = *(v127 + 48);
      v69 = v122;
      sub_1B72B1CA4(v66 + *(v121 + 9) * v63, &v122[v68], type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
      v70 = v124;
      *v124 = v63;
      sub_1B72B1D0C(&v69[v68], v70 + *(v67 + 48));
      sub_1B7205588(v70, v125, &qword_1EB990D68);
      v71 = *(v67 + 48);
      v72 = v126;
      result = sub_1B7205588(v70, v126, &qword_1EB990D68);
      v73 = *v72;
      if (v73 < -32768)
      {
        goto LABEL_68;
      }

      if (v73 >= 0x8000)
      {
        goto LABEL_69;
      }

      ++v63;
      sub_1B72B1E90(v126 + *(v127 + 48), type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
      v74 = v128;
      sub_1B77F71F8((v125 + v71), v73, v74);

      sub_1B72B1D70(v124);
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      result = sub_1B7801B78();
      if (v60 == v63)
      {
        v61 = v132.street.value._countAndFlagsBits;
        v31 = v115;
        a1 = v116;
        v30 = v114;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_32:
  sub_1B723B520(v61);

  type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
  sub_1B72B1C5C(&qword_1EB98FFF8, type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment);
  v75 = sub_1B7800F78();

  [v31 setShippingFulfillmentObjects_];

  v76 = a1 + v30[13];
  if (*(v76 + 8))
  {
    v77 = sub_1B7800838();
  }

  else
  {
    v77 = 0;
  }

  [v31 setCustomerFullName_];

  if (*(v76 + 24))
  {
    v78 = sub_1B7800838();
  }

  else
  {
    v78 = 0;
  }

  [v31 setCustomerPhoneNumber_];

  if (*(v76 + 40))
  {
    v79 = sub_1B7800838();
  }

  else
  {
    v79 = 0;
  }

  [v31 setCustomerEmailAddress_];

  sub_1B7205540(0, &qword_1EB990D70);
  v80 = *(v76 + 64);
  v81 = *(v76 + 96);
  v136 = *(v76 + 80);
  v137 = v81;
  v82 = *(v76 + 96);
  v138 = *(v76 + 112);
  v83 = *(v76 + 64);
  v135[0] = *(v76 + 48);
  v135[1] = v83;
  v132.state = v136;
  v132.postalCode = v82;
  v132.country = *(v76 + 112);
  v132.street = v135[0];
  v132.city = v80;
  sub_1B72B1DD8(v135, v130);
  v84 = CNMutablePostalAddress.init(cascadeExtractedOrderAddress:)(&v132);
  [v31 setCustomerBillingAddress_];

  v85 = (a1 + v30[14]);
  if (v85[1])
  {
    v86 = sub_1B7800838();
  }

  else
  {
    v86 = 0;
  }

  [v31 setPaymentTotalAmount_];

  if (v85[3])
  {
    v87 = sub_1B7800838();
  }

  else
  {
    v87 = 0;
  }

  [v31 setPaymentTotalCurrencyCode_];

  v88 = v85[4];
  v89 = v88[1].value._countAndFlagsBits;
  v90 = MEMORY[0x1E69E7CC0];
  if (v89)
  {
    v134 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    result = type metadata accessor for ManagedCascadeExtractedOrderTransaction();
    v91 = v88[1].value._countAndFlagsBits;
    if (v91)
    {
      v92 = 0;
      v93 = v88 + 2;
      while (1)
      {
        v94 = v93[1];
        v132.street = *v93;
        v132.city = v94;
        v95 = v93[2];
        v96 = v93[3];
        v97 = v93[4];
        v133 = v93[5].value._countAndFlagsBits;
        v132.postalCode = v96;
        v132.country = v97;
        v132.state = v95;
        v130[2] = v93[2];
        v130[3] = v93[3];
        v130[4] = v93[4];
        v131 = v93[5].value._countAndFlagsBits;
        v130[0] = *v93;
        v130[1] = v93[1];
        if (v92 == 0x8000)
        {
          break;
        }

        v98 = v128;
        sub_1B72B1E34(&v132, &v129);
        ManagedCascadeExtractedOrderTransaction.__allocating_init(_:positionIndex:context:)(v130, v92, v98);
        sub_1B7801B68();
        sub_1B7801BA8();
        sub_1B7801BB8();
        result = sub_1B7801B78();
        if (v89 - 1 == v92)
        {
          goto LABEL_54;
        }

        v93 = (v93 + 88);
        if (v91 == ++v92)
        {
          goto LABEL_53;
        }
      }

LABEL_70:
      __break(1u);
      return result;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    v90 = v134;
    v31 = v115;
    a1 = v116;
    v30 = v114;
  }

  sub_1B723B568(v90);

  type metadata accessor for ManagedCascadeExtractedOrderTransaction();
  sub_1B72B1C5C(&qword_1EB98FFF0, type metadata accessor for ManagedCascadeExtractedOrderTransaction);
  v99 = sub_1B7800F78();

  [v31 setPaymentTransactionObjects_];

  v100 = v111;
  sub_1B7205588(a1 + v30[15], v111, &qword_1EB98EBD0);
  v101 = v110;
  v102 = v118(v100, 1, v110);
  v103 = 0;
  v105 = v112;
  v104 = v113;
  if (v102 != 1)
  {
    v103 = sub_1B77FF8B8();
    (*(v117 + 8))(v100, v101);
  }

  [v31 setOrderUpdateDate_];

  v106 = v128;
  if (*(a1 + v30[16] + 8))
  {
    v107 = sub_1B7800838();
  }

  else
  {
    v107 = 0;
  }

  [v31 setTrackedOrderIdentifier_];

  [v31 setOrderStatusValue_];
  sub_1B7205588(a1 + v30[18], v105, &qword_1EB98EBD0);
  if (v118(v105, 1, v101) == 1)
  {
    v108 = 0;
  }

  else
  {
    v108 = sub_1B77FF8B8();
    (*(v117 + 8))(v105, v101);
  }

  [v31 setOrderStatusUpdateDate_];

  sub_1B7205588(a1 + v30[19], v104, &qword_1EB98EBD0);
  if (v118(v104, 1, v101) == 1)
  {
    v109 = 0;
  }

  else
  {
    v109 = sub_1B77FF8B8();
    (*(v117 + 8))(v104, v101);
  }

  [v31 setEarliestEmailDateSent_];

  sub_1B72B1E90(a1, type metadata accessor for CascadeExtractedOrder);
  return v31;
}

id ManagedCascadeExtractedOrder.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCascadeExtractedOrder.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCascadeExtractedOrder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCascadeExtractedOrder.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit28ManagedCascadeExtractedOrder;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedCascadeExtractedOrder.existingObject(with:in:)(uint64_t a1, id a2)
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

unint64_t static ManagedCascadeExtractedOrder.existingExtractedOrder(withPrefixedSharedIdentifier:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit28ManagedCascadeExtractedOrder;
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

uint64_t static ManagedCascadeExtractedOrder.predicateForExtractedOrder(withPrefixedSharedIdentifier:)()
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

unint64_t sub_1B72AF354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC10FinanceKit28ManagedCascadeExtractedOrder;
  v12 = objc_msgSendSuper2(&v18, sel_fetchRequest);
  v13 = a6(a1, a2, a3, a4);
  [v12 setPredicate_];

  result = sub_1B7801498();
  if (v6)
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

  v16 = result;
  v17 = sub_1B7801958();
  result = v16;
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(result + 32);
LABEL_8:
    v13 = v15;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedCascadeExtractedOrder.predicateForExtractedOrders(withMessageID:)(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B72AF59C(uint64_t *a1)
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
  sub_1B72AF6AC(v6);
  return sub_1B7801B78();
}

uint64_t sub_1B72AF618(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1B72AF7B0(v10, a3);
  return sub_1B7801B78();
}

void sub_1B72AF6AC(uint64_t *a1)
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
        type metadata accessor for ManagedCascadeExtractedOrderEmail();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B72AFDB0(v8, v9, a1, v4);
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
    sub_1B72AF8BC(0, v2, 1, a1);
  }
}

void sub_1B72AF7B0(uint64_t *a1, void (*a2)(void))
{
  v4 = a1[1];
  v5 = sub_1B7802038();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v8 = sub_1B7800C78();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_1B72B0A5C(v10, v11, a1, v6);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1B72AFCB8(0, v4, 1, a1);
  }
}

void sub_1B72AF8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B77FF988();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v55 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v64 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v55 - v16;
  v56 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = (v15 + 32);
    v62 = (v15 + 8);
    v65 = v17;
    v19 = v17 + 8 * a3 - 8;
    v20 = a1 - a3;
    v21 = &off_1E7CAF000;
    v67 = (v15 + 32);
    v68 = v8;
LABEL_6:
    v58 = v19;
    v59 = a3;
    v22 = *(v65 + 8 * a3);
    v57 = v20;
    while (1)
    {
      v23 = *v19;
      v24 = v22;
      v69 = v23;
      v25 = [v24 dateSent];
      if (v25)
      {
        v66 = v24;
        v26 = v64;
        v27 = v25;
        sub_1B77FF928();

        v28 = *v18;
        v29 = v63;
        v30 = v26;
        v31 = v68;
        (*v18)(v63, v30, v68);
        v32 = v69;
        v33 = [v69 dateSent];
        if (v33)
        {
          v34 = v61;
          v35 = v29;
          v36 = v33;
          sub_1B77FF928();

          v37 = v60;
          v28(v60, v34, v68);
          LOBYTE(v36) = sub_1B77FF8D8();
          v38 = *v62;
          v39 = v37;
          v21 = &off_1E7CAF000;
          (*v62)(v39, v68);
          v40 = v35;
          v18 = v67;
          v38(v40, v68);

          if ((v36 & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
        }

        (*v62)(v29, v31);
        v24 = v66;
      }

      v41 = [v24 v21[382]];
      if (!v41)
      {

        goto LABEL_5;
      }

      v42 = v41;
      v43 = sub_1B7800868();
      v45 = v44;

      v46 = v69;
      v47 = [v69 v21[382]];
      if (!v47)
      {

        v21 = &off_1E7CAF000;
        goto LABEL_5;
      }

      v48 = v47;
      v49 = sub_1B7800868();
      v51 = v50;

      if (v43 == v49 && v45 == v51)
      {

        v18 = v67;
        v21 = &off_1E7CAF000;
LABEL_5:
        a3 = v59 + 1;
        v19 = v58 + 8;
        v20 = v57 - 1;
        if (v59 + 1 == v56)
        {
          return;
        }

        goto LABEL_6;
      }

      v52 = sub_1B78020F8();

      v18 = v67;
      v21 = &off_1E7CAF000;
      if ((v52 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      if (!v65)
      {
        __break(1u);
        return;
      }

      v53 = *v19;
      v22 = *(v19 + 8);
      *v19 = v22;
      *(v19 + 8) = v53;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_1B72AFCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 positionIndex];
      v13 = [v11 positionIndex];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B72AFDB0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = sub_1B77FF988();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v156 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v155 = &v142 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v161 = &v142 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v160 = &v142 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v148 = &v142 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v147 = &v142 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v150 = &v142 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v142 - v24;
  v157 = a3;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_123:
    v28 = *v146;
    if (!*v146)
    {
      goto LABEL_163;
    }

    a3 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v137 = a3;
    }

    else
    {
LABEL_157:
      v137 = sub_1B77E4CA4(a3);
    }

    v169 = v137;
    a3 = *(v137 + 2);
    if (a3 >= 2)
    {
      while (*v157)
      {
        v138 = *&v137[16 * a3];
        v139 = v137;
        v140 = *&v137[16 * a3 + 24];
        sub_1B72B10CC(&(*v157)[8 * v138], &(*v157)[8 * *&v137[16 * a3 + 16]], &(*v157)[8 * v140], v28);
        if (v5)
        {
          goto LABEL_134;
        }

        if (v140 < v138)
        {
          goto LABEL_150;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1B77E4CA4(v139);
        }

        if (a3 - 2 >= *(v139 + 2))
        {
          goto LABEL_151;
        }

        v141 = &v139[16 * a3];
        *v141 = v138;
        *(v141 + 1) = v140;
        v169 = v139;
        sub_1B77E4C18(a3 - 1);
        v137 = v169;
        a3 = *(v169 + 2);
        if (a3 <= 1)
        {
          goto LABEL_134;
        }
      }

      goto LABEL_161;
    }

LABEL_134:

    return;
  }

  v26 = 0;
  v162 = (v23 + 32);
  v163 = (v23 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  v28 = 0x1E7CAF000;
  v145 = a4;
  v159 = v8;
  while (1)
  {
    v29 = v26 + 1;
    v151 = v26;
    if (v26 + 1 >= v25)
    {
      v56 = &off_1E7CAF000;
    }

    else
    {
      v144 = v27;
      v30 = *v157;
      v31 = *&(*v157)[8 * v29];
      v167 = *&(*v157)[8 * v26];
      v32 = v167;
      v168 = v31;
      v28 = v31;
      a3 = v32;
      LODWORD(v165) = sub_1B72AC818(&v168, &v167);
      if (v5)
      {

        return;
      }

      v29 = v26 + 2;
      if (v26 + 2 < v25)
      {
        v158 = v26 + 2;
        v143 = 0;
        v33 = &v30[8 * v26 + 16];
        v28 = v165;
        v164 = v25;
        while (1)
        {
          a3 = *(v33 - 1);
          v34 = *v33;
          v35 = a3;
          v36 = [v34 dateSent];
          if (v36)
          {
            v37 = v150;
            v38 = v36;
            sub_1B77FF928();

            v39 = *v162;
            a3 = v149;
            (*v162)(v149, v37, v8);
            v40 = [v35 dateSent];
            if (v40)
            {
              v166 = v35;
              v41 = v148;
              v42 = a3;
              v43 = v40;
              sub_1B77FF928();

              v44 = v147;
              v39(v147, v41, v8);
              a3 = sub_1B77FF8D8();
              v45 = *v163;
              (*v163)(v44, v8);
              v46 = v42;
              v28 = v165;
              v45(v46, v8);
              v25 = v164;
              goto LABEL_23;
            }

            (*v163)(a3, v8);
            v25 = v164;
          }

          v47 = [v34 messageID];
          if (!v47)
          {

            if (v28)
            {
              goto LABEL_119;
            }

            goto LABEL_9;
          }

          a3 = v47;
          v48 = sub_1B7800868();
          v50 = v49;

          v51 = [v35 messageID];
          if (v51)
          {
            v52 = v51;
            v166 = v35;
            v53 = sub_1B7800868();
            v55 = v54;

            if (v48 == v53 && v50 == v55)
            {
              a3 = 0;
            }

            else
            {
              a3 = sub_1B78020F8();
            }

            v8 = v159;
            v28 = v165;

LABEL_23:

            if ((v28 ^ a3))
            {
              v5 = v143;
              a4 = v145;
              v29 = v158;
LABEL_27:
              v26 = v151;
              break;
            }

            goto LABEL_9;
          }

          v28 = v165;
          if (v165)
          {
LABEL_119:
            v5 = v143;
            v27 = v144;
            a4 = v145;
            v56 = &off_1E7CAF000;
            v29 = v158;
            v26 = v151;
            if (v158 < v151)
            {
              goto LABEL_154;
            }

            goto LABEL_30;
          }

LABEL_9:
          ++v33;
          if (v25 == ++v158)
          {
            v29 = v25;
            v5 = v143;
            a4 = v145;
            goto LABEL_27;
          }
        }
      }

      v27 = v144;
      v56 = &off_1E7CAF000;
      if (v165)
      {
        if (v29 < v26)
        {
          goto LABEL_154;
        }

LABEL_30:
        if (v26 < v29)
        {
          v57 = v29;
          v58 = 8 * v29 - 8;
          v59 = 8 * v26;
          v60 = v26;
          do
          {
            if (v60 != --v57)
            {
              v61 = *v157;
              if (!*v157)
              {
                goto LABEL_160;
              }

              v62 = *&v61[v59];
              *&v61[v59] = *&v61[v58];
              *&v61[v58] = v62;
            }

            ++v60;
            v58 -= 8;
            v59 += 8;
          }

          while (v60 < v57);
        }
      }
    }

    v63 = v157[1];
    v26 = v29;
    if (v29 >= v63)
    {
      goto LABEL_69;
    }

    if (__OFSUB__(v29, v151))
    {
      goto LABEL_153;
    }

    if (v29 - v151 >= a4)
    {
      v26 = v29;
LABEL_69:
      if (v26 < v151)
      {
        goto LABEL_152;
      }

      goto LABEL_70;
    }

    if (__OFADD__(v151, a4))
    {
      goto LABEL_155;
    }

    if (v151 + a4 >= v63)
    {
      v64 = v157[1];
    }

    else
    {
      v64 = v151 + a4;
    }

    if (v64 < v151)
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    if (v29 != v64)
    {
      break;
    }

    v26 = v29;
    if (v29 < v151)
    {
      goto LABEL_152;
    }

LABEL_70:
    v91 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v91;
    }

    else
    {
      v27 = sub_1B723E420(0, *(v91 + 2) + 1, 1, v91);
    }

    a3 = *(v27 + 2);
    v92 = *(v27 + 3);
    v93 = a3 + 1;
    if (a3 >= v92 >> 1)
    {
      v27 = sub_1B723E420((v92 > 1), a3 + 1, 1, v27);
    }

    *(v27 + 2) = v93;
    v94 = &v27[16 * a3];
    *(v94 + 4) = v151;
    *(v94 + 5) = v26;
    v95 = *v146;
    if (!*v146)
    {
      goto LABEL_162;
    }

    if (a3)
    {
      while (1)
      {
        v28 = v93 - 1;
        if (v93 >= 4)
        {
          break;
        }

        if (v93 == 3)
        {
          v96 = *(v27 + 4);
          v97 = *(v27 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_89:
          if (v99)
          {
            goto LABEL_141;
          }

          v112 = &v27[16 * v93];
          v114 = *v112;
          v113 = *(v112 + 1);
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_144;
          }

          v118 = &v27[16 * v28 + 32];
          v120 = *v118;
          v119 = *(v118 + 1);
          v106 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v106)
          {
            goto LABEL_147;
          }

          if (__OFADD__(v116, v121))
          {
            goto LABEL_148;
          }

          if (v116 + v121 >= v98)
          {
            if (v98 < v121)
            {
              v28 = v93 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v122 = &v27[16 * v93];
        v124 = *v122;
        v123 = *(v122 + 1);
        v106 = __OFSUB__(v123, v124);
        v116 = v123 - v124;
        v117 = v106;
LABEL_103:
        if (v117)
        {
          goto LABEL_143;
        }

        v125 = &v27[16 * v28];
        v127 = *(v125 + 4);
        v126 = *(v125 + 5);
        v106 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v106)
        {
          goto LABEL_146;
        }

        if (v128 < v116)
        {
          goto LABEL_3;
        }

LABEL_110:
        a3 = v28 - 1;
        if (v28 - 1 >= v93)
        {
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
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
          goto LABEL_156;
        }

        if (!*v157)
        {
          goto LABEL_159;
        }

        v133 = v27;
        v134 = *&v27[16 * a3 + 32];
        v135 = *&v27[16 * v28 + 40];
        sub_1B72B10CC(&(*v157)[8 * v134], &(*v157)[8 * *&v27[16 * v28 + 32]], &(*v157)[8 * v135], v95);
        if (v5)
        {
          goto LABEL_134;
        }

        if (v135 < v134)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_1B77E4CA4(v133);
        }

        if (a3 >= *(v133 + 2))
        {
          goto LABEL_138;
        }

        v136 = &v133[16 * a3];
        *(v136 + 4) = v134;
        *(v136 + 5) = v135;
        v169 = v133;
        sub_1B77E4C18(v28);
        v27 = v169;
        v93 = *(v169 + 2);
        if (v93 <= 1)
        {
          goto LABEL_3;
        }
      }

      v100 = &v27[16 * v93 + 32];
      v101 = *(v100 - 64);
      v102 = *(v100 - 56);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_139;
      }

      v105 = *(v100 - 48);
      v104 = *(v100 - 40);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_140;
      }

      v107 = &v27[16 * v93];
      v109 = *v107;
      v108 = *(v107 + 1);
      v106 = __OFSUB__(v108, v109);
      v110 = v108 - v109;
      if (v106)
      {
        goto LABEL_142;
      }

      v106 = __OFADD__(v98, v110);
      v111 = v98 + v110;
      if (v106)
      {
        goto LABEL_145;
      }

      if (v111 >= v103)
      {
        v129 = &v27[16 * v28 + 32];
        v131 = *v129;
        v130 = *(v129 + 1);
        v106 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v106)
        {
          goto LABEL_149;
        }

        if (v98 < v132)
        {
          v28 = v93 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

LABEL_3:
    v25 = v157[1];
    a4 = v145;
    v28 = 0x1E7CAF000;
    if (v26 >= v25)
    {
      goto LABEL_123;
    }
  }

  v144 = v27;
  v143 = v5;
  v166 = *v157;
  v65 = &v166[8 * v29 - 8];
  v66 = v151 - v29;
  v152 = v64;
  while (2)
  {
    v158 = v29;
    v67 = *&v166[8 * v29];
    v153 = v66;
    v154 = v65;
LABEL_52:
    a3 = *v65;
    v68 = v67;
    v69 = a3;
    v70 = [v68 dateSent];
    if (v70)
    {
      v71 = v161;
      v72 = v70;
      sub_1B77FF928();

      v73 = *v162;
      a3 = v160;
      (*v162)(v160, v71, v8);
      v74 = [v69 dateSent];
      if (v74)
      {
        v75 = v156;
        v165 = v68;
        v76 = a3;
        v77 = v74;
        sub_1B77FF928();

        v164 = v69;
        v78 = v155;
        v73(v155, v75, v8);
        a3 = sub_1B77FF8D8();
        v28 = v163;
        v79 = *v163;
        (*v163)(v78, v8);
        v79(v76, v8);

        v56 = &off_1E7CAF000;
        if ((a3 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_62;
      }

      (*v163)(a3, v8);
      v56 = &off_1E7CAF000;
    }

    v28 = v69;
    v80 = [v68 v56[382]];
    if (!v80)
    {

      goto LABEL_50;
    }

    v81 = v80;
    a3 = sub_1B7800868();
    v83 = v82;

    v84 = [v28 v56[382]];
    if (!v84)
    {

      v56 = &off_1E7CAF000;
      goto LABEL_50;
    }

    v85 = v84;
    v86 = sub_1B7800868();
    v88 = v87;

    if (a3 == v86 && v83 == v88)
    {

      v8 = v159;
      v56 = &off_1E7CAF000;
LABEL_50:
      v29 = v158 + 1;
      v65 = v154 + 1;
      v66 = v153 - 1;
      if (v158 + 1 == v152)
      {
        v26 = v152;
        v5 = v143;
        v27 = v144;
        goto LABEL_69;
      }

      continue;
    }

    break;
  }

  a3 = sub_1B78020F8();

  v8 = v159;
  v56 = &off_1E7CAF000;
  if ((a3 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_62:
  if (v166)
  {
    v89 = *v65;
    v67 = v65[1];
    *v65 = v67;
    v65[1] = v89;
    --v65;
    if (__CFADD__(v66++, 1))
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

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
}

void sub_1B72B0A5C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1B77E4CA4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1B72B1978((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1B77E4CA4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_1B77E4C18(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 positionIndex];
      v104 = [v14 positionIndex];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 positionIndex];
        v7 = [v18 positionIndex];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B723E420(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1B723E420((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1B72B1978((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B77E4CA4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_1B77E4C18(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 positionIndex];
    v41 = [v39 positionIndex];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_1B72B10CC(id *a1, id *a2, id *a3, id *a4)
{
  v110 = sub_1B77FF988();
  v8 = *(v110 - 8);
  v9 = MEMORY[0x1EEE9AC00](v110);
  v101 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v100 = &v99 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v105 = &v99 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v109 = &v99 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v103 = &v99 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v102 = &v99 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v108 = &v99 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v107 = (&v99 - v23);
  v113 = a1;
  v24 = a2 - a1;
  v25 = v24 / 8;
  v114 = a3;
  v26 = a3 - a2;
  v27 = v26 / 8;
  if (v24 / 8 >= v26 / 8)
  {
    if (a4 != a2 || &a2[v27] <= a4)
    {
      memmove(a4, a2, 8 * v27);
    }

    v112 = &a4[v27];
    v28 = a4;
    if (v26 < 8 || a2 <= v113)
    {
      goto LABEL_57;
    }

    v103 = (v8 + 8);
    v104 = a4;
    v62 = &off_1E7CAF000;
    v63 = &off_1E7CAF000;
    v64 = v109;
    v102 = (v8 + 32);
    while (2)
    {
      v111 = a2;
      v65 = a2 - 1;
      --v114;
      v66 = v112;
      v107 = a2 - 1;
      while (1)
      {
        v67 = *--v66;
        v68 = *v65;
        v69 = v67;
        v70 = v68;
        v71 = [v69 v62[439]];
        if (!v71)
        {
          goto LABEL_41;
        }

        v108 = v69;
        v72 = v105;
        v73 = v71;
        sub_1B77FF928();

        v74 = *v102;
        v75 = v110;
        (*v102)(v64, v72, v110);
        v76 = [v70 v62[439]];
        if (!v76)
        {
          break;
        }

        v106 = v66;
        v77 = v75;
        v78 = v101;
        v79 = v76;
        sub_1B77FF928();

        v80 = v28;
        v81 = v62;
        v82 = v100;
        v74(v100, v78, v77);
        LOBYTE(v79) = sub_1B77FF8D8();
        v83 = *v103;
        v84 = v82;
        v62 = v81;
        v28 = v80;
        v64 = v109;
        (*v103)(v84, v77);
        v85 = v77;
        v66 = v106;
        v83(v64, v85);

        v63 = &off_1E7CAF000;
        if (v79)
        {
          goto LABEL_51;
        }

LABEL_49:
        v65 = v107;
        if (v114 + 1 != v112)
        {
          *v114 = *v66;
        }

        --v114;
        v112 = v66;
        if (v66 <= v28)
        {
          v112 = v66;
          a2 = v111;
          goto LABEL_57;
        }
      }

      (*v103)(v64, v75);
      v63 = &off_1E7CAF000;
      v69 = v108;
LABEL_41:
      v86 = [v69 v63[382]];
      if (v86)
      {
        v87 = v86;
        v88 = sub_1B7800868();
        v90 = v89;

        v91 = [v70 v63[382]];
        if (v91)
        {
          v92 = v91;
          v93 = sub_1B7800868();
          v95 = v94;

          if (v88 == v93 && v90 == v95)
          {

            v28 = v104;
            v63 = &off_1E7CAF000;
            v64 = v109;
          }

          else
          {
            v96 = sub_1B78020F8();

            v28 = v104;
            v63 = &off_1E7CAF000;
            v64 = v109;
            if (v96)
            {
LABEL_51:
              v97 = v107;
              if (v114 + 1 != v111)
              {
                *v114 = *v107;
              }

              if (v112 <= v28 || (a2 = v97, v97 <= v113))
              {
                a2 = v97;
                goto LABEL_57;
              }

              continue;
            }
          }
        }

        else
        {

          v64 = v109;
        }
      }

      else
      {
      }

      goto LABEL_49;
    }
  }

  v28 = a4;
  if (a4 != v113 || &v113[v25] <= a4)
  {
    memmove(a4, v113, 8 * v25);
  }

  v112 = &a4[v25];
  if (v24 >= 8 && a2 < v114)
  {
    v29 = (v8 + 32);
    v106 = (v8 + 8);
    v30 = &off_1E7CAF000;
    do
    {
      v111 = a2;
      v31 = *v28;
      v32 = *a2;
      v33 = v31;
      v34 = [v32 dateSent];
      if (v34)
      {
        v35 = v29;
        v36 = v108;
        v37 = v34;
        sub_1B77FF928();

        v38 = *v35;
        v39 = v107;
        v40 = v36;
        v29 = v35;
        v41 = v110;
        (*v35)(v107, v40, v110);
        v42 = [v33 dateSent];
        if (v42)
        {
          v43 = v103;
          v109 = v33;
          v44 = v39;
          v45 = v42;
          sub_1B77FF928();

          v46 = v102;
          v38(v102, v43, v41);
          LOBYTE(v45) = sub_1B77FF8D8();
          v47 = *v106;
          v48 = v46;
          v29 = v35;
          (*v106)(v48, v41);
          v47(v44, v41);

          v30 = &off_1E7CAF000;
          if ((v45 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        (*v106)(v39, v41);
        v30 = &off_1E7CAF000;
      }

      v49 = [v32 v30[382]];
      if (!v49)
      {

        goto LABEL_23;
      }

      v50 = v49;
      v51 = sub_1B7800868();
      v53 = v52;

      v54 = [v33 v30[382]];
      if (!v54)
      {

LABEL_23:
        v60 = v28;
        v61 = v113 == v28++;
        a2 = v111;
        if (v61)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v113 = *v60;
        goto LABEL_25;
      }

      v104 = v28;
      v55 = v54;
      v56 = sub_1B7800868();
      v58 = v57;

      if (v51 == v56 && v53 == v58)
      {

        v28 = v104;
        goto LABEL_23;
      }

      v59 = sub_1B78020F8();

      v28 = v104;
      if ((v59 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_21:
      v60 = v111;
      a2 = v111 + 1;
      if (v113 != v111)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++v113;
    }

    while (v28 < v112 && a2 < v114);
  }

  a2 = v113;
LABEL_57:
  if (a2 != v28 || a2 >= (v28 + ((v112 - v28 + (v112 - v28 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v28, 8 * (v112 - v28));
  }

  return 1;
}

uint64_t sub_1B72B1978(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 positionIndex];
          v35 = [v33 positionIndex];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 positionIndex];
          v20 = [v18 positionIndex];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1B72B1C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B72B1CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72B1D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72B1D70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B72B1E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id _s10FinanceKit28ManagedCascadeExtractedOrderC012predicateForeF013withMessageID11orderNumberSo11NSPredicateCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(a3, a4);
  v7 = v6;
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
  *(v12 + 32) = v16;
  *(v12 + 40) = v7;
  *(v8 + 40) = sub_1B78010E8();
  v13 = sub_1B7800C18();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v14;
}

id _s10FinanceKit28ManagedCascadeExtractedOrderC012predicateForeF017withMessageIDHash11orderNumberSo11NSPredicateCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(a3, a4);
  v7 = v6;
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
  *(v12 + 32) = v16;
  *(v12 + 40) = v7;
  *(v8 + 40) = sub_1B78010E8();
  v13 = sub_1B7800C18();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v14;
}

uint64_t FKInstitution.init(_:)(void *a1)
{
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v53[-v7];
  v68 = ManagedInstitution.reconsentType.getter();
  v70 = [a1 id];
  v69 = [a1 name];
  v66 = [a1 authTypeObjects];
  v67 = [a1 firstTransactionsRequestWindow];
  [a1 maxAgeTransactionsFirstRequest];
  v10 = v9;
  [a1 maxAgeTransactionsRefreshRequest];
  v12 = v11;
  v13 = [a1 extensionsBundleIdentifiers];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B7800C38();

    sub_1B7240488(v15);

    v65 = sub_1B7800C18();
  }

  else
  {
    v65 = 0;
  }

  v62 = [a1 maximumNumberOfBackgroundRefreshes];
  v61 = [a1 numberOfRemainingBackgroundRefreshes];
  v16 = [a1 backgroundRefreshRetryAfterDate];
  if (v16)
  {
    v17 = v16;
    sub_1B77FF928();

    v64 = sub_1B77FF8B8();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v64 = 0;
  }

  v18 = [a1 lastBackgroundRefreshDate];
  if (v18)
  {
    v19 = v18;
    sub_1B77FF928();

    v63 = sub_1B77FF8B8();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v63 = 0;
  }

  v71 = [a1 backgroundRefreshConfirmationWindow];
  v60 = [a1 backgroundRefreshConfirmationExpiryWindow];
  v58 = [a1 multipleConsentsEnabled];
  v20 = [a1 termsAndConditionsObject];
  if (v20)
  {
    v21 = v20;
    sub_1B72B4414();
    v59 = FKBankConnectTermsAndConditions.init(_:)(v21);
  }

  else
  {
    v59 = 0;
  }

  v22 = [a1 problemReportingEnabled];
  v57 = [a1 financialLabEnabled];
  v56 = [a1 consentSyncingEnabled];
  v55 = [a1 balanceWidgetEnabled];
  v23 = [a1 personalizedInsightsEnabled];
  v54 = [a1 supportsTransactions];
  [a1 consentSyncingOutdatedTokenWaitTimeout];
  v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v26 = [a1 timestampSuitableForUserDisplay];
  v27 = [a1 piiRedactionConfiguration];
  if (v27)
  {
    v28 = v22;
    v29 = v27;
    v30 = v23;
    v31 = [v27 countryCodes];

    v22 = v28;
    sub_1B7800FA8();

    v23 = v30;
  }

  v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = v62;
  v34 = v61;
  v35 = sub_1B7800F78();
  v62 = v35;

  LOWORD(v52) = [a1 privacyLabelsValue];
  v51 = v35;
  LOBYTE(v50) = v26;
  BYTE5(v49) = v54;
  BYTE4(v49) = v23;
  BYTE3(v49) = v55;
  BYTE2(v49) = v56;
  BYTE1(v49) = v57;
  LOBYTE(v49) = v22;
  v36 = v59;
  LOBYTE(v48) = v58;
  v37 = v60;
  v38 = v63;
  v39 = v64;
  v47 = v34;
  v46 = v33;
  v40 = v32;
  v42 = v69;
  v41 = v70;
  v43 = v67;
  v44 = v65;
  v68 = [v40 initWithInstitutionIdentifier:v70 name:v69 reconsentType:v68 & 1 supportedAuthTypes:v66 firstTransactionsRequestWindow:v67 maxAgeTransactionsFirstRequest:v65 maxAgeTransactionsRefreshRequest:v10 extensionsBundleIdentifiers:v12 maximumNumberOfBackgroundRefreshes:v46 numberOfRemainingBackgroundRefreshes:v47 backgroundRefreshRetryAfterDate:v64 lastBackgroundRefreshDate:v63 backgroundRefreshConfirmationWindow:v71 backgroundRefreshConfirmationExpiryWindow:v60 multipleConsentsEnabled:v48 termsAndConditions:v59 problemReportingEnabled:v49 financialLabEnabled:v25 consentSyncingEnabled:v50 balanceWidgetEnabled:v51 personalizedInsightsEnabled:v52 supportsTransactions:? consentSyncingOutdatedTokenWaitTimeout:? timestampSuitableForUserDisplay:? piiRedactionConfigurationCountryCodes:? privacyLabels:?];

  return v68;
}

id FKBankConnectTermsAndConditions.init(_:)(void *a1)
{
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v22 = [a1 id];
  v9 = [a1 publishedAt];
  sub_1B77FF928();

  v10 = sub_1B77FF8B8();
  v11 = *(v3 + 8);
  v11(v8, v2);
  v12 = [a1 reviewedAt];
  if (v12)
  {
    v13 = v12;
    sub_1B77FF928();

    v14 = sub_1B77FF8B8();
    v11(v6, v2);
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = [a1 inEffectOn];
  sub_1B77FF928();

  v17 = sub_1B77FF8B8();
  v11(v8, v2);
  v18 = v22;
  v19 = [v15 initWithIdentifier:v22 publishedAt:v10 reviewedAt:v14 inEffectOn:v17];

  return v19;
}

id FKInstitution.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectTermsAndConditions();
  v74 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v79 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v69 - v14;
  v83 = *(a1 + 32);
  v85 = sub_1B7800838();
  v84 = sub_1B7800838();
  v16 = 0;
  v81 = *(a1 + 34);
  if ((*(a1 + 48) & 1) == 0)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v82 = v16;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v88 = v2;
  if (v19)
  {
    sub_1B7240488(v19);
    v80 = sub_1B7800C18();
  }

  else
  {
    v80 = 0;
  }

  v20 = type metadata accessor for Institution(0);
  v21 = (a1 + v20[12]);
  v22 = *v21;
  v76 = v21[1];
  v77 = v22;
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  sub_1B7205588(v21 + refreshed[6], v15, &qword_1EB98EBD0);
  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(v15, 1, v24);
  v87 = 0;
  if (v27 != 1)
  {
    v87 = sub_1B77FF8B8();
    (*(v25 + 8))(v15, v24);
  }

  sub_1B7205588(v21 + refreshed[7], v13, &qword_1EB98EBD0);
  if (v26(v13, 1, v24) == 1)
  {
    v75 = 0;
  }

  else
  {
    v75 = sub_1B77FF8B8();
    (*(v25 + 8))(v13, v24);
  }

  v28 = v89;
  v29 = (v21 + refreshed[8]);
  if (v29[1])
  {
    v73 = 0;
  }

  else
  {
    v73 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v30 = (v21 + refreshed[9]);
  if (v30[1])
  {
    v89 = 0;
  }

  else
  {
    v89 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v31 = v88;
  v32 = *(a1 + v20[13]);
  sub_1B7205588(a1 + v20[15], v28, &qword_1EB98FC40);
  v33 = (*(v74 + 48))(v28, 1, v31);
  v72 = v32;
  if (v33 == 1)
  {
    v88 = 0;
  }

  else
  {
    v34 = v28;
    v35 = v78;
    sub_1B72B4524(v34, v78, type metadata accessor for BankConnectTermsAndConditions);
    v36 = v79;
    sub_1B72B4460(v35, v79);
    v37 = sub_1B7800838();
    v38 = sub_1B77FF8B8();
    v39 = v31;
    v40 = v38;
    v41 = v71;
    sub_1B7205588(v36 + v39[6], v71, &qword_1EB98EBD0);
    if (v26(v41, 1, v24) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = sub_1B77FF8B8();
      (*(v25 + 8))(v41, v24);
    }

    v43 = objc_allocWithZone(FKBankConnectTermsAndConditions);
    v44 = v79;
    v45 = sub_1B77FF8B8();
    v88 = [v43 initWithIdentifier:v37 publishedAt:v40 reviewedAt:v42 inEffectOn:v45];

    sub_1B72B44C4(v44, type metadata accessor for BankConnectTermsAndConditions);
    sub_1B72B44C4(v78, type metadata accessor for BankConnectTermsAndConditions);
  }

  LODWORD(v79) = *(a1 + v20[14]);
  LODWORD(v78) = *(a1 + v20[16]);
  v46 = v20[21];
  v47 = (a1 + v20[20]);
  LODWORD(v74) = *v47;
  LODWORD(v71) = *(a1 + v46);
  v48 = *(a1 + v20[22]);
  v49 = *(a1 + v20[23]);
  v50 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v70 = v50;
  v51 = *(a1 + v20[17]);
  v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v53 = sub_1B7800F78();

  LOWORD(v68) = *(a1 + v20[19]);
  LOBYTE(v67) = v51;
  v66 = v50;
  BYTE5(v65) = v49;
  BYTE4(v65) = v48;
  BYTE3(v65) = v71;
  BYTE2(v65) = v74;
  BYTE1(v65) = v78;
  LOBYTE(v65) = v79;
  v54 = v88;
  LOBYTE(v64) = v72;
  v55 = v73;
  v56 = v75;
  v57 = v87;
  v58 = v52;
  v60 = v84;
  v59 = v85;
  v61 = v82;
  v62 = v80;
  v86 = [v58 initWithInstitutionIdentifier:v85 name:v84 reconsentType:v83 supportedAuthTypes:v81 firstTransactionsRequestWindow:v82 maxAgeTransactionsFirstRequest:v80 maxAgeTransactionsRefreshRequest:v17 extensionsBundleIdentifiers:v18 maximumNumberOfBackgroundRefreshes:v77 numberOfRemainingBackgroundRefreshes:v76 backgroundRefreshRetryAfterDate:v87 lastBackgroundRefreshDate:v75 backgroundRefreshConfirmationWindow:v73 backgroundRefreshConfirmationExpiryWindow:v89 multipleConsentsEnabled:v64 termsAndConditions:v88 problemReportingEnabled:v65 financialLabEnabled:v66 consentSyncingEnabled:v67 balanceWidgetEnabled:v53 personalizedInsightsEnabled:v68 supportsTransactions:? consentSyncingOutdatedTokenWaitTimeout:? timestampSuitableForUserDisplay:? piiRedactionConfigurationCountryCodes:? privacyLabels:?];

  sub_1B72B44C4(a1, type metadata accessor for Institution);
  return v86;
}

id FKBankConnectTermsAndConditions.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1B7800838();
  v6 = type metadata accessor for BankConnectTermsAndConditions();
  v7 = sub_1B77FF8B8();
  sub_1B7205588(a1 + *(v6 + 24), v4, &qword_1EB98EBD0);
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v4, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v4, v8);
  }

  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_1B77FF8B8();
  v13 = [v11 initWithIdentifier:v5 publishedAt:v7 reviewedAt:v10 inEffectOn:v12];

  sub_1B72B44C4(a1, type metadata accessor for BankConnectTermsAndConditions);
  return v13;
}

uint64_t FKInstitution.institution.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v87[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v87[-v10];
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  MEMORY[0x1EEE9AC00](refreshed);
  v103 = &v87[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [v1 institutionIdentifier];
  v99 = sub_1B7800868();
  v15 = v14;

  v16 = [v2 name];
  v17 = sub_1B7800868();
  v19 = v18;

  v20 = FKReconsentType.reconsentType.getter([v2 reconsentType]);
  v98 = [v2 supportedAuthTypes];
  v21 = [v2 firstTransactionsRequestWindow];
  v22 = v21;
  if (v21)
  {
    [v21 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v97 = v22;
  [v2 maxAgeTransactionsFirstRequest];
  v26 = v25;
  [v2 maxAgeTransactionsRefreshRequest];
  v28 = v27;
  v29 = [v2 extensionsBundleIdentifiers];
  if (v29)
  {
    v30 = v29;
    sub_1B7800C38();

    v32 = sub_1B72B3EF0(v31);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v32 = 0;
  }

  result = [v2 maximumNumberOfBackgroundRefreshes];
  if (result < -32768)
  {
    __break(1u);
    goto LABEL_29;
  }

  v34 = result;
  if (result >= 0x8000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = [v2 numberOfRemainingBackgroundRefreshes];
  if (result < -32768)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (result >= 0x8000)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v89 = result;
  v90 = v34;
  v91 = refreshed;
  v92 = v32;
  v35 = [v2 backgroundRefreshRetryAfterDate];
  if (v35)
  {
    v36 = v101;
    v37 = v35;
    sub_1B77FF928();

    v38 = sub_1B77FF988();
    (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
  }

  else
  {
    v39 = sub_1B77FF988();
    (*(*(v39 - 8) + 56))(v101, 1, 1, v39);
  }

  v40 = v20;
  v41 = [v2 lastBackgroundRefreshDate];
  v100 = v6;
  v95 = v17;
  v96 = v15;
  v94 = v19;
  if (v41)
  {
    v42 = v102;
    v43 = v41;
    sub_1B77FF928();

    v44 = 0;
  }

  else
  {
    v44 = 1;
    v42 = v102;
  }

  v45 = sub_1B77FF988();
  v46 = *(*(v45 - 8) + 56);
  v46(v42, v44, 1, v45);
  v47 = [v2 backgroundRefreshConfirmationWindow];
  v48 = v47;
  v49 = 0;
  v50 = 0;
  if (v47)
  {
    [v47 doubleValue];
    v50 = v51;
  }

  v93 = v40;
  v52 = [v2 backgroundRefreshConfirmationExpiryWindow];
  v53 = v52;
  if (v52)
  {
    [v52 doubleValue];
    v49 = v54;
  }

  v88 = v53 == 0;
  v55 = v48 == 0;
  v56 = v91;
  v57 = v91[6];
  v58 = v103;
  v46(&v103[v57], 1, 1, v45);
  v59 = v56[7];
  v46(v58 + v59, 1, 1, v45);
  v60 = v58 + v56[8];
  v61 = v58 + v56[9];
  v62 = v89;
  *v58 = v90;
  v58[1] = v62;
  sub_1B7213740(v101, v58 + v57, &qword_1EB98EBD0);
  sub_1B7213740(v102, v58 + v59, &qword_1EB98EBD0);
  *v60 = v50;
  v60[8] = v55;
  *v61 = v49;
  v61[8] = v88;
  v63 = [v2 multipleConsentsEnabled];
  LODWORD(v59) = [v2 problemReportingEnabled];
  v64 = [v2 termsAndConditions];
  LODWORD(v91) = v59;
  v65 = v100;
  if (v64)
  {
    BankConnectTermsAndConditions.init(_:)(v64, v100);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = type metadata accessor for BankConnectTermsAndConditions();
  v68 = *(*(v67 - 8) + 56);
  v68(v65, v66, 1, v67);
  v69 = [v2 financialLabEnabled];
  LODWORD(v89) = [v2 timestampSuitableForUserDisplay];
  v70 = [v2 piiRedactionConfigurationCountryCodes];
  v71 = sub_1B7800FA8();

  v72 = *(v71 + 16);

  LODWORD(v101) = v63;
  LODWORD(v90) = v69;
  if (v72)
  {
    v73 = [v2 piiRedactionConfigurationCountryCodes];
    v102 = sub_1B7800FA8();
  }

  else
  {
    v102 = 0;
  }

  v74 = v97 == 0;
  LODWORD(v97) = [v2 privacyLabels];
  v88 = [v2 consentSyncingEnabled];
  v75 = [v2 consentSyncingOutdatedTokenWaitTimeout];
  [v75 doubleValue];
  v77 = v76;

  v78 = [v2 balanceWidgetEnabled];
  LOBYTE(v75) = [v2 personalizedInsightsEnabled];
  v79 = [v2 supportsTransactions];
  v80 = type metadata accessor for Institution(0);
  v81 = v80[15];
  v68((a1 + v81), 1, 1, v67);
  v82 = v80[18];
  *(a1 + v82) = 0;
  v84 = v95;
  v83 = v96;
  *a1 = v99;
  *(a1 + 8) = v83;
  v85 = v94;
  *(a1 + 16) = v84;
  *(a1 + 24) = v85;
  *(a1 + 32) = v93;
  *(a1 + 34) = v98;
  *(a1 + 40) = v24;
  *(a1 + 48) = v74;
  *(a1 + 56) = v26;
  *(a1 + 64) = v28;
  *(a1 + 72) = v92;
  sub_1B72B4524(v103, a1 + v80[12], type metadata accessor for Institution.BackgroundRefreshConfiguration);
  *(a1 + v80[13]) = v101;
  *(a1 + v80[14]) = v91;
  sub_1B7213740(v100, a1 + v81, &qword_1EB98FC40);
  *(a1 + v80[16]) = v90;
  *(a1 + v80[17]) = v89;

  *(a1 + v82) = v102;
  *(a1 + v80[19]) = v97;
  v86 = a1 + v80[20];
  *v86 = v88;
  *(v86 + 8) = v77;
  *(a1 + v80[21]) = v78;
  *(a1 + v80[22]) = v75;
  *(a1 + v80[23]) = v79;
  return result;
}

unint64_t FKReconsentType.reconsentType.getter(unint64_t result)
{
  if (result > 1)
  {
    sub_1B7801A78();

    v1 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v1);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B72B3EF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B71FDB50(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B719BDE4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B71FDB50((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B72B4004(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B71FE6D4(0, v3 & ~(v3 >> 63), 0);
  v4 = v11;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8CA5DC0](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_1B7801958();
          goto LABEL_3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB990D90);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1B71FE6D4((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 8 * v8 + 32) = v10;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_1B7801958();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t BankConnectTermsAndConditions.init(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  v12 = sub_1B7800868();
  v24 = v13;
  v25 = v12;

  v14 = [a1 publishedAt];
  sub_1B77FF928();

  v15 = [a1 reviewedAt];
  if (v15)
  {
    v16 = v15;
    sub_1B77FF928();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(v8 + 56);
  v18(v6, v17, 1, v7);
  v19 = [a1 inEffectOn];
  v20 = type metadata accessor for BankConnectTermsAndConditions();
  sub_1B77FF928();

  v21 = *(v20 + 24);
  v18(&a2[v21], 1, 1, v7);
  v22 = v24;
  *a2 = v25;
  *(a2 + 1) = v22;
  (*(v8 + 32))(&a2[*(v20 + 20)], v10, v7);
  return sub_1B7213740(v6, &a2[v21], &qword_1EB98EBD0);
}

unint64_t sub_1B72B4414()
{
  result = qword_1EB990D80;
  if (!qword_1EB990D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB990D80);
  }

  return result;
}

uint64_t sub_1B72B4460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectTermsAndConditions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72B44C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B72B4524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnalyticsEvent.daysSince(_:now:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v7 = sub_1B77FED28();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFC88();
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v31 - v14;
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7280900(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1B71F31EC(v15);
    sub_1B7223580();
    return sub_1B7801578();
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_1B77FFBC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
    v21 = sub_1B77FFC68();
    v22 = *(v21 - 8);
    v31[2] = a4;
    v23 = v22;
    v24 = *(v22 + 80);
    v32 = v10;
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B7807CD0;
    (*(v23 + 104))(v26 + v25, *MEMORY[0x1E6969A48], v21);
    sub_1B7545E58(v26);
    v31[1] = a3;
    swift_setDeallocating();
    (*(v23 + 8))(v26 + v25, v21);
    swift_deallocClassInstance();
    sub_1B77FFB58();

    v27 = sub_1B77FEC08();
    LOBYTE(v23) = v28;
    (*(v34 + 8))(v9, v35);
    if (v23)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    _s10FinanceKit14AnalyticsEventPAAE13counterResult_17singleValueCutoffSSSi_SitF_0(v29, 10000);
    v30 = sub_1B7800838();

    (*(v36 + 8))(v12, v32);
    (*(v17 + 8))(v19, v16);
    return v30;
  }
}

uint64_t _s10FinanceKit14AnalyticsEventPAAE13counterResult_17singleValueCutoffSSSi_SitF_0(uint64_t a1, uint64_t a2)
{
  if (a2 >= a1)
  {
    return sub_1B7802068();
  }

  v3 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](43, 0xE100000000000000);
  return v3;
}

void sub_1B72B4A70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 otherBankTransactionLocationsData];
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

void sub_1B72B4AD8(uint64_t a1, void **a2)
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
  [v2 setOtherBankTransactionLocationsData_];
}

id ManagedMapsLookupRequest.__allocating_init(request:context:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B72B4FE8(a1, a2);

  return v6;
}

id ManagedMapsLookupRequest.init(request:context:)(uint64_t a1, void *a2)
{
  v3 = sub_1B72B4FE8(a1, a2);

  return v3;
}

id ManagedMapsLookupRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MapsLookupRequest.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FF988();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B77FFA18();
  v7 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 transactionID];
  sub_1B77FF9E8();

  v11 = [a1 transactionDisplayName];
  v12 = sub_1B7800868();
  v45 = v13;
  v46 = v12;

  v14 = [a1 creationDate];
  v48 = v6;
  sub_1B77FF928();

  v15 = [a1 bankTransactionDescriptionClean];
  v16 = sub_1B7800868();
  v43 = v17;
  v44 = v16;

  v18 = [a1 bankTransactionDescription];
  v19 = sub_1B7800868();
  v41 = v20;
  v42 = v19;

  v21 = [a1 bankMerchantEnhancedName];
  v22 = sub_1B7800868();
  v24 = v23;

  v25 = [a1 piiRedactionOccurred];
  v26 = [a1 otherBankTransactionLocationsData];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B77FF5B8();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v31 = type metadata accessor for MapsLookupRequest();
  v32 = a2 + v31[11];
  *v32 = xmmword_1B7810080;
  (*(v7 + 32))(a2, v9, v47);
  v33 = (a2 + v31[5]);
  v34 = v45;
  *v33 = v46;
  v33[1] = v34;
  (*(v49 + 32))(a2 + v31[6], v48, v50);
  v35 = (a2 + v31[7]);
  v36 = v43;
  *v35 = v44;
  v35[1] = v36;
  v37 = (a2 + v31[8]);
  v38 = v41;
  *v37 = v42;
  v37[1] = v38;
  v39 = (a2 + v31[9]);
  *v39 = v22;
  v39[1] = v24;
  *(a2 + v31[10]) = v25;
  result = sub_1B72380B8(*v32, *(v32 + 8));
  *v32 = v28;
  *(v32 + 8) = v30;
  return result;
}

id static ManagedMapsLookupRequest.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit24ManagedMapsLookupRequest;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id sub_1B72B4FE8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = [swift_getObjCClassFromMetadata() entity];
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v18, sel_initWithEntity_insertIntoManagedObjectContext_, v6, a2);

  v8 = v7;
  v9 = sub_1B77FF9B8();
  [v8 setTransactionID_];

  v10 = type metadata accessor for MapsLookupRequest();
  v11 = sub_1B7800838();
  [v8 setTransactionDisplayName_];

  v12 = sub_1B77FF8B8();
  [v8 setCreationDate_];

  v13 = sub_1B7800838();
  [v8 setBankTransactionDescriptionClean_];

  v14 = sub_1B7800838();
  [v8 setBankTransactionDescription_];

  v15 = sub_1B7800838();
  [v8 setBankMerchantEnhancedName_];

  [v8 setPiiRedactionOccurred_];
  v16 = 0;
  if (*(a1 + *(v10 + 44) + 8) >> 60 != 15)
  {
    v16 = sub_1B77FF598();
  }

  [v8 setOtherBankTransactionLocationsData_];

  sub_1B72B528C(a1);
  return v8;
}

uint64_t sub_1B72B528C(uint64_t a1)
{
  v2 = type metadata accessor for MapsLookupRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BankConnectMapsUserIdentifier.userIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BankConnectMapsUserIdentifier.userIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

FinanceKit::BankConnectMapsUserIdentifier __swiftcall BankConnectMapsUserIdentifier.init(userIdentifier:rotation:)(Swift::String userIdentifier, Swift::UInt rotation)
{
  *v2 = userIdentifier;
  v2[1]._countAndFlagsBits = rotation;
  result.userIdentifier = userIdentifier;
  result.rotation = rotation;
  return result;
}

BOOL static BankConnectMapsUserIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1B78020F8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1B72B5408()
{
  if (*v0)
  {
    return 0x6E6F697461746F72;
  }

  else
  {
    return 0x6E65644972657375;
  }
}

uint64_t sub_1B72B5450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000)
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

uint64_t sub_1B72B5534(uint64_t a1)
{
  v2 = sub_1B72B5740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72B5570(uint64_t a1)
{
  v2 = sub_1B72B5740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectMapsUserIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72B5740();
  sub_1B78023F8();
  v11 = 0;
  v7 = v9[1];
  sub_1B7801F78();
  if (!v7)
  {
    v10 = 1;
    sub_1B7801FB8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B72B5740()
{
  result = qword_1EB990DA8;
  if (!qword_1EB990DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990DA8);
  }

  return result;
}

uint64_t BankConnectMapsUserIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72B5740();
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
  v13 = sub_1B7801E38();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1B72B59A0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1B78020F8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t *BankConnectUserIdentifierProvider.__allocating_init(userDefaults:keychainAccessGroup:keychainServiceName:deviceInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v13 = swift_allocObject();
  v15 = *(a1 + 24);
  v14 = *(a1 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_1B72B8594(v18, a2, a3, a4, a5, a6, v23, v13, v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

uint64_t *BankConnectUserIdentifierProvider.init(userDefaults:keychainAccessGroup:keychainServiceName:deviceInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a1 + 24);
  v14 = *(a1 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_1B72B8594(v18, a2, a3, a4, a5, a6, a7, v22[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

uint64_t BankConnectUserIdentifierProvider.userIdentifier()@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = sub_1B77FED28();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFC88();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59 - v7;
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v59 - v16;
  v18 = sub_1B77FFA18();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v59 - v23;
  v24 = v1[5];
  v25 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v24);
  (*(*(v25 + 8) + 32))(v1[13], v1[14], v24);
  if (!v26)
  {
    return sub_1B72B6568();
  }

  sub_1B77FF998();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1B7205418(v17, &unk_1EB993A10);
    return sub_1B72B6568();
  }

  v28 = v72;
  v61 = *(v19 + 32);
  v62 = v19 + 32;
  v61(v72, v17, v18);
  v29 = v1[5];
  v30 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v29);
  v31 = (*(*(v30 + 8) + 32))(v1[17], v1[18], v29);
  if (!v32)
  {
    goto LABEL_12;
  }

  v33 = v32;
  if (v31 == (*(v1[12] + 32))() && v33 == v34)
  {
  }

  else
  {
    v35 = sub_1B78020F8();

    if ((v35 & 1) == 0)
    {
LABEL_12:
      sub_1B72B6568();
      return (*(v19 + 8))(v28, v18);
    }
  }

  sub_1B72B6744(v8);
  v36 = v70;
  v37 = v71;
  if ((*(v71 + 48))(v8, 1, v70) == 1)
  {
    sub_1B7205418(v8, &qword_1EB98EBD0);
    goto LABEL_12;
  }

  (*(v37 + 32))(v68, v8, v36);
  sub_1B77FFC58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v38 = sub_1B77FFC68();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1B7807CD0;
  (*(v39 + 104))(v41 + v40, *MEMORY[0x1E6969A48], v38);
  sub_1B7545E58(v41);
  swift_setDeallocating();
  (*(v39 + 8))(v41 + v40, v38);
  v42 = v71;
  swift_deallocClassInstance();
  sub_1B77FF938();
  v43 = v63;
  sub_1B77FFB58();
  v44 = v70;

  v47 = *(v42 + 8);
  v46 = v42 + 8;
  v45 = v47;
  v47(v13, v44);
  v48 = sub_1B77FEC08();
  if ((v49 & 1) != 0 || v48 < 121)
  {
    v60 = v45;
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v50 = sub_1B78000B8();
    __swift_project_value_buffer(v50, qword_1EDAF65B0);
    (*(v19 + 16))(v22, v72, v18);
    v51 = sub_1B7800098();
    v52 = sub_1B78011F8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v74 = v54;
      *v53 = 136446210;
      v55 = sub_1B77FF9A8();
      v71 = v46;
      v57 = v56;
      (*(v19 + 8))(v22, v18);
      v58 = sub_1B71A3EF8(v55, v57, &v74);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_1B7198000, v51, v52, "Web service user identifier: %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1B8CA7A40](v54, -1, -1);
      MEMORY[0x1B8CA7A40](v53, -1, -1);

      (*(v66 + 8))(v43, v67);
      (*(v64 + 8))(v69, v65);
      v60(v68, v70);
    }

    else
    {

      (*(v19 + 8))(v22, v18);
      (*(v66 + 8))(v43, v67);
      (*(v64 + 8))(v69, v65);
      v60(v68, v44);
    }

    return (v61)(v73, v72, v18);
  }

  else
  {
    sub_1B72B6568();
    (*(v66 + 8))(v43, v67);
    (*(v64 + 8))(v69, v65);
    v45(v68, v44);
    return (*(v19 + 8))(v72, v18);
  }
}

uint64_t sub_1B72B6568()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  sub_1B77FFA08();
  v5 = sub_1B77FF9A8();
  v7 = v6;
  v8 = v1[5];
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
  v10 = MEMORY[0x1E69E6158];
  v20 = MEMORY[0x1E69E6158];
  v18 = v5;
  v19 = v7;
  (*(*(v9 + 8) + 8))(&v18, v1[13], v1[14], v8);
  sub_1B7205418(&v18, &qword_1EB98FCB0);
  sub_1B77FF938();
  v11 = sub_1B77FF988();
  (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  sub_1B72B7914(v4);
  v12 = (*(v1[12] + 32))();
  v14 = v13;
  v15 = v1[5];
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v15);
  v20 = v10;
  v18 = v12;
  v19 = v14;
  (*(*(v16 + 8) + 8))(&v18, v1[17], v1[18], v15);
  return sub_1B7205418(&v18, &qword_1EB98FCB0);
}

uint64_t sub_1B72B6744@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(*(v4 + 8) + 16))(v9, v1[15], v1[16], v3);
  if (v9[3])
  {
    v5 = sub_1B77FF988();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1B7205418(v9, &qword_1EB98FCB0);
    v8 = sub_1B77FF988();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t BankConnectUserIdentifierProvider.rateLimitUserIdentifier()()
{
  result = sub_1B72B694C();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    sub_1B77FFA18();
    sub_1B72B91A8(&qword_1EB98F740, MEMORY[0x1E69695A8]);
    sub_1B77FE8D8();

    return sub_1B720A388(v3, v4);
  }

  return result;
}

uint64_t sub_1B72B694C()
{
  v1 = sub_1B77FFA18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B78000B8();
  __swift_project_value_buffer(v5, qword_1EDAF65B0);
  v6 = sub_1B7800098();
  v7 = sub_1B78011B8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B7198000, v6, v7, "Fetching Rate Limit identity", v8, 2u);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  sub_1B72B76D0(1);
  v10 = sub_1B72B8788(v9);
  v12 = v11;

  if (!v0 && v12 >> 60 == 15)
  {
    sub_1B77FE9B8();
    swift_allocObject();
    sub_1B77FE9A8();
    sub_1B77FFA08();
    sub_1B72B91A8(&qword_1EB98F718, MEMORY[0x1E69695A8]);
    v10 = sub_1B77FE998();
    v15 = v14;
    (*(v2 + 8))(v4, v1);

    sub_1B72B7CC8(v10, v15, 1);
  }

  return v10;
}

uint64_t BankConnectUserIdentifierProvider.mapsUserIdentifier(now:)@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v2 = sub_1B78006D8();
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B78008E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7800478();
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B77FF608();
  v15 = v14 / 259200.0;
  if (COERCE__INT64(fabs(v14 / 259200.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v15 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1B72B709C();
  if (v1)
  {
    return result;
  }

  v36 = v15;
  v37 = 0;
  v42 = v15;
  v17 = result;
  v18 = v16;
  v44[0] = sub_1B7802068();
  v44[1] = v19;
  MEMORY[0x1B8CA4D30](58, 0xE100000000000000);
  v34 = v18;
  v35 = v17;
  v20 = sub_1B72B71E4(v17, v18);
  MEMORY[0x1B8CA4D30](v20);

  sub_1B78008C8();
  v21 = sub_1B7800878();
  v23 = v22;
  result = (*(v6 + 8))(v8, v5);
  if (v23 >> 60 == 15)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1B72B91A8(&qword_1EB99ED20, MEMORY[0x1E6966620]);
  sub_1B7800468();
  sub_1B720ABEC(v21, v23);
  sub_1B72B82D4(v21, v23);
  sub_1B72380B8(v21, v23);
  sub_1B7800448();
  sub_1B72380B8(v21, v23);
  (*(v38 + 8))(v4, v2);
  v24 = v39;
  v45 = v39;
  v46 = sub_1B72B91A8(&qword_1EB98F940, MEMORY[0x1E69663E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v26 = v40;
  (*(v40 + 16))(boxed_opaque_existential_1, v12, v24);
  __swift_project_boxed_opaque_existential_1(v44, v45);
  sub_1B77FEDA8();
  v27 = v42;
  v28 = v43;
  __swift_destroy_boxed_opaque_existential_1(v44);
  v29 = sub_1B72B71E4(v27, v28);
  v31 = v30;
  sub_1B720A388(v35, v34);
  sub_1B720A388(v27, v28);
  result = (*(v26 + 8))(v12, v24);
  v32 = v41;
  *v41 = v29;
  v32[1] = v31;
  v32[2] = v36;
  return result;
}

uint64_t sub_1B72B709C()
{
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);
  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "Fetching Maps identity", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  sub_1B72B76D0(0);
  v6 = sub_1B72B8788(v5);
  v8 = v7;

  if (!v0 && v8 >> 60 == 15)
  {
    return sub_1B72B8054();
  }

  return v6;
}

uint64_t sub_1B72B71E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B78008E8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B77FF5E8();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
      goto LABEL_10;
    }

LABEL_8:
    LODWORD(v11) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v11 = v11;
    goto LABEL_10;
  }

  if (v10 != 2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_10:
  if (v11 + 0x4000000000000000 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v11 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v11)
  {
    v15 = 2 * v11;
    v16 = sub_1B7800C78();
    *(v16 + 16) = v15;
    bzero((v16 + 32), v15);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  sub_1B720ABEC(a1, a2);
  sub_1B77FF5F8();
  sub_1B72B91A8(&qword_1EB990DD8, MEMORY[0x1E6969050]);
  result = sub_1B78017B8();
  if ((v27 & 1) == 0)
  {
    v17 = 0;
    v18 = v26;
    while (1)
    {
      v19 = *(v16 + 16);
      if (v17 >= v19)
      {
        break;
      }

      v20 = (v18 >> 4) + 87;
      if (v18 <= 0x9F)
      {
        LOBYTE(v20) = (v18 >> 4) | 0x30;
      }

      *(v16 + v17 + 32) = v20;
      if (v17 + 1 >= v19)
      {
        goto LABEL_29;
      }

      if ((v18 & 0xF) <= 9)
      {
        v21 = v18 & 0xF | 0x30;
      }

      else
      {
        v21 = (v18 & 0xF) + 87;
      }

      *(v16 + v17 + 33) = v21;
      result = sub_1B78017B8();
      v18 = v26;
      v17 += 2;
      if (v27)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_26:
  (*(v6 + 8))(v9, v5);
  v25 = v16;

  sub_1B78008C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DE0);
  sub_1B72B9144();
  v22 = sub_1B7800898();
  v24 = v23;

  if (v24)
  {

    return v22;
  }

LABEL_33:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BankConnectUserIdentifierProvider.deleteSyncedUserIdentifiers()()
{
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);
  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "Deleting Maps identity...", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  sub_1B72B76D0(0);
  sub_1B72B8BD8();
  if (!v0)
  {

    v5 = sub_1B7800098();
    v6 = sub_1B78011B8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7198000, v5, v6, "Deleting Rate Limit identity...", v7, 2u);
      MEMORY[0x1B8CA7A40](v7, -1, -1);
    }

    sub_1B72B76D0(1);
    sub_1B72B8BD8();
  }
}

void sub_1B72B76D0(char a1)
{
  if (a1)
  {
    v2 = 0xD00000000000002ELL;
  }

  else
  {
    v2 = 0xD000000000000028;
  }

  if (a1)
  {
    v3 = "y";
  }

  else
  {
    v3 = "nk-connect.rate-limit-identity";
  }

  v4 = v3 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B78100C0;
  v6 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v7 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  v9 = MEMORY[0x1E697ABD0];
  v38 = v7;
  *(inited + 40) = v7;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v11 = v1[8];
  v12 = MEMORY[0x1E69E6158];
  *(inited + 80) = v1[7];
  *(inited + 88) = v11;
  v13 = *MEMORY[0x1E697AE88];
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v14 = v1[10];
  *(inited + 120) = v1[9];
  *(inited + 128) = v14;
  v15 = *MEMORY[0x1E697AC30];
  *(inited + 144) = v12;
  *(inited + 152) = v15;
  *(inited + 160) = v2;
  *(inited + 168) = v4;
  v16 = *MEMORY[0x1E697ABD8];
  *(inited + 184) = v12;
  *(inited + 192) = v16;
  v17 = *MEMORY[0x1E697ABE0];
  v18 = MEMORY[0x1E697AEB0];
  *(inited + 200) = *MEMORY[0x1E697ABE0];
  v19 = *v18;
  *(inited + 224) = v8;
  *(inited + 232) = v19;
  v20 = MEMORY[0x1E69E6370];
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v21 = *MEMORY[0x1E697AEA8];
  if (*MEMORY[0x1E697AEA8])
  {
    v36 = v15;
    v37 = v13;
    *(inited + 272) = v21;
    v22 = *MEMORY[0x1E697AF00];
    if (*MEMORY[0x1E697AF00])
    {
      v23 = v6;
      *(inited + 280) = v22;
      v24 = *MEMORY[0x1E697AD00];
      *(inited + 304) = v8;
      *(inited + 312) = v24;
      *(inited + 344) = v20;
      *(inited + 320) = 1;
      v25 = v23;
      v26 = v38;
      v27 = v10;

      v28 = v37;

      v29 = v36;
      v30 = v16;
      v31 = v17;
      v32 = v19;
      v33 = v21;
      v34 = v22;
      v35 = v24;
      sub_1B7202C00(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470);
      swift_arrayDestroy();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B72B7914(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_1B719B06C(v1 + 16, v14);
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1B7280900(a1, v5);
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_1B7205418(v5, &qword_1EB98EBD0);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(v9 + 32))(boxed_opaque_existential_1, v5, v8);
  }

  (*(*(v7 + 8) + 8))(&v12, *(v1 + 120), *(v1 + 128), v6);
  sub_1B7205418(a1, &qword_1EB98EBD0);
  sub_1B7205418(&v12, &qword_1EB98FCB0);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t BankConnectUserIdentifierProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t BankConnectUserIdentifierProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B72B7B9C()
{
  result = sub_1B72B694C();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    sub_1B77FFA18();
    sub_1B72B91A8(&qword_1EB98F740, MEMORY[0x1E69695A8]);
    sub_1B77FE8D8();

    return sub_1B720A388(v3, v4);
  }

  return result;
}

void sub_1B72B7CC8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a3)
  {
    v6 = "Apple Pay Maps Identity";
  }

  else
  {
    v6 = "nk-connect.maps-identity";
  }

  sub_1B72B76D0(a3 & 1);
  v8 = v7;
  v9 = *MEMORY[0x1E697B3C0];
  v28 = MEMORY[0x1E6969080];
  *&v27 = a1;
  *(&v27 + 1) = a2;
  sub_1B72051F0(&v27, v26);
  sub_1B720ABEC(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v8;
  sub_1B7392994(v26, v9, isUniquelyReferenced_nonNull_native);
  v11 = v29;
  v12 = *MEMORY[0x1E697ADC8];
  v28 = MEMORY[0x1E69E6158];
  *&v27 = v5;
  *(&v27 + 1) = v6 | 0x8000000000000000;
  sub_1B72051F0(&v27, v26);
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v11;
  sub_1B7392994(v26, v13, v14);

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B78000B8();
  __swift_project_value_buffer(v15, qword_1EDAF65B0);
  v16 = sub_1B7800098();
  v17 = sub_1B78011F8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B7198000, v16, v17, "Adding user identity to keychain", v18, 2u);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
  }

  type metadata accessor for CFString(0);
  sub_1B72B91A8(&qword_1EB98EFC8, type metadata accessor for CFString);
  v19 = sub_1B7800708();

  v20 = SecItemAdd(v19, 0);

  v21 = sub_1B7800098();
  if (v20)
  {
    v22 = sub_1B78011D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v20;
      _os_log_impl(&dword_1B7198000, v21, v22, "Failed to add identity to keychain with status: %d", v23, 8u);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v20 userInfo:0];
    swift_willThrow();
  }

  else
  {
    v24 = sub_1B78011F8();
    if (os_log_type_enabled(v21, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B7198000, v21, v24, "Added user identity to keychain", v25, 2u);
      MEMORY[0x1B8CA7A40](v25, -1, -1);
    }
  }
}

uint64_t sub_1B72B8054()
{
  v1 = sub_1B7800C78();
  *(v1 + 16) = 256;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 32) = 0u;
  v2 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x100uLL, (v1 + 32));
  if (v2)
  {
    LODWORD(v3) = v2;

    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B78000B8();
    __swift_project_value_buffer(v4, qword_1EDAF65B0);
    v5 = sub_1B7800098();
    v6 = sub_1B78011D8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1B7198000, v5, v6, "Failed to generate random data: %d", v7, 8u);
      MEMORY[0x1B8CA7A40](v7, -1, -1);
    }

    v3 = v3;
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v3 userInfo:0];
    swift_willThrow();
  }

  else
  {
    v3 = sub_1B7405F7C(v1);
    v9 = v8;

    sub_1B72B7CC8(v3, v9, 0);
    if (v0)
    {
      sub_1B720A388(v3, v9);
    }
  }

  return v3;
}

_BYTE *sub_1B72B8240@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B77F31E0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B72B8688(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B72B8704(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1B72B82D4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1B78006D8();
      sub_1B72B91A8(&qword_1EB99ED20, MEMORY[0x1E6966620]);
      return sub_1B7800438();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1B72B84B4(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1B72B84B4(v4, v5);
  }

  sub_1B78006D8();
  sub_1B72B91A8(&qword_1EB99ED20, MEMORY[0x1E6966620]);
  return sub_1B7800438();
}

uint64_t sub_1B72B84B4(uint64_t a1, uint64_t a2)
{
  result = sub_1B77FEB78();
  if (!result || (result = sub_1B77FEBA8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B77FEB98();
      sub_1B78006D8();
      sub_1B72B91A8(&qword_1EB99ED20, MEMORY[0x1E6966620]);
      return sub_1B7800438();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B72B8594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  a8[5] = a9;
  a8[6] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 2);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a1, a9);
  a8[13] = 0xD000000000000019;
  a8[14] = 0x80000001B7877D30;
  a8[15] = 0xD000000000000022;
  a8[16] = 0x80000001B7877D50;
  a8[17] = 0xD000000000000022;
  a8[18] = 0x80000001B7877D80;
  a8[7] = a2;
  a8[8] = a3;
  a8[9] = a4;
  a8[10] = a5;
  a8[11] = a6;
  a8[12] = a7;
  return a8;
}

uint64_t sub_1B72B8688(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B77FEBC8();
  swift_allocObject();
  result = sub_1B77FEB68();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B77FF558();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B72B8704(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B77FEBC8();
  swift_allocObject();
  result = sub_1B77FEB68();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B72B8788(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697B318];
  v24 = MEMORY[0x1E69E6370];
  LOBYTE(v23) = 1;
  sub_1B72051F0(&v23, result);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = a1;
  sub_1B7392994(result, v2, isUniquelyReferenced_nonNull_native);
  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_1B72B91A8(&qword_1EB98EFC8, type metadata accessor for CFString);
  v4 = sub_1B7800708();

  v5 = SecItemCopyMatching(v4, result);

  if (v5 == -25300)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v11 = sub_1B78000B8();
    __swift_project_value_buffer(v11, qword_1EDAF65B0);
    v12 = sub_1B7800098();
    v13 = sub_1B78011B8();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_22;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "User identity does not exist.";
    goto LABEL_21;
  }

  if (!v5)
  {
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
      *v9 = 0;
      _os_log_impl(&dword_1B7198000, v7, v8, "Obtained existing user identity", v9, 2u);
      MEMORY[0x1B8CA7A40](v9, -1, -1);
    }

    if (result[0])
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v10 = v23;
LABEL_23:
        swift_unknownObjectRelease();
        return v10;
      }
    }

    v12 = sub_1B7800098();
    v13 = sub_1B78011D8();
    if (!os_log_type_enabled(v12, v13))
    {
LABEL_22:

      v10 = 0;
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
LABEL_21:
    _os_log_impl(&dword_1B7198000, v12, v13, v15, v14, 2u);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
    goto LABEL_22;
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1B78000B8();
  __swift_project_value_buffer(v16, qword_1EDAF65B0);
  v17 = sub_1B7800098();
  v18 = sub_1B78011D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v5;
    _os_log_impl(&dword_1B7198000, v17, v18, "Keychain error: %d", v19, 8u);
    MEMORY[0x1B8CA7A40](v19, -1, -1);
  }

  v10 = v5;
  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v5 userInfo:{0, v21}];
  swift_willThrow();
  swift_unknownObjectRelease();
  return v10;
}

void sub_1B72B8BD8()
{
  type metadata accessor for CFString(0);
  sub_1B72B91A8(&qword_1EB98EFC8, type metadata accessor for CFString);
  v0 = sub_1B7800708();
  v1 = SecItemDelete(v0);

  if (v1 == -25300)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v7 = sub_1B78000B8();
    __swift_project_value_buffer(v7, qword_1EDAF65B0);
    v3 = sub_1B7800098();
    v4 = sub_1B78011B8();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "User identity not found in keychain";
    goto LABEL_11;
  }

  if (!v1)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B78000B8();
    __swift_project_value_buffer(v2, qword_1EDAF65B0);
    v3 = sub_1B7800098();
    v4 = sub_1B78011B8();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Deleted user identity from keychain";
LABEL_11:
    _os_log_impl(&dword_1B7198000, v3, v4, v6, v5, 2u);
    MEMORY[0x1B8CA7A40](v5, -1, -1);
LABEL_12:

    return;
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B78000B8();
  __swift_project_value_buffer(v8, qword_1EDAF65B0);
  v9 = sub_1B7800098();
  v10 = sub_1B78011D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v1;
    _os_log_impl(&dword_1B7198000, v9, v10, "Failed to delete user identity with status: %d", v11, 8u);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v1 userInfo:0];
  swift_willThrow();
}

uint64_t sub_1B72B8F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B72B8F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B72B9040()
{
  result = qword_1EB990DB8;
  if (!qword_1EB990DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990DB8);
  }

  return result;
}

unint64_t sub_1B72B9098()
{
  result = qword_1EB990DC0;
  if (!qword_1EB990DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990DC0);
  }

  return result;
}

unint64_t sub_1B72B90F0()
{
  result = qword_1EB990DC8;
  if (!qword_1EB990DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990DC8);
  }

  return result;
}

unint64_t sub_1B72B9144()
{
  result = qword_1EB990DE8;
  if (!qword_1EB990DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990DE8);
  }

  return result;
}

uint64_t sub_1B72B91A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B72B91F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-v3];
  v5 = sub_1B7800378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B72B9418(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B72B9488(v4);
    archive_entry_set_pathname_utf8();
    return sub_1B72B9488(a1);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1B7800268();
    sub_1B72B9488(a1);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1B72B9418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72B9488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BankConnectService.reevaluateBankConnectEligibility()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for BankConnectService.Message();
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B72B95B4, 0, 0);
}

uint64_t sub_1B72B95B4()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7267548;
  v2 = *(v0 + 32);

  return sub_1B72676AC(v2);
}

uint64_t sub_1B72B9670()
{
  v1[2] = type metadata accessor for BankConnectService.Message();
  v2 = swift_task_alloc();
  v3 = *v0;
  v1[3] = v2;
  v1[4] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B72B9704, 0, 0);
}

uint64_t sub_1B72B9704()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7268B48;
  v2 = *(v0 + 24);

  return sub_1B72676AC(v2);
}

uint64_t dispatch thunk of BankConnectDiscoveryCardReevaluating.reevaluateBankConnectEligibility()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return v7(a1, a2);
}

uint64_t sub_1B72B98D8(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1B72B99C8;

  return v4(v1 + 16);
}

uint64_t sub_1B72B99C8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B72BBA34;
  }

  else
  {
    v2 = sub_1B72383A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B72B9ADC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B72B9BD4;

  return v6(a1);
}

uint64_t sub_1B72B9BD4()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B72BBA30, 0, 0);
}

uint64_t sub_1B72B9D08(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B72B9E00;

  return v6(a1);
}

uint64_t sub_1B72B9E00()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B72B9F34, 0, 0);
}

uint64_t sub_1B72B9F34()
{
  v21 = v0;
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 40);
    sub_1B7201CA4();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
    v6 = *v2;
  }

  else
  {

    v7 = sub_1B77FF308();
    v8 = [v7 domain];
    v9 = sub_1B7800868();
    v11 = v10;

    if (v9 == 0xD000000000000014 && 0x80000001B7876080 == v11)
    {
    }

    else
    {
      v13 = sub_1B78020F8();

      if ((v13 & 1) == 0)
      {
        swift_willThrow();

        goto LABEL_14;
      }
    }

    v14 = v7;
    sub_1B76C6070(v14, v20);
    v15 = v20[0];
    v16 = *(v0 + 32);
    if (v20[0] == 8)
    {
      swift_willThrow();

      goto LABEL_14;
    }

    sub_1B7201CA4();
    swift_allocError();
    *v17 = v15;
    swift_willThrow();

    v6 = v16;
  }

LABEL_14:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B72BA130(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1B72BA220;

  return v4(v1 + 16);
}

uint64_t sub_1B72BA220()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B72BA334;
  }

  else
  {
    v2 = sub_1B7236E74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B72BA334()
{
  v21 = v0;
  v1 = *(v0 + 40);
  *(v0 + 24) = v1;
  v2 = (v0 + 24);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 48);
    sub_1B7201CA4();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
    v6 = *v2;
  }

  else
  {

    v7 = sub_1B77FF308();
    v8 = [v7 domain];
    v9 = sub_1B7800868();
    v11 = v10;

    if (v9 == 0xD000000000000014 && 0x80000001B7876080 == v11)
    {
    }

    else
    {
      v13 = sub_1B78020F8();

      if ((v13 & 1) == 0)
      {
        swift_willThrow();

        goto LABEL_14;
      }
    }

    v14 = v7;
    sub_1B76C6070(v14, v20);
    v15 = v20[0];
    v16 = *(v0 + 40);
    if (v20[0] == 8)
    {
      swift_willThrow();

      goto LABEL_14;
    }

    sub_1B7201CA4();
    swift_allocError();
    *v17 = v15;
    swift_willThrow();

    v6 = v16;
  }

LABEL_14:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B72BA530()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = *__swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));

  return sub_1B72BB1BC(v2, v4, v3, v5, v1);
}

void FinanceStore.accountHistory(since:isMonitoring:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  static DeviceInfo.deviceType.getter(&v10);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 16);
    a3[3] = &_s30AccountHistoryIteratorProviderVN;
    a3[4] = sub_1B72BAF90();
    v9 = swift_allocObject();
    *a3 = v9;
    *(v9 + 64) = type metadata accessor for FinanceStore();
    *(v9 + 72) = &off_1F2F66960;
    *(v9 + 40) = v3;
    *(v9 + 16) = v8;
    *(v9 + 24) = v6;
    *(v9 + 32) = v7;
    *(v9 + 80) = a2 & 1;

    sub_1B72274E8(v6, v7);
  }
}

uint64_t sub_1B72BA67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B72BA6A0, 0, 0);
}

uint64_t sub_1B72BA6A0()
{
  v7 = v0;
  v6[0] = 2;
  if (FinanceStore.isDataRestricted(for:)(v6))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1B72BA7BC;
    v5 = v0[4];

    return sub_1B739E0B0(v5);
  }
}

uint64_t sub_1B72BA7BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B72BA908, 0, 0);
}

uint64_t FinanceStore.accounts(query:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B72BA94C, 0, 0);
}

void sub_1B72BA94C()
{
  v4 = v0;
  static DeviceInfo.deviceType.getter(&v3);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1B72BAA34;

    sub_1B72B98D8(&unk_1B7810410);
  }
}

uint64_t sub_1B72BAA34()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B72BAB8C, 0, 0);
}

uint64_t sub_1B72BAB8C()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 64) == 4;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_1B7801C88();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t FinanceStore.privateAccounts(query:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = *(a1 + 1);
  *(v2 + 57) = *(a1 + 24);
  *(v2 + 96) = a1[4];
  *(v2 + 58) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1B72BACE8, 0, 0);
}

void sub_1B72BACE8()
{
  v9 = v0;
  static DeviceInfo.deviceType.getter(&v7);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8[0] = 2;
    if (FinanceStore.isDataRestricted(for:)(v8))
    {
      sub_1B7201CA4();
      swift_allocError();
      *v1 = 2;
      swift_willThrow();
      v2 = *(v0 + 8);

      v2();
    }

    else
    {
      v3 = *(v0 + 58);
      v4 = *(v0 + 96);
      v5 = *(v0 + 57);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 24) = *(v0 + 80);
      *(v0 + 40) = v5;
      *(v0 + 48) = v4;
      *(v0 + 56) = v3;
      v6 = swift_task_alloc();
      *(v0 + 104) = v6;
      *v6 = v0;
      v6[1] = sub_1B72BAE3C;

      sub_1B739E964((v0 + 16));
    }
  }
}

uint64_t sub_1B72BAE3C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B72BAF78, 0, 0);
}

unint64_t sub_1B72BAF90()
{
  result = qword_1EB990DF8;
  if (!qword_1EB990DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990DF8);
  }

  return result;
}

uint64_t sub_1B72BAFE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7201BB0;

  return sub_1B72BA67C(a1, v5, v4);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B72BB0B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1B72BB0FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B72BB164()
{
  result = qword_1EB990E00;
  if (!qword_1EB990E00)
  {
    type metadata accessor for Account(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E00);
  }

  return result;
}

uint64_t sub_1B72BB1BC(unint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v7) = a3;
  LOBYTE(v8) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for FinanceStore();
  v14 = &off_1F2F66960;
  v60[3] = v13;
  v60[4] = &off_1F2F66960;
  v60[0] = a4;
  v15 = sub_1B77FFA18();
  v16 = *(*(v15 - 8) + 56);
  v52 = v12;
  v16(v12, 1, 1, v15);
  sub_1B719B06C(v60, v58);
  v17 = *(a5 + 16);

  os_unfair_lock_lock((v17 + 24));
  if (*(v17 + 16))
  {
    v51 = *(v17 + 16);
  }

  else
  {
    v18 = sub_1B73ADA9C();
    *(v17 + 16) = v18;
    v51 = v18;
  }

  os_unfair_lock_unlock((v17 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E08);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  *(v19 + qword_1EDB08720) = 0;
  v20 = v19 + qword_1EDB086F0;
  *v20 = 0;
  *(v20 + 8) = -1;
  v21 = qword_1EDB08700;
  if (qword_1EDAF6588 != -1)
  {
LABEL_26:
    swift_once();
  }

  v22 = sub_1B78000B8();
  v23 = __swift_project_value_buffer(v22, qword_1EDAF6590);
  (*(*(v22 - 8) + 16))(v19 + v21, v23, v22);
  sub_1B7227AFC(v52, v19 + qword_1EDB086F8);
  *(v19 + 32) = v7 & 1;
  v24 = v51;
  *(v19 + qword_1EDB08748) = v51;
  v25 = (v19 + qword_1EDB08740);
  *v25 = sub_1B72BB888;
  v25[1] = 0;
  v7 = *v20;
  LOBYTE(v22) = *(v20 + 8);

  sub_1B72274E8(a1, v8);
  *v20 = a1;
  *(v20 + 8) = v8;
  sub_1B7201CF8(v7, v22);
  v26 = *__swift_project_boxed_opaque_existential_1(v58, v59);
  v56 = v13;
  v57 = v14;
  v55[0] = v26;
  sub_1B719B06C(v55, v54);
  v27 = swift_allocObject();
  sub_1B71E4C44(v54, v27 + 16);

  __swift_destroy_boxed_opaque_existential_1(v55);
  v28 = (v19 + qword_1EDB08708);
  *v28 = &unk_1B7810520;
  v28[1] = v27;
  v29 = *__swift_project_boxed_opaque_existential_1(v58, v59);
  v56 = v13;
  v57 = v14;
  v55[0] = v29;
  sub_1B719B06C(v55, v54);
  v30 = swift_allocObject();
  sub_1B71E4C44(v54, v30 + 16);

  __swift_destroy_boxed_opaque_existential_1(v55);
  v31 = (v19 + qword_1EDB08718);
  *v31 = &unk_1B7824A70;
  v31[1] = v30;
  *(v19 + qword_1EDB08710) = 0;
  v32 = [objc_opt_self() defaultCenter];
  sub_1B78013F8();

  v50 = v19;
  sub_1B78013C8();
  v33 = [*(v24 + 2) persistentStoreCoordinator];
  v34 = [v33 persistentStores];

  sub_1B72BB97C();
  v13 = sub_1B7800C38();

  if (!(v13 >> 62))
  {
    v8 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_28:

    v43 = 0;
    v45 = 0;
    v42 = v50;
    goto LABEL_29;
  }

  v8 = sub_1B7801958();
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_7:
  a1 = 0;
  v20 = 0x6C61636F4CLL;
  v53 = v13 & 0xC000000000000001;
  v21 = v13 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v53)
    {
      v35 = MEMORY[0x1B8CA5DC0](a1, v13);
    }

    else
    {
      if (a1 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v35 = *(v13 + 8 * a1 + 32);
    }

    v36 = v35;
    v7 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v37 = [v35 configurationName];
    v38 = sub_1B7800868();
    v19 = v39;

    if (v38 == 0x6C61636F4CLL && v19 == 0xE500000000000000)
    {
      break;
    }

    v14 = sub_1B78020F8();

    if (v14)
    {
      goto LABEL_21;
    }

    ++a1;
    if (v7 == v8)
    {
      goto LABEL_28;
    }
  }

LABEL_21:

  v41 = [v36 identifier];

  v42 = v50;
  if (v41)
  {
    v43 = sub_1B7800868();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

LABEL_29:
  v46 = (v42 + qword_1EDB08730);
  *v46 = v43;
  v46[1] = v45;
  *(v42 + qword_1EDB08728) = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v47 = _os_activity_create(&dword_1B7198000, "FinancialDataAsyncIterator", qword_1EDAFA650, OS_ACTIVITY_FLAG_DETACHED);

  sub_1B72BB9C8(v52);
  __swift_destroy_boxed_opaque_existential_1(v58);
  *(v42 + qword_1EDB08738) = v47;
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v42;
}

uint64_t sub_1B72BB8BC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B721FDB8;

  return sub_1B750FC74(a1, a2, a3, a4, v4 + 16);
}

unint64_t sub_1B72BB97C()
{
  result = qword_1EDAFC540;
  if (!qword_1EDAFC540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAFC540);
  }

  return result;
}

uint64_t sub_1B72BB9C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArchivingError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](8250, 0xE200000000000000);
  MEMORY[0x1B8CA4D30](v1, v2);
  return v4;
}

unint64_t sub_1B72BBAB4()
{
  result = qword_1EB990E10;
  if (!qword_1EB990E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E10);
  }

  return result;
}

uint64_t ArchiveReadingError.errorDescription.getter()
{
  v1 = v0[1];
  if ((v0[3] & 1) == 0)
  {
    v1 = *v0;
  }

  return v1;
}

unint64_t sub_1B72BBB70()
{
  result = qword_1EB990E18;
  if (!qword_1EB990E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E18);
  }

  return result;
}

uint64_t sub_1B72BBBC4()
{
  v1 = v0[1];
  if ((v0[3] & 1) == 0)
  {
    v1 = *v0;
  }

  return v1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B72BBC34(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}