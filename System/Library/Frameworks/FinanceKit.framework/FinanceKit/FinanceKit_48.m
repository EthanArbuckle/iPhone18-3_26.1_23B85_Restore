void sub_1B761A6DC(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v2, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v16 = v4;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v14 = v17, v5 = v10, v6 = v11, !v17))
      {
LABEL_22:
        sub_1B71B7B58();
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_18:
    v15 = [v14 transactionIconObject];

    v10 = v5;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B761A93C(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v2, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v16 = v4;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v14 = v17, v5 = v10, v6 = v11, !v17))
      {
LABEL_22:
        sub_1B71B7B58();
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_18:
    v15 = [v14 foundInInsightObject];

    v10 = v5;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B761AB9C(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedInternalTransaction();
    sub_1B761BC38(&qword_1EB990048, 255, type metadata accessor for ManagedInternalTransaction);
    sub_1B7800FE8();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedInternalTransaction(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        sub_1B71B7B58();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 insightsObject];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(uint64_t a1)
{
  v3 = v1;
  swift_getObjectType();
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = [v3 sharedId];
  if (v12)
  {
    v25 = v3;
    v13 = v12;
    sub_1B77FF9E8();

    v14 = *(v6 + 32);
    v27 = v5;
    v14(v11, v9, v5);
    v26.receiver = swift_getObjCClassFromMetadata();
    v26.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v15 = objc_msgSendSuper2(&v26, sel_fetchRequest);
    v16 = sub_1B7800C18();
    [v15 setRelationshipKeyPathsForPrefetching_];

    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B7807CD0;
    v18 = sub_1B77FF9B8();
    *(v17 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
    *(v17 + 64) = sub_1B726E47C();
    *(v17 + 32) = v18;
    v19 = sub_1B78010E8();
    [v15 setPredicate_];

    v20 = sub_1B7801498();
    if (v2)
    {
      (*(v6 + 8))(v11, v27);

      return;
    }

    v21 = sub_1B723B490(v20);

    _s10FinanceKit26ManagedTransactionInsightsC05mergedE012transactions2inACSgShyAA0c8InternalD0CG_So22NSManagedObjectContextCtFZ_0(v21, a1);
    v23 = v22;

    (*(v6 + 8))(v11, v27);
    v3 = v25;
  }

  if (![v3 insightsObject])
  {
    type metadata accessor for ManagedTransactionInsights();
    [v3 setInsightsObject_];
  }
}

id ManagedTransactionInsights.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTransactionInsights.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTransactionInsights.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedTransactionInsights.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedTransactionInsights;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

Swift::Void __swiftcall ManagedTransactionInsights.willSave()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
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

void sub_1B761B4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7238588(a1);
  if (!v4)
  {
LABEL_12:
    if (!sub_1B7238588(a1))
    {
      type metadata accessor for ManagedTransactionInsights();
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    }

    return;
  }

  v5 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1B7801958() >= 2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*(a1 + 16) < 2)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  sub_1B761989C(a1);
  if (v6 >> 62)
  {
    v9 = v6;
    v10 = sub_1B7801958();
    v6 = v9;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;
LABEL_16:

  [v5 setApplePayInsightObject_];

  sub_1B7619AFC(a1);
  if (v6 >> 62)
  {
    v13 = v6;
    v14 = sub_1B7801958();
    v6 = v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B8CA5DC0](0, v6);
      goto LABEL_21;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v6 + 32);
LABEL_21:
      v12 = v11;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
LABEL_24:

  [v5 setBankMerchantInformationInsightObject_];

  sub_1B7619D5C(a1);
  v16 = sub_1B723B2E0(v15);

  v17 = sub_1B728198C(v16);

  [v5 setMapsInsightObject_];

  sub_1B7619FBC(a1);
  v19 = sub_1B723B328(v18);

  v20 = sub_1B76C4328(v19);

  [v5 setContactInsightObject_];

  sub_1B761A21C(a1);
  v22 = sub_1B723B370(v21);

  v23 = sub_1B750F6C0(v22);

  [v5 setUserInsightObject_];

  sub_1B761A47C(a1);
  v25 = sub_1B723B3B8(v24);

  v26 = sub_1B7238570(v25);
  if (v26)
  {
    sub_1B76193C4(v25);
    v28 = sub_1B723B0E8(v27);

    v29 = sub_1B728736C(v28);

    [v26 setFinHealthTransactionEntityGroupObject_];

    sub_1B7619630(v25);
    v31 = sub_1B723B130(v30);

    v32 = sub_1B726E130(v31);

    [v26 setFinHealthIncomeInsightObject_];
  }

  else
  {
  }

  [v5 setFinHealthInsightObject_];

  sub_1B761A6DC(a1);
  v34 = sub_1B723B400(v33);

  v35 = sub_1B720D5A8(v34);

  [v5 setTransactionIconObject_];

  v41 = &_s10FinanceKit11FeatureFlagVN_0;
  v42 = sub_1B721D3DC();
  v40[0] = 13;
  LOBYTE(v35) = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v40);
  if (v35)
  {
    sub_1B761A93C(a1);
    if (!(v6 >> 62))
    {
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_30:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1B8CA5DC0](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v36 = *(v6 + 32);
        }

        v37 = v36;
        goto LABEL_40;
      }

LABEL_39:
      v37 = 0;
LABEL_40:

      [v5 setFoundInInsightObject_];

      return;
    }

LABEL_38:
    v38 = v6;
    v39 = sub_1B7801958();
    v6 = v38;
    if (v39)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }
}

void _s10FinanceKit26ManagedTransactionInsightsC05mergedE012transactions2inACSgShyAA0c8InternalD0CG_So22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1B761AB9C(a1);
  v5 = sub_1B723B448(v4);

  sub_1B761B4C4(v5, a2);
  v7 = v6;

  if (v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1B7801908();
      type metadata accessor for ManagedInternalTransaction();
      sub_1B761BC38(&qword_1EB990048, 255, type metadata accessor for ManagedInternalTransaction);
      sub_1B7800FE8();
      v3 = v22;
      v8 = v23;
      v9 = v24;
      v10 = v25;
      v11 = v26;
    }

    else
    {
      v12 = -1 << *(v3 + 32);
      v8 = v3 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v3 + 56);

      v10 = 0;
    }

    v15 = (v9 + 64) >> 6;
    if (v3 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        break;
      }

LABEL_13:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
LABEL_19:
        sub_1B71B7B58();
        return;
      }

      while (1)
      {
        [v20 setInsightsObject_];

        v10 = v18;
        v11 = v19;
        if ((v3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_1B7801988())
        {
          type metadata accessor for ManagedInternalTransaction();
          swift_dynamicCast();
          v20 = v21;
          v18 = v10;
          v19 = v11;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_19;
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B761BC38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Order.VersionIdentifier.init(fullyQualifiedOrderIdentifier:updateDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  v7 = *(type metadata accessor for Order.VersionIdentifier() + 20);
  v8 = sub_1B77FF988();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for Order.VersionIdentifier()
{
  result = qword_1EDAF66B0;
  if (!qword_1EDAF66B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Order.VersionIdentifier.fullyQualifiedOrderIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 Order.VersionIdentifier.fullyQualifiedOrderIdentifier.setter(__n128 *a1)
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

uint64_t Order.VersionIdentifier.updateDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Order.VersionIdentifier() + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Order.VersionIdentifier.updateDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Order.VersionIdentifier() + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Order.VersionIdentifier.hash(into:)()
{
  sub_1B7800798();
  sub_1B7800798();
  type metadata accessor for Order.VersionIdentifier();
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  return sub_1B7800768();
}

uint64_t Order.VersionIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  type metadata accessor for Order.VersionIdentifier();
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B761C0CC()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B761C188()
{
  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  return sub_1B7800768();
}

uint64_t sub_1B761C230()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit5OrderV17VersionIdentifierV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Order.VersionIdentifier();

  return sub_1B77FF918();
}

uint64_t sub_1B761C3F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B761C468()
{
  result = sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Order.WebService.authenticationToken.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Order.WebService.authenticationToken.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Order.WebService.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Order.WebService() + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Order.WebService()
{
  result = qword_1EB9998A0;
  if (!qword_1EB9998A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Order.WebService.baseURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Order.WebService() + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B761C720()
{
  result = sub_1B77FF4F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t BankConnectService.completeConnectionAuthorization(forSession:withAuthorizationPayload:fraudAssessment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  type metadata accessor for BankConnectConsent();
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for BankConnectService.Message();
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B761C864, 0, 0);
}

uint64_t sub_1B761C864()
{
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);
  v2 = sub_1B7800098();
  v3 = sub_1B78011D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "completeConnectionAuthorization(forSession:withAuthorizationPayload:fraudAssessment:) is deprecated and has been replaced with completeConnectionAuthorization(for:with:fraudAssessment:configuration:). Please update immediately, continued use of this function may result in unexpected behaviour.", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[14];
  v9 = v0[11];
  v8 = v0[12];

  v0[18] = *(v7 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998B0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 64);
  sub_1B761D288(v9, v5, type metadata accessor for BankConnectAuthorizationSession);
  sub_1B761D288(v8, v5 + v11, type metadata accessor for BankConnectAuthorizationPayload);
  *(v5 + v12) = v6;
  type metadata accessor for BankConnectAuthorizationConfiguration();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B761CA3C, 0, 0);
}

uint64_t sub_1B761CA3C()
{
  v1 = v0[18];
  v2 = v0[15];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B761CAE8;
  v3 = swift_continuation_init();
  sub_1B722EA04(v3, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B761CAE8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = (*v0)[6];
  (*v0)[19] = v3;
  if (!v3)
  {
    v4 = v1[17];
    sub_1B75E79FC(v1[15], v1[10]);
    sub_1B7267DAC(v4);

    v5 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B761CC5C, 0, 0);
}

uint64_t sub_1B761CC5C()
{
  sub_1B7267DAC(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectService.completeConnectionAuthorization(for:with:fraudAssessment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  type metadata accessor for BankConnectConsent();
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for BankConnectService.Message();
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B761CDA0, 0, 0);
}

uint64_t sub_1B761CDA0()
{
  v1 = v0[18];
  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v0[19] = *(v0[15] + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998B0);
  v7 = v6[12];
  v8 = v6[16];
  v9 = v6[20];
  sub_1B761D288(v5, v1, type metadata accessor for BankConnectAuthorizationSession);
  sub_1B761D288(v4, v1 + v7, type metadata accessor for BankConnectAuthorizationPayload);
  *(v1 + v8) = v3;
  sub_1B761D288(v2, v1 + v9, type metadata accessor for BankConnectAuthorizationConfiguration);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B761CED8, 0, 0);
}

uint64_t sub_1B761CED8()
{
  v1 = v0[19];
  v2 = v0[16];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B761CF84;
  v3 = swift_continuation_init();
  sub_1B722EA04(v3, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B761CF84()
{
  v1 = *v0;
  v2 = *v0;
  v3 = (*v0)[6];
  (*v0)[20] = v3;
  if (!v3)
  {
    v4 = v1[18];
    sub_1B75E79FC(v1[16], v1[10]);
    sub_1B7267DAC(v4);

    v5 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B75AB778, 0, 0);
}

uint64_t sub_1B761D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return BankConnectService.completeConnectionAuthorization(forSession:withAuthorizationPayload:fraudAssessment:)(a1, a2, a3, a4);
}

uint64_t sub_1B761D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return BankConnectService.completeConnectionAuthorization(for:with:fraudAssessment:configuration:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1B761D288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of BankConnectConnectionAuthorizationCompleting.completeConnectionAuthorization(forSession:withAuthorizationPayload:fraudAssessment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B7201BB0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of BankConnectConnectionAuthorizationCompleting.completeConnectionAuthorization(for:with:fraudAssessment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B723838C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

void BankConnectConsent.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for BankConnectConsent();
  v8 = v7[8];
  v9 = sub_1B77FF988();
  v10 = 1;
  v28 = *(*(v9 - 8) + 56);
  v29 = v8;
  v28(a2 + v8, 1, 1, v9);
  v11 = [a1 id];
  sub_1B77FF9E8();

  v12 = [a1 consentID];
  v13 = sub_1B7800868();
  v15 = v14;

  v16 = (a2 + v7[5]);
  *v16 = v13;
  v16[1] = v15;
  v17 = [a1 authorizedAt];
  sub_1B77FF928();

  v18 = [a1 authorizedUntil];
  sub_1B77FF928();

  v19 = [a1 backgroundRefreshLastConfirmedAt];
  if (v19)
  {
    v20 = v19;
    sub_1B77FF928();

    v10 = 0;
  }

  v28(v6, v10, 1, v9);
  sub_1B72DFF88(v6, a2 + v29);
  *(a2 + v7[9]) = [a1 refreshSequenceNumber];
  v21 = [a1 consentToken];
  v22 = sub_1B7800868();
  v24 = v23;

  v25 = (a2 + v7[10]);
  *v25 = v22;
  v25[1] = v24;
  ManagedConsent.consentStatus.getter(&v30);
  *(a2 + v7[11]) = v30;
  v26 = [a1 lastUpdatedAt];
  sub_1B77FF928();
}

{
  v3 = type metadata accessor for BankConnectConsent();
  v4 = v3[8];
  v5 = sub_1B77FF988();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  sub_1B77FFA08();
  v6 = [a1 consentID];
  v7 = sub_1B7800868();
  v9 = v8;

  v10 = (a2 + v3[5]);
  *v10 = v7;
  v10[1] = v9;
  v11 = [a1 authorizedAt];
  sub_1B77FF928();

  v12 = [a1 authorizedUntil];
  sub_1B77FF928();

  *(a2 + v3[9]) = [a1 refreshSequenceNumber];
  v13 = [a1 consentToken];
  v14 = sub_1B7800868();
  v16 = v15;

  v17 = (a2 + v3[10]);
  *v17 = v14;
  v17[1] = v16;
  *(a2 + v3[11]) = 0;
  sub_1B77FF938();
}

uint64_t type metadata accessor for BankConnectConsent()
{
  result = qword_1EB9998E0;
  if (!qword_1EB9998E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BankConnectConsent.init(id:consentID:authorizedAt:authorizedUntil:backgroundRefreshLastConfirmedAt:refreshSequenceNumber:consentToken:consentStatus:lastUpdatedAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12)
{
  v27 = *a11;
  v19 = type metadata accessor for BankConnectConsent();
  v20 = v19[8];
  v21 = sub_1B77FF988();
  v31 = *(v21 - 8);
  (*(v31 + 56))(a9 + v20, 1, 1, v21);
  v22 = sub_1B77FFA18();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = (a9 + v19[5]);
  *v23 = a2;
  v23[1] = a3;
  v30 = *(v31 + 32);
  v30(a9 + v19[6], a4, v21);
  v30(a9 + v19[7], a5, v21);
  sub_1B72DFF88(a6, a9 + v20);
  *(a9 + v19[9]) = a7;
  v24 = (a9 + v19[10]);
  *v24 = a8;
  v24[1] = a10;
  *(a9 + v19[11]) = v27;
  v25 = a9 + v19[12];

  return (v30)(v25, a12, v21);
}

uint64_t BankConnectConsent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BankConnectConsent.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BankConnectConsent.consentID.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectConsent() + 20));

  return v1;
}

uint64_t BankConnectConsent.consentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectConsent() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankConnectConsent.authorizedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectConsent() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectConsent.authorizedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectConsent() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankConnectConsent.authorizedUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectConsent() + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectConsent.authorizedUntil.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectConsent() + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankConnectConsent.backgroundRefreshLastConfirmedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BankConnectConsent() + 32);

  return sub_1B7280900(v3, a1);
}

uint64_t BankConnectConsent.backgroundRefreshLastConfirmedAt.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BankConnectConsent() + 32);

  return sub_1B72DFF88(a1, v3);
}

uint64_t BankConnectConsent.refreshSequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for BankConnectConsent();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t BankConnectConsent.consentToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectConsent() + 40));

  return v1;
}

uint64_t BankConnectConsent.consentToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectConsent() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankConnectConsent.consentStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BankConnectConsent();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t BankConnectConsent.consentStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BankConnectConsent();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t BankConnectConsent.lastUpdatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectConsent() + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectConsent.lastUpdatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectConsent() + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B761E46C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    if (a1)
    {
      v5 = 0x49746E65736E6F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return 0x7A69726F68747561;
    }
  }

  else
  {
    v1 = 0x54746E65736E6F63;
    v2 = 0x53746E65736E6F63;
    if (a1 != 7)
    {
      v2 = 0x616470557473616CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000020;
    if (a1 != 4)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B761E5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B761FA74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B761E5F0(uint64_t a1)
{
  v2 = sub_1B761F6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B761E62C(uint64_t a1)
{
  v2 = sub_1B761F6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectConsent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B761F6C0();
  sub_1B78023F8();
  v11[31] = 0;
  sub_1B77FFA18();
  sub_1B71A6AD4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for BankConnectConsent();
    v11[30] = 1;
    sub_1B7801F78();
    v11[29] = 2;
    sub_1B77FF988();
    sub_1B71A6AD4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v11[28] = 3;
    sub_1B7801FC8();
    v11[27] = 4;
    sub_1B7801F38();
    v11[26] = 5;
    sub_1B7801FF8();
    v11[25] = 6;
    sub_1B7801F78();
    v11[24] = *(v3 + *(v9 + 44));
    v11[15] = 7;
    sub_1B761F714();
    sub_1B7801FC8();
    v11[14] = 8;
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BankConnectConsent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v42 - v4;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v50 = (&v42 - v11);
  v54 = sub_1B77FFA18();
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998D0);
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v42 - v13;
  v15 = type metadata accessor for BankConnectConsent();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 32);
  v52 = v6;
  (*(v6 + 56))(&v18[v19], 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B761F6C0();
  v57 = v14;
  v20 = v58;
  sub_1B78023C8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7205418(&v18[v19], &qword_1EB98EBD0);
  }

  else
  {
    v58 = v19;
    v21 = v18;
    v22 = v52;
    v68 = 0;
    sub_1B71A6AD4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
    v23 = v54;
    sub_1B7801E48();
    (*(v51 + 32))(v18, v55, v23);
    v67 = 1;
    v24 = sub_1B7801DF8();
    v25 = &v18[v15[5]];
    *v25 = v24;
    v25[1] = v26;
    v66 = 2;
    v27 = sub_1B71A6AD4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v28 = v50;
    v45 = v27;
    v55 = 0;
    sub_1B7801E48();
    v29 = &v18[v15[6]];
    v44 = *(v22 + 32);
    v44(v29, v28, v5);
    v65 = 3;
    v30 = v49;
    sub_1B7801E48();
    v50 = a1;
    v43 = v15;
    v31 = v30;
    v32 = v44;
    v44(&v18[v15[7]], v31, v5);
    v64 = 4;
    v33 = v48;
    sub_1B7801DB8();
    sub_1B72DFF88(v33, &v18[v58]);
    v63 = 5;
    v34 = sub_1B7801E78();
    v49 = (v22 + 32);
    v35 = v32;
    v36 = v43;
    *(v21 + v43[9]) = v34;
    v62 = 6;
    v37 = sub_1B7801DF8();
    v38 = (v21 + v36[10]);
    *v38 = v37;
    v38[1] = v39;
    v60 = 7;
    sub_1B761F768();
    sub_1B7801E48();
    *(v21 + v36[11]) = v61;
    v59 = 8;
    v40 = v47;
    sub_1B7801E48();
    (*(v53 + 8))(v57, v56);
    v35(v21 + v36[12], v40, v5);
    sub_1B761F7BC(v21, v46);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_1B7459A40(v21);
  }
}

uint64_t _s10FinanceKit18BankConnectConsentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v14 = type metadata accessor for BankConnectConsent();
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1B78020F8() & 1) == 0 || (sub_1B77FF918() & 1) == 0 || (sub_1B77FF918() & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = v14[8];
  v21 = *(v11 + 48);
  sub_1B7280900(a1 + v20, v13);
  v32 = v21;
  sub_1B7280900(a2 + v20, &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_1B7280900(v13, v10);
    if (v22(&v13[v32], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v32], v4);
      sub_1B71A6AD4(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v23 = sub_1B7800828();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    goto LABEL_21;
  }

  if (v22(&v13[v32], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1B7205418(v13, &qword_1EB98EBD0);
LABEL_16:
  if (*(a1 + v14[9]) == *(a2 + v14[9]))
  {
    if (v25 = v14[10], v26 = *(a1 + v25), v27 = *(a1 + v25 + 8), v28 = (a2 + v25), v26 == *v28) && v27 == v28[1] || (sub_1B78020F8())
    {
      if (*(a1 + v14[11]) == *(a2 + v14[11]))
      {
        v29 = sub_1B77FF918();
        return v29 & 1;
      }
    }
  }

LABEL_21:
  v29 = 0;
  return v29 & 1;
}

unint64_t sub_1B761F6C0()
{
  result = qword_1EB9998C0;
  if (!qword_1EB9998C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9998C0);
  }

  return result;
}

unint64_t sub_1B761F714()
{
  result = qword_1EB9998C8;
  if (!qword_1EB9998C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9998C8);
  }

  return result;
}

unint64_t sub_1B761F768()
{
  result = qword_1EB9998D8;
  if (!qword_1EB9998D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9998D8);
  }

  return result;
}

uint64_t sub_1B761F7BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectConsent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B761F890()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      sub_1B72F2B80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B761F970()
{
  result = qword_1EB9998F0;
  if (!qword_1EB9998F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9998F0);
  }

  return result;
}

unint64_t sub_1B761F9C8()
{
  result = qword_1EB9998F8;
  if (!qword_1EB9998F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9998F8);
  }

  return result;
}

unint64_t sub_1B761FA20()
{
  result = qword_1EB999900;
  if (!qword_1EB999900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999900);
  }

  return result;
}

uint64_t sub_1B761FA74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E65736E6F63 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEC00000074416465 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEF6C69746E556465 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B7881E50 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7881E20 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x54746E65736E6F63 && a2 == 0xEC0000006E656B6FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x53746E65736E6F63 && a2 == 0xED00007375746174 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xED00007441646574)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_1B761FD78(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 institutionID];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B761FDD0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 etag];
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

void sub_1B761FE38(uint64_t a1, void **a2)
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
  [v2 setEtag_];
}

void sub_1B761FEA8(id *a1)
{
  v1 = [*a1 lastRequestDate];
  sub_1B77FF928();
}

id ManagedInstitutionAsset.__allocating_init(institutionID:etag:data:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v8 = v7;
  v24 = a6;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(v8) initWithContext_];
  v17 = sub_1B7800838();

  [v16 setInstitutionID_];

  if (a4)
  {
    v18 = sub_1B7800838();
  }

  else
  {
    v18 = 0;
  }

  [v16 setEtag_];

  v19 = v24;
  v20 = sub_1B77FF598();
  [v16 setData_];

  sub_1B77FF938();
  v21 = sub_1B77FF8B8();
  (*(v13 + 8))(v15, v12);
  [v16 setLastRequestDate_];

  sub_1B720A388(a5, v19);
  return v16;
}

id ManagedInstitutionAsset.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInstitutionAsset.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInstitutionAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t static ManagedInstitutionAsset.existingAsset(withInstitutionID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit23ManagedInstitutionAsset;
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

void static ManagedInstitutionAsset.update(managedInstitutionAsset:etag:data:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1B7800838();
  }

  else
  {
    v4 = 0;
  }

  [a1 setEtag_];

  v5 = sub_1B77FF598();
  [a1 setData_];
}

void static ManagedInstitutionAsset.deleteAsset(institutionID:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit23ManagedInstitutionAsset;
  v7 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1B78010E8();
  [v7 setPredicate_];

  [v7 setIncludesPropertyValues_];
  v10 = sub_1B7801498();
  if (v3)
  {
    goto LABEL_10;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  v13 = v10;
  v14 = sub_1B7801958();
  v10 = v13;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_7:
    v12 = v11;

    [a3 deleteObject_];

    v7 = v12;
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t BackgroundRefreshReminderWindow.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B762079C()
{
  result = qword_1EB999908;
  if (!qword_1EB999908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999908);
  }

  return result;
}

unint64_t sub_1B76207F4()
{
  result = qword_1EB999910;
  if (!qword_1EB999910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB999918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999910);
  }

  return result;
}

uint64_t sub_1B7620888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a1;
  v28 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FFB08();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B77FFC88();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, *MEMORY[0x1E6969830], v15);
  sub_1B77FFB18();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 56))(v11, 1, 1, v19);
  v23 = sub_1B77FFCF8();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_1B77FECD8();
  sub_1B77FFC08();
  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v5, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B720D780(v14);
    (*(v20 + 8))(v22, v19);
    return (*(v25 + 32))(v28, v5, v24);
  }

  return result;
}

uint64_t Calendar.cnsTransactionMatchingDateInterval(oldestBankConnectTransactionDate:latestBankConnectTransactionDate:)@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v85 = a1;
  v67 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for Duration();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  v18 = sub_1B77FFB08();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B77FFC88();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v78 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v63 - v26;
  v28 = sub_1B77FF988();
  v88 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v65 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v64 = &v63 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v66 = &v63 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v86 = &v63 - v35;
  v36 = *(v19 + 104);
  v74 = *MEMORY[0x1E6969830];
  v75 = v19 + 104;
  v73 = v36;
  v36(v21);
  sub_1B77FFB18();
  v37 = *(v19 + 8);
  v76 = v19 + 8;
  v77 = v18;
  v72 = v37;
  v37(v21, v18);
  v38 = v17;
  v89 = v23;
  v39 = *(v23 + 56);
  v87 = v22;
  v71 = v39;
  v39(v12, 1, 1, v22);
  v40 = sub_1B77FFCF8();
  v41 = *(v40 - 8);
  v69 = *(v41 + 56);
  v70 = v40;
  v68 = v41 + 56;
  v69(v9, 1, 1);
  v79 = v12;
  v81 = v9;
  sub_1B77FECD8();
  v42 = v84;
  v43 = v27;
  sub_1B77FFC08();
  v44 = v88;
  v45 = v42;
  v85 = *(v88 + 48);
  result = v85(v42, 1, v28);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B720D780(v38);
  v47 = v43;
  v48 = *(v89 + 8);
  v49 = v87;
  v89 += 8;
  v48(v47, v87);
  v84 = *(v44 + 32);
  (v84)(v86, v45, v28);
  v50 = v77;
  v73(v21, v74, v77);
  v51 = v78;
  sub_1B77FFB18();
  v72(v21, v50);
  v71(v79, 1, 1, v49);
  (v69)(v81, 1, 1, v70);
  v52 = v80;
  sub_1B77FECD8();
  v53 = v83;
  sub_1B77FFC08();
  result = v85(v53, 1, v28);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1B720D780(v52);
  v48(v51, v87);
  v54 = v66;
  (v84)(v66, v53, v28);
  sub_1B7282114();
  v55 = v86;
  v56 = sub_1B7800808();
  v57 = v67;
  if (v56)
  {
    v58 = v88;
    v59 = *(v88 + 16);
    v59(v64, v55, v28);
    v59(v65, v54, v28);
    sub_1B77FEA28();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v58 = v88;
  }

  v61 = *(v58 + 8);
  v61(v54, v28);
  v61(v55, v28);
  v62 = sub_1B77FEA78();
  return (*(*(v62 - 8) + 56))(v57, v60, 1, v62);
}

uint64_t static FinanceStore.shared.getter()
{
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B76215EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - v1;
  type metadata accessor for FinanceStore();
  v3 = swift_allocObject();
  *v2 = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999920);
  swift_allocObject();
  *(v3 + 24) = sub_1B7627760(v2, &qword_1EB990570, &unk_1B780F930);
  type metadata accessor for FinanceDataStore();
  swift_allocObject();
  result = sub_1B73A24AC(0);
  *(v3 + 16) = result;
  qword_1EDAFB7C8 = v3;
  return result;
}

uint64_t FinanceStore.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - v1;
  v3 = swift_allocObject();
  *v2 = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999920);
  swift_allocObject();
  *(v3 + 24) = sub_1B7627760(v2, &qword_1EB990570, &unk_1B780F930);
  type metadata accessor for FinanceDataStore();
  swift_allocObject();
  *(v3 + 16) = sub_1B73A24AC(0);
  return v3;
}

uint64_t FinanceStore.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  *(&v6 - v3) = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999920);
  swift_allocObject();
  *(v1 + 24) = sub_1B7627760(v4, &qword_1EB990570, &unk_1B780F930);
  type metadata accessor for FinanceDataStore();
  swift_allocObject();
  *(v1 + 16) = sub_1B73A24AC(0);
  return v1;
}

uint64_t FinanceStore.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = 0xD000000000000018;
  v3[4] = 0x80000001B7887830;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B76279C8;
  *(v4 + 24) = v3;
  v7[4] = sub_1B7205180;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B737BA64;
  v7[3] = &block_descriptor_17;
  v5 = _Block_copy(v7);
  swift_retain_n();

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {

    return v0;
  }

  return result;
}

uint64_t FinanceStore.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = 0xD000000000000018;
  v3[4] = 0x80000001B7887830;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B7636558;
  *(v4 + 24) = v3;
  v7[4] = sub_1B7636544;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B737BA64;
  v7[3] = &block_descriptor_14;
  v5 = _Block_copy(v7);
  swift_retain_n();

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {

    return swift_deallocClassInstance();
  }

  return result;
}

void FinanceStore.Reply.Failure.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v5 = swift_dynamicCast();
  if (v5)
  {

    v6 = 0;
    v7 = 0;
    v8 = v12;
  }

  else
  {
    v9 = sub_1B77FF308();
    v10 = [v9 domain];
    v8 = sub_1B7800868();
    v6 = v11;

    v7 = [v9 code];
  }

  *a2 = v8;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v5 ^ 1;
}

uint64_t FinanceStore.Reply.Failure.error.getter()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = v0[2];
    v3 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v4 = sub_1B7800838();
    v5 = [v3 initWithDomain:v4 code:v2 userInfo:0];

    return v5;
  }

  else
  {
    sub_1B7201CA4();
    result = swift_allocError();
    *v7 = v1;
  }

  return result;
}

BOOL static FinanceStore.Reply.Failure.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v5 & 1) == 0)
  {
    if (*(a2 + 24))
    {
LABEL_17:
      sub_1B7237880(v6, v7, v8, v9);
      sub_1B7237890(v2, v3, v4, v5);
      sub_1B7237890(v6, v7, v8, v9);
      return 0;
    }

    v14 = *a2;
    sub_1B7237890(*a1, v3, v4, 0);
    sub_1B7237890(v6, v7, v8, 0);
    if (v2 <= 4u)
    {
      if (v2 == 3)
      {
        return v14 == 3;
      }

      if (v2 == 4)
      {
        return v14 == 4;
      }
    }

    else
    {
      switch(v2)
      {
        case 5u:
          return v14 == 5;
        case 6u:
          return v14 == 6;
        case 7u:
          return v14 == 7;
      }
    }

    return (v14 - 3) >= 5 && v6 == v2;
  }

  if ((*(a2 + 24) & 1) == 0)
  {

    goto LABEL_17;
  }

  v10 = *a1;
  if (v2 == v6 && v3 == v7)
  {
    sub_1B7237880(v10, v3, v8, 1);
    sub_1B7237880(v2, v3, v4, 1);
    sub_1B7237890(v2, v3, v4, 1);
    sub_1B7237890(v2, v3, v8, 1);
    return v4 == v8;
  }

  v12 = sub_1B78020F8();
  sub_1B7237880(v6, v7, v8, 1);
  sub_1B7237880(v2, v3, v4, 1);
  sub_1B7237890(v2, v3, v4, 1);
  sub_1B7237890(v6, v7, v8, 1);
  result = 0;
  if (v12)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1B7622030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4565636E616E6966 && a2 == 0xEC000000726F7272;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727245736ELL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B7622100(char a1)
{
  if (a1)
  {
    return 0x726F727245736ELL;
  }

  else
  {
    return 0x4565636E616E6966;
  }
}

uint64_t sub_1B7622140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B7622210(char a1)
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](a1 & 1);
  return sub_1B7802368();
}

uint64_t sub_1B7622258(char a1)
{
  if (a1)
  {
    return 0x646F43726F727265;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1B76222D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7622030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7622308@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B76358C0();
  *a1 = result;
  return result;
}

uint64_t sub_1B762233C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B7622390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B76223E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7218B64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B762241C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B7622470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B76224E4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void))
{
  sub_1B78022F8();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_1B7802368();
}

uint64_t sub_1B7622554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7622140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7622588(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B76225DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FinanceStore.Reply.Failure.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FinanceStore.Reply.Failure.NsErrorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v24 = v3;
  v4 = sub_1B7802018();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v19 - v5;
  type metadata accessor for FinanceStore.Reply.Failure.FinanceErrorCodingKeys();
  v19[2] = swift_getWitnessTable();
  v6 = sub_1B7802018();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = v19 - v7;
  type metadata accessor for FinanceStore.Reply.Failure.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_1B7802018();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v11 = v1[1];
  v28 = *v1;
  v19[0] = v1[2];
  v19[1] = v11;
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023F8();
  if (v12)
  {
    v35 = 1;
    v13 = v25;
    sub_1B7801ED8();
    v34 = 0;
    v14 = v27;
    v15 = v30;
    sub_1B7801F78();
    if (!v15)
    {
      v33 = 1;
      sub_1B7801FA8();
    }

    (*(v26 + 8))(v13, v14);
  }

  else
  {
    v32 = 0;
    v16 = v20;
    sub_1B7801ED8();
    v31 = v28;
    sub_1B7627AF0();
    v17 = v22;
    sub_1B7801FC8();
    (*(v21 + 8))(v16, v17);
  }

  return (*(v29 + 8))(v10, v8);
}

uint64_t FinanceStore.Reply.Failure.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for FinanceStore.Reply.Failure.NsErrorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v50 = v5;
  v6 = sub_1B7801EC8();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v41 - v8;
  v9 = type metadata accessor for FinanceStore.Reply.Failure.FinanceErrorCodingKeys();
  v48 = swift_getWitnessTable();
  v45 = sub_1B7801EC8();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v41 - v10;
  v54 = a2;
  type metadata accessor for FinanceStore.Reply.Failure.CodingKeys();
  swift_getWitnessTable();
  v53 = sub_1B7801EC8();
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v12 = *(a1 + 24);
  v61 = a1;
  v13 = a1;
  v15 = &v41 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  v16 = v56;
  sub_1B78023C8();
  if (!v16)
  {
    v42 = v9;
    v43 = v11;
    v17 = v53;
    v56 = v15;
    *&v57 = sub_1B7801E98();
    sub_1B7800CB8();
    swift_getWitnessTable();
    *&v59 = sub_1B7801898();
    *(&v59 + 1) = v18;
    *&v60 = v19;
    *(&v60 + 1) = v20;
    sub_1B7801888();
    swift_getWitnessTable();
    sub_1B7801068();
    v21 = v57;
    if (v57 == 2 || (v41 = v59, v57 = v59, v58 = v60, (sub_1B7801078() & 1) == 0))
    {
      v31 = sub_1B7801B18();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v33 = type metadata accessor for FinanceStore.Reply.Failure();
      v34 = v56;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v55 + 8))(v34, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        LOBYTE(v57) = 1;
        v22 = v51;
        sub_1B7801D38();
        v23 = v52;
        v24 = v17;
        LOBYTE(v57) = 0;
        v25 = v46;
        v26 = v22;
        v27 = sub_1B7801DF8();
        v28 = v55;
        v30 = v29;
        v54 = v27;
        LOBYTE(v57) = 1;
        v39 = sub_1B7801E28();
        (*(v47 + 8))(v26, v25);
        (*(v28 + 8))(v56, v24);
        swift_unknownObjectRelease();
        v40 = v54;
      }

      else
      {
        LOBYTE(v57) = 0;
        v35 = v43;
        sub_1B7801D38();
        v23 = v52;
        sub_1B7627B5C();
        v37 = v45;
        sub_1B7801E48();
        v38 = v55;
        (*(v44 + 8))(v35, v37);
        (*(v38 + 8))(v56, v17);
        swift_unknownObjectRelease();
        v30 = 0;
        v39 = 0;
        v40 = v57;
      }

      *v23 = v40;
      *(v23 + 8) = v30;
      *(v23 + 16) = v39;
      *(v23 + 24) = v21 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_1B762312C(unsigned __int8 a1)
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](a1);
  return sub_1B7802368();
}

uint64_t sub_1B7623174(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B78020F8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B762325C()
{
  sub_1B78022F8();
  sub_1B7623104(v2, *v0);
  return sub_1B7802368();
}

uint64_t sub_1B76232A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B76358C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B76232DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B7623330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B7623384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B76233D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B762342C@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1B7218B64();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1B7623478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B76234CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B7623520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B7623574(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B76235CC(uint64_t a1)
{
  v2 = sub_1B762E724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623608(uint64_t a1)
{
  v2 = sub_1B762E724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623644(uint64_t a1)
{
  v2 = sub_1B762E474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623680(uint64_t a1)
{
  v2 = sub_1B762E474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76236BC(uint64_t a1)
{
  v2 = sub_1B762DC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76236F8(uint64_t a1)
{
  v2 = sub_1B762DC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623734(uint64_t a1)
{
  v2 = sub_1B762E174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623770(uint64_t a1)
{
  v2 = sub_1B762E174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76237AC(uint64_t a1)
{
  v2 = sub_1B762DD84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76237E8(uint64_t a1)
{
  v2 = sub_1B762DD84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623824(uint64_t a1)
{
  v2 = sub_1B762DFD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623860(uint64_t a1)
{
  v2 = sub_1B762DFD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76238A8(uint64_t a1)
{
  v2 = sub_1B71A5F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76238E4(uint64_t a1)
{
  v2 = sub_1B71A5F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623920()
{
  if (*v0)
  {
    return 0x4464657461647075;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7623958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEB00000000657461)
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

uint64_t sub_1B7623A30(uint64_t a1)
{
  v2 = sub_1B762EB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623A6C(uint64_t a1)
{
  v2 = sub_1B762EB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623AA8(uint64_t a1)
{
  v2 = sub_1B762E5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623AE4(uint64_t a1)
{
  v2 = sub_1B762E5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623B20(uint64_t a1)
{
  v2 = sub_1B762D3F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623B5C(uint64_t a1)
{
  v2 = sub_1B762D3F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623B98(uint64_t a1)
{
  v2 = sub_1B762D2F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623BD4(uint64_t a1)
{
  v2 = sub_1B762D2F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623C10(uint64_t a1)
{
  v2 = sub_1B762D1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623C4C(uint64_t a1)
{
  v2 = sub_1B762D1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_1B7623D28(uint64_t a1)
{
  v2 = sub_1B762D8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623D64(uint64_t a1)
{
  v2 = sub_1B762D8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001B78886A0 == a2)
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

uint64_t sub_1B7623E50(uint64_t a1)
{
  v2 = sub_1B762DCDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623E8C(uint64_t a1)
{
  v2 = sub_1B762DCDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623EC8()
{
  if (*v0)
  {
    return 0x72654D6B636F6C62;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1B7623F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001B7877900 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72654D6B636F6C62 && a2 == 0xED0000746E616863)
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

uint64_t sub_1B7624004(uint64_t a1)
{
  v2 = sub_1B762E270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624040(uint64_t a1)
{
  v2 = sub_1B762E270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000)
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

uint64_t sub_1B762411C(uint64_t a1)
{
  v2 = sub_1B762E618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624158(uint64_t a1)
{
  v2 = sub_1B762E618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624194(uint64_t a1)
{
  v2 = sub_1B762D448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76241D0(uint64_t a1)
{
  v2 = sub_1B762D448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762420C(uint64_t a1)
{
  v2 = sub_1B762D34C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624248(uint64_t a1)
{
  v2 = sub_1B762D34C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624284(uint64_t a1)
{
  v2 = sub_1B762EB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76242C0(uint64_t a1)
{
  v2 = sub_1B762EB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76242FC()
{
  if (*v0)
  {
    return 0x68746E6F6DLL;
  }

  else
  {
    return 1918985593;
  }
}

uint64_t sub_1B762432C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000)
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

uint64_t sub_1B7624404(uint64_t a1)
{
  v2 = sub_1B762EAC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624440(uint64_t a1)
{
  v2 = sub_1B762EAC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762447C(uint64_t a1)
{
  v2 = sub_1B762D250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76244B8(uint64_t a1)
{
  v2 = sub_1B762D250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76244F4(uint64_t a1)
{
  v2 = sub_1B762D5EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624530(uint64_t a1)
{
  v2 = sub_1B762D5EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762456C(uint64_t a1)
{
  v2 = sub_1B762D4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76245A8(uint64_t a1)
{
  v2 = sub_1B762D4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76245E4(uint64_t a1)
{
  v2 = sub_1B762D640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624620(uint64_t a1)
{
  v2 = sub_1B762D640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762465C(uint64_t a1)
{
  v2 = sub_1B762D544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624698(uint64_t a1)
{
  v2 = sub_1B762D544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76246D4(uint64_t a1)
{
  v2 = sub_1B762D694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624710(uint64_t a1)
{
  v2 = sub_1B762D694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76358D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7624788(uint64_t a1)
{
  v2 = sub_1B762D598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76247C4(uint64_t a1)
{
  v2 = sub_1B762D598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624800()
{
  if (*v0)
  {
    return 0x4464657461647075;
  }

  else
  {
    return 0x6464416C69616D65;
  }
}

uint64_t sub_1B762484C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEB00000000657461)
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

uint64_t sub_1B7624930(uint64_t a1)
{
  v2 = sub_1B762DDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762496C(uint64_t a1)
{
  v2 = sub_1B762DDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76249A8(uint64_t a1)
{
  v2 = sub_1B762E078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76249E4(uint64_t a1)
{
  v2 = sub_1B762E078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624A20(uint64_t a1)
{
  v2 = sub_1B762E0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624A5C(uint64_t a1)
{
  v2 = sub_1B762E0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
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

uint64_t sub_1B7624B44(uint64_t a1)
{
  v2 = sub_1B762DE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624B80(uint64_t a1)
{
  v2 = sub_1B762DE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
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

uint64_t sub_1B7624C54(uint64_t a1)
{
  v2 = sub_1B762E024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624C90(uint64_t a1)
{
  v2 = sub_1B762E024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7624CCC()
{
  v1 = 0x5479726F74736968;
  v2 = 0x49746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x614E797469746E65;
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

uint64_t sub_1B7624D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76359D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7624D84(uint64_t a1)
{
  v2 = sub_1B762DAE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624DC0(uint64_t a1)
{
  v2 = sub_1B762DAE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624DFC()
{
  v1 = 0x614E797469746E65;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7624E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7635B50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7624E7C(uint64_t a1)
{
  v2 = sub_1B762DBE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624EB8(uint64_t a1)
{
  v2 = sub_1B762DBE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572)
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

uint64_t sub_1B7624FA0(uint64_t a1)
{
  v2 = sub_1B762E2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624FDC(uint64_t a1)
{
  v2 = sub_1B762E2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762503C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
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

uint64_t sub_1B76250CC(uint64_t a1)
{
  v2 = sub_1B762D6E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625108(uint64_t a1)
{
  v2 = sub_1B762D6E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625144(uint64_t a1)
{
  v2 = sub_1B762E7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625180(uint64_t a1)
{
  v2 = sub_1B762E7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76251BC(uint64_t a1)
{
  v2 = sub_1B762E778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76251F8(uint64_t a1)
{
  v2 = sub_1B762E778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625234(uint64_t a1)
{
  v2 = sub_1B762DD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625270(uint64_t a1)
{
  v2 = sub_1B762DD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76252AC(uint64_t a1)
{
  v2 = sub_1B762D49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76252E8(uint64_t a1)
{
  v2 = sub_1B762D49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625324(uint64_t a1)
{
  v2 = sub_1B762D3A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625360(uint64_t a1)
{
  v2 = sub_1B762D3A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762539C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B76253D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78886E0 == a2)
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

uint64_t sub_1B76254AC(uint64_t a1)
{
  v2 = sub_1B762E318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76254E8(uint64_t a1)
{
  v2 = sub_1B762E318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625524()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x724164656E676973;
  }
}

uint64_t sub_1B762556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724164656E676973 && a2 == 0xED00006576696863;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_1B7625650(uint64_t a1)
{
  v2 = sub_1B762EA18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762568C(uint64_t a1)
{
  v2 = sub_1B762EA18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76256C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
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

uint64_t sub_1B7625794(uint64_t a1)
{
  v2 = sub_1B762D2A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76257D0(uint64_t a1)
{
  v2 = sub_1B762D2A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762582C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69)
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

uint64_t sub_1B76258B8(uint64_t a1)
{
  v2 = sub_1B762D9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76258F4(uint64_t a1)
{
  v2 = sub_1B762D9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625930(uint64_t a1)
{
  v2 = sub_1B762E51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762596C(uint64_t a1)
{
  v2 = sub_1B762E51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76259A8(uint64_t a1)
{
  v2 = sub_1B762EBBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76259E4(uint64_t a1)
{
  v2 = sub_1B762EBBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625A20(uint64_t a1)
{
  v2 = sub_1B762ED60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625A5C(uint64_t a1)
{
  v2 = sub_1B762ED60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625A98(uint64_t a1)
{
  v2 = sub_1B762E420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625AD4(uint64_t a1)
{
  v2 = sub_1B762E420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625B10(uint64_t a1)
{
  v2 = sub_1B762EC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625B4C(uint64_t a1)
{
  v2 = sub_1B762EC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625B88(uint64_t a1)
{
  v2 = sub_1B762ECB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625BC4(uint64_t a1)
{
  v2 = sub_1B762ECB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625C00(uint64_t a1)
{
  v2 = sub_1B762ED0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625C3C(uint64_t a1)
{
  v2 = sub_1B762ED0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E6957656D6974 && a2 == 0xEA0000000000776FLL)
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

uint64_t sub_1B7625D08(uint64_t a1)
{
  v2 = sub_1B71A608C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625D44(uint64_t a1)
{
  v2 = sub_1B71A608C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x80000001B7875770 == a2)
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

uint64_t sub_1B7625E30(uint64_t a1)
{
  v2 = sub_1B762D838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625E6C(uint64_t a1)
{
  v2 = sub_1B762D838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625EA8(uint64_t a1)
{
  v2 = sub_1B762E820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625EE4(uint64_t a1)
{
  v2 = sub_1B762E820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7625F20()
{
  v1 = 0x72756F5361746164;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_1B7625F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7635C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7625FAC(uint64_t a1)
{
  v2 = sub_1B762DF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625FE8(uint64_t a1)
{
  v2 = sub_1B762DF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626024()
{
  if (*v0)
  {
    return 0x72756F5361746164;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1B7626068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001B78886C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
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

uint64_t sub_1B7626158(uint64_t a1)
{
  v2 = sub_1B762DF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626194(uint64_t a1)
{
  v2 = sub_1B762DF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76261D0()
{
  if (*v0)
  {
    return 0x72756F5361746164;
  }

  else
  {
    return 0x496567617373656DLL;
  }
}

uint64_t sub_1B7626210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x496567617373656DLL && a2 == 0xEA00000000007344 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
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

uint64_t sub_1B76262F4(uint64_t a1)
{
  v2 = sub_1B762DED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626330(uint64_t a1)
{
  v2 = sub_1B762DED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762636C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x707954746E657665;
    if (v1 != 1)
    {
      v5 = 0x7461447472617473;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x74696D696CLL;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0x7265646E6573;
    }

    v3 = 0xD000000000000012;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
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

uint64_t sub_1B7626458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7635DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7626480(uint64_t a1)
{
  v2 = sub_1B762E66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76264BC(uint64_t a1)
{
  v2 = sub_1B762E66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76264F8(uint64_t a1)
{
  v2 = sub_1B762E9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626534(uint64_t a1)
{
  v2 = sub_1B762E9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626570(uint64_t a1)
{
  v2 = sub_1B762EDB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76265AC(uint64_t a1)
{
  v2 = sub_1B762EDB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76265E8()
{
  v1 = 0x49746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1B762664C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7635FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7626674(uint64_t a1)
{
  v2 = sub_1B762D88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76266B0(uint64_t a1)
{
  v2 = sub_1B762D88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76266EC(uint64_t a1)
{
  v2 = sub_1B762DC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626728(uint64_t a1)
{
  v2 = sub_1B762DC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626764(uint64_t a1)
{
  v2 = sub_1B762DE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76267A0(uint64_t a1)
{
  v2 = sub_1B762DE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x724164656E676973 && a2 == 0xED00006576696863)
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

uint64_t sub_1B7626890(uint64_t a1)
{
  v2 = sub_1B762E970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76268CC(uint64_t a1)
{
  v2 = sub_1B762E970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626908(uint64_t a1)
{
  v2 = sub_1B762E120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626944(uint64_t a1)
{
  v2 = sub_1B762E120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626980(uint64_t a1)
{
  v2 = sub_1B762E1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76269BC(uint64_t a1)
{
  v2 = sub_1B762E1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76269F8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65756C615677656ELL;
  }
}

uint64_t sub_1B7626A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C615677656ELL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7873A10 == a2)
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

uint64_t sub_1B7626B1C(uint64_t a1)
{
  v2 = sub_1B762E4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626B58(uint64_t a1)
{
  v2 = sub_1B762E4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626B94(uint64_t a1)
{
  v2 = sub_1B762E21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626BD0(uint64_t a1)
{
  v2 = sub_1B762E21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626C0C()
{
  v1 = 0x65756C615677656ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7626C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7636240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7626C88(uint64_t a1)
{
  v2 = sub_1B762E91C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626CC4(uint64_t a1)
{
  v2 = sub_1B762E91C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626D00()
{
  if (*v0)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7626D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
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

uint64_t sub_1B7626E10(uint64_t a1)
{
  v2 = sub_1B762E8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626E4C(uint64_t a1)
{
  v2 = sub_1B762E8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626E88()
{
  if (*v0)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7626EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEE007344496E6F69)
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

uint64_t sub_1B7626FA0(uint64_t a1)
{
  v2 = sub_1B762D988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626FDC(uint64_t a1)
{
  v2 = sub_1B762D988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7627018()
{
  if (*v0)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7627054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
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

uint64_t sub_1B7627130(uint64_t a1)
{
  v2 = sub_1B762D7E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762716C(uint64_t a1)
{
  v2 = sub_1B762D7E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76271A8()
{
  if (*v0)
  {
    return 0x49746E756F636361;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B76271DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
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

uint64_t sub_1B76272B8(uint64_t a1)
{
  v2 = sub_1B762D790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76272F4(uint64_t a1)
{
  v2 = sub_1B762D790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7627330()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7627364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7888600 == a2)
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

uint64_t sub_1B7627440(uint64_t a1)
{
  v2 = sub_1B762D73C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762747C(uint64_t a1)
{
  v2 = sub_1B762D73C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76274B8(uint64_t a1)
{
  v2 = sub_1B762E570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76274F4(uint64_t a1)
{
  v2 = sub_1B762E570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7627530()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1B7627598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7636358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76275C0(uint64_t a1)
{
  v2 = sub_1B762D934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76275FC(uint64_t a1)
{
  v2 = sub_1B762D934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7627648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7827310 && a2 == 0xE300000000000000)
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

uint64_t sub_1B76276D0(uint64_t a1)
{
  v2 = sub_1B762E874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762770C(uint64_t a1)
{
  v2 = sub_1B762E874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B7627760(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v12 = a1;
  v11 = sub_1B7801318();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7801308();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1B78003C8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1B763647C();
  sub_1B78003B8();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1B71A6B1C(&qword_1EDAFC538, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930E0);
  sub_1B76364C8();
  sub_1B78018B8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v11);
  v3[2] = sub_1B7801358();
  v3[3] = 0;
  sub_1B722376C(v12, v3 + *(*v3 + 120), v13);
  return v3;
}

uint64_t sub_1B76279EC(uint64_t a1)
{
  if (*(a1 + 24))
  {

    sub_1B7800118();
  }

  *(a1 + 24) = 0;
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1B7627AF0()
{
  result = qword_1EB999928;
  if (!qword_1EB999928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999928);
  }

  return result;
}

unint64_t sub_1B7627B5C()
{
  result = qword_1EB999930;
  if (!qword_1EB999930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999930);
  }

  return result;
}

uint64_t _s10FinanceKit0A5StoreC7MessageO2eeoiySbAE_AEtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v828 = a2;
  v827 = a1;
  v2 = type metadata accessor for PredictedTransaction(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v757 = &v719 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FinHealthTransactionInsight.Income(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v756 = &v719 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FinHealthTransactionInsight.EntityGroup(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v755 = &v719 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v728 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB9943A0);
  MEMORY[0x1EEE9AC00](v728);
  v729 = &v719 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v723 = &v719 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v761 = &v719 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v762 = &v719 - v14;
  v752 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A450);
  MEMORY[0x1EEE9AC00](v752);
  v754 = &v719 - v15;
  v16 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v753 = &v719 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B77FFAF8();
  v763 = *(v18 - 8);
  v764 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v751 = &v719 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v824 = sub_1B77FFA18();
  v825 = *(v824 - 8);
  v20 = MEMORY[0x1EEE9AC00](v824);
  v750 = &v719 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v747 = &v719 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v746 = &v719 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v743 = &v719 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v748 = &v719 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v749 = &v719 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v744 = &v719 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v745 = &v719 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v741 = &v719 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v742 = &v719 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v720 = &v719 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v738 = &v719 - v42;
  v730 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v730);
  v736 = &v719 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v822 = sub_1B77FF988();
  v823 = *(v822 - 8);
  v44 = MEMORY[0x1EEE9AC00](v822);
  v740 = &v719 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v818 = &v719 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v739 = &v719 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v817 = &v719 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v737 = &v719 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v816 = &v719 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v734 = &v719 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v735 = &v719 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v733 = &v719 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v725 = &v719 - v62;
  v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v63 = MEMORY[0x1EEE9AC00](v732);
  v724 = &v719 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v727 = &v719 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v731 = &v719 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v69 = MEMORY[0x1EEE9AC00](v68 - 8);
  v721 = &v719 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v758 = &v719 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v820 = &v719 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v722 = &v719 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v759 = &v719 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v819 = &v719 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v726 = &v719 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v760 = &v719 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v821 = &v719 - v85;
  v826 = type metadata accessor for FinanceStore.Message();
  v86 = MEMORY[0x1EEE9AC00](v826);
  v814 = &v719 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1EEE9AC00](v86);
  v815 = &v719 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v812 = &v719 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v813 = &v719 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v810 = &v719 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v811 = (&v719 - v97);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v809 = &v719 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v807 = &v719 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v806 = &v719 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v804 = (&v719 - v105);
  v106 = MEMORY[0x1EEE9AC00](v104);
  v802 = &v719 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v808 = &v719 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v805 = &v719 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v803 = &v719 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v801 = &v719 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v800 = (&v719 - v117);
  v118 = MEMORY[0x1EEE9AC00](v116);
  v798 = &v719 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v796 = (&v719 - v121);
  v122 = MEMORY[0x1EEE9AC00](v120);
  v795 = &v719 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v794 = &v719 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v793 = (&v719 - v127);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v799 = &v719 - v129;
  v130 = MEMORY[0x1EEE9AC00](v128);
  v791 = &v719 - v131;
  v132 = MEMORY[0x1EEE9AC00](v130);
  v790 = (&v719 - v133);
  v134 = MEMORY[0x1EEE9AC00](v132);
  v797 = &v719 - v135;
  v136 = MEMORY[0x1EEE9AC00](v134);
  v792 = (&v719 - v137);
  v138 = MEMORY[0x1EEE9AC00](v136);
  v788 = (&v719 - v139);
  v140 = MEMORY[0x1EEE9AC00](v138);
  v787 = &v719 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v786 = &v719 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v785 = &v719 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v789 = &v719 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v782 = (&v719 - v149);
  v150 = MEMORY[0x1EEE9AC00](v148);
  v781 = (&v719 - v151);
  v152 = MEMORY[0x1EEE9AC00](v150);
  v779 = &v719 - v153;
  v154 = MEMORY[0x1EEE9AC00](v152);
  v784 = &v719 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v783 = &v719 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v778 = &v719 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v775 = (&v719 - v161);
  v162 = MEMORY[0x1EEE9AC00](v160);
  v774 = (&v719 - v163);
  v164 = MEMORY[0x1EEE9AC00](v162);
  v772 = (&v719 - v165);
  v166 = MEMORY[0x1EEE9AC00](v164);
  v776 = &v719 - v167;
  v168 = MEMORY[0x1EEE9AC00](v166);
  v771 = (&v719 - v169);
  v170 = MEMORY[0x1EEE9AC00](v168);
  v769 = (&v719 - v171);
  v172 = MEMORY[0x1EEE9AC00](v170);
  v773 = &v719 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v780 = &v719 - v175;
  v176 = MEMORY[0x1EEE9AC00](v174);
  v777 = &v719 - v177;
  v178 = MEMORY[0x1EEE9AC00](v176);
  v770 = &v719 - v179;
  v180 = MEMORY[0x1EEE9AC00](v178);
  v766 = &v719 - v181;
  v182 = MEMORY[0x1EEE9AC00](v180);
  v767 = &v719 - v183;
  v184 = MEMORY[0x1EEE9AC00](v182);
  v186 = (&v719 - v185);
  v187 = MEMORY[0x1EEE9AC00](v184);
  v765 = (&v719 - v188);
  v189 = MEMORY[0x1EEE9AC00](v187);
  v768 = &v719 - v190;
  v191 = MEMORY[0x1EEE9AC00](v189);
  v193 = &v719 - v192;
  v194 = MEMORY[0x1EEE9AC00](v191);
  v196 = (&v719 - v195);
  v197 = MEMORY[0x1EEE9AC00](v194);
  v199 = (&v719 - v198);
  v200 = MEMORY[0x1EEE9AC00](v197);
  v202 = (&v719 - v201);
  MEMORY[0x1EEE9AC00](v200);
  v204 = &v719 - v203;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A458);
  v206 = MEMORY[0x1EEE9AC00](v205 - 8);
  v208 = &v719 - v207;
  v209 = (&v719 + *(v206 + 56) - v207);
  sub_1B71A5FBC(v827, &v719 - v207, type metadata accessor for FinanceStore.Message);
  v210 = v828;
  v828 = v209;
  sub_1B71A5FBC(v210, v209, type metadata accessor for FinanceStore.Message);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B71A5FBC(v208, v202, type metadata accessor for FinanceStore.Message);
      v447 = v202[1];
      v448 = v202[3];
      v449 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C08) + 48);
      v450 = v828;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v628 = v202 + v449;
        goto LABEL_256;
      }

      v719 = v208;
      v827 = v202[2];
      v451 = *v202;
      v452 = v450->i64[1];
      v826 = v450->i64[0];
      v824 = v452;
      v453 = v450[1].i64[1];
      v825 = v450[1].i64[0];
      sub_1B722376C(v202 + v449, v821, &qword_1EB98EBD0);
      v454 = v450->i64 + v449;
      v455 = v760;
      sub_1B722376C(v454, v760, &qword_1EB98EBD0);
      *&v838 = v451;
      *(&v838 + 1) = v447;
      *&v839 = v827;
      *(&v839 + 1) = v448;
      v833.i64[0] = v826;
      v833.i64[1] = v824;
      v834.i64[0] = v825;
      v834.i64[1] = v453;
      v456 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v838, &v833);

      if ((v456 & 1) == 0)
      {
        v632 = &qword_1EB98EBD0;
        sub_1B7205418(v455, &qword_1EB98EBD0);
        v633 = v821;
        goto LABEL_449;
      }

      v457 = v731;
      v458 = *(v732 + 48);
      sub_1B7205588(v821, v731, &qword_1EB98EBD0);
      sub_1B7205588(v455, v457 + v458, &qword_1EB98EBD0);
      v459 = v823;
      v460 = *(v823 + 6);
      v461 = v822;
      if (v460(v457, 1, v822) == 1)
      {
        sub_1B7205418(v455, &qword_1EB98EBD0);
        v462 = v821;
        goto LABEL_351;
      }

      v669 = v726;
      sub_1B7205588(v457, v726, &qword_1EB98EBD0);
      if (v460(v457 + v458, 1, v461) == 1)
      {
        sub_1B7205418(v760, &qword_1EB98EBD0);
        sub_1B7205418(v821, &qword_1EB98EBD0);
        (*(v459 + 1))(v669, v461);
        goto LABEL_381;
      }

      v692 = v725;
      (*(v459 + 4))(v725, v457 + v458, v461);
      sub_1B71A6B1C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v693 = v669;
      v694 = sub_1B7800828();
      v695 = *(v459 + 1);
      v695(v692, v461);
      sub_1B7205418(v760, &qword_1EB98EBD0);
      sub_1B7205418(v821, &qword_1EB98EBD0);
      v695(v693, v461);
      v696 = v457;
      goto LABEL_401;
    case 2u:
      sub_1B71A5FBC(v208, v199, type metadata accessor for FinanceStore.Message);
      v422 = v199[1];
      v423 = v199[3];
      v424 = v828;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v425 = v199[2];
        v426 = *v199;
        v427 = *v424;
        v428 = v424[1];
        v429 = v424[2];
        v430 = v424[3];
        *&v838 = v426;
        *(&v838 + 1) = v422;
        *&v839 = v425;
        *(&v839 + 1) = v423;
        v833.i64[0] = v427;
        v833.i64[1] = v428;
        v834.i64[0] = v429;
        v834.i64[1] = v430;
        v238 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v838, &v833);

        goto LABEL_150;
      }

      goto LABEL_247;
    case 3u:
      sub_1B71A5FBC(v208, v196, type metadata accessor for FinanceStore.Message);
      v441 = v196[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_264;
      }

      if (*v196 != v828->u16[0])
      {
        goto LABEL_314;
      }

      v211 = v441 == v828->u16[1];
      goto LABEL_220;
    case 4u:
      v719 = v208;
      sub_1B71A5FBC(v208, v193, type metadata accessor for FinanceStore.Message);
      v359 = *v193;
      v360 = *(v193 + 1);
      v361 = v193[16];
      v362 = v193[17];
      v363 = v193[18];
      v364 = v193[19];
      v365 = v193[20];
      v366 = v828;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1B720A388(v359, v360);
        goto LABEL_243;
      }

      LODWORD(v827) = v365;
      v367 = v366->i64[0];
      v368 = v366->u64[1];
      LODWORD(v826) = v366[1].u8[0];
      LODWORD(v825) = v366[1].u8[1];
      LODWORD(v824) = v366[1].u8[2];
      LODWORD(v823) = v366[1].u8[3];
      LODWORD(v828) = v366[1].u8[4];
      v369 = sub_1B73FC434(v359, v360, v367, v368);
      sub_1B720A388(v367, v368);
      sub_1B720A388(v359, v360);
      if ((v369 & 1) == 0)
      {
        goto LABEL_450;
      }

      LOBYTE(v838) = v361;
      BYTE1(v838) = v362;
      BYTE2(v838) = v363;
      BYTE3(v838) = v364;
      BYTE4(v838) = v827;
      v833.i8[0] = v826;
      v833.i8[1] = v825;
      v833.i8[2] = v824;
      v833.i8[3] = v823;
      v833.i8[4] = v828;
      updated = _s10FinanceKit26OrderInsertOrUpdateOptionsV2eeoiySbAC_ACtFZ_0(&v838, &v833);
      goto LABEL_320;
    case 5u:
      v497 = v768;
      sub_1B71A5FBC(v208, v768, type metadata accessor for FinanceStore.Message);
      v498 = v828;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v629 = type metadata accessor for TimeWindow;
        v630 = v497;
        goto LABEL_263;
      }

      v499 = v736;
      sub_1B71A6024(v498, v736, type metadata accessor for TimeWindow);
      if (sub_1B77FF918() & 1) != 0 && (MEMORY[0x1B8CA2F10](v497 + *(v730 + 20), v499 + *(v730 + 20)))
      {
        sub_1B71A7A34(v499, type metadata accessor for TimeWindow);
        sub_1B71A7A34(v497, type metadata accessor for TimeWindow);
        goto LABEL_316;
      }

      sub_1B71A7A34(v499, type metadata accessor for TimeWindow);
      sub_1B71A7A34(v497, type metadata accessor for TimeWindow);
      goto LABEL_314;
    case 6u:
      v514 = v765;
      sub_1B71A5FBC(v208, v765, type metadata accessor for FinanceStore.Message);
      v515 = v514[1];
      v516 = v514[3];
      v517 = v828;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_252;
      }

      v518 = v514[2];
      v519 = *v517;
      v520 = v517[1];
      v521 = v517[2];
      v522 = v517[3];
      *&v838 = *v514;
      *(&v838 + 1) = v515;
      *&v839 = v518;
      *(&v839 + 1) = v516;
      v833.i64[0] = v519;
      v833.i64[1] = v520;
      v834.i64[0] = v521;
      v834.i64[1] = v522;
      v488 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v838, &v833);
      goto LABEL_144;
    case 7u:
      sub_1B71A5FBC(v208, v186, type metadata accessor for FinanceStore.Message);
      v442 = *v186;
      v443 = v186[1];
      v444 = v828;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v445 = *v444;
        v446 = v444[1];
        v238 = sub_1B73FC434(v442, v443, *v444, v446);
        sub_1B720A388(v445, v446);
        sub_1B720A388(v442, v443);
        goto LABEL_334;
      }

      sub_1B720A388(v442, v443);
      goto LABEL_264;
    case 8u:
      v536 = v767;
      sub_1B71A5FBC(v208, v767, type metadata accessor for FinanceStore.Message);
      v537 = *(v536 + 8);
      v538 = *(v536 + 24);
      v539 = *(v536 + 32);
      v540 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9922B8) + 64);
      v541 = v828;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v628 = v536 + v540;
LABEL_256:
        sub_1B7205418(v628, &qword_1EB98EBD0);

LABEL_247:

        goto LABEL_264;
      }

      LODWORD(v824) = v539;
      v719 = v208;
      v827 = *(v536 + 16);
      v542 = *v536;
      v826 = v541->i64[0];
      v543 = v536;
      v544 = v541->i64[1];
      v825 = v541[1].i64[0];
      v545 = v541[1].i64[1];
      LODWORD(v821) = v541[2].u8[0];
      sub_1B722376C(v543 + v540, v819, &qword_1EB98EBD0);
      v546 = v541->i64 + v540;
      v547 = v759;
      sub_1B722376C(v546, v759, &qword_1EB98EBD0);
      *&v838 = v542;
      *(&v838 + 1) = v537;
      *&v839 = v827;
      *(&v839 + 1) = v538;
      v833.i64[0] = v826;
      v833.i64[1] = v544;
      v834.i64[0] = v825;
      v834.i64[1] = v545;
      v548 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v838, &v833);

      if ((v548 & 1) == 0)
      {
        v632 = &qword_1EB98EBD0;
        sub_1B7205418(v547, &qword_1EB98EBD0);
        v633 = v819;
        goto LABEL_449;
      }

      v476 = v719;
      if (v824 != v821)
      {
        v549 = &qword_1EB98EBD0;
        sub_1B7205418(v547, &qword_1EB98EBD0);
        v550 = v819;
        goto LABEL_390;
      }

      v458 = *(v732 + 48);
      v672 = v819;
      v457 = v727;
      sub_1B7205588(v819, v727, &qword_1EB98EBD0);
      sub_1B7205588(v547, v457 + v458, &qword_1EB98EBD0);
      v673 = v823;
      v460 = *(v823 + 6);
      v461 = v822;
      if (v460(v457, 1, v822) == 1)
      {
        sub_1B7205418(v547, &qword_1EB98EBD0);
        v462 = v672;
LABEL_351:
        sub_1B7205418(v462, &qword_1EB98EBD0);
        if (v460(v457 + v458, 1, v461) == 1)
        {
          sub_1B7205418(v457, &qword_1EB98EBD0);
          v637 = v719;
          goto LABEL_317;
        }

        goto LABEL_381;
      }

      v697 = v722;
      sub_1B7205588(v457, v722, &qword_1EB98EBD0);
      if (v460(v457 + v458, 1, v461) == 1)
      {
        sub_1B7205418(v759, &qword_1EB98EBD0);
        sub_1B7205418(v819, &qword_1EB98EBD0);
        (*(v673 + 1))(v697, v461);
LABEL_381:
        sub_1B7205418(v457, &qword_1EB98FCE0);
        v637 = v719;
        goto LABEL_382;
      }

      v707 = v457 + v458;
      v708 = v725;
      (*(v673 + 4))(v725, v707, v461);
      sub_1B71A6B1C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v694 = sub_1B7800828();
      v709 = *(v673 + 1);
      v709(v708, v461);
      sub_1B7205418(v759, &qword_1EB98EBD0);
      sub_1B7205418(v819, &qword_1EB98EBD0);
      v709(v697, v461);
      v696 = v457;
LABEL_401:
      sub_1B7205418(v696, &qword_1EB98EBD0);
      v637 = v719;
      if ((v694 & 1) == 0)
      {
LABEL_382:
        sub_1B71A7A34(v637, type metadata accessor for FinanceStore.Message);
        goto LABEL_265;
      }

      goto LABEL_317;
    case 9u:
      v314 = v208;
      v406 = v766;
      sub_1B71A5FBC(v208, v766, type metadata accessor for FinanceStore.Message);
      v407 = *(v406 + 8);
      v408 = *(v406 + 24);
      v374 = *(v406 + 32);
      v409 = v828;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_245;
      }

      v410 = *(v406 + 16);
      v411 = *v406;
      v412 = v409->i64[0];
      v413 = v409->i64[1];
      v414 = v409[1].i64[0];
      v415 = v409[1].i64[1];
      v378 = v409[2].i8[0];
      *&v838 = v411;
      *(&v838 + 1) = v407;
      *&v839 = v410;
      *(&v839 + 1) = v408;
      v833.i64[0] = v412;
      v833.i64[1] = v413;
      v834.i64[0] = v414;
      v834.i64[1] = v415;
      v416 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v838, &v833);

      if ((v416 & 1) == 0)
      {
        goto LABEL_292;
      }

      goto LABEL_201;
    case 0xAu:
      v530 = v770;
      sub_1B71A5FBC(v208, v770, type metadata accessor for FinanceStore.Message);
      v531 = v828;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v532 = v823;
        v533 = v733;
        v534 = v822;
        (*(v823 + 4))(v733, v531, v822);
        v535 = sub_1B77FF918();
        goto LABEL_205;
      }

      (*(v823 + 1))(v530, v822);
      goto LABEL_264;
    case 0xBu:
      v340 = v777;
      sub_1B71A5FBC(v208, v777, type metadata accessor for FinanceStore.Message);
      v341 = *(v340 + 48);
      v840 = *(v340 + 32);
      v841 = v341;
      v842 = *(v340 + 64);
      v342 = *(v340 + 16);
      v838 = *v340;
      v839 = v342;
      v343 = v828;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v344 = v343[1];
        v345 = v343[3];
        v835 = v343[2];
        v836 = v345;
        v346 = v343[1];
        v833 = *v343;
        v834 = v346;
        v347 = *(v340 + 48);
        v831[2] = *(v340 + 32);
        v831[3] = v347;
        v348 = *(v340 + 16);
        v831[0] = *v340;
        v831[1] = v348;
        v349 = v343[3];
        v829[2] = v835;
        v829[3] = v349;
        v837 = v343[4].i8[0];
        v832 = *(v340 + 64);
        v830 = v343[4].i8[0];
        v829[0] = v833;
        v829[1] = v344;
        v238 = _s10FinanceKit10OrderEventV0D4TypeO2eeoiySbAE_AEtFZ_0(v831, v829);
        sub_1B73CFC74(&v833);
        sub_1B73CFC74(&v838);
        goto LABEL_334;
      }

      sub_1B73CFC74(&v838);
      goto LABEL_264;
    case 0xCu:
      v381 = v780;
      sub_1B71A5FBC(v208, v780, type metadata accessor for FinanceStore.Message);
      v817 = *v381;
      v382 = *(v381 + 24);
      v825 = *(v381 + 16);
      v819 = v382;
      v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C08);
      v818 = v383[16];
      v384 = v383[20];
      v385 = *(v381 + v384 + 8);
      v816 = *(v381 + v384);
      v821 = v385;
      v386 = v383[24];
      v387 = *(v381 + v386 + 8);
      v813 = *(v381 + v386);
      v824 = v387;
      v388 = v383[28];
      v389 = *(v381 + v388 + 8);
      v812 = *(v381 + v388);
      v827 = v389;
      v390 = v383[32];
      v391 = *(v381 + v390 + 8);
      v811 = *(v381 + v390);
      v392 = v828;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_1B762E6C0(v825, v819);

        sub_1B7205418(&v818[v381], &qword_1EB98EBD0);
        goto LABEL_264;
      }

      v815 = v391;
      v719 = v208;
      v393 = *(v381 + 8);
      v394 = v392->i64[0];
      v395 = v392->u8[8];
      v396 = v392[1].u64[1];
      v810 = v392[1].i64[0];
      v809 = v396;
      v397 = *(&v392->i64[1] + v384);
      v807 = *(v392->i64 + v384);
      v808 = v397;
      v398 = *(&v392->i64[1] + v386);
      v806 = *(v392->i64 + v386);
      v826 = v398;
      v399 = *(&v392->i64[1] + v388);
      v805 = *(v392->i64 + v388);
      v814 = v399;
      v400 = *(&v392->i64[1] + v390);
      v804 = *(v392->i64 + v390);
      v401 = v818;
      sub_1B722376C(&v818[v381], v820, &qword_1EB98EBD0);
      v402 = &v401[v392];
      v403 = v758;
      sub_1B722376C(v402, v758, &qword_1EB98EBD0);
      if (v393)
      {
        v404 = v823;
        v405 = v825;
        if (!v395)
        {
LABEL_86:

          sub_1B762E6C0(v810, v809);
          sub_1B762E6C0(v405, v819);
LABEL_447:
          v632 = &qword_1EB98EBD0;
          v716 = v403;
LABEL_448:
          sub_1B7205418(v716, &qword_1EB98EBD0);
          v633 = v820;
          goto LABEL_449;
        }
      }

      else
      {
        if (v817 == v394)
        {
          v638 = v395;
        }

        else
        {
          v638 = 1;
        }

        v404 = v823;
        v405 = v825;
        if (v638)
        {
          goto LABEL_86;
        }
      }

      v639 = v819;
      v640 = v809;
      if (v819 == 19)
      {
        if (v809 == 19)
        {
          v639 = 19;
          goto LABEL_374;
        }

        v668 = v810;
      }

      else
      {
        if (v809 != 19)
        {
          *&v838 = v405;
          *(&v838 + 1) = v819;
          v833.i64[0] = v810;
          v833.i64[1] = v809;
          v681 = ManagedCloudOrderEvent.EventType.rawValue.getter();
          v683 = v682;
          if (v681 != ManagedCloudOrderEvent.EventType.rawValue.getter() || v683 != v684)
          {
            v706 = sub_1B78020F8();
            sub_1B762E6C0(v810, v640);

            sub_1B762E6C0(v825, v639);
            if ((v706 & 1) == 0)
            {
              goto LABEL_399;
            }

            goto LABEL_375;
          }

          sub_1B762E6C0(v810, v640);

          v405 = v825;
LABEL_374:
          sub_1B762E6C0(v405, v639);
LABEL_375:
          v685 = *(v732 + 48);
          v686 = v724;
          sub_1B7205588(v820, v724, &qword_1EB98EBD0);
          sub_1B7205588(v403, v686 + v685, &qword_1EB98EBD0);
          v687 = *(v404 + 6);
          v688 = v822;
          if (v687(v686, 1, v822) == 1)
          {
            if (v687(v686 + v685, 1, v688) == 1)
            {
              sub_1B7205418(v686, &qword_1EB98EBD0);
              v689 = v827;
              v690 = v824;
              v691 = v821;
              goto LABEL_409;
            }

LABEL_407:
            sub_1B7205418(v686, &qword_1EB98FCE0);
            goto LABEL_447;
          }

          v698 = v721;
          sub_1B7205588(v686, v721, &qword_1EB98EBD0);
          if (v687(v686 + v685, 1, v688) == 1)
          {

            (*(v404 + 1))(v698, v688);
            goto LABEL_407;
          }

          v710 = v686 + v685;
          v711 = v725;
          (*(v404 + 4))(v725, v710, v688);
          sub_1B71A6B1C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
          v712 = sub_1B7800828();
          v713 = *(v404 + 1);
          v713(v711, v688);
          v713(v698, v688);
          sub_1B7205418(v686, &qword_1EB98EBD0);
          v689 = v827;
          v690 = v824;
          v691 = v821;
          if (v712)
          {
LABEL_409:
            if (v691)
            {
              if (v808)
              {
                if (v816 == v807 && v691 == v808)
                {

                  goto LABEL_429;
                }

                v714 = sub_1B78020F8();

                if (v714)
                {
                  goto LABEL_429;
                }
              }

              else
              {
              }

              goto LABEL_446;
            }

            if (v808)
            {

              goto LABEL_437;
            }

LABEL_429:
            if (v690)
            {
              if (v826)
              {
                if (v813 == v806 && v690 == v826)
                {

                  goto LABEL_440;
                }

                v715 = sub_1B78020F8();

                if (v715)
                {
LABEL_440:
                  if (!v689)
                  {
                    if (v814)
                    {

                      goto LABEL_461;
                    }

                    goto LABEL_455;
                  }

                  if (v814)
                  {
                    if (v812 == v805 && v827 == v814)
                    {

LABEL_455:
                      if (v815)
                      {
                        if (v400)
                        {
                          if (v811 == v804 && v815 == v400)
                          {

                            sub_1B7205418(v758, &qword_1EB98EBD0);
                            sub_1B7205418(v820, &qword_1EB98EBD0);
LABEL_465:
                            v637 = v719;
                            goto LABEL_317;
                          }

                          v718 = sub_1B78020F8();

                          sub_1B7205418(v758, &qword_1EB98EBD0);
                          sub_1B7205418(v820, &qword_1EB98EBD0);
                          if (v718)
                          {
                            goto LABEL_465;
                          }

                          goto LABEL_450;
                        }

LABEL_461:

                        v632 = &qword_1EB98EBD0;
                        v716 = v758;
                        goto LABEL_448;
                      }

                      sub_1B7205418(v758, &qword_1EB98EBD0);
                      sub_1B7205418(v820, &qword_1EB98EBD0);
                      if (!v400)
                      {
                        goto LABEL_465;
                      }

LABEL_342:

LABEL_450:
                      sub_1B71A7A34(v719, type metadata accessor for FinanceStore.Message);
                      goto LABEL_265;
                    }

                    v717 = sub_1B78020F8();

                    if (v717)
                    {
                      goto LABEL_455;
                    }
                  }

                  else
                  {
                  }

                  goto LABEL_461;
                }
              }

              else
              {
              }

LABEL_446:

              goto LABEL_447;
            }

            if (!v826)
            {
              goto LABEL_440;
            }

LABEL_437:

            goto LABEL_446;
          }

LABEL_399:

          goto LABEL_446;
        }

        sub_1B74A5328(v405, v819);
        v668 = v810;
        sub_1B74A5328(v810, 0x13uLL);

        sub_1B762E6C0(v668, 0x13uLL);
        sub_1B762E6C0(v405, v639);
      }

      sub_1B762E6C0(v405, v639);
      sub_1B762E6C0(v668, v640);
      goto LABEL_447;
    case 0xDu:
      v244 = v773;
      sub_1B71A5FBC(v208, v773, type metadata accessor for FinanceStore.Message);
      v245 = v828;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_216;
      }

      v246 = v825;
      v247 = *(v825 + 32);
      v248 = v738;
      goto LABEL_215;
    case 0xEu:
      v314 = v208;
      v315 = v769;
      sub_1B71A5FBC(v208, v769, type metadata accessor for FinanceStore.Message);
      v317 = *v315;
      v316 = v315[1];
      v319 = v315[2];
      v318 = v315[3];
      v320 = v828;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_245;
      }

      v321 = *v320;
      v322 = v320[1];
      v324 = v320[2];
      v323 = v320[3];
      if (v317 == v321 && v316 == v322)
      {
      }

      else
      {
        v636 = sub_1B78020F8();

        if ((v636 & 1) == 0)
        {
          goto LABEL_291;
        }
      }

      if (v319 == v324 && v318 == v323)
      {

        v637 = v314;
        goto LABEL_317;
      }

      v653 = sub_1B78020F8();

      v637 = v314;
      if (v653)
      {
        goto LABEL_317;
      }

      goto LABEL_382;
    case 0xFu:
      v314 = v208;
      v431 = v771;
      sub_1B71A5FBC(v208, v771, type metadata accessor for FinanceStore.Message);
      v433 = *v431;
      v432 = v431[1];
      v435 = v431[2];
      v434 = v431[3];
      v436 = v828;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_245;
      }

      v437 = *v436;
      v438 = v436[1];
      v440 = v436[2];
      v439 = v436[3];
      if (v433 == v437 && v432 == v438)
      {
      }

      else
      {
        v641 = sub_1B78020F8();

        if ((v641 & 1) == 0)
        {
          goto LABEL_291;
        }
      }

      if (v435 == v440 && v434 == v439)
      {
      }

      else
      {
        v654 = sub_1B78020F8();

        if ((v654 & 1) == 0)
        {
          goto LABEL_292;
        }
      }

      v637 = v314;
      goto LABEL_317;
    case 0x10u:
      v300 = v776;
      sub_1B71A5FBC(v208, v776, type metadata accessor for FinanceStore.Message);
      v301 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C10) + 48);
      v302 = v828;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        (*(v823 + 1))(&v300[v301], v822);
        goto LABEL_264;
      }

      LODWORD(v827) = *v300;
      v303 = v302->u8[0];
      v304 = v823;
      v305 = *(v823 + 4);
      v306 = &v300[v301];
      v307 = v735;
      v308 = v822;
      v305(v735, v306, v822);
      v309 = &v302->u8[v301];
      v310 = v734;
      v305(v734, v309, v308);
      if (v827 != v303)
      {
        v311 = *(v304 + 1);
        v311(v310, v308);
        v311(v307, v308);
        goto LABEL_314;
      }

      v238 = sub_1B77FF918();
      v635 = *(v304 + 1);
      v635(v310, v308);
      v635(v307, v308);
      goto LABEL_334;
    case 0x11u:
      v477 = v772;
      sub_1B71A5FBC(v208, v772, type metadata accessor for FinanceStore.Message);
      v419 = *v477;
      v418 = v477[1];
      v420 = v828;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_247;
      }

      goto LABEL_171;
    case 0x12u:
      v523 = v774;
      sub_1B71A5FBC(v208, v774, type metadata accessor for FinanceStore.Message);
      v524 = *v523;
      v525 = v523[1];
      v526 = v828;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_252;
      }

      v528 = *v526;
      v527 = v526[1];
      v529 = sub_1B731D660(v524, v528);

      if ((v529 & 1) == 0)
      {
        goto LABEL_239;
      }

      v243 = sub_1B72F48EC(v525, v527);
      goto LABEL_149;
    case 0x13u:
      v566 = v775;
      sub_1B71A5FBC(v208, v775, type metadata accessor for FinanceStore.Message);
      v419 = *v566;
      v418 = v566[1];
      v420 = v828;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_171;
      }

      goto LABEL_247;
    case 0x14u:
      v489 = v778;
      sub_1B71A5FBC(v208, v778, type metadata accessor for FinanceStore.Message);
      v491 = *v489;
      v490 = *(v489 + 8);
      v492 = *(v489 + 16);
      v493 = v828;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_247;
      }

      v494 = v493->i64[0];
      v495 = v493->i64[1];
      v496 = v493[1].i8[0];
      if (v491 == v494 && v490 == v495)
      {
      }

      else
      {
        v646 = sub_1B78020F8();

        if ((v646 & 1) == 0)
        {
          goto LABEL_314;
        }
      }

      v602 = v492 ^ v496;
      v603 = v208;
      goto LABEL_298;
    case 0x15u:
      v500 = v783;
      sub_1B71A5FBC(v208, v783, type metadata accessor for FinanceStore.Message);
      v502 = *v500;
      v501 = *(v500 + 8);
      v503 = *(v500 + 16);
      v504 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C18) + 64);
      v505 = v828;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_167;
      }

      LODWORD(v827) = v503;
      v719 = v208;
      v506 = v500;
      v508 = v505->i64[0];
      v507 = v505->i64[1];
      LODWORD(v826) = v505[1].u8[0];
      v509 = v505;
      v510 = *(v823 + 4);
      v511 = v822;
      v510(v816, v506 + v504, v822);
      v512 = v509->i64 + v504;
      v513 = v737;
      v510(v737, v512, v511);
      if (v502 == v508 && v501 == v507)
      {
      }

      else
      {
        v647 = sub_1B78020F8();

        if ((v647 & 1) == 0)
        {
          goto LABEL_301;
        }
      }

      v648 = v823;
      if (v827 != v826)
      {
LABEL_301:
        v649 = *(v823 + 1);
        v649(v513, v511);
        v650 = v816;
        goto LABEL_306;
      }

      v655 = v816;
LABEL_329:
      v238 = sub_1B77FF918();
      v656 = *(v648 + 1);
      v656(v513, v511);
      v656(v655, v511);
LABEL_330:
      v339 = v719;
LABEL_335:
      sub_1B71A7A34(v339, type metadata accessor for FinanceStore.Message);
      return v238 & 1;
    case 0x16u:
      v500 = v784;
      sub_1B71A5FBC(v208, v784, type metadata accessor for FinanceStore.Message);
      v557 = *v500;
      v556 = *(v500 + 8);
      v558 = *(v500 + 16);
      v504 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C18) + 64);
      v559 = v828;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
LABEL_167:
        (*(v823 + 1))(v500 + v504, v822);
        goto LABEL_247;
      }

      LODWORD(v827) = v558;
      v719 = v208;
      v560 = v500;
      v562 = v559->i64[0];
      v561 = v559->i64[1];
      LODWORD(v826) = v559[1].u8[0];
      v563 = v559;
      v564 = *(v823 + 4);
      v511 = v822;
      v564(v817, v560 + v504, v822);
      v565 = v563->i64 + v504;
      v513 = v739;
      v564(v739, v565, v511);
      if (v557 == v562 && v556 == v561)
      {
      }

      else
      {
        v651 = sub_1B78020F8();

        if ((v651 & 1) == 0)
        {
          goto LABEL_305;
        }
      }

      v648 = v823;
      if (v827 == v826)
      {
        v655 = v817;
        goto LABEL_329;
      }

LABEL_305:
      v649 = *(v823 + 1);
      v649(v513, v511);
      v650 = v817;
LABEL_306:
      v649(v650, v511);
      goto LABEL_450;
    case 0x17u:
      v573 = v779;
      sub_1B71A5FBC(v208, v779, type metadata accessor for FinanceStore.Message);
      v574 = *v573;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_264;
      }

      v575 = v828->u8[0];
      if (v574 == 2)
      {
        if (v575 != 2)
        {
          goto LABEL_314;
        }

        goto LABEL_316;
      }

      if (v575 != 2 && ((v575 ^ v574) & 1) == 0)
      {
        goto LABEL_316;
      }

      goto LABEL_314;
    case 0x18u:
      v421 = v781;
      sub_1B71A5FBC(v208, v781, type metadata accessor for FinanceStore.Message);
      v419 = *v421;
      v418 = v421[1];
      v420 = v828;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_247;
      }

      goto LABEL_171;
    case 0x19u:
      v417 = v782;
      sub_1B71A5FBC(v208, v782, type metadata accessor for FinanceStore.Message);
      v419 = *v417;
      v418 = v417[1];
      v420 = v828;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_247;
      }

      goto LABEL_171;
    case 0x1Au:
      v530 = v789;
      sub_1B71A5FBC(v208, v789, type metadata accessor for FinanceStore.Message);
      v604 = v828;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        (*(v763 + 8))(v530, v764);
        goto LABEL_264;
      }

      v532 = v763;
      v534 = v764;
      v533 = v751;
      (*(v763 + 32))(v751, v604, v764);
      v535 = MEMORY[0x1B8CA3D90](v530, v533);
LABEL_205:
      v238 = v535;
      v605 = *(v532 + 1);
      v605(v533, v534);
      v605(v530, v534);
      goto LABEL_334;
    case 0x1Bu:
      v275 = v785;
      sub_1B71A5FBC(v208, v785, type metadata accessor for FinanceStore.Message);
      v277 = *v275;
      v276 = *(v275 + 8);
      v279 = *(v275 + 16);
      v278 = *(v275 + 24);
      v280 = *(v275 + 32);
      v281 = v828;
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_252;
      }

      v719 = v208;
      v282 = v281->i64[0];
      v283 = v281->i64[1];
      v285 = v281[1].i64[0];
      v284 = v281[1].i64[1];
      v286 = v281[2].u8[0];
      if (v277 == v282 && v276 == v283)
      {
      }

      else
      {
        v634 = sub_1B78020F8();

        if ((v634 & 1) == 0)
        {

          goto LABEL_342;
        }
      }

      if (v279 == v285 && v278 == v284)
      {
      }

      else
      {
        v652 = sub_1B78020F8();

        if ((v652 & 1) == 0)
        {
          goto LABEL_450;
        }
      }

      updated = sub_1B71E4D5C(v280, v286);
LABEL_320:
      v238 = updated;
      goto LABEL_330;
    case 0x1Cu:
      v576 = v786;
      sub_1B71A5FBC(v208, v786, type metadata accessor for FinanceStore.Message);
      v577 = *v576;
      v578 = *(v576 + 8);
      v579 = v828;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_247;
      }

      v580 = v579->i64[0];
      v581 = v579->u8[8];
      v582 = sub_1B73216E0(v577, v580);

      if ((v582 & 1) == 0)
      {
        goto LABEL_314;
      }

      v583 = v578;
      v584 = v581;
      goto LABEL_333;
    case 0x1Du:
      v585 = v787;
      sub_1B71A5FBC(v208, v787, type metadata accessor for FinanceStore.Message);
      v586 = *v585;
      v587 = *(v585 + 8);
      v588 = v828;
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        goto LABEL_247;
      }

      v589 = v588->i64[0];
      v590 = v588->u8[8];
      if (!v586)
      {
        if (v589)
        {
          goto LABEL_313;
        }

        goto LABEL_332;
      }

      if (!v589)
      {
        goto LABEL_313;
      }

      v591 = v589;

      v593 = sub_1B72F4734(v592, v591);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if (v593)
      {
LABEL_332:
        v583 = v587;
        v584 = v590;
LABEL_333:
        v238 = sub_1B71E4D5C(v583, v584);
        goto LABEL_334;
      }

      goto LABEL_314;
    case 0x1Eu:
      v551 = v788;
      sub_1B71A5FBC(v208, v788, type metadata accessor for FinanceStore.Message);
      v419 = *v551;
      v418 = v551[1];
      v420 = v828;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_247;
      }

LABEL_171:
      v567 = *v420;
      v568 = v420[1];
      if (v419 == v567 && v418 == v568)
      {

        goto LABEL_316;
      }

      v569 = sub_1B78020F8();

      if (v569)
      {
        goto LABEL_316;
      }

      goto LABEL_314;
    case 0x1Fu:
      v463 = v792;
      sub_1B71A5FBC(v208, v792, type metadata accessor for FinanceStore.Message);
      v465 = *v463;
      v464 = v463[1];
      v466 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999CB8) + 48);
      v467 = v828;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        (*(v823 + 1))(v463 + v466, v822);
        goto LABEL_247;
      }

      v719 = v208;
      v469 = *v467;
      v468 = v467[1];
      v470 = *(v823 + 4);
      v471 = v463 + v466;
      v472 = v467;
      v473 = v822;
      v470(v818, v471, v822);
      v474 = v472 + v466;
      v475 = v740;
      v470(v740, v474, v473);
      if (v465 == v469 && v464 == v468)
      {

        v476 = v719;
LABEL_295:
        v643 = v818;
        v238 = sub_1B77FF918();
        v644 = *(v823 + 1);
        v645 = v822;
        v644(v475, v822);
        v644(v643, v645);
        v339 = v476;
        goto LABEL_335;
      }

      v642 = sub_1B78020F8();

      v476 = v719;
      if (v642)
      {
        goto LABEL_295;
      }

      v670 = *(v823 + 1);
      v671 = v822;
      v670(v475, v822);
      v670(v818, v671);
      goto LABEL_391;
    case 0x20u:
      v230 = v797;
      sub_1B71A5FBC(v208, v797, type metadata accessor for FinanceStore.Message);
      v552 = v828;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v553 = v753;
        sub_1B71A6024(v552, v753, type metadata accessor for BankCredential);
        v554 = *(v752 + 48);
        v555 = v754;
        sub_1B71A5FBC(v230, v754, type metadata accessor for BankCredential);
        sub_1B71A5FBC(v553, v555 + v554, type metadata accessor for BankCredential);
        v238 = _s10FinanceKit14BankCredentialO3ACHV2eeoiySbAE_AEtFZ_0(v555, v555 + v554);
        sub_1B71A7A34(v555 + v554, type metadata accessor for BankCredential.ACH);
        sub_1B71A7A34(v555, type metadata accessor for BankCredential.ACH);
        sub_1B71A7A34(v553, type metadata accessor for BankCredential);
        sub_1B71A7A34(v230, type metadata accessor for BankCredential);
        goto LABEL_334;
      }

      v627 = type metadata accessor for BankCredential;
      goto LABEL_262;
    case 0x21u:
      v325 = v790;
      sub_1B71A5FBC(v208, v790, type metadata accessor for FinanceStore.Message);
      v227 = *v325;
      v326 = v828;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_247;
      }

      v229 = *v326;
      goto LABEL_60;
    case 0x22u:
      v287 = v791;
      sub_1B71A5FBC(v208, v791, type metadata accessor for FinanceStore.Message);
      v288 = *v287;
      v289 = *(v287 + 8);
      v291 = *(v287 + 16);
      v290 = *(v287 + 24);
      v292 = *(v287 + 32);
      v293 = v828;
      if (swift_getEnumCaseMultiPayload() != 34)
      {

        sub_1B7201CF8(v288, v289);
        goto LABEL_264;
      }

      v294 = v293->i64[0];
      v295 = v293->u8[8];
      v296 = v293[1].i64[0];
      v297 = v293[1].i64[1];
      v828 = v293[2].i64[0];
      if (v289 == 255)
      {
        v298 = v294;
        if (v295 == 255)
        {
          v827 = v296;
          v719 = v208;
          sub_1B72274E8(v288, 255);
          sub_1B72274E8(v298, 255);
          sub_1B7201CF8(v288, 255);
          goto LABEL_360;
        }
      }

      else
      {
        *&v838 = v288;
        BYTE8(v838) = v289;
        if (v295 != 255)
        {
          v827 = v296;
          v719 = v208;
          v833.i64[0] = v294;
          v833.i8[8] = v295 & 1;
          v298 = v294;
          sub_1B72274E8(v288, v289);
          sub_1B72274E8(v298, v295);
          sub_1B72274E8(v288, v289);
          v299 = sub_1B71CAC1C(&v838, &v833);
          sub_1B7201D10(v833.i64[0], v833.i8[8]);
          sub_1B7201D10(v838, SBYTE8(v838));
          sub_1B7201CF8(v288, v289);
          if ((v299 & 1) == 0)
          {
            sub_1B7201CF8(v288, v289);
            sub_1B7201CF8(v298, v295);

            v208 = v719;
            goto LABEL_314;
          }

LABEL_360:
          v826 = v298;
          v675 = v828;
          if (v291 == v827 && v290 == v297)
          {

            v676 = v719;
          }

          else
          {
            v677 = sub_1B78020F8();

            v676 = v719;
            if ((v677 & 1) == 0)
            {

              sub_1B7201CF8(v826, v295);
              sub_1B7201CF8(v288, v289);
              goto LABEL_405;
            }
          }

          if (v292)
          {
            if (v675)
            {

              v679 = sub_1B7220360(v678, v675);
              sub_1B7201CF8(v826, v295);
              sub_1B7201CF8(v288, v289);
              swift_bridgeObjectRelease_n();

              if (v679)
              {
                goto LABEL_418;
              }

              goto LABEL_405;
            }

            sub_1B7201CF8(v826, v295);
            sub_1B7201CF8(v288, v289);
          }

          else
          {
            sub_1B7201CF8(v826, v295);
            sub_1B7201CF8(v288, v289);
            if (!v675)
            {

LABEL_418:
              v637 = v676;
LABEL_317:
              sub_1B71A7A34(v637, type metadata accessor for FinanceStore.Message);
              v238 = 1;
              return v238 & 1;
            }
          }

LABEL_405:
          sub_1B71A7A34(v676, type metadata accessor for FinanceStore.Message);
          goto LABEL_265;
        }

        v298 = v294;
        sub_1B72274E8(v288, v289);

        sub_1B7201D10(v288, v289 & 1);
      }

      sub_1B7201CF8(v288, v289);
      sub_1B7201CF8(v298, v295);
      goto LABEL_314;
    case 0x23u:
      v719 = v208;
      v249 = v208;
      v250 = v799;
      sub_1B71A5FBC(v249, v799, type metadata accessor for FinanceStore.Message);
      v251 = *v250;
      v252 = *(v250 + 8);
      v253 = *(v250 + 24);
      v827 = *(v250 + 16);
      v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996858);
      v255 = *(v254 + 64);
      v256 = *(v254 + 80);
      v257 = *(v250 + v256);
      v258 = v828;
      if (swift_getEnumCaseMultiPayload() != 35)
      {

        sub_1B7201D10(v251, v252);

        sub_1B7205418(v250 + v255, &unk_1EB993A10);
LABEL_243:
        v208 = v719;
LABEL_264:
        sub_1B7205418(v208, &qword_1EB99A458);
        goto LABEL_265;
      }

      v823 = v253;
      v826 = v257;
      v259 = v258->i64[0];
      v260 = v258->u8[8];
      v261 = v258[1].i64[1];
      v820 = v258[1].i64[0];
      v821 = v261;
      v822 = *(v258->i64 + v256);
      v262 = v250 + v255;
      v263 = v762;
      sub_1B722376C(v262, v762, &unk_1EB993A10);
      v264 = v258->i64 + v255;
      v265 = v761;
      sub_1B722376C(v264, v761, &unk_1EB993A10);
      *&v838 = v251;
      BYTE8(v838) = v252;
      v833.i64[0] = v259;
      v833.i8[8] = v260;
      if (sub_1B71CAC1C(&v838, &v833))
      {
        LODWORD(v828) = v252;
        v266 = v822;
        if (v827 == v820 && v823 == v821)
        {

          v267 = v762;
          goto LABEL_338;
        }

        v658 = sub_1B78020F8();

        v267 = v762;
        if (v658)
        {
LABEL_338:
          v823 = v259;
          LODWORD(v827) = v260;
          v659 = v251;
          v660 = v265;
          v661 = v729;
          v662 = *(v728 + 48);
          sub_1B7205588(v267, v729, &unk_1EB993A10);
          sub_1B7205588(v660, v661 + v662, &unk_1EB993A10);
          v663 = v825;
          v664 = *(v825 + 48);
          v665 = v824;
          if (v664(v661, 1, v824) == 1)
          {
            if (v664(v661 + v662, 1, v665) == 1)
            {
              sub_1B7205418(v661, &unk_1EB993A10);
              v666 = v826;
              v667 = v762;
              goto LABEL_393;
            }

            sub_1B7201D10(v823, v827);
            sub_1B7201D10(v251, v828);
          }

          else
          {
            v674 = v723;
            sub_1B7205588(v661, v723, &unk_1EB993A10);
            if (v664(v661 + v662, 1, v665) != 1)
            {
              v699 = v661 + v662;
              v700 = v720;
              (*(v663 + 32))(v720, v699, v665);
              sub_1B71A6B1C(&qword_1EB99DBE0, MEMORY[0x1E69695A8]);
              v701 = sub_1B7800828();
              v702 = *(v663 + 8);
              v702(v700, v665);
              v702(v674, v665);
              sub_1B7205418(v661, &unk_1EB993A10);
              v666 = v826;
              v667 = v762;
              if (v701)
              {
LABEL_393:
                v703 = v761;
                if (v666)
                {
                  if (v266)
                  {
                    swift_bridgeObjectRetain_n();

                    v704 = sub_1B7220360(v666, v266);
                    sub_1B7201D10(v823, v827);
                    sub_1B7201D10(v659, v828);

                    swift_bridgeObjectRelease_n();
                    sub_1B7205418(v703, &unk_1EB993A10);
                    sub_1B7205418(v667, &unk_1EB993A10);
                    swift_bridgeObjectRelease_n();
                    v705 = v719;
                    if (v704)
                    {
                      goto LABEL_426;
                    }

LABEL_421:
                    sub_1B71A7A34(v705, type metadata accessor for FinanceStore.Message);
                    goto LABEL_265;
                  }

                  swift_bridgeObjectRetain_n();
                  sub_1B7201D10(v823, v827);
                  sub_1B7201D10(v659, v828);

                  sub_1B7205418(v703, &unk_1EB993A10);
                  sub_1B7205418(v667, &unk_1EB993A10);
                }

                else
                {

                  sub_1B7201D10(v823, v827);
                  sub_1B7201D10(v659, v828);

                  sub_1B7205418(v703, &unk_1EB993A10);
                  sub_1B7205418(v667, &unk_1EB993A10);
                  if (!v266)
                  {

                    v705 = v719;
LABEL_426:
                    v637 = v705;
                    goto LABEL_317;
                  }
                }

                v705 = v719;

                goto LABEL_421;
              }

              sub_1B7201D10(v823, v827);
              sub_1B7201D10(v659, v828);

              goto LABEL_389;
            }

            sub_1B7201D10(v823, v827);
            sub_1B7201D10(v659, v828);

            (*(v663 + 8))(v674, v665);
          }

          v667 = v762;
          sub_1B7205418(v661, qword_1EB9943A0);
LABEL_389:
          v476 = v719;
          v549 = &unk_1EB993A10;
          sub_1B7205418(v761, &unk_1EB993A10);
          v550 = v667;
LABEL_390:
          sub_1B7205418(v550, v549);
LABEL_391:
          sub_1B71A7A34(v476, type metadata accessor for FinanceStore.Message);
LABEL_265:
          v238 = 0;
          return v238 & 1;
        }

        v680 = v762;
        sub_1B7201D10(v259, v260);
        sub_1B7201D10(v251, v828);

        v632 = &unk_1EB993A10;
        sub_1B7205418(v265, &unk_1EB993A10);
        v633 = v680;
      }

      else
      {

        sub_1B7201D10(v259, v260);
        sub_1B7201D10(v251, v252);

        v632 = &unk_1EB993A10;
        sub_1B7205418(v265, &unk_1EB993A10);
        v633 = v263;
      }

LABEL_449:
      sub_1B7205418(v633, v632);
      goto LABEL_450;
    case 0x24u:
      v268 = v793;
      sub_1B71A5FBC(v208, v793, type metadata accessor for FinanceStore.Message);
      v269 = *v268;
      v270 = v828;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_247;
      }

      v271 = *v270;
      if (v269)
      {
        if (!v271)
        {
          goto LABEL_313;
        }

        v272 = *v270;

        v274 = sub_1B73218F4(v273, v272);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if ((v274 & 1) == 0)
        {
LABEL_314:
          sub_1B71A7A34(v208, type metadata accessor for FinanceStore.Message);
          goto LABEL_265;
        }
      }

      else if (v271)
      {
        goto LABEL_313;
      }

LABEL_316:
      v637 = v208;
      goto LABEL_317;
    case 0x25u:
      v226 = v794;
      sub_1B71A5FBC(v208, v794, type metadata accessor for FinanceStore.Message);
      v227 = *(v226 + 8);
      v228 = v828;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_247;
      }

      v229 = v228->i64[1];
      if (!sub_1B72C11A8(*v226, v228->i8[0]))
      {
LABEL_239:

        goto LABEL_313;
      }

LABEL_60:
      v243 = sub_1B73216E0(v227, v229);
LABEL_149:
      v238 = v243;
LABEL_150:

      goto LABEL_334;
    case 0x26u:
      v314 = v208;
      v594 = v795;
      sub_1B71A5FBC(v208, v795, type metadata accessor for FinanceStore.Message);
      v596 = *(v594 + 8);
      v595 = *(v594 + 16);
      v374 = *(v594 + 24);
      v597 = v828;
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_245;
      }

      v598 = *v594;
      v599 = v597[1].i64[0];
      v378 = v597[1].i8[8];
      v600 = sub_1B72C2ACC(v598, v596, v597->i64[0], v597->i64[1]);

      if ((v600 & 1) == 0)
      {
        goto LABEL_291;
      }

      v380 = sub_1B722060C(v595, v599);
      goto LABEL_200;
    case 0x27u:
      v212 = v796;
      sub_1B71A5FBC(v208, v796, type metadata accessor for FinanceStore.Message);
      v213 = v212[1];
      v214 = v828;
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_169;
      }

      goto LABEL_247;
    case 0x28u:
      v314 = v208;
      v371 = v798;
      sub_1B71A5FBC(v208, v798, type metadata accessor for FinanceStore.Message);
      v373 = *(v371 + 8);
      v372 = *(v371 + 16);
      v374 = *(v371 + 24);
      v375 = v828;
      if (swift_getEnumCaseMultiPayload() != 40)
      {
LABEL_245:

        v208 = v314;
        goto LABEL_264;
      }

      v376 = *v371;
      v377 = v375[1].i64[0];
      v378 = v375[1].i8[8];
      v379 = sub_1B72C2ACC(v376, v373, v375->i64[0], v375->i64[1]);

      if ((v379 & 1) == 0)
      {
        goto LABEL_291;
      }

      v380 = sub_1B72F48EC(v372, v377);
LABEL_200:
      v601 = v380;

      if ((v601 & 1) == 0)
      {
        goto LABEL_292;
      }

LABEL_201:
      v602 = v374 ^ v378;
      v603 = v314;
LABEL_298:
      sub_1B71A7A34(v603, type metadata accessor for FinanceStore.Message);
      v238 = v602 ^ 1;
      return v238 & 1;
    case 0x29u:
      v478 = v800;
      sub_1B71A5FBC(v208, v800, type metadata accessor for FinanceStore.Message);
      v479 = v478[1];
      v480 = v478[3];
      v481 = v828;
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        goto LABEL_252;
      }

      v482 = v478[2];
      v483 = *v478;
      v484 = *v481;
      v485 = v481[1];
      v486 = v481[2];
      v487 = v481[3];
      *&v838 = v483;
      *(&v838 + 1) = v479;
      *&v839 = v482;
      *(&v839 + 1) = v480;
      v833.i64[0] = v484;
      v833.i64[1] = v485;
      v834.i64[0] = v486;
      v834.i64[1] = v487;
      v488 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v838, &v833);
LABEL_144:
      v238 = v488;

      goto LABEL_334;
    case 0x2Au:
      v215 = v801;
      sub_1B71A5FBC(v208, v801, type metadata accessor for FinanceStore.Message);
      v216 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999C38) + 48);
      v570 = v828;
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        goto LABEL_182;
      }

      LODWORD(v827) = *v215;
      v218 = v570->u8[0];
      v219 = v825;
      v220 = *(v825 + 32);
      v571 = &v215[v216];
      v222 = v742;
      v223 = v824;
      v220(v742, v571, v824);
      v224 = &v570->u8[v216];
      v225 = v741;
      goto LABEL_180;
    case 0x2Bu:
      v215 = v803;
      sub_1B71A5FBC(v208, v803, type metadata accessor for FinanceStore.Message);
      v216 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950B8) + 48);
      v217 = v828;
      if (swift_getEnumCaseMultiPayload() != 43)
      {
        goto LABEL_182;
      }

      LODWORD(v827) = *v215;
      v218 = v217->u8[0];
      v219 = v825;
      v220 = *(v825 + 32);
      v221 = &v215[v216];
      v222 = v745;
      v223 = v824;
      v220(v745, v221, v824);
      v224 = &v217->u8[v216];
      v225 = v744;
      goto LABEL_180;
    case 0x2Cu:
      v215 = v805;
      sub_1B71A5FBC(v208, v805, type metadata accessor for FinanceStore.Message);
      v216 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950B0) + 48);
      v312 = v828;
      if (swift_getEnumCaseMultiPayload() != 44)
      {
LABEL_182:
        (*(v825 + 8))(&v215[v216], v824);
        goto LABEL_264;
      }

      LODWORD(v827) = *v215;
      v218 = v312->u8[0];
      v219 = v825;
      v220 = *(v825 + 32);
      v313 = &v215[v216];
      v222 = v749;
      v223 = v824;
      v220(v749, v313, v824);
      v224 = &v312->u8[v216];
      v225 = v748;
LABEL_180:
      v220(v225, v224, v223);
      if (v827 != v218)
      {
        v572 = *(v219 + 8);
        v572(v225, v223);
        v572(v222, v223);
        goto LABEL_314;
      }

      v238 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      v626 = *(v219 + 8);
      v626(v225, v223);
      v626(v222, v223);
      goto LABEL_334;
    case 0x2Du:
      v244 = v808;
      sub_1B71A5FBC(v208, v808, type metadata accessor for FinanceStore.Message);
      v245 = v828;
      if (swift_getEnumCaseMultiPayload() != 45)
      {
        goto LABEL_216;
      }

      v246 = v825;
      v247 = *(v825 + 32);
      v248 = v743;
      goto LABEL_215;
    case 0x2Eu:
      v614 = v802;
      sub_1B71A5FBC(v208, v802, type metadata accessor for FinanceStore.Message);
      v615 = *v614;
      v616 = *(v614 + 8);
      v617 = v828;
      if (swift_getEnumCaseMultiPayload() != 46)
      {
        goto LABEL_247;
      }

      v618 = v617->u8[8];
      v619 = sub_1B7321948(v615, v617->i64[0]);

      if ((v619 & 1) == 0)
      {
        goto LABEL_314;
      }

      v211 = v616 == v618;
      goto LABEL_220;
    case 0x2Fu:
      v240 = v804;
      sub_1B71A5FBC(v208, v804, type metadata accessor for FinanceStore.Message);
      v241 = *v240;
      v242 = v828;
      if (swift_getEnumCaseMultiPayload() != 47)
      {
        goto LABEL_247;
      }

      v243 = sub_1B7321948(v241, *v242);
      goto LABEL_149;
    case 0x30u:
      v327 = v806;
      sub_1B71A5FBC(v208, v806, type metadata accessor for FinanceStore.Message);
      v328 = *v327;
      v329 = *(v327 + 8);
      v330 = *(v327 + 16);
      v331 = *(v327 + 24);
      v332 = v828;
      if (swift_getEnumCaseMultiPayload() != 48)
      {
        goto LABEL_252;
      }

      v333 = v208;
      v334 = v332->i64[0];
      v335 = v332->u8[8];
      v336 = v332[1].i64[0];
      v337 = v332[1].i64[1];
      v827 = v336;
      v338 = sub_1B7321948(v328, v334);

      if ((v338 & 1) != 0 && v329 == v335)
      {
        v238 = sub_1B72C2ACC(v330, v331, v827, v337);

        v339 = v333;
        goto LABEL_335;
      }

      sub_1B71A7A34(v333, type metadata accessor for FinanceStore.Message);
      goto LABEL_265;
    case 0x31u:
      v350 = v807;
      sub_1B71A5FBC(v208, v807, type metadata accessor for FinanceStore.Message);
      v352 = *v350;
      v351 = v350[1];
      v353 = v350[2];
      v354 = v828;
      if (swift_getEnumCaseMultiPayload() != 49)
      {
LABEL_252:

        goto LABEL_247;
      }

      v314 = v208;
      v356 = *v354;
      v355 = v354[1];
      v357 = v354[2];
      v358 = sub_1B7321948(v352, v356);

      if (v358)
      {
        v238 = sub_1B72C2ACC(v351, v353, v355, v357);

        v339 = v314;
        goto LABEL_335;
      }

LABEL_291:

LABEL_292:
      sub_1B71A7A34(v314, type metadata accessor for FinanceStore.Message);
      goto LABEL_265;
    case 0x32u:
      v212 = v809;
      sub_1B71A5FBC(v208, v809, type metadata accessor for FinanceStore.Message);
      v213 = v212[1];
      v214 = v828;
      if (swift_getEnumCaseMultiPayload() != 50)
      {
        goto LABEL_247;
      }

LABEL_169:
      v238 = sub_1B72C2ACC(*v212, v213, *v214, v214[1]);

      goto LABEL_334;
    case 0x33u:
      v230 = v811;
      sub_1B71A5FBC(v208, v811, type metadata accessor for FinanceStore.Message);
      v620 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF30) + 48);
      v621 = *(v230 + v620);
      v622 = v828;
      if (swift_getEnumCaseMultiPayload() != 51)
      {

        v627 = type metadata accessor for FinHealthTransactionInsight.EntityGroup;
        goto LABEL_262;
      }

      v623 = *(v622->i64 + v620);
      v624 = v622;
      v236 = v755;
      sub_1B71A6024(v624, v755, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
      v625 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      sub_1B71A7A34(v230, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
      if (v625)
      {
        v238 = sub_1B72F48EC(v621, v623);

        v239 = type metadata accessor for FinHealthTransactionInsight.EntityGroup;
        goto LABEL_230;
      }

      v631 = type metadata accessor for FinHealthTransactionInsight.EntityGroup;
      goto LABEL_312;
    case 0x34u:
      v244 = v810;
      sub_1B71A5FBC(v208, v810, type metadata accessor for FinanceStore.Message);
      v245 = v828;
      if (swift_getEnumCaseMultiPayload() != 52)
      {
        goto LABEL_216;
      }

      v246 = v825;
      v247 = *(v825 + 32);
      v248 = v746;
      goto LABEL_215;
    case 0x35u:
      v230 = v813;
      sub_1B71A5FBC(v208, v813, type metadata accessor for FinanceStore.Message);
      v231 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF28) + 48);
      v232 = *(v230 + v231);
      v233 = v828;
      if (swift_getEnumCaseMultiPayload() != 53)
      {

        v627 = type metadata accessor for FinHealthTransactionInsight.Income;
        goto LABEL_262;
      }

      v234 = *(v233->i64 + v231);
      v235 = v233;
      v236 = v756;
      sub_1B71A6024(v235, v756, type metadata accessor for FinHealthTransactionInsight.Income);
      v237 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      sub_1B71A7A34(v230, type metadata accessor for FinHealthTransactionInsight.Income);
      if (v237)
      {
        v238 = sub_1B72F48EC(v232, v234);

        v239 = type metadata accessor for FinHealthTransactionInsight.Income;
        goto LABEL_230;
      }

      v631 = type metadata accessor for FinHealthTransactionInsight.Income;
      goto LABEL_312;
    case 0x36u:
      v244 = v812;
      sub_1B71A5FBC(v208, v812, type metadata accessor for FinanceStore.Message);
      v245 = v828;
      if (swift_getEnumCaseMultiPayload() != 54)
      {
        goto LABEL_216;
      }

      v246 = v825;
      v247 = *(v825 + 32);
      v248 = v747;
      goto LABEL_215;
    case 0x37u:
      v230 = v815;
      sub_1B71A5FBC(v208, v815, type metadata accessor for FinanceStore.Message);
      v606 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950C0) + 48);
      v607 = *(v230 + v606);
      v608 = v828;
      if (swift_getEnumCaseMultiPayload() != 55)
      {

        v627 = type metadata accessor for PredictedTransaction;
LABEL_262:
        v629 = v627;
        v630 = v230;
LABEL_263:
        sub_1B71A7A34(v630, v629);
        goto LABEL_264;
      }

      v609 = *(v608->i64 + v606);
      v610 = v608;
      v236 = v757;
      sub_1B71A6024(v610, v757, type metadata accessor for PredictedTransaction);
      v611 = _s10FinanceKit20PredictedTransactionV2eeoiySbAC_ACtFZ_0(v230, v236);
      sub_1B71A7A34(v230, type metadata accessor for PredictedTransaction);
      if (v611)
      {
        v238 = sub_1B72F48EC(v607, v609);

        v239 = type metadata accessor for PredictedTransaction;
LABEL_230:
        sub_1B71A7A34(v236, v239);
        goto LABEL_334;
      }

      v631 = type metadata accessor for PredictedTransaction;
LABEL_312:
      sub_1B71A7A34(v236, v631);

LABEL_313:

      goto LABEL_314;
    case 0x38u:
      v244 = v814;
      sub_1B71A5FBC(v208, v814, type metadata accessor for FinanceStore.Message);
      v245 = v828;
      if (swift_getEnumCaseMultiPayload() != 56)
      {
LABEL_216:
        (*(v825 + 8))(v244, v824);
        goto LABEL_264;
      }

      v246 = v825;
      v247 = *(v825 + 32);
      v248 = v750;
LABEL_215:
      v612 = v824;
      v247(v248, v245, v824);
      v238 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      v613 = *(v246 + 8);
      v613(v248, v612);
      v613(v244, v612);
LABEL_334:
      v339 = v208;
      goto LABEL_335;
    case 0x39u:
      if (swift_getEnumCaseMultiPayload() == 57)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Au:
      if (swift_getEnumCaseMultiPayload() == 58)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Bu:
      if (swift_getEnumCaseMultiPayload() == 59)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Cu:
      if (swift_getEnumCaseMultiPayload() == 60)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Du:
      if (swift_getEnumCaseMultiPayload() == 61)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Eu:
      if (swift_getEnumCaseMultiPayload() == 62)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Fu:
      if (swift_getEnumCaseMultiPayload() == 63)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x40u:
      if (swift_getEnumCaseMultiPayload() == 64)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x41u:
      if (swift_getEnumCaseMultiPayload() == 65)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x42u:
      if (swift_getEnumCaseMultiPayload() == 66)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x43u:
      if (swift_getEnumCaseMultiPayload() == 67)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x44u:
      if (swift_getEnumCaseMultiPayload() == 68)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x45u:
      if (swift_getEnumCaseMultiPayload() == 69)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x46u:
      if (swift_getEnumCaseMultiPayload() == 70)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x47u:
      if (swift_getEnumCaseMultiPayload() == 71)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x48u:
      if (swift_getEnumCaseMultiPayload() == 72)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x49u:
      if (swift_getEnumCaseMultiPayload() == 73)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x4Au:
      if (swift_getEnumCaseMultiPayload() == 74)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x4Bu:
      if (swift_getEnumCaseMultiPayload() == 75)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x4Cu:
      if (swift_getEnumCaseMultiPayload() == 76)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    default:
      sub_1B71A5FBC(v208, v204, type metadata accessor for FinanceStore.Message);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_264;
      }

      v211 = *v204 == v828->u8[0];
LABEL_220:
      v238 = v211;
      goto LABEL_334;
  }
}

unint64_t sub_1B762D1FC()
{
  result = qword_1EB999BA8;
  if (!qword_1EB999BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BA8);
  }

  return result;
}

unint64_t sub_1B762D250()
{
  result = qword_1EB999BB0;
  if (!qword_1EB999BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BB0);
  }

  return result;
}

unint64_t sub_1B762D2A4()
{
  result = qword_1EB999BB8;
  if (!qword_1EB999BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BB8);
  }

  return result;
}

unint64_t sub_1B762D2F8()
{
  result = qword_1EDAF9F38;
  if (!qword_1EDAF9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F38);
  }

  return result;
}

unint64_t sub_1B762D34C()
{
  result = qword_1EB999BC8;
  if (!qword_1EB999BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BC8);
  }

  return result;
}

unint64_t sub_1B762D3A0()
{
  result = qword_1EB999BD0;
  if (!qword_1EB999BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BD0);
  }

  return result;
}

unint64_t sub_1B762D3F4()
{
  result = qword_1EB999BE0;
  if (!qword_1EB999BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BE0);
  }

  return result;
}

unint64_t sub_1B762D448()
{
  result = qword_1EB999BE8;
  if (!qword_1EB999BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BE8);
  }

  return result;
}

unint64_t sub_1B762D49C()
{
  result = qword_1EB999BF0;
  if (!qword_1EB999BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BF0);
  }

  return result;
}

unint64_t sub_1B762D4F0()
{
  result = qword_1EB999BF8;
  if (!qword_1EB999BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999BF8);
  }

  return result;
}

unint64_t sub_1B762D544()
{
  result = qword_1EB999C00;
  if (!qword_1EB999C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C00);
  }

  return result;
}

unint64_t sub_1B762D598()
{
  result = qword_1EDAF9F40;
  if (!qword_1EDAF9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F40);
  }

  return result;
}

unint64_t sub_1B762D5EC()
{
  result = qword_1EB999C08;
  if (!qword_1EB999C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C08);
  }

  return result;
}

unint64_t sub_1B762D640()
{
  result = qword_1EB999C10;
  if (!qword_1EB999C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C10);
  }

  return result;
}

unint64_t sub_1B762D694()
{
  result = qword_1EB999C18;
  if (!qword_1EB999C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C18);
  }

  return result;
}

unint64_t sub_1B762D6E8()
{
  result = qword_1EB999C20;
  if (!qword_1EB999C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C20);
  }

  return result;
}

unint64_t sub_1B762D73C()
{
  result = qword_1EB999C28;
  if (!qword_1EB999C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C28);
  }

  return result;
}

unint64_t sub_1B762D790()
{
  result = qword_1EB999C30;
  if (!qword_1EB999C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C30);
  }

  return result;
}

unint64_t sub_1B762D7E4()
{
  result = qword_1EB999C40;
  if (!qword_1EB999C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C40);
  }

  return result;
}

unint64_t sub_1B762D838()
{
  result = qword_1EB999C48;
  if (!qword_1EB999C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C48);
  }

  return result;
}

unint64_t sub_1B762D88C()
{
  result = qword_1EB999C50;
  if (!qword_1EB999C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C50);
  }

  return result;
}

unint64_t sub_1B762D8E0()
{
  result = qword_1EB999C58;
  if (!qword_1EB999C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C58);
  }

  return result;
}

unint64_t sub_1B762D934()
{
  result = qword_1EB999C60;
  if (!qword_1EB999C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C60);
  }

  return result;
}

unint64_t sub_1B762D988()
{
  result = qword_1EB999C68;
  if (!qword_1EB999C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C68);
  }

  return result;
}

unint64_t sub_1B762D9DC()
{
  result = qword_1EB999C70;
  if (!qword_1EB999C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C70);
  }

  return result;
}

unint64_t sub_1B762DA30()
{
  result = qword_1EB999C78;
  if (!qword_1EB999C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993118);
    sub_1B71A6B1C(&unk_1EB99E230, type metadata accessor for InternalTransaction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C78);
  }

  return result;
}

unint64_t sub_1B762DAE4()
{
  result = qword_1EB999C80;
  if (!qword_1EB999C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C80);
  }

  return result;
}

unint64_t sub_1B762DB38()
{
  result = qword_1EDAF9118;
  if (!qword_1EDAF9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9118);
  }

  return result;
}

unint64_t sub_1B762DB8C()
{
  result = qword_1EDAF7070[0];
  if (!qword_1EDAF7070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAF7070);
  }

  return result;
}

unint64_t sub_1B762DBE0()
{
  result = qword_1EDAF9F58;
  if (!qword_1EDAF9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F58);
  }

  return result;
}

unint64_t sub_1B762DC34()
{
  result = qword_1EB999C88;
  if (!qword_1EB999C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C88);
  }

  return result;
}

unint64_t sub_1B762DC88()
{
  result = qword_1EB999C90;
  if (!qword_1EB999C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C90);
  }

  return result;
}

unint64_t sub_1B762DCDC()
{
  result = qword_1EB999C98;
  if (!qword_1EB999C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999C98);
  }

  return result;
}

unint64_t sub_1B762DD30()
{
  result = qword_1EB999CA0;
  if (!qword_1EB999CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CA0);
  }

  return result;
}

unint64_t sub_1B762DD84()
{
  result = qword_1EB999CB0;
  if (!qword_1EB999CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CB0);
  }

  return result;
}

unint64_t sub_1B762DDD8()
{
  result = qword_1EB999CC0;
  if (!qword_1EB999CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CC0);
  }

  return result;
}

unint64_t sub_1B762DE2C()
{
  result = qword_1EB999CC8;
  if (!qword_1EB999CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CC8);
  }

  return result;
}

unint64_t sub_1B762DE80()
{
  result = qword_1EDAF9F48;
  if (!qword_1EDAF9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F48);
  }

  return result;
}

unint64_t sub_1B762DED4()
{
  result = qword_1EB999CD0;
  if (!qword_1EB999CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CD0);
  }

  return result;
}

unint64_t sub_1B762DF28()
{
  result = qword_1EB999CD8;
  if (!qword_1EB999CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CD8);
  }

  return result;
}

unint64_t sub_1B762DF7C()
{
  result = qword_1EB999CE0;
  if (!qword_1EB999CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CE0);
  }

  return result;
}

unint64_t sub_1B762DFD0()
{
  result = qword_1EB999CE8;
  if (!qword_1EB999CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CE8);
  }

  return result;
}

unint64_t sub_1B762E024()
{
  result = qword_1EDAF9F60;
  if (!qword_1EDAF9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F60);
  }

  return result;
}

unint64_t sub_1B762E078()
{
  result = qword_1EDAF9F28;
  if (!qword_1EDAF9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F28);
  }

  return result;
}

unint64_t sub_1B762E0CC()
{
  result = qword_1EDAF9F30;
  if (!qword_1EDAF9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F30);
  }

  return result;
}

unint64_t sub_1B762E120()
{
  result = qword_1EB999CF0;
  if (!qword_1EB999CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CF0);
  }

  return result;
}

unint64_t sub_1B762E174()
{
  result = qword_1EB999CF8;
  if (!qword_1EB999CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999CF8);
  }

  return result;
}

unint64_t sub_1B762E1C8()
{
  result = qword_1EB999D00;
  if (!qword_1EB999D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D00);
  }

  return result;
}

unint64_t sub_1B762E21C()
{
  result = qword_1EB999D08;
  if (!qword_1EB999D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D08);
  }

  return result;
}

unint64_t sub_1B762E270()
{
  result = qword_1EB999D10;
  if (!qword_1EB999D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D10);
  }

  return result;
}

unint64_t sub_1B762E2C4()
{
  result = qword_1EB999D18;
  if (!qword_1EB999D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D18);
  }

  return result;
}

unint64_t sub_1B762E318()
{
  result = qword_1EB999D20;
  if (!qword_1EB999D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D20);
  }

  return result;
}

unint64_t sub_1B762E36C()
{
  result = qword_1EB99D170;
  if (!qword_1EB99D170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB999D28);
    sub_1B71A6B1C(&qword_1EB999D30, type metadata accessor for FoundInMailItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D170);
  }

  return result;
}

unint64_t sub_1B762E420()
{
  result = qword_1EB999D38;
  if (!qword_1EB999D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D38);
  }

  return result;
}

unint64_t sub_1B762E474()
{
  result = qword_1EB999D40;
  if (!qword_1EB999D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D40);
  }

  return result;
}

unint64_t sub_1B762E4C8()
{
  result = qword_1EB999D48;
  if (!qword_1EB999D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D48);
  }

  return result;
}

unint64_t sub_1B762E51C()
{
  result = qword_1EB999D50;
  if (!qword_1EB999D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D50);
  }

  return result;
}

unint64_t sub_1B762E570()
{
  result = qword_1EB999D58;
  if (!qword_1EB999D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D58);
  }

  return result;
}

unint64_t sub_1B762E5C4()
{
  result = qword_1EB999D60;
  if (!qword_1EB999D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D60);
  }

  return result;
}

unint64_t sub_1B762E618()
{
  result = qword_1EB999D68;
  if (!qword_1EB999D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D68);
  }

  return result;
}

unint64_t sub_1B762E66C()
{
  result = qword_1EB999D70;
  if (!qword_1EB999D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D70);
  }

  return result;
}

uint64_t sub_1B762E6C0(uint64_t a1, unint64_t a2)
{
  if (a2 != 19)
  {
    return sub_1B73D0018(a1, a2);
  }

  return a1;
}

unint64_t sub_1B762E6D0()
{
  result = qword_1EB999D78;
  if (!qword_1EB999D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D78);
  }

  return result;
}

unint64_t sub_1B762E724()
{
  result = qword_1EB999D80;
  if (!qword_1EB999D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D80);
  }

  return result;
}

unint64_t sub_1B762E778()
{
  result = qword_1EB999D88;
  if (!qword_1EB999D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D88);
  }

  return result;
}

unint64_t sub_1B762E7CC()
{
  result = qword_1EB999D90;
  if (!qword_1EB999D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D90);
  }

  return result;
}

unint64_t sub_1B762E820()
{
  result = qword_1EB999D98;
  if (!qword_1EB999D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999D98);
  }

  return result;
}

unint64_t sub_1B762E874()
{
  result = qword_1EB999DA0;
  if (!qword_1EB999DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DA0);
  }

  return result;
}

unint64_t sub_1B762E8C8()
{
  result = qword_1EB999DA8;
  if (!qword_1EB999DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DA8);
  }

  return result;
}

unint64_t sub_1B762E91C()
{
  result = qword_1EB999DB0;
  if (!qword_1EB999DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DB0);
  }

  return result;
}

unint64_t sub_1B762E970()
{
  result = qword_1EB999DB8;
  if (!qword_1EB999DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DB8);
  }

  return result;
}

unint64_t sub_1B762E9C4()
{
  result = qword_1EB999DC0;
  if (!qword_1EB999DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DC0);
  }

  return result;
}

unint64_t sub_1B762EA18()
{
  result = qword_1EB999DC8;
  if (!qword_1EB999DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DC8);
  }

  return result;
}

unint64_t sub_1B762EA6C()
{
  result = qword_1EB999DD0;
  if (!qword_1EB999DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DD0);
  }

  return result;
}

unint64_t sub_1B762EAC0()
{
  result = qword_1EB999DD8;
  if (!qword_1EB999DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DD8);
  }

  return result;
}

unint64_t sub_1B762EB14()
{
  result = qword_1EB999DE0;
  if (!qword_1EB999DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DE0);
  }

  return result;
}

unint64_t sub_1B762EB68()
{
  result = qword_1EB999DE8;
  if (!qword_1EB999DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DE8);
  }

  return result;
}

unint64_t sub_1B762EBBC()
{
  result = qword_1EB999DF0;
  if (!qword_1EB999DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DF0);
  }

  return result;
}

unint64_t sub_1B762EC10()
{
  result = qword_1EB999DF8;
  if (!qword_1EB999DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999DF8);
  }

  return result;
}

unint64_t sub_1B762EC64()
{
  result = qword_1EB999E00;
  if (!qword_1EB999E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999E00);
  }

  return result;
}

unint64_t sub_1B762ECB8()
{
  result = qword_1EDAF9F68;
  if (!qword_1EDAF9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F68);
  }

  return result;
}

unint64_t sub_1B762ED0C()
{
  result = qword_1EB999E08;
  if (!qword_1EB999E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999E08);
  }

  return result;
}

unint64_t sub_1B762ED60()
{
  result = qword_1EB999E10;
  if (!qword_1EB999E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999E10);
  }

  return result;
}

unint64_t sub_1B762EDB4()
{
  result = qword_1EB999E18;
  if (!qword_1EB999E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999E18);
  }

  return result;
}

unint64_t sub_1B762EE08()
{
  result = qword_1EB99A0A0;
  if (!qword_1EB99A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993118);
    sub_1B71A6B1C(&unk_1EB99E270, type metadata accessor for InternalTransaction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A0A0);
  }

  return result;
}

unint64_t sub_1B762EEBC()
{
  result = qword_1EDAF9110;
  if (!qword_1EDAF9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9110);
  }

  return result;
}

unint64_t sub_1B762EF10()
{
  result = qword_1EDAF7068;
  if (!qword_1EDAF7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7068);
  }

  return result;
}

unint64_t sub_1B762EF64()
{
  result = qword_1EB99A0B0;
  if (!qword_1EB99A0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB999D28);
    sub_1B71A6B1C(&unk_1EB99D190, type metadata accessor for FoundInMailItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A0B0);
  }

  return result;
}

unint64_t sub_1B762F018()
{
  result = qword_1EB99A0B8;
  if (!qword_1EB99A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A0B8);
  }

  return result;
}

unint64_t sub_1B762F06C()
{
  result = qword_1EB99A0C0;
  if (!qword_1EB99A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A0C0);
  }

  return result;
}

unint64_t sub_1B762F0C0()
{
  result = qword_1EB99A0C8;
  if (!qword_1EB99A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A0C8);
  }

  return result;
}

uint64_t sub_1B762F164()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FinanceStore.Reply.Failure();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B762F1E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 25;
  if (*(v3 + 64) > 0x19uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1B762F2FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x19)
  {
    v5 = 25;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1B762F4B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B762F4FC()
{
  sub_1B762FC94();
  if (v0 <= 0x3F)
  {
    sub_1B7630040(319, &unk_1EDAFC498);
    if (v1 <= 0x3F)
    {
      sub_1B7630040(319, &unk_1EDAFCF00);
      if (v2 <= 0x3F)
      {
        sub_1B7630664(319, qword_1EDAFD0F8, type metadata accessor for TimeWindow);
        if (v3 <= 0x3F)
        {
          sub_1B762FD0C();
          if (v4 <= 0x3F)
          {
            sub_1B762FD3C();
            if (v5 <= 0x3F)
            {
              sub_1B7630040(319, &qword_1EDAFC970);
              if (v6 <= 0x3F)
              {
                sub_1B7630664(319, &qword_1EDAFC640, MEMORY[0x1E6969530]);
                if (v7 <= 0x3F)
                {
                  sub_1B762FDBC(319);
                  if (v8 <= 0x3F)
                  {
                    sub_1B7630664(319, &qword_1EDAFC630, MEMORY[0x1E69695A8]);
                    if (v9 <= 0x3F)
                    {
                      sub_1B7630040(319, &qword_1EDAFC5E8);
                      if (v10 <= 0x3F)
                      {
                        sub_1B76305F4(319, &qword_1EDAFC580, MEMORY[0x1E6969530]);
                        if (v11 <= 0x3F)
                        {
                          sub_1B762FF54();
                          if (v12 <= 0x3F)
                          {
                            sub_1B762FF84();
                            if (v13 <= 0x3F)
                            {
                              sub_1B7630010();
                              if (v14 <= 0x3F)
                              {
                                sub_1B7630040(319, &qword_1EDAFC600);
                                if (v15 <= 0x3F)
                                {
                                  sub_1B7630098();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1B75E8EFC(319, &qword_1EDAFC578, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1B7630664(319, &qword_1EDAFC628, MEMORY[0x1E6969770]);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1B763010C();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1B7630174(319, &qword_1EDAFC598, &qword_1EB98F708);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1B7630174(319, &qword_1EB99A0D8, &qword_1EB99A0E0);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1B76301E4();
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1B76305F4(319, &qword_1EDAFC618, MEMORY[0x1E6969530]);
                                                if (v23 <= 0x3F)
                                                {
                                                  type metadata accessor for BankCredential(319);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1B7630664(319, &qword_1EDAFC5A0, sub_1B7630214);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1B763026C();
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_1B7630300(319);
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_1B7630664(319, &qword_1EDAFC5B0, sub_1B7630440);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_1B76304A4();
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_1B763054C(319, qword_1EDAFCD88, &qword_1EB997138);
                                                              if (v30 <= 0x3F)
                                                              {
                                                                sub_1B763051C();
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_1B763054C(319, &qword_1EDAFCD80, &qword_1EB990B80);
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_1B76305C4();
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_1B76305F4(319, &qword_1EDAFC570, MEMORY[0x1E69695A8]);
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        sub_1B76305F4(319, &qword_1EDAFC560, MEMORY[0x1E69695A8]);
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          sub_1B76305F4(319, &qword_1EDAFC568, MEMORY[0x1E69695A8]);
                                                                          if (v36 <= 0x3F)
                                                                          {
                                                                            sub_1B7630664(319, &qword_1EDAFC638, MEMORY[0x1E69695A8]);
                                                                            if (v37 <= 0x3F)
                                                                            {
                                                                              sub_1B763072C(319, &qword_1EDAFC5C0);
                                                                              if (v38 <= 0x3F)
                                                                              {
                                                                                sub_1B75E8EFC(319, &qword_1EDAFC5D8, &type metadata for FinanceStore.BackgroundDataType, MEMORY[0x1E69E62F8]);
                                                                                if (v39 <= 0x3F)
                                                                                {
                                                                                  sub_1B76306B0();
                                                                                  if (v40 <= 0x3F)
                                                                                  {
                                                                                    sub_1B763072C(319, &qword_1EDAFC5D0);
                                                                                    if (v41 <= 0x3F)
                                                                                    {
                                                                                      sub_1B76307A0(319, qword_1EDAFCA28, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
                                                                                      if (v42 <= 0x3F)
                                                                                      {
                                                                                        sub_1B77FFA18();
                                                                                        if (v43 <= 0x3F)
                                                                                        {
                                                                                          sub_1B76307A0(319, qword_1EDAFC988, type metadata accessor for FinHealthTransactionInsight.Income);
                                                                                          if (v44 <= 0x3F)
                                                                                          {
                                                                                            sub_1B76307A0(319, qword_1EDAFCB88, type metadata accessor for PredictedTransaction);
                                                                                            if (v45 <= 0x3F)
                                                                                            {
                                                                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B762FC94()
{
  if (!qword_1EDAFC980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98EBD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDAFC980);
    }
  }
}