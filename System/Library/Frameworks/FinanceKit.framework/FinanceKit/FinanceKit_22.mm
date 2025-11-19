void sub_1B73A6CAC(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for ScheduledPayment();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v51[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v51];

  v13 = v51[0];
  if (v12)
  {
    v48 = v3;
    v49 = a1;
    v46 = a3;
    v14 = type metadata accessor for ScheduledPaymentQuery();
    v15 = *(a2 + v14[8]);
    v16 = *a2;
    v17 = a2 + v14[6];
    v18 = *v17;
    v19 = v17[8];
    v20 = a2 + v14[7];
    v50 = *v20;
    v47 = v20[8];
    type metadata accessor for ManagedScheduledPreauthorizedPayment();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = v13;
    v23 = [ObjCClassFromMetadata fetchRequest];
    v24 = v15;
    v25 = v23;
    [v23 setPredicate_];
    sub_1B73AD4D0(v16, v25, &qword_1EB991138, &unk_1B7820610, _s10FinanceKit36ManagedScheduledPreauthorizedPaymentC14mappedKeyPathsSDys03AnyH4PathCSSGvgZ_0);
    if ((v19 & 1) == 0 && v18 >= 1)
    {
      [v25 setFetchLimit_];
    }

    v26 = v47;
    if (v50 < 1)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      [v25 setFetchOffset_];
    }

    [v25 setReturnsObjectsAsFaults_];
    v27 = v48;
    v28 = sub_1B7801498();
    if (v27)
    {
    }

    else
    {
      v30 = v28;
      v48 = 0;
      if (qword_1EDAF6588 != -1)
      {
        swift_once();
      }

      v31 = sub_1B78000B8();
      __swift_project_value_buffer(v31, qword_1EDAF6590);

      v32 = sub_1B7800098();
      LOBYTE(v33) = sub_1B78011F8();
      v34 = v30 >> 62;
      if (!os_log_type_enabled(v32, v33))
      {

        goto LABEL_19;
      }

      ObjCClassFromMetadata = swift_slowAlloc();
      *ObjCClassFromMetadata = 134217984;
      if (v34)
      {
        goto LABEL_37;
      }

      for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
      {
        *(ObjCClassFromMetadata + 1) = i;

        _os_log_impl(&dword_1B7198000, v32, v33, "Found %ld scheduled payments", ObjCClassFromMetadata, 0xCu);
        MEMORY[0x1B8CA7A40](ObjCClassFromMetadata, -1, -1);

LABEL_19:
        v50 = v25;
        v36 = NSManagedObjectContext.currentLocalHistoryToken.getter();
        LODWORD(v37) = v36 ? 0 : -1;
        if (v34)
        {
          v43 = v37;
          v37 = v36;
          v25 = sub_1B7801958();
          v36 = v37;
          LODWORD(v37) = v43;
          v49 = v36;
          if (!v25)
          {
LABEL_34:

            v39 = MEMORY[0x1E69E7CC0];
            goto LABEL_35;
          }
        }

        else
        {
          v25 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v49 = v36;
          if (!v25)
          {
            goto LABEL_34;
          }
        }

        v47 = v37;
        v51[0] = MEMORY[0x1E69E7CC0];
        v32 = (v25 & ~(v25 >> 63));
        v45 = v36;
        v33 = v51;
        sub_1B71FDF24(0, v32, 0);
        if ((v25 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_37:
        ;
      }

      v38 = 0;
      v39 = v51[0];
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1B8CA5DC0](v38, v30);
        }

        else
        {
          v40 = *(v30 + 8 * v38 + 32);
        }

        ScheduledPayment.init(_:)(v40, v10);
        v51[0] = v39;
        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          sub_1B71FDF24(v41 > 1, v42 + 1, 1);
          v39 = v51[0];
        }

        ++v38;
        v39[2] = v42 + 1;
        sub_1B73AEE14(v10, v39 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v42, type metadata accessor for ScheduledPayment);
      }

      while (v25 != v38);

      v37 = v45;

      LOBYTE(v37) = v47;
LABEL_35:
      v44 = v46;
      *v46 = v49;
      *(v44 + 8) = v37;
      v44[2] = v39;
    }
  }

  else
  {
    v29 = v51[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

void sub_1B73A71E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DE8);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v45 - v6;
  v8 = type metadata accessor for RecurringPaymentQuery();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v14 = sub_1B78000B8();
  __swift_project_value_buffer(v14, qword_1EDAF6590);
  sub_1B73AEBE4(a1, v13, type metadata accessor for RecurringPaymentQuery);
  sub_1B73AEBE4(a1, v11, type metadata accessor for RecurringPaymentQuery);
  v15 = sub_1B7800098();
  v16 = sub_1B78011F8();
  v17 = os_log_type_enabled(v15, v16);
  v52 = a1;
  if (v17)
  {
    v46 = v16;
    v48 = v15;
    v49 = a3;
    v50 = v3;
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59 = v45;
    *v18 = 136315394;
    v58 = *&v13[*(v8 + 32)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v19 = sub_1B7801748();
    v21 = v20;
    sub_1B73AEC4C(v13, type metadata accessor for RecurringPaymentQuery);
    v22 = sub_1B71A3EF8(v19, v21, &v59);

    *(v18 + 4) = v22;
    v47 = v18;
    *(v18 + 12) = 2080;
    v23 = *v11;
    KeyPath = swift_getKeyPath();
    v24 = MEMORY[0x1E69E7CC0];
    v58 = MEMORY[0x1E69E7CC0];
    v25 = *(v23 + 16);
    if (v25)
    {
      v26 = v54 + 16;
      v27 = *(v54 + 16);
      v28 = v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v53 = *(v54 + 72);
      v54 = v27;
      v29 = (v26 - 8);
      do
      {
        v30 = v56;
        (v54)(v7, v28, v56);
        swift_getAtKeyPath();
        v31 = (*v29)(v7, v30);
        if (v57)
        {
          MEMORY[0x1B8CA4F20](v31);
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B7800C58();
          }

          sub_1B7800C88();
          v24 = v58;
        }

        v28 += v53;
        --v25;
      }

      while (v25);
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993108);
    v33 = MEMORY[0x1B8CA4F60](v24, v32);
    v35 = v34;

    sub_1B73AEC4C(v11, type metadata accessor for RecurringPaymentQuery);
    v36 = sub_1B71A3EF8(v33, v35, &v59);

    v38 = v47;
    v37 = v48;
    *(v47 + 14) = v36;
    _os_log_impl(&dword_1B7198000, v37, v46, "Executing recurring payment query with nsPredicate: %s and sortDescriptor keyPaths: %s", v38, 0x16u);
    v39 = v45;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v39, -1, -1);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
  }

  else
  {

    sub_1B73AEC4C(v11, type metadata accessor for RecurringPaymentQuery);
    sub_1B73AEC4C(v13, type metadata accessor for RecurringPaymentQuery);
  }

  v40 = *(v51 + 16);
  os_unfair_lock_lock((v40 + 24));
  if (*(v40 + 16))
  {
    v41 = *(v40 + 16);
  }

  else
  {
    v41 = sub_1B73ADA9C();
    *(v40 + 16) = v41;
  }

  os_unfair_lock_unlock((v40 + 24));
  v42 = [*(v41 + 2) newBackgroundContext];

  MEMORY[0x1EEE9AC00](v43);
  v44 = v52;
  *(&v45 - 2) = v42;
  *(&v45 - 1) = v44;
  sub_1B7801468();
}

void sub_1B73A7754(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for RecurringPayment(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v51[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v51];

  v13 = v51[0];
  if (v12)
  {
    v48 = v3;
    v49 = a1;
    v46 = a3;
    v14 = type metadata accessor for RecurringPaymentQuery();
    v15 = *(a2 + v14[8]);
    v16 = *a2;
    v17 = a2 + v14[6];
    v18 = *v17;
    v19 = v17[8];
    v20 = a2 + v14[7];
    v50 = *v20;
    v47 = v20[8];
    type metadata accessor for ManagedRecurringPreauthorizedPayment();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = v13;
    v23 = [ObjCClassFromMetadata fetchRequest];
    v24 = v15;
    v25 = v23;
    [v23 setPredicate_];
    sub_1B73AD4D0(v16, v25, &qword_1EB991DE8, &unk_1B78205D0, _s10FinanceKit36ManagedRecurringPreauthorizedPaymentC14mappedKeyPathsSDys03AnyH4PathCSSGvgZ_0);
    if ((v19 & 1) == 0 && v18 >= 1)
    {
      [v25 setFetchLimit_];
    }

    v26 = v47;
    if (v50 < 1)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      [v25 setFetchOffset_];
    }

    [v25 setReturnsObjectsAsFaults_];
    v27 = v48;
    v28 = sub_1B7801498();
    if (v27)
    {
    }

    else
    {
      v30 = v28;
      v48 = 0;
      if (qword_1EDAF6588 != -1)
      {
        swift_once();
      }

      v31 = sub_1B78000B8();
      __swift_project_value_buffer(v31, qword_1EDAF6590);

      v32 = sub_1B7800098();
      LOBYTE(v33) = sub_1B78011F8();
      v34 = v30 >> 62;
      if (!os_log_type_enabled(v32, v33))
      {

        goto LABEL_19;
      }

      ObjCClassFromMetadata = swift_slowAlloc();
      *ObjCClassFromMetadata = 134217984;
      if (v34)
      {
        goto LABEL_37;
      }

      for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
      {
        *(ObjCClassFromMetadata + 1) = i;

        _os_log_impl(&dword_1B7198000, v32, v33, "Found %ld recurring payments", ObjCClassFromMetadata, 0xCu);
        MEMORY[0x1B8CA7A40](ObjCClassFromMetadata, -1, -1);

LABEL_19:
        v50 = v25;
        v36 = NSManagedObjectContext.currentLocalHistoryToken.getter();
        LODWORD(v37) = v36 ? 0 : -1;
        if (v34)
        {
          v43 = v37;
          v37 = v36;
          v25 = sub_1B7801958();
          v36 = v37;
          LODWORD(v37) = v43;
          v49 = v36;
          if (!v25)
          {
LABEL_34:

            v39 = MEMORY[0x1E69E7CC0];
            goto LABEL_35;
          }
        }

        else
        {
          v25 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v49 = v36;
          if (!v25)
          {
            goto LABEL_34;
          }
        }

        v47 = v37;
        v51[0] = MEMORY[0x1E69E7CC0];
        v32 = (v25 & ~(v25 >> 63));
        v45 = v36;
        v33 = v51;
        sub_1B71FDF68(0, v32, 0);
        if ((v25 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_37:
        ;
      }

      v38 = 0;
      v39 = v51[0];
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1B8CA5DC0](v38, v30);
        }

        else
        {
          v40 = *(v30 + 8 * v38 + 32);
        }

        RecurringPayment.init(_:)(v40, v10);
        v51[0] = v39;
        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          sub_1B71FDF68(v41 > 1, v42 + 1, 1);
          v39 = v51[0];
        }

        ++v38;
        v39[2] = v42 + 1;
        sub_1B73AEE14(v10, v39 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v42, type metadata accessor for RecurringPayment);
      }

      while (v25 != v38);

      v37 = v45;

      LOBYTE(v37) = v47;
LABEL_35:
      v44 = v46;
      *v46 = v49;
      *(v44 + 8) = v37;
      v44[2] = v39;
    }
  }

  else
  {
    v29 = v51[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

void sub_1B73A7C90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930F0);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v45 - v6;
  v8 = type metadata accessor for PredictedTransactionQuery();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v14 = sub_1B78000B8();
  __swift_project_value_buffer(v14, qword_1EDAF6590);
  sub_1B73AEBE4(a1, v13, type metadata accessor for PredictedTransactionQuery);
  sub_1B73AEBE4(a1, v11, type metadata accessor for PredictedTransactionQuery);
  v15 = sub_1B7800098();
  v16 = sub_1B78011F8();
  v17 = os_log_type_enabled(v15, v16);
  v52 = a1;
  if (v17)
  {
    v46 = v16;
    v48 = v15;
    v49 = a3;
    v50 = v3;
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59 = v45;
    *v18 = 136315394;
    v58 = *&v13[*(v8 + 32)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v19 = sub_1B7801748();
    v21 = v20;
    sub_1B73AEC4C(v13, type metadata accessor for PredictedTransactionQuery);
    v22 = sub_1B71A3EF8(v19, v21, &v59);

    *(v18 + 4) = v22;
    v47 = v18;
    *(v18 + 12) = 2080;
    v23 = *v11;
    KeyPath = swift_getKeyPath();
    v24 = MEMORY[0x1E69E7CC0];
    v58 = MEMORY[0x1E69E7CC0];
    v25 = *(v23 + 16);
    if (v25)
    {
      v26 = v54 + 16;
      v27 = *(v54 + 16);
      v28 = v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v53 = *(v54 + 72);
      v54 = v27;
      v29 = (v26 - 8);
      do
      {
        v30 = v56;
        (v54)(v7, v28, v56);
        swift_getAtKeyPath();
        v31 = (*v29)(v7, v30);
        if (v57)
        {
          MEMORY[0x1B8CA4F20](v31);
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B7800C58();
          }

          sub_1B7800C88();
          v24 = v58;
        }

        v28 += v53;
        --v25;
      }

      while (v25);
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993100);
    v33 = MEMORY[0x1B8CA4F60](v24, v32);
    v35 = v34;

    sub_1B73AEC4C(v11, type metadata accessor for PredictedTransactionQuery);
    v36 = sub_1B71A3EF8(v33, v35, &v59);

    v38 = v47;
    v37 = v48;
    *(v47 + 14) = v36;
    _os_log_impl(&dword_1B7198000, v37, v46, "Executing predicted transaction query with nsPredicate: %s and sortDescriptor keyPaths: %s", v38, 0x16u);
    v39 = v45;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v39, -1, -1);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
  }

  else
  {

    sub_1B73AEC4C(v11, type metadata accessor for PredictedTransactionQuery);
    sub_1B73AEC4C(v13, type metadata accessor for PredictedTransactionQuery);
  }

  v40 = *(v51 + 16);
  os_unfair_lock_lock((v40 + 24));
  if (*(v40 + 16))
  {
    v41 = *(v40 + 16);
  }

  else
  {
    v41 = sub_1B73ADA9C();
    *(v40 + 16) = v41;
  }

  os_unfair_lock_unlock((v40 + 24));
  v42 = [*(v41 + 2) newBackgroundContext];

  MEMORY[0x1EEE9AC00](v43);
  v44 = v52;
  *(&v45 - 2) = v42;
  *(&v45 - 1) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930F8);
  sub_1B7801468();
}

void sub_1B73A8210(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for PredictedTransaction(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v45 = a1;
  v46[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v46];

  v13 = v46[0];
  if (v12)
  {
    v44 = v3;
    v41 = a3;
    v14 = type metadata accessor for PredictedTransactionQuery();
    v15 = *(a2 + v14[8]);
    v16 = *a2;
    v17 = a2 + v14[6];
    v18 = *v17;
    v19 = v17[8];
    v20 = a2 + v14[7];
    v43 = *v20;
    v42 = v20[8];
    type metadata accessor for ManagedPredictedTransaction();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = v13;
    v23 = [ObjCClassFromMetadata fetchRequest];
    [v23 setPredicate_];
    sub_1B73AD7B4(v16, v23);
    if ((v19 & 1) == 0 && v18 >= 1)
    {
      [v23 setFetchLimit_];
    }

    v24 = v42;
    if (v43 < 1)
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      [v23 setFetchOffset_];
    }

    [v23 setReturnsObjectsAsFaults_];
    v25 = v44;
    v26 = sub_1B7801498();
    if (v25)
    {
    }

    else
    {
      v28 = v26;
      v45 = v23;
      if (qword_1EDAF6588 != -1)
      {
        swift_once();
      }

      v29 = sub_1B78000B8();
      __swift_project_value_buffer(v29, qword_1EDAF6590);

      v30 = sub_1B7800098();
      LOBYTE(v31) = sub_1B78011F8();
      v32 = v28 >> 62;
      if (!os_log_type_enabled(v30, v31))
      {

        goto LABEL_19;
      }

      v23 = swift_slowAlloc();
      *v23 = 134217984;
      if (v32)
      {
        goto LABEL_33;
      }

      for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
      {
        *(v23 + 1) = i;

        _os_log_impl(&dword_1B7198000, v30, v31, "Found %ld predicted transactions", v23, 0xCu);
        MEMORY[0x1B8CA7A40](v23, -1, -1);

LABEL_19:
        if (v32)
        {
          v31 = sub_1B7801958();
          v34 = v45;
          if (!v31)
          {
LABEL_31:

            *v41 = MEMORY[0x1E69E7CC0];
            return;
          }
        }

        else
        {
          v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v34 = v45;
          if (!v31)
          {
            goto LABEL_31;
          }
        }

        v44 = 0;
        v46[0] = MEMORY[0x1E69E7CC0];
        v30 = v46;
        sub_1B71FDFAC(0, v31 & ~(v31 >> 63), 0);
        if ((v31 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_33:
        ;
      }

      v35 = 0;
      v36 = v46[0];
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x1B8CA5DC0](v35, v28);
        }

        else
        {
          v37 = *(v28 + 8 * v35 + 32);
        }

        PredictedTransaction.init(_:)(v37, v10);
        v46[0] = v36;
        v39 = v36[2];
        v38 = v36[3];
        if (v39 >= v38 >> 1)
        {
          sub_1B71FDFAC(v38 > 1, v39 + 1, 1);
          v36 = v46[0];
        }

        ++v35;
        v36[2] = v39 + 1;
        sub_1B73AEE14(v10, v36 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v39, type metadata accessor for PredictedTransaction);
      }

      while (v31 != v35);

      *v41 = v36;
    }
  }

  else
  {
    v27 = v46[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

void sub_1B73A86D0(void *a1@<X0>, void *a2@<X8>)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v28[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v28];

  v7 = v28[0];
  if (v6)
  {
    v25 = a2;
    type metadata accessor for ManagedInternalTransaction();
    v27.receiver = swift_getObjCClassFromMetadata();
    v27.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v8 = v7;
    v9 = objc_msgSendSuper2(&v27, sel_fetchRequest);
    v10 = sub_1B7800C18();
    [v9 setRelationshipKeyPathsForPrefetching_];

    v12 = sub_1B723AF4C(v11);

    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B7807CD0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
    *(v13 + 64) = sub_1B728216C(&qword_1EB990B88, &qword_1EB990B80);
    *(v13 + 32) = v12;
    v14 = sub_1B78010E8();
    [v9 setPredicate_];

    _s10FinanceKit26ManagedInternalTransactionC21insightObjectKeyPathsSaySSGyFZ_0();
    v15 = sub_1B7800C18();

    [v9 setRelationshipKeyPathsForPrefetching_];

    v16 = sub_1B7801498();
    if (v2)
    {
    }

    else
    {
      v18 = v16;
      v28[0] = MEMORY[0x1E69E7CC8];
      if (v16 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v20 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1B8CA5DC0](v20, v18);
          }

          else
          {
            if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          v26 = v21;
          sub_1B73A8A80(v28, &v26);

          ++v20;
          if (v23 == i)
          {
            v24 = v28[0];
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

      v24 = MEMORY[0x1E69E7CC8];
LABEL_19:

      *v25 = v24;
    }
  }

  else
  {
    v17 = v28[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t sub_1B73A8A80(void *a1, void **a2)
{
  v70 = a1;
  v3 = sub_1B77FFA18();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Transaction.Insight(0);
  v5 = *(v79 - 8);
  v6 = MEMORY[0x1EEE9AC00](v79);
  v66 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v73 = &v66 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v66 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = (&v66 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v66 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v66 - v17;
  v19 = *a2;
  v20 = [v19 insightsObject];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 mapsInsightObject];

    if (v22)
    {
      v23 = v22;
      MapsInsight.init(_:)(v23, v18);
      swift_storeEnumTagMultiPayload();
      v24 = sub_1B723F29C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1B723F29C(v25 > 1, v26 + 1, 1, v24);
      }

      v24[2] = v26 + 1;
      sub_1B73AEE14(v18, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26, type metadata accessor for Transaction.Insight);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v27 = [v19 insightsObject];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 bankMerchantInformationInsightObject];

    if (v29)
    {
      v30 = v29;
      TransactionMerchantInformation.init(_:)(v30, &v74);
      v31 = v77;
      v16[2] = v76;
      v16[3] = v31;
      v16[4] = v78;
      v32 = v75;
      *v16 = v74;
      v16[1] = v32;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1B723F29C(0, v24[2] + 1, 1, v24);
      }

      v34 = v24[2];
      v33 = v24[3];
      if (v34 >= v33 >> 1)
      {
        v24 = sub_1B723F29C(v33 > 1, v34 + 1, 1, v24);
      }

      v24[2] = v34 + 1;
      sub_1B73AEE14(v16, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, type metadata accessor for Transaction.Insight);
    }
  }

  v35 = [v19 insightsObject];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 applePayInsightObject];

    if (v37)
    {
      v38 = v37;
      ApplePayTransactionInsight.init(_:)(v38, v71);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1B723F29C(0, v24[2] + 1, 1, v24);
      }

      v40 = v24[2];
      v39 = v24[3];
      if (v40 >= v39 >> 1)
      {
        v24 = sub_1B723F29C(v39 > 1, v40 + 1, 1, v24);
      }

      v24[2] = v40 + 1;
      sub_1B73AEE14(v71, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v40, type metadata accessor for Transaction.Insight);
    }
  }

  v41 = [v19 insightsObject];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 userInsightObject];

    if (v43)
    {
      v44 = v43;
      UserTransactionInsight.init(_:)(v44, v72);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1B723F29C(0, v24[2] + 1, 1, v24);
      }

      v46 = v24[2];
      v45 = v24[3];
      if (v46 >= v45 >> 1)
      {
        v24 = sub_1B723F29C(v45 > 1, v46 + 1, 1, v24);
      }

      v24[2] = v46 + 1;
      sub_1B73AEE14(v72, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v46, type metadata accessor for Transaction.Insight);
    }
  }

  v47 = [v19 insightsObject];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 finHealthInsightObject];

    if (v49)
    {
      v50 = v49;
      FinHealthTransactionInsight.init(_:)(v50, v73);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1B723F29C(0, v24[2] + 1, 1, v24);
      }

      v52 = v24[2];
      v51 = v24[3];
      if (v52 >= v51 >> 1)
      {
        v24 = sub_1B723F29C(v51 > 1, v52 + 1, 1, v24);
      }

      v24[2] = v52 + 1;
      sub_1B73AEE14(v73, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v52, type metadata accessor for Transaction.Insight);
    }
  }

  *(&v75 + 1) = &_s10FinanceKit11FeatureFlagVN_0;
  *&v76 = sub_1B721D3DC();
  LOBYTE(v74) = 13;
  v53 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(&v74);
  if (v53)
  {
    v54 = [v19 insightsObject];
    if (v54)
    {
      v55 = v54;
      v56 = [v54 foundInInsightObject];

      if (v56)
      {
        v57 = v56;
        FoundInTransactionInsight.init(managedInsight:)(v57, &v74);
        *v66 = v74;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1B723F29C(0, v24[2] + 1, 1, v24);
        }

        v59 = v24[2];
        v58 = v24[3];
        if (v59 >= v58 >> 1)
        {
          v24 = sub_1B723F29C(v58 > 1, v59 + 1, 1, v24);
        }

        v24[2] = v59 + 1;
        sub_1B73AEE14(v66, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v59, type metadata accessor for Transaction.Insight);
      }
    }
  }

  if (!v24[2])
  {
  }

  v60 = [v19 publicTransactionObject];
  v61 = [v60 id];

  v62 = v67;
  sub_1B77FF9E8();

  v63 = v70;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v74 = *v63;
  sub_1B7392F5C(v24, v62, isUniquelyReferenced_nonNull_native);
  result = (*(v68 + 8))(v62, v69);
  *v63 = v74;
  return result;
}

void sub_1B73A9358(_OWORD *a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v34 - v6;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - v13;
  type metadata accessor for ManagedInternalTransaction();
  v15 = static ManagedInternalTransaction.existingTransaction(withTransactionID:in:)();
  if (!v1)
  {
    v16 = v37;
    if (!v15)
    {
      *v37 = 0u;
      *(v16 + 16) = 0u;
      *(v16 + 32) = 1;
      return;
    }

    v35 = v15;
    v36 = 0;
    v17 = [v15 insightsObject];
    v18 = [v17 transactionIconObject];

    if (!v18)
    {
      (*(v9 + 56))(v7, 1, 1, v8);
      sub_1B7205418(v7, &qword_1EB98EBD0);

      *v16 = 0u;
      *(v16 + 16) = 0u;
      *(v16 + 32) = 1;
      return;
    }

    v19 = [v18 expiryDate];
    if (v19)
    {
      v20 = v19;
      sub_1B77FF928();

      v21 = v9;
      (*(v9 + 56))(v5, 0, 1, v8);
    }

    else
    {
      v21 = v9;
      (*(v9 + 56))(v5, 1, 1, v8);
    }

    sub_1B7205340(v5, v7);
    if ((*(v21 + 48))(v7, 1, v8) == 1)
    {
      sub_1B7205418(v7, &qword_1EB98EBD0);
LABEL_17:
      v33 = v18;
      sub_1B72D3C24(v33, v16);

      return;
    }

    v22 = v14;
    (*(v21 + 32))(v14, v7, v8);
    sub_1B77FF938();
    v23 = v21;
    v24 = sub_1B77FF8D8();
    v27 = *(v23 + 8);
    v25 = v23 + 8;
    v26 = v27;
    v27(v12, v8);
    if ((v24 & 1) == 0)
    {
      v26(v22, v8);
      goto LABEL_17;
    }

    v34[1] = v25;
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
      _os_log_impl(&dword_1B7198000, v29, v30, "Icon expired, ignoring.", v31, 2u);
      MEMORY[0x1B8CA7A40](v31, -1, -1);
      v32 = v18;
    }

    else
    {
      v32 = v29;
      v29 = v18;
    }

    v26(v22, v8);
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 1;
  }
}

void sub_1B73A97D0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v73 - v10;
  type metadata accessor for ManagedInternalTransaction();
  v12 = static ManagedInternalTransaction.existingTransaction(withTransactionID:in:)();
  if (v2)
  {
    return;
  }

  v76 = 0;
  if (!v12)
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v22 = sub_1B78000B8();
    __swift_project_value_buffer(v22, qword_1EDAF6590);
    (*(v6 + 16))(v11, a1, v5);
    v23 = sub_1B7800098();
    v24 = sub_1B78011B8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v74 = a2;
      v27 = v26;
      v80 = v26;
      *v25 = 136315138;
      sub_1B73AEA94(&qword_1EB98F120, MEMORY[0x1E69695A8]);
      v28 = sub_1B7802068();
      v30 = v29;
      (*(v6 + 8))(v11, v5);
      v31 = sub_1B71A3EF8(v28, v30, &v80);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1B7198000, v23, v24, "Unknown transaction with ID %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1B8CA7A40](v27, -1, -1);
      MEMORY[0x1B8CA7A40](v25, -1, -1);

      *v74 = MEMORY[0x1E69E7CC0];
      return;
    }

    (*(v6 + 8))(v11, v5);
    goto LABEL_26;
  }

  v75 = v12;
  v13 = [v12 paymentHash];
  if (!v13)
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v32 = sub_1B78000B8();
    __swift_project_value_buffer(v32, qword_1EDAF6590);
    (*(v6 + 16))(v9, a1, v5);
    v33 = sub_1B7800098();
    v34 = sub_1B78011B8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v74 = a2;
      v37 = v36;
      v80 = v36;
      *v35 = 136315138;
      sub_1B73AEA94(&qword_1EB98F120, MEMORY[0x1E69695A8]);
      v38 = sub_1B7802068();
      v40 = v39;
      (*(v6 + 8))(v9, v5);
      v41 = sub_1B71A3EF8(v38, v40, &v80);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_1B7198000, v33, v34, "Transaction with ID %s has no paymentHash", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v42 = v37;
      a2 = v74;
      MEMORY[0x1B8CA7A40](v42, -1, -1);
      MEMORY[0x1B8CA7A40](v35, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    goto LABEL_26;
  }

  v14 = v13;
  v15 = sub_1B7800868();
  v17 = v16;

  type metadata accessor for ManagedOrder();
  v79.receiver = swift_getObjCClassFromMetadata();
  v79.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v18 = objc_msgSendSuper2(&v79, sel_fetchRequest);
  v19 = _s10FinanceKit12ManagedOrderC18predicateForOrders25withTransactionIdentifierSo11NSPredicateCSS_tFZ_0(v15, v17);

  [v18 setPredicate_];

  v20 = v76;
  v21 = sub_1B7801498();
  v76 = v20;
  if (v20)
  {

    return;
  }

  v43 = v21;

  if (!(v43 >> 62))
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

  v44 = sub_1B7801958();
  if (!v44)
  {
LABEL_34:

LABEL_26:
    *a2 = MEMORY[0x1E69E7CC0];
    return;
  }

LABEL_17:
  v80 = MEMORY[0x1E69E7CC0];
  sub_1B71FE034(0, v44 & ~(v44 >> 63), 0);
  if (v44 < 0)
  {
    __break(1u);
  }

  else
  {
    v74 = a2;
    v45 = v80;
    v46 = v43;
    v77 = v43;
    if ((v43 & 0xC000000000000001) != 0)
    {
      v47 = 0;
      v78 = v44;
      do
      {
        v48 = MEMORY[0x1B8CA5DC0](v47, v46);
        v49 = [swift_unknownObjectRetain() orderTypeIdentifier];
        v50 = sub_1B7800868();
        v52 = v51;

        v53 = [v48 orderIdentifier];
        v54 = sub_1B7800868();
        v56 = v55;
        swift_unknownObjectRelease_n();

        v80 = v45;
        v58 = *(v45 + 16);
        v57 = *(v45 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1B71FE034((v57 > 1), v58 + 1, 1);
          v45 = v80;
        }

        ++v47;
        *(v45 + 16) = v58 + 1;
        v59 = (v45 + 32 * v58);
        v59[4] = v50;
        v59[5] = v52;
        v59[6] = v54;
        v59[7] = v56;
        v46 = v77;
      }

      while (v78 != v47);
    }

    else
    {
      v60 = 32;
      do
      {
        v78 = v44;
        v61 = *(v46 + v60);
        v62 = [v61 orderTypeIdentifier];
        v63 = sub_1B7800868();
        v65 = v64;

        v66 = [v61 orderIdentifier];
        v67 = sub_1B7800868();
        v69 = v68;

        v80 = v45;
        v71 = *(v45 + 16);
        v70 = *(v45 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1B71FE034((v70 > 1), v71 + 1, 1);
          v45 = v80;
        }

        *(v45 + 16) = v71 + 1;
        v72 = (v45 + 32 * v71);
        v72[4] = v63;
        v72[5] = v65;
        v72[6] = v67;
        v72[7] = v69;
        v60 += 8;
        v46 = v77;
        v44 = v78 - 1;
      }

      while (v78 != 1);
    }

    *v74 = v45;
  }
}

void sub_1B73A9F7C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v45 = a2;
  v5 = type metadata accessor for InternalAccount();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InternalAccountQuery();
  v9 = v8[7];
  v10 = *(a1 + v8[8]);
  v11 = *a1;
  v12 = a1 + v8[6];
  v13 = *v12;
  v14 = v12[8];
  v15 = *(a1 + v9);
  v16 = *(a1 + v9 + 8);
  type metadata accessor for ManagedInternalAccount();
  v17 = [swift_getObjCClassFromMetadata() fetchRequest];
  v18 = v10;
  v19 = v17;
  [v17 setPredicate_];
  sub_1B73AD4D0(v11, v19, &qword_1EB990988, &unk_1B78207B0, _s10FinanceKit22ManagedInternalAccountC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0);
  if ((v14 & 1) == 0 && v13 >= 1)
  {
    [v19 setFetchLimit_];
  }

  if (v15 < 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v16;
  }

  if ((v20 & 1) == 0)
  {
    [v19 setFetchOffset_];
  }

  v21 = sub_1B7800C18();
  [v19 setRelationshipKeyPathsForPrefetching_];

  [v19 setReturnsObjectsAsFaults_];
  v22 = sub_1B7801498();
  if (v3)
  {

    return;
  }

  v23 = v22;
  if (v22 >> 62)
  {
    v24 = sub_1B7801958();
    v42 = v19;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_23:

    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v19;
  if (!v24)
  {
    goto LABEL_23;
  }

LABEL_13:
  v41[1] = 0;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1B71FD914(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
    return;
  }

  v25 = 0;
  v26 = v46;
  v27 = v43;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1B8CA5DC0](v25, v23);
    }

    else
    {
      v28 = *(v23 + 8 * v25 + 32);
    }

    InternalAccount.init(_:)(v28, v7);
    v46 = v26;
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1B71FD914(v29 > 1, v30 + 1, 1);
      v27 = v43;
      v26 = v46;
    }

    ++v25;
    *(v26 + 16) = v30 + 1;
    sub_1B73AEE14(v7, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v30, type metadata accessor for InternalAccount);
  }

  while (v24 != v25);

LABEL_24:
  v31 = NSManagedObjectContext.currentLocalHistoryToken.getter();
  v32 = v31;
  if (v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = -1;
  }

  v34 = qword_1EDAF6588;
  v35 = v31;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_1B78000B8();
  __swift_project_value_buffer(v36, qword_1EDAF6590);

  v37 = sub_1B7800098();
  v38 = sub_1B78011F8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = *(v26 + 16);

    _os_log_impl(&dword_1B7198000, v37, v38, "Found %ld internal accounts", v39, 0xCu);
    MEMORY[0x1B8CA7A40](v39, -1, -1);
  }

  else
  {
  }

  v40 = v44;

  *v40 = v32;
  *(v40 + 8) = v33;
  *(v40 + 16) = v26;
}

void sub_1B73AA3E0(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  LODWORD(v11) = a6;
  LODWORD(v57) = a4;
  v56 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v55 = &v42 - v17;
  v54 = type metadata accessor for BalanceCalculation(0);
  v46 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for InternalAccountBalance(0);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInternalAccountBalance();
  v20 = [swift_getObjCClassFromMetadata() fetchRequest];
  v21 = v20;
  if (!a1)
  {
    goto LABEL_4;
  }

  v48 = a3;
  LODWORD(v49) = v11;
  v11 = a5;
  v22 = a8;
  a8 = a7;
  a7 = v8;
  a3 = v20;
  v23 = qword_1EB98E958;
  v24 = a1;
  if (v23 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v25 = sub_1B751E2EC(off_1EB98FD60);
    v21 = a3;
    [a3 setPredicate_];

    v9 = a7;
    a7 = a8;
    a8 = v22;
    a5 = v11;
    LOBYTE(v11) = v49;
    a3 = v48;
LABEL_4:
    sub_1B7226B50(v56, v21);
    if ((v57 & 1) == 0 && a3 >= 1)
    {
      [v21 setFetchLimit_];
    }

    if ((v11 & 1) == 0 && a5 >= 1)
    {
      [v21 setFetchOffset_];
    }

    [v21 setReturnsObjectsAsFaults_];
    v26 = sub_1B7801498();
    if (v9)
    {

      return;
    }

    v11 = v26;
    v27 = v26 >> 62 ? sub_1B7801958() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v55;
    v45 = a7;
    if (!v27)
    {
      break;
    }

    v42 = 0;
    v43 = v21;
    v44 = a8;
    v58 = MEMORY[0x1E69E7CC0];
    v24 = &v58;
    sub_1B71FE06C(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
LABEL_37:
      sub_1B7205418(v22, &qword_1EB98FD70);
      sub_1B7801C88();
      __break(1u);
      return;
    }

    v28 = 0;
    v57 = v58;
    v47 = v11 & 0xFFFFFFFFFFFFFF8;
    v48 = (v46 + 48);
    v49 = v11 & 0xC000000000000001;
    v29 = &off_1E7CAF000;
    while (!__OFADD__(v28, 1))
    {
      v56 = v28 + 1;
      if (v49)
      {
        v30 = MEMORY[0x1B8CA5DC0](v28, v11);
      }

      else
      {
        if (v28 >= *(v47 + 16))
        {
          goto LABEL_33;
        }

        v30 = *(v11 + 8 * v28 + 32);
      }

      v24 = v30;
      a7 = v27;
      BalanceCalculation.init(managedAccountBalance:)([v30 v29[99]], v22);
      if ((*v48)(v22, 1, v54) == 1)
      {
        goto LABEL_37;
      }

      a8 = v52;
      sub_1B73AEE14(v22, v52, type metadata accessor for BalanceCalculation);
      v31 = [v24 v29[99]];
      v32 = [v31 id];

      v33 = v50;
      sub_1B77FF9E8();

      a3 = v53;
      sub_1B73AEBE4(a8, v33 + *(v53 + 20), type metadata accessor for BalanceCalculation);
      v34 = [v24 lastUpdatedAt];
      sub_1B77FF928();

      sub_1B73AEC4C(a8, type metadata accessor for BalanceCalculation);
      v35 = v57;
      v58 = v57;
      v37 = *(v57 + 16);
      v36 = *(v57 + 24);
      if (v37 >= v36 >> 1)
      {
        v24 = &v58;
        sub_1B71FE06C(v36 > 1, v37 + 1, 1);
        v35 = v58;
      }

      *(v35 + 16) = v37 + 1;
      v38 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v57 = v35;
      sub_1B73AEE14(v33, v35 + v38 + *(v51 + 72) * v37, type metadata accessor for InternalAccountBalance);
      ++v28;
      v27 = a7;
      v22 = v55;
      v29 = &off_1E7CAF000;
      if (v56 == a7)
      {

        v21 = v43;
        a8 = v44;
        v39 = v57;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v40 = NSManagedObjectContext.currentLocalHistoryToken.getter();

  *a8 = v40;
  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = -1;
  }

  *(a8 + 8) = v41;
  *(a8 + 16) = v39;
}

uint64_t sub_1B73AAA24(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1B7801478();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911D0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for InternalInstitutionQuery();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v3[15] = *(v7 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73AABCC, 0, 0);
}

uint64_t sub_1B73AABCC()
{
  v57 = v0;
  v1 = *(v0[6] + 16);
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
  v0[19] = v3;

  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[5];
  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAF6590);
  sub_1B73AEBE4(v6, v4, type metadata accessor for InternalInstitutionQuery);
  sub_1B73AEBE4(v6, v5, type metadata accessor for InternalInstitutionQuery);
  v8 = sub_1B7800098();
  v9 = sub_1B78011F8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  v12 = v0[18];
  if (v10)
  {
    v51 = v9;
    log = v8;
    v54 = v3;
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v14 = 136315394;
    v0[2] = *(v12 + *(v13 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v15 = sub_1B7801748();
    v17 = v16;
    sub_1B73AEC4C(v12, type metadata accessor for InternalInstitutionQuery);
    v18 = sub_1B71A3EF8(v15, v17, &v55);

    *(v14 + 4) = v18;
    buf = v14;
    *(v14 + 12) = 2080;
    v19 = *v11;
    swift_getKeyPath();
    v20 = MEMORY[0x1E69E7CC0];
    v56 = MEMORY[0x1E69E7CC0];
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = v0[11];
      v25 = *(v22 + 16);
      v24 = v22 + 16;
      v23 = v25;
      v26 = v19 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
      v27 = *(v24 + 56);
      do
      {
        v28 = v0[12];
        v29 = v0[10];
        v23(v28, v26, v29);
        swift_getAtKeyPath();
        v30 = (*(v24 - 8))(v28, v29);
        if (v0[3])
        {
          MEMORY[0x1B8CA4F20](v30);
          if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B7800C58();
          }

          sub_1B7800C88();
          v20 = v56;
        }

        v26 += v27;
        --v21;
      }

      while (v21);
    }

    v31 = v0[17];

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930B8);
    v33 = MEMORY[0x1B8CA4F60](v20, v32);
    v35 = v34;

    sub_1B73AEC4C(v31, type metadata accessor for InternalInstitutionQuery);
    v36 = sub_1B71A3EF8(v33, v35, &v55);

    *(buf + 14) = v36;
    _os_log_impl(&dword_1B7198000, log, v51, "Executing institutions query with nsPredicate: %s and sortDescriptor keyPaths: %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v50, -1, -1);
    MEMORY[0x1B8CA7A40](buf, -1, -1);

    v3 = v54;
  }

  else
  {

    sub_1B73AEC4C(v11, type metadata accessor for InternalInstitutionQuery);
    sub_1B73AEC4C(v12, type metadata accessor for InternalInstitutionQuery);
  }

  v37 = v0[15];
  v38 = v0[16];
  v39 = v0[14];
  v41 = v0[8];
  v40 = v0[9];
  v42 = v0[7];
  sub_1B73AEBE4(v0[5], v38, type metadata accessor for InternalInstitutionQuery);
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v0[20] = v45;
  sub_1B73AEE14(v38, v45 + v43, type metadata accessor for InternalInstitutionQuery);
  *(v45 + v44) = v3;
  (*(v41 + 104))(v40, *MEMORY[0x1E695D2B8], v42);
  v3;
  v46 = swift_task_alloc();
  v0[21] = v46;
  *v46 = v0;
  v46[1] = sub_1B73AB138;
  v47 = v0[9];
  v48 = v0[4];

  return MEMORY[0x1EEDB6538](v48, v47, sub_1B73AE218, v45, &type metadata for InternalInstitutionResult);
}

uint64_t sub_1B73AB138()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 176) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73AEF98;
  }

  else
  {
    v5 = sub_1B73AEF9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1B73AB2CC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v5 = type metadata accessor for Institution(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InternalInstitutionQuery();
  v9 = v8[7];
  v10 = *(a1 + v8[8]);
  v11 = *a1;
  v12 = a1 + v8[6];
  v13 = *v12;
  v14 = v12[8];
  v15 = *(a1 + v9);
  v16 = *(a1 + v9 + 8);
  type metadata accessor for ManagedInstitution();
  v17 = [swift_getObjCClassFromMetadata() fetchRequest];
  v18 = v10;
  v19 = v17;
  [v17 setPredicate_];
  sub_1B73AD4D0(v11, v19, &qword_1EB9911D0, "h~\b", _s10FinanceKit18ManagedInstitutionC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0);
  if ((v14 & 1) == 0 && v13 >= 1)
  {
    [v19 setFetchLimit_];
  }

  if (v15 < 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v16;
  }

  if ((v20 & 1) == 0)
  {
    [v19 setFetchOffset_];
  }

  [v19 setReturnsObjectsAsFaults_];
  v21 = sub_1B7801498();
  if (v3)
  {

    return;
  }

  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_1B7801958();
    v41 = v19;
    if (v23)
    {
      goto LABEL_13;
    }

LABEL_23:

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v41 = v19;
  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_13:
  v40[1] = 0;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1B71FE0B0(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
    return;
  }

  v24 = 0;
  v25 = v45;
  v26 = v42;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1B8CA5DC0](v24, v22);
    }

    else
    {
      v27 = *(v22 + 8 * v24 + 32);
    }

    Institution.init(_:)(v27, v7);
    v45 = v25;
    v29 = *(v25 + 16);
    v28 = *(v25 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1B71FE0B0(v28 > 1, v29 + 1, 1);
      v26 = v42;
      v25 = v45;
    }

    ++v24;
    *(v25 + 16) = v29 + 1;
    sub_1B73AEE14(v7, v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v29, type metadata accessor for Institution);
  }

  while (v23 != v24);

LABEL_24:
  v30 = NSManagedObjectContext.currentLocalHistoryToken.getter();
  v31 = v30;
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = -1;
  }

  v33 = qword_1EDAF6588;
  v34 = v30;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_1B78000B8();
  __swift_project_value_buffer(v35, qword_1EDAF6590);

  v36 = sub_1B7800098();
  v37 = sub_1B78011F8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = *(v25 + 16);

    _os_log_impl(&dword_1B7198000, v36, v37, "Found %ld institutions", v38, 0xCu);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
  }

  else
  {
  }

  v39 = v43;

  *v39 = v31;
  *(v39 + 8) = v32;
  *(v39 + 16) = v25;
}

void sub_1B73AB700(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v57[6] = a3;
  v55 = a4;
  v56 = a1;
  v7 = type metadata accessor for InternalTransaction(0);
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v17 = v16;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = (*(v19 + 32))(v18, v19);
  v22 = v21;
  type metadata accessor for ManagedInternalTransaction();
  v23 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v23 setPredicate_];
  sub_1B73AD4D0(v12, v23, &qword_1EB991FA0, &unk_1B782C2E0, _s10FinanceKit26ManagedInternalTransactionC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0);
  if ((v17 & 1) == 0 && v15 >= 1)
  {
    [v23 setFetchLimit_];
  }

  if ((v22 & 1) == 0 && v20 >= 1)
  {
    [v23 setFetchOffset_];
  }

  v24 = sub_1B7800C18();
  [v23 setRelationshipKeyPathsForPrefetching_];

  v57[3] = &_s10FinanceKit11FeatureFlagVN_0;
  v57[4] = sub_1B721D3DC();
  LOBYTE(v57[0]) = 13;
  LOBYTE(v24) = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v57);
  if (v24)
  {
    v25 = [v23 relationshipKeyPathsForPrefetching];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1B7800C38();

      v28 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1B723E180(0, *(v27 + 16) + 1, 1, v27);
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1B723E180((v29 > 1), v30 + 1, 1, v27);
      }

      *(v27 + 16) = v30 + 1;
      v31 = v27 + 16 * v30;
      *(v31 + 32) = 0xD000000000000023;
      *(v31 + 40) = 0x80000001B787D2A0;
      v32 = sub_1B7800C18();

      v23 = v28;
      [v28 setRelationshipKeyPathsForPrefetching_];

      v5 = v4;
    }

    else
    {
      [v23 setRelationshipKeyPathsForPrefetching_];
    }
  }

  [v23 setReturnsObjectsAsFaults_];
  v33 = sub_1B7801498();
  if (v5)
  {

    return;
  }

  v34 = v33;
  v56 = 0;
  if (v33 >> 62)
  {
    v35 = sub_1B7801958();
    if (v35)
    {
      goto LABEL_19;
    }

LABEL_29:

    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_29;
  }

LABEL_19:
  v53 = v23;
  v57[0] = MEMORY[0x1E69E7CC0];
  sub_1B71FDEE0(0, v35 & ~(v35 >> 63), 0);
  if (v35 < 0)
  {
    __break(1u);
    return;
  }

  v36 = 0;
  v37 = v57[0];
  v38 = v54;
  do
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1B8CA5DC0](v36, v34);
    }

    else
    {
      v39 = *(v34 + 8 * v36 + 32);
    }

    InternalTransaction.init(_:)(v39, v9);
    v57[0] = v37;
    v41 = *(v37 + 16);
    v40 = *(v37 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_1B71FDEE0(v40 > 1, v41 + 1, 1);
      v38 = v54;
      v37 = v57[0];
    }

    ++v36;
    *(v37 + 16) = v41 + 1;
    sub_1B73AEE14(v9, v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v41, type metadata accessor for InternalTransaction);
  }

  while (v35 != v36);

  v23 = v53;
LABEL_30:
  v42 = NSManagedObjectContext.currentLocalHistoryToken.getter();
  v43 = v42;
  if (v42)
  {
    v44 = 0;
  }

  else
  {
    v44 = -1;
  }

  v45 = qword_1EDAF6588;
  v46 = v42;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_1B78000B8();
  __swift_project_value_buffer(v47, qword_1EDAF6590);

  v48 = sub_1B7800098();
  v49 = sub_1B78011F8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = *(v37 + 16);

    _os_log_impl(&dword_1B7198000, v48, v49, "Found %ld internal transactions", v50, 0xCu);
    MEMORY[0x1B8CA7A40](v50, -1, -1);
  }

  else
  {
  }

  v51 = v55;

  *v51 = v43;
  *(v51 + 8) = v44;
  *(v51 + 16) = v37;
}

uint64_t sub_1B73ABD18@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [objc_opt_self() currentQueryGenerationToken];
  v15[0] = 0;
  v7 = [a1 setQueryGenerationFromToken:v6 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    v11 = *(v10 + 40);
    v12 = v8;
    result = v11(a1, v9, v10);
    *a3 = result;
  }

  else
  {
    v14 = v15[0];
    sub_1B77FF318();

    return swift_willThrow();
  }

  return result;
}

void sub_1B73ABE50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = (*(v8 + 24))(v7, v8);
  LOBYTE(v7) = v10;
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v15 = v14;
  type metadata accessor for ManagedInternalTransaction();
  v16 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v16 setPredicate_];
  sub_1B73AD4D0(a2, v16, &qword_1EB991FA0, &unk_1B782C2E0, _s10FinanceKit26ManagedInternalTransactionC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0);
  if ((v7 & 1) == 0 && v9 >= 1)
  {
    [v16 setFetchLimit_];
  }

  if ((v15 & 1) == 0 && v13 >= 1)
  {
    [v16 setFetchOffset_];
  }

  v17 = sub_1B7801488();

  if (!v19)
  {
    *a4 = v17;
  }
}

void sub_1B73ABFF0(void *a1@<X0>, void *a2@<X8>)
{
  v74[8] = *MEMORY[0x1E69E9840];
  v5 = sub_1B77FFA18();
  v64 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v57 - v8;
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v74[0] = 0;
  v10 = [a1 setQueryGenerationFromToken:v9 error:v74];

  v11 = v74[0];
  if (!v10)
  {
    v20 = v74[0];
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  v69 = v5;
  v62 = a2;
  v71 = type metadata accessor for ManagedInternalTransaction();
  v73.receiver = swift_getObjCClassFromMetadata();
  v73.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v12 = v11;
  v13 = objc_msgSendSuper2(&v73, sel_fetchRequest);
  v14 = sub_1B7800C18();
  [v13 setRelationshipKeyPathsForPrefetching_];

  v16 = sub_1B723AF4C(v15);

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7807CD0;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
  *(v17 + 64) = sub_1B728216C(&qword_1EB990B88, &qword_1EB990B80);
  *(v17 + 32) = v16;
  v18 = sub_1B78010E8();
  [v13 setPredicate_];

  v19 = sub_1B7801498();
  if (v2)
  {

    return;
  }

  v60 = 0;
  v61 = v13;
  v21 = v19;
  if (qword_1EDAF9CD8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v22 = off_1EDAF9CE0;
  type metadata accessor for ManagedTransactionExporter();
  inited = swift_initStackObject();
  v24 = type metadata accessor for BankConnectService();
  inited[2] = v22;
  v58 = inited + 2;
  inited[5] = v24;
  inited[6] = &protocol witness table for BankConnectService;

  v59 = inited;
  v25 = ManagedTransactionExporter.financeKitTransactions(from:classifyIfNecessary:)(v21, 0);

  v21 = sub_1B7203310(MEMORY[0x1E69E7CC0]);
  v26 = v69;
  v27 = v65;
  if (v25 >> 62)
  {
    v28 = sub_1B7801958();
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_35:

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v58);

    *v62 = v21;
    return;
  }

  v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_35;
  }

LABEL_8:
  v29 = 0;
  v63 = v25 & 0xFFFFFFFFFFFFFF8;
  v70 = (v64 + 16);
  v71 = v25 & 0xC000000000000001;
  v67 = v25;
  v68 = (v64 + 8);
  v66 = v28;
  while (1)
  {
    if (v71)
    {
      v30 = MEMORY[0x1B8CA5DC0](v29, v25);
    }

    else
    {
      if (v29 >= *(v63 + 16))
      {
        goto LABEL_31;
      }

      v30 = *(v25 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v33 = [v30 bankConnectIdentifier];
    if (v33)
    {
      break;
    }

LABEL_10:
    ++v29;
    if (v32 == v28)
    {
      goto LABEL_35;
    }
  }

  v34 = v33;
  sub_1B77FF9E8();

  v35 = *v70;
  v36 = v72;
  (*v70)(v72, v27, v26);
  v37 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = v21;
  v40 = sub_1B72454E8(v36);
  v41 = v21[2];
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    goto LABEL_30;
  }

  v44 = v39;
  if (v21[3] >= v43)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v21 = v74[0];
      if (v39)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_1B725CC10();
      v21 = v74[0];
      if (v44)
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    v21[(v40 >> 6) + 8] |= 1 << v40;
    v50 = v64;
    v51 = v72;
    v26 = v69;
    v35(v21[6] + *(v64 + 72) * v40, v72, v69);
    *(v21[7] + 8 * v40) = v37;

    v52 = *(v50 + 8);
    v53 = v51;
    v27 = v65;
    v52(v53, v26);
    v52(v27, v26);
    v54 = v21[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_32;
    }

    v21[2] = v56;
    goto LABEL_28;
  }

  sub_1B7249A7C(v43, isUniquelyReferenced_nonNull_native);
  v45 = sub_1B72454E8(v72);
  if ((v44 & 1) == (v46 & 1))
  {
    v40 = v45;
    v21 = v74[0];
    if ((v44 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    v47 = v21[7];
    v48 = *(v47 + 8 * v40);
    *(v47 + 8 * v40) = v37;

    v26 = v69;
    v49 = *v68;
    (*v68)(v72, v69);
    v49(v27, v26);
LABEL_28:
    v28 = v66;
    v25 = v67;
    goto LABEL_10;
  }

  sub_1B78021C8();
  __break(1u);
}

uint64_t sub_1B73AC6E8(uint64_t a1, int a2, uint64_t a3, void (*a4)(void))
{
  v24 = a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_1B719B06C(a3, v26);
  v8 = *(v4 + 16);
  sub_1B72274E8(v6, v7);
  os_unfair_lock_lock((v8 + 24));
  if (*(v8 + 16))
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = sub_1B73ADA9C();
    *(v8 + 16) = v9;
  }

  os_unfair_lock_unlock((v8 + 24));
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12);
  v14 = *v12;
  v15 = type metadata accessor for FinanceStore();
  v25[3] = v15;
  v25[4] = &off_1F2F66960;
  v25[0] = v14;
  a4(0);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v19);
  v21 = *v19;
  *(v16 + 56) = v15;
  *(v16 + 64) = &off_1F2F66960;
  *(v16 + 32) = v21;
  *(v16 + 16) = v6;
  *(v16 + 24) = v7;
  *(v16 + 25) = v24 & 1;
  *(v16 + 72) = v9;
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v16;
}

uint64_t sub_1B73AC948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v8 + 129) = a7;
  *(v8 + 56) = a6;
  *(v8 + 64) = v7;
  *(v8 + 128) = a5;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = sub_1B7801478();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73ACA18, 0, 0);
}

uint64_t sub_1B73ACA18()
{
  v52 = v0;
  v1 = *(*(v0 + 64) + 16);
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
  *(v0 + 96) = v3;

  if (qword_1EDAF6588 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v4 = *(v0 + 32);
    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EDAF6590);
    v6 = v4;

    v7 = sub_1B7800098();
    v8 = sub_1B78011F8();

    v48 = v6;
    v49 = v3;
    if (!os_log_type_enabled(v7, v8))
    {
      break;
    }

    v45 = v8;
    log = v7;
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v11 = 136315394;
    *(v0 + 16) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v12 = sub_1B7801748();
    v14 = sub_1B71A3EF8(v12, v13, &v50);

    *(v11 + 4) = v14;
    buf = v11;
    *(v11 + 12) = 2080;
    v51 = MEMORY[0x1E69E7CC0];
    v15 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      v16 = sub_1B7801958();
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    v18 = v9 & 0xC000000000000001;
    v3 = (*(v0 + 40) + 32);
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v16 == v17)
      {
        v24 = sub_1B7801878();
        v25 = MEMORY[0x1B8CA4F60](v19, v24);
        v27 = v26;

        v28 = sub_1B71A3EF8(v25, v27, &v50);

        *(buf + 14) = v28;
        v7 = log;
        _os_log_impl(&dword_1B7198000, log, v45, "Executing consents query with predicate: %s and sortDescriptors: %s", buf, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v43, -1, -1);
        MEMORY[0x1B8CA7A40](buf, -1, -1);
        goto LABEL_21;
      }

      if (!v18)
      {
        break;
      }

      v20 = MEMORY[0x1B8CA5DC0](v17, *(v0 + 40));
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

LABEL_13:
      v22 = v20;
      v23 = sub_1B7801298();

      ++v17;
      if (v23)
      {
        MEMORY[0x1B8CA4F20]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v19 = v51;
        v17 = v21;
      }
    }

    if (v17 >= *(v15 + 16))
    {
      goto LABEL_25;
    }

    v20 = *(v3 + v17);
    v21 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_21:

  v29 = *(v0 + 80);
  loga = *(v0 + 88);
  v30 = *(v0 + 72);
  v31 = *(v0 + 129);
  v32 = *(v0 + 128);
  v34 = *(v0 + 48);
  v33 = *(v0 + 56);
  v35 = *(v0 + 32);
  v36 = *(v0 + 40);
  v37 = swift_allocObject();
  *(v0 + 104) = v37;
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  *(v37 + 32) = v34;
  *(v37 + 40) = v32 & 1;
  *(v37 + 48) = v33;
  *(v37 + 56) = v31 & 1;
  *(v37 + 64) = v49;
  (*(v29 + 104))(loga, *MEMORY[0x1E695D2B8], v30);
  v38 = v48;

  v49;
  v39 = swift_task_alloc();
  *(v0 + 112) = v39;
  *v39 = v0;
  v39[1] = sub_1B73ACECC;
  v40 = *(v0 + 88);
  v41 = *(v0 + 24);

  return MEMORY[0x1EEDB6538](v41, v40, sub_1B73AE6EC, v37, &type metadata for InternalConsentResult);
}

uint64_t sub_1B73ACECC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73AD0CC;
  }

  else
  {
    v5 = sub_1B73AD060;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73AD060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73AD0CC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B73AD138(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v40 = a7;
  LODWORD(v10) = a6;
  LODWORD(v39) = a4;
  v38 = a2;
  v15 = type metadata accessor for BankConnectConsent();
  v35 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedConsent();
  v18 = [swift_getObjCClassFromMetadata() fetchRequest];
  v19 = v18;
  if (a1)
  {
    v36 = a3;
    LODWORD(v37) = v10;
    v20 = a8;
    v21 = v18;
    v22 = qword_1EB98EB08;
    v23 = a1;
    if (v22 != -1)
    {
      swift_once();
    }

    v10 = sub_1B751E2EC(qword_1EB997F28);
    v19 = v21;
    [v21 setPredicate_];

    a8 = v20;
    v9 = v8;
    LOBYTE(v10) = v37;
    a3 = v36;
  }

  sub_1B7226F24(v38, v19);
  if ((v39 & 1) == 0 && a3 >= 1)
  {
    [v19 setFetchLimit_];
  }

  if ((v10 & 1) == 0 && a5 >= 1)
  {
    [v19 setFetchOffset_];
  }

  [v19 setReturnsObjectsAsFaults_];
  v24 = sub_1B7801498();
  if (v9)
  {

    return;
  }

  v25 = v24;
  v39 = v19;
  if (v24 >> 62)
  {
    v26 = sub_1B7801958();
    v38 = 0;
    if (v26)
    {
      goto LABEL_15;
    }

LABEL_25:

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v38 = 0;
  if (!v26)
  {
    goto LABEL_25;
  }

LABEL_15:
  v37 = a8;
  v41 = MEMORY[0x1E69E7CC0];
  sub_1B71FE0F4(0, v26 & ~(v26 >> 63), 0);
  if (v26 < 0)
  {
    __break(1u);
    return;
  }

  v27 = 0;
  v28 = v41;
  v29 = v35;
  do
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1B8CA5DC0](v27, v25);
    }

    else
    {
      v30 = *(v25 + 8 * v27 + 32);
    }

    BankConnectConsent.init(_:)(v30, v17);
    v41 = v28;
    v32 = *(v28 + 16);
    v31 = *(v28 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1B71FE0F4(v31 > 1, v32 + 1, 1);
      v29 = v35;
      v28 = v41;
    }

    ++v27;
    *(v28 + 16) = v32 + 1;
    sub_1B73AEE14(v17, v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v32, type metadata accessor for BankConnectConsent);
  }

  while (v26 != v27);

  a8 = v37;
LABEL_26:
  v33 = NSManagedObjectContext.currentLocalHistoryToken.getter();

  *a8 = v33;
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = -1;
  }

  *(a8 + 8) = v34;
  *(a8 + 16) = v28;
}

void sub_1B73AD4D0(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  if (a1)
  {
    v24[0] = a2;
    v28 = MEMORY[0x1E69E7CC0];
    v12 = *(a1 + 16);
    if (v12)
    {
      v14 = *(v9 + 16);
      v13 = v9 + 16;
      v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v26 = *(v13 + 56);
      v27 = v14;
      v16 = (v13 - 8);
      v24[1] = v13;
      v25 = a5;
      v14(v11, v15, v8);
      while (1)
      {
        if (!sub_1B77FED88())
        {
          goto LABEL_6;
        }

        if (!*(a5() + 16))
        {
          goto LABEL_5;
        }

        sub_1B72456B0(v17);
        if ((v18 & 1) == 0)
        {
          break;
        }

        sub_1B77FED78();
        v19 = sub_1B77FFD48();
        v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v21 = sub_1B7800838();
        [v20 initWithKey:v21 ascending:v19 & 1];

        v22 = (*v16)(v11, v8);
        MEMORY[0x1B8CA4F20](v22);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        a5 = v25;
LABEL_7:
        v15 += v26;
        if (!--v12)
        {
          goto LABEL_15;
        }

        v27(v11, v15, v8);
      }

LABEL_5:

LABEL_6:
      (*v16)(v11, v8);
      goto LABEL_7;
    }

LABEL_15:
    sub_1B7205540(0, &qword_1EDAF6470);
    v23 = sub_1B7800C18();

    [v24[0] setSortDescriptors_];
  }
}

void sub_1B73AD7B4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  if (a1)
  {
    v23 = a2;
    v27 = MEMORY[0x1E69E7CC0];
    v8 = *(a1 + 16);
    if (v8)
    {
      v11 = *(v5 + 16);
      v9 = v5 + 16;
      v10 = v11;
      v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v13 = *(v9 + 56);
      v25 = v9;
      v26 = v13;
      v14 = (v9 - 8);
      v24 = v11;
      v11(v7, v12, v4);
      while (1)
      {
        if (!sub_1B77FED88())
        {
          goto LABEL_6;
        }

        if (!*(_s10FinanceKit27ManagedPredictedTransactionC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0() + 16))
        {
          goto LABEL_5;
        }

        sub_1B72456B0(v15);
        if ((v16 & 1) == 0)
        {
          break;
        }

        swift_bridgeObjectRetain_n();

        sub_1B77FED78();
        v17 = sub_1B77FFD48();
        v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v19 = sub_1B7800838();
        [v18 initWithKey:v19 ascending:v17 & 1];

        swift_bridgeObjectRelease_n();

        v20 = (*v14)(v7, v4);
        MEMORY[0x1B8CA4F20](v20);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v10 = v24;
LABEL_7:
        v12 += v26;
        if (!--v8)
        {
          goto LABEL_15;
        }

        v10(v7, v12, v4);
      }

LABEL_5:

LABEL_6:
      (*v14)(v7, v4);
      goto LABEL_7;
    }

LABEL_15:
    sub_1B7205540(0, &qword_1EDAF6470);
    v21 = sub_1B7800C18();

    [v23 setSortDescriptors_];
  }
}

char *sub_1B73ADA9C()
{
  v0 = type metadata accessor for CoreDataStoreConfiguration(0);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 32) = sub_1B7800868();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = sub_1B7800868();
  *(inited + 88) = v8;
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = 0xD000000000000028;
  *(inited + 104) = 0x80000001B7874E50;
  v9 = sub_1B72018E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
  swift_arrayDestroy();
  if (qword_1EDAFCB50 != -1)
  {
    swift_once();
  }

  v10 = sub_1B77FF4F8();
  v11 = __swift_project_value_buffer(v10, qword_1EDAFCB58);
  (*(*(v10 - 8) + 16))(v5, v11, v10);
  v12 = type metadata accessor for CoreDataStoreClientConfiguration(0);
  v5[*(v12 + 20)] = 0;
  *&v5[*(v12 + 24)] = v9;
  swift_storeEnumTagMultiPayload();
  sub_1B73AEBE4(v5, v3, type metadata accessor for CoreDataStoreConfiguration);
  type metadata accessor for CoreDataStore();
  swift_allocObject();

  v13 = CoreDataStore.init(configuration:)(v3);
  sub_1B73AEC4C(v5, type metadata accessor for CoreDataStoreConfiguration);

  return v13;
}

id sub_1B73ADED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = MEMORY[0x1E69E7290];
  v3 = MEMORY[0x1E69E72E8];
  *(v1 + 56) = MEMORY[0x1E69E7290];
  *(v1 + 64) = v3;
  *(v1 + 32) = 1;
  *(v0 + 32) = sub_1B78010E8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0;
  *(v0 + 40) = sub_1B78010E8();
  v5 = sub_1B7800C18();

  v6 = objc_opt_self();
  v7 = [v6 andPredicateWithSubpredicates_];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 32) = 2;
  *(v8 + 32) = sub_1B78010E8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7807CD0;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D20);
  *(v10 + 64) = sub_1B728216C(&qword_1EB992D28, &qword_1EB992D20);
  *(v10 + 32) = &unk_1F2F424D8;
  *(v8 + 40) = sub_1B78010E8();
  v11 = sub_1B7800C18();

  v12 = [v6 andPredicateWithSubpredicates_];

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B780C060;
  *(v13 + 32) = v7;
  *(v13 + 40) = v12;
  v14 = v7;
  v15 = v12;
  v16 = sub_1B7800C18();

  v17 = [v6 orPredicateWithSubpredicates_];

  return v17;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B73AE8B0(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  return a2(v2 + v5, *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_90Tm()
{
  v1 = sub_1B77FFA18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B73AEA94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_50Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_72Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B73AEBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B73AEC4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_3(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(*(v4 - 8) + 64);
  v8 = v2 + v6;

  v9 = *(v4 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v12 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v2, v12 + 8, v5 | 7);
}

uint64_t sub_1B73AEE14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B73AEEBC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  return a2(v2 + v5, *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t Date.advancedByDays(_:calendar:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B77FFC88();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = sub_1B77FFCF8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_1B77FECD8();
  sub_1B77FFC08();
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v4, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B720D780(v13);
    return (*(v17 + 32))(a1, v4, v16);
  }

  return result;
}

uint64_t Date.defaultDateFormat.getter()
{
  v0 = sub_1B77FF718();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v39 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1B77FF6B8();
  v44 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1B77FF748();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1B77FF7D8();
  v42 = *(v53 - 8);
  v5 = MEMORY[0x1EEE9AC00](v53);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v39 - v13;
  v14 = sub_1B77FFC68();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B77FF988();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B77FFC88();
  v48 = *(v22 - 8);
  v49 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFC58();
  sub_1B77FF938();
  (*(v15 + 104))(v17, *MEMORY[0x1E6969A68], v14);
  v46 = v24;
  v25 = sub_1B77FFC48();
  (*(v15 + 8))(v17, v14);
  v26 = (*(v19 + 8))(v21, v18);
  v27 = (v43 + 8);
  v28 = (v42 + 8);
  v29 = (v44 + 8);
  MEMORY[0x1B8CA2BB0](v26);
  sub_1B77FF728();
  if (v25)
  {
    sub_1B77FF698();
    (*v27)(v4, v45);
    v30 = *v28;
    v31 = v7;
    v32 = v53;
    (*v28)(v31, v53);
    v33 = v50;
    sub_1B77FF6A8();
    v34 = v47;
    sub_1B77FF658();
    (*v29)(v33, v52);
    v30(v10, v32);
    v35 = v39;
    sub_1B77FF708();
    v36 = v51;
    sub_1B77FF688();
    (*(v40 + 8))(v35, v41);
  }

  else
  {
    v34 = v47;
    sub_1B77FF698();
    (*v27)(v4, v45);
    v30 = *v28;
    v32 = v53;
    (*v28)(v10, v53);
    v37 = v50;
    sub_1B77FF6A8();
    v36 = v51;
    sub_1B77FF658();
    (*v29)(v37, v52);
  }

  v30(v34, v32);
  sub_1B73B2124(&qword_1EB992E00, MEMORY[0x1E6969328]);
  sub_1B77FF968();
  v30(v36, v32);
  (*(v48 + 8))(v46, v49);
  return v54;
}

uint64_t Date.updatedFormat.getter()
{
  v0 = sub_1B77FF848();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v33 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1B77FF878();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B77FF8A8();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFC68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v29 - v17;
  v18 = sub_1B77FFC88();
  v40 = *(v18 - 8);
  v41 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFC58();
  (*(v6 + 104))(v8, *MEMORY[0x1E6969A48], v5);
  sub_1B77FF938();
  sub_1B77FFC18();
  v21 = *(v13 + 8);
  v21(v16, v12);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B71F31EC(v11);
LABEL_6:
    v27 = Date.defaultDateFormat.getter();
    (*(v40 + 8))(v20, v41);
    return v27;
  }

  v22 = v39;
  (*(v13 + 32))(v39, v11, v12);
  sub_1B73B2124(&qword_1EB98EBD8, MEMORY[0x1E6969530]);
  if ((sub_1B7800808() & 1) == 0)
  {
    v21(v22, v12);
    goto LABEL_6;
  }

  v23 = v30;
  sub_1B77FF858();
  v24 = v33;
  sub_1B77FF838();
  v25 = v31;
  sub_1B77FE888();
  (*(v37 + 8))(v24, v38);
  (*(v32 + 8))(v23, v34);
  sub_1B73B2124(&qword_1EB993180, MEMORY[0x1E69693E8]);
  v26 = v36;
  sub_1B77FF968();
  (*(v35 + 8))(v25, v26);
  v21(v22, v12);
  (*(v40 + 8))(v20, v41);
  return v42;
}

uint64_t Date.noon.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_1B77FFB78();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1B77FFBA8();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFB48();
  v30 = *(v5 - 8);
  v6 = v30;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_1B77FFB08();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B77FFC88();
  v27 = *(v16 - 8);
  v28 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x1E6969830], v12);
  sub_1B77FFB18();
  (*(v13 + 8))(v15, v12);
  (*(v6 + 104))(v8, *MEMORY[0x1E69698D0], v5);
  v20 = v31;
  v19 = v32;
  (*(v3 + 104))(v31, *MEMORY[0x1E69699C8], v32);
  v22 = v33;
  v21 = v34;
  v23 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x1E6969998], v35);
  sub_1B77FFBE8();
  (*(v21 + 8))(v22, v23);
  (*(v3 + 8))(v20, v19);
  (*(v30 + 8))(v8, v5);
  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v11, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v27 + 8))(v18, v28);
    return (*(v25 + 32))(v29, v11, v24);
  }

  return result;
}

uint64_t Date.noon(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v20 = a2;
  v2 = sub_1B77FFB78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FFBA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFB48();
  v21 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20 - v15;
  (*(v11 + 104))(v13, *MEMORY[0x1E69698D0], v10);
  (*(v7 + 104))(v9, *MEMORY[0x1E69699C8], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E6969998], v2);
  sub_1B77FFBE8();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v21);
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v16, 1, v17);
  if (result != 1)
  {
    return (*(v18 + 32))(v20, v16, v17);
  }

  __break(1u);
  return result;
}

uint64_t Date.dayAfter.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FFB08();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B77FFC88();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, *MEMORY[0x1E6969830], v13);
  sub_1B77FFB18();
  (*(v14 + 8))(v16, v13);
  (*(v18 + 56))(v9, 1, 1, v17);
  v21 = sub_1B77FFCF8();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_1B77FECD8();
  sub_1B77FFC08();
  v22 = sub_1B77FF988();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v3, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B720D780(v12);
    (*(v18 + 8))(v20, v17);
    return (*(v23 + 32))(v25, v3, v22);
  }

  return result;
}

uint64_t Date.dayAfter(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B77FFC88();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = sub_1B77FFCF8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_1B77FECD8();
  sub_1B77FFC08();
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v4, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B720D780(v13);
    return (*(v17 + 32))(a1, v4, v16);
  }

  return result;
}

uint64_t Date.startDateOfMonth.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v29 = sub_1B77FF988();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B77FED28();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1B77FFB08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B77FFC88();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x1E6969830], v9);
  sub_1B77FFB18();
  (*(v10 + 8))(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v15 = sub_1B77FFC68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B7808C50;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x1E6969A68], v15);
  v22 = v20 + v17;
  v23 = v27;
  v21(v22, *MEMORY[0x1E6969A78], v15);
  sub_1B7545E58(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  v24 = v29;
  swift_deallocClassInstance();
  sub_1B77FFB28();
  sub_1B77FFB68();

  (*(v23 + 8))(v2, v24);
  sub_1B77FFBF8();
  (*(v30 + 8))(v5, v31);
  if ((*(v23 + 48))(v8, 1, v24) == 1)
  {
    sub_1B71F31EC(v8);
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    (*(v26 + 8))(v14, v28);
    return (*(v23 + 32))(v32, v8, v24);
  }

  return result;
}

uint64_t Date.endDateOfMonth.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_1B77FF988();
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1B77FED28();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FFB08();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FFC88();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v26 - v20;
  (*(v12 + 104))(v14, *MEMORY[0x1E6969830], v11);
  sub_1B77FFB18();
  (*(v12 + 8))(v14, v11);
  (*(v16 + 56))(v7, 1, 1, v15);
  v22 = sub_1B77FFCF8();
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  sub_1B77FECD8();
  v23 = v30;
  Date.startDateOfMonth.getter(v30);
  sub_1B77FFC08();
  v24 = v31;
  (*(v1 + 8))(v23, v31);
  (*(v28 + 8))(v10, v29);
  (*(v16 + 8))(v18, v15);
  if ((*(v1 + 48))(v21, 1, v24) != 1)
  {
    return (*(v1 + 32))(v32, v21, v24);
  }

  sub_1B71F31EC(v21);
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t Date.endDateOfYear.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v53 = (&v43 - v4);
  v60 = sub_1B77FF988();
  v51 = *(v60 - 8);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - v7;
  v57 = sub_1B77FFC68();
  v8 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_1B77FED28();
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B77FFB08();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B77FFC88();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v22, *MEMORY[0x1E6969830], v19);
  sub_1B77FFB18();
  (*(v20 + 8))(v22, v19);
  v46 = v24;
  v47 = v23;
  (*(v24 + 56))(v16, 1, 1, v23);
  v27 = sub_1B77FFCF8();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  sub_1B77FECD8();
  v28 = *(v8 + 104);
  v29 = v57;
  v28(v10, *MEMORY[0x1E6969A68], v57);
  v59 = v26;
  v30 = sub_1B77FFC78();
  v31 = *(v8 + 8);
  v32 = v10;
  v33 = v10;
  v34 = v29;
  v52 = v8 + 8;
  (v31)(v33, v29);
  if (__OFADD__(v30, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v45 = v31;
  sub_1B77FEC68();
  sub_1B77FEC88();
  sub_1B77FEC18();
  v31 = v53;
  sub_1B77FFBF8();
  v35 = v51;
  v44 = *(v51 + 48);
  if (v44(v31, 1, v60) == 1)
  {
LABEL_6:
    sub_1B71F31EC(v31);
    goto LABEL_8;
  }

  v36 = v48;
  v37 = v60;
  v53 = *(v35 + 32);
  v53();
  v28(v32, *MEMORY[0x1E6969A98], v34);
  v38 = v54;
  sub_1B77FFB28();
  v39 = v55;
  sub_1B77FFC18();
  v40 = *(v35 + 8);
  v40(v38, v37);
  (v45)(v32, v34);
  if (v44(v39, 1, v37) != 1)
  {
    v41 = v60;
    v40(v36, v60);
    (*(v49 + 8))(v58, v50);
    (*(v46 + 8))(v59, v47);
    return (v53)(v56, v39, v41);
  }

  sub_1B71F31EC(v39);
LABEL_8:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B73B2124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ClosestClassifiedTransactionsLoader.findLocationsOfClosestTransactions(to:accountID:calendar:excludingTransactionID:context:)(void (*a1)(char *, char *, uint64_t), void (*a2)(char *, char *, uint64_t), uint64_t a3, void (*a4)(char *, char *, uint64_t), void (*a5)(char *, char *, uint64_t))
{
  v41 = a4;
  v42 = a5;
  v40 = a2;
  v7 = sub_1B77FFC68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v39 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v38 - v20;
  v21 = *(v8 + 104);
  v44 = *MEMORY[0x1E6969A48];
  v43 = v21;
  v21(v10);
  v45 = a3;
  v46 = a1;
  sub_1B77FFC18();
  v22 = *(v8 + 8);
  v23 = v7;
  v22(v10, v7);
  v49 = v17;
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    sub_1B7205418(v15, &qword_1EB98EBD0);
  }

  else
  {
    v38 = *(v49 + 32);
    v38(v48, v15, v16);
    v43(v10, v44, v23);
    v25 = v47;
    sub_1B77FFC18();
    v22(v10, v23);
    if (v24(v25, 1, v16) != 1)
    {
      v31 = v39;
      v32 = (v38)(v39, v47, v16);
      MEMORY[0x1EEE9AC00](v32);
      v33 = v40;
      *(&v38 - 6) = v41;
      *(&v38 - 5) = v33;
      v34 = v46;
      *(&v38 - 4) = v31;
      *(&v38 - 3) = v34;
      v35 = v48;
      *(&v38 - 2) = v42;
      *(&v38 - 1) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993188);
      sub_1B7801468();
      v36 = v50;
      v37 = *(v49 + 8);
      v37(v31, v16);
      v37(v35, v16);
      return v36;
    }

    sub_1B7205418(v47, &qword_1EB98EBD0);
    (*(v49 + 8))(v48, v16);
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v26 = sub_1B78000B8();
  __swift_project_value_buffer(v26, qword_1EDAF65B0);
  v27 = sub_1B7800098();
  v28 = sub_1B78011D8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B7198000, v27, v28, "Failed to calculate lower and upper bounds", v29, 2u);
    MEMORY[0x1B8CA7A40](v29, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1B73B2658(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v50 = a6;
  v48 = a5;
  v10 = type metadata accessor for InternalTransaction(0);
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v47 = a2;
  v13 = sub_1B73B3DE0(a1, a2, a3, a4);
  type metadata accessor for ManagedInternalTransaction();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54.receiver = ObjCClassFromMetadata;
  v54.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v15 = objc_msgSendSuper2(&v54, sel_fetchRequest);
  v16 = sub_1B7800C18();
  [v15 setRelationshipKeyPathsForPrefetching_];

  [v15 setFetchLimit_];
  v49 = v13;
  [v15 setPredicate_];
  sub_1B73B440C(1);
  sub_1B7205540(0, &qword_1EDAF6470);
  v17 = sub_1B7800C18();

  [v15 setSortDescriptors_];

  v18 = v51;
  v19 = sub_1B7801498();
  if (v18)
  {

    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v28 = sub_1B78000B8();
    __swift_project_value_buffer(v28, qword_1EDAF65B0);
    v29 = v18;
    v30 = sub_1B7800098();
    v31 = sub_1B78011D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v18;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_1B7198000, v30, v31, "Failed to fetch classified transactions: %@.", v32, 0xCu);
      sub_1B7205418(v33, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v33, -1, -1);
      MEMORY[0x1B8CA7A40](v32, -1, -1);
    }

    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v45 = v19;
  v20 = sub_1B73B3DE0(v46, v47, a4, v48);
  v51 = a4;
  v21 = v20;
  v53.receiver = ObjCClassFromMetadata;
  v53.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v22 = objc_msgSendSuper2(&v53, sel_fetchRequest);
  v23 = sub_1B7800C18();
  [v22 setRelationshipKeyPathsForPrefetching_];

  [v22 setFetchLimit_];
  v48 = v21;
  [v22 setPredicate_];
  sub_1B73B440C(0);
  v24 = sub_1B7800C18();
  v25 = v22;

  [v22 setSortDescriptors_];

  v26 = sub_1B7801498();
  v27 = v51;
  v37 = v48;
  v46 = v25;
  v47 = 0;
  v55 = v45;
  sub_1B7244874(v26);
  v38 = v55;
  if (!(v55 >> 62))
  {
    v39 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_11;
    }

LABEL_21:

    v41 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v36 = sub_1B73B4578(v41, v27);

LABEL_8:
    *v50 = v36;
    return;
  }

  v39 = sub_1B7801958();
  if (!v39)
  {
    goto LABEL_21;
  }

LABEL_11:
  v55 = MEMORY[0x1E69E7CC0];
  sub_1B71FDEE0(0, v39 & ~(v39 >> 63), 0);
  if ((v39 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v41 = v55;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1B8CA5DC0](v40, v38);
      }

      else
      {
        v42 = *(v38 + 8 * v40 + 32);
      }

      InternalTransaction.init(_:)(v42, v12);
      v55 = v41;
      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1B71FDEE0(v43 > 1, v44 + 1, 1);
        v41 = v55;
      }

      ++v40;
      *(v41 + 16) = v44 + 1;
      sub_1B7304D10(v12, v41 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v44);
    }

    while (v39 != v40);

    v27 = v51;
    v37 = v48;
    goto LABEL_22;
  }

  __break(1u);
}

BOOL sub_1B73B2C1C()
{
  type metadata accessor for InternalTransaction(0);
  sub_1B77FF908();
  v1 = v0;
  sub_1B77FF908();
  v3 = v2;
  sub_1B77FF908();
  v5 = v4;
  sub_1B77FF908();
  return vabdd_f64(v1, v3) < vabdd_f64(v5, v6);
}

uint64_t sub_1B73B2CBC(uint64_t (*a1)(uint64_t, char *), uint64_t a2)
{
  type metadata accessor for InternalTransaction(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1B77E4D08(v5);
  }

  result = sub_1B73B2DB0(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1B73B2DB0(uint64_t (*a1)(uint64_t, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1B7802038();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for InternalTransaction(0);
        v9 = sub_1B7800C78();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for InternalTransaction(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1B73B2EEC(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1B778D10C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1B73B2EEC(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a5;
  v142 = a4;
  v131 = a1;
  v135 = type metadata accessor for InternalTransaction(0);
  v140 = *(v135 - 8);
  v10 = MEMORY[0x1EEE9AC00](v135);
  v132 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v120 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v120 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v120 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  result = MEMORY[0x1EEE9AC00](v22);
  v28 = a3[1];
  v136 = a3;
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v31 = v141;
    v17 = *v131;
    if (*v131)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_102;
    }

    goto LABEL_141;
  }

  v126 = &v120 - v24;
  v127 = v27;
  v137 = v26;
  v133 = v25;
  v125 = a6;
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v129 = v21;
  v124 = v17;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v32 >= v28)
    {
      v45 = v32;
    }

    else
    {
      v130 = v28;
      v139 = v7;
      v33 = *a3;
      v34 = *(v140 + 72);
      v35 = v31;
      v36 = v33 + v34 * v32;
      v37 = v126;
      sub_1B73B4A10(v36, v126);
      v38 = v127;
      sub_1B73B4A10(v33 + v34 * v35, v127);
      v39 = v139;
      LODWORD(v139) = v142(v37, v38);
      if (v39)
      {
        sub_1B73B4A74(v38);
        sub_1B73B4A74(v37);
      }

      sub_1B73B4A74(v38);
      result = sub_1B73B4A74(v37);
      v123 = v130 - 1;
      v138 = v130 - 2;
      v40 = v33 + v34 * (v35 + 2);
      v128 = v35;
      v41 = v35;
      v7 = 0;
      while (v138 != v41)
      {
        sub_1B73B4A10(v40, v21);
        v42 = v21;
        v43 = v137;
        sub_1B73B4A10(v36, v137);
        v44 = v142(v42, v43);
        sub_1B73B4A74(v43);
        result = sub_1B73B4A74(v42);
        ++v41;
        v40 += v34;
        v36 += v34;
        v21 = v42;
        if ((v139 ^ v44))
        {
          v45 = v41 + 1;
          goto LABEL_11;
        }
      }

      v41 = v123;
      v45 = v130;
LABEL_11:
      v17 = v124;
      v31 = v128;
      if ((v139 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v45 < v128)
      {
        goto LABEL_135;
      }

      if (v128 <= v41)
      {
        v46 = v45;
        v47 = v34 * (v45 - 1);
        v48 = v45 * v34;
        v130 = v45;
        v49 = v128;
        v50 = v128 * v34;
        do
        {
          if (v49 != --v46)
          {
            v139 = v7;
            v51 = *v136;
            if (!*v136)
            {
              goto LABEL_139;
            }

            sub_1B7304D10(v51 + v50, v132);
            if (v50 < v47 || v51 + v50 >= (v51 + v48))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1B7304D10(v132, v51 + v47);
            v7 = v139;
          }

          ++v49;
          v47 -= v34;
          v48 -= v34;
          v50 += v34;
        }

        while (v49 < v46);
        a3 = v136;
        v17 = v124;
        v31 = v128;
        v45 = v130;
      }

      else
      {
LABEL_14:
        a3 = v136;
      }
    }

    v52 = a3[1];
    if (v45 >= v52)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v45, v31))
    {
      goto LABEL_131;
    }

    if (v45 - v31 >= v125)
    {
LABEL_35:
      v54 = v45;
      if (v45 < v31)
      {
        goto LABEL_130;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v31, v125))
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v31 + v125 >= v52)
    {
      v53 = a3[1];
    }

    else
    {
      v53 = v31 + v125;
    }

    if (v53 < v31)
    {
      goto LABEL_134;
    }

    if (v45 == v53)
    {
      goto LABEL_35;
    }

    v102 = *a3;
    v103 = *(v140 + 72);
    v104 = *a3 + v103 * (v45 - 1);
    v105 = -v103;
    v128 = v31;
    v106 = v31 - v45;
    v130 = v45;
    v139 = v102;
    v120 = v103;
    v107 = v102 + v45 * v103;
    v138 = v53;
    do
    {
      v121 = v107;
      v122 = v106;
      v123 = v104;
      v108 = v106;
      do
      {
        sub_1B73B4A10(v107, v17);
        v109 = v17;
        v110 = v133;
        sub_1B73B4A10(v104, v133);
        v111 = v142(v109, v110);
        if (v7)
        {
          sub_1B73B4A74(v110);
          sub_1B73B4A74(v109);
        }

        v112 = v111;
        sub_1B73B4A74(v110);
        result = sub_1B73B4A74(v109);
        v17 = v109;
        if ((v112 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_137;
        }

        v113 = v134;
        sub_1B7304D10(v107, v134);
        swift_arrayInitWithTakeFrontToBack();
        sub_1B7304D10(v113, v104);
        v104 += v105;
        v107 += v105;
      }

      while (!__CFADD__(v108++, 1));
      v104 = v123 + v120;
      v106 = v122 - 1;
      v107 = v121 + v120;
      v54 = v138;
      ++v130;
    }

    while (v130 != v138);
    a3 = v136;
    v31 = v128;
    if (v138 < v128)
    {
      goto LABEL_130;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    v55 = v7;
    if ((result & 1) == 0)
    {
      result = sub_1B723E420(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v57 = *(v30 + 2);
    v56 = *(v30 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_1B723E420((v56 > 1), v57 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v58;
    v59 = &v30[16 * v57];
    *(v59 + 4) = v31;
    *(v59 + 5) = v54;
    v60 = *v131;
    if (!*v131)
    {
      goto LABEL_140;
    }

    v138 = v54;
    if (v57)
    {
      break;
    }

    v7 = v55;
LABEL_87:
    v28 = a3[1];
    v29 = v138;
    v21 = v129;
    if (v138 >= v28)
    {
      goto LABEL_100;
    }
  }

  v7 = v55;
  while (1)
  {
    v31 = v58 - 1;
    if (v58 >= 4)
    {
      v65 = &v30[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_117;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_118;
      }

      v72 = &v30[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_120;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_123;
      }

      if (v76 >= v68)
      {
        v94 = &v30[16 * v31 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_129;
        }

        if (v63 < v97)
        {
          v31 = v58 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v58 == 3)
    {
      v61 = *(v30 + 4);
      v62 = *(v30 + 5);
      v71 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      v64 = v71;
LABEL_56:
      if (v64)
      {
        goto LABEL_119;
      }

      v77 = &v30[16 * v58];
      v79 = *v77;
      v78 = *(v77 + 1);
      v80 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      v82 = v80;
      if (v80)
      {
        goto LABEL_122;
      }

      v83 = &v30[16 * v31 + 32];
      v85 = *v83;
      v84 = *(v83 + 1);
      v71 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v71)
      {
        goto LABEL_125;
      }

      if (__OFADD__(v81, v86))
      {
        goto LABEL_126;
      }

      if (v81 + v86 >= v63)
      {
        if (v63 < v86)
        {
          v31 = v58 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v87 = &v30[16 * v58];
    v89 = *v87;
    v88 = *(v87 + 1);
    v71 = __OFSUB__(v88, v89);
    v81 = v88 - v89;
    v82 = v71;
LABEL_70:
    if (v82)
    {
      goto LABEL_121;
    }

    v90 = &v30[16 * v31];
    v92 = *(v90 + 4);
    v91 = *(v90 + 5);
    v71 = __OFSUB__(v91, v92);
    v93 = v91 - v92;
    if (v71)
    {
      goto LABEL_124;
    }

    if (v93 < v81)
    {
      goto LABEL_87;
    }

LABEL_77:
    v98 = v31 - 1;
    if (v31 - 1 >= v58)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_136;
    }

    v99 = *&v30[16 * v98 + 32];
    v100 = *&v30[16 * v31 + 40];
    sub_1B73B3888(*a3 + *(v140 + 72) * v99, *a3 + *(v140 + 72) * *&v30[16 * v31 + 32], *a3 + *(v140 + 72) * v100, v60, v142, v141);
    if (v7)
    {
    }

    if (v100 < v99)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1B77E4CA4(v30);
    }

    if (v98 >= *(v30 + 2))
    {
      goto LABEL_116;
    }

    v101 = &v30[16 * v98];
    *(v101 + 4) = v99;
    *(v101 + 5) = v100;
    v143 = v30;
    result = sub_1B77E4C18(v31);
    v30 = v143;
    v58 = *(v143 + 2);
    if (v58 <= 1)
    {
      goto LABEL_87;
    }
  }

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
  result = sub_1B77E4CA4(v30);
  v30 = result;
LABEL_102:
  v143 = v30;
  v115 = *(v30 + 2);
  if (v115 < 2)
  {
  }

  while (1)
  {
    v116 = *a3;
    if (!*a3)
    {
      break;
    }

    a3 = (v115 - 1);
    v117 = *&v30[16 * v115];
    v118 = *&v30[16 * v115 + 24];
    sub_1B73B3888(v116 + *(v140 + 72) * v117, v116 + *(v140 + 72) * *&v30[16 * v115 + 16], v116 + *(v140 + 72) * v118, v17, v142, v31);
    if (v7)
    {
    }

    if (v118 < v117)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1B77E4CA4(v30);
    }

    if (v115 - 2 >= *(v30 + 2))
    {
      goto LABEL_128;
    }

    v119 = &v30[16 * v115];
    *v119 = v117;
    *(v119 + 1) = v118;
    v143 = v30;
    result = sub_1B77E4C18(a3);
    v30 = v143;
    v115 = *(v143 + 2);
    a3 = v136;
    if (v115 <= 1)
    {
    }
  }

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

uint64_t sub_1B73B3888(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, char *), uint64_t a6)
{
  v7 = v6;
  v58 = a6;
  v59 = a5;
  v57 = type metadata accessor for InternalTransaction(0);
  v12 = MEMORY[0x1EEE9AC00](v57);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v54 = &v48 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v48 - v21;
  v56 = *(v23 + 72);
  if (!v56)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_65;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_66;
  }

  v55 = a3;
  v25 = (a2 - a1) / v56;
  v62 = a1;
  v61 = a4;
  if (v25 >= v24 / v56)
  {
    v27 = v24 / v56 * v56;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v27;
    if (v27 >= 1)
    {
      v35 = v55;
      v36 = -v56;
      v37 = v34;
      v50 = v14;
      v51 = a1;
      do
      {
        v48 = v34;
        v38 = a2;
        v52 = a2;
        v53 = a2 + v36;
        while (1)
        {
          if (v38 <= a1)
          {
            v62 = v38;
            v34 = v48;
            goto LABEL_62;
          }

          v39 = v35;
          v49 = v34;
          v40 = v7;
          v41 = a4;
          v56 = v37;
          v42 = v37 + v36;
          v43 = v54;
          sub_1B73B4A10(v37 + v36, v54);
          sub_1B73B4A10(v53, v14);
          v44 = v59(v43, v14);
          if (v40)
          {
            sub_1B73B4A74(v14);
            sub_1B73B4A74(v43);
            v62 = v52;
            v34 = v49;
            goto LABEL_62;
          }

          v45 = v44;
          v55 = 0;
          v46 = v39 + v36;
          sub_1B73B4A74(v14);
          sub_1B73B4A74(v43);
          if (v45)
          {
            break;
          }

          v34 = v42;
          v35 = v39 + v36;
          if (v39 < v56 || v46 >= v56)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v42;
            a4 = v41;
          }

          else
          {
            a4 = v41;
            if (v39 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
              v34 = v42;
            }
          }

          v37 = v34;
          v7 = v55;
          v14 = v50;
          a1 = v51;
          v38 = v52;
          if (v42 <= a4)
          {
            a2 = v52;
            goto LABEL_61;
          }
        }

        v35 = v39 + v36;
        if (v39 < v52 || v46 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a4 = v41;
        }

        else
        {
          v47 = v39 == v52;
          a2 = v53;
          a4 = v41;
          if (!v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v55;
        v37 = v56;
        v14 = v50;
        a1 = v51;
        v34 = v49;
      }

      while (v56 > a4);
    }

LABEL_61:
    v62 = a2;
LABEL_62:
    v60 = v34;
  }

  else
  {
    v26 = v25 * v56;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v26;
    v60 = a4 + v26;
    if (v26 >= 1 && a2 < v55)
    {
      while (1)
      {
        sub_1B73B4A10(a2, v22);
        sub_1B73B4A10(a4, v19);
        v30 = v59(v22, v19);
        if (v6)
        {
          break;
        }

        v31 = v30;
        sub_1B73B4A74(v19);
        sub_1B73B4A74(v22);
        if (v31)
        {
          v32 = v56;
          if (a1 < a2 || a1 >= a2 + v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v32;
        }

        else
        {
          v32 = v56;
          v33 = a4 + v56;
          if (a1 < a4 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = v33;
          a4 += v32;
        }

        a1 += v32;
        v62 = a1;
        if (a4 >= v28 || a2 >= v55)
        {
          goto LABEL_63;
        }
      }

      sub_1B73B4A74(v19);
      sub_1B73B4A74(v22);
    }
  }

LABEL_63:
  sub_1B778E58C(&v62, &v61, &v60);
  return 1;
}

id sub_1B73B3DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v37 - v5;
  v6 = sub_1B77FFA18();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  v41 = xmmword_1B781E650;
  *(v8 + 16) = xmmword_1B781E650;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  v48 = xmmword_1B7807CD0;
  *(v9 + 16) = xmmword_1B7807CD0;
  v10 = sub_1B77FF9B8();
  v39 = sub_1B7205540(0, &qword_1EB9905A8);
  *(v9 + 56) = v39;
  v38 = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v9 + 64) = v38;
  *(v9 + 32) = v10;
  *(v8 + 32) = sub_1B78010E8();
  v11 = swift_allocObject();
  *(v11 + 16) = v48;
  v12 = sub_1B77FF8B8();
  v13 = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v11 + 56) = v13;
  v14 = sub_1B73B4AF0(&qword_1EDAF93C0, &qword_1EDAF93C8);
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  *(v8 + 40) = sub_1B78010E8();
  v15 = swift_allocObject();
  *(v15 + 16) = v48;
  v16 = sub_1B77FF8B8();
  *(v15 + 56) = v13;
  *(v15 + 64) = v14;
  *(v15 + 32) = v16;
  *(v8 + 48) = sub_1B78010E8();
  v49 = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = v41;
  v18 = swift_allocObject();
  *(v18 + 16) = v48;
  v19 = sub_1B77FF8B8();
  *(v18 + 56) = v13;
  *(v18 + 64) = v14;
  *(v18 + 32) = v19;
  *(v17 + 32) = sub_1B78010E8();
  v20 = swift_allocObject();
  *(v20 + 16) = v48;
  v21 = sub_1B77FF8B8();
  *(v20 + 56) = v13;
  *(v20 + 64) = v14;
  *(v20 + 32) = v21;
  *(v17 + 40) = sub_1B78010E8();
  v22 = swift_allocObject();
  *(v22 + 16) = v48;
  v23 = sub_1B77FF8B8();
  *(v22 + 56) = v13;
  *(v22 + 64) = v14;
  *(v22 + 32) = v23;
  *(v17 + 48) = sub_1B78010E8();
  v24 = sub_1B7800C18();

  v25 = objc_opt_self();
  v26 = [v25 orPredicateWithSubpredicates_];

  MEMORY[0x1B8CA4F20]();
  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7800C58();
  }

  sub_1B7800C88();
  v27 = v46;
  sub_1B7227AFC(v47, v46);
  v29 = v44;
  v28 = v45;
  if ((*(v44 + 48))(v27, 1, v45) == 1)
  {
    sub_1B7205418(v27, &unk_1EB993A10);
  }

  else
  {
    v30 = v40;
    (*(v29 + 32))(v40, v27, v28);
    v31 = swift_allocObject();
    *(v31 + 16) = v48;
    v32 = sub_1B77FF9B8();
    v33 = v38;
    *(v31 + 56) = v39;
    *(v31 + 64) = v33;
    *(v31 + 32) = v32;
    sub_1B78010E8();
    MEMORY[0x1B8CA4F20]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    (*(v29 + 8))(v30, v28);
  }

  v34 = sub_1B7800C18();

  v35 = [v25 andPredicateWithSubpredicates_];

  return v35;
}

uint64_t sub_1B73B440C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B781E650;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1B7800838();
  v5 = [v3 initWithKey:v4 ascending:a1 & 1];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1B7800838();
  v8 = [v6 initWithKey:v7 ascending:(a1 & 1) == 0 selector:sel_localizedCaseInsensitiveCompare_];

  *(v2 + 40) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1B7800838();
  v11 = [v9 initWithKey:v10 ascending:(a1 & 1) == 0];

  *(v2 + 48) = v11;
  return v2;
}

uint64_t sub_1B73B4578(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v42 = type metadata accessor for InternalTransaction(0);
  v3 = MEMORY[0x1EEE9AC00](v42);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v40 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v40 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v40 = v10;
  if (v13)
  {
    v43 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v43;
    v16 = *(v10 + 72);
    v17 = v42;
    do
    {
      sub_1B73B4A10(v15, v12);
      if (*&v12[*(v17 + 112)])
      {
        sub_1B7304D10(v12, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B71FDEE0(0, *(v14 + 16) + 1, 1);
          v17 = v42;
          v14 = v44;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B71FDEE0(v19 > 1, v20 + 1, 1);
          v17 = v42;
          v14 = v44;
        }

        *(v14 + 16) = v20 + 1;
        v9 = sub_1B7304D10(v8, v14 + v43 + v20 * v16);
      }

      else
      {
        v9 = sub_1B73B4A74(v12);
      }

      v15 += v16;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x1EEE9AC00](v9);
  *(&v40 - 2) = v41;
  v44 = v14;

  v21 = 0;
  sub_1B73B2CBC(sub_1B73B4AD0, (&v40 - 4));

  v22 = v44;
  v23 = *(v44 + 16);
  if (v23 >= 5)
  {
    v24 = 5;
  }

  else
  {
    v24 = *(v44 + 16);
  }

  v25 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v26 = v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v21 = *(v42 + 112);
    v27 = *(v40 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B73B4A10(v26, v5);
      v29 = *(v21 + v5);
      if (v29)
      {
        v30 = v29;
        v31 = sub_1B73B4A74(v5);
        MEMORY[0x1B8CA4F20](v31);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v28 = v44;
      }

      else
      {
        sub_1B73B4A74(v5);
      }

      v26 += v27;
      --v24;
    }

    while (v24);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  if (!(v28 >> 62))
  {
    v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_25;
    }

LABEL_33:

    return MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1B7801958();
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_25:
  v44 = v25;
  sub_1B7801B98();
  if (v32 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v43 = v22;
    v33 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1B8CA5DC0](v33, v28);
      }

      else
      {
        v34 = *(v28 + 8 * v33 + 32);
      }

      v35 = v34;
      ++v33;
      [v34 coordinate];
      v37 = round(v36 * 100.0) / 100.0;
      [v35 coordinate];
      [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v37 longitude:round(v38 * 100.0) / 100.0];

      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
    }

    while (v32 != v33);

    return v44;
  }

  return result;
}

uint64_t sub_1B73B4A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73B4A74(uint64_t a1)
{
  v2 = type metadata accessor for InternalTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B73B4AF0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B7205540(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ManagedApplePayMerchantTokenUsageInformationPackage.__allocating_init(data:context:)(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = [objc_allocWithZone(v3) initWithContext_];
  v8 = sub_1B77FF598();
  [v7 setData_];

  sub_1B720A388(a1, a2);
  return v7;
}

id ManagedApplePayMerchantTokenUsageInformationPackage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenUsageInformationPackage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenUsageInformationPackage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedApplePayMerchantTokenResource.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedApplePayMerchantTokenResource;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id ManagedApplePayMerchantTokenResource.__allocating_init(name:localization:data:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v8 = v7;
  v13 = [objc_allocWithZone(v8) initWithContext_];
  v14 = sub_1B7800838();

  [v13 setName_];

  if (a4)
  {
    v15 = sub_1B7800838();
  }

  else
  {
    v15 = 0;
  }

  [v13 setLocalization_];

  v16 = sub_1B77FF598();
  [v13 setData_];

  sub_1B720A388(a5, a6);
  return v13;
}

void sub_1B73B4EC8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localization];
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

void sub_1B73B4F30(uint64_t a1, void **a2)
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
  [v2 setLocalization_];
}

id ManagedApplePayMerchantTokenResource.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenResource.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B73B5140()
{
  v0 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v3 = sub_1B73B62AC(v2);
  sub_1B72A820C(v2);
  return v3 & 1;
}

void sub_1B73B5338(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a1;
  v59 = a2;
  v66 = sub_1B7800168();
  v61 = *(v66 - 8);
  v4 = MEMORY[0x1EEE9AC00](v66);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v54 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993190);
  v7 = MEMORY[0x1EEE9AC00](v62);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - v10;
  v12 = sub_1B78001B8();
  v63 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = *(v2 + 16);
  v68 = v3;
  v69 = v18;
  v20 = v67;
  sub_1B7801338();
  v67 = v20;
  if (v20)
  {
    goto LABEL_2;
  }

  v56 = v19;
  v55 = v9;
  v58 = v17;
  v57 = v11;
  v21 = v66;
  swift_beginAccess();
  v22 = *(v18 + 16);
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v23 = v67;
  sub_1B7800138();
  v67 = v23;
  if (v23)
  {
    v24 = v3;
    v71 = v67;
    v25 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v26 = v64;
    v27 = v21;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v28 = v60;
    v29 = v61;
    (*(v61 + 32))(v60, v26, v27);
    v30 = swift_allocObject();
    *(v30 + 16) = v24;
    *(v30 + 24) = v22;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1B73BA450;
    *(v31 + 24) = v30;
    aBlock[4] = sub_1B720493C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B737BA64;
    aBlock[3] = &block_descriptor_6;
    v32 = _Block_copy(aBlock);

    dispatch_sync(v56, v32);
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      v33 = swift_allocError();
      (*(v29 + 16))(v34, v28, v27);
      v67 = v33;
      swift_willThrow();

      (*(v29 + 8))(v28, v27);

LABEL_2:

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v35 = v63;
  v36 = v58;
  v37 = v15;
  v38 = v12;
  (*(v63 + 32))(v58, v37, v12);
  sub_1B71A5B34(&qword_1EB993198, &qword_1EB993190);
  v39 = v57;
  v40 = v67;
  sub_1B78001A8();
  v67 = v40;
  if (v40)
  {
    (*(v35 + 8))(v36, v12);
    goto LABEL_2;
  }

  v41 = v55;
  sub_1B7205588(v39, v55, &qword_1EB993190);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_1B7205418(v39, &qword_1EB993190);
    (*(v35 + 8))(v36, v38);
    sub_1B722376C(v41, v59, &unk_1EB993A10);
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_20:
    sub_1B7801C88();
    __break(1u);
    return;
  }

  v43 = *v41;
  if (*(v41 + 24))
  {
    v44 = v35;
    v46 = *(v41 + 8);
    v45 = *(v41 + 16);
    v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v48 = sub_1B7800838();
    v49 = [v47 initWithDomain:v48 code:v45 userInfo:0];
    v50 = v43;
    v51 = v49;
    sub_1B7237890(v50, v46, v45, 1);

    v67 = v51;
    swift_willThrow();

    sub_1B7205418(v39, &qword_1EB993190);
    (*(v44 + 8))(v58, v38);
  }

  else
  {
    sub_1B7201CA4();
    v52 = swift_allocError();
    *v53 = v43;
    v67 = v52;
    swift_willThrow();

    sub_1B7205418(v39, &qword_1EB993190);
    (*(v35 + 8))(v36, v38);
  }
}

void sub_1B73B5B58(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = v2;
  v46 = a1;
  v42 = a2;
  v47 = sub_1B7800168();
  v44 = *(v47 - 8);
  v5 = MEMORY[0x1EEE9AC00](v47);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = sub_1B78001B8();
  v45 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = *(v2 + 16);
  v48 = v4;
  v49 = v15;
  sub_1B7801338();
  if (v3)
  {
    goto LABEL_2;
  }

  v40 = v8;
  v38 = v16;
  v41 = 0;
  v39 = v14;
  v17 = v47;
  swift_beginAccess();
  v18 = *(v15 + 16);
  if (!v18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    sub_1B7801C88();
    __break(1u);
    return;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v19 = v41;
  sub_1B7800138();
  if (v19)
  {
    v56 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v21 = v40;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v23 = v43;
    v22 = v44;
    (*(v44 + 32))(v43, v21, v17);
    v24 = swift_allocObject();
    *(v24 + 16) = v4;
    *(v24 + 24) = v18;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1B73BA450;
    *(v25 + 24) = v24;
    v54 = sub_1B73BA454;
    v55 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1B737BA64;
    v53 = &block_descriptor_127;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v38, v26);
    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if ((v26 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      swift_allocError();
      (*(v22 + 16))(v27, v23, v17);
      swift_willThrow();

      (*(v22 + 8))(v23, v17);

LABEL_2:

      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v28 = v45;
  v29 = v39;
  (*(v45 + 32))(v39, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FED8);
  sub_1B71A5B34(&qword_1EB98FEE0, &qword_1EB98FED8);
  v30 = v29;
  sub_1B78001A8();
  v31 = aBlock;
  if (!BYTE1(v53))
  {

    sub_1B71B7A20(aBlock, v51, v52, v53, SBYTE1(v53));
    (*(v28 + 8))(v29, v9);
    *v42 = v31;
    return;
  }

  if (BYTE1(v53) != 1)
  {
    goto LABEL_19;
  }

  v32 = v53;
  if (v53)
  {
    v47 = v18;
    v33 = v51;
    v34 = v52;
    v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1B7237880(v31, v33, v34, 1);
    v36 = sub_1B7800838();
    [v35 initWithDomain:v36 code:v34 userInfo:0];
    sub_1B71B7A20(v31, v33, v34, v32, 1);
  }

  else
  {
    sub_1B7201CA4();
    swift_allocError();
    *v37 = v31;
  }

  swift_willThrow();

  sub_1B71B7A20(aBlock, v51, v52, v53, SBYTE1(v53));
  (*(v28 + 8))(v30, v9);
}

uint64_t sub_1B73B62AC(uint64_t a1)
{
  v3 = v1;
  v43 = a1;
  v44 = sub_1B7800168();
  v41 = *(v44 - 8);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = sub_1B78001B8();
  v42 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *(v1 + 16);
  v45 = v3;
  v46 = v14;
  sub_1B7801338();
  if (v2)
  {
    goto LABEL_2;
  }

  v38 = v7;
  v36 = v15;
  v39 = 0;
  v37 = v13;
  v17 = v44;
  swift_beginAccess();
  v18 = *(v14 + 16);
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v19 = v39;
  sub_1B7800138();
  if (v19)
  {
    v53 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v11 = v38;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return v11 & 1;
    }

    v22 = v40;
    v21 = v41;
    (*(v41 + 32))(v40, v11, v17);
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v18;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B73BA450;
    *(v23 + 24) = v11;
    v51 = sub_1B73BA454;
    v52 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1B737BA64;
    v50 = &block_descriptor_103;
    v24 = _Block_copy(&aBlock);

    dispatch_sync(v36, v24);
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if ((v24 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      swift_allocError();
      (*(v21 + 16))(v25, v22, v17);
      swift_willThrow();

      (*(v21 + 8))(v22, v17);

LABEL_2:

      return v11 & 1;
    }

    __break(1u);
    goto LABEL_19;
  }

  v26 = v42;
  v27 = v37;
  (*(v42 + 32))(v37, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FEC0);
  sub_1B71A5B34(&qword_1EDAF9038, &qword_1EB98FEC0);
  v28 = v27;
  sub_1B78001A8();
  v11 = aBlock;
  if (!BYTE1(v50))
  {

    sub_1B71B7A20(aBlock, v48, v49, v50, SBYTE1(v50));
    (*(v26 + 8))(v27, v8);
    return v11 & 1;
  }

  if (BYTE1(v50) == 1)
  {
    v29 = v50;
    if (v50)
    {
      v44 = v18;
      v30 = v48;
      v31 = v49;
      v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1B7237880(v11, v30, v31, 1);
      v33 = sub_1B7800838();
      [v32 initWithDomain:v33 code:v31 userInfo:0];
      sub_1B71B7A20(v11, v30, v31, v29, 1);
    }

    else
    {
      sub_1B7201CA4();
      swift_allocError();
      *v34 = v11;
    }

    swift_willThrow();

    sub_1B71B7A20(aBlock, v48, v49, v50, SBYTE1(v50));
    (*(v26 + 8))(v28, v8);
    return v11 & 1;
  }

LABEL_20:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B73B69CC(uint64_t a1)
{
  v3 = v1;
  v43 = a1;
  v44 = sub_1B7800168();
  v41 = *(v44 - 8);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = sub_1B78001B8();
  v42 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *(v1 + 16);
  v45 = v3;
  v46 = v14;
  sub_1B7801338();
  if (v2)
  {
    goto LABEL_2;
  }

  v38 = v7;
  v36 = v15;
  v39 = 0;
  v37 = v13;
  v17 = v44;
  swift_beginAccess();
  v18 = *(v14 + 16);
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v19 = v39;
  sub_1B7800138();
  if (v19)
  {
    v53 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v11 = v38;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return v11;
    }

    v22 = v40;
    v21 = v41;
    (*(v41 + 32))(v40, v11, v17);
    v11 = swift_allocObject();
    *(v11 + 2) = v3;
    *(v11 + 3) = v18;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B73BA450;
    *(v23 + 24) = v11;
    v51 = sub_1B73BA454;
    v52 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1B737BA64;
    v50 = &block_descriptor_115;
    v24 = _Block_copy(&aBlock);

    dispatch_sync(v36, v24);
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if ((v24 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      swift_allocError();
      (*(v21 + 16))(v25, v22, v17);
      swift_willThrow();

      (*(v21 + 8))(v22, v17);

LABEL_2:

      return v11;
    }

    __break(1u);
    goto LABEL_19;
  }

  v26 = v42;
  v27 = v37;
  (*(v42 + 32))(v37, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9931E8);
  sub_1B71A5B34(&qword_1EB9931F0, &qword_1EB9931E8);
  v28 = v27;
  sub_1B78001A8();
  v11 = aBlock;
  if (!BYTE1(v50))
  {

    sub_1B71B7A20(aBlock, v48, v49, v50, SBYTE1(v50));
    (*(v26 + 8))(v27, v8);
    return v11;
  }

  if (BYTE1(v50) == 1)
  {
    v29 = v50;
    if (v50)
    {
      v44 = v18;
      v30 = v48;
      v31 = v49;
      v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1B7237880(v11, v30, v31, 1);
      v33 = sub_1B7800838();
      [v32 initWithDomain:v33 code:v31 userInfo:0];
      sub_1B71B7A20(v11, v30, v31, v29, 1);
    }

    else
    {
      sub_1B7201CA4();
      swift_allocError();
      *v34 = v11;
    }

    swift_willThrow();

    sub_1B71B7A20(aBlock, v48, v49, v50, SBYTE1(v50));
    (*(v26 + 8))(v28, v8);
    return v11;
  }

LABEL_20:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

void sub_1B73B70EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a1;
  v59 = a2;
  v66 = sub_1B7800168();
  v61 = *(v66 - 8);
  v4 = MEMORY[0x1EEE9AC00](v66);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v54 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9931D8);
  v7 = MEMORY[0x1EEE9AC00](v62);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - v10;
  v12 = sub_1B78001B8();
  v63 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = *(v2 + 16);
  v68 = v3;
  v69 = v18;
  v20 = v67;
  sub_1B7801338();
  v67 = v20;
  if (v20)
  {
    goto LABEL_2;
  }

  v56 = v19;
  v55 = v9;
  v58 = v17;
  v57 = v11;
  v21 = v66;
  swift_beginAccess();
  v22 = *(v18 + 16);
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v23 = v67;
  sub_1B7800138();
  v67 = v23;
  if (v23)
  {
    v24 = v3;
    v71 = v67;
    v25 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v26 = v64;
    v27 = v21;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v28 = v60;
    v29 = v61;
    (*(v61 + 32))(v60, v26, v27);
    v30 = swift_allocObject();
    *(v30 + 16) = v24;
    *(v30 + 24) = v22;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1B73BA450;
    *(v31 + 24) = v30;
    aBlock[4] = sub_1B73BA454;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B737BA64;
    aBlock[3] = &block_descriptor_91;
    v32 = _Block_copy(aBlock);

    dispatch_sync(v56, v32);
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      v33 = swift_allocError();
      (*(v29 + 16))(v34, v28, v27);
      v67 = v33;
      swift_willThrow();

      (*(v29 + 8))(v28, v27);

LABEL_2:

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v35 = v63;
  v36 = v58;
  v37 = v15;
  v38 = v12;
  (*(v63 + 32))(v58, v37, v12);
  sub_1B71A5B34(&qword_1EB9931E0, &qword_1EB9931D8);
  v39 = v57;
  v40 = v67;
  sub_1B78001A8();
  v67 = v40;
  if (v40)
  {
    (*(v35 + 8))(v36, v12);
    goto LABEL_2;
  }

  v41 = v55;
  sub_1B7205588(v39, v55, &qword_1EB9931D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_1B7205418(v39, &qword_1EB9931D8);
    (*(v35 + 8))(v36, v38);
    sub_1B73BA384(v41, v59);
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_20:
    sub_1B7801C88();
    __break(1u);
    return;
  }

  v43 = *v41;
  if (*(v41 + 24))
  {
    v44 = v35;
    v46 = *(v41 + 8);
    v45 = *(v41 + 16);
    v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v48 = sub_1B7800838();
    v49 = [v47 initWithDomain:v48 code:v45 userInfo:0];
    v50 = v43;
    v51 = v49;
    sub_1B7237890(v50, v46, v45, 1);

    v67 = v51;
    swift_willThrow();

    sub_1B7205418(v39, &qword_1EB9931D8);
    (*(v44 + 8))(v58, v38);
  }

  else
  {
    sub_1B7201CA4();
    v52 = swift_allocError();
    *v53 = v43;
    v67 = v52;
    swift_willThrow();

    sub_1B7205418(v39, &qword_1EB9931D8);
    (*(v35 + 8))(v36, v38);
  }
}

uint64_t sub_1B73B78FC(uint64_t a1)
{
  v3 = v1;
  v41 = a1;
  v42 = sub_1B7800168();
  v39 = *(v42 - 8);
  v4 = MEMORY[0x1EEE9AC00](v42);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = sub_1B78001B8();
  v40 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = *(v1 + 16);
  v43 = v3;
  v44 = v12;
  sub_1B7801338();
  if (v2)
  {
    goto LABEL_2;
  }

  v36 = v7;
  v34 = v13;
  v37 = 0;
  v35 = v11;
  v15 = v42;
  swift_beginAccess();
  v16 = *(v12 + 16);
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v17 = v37;
  sub_1B7800138();
  if (v17)
  {
    v18 = v3;
    v51 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v11 = v36;
    v20 = v15;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return v11;
    }

    v22 = v38;
    v21 = v39;
    (*(v39 + 32))(v38, v11, v20);
    v11 = swift_allocObject();
    *(v11 + 2) = v18;
    *(v11 + 3) = v16;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B73BA450;
    *(v23 + 24) = v11;
    v49 = sub_1B73BA454;
    v50 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1B737BA64;
    v48 = &block_descriptor_79;
    v24 = _Block_copy(&aBlock);

    dispatch_sync(v34, v24);
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if ((v24 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      swift_allocError();
      (*(v21 + 16))(v25, v22, v20);
      swift_willThrow();

      (*(v21 + 8))(v22, v20);

LABEL_2:

      return v11;
    }

    __break(1u);
    goto LABEL_19;
  }

  v26 = v40;
  v27 = v35;
  (*(v40 + 32))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9931C8);
  sub_1B71A5B34(&qword_1EB9931D0, &qword_1EB9931C8);
  sub_1B78001A8();
  v11 = aBlock;
  if (!BYTE1(v48))
  {
    sub_1B73BA364(aBlock, v46, v47, v48, 0);

    sub_1B71A5B88(aBlock, v46, v47, v48, SBYTE1(v48));
    (*(v26 + 8))(v27, v8);
    return v11;
  }

  if (BYTE1(v48) == 1)
  {
    if (v48)
    {
      v28 = v46;
      v29 = v47;
      LODWORD(v42) = v48;
      v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1B7237880(v11, v28, v29, 1);
      v31 = sub_1B7800838();
      [v30 initWithDomain:v31 code:v29 userInfo:0];
      sub_1B71A5B88(v11, v28, v29, v42, 1);
    }

    else
    {
      sub_1B7201CA4();
      swift_allocError();
      *v32 = v11;
    }

    swift_willThrow();

    sub_1B71A5B88(aBlock, v46, v47, v48, SBYTE1(v48));
    (*(v26 + 8))(v27, v8);
    return v11;
  }

LABEL_20:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

void sub_1B73B8020(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a1;
  v59 = a2;
  v66 = sub_1B7800168();
  v61 = *(v66 - 8);
  v4 = MEMORY[0x1EEE9AC00](v66);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v54 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FEE8);
  v7 = MEMORY[0x1EEE9AC00](v62);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - v10;
  v12 = sub_1B78001B8();
  v63 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = *(v2 + 16);
  v68 = v3;
  v69 = v18;
  v20 = v67;
  sub_1B7801338();
  v67 = v20;
  if (v20)
  {
    goto LABEL_2;
  }

  v56 = v19;
  v55 = v9;
  v58 = v17;
  v57 = v11;
  v21 = v66;
  swift_beginAccess();
  v22 = *(v18 + 16);
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v23 = v67;
  sub_1B7800138();
  v67 = v23;
  if (v23)
  {
    v24 = v3;
    v71 = v67;
    v25 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v26 = v64;
    v27 = v21;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v28 = v60;
    v29 = v61;
    (*(v61 + 32))(v60, v26, v27);
    v30 = swift_allocObject();
    *(v30 + 16) = v24;
    *(v30 + 24) = v22;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1B73BA348;
    *(v31 + 24) = v30;
    aBlock[4] = sub_1B73BA454;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B737BA64;
    aBlock[3] = &block_descriptor_67;
    v32 = _Block_copy(aBlock);

    dispatch_sync(v56, v32);
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      v33 = swift_allocError();
      (*(v29 + 16))(v34, v28, v27);
      v67 = v33;
      swift_willThrow();

      (*(v29 + 8))(v28, v27);

LABEL_2:

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v35 = v63;
  v36 = v58;
  v37 = v15;
  v38 = v12;
  (*(v63 + 32))(v58, v37, v12);
  sub_1B71A5B34(&qword_1EB98FEF0, &qword_1EB98FEE8);
  v39 = v57;
  v40 = v67;
  sub_1B78001A8();
  v67 = v40;
  if (v40)
  {
    (*(v35 + 8))(v36, v12);
    goto LABEL_2;
  }

  v41 = v55;
  sub_1B7205588(v39, v55, &qword_1EB98FEE8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_1B7205418(v39, &qword_1EB98FEE8);
    (*(v35 + 8))(v36, v38);
    sub_1B722376C(v41, v59, &unk_1EB994C70);
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_20:
    sub_1B7801C88();
    __break(1u);
    return;
  }

  v43 = *v41;
  if (*(v41 + 24))
  {
    v44 = v35;
    v46 = *(v41 + 8);
    v45 = *(v41 + 16);
    v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v48 = sub_1B7800838();
    v49 = [v47 initWithDomain:v48 code:v45 userInfo:0];
    v50 = v43;
    v51 = v49;
    sub_1B7237890(v50, v46, v45, 1);

    v67 = v51;
    swift_willThrow();

    sub_1B7205418(v39, &qword_1EB98FEE8);
    (*(v44 + 8))(v58, v38);
  }

  else
  {
    sub_1B7201CA4();
    v52 = swift_allocError();
    *v53 = v43;
    v67 = v52;
    swift_willThrow();

    sub_1B7205418(v39, &qword_1EB98FEE8);
    (*(v35 + 8))(v36, v38);
  }
}

uint64_t sub_1B73B8840(uint64_t a1)
{
  v3 = v1;
  v41 = a1;
  v42 = sub_1B7800168();
  v39 = *(v42 - 8);
  v4 = MEMORY[0x1EEE9AC00](v42);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = sub_1B78001B8();
  v40 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = *(v1 + 16);
  v43 = v3;
  v44 = v12;
  sub_1B7801338();
  if (v2)
  {
    goto LABEL_2;
  }

  v36 = v7;
  v34 = v13;
  v37 = 0;
  v35 = v11;
  v15 = v42;
  swift_beginAccess();
  v16 = *(v12 + 16);
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v17 = v37;
  sub_1B7800138();
  if (v17)
  {
    v18 = v3;
    v51 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v11 = v36;
    v20 = v15;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return v11;
    }

    v22 = v38;
    v21 = v39;
    (*(v39 + 32))(v38, v11, v20);
    v11 = swift_allocObject();
    *(v11 + 2) = v18;
    *(v11 + 3) = v16;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B73BA450;
    *(v23 + 24) = v11;
    v49 = sub_1B73BA454;
    v50 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1B737BA64;
    v48 = &block_descriptor_55;
    v24 = _Block_copy(&aBlock);

    dispatch_sync(v34, v24);
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if ((v24 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      swift_allocError();
      (*(v21 + 16))(v25, v22, v20);
      swift_willThrow();

      (*(v21 + 8))(v22, v20);

LABEL_2:

      return v11;
    }

    __break(1u);
    goto LABEL_19;
  }

  v26 = v40;
  v27 = v35;
  (*(v40 + 32))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9931B8);
  sub_1B71A5B34(&qword_1EB9931C0, &qword_1EB9931B8);
  sub_1B78001A8();
  v11 = aBlock;
  if (!BYTE1(v48))
  {
    sub_1B73BA364(aBlock, v46, v47, v48, 0);

    sub_1B71A5B88(aBlock, v46, v47, v48, SBYTE1(v48));
    (*(v26 + 8))(v27, v8);
    return v11;
  }

  if (BYTE1(v48) == 1)
  {
    if (v48)
    {
      v28 = v46;
      v29 = v47;
      LODWORD(v42) = v48;
      v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1B7237880(v11, v28, v29, 1);
      v31 = sub_1B7800838();
      [v30 initWithDomain:v31 code:v29 userInfo:0];
      sub_1B71A5B88(v11, v28, v29, v42, 1);
    }

    else
    {
      sub_1B7201CA4();
      swift_allocError();
      *v32 = v11;
    }

    swift_willThrow();

    sub_1B71A5B88(aBlock, v46, v47, v48, SBYTE1(v48));
    (*(v26 + 8))(v27, v8);
    return v11;
  }

LABEL_20:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B73B8F64(uint64_t a1)
{
  v3 = v1;
  v43 = a1;
  v44 = sub_1B7800168();
  v41 = *(v44 - 8);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = sub_1B78001B8();
  v42 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *(v1 + 16);
  v45 = v3;
  v46 = v14;
  sub_1B7801338();
  if (v2)
  {
    goto LABEL_2;
  }

  v38 = v7;
  v36 = v15;
  v39 = 0;
  v37 = v13;
  v17 = v44;
  swift_beginAccess();
  v18 = *(v14 + 16);
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v19 = v39;
  sub_1B7800138();
  if (v19)
  {
    v53 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v11 = v38;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return v11;
    }

    v22 = v40;
    v21 = v41;
    (*(v41 + 32))(v40, v11, v17);
    v11 = swift_allocObject();
    *(v11 + 2) = v3;
    *(v11 + 3) = v18;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B73BA450;
    *(v23 + 24) = v11;
    v51 = sub_1B73BA454;
    v52 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1B737BA64;
    v50 = &block_descriptor_43;
    v24 = _Block_copy(&aBlock);

    dispatch_sync(v36, v24);
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if ((v24 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      swift_allocError();
      (*(v21 + 16))(v25, v22, v17);
      swift_willThrow();

      (*(v21 + 8))(v22, v17);

LABEL_2:

      return v11;
    }

    __break(1u);
    goto LABEL_19;
  }

  v26 = v42;
  v27 = v37;
  (*(v42 + 32))(v37, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE68);
  sub_1B71A5B34(&qword_1EDAF9030, &qword_1EB98FE68);
  v28 = v27;
  sub_1B78001A8();
  v11 = aBlock;
  if (!BYTE1(v50))
  {

    sub_1B71B7A20(aBlock, v48, v49, v50, SBYTE1(v50));
    (*(v26 + 8))(v27, v8);
    return v11;
  }

  if (BYTE1(v50) == 1)
  {
    v29 = v50;
    if (v50)
    {
      v44 = v18;
      v30 = v48;
      v31 = v49;
      v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1B7237880(v11, v30, v31, 1);
      v33 = sub_1B7800838();
      [v32 initWithDomain:v33 code:v31 userInfo:0];
      sub_1B71B7A20(v11, v30, v31, v29, 1);
    }

    else
    {
      sub_1B7201CA4();
      swift_allocError();
      *v34 = v11;
    }

    swift_willThrow();

    sub_1B71B7A20(aBlock, v48, v49, v50, SBYTE1(v50));
    (*(v26 + 8))(v28, v8);
    return v11;
  }

LABEL_20:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

void sub_1B73B9684(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v56 = a1;
  v53 = a2;
  v57 = sub_1B7800168();
  v54 = *(v57 - 8);
  v4 = MEMORY[0x1EEE9AC00](v57);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - v7;
  v9 = sub_1B78001B8();
  v55 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = *(v2 + 16);
  v59 = v3;
  v60 = v15;
  v17 = v58;
  sub_1B7801338();
  v58 = v17;
  if (v17)
  {
    goto LABEL_2;
  }

  v52 = v8;
  v49 = v16;
  v51 = v14;
  v50 = v6;
  v18 = v57;
  swift_beginAccess();
  v19 = *(v15 + 16);
  if (!v19)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1B7801C88();
    __break(1u);
    return;
  }

  type metadata accessor for FinanceStore.Message();
  sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
  v20 = v58;
  sub_1B7800138();
  v58 = v20;
  if (v20)
  {
    v67 = v58;
    v21 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    v22 = v52;
    v23 = v18;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v24 = v54;
    v25 = v50;
    (*(v54 + 32))(v50, v22, v23);
    v26 = swift_allocObject();
    *(v26 + 16) = v3;
    *(v26 + 24) = v19;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1B73BA450;
    *(v27 + 24) = v26;
    v65 = sub_1B73BA454;
    v66 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1B737BA64;
    v64 = &block_descriptor_19;
    v28 = _Block_copy(&aBlock);

    dispatch_sync(v49, v28);
    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
      sub_1B719BE88(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
      v29 = swift_allocError();
      (*(v24 + 16))(v30, v25, v23);
      v58 = v29;
      swift_willThrow();

      (*(v24 + 8))(v25, v23);

LABEL_2:

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v31 = v55;
  v32 = v51;
  v33 = v9;
  (*(v55 + 32))(v51, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9931A0);
  sub_1B71A5B34(&qword_1EB9931A8, &qword_1EB9931A0);
  v34 = v58;
  sub_1B78001A8();
  v58 = v34;
  if (v34)
  {
    (*(v31 + 8))(v32, v9);
    goto LABEL_2;
  }

  v35 = aBlock;
  v36 = v62;
  v38 = v63;
  v37 = v64;
  v39 = v65;
  if (!BYTE1(v65))
  {
    sub_1B73BA2E4(aBlock, v62, v63, v64, v65, 0);

    sub_1B73BA280(aBlock, v62, v63, v64, v65, SBYTE1(v65));
    (*(v31 + 8))(v51, v33);
    v40 = v53;
    *v53 = v35;
    v40[1] = v36;
    v40[2] = v38;
    v40[3] = v37;
    *(v40 + 32) = v39;
    return;
  }

  if (BYTE1(v65) != 1)
  {
    goto LABEL_20;
  }

  if (v64)
  {
    v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1B7237880(v35, v36, v38, 1);
    v42 = sub_1B7800838();
    v57 = v19;
    v43 = v42;
    v44 = [v41 initWithDomain:v42 code:v38 userInfo:0];
    v45 = v35;
    v46 = v44;
    sub_1B73BA280(v45, v36, v38, v37, v39, 1);

    v58 = v46;
  }

  else
  {
    sub_1B7201CA4();
    v47 = swift_allocError();
    *v48 = v35;
    v58 = v47;
  }

  swift_willThrow();

  sub_1B73BA280(aBlock, v62, v63, v64, v65, SBYTE1(v65));
  (*(v31 + 8))(v51, v33);
}

uint64_t FinanceStore.isWalletDeletedRemoteAsync()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FinanceStore.Message();
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73B9E94, 0, 0);
}

uint64_t sub_1B73B9E94()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B73B9F50;
  v2 = *(v0 + 32);

  return sub_1B7271C34(v2);
}

uint64_t sub_1B73B9F50()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 48) = v0;

  sub_1B72A820C(*(v2 + 32));
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B73BA0C8, 0, 0);
}

uint64_t sub_1B73BA0C8()
{
  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EDAFAF58);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7198000, v4, v5, "isWalletDeletedRemote encountered an error: %@", v8, 0xCu);
    sub_1B7205418(v9, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_1B73BA280(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
    v7 = a4 & 1;

    return sub_1B7237890(result, a2, a3, v7);
  }

  else if (!a6)
  {
  }

  return result;
}

uint64_t sub_1B73BA2E4(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
    v7 = a4 & 1;

    return sub_1B7237880(result, a2, a3, v7);
  }

  else if (!a6)
  {
  }

  return result;
}

uint64_t sub_1B73BA364(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5 == 1)
  {
    return sub_1B7237880(result, a2, a3, a4 & 1);
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_1B73BA384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void static DeviceInfo.deviceType.getter(char *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if ((deviceClassNumber - 1) > 0xA)
    {
      v5 = 6;
    }

    else
    {
      v5 = byte_1B7820A46[deviceClassNumber - 1];
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B73BA500()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    byte_1EDAF9EA0 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static DeviceInfo.isInternalInstall.getter()
{
  if (qword_1EDAF9E98 != -1)
  {
    swift_once();
  }

  return byte_1EDAF9EA0;
}

void static DeviceInfo.uniqueDeviceID.getter()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v2)
    {
      sub_1B7800868();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B73BA684()
{
  if (qword_1EDAF9E98 != -1)
  {
    swift_once();
  }

  return byte_1EDAF9EA0;
}

void sub_1B73BA748()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v2)
    {
      sub_1B7800868();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t DeviceType.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B73BA858()
{
  result = qword_1EB9931F8;
  if (!qword_1EB9931F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9931F8);
  }

  return result;
}

uint64_t static DisplayUtilities.mainScreenScale.getter()
{
  result = GSMainScreenScaleFactor();
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.2234e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

id static ImageProcessingServiceConfiguration.serviceInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id sub_1B73BA9F4()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t dispatch thunk of ImageProcessingProviding.generateIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

__n128 RawApplePayMerchantTokenUsageInformation.ScheduledPayment.amount.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.ScheduledPayment.paymentDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment(0) + 20);
  v4 = sub_1B77FED28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawApplePayMerchantTokenUsageInformation.ScheduledPayment.paymentDateComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment(0) + 20);
  v4 = sub_1B77FED28();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawApplePayMerchantTokenUsageInformation.ScheduledPayment.init(amount:paymentDateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);

  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  *(a3 + 32) = v6;
  v8 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment(0) + 20);
  v9 = sub_1B77FED28();
  v10 = *(*(v9 - 8) + 32);

  return v10(a3 + v8, a2, v9);
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.Interval.unit.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_1B72C60D4();
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.Interval.unit.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B71E4DF0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

__n128 RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.Interval.init(unit:count:)@<Q0>(__n128 *a1@<X0>, unsigned __int16 a2@<W1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u16[0] = a2;
  return result;
}

BOOL static RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.Interval.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6574756E696DLL;
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = *(a2 + 8);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v7 = 0xE400000000000000;
        v8 = 1801807223;
        if (v5 > 2)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      case 4:
        v7 = 0xE500000000000000;
        v8 = 0x68746E6F6DLL;
        if (v5 <= 2)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      case 5:
        v7 = 0xE400000000000000;
        v8 = 1918985593;
        if (v5 > 2)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
    }

LABEL_16:
    v8 = *a1;
    v7 = a1[1];
    if (v5 > 2)
    {
      goto LABEL_19;
    }

LABEL_25:
    switch(v5)
    {
      case 0:
        v9 = 0xE600000000000000;
        goto LABEL_33;
      case 1:
        v9 = 0xE400000000000000;
        v2 = 1920298856;
        goto LABEL_33;
      case 2:
        v9 = 0xE300000000000000;
        v2 = 7954788;
        goto LABEL_33;
    }

LABEL_30:
    v2 = *a2;
    v9 = *(a2 + 8);
    goto LABEL_33;
  }

  if (!v4)
  {
    v7 = 0xE600000000000000;
    v8 = 0x6574756E696DLL;
    if (v5 > 2)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v4 == 1)
  {
    v7 = 0xE400000000000000;
    v8 = 1920298856;
    if (v5 <= 2)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v4 != 2)
  {
    goto LABEL_16;
  }

  v7 = 0xE300000000000000;
  v8 = 7954788;
  if (v5 <= 2)
  {
    goto LABEL_25;
  }

LABEL_19:
  switch(v5)
  {
    case 3:
      v9 = 0xE400000000000000;
      v2 = 1801807223;
      break;
    case 4:
      v9 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 5:
      v9 = 0xE400000000000000;
      v2 = 1918985593;
      break;
    default:
      goto LABEL_30;
  }

LABEL_33:
  v10 = *(a1 + 8);
  v11 = *(a2 + 16);
  if (v8 == v2 && v7 == v9)
  {
    sub_1B72C60D4(*a1);
    sub_1B72C60D4(v6);
  }

  else
  {
    v12 = sub_1B78020F8();
    sub_1B72C60D4(v3);
    sub_1B72C60D4(v6);

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  return v10 == v11;
}

uint64_t sub_1B73BB150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_1B72BF4D4(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.recurringPaymentType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_1B72C60CC();
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.recurringPaymentType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B71E4E04(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1B72C60D4();
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.interval.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  result = sub_1B71E4DF0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.scheduledPayments.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

__n128 RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.init(recurringPaymentType:interval:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  result = *a1;
  v5 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = MEMORY[0x1E69E7CC0];
  *(a3 + 48) = 0;
  return result;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV16ScheduledPaymentV6amountAA14CurrencyAmountVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails.init(amount:paymentDateComponents:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 4);
  v7 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  v8 = *(v7 + 20);
  v9 = sub_1B77FED28();
  v11 = a1[1];
  v12 = *a1;
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);

  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v6;
  return sub_1B7213740(a2, a3 + v8, &qword_1EB991538);
}

uint64_t RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails.amount.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails.thresholdAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails.thresholdAmount.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  return result;
}

__n128 RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails.init(amount:thresholdAmount:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  v9 = a2[1];
  v10 = *a2;
  v6 = *(a2 + 4);

  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;

  result = v9;
  *(a3 + 40) = v10;
  *(a3 + 56) = v9;
  *(a3 + 72) = v6;
  return result;
}

uint64_t sub_1B73BB668()
{
  if (*v0)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

uint64_t sub_1B73BB6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEF746E756F6D4164)
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

uint64_t sub_1B73BB78C(uint64_t a1)
{
  v2 = sub_1B73C39C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73BB7C8(uint64_t a1)
{
  v2 = sub_1B73C39C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.UpcomingPayment.imageName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawApplePayMerchantTokenUsageInformation.UpcomingPayment.imageName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.UpcomingPayment.paymentDetails.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment(0) + 28);

  return sub_1B73C3558(a1, v3);
}

uint64_t RawApplePayMerchantTokenUsageInformation.UpcomingPayment.init(identifier:label:imageName:paymentDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v10 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment(0);
  return sub_1B73C3C38(a7, a8 + *(v10 + 28), type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem.imageName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem.imageName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v6[0] = *(v1 + 32);
  v6[1] = v2;
  v7 = *(v1 + 64);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem.amount.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v6[0] = *(v1 + 32);
  v6[1] = v3;
  v7 = *(v1 + 64);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

__n128 RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem.init(label:imageName:amount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  *(a6 + 64) = *(a5 + 32);
  return result;
}

uint64_t sub_1B73BBBFC()
{
  v1 = 0x6D614E6567616D69;
  if (*v0 != 1)
  {
    v1 = 0x746E756F6D61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1B73BBC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73C5ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73BBC7C(uint64_t a1)
{
  v2 = sub_1B73C3CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73BBCB8(uint64_t a1)
{
  v2 = sub_1B73C3CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v2;
  v7 = *(v1 + 48);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem.amount.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v7 = *(v1 + 48);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

__n128 RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem.init(label:amount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t sub_1B73BBE4C()
{
  if (*v0)
  {
    return 0x746E756F6D61;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1B73BBE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
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

uint64_t sub_1B73BBF54(uint64_t a1)
{
  v2 = sub_1B73C3D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73BBF90(uint64_t a1)
{
  v2 = sub_1B73C3D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.lineItems.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.summaryItems.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.totalAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v6[0] = *(v1 + 32);
  v6[1] = v2;
  v7 = *(v1 + 64);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawApplePayMerchantTokenUsageInformation.PastPayment.totalAmount.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v6[0] = *(v1 + 32);
  v6[1] = v3;
  v7 = *(v1 + 64);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.paymentDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0) + 32);
  v4 = sub_1B77FED28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.paymentDateComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0) + 32);
  v4 = sub_1B77FED28();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.init(identifier:totalAmount:paymentDateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v7 = MEMORY[0x1E69E7CC0];
  *(a5 + 16) = MEMORY[0x1E69E7CC0];
  *(a5 + 24) = v7;
  v8 = *(a3 + 16);
  *(a5 + 32) = *a3;
  *(a5 + 48) = v8;
  *(a5 + 64) = *(a3 + 32);
  v9 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0) + 32);
  v10 = sub_1B77FED28();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a4, v10);
}

uint64_t RawApplePayMerchantTokenUsageInformation.merchantTokenIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawApplePayMerchantTokenUsageInformation.merchantTokenIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.merchantName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawApplePayMerchantTokenUsageInformation.merchantName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.upcomingPayments.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.pastPayments.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.otherUsageDescription.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RawApplePayMerchantTokenUsageInformation.otherUsageDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation(0) + 40);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawApplePayMerchantTokenUsageInformation.modificationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation(0) + 40);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawApplePayMerchantTokenUsageInformation.init(merchantTokenIdentifier:merchantName:merchantLogoName:modificationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  v15 = *(v14 + 44);
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  v22 = *(v17 + 56);
  v22(&a8[v15], 1, 1, v16);
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v18 = MEMORY[0x1E69E7CC0];
  *(a8 + 6) = MEMORY[0x1E69E7CC0];
  *(a8 + 7) = v18;
  *(a8 + 8) = 0;
  *(a8 + 9) = 0;
  (*(v17 + 32))(&a8[*(v14 + 40)], a7, v16);
  sub_1B7205418(&a8[v15], &qword_1EB98EBD0);

  return (v22)(&a8[v15], 1, 1, v16);
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.RecurringPaymentType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x676E696C6C6962 && v3 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x6D6C6C6174736E69 && v3 == 0xEB00000000746E65 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x726568746FLL && v3 == 0xE500000000000000 || (result = sub_1B78020F8(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 3;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.RecurringPaymentType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0x6D6C6C6174736E69;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0x726568746FLL;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *v0;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0x7069726373627573;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0x676E696C6C6962;
LABEL_11:
  sub_1B72C60CC(v1);
  return v3;
}

double sub_1B73BCB34@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.RecurringPaymentType.init(rawValue:)(*a1, a1[1], &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B73BCB74@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      *a1 = 0x6D6C6C6174736E69;
      *(a1 + 8) = 0xEB00000000746E65;
      return sub_1B72C60CC(v2);
    }

    if (v3 == 3)
    {
      *a1 = 0x726568746FLL;
      *(a1 + 8) = 0xE500000000000000;
      return sub_1B72C60CC(v2);
    }

LABEL_9:
    *a1 = v2;
    *(a1 + 8) = v3;
    return sub_1B72C60CC(v2);
  }

  if (!v3)
  {
    strcpy(a1, "subscription");
    *(a1 + 13) = 0;
    *(a1 + 14) = -5120;
    return sub_1B72C60CC(v2);
  }

  if (v3 != 1)
  {
    goto LABEL_9;
  }

  *a1 = 0x676E696C6C6962;
  *(a1 + 8) = 0xE700000000000000;
  return sub_1B72C60CC(v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.Interval.Unit.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x6574756E696DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 1920298856 && v3 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 7954788 && v3 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 1801807223 && v3 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x68746E6F6DLL && v3 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 1918985593 && v3 == 0xE400000000000000 || (result = sub_1B78020F8(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 5;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.Interval.Unit.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 1801807223;
        goto LABEL_15;
      case 4:
        v3 = 0x68746E6F6DLL;
        goto LABEL_15;
      case 5:
        v3 = 1918985593;
        goto LABEL_15;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_15;
  }

  if (!v2)
  {
    v3 = 0x6574756E696DLL;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 1920298856;
    goto LABEL_15;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 7954788;
LABEL_15:
  sub_1B72C60D4(v1);
  return v3;
}

double sub_1B73BCEFC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.Interval.Unit.init(rawValue:)(*a1, a1[1], &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B73BCF3C@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        *a1 = 1801807223;
        a1[1] = 0xE400000000000000;
        return sub_1B72C60D4(v2);
      case 4:
        *a1 = 0x68746E6F6DLL;
        a1[1] = 0xE500000000000000;
        return sub_1B72C60D4(v2);
      case 5:
        *a1 = 1918985593;
        a1[1] = 0xE400000000000000;
        return sub_1B72C60D4(v2);
    }

LABEL_13:
    *a1 = v2;
    a1[1] = v3;
    return sub_1B72C60D4(v2);
  }

  if (!v3)
  {
    *a1 = 0x6574756E696DLL;
    a1[1] = 0xE600000000000000;
    return sub_1B72C60D4(v2);
  }

  if (v3 == 1)
  {
    *a1 = 1920298856;
    a1[1] = 0xE400000000000000;
    return sub_1B72C60D4(v2);
  }

  if (v3 != 2)
  {
    goto LABEL_13;
  }

  *a1 = 7954788;
  a1[1] = 0xE300000000000000;
  return sub_1B72C60D4(v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x6E69727275636572 && a2 == 0xE900000000000067;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x6465727265666564 && v3 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x6974616D6F747561 && v3 == 0xEF64616F6C655263 || (result = sub_1B78020F8(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 2;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentType.rawValue.getter()
{
  v1 = v0[1];
  v2 = 0x6465727265666564;
  v3 = 0x6974616D6F747561;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x6E69727275636572;
  }

  sub_1B72C60D0();
  return v4;
}

double sub_1B73BD1CC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentType.init(rawValue:)(*a1, a1[1], &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B73BD224(uint64_t a1)
{
  v2 = sub_1B73C35FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73BD260(uint64_t a1)
{
  v2 = sub_1B73C35FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.ScheduledPayment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1B77FED28();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993200);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73C35FC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = a1;
    v14 = v25;
    v13 = v26;
    v30 = 0;
    sub_1B72153F8();
    sub_1B7801DB8();
    v15 = v29;
    v20 = v28;
    v21 = v27;

    v16 = v20;
    *v11 = v21;
    *(v11 + 1) = v16;
    *(v11 + 4) = v15;
    LOBYTE(v27) = 1;
    v17 = sub_1B7801DF8();
    LOBYTE(v27) = 0;
    DateComponentsParseStrategy.parse(_:)(v17, v18, v13);

    (*(v14 + 8))(v8, v6);
    (*(v22 + 32))(&v11[*(v9 + 20)], v26, v23);
    sub_1B73C3650(v11, v24, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return sub_1B73C3964(v11, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
  }
}

uint64_t sub_1B73BD6BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E756F63;
  }

  else
  {
    v3 = 1953066613;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E756F63;
  }

  else
  {
    v5 = 1953066613;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1B73BD758()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73BD7D0()
{
  sub_1B7800798();
}

uint64_t sub_1B73BD834()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B73BD8B4(uint64_t *a1@<X8>)
{
  v2 = 1953066613;
  if (*v1)
  {
    v2 = 0x746E756F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B73BD8E8()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 1953066613;
  }
}

uint64_t sub_1B73BD924(uint64_t a1)
{
  v2 = sub_1B73C36B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73BD960(uint64_t a1)
{
  v2 = sub_1B73C36B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.Interval.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993210);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73C36B8();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_1B73C370C();
  sub_1B7801E48();
  v11 = v14[0];
  v10 = v14[1];
  LOBYTE(v14[0]) = 1;
  v12 = sub_1B7801DC8();
  if ((v12 & 0x10000) != 0)
  {
    v13 = 1;
    goto LABEL_8;
  }

  v13 = v12;
  if (v12 > 0)
  {
LABEL_8:
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
    sub_1B72C60D4(v11);
    goto LABEL_9;
  }

  LOBYTE(v14[0]) = 1;
  sub_1B7801B18();
  swift_allocError();
  sub_1B73C3F68(&qword_1EB993228, &qword_1EB993210);
  sub_1B7801AD8();
  swift_willThrow();
  (*(v6 + 8))(v8, v5);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B71E4DF0(v11, v10);
}

uint64_t sub_1B73BDC58()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73BDD24()
{
  sub_1B7800798();
}

uint64_t sub_1B73BDDDC()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73BDEA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73C5FE4();
  *a1 = result;
  return result;
}

void sub_1B73BDED4(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6C61767265746E69;
  v4 = 0x80000001B7873890;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001B78738B0;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x80000001B7873870;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1B73BDF5C()
{
  v1 = 0x6C61767265746E69;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1B73BDFE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73C5FE4();
  *a1 = result;
  return result;
}

uint64_t sub_1B73BE008(uint64_t a1)
{
  v2 = sub_1B73C3760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73BE044(uint64_t a1)
{
  v2 = sub_1B73C3760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.RecurringPaymentDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993230);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73C3760();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_1B73C37B4();
  sub_1B7801E48();
  v10 = v23;
  v22 = v24;
  v27 = 1;
  sub_1B73C3808();
  sub_1B7801E48();
  v20 = v24;
  v21 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993250);
  v27 = 2;
  sub_1B73C385C();
  sub_1B7801DB8();
  v11 = v23;
  if (!v23)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = v11;
  LOBYTE(v23) = 3;
  v12 = sub_1B7801D88();
  (*(v6 + 8))(v8, v5);
  v13 = v10;
  *a2 = v10;
  v14 = v21;
  v15 = v22;
  *(a2 + 8) = v22;
  *(a2 + 16) = v14;
  v17 = v19;
  v16 = v20;
  *(a2 + 24) = v20;
  *(a2 + 32) = v26;
  *(a2 + 40) = v17;
  *(a2 + 48) = v12 & 1;
  sub_1B72C60CC(v13);
  sub_1B72C60D4(v14);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1B71E4E04(v13, v15);
  sub_1B71E4DF0(v14, v16);
}

uint64_t sub_1B73BE418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x44746E656D796170;
  }

  else
  {
    v3 = 0x746E756F6D61;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000657461;
  }

  if (*a2)
  {
    v5 = 0x44746E656D796170;
  }

  else
  {
    v5 = 0x746E756F6D61;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657461;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1B73BE4C4()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73BE54C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73BE5E8@<X0>(char *a1@<X8>)
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

uint64_t sub_1B73BE648(uint64_t a1)
{
  v2 = sub_1B73C3910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73BE684(uint64_t a1)
{
  v2 = sub_1B73C3910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v27 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993268);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v27 - v5;
  v7 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = *(v8 + 28);
  v12 = sub_1B77FED28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(&v10[v11], 1, 1, v12);
  v16 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B73C3910();
  v17 = v36;
  sub_1B78023C8();
  if (!v17)
  {
    v29 = v15;
    v30 = v14;
    v31 = v12;
    v36 = v11;
    v18 = v33;
    v19 = v34;
    v41 = 0;
    sub_1B72153F8();
    v20 = v35;
    sub_1B7801DB8();
    v21 = v40;
    v27 = v39;
    v28 = v38;

    v22 = v27;
    *v10 = v28;
    *(v10 + 1) = v22;
    *(v10 + 4) = v21;
    LOBYTE(v38) = 1;
    v23 = sub_1B7801D78();
    if (v24)
    {
      LOBYTE(v38) = 0;
      DateComponentsParseStrategy.parse(_:)(v23, v24, v19);

      (*(v18 + 8))(v6, v20);
      v26 = v32;
      v30(v19, 0, 1, v31);
      sub_1B7213740(v19, &v10[v36], &qword_1EB991538);
    }

    else
    {
      (*(v18 + 8))(v6, v20);
      v26 = v32;
    }

    sub_1B73C3650(v10, v26, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1B73C3964(v10, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
}

uint64_t RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993278);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73C39C4();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v42 = 0u;
    v43 = 0u;
    v41 = 0;
    v44 = 0;
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_1B72153F8();
    sub_1B7801DB8();
    v24 = a2;
    v11 = v37;
    v10 = v38;
    v12 = v39;
    v45 = v40;
    v25 = v41;

    v31 = 1;
    sub_1B7801DB8();
    (*(v6 + 8))(v8, v5);
    v13 = v32;
    v14 = v33;
    v15 = v34;
    v16 = v35;
    v23 = v34;
    v22 = v36;

    *&v26 = v11;
    *(&v26 + 1) = v10;
    *&v27 = v12;
    *(&v27 + 1) = v45;
    *&v28 = v25;
    *(&v28 + 1) = v13;
    *&v29 = v14;
    *(&v29 + 1) = v15;
    *&v30 = v16;
    v17 = v22;
    *(&v30 + 1) = v22;
    v18 = v29;
    v19 = v24;
    v24[2] = v28;
    v19[3] = v18;
    v19[4] = v30;
    v20 = v27;
    *v19 = v26;
    v19[1] = v20;
    sub_1B73C3A4C(&v26, &v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = v11;
    v38 = v10;
    v39 = v12;
    v40 = v45;
    v41 = v25;
    *&v42 = v13;
    *(&v42 + 1) = v14;
    *&v43 = v23;
    *(&v43 + 1) = v16;
    v44 = v17;
  }

  return sub_1B73C3A18(&v37);
}

uint64_t sub_1B73BEE48()
{
  sub_1B7800798();
}

uint64_t sub_1B73BEF70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73C6030();
  *a1 = result;
  return result;
}

void sub_1B73BEFA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEA00000000007265;
    v9 = 0xE500000000000000;
    v10 = 0x6C6562616CLL;
    if (v2 != 1)
    {
      v10 = 0x6D614E6567616D69;
      v9 = 0xE900000000000065;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x696669746E656469;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001B7873910;
    v4 = 0xD00000000000001DLL;
    if (v2 == 5)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x80000001B7873930;
    }

    v5 = 0xEB00000000657079;
    v6 = 0xD000000000000017;
    if (v2 == 3)
    {
      v6 = 0x54746E656D796170;
    }

    else
    {
      v5 = 0x80000001B78738F0;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_1B73BF094()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6C6562616CLL;
    if (v1 != 1)
    {
      v5 = 0x6D614E6567616D69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD000000000000017;
    if (v1 == 3)
    {
      v3 = 0x54746E656D796170;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B73BF180@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73C6030();
  *a1 = result;
  return result;
}

uint64_t sub_1B73BF1A8(uint64_t a1)
{
  v2 = sub_1B73C3A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73BF1E4(uint64_t a1)
{
  v2 = sub_1B73C3A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.UpcomingPayment.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v78 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = &v69 - v5;
  v79 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails(0);
  v6 = MEMORY[0x1EEE9AC00](v79);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993288);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993290);
  v80 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  v18 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B73C3A84();
  v22 = v81;
  sub_1B78023C8();
  if (v22)
  {

    return __swift_destroy_boxed_opaque_existential_1(v90);
  }

  v74 = v14;
  v73 = v12;
  v81 = v20;
  LOBYTE(v83) = 0;
  v23 = sub_1B7801DF8();
  v25 = v24;
  swift_beginAccess();

  v26 = sub_1B724E408(&v89, v23, v25);
  swift_endAccess();

  if ((v26 & 1) == 0)
  {

    LOBYTE(v83) = 0;
    sub_1B7801B18();
    swift_allocError();
    sub_1B73C3F68(&qword_1EB9932A0, &qword_1EB993290);
    sub_1B7801AD8();
    swift_willThrow();

    v80[1](v17, v15);
    return __swift_destroy_boxed_opaque_existential_1(v90);
  }

  v27 = v81;
  *v81 = v23;
  v27[1] = v25;
  v28 = v27;
  LOBYTE(v83) = 1;
  v29 = sub_1B7801DF8();
  v30 = v80;
  v28[2] = v29;
  v28[3] = v32;
  LOBYTE(v83) = 2;
  v72 = 0;
  v28[4] = sub_1B7801D78();
  v28[5] = v33;
  v71 = v33;
  LOBYTE(v89) = 3;
  sub_1B73C3AD8();
  sub_1B7801E48();
  v34 = *(&v83 + 1);
  if (*(&v83 + 1) == 2)
  {
    LOBYTE(v89) = 6;
    sub_1B73C3B2C();
    sub_1B7801DB8();
    v59 = v28;

    v30[1](v17, v15);
    v60 = v85;
    if (v85 == 1)
    {
      swift_bridgeObjectRelease_n();
      v61 = 0;
      v60 = 0;
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
    }

    else
    {
      v61 = v88;
      v65 = v87;
      v64 = v86;
      v62 = v83;
      v63 = v84;
    }

    v58 = v78;
    v68 = v76;
    *v76 = v62;
    v68[1] = v63;
    *(v68 + 4) = v60;
    *(v68 + 40) = v64;
    *(v68 + 56) = v65;
    *(v68 + 9) = v61;
    swift_storeEnumTagMultiPayload();
    v66 = v59 + *(v18 + 28);
    v67 = v68;
    v28 = v59;
  }

  else
  {
    if (*(&v83 + 1) != 1)
    {
      if (*(&v83 + 1))
      {
        v41 = v28;
        v42 = v83;

        v30[1](v17, v15);
        v43 = (v41 + *(v18 + 28));
        *v43 = v42;
        v43[1] = v34;
        v28 = v41;
      }

      else
      {
        LOBYTE(v89) = 4;
        sub_1B73C3CA0();
        sub_1B7801E48();

        v30[1](v17, v15);
        v35 = v85;
        v36 = v86;
        v37 = BYTE8(v86);
        v38 = v84;
        v39 = v28 + *(v18 + 28);
        *v39 = v83;
        *(v39 + 1) = v38;
        *(v39 + 16) = v35;
        *(v39 + 5) = v36;
        v39[48] = v37;
      }

      swift_storeEnumTagMultiPayload();
      v44 = v78;
      goto LABEL_25;
    }

    v40 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0);
    LOBYTE(v83) = 5;
    sub_1B73C3B80(&qword_1EB9932B8, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
    v70 = v40;
    v76 = v17;
    sub_1B7801DB8();

    v30[1](v76, v15);
    v45 = v73;
    sub_1B73C3BC8(v74, v73);
    v46 = v70;
    v47 = *(*(v70 - 8) + 48);
    v48 = *(v70 - 8) + 48;
    if ((v47)(v45, 1, v70) == 1)
    {
      v49 = sub_1B77FED28();
      v50 = *(v49 - 8);
      v82 = v48;
      v51 = *(v50 + 56);
      v80 = v47;
      v52 = v75;
      v51(v75, 1, 1, v49);
      v53 = v77;
      *(v77 + 32) = 0;
      *v53 = 0u;
      *(v53 + 16) = 0u;
      v54 = *(v46 + 20);
      v51((v53 + v54), 1, 1, v49);
      v55 = v73;
      v56 = v81;

      *(v53 + 32) = 0;
      *v53 = 0u;
      *(v53 + 16) = 0u;
      sub_1B7213740(v52, v53 + v54, &qword_1EB991538);
      v57 = (v80)(v55, 1, v46);
      v58 = v78;
      if (v57 != 1)
      {
        sub_1B7205418(v55, &qword_1EB993288);
      }
    }

    else
    {
      v56 = v28;
      v53 = v77;
      sub_1B73C3C38(v45, v77, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
      v58 = v78;
    }

    swift_storeEnumTagMultiPayload();
    v28 = v56;
    v66 = v56 + *(v18 + 28);
    v67 = v53;
  }

  sub_1B73C3C38(v67, v66, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
  v44 = v58;
LABEL_25:
  sub_1B73C3650(v28, v44, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
  __swift_destroy_boxed_opaque_existential_1(v90);
  return sub_1B73C3964(v28, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
}