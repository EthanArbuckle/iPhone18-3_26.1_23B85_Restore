uint64_t sub_1B738FAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B738FB5C()
{
  result = qword_1EB992E30;
  if (!qword_1EB992E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E30);
  }

  return result;
}

id TrillianTransactionImporter.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10FinanceKit27TrillianTransactionImporter_store] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TrillianTransactionImporter.init(store:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10FinanceKit27TrillianTransactionImporter_store] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TrillianTransactionImporter();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1B738FDB0(void *a1)
{
  v2 = [a1 paymentHash];
  if (!v2)
  {
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v13 = sub_1B78000B8();
    __swift_project_value_buffer(v13, qword_1EDAF6550);
    v28 = sub_1B7800098();
    v10 = sub_1B78011D8();
    if (!os_log_type_enabled(v28, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Transaction does not have a payment hash, skipping Trillian registration";
    goto LABEL_11;
  }

  v3 = v2;
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = sub_1B77ED25C(v4, v6);
  if (v8 >> 60 == 15)
  {
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v9 = sub_1B78000B8();
    __swift_project_value_buffer(v9, qword_1EDAF6550);
    v28 = sub_1B7800098();
    v10 = sub_1B78011D8();
    if (!os_log_type_enabled(v28, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Failed to decode transaction identifier";
LABEL_11:
    _os_log_impl(&dword_1B7198000, v28, v10, v12, v11, 2u);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
LABEL_12:

    return;
  }

  v14 = v7;
  v15 = v8;
  v16 = v1;
  sub_1B720ABEC(v7, v8);
  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v17 = sub_1B78000B8();
  __swift_project_value_buffer(v17, qword_1EDAF6550);
  sub_1B720ABEC(v14, v15);
  v18 = sub_1B7800098();
  v19 = sub_1B78011F8();
  sub_1B72380B8(v14, v15);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    sub_1B720ABEC(v14, v15);
    v22 = sub_1B72B71E4(v14, v15);
    v24 = v23;
    sub_1B72380B8(v14, v15);
    v25 = sub_1B71A3EF8(v22, v24, &v29);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1B7198000, v18, v19, "Creating new pending registration for transaction %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1B8CA7A40](v21, -1, -1);
    MEMORY[0x1B8CA7A40](v20, -1, -1);
  }

  v26 = [*(*(v16 + OBJC_IVAR____TtC10FinanceKit27TrillianTransactionImporter_store) + 16) newBackgroundContext];
  v27 = MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  sub_1B7801468();
  sub_1B72380B8(v14, v15);
  sub_1B72380B8(v14, v15);
}

void sub_1B73902F8(void *a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedPendingApplePayTransactionRegistration();
  v23[0] = a1;
  v23[1] = a2;
  sub_1B720ABEC(a1, a2);
  v6 = a3;
  v7 = ManagedPendingApplePayTransactionRegistration.__allocating_init(transactionIdentifier:context:)(v23, v6);
  v23[0] = 0;
  if ([v6 save_])
  {
    v8 = v23[0];
    v9 = [v7 objectID];
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v10 = sub_1B78000B8();
    __swift_project_value_buffer(v10, qword_1EDAF6550);
    sub_1B720ABEC(a1, a2);
    v11 = v9;
    v12 = sub_1B7800098();
    v13 = sub_1B78011B8();

    sub_1B720A388(a1, a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v7;
      v23[0] = swift_slowAlloc();
      v16 = v23[0];
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2080;
      v17 = v11;
      v18 = sub_1B72B71E4(a1, a2);
      v20 = sub_1B71A3EF8(v18, v19, v23);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B7198000, v12, v13, "Saved pending registration %@ for transaction %s", v14, 0x16u);
      sub_1B726B694(v15);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
      MEMORY[0x1B8CA7A40](v14, -1, -1);

      return;
    }
  }

  else
  {
    v21 = v23[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

id TrillianTransactionImporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrillianTransactionImporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B7390658()
{
  if (qword_1EDAF8960 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAF8968;
  os_unfair_lock_lock((qword_1EDAF8968 + 24));
  sub_1B75E5458((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  if (!v0)
  {
    v2 = *(v6 + 16);

    v3 = type metadata accessor for TrillianTransactionImporter();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC10FinanceKit27TrillianTransactionImporter_store] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    objc_msgSendSuper2(&v5, sel_init);
  }
}

uint64_t CoreDataStoreConfigurationName.rawValue.getter()
{
  v1 = 0x64756F6C43;
  if (*v0 != 1)
  {
    v1 = 0x786F62706F7244;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61636F4CLL;
  }
}

FinanceKit::CoreDataStoreConfigurationName_optional __swiftcall CoreDataStoreConfigurationName.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1B739088C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x64756F6C43;
  if (v2 != 1)
  {
    v5 = 0x786F62706F7244;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C61636F4CLL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x64756F6C43;
  if (*a2 != 1)
  {
    v8 = 0x786F62706F7244;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C61636F4CLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
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

unint64_t sub_1B7390984()
{
  result = qword_1EB992E40;
  if (!qword_1EB992E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E40);
  }

  return result;
}

uint64_t sub_1B73909D8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7390A74()
{
  sub_1B7800798();
}

uint64_t sub_1B7390AFC()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7390BA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x64756F6C43;
  if (v2 != 1)
  {
    v5 = 0x786F62706F7244;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61636F4CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id NSPersistentStore.subscript.getter@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = "epay";
  v6 = "localOrderHistoryToken";
  v7 = 0xD000000000000013;
  if (*a1 != 2)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "dropboxHistoryToken";
  }

  if (*a1)
  {
    v5 = "cloudOrderHistoryToken";
  }

  if (*a1 <= 1u)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v8 = v7;
  }

  if (*a1 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  result = [v3 metadata];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = sub_1B7800728();

  if (!*(v12 + 16))
  {

    goto LABEL_18;
  }

  v13 = sub_1B724548C(v8, v9 | 0x8000000000000000);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_18:

    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  sub_1B719BDE4(*(v12 + 56) + 32 * v13, a2);
}

id NSPersistentStore.subscript.setter(uint64_t a1, _BYTE *a2)
{
  v3 = "epay";
  v4 = "localOrderHistoryToken";
  v5 = 0xD000000000000013;
  if (*a2 != 2)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "dropboxHistoryToken";
  }

  if (*a2)
  {
    v3 = "cloudOrderHistoryToken";
  }

  if (*a2 <= 1u)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = v5;
  }

  if (*a2 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = v2;
  sub_1B7303F28(a1, &v18);
  result = [v2 metadata];
  if (result)
  {
    v11 = result;
    v12 = sub_1B7800728();

    v17 = v12;
    if (v19)
    {
      sub_1B72051F0(&v18, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v12;
      sub_1B7392B14(v16, v6, v7 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

      if (v12)
      {
LABEL_14:
        v14 = sub_1B7800708();

LABEL_17:
        [v8 setMetadata_];

        return sub_1B726990C(a1);
      }
    }

    else
    {
      sub_1B726990C(&v18);
      sub_1B73913A8(v6, v7 | 0x8000000000000000, v16);

      sub_1B726990C(v16);
      if (v17)
      {
        goto LABEL_14;
      }
    }

    v14 = 0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

FinanceKit::CoreDataStoreMetadataKey_optional __swiftcall CoreDataStoreMetadataKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CoreDataStoreMetadataKey.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B7391010()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73910C0()
{
  sub_1B7800798();
}

uint64_t sub_1B739115C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7391214(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = "epay";
  v4 = "localOrderHistoryToken";
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "dropboxHistoryToken";
  }

  if (*v1)
  {
    v3 = "cloudOrderHistoryToken";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

void (*NSPersistentStore.subscript.modify(uint64_t *a1, char *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  *a1 = v5;
  *(v5 + 64) = v2;
  v6 = *a2;
  *(v5 + 72) = *a2;
  v8 = v6;
  NSPersistentStore.subscript.getter(&v8, v5);
  return sub_1B7391318;
}

void sub_1B7391318(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[72];
    sub_1B7303F28(*a1, (v2 + 32));
    v4 = v3;
    NSPersistentStore.subscript.setter((v2 + 32), &v4);
    sub_1B726990C(v2);
  }

  else
  {
    v5 = v2[72];
    NSPersistentStore.subscript.setter(v2, &v5);
  }

  free(v2);
}

double sub_1B73913A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B724548C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B725C5FC();
      v10 = v12;
    }

    sub_1B72051F0((*(v10 + 56) + 32 * v8), a3);
    sub_1B7391898(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B7391490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B7245D7C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B725DE30();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
    v19 = *(v12 - 8);
    sub_1B737FA4C(v11 + *(v19 + 72) * v8, a3, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    sub_1B7391BDC(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1B7391640@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1B72454E8(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_1B77FFA18();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_1B737FA4C(v21 + *(v29 + 72) * v20, a6, a3);
    sub_1B7392104(v20, v17, a4);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1B7391800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1B724548C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B725EC84();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1B7392454(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1B7391898(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B78018D8() + 1) & ~v5;
    do
    {
      sub_1B78022F8();

      sub_1B7800798();
      v10 = sub_1B7802368();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B7391A48(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B78018D8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1B78022F8();
      MEMORY[0x1B8CA6620](v9);
      result = sub_1B7802368();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B7391BDC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B78018D8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B78022F8();
      sub_1B7802318();
      if (v9)
      {

        sub_1B7800798();
      }

      v10 = sub_1B7802368();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v3);
      v14 = (v12 + 16 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_22:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B7391DE4(int64_t a1, uint64_t a2)
{
  v40 = sub_1B77FF4F8();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1B78018D8();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1B7394168(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
      v23 = sub_1B7800758();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1B7392104(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_1B78018D8();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_1B7394168(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
      v23 = sub_1B7800758();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B7392454(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B78018D8() + 1) & ~v5;
    do
    {
      sub_1B78022F8();

      sub_1B7800798();
      v9 = sub_1B7802368();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B7392604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v11 = sub_1B77FEF58();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1B7245720(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_1B725BB1C();
      goto LABEL_7;
    }

    sub_1B7247984(v20, a6 & 1);
    v30 = sub_1B7245720(a5);
    if ((v21 & 1) == (v31 & 1))
    {
      v17 = v30;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a5, v11);
      sub_1B737F190(v17, v14, a1, v33, v34, v35, v23);
      return;
    }

LABEL_15:
    sub_1B78021C8();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7] + 32 * v17;
  v25 = *v24;
  v26 = *(v24 + 8);
  v32 = *(v24 + 24);
  v28 = v33;
  v27 = v34;
  *v24 = a1;
  *(v24 + 8) = v28;
  *(v24 + 16) = v27;
  *(v24 + 24) = v35;

  v29 = v32;
}

uint64_t sub_1B7392814(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B724548C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1B725BDC4();
      goto LABEL_7;
    }

    sub_1B7248070(v15, a4 & 1);
    v26 = sub_1B724548C(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1B78021C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1B77FF4F8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1B737F264(v12, a2, a3, a1, v18);
}

_OWORD *sub_1B7392994(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B72635A0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1B725C190();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B7248670(v13, a3 & 1);
    v8 = sub_1B72635A0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1B72051F0(a1, v19);
  }

  else
  {
    sub_1B737F314(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_1B7392B14(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B724548C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B725C5FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B7248F3C(v16, a4 & 1);
    v11 = sub_1B724548C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1B72051F0(a1, v22);
  }

  else
  {
    sub_1B737F37C(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1B7392C68()
{
  result = qword_1EB992E48;
  if (!qword_1EB992E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E48);
  }

  return result;
}

unint64_t sub_1B7392CCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B724548C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1B725C7A0();
      result = v19;
      goto LABEL_8;
    }

    sub_1B72491F4(v16, a4 & 1);
    result = sub_1B724548C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_1B737F3E8(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_1B7392DFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B7245A78(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1B725C908();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1B7249494(v18, a5 & 1);
    v13 = sub_1B7245A78(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {
    sub_1B737F430(v13, a2, a3, a4, a1, v23);

    return sub_1B72630BC(a2, a3, a4);
  }
}

uint64_t sub_1B7392F5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B72454E8(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B725CBFC();
      goto LABEL_7;
    }

    sub_1B7249A68(v17, a3 & 1);
    v22 = sub_1B72454E8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1B737FAB4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1B78021C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v20 + 56) + 8 * v14) = a1;
}

uint64_t sub_1B7393168(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1B724548C(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1B724548C(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1B78021C8();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  a7(v17, a2, a3, a1, v27);
}

unint64_t sub_1B73932D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B726359C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B725CC4C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B7249E84(v14, a3 & 1);
    v9 = sub_1B726359C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1B78021C8();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  return sub_1B737F480(v9, a2, a1, v19);
}

uint64_t sub_1B73933F0(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B7245CF0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 < v14 || (a3 & 1) != 0)
  {
    sub_1B724A68C(v14, a3 & 1);
    v9 = sub_1B7245CF0(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    sub_1B78021C8();
    __break(1u);
    return MEMORY[0x1EEE66BB8]();
  }

  v17 = v9;
  sub_1B725D088();
  v9 = v17;
LABEL_8:
  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    sub_1B737F4C4(v9, a2, a1, v19);
    return sub_1B723C474(a2, v21);
  }

  *(v19[7] + 8 * v9) = a1;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B739351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B724548C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1B725CA84();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1B7249794(v18, a5 & 1);
    v13 = sub_1B724548C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1B737F52C(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_1B739366C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B7263594(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B725D960();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B724B9E4(v14, a3 & 1);
    v9 = sub_1B7263594(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 56 * v9;

    return sub_1B739410C(a1, v20);
  }

  else
  {

    return sub_1B737F634(v9, a2, a1, v19);
  }
}

uint64_t sub_1B7393790(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B72454E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
      return sub_1B73941B0(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1B725DB04();
    goto LABEL_7;
  }

  sub_1B724BCFC(v17, a3 & 1);
  v24 = sub_1B72454E8(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1B78021C8();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1B737F694(v14, v11, a1, v20);
}

uint64_t sub_1B7393964(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B7245D7C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
      return sub_1B73941B0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B725DE30();
    goto LABEL_7;
  }

  sub_1B724C1A0(v15, a4 & 1);
  v22 = sub_1B7245D7C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D98);
    result = sub_1B78021C8();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B737F6C0(v12, a2, a3, a1, v18);
}

uint64_t sub_1B7393ADC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B72454E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for TransactionGroup.StylingMetadata(0);
      return sub_1B73941B0(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for TransactionGroup.StylingMetadata);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1B725E958();
    goto LABEL_7;
  }

  sub_1B724D33C(v17, a3 & 1);
  v24 = sub_1B72454E8(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1B78021C8();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1B737F76C(v14, v11, a1, v20);
}

uint64_t sub_1B7393CB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B724548C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B725EC84();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B724D7E0(v16, a4 & 1);
    v11 = sub_1B724548C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1B737F3E8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1B7393DF8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B7245898(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B725EDF4();
      goto LABEL_7;
    }

    sub_1B724DA88(v13, a3 & 1);
    v19 = sub_1B7245898(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B72238E4(a2, v21);
      return sub_1B737F88C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1B78021C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1B72051F0(a1, v17);
}

unint64_t sub_1B7393F44(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1B71B4B14(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1B725EF98();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1B724DFF4(v20, a6 & 1);
    v15 = sub_1B71B4B14(a2, a3, a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1B78021C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 48 * v15;

    return sub_1B73940B0(a1, v26);
  }

  else
  {

    return sub_1B737F908(v15, a2, a3, a4, a5, a1, v25);
  }
}

uint64_t sub_1B7394168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B73941B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id BalanceAmountFormatter.__allocating_init(locale:signDisplayStrategy:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = OBJC_IVAR____TtC10FinanceKit22BalanceAmountFormatter_locale;
  v8 = sub_1B77FFAF8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  v10 = OBJC_IVAR____TtC10FinanceKit22BalanceAmountFormatter_signDisplayStrategy;
  v11 = sub_1B77FF358();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v6[v10], a2, v11);
  v15.receiver = v6;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v12 + 8))(a2, v11);
  (*(v9 + 8))(a1, v8);
  return v13;
}

id BalanceAmountFormatter.init(locale:signDisplayStrategy:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC10FinanceKit22BalanceAmountFormatter_locale;
  v8 = sub_1B77FFAF8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v10 = OBJC_IVAR____TtC10FinanceKit22BalanceAmountFormatter_signDisplayStrategy;
  v11 = sub_1B77FF358();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v3[v10], a2, v11);
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v12 + 8))(a2, v11);
  (*(v9 + 8))(a1, v8);
  return v13;
}

uint64_t BalanceAmountFormatter.formatAvailableBalanceAmount(_:with:using:)(unsigned int *a1, unsigned __int8 *a2)
{
  v40 = a2;
  v3 = sub_1B77FFAF8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B78015B8();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v37 - v10;
  v11 = *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = *(a1 + 4);
  v15 = *(a1 + 5);
  v16 = *(a1 + 6);
  v17 = *(a1 + 7);
  v18 = *(a1 + 8);
  v19 = *(a1 + 9);
  v20 = *(a1 + 3);
  v41 = *(a1 + 4);
  v42 = v20;
  v21 = *v40;
  v22 = MEMORY[0x1B8CA5910](0);
  v37 = v11;
  v39 = v14 | (v15 << 16) | (v16 << 32) | (v17 << 48);
  v40 = (v11 | (v12 << 32) | (v13 << 48));
  v38 = v18 | (v19 << 16);
  if ((MEMORY[0x1B8CA5940](v22) & 1) != 0 && v21)
  {
    LODWORD(v50) = v37;
    WORD2(v50) = v12;
    WORD3(v50) = v13;
    WORD4(v50) = v14;
    WORD5(v50) = v15;
    WORD6(v50) = v16;
    HIWORD(v50) = v17;
    LOWORD(v51) = v18;
    HIWORD(v51) = v19;
    v23 = v41;

    sub_1B78016A8();
    v52 = v50;
    v53 = v51;
    v54 = v42;
    v55 = v23;

    sub_1B77FFA68();
    v24 = v43;
    sub_1B7801588();
    v25 = v45;
    sub_1B7801598();
    v26 = *(v47 + 8);
    v27 = v24;
    v28 = v48;
    v26(v27, v48);
    v29 = v46;
    sub_1B78015A8();
    v26(v25, v28);
    sub_1B72AA7E0();
    sub_1B78016C8();
    v26(v29, v28);
    sub_1B721722C(&v52);
    return v49;
  }

  else
  {

    sub_1B77FFA68();
    v31 = v43;
    sub_1B7801588();
    v32 = v45;
    sub_1B7801598();
    v33 = *(v47 + 8);
    v34 = v31;
    v35 = v48;
    v33(v34, v48);
    v36 = v46;
    sub_1B78015A8();
    v33(v32, v35);
    sub_1B72AA7E0();
    sub_1B78016C8();
    v33(v36, v35);
    return v52;
  }
}

uint64_t BalanceAmountFormatter.formatBookedBalanceAmount(_:with:using:)(unsigned int *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v42 = a3;
  v43 = a2;
  v4 = sub_1B77FFAF8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B78015B8();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v38 - v11;
  v12 = *a1;
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  v16 = *(a1 + 5);
  v17 = *(a1 + 6);
  v18 = *(a1 + 7);
  v19 = *(a1 + 8);
  v20 = *(a1 + 9);
  v21 = *(a1 + 3);
  v44 = *(a1 + 4);
  v45 = v21;
  LODWORD(v43) = *v43;
  v22 = *v42;
  v23 = MEMORY[0x1B8CA5910](0);
  v39 = v12;
  v42 = (v12 | (v13 << 32) | (v14 << 48));
  v41 = v15 | (v16 << 16) | (v17 << 32) | (v18 << 48);
  v40 = v19 | (v20 << 16);
  if (MEMORY[0x1B8CA5940](v23) & 1) != 0 && ((v43 ^ v22))
  {
    LODWORD(v53) = v39;
    WORD2(v53) = v13;
    WORD3(v53) = v14;
    WORD4(v53) = v15;
    WORD5(v53) = v16;
    WORD6(v53) = v17;
    HIWORD(v53) = v18;
    LOWORD(v54) = v19;
    HIWORD(v54) = v20;
    v24 = v44;

    sub_1B78016A8();
    v55 = v53;
    v56 = v54;
    v57 = v45;
    v58 = v24;

    sub_1B77FFA68();
    v25 = v46;
    sub_1B7801588();
    v26 = v48;
    sub_1B7801598();
    v27 = *(v50 + 8);
    v28 = v25;
    v29 = v51;
    v27(v28, v51);
    v30 = v49;
    sub_1B78015A8();
    v27(v26, v29);
    sub_1B72AA7E0();
    sub_1B78016C8();
    v27(v30, v29);
    sub_1B721722C(&v55);
    return v52;
  }

  else
  {

    sub_1B77FFA68();
    v32 = v46;
    sub_1B7801588();
    v33 = v48;
    sub_1B7801598();
    v34 = *(v50 + 8);
    v35 = v32;
    v36 = v51;
    v34(v35, v51);
    v37 = v49;
    sub_1B78015A8();
    v34(v33, v36);
    sub_1B72AA7E0();
    sub_1B78016C8();
    v34(v37, v36);
    return v55;
  }
}

id BalanceAmountFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BalanceAmountFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BalanceAmountFormatter()
{
  result = qword_1EB992E50;
  if (!qword_1EB992E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7394EA8()
{
  result = sub_1B77FFAF8();
  if (v1 <= 0x3F)
  {
    result = sub_1B77FF358();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ThumbnailConfiguration.init(images:size:scale:options:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  v9 = *(a2 + 10);
  v10 = a2[2];
  v11 = *(a2 + 24);
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 41) = v8;
  *(a3 + 42) = v9;
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  return result;
}

uint64_t sub_1B7394FDC()
{
  v1 = 0x736567616D69;
  v2 = 0x656C616373;
  if (*v0 != 2)
  {
    v2 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    v1 = 1702521203;
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

uint64_t sub_1B7395048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73961E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7395070(uint64_t a1)
{
  v2 = sub_1B73953D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73950AC(uint64_t a1)
{
  v2 = sub_1B73953D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ThumbnailConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992E60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v12 = v1[3];
  v11 = v1[4];
  v28 = *(v1 + 40);
  v13 = *(v1 + 41);
  v22 = *(v1 + 42);
  v23 = v13;
  v21 = v1[6];
  v20 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73953D0();

  sub_1B78023F8();
  v24 = v8;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992E70);
  sub_1B73958EC(&qword_1EB992E78, sub_1B7395424);
  sub_1B7801FC8();

  if (!v2)
  {
    v14 = v21;
    v16 = v22;
    v15 = v23;
    v17 = v28;
    v24 = v9;
    v25 = v10;
    v29 = 1;
    type metadata accessor for CGSize(0);
    sub_1B73959B8(&qword_1EB992E88);
    sub_1B7801FC8();
    v24 = v12;
    v29 = 2;
    sub_1B7395478();
    sub_1B7801FC8();
    v24 = v11;
    LOBYTE(v25) = v17;
    BYTE1(v25) = v15;
    BYTE2(v25) = v16;
    v26 = v14;
    v27 = v20;
    v29 = 3;
    sub_1B73954CC();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B73953D0()
{
  result = qword_1EB992E68;
  if (!qword_1EB992E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E68);
  }

  return result;
}

unint64_t sub_1B7395424()
{
  result = qword_1EB992E80;
  if (!qword_1EB992E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E80);
  }

  return result;
}

unint64_t sub_1B7395478()
{
  result = qword_1EB992E90;
  if (!qword_1EB992E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E90);
  }

  return result;
}

unint64_t sub_1B73954CC()
{
  result = qword_1EB992E98;
  if (!qword_1EB992E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E98);
  }

  return result;
}

uint64_t ThumbnailConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992EA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73953D0();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992E70);
  LOBYTE(v24) = 0;
  sub_1B73958EC(&qword_1EB992EA8, sub_1B7395964);
  sub_1B7801E48();
  v9 = v27;
  type metadata accessor for CGSize(0);
  LOBYTE(v24) = 1;
  sub_1B73959B8(&qword_1EB992EB8);
  sub_1B7801E48();
  v10 = v27;
  v11 = v28;
  LOBYTE(v24) = 2;
  sub_1B73959FC();
  sub_1B7801E48();
  v12 = v27;
  v39 = 3;
  sub_1B7395A50();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v13 = v40;
  v14 = v41;
  v15 = HIBYTE(v41);
  v16 = v42;
  v17 = v43;
  v18 = v44;
  *&v24 = v9;
  *(&v24 + 1) = v10;
  *&v25 = v11;
  *(&v25 + 1) = v12;
  *v26 = v40;
  *&v26[8] = v41;
  v26[10] = v42;
  *&v26[11] = v45;
  v26[15] = v46;
  *&v26[16] = v43;
  v26[24] = v44;
  v19 = v24;
  v20 = v25;
  v21 = *v26;
  *(a2 + 41) = *&v26[9];
  a2[1] = v20;
  a2[2] = v21;
  *a2 = v19;
  sub_1B720A8E4(&v24, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v45;
  v36 = v46;
  v37 = v17;
  v38 = v18;
  return sub_1B720A994(&v27);
}

uint64_t sub_1B73958EC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992E70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7395964()
{
  result = qword_1EB992EB0;
  if (!qword_1EB992EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992EB0);
  }

  return result;
}

uint64_t sub_1B73959B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B73959FC()
{
  result = qword_1EB992EC0;
  if (!qword_1EB992EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992EC0);
  }

  return result;
}

unint64_t sub_1B7395A50()
{
  result = qword_1EB992EC8;
  if (!qword_1EB992EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992EC8);
  }

  return result;
}

uint64_t ThumbnailConfiguration.XPC.value.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 16);
  v7[0] = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value);
  v7[1] = v2;
  v8[0] = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 32);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1B720A8E4(v7, &v6);
}

id ThumbnailConfiguration.XPC.__allocating_init(value:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___XPCThumbnailConfiguration_value];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = a1[2];
  *(v4 + 41) = *(a1 + 41);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ThumbnailConfiguration.XPC.init(value:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___XPCThumbnailConfiguration_value];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = a1[2];
  *(v4 + 41) = *(a1 + 41);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ThumbnailConfiguration.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7208430(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id ThumbnailConfiguration.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7208430(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id ThumbnailConfiguration.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ThumbnailConfiguration.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7395E64@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 16);
  v7[0] = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value);
  v7[1] = v2;
  v8[0] = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 32);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + OBJC_IVAR___XPCThumbnailConfiguration_value + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1B720A8E4(v7, &v6);
}

id sub_1B7395EBC(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___XPCThumbnailConfiguration_value];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = a1[2];
  *(v4 + 41) = *(a1 + 41);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ThumbnailConfiguration.xpcValue.getter()
{
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v10[0] = v0[2];
  *(v10 + 9) = *(v0 + 41);
  v2 = type metadata accessor for ThumbnailConfiguration.XPC();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___XPCThumbnailConfiguration_value];
  v5 = v0[1];
  *v4 = *v0;
  *(v4 + 1) = v5;
  *(v4 + 2) = v0[2];
  *(v4 + 41) = *(v0 + 41);
  sub_1B720A8E4(v9, v8);
  v7.receiver = v3;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B7395FFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1B7396044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B73960E4()
{
  result = qword_1EB992EE0;
  if (!qword_1EB992EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992EE0);
  }

  return result;
}

unint64_t sub_1B739613C()
{
  result = qword_1EB992EE8;
  if (!qword_1EB992EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992EE8);
  }

  return result;
}

unint64_t sub_1B7396194()
{
  result = qword_1EB992EF0;
  if (!qword_1EB992EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992EF0);
  }

  return result;
}

uint64_t sub_1B73961E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736567616D69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t FinancialInsightsExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_1B7396554;
  a3[1] = v10;
  return result;
}

uint64_t sub_1B739646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v13[3] = a3;
  v13[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_1B719B06C(v13, v12);
  type metadata accessor for FinancialInsightsExtensionModel();
  v9 = swift_allocObject();
  sub_1B71E4C44(v12, v9 + 16);
  v10 = *(a1 + 16);
  [v10 setExportedObject_];

  [v10 resume];
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t dispatch thunk of FinancialInsightsExtensionProviding.financialInsights(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B721FB60;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FinancialInsightsExtensionProviding.financialInsights()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7396848;

  return v7(a1, a2);
}

unint64_t sub_1B73967E4()
{
  result = qword_1EB992F00;
  if (!qword_1EB992F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992F00);
  }

  return result;
}

uint64_t MapsCategory.init(from:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }

      goto LABEL_18;
    }

    if (!result)
    {
      v2 = 0;
LABEL_18:
      *a2 = v2;
      return result;
    }

    if (result == 1)
    {
      v2 = 1;
      goto LABEL_18;
    }

LABEL_20:
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000001BLL, 0x80000001B787CFE0);
    type metadata accessor for FKMerchantCategory(0);
    sub_1B7801C48();
    goto LABEL_21;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    goto LABEL_18;
  }

  if (result == 6)
  {
    v2 = 6;
    goto LABEL_18;
  }

  if (result == 7)
  {
    v2 = 7;
    goto LABEL_18;
  }

  if (result != 8)
  {
    goto LABEL_20;
  }

LABEL_21:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t FinanceStore.refreshOrder(with:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for FinanceStore.Message();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B7396AA0, 0, 0);
}

uint64_t sub_1B7396AA0()
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

uint64_t sub_1B7396B44()
{
  v1 = v0[17];
  v0[2] = v0;
  v0[3] = sub_1B7396BEC;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7396BEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B7396D78;
  }

  else
  {
    v2 = sub_1B7396D08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7396D08()
{
  sub_1B72A820C(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7396D78()
{
  sub_1B72A820C(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CoreDataStoreServer.__allocating_init(for:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CoreDataStoreServer.init(for:)(a1);
  return v2;
}

void CoreDataStoreServer.init(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - v5;
  swift_unknownObjectWeakInit();
  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAFD2D0);
  v8 = sub_1B7800098();
  v9 = sub_1B78011B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B7198000, v8, v9, "CoreDataStoreServer: Initialize NSXPCStoreServer", v10, 2u);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
  }

  type metadata accessor for CoreDataStoreServerDelegate();
  v11 = swift_allocObject();
  v25[0] = v2;
  swift_unknownObjectWeakAssign();
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6, a1, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  if (qword_1EDAFD058 != -1)
  {
    swift_once();
  }

  v14 = sub_1B73721BC();
  [v14 mutableCopy];
  sub_1B7801848();

  swift_unknownObjectRelease();
  sub_1B739747C();
  swift_dynamicCast();
  v15 = v25[1];
  v16 = type metadata accessor for CoreDataStoreServerConfiguration();
  sub_1B7222A0C(*(a1 + *(v16 + 24)));
  v17 = a1;
  v18 = *(a1 + *(v16 + 20));
  v19 = (*(v13 + 48))(v6, 1, v12);
  v20 = v18;
  v21 = 0;
  if (v19 != 1)
  {
    v21 = sub_1B77FF3F8();
    (*(v13 + 8))(v6, v12);
  }

  v22 = objc_allocWithZone(MEMORY[0x1E695D6F8]);
  v23 = sub_1B7800708();

  v24 = [v22 initForStoreWithURL:v21 usingModel:v15 options:v23 policy:v20];

  *(v25[0] + 16) = v24;
  if (v24)
  {
    [v24 setDelegate_];

    sub_1B73974C8(v17);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CoreDataStoreServer.start()()
{
  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAFD2D0);
  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "CoreDataStoreServer: Starting NSXPCStoreServer", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  v5 = *(v0 + 16);
  if (v5)
  {
    [v5 startListening];
    oslog = sub_1B7800098();
    v6 = sub_1B78011B8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7198000, oslog, v6, "CoreDataStoreServer: Started NSXPCStoreServer", v7, 2u);
      MEMORY[0x1B8CA7A40](v7, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void *CoreDataStoreServer.deinit()
{
  result = *(v0 + 16);
  if (result)
  {
    [result setDelegate_];

    sub_1B7397524(v0 + 24);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *CoreDataStoreServer.__deallocating_deinit()
{
  result = *(v0 + 16);
  if (result)
  {
    [result setDelegate_];

    sub_1B7397524(v0 + 24);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B739747C()
{
  result = qword_1EDAFC528;
  if (!qword_1EDAFC528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAFC528);
  }

  return result;
}

uint64_t sub_1B73974C8(uint64_t a1)
{
  v2 = type metadata accessor for CoreDataStoreServerConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t static CoreDataStoreServerConfiguration.defaultServerOptions()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  v1 = *MEMORY[0x1E695D3B8];
  *(inited + 32) = *MEMORY[0x1E695D3B8];
  v2 = v1;
  v3 = sub_1B7372494();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(inited + 64) = v4;
  *(inited + 40) = v3;
  v5 = sub_1B7201ED4(inited);
  swift_setDeallocating();
  sub_1B73978E0(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1B781F810;
  *(v6 + 32) = sub_1B7800868();
  *(v6 + 40) = v7;
  v8 = MEMORY[0x1E69E6370];
  *(v6 + 72) = MEMORY[0x1E69E6370];
  *(v6 + 48) = 1;
  *(v6 + 80) = sub_1B7800868();
  *(v6 + 88) = v9;
  *(v6 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992F10);
  *(v6 + 96) = v5;
  *(v6 + 128) = sub_1B7800868();
  *(v6 + 136) = v10;
  *(v6 + 168) = v8;
  *(v6 + 144) = 1;
  *(v6 + 176) = sub_1B7800868();
  *(v6 + 184) = v11;
  *(v6 + 216) = MEMORY[0x1E69E6158];
  *(v6 + 192) = 0xD000000000000028;
  *(v6 + 200) = 0x80000001B7874E50;
  *(v6 + 224) = sub_1B7800868();
  *(v6 + 232) = v12;
  *(v6 + 264) = v4;
  *(v6 + 240) = &unk_1F2F43778;
  *(v6 + 272) = sub_1B7800868();
  *(v6 + 280) = v13;
  *(v6 + 312) = v8;
  *(v6 + 288) = 1;
  *(v6 + 320) = sub_1B7800868();
  *(v6 + 328) = v14;
  *(v6 + 360) = MEMORY[0x1E69E6530];
  *(v6 + 336) = 2;
  v15 = sub_1B72018E0(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
  swift_arrayDestroy();
  return v15;
}

uint64_t CoreDataStoreServerConfiguration.init(url:handlingPolicy:options:)@<X0>(uint64_t a1@<X0>, id a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  if (!a2)
  {
    a2 = [objc_allocWithZone(type metadata accessor for CoreDataStoreServerHandlingPolicy()) init];
  }

  (*(v9 + 8))(a1, v8);
  result = type metadata accessor for CoreDataStoreServerConfiguration();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1B73978E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CoreDataStoreServerConfiguration()
{
  result = qword_1EDAF7058;
  if (!qword_1EDAF7058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B73979BC()
{
  sub_1B77FF4F8();
  if (v0 <= 0x3F)
  {
    sub_1B7397A58();
    if (v1 <= 0x3F)
    {
      sub_1B7379350();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B7397A58()
{
  result = qword_1EDAF6458;
  if (!qword_1EDAF6458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAF6458);
  }

  return result;
}

uint64_t ManagedInternalTransaction.MonthYearFormatter.format(_:)(uint64_t a1)
{
  v22 = a1;
  v21 = sub_1B77FED28();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatterConfiguration();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v4 = sub_1B77FFC68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7808C50;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x1E6969A68], v4);
  v10(v9 + v6, *MEMORY[0x1E6969A78], v4);
  sub_1B7545E58(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B77FFB68();

  v11 = sub_1B77FEC78();
  if (v12 & 1) != 0 || (v13 = v11, result = sub_1B77FEC58(), (v15))
  {
    (*(v1 + 8))(v3, v21);
    return 0;
  }

  v16 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = __OFADD__(v16, v13);
  v18 = v16 + v13;
  if (v17)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v23 = v18;
  v19 = sub_1B7802068();
  (*(v1 + 8))(v3, v21);
  return v19;
}

Swift::String __swiftcall ManagedInternalTransaction.MonthYearFormatter.format(month:year:)(Swift::Int month, Swift::Int year)
{
  if ((year * 100) >> 64 != (100 * year) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFADD__(100 * year, month))
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  month = sub_1B7802068();
LABEL_6:
  result._object = year;
  result._countAndFlagsBits = month;
  return result;
}

BOOL static ManagedInternalTransaction.MonthYearFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration();
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B7397E4C(uint64_t a1)
{
  v2 = sub_1B7398AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7397E88(uint64_t a1)
{
  v2 = sub_1B7398AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedInternalTransaction.MonthYearFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992F18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7398AD4();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B7398CFC(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ManagedInternalTransaction.MonthYearFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B7398CFC(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7398CFC(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7398CFC(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t ManagedInternalTransaction.MonthYearFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7398CFC(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7398CFC(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7398CFC(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t ManagedInternalTransaction.MonthYearFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992F28);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7398AD4();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v15;
    sub_1B7398CFC(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    v13 = v17;
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B7398B74(v13, v11, type metadata accessor for FormatterConfiguration);
    sub_1B7398B74(v11, v12, type metadata accessor for ManagedInternalTransaction.MonthYearFormatter);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7398540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ManagedInternalTransaction.MonthYearFormatter.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B7398580(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992F18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7398AD4();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B7398CFC(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B73986F8()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7398CFC(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7398CFC(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7398CFC(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7398848()
{
  sub_1B77FFAF8();
  sub_1B7398CFC(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7398CFC(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7398CFC(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t sub_1B7398988()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7398CFC(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7398CFC(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7398CFC(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

unint64_t sub_1B7398AD4()
{
  result = qword_1EB992F20;
  if (!qword_1EB992F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992F20);
  }

  return result;
}

uint64_t type metadata accessor for ManagedInternalTransaction.MonthYearFormatter()
{
  result = qword_1EB992F50;
  if (!qword_1EB992F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7398B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7398CFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7398D80()
{
  result = qword_1EB992F60;
  if (!qword_1EB992F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992F60);
  }

  return result;
}

unint64_t sub_1B7398DD8()
{
  result = qword_1EB992F68;
  if (!qword_1EB992F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992F68);
  }

  return result;
}

unint64_t sub_1B7398E30()
{
  result = qword_1EB992F70;
  if (!qword_1EB992F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992F70);
  }

  return result;
}

uint64_t ManagedOrderDashboardItem.searchableItemAttributeSet(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 classicOrder];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B7446418(a1);
  }

  else
  {
    v11 = [v2 extractedOrder];
    if (!v11)
    {
      result = sub_1B7801C88();
      __break(1u);
      return result;
    }

    v9 = v11;
    v10 = ManagedExtractedOrder.searchableItemAttributeSet(configuration:)();
  }

  v12 = v10;

  if (v12)
  {
    v13 = [v2 objectID];
    v14 = [v13 URIRepresentation];

    sub_1B77FF478();
    sub_1B77FF3B8();
    (*(v5 + 8))(v7, v4);
    v15 = sub_1B7800838();

    [v12 setIdentifier_];
  }

  return v12;
}

id sub_1B7399194()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataStoreServerHandlingPolicy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B73991EC(void *a1)
{
  v1 = [a1 entitlements];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_1B7800728();

  if (!v3)
  {
    goto LABEL_9;
  }

  sub_1B78019E8();
  if (!*(v3 + 16) || (v4 = sub_1B7245898(v11), (v5 & 1) == 0))
  {

    sub_1B720494C(v11);
LABEL_9:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_10;
  }

  sub_1B719BDE4(*(v3 + 56) + 32 * v4, &v12);
  sub_1B720494C(v11);

  if (!*(&v13 + 1))
  {
LABEL_10:
    sub_1B726990C(&v12);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v11[0];
  }

LABEL_11:
  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAFD2D0);
  v8 = sub_1B7800098();
  v9 = sub_1B78011D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B7198000, v8, v9, "Caller did not have store entitlements, declining connection", v10, 2u);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
  }

  return 0;
}

uint64_t sub_1B73993D4()
{
  v11 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = sub_1B7205540(0, &qword_1EDAFAF38);
  sub_1B7244788(inited);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = type metadata accessor for LocalizedString();
  *(v1 + 32) = v2;
  sub_1B7244788(v1);
  type metadata accessor for CNPostalAddressValueTransformer();
  v3 = [swift_getObjCClassFromMetadata() allowedTopLevelClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCD0);
  v4 = sub_1B7800C38();

  sub_1B7244788(v4);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 32) = sub_1B7205540(0, &qword_1EDAFAF18);
  sub_1B7244788(v5);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1B7807CD0;
  *(v6 + 32) = type metadata accessor for StorableColor();
  sub_1B7244788(v6);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 32) = v2;
  sub_1B7244788(v7);
  sub_1B72406BC(v11);

  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = sub_1B7800C18();

  [v8 initWithArray_];

  result = sub_1B7800F88();
  __break(1u);
  return result;
}

uint64_t sub_1B7399650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Institution(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InstitutionWithPass.passSerialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for InstitutionWithPass() + 20));

  return v1;
}

uint64_t type metadata accessor for InstitutionWithPass()
{
  result = qword_1EB992FA8;
  if (!qword_1EB992FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InstitutionWithPass.passSerialNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InstitutionWithPass() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InstitutionWithPass.init(institution:passSerialNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B739983C(a1, a4);
  result = type metadata accessor for InstitutionWithPass();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_1B739983C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Institution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static InstitutionWithPass.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit11InstitutionV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for InstitutionWithPass() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t sub_1B7399920()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7475746974736E69;
  }
}

uint64_t sub_1B7399968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475746974736E69 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787D160 == a2)
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

uint64_t sub_1B7399A50(uint64_t a1)
{
  v2 = sub_1B739A1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7399A8C(uint64_t a1)
{
  v2 = sub_1B739A1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstitutionWithPass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992F78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B739A1FC();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for Institution(0);
  sub_1B739A360(&qword_1EB992F88, type metadata accessor for Institution);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for InstitutionWithPass();
    v8[14] = 1;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InstitutionWithPass.hash(into:)(uint64_t a1)
{
  Institution.hash(into:)(a1);
  type metadata accessor for InstitutionWithPass();

  return sub_1B7800798();
}

uint64_t InstitutionWithPass.hashValue.getter()
{
  sub_1B78022F8();
  Institution.hash(into:)(v1);
  type metadata accessor for InstitutionWithPass();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t InstitutionWithPass.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992F90);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for InstitutionWithPass();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B739A1FC();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  sub_1B739A360(&qword_1EB992F98, type metadata accessor for Institution);
  v14 = v25;
  v13 = v26;
  sub_1B7801E48();
  sub_1B739983C(v14, v11);
  v27 = 1;
  v15 = sub_1B7801DF8();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = (v11 + *(v22 + 20));
  *v19 = v15;
  v19[1] = v17;
  sub_1B739A250(v11, v18, type metadata accessor for InstitutionWithPass);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B739A2B8(v11, type metadata accessor for InstitutionWithPass);
}

uint64_t sub_1B739A078()
{
  sub_1B78022F8();
  Institution.hash(into:)(v1);
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B739A0D0(uint64_t a1)
{
  Institution.hash(into:)(a1);

  return sub_1B7800798();
}

uint64_t sub_1B739A120()
{
  sub_1B78022F8();
  Institution.hash(into:)(v1);
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B739A174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static Institution.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1B78020F8();
}

unint64_t sub_1B739A1FC()
{
  result = qword_1EB992F80;
  if (!qword_1EB992F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992F80);
  }

  return result;
}

uint64_t sub_1B739A250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B739A2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B739A360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B739A3D0()
{
  result = type metadata accessor for Institution(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B739A458()
{
  result = qword_1EB992FB8;
  if (!qword_1EB992FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992FB8);
  }

  return result;
}

unint64_t sub_1B739A4B0()
{
  result = qword_1EB992FC0;
  if (!qword_1EB992FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992FC0);
  }

  return result;
}

unint64_t sub_1B739A508()
{
  result = qword_1EB992FC8;
  if (!qword_1EB992FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992FC8);
  }

  return result;
}

uint64_t SelectAccountsUIInfoKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B739A5D4()
{
  result = qword_1EB992FD0;
  if (!qword_1EB992FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992FD0);
  }

  return result;
}

uint64_t sub_1B739A628()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B739A69C()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B739A6F0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B739A788(uint64_t a1)
{
  v2 = sub_1B739AE88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B739A7C4(uint64_t a1)
{
  v2 = sub_1B739AE88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B739A800(uint64_t a1)
{
  v2 = sub_1B739AE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B739A83C(uint64_t a1)
{
  v2 = sub_1B739AE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B739A878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B739BCB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B739A8A0(uint64_t a1)
{
  v2 = sub_1B739AD8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B739A8DC(uint64_t a1)
{
  v2 = sub_1B739AD8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B739A918(uint64_t a1)
{
  v2 = sub_1B739ADE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B739A954(uint64_t a1)
{
  v2 = sub_1B739ADE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FinanceStore.SaveOrderResult.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t FinanceStore.SaveOrderResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992FD8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992FE0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992FE8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992FF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B739AD8C();
  sub_1B78023F8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B739AE34();
      v9 = v21;
      sub_1B7801ED8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B739ADE0();
      v9 = v24;
      sub_1B7801ED8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B739AE88();
    sub_1B7801ED8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B739AD8C()
{
  result = qword_1EB992FF8;
  if (!qword_1EB992FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992FF8);
  }

  return result;
}

unint64_t sub_1B739ADE0()
{
  result = qword_1EB993000;
  if (!qword_1EB993000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993000);
  }

  return result;
}

unint64_t sub_1B739AE34()
{
  result = qword_1EB993008;
  if (!qword_1EB993008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993008);
  }

  return result;
}

unint64_t sub_1B739AE88()
{
  result = qword_1EB993010;
  if (!qword_1EB993010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993010);
  }

  return result;
}

uint64_t FinanceStore.SaveOrderResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993018);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993020);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993028);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993030);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B739AD8C();
  v15 = v36;
  sub_1B78023C8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v24 = &type metadata for FinanceStore.SaveOrderResult;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B739AE34();
          sub_1B7801D38();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B739ADE0();
          v26 = v17;
          sub_1B7801D38();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B739AE88();
        sub_1B7801D38();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t FinanceStore.SaveOrderResult.description.getter()
{
  v1 = 0x656C6C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x697845726577656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465646461;
  }
}

uint64_t FinanceStore.saveOrder(signedArchive:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = type metadata accessor for FinanceStore.Message();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B739B57C, 0, 0);
}

uint64_t sub_1B739B57C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[11];
  v0[16] = *(v0[13] + 24);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_1B720ABEC(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1B739B608, 0, 0);
}

uint64_t sub_1B739B608()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B739B6B4;
  v2 = swift_continuation_init();
  sub_1B722D640(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B739B6B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 136) = v3;
  if (!v3)
  {
    v4 = *(v1 + 120);
    **(v1 + 80) = *(v1 + 144);
    sub_1B72A820C(v4);

    v5 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B739B81C, 0, 0);
}

uint64_t sub_1B739B81C()
{
  sub_1B72A820C(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1B739B890()
{
  result = qword_1EB993038;
  if (!qword_1EB993038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993038);
  }

  return result;
}

unint64_t sub_1B739B8F8()
{
  result = qword_1EB993048;
  if (!qword_1EB993048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993048);
  }

  return result;
}

unint64_t sub_1B739B9A0()
{
  result = qword_1EB993050;
  if (!qword_1EB993050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993050);
  }

  return result;
}

unint64_t sub_1B739B9F8()
{
  result = qword_1EB993058;
  if (!qword_1EB993058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993058);
  }

  return result;
}

unint64_t sub_1B739BA50()
{
  result = qword_1EB993060;
  if (!qword_1EB993060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993060);
  }

  return result;
}

unint64_t sub_1B739BAA8()
{
  result = qword_1EB993068;
  if (!qword_1EB993068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993068);
  }

  return result;
}

unint64_t sub_1B739BB00()
{
  result = qword_1EB993070;
  if (!qword_1EB993070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993070);
  }

  return result;
}

unint64_t sub_1B739BB58()
{
  result = qword_1EB993078;
  if (!qword_1EB993078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993078);
  }

  return result;
}

unint64_t sub_1B739BBB0()
{
  result = qword_1EB993080;
  if (!qword_1EB993080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993080);
  }

  return result;
}

unint64_t sub_1B739BC08()
{
  result = qword_1EB993088;
  if (!qword_1EB993088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993088);
  }

  return result;
}

unint64_t sub_1B739BC60()
{
  result = qword_1EB993090;
  if (!qword_1EB993090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993090);
  }

  return result;
}

uint64_t sub_1B739BCB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465646461 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697845726577656ELL && a2 == 0xED0000676E697473)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

FinanceKit::CreditDebitIndicator_optional __swiftcall CreditDebitIndicator.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B739BE14()
{
  result = qword_1EB993098;
  if (!qword_1EB993098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993098);
  }

  return result;
}

unint64_t sub_1B739BF1C()
{
  result = qword_1EB9930A0;
  if (!qword_1EB9930A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9930A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9930A0);
  }

  return result;
}

unint64_t sub_1B739BFA0()
{
  result = qword_1EB9930B0;
  if (!qword_1EB9930B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9930B0);
  }

  return result;
}

uint64_t sub_1B739BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
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

  return MEMORY[0x1EEE6DFA0](sub_1B739C0C4, 0, 0);
}

uint64_t sub_1B739C0C4()
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
        _os_log_impl(&dword_1B7198000, log, v45, "Executing account balances query with predicate: %s and sortDescriptors: %s", buf, 0x16u);
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
  v39[1] = sub_1B739C578;
  v40 = *(v0 + 88);
  v41 = *(v0 + 24);

  return MEMORY[0x1EEDB6538](v41, v40, sub_1B73AEB80, v37, &type metadata for InternalAccountBalanceResult);
}

uint64_t sub_1B739C578()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73AEF70;
  }

  else
  {
    v5 = sub_1B73AEF6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B739C70C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1B7801478();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B739C7CC, 0, 0);
}

uint64_t sub_1B739C7CC()
{
  v26 = v0;
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

  os_unfair_lock_unlock((v1 + 24));
  v3 = [*(v2 + 2) newBackgroundContext];
  v0[8] = v3;

  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v4 = sub_1B78000B8();
  __swift_project_value_buffer(v4, qword_1EDAF6590);

  v5 = sub_1B7800098();
  v6 = sub_1B78011F8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    v10 = sub_1B77FFA18();
    v11 = MEMORY[0x1B8CA4F60](v7, v10);
    v13 = sub_1B71A3EF8(v11, v12, &v25);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B7198000, v5, v6, "Executing transaction insights query for transactions: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  v14 = v0[3];
  if (*(v14 + 16))
  {
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];
    v18 = swift_allocObject();
    v0[9] = v18;
    *(v18 + 16) = v3;
    *(v18 + 24) = v14;
    (*(v16 + 104))(v15, *MEMORY[0x1E695D2B8], v17);

    v3;
    v19 = swift_task_alloc();
    v0[10] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993170);
    *v19 = v0;
    v19[1] = sub_1B739CB10;
    v21 = v0[7];

    return MEMORY[0x1EEDB6538](v0 + 2, v21, sub_1B73AEB1C, v18, v20);
  }

  else
  {
    v22 = sub_1B720281C(MEMORY[0x1E69E7CC0]);

    v23 = v0[1];

    return v23(v22);
  }
}

uint64_t sub_1B739CB10()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73AEF94;
  }

  else
  {
    v5 = sub_1B739CCA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B739CCA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B739CD18(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 192) = a2;
  *(v4 + 200) = v3;
  *(v4 + 320) = a3;
  *(v4 + 184) = a1;
  v5 = sub_1B7801478();
  *(v4 + 208) = v5;
  *(v4 + 216) = *(v5 - 8);
  *(v4 + 224) = swift_task_alloc();
  v6 = sub_1B77FFA18();
  *(v4 + 232) = v6;
  v7 = *(v6 - 8);
  *(v4 + 240) = v7;
  *(v4 + 248) = *(v7 + 64);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B739CE50, 0, 0);
}

uint64_t sub_1B739CE50()
{
  v52 = v0;
  v1 = *(*(v0 + 200) + 16);
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
  v50 = [*(v2 + 2) newBackgroundContext];
  *(v0 + 272) = v50;

  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 264);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 192);
  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAF6590);
  v8 = *(v5 + 16);
  *(v0 + 280) = v8;
  *(v0 + 288) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6, v4);
  v9 = sub_1B7800098();
  v10 = sub_1B78011B8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 264);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v15 = 136315138;
    sub_1B73AEA94(&qword_1EB98F120, MEMORY[0x1E69695A8]);
    v16 = sub_1B7802068();
    v48 = v10;
    v17 = v8;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_1B71A3EF8(v16, v19, &v51);
    v8 = v17;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1B7198000, v9, v48, "Executing async transaction icon query for transaction %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1B8CA7A40](v49, -1, -1);
    MEMORY[0x1B8CA7A40](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  if (*(v0 + 320) != 1)
  {
    goto LABEL_16;
  }

  if (qword_1EB98E980 != -1)
  {
    swift_once();
  }

  v21 = *(qword_1EBA45910 + 16);
  v8(*(v0 + 256), *(v0 + 192), *(v0 + 232));
  sub_1B73AEA94(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B78019E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993168);
  v23 = objc_allocWithZone(v22);
  sub_1B72238E4(v0 + 96, v23 + *((*MEMORY[0x1E69E7D40] & *v23) + 0x60));
  *(v0 + 168) = v23;
  *(v0 + 176) = v22;
  v24 = objc_msgSendSuper2((v0 + 168), sel_init);
  sub_1B720494C(v0 + 96);
  v25 = [v21 objectForKey_];

  if (v25)
  {

    v26 = *&v25[OBJC_IVAR____TtC10FinanceKitP33_9964207DF697B1952D0811FBB33B06BA10IconHolder_icon];
    v27 = *&v25[OBJC_IVAR____TtC10FinanceKitP33_9964207DF697B1952D0811FBB33B06BA10IconHolder_icon + 8];
    v28 = *&v25[OBJC_IVAR____TtC10FinanceKitP33_9964207DF697B1952D0811FBB33B06BA10IconHolder_icon + 16];
    v29 = v25[OBJC_IVAR____TtC10FinanceKitP33_9964207DF697B1952D0811FBB33B06BA10IconHolder_icon + 24];
    v30 = *&v25[OBJC_IVAR____TtC10FinanceKitP33_9964207DF697B1952D0811FBB33B06BA10IconHolder_icon + 32];
    sub_1B720ABEC(v26, v27);
    v31 = v30;

    v32 = *(v0 + 184);
    *v32 = v26;
    v32[1] = v27;
    v32[2] = v28;
    v32[3] = v29;
    v32[4] = v30;

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
LABEL_16:
    v35 = *(v0 + 248);
    v36 = *(v0 + 256);
    v38 = *(v0 + 232);
    v37 = *(v0 + 240);
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    v41 = *(v0 + 208);
    v8(v36, *(v0 + 192), v38);
    v42 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v43 = (v35 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v0 + 296) = v44;
    (*(v37 + 32))(v44 + v42, v36, v38);
    *(v44 + v43) = v50;
    (*(v40 + 104))(v39, *MEMORY[0x1E695D2B8], v41);
    v50;
    v45 = swift_task_alloc();
    *(v0 + 304) = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993160);
    *v45 = v0;
    v45[1] = sub_1B739D424;
    v47 = *(v0 + 224);

    return MEMORY[0x1EEDB6538](v0 + 16, v47, sub_1B73AE9FC, v44, v46);
  }
}

uint64_t sub_1B739D424()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  *(*v1 + 312) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B739D870;
  }

  else
  {
    v5 = sub_1B739D5B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B739D5B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (v5 == 1 || (*(v0 + 320) & 1) == 0)
  {
  }

  else
  {
    sub_1B720ABEC(v1, v2);
    v6 = qword_1EB98E980;
    v22 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 232);
    v20 = *(v0 + 192);
    v23 = *(qword_1EBA45910 + 16);
    v24 = *(v0 + 272);
    v9 = type metadata accessor for IconHolder();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC10FinanceKitP33_9964207DF697B1952D0811FBB33B06BA10IconHolder_icon];
    *v11 = v1;
    *(v11 + 1) = v2;
    *(v11 + 2) = v3;
    v11[24] = v4;
    *(v11 + 4) = v5;
    sub_1B720ABEC(v1, v2);
    *(v0 + 136) = v10;
    *(v0 + 144) = v9;
    v12 = v22;
    v13 = objc_msgSendSuper2((v0 + 136), sel_init);
    v21(v7, v20, v8);
    sub_1B73AEA94(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
    sub_1B78019E8();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993168);
    v15 = objc_allocWithZone(v14);
    sub_1B72238E4(v0 + 56, v15 + *((*MEMORY[0x1E69E7D40] & *v15) + 0x60));
    *(v0 + 152) = v15;
    *(v0 + 160) = v14;
    v16 = objc_msgSendSuper2((v0 + 152), sel_init);
    sub_1B720494C(v0 + 56);
    [v23 setObject:v13 forKey:v16];

    sub_1B720ACE8(v1, v2, v3, v4, v5);
  }

  v17 = *(v0 + 184);
  *v17 = v1;
  v17[1] = v2;
  v17[2] = v3;
  v17[3] = v4;
  v17[4] = v5;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B739D870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B739D8FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1B7801478();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1B77FFA18();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B739DA2C, 0, 0);
}

uint64_t sub_1B739DA2C()
{
  v39 = v0;
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

  os_unfair_lock_unlock((v1 + 24));
  v37 = [*(v2 + 2) newBackgroundContext];
  v0[13] = v37;

  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[3];
  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAF6590);
  v8 = *(v4 + 16);
  v8(v3, v6, v5);
  v9 = sub_1B7800098();
  v10 = sub_1B78011B8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v15 = 136315138;
    sub_1B73AEA94(&qword_1EB98F120, MEMORY[0x1E69695A8]);
    v16 = sub_1B7802068();
    v35 = v10;
    v17 = v8;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_1B71A3EF8(v16, v19, &v38);
    v8 = v17;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1B7198000, v9, v35, "Executing async orders query for transaction %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1B8CA7A40](v36, -1, -1);
    MEMORY[0x1B8CA7A40](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[8];
  v24 = v0[9];
  v26 = v0[6];
  v25 = v0[7];
  v27 = v0[5];
  v8(v22, v0[3], v23);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v21 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v0[14] = v30;
  (*(v24 + 32))(v30 + v28, v22, v23);
  *(v30 + v29) = v37;
  (*(v26 + 104))(v25, *MEMORY[0x1E695D2B8], v27);
  v37;
  v31 = swift_task_alloc();
  v0[15] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993158);
  *v31 = v0;
  v31[1] = sub_1B739DDFC;
  v33 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v33, sub_1B73AE870, v30, v32);
}

uint64_t sub_1B739DDFC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B739E024;
  }

  else
  {
    v5 = sub_1B739DF90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B739DF90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B739E024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B739E0B0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1B7801478();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911A0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for AccountQuery();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v2[15] = *(v6 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B739E254, 0, 0);
}

uint64_t sub_1B739E254()
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
  sub_1B73AEBE4(v6, v4, type metadata accessor for AccountQuery);
  sub_1B73AEBE4(v6, v5, type metadata accessor for AccountQuery);
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
    v0[3] = *(v12 + *(v13 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v15 = sub_1B7801748();
    v17 = v16;
    sub_1B73AEC4C(v12, type metadata accessor for AccountQuery);
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
        if (v0[4])
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

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993150);
    v33 = MEMORY[0x1B8CA4F60](v20, v32);
    v35 = v34;

    sub_1B73AEC4C(v31, type metadata accessor for AccountQuery);
    v36 = sub_1B71A3EF8(v33, v35, &v55);

    *(buf + 14) = v36;
    _os_log_impl(&dword_1B7198000, log, v51, "Executing accounts query with nsPredicate: %s and sortDescriptor keyPaths: %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v50, -1, -1);
    MEMORY[0x1B8CA7A40](buf, -1, -1);

    v3 = v54;
  }

  else
  {

    sub_1B73AEC4C(v11, type metadata accessor for AccountQuery);
    sub_1B73AEC4C(v12, type metadata accessor for AccountQuery);
  }

  v37 = v0[15];
  v38 = v0[16];
  v39 = v0[14];
  v41 = v0[8];
  v40 = v0[9];
  v42 = v0[7];
  sub_1B73AEBE4(v0[5], v38, type metadata accessor for AccountQuery);
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v0[20] = v45;
  sub_1B73AEE14(v38, v45 + v43, type metadata accessor for AccountQuery);
  *(v45 + v44) = v3;
  (*(v41 + 104))(v40, *MEMORY[0x1E695D2B8], v42);
  v3;
  v46 = swift_task_alloc();
  v0[21] = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993148);
  *v46 = v0;
  v46[1] = sub_1B739E7D0;
  v48 = v0[9];

  return MEMORY[0x1EEDB6538](v0 + 2, v48, sub_1B73AE830, v45, v47);
}

uint64_t sub_1B739E7D0()
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
    v5 = sub_1B73AEF90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B739E964(_OWORD *a1)
{
  *(v2 + 176) = v1;
  v4 = sub_1B7801478();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 41) = *(a1 + 25);

  return MEMORY[0x1EEE6DFA0](sub_1B739EA38, 0, 0);
}

uint64_t sub_1B739EA38()
{
  v37 = v0;
  v1 = *(*(v0 + 176) + 16);
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
  *(v0 + 208) = v3;

  if (qword_1EDAF6588 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v4 = sub_1B78000B8();
    __swift_project_value_buffer(v4, qword_1EDAF6590);
    sub_1B73AE718(v0 + 16, v0 + 64);
    v5 = sub_1B7800098();
    v6 = sub_1B78011F8();
    sub_1B73AE774(v0 + 16);
    if (!os_log_type_enabled(v5, v6))
    {
      break;
    }

    v32 = v6;
    log = v5;
    v34 = v3;
    v7 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v7 = 136315394;
    *(v0 + 168) = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v8 = sub_1B7801748();
    v3 = sub_1B71A3EF8(v8, v9, &v35);

    *(v7 + 4) = v3;
    *(v7 + 12) = 2080;
    v10 = *(v0 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (v10 >> 62)
    {
      v11 = sub_1B7801958();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11 == v12)
      {
        v17 = sub_1B7801878();
        v18 = MEMORY[0x1B8CA4F60](v13, v17);
        v20 = v19;

        v21 = sub_1B71A3EF8(v18, v20, &v35);

        *(v7 + 14) = v21;
        _os_log_impl(&dword_1B7198000, log, v32, "Executing private accounts query with predicate: %s and sortDescriptors: %s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v31, -1, -1);
        MEMORY[0x1B8CA7A40](v7, -1, -1);

        v3 = v34;
        goto LABEL_22;
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = MEMORY[0x1B8CA5DC0](v12, v10);
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

LABEL_13:
      v16 = v14;
      v3 = sub_1B7801298();

      ++v12;
      if (v3)
      {
        MEMORY[0x1B8CA4F20]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v13 = v36;
        v12 = v15;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v14 = *(v10 + 8 * v12 + 32);
    v15 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_13;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_22:
  v22 = *(v0 + 192);
  v23 = *(v0 + 200);
  v24 = *(v0 + 184);
  v25 = swift_allocObject();
  *(v0 + 216) = v25;
  v26 = *(v0 + 32);
  *(v25 + 16) = *(v0 + 16);
  *(v25 + 32) = v26;
  *(v25 + 41) = *(v0 + 41);
  *(v25 + 64) = v3;
  (*(v22 + 104))(v23, *MEMORY[0x1E695D2B8], v24);
  sub_1B73AE718(v0 + 16, v0 + 112);
  v3;
  v27 = swift_task_alloc();
  *(v0 + 224) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993148);
  *v27 = v0;
  v27[1] = sub_1B739EEC8;
  v29 = *(v0 + 200);

  return MEMORY[0x1EEDB6538](v0 + 160, v29, sub_1B73AE810, v25, v28);
}

uint64_t sub_1B739EEC8()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  *(*v1 + 232) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B739F0D0;
  }

  else
  {
    v5 = sub_1B739F05C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B739F05C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B739F0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B739F168(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_1B7801478();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991FA0);
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B739F294, 0, 0);
}

uint64_t sub_1B739F294()
{
  v59 = v0;
  sub_1B719B06C(*(v0 + 248), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993130);
  if (swift_dynamicCast())
  {
    v1 = v0 + 16;
    v2 = *(v0 + 256);
    sub_1B71E4C44((v0 + 96), v0 + 16);
    v3 = *(v2 + 16);
    os_unfair_lock_lock((v3 + 24));
    if (*(v3 + 16))
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = sub_1B73ADA9C();
      *(v3 + 16) = v4;
    }

    os_unfair_lock_unlock((v3 + 24));
    v10 = [*(v4 + 2) newBackgroundContext];
    *(v0 + 312) = v10;

    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    sub_1B7801468();

    v14 = *(v0 + 216);
    *(v0 + 320) = v14;
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v15 = sub_1B78000B8();
    __swift_project_value_buffer(v15, qword_1EDAF6590);
    sub_1B719B06C(v0 + 16, v0 + 136);
    v16 = v14;
    v17 = sub_1B7800098();
    v18 = sub_1B78011F8();

    if (os_log_type_enabled(v17, v18))
    {
      v54 = v18;
      v56 = v16;
      v19 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v19 = 136315394;
      *(v0 + 224) = v14;
      v20 = sub_1B7801748();
      v22 = sub_1B71A3EF8(v20, v21, &v57);

      *(v19 + 4) = v22;
      buf = v19;
      *(v19 + 12) = 2080;
      v23 = *(v0 + 160);
      v24 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v23);
      v25 = (*(v24 + 16))(v23, v24);
      swift_getKeyPath();
      v58 = MEMORY[0x1E69E7CC0];
      v26 = *(v25 + 16);
      if (v26)
      {
        v50 = v17;
        v51 = v14;
        v52 = v10;
        v27 = *(v0 + 296);
        v30 = *(v27 + 16);
        v29 = v27 + 16;
        v28 = v30;
        v31 = v25 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
        v32 = *(v29 + 56);
        v33 = MEMORY[0x1E69E7CC0];
        do
        {
          v34 = *(v0 + 304);
          v35 = *(v0 + 288);
          v28(v34, v31, v35);
          swift_getAtKeyPath();
          v36 = (*(v29 - 8))(v34, v35);
          if (*(v0 + 232))
          {
            MEMORY[0x1B8CA4F20](v36);
            if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B7800C58();
            }

            sub_1B7800C88();
            v33 = v58;
          }

          v31 += v32;
          --v26;
        }

        while (v26);

        v10 = v52;
        v1 = v0 + 16;
        v17 = v50;
        v14 = v51;
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993140);
      v38 = MEMORY[0x1B8CA4F60](v33, v37);
      v40 = v39;

      __swift_destroy_boxed_opaque_existential_1(v0 + 136);
      v41 = sub_1B71A3EF8(v38, v40, &v57);

      *(buf + 14) = v41;
      _os_log_impl(&dword_1B7198000, v17, v54, "Executing transactions query with nsPredicate: %s and sortDescriptor keyPaths: %s", buf, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v53, -1, -1);
      MEMORY[0x1B8CA7A40](buf, -1, -1);

      v16 = v56;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 136);
    }

    v42 = *(v0 + 272);
    v43 = *(v0 + 280);
    v44 = *(v0 + 264);
    sub_1B719B06C(v1, v0 + 176);
    v45 = swift_allocObject();
    *(v0 + 328) = v45;
    *(v45 + 16) = v14;
    sub_1B71E4C44((v0 + 176), v45 + 24);
    *(v45 + 64) = v10;
    (*(v42 + 104))(v43, *MEMORY[0x1E695D2B8], v44);
    v46 = v16;
    v10;
    v47 = swift_task_alloc();
    *(v0 + 336) = v47;
    *v47 = v0;
    v47[1] = sub_1B739F9BC;
    v48 = *(v0 + 280);
    v49 = *(v0 + 240);

    return MEMORY[0x1EEDB6538](v49, v48, sub_1B73AE6C8, v45, &type metadata for InternalTransactionResult);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_1B7205418(v0 + 96, &qword_1EB993138);
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EDAF6590);
    v6 = sub_1B7800098();
    v7 = sub_1B78011D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7198000, v6, v7, "Failed to cast query", v8, 2u);
      MEMORY[0x1B8CA7A40](v8, -1, -1);
    }

    sub_1B7201CA4();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1B739F9BC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);

  if (v0)
  {
    v3 = sub_1B739FBD0;
  }

  else
  {
    v3 = sub_1B739FB40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B739FB40()
{
  v1 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B739FBD0()
{
  v1 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B739FC54(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = sub_1B7801478();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B739FD14, 0, 0);
}

uint64_t sub_1B739FD14()
{
  v35 = v0;
  sub_1B719B06C(*(v0 + 200), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993130);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 208);
    sub_1B71E4C44((v0 + 96), v0 + 16);
    v2 = *(v1 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (*(v2 + 16))
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = sub_1B73ADA9C();
      *(v2 + 16) = v3;
    }

    os_unfair_lock_unlock((v2 + 24));
    v9 = [*(v3 + 2) newBackgroundContext];
    *(v0 + 240) = v9;

    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v0 + 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    sub_1B7801468();

    v13 = *(v0 + 176);
    *(v0 + 248) = v13;
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v14 = sub_1B78000B8();
    __swift_project_value_buffer(v14, qword_1EDAF6590);
    v15 = v13;
    v16 = sub_1B7800098();
    v17 = sub_1B78011F8();

    if (os_log_type_enabled(v16, v17))
    {
      v33 = v15;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;
      *(v0 + 192) = v13;
      v20 = sub_1B7801748();
      v22 = sub_1B71A3EF8(v20, v21, &v34);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B7198000, v16, v17, "Executing transactions count query with predicate: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1B8CA7A40](v19, -1, -1);
      v23 = v18;
      v15 = v33;
      MEMORY[0x1B8CA7A40](v23, -1, -1);
    }

    v25 = *(v0 + 224);
    v24 = *(v0 + 232);
    v26 = *(v0 + 216);
    sub_1B719B06C(v0 + 16, v0 + 136);
    v27 = swift_allocObject();
    *(v0 + 256) = v27;
    v28 = MEMORY[0x1E69E7CC0];
    v27[2] = v13;
    v27[3] = v28;
    sub_1B71E4C44((v0 + 136), (v27 + 4));
    v27[9] = v9;
    (*(v25 + 104))(v24, *MEMORY[0x1E695D2B8], v26);
    v29 = v15;
    v9;
    v30 = swift_task_alloc();
    *(v0 + 264) = v30;
    *v30 = v0;
    v30[1] = sub_1B73A0234;
    v31 = *(v0 + 232);
    v32 = MEMORY[0x1E69E6530];

    return MEMORY[0x1EEDB6538](v0 + 184, v31, sub_1B73AE688, v27, v32);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_1B7205418(v0 + 96, &qword_1EB993138);
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v4 = sub_1B78000B8();
    __swift_project_value_buffer(v4, qword_1EDAF6590);
    v5 = sub_1B7800098();
    v6 = sub_1B78011D8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7198000, v5, v6, "Failed to cast query", v7, 2u);
      MEMORY[0x1B8CA7A40](v7, -1, -1);
    }

    sub_1B7201CA4();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B73A0234()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[28] + 8))(v2[29], v2[27]);

  if (v0)
  {
    v3 = sub_1B73A043C;
  }

  else
  {
    v3 = sub_1B73A03B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B73A03B8()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1B73A043C()
{
  v1 = *(v0 + 248);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B73A04B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B73A04D4, 0, 0);
}

uint64_t sub_1B73A04D4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2F8);
  v2 = sub_1B77FFA18();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = xmmword_1B7807CD0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B73A0630;

  return sub_1B73A0848(v5);
}

uint64_t sub_1B73A0630(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1B73A07E4;
  }

  else
  {

    v4 = sub_1B73A074C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B73A074C()
{
  if (*(v0[6] + 16) && (v1 = sub_1B72454E8(v0[2]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[6] + 56) + 8 * v1);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1B73A07E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73A0848(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1B7801478();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73A0908, 0, 0);
}

uint64_t sub_1B73A0908()
{
  v24 = v0;
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

  os_unfair_lock_unlock((v1 + 24));
  v3 = [*(v2 + 2) newBackgroundContext];
  v0[8] = v3;

  if (qword_1EDAF6588 != -1)
  {
    swift_once();
  }

  v4 = sub_1B78000B8();
  __swift_project_value_buffer(v4, qword_1EDAF6590);

  v5 = sub_1B7800098();
  v6 = sub_1B78011F8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = sub_1B77FFA18();
    v11 = MEMORY[0x1B8CA4F60](v7, v10);
    v13 = sub_1B71A3EF8(v11, v12, &v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B7198000, v5, v6, "Executing fkPaymentTransactionsForTransactions for ids: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  v17 = v0[3];
  v18 = swift_allocObject();
  v0[9] = v18;
  *(v18 + 16) = v3;
  *(v18 + 24) = v17;
  (*(v15 + 104))(v14, *MEMORY[0x1E695D2B8], v16);

  v3;
  v19 = swift_task_alloc();
  v0[10] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993120);
  *v19 = v0;
  v19[1] = sub_1B73A0BE4;
  v21 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v21, sub_1B73AE66C, v18, v20);
}

uint64_t sub_1B73A0BE4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73A0DEC;
  }

  else
  {
    v5 = sub_1B73A0D78;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73A0D78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B73A0DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73A0E58(_OWORD *a1)
{
  *(v2 + 176) = v1;
  v4 = sub_1B7801478();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 41) = *(a1 + 25);

  return MEMORY[0x1EEE6DFA0](sub_1B73A0F2C, 0, 0);
}

uint64_t sub_1B73A0F2C()
{
  v37 = v0;
  v1 = *(*(v0 + 176) + 16);
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
  *(v0 + 208) = v3;

  if (qword_1EDAF6588 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v4 = sub_1B78000B8();
    __swift_project_value_buffer(v4, qword_1EDAF6590);
    sub_1B73AE59C(v0 + 16, v0 + 64);
    v5 = sub_1B7800098();
    v6 = sub_1B78011F8();
    sub_1B73AE5F8(v0 + 16);
    if (!os_log_type_enabled(v5, v6))
    {
      break;
    }

    v32 = v6;
    log = v5;
    v34 = v3;
    v7 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v7 = 136315394;
    *(v0 + 168) = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v8 = sub_1B7801748();
    v3 = sub_1B71A3EF8(v8, v9, &v35);

    *(v7 + 4) = v3;
    *(v7 + 12) = 2080;
    v10 = *(v0 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (v10 >> 62)
    {
      v11 = sub_1B7801958();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11 == v12)
      {
        v17 = sub_1B7801878();
        v18 = MEMORY[0x1B8CA4F60](v13, v17);
        v20 = v19;

        v21 = sub_1B71A3EF8(v18, v20, &v35);

        *(v7 + 14) = v21;
        _os_log_impl(&dword_1B7198000, log, v32, "Executing private internal transactions query with predicate: %s and sortDescriptors: %s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v31, -1, -1);
        MEMORY[0x1B8CA7A40](v7, -1, -1);

        v3 = v34;
        goto LABEL_22;
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = MEMORY[0x1B8CA5DC0](v12, v10);
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

LABEL_13:
      v16 = v14;
      v3 = sub_1B7801298();

      ++v12;
      if (v3)
      {
        MEMORY[0x1B8CA4F20]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v13 = v36;
        v12 = v15;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v14 = *(v10 + 8 * v12 + 32);
    v15 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_13;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_22:
  v22 = *(v0 + 192);
  v23 = *(v0 + 200);
  v24 = *(v0 + 184);
  v25 = swift_allocObject();
  *(v0 + 216) = v25;
  v26 = *(v0 + 32);
  *(v25 + 16) = *(v0 + 16);
  *(v25 + 32) = v26;
  *(v25 + 41) = *(v0 + 41);
  *(v25 + 64) = v3;
  (*(v22 + 104))(v23, *MEMORY[0x1E695D2B8], v24);
  sub_1B73AE59C(v0 + 16, v0 + 112);
  v3;
  v27 = swift_task_alloc();
  *(v0 + 224) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993118);
  *v27 = v0;
  v27[1] = sub_1B73A13BC;
  v29 = *(v0 + 200);

  return MEMORY[0x1EEDB6538](v0 + 160, v29, sub_1B73AE64C, v25, v28);
}

uint64_t sub_1B73A13BC()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  *(*v1 + 232) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73AEFA0;
  }

  else
  {
    v5 = sub_1B73AEF74;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73A1550(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1B7801478();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990988);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for InternalAccountQuery();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v3[15] = *(v7 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73A16F8, 0, 0);
}

uint64_t sub_1B73A16F8()
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
  sub_1B73AEBE4(v6, v4, type metadata accessor for InternalAccountQuery);
  sub_1B73AEBE4(v6, v5, type metadata accessor for InternalAccountQuery);
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
    sub_1B73AEC4C(v12, type metadata accessor for InternalAccountQuery);
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

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993178);
    v33 = MEMORY[0x1B8CA4F60](v20, v32);
    v35 = v34;

    sub_1B73AEC4C(v31, type metadata accessor for InternalAccountQuery);
    v36 = sub_1B71A3EF8(v33, v35, &v55);

    *(buf + 14) = v36;
    _os_log_impl(&dword_1B7198000, log, v51, "Executing accounts query with nsPredicate: %s and sortDescriptor keyPaths: %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v50, -1, -1);
    MEMORY[0x1B8CA7A40](buf, -1, -1);

    v3 = v54;
  }

  else
  {

    sub_1B73AEC4C(v11, type metadata accessor for InternalAccountQuery);
    sub_1B73AEC4C(v12, type metadata accessor for InternalAccountQuery);
  }

  v37 = v0[15];
  v38 = v0[16];
  v39 = v0[14];
  v41 = v0[8];
  v40 = v0[9];
  v42 = v0[7];
  sub_1B73AEBE4(v0[5], v38, type metadata accessor for InternalAccountQuery);
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v0[20] = v45;
  sub_1B73AEE14(v38, v45 + v43, type metadata accessor for InternalAccountQuery);
  *(v45 + v44) = v3;
  (*(v41 + 104))(v40, *MEMORY[0x1E695D2B8], v42);
  v3;
  v46 = swift_task_alloc();
  v0[21] = v46;
  *v46 = v0;
  v46[1] = sub_1B73A1C64;
  v47 = v0[9];
  v48 = v0[4];

  return MEMORY[0x1EEDB6538](v48, v47, sub_1B73AEE7C, v45, &type metadata for InternalAccountResult);
}

uint64_t sub_1B73A1C64()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 176) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73A1EA0;
  }

  else
  {
    v5 = sub_1B73A1DF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73A1DF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73A1EA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73A1F48(_OWORD *a1)
{
  *(v2 + 176) = v1;
  v4 = sub_1B7801478();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 41) = *(a1 + 25);

  return MEMORY[0x1EEE6DFA0](sub_1B73A201C, 0, 0);
}

uint64_t sub_1B73A201C()
{
  v37 = v0;
  v1 = *(*(v0 + 176) + 16);
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
  *(v0 + 208) = v3;

  if (qword_1EDAF6588 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v4 = sub_1B78000B8();
    __swift_project_value_buffer(v4, qword_1EDAF6590);
    sub_1B73AE494(v0 + 16, v0 + 64);
    v5 = sub_1B7800098();
    v6 = sub_1B78011F8();
    sub_1B73AE4F0(v0 + 16);
    if (!os_log_type_enabled(v5, v6))
    {
      break;
    }

    v32 = v6;
    log = v5;
    v34 = v3;
    v7 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v7 = 136315394;
    *(v0 + 168) = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v8 = sub_1B7801748();
    v3 = sub_1B71A3EF8(v8, v9, &v35);

    *(v7 + 4) = v3;
    *(v7 + 12) = 2080;
    v10 = *(v0 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (v10 >> 62)
    {
      v11 = sub_1B7801958();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11 == v12)
      {
        v17 = sub_1B7801878();
        v18 = MEMORY[0x1B8CA4F60](v13, v17);
        v20 = v19;

        v21 = sub_1B71A3EF8(v18, v20, &v35);

        *(v7 + 14) = v21;
        _os_log_impl(&dword_1B7198000, log, v32, "Executing private internal accounts query with predicate: %s and sortDescriptors: %s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v31, -1, -1);
        MEMORY[0x1B8CA7A40](v7, -1, -1);

        v3 = v34;
        goto LABEL_22;
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = MEMORY[0x1B8CA5DC0](v12, v10);
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

LABEL_13:
      v16 = v14;
      v3 = sub_1B7801298();

      ++v12;
      if (v3)
      {
        MEMORY[0x1B8CA4F20]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v13 = v36;
        v12 = v15;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v14 = *(v10 + 8 * v12 + 32);
    v15 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_13;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_22:
  v22 = *(v0 + 192);
  v23 = *(v0 + 200);
  v24 = *(v0 + 184);
  v25 = swift_allocObject();
  *(v0 + 216) = v25;
  v26 = *(v0 + 32);
  *(v25 + 16) = *(v0 + 16);
  *(v25 + 32) = v26;
  *(v25 + 41) = *(v0 + 41);
  *(v25 + 64) = v3;
  (*(v22 + 104))(v23, *MEMORY[0x1E695D2B8], v24);
  sub_1B73AE494(v0 + 16, v0 + 112);
  v3;
  v27 = swift_task_alloc();
  *(v0 + 224) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A50);
  *v27 = v0;
  v27[1] = sub_1B73A13BC;
  v29 = *(v0 + 200);

  return MEMORY[0x1EEDB6538](v0 + 160, v29, sub_1B73AE544, v25, v28);
}

uint64_t sub_1B73A24AC(uint64_t a1)
{
  v15 = a1;
  v1 = sub_1B7801308();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1B78003C8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B7801318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205540(0, &qword_1EDAFC530);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  sub_1B78003B8();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B73AEA94(&qword_1EDAFC538, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930E0);
  sub_1B728216C(&qword_1EDAFC588, &qword_1EB9930E0);
  sub_1B78018B8();
  v7 = v14[1];
  *(v7 + 24) = sub_1B7801358();
  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B78000B8();
  __swift_project_value_buffer(v8, qword_1EDAFD2D0);
  v9 = sub_1B7800098();
  v10 = sub_1B78011F8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B7198000, v9, v10, "Starting NSXPCStore public client", v11, 2u);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930E8);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v15;
  *(v7 + 16) = v12;
  return v7;
}

uint64_t sub_1B73A280C()
{

  return swift_deallocClassInstance();
}

void sub_1B73A2870(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a2;
  v5 = type metadata accessor for Account(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountQuery();
  v9 = v8[7];
  v10 = *(a1 + v8[8]);
  v11 = *a1;
  v12 = a1 + v8[6];
  v13 = *v12;
  v14 = v12[8];
  v15 = *(a1 + v9);
  v16 = *(a1 + v9 + 8);
  type metadata accessor for ManagedAccount();
  v17 = [swift_getObjCClassFromMetadata() fetchRequest];
  v18 = v10;
  v19 = v17;
  [v17 setPredicate_];
  sub_1B73AD4D0(v11, v19, &qword_1EB9911A0, &unk_1B7820710, _s10FinanceKit14ManagedAccountC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0);
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
  v21 = v34;
  v22 = sub_1B7801498();
  if (v21)
  {
  }

  else
  {
    v23 = v22;
    v33 = v19;
    if (v22 >> 62)
    {
      goto LABEL_26;
    }

    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      while (1)
      {
        v32 = a3;
        v37 = MEMORY[0x1E69E7CC0];
        sub_1B71FDE14(0, v24 & ~(v24 >> 63), 0);
        if (v24 < 0)
        {
          break;
        }

        v25 = 0;
        v26 = v37;
        v34 = v23 & 0xFFFFFFFFFFFFFF8;
        v35 = v23 & 0xC000000000000001;
        while (1)
        {
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v35)
          {
            v28 = MEMORY[0x1B8CA5DC0](v25, v23);
          }

          else
          {
            if (v25 >= *(v34 + 16))
            {
              goto LABEL_25;
            }

            v28 = *(v23 + 8 * v25 + 32);
          }

          Account.init(_:)(v28, v7);
          a3 = v24;
          v37 = v26;
          v30 = *(v26 + 16);
          v29 = *(v26 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1B71FDE14(v29 > 1, v30 + 1, 1);
            v26 = v37;
          }

          *(v26 + 16) = v30 + 1;
          sub_1B73AEE14(v7, v26 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30, type metadata accessor for Account);
          ++v25;
          if (v27 == v24)
          {

            *v32 = v26;
            return;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v24 = sub_1B7801958();
        if (!v24)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_27:

      *a3 = MEMORY[0x1E69E7CC0];
    }
  }
}

uint64_t sub_1B73A2BEC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1B7801478();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930D0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for TransactionQuery();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v2[15] = *(v6 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73A2D90, 0, 0);
}

uint64_t sub_1B73A2D90()
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
  sub_1B73AEBE4(v6, v4, type metadata accessor for TransactionQuery);
  sub_1B73AEBE4(v6, v5, type metadata accessor for TransactionQuery);
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
    v0[3] = *(v12 + *(v13 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v15 = sub_1B7801748();
    v17 = v16;
    sub_1B73AEC4C(v12, type metadata accessor for TransactionQuery);
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
        if (v0[4])
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

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930D8);
    v33 = MEMORY[0x1B8CA4F60](v20, v32);
    v35 = v34;

    sub_1B73AEC4C(v31, type metadata accessor for TransactionQuery);
    v36 = sub_1B71A3EF8(v33, v35, &v55);

    *(buf + 14) = v36;
    _os_log_impl(&dword_1B7198000, log, v51, "Executing transactions query with nsPredicate: %s and sortDescriptor keyPaths: %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v50, -1, -1);
    MEMORY[0x1B8CA7A40](buf, -1, -1);

    v3 = v54;
  }

  else
  {

    sub_1B73AEC4C(v11, type metadata accessor for TransactionQuery);
    sub_1B73AEC4C(v12, type metadata accessor for TransactionQuery);
  }

  v37 = v0[15];
  v38 = v0[16];
  v39 = v0[14];
  v41 = v0[8];
  v40 = v0[9];
  v42 = v0[7];
  sub_1B73AEBE4(v0[5], v38, type metadata accessor for TransactionQuery);
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v0[20] = v45;
  sub_1B73AEE14(v38, v45 + v43, type metadata accessor for TransactionQuery);
  *(v45 + v44) = v3;
  (*(v41 + 104))(v40, *MEMORY[0x1E695D2B8], v42);
  v3;
  v46 = swift_task_alloc();
  v0[21] = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F878);
  *v46 = v0;
  v46[1] = sub_1B73A330C;
  v48 = v0[9];

  return MEMORY[0x1EEDB6538](v0 + 2, v48, sub_1B73AE438, v45, v47);
}

uint64_t sub_1B73A330C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 176) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73A1EA0;
  }

  else
  {
    v5 = sub_1B73A34A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73A34A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1B73A3550(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a2;
  v6 = type metadata accessor for Transaction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B780B190;
  *(v10 + 32) = sub_1B73ADED8();
  v47 = v10;
  v11 = type metadata accessor for TransactionQuery();
  v12 = *(a1 + v11[8]);
  v40 = a3;
  v45 = v3;
  if (v12)
  {
    v13 = v12;
    MEMORY[0x1B8CA4F20]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();

    v10 = v47;
  }

  v14 = type metadata accessor for ManagedTransaction();
  sub_1B7205540(0, &qword_1EDAFAF30);
  v41 = v10;
  v15 = sub_1B7800C18();
  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  v17 = *a1;
  v18 = v11[7];
  v19 = a1 + v11[6];
  v20 = *v19;
  v21 = v19[8];
  v22 = *(a1 + v18);
  v42 = *(a1 + v18 + 8);
  v43 = v14;
  v23 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v23 setPredicate_];
  sub_1B73AD4D0(v17, v23, &qword_1EB9930D0, &unk_1B7820520, _s10FinanceKit18ManagedTransactionC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0);
  if ((v21 & 1) == 0 && v20 >= 1)
  {
    [v23 setFetchLimit_];
  }

  v24 = v42;
  if (v22 < 1)
  {
    v24 = 1;
  }

  v25 = v45;
  if ((v24 & 1) == 0)
  {
    [v23 setFetchOffset_];
  }

  [v23 setReturnsObjectsAsFaults_];
  v26 = sub_1B7801498();
  v27 = v25;
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

      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v32)
    {
      goto LABEL_35;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
    {
      *(v20 + 4) = i;

      _os_log_impl(&dword_1B7198000, v30, v31, "Found %ld transactions", v20, 0xCu);
      MEMORY[0x1B8CA7A40](v20, -1, -1);

LABEL_21:
      v44 = v27;
      if (v32)
      {
        v27 = sub_1B7801958();
        if (!v27)
        {
LABEL_33:

          *v40 = MEMORY[0x1E69E7CC0];
          return;
        }
      }

      else
      {
        v27 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_33;
        }
      }

      v46 = MEMORY[0x1E69E7CC0];
      v31 = &v46;
      sub_1B71FDE58(0, v27 & ~(v27 >> 63), 0);
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_35:
      ;
    }

    v34 = 0;
    v35 = v46;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1B8CA5DC0](v34, v28);
      }

      else
      {
        v36 = *(v28 + 8 * v34 + 32);
      }

      Transaction.init(_:)(v36, v9);
      v46 = v35;
      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B71FDE58(v37 > 1, v38 + 1, 1);
        v35 = v46;
      }

      ++v34;
      *(v35 + 16) = v38 + 1;
      sub_1B73AEE14(v9, v35 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v38, type metadata accessor for Transaction);
    }

    while (v27 != v34);

    *v40 = v35;
  }
}

void sub_1B73A3AA0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v33 = a3;
  v7 = type metadata accessor for Account(0);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  LOBYTE(v12) = *(a1 + 24);
  v13 = *(a1 + 32);
  LODWORD(v34) = *(a1 + 40);
  type metadata accessor for ManagedAccount();
  v14 = [swift_getObjCClassFromMetadata() fetchRequest];
  v15 = v14;
  if (!v10)
  {
    goto LABEL_4;
  }

  v31 = v13;
  v32 = a2;
  v16 = v3;
  v17 = v14;
  v18 = qword_1EB98E988;
  v19 = v10;
  if (v18 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v20 = sub_1B751E2EC(qword_1EB991948);
    [v17 setPredicate_];

    v15 = v17;
    v4 = v16;
    v13 = v31;
LABEL_4:
    sub_1B7226670(v9, v15);
    if ((v12 & 1) == 0 && v11 >= 1)
    {
      [v15 setFetchLimit_];
    }

    if ((v34 & 1) == 0 && v13 >= 1)
    {
      [v15 setFetchOffset_];
    }

    [v15 setReturnsObjectsAsFaults_];
    v21 = sub_1B7801498();
    v9 = v4;
    if (v4)
    {
      break;
    }

    v22 = v21;
    v32 = v15;
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v23 = sub_1B78000B8();
    __swift_project_value_buffer(v23, qword_1EDAF6590);

    v11 = sub_1B7800098();
    LOBYTE(v24) = sub_1B78011F8();
    v25 = v22 >> 62;
    if (os_log_type_enabled(v11, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      if (!v25)
      {
        v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_17;
      }

      goto LABEL_38;
    }

    while (1)
    {
      v11 = v32;
      if (v25)
      {
        v26 = sub_1B7801958();
        if (!v26)
        {
LABEL_36:

          *v33 = MEMORY[0x1E69E7CC0];
          return;
        }
      }

      else
      {
        v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_36;
        }
      }

      v37 = MEMORY[0x1E69E7CC0];
      v24 = &v37;
      sub_1B71FDE14(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_38:
      v27 = sub_1B7801958();
LABEL_17:
      *(v26 + 4) = v27;

      _os_log_impl(&dword_1B7198000, v11, v24, "Found %ld accounts", v26, 0xCu);
      MEMORY[0x1B8CA7A40](v26, -1, -1);
    }

    v16 = 0;
    v19 = v37;
    v17 = (v22 & 0xC000000000000001);
    v34 = v22 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17)
      {
        v28 = MEMORY[0x1B8CA5DC0](v16, v22);
      }

      else
      {
        if (v16 >= *(v34 + 16))
        {
          goto LABEL_33;
        }

        v28 = *(v22 + 8 * v16 + 32);
      }

      Account.init(_:)(v28, v36);
      v37 = v19;
      v30 = v19[2];
      v29 = v19[3];
      v11 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1B71FDE14(v29 > 1, v30 + 1, 1);
        v19 = v37;
      }

      v19[2] = v11;
      sub_1B73AEE14(v36, v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, type metadata accessor for Account);
      ++v16;
      if (v12 == v26)
      {

        *v33 = v19;
        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }
}

uint64_t sub_1B73A3F4C(_OWORD *a1)
{
  *(v2 + 176) = v1;
  v4 = sub_1B7801478();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 41) = *(a1 + 25);

  return MEMORY[0x1EEE6DFA0](sub_1B73A4020, 0, 0);
}

uint64_t sub_1B73A4020()
{
  v37 = v0;
  v1 = *(*(v0 + 176) + 16);
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
  *(v0 + 208) = v3;

  if (qword_1EDAF6588 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v4 = sub_1B78000B8();
    __swift_project_value_buffer(v4, qword_1EDAF6590);
    sub_1B73AE368(v0 + 16, v0 + 64);
    v5 = sub_1B7800098();
    v6 = sub_1B78011F8();
    sub_1B73AE3C4(v0 + 16);
    if (!os_log_type_enabled(v5, v6))
    {
      break;
    }

    v32 = v6;
    log = v5;
    v34 = v3;
    v7 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v7 = 136315394;
    *(v0 + 168) = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v8 = sub_1B7801748();
    v3 = sub_1B71A3EF8(v8, v9, &v35);

    *(v7 + 4) = v3;
    *(v7 + 12) = 2080;
    v10 = *(v0 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (v10 >> 62)
    {
      v11 = sub_1B7801958();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11 == v12)
      {
        v17 = sub_1B7801878();
        v18 = MEMORY[0x1B8CA4F60](v13, v17);
        v20 = v19;

        v21 = sub_1B71A3EF8(v18, v20, &v35);

        *(v7 + 14) = v21;
        _os_log_impl(&dword_1B7198000, log, v32, "Executing private transactions query with predicate: %s and sortDescriptors: %s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v31, -1, -1);
        MEMORY[0x1B8CA7A40](v7, -1, -1);

        v3 = v34;
        goto LABEL_22;
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = MEMORY[0x1B8CA5DC0](v12, v10);
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

LABEL_13:
      v16 = v14;
      v3 = sub_1B7801298();

      ++v12;
      if (v3)
      {
        MEMORY[0x1B8CA4F20]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v13 = v36;
        v12 = v15;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v14 = *(v10 + 8 * v12 + 32);
    v15 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_13;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_22:
  v22 = *(v0 + 192);
  v23 = *(v0 + 200);
  v24 = *(v0 + 184);
  v25 = swift_allocObject();
  *(v0 + 216) = v25;
  v26 = *(v0 + 32);
  *(v25 + 16) = *(v0 + 16);
  *(v25 + 32) = v26;
  *(v25 + 41) = *(v0 + 41);
  *(v25 + 64) = v3;
  (*(v22 + 104))(v23, *MEMORY[0x1E695D2B8], v24);
  sub_1B73AE368(v0 + 16, v0 + 112);
  v3;
  v27 = swift_task_alloc();
  *(v0 + 224) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F878);
  *v27 = v0;
  v27[1] = sub_1B73A13BC;
  v29 = *(v0 + 200);

  return MEMORY[0x1EEDB6538](v0 + 160, v29, sub_1B73AE418, v25, v28);
}

void sub_1B73A44B0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v37 = a3;
  v7 = type metadata accessor for Transaction();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v40 = *(a1 + 32);
  LODWORD(v9) = *(a1 + 40);
  v38 = v14;
  LODWORD(v39) = v9;
  type metadata accessor for ManagedTransaction();
  v15 = [swift_getObjCClassFromMetadata() fetchRequest];
  v16 = v15;
  if (v12)
  {
    v35 = a2;
    v36 = v3;
    v17 = v15;
    v18 = qword_1EB98EB68;
    v19 = v12;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_1B751E2EC(qword_1EB99E310);
    [v17 setPredicate_];

    v16 = v17;
    v4 = v36;
  }

  sub_1B72266A8(v11, v16);
  if ((v38 & 1) == 0 && v13 >= 1)
  {
    [v16 setFetchLimit_];
  }

  if ((v39 & 1) == 0 && v40 >= 1)
  {
    [v16 setFetchOffset_];
  }

  [v16 setReturnsObjectsAsFaults_];
  v21 = sub_1B7801498();
  if (v4)
  {
  }

  else
  {
    v22 = v21;
    v40 = v16;
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v23 = sub_1B78000B8();
    __swift_project_value_buffer(v23, qword_1EDAF6590);

    v24 = sub_1B7800098();
    LOBYTE(v25) = sub_1B78011F8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v22 >> 62;
    v39 = 0;
    if (!v26)
    {

      goto LABEL_20;
    }

    v28 = swift_slowAlloc();
    *v28 = 134217984;
    if (v27)
    {
      goto LABEL_34;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
    {
      *(v28 + 4) = i;

      _os_log_impl(&dword_1B7198000, v24, v25, "Found %ld transactions", v28, 0xCu);
      MEMORY[0x1B8CA7A40](v28, -1, -1);

LABEL_20:
      v24 = v40;
      if (v27)
      {
        v28 = sub_1B7801958();
        if (!v28)
        {
LABEL_32:

          *v37 = MEMORY[0x1E69E7CC0];
          return;
        }
      }

      else
      {
        v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_32;
        }
      }

      v41 = MEMORY[0x1E69E7CC0];
      v25 = &v41;
      sub_1B71FDE58(0, v28 & ~(v28 >> 63), 0);
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v30 = 0;
    v31 = v41;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1B8CA5DC0](v30, v22);
      }

      else
      {
        v32 = *(v22 + 8 * v30 + 32);
      }

      Transaction.init(_:)(v32, v10);
      v41 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B71FDE58(v33 > 1, v34 + 1, 1);
        v31 = v41;
      }

      ++v30;
      *(v31 + 16) = v34 + 1;
      sub_1B73AEE14(v10, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, type metadata accessor for Transaction);
    }

    while (v28 != v30);

    *v37 = v31;
  }
}

uint64_t sub_1B73A4910(_OWORD *a1)
{
  *(v2 + 176) = v1;
  v4 = sub_1B7801478();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 41) = *(a1 + 25);

  return MEMORY[0x1EEE6DFA0](sub_1B73A49E4, 0, 0);
}

uint64_t sub_1B73A49E4()
{
  v41 = v0;
  v1 = *(*(v0 + 176) + 16);
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
  *(v0 + 208) = v3;

  if (qword_1EDAF6588 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v4 = sub_1B78000B8();
    __swift_project_value_buffer(v4, qword_1EDAF6590);
    sub_1B73AE258(v0 + 16, v0 + 64);
    v5 = sub_1B7800098();
    v6 = sub_1B78011F8();
    sub_1B73AE2B4(v0 + 16);
    if (!os_log_type_enabled(v5, v6))
    {
      break;
    }

    log = v5;
    v38 = v3;
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v7 = 136315394;
    *(v0 + 168) = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v8 = sub_1B7801748();
    v10 = sub_1B71A3EF8(v8, v9, &v39);

    *(v7 + 4) = v10;
    buf = v7;
    *(v7 + 12) = 2080;
    v11 = *(v0 + 16);
    v40 = MEMORY[0x1E69E7CC0];
    if (v11 >> 62)
    {
      v12 = sub_1B7801958();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v12 == v13)
      {
        v18 = sub_1B7801878();
        v19 = MEMORY[0x1B8CA4F60](v14, v18);
        v21 = v20;

        v22 = sub_1B71A3EF8(v19, v21, &v39);

        *(buf + 14) = v22;
        _os_log_impl(&dword_1B7198000, log, v6, "Executing private account balances query with predicate: %s and sortDescriptors: %s", buf, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v35, -1, -1);
        MEMORY[0x1B8CA7A40](buf, -1, -1);

        v3 = v38;
        goto LABEL_22;
      }

      if ((v11 & 0xC000000000000001) == 0)
      {
        break;
      }

      v15 = MEMORY[0x1B8CA5DC0](v13, v11);
      v3 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_27;
      }

LABEL_13:
      v16 = v15;
      v17 = sub_1B7801298();

      ++v13;
      if (v17)
      {
        MEMORY[0x1B8CA4F20]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v14 = v40;
        v13 = v3;
      }
    }

    if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    v15 = *(v11 + 8 * v13 + 32);
    v3 = (v13 + 1);
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_13;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_22:
  v23 = sub_1B7800098();
  v24 = sub_1B78011F8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1B7198000, v23, v24, "Executing private account balances query", v25, 2u);
    MEMORY[0x1B8CA7A40](v25, -1, -1);
  }

  v27 = *(v0 + 192);
  v26 = *(v0 + 200);
  v28 = *(v0 + 184);

  v29 = swift_allocObject();
  *(v0 + 216) = v29;
  v30 = *(v0 + 32);
  *(v29 + 16) = *(v0 + 16);
  *(v29 + 32) = v30;
  *(v29 + 41) = *(v0 + 41);
  *(v29 + 64) = v3;
  (*(v27 + 104))(v26, *MEMORY[0x1E695D2B8], v28);
  sub_1B73AE258(v0 + 16, v0 + 112);
  v3;
  v31 = swift_task_alloc();
  *(v0 + 224) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930C0);
  *v31 = v0;
  v31[1] = sub_1B73A13BC;
  v33 = *(v0 + 200);

  return MEMORY[0x1EEDB6538](v0 + 160, v33, sub_1B73AE308, v29, v32);
}

void sub_1B73A4EE4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v37 = a3;
  v7 = type metadata accessor for AccountBalance(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v40 = *(a1 + 32);
  LODWORD(v9) = *(a1 + 40);
  v38 = v14;
  LODWORD(v39) = v9;
  type metadata accessor for ManagedAccountBalance();
  v15 = [swift_getObjCClassFromMetadata() fetchRequest];
  v16 = v15;
  if (v12)
  {
    v35 = a2;
    v36 = v3;
    v17 = v15;
    v18 = qword_1EB98E9F8;
    v19 = v12;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_1B751E2EC(qword_1EB994140);
    [v17 setPredicate_];

    v16 = v17;
    v4 = v36;
  }

  sub_1B7226AA8(v11, v16);
  if ((v38 & 1) == 0 && v13 >= 1)
  {
    [v16 setFetchLimit_];
  }

  if ((v39 & 1) == 0 && v40 >= 1)
  {
    [v16 setFetchOffset_];
  }

  [v16 setReturnsObjectsAsFaults_];
  v21 = sub_1B7801498();
  if (v4)
  {
  }

  else
  {
    v22 = v21;
    v40 = v16;
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v23 = sub_1B78000B8();
    __swift_project_value_buffer(v23, qword_1EDAF6590);

    v24 = sub_1B7800098();
    LOBYTE(v25) = sub_1B78011F8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v22 >> 62;
    v39 = 0;
    if (!v26)
    {

      goto LABEL_20;
    }

    v28 = swift_slowAlloc();
    *v28 = 134217984;
    if (v27)
    {
      goto LABEL_34;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
    {
      *(v28 + 4) = i;

      _os_log_impl(&dword_1B7198000, v24, v25, "Found %ld account balances", v28, 0xCu);
      MEMORY[0x1B8CA7A40](v28, -1, -1);

LABEL_20:
      v24 = v40;
      if (v27)
      {
        v28 = sub_1B7801958();
        if (!v28)
        {
LABEL_32:

          *v37 = MEMORY[0x1E69E7CC0];
          return;
        }
      }

      else
      {
        v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_32;
        }
      }

      v41 = MEMORY[0x1E69E7CC0];
      v25 = &v41;
      sub_1B71FDE9C(0, v28 & ~(v28 >> 63), 0);
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v30 = 0;
    v31 = v41;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1B8CA5DC0](v30, v22);
      }

      else
      {
        v32 = *(v22 + 8 * v30 + 32);
      }

      AccountBalance.init(_:)(v32, v10);
      v41 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B71FDE9C(v33 > 1, v34 + 1, 1);
        v31 = v41;
      }

      ++v30;
      *(v31 + 16) = v34 + 1;
      sub_1B73AEE14(v10, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, type metadata accessor for AccountBalance);
    }

    while (v28 != v30);

    *v37 = v31;
  }
}

void sub_1B73A5344(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v37 = a3;
  v7 = type metadata accessor for InternalAccount();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v40 = *(a1 + 32);
  LODWORD(v9) = *(a1 + 40);
  v38 = v14;
  LODWORD(v39) = v9;
  type metadata accessor for ManagedInternalAccount();
  v15 = [swift_getObjCClassFromMetadata() fetchRequest];
  v16 = v15;
  if (v12)
  {
    v35 = a2;
    v36 = v3;
    v17 = v15;
    v18 = qword_1EDAF8080;
    v19 = v12;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_1B751E2EC(qword_1EDAF8088);
    [v17 setPredicate_];

    v16 = v17;
    v4 = v36;
  }

  sub_1B7226AE0(v11, v16);
  if ((v38 & 1) == 0 && v13 >= 1)
  {
    [v16 setFetchLimit_];
  }

  if ((v39 & 1) == 0 && v40 >= 1)
  {
    [v16 setFetchOffset_];
  }

  [v16 setReturnsObjectsAsFaults_];
  v21 = sub_1B7801498();
  if (v4)
  {
  }

  else
  {
    v22 = v21;
    v40 = v16;
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v23 = sub_1B78000B8();
    __swift_project_value_buffer(v23, qword_1EDAF6590);

    v24 = sub_1B7800098();
    LOBYTE(v25) = sub_1B78011F8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v22 >> 62;
    v39 = 0;
    if (!v26)
    {

      goto LABEL_20;
    }

    v28 = swift_slowAlloc();
    *v28 = 134217984;
    if (v27)
    {
      goto LABEL_34;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
    {
      *(v28 + 4) = i;

      _os_log_impl(&dword_1B7198000, v24, v25, "Found %ld accounts", v28, 0xCu);
      MEMORY[0x1B8CA7A40](v28, -1, -1);

LABEL_20:
      v24 = v40;
      if (v27)
      {
        v28 = sub_1B7801958();
        if (!v28)
        {
LABEL_32:

          *v37 = MEMORY[0x1E69E7CC0];
          return;
        }
      }

      else
      {
        v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_32;
        }
      }

      v41 = MEMORY[0x1E69E7CC0];
      v25 = &v41;
      sub_1B71FD914(0, v28 & ~(v28 >> 63), 0);
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v30 = 0;
    v31 = v41;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1B8CA5DC0](v30, v22);
      }

      else
      {
        v32 = *(v22 + 8 * v30 + 32);
      }

      InternalAccount.init(_:)(v32, v10);
      v41 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B71FD914(v33 > 1, v34 + 1, 1);
        v31 = v41;
      }

      ++v30;
      *(v31 + 16) = v34 + 1;
      sub_1B73AEE14(v10, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, type metadata accessor for InternalAccount);
    }

    while (v28 != v30);

    *v37 = v31;
  }
}

void sub_1B73A57A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v37 = a3;
  v7 = type metadata accessor for InternalTransaction(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v40 = *(a1 + 32);
  LODWORD(v9) = *(a1 + 40);
  v38 = v14;
  LODWORD(v39) = v9;
  type metadata accessor for ManagedInternalTransaction();
  v15 = [swift_getObjCClassFromMetadata() fetchRequest];
  v16 = v15;
  if (v12)
  {
    v35 = a2;
    v36 = v3;
    v17 = v15;
    v18 = qword_1EB98EB58;
    v19 = v12;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_1B751E2EC(qword_1EB99D9F0);
    [v17 setPredicate_];

    v16 = v17;
    v4 = v36;
  }

  sub_1B7226B18(v11, v16);
  if ((v38 & 1) == 0 && v13 >= 1)
  {
    [v16 setFetchLimit_];
  }

  if ((v39 & 1) == 0 && v40 >= 1)
  {
    [v16 setFetchOffset_];
  }

  [v16 setReturnsObjectsAsFaults_];
  v21 = sub_1B7801498();
  if (v4)
  {
  }

  else
  {
    v22 = v21;
    v40 = v16;
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v23 = sub_1B78000B8();
    __swift_project_value_buffer(v23, qword_1EDAF6590);

    v24 = sub_1B7800098();
    LOBYTE(v25) = sub_1B78011F8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v22 >> 62;
    v39 = 0;
    if (!v26)
    {

      goto LABEL_20;
    }

    v28 = swift_slowAlloc();
    *v28 = 134217984;
    if (v27)
    {
      goto LABEL_34;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
    {
      *(v28 + 4) = i;

      _os_log_impl(&dword_1B7198000, v24, v25, "Found %ld transactions", v28, 0xCu);
      MEMORY[0x1B8CA7A40](v28, -1, -1);

LABEL_20:
      v24 = v40;
      if (v27)
      {
        v28 = sub_1B7801958();
        if (!v28)
        {
LABEL_32:

          *v37 = MEMORY[0x1E69E7CC0];
          return;
        }
      }

      else
      {
        v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_32;
        }
      }

      v41 = MEMORY[0x1E69E7CC0];
      v25 = &v41;
      sub_1B71FDEE0(0, v28 & ~(v28 >> 63), 0);
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v30 = 0;
    v31 = v41;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1B8CA5DC0](v30, v22);
      }

      else
      {
        v32 = *(v22 + 8 * v30 + 32);
      }

      InternalTransaction.init(_:)(v32, v10);
      v41 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B71FDEE0(v33 > 1, v34 + 1, 1);
        v31 = v41;
      }

      ++v30;
      *(v31 + 16) = v34 + 1;
      sub_1B73AEE14(v10, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, type metadata accessor for InternalTransaction);
    }

    while (v28 != v30);

    *v37 = v31;
  }
}

uint64_t sub_1B73A5C04(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1B7801478();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913C0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for AccountBalanceQuery();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v2[15] = *(v6 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73A5DA8, 0, 0);
}

uint64_t sub_1B73A5DA8()
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
  sub_1B73AEBE4(v6, v4, type metadata accessor for AccountBalanceQuery);
  sub_1B73AEBE4(v6, v5, type metadata accessor for AccountBalanceQuery);
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
    v0[3] = *(v12 + *(v13 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E0);
    v15 = sub_1B7801748();
    v17 = v16;
    sub_1B73AEC4C(v12, type metadata accessor for AccountBalanceQuery);
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
        if (v0[4])
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

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930C8);
    v33 = MEMORY[0x1B8CA4F60](v20, v32);
    v35 = v34;

    sub_1B73AEC4C(v31, type metadata accessor for AccountBalanceQuery);
    v36 = sub_1B71A3EF8(v33, v35, &v55);

    *(buf + 14) = v36;
    _os_log_impl(&dword_1B7198000, log, v51, "Executing account balances query with nsPredicate: %s and sortDescriptor keyPaths: %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v50, -1, -1);
    MEMORY[0x1B8CA7A40](buf, -1, -1);

    v3 = v54;
  }

  else
  {

    sub_1B73AEC4C(v11, type metadata accessor for AccountBalanceQuery);
    sub_1B73AEC4C(v12, type metadata accessor for AccountBalanceQuery);
  }

  v37 = v0[15];
  v38 = v0[16];
  v39 = v0[14];
  v41 = v0[8];
  v40 = v0[9];
  v42 = v0[7];
  sub_1B73AEBE4(v0[5], v38, type metadata accessor for AccountBalanceQuery);
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v0[20] = v45;
  sub_1B73AEE14(v38, v45 + v43, type metadata accessor for AccountBalanceQuery);
  *(v45 + v44) = v3;
  (*(v41 + 104))(v40, *MEMORY[0x1E695D2B8], v42);
  v3;
  v46 = swift_task_alloc();
  v0[21] = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930C0);
  *v46 = v0;
  v46[1] = sub_1B739E7D0;
  v48 = v0[9];

  return MEMORY[0x1EEDB6538](v0 + 2, v48, sub_1B73AE328, v45, v47);
}

void sub_1B73A6324(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v36 = a3;
  v4 = type metadata accessor for AccountBalance(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountBalanceQuery();
  v9 = v8[7];
  v10 = *(a1 + v8[8]);
  v11 = *a1;
  v12 = a1 + v8[6];
  v13 = *v12;
  v14 = v12[8];
  v15 = *(a1 + v9);
  v16 = *(a1 + v9 + 8);
  type metadata accessor for ManagedAccountBalance();
  v17 = [swift_getObjCClassFromMetadata() fetchRequest];
  v18 = v10;
  v19 = v17;
  [v17 setPredicate_];
  sub_1B73AD4D0(v11, v19, &qword_1EB9913C0, &unk_1B78204C0, _s10FinanceKit21ManagedAccountBalanceC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0);
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
  v21 = v37;
  v22 = sub_1B7801498();
  if (v21)
  {
  }

  else
  {
    v23 = v22;
    v38 = v19;
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v24 = sub_1B78000B8();
    __swift_project_value_buffer(v24, qword_1EDAF6590);

    v25 = sub_1B7800098();
    LOBYTE(v26) = sub_1B78011F8();
    v27 = v23 >> 62;
    if (!os_log_type_enabled(v25, v26))
    {

      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (v27)
    {
      goto LABEL_32;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
    {
      *(v16 + 4) = i;

      _os_log_impl(&dword_1B7198000, v25, v26, "Found %ld account balances", v16, 0xCu);
      MEMORY[0x1B8CA7A40](v16, -1, -1);

LABEL_18:
      if (v27)
      {
        v26 = sub_1B7801958();
        v29 = v38;
        if (!v26)
        {
LABEL_30:

          *v36 = MEMORY[0x1E69E7CC0];
          return;
        }
      }

      else
      {
        v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v29 = v38;
        if (!v26)
        {
          goto LABEL_30;
        }
      }

      v37 = 0;
      v39 = MEMORY[0x1E69E7CC0];
      v25 = &v39;
      sub_1B71FDE9C(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_32:
      ;
    }

    v30 = 0;
    v31 = v39;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1B8CA5DC0](v30, v23);
      }

      else
      {
        v32 = *(v23 + 8 * v30 + 32);
      }

      AccountBalance.init(_:)(v32, v7);
      v39 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B71FDE9C(v33 > 1, v34 + 1, 1);
        v31 = v39;
      }

      ++v30;
      *(v31 + 16) = v34 + 1;
      sub_1B73AEE14(v7, v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, type metadata accessor for AccountBalance);
    }

    while (v26 != v30);

    *v36 = v31;
  }
}

void sub_1B73A6740(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991138);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v45 - v6;
  v8 = type metadata accessor for ScheduledPaymentQuery();
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
  sub_1B73AEBE4(a1, v13, type metadata accessor for ScheduledPaymentQuery);
  sub_1B73AEBE4(a1, v11, type metadata accessor for ScheduledPaymentQuery);
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
    sub_1B73AEC4C(v13, type metadata accessor for ScheduledPaymentQuery);
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

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993110);
    v33 = MEMORY[0x1B8CA4F60](v24, v32);
    v35 = v34;

    sub_1B73AEC4C(v11, type metadata accessor for ScheduledPaymentQuery);
    v36 = sub_1B71A3EF8(v33, v35, &v59);

    v38 = v47;
    v37 = v48;
    *(v47 + 14) = v36;
    _os_log_impl(&dword_1B7198000, v37, v46, "Executing scheduled payment query with nsPredicate: %s and sortDescriptor keyPaths: %s", v38, 0x16u);
    v39 = v45;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v39, -1, -1);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
  }

  else
  {

    sub_1B73AEC4C(v11, type metadata accessor for ScheduledPaymentQuery);
    sub_1B73AEC4C(v13, type metadata accessor for ScheduledPaymentQuery);
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