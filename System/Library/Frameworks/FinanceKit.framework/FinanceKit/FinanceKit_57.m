uint64_t sub_1B76FB9E0()
{
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v1 = Strong;
  sub_1B7205540(0, &qword_1EB99AA20);
  v2 = sub_1B7800C18();
  [v1 didUpdateTransactions_];

  return swift_unknownObjectRelease();
}

id sub_1B76FBAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v34 = a1;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v12 = off_1EDAF9E38;
  v13 = *(off_1EDAF9E38 + 2);
  v14 = *(v13 + 16);

  v15 = [v14 newBackgroundContext];
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v31 = v6;
  v16 = *(v6 + 16);
  v16(v8, a3, v5);
  v32 = v8;
  v33 = v5;
  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v17 = off_1EDAF9CE0;
  type metadata accessor for ManagedTransactionExporter();
  v18 = swift_allocObject();
  v18[5] = type metadata accessor for BankConnectService();
  v18[6] = &protocol witness table for BankConnectService;
  v18[2] = v17;
  v19 = *(v12[2] + 16);

  v20 = [v19 viewContext];
  type metadata accessor for TransactionChangesObserver();
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + 16) = v20;
  v22 = type metadata accessor for TransactionsListProvider();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_transactions];
  *v24 = 0;
  *(v24 + 1) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v25 = &v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_primaryAccountIdentifier];
  v26 = v36;
  *v25 = v34;
  *(v25 + 1) = v26;
  *&v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_store] = v13;
  *&v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_context] = v15;
  v28 = v32;
  v27 = v33;
  v16(&v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_dateFromYear], v32, v33);
  *&v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_transactionExporter] = v18;
  sub_1B7519EB8(v11, &v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_formatterConfiguration]);
  *&v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_groupType] = v35;
  *&v23[OBJC_IVAR____TtC10FinanceKit24TransactionsListProvider_transactionChangesObserver] = v21;
  v37.receiver = v23;
  v37.super_class = v22;

  v29 = objc_msgSendSuper2(&v37, sel_init);
  (*(v31 + 8))(v28, v27);
  sub_1B76685B0(v11, type metadata accessor for FormatterConfiguration);
  return v29;
}

uint64_t type metadata accessor for TransactionsListProvider()
{
  result = qword_1EB99BFF0;
  if (!qword_1EB99BFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76FBEF8()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    result = sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1B76FC138()
{
  result = qword_1EB99C008;
  if (!qword_1EB99C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C008);
  }

  return result;
}

id sub_1B76FC18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B780C060;
  *(v6 + 32) = _s10FinanceKit26ManagedInternalTransactionC31predicateForVisibleTransactions21withExternalAccountIDSo11NSPredicateCSS_tFZ_0(a1, a2);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1B7807CD0;
  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = a3;
  *(v6 + 40) = sub_1B78010E8();
  v10 = sub_1B7800C18();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}

unint64_t sub_1B76FC2DC()
{
  result = qword_1EB99C018[0];
  if (!qword_1EB99C018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB99C018);
  }

  return result;
}

uint64_t JSONHTTPRequest.makeJSONEncoder()()
{
  sub_1B77FE9B8();
  swift_allocObject();
  return sub_1B77FE9A8();
}

uint64_t JSONHTTPRequest.makeHTTPHeaderFields()(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 40))();
  if (!v2)
  {
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B7807CD0;
    strcpy((v6 + 32), "Content-Type");
    *(v6 + 45) = 0;
    *(v6 + 46) = -5120;
    *(v6 + 48) = 0xD000000000000010;
    *(v6 + 56) = 0x80000001B7873B70;
    v8 = v6;
    sub_1B7244198(v5);
    return v8;
  }

  return v4;
}

uint64_t JSONHTTPRequest.makeHTTPBody()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(a2 + 48))(a1, a2);
  (*(a2 + 32))(a1, a2);
  swift_getAssociatedConformanceWitness();
  v9 = sub_1B77FE998();
  (*(v6 + 8))(v8, AssociatedTypeWitness);

  if (v2)
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B743DD44();
    swift_allocError();
    *v10 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1B76FC73C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  strcpy((v0 + 32), "Content-Type");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  *(v0 + 48) = 0xD000000000000010;
  *(v0 + 56) = 0x80000001B7873B70;
  v2 = v0;
  sub_1B7244198(MEMORY[0x1E69E7CC0]);
  return v2;
}

uint64_t sub_1B76FC83C()
{
  sub_1B77FE9B8();
  swift_allocObject();
  return sub_1B77FE9A8();
}

uint64_t sub_1B76FC8F4()
{
  sub_1B77FE9B8();
  swift_allocObject();
  sub_1B77FE9A8();
  sub_1B74EE21C();
  v1 = sub_1B77FE998();

  if (v0)
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B743DD44();
    swift_allocError();
    *v2 = v0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1B76FCB34()
{
  v1 = BankConnectWebServiceAccountsRequest.makeAdditionalHTTPHeaderFields()();
  if (!v0)
  {
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B7807CD0;
    strcpy((v4 + 32), "Content-Type");
    *(v4 + 45) = 0;
    *(v4 + 46) = -5120;
    *(v4 + 48) = 0xD000000000000010;
    *(v4 + 56) = 0x80000001B7873B70;
    v6 = v4;
    sub_1B7244198(v3);
    return v6;
  }

  return v2;
}

uint64_t Change.init(previous:current:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33[1] = a4;
  v39 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33[0] = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7801768();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v35 = v33 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = v33 - v15;
  v17 = *(v14 + 48);
  v36 = v11;
  v37 = a1;
  v18 = *(v11 + 16);
  v18(v33 - v15, a1, v10);
  v38 = a2;
  v18(&v16[v17], a2, v10);
  v19 = *(v8 + 48);
  if (v19(v16, 1, a3) != 1)
  {
    v18(v35, v16, v10);
    if (v19(&v16[v17], 1, a3) != 1)
    {
      v27 = &v16[v17];
      v28 = v33[0];
      (*(v8 + 32))(v33[0], v27, a3);
      v29 = v35;
      v30 = sub_1B7800828();
      v31 = *(v8 + 8);
      v31(v28, a3);
      v31(v29, a3);
      v21 = v36;
      v20 = *(v36 + 8);
      v20(v16, v10);
      if (v30)
      {
        goto LABEL_9;
      }

LABEL_7:
      v22 = swift_getTupleTypeMetadata2();
      v23 = *(v22 + 48);
      v24 = *(v21 + 32);
      v25 = v39;
      v24(v39, v37, v10);
      v24(v25 + v23, v38, v10);
      return (*(*(v22 - 8) + 56))(v25, 0, 1, v22);
    }

    (*(v8 + 8))(v35, a3);
LABEL_6:
    (*(v34 + 8))(v16, TupleTypeMetadata2);
    v21 = v36;
    goto LABEL_7;
  }

  if (v19(&v16[v17], 1, a3) != 1)
  {
    goto LABEL_6;
  }

  v20 = *(v36 + 8);
  v20(v16, v10);
LABEL_9:
  v20(v38, v10);
  v20(v37, v10);
  v32 = swift_getTupleTypeMetadata2();
  return (*(*(v32 - 8) + 56))(v39, 1, 1, v32);
}

uint64_t static Change.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v79 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B7801768();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v81 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v85 = &v75[-v13];
  v93 = *(v9 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v78 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v75[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v75[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v75[-v20];
  v84 = a3;
  v80 = a4;
  v21 = type metadata accessor for Change();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v75[-v23];
  v25 = swift_getTupleTypeMetadata2();
  v88 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v75[-v27];
  v29 = &v75[*(v26 + 48) - v27];
  v90 = v22;
  v30 = *(v22 + 16);
  v30(&v75[-v27], a1, v21);
  v30(v29, a2, v21);
  v89 = v9;
  v31 = swift_getTupleTypeMetadata2();
  v32 = *(*(v31 - 8) + 48);
  v33 = v32(v28, 1, v31);
  v94 = v28;
  if (v33 != 1)
  {
    v30(v24, v28, v21);
    v39 = *(v31 + 48);
    if (v32(v29, 1, v31) == 1)
    {
      v40 = *(v93 + 8);
      v41 = v89;
      v40(&v24[v39], v89);
      v40(v24, v41);
      goto LABEL_6;
    }

    v88 = v21;
    v42 = v93;
    v43 = *(v93 + 32);
    v44 = v89;
    v43(v92, &v24[v39], v89);
    v43(v91, &v29[v39], v44);
    v45 = v85;
    v46 = TupleTypeMetadata2;
    v47 = *(TupleTypeMetadata2 + 48);
    v43(v85, v24, v44);
    v48 = v29;
    v49 = v45;
    v43(&v45[v47], v48, v44);
    v50 = *(v87 + 48);
    v51 = v84;
    if (v50(v49, 1, v84) == 1)
    {
      v52 = v50(&v49[v47], 1, v51);
      v36 = v90;
      if (v52 == 1)
      {
        v85 = *(v42 + 8);
        (v85)(v49, v44);
        v53 = *(v42 + 16);
        v54 = v92;
        goto LABEL_16;
      }
    }

    else
    {
      v55 = v82;
      v77 = *(v42 + 16);
      v77(v82, v49, v44);
      v56 = v50(&v49[v47], 1, v51);
      v36 = v90;
      if (v56 != 1)
      {
        v59 = v79;
        (*(v87 + 32))(v79, &v49[v47], v51);
        v76 = sub_1B7800828();
        v60 = *(v87 + 8);
        v60(v59, v51);
        v60(v55, v51);
        v57 = *(v93 + 8);
        (v57)(v85, v44);
        if (v76)
        {
          v85 = v57;
          v51 = v84;
          v46 = TupleTypeMetadata2;
          v54 = v92;
          v53 = v77;
LABEL_16:
          v61 = *(v46 + 48);
          v62 = v81;
          v53(v81, v54, v44);
          v90 = v61;
          v63 = &v62[v61];
          v64 = v91;
          v53(v63, v91, v44);
          if (v50(v62, 1, v51) == 1)
          {
            v65 = v85;
            (v85)(v64, v44);
            v65(v54, v44);
            if (v50(&v62[v90], 1, v51) == 1)
            {
              v65(v62, v44);
LABEL_25:
              v35 = 1;
              goto LABEL_26;
            }
          }

          else
          {
            v66 = v78;
            v53(v78, v62, v44);
            v67 = v90;
            if (v50(&v62[v90], 1, v51) != 1)
            {
              v69 = v87;
              v70 = v79;
              (*(v87 + 32))(v79, &v62[v67], v51);
              v71 = sub_1B7800828();
              v72 = *(v69 + 8);
              v72(v70, v51);
              v73 = v85;
              (v85)(v91, v44);
              v73(v92, v44);
              v72(v66, v51);
              v73(v62, v44);
              if (v71)
              {
                goto LABEL_25;
              }

              goto LABEL_22;
            }

            v68 = v85;
            (v85)(v91, v44);
            v68(v92, v44);
            (*(v87 + 8))(v66, v51);
          }

          (*(v83 + 8))(v62, TupleTypeMetadata2);
LABEL_22:
          v35 = 0;
          goto LABEL_26;
        }

LABEL_13:
        v58 = v92;
        (v57)(v91, v44);
        (v57)(v58, v44);
        v35 = 0;
LABEL_26:
        v37 = v94;
        v38 = v88;
        goto LABEL_27;
      }

      (*(v87 + 8))(v55, v51);
      v42 = v93;
    }

    (*(v83 + 8))(v49, v46);
    v57 = *(v42 + 8);
    goto LABEL_13;
  }

  v34 = v21;
  v35 = 1;
  if (v32(v29, 1, v31) != 1)
  {
LABEL_6:
    v35 = 0;
    v36 = v88;
    v38 = v25;
    v37 = v94;
    goto LABEL_27;
  }

  v36 = v90;
  v37 = v94;
  v38 = v34;
LABEL_27:
  (*(v36 + 8))(v37, v38);
  return v35;
}

uint64_t sub_1B76FDAF8()
{
  sub_1B7801768();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1B76FDB70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_29;
  }

  v11 = v9 + ((v8 + *(v4 + 80)) & ~*(v4 + 80));
  v12 = 8 * v11;
  if (v11 > 3)
  {
    goto LABEL_11;
  }

  v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
  if (HIWORD(v14))
  {
    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
        goto LABEL_29;
      }

LABEL_11:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

LABEL_18:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      return v7 + (v11 | v15) + 1;
    }

    v13 = *(a1 + v11);
    if (*(a1 + v11))
    {
      goto LABEL_18;
    }
  }

LABEL_29:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_1B76FDD04(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
    ++v9;
  }

  v11 = v10 - 1;
  if (v8 < 2)
  {
    v11 = 0;
  }

  v12 = ((v9 + *(v7 + 80)) & ~*(v7 + 80)) + v9;
  if (v8 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = a3 >= v11;
  v15 = a3 - v11;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v18 = ~v11 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v24 = *(v7 + 56);

      v24();
    }
  }

  else
  {
    if (v12 <= 3)
    {
      v21 = ~(-1 << (8 * v12));
    }

    else
    {
      v21 = -1;
    }

    if (v12)
    {
      v22 = v21 & (a2 - v10);
      if (v12 <= 3)
      {
        v23 = v12;
      }

      else
      {
        v23 = 4;
      }

      bzero(a1, v12);
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else
        {
          *a1 = v22;
        }
      }

      else if (v23 == 1)
      {
        *a1 = v22;
      }

      else
      {
        *a1 = v22;
      }
    }
  }
}

id InternalInstitutionResult.token.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1B72274E8(v2, v3);
}

uint64_t FinanceStore.internalInstitutions(query:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B76FE018, 0, 0);
}

uint64_t sub_1B76FE018()
{
  v8 = v0;
  static DeviceInfo.deviceType.getter(v7);
  if (v7[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1B7306B1C;
    v5 = v0[2];
    v6 = v0[3];

    return sub_1B73AAA24(v5, v6);
  }
}

uint64_t RawBankConnectData.NotificationEventType.init(rawValue:)@<X0>(char *a1@<X8>)
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

uint64_t RawBankConnectData.RegisterToNotificationEventsRequestBody.init(eventTypes:subscriptionId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t RawBankConnectData.NotificationEventsRequestBody.fromDateTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RawBankConnectData.NotificationEventsRequestBody.fromDateTime.setter(uint64_t a1)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RawBankConnectData.NotificationEventsRequestBody.subscriptionId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0) + 20));

  return v1;
}

uint64_t RawBankConnectData.NotificationEventsRequestBody.subscriptionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static RawBankConnectData.NotificationEventsRequestBody.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1B77FF918())
  {
    v4 = *(type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1B78020F8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B76FE408()
{
  if (*v0)
  {
    return 0x7069726373627573;
  }

  else
  {
    return 0x657461446D6F7266;
  }
}

uint64_t sub_1B76FE458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657461446D6F7266 && a2 == 0xEC000000656D6954;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974)
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

uint64_t sub_1B76FE540(uint64_t a1)
{
  v2 = sub_1B76FE774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76FE57C(uint64_t a1)
{
  v2 = sub_1B76FE774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.NotificationEventsRequestBody.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C0A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76FE774();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FF988();
  sub_1B71A72F8(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0);
    v8[14] = 1;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B76FE774()
{
  result = qword_1EB99C0A8;
  if (!qword_1EB99C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C0A8);
  }

  return result;
}

uint64_t RawBankConnectData.NotificationEventsRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1B77FF988();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C0B0);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76FE774();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v29 = 0;
  sub_1B71A72F8(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v15 = v27;
  v16 = v25;
  sub_1B7801E48();
  (*(v14 + 32))(v13, v5, v15);
  v28 = 1;
  v17 = sub_1B7801D78();
  v19 = v18;
  v20 = (v13 + *(v22 + 20));
  (*(v26 + 8))(v9, v16);
  *v20 = v17;
  v20[1] = v19;
  sub_1B7701984(v13, v23, type metadata accessor for RawBankConnectData.NotificationEventsRequestBody);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B77019EC(v13, type metadata accessor for RawBankConnectData.NotificationEventsRequestBody);
}

uint64_t sub_1B76FEB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1B77FF918())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_1B78020F8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t RawBankConnectData.NotificationEventsResponse.events.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B76FEC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
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

uint64_t sub_1B76FECEC(uint64_t a1)
{
  v2 = sub_1B76FEF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76FED28(uint64_t a1)
{
  v2 = sub_1B76FEF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.NotificationEventsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C0B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76FEF10();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C0C8);
  sub_1B76FF13C(&qword_1EB99C0D0, &qword_1EB99C0D8);
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B76FEF10()
{
  result = qword_1EB99C0C0;
  if (!qword_1EB99C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C0C0);
  }

  return result;
}

uint64_t RawBankConnectData.NotificationEventsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C0E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76FEF10();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C0C8);
    sub_1B76FF13C(&qword_1EB99C0E8, &qword_1EB99C0F0);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B76FF13C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99C0C8);
    sub_1B71A72F8(a2, type metadata accessor for RawBankConnectData.NotificationEvent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RawBankConnectData.NotificationEvent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.NotificationEvent.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.NotificationEvent.eventTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.NotificationEvent(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.NotificationEvent.eventTimestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.NotificationEvent(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.NotificationEvent.consentId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.NotificationEvent(0) + 28));

  return v1;
}

uint64_t RawBankConnectData.NotificationEvent.consentId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.NotificationEvent(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.NotificationEvent.resourceId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.NotificationEvent(0) + 32));

  return v1;
}

uint64_t RawBankConnectData.NotificationEvent.resourceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.NotificationEvent(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.NotificationEvent.init(id:eventType:eventTimestamp:consentId:resourceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a3;
  v17 = type metadata accessor for RawBankConnectData.NotificationEvent(0);
  v18 = (a9 + v17[8]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v16;
  v19 = v17[6];
  v20 = sub_1B77FF988();
  result = (*(*(v20 - 8) + 32))(a9 + v19, a4, v20);
  v22 = (a9 + v17[7]);
  *v22 = a5;
  v22[1] = a6;
  *v18 = a7;
  v18[1] = a8;
  return result;
}

uint64_t RawBankConnectData.NotificationEvent.description.getter()
{
  v1 = v0;
  v8[8] = 0;
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000029, 0x80000001B788B400);
  MEMORY[0x1B8CA4D30](*v1, v1[1]);
  MEMORY[0x1B8CA4D30](0x54746E657665202CLL, 0xED0000203A657079);
  *v8 = *(v0 + 16);
  sub_1B7801C48();
  MEMORY[0x1B8CA4D30](0xD000000000000012, 0x80000001B788B430);
  v2 = type metadata accessor for RawBankConnectData.NotificationEvent(0);
  sub_1B77FF988();
  sub_1B71A72F8(&qword_1EB991200, MEMORY[0x1E6969530]);
  v3 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v3);

  MEMORY[0x1B8CA4D30](0x6E65736E6F63202CLL, 0xED0000203A644974);
  MEMORY[0x1B8CA4D30](*(v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 8));
  MEMORY[0x1B8CA4D30](0x72756F736572202CLL, 0xEE00203A64496563);
  v4 = (v0 + *(v2 + 32));
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1B8CA4D30](v5, v6);

  MEMORY[0x1B8CA4D30](2695212, 0xE300000000000000);
  return *&v8[1];
}

uint64_t sub_1B76FF8B4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D6954746E657665;
  v4 = 0x49746E65736E6F63;
  if (v1 != 3)
  {
    v4 = 0x656372756F736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x707954746E657665;
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

uint64_t sub_1B76FF958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B77024D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76FF980(uint64_t a1)
{
  v2 = sub_1B7701930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76FF9BC(uint64_t a1)
{
  v2 = sub_1B7701930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.NotificationEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C0F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7701930();
  sub_1B78023F8();
  v10[15] = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_1B749FCCC();
    sub_1B7801FC8();
    type metadata accessor for RawBankConnectData.NotificationEvent(0);
    v10[12] = 2;
    sub_1B77FF988();
    sub_1B71A72F8(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v10[11] = 3;
    sub_1B7801F78();
    v10[10] = 4;
    sub_1B7801EF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.NotificationEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1B77FF988();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C108);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RawBankConnectData.NotificationEvent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7701930();
  v26 = v7;
  v11 = v28;
  sub_1B78023C8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v25;
  v34 = 0;
  *v10 = sub_1B7801DF8();
  *(v10 + 1) = v13;
  v28 = v13;
  v32 = 1;
  sub_1B74A00F8();
  sub_1B7801E48();
  v10[16] = v33;
  v31 = 2;
  sub_1B71A72F8(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801E48();
  (*(v24 + 32))(&v10[v8[6]], v5, v3);
  v30 = 3;
  v14 = sub_1B7801DF8();
  v15 = &v10[v8[7]];
  *v15 = v14;
  v15[1] = v16;
  v29 = 4;
  v17 = v10;
  v18 = sub_1B7801D78();
  v20 = v19;
  v21 = (v17 + v8[8]);
  (*(v12 + 8))(v26, v27);
  *v21 = v18;
  v21[1] = v20;
  sub_1B7701984(v17, v23, type metadata accessor for RawBankConnectData.NotificationEvent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B77019EC(v17, type metadata accessor for RawBankConnectData.NotificationEvent);
}

uint64_t RawBankConnectData.NotificationEventType.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (v2)
  {

    v5 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1B7802118();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v7 = sub_1B7801D18();

    v5 = v7 == 1;
    if (v7 == 2)
    {
      v5 = 2;
    }
  }

  *a2 = v5;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.NotificationEventType.rawValue.getter()
{
  v1 = 0x5F544E45534E4F43;
  if (*v0 != 1)
  {
    v1 = 0x5F544E554F434341;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E574F4E4B4E55;
  }
}

uint64_t sub_1B77002A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F544E45534E4F43;
  v4 = 0xEF44454B4F564552;
  if (v2 != 1)
  {
    v3 = 0x5F544E554F434341;
    v4 = 0xEF4445474E414843;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4E574F4E4B4E55;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x5F544E45534E4F43;
  v8 = 0xEF44454B4F564552;
  if (*a2 != 1)
  {
    v7 = 0x5F544E554F434341;
    v8 = 0xEF4445474E414843;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4E574F4E4B4E55;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_1B77003D8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7700494()
{
  sub_1B7800798();
}

uint64_t sub_1B770053C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7700600(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEF44454B4F564552;
  v5 = 0x5F544E45534E4F43;
  if (v2 != 1)
  {
    v5 = 0x5F544E554F434341;
    v4 = 0xEF4445474E414843;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E574F4E4B4E55;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t RawBankConnectData.RegisterToNotificationEventsRequestBody.eventTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawBankConnectData.RegisterToNotificationEventsRequestBody.subscriptionId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RawBankConnectData.RegisterToNotificationEventsRequestBody.subscriptionId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static RawBankConnectData.RegisterToNotificationEventsRequestBody.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1B731E014(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_1B78020F8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B7700854()
{
  if (*v0)
  {
    return 0x7069726373627573;
  }

  else
  {
    return 0x707954746E657665;
  }
}

uint64_t sub_1B77008A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x707954746E657665 && a2 == 0xEA00000000007365;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974)
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

uint64_t sub_1B770098C(uint64_t a1)
{
  v2 = sub_1B7701A4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77009C8(uint64_t a1)
{
  v2 = sub_1B7701A4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.RegisterToNotificationEventsRequestBody.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C110);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7701A4C();

  sub_1B78023F8();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9957D0);
  sub_1B7701AA0(&qword_1EB9957D8, sub_1B749FCCC);
  sub_1B7801FC8();

  if (!v2)
  {
    v12 = 1;
    sub_1B7801EF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.RegisterToNotificationEventsRequestBody.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C120);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7701A4C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9957D0);
  v14[15] = 0;
  sub_1B7701AA0(&qword_1EB995840, sub_1B74A00F8);
  sub_1B7801E48();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_1B7801D78();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7700E68(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1B731E014(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_1B78020F8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t RawBankConnectData.RegisterToNotificationEventsResponse.subscriptionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.RegisterToNotificationEventsResponse.subscriptionId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.RegisterToNotificationEventsResponse.init(subscriptionId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B7700FA8(uint64_t a1)
{
  v2 = sub_1B7701B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7700FE4(uint64_t a1)
{
  v2 = sub_1B7701B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7701124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974)
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

uint64_t sub_1B77011B4(uint64_t a1)
{
  v2 = sub_1B7701B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77011F0(uint64_t a1)
{
  v2 = sub_1B7701B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7701270(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  v11 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B77013FC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_1B78023C8();
  if (!v4)
  {
    v10 = v17;
    v11 = v18;
    v12 = sub_1B7801DF8();
    v14 = v13;
    (*(v10 + 8))(v9, v7);
    *v11 = v12;
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B77015D8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v14 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  v13 = *v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v9 + 8))(v11, v8);
}

uint64_t _s10FinanceKit18RawBankConnectDataO17NotificationEventV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v5 = 0x5F544E45534E4F43;
  v6 = 0xEF44454B4F564552;
  if (*(a1 + 16) != 1)
  {
    v5 = 0x5F544E554F434341;
    v6 = 0xEF4445474E414843;
  }

  if (*(a1 + 16))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E574F4E4B4E55;
  }

  if (*(a1 + 16))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = 0x5F544E45534E4F43;
  v10 = 0xEF44454B4F564552;
  if (*(a2 + 16) != 1)
  {
    v9 = 0x5F544E554F434341;
    v10 = 0xEF4445474E414843;
  }

  if (*(a2 + 16))
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x4E574F4E4B4E55;
  }

  if (*(a2 + 16))
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v7 == v11 && v8 == v12)
  {
  }

  else
  {
    v13 = sub_1B78020F8();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = type metadata accessor for RawBankConnectData.NotificationEvent(0);
  if (sub_1B77FF918())
  {
    v15 = *(v14 + 28);
    v16 = *(a1 + v15);
    v17 = *(a1 + v15 + 8);
    v18 = (a2 + v15);
    v19 = v16 == *v18 && v17 == v18[1];
    if (v19 || (sub_1B78020F8() & 1) != 0)
    {
      v20 = *(v14 + 32);
      v21 = (a1 + v20);
      v22 = *(a1 + v20 + 8);
      v23 = (a2 + v20);
      v24 = v23[1];
      if (v22)
      {
        if (v24 && (*v21 == *v23 && v22 == v24 || (sub_1B78020F8() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v24)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1B7701930()
{
  result = qword_1EB99C100;
  if (!qword_1EB99C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C100);
  }

  return result;
}

uint64_t sub_1B7701984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B77019EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B7701A4C()
{
  result = qword_1EB99C118;
  if (!qword_1EB99C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C118);
  }

  return result;
}

uint64_t sub_1B7701AA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9957D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7701B18()
{
  result = qword_1EB99C130;
  if (!qword_1EB99C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C130);
  }

  return result;
}

unint64_t sub_1B7701B6C()
{
  result = qword_1EB99C148;
  if (!qword_1EB99C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C148);
  }

  return result;
}

unint64_t sub_1B7701BC4()
{
  result = qword_1EB99C158;
  if (!qword_1EB99C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C158);
  }

  return result;
}

unint64_t sub_1B7701C1C()
{
  result = qword_1EB99C160;
  if (!qword_1EB99C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9957D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C160);
  }

  return result;
}

void sub_1B7701CA8()
{
  sub_1B77FF988();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7701D64()
{
  sub_1B77FF988();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B7701EA4()
{
  result = qword_1EB99C188;
  if (!qword_1EB99C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C188);
  }

  return result;
}

unint64_t sub_1B7701EFC()
{
  result = qword_1EB99C190;
  if (!qword_1EB99C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C190);
  }

  return result;
}

unint64_t sub_1B7701F54()
{
  result = qword_1EB99C198;
  if (!qword_1EB99C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C198);
  }

  return result;
}

unint64_t sub_1B7701FAC()
{
  result = qword_1EB99C1A0;
  if (!qword_1EB99C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1A0);
  }

  return result;
}

unint64_t sub_1B7702004()
{
  result = qword_1EB99C1A8;
  if (!qword_1EB99C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1A8);
  }

  return result;
}

unint64_t sub_1B770205C()
{
  result = qword_1EB99C1B0;
  if (!qword_1EB99C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1B0);
  }

  return result;
}

unint64_t sub_1B77020B4()
{
  result = qword_1EB99C1B8;
  if (!qword_1EB99C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1B8);
  }

  return result;
}

unint64_t sub_1B770210C()
{
  result = qword_1EB99C1C0;
  if (!qword_1EB99C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1C0);
  }

  return result;
}

unint64_t sub_1B7702164()
{
  result = qword_1EB99C1C8;
  if (!qword_1EB99C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1C8);
  }

  return result;
}

unint64_t sub_1B77021BC()
{
  result = qword_1EB99C1D0;
  if (!qword_1EB99C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1D0);
  }

  return result;
}

unint64_t sub_1B7702214()
{
  result = qword_1EB99C1D8;
  if (!qword_1EB99C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1D8);
  }

  return result;
}

unint64_t sub_1B770226C()
{
  result = qword_1EB99C1E0;
  if (!qword_1EB99C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1E0);
  }

  return result;
}

unint64_t sub_1B77022C4()
{
  result = qword_1EB99C1E8;
  if (!qword_1EB99C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1E8);
  }

  return result;
}

unint64_t sub_1B770231C()
{
  result = qword_1EB99C1F0;
  if (!qword_1EB99C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1F0);
  }

  return result;
}

unint64_t sub_1B7702374()
{
  result = qword_1EB99C1F8;
  if (!qword_1EB99C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C1F8);
  }

  return result;
}

unint64_t sub_1B77023CC()
{
  result = qword_1EB99C200;
  if (!qword_1EB99C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C200);
  }

  return result;
}

unint64_t sub_1B7702424()
{
  result = qword_1EB99C208;
  if (!qword_1EB99C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C208);
  }

  return result;
}

unint64_t sub_1B770247C()
{
  result = qword_1EB99C210;
  if (!qword_1EB99C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C210);
  }

  return result;
}

uint64_t sub_1B77024D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xEE00706D61747365 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746E65736E6F63 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEA00000000006449)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1B7702698()
{
  result = qword_1EB99C218;
  if (!qword_1EB99C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C218);
  }

  return result;
}

uint64_t DeviceIdentitySignature.signature.getter()
{
  v1 = *v0;
  sub_1B720ABEC(*v0, *(v0 + 8));
  return v1;
}

uint64_t DeviceIdentityProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  DeviceIdentityProvider.init()();
  return v0;
}

uint64_t DeviceIdentityProvider.init()()
{
  v0 = sub_1B7801318();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7801308();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1B78003C8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B763647C();
  sub_1B78003B8();
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1B77035DC(&qword_1EDAFC538, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930E0);
  sub_1B76364C8();
  sub_1B78018B8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  v6 = sub_1B7801358();
  v7 = v9[0];
  *(v9[0] + 16) = v6;
  return v7;
}

void DeviceIdentityProvider.sign(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v75 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B7800388();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B78003F8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v76 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v77 = v65 - v13;
  error[0] = 0;
  v14 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697ABE8], 0x40000000uLL, error);
  if (v14)
  {
    v15 = v14;
    v65[0] = a3;
    v65[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B78100C0;
    v17 = sub_1B7800868();
    v72 = v8;
    *(inited + 32) = v17;
    v18 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    v71 = v5;
    *(inited + 40) = v19;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000001B788B480;
    *(inited + 80) = sub_1B7800868();
    *(inited + 88) = v20;
    *(inited + 120) = v18;
    *(inited + 96) = 0xD000000000000014;
    *(inited + 104) = 0x80000001B7876080;
    v21 = sub_1B7800868();
    v22 = MEMORY[0x1E69E6370];
    *(inited + 128) = v21;
    *(inited + 136) = v23;
    *(inited + 168) = v22;
    *(inited + 144) = 0;
    *(inited + 176) = sub_1B7800868();
    *(inited + 184) = v24;
    *(inited + 216) = MEMORY[0x1E69E6530];
    *(inited + 192) = 10;
    *(inited + 224) = sub_1B7800868();
    *(inited + 232) = v25;
    *(inited + 264) = v22;
    *(inited + 240) = 0;
    *(inited + 272) = sub_1B7800868();
    *(inited + 280) = v26;
    *(inited + 312) = v22;
    *(inited + 288) = 1;
    *(inited + 320) = sub_1B7800868();
    *(inited + 328) = v27;
    type metadata accessor for SecAccessControl(0);
    *(inited + 360) = v28;
    *(inited + 336) = v15;
    *(inited + 368) = sub_1B7800868();
    *(inited + 376) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B78123D0;
    *(v30 + 32) = sub_1B7800868();
    *(v30 + 40) = v31;
    *(v30 + 48) = sub_1B7800868();
    *(v30 + 56) = v32;
    *(v30 + 64) = sub_1B7800868();
    *(v30 + 72) = v33;
    *(v30 + 80) = sub_1B7800868();
    *(v30 + 88) = v34;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    *(inited + 384) = v30;
    v70 = v15;
    v35 = sub_1B72018E0(inited);
    v68 = v6;
    v69 = v9;
    v36 = v35;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
    swift_arrayDestroy();
    v37 = dispatch_semaphore_create(0);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v65[2] = v38 + 16;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0;
    *(v38 + 40) = -1;
    v39 = v73;
    v67 = *(v73 + 16);
    sub_1B7222A0C(v36);
    v40 = v10;

    v66 = sub_1B7800708();

    v41 = swift_allocObject();
    v41[2] = v37;
    v41[3] = v38;
    v43 = v74;
    v42 = v75;
    v41[4] = v39;
    v41[5] = v43;
    v41[6] = v42;
    v78[4] = sub_1B77036C4;
    v78[5] = v41;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 1107296256;
    v78[2] = sub_1B7703494;
    v78[3] = &block_descriptor_24;
    v44 = _Block_copy(v78);
    v45 = v37;

    sub_1B720ABEC(v43, v42);

    v46 = v66;
    DeviceIdentityIssueClientCertificateWithCompletion();
    _Block_release(v44);

    v47 = v76;
    sub_1B78003D8();
    v49 = v71;
    v48 = v72;
    *v72 = 15;
    v50 = v68;
    (*(v68 + 104))(v48, *MEMORY[0x1E69E7F48], v49);
    v51 = v77;
    sub_1B78003E8();
    (*(v50 + 8))(v48, v49);
    v52 = *(v40 + 8);
    v53 = v69;
    v52(v47, v69);
    LOBYTE(v47) = sub_1B7801428();
    v52(v51, v53);
    if (v47)
    {
      sub_1B7703624();
      swift_allocError();
      *v54 = 4;
      swift_willThrow();
      v55 = v70;
LABEL_12:

      return;
    }

    v55 = v70;
    swift_beginAccess();
    v58 = *(v38 + 40);
    if (v58 == 255)
    {
      sub_1B7703624();
      swift_allocError();
      *v63 = 1;
      swift_willThrow();
      goto LABEL_12;
    }

    v59 = *(v38 + 16);
    v60 = *(v38 + 24);
    v61 = *(v38 + 32);
    if (v58)
    {
      swift_willThrow();
      sub_1B77036DC(v59, v60, v61, 1);
      goto LABEL_12;
    }

    sub_1B7703728(*(v38 + 16), *(v38 + 24), *(v38 + 32), v58);

    v64 = v65[0];
    *v65[0] = v59;
    *(v64 + 8) = v60;
    *(v64 + 16) = v61;
  }

  else
  {
    v56 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_1B77035DC(&qword_1EB99C220, type metadata accessor for CFError);
      swift_allocError();
      *v57 = v56;
    }

    else
    {
      sub_1B7703624();
      swift_allocError();
      *v62 = 1;
    }

    swift_willThrow();
  }
}

uint64_t sub_1B77031AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    swift_beginAccess();
    v10 = *(a5 + 16);
    v11 = *(a5 + 24);
    v12 = *(a5 + 32);
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    *(a5 + 16) = a3;
    v13 = *(a5 + 40);
    *(a5 + 40) = 1;
    v14 = a3;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = v13;
LABEL_18:
    sub_1B77038EC(v15, v16, v17, v18);
    return sub_1B7801438();
  }

  if (!a2)
  {
    if (a1)
    {
LABEL_17:
      sub_1B7703624();
      v33 = swift_allocError();
      *v34 = 3;
      swift_beginAccess();
      v15 = *(a5 + 16);
      v16 = *(a5 + 24);
      v17 = *(a5 + 32);
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      *(a5 + 16) = v33;
      v18 = *(a5 + 40);
      *(a5 + 40) = 1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v19 = *(a2 + 16);
  if (!v19)
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      goto LABEL_14;
    }

LABEL_16:

    goto LABEL_17;
  }

  v44 = a7;
  v45 = a1;
  v43 = a8;
  v49 = MEMORY[0x1E69E7CC0];
  sub_1B71FE8C8(0, v19, 0);
  v21 = v49;
  v22 = a2 + 32;
  do
  {
    sub_1B719BDE4(v22, v48);
    sub_1B719BDE4(v48, v47);
    type metadata accessor for SecCertificate(0);
    swift_dynamicCast();
    v23 = SecCertificateCopyData(certificate);

    v24 = sub_1B77FF5B8();
    v26 = v25;

    __swift_destroy_boxed_opaque_existential_1(v48);
    v49 = v21;
    v28 = *(v21 + 16);
    v27 = *(v21 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1B71FE8C8((v27 > 1), v28 + 1, 1);
      v21 = v49;
    }

    *(v21 + 16) = v28 + 1;
    v29 = v21 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    v22 += 32;
    --v19;
  }

  while (v19);
  a8 = v43;
  a7 = v44;
  a1 = v45;
  if (!v45)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (!*(v21 + 16))
  {
    goto LABEL_16;
  }

  v30 = a8;
  v31 = a7;
  v32 = a1;
  v36 = sub_1B7703904(v31, v30, v32);
  v38 = v37;
  swift_beginAccess();
  v39 = *(a5 + 16);
  v40 = *(a5 + 24);
  v41 = *(a5 + 32);
  *(a5 + 16) = v36;
  *(a5 + 24) = v38;
  *(a5 + 32) = v21;
  v42 = *(a5 + 40);
  *(a5 + 40) = 0;
  sub_1B77038EC(v39, v40, v41, v42);

  return sub_1B7801438();
}

uint64_t sub_1B7703494(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_1B7800C38();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

uint64_t DeviceIdentityProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B77035DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7703624()
{
  result = qword_1EB99C228;
  if (!qword_1EB99C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C228);
  }

  return result;
}

void sub_1B7703678(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1B720A388(a1, a2);
  }
}

id sub_1B77036DC(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
    sub_1B720ABEC(a1, a2);
  }
}

id sub_1B7703728(id result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1B77036DC(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit19DeviceIdentityErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B77037B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7703814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1B7703864(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void sub_1B77038EC(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1B7703678(a1, a2, a3, a4 & 1);
  }
}

uint64_t sub_1B7703904(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v4 = *MEMORY[0x1E697B128];
  v5 = sub_1B77FF598();
  Signature = SecKeyCreateSignature(a3, v4, v5, v13);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_1B77FF5B8();
  }

  else
  {
    v9 = v13[0];
    if (v13[0])
    {
      type metadata accessor for CFError(0);
      sub_1B77035DC(&qword_1EB99C220, type metadata accessor for CFError);
      v8 = swift_allocError();
      *v10 = v9;
    }

    else
    {
      v8 = 0;
    }

    sub_1B7703624();
    swift_allocError();
    *v11 = v8;
    swift_willThrow();
  }

  return v8;
}

uint64_t FraudAssessmentOutcomeType.description.getter()
{
  v1 = 0x6465747365676E69;
  if (*v0 != 1)
  {
    v1 = 0x74756F656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564726163736964;
  }
}

uint64_t FraudAssessmentOutcomeType.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B7703B70()
{
  result = qword_1EB99C230;
  if (!qword_1EB99C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C230);
  }

  return result;
}

uint64_t sub_1B7703BC4()
{
  v1 = 0x6465747365676E69;
  if (*v0 != 1)
  {
    v1 = 0x74756F656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564726163736964;
  }
}

unint64_t sub_1B7703C28()
{
  result = qword_1EB99C238;
  if (!qword_1EB99C238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99C240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C238);
  }

  return result;
}

void BankConnectRefreshReminderUpdater.updateAccountsWithPreference(fullyQualifiedAccountIdentifiers:userPreference:asOf:context:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  type metadata accessor for ManagedInternalAccount();
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v5 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v6 = sub_1B7800C18();
  [v5 setRelationshipKeyPathsForPrefetching_];

  v7 = _s10FinanceKit22ManagedInternalAccountC20predicateForAccounts10withFqaidsSo11NSPredicateCSayAA014FullyQualifiedE10IdentifierVG_tFZ_0(a1);
  [v5 setPredicate_];

  v8 = sub_1B7801498();
  if (v2)
  {

    return;
  }

  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  v10 = sub_1B7801958();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_5:
  v16 = v5;
  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B8CA5DC0](v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      [v12 setBackgroundRefreshUserPreferenceValue_];
      v14 = sub_1B77FF8B8();
      [v13 setBackgroundRefreshUserPreferenceChangedAt_];
    }

    while (v10 != v11);
  }
}

void BankConnectRefreshReminderUpdater.updateReminderDismissedAt(fullyQualifiedAccountIdentifiers:dismissedAt:context:)(uint64_t a1)
{
  type metadata accessor for ManagedInternalAccount();
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v3 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  v4 = sub_1B7800C18();
  [v3 setRelationshipKeyPathsForPrefetching_];

  v5 = _s10FinanceKit22ManagedInternalAccountC20predicateForAccounts10withFqaidsSo11NSPredicateCSayAA014FullyQualifiedE10IdentifierVG_tFZ_0(a1);
  [v3 setPredicate_];

  v6 = sub_1B7801498();
  if (v1)
  {

    return;
  }

  v7 = v6;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  v8 = sub_1B7801958();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  v14 = 0;
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1B8CA5DC0](v9, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = sub_1B77FF8B8();
      [v11 setBackgroundRefreshReminderDismissedAt_];
    }

    while (v8 != v9);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1B77042C4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B7704324(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B751F290;
}

id BankConnectInstitutionsProvider.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_store] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BankConnectInstitutionsProvider.init(store:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_store] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BankConnectInstitutionsProvider();
  return objc_msgSendSuper2(&v4, sel_init);
}

id BankConnectInstitutionsProvider.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    sub_1B7800E68();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectInstitutionsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B7704654()
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v0 = *(off_1EDAF9E38 + 2);
  v1 = type metadata accessor for BankConnectInstitutionsProvider();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_store] = v0;
  v4.receiver = v2;
  v4.super_class = v1;

  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1B770485C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B78000B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  if (!*(v2 + OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask))
  {
    v21 = OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask;
    v22 = a1;
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_1EDAF65B0);
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Starting to observe persistent store remote change notifications", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = sub_1B7800DF8();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = *(v2 + OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_store);
    (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v4);
    v18 = (*(v5 + 80) + 56) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = v22;
    *(v19 + 5) = v17;
    *(v19 + 6) = v16;
    (*(v5 + 32))(&v19[v18], &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    v20 = sub_1B76A1F9C(0, 0, v10, &unk_1B7860AC8, v19);
    *(v2 + v21) = v20;
  }

  return result;
}

uint64_t sub_1B7704B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969B8);
  v7[19] = v8;
  v7[20] = *(v8 - 8);
  v7[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969C0);
  v7[22] = v9;
  v7[23] = *(v9 - 8);
  v7[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969C8);
  v7[25] = v10;
  v7[26] = *(v10 - 8);
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7704CFC, 0, 0);
}

uint64_t sub_1B7704CFC()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[16];
  v8 = v0[15];
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969D0);
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1B7800E48();

  sub_1B7800E28();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[28] = 0;
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_1B7704EA0;
  v11 = v0[25];

  return MEMORY[0x1EEE6D9C8](v0 + 12, 0, 0, v11);
}

uint64_t sub_1B7704EA0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7704F9C, 0, 0);
}

uint64_t sub_1B7704F9C()
{
  v1 = *(v0 + 96);
  *(v0 + 240) = v1;
  if (v1 == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
LABEL_3:

    v2 = *(v0 + 8);
    goto LABEL_6;
  }

  v3 = *(v0 + 224);
  sub_1B7800EB8();
  if (v3)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    sub_1B728D04C(v1);

    v2 = *(v0 + 8);
LABEL_6:

    __asm { BRAA            X1, X16 }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 248) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    sub_1B728D04C(v1);
    goto LABEL_3;
  }

  v5 = Strong;
  if (v1)
  {
    v6 = *(v1 + 16);

    [v6 copy];
    sub_1B7801848();
    sub_1B728D04C(v1);
    swift_unknownObjectRelease();
    sub_1B7205540(0, &qword_1EB996830);
    swift_dynamicCast();
    v7 = *(v0 + 112);
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(*(v5 + OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_store) + 16) newBackgroundContext];
  *(v0 + 256) = v8;
  type metadata accessor for SendableNSPersistentHistoryToken();
  v9 = swift_allocObject();
  v10 = v9;
  if (v7)
  {
    *(v9 + 16) = v7;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v10 = 0;
  }

  *(v0 + 264) = v7;
  *(v0 + 272) = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = v7;
  sub_1B7801468();

  if (*(v0 + 312))
  {
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C290);
    sub_1B7801468();

    v17 = *(v0 + 104);
    *(v0 + 280) = 0;
    *(v0 + 288) = v17;
    *(v0 + 296) = sub_1B7800DA8();
    *(v0 + 304) = sub_1B7800D98();
    v18 = sub_1B7800CD8();

    return MEMORY[0x1EEE6DFA0](sub_1B770560C, v18, v19);
  }

  else
  {

    v13 = *(v0 + 240);
    v14 = *(v0 + 248);

    sub_1B728D04C(v13);

    *(v0 + 224) = 0;
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v15[1] = sub_1B7704EA0;
    v16 = *(v0 + 200);

    return MEMORY[0x1EEE6D9C8](v0 + 96, 0, 0, v16);
  }
}

uint64_t sub_1B770560C()
{

  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B7205540(0, &qword_1EB99C278);
    v2 = sub_1B7800C18();

    [v1 connectedInstitutionsDidChange_];
    swift_unknownObjectRelease();

    v3 = sub_1B7705854;
  }

  else
  {

    v3 = sub_1B7705774;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7705774()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  sub_1B728D04C(v2);

  *(v0 + 224) = v1;
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_1B7704EA0;
  v5 = *(v0 + 200);

  return MEMORY[0x1EEE6D9C8](v0 + 96, 0, 0, v5);
}

uint64_t sub_1B7705854()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 240);

  sub_1B728D04C(v3);

  *(v0 + 224) = *(v0 + 280);
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_1B7704EA0;
  v5 = *(v0 + 200);

  return MEMORY[0x1EEE6D9C8](v0 + 96, 0, 0, v5);
}

void sub_1B7705934(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v56[4] = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v56[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v56];

  if (!v8)
  {
    v11 = v56[0];
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  if (a2)
  {
    v9 = a2[2];
    v10 = v56[0];
    [v9 copy];
    sub_1B7801848();
    swift_unknownObjectRelease();
    sub_1B7205540(0, &qword_1EB996830);
    swift_dynamicCast();
    a2 = v55;
  }

  else
  {
    v12 = v56[0];
  }

  NSManagedObjectContext.fetchPersistentHistory(after:store:)(a2, 0);
  v14 = v13;

  if (!v3)
  {
    if (v14 >> 62)
    {
LABEL_53:
      v15 = sub_1B7801958();
      if (v15)
      {
LABEL_9:
        v46 = v14;
        v16 = 0;
        v17 = v14 & 0xC000000000000001;
        v18 = v14 & 0xFFFFFFFFFFFFFF8;
        v19 = v14 + 32;
        v50 = v15;
        v51 = a3;
        v48 = v14 & 0xFFFFFFFFFFFFFF8;
        v49 = v14 & 0xC000000000000001;
        v47 = v14 + 32;
        do
        {
          if (v17)
          {
            v21 = MEMORY[0x1B8CA5DC0](v16, v46);
          }

          else
          {
            if (v16 >= *(v18 + 16))
            {
              goto LABEL_52;
            }

            v21 = *(v19 + 8 * v16);
          }

          v20 = v21;
          if (__OFADD__(v16++, 1))
          {
            goto LABEL_51;
          }

          v23 = [v21 changes];
          if (v23)
          {
            v24 = v23;
            v52 = v16;
            sub_1B7205540(0, &unk_1EB9969A0);
            v25 = sub_1B7800C38();

            v53 = v20;
            if (v25 >> 62)
            {
              v14 = sub_1B7801958();
              if (v14)
              {
LABEL_19:
                v26 = 0;
                v54 = v14;
                while (1)
                {
                  if ((v25 & 0xC000000000000001) != 0)
                  {
                    v27 = MEMORY[0x1B8CA5DC0](v26, v25);
                  }

                  else
                  {
                    if (v26 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_50;
                    }

                    v27 = *(v25 + 8 * v26 + 32);
                  }

                  v28 = v27;
                  v29 = v26 + 1;
                  if (__OFADD__(v26, 1))
                  {
                    break;
                  }

                  v30 = [v27 changedObjectID];
                  v31 = [v30 entity];

                  v32 = [v31 name];
                  if (v32)
                  {
                    v33 = sub_1B7800868();
                    v35 = v34;
                  }

                  else
                  {
                    v33 = 0;
                    v35 = 0;
                  }

                  type metadata accessor for ManagedInstitution();
                  v36 = [swift_getObjCClassFromMetadata() entityName];
                  v37 = sub_1B7800868();
                  v39 = v38;

                  if (v35)
                  {
                    if (v37 == v33 && v35 == v39)
                    {
LABEL_44:

                      goto LABEL_45;
                    }

                    v40 = sub_1B78020F8();

                    if (v40)
                    {

LABEL_45:

                      goto LABEL_46;
                    }
                  }

                  else
                  {
                  }

                  type metadata accessor for ManagedConsent();
                  a3 = [swift_getObjCClassFromMetadata() entityName];
                  v41 = sub_1B7800868();
                  v43 = v42;

                  if (v35)
                  {
                    if (v41 == v33 && v35 == v43)
                    {
                      goto LABEL_44;
                    }

                    v44 = sub_1B78020F8();

                    if (v44)
                    {

LABEL_46:
                      v45 = 1;
                      a3 = v51;
                      goto LABEL_47;
                    }
                  }

                  else
                  {
                  }

                  ++v26;
                  v14 = v54;
                  if (v29 == v54)
                  {
                    goto LABEL_10;
                  }
                }

                __break(1u);
LABEL_50:
                __break(1u);
LABEL_51:
                __break(1u);
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }
            }

            else
            {
              v14 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v14)
              {
                goto LABEL_19;
              }
            }

LABEL_10:

            v15 = v50;
            a3 = v51;
            v18 = v48;
            v17 = v49;
            v19 = v47;
            v16 = v52;
            v20 = v53;
          }
        }

        while (v16 != v15);
        v45 = 0;
LABEL_47:

        *a3 = v45;
        return;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_9;
      }
    }

    *a3 = 0;
  }
}

void sub_1B7705E8C(void (*a1)(uint64_t))
{
  v8 = [*(*(v1 + OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_store) + 16) newBackgroundContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C270);
  sub_1B7801468();
  v3 = sub_1B7706A2C();
  v4 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996948);
  sub_1B7801468();

  v5 = v9;
  if (!*(v1 + OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask))
  {
    type metadata accessor for SendableNSPersistentHistoryToken();
    v6 = swift_allocObject();
    v7 = v6;
    if (v9)
    {
      *(v6 + 16) = v9;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v7 = 0;
    }

    v5 = v9;
    sub_1B770485C(v7);
  }

  a1(v3);
}

void sub_1B770601C(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v9[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    v8 = sub_1B77FF318();

    swift_willThrow();
  }

  *a2 = v5 ^ 1;
}

void sub_1B770620C(void *a1@<X0>, unint64_t a2@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v46 = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:&v46];

  v7 = v46;
  if (!v6)
  {
    v16 = v46;
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  v50 = MEMORY[0x1E69E7CC0];
  type metadata accessor for ManagedInstitution();
  v49.receiver = swift_getObjCClassFromMetadata();
  v49.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedInstitution;
  v8 = v7;
  v9 = objc_msgSendSuper2(&v49, sel_fetchRequest);
  [v9 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  *(v10 + 32) = sub_1B78010E8();
  *(v10 + 40) = _s10FinanceKit18ManagedInstitutionC032predicateForExcludingPlaceholderD0So11NSPredicateCvgZ_0();
  v11 = sub_1B7800C18();

  v12 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v9 setPredicate_];
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470);
  swift_getKeyPath();
  *(v13 + 32) = sub_1B7801288();
  v14 = sub_1B7800C18();

  [v9 setSortDescriptors_];

  v15 = sub_1B7801498();
  if (v2)
  {

    return;
  }

  if (v15 >> 62)
  {
LABEL_39:
    v37 = v15;
    v17 = sub_1B7801958();
    v15 = v37;
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = a2;
  v40 = v9;
  v41 = v15;
  if (v17)
  {
    v18 = 0;
    v44 = v15 & 0xFFFFFFFFFFFFFF8;
    v45 = v15 & 0xC000000000000001;
    v43 = v15 + 32;
    v42 = v17;
    while (1)
    {
      if (v45)
      {
        v15 = MEMORY[0x1B8CA5DC0](v18, v41);
      }

      else
      {
        if (v18 >= *(v44 + 16))
        {
          goto LABEL_38;
        }

        v15 = *(v43 + 8 * v18);
      }

      v19 = v15;
      if (__OFADD__(v18++, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      type metadata accessor for ManagedConsent();
      v21 = v19;
      v22 = [v19 id];
      v9 = sub_1B7800868();
      a2 = v23;

      v48.receiver = swift_getObjCClassFromMetadata();
      v48.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
      v24 = objc_msgSendSuper2(&v48, sel_fetchRequest);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1B7807CD0;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1B721FF04();
      *(v25 + 32) = v9;
      *(v25 + 40) = a2;
      v26 = sub_1B78010E8();
      [v24 setPredicate_];

      v27 = sub_1B7801498();
      if (v27 >> 62)
      {
        v15 = sub_1B7801958();
        v28 = v15;
        if (v15)
        {
LABEL_15:
          v29 = 0;
          a2 = v27 & 0xC000000000000001;
          v9 = (v27 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (a2)
            {
              v15 = MEMORY[0x1B8CA5DC0](v29, v27);
            }

            else
            {
              if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v15 = *(v27 + 8 * v29 + 32);
            }

            v30 = v15;
            v31 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v32 = [v15 consentStatusValue];
            if (v32)
            {
              break;
            }

            ++v29;
            if (v31 == v28)
            {
              goto LABEL_28;
            }
          }

          if (v32 == 1)
          {

            v33 = 1;
            goto LABEL_29;
          }

          v46 = 0;
          v47 = 0xE000000000000000;
          sub_1B7801A78();

          v46 = 0xD000000000000021;
          v47 = 0x80000001B7883960;
          [v30 consentStatusValue];
          v38 = sub_1B7802068();
          MEMORY[0x1B8CA4D30](v38);

          sub_1B7801C88();
          __break(1u);
          return;
        }
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_15;
        }
      }

LABEL_28:

      v33 = 0;
LABEL_29:
      sub_1B7205540(0, &qword_1EB9969B0);
      v34 = v21;
      v35 = FKInstitution.init(_:)(v34);
      [objc_allocWithZone(FKBankConnectInstitutionsProviderResponse) initWithInstitution:v35 consentStatus:v33];

      MEMORY[0x1B8CA4F20]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B7800C58();
      }

      sub_1B7800C88();

      v36 = v50;
      if (v18 == v42)
      {
        goto LABEL_34;
      }
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_34:

  *v39 = v36;
}

id BankConnectInstitutionsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B7706A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C290);
  sub_1B7801468();
  return v1;
}

id sub_1B7706BCC@<X0>(void *a1@<X8>)
{
  result = NSManagedObjectContext.currentLocalHistoryToken.getter();
  *a1 = result;
  return result;
}

void sub_1B7706D2C(uint64_t a1, uint64_t a2)
{
  v9 = [*(*(a1 + OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_store) + 16) newBackgroundContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C270);
  sub_1B7801468();
  sub_1B7706A2C();
  v4 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996948);
  sub_1B7801468();

  v5 = v10;
  if (!*(a1 + OBJC_IVAR____TtC10FinanceKit31BankConnectInstitutionsProvider_remoteChangeNotificationTask))
  {
    type metadata accessor for SendableNSPersistentHistoryToken();
    v6 = swift_allocObject();
    v7 = v6;
    if (v10)
    {
      *(v6 + 16) = v10;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v7 = 0;
    }

    v5 = v10;
    sub_1B770485C(v7);
  }

  sub_1B7205540(0, &qword_1EB99C278);
  v8 = sub_1B7800C18();
  (*(a2 + 16))(a2, v8);
}

uint64_t sub_1B7706EE8(uint64_t a1)
{
  v4 = *(sub_1B78000B8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7201BB0;

  return sub_1B7704B5C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t BankConnectService.decrypt(accountPaymentInformation:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for BankConnectService.Message();
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B770710C, 0, 0);
}

uint64_t sub_1B770710C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2];
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_1B720ABEC(v3, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1B77071E4;
  v5 = v0[6];

  return sub_1B7272490(v5);
}

uint64_t sub_1B77071E4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 64) = v0;

  sub_1B7267DAC(*(v2 + 48));
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7268988, 0, 0);
}

uint64_t BankConnectService.encrypt(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for BankConnectService.Message();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77073E8, 0, 0);
}

uint64_t sub_1B77073E8()
{
  *v0[7] = v0[4];
  swift_storeEnumTagMultiPayload();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1B77074C0;
  v2 = v0[7];

  return sub_1B7276700((v0 + 2), v2);
}

uint64_t sub_1B77074C0()
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  sub_1B7267DAC(v2);
  if (v0)
  {
    v3 = sub_1B7293DC8;
  }

  else
  {
    v3 = sub_1B77075F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B77075F0()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1B7707660(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7279080;

  return BankConnectService.encrypt(_:)(a1);
}

uint64_t sub_1B77076F8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = type metadata accessor for BankConnectService.Message();
  v4 = swift_task_alloc();
  v5 = *v2;
  v3[5] = v4;
  v3[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B7707790, 0, 0);
}

uint64_t sub_1B7707790()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[2];
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_1B720ABEC(v3, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1B7707868;
  v5 = v0[5];

  return sub_1B7272490(v5);
}

uint64_t sub_1B7707868()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 64) = v0;

  sub_1B7267DAC(*(v2 + 40));
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7269064, 0, 0);
}

uint64_t dispatch thunk of BankConnectCryptoServiceProviding.encrypt(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7279368;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BankConnectCryptoServiceProviding.decrypt(accountPaymentInformation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B721FDB8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B7707C30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B7801478();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1B77FFA18();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7707D58, 0, 0);
}

uint64_t sub_1B7707D58()
{
  v1 = *(v0[4] + 16);
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

  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v18 = v0[7];
  v8 = v0[5];
  v9 = v0[3];

  os_unfair_lock_unlock((v1 + 24));
  v10 = [*(v2 + 2) newBackgroundContext];
  v0[12] = v10;

  (*(v6 + 16))(v4, v9, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v0[13] = v12;
  (*(v6 + 32))(v12 + v11, v4, v5);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  (*(v7 + 104))(v18, *MEMORY[0x1E695D2B8], v8);
  v10;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2B0);
  *v13 = v0;
  v13[1] = sub_1B7707F64;
  v15 = v0[7];
  v16 = v0[2];

  return MEMORY[0x1EEDB6538](v16, v15, sub_1B770F5A8, v12, v14);
}

uint64_t sub_1B7707F64()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B7708170;
  }

  else
  {
    v5 = sub_1B77080F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B77080F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7708170()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77081E8()
{
  v1[3] = v0;
  v2 = sub_1B7801478();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B77082A8, 0, 0);
}

uint64_t sub_1B77082A8()
{
  v1 = *(v0[3] + 16);
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

  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  os_unfair_lock_unlock((v1 + 24));
  v6 = [*(v2 + 2) newBackgroundContext];
  v0[7] = v6;

  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v6;
  (*(v4 + 104))(v3, *MEMORY[0x1E695D2B8], v5);
  v6;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2A8);
  *v8 = v0;
  v8[1] = sub_1B7708440;
  v10 = v0[6];

  return MEMORY[0x1EEDB6538](v0 + 2, v10, sub_1B770F530, v7, v9);
}

uint64_t sub_1B7708440()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B7708648;
  }

  else
  {
    v5 = sub_1B77085D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B77085D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B7708648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B77086B4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1B7801478();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7708774, 0, 0);
}

uint64_t sub_1B7708774()
{
  v1 = *(v0[4] + 16);
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

  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[3];

  os_unfair_lock_unlock((v1 + 24));
  v7 = [*(v2 + 2) newBackgroundContext];
  v0[8] = v7;

  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  (*(v4 + 104))(v3, *MEMORY[0x1E695D2B8], v5);
  v7;

  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2A8);
  *v9 = v0;
  v9[1] = sub_1B7708918;
  v11 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v11, sub_1B770F4B0, v8, v10);
}

void sub_1B7708918()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    MEMORY[0x1EEE6DFA0](sub_1B73A0D78, 0, 0);
  }
}

uint64_t sub_1B7708A70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B7801478();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7708B30, 0, 0);
}

uint64_t sub_1B7708B30()
{
  v1 = *(v0[3] + 16);
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

  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  os_unfair_lock_unlock((v1 + 24));
  v6 = [*(v2 + 2) newBackgroundContext];
  v0[7] = v6;

  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v6;
  (*(v4 + 104))(v3, *MEMORY[0x1E695D2B8], v5);
  v6;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2A0);
  *v8 = v0;
  v8[1] = sub_1B7708CC8;
  v10 = v0[6];
  v11 = v0[2];

  return MEMORY[0x1EEDB6538](v11, v10, sub_1B770F494, v7, v9);
}

uint64_t sub_1B7708CC8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B7708648;
  }

  else
  {
    v5 = sub_1B7708E5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B7708E5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7708EC8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7708EEC, 0, 0);
}

uint64_t sub_1B7708EEC()
{
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

  v4 = v0[4];
  v3 = v0[5];

  os_unfair_lock_unlock((v1 + 24));
  v5 = [*(v2 + 2) newBackgroundContext];

  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993940);
  sub_1B7801468();

  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[1];

  return v9(v7, v8);
}

void sub_1B770905C()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D10);
  sub_1B7801468();
}

uint64_t sub_1B7709164(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7709188, 0, 0);
}

uint64_t sub_1B7709188()
{
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

  v4 = v0[4];
  v3 = v0[5];

  os_unfair_lock_unlock((v1 + 24));
  v5 = [*(v2 + 2) newBackgroundContext];

  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D98);
  sub_1B7801468();

  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[1];

  return v9(v7, v8);
}

uint64_t sub_1B77092F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B770931C, 0, 0);
}

uint64_t sub_1B770931C()
{
  v1 = *(v0[5] + 16);
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

  v4 = v0[3];
  v3 = v0[4];

  os_unfair_lock_unlock((v1 + 24));
  v5 = [*(v2 + 2) newBackgroundContext];

  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993160);
  sub_1B7801468();

  v7 = v0[1];

  return v7();
}

void sub_1B7709460(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInternalTransaction();
  v9 = static ManagedInternalTransaction.existingTransaction(withTransactionID:in:)();
  if (!v2)
  {
    v68 = 0;
    if (!v9)
    {
      if (qword_1EDAF6588 != -1)
      {
        swift_once();
      }

      v20 = sub_1B78000B8();
      __swift_project_value_buffer(v20, qword_1EDAF6590);
      (*(v6 + 16))(v8, a1, v5);
      v21 = sub_1B7800098();
      v22 = sub_1B78011D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v63 = a2;
        *&v64[0] = v24;
        v25 = v24;
        *v23 = 136315138;
        sub_1B729D260();
        v26 = sub_1B7802068();
        v28 = v27;
        (*(v6 + 8))(v8, v5);
        v29 = sub_1B71A3EF8(v26, v28, v64);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_1B7198000, v21, v22, "Transaction %s not found", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v30 = v25;
        a2 = v63;
        MEMORY[0x1B8CA7A40](v30, -1, -1);
        MEMORY[0x1B8CA7A40](v23, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v8, v5);
      }

      goto LABEL_30;
    }

    v10 = v9;
    v11 = [v9 paymentHash];
    if (!v11)
    {
      v31 = [v10 insightsObject];
      if (!v31 || (v32 = v31, v33 = [v31 applePayInsightObject], v32, !v33))
      {
        if (qword_1EDAF6588 != -1)
        {
          swift_once();
        }

        v57 = sub_1B78000B8();
        __swift_project_value_buffer(v57, qword_1EDAF6590);
        v58 = sub_1B7800098();
        v59 = sub_1B78011F8();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_1B7198000, v58, v59, "Transaction has no Apple Pay payment hash", v60, 2u);
          MEMORY[0x1B8CA7A40](v60, -1, -1);
        }

LABEL_29:
LABEL_30:
        v61 = type metadata accessor for WalletOrderRowViewModel(0);
        (*(*(v61 - 8) + 56))(a2, 1, 1, v61);
        return;
      }

      v11 = [v33 paymentHash];
    }

    v12 = a2;
    v13 = sub_1B7800868();
    v15 = v14;

    type metadata accessor for ManagedOrder();
    v67.receiver = swift_getObjCClassFromMetadata();
    v67.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
    v16 = objc_msgSendSuper2(&v67, sel_fetchRequest);
    v17 = _s10FinanceKit12ManagedOrderC18predicateForOrders25withTransactionIdentifierSo11NSPredicateCSS_tFZ_0(v13, v15);
    [v16 setPredicate_];

    v18 = v68;
    v19 = sub_1B7801498();
    v68 = v18;
    if (v18)
    {

      return;
    }

    v34 = v19;

    if (v34 >> 62)
    {
      a2 = v12;
      if (sub_1B7801958())
      {
        goto LABEL_16;
      }
    }

    else
    {
      a2 = v12;
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1B8CA5DC0](0, v34);
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v35 = *(v34 + 32);
        }

        v36 = v35;

        v37 = [v36 ecommerceOrderContent];
        if (v37)
        {
          v38 = v37;
          v39 = type metadata accessor for WalletOrderRowViewModel(0);
          v40 = &a2[*(v39 + 20)];
          *(v40 + 1) = 0u;
          *(v40 + 2) = 0u;
          *v40 = 0u;
          v41 = v36;
          v42 = v38;
          sub_1B730740C(v41, v42, a2);
          v43 = v41;
          v63 = v42;
          sub_1B7307E88(v63, v43, v15, v64);
          v44 = v65;
          v45 = v66;
          sub_1B730726C(*v40, *(v40 + 1));
          v46 = v64[1];
          *v40 = v64[0];
          *(v40 + 1) = v46;
          *(v40 + 4) = v44;
          *(v40 + 5) = v45;
          v47 = [v43 orderTypeIdentifier];
          v48 = sub_1B7800868();
          v50 = v49;

          v51 = [v43 orderIdentifier];
          v52 = a2;
          v53 = sub_1B7800868();
          v55 = v54;

          v56 = &v52[*(v39 + 24)];
          *v56 = v48;
          v56[1] = v50;
          v56[2] = v53;
          v56[3] = v55;
          (*(*(v39 - 8) + 56))(v52, 0, 1, v39);
          return;
        }

        goto LABEL_30;
      }
    }

    goto LABEL_29;
  }
}

uint64_t sub_1B7709AEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v59 = type metadata accessor for WalletOrderRowViewModel(0);
  v55 = *(v59 - 8);
  v5 = MEMORY[0x1EEE9AC00](v59);
  v54 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - v7;
  v9 = [objc_opt_self() currentQueryGenerationToken];
  *&v60[0] = 0;
  v10 = [a1 setQueryGenerationFromToken:v9 error:v60];

  v11 = *&v60[0];
  if (v10)
  {
    type metadata accessor for ManagedOrder();
    v12 = v11;
    result = static ManagedOrder.fetchShowsAsActiveOrders(in:)();
    v14 = v2;
    if (!v2)
    {

      *&v60[0] = sub_1B725F3A4(v15);
      sub_1B770BE88(v60);

      v16 = *&v60[0];
      if ((*&v60[0] & 0x8000000000000000) != 0 || (*&v60[0] & 0x4000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v17 = *(*&v60[0] + 16);
      v49 = 0;
      for (i = a2; v17; i = a2)
      {
        v18 = 0;
        a2 = MEMORY[0x1E69E7CC0];
        v56 = v16 & 0xC000000000000001;
        v52 = v16;
        v53 = v8;
        v51 = v17;
        while (1)
        {
          if (v56)
          {
            v19 = MEMORY[0x1B8CA5DC0](v18, v16);
          }

          else
          {
            if (v18 >= *(v16 + 16))
            {
              goto LABEL_25;
            }

            v19 = *(v16 + 8 * v18 + 32);
          }

          v14 = v19;
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v21 = [v19 ecommerceOrderContent];
          if (v21)
          {
            v22 = v21;
            v23 = [v14 applePayTransactionIdentifier];
            v57 = v18 + 1;
            v58 = a2;
            if (v23)
            {
              v24 = v23;
              sub_1B7800868();
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            v27 = v54;
            v28 = v54 + *(v59 + 20);
            *(v28 + 1) = 0u;
            *(v28 + 2) = 0u;
            *v28 = 0u;
            v29 = v14;
            v30 = v22;
            sub_1B730740C(v29, v30, v27);
            v31 = v29;
            v32 = v30;
            sub_1B7307E88(v32, v31, v26, v60);
            v33 = v61;
            v34 = v62;
            sub_1B730726C(*v28, *(v28 + 1));
            v35 = v60[1];
            *v28 = v60[0];
            *(v28 + 1) = v35;
            *(v28 + 4) = v33;
            *(v28 + 5) = v34;
            v36 = [v31 orderTypeIdentifier];
            v37 = sub_1B7800868();
            v8 = v38;

            v39 = [v31 orderIdentifier];
            v40 = sub_1B7800868();
            v42 = v41;

            v43 = (v27 + *(v59 + 24));
            *v43 = v37;
            v43[1] = v8;
            v43[2] = v40;
            v43[3] = v42;
            v44 = v27;
            v45 = v53;
            sub_1B770F4CC(v44, v53);
            a2 = v58;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_1B723FBE8(0, a2[2] + 1, 1, a2);
            }

            v17 = v51;
            v20 = v57;
            v47 = a2[2];
            v46 = a2[3];
            v14 = (v47 + 1);
            if (v47 >= v46 >> 1)
            {
              a2 = sub_1B723FBE8(v46 > 1, v47 + 1, 1, a2);
            }

            a2[2] = v14;
            sub_1B770F4CC(v45, a2 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v47);
            v16 = v52;
          }

          else
          {
          }

          ++v18;
          if (v20 == v17)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v17 = sub_1B7801958();
        v49 = v14;
      }

      a2 = MEMORY[0x1E69E7CC0];
LABEL_28:

      *i = a2;
    }
  }

  else
  {
    v48 = *&v60[0];
    sub_1B77FF318();

    return swift_willThrow();
  }

  return result;
}

void sub_1B7709FA0(void *a1@<X0>, uint64_t a2@<X1>, size_t *a3@<X8>)
{
  v114 = a3;
  v119 = type metadata accessor for WalletOrderRowViewModel(0);
  v117 = *(v119 - 8);
  v6 = MEMORY[0x1EEE9AC00](v119);
  v116 = (&v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v111 - v8;
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = [a1 persistentStoreCoordinator];
  if (v122)
  {
    v113 = a1;
    v115 = v9;
    v118 = v3;
    *&v126[0] = MEMORY[0x1E69E7CC0];
    v14 = *(a2 + 16);
    if (v14)
    {
      v16 = *(v11 + 16);
      v15 = v11 + 16;
      *&v125 = v16;
      v17 = a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v18 = *(v15 + 56);
      v19 = (v15 - 8);
      v123 = MEMORY[0x1E69E7CC0];
      v16(v13, v17, v10);
      while (1)
      {
        v20 = sub_1B77FF3F8();
        v21 = [v122 managedObjectIDForURIRepresentation_];

        v22 = (*v19)(v13, v10);
        if (v21)
        {
          MEMORY[0x1B8CA4F20](v22);
          if (*((*&v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v126[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v129 = *((*&v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B7800C58();
          }

          sub_1B7800C88();
          v123 = *&v126[0];
        }

        v17 += v18;
        if (!--v14)
        {
          break;
        }

        (v125)(v13, v17, v10);
      }
    }

    else
    {
      v123 = MEMORY[0x1E69E7CC0];
    }

    v24 = v123;
    if (v123 >> 62)
    {
      goto LABEL_86;
    }

    v23 = MEMORY[0x1E69E7CC0];
    *&v125 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v125)
    {
      do
      {
        v25 = 0;
        v129 = v24 & 0xC000000000000001;
        *&v126[0] = v23;
        v124 = v24 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v129)
          {
            v26 = MEMORY[0x1B8CA5DC0](v25, v123);
          }

          else
          {
            if (v25 >= *(v124 + 16))
            {
              goto LABEL_81;
            }

            v26 = *(v123 + 8 * v25 + 32);
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          v29 = [v26 entity];
          v30 = [v29 name];

          if (v30)
          {
            v31 = sub_1B7800868();
            v24 = v32;
          }

          else
          {
            v31 = 0;
            v24 = 0;
          }

          v121 = type metadata accessor for ManagedOrder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v33 = [ObjCClassFromMetadata entityName];
          v34 = sub_1B7800868();
          v36 = v35;

          if (v24)
          {
            if (v31 == v34 && v24 == v36)
            {

LABEL_30:
              v24 = v126;
              sub_1B7801B68();
              sub_1B7801BA8();
              sub_1B7801BB8();
              sub_1B7801B78();
              goto LABEL_17;
            }

            v37 = sub_1B78020F8();

            if (v37)
            {
              goto LABEL_30;
            }
          }

          else
          {
          }

LABEL_17:
          ++v25;
          if (v28 == v125)
          {
            v38 = 0;
            v112 = *&v126[0];
            *&v126[0] = v23;
            v39 = v123;
            while (1)
            {
              if (v129)
              {
                v40 = MEMORY[0x1B8CA5DC0](v38, v39);
              }

              else
              {
                if (v38 >= *(v124 + 16))
                {
                  goto LABEL_83;
                }

                v40 = *(v39 + 8 * v38 + 32);
              }

              v41 = v40;
              v42 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_82;
              }

              v43 = [v40 entity];
              v44 = [v43 name];

              if (v44)
              {
                v45 = sub_1B7800868();
                v24 = v46;
              }

              else
              {
                v45 = 0;
                v24 = 0;
              }

              type metadata accessor for ManagedOrderDashboardItem();
              v47 = [swift_getObjCClassFromMetadata() entityName];
              v48 = sub_1B7800868();
              v50 = v49;

              if (v24)
              {
                if (v45 == v48 && v24 == v50)
                {

LABEL_48:
                  v24 = v126;
                  sub_1B7801B68();
                  sub_1B7801BA8();
                  sub_1B7801BB8();
                  sub_1B7801B78();
                  goto LABEL_35;
                }

                v51 = sub_1B78020F8();

                if (v51)
                {
                  goto LABEL_48;
                }
              }

              else
              {
              }

LABEL_35:
              ++v38;
              if (v42 == v125)
              {

                v52 = *&v126[0];
                v53 = sub_1B723BDF0(v112);

                sub_1B7205540(0, &qword_1EDAFAF30);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
                v54 = swift_allocObject();
                v125 = xmmword_1B7807CD0;
                *(v54 + 16) = xmmword_1B7807CD0;
                *(v54 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0);
                *(v54 + 64) = sub_1B728216C(&qword_1EB994ED8, &qword_1EB994ED0);
                *(v54 + 32) = v53;
                v55 = sub_1B78010E8();
                v56 = swift_allocObject();
                *(v56 + 16) = v125;
                *(v56 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A40);
                *(v56 + 64) = sub_1B728216C(&qword_1EB993A48, &qword_1EB993A40);
                *(v56 + 32) = v52;
                v57 = sub_1B78010E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
                v58 = swift_allocObject();
                *(v58 + 16) = xmmword_1B780C060;
                *(v58 + 32) = v55;
                *(v58 + 40) = v57;
                v59 = v55;
                v60 = v57;
                v61 = sub_1B7800C18();

                v62 = [objc_opt_self() orPredicateWithSubpredicates_];

                v63 = [ObjCClassFromMetadata fetchRequest];
                v64 = qword_1EB98EAD0;
                v65 = v62;
                if (v64 != -1)
                {
                  swift_once();
                }

                v66 = sub_1B751E2EC(qword_1EB994EC0);
                [v63 setPredicate_];

                v112 = v63;
                v67 = v118;
                *&v125 = sub_1B7801498();
                if (v67)
                {
                  if (qword_1EDAF6548 != -1)
                  {
                    swift_once();
                  }

                  v68 = sub_1B78000B8();
                  __swift_project_value_buffer(v68, qword_1EDAF6550);
                  v69 = v67;
                  v70 = sub_1B7800098();
                  v71 = sub_1B78011D8();

                  if (os_log_type_enabled(v70, v71))
                  {
                    v72 = swift_slowAlloc();
                    v73 = swift_slowAlloc();
                    *v72 = 138412290;
                    v74 = v67;
                    v75 = _swift_stdlib_bridgeErrorToNSError();
                    *(v72 + 4) = v75;
                    *v73 = v75;
                    _os_log_impl(&dword_1B7198000, v70, v71, "Failed to fetch orders with error: %@", v72, 0xCu);
                    sub_1B7205418(v73, &qword_1EB9910D0);
                    MEMORY[0x1B8CA7A40](v73, -1, -1);
                    MEMORY[0x1B8CA7A40](v72, -1, -1);
                  }

                  v23 = MEMORY[0x1E69E7CC0];
                  goto LABEL_88;
                }

                if (v125 >> 62)
                {
                  v24 = sub_1B7801958();
                }

                else
                {
                  v24 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v111 = v59;
                v113 = v60;
                if (v24)
                {
                  v76 = 0;
                  v123 = v125 & 0xC000000000000001;
                  v23 = MEMORY[0x1E69E7CC0];
                  ObjCClassFromMetadata = v24;
                  v121 = v125 & 0xFFFFFFFFFFFFFF8;
                  v118 = 0;
                  while (1)
                  {
                    if (v123)
                    {
                      v77 = MEMORY[0x1B8CA5DC0](v76, v125);
                    }

                    else
                    {
                      if (v76 >= *(v121 + 16))
                      {
                        goto LABEL_85;
                      }

                      v77 = *(v125 + 8 * v76 + 32);
                    }

                    v78 = v77;
                    v79 = v76 + 1;
                    if (__OFADD__(v76, 1))
                    {
                      goto LABEL_84;
                    }

                    v80 = [v77 ecommerceOrderContent];
                    if (v80)
                    {
                      v81 = v80;
                      v124 = v76 + 1;
                      v129 = v23;
                      v82 = [v78 applePayTransactionIdentifier];
                      if (v82)
                      {
                        v83 = v82;
                        sub_1B7800868();
                        v85 = v84;
                      }

                      else
                      {
                        v85 = 0;
                      }

                      v86 = v116;
                      v87 = v116 + *(v119 + 20);
                      *(v87 + 1) = 0u;
                      *(v87 + 2) = 0u;
                      *v87 = 0u;
                      v88 = v78;
                      v89 = v81;
                      sub_1B730740C(v88, v89, v86);
                      v90 = v88;
                      v91 = v89;
                      sub_1B7307E88(v91, v90, v85, v126);
                      v92 = v127;
                      v93 = v128;
                      sub_1B730726C(*v87, *(v87 + 1));
                      v94 = v126[1];
                      *v87 = v126[0];
                      *(v87 + 1) = v94;
                      *(v87 + 4) = v92;
                      *(v87 + 5) = v93;
                      v95 = [v90 orderTypeIdentifier];
                      v96 = sub_1B7800868();
                      v98 = v97;

                      v99 = [v90 orderIdentifier];
                      v100 = sub_1B7800868();
                      v102 = v101;

                      v103 = (v86 + *(v119 + 24));
                      *v103 = v96;
                      v103[1] = v98;
                      v103[2] = v100;
                      v103[3] = v102;
                      v104 = v86;
                      v105 = v115;
                      sub_1B770F4CC(v104, v115);
                      v106 = v129;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v106 = sub_1B723FBE8(0, v106[2] + 1, 1, v106);
                      }

                      v108 = v106[2];
                      v107 = v106[3];
                      v109 = v106;
                      if (v108 >= v107 >> 1)
                      {
                        v109 = sub_1B723FBE8(v107 > 1, v108 + 1, 1, v106);
                      }

                      *(v109 + 16) = v108 + 1;
                      v23 = v109;
                      sub_1B770F4CC(v105, v109 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v108);
                      v24 = ObjCClassFromMetadata;
                      v79 = v124;
                    }

                    else
                    {
                    }

                    ++v76;
                    if (v79 == v24)
                    {
                      goto LABEL_79;
                    }
                  }
                }

                v23 = MEMORY[0x1E69E7CC0];
LABEL_79:

                goto LABEL_88;
              }
            }
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v110 = sub_1B7801958();
        v23 = MEMORY[0x1E69E7CC0];
        *&v125 = v110;
      }

      while (v110);
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_88:
  *v114 = v23;
}

void sub_1B770ACF8(uint64_t a1@<X8>)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B7800838();
  v5 = objc_opt_self();
  v6 = [v5 expressionForKeyPath_];

  v43 = sub_1B7205540(0, &qword_1EB990580);
  *(v3 + 56) = v43;
  *(v3 + 32) = v6;
  v7 = sub_1B7800838();
  v8 = sub_1B7800C18();

  v9 = [v5 expressionForFunction:v7 arguments:v8];

  [v1 setExpression_];
  v10 = v1;
  v11 = sub_1B7800838();
  [v10 setName_];

  [v10 setExpressionResultType_];
  type metadata accessor for ManagedOrderData();
  v51.receiver = swift_getObjCClassFromMetadata();
  v51.super_class = &OBJC_METACLASS____TtC10FinanceKit16ManagedOrderData;
  v12 = objc_msgSendSuper2(&v51, sel_fetchRequest);
  [v12 setResultType_];
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7807CD0;
  v14 = sub_1B7205540(0, &qword_1EB99AA60);
  *(v13 + 56) = v14;
  *(v13 + 32) = v10;
  v15 = v10;
  v16 = sub_1B7800C18();

  [v12 setPropertiesToFetch_];

  sub_1B7205540(0, &qword_1EB994458);
  v17 = v52;
  v18 = sub_1B7801498();
  if (v17)
  {

    return;
  }

  v19 = v18;
  v52 = v12;
  if (!(v18 >> 62))
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_35:

    v49 = 0u;
    v50 = 0u;
    goto LABEL_36;
  }

  v20 = sub_1B7801958();
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1B8CA5DC0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;

  *&v47 = 0x6F5473726564726FLL;
  *(&v47 + 1) = 0xEB000000006C6174;
  v23 = [v22 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v23)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {

LABEL_36:
    sub_1B7205418(&v49, &qword_1EB98FCB0);
    goto LABEL_37;
  }

  v20 = swift_dynamicCast();
  if ((v20 & 1) == 0)
  {

LABEL_37:
    *a1 = 0;
    *(a1 + 8) = 1;
    return;
  }

  v42 = v47;
  if (v47 + 0x40000000 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B7807CD0;
  v26 = sub_1B7800838();
  v27 = [v5 expressionForKeyPath_];

  *(v25 + 56) = v43;
  *(v25 + 32) = v27;
  v28 = sub_1B7800838();
  v29 = sub_1B7800C18();

  v30 = [v5 expressionForFunction:v28 arguments:v29];

  [v24 setExpression_];
  v31 = v24;
  v32 = sub_1B7800838();
  [v31 setName_];

  [v31 setExpressionResultType_];
  type metadata accessor for ManagedOrderImageData();
  v46.receiver = swift_getObjCClassFromMetadata();
  v46.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedOrderImageData;
  v5 = objc_msgSendSuper2(&v46, sel_fetchRequest);
  [v5 setResultType_];
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B7807CD0;
  *(v33 + 56) = v14;
  *(v33 + 32) = v31;
  v2 = v31;
  v34 = sub_1B7800C18();

  [v5 setPropertiesToFetch_];

  v20 = sub_1B7801498();
  v14 = v52;
  if (!(v20 >> 62))
  {
    v35 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_19;
  }

LABEL_41:
  v41 = v20;
  v35 = sub_1B7801958();
  v20 = v41;
LABEL_19:
  v36 = 2 * v42;
  if (!v35)
  {

    v49 = 0u;
    v50 = 0u;
    goto LABEL_31;
  }

  v45 = 2 * v42;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1B8CA5DC0](0);
LABEL_23:
    v38 = v37;

    *&v47 = 0x746F546567616D69;
    *(&v47 + 1) = 0xEA00000000006C61;
    v39 = [v38 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v39)
    {
      sub_1B7801848();

      swift_unknownObjectRelease();
    }

    else
    {

      v47 = 0u;
      v48 = 0u;
    }

    v36 = 2 * v42;
    v49 = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      if (swift_dynamicCast())
      {
        LODWORD(v40) = v45 + v47;
        if (!__OFADD__(v45, v47))
        {
          v40 = v40;
LABEL_33:
          *a1 = v40;
          *(a1 + 8) = 0;
          return;
        }

        goto LABEL_44;
      }

LABEL_32:
      v40 = v36;
      goto LABEL_33;
    }

LABEL_31:
    sub_1B7205418(&v49, &qword_1EB98FCB0);
    goto LABEL_32;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v20 + 32);
    goto LABEL_23;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1B770B5C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a3;
  type metadata accessor for ManagedFoundInMailItem();
  v21.receiver = swift_getObjCClassFromMetadata();
  v21.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedFoundInMailItem;
  v6 = objc_msgSendSuper2(&v21, sel_fetchRequest);
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

  v9 = sub_1B7800C18();
  [v6 setRelationshipKeyPathsForPrefetching_];

  v10 = sub_1B7801498();
  if (v3)
  {

    return;
  }

  v11 = v22;
  if (v10 >> 62)
  {
    v19 = v10;
    v20 = sub_1B7801958();
    v10 = v19;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v14 = [v13 businessConnectBrandObject];

  if (v14)
  {
    v15 = [v14 logo];

    v16 = sub_1B77FF5B8();
    v18 = v17;

    *v11 = v16;
    v11[1] = v18;
    return;
  }

LABEL_13:
  *v11 = xmmword_1B7810080;
}

void sub_1B770B85C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a3;
  type metadata accessor for ManagedFoundInMailItem();
  v19.receiver = swift_getObjCClassFromMetadata();
  v19.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedFoundInMailItem;
  v6 = objc_msgSendSuper2(&v19, sel_fetchRequest);
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

  v9 = sub_1B7801498();
  if (v3)
  {

    return;
  }

  v10 = v20;
  if (v9 >> 62)
  {
    v17 = v9;
    v18 = sub_1B7801958();
    v9 = v17;
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_10:

    *v10 = 0;
    v10[1] = 0;
    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
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

    v13 = [v12 messageID];

    v14 = sub_1B7800868();
    v16 = v15;

    *v10 = v14;
    v10[1] = v16;
    return;
  }

  __break(1u);
}

void *sub_1B770BA90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v17[0] = 0;
  v10 = [a1 setQueryGenerationFromToken:v9 error:v17];

  v11 = v17[0];
  if (v10)
  {
    type metadata accessor for ManagedFoundInMailItem();
    v12 = v11;
    result = static ManagedFoundInMailItem.mailItem(withMessageID:in:)(a2, a3);
    if (!v4)
    {
      if (result)
      {
        FoundInMailItem.init(_:)(result, a4);
        v14 = type metadata accessor for FoundInMailItem();
        return (*(*(v14 - 8) + 56))(a4, 0, 1, v14);
      }

      else
      {
        v16 = type metadata accessor for FoundInMailItem();
        return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
      }
    }
  }

  else
  {
    v15 = v17[0];
    sub_1B77FF318();

    return swift_willThrow();
  }

  return result;
}

double sub_1B770BC30@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ManagedMapsBrand();
  static ManagedMapsBrand.brand(withEmail:in:)();
  if (!v1)
  {
    v5 = v3;
    if (!v3)
    {
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 1;
      return result;
    }

    v6 = sub_1B7800838();
    v7 = [v5 valueForKeyPath_];

    if (v7)
    {
      sub_1B7801848();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18 = v16;
    v19 = v17;
    if (*(&v17 + 1))
    {
      sub_1B7205540(0, &qword_1EB99C298);
      if (swift_dynamicCast())
      {
        v8 = [v15 anyObject];

        if (v8)
        {
          sub_1B7801848();
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
        }

        v12 = v18;
        v13 = v19;
        if (*(&v19 + 1))
        {
          type metadata accessor for ManagedTransactionIcon();
          if (swift_dynamicCast())
          {
            sub_1B72D3C24(v18, &v12);

            v9 = v13;
            v10 = BYTE8(v13);
            v11 = v14;
            result = *&v12;
            *a1 = v12;
            *(a1 + 16) = v9;
            *(a1 + 24) = v10;
            *(a1 + 32) = v11;
            return result;
          }

          goto LABEL_15;
        }

LABEL_14:
        sub_1B7205418(&v12, &qword_1EB98FCB0);
LABEL_15:
        result = 0.0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 1;
        return result;
      }
    }

    else
    {

      sub_1B7205418(&v18, &qword_1EB98FCB0);
    }

    v12 = 0u;
    v13 = 0u;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B770BE88(uint64_t *a1)
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
  sub_1B770BF04(v6);
  return sub_1B7801B78();
}

void sub_1B770BF04(uint64_t *a1)
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
        type metadata accessor for ManagedOrder();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B770CC28(v8, v9, a1, v4);
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
    sub_1B770C008(0, v2, 1, a1);
  }
}

void sub_1B770C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v108 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v108 - v17;
  v18 = sub_1B77FF988();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v114 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v113 = &v108 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v137 = &v108 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v128 = &v108 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v118 = &v108 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v127 = &v108 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v126 = &v108 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v117 = &v108 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v125 = &v108 - v36;
  v37 = type metadata accessor for Order.PriorityInfo(0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  v138 = &v108 - v40;
  v109 = a2;
  if (a3 == a2)
  {
    return;
  }

  v132 = v39;
  v133 = (v19 + 32);
  v41 = *a4;
  v136 = (v19 + 8);
  v123 = (v19 + 56);
  v124 = (v19 + 16);
  v130 = v41;
  v131 = v37;
  v42 = v41 + 8 * a3 - 8;
  v43 = a1 - a3;
  v129 = v16;
  v122 = (v19 + 48);
LABEL_5:
  v112 = a3;
  v44 = *(v130 + 8 * a3);
  v110 = v43;
  v45 = v43;
  v111 = v42;
  v46 = v16;
  while (1)
  {
    v47 = *v42;
    v48 = v44;
    v49 = v47;
    v50 = v48;
    v51 = v49;
    v52 = [v48 statusPriorityValue];
    v135 = v48;
    if (v52 == -1)
    {
      goto LABEL_11;
    }

    Order.StatusPriority.init(rawValue:)([v48 statusPriorityValue], &v139);
    v53 = v139;
    if (v139 == 10)
    {
      v139 = 0;
      v140 = 0xE000000000000000;
      sub_1B7801A78();

      v139 = 0xD000000000000022;
      v140 = 0x80000001B787F490;
      v106 = [v50 statusPriorityValue];
      goto LABEL_42;
    }

    v54 = [v50 orderContentUpdatedDate];
    if (!v54)
    {
LABEL_11:
      v65 = [v50 ecommerceOrderContent];
      if (!v65)
      {
        goto LABEL_43;
      }

      v66 = v65;
      ManagedECommerceOrderContent.priorityInfo.getter(v138);
    }

    else
    {
      v134 = v51;
      v55 = v117;
      v56 = v50;
      v57 = v54;
      sub_1B77FF928();

      v58 = *v133;
      v59 = v125;
      (*v133)(v125, v55, v18);
      v60 = v18;
      (*v124)(v126, v59, v18);
      v61 = [v56 priorityEstimatedCompletionDate];
      if (v61)
      {
        v62 = v119;
        v63 = v61;
        sub_1B77FF928();

        v64 = 0;
      }

      else
      {
        v64 = 1;
        v62 = v119;
      }

      v37 = v131;
      (*v136)(v125, v60);
      (*v123)(v62, v64, 1, v60);
      v67 = v138;
      v58(v138, v126, v60);
      *(v67 + *(v37 + 20)) = v53;
      v68 = v62;
      v18 = v60;
      sub_1B7205340(v68, v67 + *(v37 + 24));
      v51 = v134;
      v46 = v129;
    }

    if ([v51 statusPriorityValue] == -1)
    {
      goto LABEL_20;
    }

    Order.StatusPriority.init(rawValue:)([v51 statusPriorityValue], &v139);
    v69 = v139;
    if (v139 == 10)
    {
      break;
    }

    v70 = [v51 orderContentUpdatedDate];
    if (v70)
    {
      v71 = v118;
      v72 = v70;
      sub_1B77FF928();

      v73 = *v133;
      v74 = v127;
      (*v133)(v127, v71, v18);
      (*v124)(v128, v74, v18);
      v75 = [v51 priorityEstimatedCompletionDate];
      if (v75)
      {
        v76 = v75;
        sub_1B77FF928();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }

      v37 = v131;
      (*v136)(v127, v18);
      (*v123)(v46, v77, 1, v18);
      v81 = v132;
      v73(v132, v128, v18);
      *(v81 + *(v37 + 20)) = v69;
      v80 = v81;
      sub_1B7205340(v46, v81 + *(v37 + 24));
      goto LABEL_24;
    }

LABEL_20:
    v78 = [v51 ecommerceOrderContent];
    if (!v78)
    {
      goto LABEL_43;
    }

    v79 = v78;
    v80 = v132;
    ManagedECommerceOrderContent.priorityInfo.getter(v132);

LABEL_24:
    sub_1B77FF938();
    v82 = *(v37 + 20);
    v83 = word_1B7860BEA[v138[v82]];
    v84 = word_1B7860BEA[*(v80 + v82)];
    if (v83 != v84)
    {
      v92 = v84 < v83;
      v91 = v138;
      goto LABEL_33;
    }

    v134 = v51;
    v85 = *(v37 + 24);
    v86 = v120;
    v87 = *(v121 + 48);
    sub_1B7280900(&v138[v85], v120);
    sub_1B7280900(v80 + v85, v86 + v87);
    v88 = *v122;
    if ((*v122)(v86, 1, v18) == 1)
    {
      v89 = v88(v86 + v87, 1, v18);
      v90 = v86;
      v51 = v134;
      if (v89 == 1)
      {
        v91 = v138;
        v80 = v132;
        v92 = sub_1B77FF8C8();
        sub_1B7205418(v90, &qword_1EB98EBD0);
        v46 = v129;
        v37 = v131;
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v93 = v115;
    sub_1B7280900(v86, v115);
    if (v88(v86 + v87, 1, v18) == 1)
    {
      (*v136)(v93, v18);
      v90 = v86;
      v51 = v134;
LABEL_31:
      v91 = v138;
      v94 = v116;
      sub_1B7280900(&v138[v85], v116);
      v92 = v88(v94, 1, v18) != 1;
      sub_1B7205418(v94, &qword_1EB98EBD0);
      sub_1B7205418(v90, &qword_1EB98FCE0);
      v46 = v129;
      v37 = v131;
      v80 = v132;
      goto LABEL_33;
    }

    v95 = *v133;
    v96 = v113;
    (*v133)(v113, v93, v18);
    v97 = (v86 + v87);
    v98 = v114;
    v95(v114, v97, v18);
    sub_1B77FF808();
    v100 = fabs(v99);
    sub_1B77FF808();
    v102 = fabs(v101);
    v103 = *v136;
    (*v136)(v98, v18);
    v103(v96, v18);
    v92 = v100 < v102;
    sub_1B7205418(v86, &qword_1EB98EBD0);
    v46 = v129;
    v37 = v131;
    v80 = v132;
    v91 = v138;
    v51 = v134;
LABEL_33:
    (*v136)(v137, v18);
    sub_1B770F54C(v80);
    sub_1B770F54C(v91);

    if (v92)
    {
      if (!v130)
      {
        __break(1u);
        goto LABEL_43;
      }

      v104 = *v42;
      v44 = *(v42 + 8);
      *v42 = v44;
      *(v42 + 8) = v104;
      v42 -= 8;
      if (!__CFADD__(v45++, 1))
      {
        continue;
      }
    }

    v16 = v46;
    a3 = v112 + 1;
    v42 = v111 + 8;
    v43 = v110 - 1;
    if (v112 + 1 == v109)
    {
      return;
    }

    goto LABEL_5;
  }

  v139 = 0;
  v140 = 0xE000000000000000;
  sub_1B7801A78();

  v139 = 0xD000000000000022;
  v140 = 0x80000001B787F490;
  v106 = [v51 statusPriorityValue];
LABEL_42:
  v141 = v106;
  v107 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v107);

LABEL_43:
  sub_1B7801C88();
  __break(1u);
}

uint64_t sub_1B770CC28(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v277 = a4;
  v278 = a1;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v7 = MEMORY[0x1EEE9AC00](v308);
  v9 = &v273 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v273 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v301 = &v273 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v300 = &v273 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v309 = &v273 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v273 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v280 = &v273 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v279 = &v273 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v283 = &v273 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v282 = &v273 - v28;
  v29 = sub_1B77FF988();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v318 = &v273 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v313 = &v273 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v306 = &v273 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v312 = &v273 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v311 = &v273 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v305 = &v273 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v310 = &v273 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v294 = &v273 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v302 = &v273 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v290 = &v273 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v285 = &v273 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v289 = &v273 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v288 = &v273 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v284 = &v273 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v287 = &v273 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v295 = &v273 - v61;
  v319 = type metadata accessor for Order.PriorityInfo(0);
  v62 = MEMORY[0x1EEE9AC00](v319);
  v64 = &v273 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v62);
  v66 = MEMORY[0x1EEE9AC00](v65);
  v296 = &v273 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v303 = &v273 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v275 = &v273 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v274 = &v273 - v73;
  v297 = a3;
  v74 = *(a3 + 8);
  if (v74 >= 1)
  {
    v325 = v72;
    v291 = v11;
    v75 = 0;
    v324 = (v30 + 8);
    v321 = (v30 + 32);
    v315 = (v30 + 56);
    v316 = (v30 + 16);
    v314 = (v30 + 48);
    v76 = MEMORY[0x1E69E7CC0];
    v307 = v9;
    v304 = v21;
    v5 = v319;
    v320 = v64;
LABEL_4:
    v21 = v75 + 1;
    v281 = v75;
    if (v75 + 1 >= v74)
    {
      v146 = v277;
      v85 = v309;
      goto LABEL_46;
    }

    v292 = v74;
    v276 = v76;
    v77 = *v297;
    v78 = *(*v297 + 8 * v21);
    v286 = (8 * v75);
    v79 = &v77[v75];
    v80 = *v79;
    v21 = (v79 + 2);
    v81 = v78;
    v323 = v80;
    v4 = v274;
    ManagedOrder.priority.getter(v274);
    v82 = v275;
    ManagedOrder.priority.getter(v275);
    v83 = v295;
    sub_1B77FF938();
    a3 = v21;
    LODWORD(v293) = Order.PriorityInfo.isHigherPriority(than:now:)(v82, v83);
    v326 = *v324;
    v326(v83, v29);
    sub_1B770F54C(v82);
    sub_1B770F54C(v4);

    v84 = (v75 + 2);
    v85 = v309;
    v86 = v291;
    v5 = &selRef_heroImageAttributionName;
    while (1)
    {
      v89 = v292;
      if (v292 == v84)
      {
LABEL_37:
        v146 = v277;
        v147 = v286;
        v76 = v276;
        v5 = v319;
        if (v293)
        {
          v148 = v281;
          if (v89 < v281)
          {
            goto LABEL_175;
          }

          if (v281 < v89)
          {
            v149 = 8 * v89 - 8;
            v150 = v89;
            do
            {
              if (v148 != --v150)
              {
                v151 = *v297;
                if (!*v297)
                {
                  goto LABEL_181;
                }

                v152 = *&v147[v151];
                *&v147[v151] = *(v151 + v149);
                *(v151 + v149) = v152;
              }

              ++v148;
              v149 -= 8;
              v147 += 8;
            }

            while (v148 < v150);
          }
        }

        v21 = v89;
LABEL_46:
        v153 = v297[1];
        if (v21 >= v153)
        {
          goto LABEL_91;
        }

        if (__OFSUB__(v21, v281))
        {
          goto LABEL_174;
        }

        if (v21 - v281 >= v146)
        {
          goto LABEL_91;
        }

        v154 = (v281 + v146);
        if (__OFADD__(v281, v146))
        {
          goto LABEL_176;
        }

        if (v154 >= v153)
        {
          v154 = v297[1];
        }

        if (v154 >= v281)
        {
          if (v21 == v154)
          {
            goto LABEL_91;
          }

          v276 = v76;
          v317 = *v297;
          v155 = &v317[v21 - 1];
          v156 = v281 - v21;
          v157 = v5;
          v286 = v154;
          while (2)
          {
            v298 = v21;
            v158 = v317[v21];
            v292 = v156;
            v293 = v155;
            v21 = v318;
            while (2)
            {
              v322 = v156;
              v159 = *v155;
              v4 = v158;
              v326 = v159;
              v5 = &selRef_heroImageAttributionName;
              v160 = [v4 statusPriorityValue];
              v323 = v4;
              if (v160 == -1)
              {
                goto LABEL_63;
              }

              v161 = [v4 statusPriorityValue];
              if (v161 >= 0xA)
              {
                goto LABEL_186;
              }

              v162 = v161;
              v163 = [v4 orderContentUpdatedDate];
              if (!v163)
              {
LABEL_63:
                v174 = [v4 ecommerceOrderContent];
                if (!v174)
                {
                  goto LABEL_188;
                }

                v175 = v174;
                ManagedECommerceOrderContent.priorityInfo.getter(v325);
              }

              else
              {
                v164 = v85;
                v165 = v305;
                v166 = v163;
                sub_1B77FF928();

                v167 = *v321;
                v168 = v310;
                (*v321)(v310, v165, v29);
                v169 = v29;
                (*v316)(v311, v168, v29);
                v170 = [v4 priorityEstimatedCompletionDate];
                if (v170)
                {
                  v171 = v304;
                  v172 = v170;
                  sub_1B77FF928();

                  v173 = 0;
                }

                else
                {
                  v173 = 1;
                  v171 = v304;
                }

                (*v324)(v310, v169);
                (*v315)(v171, v173, 1, v169);
                v176 = v325;
                v167(v325, v311, v169);
                v157 = v319;
                *(v176 + *(v319 + 20)) = v162;
                v177 = v171;
                v29 = v169;
                sub_1B7205340(v177, v176 + *(v157 + 24));
                v21 = v318;
                v85 = v164;
                v5 = &selRef_heroImageAttributionName;
                v64 = v320;
              }

              v4 = v326;
              if ([v326 statusPriorityValue] == -1)
              {
                goto LABEL_72;
              }

              v178 = [v4 statusPriorityValue];
              if (v178 >= 0xA)
              {
LABEL_186:
                v328 = 0;
                v329 = 0xE000000000000000;
                sub_1B7801A78();

                v328 = 0xD000000000000022;
                v329 = 0x80000001B787F490;
                v271 = [v4 statusPriorityValue];
                goto LABEL_187;
              }

              v179 = v178;
              v180 = [v4 orderContentUpdatedDate];
              if (!v180)
              {
LABEL_72:
                v189 = [v4 ecommerceOrderContent];
                if (!v189)
                {
                  goto LABEL_188;
                }

                v190 = v189;
                ManagedECommerceOrderContent.priorityInfo.getter(v64);
              }

              else
              {
                v181 = v306;
                v182 = v180;
                sub_1B77FF928();

                v183 = *v321;
                v184 = v312;
                (*v321)(v312, v181, v29);
                (*v316)(v313, v184, v29);
                v185 = [v4 priorityEstimatedCompletionDate];
                if (v185)
                {
                  v186 = v85;
                  v187 = v185;
                  sub_1B77FF928();

                  v188 = 0;
                }

                else
                {
                  v188 = 1;
                  v186 = v85;
                }

                (*v324)(v312, v29);
                (*v315)(v186, v188, 1, v29);
                v191 = v320;
                v183(v320, v313, v29);
                v64 = v191;
                v157 = v319;
                v191[*(v319 + 20)] = v179;
                sub_1B7205340(v186, &v191[*(v157 + 24)]);
                v85 = v186;
                v21 = v318;
                v4 = v326;
              }

              sub_1B77FF938();
              v192 = *(v157 + 20);
              v193 = word_1B7860BEA[v325[v192]];
              v194 = word_1B7860BEA[v64[v192]];
              if (v193 == v194)
              {
                v195 = *(v157 + 24);
                v196 = v64;
                v197 = *(v308 + 48);
                v198 = v307;
                sub_1B7280900(&v325[v195], v307);
                sub_1B7280900(&v196[v195], v198 + v197);
                v199 = *v314;
                if ((*v314)(v198, 1, v29) == 1)
                {
                  v200 = v199(v198 + v197, 1, v29);
                  v4 = v326;
                  if (v200 == 1)
                  {
                    v201 = v325;
                    v64 = v320;
                    a3 = sub_1B77FF8C8();
                    sub_1B7205418(v198, &qword_1EB98EBD0);
                    v85 = v309;
                    v21 = v318;
                    v5 = v319;
                    goto LABEL_85;
                  }

LABEL_83:
                  v201 = v325;
                  v203 = v301;
                  sub_1B7280900(&v325[v195], v301);
                  a3 = v199(v203, 1, v29) != 1;
                  sub_1B7205418(v203, &qword_1EB98EBD0);
                  sub_1B7205418(v198, &qword_1EB98FCE0);
                  v85 = v309;
                  v5 = v319;
                  v64 = v320;
                  v21 = v318;
                }

                else
                {
                  v202 = v300;
                  sub_1B7280900(v198, v300);
                  if (v199(v198 + v197, 1, v29) == 1)
                  {
                    (*v324)(v202, v29);
                    v4 = v326;
                    goto LABEL_83;
                  }

                  v204 = *v321;
                  v205 = v295;
                  (*v321)(v295, v202, v29);
                  v206 = (v198 + v197);
                  v207 = v294;
                  v204(v294, v206, v29);
                  v208 = v318;
                  sub_1B77FF808();
                  v210 = fabs(v209);
                  sub_1B77FF808();
                  v212 = fabs(v211);
                  v213 = *v324;
                  (*v324)(v207, v29);
                  v213(v205, v29);
                  a3 = v210 < v212;
                  sub_1B7205418(v198, &qword_1EB98EBD0);
                  v21 = v208;
                  v85 = v309;
                  v5 = v319;
                  v64 = v320;
                  v201 = v325;
                  v4 = v326;
                }
              }

              else
              {
                v5 = v157;
                a3 = v194 < v193;
                v201 = v325;
              }

LABEL_85:
              (*v324)(v21, v29);
              sub_1B770F54C(v64);
              sub_1B770F54C(v201);

              if (a3)
              {
                v214 = v322;
                if (!v317)
                {
                  __break(1u);
LABEL_180:
                  __break(1u);
LABEL_181:
                  __break(1u);
LABEL_182:
                  __break(1u);
LABEL_183:
                  __break(1u);
LABEL_184:
                  __break(1u);
                  while (1)
                  {
LABEL_188:
                    sub_1B7801C88();
                    __break(1u);
LABEL_189:
                    v328 = 0;
                    v329 = 0xE000000000000000;
                    sub_1B7801A78();

                    v328 = 0xD000000000000022;
                    v329 = 0x80000001B787F490;
                    v271 = [v21 v5[437]];
LABEL_187:
                    v327 = v271;
                    v272 = sub_1B7802068();
                    MEMORY[0x1B8CA4D30](v272);
                  }
                }

                v157 = v5;
                v215 = *v155;
                v158 = *(v155 + 1);
                *v155 = v158;
                *(v155 + 1) = v215;
                v155 -= 8;
                v216 = __CFADD__(v214, 1);
                v156 = (v214 + 1);
                if (v216)
                {
                  goto LABEL_56;
                }

                continue;
              }

              break;
            }

            v157 = v5;
LABEL_56:
            v21 = (v298 + 1);
            v155 = v293 + 8;
            v156 = v292 - 1;
            if (v298 + 1 != v286)
            {
              continue;
            }

            break;
          }

          v21 = v286;
          v76 = v276;
LABEL_91:
          v217 = v281;
          if (v21 < v281)
          {
            goto LABEL_173;
          }

          v218 = v76;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v76 = v218;
          }

          else
          {
            v76 = sub_1B723E420(0, *(v218 + 2) + 1, 1, v218);
          }

          v220 = *(v76 + 2);
          v219 = *(v76 + 3);
          a3 = v220 + 1;
          if (v220 >= v219 >> 1)
          {
            v76 = sub_1B723E420((v219 > 1), v220 + 1, 1, v76);
          }

          *(v76 + 2) = a3;
          v221 = &v76[16 * v220];
          *(v221 + 4) = v217;
          *(v221 + 5) = v21;
          if (!*v278)
          {
            goto LABEL_183;
          }

          if (v220)
          {
            while (2)
            {
              v4 = a3 - 1;
              if (a3 >= 4)
              {
                v226 = &v76[16 * a3 + 32];
                v227 = *(v226 - 64);
                v228 = *(v226 - 56);
                v232 = __OFSUB__(v228, v227);
                v229 = v228 - v227;
                if (v232)
                {
                  goto LABEL_160;
                }

                v231 = *(v226 - 48);
                v230 = *(v226 - 40);
                v232 = __OFSUB__(v230, v231);
                v224 = v230 - v231;
                v225 = v232;
                if (v232)
                {
                  goto LABEL_161;
                }

                v233 = &v76[16 * a3];
                v235 = *v233;
                v234 = *(v233 + 1);
                v232 = __OFSUB__(v234, v235);
                v236 = v234 - v235;
                if (v232)
                {
                  goto LABEL_163;
                }

                v232 = __OFADD__(v224, v236);
                v237 = v224 + v236;
                if (v232)
                {
                  goto LABEL_166;
                }

                if (v237 >= v229)
                {
                  v255 = &v76[16 * v4 + 32];
                  v257 = *v255;
                  v256 = *(v255 + 1);
                  v232 = __OFSUB__(v256, v257);
                  v258 = v256 - v257;
                  if (v232)
                  {
                    goto LABEL_170;
                  }

                  if (v224 < v258)
                  {
                    v4 = a3 - 2;
                  }
                }

                else
                {
LABEL_111:
                  if (v225)
                  {
                    goto LABEL_162;
                  }

                  v238 = &v76[16 * a3];
                  v240 = *v238;
                  v239 = *(v238 + 1);
                  v241 = __OFSUB__(v239, v240);
                  v242 = v239 - v240;
                  v243 = v241;
                  if (v241)
                  {
                    goto LABEL_165;
                  }

                  v244 = &v76[16 * v4 + 32];
                  v246 = *v244;
                  v245 = *(v244 + 1);
                  v232 = __OFSUB__(v245, v246);
                  v247 = v245 - v246;
                  if (v232)
                  {
                    goto LABEL_168;
                  }

                  if (__OFADD__(v242, v247))
                  {
                    goto LABEL_169;
                  }

                  if (v242 + v247 < v224)
                  {
                    goto LABEL_125;
                  }

                  if (v224 < v247)
                  {
                    v4 = a3 - 2;
                  }
                }
              }

              else
              {
                if (a3 == 3)
                {
                  v222 = *(v76 + 4);
                  v223 = *(v76 + 5);
                  v232 = __OFSUB__(v223, v222);
                  v224 = v223 - v222;
                  v225 = v232;
                  goto LABEL_111;
                }

                v248 = &v76[16 * a3];
                v250 = *v248;
                v249 = *(v248 + 1);
                v232 = __OFSUB__(v249, v250);
                v242 = v249 - v250;
                v243 = v232;
LABEL_125:
                if (v243)
                {
                  goto LABEL_164;
                }

                v251 = &v76[16 * v4];
                v253 = *(v251 + 4);
                v252 = *(v251 + 5);
                v232 = __OFSUB__(v252, v253);
                v254 = v252 - v253;
                if (v232)
                {
                  goto LABEL_167;
                }

                if (v254 < v242)
                {
                  break;
                }
              }

              v259 = v4 - 1;
              if (v4 - 1 >= a3)
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

              if (!*v297)
              {
                goto LABEL_180;
              }

              v260 = v76;
              a3 = *&v76[16 * v259 + 32];
              v261 = *&v76[16 * v4 + 40];
              v262 = v299;
              sub_1B770E870((*v297 + 8 * a3), *v297 + 8 * *&v76[16 * v4 + 32], (*v297 + 8 * v261));
              v299 = v262;
              if (v262)
              {
              }

              if (v261 < a3)
              {
                goto LABEL_158;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v263 = v260;
              }

              else
              {
                v263 = sub_1B77E4CA4(v260);
              }

              v64 = v320;
              if (v259 >= *(v263 + 2))
              {
                goto LABEL_159;
              }

              v264 = &v263[16 * v259];
              *(v264 + 4) = a3;
              *(v264 + 5) = v261;
              v330 = v263;
              sub_1B77E4C18(v4);
              v76 = v330;
              a3 = *(v330 + 2);
              if (a3 <= 1)
              {
                break;
              }

              continue;
            }
          }

          v74 = v297[1];
          v75 = v21;
          if (v21 >= v74)
          {
            goto LABEL_145;
          }

          goto LABEL_4;
        }

LABEL_177:
        __break(1u);
LABEL_178:
        v266 = sub_1B77E4CA4(a3);
        goto LABEL_148;
      }

      v322 = v84;
      v90 = *(a3 - 8);
      v21 = *a3;
      v91 = v90;
      v92 = [v21 v5[437]];
      v323 = a3;
      v317 = v21;
      if (v92 == -1)
      {
        goto LABEL_14;
      }

      Order.StatusPriority.init(rawValue:)([v21 v5[437]], &v328);
      v93 = v328;
      if (v328 == 10)
      {
        goto LABEL_189;
      }

      v94 = [v21 orderContentUpdatedDate];
      if (!v94)
      {
LABEL_14:
        v104 = [v21 ecommerceOrderContent];
        if (!v104)
        {
          goto LABEL_188;
        }

        v105 = v104;
        ManagedECommerceOrderContent.priorityInfo.getter(v303);

        v21 = v309;
      }

      else
      {
        v95 = v91;
        v96 = v284;
        v97 = v94;
        sub_1B77FF928();

        v98 = *v321;
        v99 = v287;
        (*v321)(v287, v96, v29);
        (*v316)(v288, v99, v29);
        v100 = [v21 priorityEstimatedCompletionDate];
        if (v100)
        {
          v101 = v282;
          v102 = v100;
          sub_1B77FF928();

          v103 = 0;
        }

        else
        {
          v103 = 1;
          v101 = v282;
        }

        v21 = v309;
        v326(v287, v29);
        (*v315)(v101, v103, 1, v29);
        v106 = v303;
        v98(v303, v288, v29);
        v107 = v319;
        *(v106 + *(v319 + 20)) = v93;
        sub_1B7205340(v101, v106 + *(v107 + 24));
        v86 = v291;
        v64 = v320;
        v91 = v95;
        v5 = &selRef_heroImageAttributionName;
      }

      v108 = [v91 v5[437]];
      v298 = v91;
      if (v108 == -1)
      {
        goto LABEL_23;
      }

      Order.StatusPriority.init(rawValue:)([v91 v5[437]], &v328);
      v109 = v328;
      if (v328 == 10)
      {
        v328 = 0;
        v329 = 0xE000000000000000;
        sub_1B7801A78();

        v328 = 0xD000000000000022;
        v329 = 0x80000001B787F490;
        v271 = [v91 v5[437]];
        goto LABEL_187;
      }

      v110 = [v91 orderContentUpdatedDate];
      if (!v110)
      {
LABEL_23:
        v119 = [v91 ecommerceOrderContent];
        if (!v119)
        {
          goto LABEL_188;
        }

        v120 = v119;
        v121 = v296;
        ManagedECommerceOrderContent.priorityInfo.getter(v296);

        v122 = v319;
      }

      else
      {
        v111 = v285;
        v112 = v110;
        sub_1B77FF928();

        v113 = *v321;
        v114 = v289;
        (*v321)(v289, v111, v29);
        (*v316)(v290, v114, v29);
        v115 = [v91 priorityEstimatedCompletionDate];
        if (v115)
        {
          v116 = v283;
          v117 = v115;
          sub_1B77FF928();

          v118 = 0;
        }

        else
        {
          v118 = 1;
          v116 = v283;
        }

        v326(v289, v29);
        (*v315)(v116, v118, 1, v29);
        v121 = v296;
        v113(v296, v290, v29);
        v122 = v319;
        *(v121 + *(v319 + 20)) = v109;
        sub_1B7205340(v116, v121 + *(v122 + 24));
        v86 = v291;
        v64 = v320;
      }

      v123 = v303;
      sub_1B77FF938();
      v124 = *(v122 + 20);
      v125 = word_1B7860BEA[*(v123 + v124)];
      v126 = word_1B7860BEA[*(v121 + v124)];
      if (v125 == v126)
      {
        v127 = *(v122 + 24);
        v128 = v86;
        v129 = *(v308 + 48);
        sub_1B7280900(v123 + v127, v128);
        sub_1B7280900(v121 + v127, v128 + v129);
        v4 = v314;
        v130 = *v314;
        if ((*v314)(v128, 1, v29) != 1)
        {
          v132 = v29;
          v133 = v279;
          sub_1B7280900(v128, v279);
          if (v130(v128 + v129, 1, v132) != 1)
          {
            v137 = *v321;
            v138 = v295;
            (*v321)(v295, v133, v132);
            v139 = v294;
            v137(v294, (v128 + v129), v132);
            sub_1B77FF808();
            v141 = fabs(v140);
            sub_1B77FF808();
            v143 = fabs(v142);
            v144 = v139;
            v145 = v326;
            v326(v144, v132);
            v5 = &selRef_heroImageAttributionName;
            v145(v138, v132);
            v87 = v141 < v143;
            sub_1B7205418(v128, &qword_1EB98EBD0);
            v86 = v128;
            v29 = v132;
            v21 = v309;
            v64 = v320;
            v121 = v296;
            v123 = v303;
            goto LABEL_7;
          }

          v326(v133, v132);
          v86 = v128;
          v29 = v132;
          v21 = v309;
LABEL_33:
          v134 = v303;
          v135 = v280;
          sub_1B7280900(&v303[v127], v280);
          v136 = v130(v135, 1, v29);
          v123 = v134;
          v87 = v136 != 1;
          sub_1B7205418(v135, &qword_1EB98EBD0);
          sub_1B7205418(v86, &qword_1EB98FCE0);
          v64 = v320;
          v121 = v296;
          goto LABEL_7;
        }

        v131 = v130(v128 + v129, 1, v29);
        v86 = v128;
        if (v131 != 1)
        {
          goto LABEL_33;
        }

        v123 = v303;
        v121 = v296;
        v87 = sub_1B77FF8C8();
        sub_1B7205418(v128, &qword_1EB98EBD0);
        v64 = v320;
      }

      else
      {
        v87 = v126 < v125;
      }

LABEL_7:
      v326(v302, v29);
      sub_1B770F54C(v121);
      sub_1B770F54C(v123);

      v88 = v293 ^ v87;
      v84 = v322 + 1;
      a3 = (v323 + 8);
      v85 = v21;
      if (v88)
      {
        v89 = v322;
        goto LABEL_37;
      }
    }
  }

  v76 = MEMORY[0x1E69E7CC0];
LABEL_145:
  if (!*v278)
  {
    goto LABEL_184;
  }

  a3 = v76;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v299;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_178;
  }

  v266 = a3;
LABEL_148:
  v330 = v266;
  a3 = *(v266 + 2);
  if (a3 >= 2)
  {
    while (*v297)
    {
      v267 = *&v266[16 * a3];
      v268 = v266;
      v21 = *&v266[16 * a3 + 24];
      sub_1B770E870((*v297 + 8 * v267), *v297 + 8 * *&v266[16 * a3 + 16], (*v297 + 8 * v21));
      if (v4)
      {
      }

      if (v21 < v267)
      {
        goto LABEL_171;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v268 = sub_1B77E4CA4(v268);
      }

      if (a3 - 2 >= *(v268 + 2))
      {
        goto LABEL_172;
      }

      v269 = &v268[16 * a3];
      *v269 = v267;
      *(v269 + 1) = v21;
      v330 = v268;
      sub_1B77E4C18(a3 - 1);
      v266 = v330;
      a3 = *(v330 + 2);
      if (a3 <= 1)
      {
      }
    }

    goto LABEL_182;
  }
}

uint64_t sub_1B770E870(char *a1, uint64_t a2, id *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v122 = &v118[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v121 = &v118[-v10];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v125 = &v118[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v118[-v13];
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v14 = MEMORY[0x1EEE9AC00](v130);
  v16 = &v118[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v118[-v17];
  v132 = sub_1B77FF988();
  v135 = *(v132 - 8);
  v18 = MEMORY[0x1EEE9AC00](v132);
  v20 = &v118[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v123 = &v118[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v124 = &v118[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v138 = &v118[-v25];
  v26 = type metadata accessor for Order.PriorityInfo(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v118[-v29];
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v118[-v32];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v38 = a1;
  v40 = &v118[-v39];
  v41 = a2 - a1;
  v42 = v41 / 8;
  v140 = a3;
  v43 = a3 - v37;
  v44 = a3 - v37 + 7;
  if (a3 - v37 >= 0)
  {
    v44 = a3 - v37;
  }

  v45 = v44 >> 3;
  v134 = v36;
  v136 = v34;
  if (v42 < v44 >> 3)
  {
    v46 = v37;
    v47 = v38;
    if (v36 != v38 || &v38[8 * v42] <= v36)
    {
      v48 = v36;
      memmove(v36, v38, 8 * v42);
      v36 = v48;
    }

    v139 = &v36[8 * v42];
    v49 = v128;
    if (v41 < 8 || v46 >= v140)
    {
      v81 = v47;
      v51 = v134;
      goto LABEL_57;
    }

    v50 = v46;
    v51 = v134;
    v52 = v135 + 48;
    v127 = v135 + 32;
    v133 = (v135 + 8);
    v135 += 48;
    v131 = v33;
    v119 = v40;
    while (1)
    {
      v137 = v47;
      v53 = *v51;
      v54 = *v50;
      v55 = v53;
      ManagedOrder.priority.getter(v40);
      ManagedOrder.priority.getter(v33);
      sub_1B77FF938();
      v56 = *(v136 + 20);
      v57 = word_1B7860BEA[v40[v56]];
      v58 = word_1B7860BEA[*(v33 + v56)];
      if (v57 != v58)
      {
        v63 = v58 < v57;
        v62 = v132;
        goto LABEL_20;
      }

      v129 = v50;
      v134 = v51;
      v59 = *(v136 + 24);
      v60 = *(v130 + 48);
      sub_1B7280900(&v40[v59], v49);
      sub_1B7280900(v33 + v59, &v49[v60]);
      v61 = *v52;
      v62 = v132;
      if ((*v52)(v49, 1, v132) == 1)
      {
        break;
      }

      v66 = v120;
      sub_1B7280900(v49, v120);
      if (v61(&v49[v60], 1, v62) == 1)
      {
        (*v133)(v66, v62);
        v49 = v128;
        v40 = v119;
LABEL_17:
        v67 = v125;
        sub_1B7280900(&v40[v59], v125);
        v63 = v61(v67, 1, v62) != 1;
        sub_1B7205418(v67, &qword_1EB98EBD0);
        v64 = v49;
        v65 = &qword_1EB98FCE0;
LABEL_18:
        sub_1B7205418(v64, v65);
        v51 = v134;
        v50 = v129;
        goto LABEL_20;
      }

      v68 = *v127;
      v69 = v124;
      (*v127)(v124, v66, v62);
      v70 = v128;
      v71 = &v128[v60];
      v72 = v123;
      v68(v123, v71, v62);
      sub_1B77FF808();
      v74 = fabs(v73);
      sub_1B77FF808();
      v76 = fabs(v75);
      v77 = *v133;
      (*v133)(v72, v62);
      v77(v69, v62);
      v63 = v74 < v76;
      sub_1B7205418(v70, &qword_1EB98EBD0);
      v51 = v134;
      v50 = v129;
      v49 = v70;
      v40 = v119;
LABEL_20:
      (*v133)(v138, v62);
      v33 = v131;
      sub_1B770F54C(v131);
      sub_1B770F54C(v40);

      if ((v63 & 1) == 0)
      {
        v78 = v51;
        v79 = v137;
        v80 = v137 == v51++;
        v52 = v135;
        if (v80)
        {
          goto LABEL_26;
        }

LABEL_25:
        *v79 = *v78;
        goto LABEL_26;
      }

      v78 = v50;
      v79 = v137;
      v80 = v137 == v50++;
      v52 = v135;
      if (!v80)
      {
        goto LABEL_25;
      }

LABEL_26:
      v47 = v79 + 1;
      if (v51 >= v139 || v50 >= v140)
      {
        v81 = v47;
        goto LABEL_57;
      }
    }

    if (v61(&v49[v60], 1, v62) != 1)
    {
      goto LABEL_17;
    }

    v63 = sub_1B77FF8C8();
    v64 = v49;
    v65 = &qword_1EB98EBD0;
    goto LABEL_18;
  }

  v128 = v16;
  v137 = v38;
  v138 = v35;
  v51 = v36;
  v81 = v37;
  if (v36 != v37 || &v37[v45] <= v36)
  {
    memmove(v36, v37, 8 * v45);
  }

  v139 = &v51[v45];
  v82 = v132;
  if (v43 >= 8 && v81 > v137)
  {
    v120 = v135 + 32;
    v83 = (v135 + 8);
    v126 = v30;
    v127 = v20;
    v131 = v135 + 48;
    v125 = v135 + 8;
    while (1)
    {
      v129 = v81;
      v84 = v81 - 1;
      --v140;
      v85 = v139;
      v133 = v81 - 1;
      while (1)
      {
        v86 = *--v85;
        v87 = *v84;
        v88 = v86;
        v89 = v87;
        v135 = v88;
        ManagedOrder.priority.getter(v30);
        v90 = v30;
        v91 = v138;
        ManagedOrder.priority.getter(v138);
        sub_1B77FF938();
        v92 = *(v136 + 20);
        v93 = word_1B7860BEA[*(v90 + v92)];
        v94 = word_1B7860BEA[v91[v92]];
        if (v93 != v94)
        {
          v101 = v94 < v93;
          goto LABEL_47;
        }

        v95 = *(v136 + 24);
        v96 = *(v130 + 48);
        v97 = v128;
        sub_1B7280900(v90 + v95, v128);
        sub_1B7280900(&v91[v95], &v97[v96]);
        v98 = v82;
        v99 = *v131;
        if ((*v131)(v97, 1, v98) == 1)
        {
          v100 = v99(&v97[v96], 1, v98);
          v83 = v125;
          if (v100 == 1)
          {
            v90 = v126;
            v101 = sub_1B77FF8C8();
            v102 = v97;
            v103 = &qword_1EB98EBD0;
LABEL_45:
            sub_1B7205418(v102, v103);
            v51 = v134;
            v82 = v98;
            v20 = v127;
            goto LABEL_47;
          }

LABEL_44:
          v90 = v126;
          v105 = v122;
          sub_1B7280900(&v126[v95], v122);
          v101 = v99(v105, 1, v98) != 1;
          sub_1B7205418(v105, &qword_1EB98EBD0);
          v102 = v97;
          v103 = &qword_1EB98FCE0;
          goto LABEL_45;
        }

        v104 = v121;
        sub_1B7280900(v97, v121);
        if (v99(&v97[v96], 1, v98) == 1)
        {
          v83 = v125;
          (*v125)(v104, v98);
          goto LABEL_44;
        }

        v106 = *v120;
        (*v120)(v124, v104, v98);
        v107 = v123;
        v106(v123, &v97[v96], v98);
        v108 = v127;
        v109 = v124;
        sub_1B77FF808();
        v111 = fabs(v110);
        sub_1B77FF808();
        v113 = fabs(v112);
        v83 = v125;
        v114 = *v125;
        (*v125)(v107, v98);
        v114(v109, v98);
        v101 = v111 < v113;
        v115 = v97;
        v20 = v108;
        sub_1B7205418(v115, &qword_1EB98EBD0);
        v51 = v134;
        v82 = v98;
        v90 = v126;
LABEL_47:
        (*v83)(v20, v82);
        sub_1B770F54C(v138);
        sub_1B770F54C(v90);

        v30 = v90;
        if (v101)
        {
          break;
        }

        v84 = v133;
        if (v140 + 1 != v139)
        {
          *v140 = *v85;
        }

        --v140;
        v139 = v85;
        if (v85 <= v51)
        {
          v139 = v85;
          v81 = v129;
          goto LABEL_57;
        }
      }

      v116 = v133;
      if (v140 + 1 != v129)
      {
        *v140 = *v133;
      }

      if (v139 > v51)
      {
        v81 = v116;
        if (v116 > v137)
        {
          continue;
        }
      }

      v81 = v116;
      break;
    }
  }

LABEL_57:
  if (v81 != v51 || v81 >= (v51 + ((v139 - v51 + (v139 - v51 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v81, v51, 8 * (v139 - v51));
  }

  return 1;
}

uint64_t sub_1B770F4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletOrderRowViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B770F54C(uint64_t a1)
{
  v2 = type metadata accessor for Order.PriorityInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B770F640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a2 + 16);
  v24 = *(v9 + 16);
  v24(&v24 - v10, a1, v8);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  v25 = *(v9 + 32);
  v25(v14 + ((v13 + 16) & ~v13), v11, v8);
  aBlock[4] = sub_1B7716B38;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7418110;
  aBlock[3] = &block_descriptor_85;
  v15 = _Block_copy(aBlock);

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1B7801848();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C320);
  swift_dynamicCast();
  v17 = sub_1B7800DF8();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  v19 = aBlock[6];
  v24(v11, a1, v8);
  v20 = (v13 + 56) & ~v13;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v28;
  v21[4] = v27;
  v21[5] = v22;
  v21[6] = v19;
  v25(v21 + v20, v11, v8);

  swift_unknownObjectRetain();
  sub_1B759B5D0(0, 0, v18, &unk_1B7860DE0, v21);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B770F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C310);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a2 + 16);
  v24 = *(v9 + 16);
  v24(&v24 - v10, a1, v8);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  v25 = *(v9 + 32);
  v25(v14 + ((v13 + 16) & ~v13), v11, v8);
  aBlock[4] = sub_1B7716980;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7418110;
  aBlock[3] = &block_descriptor_73_0;
  v15 = _Block_copy(aBlock);

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1B7801848();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C300);
  swift_dynamicCast();
  v17 = sub_1B7800DF8();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  v19 = aBlock[6];
  v24(v11, a1, v8);
  v20 = (v13 + 56) & ~v13;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v28;
  v21[4] = v27;
  v21[5] = v22;
  v21[6] = v19;
  v25(v21 + v20, v11, v8);

  swift_unknownObjectRetain();
  sub_1B759B5D0(0, 0, v18, &unk_1B7860DB0, v21);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B770FD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C308);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a2 + 16);
  v24 = *(v9 + 16);
  v24(&v24 - v10, a1, v8);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  v25 = *(v9 + 32);
  v25(v14 + ((v13 + 16) & ~v13), v11, v8);
  aBlock[4] = sub_1B77167DC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7418110;
  aBlock[3] = &block_descriptor_61;
  v15 = _Block_copy(aBlock);

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1B7801848();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C300);
  swift_dynamicCast();
  v17 = sub_1B7800DF8();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  v19 = aBlock[6];
  v24(v11, a1, v8);
  v20 = (v13 + 56) & ~v13;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v28;
  v21[4] = v27;
  v21[5] = v22;
  v21[6] = v19;
  v25(v21 + v20, v11, v8);

  swift_unknownObjectRetain();
  sub_1B759B5D0(0, 0, v18, &unk_1B7860D88, v21);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7710060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a2 + 16);
  v24 = *(v9 + 16);
  v24(&v24 - v10, a1, v8);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  v25 = *(v9 + 32);
  v25(v14 + ((v13 + 16) & ~v13), v11, v8);
  aBlock[4] = sub_1B77166A8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7418110;
  aBlock[3] = &block_descriptor_49;
  v15 = _Block_copy(aBlock);

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1B7801848();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C300);
  swift_dynamicCast();
  v17 = sub_1B7800DF8();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  v19 = aBlock[6];
  v24(v11, a1, v8);
  v20 = (v13 + 56) & ~v13;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v28;
  v21[4] = v27;
  v21[5] = v22;
  v21[6] = v19;
  v25(v21 + v20, v11, v8);

  swift_unknownObjectRetain();
  sub_1B759B5D0(0, 0, v18, &unk_1B7860D68, v21);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B77103C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998280);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a2 + 16);
  v24 = *(v9 + 16);
  v24(&v24 - v10, a1, v8);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  v25 = *(v9 + 32);
  v25(v14 + ((v13 + 16) & ~v13), v11, v8);
  aBlock[4] = sub_1B77160BC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7418110;
  aBlock[3] = &block_descriptor_37;
  v15 = _Block_copy(aBlock);

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1B7801848();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994428);
  swift_dynamicCast();
  v17 = sub_1B7800DF8();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  v19 = aBlock[6];
  v24(v11, a1, v8);
  v20 = (v13 + 56) & ~v13;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v28;
  v21[4] = v27;
  v21[5] = v22;
  v21[6] = v19;
  v25(v21 + v20, v11, v8);

  swift_unknownObjectRetain();
  sub_1B759B5D0(0, 0, v18, &unk_1B7860D08, v21);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7710720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a2 + 16);
  v24 = *(v9 + 16);
  v24(&v24 - v10, a1, v8);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  v25 = *(v9 + 32);
  v25(v14 + ((v13 + 16) & ~v13), v11, v8);
  aBlock[4] = sub_1B7715F08;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7418110;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_1B7801848();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2E0);
  swift_dynamicCast();
  v17 = sub_1B7800DF8();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  v19 = aBlock[6];
  v24(v11, a1, v8);
  v20 = (v13 + 56) & ~v13;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v28;
  v21[4] = v27;
  v21[5] = v22;
  v21[6] = v19;
  v25(v21 + v20, v11, v8);

  swift_unknownObjectRetain();
  sub_1B759B5D0(0, 0, v18, &unk_1B7860CE8, v21);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7710A80(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  return sub_1B7800CF8();
}

uint64_t sub_1B7710ADC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a7;
  v7[2] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_1B7710BD8;

  return v10();
}

uint64_t sub_1B7710BD8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B7710D64;
  }

  else
  {
    v2 = sub_1B7710CEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7710CEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318);
  sub_1B7800D08();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7710D64()
{
  v0[3] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318);
  sub_1B7800CF8();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7710DEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[2] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[7] = v8;
  *v8 = v7;
  v8[1] = sub_1B7710EF0;

  return (v10)(v7 + 3, v7 + 2);
}

uint64_t sub_1B7710EF0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B771108C;
  }

  else
  {
    v2 = sub_1B7711004;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7711004()
{
  v0[5] = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C310);
  sub_1B7800D08();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B771108C()
{
  v0[4] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C310);
  sub_1B7800CF8();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7711114(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7F8);
  v7[5] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[6] = v10;
  v7[2] = a6;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v7[7] = v11;
  *v11 = v7;
  v11[1] = sub_1B7711274;

  return (v13)(v10, v7 + 2);
}

uint64_t sub_1B7711274()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B7711444;
  }

  else
  {
    v2 = sub_1B7711388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7711388()
{
  v1 = v0[6];
  sub_1B7716910(v1, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C308);
  sub_1B7800D08();
  sub_1B7205418(v1, &qword_1EB98F7F8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B7711444()
{
  v0[3] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C308);
  sub_1B7800CF8();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B77114DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a7;
  v7[6] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[9] = v8;
  *v8 = v7;
  v8[1] = sub_1B77115E0;

  return (v10)(v7 + 2, v7 + 6);
}

uint64_t sub_1B77115E0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B771178C;
  }

  else
  {
    v2 = sub_1B77116F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B77116F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = v1;
  v0[5] = v2;
  sub_1B7228588(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2F8);
  sub_1B7800D08();
  sub_1B72380B8(v0[2], v0[3]);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B771178C()
{
  v0[7] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2F8);
  sub_1B7800CF8();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7711814(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[2] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[7] = v8;
  *v8 = v7;
  v8[1] = sub_1B7711918;

  return (v10)(v7 + 3, v7 + 2);
}

uint64_t sub_1B7711918()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B7711AB4;
  }

  else
  {
    v2 = sub_1B7711A2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7711A2C()
{
  v0[5] = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998280);
  sub_1B7800D08();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7711AB4()
{
  v0[4] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998280);
  sub_1B7800CF8();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7711B3C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[2] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[7] = v8;
  *v8 = v7;
  v8[1] = sub_1B7711C40;

  return (v10)(v7 + 3, v7 + 2);
}

uint64_t sub_1B7711C40()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B7711DDC;
  }

  else
  {
    v2 = sub_1B7711D54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7711D54()
{
  v0[5] = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2D8);
  sub_1B7800D08();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7711DDC()
{
  v0[4] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2D8);
  sub_1B7800CF8();
  v1 = v0[1];

  return v1();
}

uint64_t FinancialInsightsService.financialInsights(for:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_1B77FFA18();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2B8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7711F74, 0, 0);
}

unint64_t sub_1B7711F74()
{
  v30 = v0;
  v1 = *(v0 + 120);
  result = sub_1B720281C(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  *(v0 + 176) = v3;
  if (v3 >> 62)
  {
    v24 = result;
    v25 = sub_1B7801958();
    result = v24;
    *(v0 + 184) = v25;
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_22:
    v26 = result;

    v27 = *(v0 + 8);

    return v27(v26);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 184) = v4;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  *(v0 + 200) = 0;
  *(v0 + 208) = result;
  *(v0 + 192) = result;
  v5 = *(v0 + 176);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B8CA5DC0](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v5 + 32);
  }

  *(v0 + 216) = v6;
  *(v0 + 224) = 1;
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), v7);
  [*(v6 + 16) auditToken];
  (*(v8 + 8))(&v28, *(v0 + 60), *(v0 + 68), *(v0 + 76), *(v0 + 84), v7, v8);
  *(v0 + 41) = *&v29[9];
  v9 = *v29;
  *(v0 + 16) = v28;
  *(v0 + 32) = v9;
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);

  sub_1B71B4F10(v0 + 16);
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1280070990;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  if (qword_1EDAF6568 != -1)
  {
    swift_once();
  }

  v14 = sub_1B78000B8();
  __swift_project_value_buffer(v14, qword_1EDAF6570);

  v15 = sub_1B7800098();
  v16 = sub_1B78011B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v28 = v18;
    *v17 = 136315138;
    v19 = sub_1B71A3EF8(v12, v13, &v28);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_1B7198000, v15, v16, "Extension (%s) found.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
    MEMORY[0x1B8CA7A40](v17, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 112);
  v21 = swift_allocObject();
  *(v0 + 232) = v21;
  *(v21 + 16) = v20;
  *(v0 + 96) = v6;

  v22 = swift_task_alloc();
  *(v0 + 240) = v22;
  v22[2] = v0 + 96;
  v22[3] = &unk_1B7860C20;
  v22[4] = v21;
  v23 = swift_task_alloc();
  *(v0 + 248) = v23;
  *v23 = v0;
  v23[1] = sub_1B7712370;

  return sub_1B72B98D8(&unk_1B7860C28);
}

uint64_t sub_1B7712370(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_1B7712D7C;
  }

  else
  {

    v4 = sub_1B7712494;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7712494()
{
  v85 = v0;
  v1 = v0;
  v2 = 0;
  v3 = v0[32];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v77 = v0[32];
  v7 = -1;
  v8 = -1 << *(v77 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[24];
  v82 = v1;
  v78 = v10;
  for (i = v5; ; v5 = i)
  {
    v80 = v11;
    if (!v9)
    {
      if (v10 <= (v2 + 1))
      {
        v18 = v2 + 1;
      }

      else
      {
        v18 = v10;
      }

      v19 = v18 - 1;
      while (1)
      {
        v17 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v17 >= v10)
        {
          v55 = v1[20];
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C0);
          (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
          v9 = 0;
          v2 = v19;
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v17);
        ++v2;
        if (v9)
        {
          v81 = v12;
          v2 = v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v81 = v12;
    v17 = v2;
LABEL_16:
    v21 = v1[19];
    v20 = v1[20];
    v23 = v1[16];
    v22 = v1[17];
    v24 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v25 = v24 | (v17 << 6);
    (*(v22 + 16))(v21, *(v77 + 48) + *(v22 + 72) * v25, v23);
    v26 = *(*(v77 + 56) + 8 * v25);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C0);
    v28 = *(v27 + 48);
    (*(v22 + 32))(v20, v21, v23);
    *(v20 + v28) = v26;
    (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
    v1 = v82;

    v12 = v81;
LABEL_17:
    v29 = v1[21];
    sub_1B7715B78(v1[20], v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C0);
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {
      break;
    }

    v19 = v1[18];
    v31 = *(v1[21] + *(v30 + 48));
    (*(v1[17] + 32))(v19);
    sub_1B71F4844(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[13] = v13;
    v34 = sub_1B72454E8(v19);
    v35 = v13[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_68;
    }

    v38 = v33;
    if (v13[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v1[13];
        if (v33)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1B725CBFC();
        v13 = v1[13];
        if (v38)
        {
          goto LABEL_27;
        }
      }

LABEL_25:
      v42 = v1[17];
      v41 = v1[18];
      v43 = v1[16];
      v13[(v34 >> 6) + 8] |= 1 << v34;
      (*(v42 + 16))(v13[6] + *(v42 + 72) * v34, v41, v43);
      *(v13[7] + 8 * v34) = MEMORY[0x1E69E7CC0];
      v44 = v13[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_72;
      }

      v13[2] = v46;
      goto LABEL_27;
    }

    v19 = v1[18];
    sub_1B7249A68(v37, isUniquelyReferenced_nonNull_native);
    v39 = sub_1B72454E8(v19);
    if ((v38 & 1) != (v40 & 1))
    {

      return sub_1B78021C8();
    }

    v34 = v39;
    v13 = v1[13];
    if ((v38 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:
    v19 = v13[7];
    v47 = *(v31 + 16);
    v48 = *(v19 + 8 * v34);
    v1 = v48[2];
    v49 = v1 + v47;
    if (__OFADD__(v1, v47))
    {
      goto LABEL_69;
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 8 * v34) = v48;
    if (!v50 || v49 > v48[3] >> 1)
    {
      if (v1 <= v49)
      {
        v51 = v1 + v47;
      }

      else
      {
        v51 = v1;
      }

      v48 = sub_1B723F29C(v50, v51, 1, v48);
      *(v19 + 8 * v34) = v48;
    }

    v1 = v82;
    if (*(v31 + 16))
    {
      v1 = v48[2];
      v52 = (v48[3] >> 1) - v1;
      type metadata accessor for Transaction.Insight(0);
      if (v52 < v47)
      {
        goto LABEL_71;
      }

      swift_arrayInitWithCopy();

      v1 = v82;
      if (v47)
      {
        v53 = v48[2];
        v45 = __OFADD__(v53, v47);
        v54 = v53 + v47;
        if (v45)
        {
          goto LABEL_73;
        }

        v48[2] = v54;
      }
    }

    else
    {

      if (v47)
      {
        goto LABEL_70;
      }
    }

    v15 = v1[17];
    v14 = v1[18];
    v16 = v1[16];
    *(v19 + 8 * v34) = v48;
    (*(v15 + 8))(v14, v16);
    v12 = sub_1B74EACF4;
    v11 = v13;
    v10 = v78;
  }

  v57 = v1[28];
  v58 = v1[23];

  if (v57 != v58)
  {
    v2 = v1[28];
    v1[25] = v12;
    v1[26] = v80;
    v1[24] = v13;
    v61 = v1[22];
    if ((v61 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B8CA5DC0](v2);
    }

    else
    {
      if (v2 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v19 = *(v61 + 8 * v2 + 32);
    }

    v1[27] = v19;
    v1[28] = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      v62 = *(v19 + 48);
      v63 = *(v19 + 56);
      __swift_project_boxed_opaque_existential_1((v19 + 24), v62);
      [*(v19 + 16) auditToken];
      (*(v63 + 8))(&v83, *(v1 + 60), *(v1 + 68), *(v1 + 76), *(v1 + 84), v62, v63);
      *(v1 + 41) = *&v84[9];
      v64 = *v84;
      *(v1 + 1) = v83;
      *(v1 + 2) = v64;
      v66 = v1[3];
      v65 = v1[4];

      sub_1B71B4F10((v1 + 2));
      if (v65)
      {
        v9 = v66;
      }

      else
      {
        v9 = 1280070990;
      }

      if (v65)
      {
        v2 = v65;
      }

      else
      {
        v2 = 0xE400000000000000;
      }

      if (qword_1EDAF6568 == -1)
      {
        goto LABEL_61;
      }

      goto LABEL_75;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
LABEL_61:
    v67 = sub_1B78000B8();
    __swift_project_value_buffer(v67, qword_1EDAF6570);

    v68 = sub_1B7800098();
    v69 = sub_1B78011B8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v83 = v71;
      *v70 = 136315138;
      v72 = sub_1B71A3EF8(v9, v2, &v83);

      *(v70 + 4) = v72;
      _os_log_impl(&dword_1B7198000, v68, v69, "Extension (%s) found.", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1B8CA7A40](v71, -1, -1);
      MEMORY[0x1B8CA7A40](v70, -1, -1);
    }

    else
    {
    }

    v73 = v1[14];
    v74 = swift_allocObject();
    v1[29] = v74;
    *(v74 + 16) = v73;
    v1[12] = v19;

    v75 = swift_task_alloc();
    v1[30] = v75;
    v75[2] = v1 + 12;
    v75[3] = &unk_1B7860C20;
    v75[4] = v74;
    v76 = swift_task_alloc();
    v1[31] = v76;
    *v76 = v1;
    v76[1] = sub_1B7712370;

    return sub_1B72B98D8(&unk_1B7860C28);
  }

  sub_1B71F4844(v12);

  v60 = v1[1];

  return v60(v80);
}

uint64_t sub_1B7712D7C()
{
  v1 = *(v0 + 200);

  sub_1B71F4844(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7712E4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v3[23] = swift_task_alloc();
  v5 = sub_1B77FFA18();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = *(type metadata accessor for InternalTransaction(0) - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C8);
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v3[33] = v7;
  v3[34] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B7713024, 0, 0);
}

uint64_t sub_1B7713024()
{
  v1 = v0 + 160;
  v2 = *(v0 + 176);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 224);
    sub_1B7801B98();
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v8 = *(v0 + 232);
      v7 = *(v0 + 240);
      sub_1B7716054(v5, v7, type metadata accessor for InternalTransaction);
      sub_1B7716054(v7, v8, type metadata accessor for InternalTransaction);
      v9 = type metadata accessor for InternalTransaction.XPC(0);
      v10 = objc_allocWithZone(v9);
      sub_1B7716054(v8, v10 + OBJC_IVAR___XPCInternalTransaction_value, type metadata accessor for InternalTransaction);
      *(v0 + 144) = v10;
      *(v0 + 152) = v9;
      objc_msgSendSuper2((v0 + 144), sel_init);
      sub_1B73B4A74(v8);
      sub_1B73B4A74(v7);
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v5 += v6;
      --v3;
    }

    while (v3);
    v1 = v0 + 160;
  }

  v11 = *(v0 + 264);
  v17 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 256);
  type metadata accessor for InternalTransaction.XPC(0);
  v14 = sub_1B7800C18();
  *(v0 + 280) = v14;

  *(v0 + 16) = v0;
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1B771330C;
  swift_continuation_init();
  *(v0 + 136) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2D0);
  sub_1B7800CE8();
  (*(v13 + 32))(boxed_opaque_existential_1, v11, v12);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B771394C;
  *(v0 + 104) = &block_descriptor_31_0;
  [v17 financialInsightsFor:v14 completionHandler:v0 + 80];
  (*(v13 + 8))(boxed_opaque_existential_1, v12);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B771330C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B77133EC, 0, 0);
}

uint64_t sub_1B77133EC()
{
  v1 = v0[25];
  v2 = v0[20];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[20] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v63 = (v1 + 48);
  v60 = (v1 + 32);
  v61 = (v1 + 16);
  v58 = (v1 + 8);
  v59 = v0[25];
  v64 = v0[20];

  v10 = 0;
  v62 = MEMORY[0x1E69E7CC8];
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v13 = v0[23];
    v12 = v0[24];
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(*(v64 + 56) + 8 * (v14 | (v11 << 6)));

    v16 = v15;
    sub_1B77FF998();
    if ((*v63)(v13, 1, v12) == 1)
    {
      v17 = v0[23];

      sub_1B7205418(v17, &unk_1EB993A10);
      v10 = v11;
    }

    else
    {
      v18 = v0[26];
      v19 = v0[27];
      v20 = v0[24];
      v55 = v0;
      (*v60)(v19, v0[23], v20);
      v21 = *v61;
      (*v61)(v18, v19, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9900B8);
      v22 = *(type metadata accessor for Transaction.Insight(0) - 8);
      v23 = v16;
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1B7807CD0;
      v54 = v23;
      v53 = v25;
      sub_1B7716054(v23 + OBJC_IVAR___XPCTransactionInsight_value, v25 + v24, type metadata accessor for Transaction.Insight);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = sub_1B72454E8(v18);
      v29 = v62[2];
      v30 = (v27 & 1) == 0;
      result = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      v32 = v27;
      v52 = v21;
      if (v62[3] >= result)
      {
        v36 = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B725CBFC();
          v36 = v59;
        }

        v0 = v55;
      }

      else
      {
        v33 = v55[26];
        sub_1B7249A68(result, isUniquelyReferenced_nonNull_native);
        v34 = sub_1B72454E8(v33);
        if ((v32 & 1) != (v35 & 1))
        {
LABEL_26:

          return sub_1B78021C8();
        }

        v28 = v34;
        v0 = v55;
        v36 = v59;
      }

      v37 = v0[26];
      v38 = v0[27];
      v39 = v0[24];
      if (v32)
      {
        *(v62[7] + 8 * v28) = v53;
        v56 = v37;

        v40 = *v58;
        (*v58)(v56, v39);
        v40(v38, v39);
        v10 = v11;
      }

      else
      {
        v41 = v0[24];
        v51 = v41;
        v62[(v28 >> 6) + 8] |= 1 << v28;
        v42 = v37;
        v57 = v38;
        v43 = v36;
        v52(v62[6] + *(v36 + 72) * v28, v37, v41);
        *(v62[7] + 8 * v28) = v53;

        v44 = *(v43 + 8);
        v44(v42, v51);
        result = (v44)(v57, v51);
        v45 = v62[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_30;
        }

        v62[2] = v47;
        v10 = v11;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v48 = v0[35];
  v49 = v0[21];

  *v49 = v62;

  v50 = v0[1];

  return v50();
}