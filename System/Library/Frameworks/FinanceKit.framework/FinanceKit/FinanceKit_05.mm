uint64_t static ManagedInternalAccountBalance.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98E958 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B7226FCC()
{
  if (qword_1EB98E958 != -1)
  {
    swift_once();
  }
}

id sub_1B7227028(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = [objc_allocWithZone(v4) initWithContext_];
  v19 = [a1 lastUpdated];
  if (v19)
  {
    v20 = v19;
    sub_1B77FF928();

    v32 = v18;
    v21 = a1;
    v22 = a3;
    v23 = a2;
    v24 = *(v12 + 32);
    v24(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v24(v17, v10, v11);
    a2 = v23;
    a3 = v22;
    a1 = v21;
    v18 = v32;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1B77FF938();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1B7205418(v10, &qword_1EB98EBD0);
    }
  }

  v25 = sub_1B77FF8B8();
  (*(v12 + 8))(v17, v11);
  [v18 setLastUpdatedAt_];

  type metadata accessor for ManagedAccountBalance();
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = sub_1B7264400(v26, v27, v28);
  [v18 setPublicAccountBalanceObject_];

  return v18;
}

uint64_t sub_1B722738C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72273F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7227454(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

id InternalAccountBalanceResult.token.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1B72274E8(v2, v3);
}

id sub_1B72274E8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1B7227500(result, a2 & 1);
  }

  return result;
}

id sub_1B7227500(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t InternalAccountBalanceResult.init(token:accountBalances:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  return result;
}

uint64_t FinanceStore.internalAccountBalances(for:since:isMonitoring:)(uint64_t a1, uint64_t a2, int a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v31 - v9;
  v11 = *a2;
  v12 = *(a2 + 8);
  static DeviceInfo.deviceType.getter(v36);
  if (LOBYTE(v36[0]))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
  }

  else
  {
    v37 = a3;
    v14 = *(v3 + 16);
    v15 = type metadata accessor for FinanceStore();
    v36[3] = v15;
    v36[4] = &off_1F2F66960;
    v36[0] = v3;
    sub_1B7227AFC(a1, v10);
    sub_1B719B06C(v36, v34);
    v16 = *(v14 + 16);

    sub_1B72274E8(v11, v12);
    os_unfair_lock_lock((v16 + 24));
    if (*(v16 + 16))
    {
      v32 = *(v16 + 16);
    }

    else
    {
      v17 = sub_1B73ADA9C();
      *(v16 + 16) = v17;
      v32 = v17;
    }

    os_unfair_lock_unlock((v16 + 24));
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](v18);
    v20 = (v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v33[3] = v15;
    v33[4] = &off_1F2F66960;
    v33[0] = v22;
    type metadata accessor for InternalAccountBalanceAsyncSequence();
    v4 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
    MEMORY[0x1EEE9AC00](v23);
    v25 = (v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v25;
    v28 = (v4 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyProvider);
    v28[3] = v15;
    v28[4] = &off_1F2F66960;
    *v28 = v27;
    sub_1B7227B6C(v10, v4 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_accountID);
    v29 = v4 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_historyToken;
    *v29 = v11;
    *(v29 + 8) = v12;
    *(v4 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_isMonitoring) = v37 & 1;
    *(v4 + OBJC_IVAR____TtC10FinanceKit35InternalAccountBalanceAsyncSequence_coreDataStore) = v32;
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v4;
}

uint64_t FinanceStore.internalAccountBalances(with:sortDescriptors:limit:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v8 + 73) = a7;
  *(v8 + 48) = a6;
  *(v8 + 56) = v7;
  *(v8 + 72) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B72278D8, 0, 0);
}

uint64_t sub_1B72278D8()
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

    return sub_1B739BFF4(v11, v9, v10, v7, v5 & 1, v8, v4 & 1);
  }
}

uint64_t sub_1B7227A08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B7227AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7227B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit0A5StoreC12HistoryTokenVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7227BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7227C44(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

id sub_1B7227D04(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MapsBrand();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ManagedMapsBrand();
  v13 = static ManagedMapsBrand.brand(withMUID:in:)(*a1);
  if (!v2)
  {
    v3 = v13;
    if (v13)
    {
      sub_1B77BE754(a1, v13);
      sub_1B7228664(a1 + *(v6 + 64), v11);
      v14 = sub_1B77FF4F8();
      v15 = *(v14 - 8);
      v16 = 0;
      if ((*(v15 + 48))(v11, 1, v14) != 1)
      {
        v16 = sub_1B77FF3F8();
        (*(v15 + 8))(v11, v14);
      }

      [v3 setLogoURL_];
    }

    else
    {
      sub_1B72285FC(a1, v8, type metadata accessor for MapsBrand);
      v17 = objc_allocWithZone(v12);
      v16 = a2;
      v3 = sub_1B77BF3C0(v8, v16);
    }
  }

  return v3;
}

unsigned __int8 *sub_1B7227F18(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for WPCClassificationMapsItem();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v51 - v18;
  v21 = *a1;
  v20 = a1[1];
  v22 = HIBYTE(v20) & 0xF;
  v23 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {

    v26 = sub_1B75D5318(v21, v20, 10);
    v40 = v39;

    if (v40)
    {
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  if ((v20 & 0x2000000000000000) == 0)
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B7801B48();
    }

    v25 = *result;
    if (v25 == 43)
    {
      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v32 = result + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                goto LABEL_63;
              }

              v29 = __CFADD__(10 * v26, v33);
              v26 = 10 * v26 + v33;
              if (v29)
              {
                goto LABEL_63;
              }

              ++v32;
              if (!--v22)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_75;
    }

    if (v25 != 45)
    {
      if (v23)
      {
        v26 = 0;
        if (result)
        {
          while (1)
          {
            v36 = *result - 48;
            if (v36 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v26, 0xAuLL))
            {
              goto LABEL_63;
            }

            v29 = __CFADD__(10 * v26, v36);
            v26 = 10 * v26 + v36;
            if (v29)
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v23)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v26 = 0;
      LOBYTE(v22) = 1;
LABEL_64:
      v56 = v22;
      if (v22)
      {
LABEL_65:
        sub_1B7228534();
        swift_allocError();
        swift_willThrow();
        return v20;
      }

LABEL_67:
      v41 = type metadata accessor for ManagedMapsBrand();
      v20 = v41;
      v42 = static ManagedMapsBrand.brand(withMUID:in:)(v26);
      if (!v5)
      {
        v20 = v42;
        if (v42)
        {
          v43 = [v42 muid];
          sub_1B72285FC(a1, v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
          v45 = v52;
          v44 = v53;
          sub_1B7228588(v52, v53);
          WPCClassificationMapsItem.init(muid:rawBrand:encodedStylingInfo:)(v43, v12, v45, v44, v19);
          sub_1B77BE794(v19, v20);
          sub_1B722859C(v19, type metadata accessor for WPCClassificationMapsItem);
          sub_1B77BE434(a1);
        }

        else
        {
          sub_1B72285FC(a1, v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
          v46 = objc_allocWithZone(v41);
          sub_1B72285FC(v12, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
          v48 = v52;
          v47 = v53;
          sub_1B7228588(v52, v53);
          WPCClassificationMapsItem.init(muid:rawBrand:encodedStylingInfo:)(v26, v10, v48, v47, v19);
          sub_1B72285FC(v19, v16, type metadata accessor for WPCClassificationMapsItem);
          v49 = v54;
          v50 = sub_1B77BF62C(v16, v49, v46);

          sub_1B722859C(v19, type metadata accessor for WPCClassificationMapsItem);
          v20 = v50;
          sub_1B77BE434(v12);

          sub_1B722859C(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
        }
      }

      return v20;
    }

    if (v23 >= 1)
    {
      v22 = v23 - 1;
      if (v23 != 1)
      {
        v26 = 0;
        if (result)
        {
          v27 = result + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v26, 0xAuLL))
            {
              goto LABEL_63;
            }

            v29 = 10 * v26 >= v28;
            v26 = 10 * v26 - v28;
            if (!v29)
            {
              goto LABEL_63;
            }

            ++v27;
            if (!--v22)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v22) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v55[0] = *a1;
  v55[1] = v20 & 0xFFFFFFFFFFFFFFLL;
  if (v21 != 43)
  {
    if (v21 != 45)
    {
      if (v22)
      {
        v26 = 0;
        v37 = v55;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          if (!is_mul_ok(v26, 0xAuLL))
          {
            break;
          }

          v29 = __CFADD__(10 * v26, v38);
          v26 = 10 * v26 + v38;
          if (v29)
          {
            break;
          }

          ++v37;
          if (!--v22)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v22)
    {
      if (--v22)
      {
        v26 = 0;
        v30 = v55 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          if (!is_mul_ok(v26, 0xAuLL))
          {
            break;
          }

          v29 = 10 * v26 >= v31;
          v26 = 10 * v26 - v31;
          if (!v29)
          {
            break;
          }

          ++v30;
          if (!--v22)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_74;
  }

  if (v22)
  {
    if (--v22)
    {
      v26 = 0;
      v34 = v55 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        if (!is_mul_ok(v26, 0xAuLL))
        {
          break;
        }

        v29 = __CFADD__(10 * v26, v35);
        v26 = 10 * v26 + v35;
        if (v29)
        {
          break;
        }

        ++v34;
        if (!--v22)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_76:
  __break(1u);
  return result;
}

unint64_t sub_1B7228534()
{
  result = qword_1EB98FD80;
  if (!qword_1EB98FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FD80);
  }

  return result;
}

uint64_t sub_1B7228588(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B720ABEC(a1, a2);
  }

  return a1;
}

uint64_t sub_1B722859C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B72285FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7228664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B72286E8()
{
  result = qword_1EB98FD88;
  if (!qword_1EB98FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FD88);
  }

  return result;
}

uint64_t FinanceStore.insightsForTransaction(withID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B722875C, 0, 0);
}

uint64_t sub_1B722875C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1B7228830;

  return sub_1B7236BD0(&unk_1B780B668, v1);
}

uint64_t sub_1B7228830()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7228988, 0, 0);
}

uint64_t sub_1B7228988()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B72289EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7228A10, 0, 0);
}

uint64_t sub_1B7228A10()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2F8);
  v2 = sub_1B77FFA18();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[5] = v5;
  *(v5 + 16) = xmmword_1B7807CD0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1B7228B6C;

  return sub_1B739C70C(v5);
}

uint64_t sub_1B7228B6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B7228D34;
  }

  else
  {

    v4 = sub_1B7228C88;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7228C88()
{
  if (*(v0[7] + 16) && (v1 = sub_1B72454E8(v0[4]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[7] + 56) + 8 * v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = v0[2];

  *v4 = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7228D34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7228D98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7201BB0;

  return sub_1B72289EC(a1, v5, v4);
}

uint64_t sub_1B7228E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B7228E64, 0, 0);
}

uint64_t sub_1B7228E64()
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
    v4[1] = sub_1B7228F84;
    v5 = v0[3];
    v6 = v0[4];

    return sub_1B722C2C4(v5, v6);
  }
}

uint64_t sub_1B7228F84()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B723839C;
  }

  else
  {
    v2 = sub_1B72383A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7229098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B72290B8, 0, 0);
}

uint64_t sub_1B72290B8()
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
    v4[1] = sub_1B72291D8;
    v5 = v0[3];
    v6 = v0[4];

    return sub_1B745B0C4(v5, v6);
  }
}

uint64_t sub_1B72291D8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B7229350;
  }

  else
  {
    v2 = sub_1B72292EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B72292EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7229350()
{
  v21 = v0;
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 56);
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
    v16 = *(v0 + 48);
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

uint64_t sub_1B7229558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B722957C, 0, 0);
}

uint64_t sub_1B722957C()
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
    v6 = (v0[4] + *v0[4]);
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1B72296EC;
    v5 = v0[3];

    return v6(v5);
  }
}

uint64_t sub_1B72296EC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7229820, 0, 0);
}

uint64_t sub_1B7229820()
{
  v21 = v0;
  v1 = *(v0 + 56);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 64);
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
    v16 = *(v0 + 56);
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

uint64_t FinanceStore.insightsForTransactions(withIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7229A3C, 0, 0);
}

uint64_t sub_1B7229A3C()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B7229AFC;
  v2 = v0[2];
  v3 = v0[3];

  return (sub_1B723708C)(v3, v2);
}

uint64_t sub_1B7229AFC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t FinanceStore.iconForTransaction(withID:generateIfNeeded:useCache:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 168) = a2;
  *(v5 + 176) = v4;
  *(v5 + 273) = a4;
  *(v5 + 272) = a3;
  *(v5 + 160) = a1;
  *(v5 + 184) = type metadata accessor for FinanceStore.Message();
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7229CC0, 0, 0);
}

uint64_t sub_1B7229CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1B7229D64;
  v2 = *(v0 + 273);
  v3 = *(v0 + 168);

  return sub_1B739CD18(v0 + 80, v3, v2);
}

uint64_t sub_1B7229D64()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1B722A2BC;
  }

  else
  {
    v2 = sub_1B7229E78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7229E78()
{
  v1 = *(v0 + 112);
  if (v1 != 1 || (*(v0 + 272) & 1) == 0)
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 96);
    *v5 = *(v0 + 80);
    *(v5 + 16) = v6;
    *(v5 + 32) = v1;

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  *(v0 + 216) = *(*(v0 + 176) + 24);
  v4 = sub_1B77FFA18();
  (*(*(v4 - 8) + 16))(v2, v3, v4);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7229FA0, 0, 0);
}

uint64_t sub_1B7229FA0()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_1B722A050;
  v2 = swift_continuation_init();
  sub_1B722C614(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B722A050()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B722A22C;
  }

  else
  {
    v4 = *(v1 + 192);
    *(v1 + 232) = *(v1 + 120);
    *(v1 + 248) = *(v1 + 136);
    *(v1 + 264) = *(v1 + 152);
    sub_1B71A4B94(v4, type metadata accessor for FinanceStore.Message);
    v3 = sub_1B722A1A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B722A1A0()
{
  sub_1B720ACE8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 264);
  v2 = *(v0 + 160);
  v3 = *(v0 + 248);
  *v2 = *(v0 + 232);
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B722A22C()
{
  sub_1B71A4B94(*(v0 + 192), type metadata accessor for FinanceStore.Message);
  sub_1B720ACE8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B722A2BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.ordersForTransaction(withID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B722A340, 0, 0);
}

uint64_t sub_1B722A340()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B722A3DC;
  v2 = *(v0 + 16);

  return sub_1B739D8FC(v2);
}

uint64_t sub_1B722A3DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t FinanceStore.save(_:transactionIDs:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B722A500, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B722B664, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B745A52C, 0, 0);
}

uint64_t sub_1B722A500()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1B722A5E0;

  return (sub_1B7229558)();
}

uint64_t sub_1B722A5E0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B722A6FC;
  }

  else
  {

    v2 = sub_1B7238388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722A6FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B722A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  v4[13] = type metadata accessor for FinanceStore.Message();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B722A7F8, 0, 0);
}

uint64_t sub_1B722A7F8()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v0[15] = *(v0[10] + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF30) + 48);
  sub_1B7238224(v3, v1, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
  *(v1 + v4) = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B722A8D4, 0, 0);
}

uint64_t sub_1B722A8D4()
{
  v1 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1B722A978;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B722A978()
{
  v1 = *(*v0 + 48);
  *(*v0 + 128) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B722AB18;
  }

  else
  {
    v2 = sub_1B722AA94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722AA94()
{
  sub_1B71A4B94(*(v0 + 112), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B722AB18()
{
  sub_1B71A4B94(*(v0 + 112), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.deleteFinHealthEntityGroup(withID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B722ABBC, 0, 0);
}

uint64_t sub_1B722ABBC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1B722AC98;

  return (sub_1B7229558)();
}

uint64_t sub_1B722AC98()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B7228988;
  }

  else
  {

    v2 = sub_1B722ADB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722ADCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[12] = type metadata accessor for FinanceStore.Message();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B722AE60, 0, 0);
}

uint64_t sub_1B722AE60()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[14] = *(v0[10] + 24);
  v3 = sub_1B77FFA18();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B722AF24, 0, 0);
}

uint64_t sub_1B722AF24()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_1B722AFC8;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B722AFC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B722B168;
  }

  else
  {
    v2 = sub_1B722B0E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722B0E4()
{
  sub_1B71A4B94(*(v0 + 104), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B722B168()
{
  sub_1B71A4B94(*(v0 + 104), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.deleteAllFinHealthEntityGroups()()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for FinanceStore.Message();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B722B280, 0, 0);
}

uint64_t sub_1B722B280()
{
  v5 = v0;
  static DeviceInfo.deviceType.getter(&v4);
  if (v4)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();

    v2 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[13] = *(v0[10] + 24);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B722B37C, 0, 0);
}

uint64_t sub_1B722B37C()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_1B722B420;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B722B420()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B722B5C0;
  }

  else
  {
    v2 = sub_1B722B53C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722B53C()
{
  sub_1B71A4B94(*(v0 + 96), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B722B5C0()
{
  sub_1B71A4B94(*(v0 + 96), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B722B664()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1B722B744;

  return (sub_1B7229558)();
}

uint64_t sub_1B722B744()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B7238390;
  }

  else
  {

    v2 = sub_1B7238388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  v4[13] = type metadata accessor for FinanceStore.Message();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B722B8F8, 0, 0);
}

uint64_t sub_1B722B8F8()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v0[15] = *(v0[10] + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF28) + 48);
  sub_1B7238224(v3, v1, type metadata accessor for FinHealthTransactionInsight.Income);
  *(v1 + v4) = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B722B9D4, 0, 0);
}

uint64_t sub_1B722B9D4()
{
  v1 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1B722BA78;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B722BA78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 128) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B723837C;
  }

  else
  {
    v2 = sub_1B7238370;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t FinanceStore.deleteFinHealthIncomeInsight(withID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B722BBB4, 0, 0);
}

uint64_t sub_1B722BBB4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1B722BC90;

  return (sub_1B7229558)();
}

uint64_t sub_1B722BC90()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B7238394;
  }

  else
  {

    v2 = sub_1B7238388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722BDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[12] = type metadata accessor for FinanceStore.Message();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B722BE40, 0, 0);
}

uint64_t sub_1B722BE40()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[14] = *(v0[10] + 24);
  v3 = sub_1B77FFA18();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B722BF04, 0, 0);
}

uint64_t sub_1B722BF04()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_1B722BFA8;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B722BFA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B7238380;
  }

  else
  {
    v2 = sub_1B7238374;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722C0E4()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B722C198;
  v2 = *(v0 + 16);

  return sub_1B7228E44(sub_1B7228E44, v2, v2);
}

uint64_t sub_1B722C198()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B722C2AC;
  }

  else
  {
    v2 = sub_1B7238388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722C2C4(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v2[11] = type metadata accessor for FinanceStore.Message();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B722C358, 0, 0);
}

uint64_t sub_1B722C358()
{
  *(v0 + 104) = *(*(v0 + 80) + 24);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B722C3D0, 0, 0);
}

uint64_t sub_1B722C3D0()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_1B722C474;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B722C474()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B722C590;
  }

  else
  {
    v2 = sub_1B7238378;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B722C590()
{
  sub_1B71A4B94(*(v0 + 96), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B722C614(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722C7E0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722C9AC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722CB78(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722CD44(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722CF10(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722D0DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722D2A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722D474(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722D640(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722D80C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722D9D8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722DBA4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722DD70(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722DF3C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722E108(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722E2D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722E4A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722E66C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722E838(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722EA04(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722EBD0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722ED9C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722EF68(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722F134(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722F300(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722F4CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B722F698(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B722F864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v62 = a3;
  v63 = a2;
  v64 = a1;
  v4 = sub_1B7800408();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B7800168();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = sub_1B78001B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v64, v16, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF38);
    sub_1B71A5B34(&qword_1EB98FF40, &qword_1EB98FF38);
    sub_1B78001A8();
    v25 = v17;
    v26 = v18;
    v42 = v65;
    v43 = v66;
    v45 = v67;
    v44 = v68;
    v46 = v69;
    if (v70)
    {
      if (v70 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v47 = v25;
      if (v68)
      {
        v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1B7237880(v42, v43, v45, 1);
        v50 = sub_1B7800838();
        v51 = [v49 initWithDomain:v50 code:v45 userInfo:0];
        sub_1B72382D8(v42, v43, v45, v44, v46, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v52 = v51;
      }

      else
      {
        sub_1B7201CA4();
        v53 = swift_allocError();
        *v54 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v55 = v53;
      }

      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v47 = v25;
      sub_1B72382F8(v65, v66, v67, v68, v69);
      v48 = *(*(v63 + 64) + 40);
      *v48 = v42;
      v48[1] = v43;
      v48[2] = v45;
      v48[3] = v44;
      v48[4] = v46;
      swift_continuation_throwingResume();
    }

    sub_1B72382D8(v65, v66, v67, v68, v69, v70);
    (*(v26 + 8))(v20, v47);
    return;
  }

  v21 = v7;
  v22 = *(v7 + 32);
  v22(v13, v16, v6);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v23 = swift_allocError();
  v22(v24, v13, v6);
  v65 = v23;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v28 = v61;
  v29 = swift_dynamicCast();
  v30 = v62;
  if (!v29)
  {

    swift_allocError();
    *v41 = v23;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v31 = v60;
  (*(v21 + 32))(v60, v28, v6);
  v32 = *(v30 + 16);
  v34 = v57;
  v33 = v58;
  *v57 = v32;
  v35 = v59;
  (*(v33 + 104))(v34, *MEMORY[0x1E69E8020], v59);
  v36 = v32;
  LOBYTE(v32) = sub_1B7800418();
  (*(v33 + 8))(v34, v35);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v30 + 24);
  if (v37)
  {
    if (v37 == v56)
    {

      sub_1B7800118();

      *(v30 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v38 = swift_allocError();
  (*(v21 + 16))(v39, v31, v6);
  swift_allocError();
  *v40 = v38;
  swift_continuation_throwingResumeWithError();
  (*(v21 + 8))(v31, v6);
}

void sub_1B7230030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v57 = a3;
  v58 = a2;
  v59 = a1;
  v4 = sub_1B7800408();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B7800168();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v56 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = sub_1B78001B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v59, v16, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF08);
    sub_1B71A5B34(&qword_1EB98FF10, &qword_1EB98FF08);
    sub_1B78001A8();
    v25 = v17;
    v26 = v18;
    v42 = v60;
    if (v64)
    {
      if (v64 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v43 = v25;
      if (v63)
      {
        v45 = v62;
        v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v47 = sub_1B7800838();
        v48 = [v46 initWithDomain:v47 code:v45 userInfo:0];
      }

      else
      {
        sub_1B7201CA4();
        v48 = swift_allocError();
        *v49 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      swift_allocError();
      *v50 = v48;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v43 = v25;
      v44 = *(*(v58 + 64) + 40);
      *v44 = v60 & 1;
      v44[1] = HIBYTE(v42) & 1;
      swift_continuation_throwingResume();
    }

    sub_1B71B7A20(v60, v61, v62, v63, v64);
    (*(v26 + 8))(v20, v43);
    return;
  }

  v21 = v7;
  v22 = *(v7 + 32);
  v22(v13, v16, v6);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v23 = swift_allocError();
  v22(v24, v13, v6);
  v60 = v23;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v28 = v56;
  v29 = swift_dynamicCast();
  v30 = v57;
  if (!v29)
  {

    swift_allocError();
    *v41 = v23;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v31 = v55;
  (*(v21 + 32))(v55, v28, v6);
  v32 = *(v30 + 16);
  v34 = v52;
  v33 = v53;
  *v52 = v32;
  v35 = v54;
  (*(v33 + 104))(v34, *MEMORY[0x1E69E8020], v54);
  v36 = v32;
  LOBYTE(v32) = sub_1B7800418();
  (*(v33 + 8))(v34, v35);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v30 + 24);
  if (v37)
  {
    if (v37 == v51)
    {

      sub_1B7800118();

      *(v30 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v38 = swift_allocError();
  (*(v21 + 16))(v39, v31, v6);
  swift_allocError();
  *v40 = v38;
  swift_continuation_throwingResumeWithError();
  (*(v21 + 8))(v31, v6);
}

void sub_1B7230788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t *a9)
{
  v80 = a4;
  v84 = a3;
  v90 = a2;
  v92 = a1;
  v13 = sub_1B7800408();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v81 = (&v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = a5;
  v78 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v75 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v74 - v18;
  v85 = a7;
  v86 = a8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v19 = MEMORY[0x1EEE9AC00](v87);
  v79 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - v21;
  v23 = sub_1B7800168();
  v91 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v88 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v89 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v74 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v74 - v31;
  v33 = sub_1B78001B8();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v92, v32, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v34 + 32))(v36, v32, v33);
    v41 = v85;
    sub_1B71A5B34(a9, v85);
    sub_1B78001A8();
    v57 = v22;
    v58 = v34;
    v92 = v33;
    v59 = v79;
    sub_1B7205588(v22, v79, v41);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v62 = v76;
      v61 = v77;
      sub_1B722376C(v59, v76, v77);
      v63 = v75;
      sub_1B7205588(v62, v75, v61);
      sub_1B722376C(v63, *(*(v90 + 64) + 40), v61);
      swift_continuation_throwingResume();
      sub_1B7205418(v62, v61);
      sub_1B7205418(v57, v41);
      (*(v58 + 8))(v36, v92);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v64 = *v59;
      if (*(v59 + 24))
      {
        v66 = *(v59 + 8);
        v65 = *(v59 + 16);
        v67 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v68 = sub_1B7800838();
        v69 = [v67 initWithDomain:v68 code:v65 userInfo:0];
        v70 = v66;
        v41 = v85;
        sub_1B7237890(v64, v70, v65, 1);
      }

      else
      {
        sub_1B7201CA4();
        v69 = swift_allocError();
        *v71 = v64;
      }

      v72 = v92;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      swift_allocError();
      *v73 = v69;
      swift_continuation_throwingResumeWithError();
      sub_1B7205418(v57, v41);
      (*(v34 + 8))(v36, v72);
      return;
    }

LABEL_20:
    sub_1B7801C88();
    __break(1u);
    return;
  }

  v37 = v91;
  v38 = *(v91 + 32);
  v38(v29, v32, v23);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v39 = swift_allocError();
  v38(v40, v29, v23);
  v93 = v39;
  v42 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v43 = v89;
  if (!swift_dynamicCast())
  {

    swift_allocError();
    *v56 = v39;
    swift_continuation_throwingResumeWithError();
    return;
  }

  (*(v37 + 32))(v88, v43, v23);
  v45 = v83;
  v46 = v84;
  v47 = *(v84 + 16);
  v49 = v81;
  v48 = v82;
  *v81 = v47;
  (*(v48 + 104))(v49, *MEMORY[0x1E69E8020], v45);
  v50 = v47;
  LOBYTE(v47) = sub_1B7800418();
  (*(v48 + 8))(v49, v45);
  if ((v47 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v51 = *(v46 + 24);
  if (v51)
  {
    if (v51 == v80)
    {

      sub_1B7800118();

      *(v46 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v52 = swift_allocError();
  v53 = v88;
  (*(v37 + 16))(v54, v88, v23);
  swift_allocError();
  *v55 = v52;
  swift_continuation_throwingResumeWithError();
  (*(v37 + 8))(v53, v23);
}

void sub_1B7231060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t *a7, void (*a8)(id, uint64_t, uint64_t, void, void))
{
  v53 = a8;
  v54 = a4;
  v61 = a7;
  v62 = a6;
  v60 = a5;
  v58 = a3;
  v64 = a2;
  v65 = a1;
  v8 = sub_1B7800408();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1B7800168();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = sub_1B78001B8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v65, v20, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v22 + 32))(v24, v20, v21);
    v28 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(v60);
    sub_1B71A5B34(v61, v28);
    sub_1B78001A8();
    v29 = v21;
    v45 = v66;
    if (v70)
    {
      if (v70 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v46 = v29;
      if (v69)
      {
        v47 = v68;
        v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v49 = sub_1B7800838();
        v50 = [v48 initWithDomain:v49 code:v47 userInfo:0];
      }

      else
      {
        sub_1B7201CA4();
        v50 = swift_allocError();
        *v51 = v45;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      swift_allocError();
      *v52 = v50;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v46 = v29;
      **(*(v64 + 64) + 40) = v66;
      swift_continuation_throwingResume();
    }

    v53(v66, v67, v68, v69, v70);
    (*(v22 + 8))(v24, v46);
    return;
  }

  v25 = *(v11 + 32);
  v25(v17, v20, v10);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v26 = swift_allocError();
  v25(v27, v17, v10);
  v66 = v26;
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v31 = v63;
  if (!swift_dynamicCast())
  {

    swift_allocError();
    *v44 = v26;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v33 = v59;
  (*(v11 + 32))(v59, v31, v10);
  v34 = v57;
  v35 = v58;
  v36 = *(v58 + 16);
  v38 = v55;
  v37 = v56;
  *v55 = v36;
  (*(v37 + 104))(v38, *MEMORY[0x1E69E8020], v34);
  v39 = v36;
  LOBYTE(v36) = sub_1B7800418();
  (*(v37 + 8))(v38, v34);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v40 = *(v35 + 24);
  if (v40)
  {
    if (v40 == v54)
    {

      sub_1B7800118();

      *(v35 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v41 = swift_allocError();
  (*(v11 + 16))(v42, v33, v10);
  swift_allocError();
  *v43 = v41;
  swift_continuation_throwingResumeWithError();
  (*(v11 + 8))(v33, v10);
}

void sub_1B72317A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v61 = a3;
  v62 = a2;
  v63 = a1;
  v4 = sub_1B7800408();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B7800168();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = sub_1B78001B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v63, v16, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FEC8);
    sub_1B71A5B34(&qword_1EB98FED0, &qword_1EB98FEC8);
    sub_1B78001A8();
    v25 = v17;
    v26 = v18;
    v42 = v64;
    v43 = v65;
    if (v68)
    {
      if (v68 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v44 = v25;
      v46 = v67;
      if (v67)
      {
        v47 = v66;
        v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1B7237880(v42, v43, v47, 1);
        v49 = sub_1B7800838();
        v50 = [v48 initWithDomain:v49 code:v47 userInfo:0];
        sub_1B7238094(v42, v43, v47, v46, 1, sub_1B72380B8);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v51 = v50;
      }

      else
      {
        sub_1B7201CA4();
        v52 = swift_allocError();
        *v53 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v54 = v52;
      }

      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v44 = v25;
      sub_1B7228588(v64, v65);
      v45 = *(*(v62 + 64) + 40);
      *v45 = v42;
      v45[1] = v43;
      swift_continuation_throwingResume();
    }

    sub_1B7238094(v64, v65, v66, v67, v68, sub_1B72380B8);
    (*(v26 + 8))(v20, v44);
    return;
  }

  v21 = v7;
  v22 = *(v7 + 32);
  v22(v13, v16, v6);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v23 = swift_allocError();
  v22(v24, v13, v6);
  v64 = v23;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v28 = v60;
  v29 = swift_dynamicCast();
  v30 = v61;
  if (!v29)
  {

    swift_allocError();
    *v41 = v23;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v31 = v59;
  (*(v21 + 32))(v59, v28, v6);
  v32 = *(v30 + 16);
  v34 = v56;
  v33 = v57;
  *v56 = v32;
  v35 = v58;
  (*(v33 + 104))(v34, *MEMORY[0x1E69E8020], v58);
  v36 = v32;
  LOBYTE(v32) = sub_1B7800418();
  (*(v33 + 8))(v34, v35);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v30 + 24);
  if (v37)
  {
    if (v37 == v55)
    {

      sub_1B7800118();

      *(v30 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v38 = swift_allocError();
  (*(v21 + 16))(v39, v31, v6);
  swift_allocError();
  *v40 = v38;
  swift_continuation_throwingResumeWithError();
  (*(v21 + 8))(v31, v6);
}

void sub_1B7231F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v56 = a3;
  v57 = a2;
  v58 = a1;
  v4 = sub_1B7800408();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B7800168();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = sub_1B78001B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v58, v16, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FEC0);
    sub_1B71A5B34(&qword_1EDAF9038, &qword_1EB98FEC0);
    sub_1B78001A8();
    v25 = v17;
    v26 = v18;
    v42 = v59;
    if (v63)
    {
      if (v63 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v43 = v25;
      if (v62)
      {
        v44 = v61;
        v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v46 = sub_1B7800838();
        v47 = [v45 initWithDomain:v46 code:v44 userInfo:0];
      }

      else
      {
        sub_1B7201CA4();
        v47 = swift_allocError();
        *v48 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      swift_allocError();
      *v49 = v47;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v43 = v25;
      **(*(v57 + 64) + 40) = v59 & 1;
      swift_continuation_throwingResume();
    }

    sub_1B71B7A20(v59, v60, v61, v62, v63);
    (*(v26 + 8))(v20, v43);
    return;
  }

  v21 = v7;
  v22 = *(v7 + 32);
  v22(v13, v16, v6);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v23 = swift_allocError();
  v22(v24, v13, v6);
  v59 = v23;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v28 = v55;
  v29 = swift_dynamicCast();
  v30 = v56;
  if (!v29)
  {

    swift_allocError();
    *v41 = v23;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v31 = v54;
  (*(v21 + 32))(v54, v28, v6);
  v32 = *(v30 + 16);
  v34 = v51;
  v33 = v52;
  *v51 = v32;
  v35 = v53;
  (*(v33 + 104))(v34, *MEMORY[0x1E69E8020], v53);
  v36 = v32;
  LOBYTE(v32) = sub_1B7800418();
  (*(v33 + 8))(v34, v35);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v30 + 24);
  if (v37)
  {
    if (v37 == v50)
    {

      sub_1B7800118();

      *(v30 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v38 = swift_allocError();
  (*(v21 + 16))(v39, v31, v6);
  swift_allocError();
  *v40 = v38;
  swift_continuation_throwingResumeWithError();
  (*(v21 + 8))(v31, v6);
}

void sub_1B72326CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v65 = a7;
  v66 = a6;
  v64 = a5;
  v58 = a4;
  v62 = a3;
  v68 = a2;
  v69 = a1;
  v7 = sub_1B7800408();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B7800168();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v67 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = sub_1B78001B8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v69, v19, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v21 + 32))(v23, v19, v20);
    v27 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(v64);
    sub_1B71A5B34(v65, v27);
    sub_1B78001A8();
    v28 = v20;
    v29 = v21;
    v45 = v70;
    if (v74)
    {
      if (v74 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v46 = v28;
      v47 = v73;
      if (v73)
      {
        v48 = v71;
        v49 = v72;
        v50 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1B7237880(v45, v48, v49, 1);
        v51 = sub_1B7800838();
        v52 = [v50 initWithDomain:v51 code:v49 userInfo:0];
        sub_1B71A5B88(v45, v48, v49, v47, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v53 = v52;
      }

      else
      {
        sub_1B7201CA4();
        v54 = swift_allocError();
        *v55 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v56 = v54;
      }

      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v46 = v28;
      **(*(v68 + 64) + 40) = v70;

      swift_continuation_throwingResume();
    }

    sub_1B71A5B88(v70, v71, v72, v73, v74);
    (*(v29 + 8))(v23, v46);
    return;
  }

  v24 = *(v10 + 32);
  v24(v16, v19, v9);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v25 = swift_allocError();
  v24(v26, v16, v9);
  v70 = v25;
  v30 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v31 = v67;
  if (!swift_dynamicCast())
  {

    swift_allocError();
    *v44 = v25;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v33 = v63;
  (*(v10 + 32))(v63, v31, v9);
  v34 = v61;
  v35 = v62;
  v36 = *(v62 + 16);
  v38 = v59;
  v37 = v60;
  *v59 = v36;
  (*(v37 + 104))(v38, *MEMORY[0x1E69E8020], v34);
  v39 = v36;
  LOBYTE(v36) = sub_1B7800418();
  (*(v37 + 8))(v38, v34);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v40 = *(v35 + 24);
  if (v40)
  {
    if (v40 == v58)
    {

      sub_1B7800118();

      *(v35 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v41 = swift_allocError();
  (*(v10 + 16))(v42, v33, v9);
  swift_allocError();
  *v43 = v41;
  swift_continuation_throwingResumeWithError();
  (*(v10 + 8))(v33, v9);
}

void sub_1B7232E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v62 = a3;
  v63 = a2;
  v64 = a1;
  v4 = sub_1B7800408();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B7800168();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = sub_1B78001B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v64, v16, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE70);
    sub_1B71A5B34(&unk_1EDAF9050, &qword_1EB98FE70);
    sub_1B78001A8();
    v25 = v17;
    v26 = v18;
    v42 = v65;
    v43 = v66;
    v45 = v67;
    v44 = v68;
    v46 = v69;
    if (v70)
    {
      if (v70 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v47 = v25;
      if (v68)
      {
        v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1B7237880(v42, v43, v45, 1);
        v50 = sub_1B7800838();
        v51 = [v49 initWithDomain:v50 code:v45 userInfo:0];
        sub_1B7237B54(v42, v43, v45, v44, v46, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v52 = v51;
      }

      else
      {
        sub_1B7201CA4();
        v53 = swift_allocError();
        *v54 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v55 = v53;
      }

      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v47 = v25;
      sub_1B7237BD8(v66, v67, v68, v69);
      v48 = *(*(v63 + 64) + 40);
      *v48 = v42 & 1;
      *(v48 + 1) = BYTE1(v42) & 1;
      *(v48 + 8) = v43;
      *(v48 + 16) = v45;
      *(v48 + 24) = v44;
      *(v48 + 32) = v46;
      swift_continuation_throwingResume();
    }

    sub_1B7237B54(v65, v66, v67, v68, v69, v70);
    (*(v26 + 8))(v20, v47);
    return;
  }

  v21 = v7;
  v22 = *(v7 + 32);
  v22(v13, v16, v6);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v23 = swift_allocError();
  v22(v24, v13, v6);
  v65 = v23;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v28 = v61;
  v29 = swift_dynamicCast();
  v30 = v62;
  if (!v29)
  {

    swift_allocError();
    *v41 = v23;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v31 = v60;
  (*(v21 + 32))(v60, v28, v6);
  v32 = *(v30 + 16);
  v34 = v57;
  v33 = v58;
  *v57 = v32;
  v35 = v59;
  (*(v33 + 104))(v34, *MEMORY[0x1E69E8020], v59);
  v36 = v32;
  LOBYTE(v32) = sub_1B7800418();
  (*(v33 + 8))(v34, v35);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v30 + 24);
  if (v37)
  {
    if (v37 == v56)
    {

      sub_1B7800118();

      *(v30 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v38 = swift_allocError();
  (*(v21 + 16))(v39, v31, v6);
  swift_allocError();
  *v40 = v38;
  swift_continuation_throwingResumeWithError();
  (*(v21 + 8))(v31, v6);
}

void sub_1B7233644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v69 = a3;
  v73 = a2;
  v75 = a1;
  v4 = sub_1B7800408();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for InternalAccount();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v62 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE38);
  v10 = MEMORY[0x1EEE9AC00](v70);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - v12;
  v14 = sub_1B7800168();
  v74 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = sub_1B78001B8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v75, v23, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v25 + 32))(v27, v23, v24);
    sub_1B71A5B34(&qword_1EB98FE40, &qword_1EB98FE38);
    sub_1B78001A8();
    v32 = v24;
    v48 = v64;
    sub_1B7205588(v13, v64, &qword_1EB98FE38);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v53 = *v48;
      if (*(v48 + 24))
      {
        v55 = *(v48 + 8);
        v54 = *(v48 + 16);
        v56 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v57 = sub_1B7800838();
        v58 = [v56 initWithDomain:v57 code:v54 userInfo:0];
        v59 = v55;
        v32 = v24;
        sub_1B7237890(v53, v59, v54, 1);
      }

      else
      {
        sub_1B7201CA4();
        v58 = swift_allocError();
        *v60 = v53;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      swift_allocError();
      *v61 = v58;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v50 = v48;
      v51 = v63;
      sub_1B7237A08(v50, v63, type metadata accessor for InternalAccount);
      v52 = v62;
      sub_1B7238224(v51, v62, type metadata accessor for InternalAccount);
      sub_1B7237A08(v52, *(*(v73 + 64) + 40), type metadata accessor for InternalAccount);
      swift_continuation_throwingResume();
      sub_1B71A4B94(v51, type metadata accessor for InternalAccount);
    }

    sub_1B7205418(v13, &qword_1EB98FE38);
    (*(v25 + 8))(v27, v32);
    return;
  }

  v28 = v74;
  v29 = *(v74 + 32);
  v29(v20, v23, v14);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v30 = swift_allocError();
  v29(v31, v20, v14);
  v76 = v30;
  v33 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v34 = v72;
  if (!swift_dynamicCast())
  {

    swift_allocError();
    *v47 = v30;
    swift_continuation_throwingResumeWithError();
    return;
  }

  (*(v28 + 32))(v71, v34, v14);
  v36 = v68;
  v37 = v69;
  v38 = *(v69 + 16);
  v40 = v66;
  v39 = v67;
  *v66 = v38;
  (*(v39 + 104))(v40, *MEMORY[0x1E69E8020], v36);
  v41 = v38;
  LOBYTE(v38) = sub_1B7800418();
  (*(v39 + 8))(v40, v36);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v42 = *(v37 + 24);
  if (v42)
  {
    if (v42 == v65)
    {

      sub_1B7800118();

      *(v37 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v43 = swift_allocError();
  v44 = v71;
  (*(v28 + 16))(v45, v71, v14);
  swift_allocError();
  *v46 = v43;
  swift_continuation_throwingResumeWithError();
  (*(v28 + 8))(v44, v14);
}

void sub_1B7233F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v69 = a3;
  v73 = a2;
  v75 = a1;
  v4 = sub_1B7800408();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for BankConnectAuthorizationSession();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v62 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE28);
  v10 = MEMORY[0x1EEE9AC00](v70);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - v12;
  v14 = sub_1B7800168();
  v74 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = sub_1B78001B8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v75, v23, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v25 + 32))(v27, v23, v24);
    sub_1B71A5B34(&qword_1EB98FE30, &qword_1EB98FE28);
    sub_1B78001A8();
    v32 = v24;
    v48 = v64;
    sub_1B7205588(v13, v64, &qword_1EB98FE28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v53 = *v48;
      if (*(v48 + 24))
      {
        v55 = *(v48 + 8);
        v54 = *(v48 + 16);
        v56 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v57 = sub_1B7800838();
        v58 = [v56 initWithDomain:v57 code:v54 userInfo:0];
        v59 = v55;
        v32 = v24;
        sub_1B7237890(v53, v59, v54, 1);
      }

      else
      {
        sub_1B7201CA4();
        v58 = swift_allocError();
        *v60 = v53;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      swift_allocError();
      *v61 = v58;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v50 = v48;
      v51 = v63;
      sub_1B7237A08(v50, v63, type metadata accessor for BankConnectAuthorizationSession);
      v52 = v62;
      sub_1B7238224(v51, v62, type metadata accessor for BankConnectAuthorizationSession);
      sub_1B7237A08(v52, *(*(v73 + 64) + 40), type metadata accessor for BankConnectAuthorizationSession);
      swift_continuation_throwingResume();
      sub_1B71A4B94(v51, type metadata accessor for BankConnectAuthorizationSession);
    }

    sub_1B7205418(v13, &qword_1EB98FE28);
    (*(v25 + 8))(v27, v32);
    return;
  }

  v28 = v74;
  v29 = *(v74 + 32);
  v29(v20, v23, v14);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v30 = swift_allocError();
  v29(v31, v20, v14);
  v76 = v30;
  v33 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v34 = v72;
  if (!swift_dynamicCast())
  {

    swift_allocError();
    *v47 = v30;
    swift_continuation_throwingResumeWithError();
    return;
  }

  (*(v28 + 32))(v71, v34, v14);
  v36 = v68;
  v37 = v69;
  v38 = *(v69 + 16);
  v40 = v66;
  v39 = v67;
  *v66 = v38;
  (*(v39 + 104))(v40, *MEMORY[0x1E69E8020], v36);
  v41 = v38;
  LOBYTE(v38) = sub_1B7800418();
  (*(v39 + 8))(v40, v36);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v42 = *(v37 + 24);
  if (v42)
  {
    if (v42 == v65)
    {

      sub_1B7800118();

      *(v37 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v43 = swift_allocError();
  v44 = v71;
  (*(v28 + 16))(v45, v71, v14);
  swift_allocError();
  *v46 = v43;
  swift_continuation_throwingResumeWithError();
  (*(v28 + 8))(v44, v14);
}

void sub_1B72347EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v69 = a3;
  v73 = a2;
  v75 = a1;
  v4 = sub_1B7800408();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for BankConnectConsent();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v62 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE18);
  v10 = MEMORY[0x1EEE9AC00](v70);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - v12;
  v14 = sub_1B7800168();
  v74 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = sub_1B78001B8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v75, v23, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v25 + 32))(v27, v23, v24);
    sub_1B71A5B34(&qword_1EB98FE20, &qword_1EB98FE18);
    sub_1B78001A8();
    v32 = v24;
    v48 = v64;
    sub_1B7205588(v13, v64, &qword_1EB98FE18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v53 = *v48;
      if (*(v48 + 24))
      {
        v55 = *(v48 + 8);
        v54 = *(v48 + 16);
        v56 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v57 = sub_1B7800838();
        v58 = [v56 initWithDomain:v57 code:v54 userInfo:0];
        v59 = v55;
        v32 = v24;
        sub_1B7237890(v53, v59, v54, 1);
      }

      else
      {
        sub_1B7201CA4();
        v58 = swift_allocError();
        *v60 = v53;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      swift_allocError();
      *v61 = v58;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v50 = v48;
      v51 = v63;
      sub_1B7237A08(v50, v63, type metadata accessor for BankConnectConsent);
      v52 = v62;
      sub_1B7238224(v51, v62, type metadata accessor for BankConnectConsent);
      sub_1B7237A08(v52, *(*(v73 + 64) + 40), type metadata accessor for BankConnectConsent);
      swift_continuation_throwingResume();
      sub_1B71A4B94(v51, type metadata accessor for BankConnectConsent);
    }

    sub_1B7205418(v13, &qword_1EB98FE18);
    (*(v25 + 8))(v27, v32);
    return;
  }

  v28 = v74;
  v29 = *(v74 + 32);
  v29(v20, v23, v14);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v30 = swift_allocError();
  v29(v31, v20, v14);
  v76 = v30;
  v33 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v34 = v72;
  if (!swift_dynamicCast())
  {

    swift_allocError();
    *v47 = v30;
    swift_continuation_throwingResumeWithError();
    return;
  }

  (*(v28 + 32))(v71, v34, v14);
  v36 = v68;
  v37 = v69;
  v38 = *(v69 + 16);
  v40 = v66;
  v39 = v67;
  *v66 = v38;
  (*(v39 + 104))(v40, *MEMORY[0x1E69E8020], v36);
  v41 = v38;
  LOBYTE(v38) = sub_1B7800418();
  (*(v39 + 8))(v40, v36);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v42 = *(v37 + 24);
  if (v42)
  {
    if (v42 == v65)
    {

      sub_1B7800118();

      *(v37 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v43 = swift_allocError();
  v44 = v71;
  (*(v28 + 16))(v45, v71, v14);
  swift_allocError();
  *v46 = v43;
  swift_continuation_throwingResumeWithError();
  (*(v28 + 8))(v44, v14);
}

void sub_1B72350C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v64 = a3;
  v65 = a2;
  v66 = a1;
  v4 = sub_1B7800408();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B7800168();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = sub_1B78001B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v66, v16, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE08);
    sub_1B71A5B34(&qword_1EB98FE10, &qword_1EB98FE08);
    sub_1B78001A8();
    v25 = v17;
    v26 = v18;
    v42 = v68;
    v43 = v69;
    if (!v72)
    {
      v44 = *(v65 + 64);
      v67 = v69 & 1;
      v45 = *(v44 + 40);
      *v45 = v68;
      *(v45 + 8) = v67;
      v46 = v25;

      swift_continuation_throwingResume();
      sub_1B71A5B88(v68, v69, v70, v71, v72);
      (*(v18 + 8))(v20, v46);
      return;
    }

    if (v72 == 1)
    {
      v47 = v25;
      v48 = v71;
      if (v71)
      {
        v49 = v70;
        v50 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1B7237880(v42, v43, v49, 1);
        v51 = sub_1B7800838();
        v52 = [v50 initWithDomain:v51 code:v49 userInfo:0];
        sub_1B71A5B88(v42, v43, v49, v48, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v53 = v52;
      }

      else
      {
        sub_1B7201CA4();
        v54 = swift_allocError();
        *v55 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v56 = v54;
      }

      swift_continuation_throwingResumeWithError();
      sub_1B71A5B88(v68, v69, v70, v71, v72);
      (*(v26 + 8))(v20, v47);
      return;
    }

LABEL_20:
    sub_1B7801C88();
    __break(1u);
    return;
  }

  v21 = v7;
  v22 = *(v7 + 32);
  v22(v13, v16, v6);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v23 = swift_allocError();
  v22(v24, v13, v6);
  v68 = v23;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v28 = v63;
  v29 = swift_dynamicCast();
  v30 = v64;
  if (!v29)
  {

    swift_allocError();
    *v41 = v23;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v31 = v62;
  (*(v21 + 32))(v62, v28, v6);
  v32 = *(v30 + 16);
  v34 = v59;
  v33 = v60;
  *v59 = v32;
  v35 = v61;
  (*(v33 + 104))(v34, *MEMORY[0x1E69E8020], v61);
  v36 = v32;
  LOBYTE(v32) = sub_1B7800418();
  (*(v33 + 8))(v34, v35);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v37 = *(v30 + 24);
  if (v37)
  {
    if (v37 == v58)
    {

      sub_1B7800118();

      *(v30 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v38 = swift_allocError();
  (*(v21 + 16))(v39, v31, v6);
  swift_allocError();
  *v40 = v38;
  swift_continuation_throwingResumeWithError();
  (*(v21 + 8))(v31, v6);
}

void sub_1B72358A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v61 = a3;
  v62 = a2;
  v63 = a1;
  v4 = sub_1B7800408();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B7800168();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = sub_1B78001B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v63, v16, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FDE8);
    sub_1B71A5B34(&qword_1EB98FDF0, &qword_1EB98FDE8);
    sub_1B78001A8();
    v25 = v17;
    v26 = v18;
    v42 = v64;
    v43 = v65;
    if (v68)
    {
      if (v68 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v44 = v25;
      v46 = v67;
      if (v67)
      {
        v47 = v66;
        v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1B7237880(v42, v43, v47, 1);
        v49 = sub_1B7800838();
        v50 = [v48 initWithDomain:v49 code:v47 userInfo:0];
        sub_1B7238094(v42, v43, v47, v46, 1, sub_1B720A388);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v51 = v50;
      }

      else
      {
        sub_1B7201CA4();
        v52 = swift_allocError();
        *v53 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v54 = v52;
      }

      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v44 = v25;
      sub_1B720ABEC(v64, v65);
      v45 = *(*(v62 + 64) + 40);
      *v45 = v42;
      v45[1] = v43;
      swift_continuation_throwingResume();
    }

    sub_1B7238094(v64, v65, v66, v67, v68, sub_1B720A388);
    (*(v26 + 8))(v20, v44);
    return;
  }

  v21 = v7;
  v22 = *(v7 + 32);
  v22(v13, v16, v6);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v23 = swift_allocError();
  v22(v24, v13, v6);
  v64 = v23;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v28 = v60;
  v29 = swift_dynamicCast();
  v30 = v61;
  if (!v29)
  {

    swift_allocError();
    *v41 = v23;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v31 = v59;
  (*(v21 + 32))(v59, v28, v6);
  v32 = *(v30 + 16);
  v34 = v56;
  v33 = v57;
  *v56 = v32;
  v35 = v58;
  (*(v33 + 104))(v34, *MEMORY[0x1E69E8020], v58);
  v36 = v32;
  LOBYTE(v32) = sub_1B7800418();
  (*(v33 + 8))(v34, v35);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v30 + 24);
  if (v37)
  {
    if (v37 == v55)
    {

      sub_1B7800118();

      *(v30 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v38 = swift_allocError();
  (*(v21 + 16))(v39, v31, v6);
  swift_allocError();
  *v40 = v38;
  swift_continuation_throwingResumeWithError();
  (*(v21 + 8))(v31, v6);
}

void sub_1B7236080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v66 = a7;
  v67 = a6;
  v65 = a5;
  v59 = a4;
  v63 = a3;
  v69 = a2;
  v70 = a1;
  v7 = sub_1B7800408();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B7800168();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v68 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD90);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = sub_1B78001B8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v70, v19, &qword_1EB98FD90);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v21 + 32))(v23, v19, v20);
    v27 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(v65);
    sub_1B71A5B34(v66, v27);
    sub_1B78001A8();
    v28 = v20;
    v29 = v21;
    v45 = v71;
    v46 = v72;
    v47 = v73;
    if (v75)
    {
      if (v75 != 1)
      {
LABEL_21:
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v48 = v28;
      v50 = v74;
      if (v74)
      {
        v51 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1B7237880(v45, v46, v47, 1);
        v52 = sub_1B7800838();
        v53 = [v51 initWithDomain:v52 code:v47 userInfo:0];
        sub_1B7237F40(v45, v46, v47, v50, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v54 = v53;
      }

      else
      {
        sub_1B7201CA4();
        v55 = swift_allocError();
        *v56 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        swift_allocError();
        *v57 = v55;
      }

      swift_continuation_throwingResumeWithError();
    }

    else
    {
      v48 = v28;
      v49 = *(*(v69 + 64) + 40);
      *v49 = v71;
      v49[1] = v46;
      v49[2] = v47;

      swift_continuation_throwingResume();
    }

    sub_1B7237F40(v71, v72, v73, v74, v75);
    (*(v29 + 8))(v23, v48);
    return;
  }

  v24 = *(v10 + 32);
  v24(v16, v19, v9);
  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  swift_willThrowTypedImpl();
  v25 = swift_allocError();
  v24(v26, v16, v9);
  v71 = v25;
  v30 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v31 = v68;
  if (!swift_dynamicCast())
  {

    swift_allocError();
    *v44 = v25;
    swift_continuation_throwingResumeWithError();
    return;
  }

  v33 = v64;
  (*(v10 + 32))(v64, v31, v9);
  v34 = v62;
  v35 = v63;
  v36 = *(v63 + 16);
  v38 = v60;
  v37 = v61;
  *v60 = v36;
  (*(v37 + 104))(v38, *MEMORY[0x1E69E8020], v34);
  v39 = v36;
  LOBYTE(v36) = sub_1B7800418();
  (*(v37 + 8))(v38, v34);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v40 = *(v35 + 24);
  if (v40)
  {
    if (v40 == v59)
    {

      sub_1B7800118();

      *(v35 + 24) = 0;
    }
  }

  sub_1B719BE40(qword_1EDAFA090, MEMORY[0x1E69E84C0]);
  v41 = swift_allocError();
  (*(v10 + 16))(v42, v33, v9);
  swift_allocError();
  *v43 = v41;
  swift_continuation_throwingResumeWithError();
  (*(v10 + 8))(v33, v9);
}

uint64_t sub_1B7236838(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for FinanceStore.Message();
    sub_1B719BE40(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7236A04(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1B7801338();
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v7;
    type metadata accessor for BankConnectService.Message();
    sub_1B719BE40(&qword_1EB98FDE0, type metadata accessor for BankConnectService.Message);

    sub_1B78000F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7236BD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7236BF0, 0, 0);
}

uint64_t sub_1B7236BF0()
{
  v7 = v0;
  static DeviceInfo.deviceType.getter(v6);
  if (v6[0])
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
    v5 = (v0[4] + *v0[4]);
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1B7236D60;

    return v5(v0 + 2);
  }
}

uint64_t sub_1B7236D60()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B7236E90;
  }

  else
  {
    v2 = sub_1B7236E74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7236E90()
{
  v21 = v0;
  v1 = *(v0 + 56);
  *(v0 + 24) = v1;
  v2 = (v0 + 24);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 64);
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
    v16 = *(v0 + 56);
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

uint64_t sub_1B723708C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B72370AC, 0, 0);
}

uint64_t sub_1B72370AC()
{
  v7 = v0;
  static DeviceInfo.deviceType.getter(v6);
  if (v6[0])
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
    v4[1] = sub_1B72371D4;
    v5 = v0[4];

    return sub_1B739C70C(v5);
  }
}

uint64_t sub_1B72371D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1B7237364;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1B72372FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B72372FC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1B7237364()
{
  v21 = v0;
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 64);
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
    v16 = *(v0 + 48);
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

uint64_t sub_1B723756C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B722A760(a1, v4, v5, v6);
}

uint64_t sub_1B7237620(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B723838C;

  return sub_1B722ADCC(a1, v5, v4);
}

uint64_t sub_1B72376CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B722B860(a1, v4, v5, v6);
}

uint64_t sub_1B7237780(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B723838C;

  return sub_1B722BDAC(a1, v5, v4);
}

uint64_t sub_1B7237880(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1B7237890(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1B7237A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7237B54(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
    return sub_1B7237890(result, a2, a3, a4 & 1);
  }

  if (!a6)
  {
    return sub_1B7237B84(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1B7237B84(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B7237BC4(result, a2);
  }

  return result;
}

uint64_t sub_1B7237BC4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B7237BD8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B7237C18(result, a2);
  }

  return result;
}

uint64_t sub_1B7237C18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B7237C2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7237C4C, 0, 0);
}

uint64_t sub_1B7237C4C()
{
  v7 = v0;
  static DeviceInfo.deviceType.getter(v6);
  if (v6[0])
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
    v5 = (v0[4] + *v0[4]);
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1B7237DBC;

    return v5(v0 + 2);
  }
}

uint64_t sub_1B7237DBC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B723836C;
  }

  else
  {
    v2 = sub_1B72383A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7237F40(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5 == 1)
  {
    v6 = a4 & 1;

    return sub_1B7237890(result, a2, a3, v6);
  }

  else if (!a5)
  {
  }

  return result;
}

uint64_t sub_1B7238094(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t (*a6)(void))
{
  if (a5 == 1)
  {
    return sub_1B7237890(result, a2, a3, a4 & 1);
  }

  if (!a5)
  {
    return a6();
  }

  return result;
}

uint64_t sub_1B72380B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B720A388(a1, a2);
  }

  return a1;
}

uint64_t sub_1B7238224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B72382D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6 == 1)
  {
    sub_1B7237890(a1, a2, a3, a4 & 1);
  }

  else if (!a6)
  {
    sub_1B720ACE8(a1, a2, a3, a4, a5);
  }
}

id sub_1B72382F8(id result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5 != 1)
  {
    sub_1B720ABEC(result, a2);

    return a5;
  }

  return result;
}

uint64_t sub_1B72383A8(uint64_t a1)
{
  result = MEMORY[0x1B8CA52E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1B724E408(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72384DC(uint64_t a1)
{
  v2 = sub_1B78018C8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1B76B5640(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1B72385A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1B78018F8();
    v7 = v6;
    v8 = sub_1B78019A8();
    v10 = v9;
    v11 = MEMORY[0x1B8CA5C40](v5, v7, v8, v9);
    sub_1B723BB64(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1B723BB64(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_1B78018C8();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_1B723BB64(v5, v7, v4 != 0);
  return v13;
}

uint64_t static ContentPackageError.Context.== infix(_:_:)(void *a1, void *a2)
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

uint64_t ContentPackageError.errorDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1B8CA4D30](0x20726F6620, 0xE500000000000000);
  MEMORY[0x1B8CA4D30](v1, v2);
  return v4;
}

uint64_t sub_1B72387D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1B8CA4D30](0x20726F6620, 0xE500000000000000);
  MEMORY[0x1B8CA4D30](v1, v2);
  return v4;
}

uint64_t ContentPackageManifestValidator.validate(_:using:)(uint64_t *a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = sub_1B77FF4F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;

  v51 = sub_1B72383A8(v10);
  v53 = a2;
  v54 = v9;
  v11 = sub_1B723929C(sub_1B723AD0C, v52);
  v12 = v2;
  if (v2)
  {
  }

  sub_1B723983C(v11);

  v14 = v51;
  v15 = *(v51 + 32);
  v16 = v15 & 0x3F;
  v17 = ((1 << v15) + 63) >> 6;
  v18 = (8 * v17);

  if (v16 <= 0xD)
  {
    goto LABEL_4;
  }

  while (1)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_4:
      v49 = v5;
      v43 = v12;
      v44 = &v42;
      v45 = v17;
      MEMORY[0x1EEE9AC00](v19);
      v46 = &v42 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v46, v18);
      v12 = 0;
      v50 = v14;
      v17 = v14 + 56;
      v20 = 1 << *(v14 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v14 = v21 & *(v14 + 56);
      v22 = (v20 + 63) >> 6;
      v47 = 0;
      v48 = (v6 + 8);
      while (1)
      {
        if (!v14)
        {
          v25 = v12;
          while (1)
          {
            v12 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v12 >= v22)
            {
              goto LABEL_21;
            }

            v26 = *(v17 + 8 * v12);
            ++v25;
            if (v26)
            {
              v24 = __clz(__rbit64(v26));
              v14 = (v26 - 1) & v26;
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_36;
        }

        v24 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_15:
        v5 = v24 | (v12 << 6);
        v6 = *(*(v50 + 48) + 16 * v5 + 8);

        sub_1B77FF3D8();
        v27 = sub_1B77FF3E8();
        v18 = v28;
        (*v48)(v8, v49);
        if (v27 == 0x726F74535F53442ELL && v18 == 0xE900000000000065)
        {
          break;
        }

        v23 = sub_1B78020F8();

        if (v23)
        {
LABEL_18:
          *&v46[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
          if (__OFADD__(v47++, 1))
          {
            __break(1u);
LABEL_21:
            v5 = sub_1B723A660(v46, v45, v47, v50);
            goto LABEL_22;
          }
        }
      }

      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    v41 = sub_1B723A5D0(v18, v17, v14, sub_1B72396EC);
    v43 = v12;
    if (v12)
    {
      break;
    }

    v5 = v41;

    MEMORY[0x1B8CA7A40](v18, -1, -1);
LABEL_22:
    v17 = 0;
    v14 = v5 + 56;
    v30 = 1 << *(v5 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v12 = v31 & *(v5 + 56);
    v6 = (v30 + 63) >> 6;
    while (v12)
    {
      v32 = v17;
LABEL_30:
      v33 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v34 = (*(v5 + 48) + ((v32 << 10) | (16 * v33)));
      v35 = *v34;
      v8 = v34[1];

      sub_1B7239A6C(v35, v8);
      v18 = v36;
    }

    while (1)
    {
      v32 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v32 >= v6)
      {

        v37 = sub_1B72384DC(v51);
        v39 = v38;

        if (v39)
        {
          sub_1B723AD28();
          swift_allocError();
          *v40 = 0xD00000000000002BLL;
          v40[1] = 0x80000001B78760A0;
          v40[2] = v37;
          v40[3] = v39;
          return swift_willThrow();
        }

        return result;
      }

      v12 = *(v14 + 8 * v32);
      ++v17;
      if (v12)
      {
        v17 = v32;
        goto LABEL_30;
      }
    }

LABEL_36:
    __break(1u);
  }

  result = MEMORY[0x1B8CA7A40](v18, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B7238DA0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  if (a1)
  {
    v25 = a3;
    v14 = a1;
    v15 = [v14 bundleURL];
    sub_1B77FF478();

    v26 = MEMORY[0x1E69E7CD0];
    (*(v8 + 16))(v11, v13, v7);
    type metadata accessor for ContentPackageHashesEnumerator();
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL, v11, v7);

    sub_1B7542CB8(1, j___s10FinanceKit30ContentPackageHashesEnumeratorC29fileShouldBePresentInManifestySb6System8FilePathVFZ_0, 0, v16, a2, &v26);
    swift_setDeallocating();
    if (v3)
    {
      v17 = *(v8 + 8);
      v17(v16 + OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL, v7);
      swift_deallocClassInstance();

      v17(v13, v7);
    }

    else
    {
      v23 = *(v8 + 8);
      v23(v16 + OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL, v7);
      swift_deallocClassInstance();

      result = (v23)(v13, v7);
      *v25 = v26;
    }
  }

  else
  {
    v19 = sub_1B77FF4A8();
    v21 = v20;
    sub_1B723AD28();
    swift_allocError();
    *v22 = 0xD00000000000002ELL;
    v22[1] = 0x80000001B78760D0;
    v22[2] = v19;
    v22[3] = v21;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B72390D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B78002E8();
  v9 = v7;
  v10 = v8;
  if (*(a4 + 16) && (v11 = sub_1B724548C(v7, v8), (v12 & 1) != 0))
  {
    v13 = (*(a4 + 56) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = *v13 == a2 && v14 == a3;
    if (v16 || (sub_1B78020F8() & 1) != 0)
    {
      sub_1B724E408(&v21, v9, v10);
    }

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000048, 0x80000001B7876130);
    MEMORY[0x1B8CA4D30](a2, a3);
    MEMORY[0x1B8CA4D30](0x6C6175746361202CLL, 0xEF203A6873616820);
    MEMORY[0x1B8CA4D30](v15, v14);

    v19 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v18 = 0x80000001B7876100;
    v19 = 0xD000000000000027;
  }

  sub_1B723AD28();
  swift_allocError();
  *v20 = v19;
  v20[1] = v18;
  v20[2] = v9;
  v20[3] = v10;
  return swift_willThrow();
}

uint64_t sub_1B723929C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v8 + 16))(v10, v2 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v7);
  v14 = v10;
  v15 = a1;
  v16 = a2;
  os_unfair_lock_lock((v11 + 24));
  sub_1B723C5E4((v11 + 16), &v17);
  os_unfair_lock_unlock((v11 + 24));
  if (!v3)
  {
    v4 = v17;
  }

  (*(v8 + 8))(v10, v7);
  return v4;
}

uint64_t sub_1B723940C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v8 + 16))(v10, v2 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v7);
  v14 = v10;
  v15 = a1;
  v16 = a2;
  os_unfair_lock_lock((v11 + 24));
  sub_1B723C5C4((v11 + 16), &v17);
  os_unfair_lock_unlock((v11 + 24));
  if (!v3)
  {
    v4 = v17;
  }

  (*(v8 + 8))(v10, v7);
  return v4;
}

uint64_t sub_1B723957C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v6);
  v13 = v9;
  v14 = a1;
  v15 = a2;
  os_unfair_lock_lock((v10 + 24));
  sub_1B723C21C((v10 + 16), &v16);
  os_unfair_lock_unlock((v10 + 24));
  if (!v3)
  {
    LOBYTE(a2) = v16;
  }

  (*(v7 + 8))(v9, v6);
  return a2 & 1;
}

uint64_t sub_1B72396EC()
{
  v0 = sub_1B77FF4F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF3D8();
  v4 = sub_1B77FF3E8();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v4 == 0x726F74535F53442ELL && v6 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B723983C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1B7239A6C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B7239968(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1B7239BA8(*(*(v2 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B7239A6C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B78022F8();
  sub_1B7800798();
  v6 = sub_1B7802368();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B78020F8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B7257238();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1B7239F5C(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1B7239BA8@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = a1;
  v5 = *v2;
  sub_1B78022F8();
  sub_1B7802328();
  result = sub_1B7802368();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != v4)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B72573BC();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = sub_1B723A120(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 13;
  }

  return result;
}

uint64_t sub_1B7239CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B71B6774(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  v31 = a1;
  v10 = sub_1B7800758();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1B71B6774(&qword_1EB99DBE0, MEMORY[0x1E69695A8]);
      v19 = sub_1B7800828();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B7257394();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1B723A2C8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_1B7239F5C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B78018D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B78022F8();

        sub_1B7800798();
        v10 = sub_1B7802368();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B723A120(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B78018D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B78022F8();
        sub_1B7802328();
        v10 = sub_1B7802368() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B723A2C8(int64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1B78018D8();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1B71B6774(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
        v24 = sub_1B7800758();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

void *sub_1B723A5D0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B76B4E0C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B723A660(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990050);
  result = sub_1B7801A28();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B78022F8();

    sub_1B7800798();
    result = sub_1B7802368();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B723A884(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FFE0);
  result = sub_1B7801A28();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1B78022F8();
    sub_1B7802328();
    result = sub_1B7802368();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B723AA8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF50);
  result = sub_1B7801A28();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1B7801548();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL _s10FinanceKit19ContentPackageErrorO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (sub_1B78020F8() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1B723AD28()
{
  result = qword_1EB98FF48;
  if (!qword_1EB98FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FF48);
  }

  return result;
}

uint64_t sub_1B723ADB0(uint64_t a1)
{
  v2 = sub_1B77FE748();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B71B6774(&qword_1EB98FFD0, MEMORY[0x1E6967E70]);
  result = MEMORY[0x1B8CA52E0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1B724E558(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1B723AF4C(uint64_t a1)
{
  v2 = sub_1B77FFA18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B71B6774(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1B8CA52E0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1B724E840(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1B723B178(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_1B71B6774(a3, a4);
    result = MEMORY[0x1B8CA52E0](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8CA5DC0](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_1B7801958();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_1B7801958();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B723B5E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B723BB70();
  result = MEMORY[0x1B8CA52E0](v2, &type metadata for FinanceKitPublicValues, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B72509B8(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B723B658(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CA52E0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B724E408(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B723B7C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B723C420();
  result = MEMORY[0x1B8CA52E0](v2, &type metadata for FoundInMailItem.OrderDetails, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v13[4] = *(v5 + 64);
      v14 = *(v5 + 80);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_1B723C474(v13, v10);
      sub_1B72518E0(v8, v13);
      v10[3] = v8[3];
      v10[4] = v8[4];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      v10[2] = v8[2];
      sub_1B723C4D0(v10);
      v5 += 88;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_1B723B8A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B723C370();
  result = MEMORY[0x1B8CA52E0](v2, &type metadata for SpotlightUniqueIdentifier, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = v5[2];
      sub_1B723C3C4(v9, v7);
      sub_1B7251668(v7, v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B723B9A4(uint64_t a1)
{
  v2 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B71B6774(&qword_1EB98FFA8, type metadata accessor for CascadeExtractedOrder.OrderEmail);
  result = MEMORY[0x1B8CA52E0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1B723C254(v12, v6, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      sub_1B7251F48(v8, v6);
      sub_1B723C2BC(v8, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1B723BB64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1B723BB70()
{
  result = qword_1EDAF8F98[0];
  if (!qword_1EDAF8F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAF8F98);
  }

  return result;
}

uint64_t sub_1B723BBC4(uint64_t a1)
{
  v2 = sub_1B77FF4F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B71B6774(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
  result = MEMORY[0x1B8CA52E0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1B7252908(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1B723BE38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B723C118();
  result = MEMORY[0x1B8CA52E0](v2, &type metadata for WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v12[2] = v5[2];
      v12[3] = v6;
      v12[4] = v5[4];
      v8 = *v5;
      v7 = v5[1];
      v5 += 5;
      v12[0] = v8;
      v12[1] = v7;
      sub_1B723C16C(v12, v10);
      sub_1B7253338(v9, v12);
      v10[2] = v9[2];
      v10[3] = v9[3];
      v10[4] = v9[4];
      v10[0] = v9[0];
      v10[1] = v9[1];
      sub_1B723C1C8(v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1B723C044(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1B8CA52E0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_1B723C0C4()
{
  result = qword_1EB98FF58;
  if (!qword_1EB98FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FF58);
  }

  return result;
}

unint64_t sub_1B723C118()
{
  result = qword_1EB98FF80;
  if (!qword_1EB98FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FF80);
  }

  return result;
}

uint64_t sub_1B723C21C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B724512C(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B723C254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B723C2BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B723C31C()
{
  result = qword_1EB98FFB0;
  if (!qword_1EB98FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FFB0);
  }

  return result;
}

unint64_t sub_1B723C370()
{
  result = qword_1EDAFCB80;
  if (!qword_1EDAFCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFCB80);
  }

  return result;
}

unint64_t sub_1B723C420()
{
  result = qword_1EDAFCEF0;
  if (!qword_1EDAFCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFCEF0);
  }

  return result;
}

unint64_t sub_1B723C524()
{
  result = qword_1EB98F930;
  if (!qword_1EB98F930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB98F930);
  }

  return result;
}

unint64_t sub_1B723C570()
{
  result = qword_1EB98FFE8;
  if (!qword_1EB98FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FFE8);
  }

  return result;
}

void *sub_1B723C5E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B7244BAC(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WalletFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

const char *sub_1B723C6BC()
{
  v1 = "BankConnectShowCreditPaymentDetails";
  v2 = "BankConnectPushNotifications";
  if (*v0 != 2)
  {
    v2 = "BankConnectShowWidget";
  }

  if (*v0)
  {
    v1 = "BankConnectShowCreditPaymentOverdueDetails";
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

Swift::Bool __swiftcall isWalletFeatureEnabled(_:)(FinanceKit::WalletFeatureFlag a1)
{
  v1 = *a1;
  v5 = &type metadata for FeatureFlag;
  v6 = sub_1B723C78C();
  v4[0] = v1;
  v2 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_1B723C78C()
{
  result = qword_1EDAFA638;
  if (!qword_1EDAFA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA638);
  }

  return result;
}

unint64_t sub_1B723C7E4()
{
  result = qword_1EB990058;
  if (!qword_1EB990058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990058);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B723C9A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B723CB74(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2]();
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B723CD74(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B723CE04, 0, 0);
}

uint64_t sub_1B723CE04()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v2 + OBJC_IVAR___XPCBackgroundDataType_value);
  v8 = (*(v4 + 8) + **(v4 + 8));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B723CF48;

  return v8(v5, v3, v4);
}

uint64_t sub_1B723CF48()
{

  return MEMORY[0x1EEE6DFA0](sub_1B723D044, 0, 0);
}

uint64_t sub_1B723D044()
{
  v1 = v0[4];
  v2 = v0[2];

  v1[2](v1);
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B723D23C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1B723D2B8, 0, 0);
}

uint64_t sub_1B723D2B8()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1B723D3E0;

  return v6(v2, v3);
}

uint64_t sub_1B723D3E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B723D4DC, 0, 0);
}

uint64_t sub_1B723D4DC()
{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B723D554()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B7201BB0;

  return sub_1B723D23C(v2, v3);
}

uint64_t sub_1B723D600()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B77E477C(v2, v3, v4);
}

uint64_t sub_1B723D6C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B723CD74(v2, v3, v4);
}

uint64_t sub_1B723D774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B77E4864(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B723D880()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B723838C;

  return sub_1B723CB74(v2);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

FinanceKit::SaveOrderUIInfoKeys_optional __swiftcall SaveOrderUIInfoKeys.init(rawValue:)(Swift::String rawValue)
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

uint64_t SaveOrderUIInfoKeys.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1B723DA08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001B7872C70;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0x80000001B7872C70;
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

unint64_t sub_1B723DAB0()
{
  result = qword_1EB990060;
  if (!qword_1EB990060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990060);
  }

  return result;
}

uint64_t sub_1B723DB04()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B723DB84()
{
  sub_1B7800798();
}

uint64_t sub_1B723DBF0()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B723DC6C@<X0>(char *a1@<X8>)
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

void sub_1B723DCCC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001B7872C70;
  v3 = 1635017060;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t SupportedAuthTypes.debugDescription.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1B723E180(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1B723E180((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, "appExtension");
  v5[45] = 0;
  *(v5 + 23) = -5120;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B723E180(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B723E180((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x707041687475616FLL;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B723E180(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1B723E180((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x626557687475616FLL;
    *(v11 + 5) = 0xE800000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B723E0F4();
  v12 = sub_1B78007C8();
  v14 = v13;

  MEMORY[0x1B8CA4D30](v12, v14);

  MEMORY[0x1B8CA4D30](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1B723E068()
{
  sub_1B78022F8();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t sub_1B723E0B0()
{
  sub_1B78022F8();
  sub_1B7802328();
  return sub_1B7802368();
}

unint64_t sub_1B723E0F4()
{
  result = qword_1EDAF64B0;
  if (!qword_1EDAF64B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99A670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF64B0);
  }

  return result;
}

char *sub_1B723E180(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B723E290()
{
  result = qword_1EB990068;
  if (!qword_1EB990068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990068);
  }

  return result;
}

unint64_t sub_1B723E2E8()
{
  result = qword_1EB990070;
  if (!qword_1EB990070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990070);
  }

  return result;
}

unint64_t sub_1B723E33C()
{
  result = qword_1EB990078;
  if (!qword_1EB990078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990078);
  }

  return result;
}

unint64_t sub_1B723E394()
{
  result = qword_1EB990080;
  if (!qword_1EB990080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990080);
  }

  return result;
}

char *sub_1B723E420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1B723E524(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901A8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901B0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B723E73C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B723E848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B723EAD0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1B723EC60(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990180);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B723ED94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1B723EED0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1B723EFEC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990118);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B723F198(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B723F2C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B723F3E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990148);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B723F58C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1B723F77C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1B723F89C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1B723F9D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B723FAE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1B723FC60(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}