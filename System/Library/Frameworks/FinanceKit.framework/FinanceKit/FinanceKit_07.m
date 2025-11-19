uint64_t sub_1B724FF68(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedInternalTransaction();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9904E8, &unk_1B783B780, type metadata accessor for ManagedInternalTransaction, sub_1B76B288C);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B288C(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedInternalTransaction();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B288C, type metadata accessor for ManagedInternalTransaction, &qword_1EB9904E8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B72501F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedCascadeExtractedOrderEmail();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990490, &unk_1B7859BC0, type metadata accessor for ManagedCascadeExtractedOrderEmail, sub_1B76B28A0);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B28A0(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedCascadeExtractedOrderEmail();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B28A0, type metadata accessor for ManagedCascadeExtractedOrderEmail, &qword_1EB990490);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7250478(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990478, &unk_1B780C368, type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment, sub_1B76B28B4);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B28B4(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B28B4, type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment, &qword_1EB990478);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7250700(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedCascadeExtractedOrderTransaction();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990460, &unk_1B7859BB0, type metadata accessor for ManagedCascadeExtractedOrderTransaction, sub_1B76B28C8);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B28C8(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedCascadeExtractedOrderTransaction();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B28C8, type metadata accessor for ManagedCascadeExtractedOrderTransaction, &qword_1EB990460);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B72509B8(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_1B78022F8();
  v15 = a2;
  if (a2)
  {
    v5 = 0xEE00617461642D6CLL;
  }

  else
  {
    v5 = 0xED0000617461446CLL;
  }

  sub_1B7800798();

  v6 = sub_1B7802368();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8) ? 0xEE00617461642D6CLL : 0xED0000617461446CLL;
      if (v10 == v5)
      {
        break;
      }

      v11 = sub_1B78020F8();

      if (v11)
      {
        goto LABEL_14;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_14:
    result = 0;
    v13 = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v16;
    v13 = v15 & 1;
    sub_1B72553EC(v15 & 1, v8, isUniquelyReferenced_nonNull_native);
    *v16 = v18;
    result = 1;
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1B7250B64(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v50 = *a2;
  v51 = v5;
  v52 = *(a2 + 32);
  v53 = *(a2 + 48);
  sub_1B78022F8();
  Order.ShippingRecipient.hash(into:)();
  v6 = sub_1B7802368();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  v40 = a2;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = v4;
    v11 = ~v8;
    v12 = *(a2 + 8);
    v48 = *a2;
    v13 = *(a2 + 24);
    v44 = *(a2 + 16);
    v42 = *(a2 + 32);
    v45 = *(a2 + 40);
    v46 = v4;
    v43 = *(a2 + 48);
    v47 = v13;
    do
    {
      v14 = (*(v10 + 48) + 56 * v9);
      v15 = v14[1];
      v16 = v14[2];
      v18 = v14[3];
      v17 = v14[4];
      v20 = v14[5];
      v19 = v14[6];
      if (v15)
      {
        if (!v12)
        {
          goto LABEL_4;
        }

        if (*v14 != v48 || v15 != v12)
        {
          v22 = sub_1B78020F8();
          v10 = v46;
          v13 = v47;
          if ((v22 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v12)
      {
        goto LABEL_4;
      }

      if (v18)
      {
        if (!v13)
        {
          goto LABEL_4;
        }

        if (v16 != v44 || v18 != v13)
        {
          v24 = sub_1B78020F8();
          v10 = v46;
          v13 = v47;
          if ((v24 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v13)
      {
        goto LABEL_4;
      }

      if (v20)
      {
        if (!v45)
        {
          goto LABEL_4;
        }

        if (v17 != v42 || v20 != v45)
        {
          v26 = sub_1B78020F8();
          v10 = v46;
          v13 = v47;
          if ((v26 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v45)
      {
        goto LABEL_4;
      }

      if (v19)
      {
        if (v43)
        {
          sub_1B7205540(0, &qword_1EDAFAF20);

          v27 = v19;
          v28 = v43;
          v29 = v27;

          v30 = sub_1B7801558();

          v10 = v46;
          v13 = v47;
          if (v30)
          {
LABEL_35:
            v31 = v10;
            sub_1B72633F0(v40);
            v32 = *(v31 + 48) + 56 * v9;
            v34 = *(v32 + 40);
            v33 = *(v32 + 48);
            *a1 = *v32;
            *(a1 + 8) = *(v32 + 8);
            *(a1 + 24) = *(v32 + 24);
            *(a1 + 40) = v34;
            *(a1 + 48) = v33;
            v35 = v33;

            return 0;
          }
        }
      }

      else if (!v43)
      {
        goto LABEL_35;
      }

LABEL_4:
      v9 = (v9 + 1) & v11;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v50 = *v39;
  sub_1B7263394(v40, v49);
  sub_1B72555DC(v40, v9, isUniquelyReferenced_nonNull_native);
  *v39 = v50;
  v38 = *(v40 + 16);
  *a1 = *v40;
  *(a1 + 16) = v38;
  *(a1 + 32) = *(v40 + 32);
  *(a1 + 48) = *(v40 + 48);
  return 1;
}

uint64_t sub_1B7250ED0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedFoundInMailItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990338, &unk_1B780C228, type metadata accessor for ManagedFoundInMailItem, sub_1B76B2EEC);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2EEC(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedFoundInMailItem();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2EEC, type metadata accessor for ManagedFoundInMailItem, &qword_1EB990338);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7251158(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedFoundInMailItemOrderDetails();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990370, &unk_1B780C298, type metadata accessor for ManagedFoundInMailItemOrderDetails, sub_1B76B2F00);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2F00(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedFoundInMailItemOrderDetails();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2F00, type metadata accessor for ManagedFoundInMailItemOrderDetails, &qword_1EB990370);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B72513E0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedSpotlightUniqueIdentifier();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990378, &unk_1B780C2A0, type metadata accessor for ManagedSpotlightUniqueIdentifier, sub_1B76B2F14);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B2F14(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedSpotlightUniqueIdentifier();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B2F14, type metadata accessor for ManagedSpotlightUniqueIdentifier, &qword_1EB990378);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7251668(uint64_t a1, void *a2)
{
  v4 = *v2;
  sub_1B78022F8();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  sub_1B7800798();
  v41 = v8;
  sub_1B7802318();
  if (v8)
  {
    sub_1B7800798();
  }

  v36 = a2;
  v39 = a2[5];
  v40 = a2[4];
  sub_1B7800798();
  v9 = sub_1B7802368();
  v10 = v4 + 56;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v38 = v7;
    v13 = ~v11;
    v34 = v4;
    v14 = *(v4 + 48);
    v15 = v8;
    do
    {
      v16 = (v14 + 48 * v12);
      v17 = v16[2];
      v18 = v16[3];
      v19 = v16[4];
      v20 = v16[5];
      if (*v16 != v5 || v16[1] != v6)
      {
        v22 = sub_1B78020F8();
        v15 = v41;
        if ((v22 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v18)
      {
        if (!v15)
        {
          goto LABEL_6;
        }

        if (v17 != v38 || v18 != v15)
        {
          v24 = sub_1B78020F8();
          v15 = v41;
          if ((v24 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v15)
      {
        goto LABEL_6;
      }

      v25 = v19 == v40 && v20 == v39;
      if (v25 || (v26 = sub_1B78020F8(), v15 = v41, (v26 & 1) != 0))
      {
        sub_1B72632D8(v36);
        v27 = *(v34 + 48) + 48 * v12;
        v28 = *(v27 + 8);
        v29 = *(v27 + 16);
        v30 = *(v27 + 40);
        *a1 = *v27;
        *(a1 + 8) = v28;
        *(a1 + 16) = v29;
        *(a1 + 24) = *(v27 + 24);
        *(a1 + 40) = v30;

        return 0;
      }

LABEL_6:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v35;
  sub_1B723C3C4(v36, v43);
  sub_1B7255924(v36, v12, isUniquelyReferenced_nonNull_native);
  *v35 = v42;
  v33 = v36[1];
  *a1 = *v36;
  *(a1 + 16) = v33;
  *(a1 + 32) = v36[2];
  return 1;
}

uint64_t sub_1B72518E0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *v2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  v79 = *(a2 + 3);
  v80 = v6;
  v81 = a2[80];
  v7 = *(a2 + 1);
  v76 = *a2;
  v77 = v7;
  v78 = v5;
  sub_1B78022F8();
  FoundInMailItem.OrderDetails.hash(into:)();
  v8 = sub_1B7802368();
  v9 = v4 + 56;
  v10 = -1 << *(v4 + 32);
  v11 = v8 & ~v10;
  v62 = a2;
  if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a2;
    v57 = a2[80];
    v14 = *(a2 + 2);
    v73 = v14;
    v74 = *(a2 + 1);
    v15 = *(a2 + 4);
    v67 = a2[40];
    v59 = *(a2 + 6);
    v66 = *(a2 + 7);
    v58 = *(a2 + 8);
    v60 = *(a2 + 9);
    v56 = v4;
    v16 = *(v4 + 48);
    v71 = v4 + 56;
    v72 = v15;
    v64 = *(a2 + 3);
    v65 = v16;
    do
    {
      v17 = (v16 + 88 * v11);
      if (*v17 != v13)
      {
        goto LABEL_4;
      }

      v18 = *(v17 + 2);
      v19 = *(v17 + 3);
      v20 = *(v17 + 4);
      v21 = v17[40];
      v23 = *(v17 + 6);
      v22 = *(v17 + 7);
      v25 = *(v17 + 8);
      v24 = *(v17 + 9);
      v26 = v17[80];
      if (v18)
      {
        if (!v14)
        {
          goto LABEL_4;
        }

        if (*(v17 + 1) != v74 || v18 != v14)
        {
          v68 = *(v17 + 9);
          v69 = *(v17 + 8);
          v28 = v13;
          v29 = v12;
          v30 = v17[80];
          v31 = *(v17 + 7);
          v32 = *(v17 + 6);
          v33 = sub_1B78020F8();
          v23 = v32;
          v22 = v31;
          v26 = v30;
          v12 = v29;
          v13 = v28;
          v24 = v68;
          v25 = v69;
          v16 = v65;
          v15 = v72;
          v14 = v73;
          v9 = v71;
          if ((v33 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v14)
      {
        goto LABEL_4;
      }

      if (v20)
      {
        if (!v15)
        {
          goto LABEL_4;
        }

        if (v19 != v64 || v20 != v15)
        {
          v35 = v26;
          v36 = v22;
          v70 = v23;
          v37 = sub_1B78020F8();
          v23 = v70;
          v9 = v71;
          v15 = v72;
          v14 = v73;
          if ((v37 & 1) == 0)
          {
            goto LABEL_4;
          }

          v22 = v36;
          v26 = v35;
        }
      }

      else if (v15)
      {
        goto LABEL_4;
      }

      if (v21 == v67)
      {
        if (v22)
        {
          if (!v66)
          {
            goto LABEL_4;
          }

          if (v23 != v59 || v22 != v66)
          {
            v39 = v26;
            v40 = sub_1B78020F8();
            v26 = v39;
            v15 = v72;
            v14 = v73;
            v9 = v71;
            if ((v40 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        else if (v66)
        {
          goto LABEL_4;
        }

        if (v24)
        {
          if (!v60)
          {
            goto LABEL_4;
          }

          if (v25 != v58 || v24 != v60)
          {
            v41 = v26;
            v42 = sub_1B78020F8();
            v15 = v72;
            v14 = v73;
            v9 = v71;
            if ((v42 & 1) == 0)
            {
              goto LABEL_4;
            }

            v26 = v41;
          }
        }

        else if (v60)
        {
          goto LABEL_4;
        }

        if (v26 == v57)
        {
          sub_1B723C4D0(v62);
          v43 = *(v56 + 48) + 88 * v11;
          v44 = *(v43 + 32);
          v45 = *(v43 + 48);
          v46 = *(v43 + 64);
          v81 = *(v43 + 80);
          v79 = v45;
          v80 = v46;
          v47 = *(v43 + 16);
          v76 = *v43;
          v77 = v47;
          v78 = v44;
          v48 = *(v43 + 16);
          *a1 = *v43;
          *(a1 + 16) = v48;
          v49 = *(v43 + 32);
          v50 = *(v43 + 48);
          v51 = *(v43 + 64);
          *(a1 + 80) = *(v43 + 80);
          *(a1 + 48) = v50;
          *(a1 + 64) = v51;
          *(a1 + 32) = v49;
          sub_1B723C474(&v76, v75);
          return 0;
        }
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = *v61;
  sub_1B723C474(v62, &v76);
  sub_1B7255B80(v62, v11, isUniquelyReferenced_nonNull_native);
  *v61 = v75[0];
  v54 = *(v62 + 48);
  *(a1 + 32) = *(v62 + 32);
  *(a1 + 48) = v54;
  *(a1 + 64) = *(v62 + 64);
  *(a1 + 80) = *(v62 + 80);
  v55 = *(v62 + 16);
  result = 1;
  *a1 = *v62;
  *(a1 + 16) = v55;
  return result;
}

uint64_t sub_1B7251CC0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedOrderLineItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990320, &unk_1B7859B80, type metadata accessor for ManagedOrderLineItem, sub_1B76B361C);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B361C(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedOrderLineItem();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B361C, type metadata accessor for ManagedOrderLineItem, &qword_1EB990320);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7251F48(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_1B78022F8();
  CascadeExtractedOrder.OrderEmail.hash(into:)();
  v10 = sub_1B7802368();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1B7263498(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      v15 = _s10FinanceKit21CascadeExtractedOrderV0E5EmailV2eeoiySbAE_AEtFZ_0(v8, a2);
      sub_1B7263500(v8, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1B7263500(a2, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    sub_1B7263498(*(v9 + 48) + v14 * v12, v19, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B7263498(a2, v8, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    v20 = *v3;
    sub_1B7255F40(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_1B726332C(a2, v17, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    return 1;
  }
}

uint64_t sub_1B72521B8(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t *a5)
{
  v11 = *v5;
  sub_1B78022F8();
  sub_1B7802328();
  v12 = sub_1B7802368();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1B7256184(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B72522E0(uint64_t a1, uint64_t a2)
{
  v49 = *v2;
  sub_1B78022F8();
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 64);
  v66 = *(a2 + 48);
  v67 = v11;
  v68 = *(a2 + 80);
  v51 = v5;
  sub_1B7800798();
  v50 = v7;
  sub_1B7800798();
  *&v48 = v10;
  *(&v48 + 1) = v9;
  sub_1B7800798();
  v46 = a2;
  v45 = v2;
  if (v68)
  {
    if (v68 == 1)
    {
      MEMORY[0x1B8CA6620](1);
      goto LABEL_7;
    }

    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1B8CA6620](v12);
  sub_1B7800798();
LABEL_7:
  sub_1B7800798();
  v13 = sub_1B7802368();
  v14 = -1 << *(v49 + 32);
  v15 = v13 & ~v14;
  if ((*(v49 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v47 = v6;
    while (1)
    {
      v27 = *(v49 + 48) + 88 * v15;
      v28 = *(v27 + 16);
      v60 = *v27;
      v61 = v28;
      v30 = *(v27 + 48);
      v29 = *(v27 + 64);
      v31 = *(v27 + 32);
      v65 = *(v27 + 80);
      v63 = v30;
      v64 = v29;
      v62 = v31;
      if (v60 == __PAIR128__(v51, v6) || (sub_1B78020F8()) && (v61 == __PAIR128__(v8, v50) || (sub_1B78020F8()) && (__PAIR128__(v62, *(&v62 + 1)) == v48 || (sub_1B78020F8()))
      {
        v18 = *(&v63 + 1);
        v17 = v63;
        v19 = v8;
        v20 = *(&v64 + 1);
        v21 = v64;
        v22 = v16;
        v23 = v65;
        v52 = v63;
        v53 = v64;
        v54 = v65;
        v57 = v66;
        v58 = v67;
        v59 = v68;
        sub_1B72630FC(&v60, v55);
        v24 = v21;
        v8 = v19;
        v25 = v20;
        v6 = v47;
        v26 = v23;
        v16 = v22;
        sub_1B7263158(v17, v18, v24, v25, v26);
        sub_1B72631C0(&v66, v55);
        LOBYTE(v17) = _s10FinanceKit31ExtractedOrderFoundInMailBannerV16UniqueIdentifierO2eeoiySbAE_AEtFZ_0(&v52, &v57);
        sub_1B726321C(v57, *(&v57 + 1), v58, *(&v58 + 1), v59);
        sub_1B726321C(v52, *(&v52 + 1), v53, *(&v53 + 1), v54);
        sub_1B7263284(&v60);
        if (v17)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v49 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_1B7263284(v46);
    v36 = *(v49 + 48) + 88 * v15;
    v37 = *(v36 + 32);
    v38 = *(v36 + 48);
    v39 = *(v36 + 64);
    v56 = *(v36 + 80);
    v55[3] = v38;
    v55[4] = v39;
    v40 = *(v36 + 16);
    v55[0] = *v36;
    v55[1] = v40;
    v55[2] = v37;
    v41 = *(v36 + 16);
    *a1 = *v36;
    *(a1 + 16) = v41;
    v42 = *(v36 + 32);
    v43 = *(v36 + 48);
    v44 = *(v36 + 64);
    *(a1 + 80) = *(v36 + 80);
    *(a1 + 48) = v43;
    *(a1 + 64) = v44;
    *(a1 + 32) = v42;
    sub_1B72630FC(v55, &v52);
    return 0;
  }

  else
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55[0] = *v45;
    sub_1B72630FC(v46, &v60);
    sub_1B72562F0(v46, v15, isUniquelyReferenced_nonNull_native);
    *v45 = *&v55[0];
    v33 = *(v46 + 48);
    *(a1 + 32) = *(v46 + 32);
    *(a1 + 48) = v33;
    *(a1 + 64) = *(v46 + 64);
    *(a1 + 80) = *(v46 + 80);
    v34 = *(v46 + 16);
    result = 1;
    *a1 = *v46;
    *(a1 + 16) = v34;
  }

  return result;
}

uint64_t sub_1B72526A8(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  v10 = sub_1B7802368();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1B7263498(*(v9 + 48) + v14 * v12, v8, type metadata accessor for MapsSuggestionsOrderPickup);
      v15 = _s10FinanceKit26MapsSuggestionsOrderPickupV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1B7263500(v8, type metadata accessor for MapsSuggestionsOrderPickup);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1B7263500(a2, type metadata accessor for MapsSuggestionsOrderPickup);
    sub_1B7263498(*(v9 + 48) + v14 * v12, v19, type metadata accessor for MapsSuggestionsOrderPickup);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B7263498(a2, v8, type metadata accessor for MapsSuggestionsOrderPickup);
    v20 = *v3;
    sub_1B725669C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_1B726332C(a2, v17, type metadata accessor for MapsSuggestionsOrderPickup);
    return 1;
  }
}

uint64_t sub_1B7252908(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B7262E04(&qword_1EB98FF98, 255, MEMORY[0x1E6968FB0]);
  v33 = a2;
  v11 = sub_1B7800758();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1B7262E04(&qword_1EB990310, 255, MEMORY[0x1E6968FB0]);
      v21 = sub_1B7800828();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1B7256900(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1B7252BF0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedExtractedOrderShippingFulfillment();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9902F0, &unk_1B7859B70, type metadata accessor for ManagedExtractedOrderShippingFulfillment, sub_1B76B4500);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B4500(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedExtractedOrderShippingFulfillment();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B4500, type metadata accessor for ManagedExtractedOrderShippingFulfillment, &qword_1EB9902F0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7252E78(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedExtractedOrderTransaction();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB9902D8, &unk_1B780C1E8, type metadata accessor for ManagedExtractedOrderTransaction, sub_1B76B4514);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B4514(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedExtractedOrderTransaction();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B4514, type metadata accessor for ManagedExtractedOrderTransaction, &qword_1EB9902D8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7253100(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      sub_1B7205540(0, &qword_1EB98F930);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72548D8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B4528(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1B7205540(0, &qword_1EB98F930);
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B7256BD0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7253338(__int128 *a1, unsigned __int8 *a2)
{
  v4 = *v2;
  v5 = *(a2 + 3);
  v69 = *(a2 + 2);
  v70 = v5;
  v71 = *(a2 + 4);
  v6 = *(a2 + 1);
  v67 = *a2;
  v68 = v6;
  sub_1B78022F8();
  WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.hash(into:)();
  v7 = sub_1B7802368();
  v8 = v4 + 56;
  v9 = -1 << *(v4 + 32);
  v10 = v7 & ~v9;
  v56 = a2;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a2;
    v61 = a2[40];
    v13 = *(a2 + 2);
    v64 = v13;
    v65 = *(a2 + 1);
    v14 = *(a2 + 4);
    v53 = *(a2 + 6);
    v60 = *(a2 + 7);
    v51 = v4;
    v52 = *(a2 + 8);
    v54 = *(a2 + 9);
    v15 = *(v4 + 48);
    v63 = v14;
    v58 = *(a2 + 3);
    v59 = v15;
    do
    {
      v16 = (v15 + 80 * v10);
      if (*v16 != v12)
      {
        goto LABEL_4;
      }

      v17 = *(v16 + 2);
      v18 = *(v16 + 3);
      v19 = *(v16 + 4);
      v20 = v16[40];
      v21 = *(v16 + 6);
      v22 = *(v16 + 7);
      v24 = *(v16 + 8);
      v23 = *(v16 + 9);
      if (v17)
      {
        if (!v13)
        {
          goto LABEL_4;
        }

        if (*(v16 + 1) != v65 || v17 != v13)
        {
          v62 = *(v16 + 7);
          v26 = v12;
          v27 = v11;
          v28 = v8;
          v29 = *(v16 + 8);
          v30 = *(v16 + 9);
          v31 = *(v16 + 6);
          v32 = sub_1B78020F8();
          v21 = v31;
          v23 = v30;
          v24 = v29;
          v8 = v28;
          v11 = v27;
          v12 = v26;
          v15 = v59;
          v22 = v62;
          v14 = v63;
          v13 = v64;
          if ((v32 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v13)
      {
        goto LABEL_4;
      }

      if (v19)
      {
        if (!v14)
        {
          goto LABEL_4;
        }

        if (v18 != v58 || v19 != v14)
        {
          v34 = v23;
          v35 = v21;
          v36 = sub_1B78020F8();
          v14 = v63;
          v13 = v64;
          if ((v36 & 1) == 0)
          {
            goto LABEL_4;
          }

          v21 = v35;
          v23 = v34;
        }
      }

      else if (v14)
      {
        goto LABEL_4;
      }

      if (v20 == v61)
      {
        if (v22)
        {
          if (!v60)
          {
            goto LABEL_4;
          }

          if (v21 != v53 || v22 != v60)
          {
            v38 = v23;
            v39 = sub_1B78020F8();
            v23 = v38;
            v14 = v63;
            v13 = v64;
            if ((v39 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        else if (v60)
        {
          goto LABEL_4;
        }

        if (v23)
        {
          if (v54)
          {
            if (v24 == v52 && v23 == v54 || (v40 = sub_1B78020F8(), v14 = v63, v13 = v64, (v40 & 1) != 0))
            {
LABEL_39:
              sub_1B723C1C8(v56);
              v41 = (*(v51 + 48) + 80 * v10);
              v67 = *v41;
              v42 = v41[3];
              v43 = v41[4];
              v44 = v41[2];
              v68 = v41[1];
              v69 = v44;
              v70 = v42;
              v71 = v43;
              v45 = v41[3];
              a1[2] = v41[2];
              a1[3] = v45;
              a1[4] = v41[4];
              v46 = v41[1];
              *a1 = *v41;
              a1[1] = v46;
              sub_1B723C16C(&v67, v66);
              return 0;
            }
          }
        }

        else if (!v54)
        {
          goto LABEL_39;
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66[0] = *v55;
  sub_1B723C16C(v56, &v67);
  sub_1B7256D60(v56, v10, isUniquelyReferenced_nonNull_native);
  *v55 = v66[0];
  v49 = v56[3];
  a1[2] = v56[2];
  a1[3] = v49;
  a1[4] = v56[4];
  v50 = v56[1];
  result = 1;
  *a1 = *v56;
  a1[1] = v50;
  return result;
}

uint64_t sub_1B72536C0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedOrderPickupFulfillment();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990290, &unk_1B780C190, type metadata accessor for ManagedOrderPickupFulfillment, sub_1B76B4924);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B4924(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedOrderPickupFulfillment();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B4924, type metadata accessor for ManagedOrderPickupFulfillment, &qword_1EB990290);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7253948(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedOrderShippingFulfillment();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990288, &unk_1B783B730, type metadata accessor for ManagedOrderShippingFulfillment, sub_1B76B4938);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B4938(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedOrderShippingFulfillment();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B4938, type metadata accessor for ManagedOrderShippingFulfillment, &qword_1EB990288);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7253BD0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedOrderReturnLabel();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990248, &unk_1B7859B40, type metadata accessor for ManagedOrderReturnLabel, sub_1B76B494C);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B494C(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedOrderReturnLabel();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B494C, type metadata accessor for ManagedOrderReturnLabel, &qword_1EB990248);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7253E58(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedOrderReceipt();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990260, &unk_1B780C168, type metadata accessor for ManagedOrderReceipt, sub_1B76B4960);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B4960(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedOrderReceipt();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B4960, type metadata accessor for ManagedOrderReceipt, &qword_1EB990260);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B72540E0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedOrderImage();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990278, &unk_1B7859B50, type metadata accessor for ManagedOrderImage, sub_1B76B4974);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B4974(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedOrderImage();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B4974, type metadata accessor for ManagedOrderImage, &qword_1EB990278);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B7254368(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B7801968();

    if (v9)
    {

      type metadata accessor for ManagedOrderReturn();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B7801958();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B72546E8(v7, result + 1, &qword_1EB990280, &unk_1B780C180, type metadata accessor for ManagedOrderReturn, sub_1B76B4988);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B76B4988(v20 + 1);
    }

    v18 = v8;
    sub_1B7254AC8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedOrderReturn();
  v11 = sub_1B7801548();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B725526C(v18, v13, isUniquelyReferenced_nonNull_native, sub_1B76B4988, type metadata accessor for ManagedOrderReturn, &qword_1EB990280);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B7801558();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B72545F0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](a2);
  v6 = sub_1B7802368();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B72570D8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B72546E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v8 = sub_1B7801A18();
    v21 = v8;
    sub_1B7801908();
    if (sub_1B7801988())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          a6(v15 + 1);
        }

        v8 = v21;
        result = sub_1B7801548();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_1B7801988());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t sub_1B72548D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901F8);
    v2 = sub_1B7801A18();
    v15 = v2;
    sub_1B7801908();
    if (sub_1B7801988())
    {
      sub_1B7205540(0, &qword_1EB98F930);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1B76B4528(v9 + 1);
        }

        v2 = v15;
        result = sub_1B7801548();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1B7801988());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1B7254AC8(uint64_t a1, uint64_t a2)
{
  sub_1B7801548();
  result = sub_1B78018E8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B7254B4C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B76B1ED4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B7257238();
      goto LABEL_16;
    }

    sub_1B72585C4();
  }

  v10 = *v4;
  sub_1B78022F8();
  sub_1B7800798();
  result = sub_1B7802368();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B78020F8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

uint64_t sub_1B7254CCC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B77FE748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B76B2134();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B7257F94(MEMORY[0x1E6967E70], &qword_1EB9903E0);
      goto LABEL_12;
    }

    sub_1B72587FC();
  }

  v12 = *v3;
  sub_1B7262E04(&qword_1EB98FFD0, 255, MEMORY[0x1E6967E70]);
  v13 = sub_1B7800758();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1B7262E04(&qword_1EB98F1C8, 255, MEMORY[0x1E6967E70]);
      v21 = sub_1B7800828();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

uint64_t sub_1B7254F9C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B76B2490();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B7257F94(MEMORY[0x1E69695A8], &qword_1EB990230);
      goto LABEL_12;
    }

    sub_1B7258B1C();
  }

  v12 = *v3;
  sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
  v13 = sub_1B7800758();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1B7262E04(&qword_1EB99DBE0, 255, MEMORY[0x1E69695A8]);
      v21 = sub_1B7800828();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

void sub_1B725526C(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t), void (*a5)(void), uint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a5;
    a4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1B7258354(a6);
      goto LABEL_12;
    }

    v11 = a5;
    sub_1B725AB98(v9 + 1, a6);
  }

  v12 = *v6;
  v13 = sub_1B7801548();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_1B7801558();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B78021B8();
  __break(1u);
}

uint64_t sub_1B72553EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v19 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_1B76B28F0();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B72573D0();
      goto LABEL_19;
    }

    sub_1B7258E3C();
  }

  v8 = *v3;
  sub_1B78022F8();
  if (v5)
  {
    v9 = 0xEE00617461642D6CLL;
  }

  else
  {
    v9 = 0xED0000617461446CLL;
  }

  sub_1B7800798();

  result = sub_1B7802368();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + a2) ? 0xEE00617461642D6CLL : 0xED0000617461446CLL;
      if (v12 == v9)
      {
        goto LABEL_22;
      }

      v13 = sub_1B78020F8();

      if (v13)
      {
        goto LABEL_23;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v19 & 1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_22:

LABEL_23:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

void sub_1B72555DC(void *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_43;
  }

  if (a3)
  {
    sub_1B76B2B80();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B7257510();
      goto LABEL_43;
    }

    sub_1B725909C();
  }

  v8 = *v3;
  sub_1B78022F8();
  Order.ShippingRecipient.hash(into:)();
  v9 = sub_1B7802368();
  v10 = v8;
  v11 = v8 + 56;
  v12 = -1 << *(v10 + 32);
  a2 = v9 & ~v12;
  if ((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = a1[1];
    v47 = *a1;
    v15 = a1[3];
    v43 = a1[2];
    v39 = a1[4];
    v44 = a1[5];
    v45 = v10;
    v40 = a1[6];
    v46 = v15;
    do
    {
      v16 = (*(v10 + 48) + 56 * a2);
      v18 = v16[1];
      v17 = v16[2];
      v20 = v16[3];
      v19 = v16[4];
      v22 = v16[5];
      v21 = v16[6];
      if (v18)
      {
        if (!v14)
        {
          goto LABEL_11;
        }

        if (*v16 != v47 || v18 != v14)
        {
          v24 = sub_1B78020F8();
          v10 = v45;
          v15 = v46;
          if ((v24 & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v14)
      {
        goto LABEL_11;
      }

      if (v20)
      {
        if (!v15)
        {
          goto LABEL_11;
        }

        if (v17 != v43 || v20 != v15)
        {
          v26 = sub_1B78020F8();
          v10 = v45;
          v15 = v46;
          if ((v26 & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v15)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        if (!v44)
        {
          goto LABEL_11;
        }

        if (v19 != v39 || v22 != v44)
        {
          v28 = sub_1B78020F8();
          v10 = v45;
          v15 = v46;
          if ((v28 & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v44)
      {
        goto LABEL_11;
      }

      if (v21)
      {
        if (v40)
        {
          sub_1B7205540(0, &qword_1EDAFAF20);

          v29 = v21;
          v30 = v40;
          v31 = v29;

          v32 = sub_1B7801558();

          v10 = v45;
          v15 = v46;
          if (v32)
          {
LABEL_42:
            sub_1B78021B8();
            __break(1u);
            break;
          }
        }
      }

      else if (!v40)
      {
        goto LABEL_42;
      }

LABEL_11:
      a2 = (a2 + 1) & v13;
    }

    while (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_43:
  v33 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v34 = *(v33 + 48) + 56 * a2;
  v35 = *(a1 + 1);
  *v34 = *a1;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a1 + 2);
  *(v34 + 48) = a1[6];
  v36 = *(v33 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v38;
  }
}

uint64_t sub_1B7255924(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v33 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    sub_1B76B2F28();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B72576B0();
      goto LABEL_32;
    }

    sub_1B7259420();
  }

  v8 = *v3;
  sub_1B78022F8();
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  sub_1B7800798();
  v37 = v12;
  sub_1B7802318();
  if (v12)
  {
    sub_1B7800798();
  }

  v35 = v5[5];
  v36 = v5[4];
  sub_1B7800798();
  result = sub_1B7802368();
  v13 = v8 + 56;
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = v11;
    v15 = ~v14;
    v16 = *(v8 + 48);
    v17 = v37;
    do
    {
      v18 = (v16 + 48 * a2);
      result = *v18;
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[4];
      v22 = v18[5];
      if (*v18 != v9 || v18[1] != v10)
      {
        result = sub_1B78020F8();
        v17 = v37;
        if ((result & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (v20)
      {
        if (!v17)
        {
          goto LABEL_13;
        }

        if (v19 != v34 || v20 != v17)
        {
          result = sub_1B78020F8();
          v17 = v37;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v17)
      {
        goto LABEL_13;
      }

      v25 = v21 == v36 && v22 == v35;
      if (v25 || (result = sub_1B78020F8(), v17 = v37, (result & 1) != 0))
      {
        result = sub_1B78021B8();
        __break(1u);
        break;
      }

LABEL_13:
      a2 = (a2 + 1) & v15;
    }

    while (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_32:
  v26 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = (*(v26 + 48) + 48 * a2);
  v28 = v33[1];
  *v27 = *v33;
  v27[1] = v28;
  v27[2] = v33[2];
  v29 = *(v26 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v31;
  }

  return result;
}

uint64_t sub_1B7255B80(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    sub_1B76B320C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B7257844();
      goto LABEL_48;
    }

    sub_1B72596F8();
  }

  v8 = *v3;
  sub_1B78022F8();
  FoundInMailItem.OrderDetails.hash(into:)();
  result = sub_1B7802368();
  v9 = v8 + 56;
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = *v5;
    v46 = v5[80];
    v13 = *(v5 + 2);
    v60 = v13;
    v61 = *(v5 + 1);
    v14 = *(v5 + 4);
    v53 = v5[40];
    v48 = *(v5 + 6);
    v52 = *(v5 + 7);
    v47 = *(v5 + 8);
    v49 = *(v5 + 9);
    v50 = *(v5 + 3);
    v15 = *(v8 + 48);
    v54 = v8 + 56;
    v58 = v14;
    v51 = v15;
    do
    {
      v16 = (v15 + 88 * a2);
      if (*v16 != v12)
      {
        goto LABEL_11;
      }

      v17 = *(v16 + 2);
      v18 = *(v16 + 3);
      v19 = *(v16 + 4);
      v20 = v16[40];
      v22 = *(v16 + 6);
      v21 = *(v16 + 7);
      v23 = *(v16 + 8);
      v24 = *(v16 + 9);
      v25 = v16[80];
      if (v17)
      {
        if (!v13)
        {
          goto LABEL_11;
        }

        result = *(v16 + 1);
        if (result != v61 || v17 != v13)
        {
          v55 = *(v16 + 9);
          v56 = *(v16 + 8);
          v27 = v12;
          v28 = v5;
          v29 = v11;
          v30 = v16[80];
          v31 = *(v16 + 7);
          v32 = *(v16 + 6);
          result = sub_1B78020F8();
          v22 = v32;
          v21 = v31;
          v25 = v30;
          v11 = v29;
          v5 = v28;
          v12 = v27;
          v24 = v55;
          v23 = v56;
          v15 = v51;
          v14 = v58;
          v13 = v60;
          v9 = v54;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v13)
      {
        goto LABEL_11;
      }

      if (v19)
      {
        if (!v14)
        {
          goto LABEL_11;
        }

        if (v18 != v50 || v19 != v14)
        {
          v34 = v25;
          v35 = v21;
          v57 = v22;
          result = sub_1B78020F8();
          v22 = v57;
          v14 = v58;
          v13 = v60;
          v9 = v54;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }

          v21 = v35;
          v25 = v34;
        }
      }

      else if (v14)
      {
        goto LABEL_11;
      }

      if (v20 == v53)
      {
        if (v21)
        {
          if (!v52)
          {
            goto LABEL_11;
          }

          if (v22 != v48 || v21 != v52)
          {
            v37 = v25;
            result = sub_1B78020F8();
            v25 = v37;
            v14 = v58;
            v13 = v60;
            v9 = v54;
            if ((result & 1) == 0)
            {
              goto LABEL_11;
            }
          }
        }

        else if (v52)
        {
          goto LABEL_11;
        }

        if (v24)
        {
          if (!v49)
          {
            goto LABEL_11;
          }

          if (v23 != v47 || v24 != v49)
          {
            v38 = v25;
            result = sub_1B78020F8();
            v14 = v58;
            v13 = v60;
            v9 = v54;
            if ((result & 1) == 0)
            {
              goto LABEL_11;
            }

            v25 = v38;
          }
        }

        else if (v49)
        {
          goto LABEL_11;
        }

        if (v25 == v46)
        {
          result = sub_1B78021B8();
          __break(1u);
          break;
        }
      }

LABEL_11:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v39 = *v59;
  *(*v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v40 = *(v39 + 48) + 88 * a2;
  v41 = *(v5 + 1);
  *v40 = *v5;
  *(v40 + 16) = v41;
  *(v40 + 80) = v5[80];
  v42 = *(v5 + 4);
  *(v40 + 48) = *(v5 + 3);
  *(v40 + 64) = v42;
  *(v40 + 32) = *(v5 + 2);
  v43 = *(v39 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v39 + 16) = v45;
  }

  return result;
}

uint64_t sub_1B7255F40(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1B76B3630();
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B72579E0();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1B7259A74();
  }

  v15 = *v4;
  sub_1B78022F8();
  CascadeExtractedOrder.OrderEmail.hash(into:)();
  v16 = sub_1B7802368();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1B7263498(*(v15 + 48) + v19 * a2, v12, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      v20 = _s10FinanceKit21CascadeExtractedOrderV0E5EmailV2eeoiySbAE_AEtFZ_0(v12, a1);
      sub_1B7263500(v12, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B726332C(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for CascadeExtractedOrder.OrderEmail);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

uint64_t sub_1B7256184(uint64_t result, unint64_t a2, char a3, void (*a4)(uint64_t), uint64_t a5, uint64_t *a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    a4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_1B7258494(a6);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1B7259CDC(v8 + 1, a6);
  }

  v11 = *v6;
  sub_1B78022F8();
  sub_1B7802328();
  result = sub_1B7802368();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

uint64_t sub_1B72562F0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v45 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_1B76B3B28();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B7257BEC();
      goto LABEL_25;
    }

    sub_1B7259EF4();
  }

  v50 = *v3;
  sub_1B78022F8();
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v14 = *(v5 + 64);
  v64 = *(v5 + 48);
  v65 = v14;
  v15 = v12;
  v66 = *(v5 + 80);
  sub_1B7800798();
  sub_1B7800798();
  v49 = v13;
  sub_1B7800798();
  if (v66)
  {
    if (v66 == 1)
    {
      MEMORY[0x1B8CA6620](1);
      goto LABEL_14;
    }

    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1B8CA6620](v16);
  sub_1B7800798();
LABEL_14:
  sub_1B7800798();
  result = sub_1B7802368();
  v17 = v50 + 56;
  v18 = -1 << *(v50 + 32);
  a2 = result & ~v18;
  if ((*(v50 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v47 = v15;
    v48 = v9;
    v46 = ~v18;
    do
    {
      v32 = *(v50 + 48) + 88 * a2;
      v33 = *(v32 + 16);
      v58 = *v32;
      v59 = v33;
      v35 = *(v32 + 48);
      v34 = *(v32 + 64);
      v36 = *(v32 + 32);
      v63 = *(v32 + 80);
      v61 = v35;
      v62 = v34;
      v60 = v36;
      if (v58 == __PAIR128__(v9, v8) || (result = sub_1B78020F8(), (result & 1) != 0))
      {
        if (v59 == __PAIR128__(v11, v10) || (result = sub_1B78020F8(), (result & 1) != 0))
        {
          if (v60 == __PAIR128__(v49, v15) || (result = sub_1B78020F8(), (result & 1) != 0))
          {
            v20 = v17;
            v22 = *(&v61 + 1);
            v21 = v61;
            v23 = v11;
            v24 = v10;
            v25 = *(&v62 + 1);
            v26 = v62;
            v27 = v63;
            v55 = v61;
            v56 = v62;
            v57 = v63;
            v52 = v64;
            v53 = v65;
            v54 = v66;
            sub_1B72630FC(&v58, v51);
            v28 = v22;
            v17 = v20;
            v29 = v26;
            v11 = v23;
            v30 = v25;
            v10 = v24;
            v19 = v46;
            v15 = v47;
            v31 = v27;
            v9 = v48;
            sub_1B7263158(v21, v28, v29, v30, v31);
            sub_1B72631C0(&v64, v51);
            LOBYTE(v21) = _s10FinanceKit31ExtractedOrderFoundInMailBannerV16UniqueIdentifierO2eeoiySbAE_AEtFZ_0(&v55, &v52);
            sub_1B726321C(v52, *(&v52 + 1), v53, *(&v53 + 1), v54);
            sub_1B726321C(v55, *(&v55 + 1), v56, *(&v56 + 1), v57);
            result = sub_1B7263284(&v58);
            if (v21)
            {
              goto LABEL_28;
            }
          }
        }
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v37 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v38 = *(v37 + 48) + 88 * a2;
  v39 = *(v45 + 16);
  *v38 = *v45;
  *(v38 + 16) = v39;
  *(v38 + 80) = *(v45 + 80);
  v40 = *(v45 + 64);
  *(v38 + 48) = *(v45 + 48);
  *(v38 + 64) = v40;
  *(v38 + 32) = *(v45 + 32);
  v41 = *(v37 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (!v42)
  {
    *(v37 + 16) = v43;
    return result;
  }

  __break(1u);
LABEL_28:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

uint64_t sub_1B725669C(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1B76B3E78();
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B7257D88();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1B725A21C();
  }

  v15 = *v4;
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  v16 = sub_1B7802368();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1B7263498(*(v15 + 48) + v19 * a2, v12, type metadata accessor for MapsSuggestionsOrderPickup);
      v20 = _s10FinanceKit26MapsSuggestionsOrderPickupV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1B7263500(v12, type metadata accessor for MapsSuggestionsOrderPickup);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B726332C(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for MapsSuggestionsOrderPickup);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

uint64_t sub_1B7256900(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B76B41A4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B7257F94(MEMORY[0x1E6968FB0], &qword_1EB990318);
      goto LABEL_12;
    }

    sub_1B725A518();
  }

  v12 = *v3;
  sub_1B7262E04(&qword_1EB98FF98, 255, MEMORY[0x1E6968FB0]);
  v13 = sub_1B7800758();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1B7262E04(&qword_1EB990310, 255, MEMORY[0x1E6968FB0]);
      v21 = sub_1B7800828();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

void sub_1B7256BD0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B76B4528(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B7258354(&qword_1EB9901F8);
      goto LABEL_12;
    }

    sub_1B725AB98(v6 + 1, &qword_1EB9901F8);
  }

  v8 = *v3;
  v9 = sub_1B7801548();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1B7205540(0, &qword_1EB98F930);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1B7801558();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B78021B8();
  __break(1u);
}

uint64_t sub_1B7256D60(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v54 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_1B76B453C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B72581CC();
      goto LABEL_47;
    }

    sub_1B725A838();
  }

  v8 = *v3;
  sub_1B78022F8();
  WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.hash(into:)();
  result = sub_1B7802368();
  v9 = v8 + 56;
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = *v5;
    v50 = v5[40];
    v13 = *(v5 + 2);
    v55 = v13;
    v56 = *(v5 + 1);
    v14 = *(v5 + 4);
    v45 = *(v5 + 6);
    v49 = *(v5 + 7);
    v44 = *(v5 + 8);
    v46 = *(v5 + 9);
    v47 = *(v5 + 3);
    v15 = *(v8 + 48);
    v52 = v14;
    v48 = v15;
    do
    {
      v16 = (v15 + 80 * a2);
      if (*v16 != v12)
      {
        goto LABEL_11;
      }

      v17 = *(v16 + 2);
      v18 = *(v16 + 3);
      v19 = *(v16 + 4);
      v20 = v16[40];
      v21 = *(v16 + 6);
      v22 = *(v16 + 7);
      v24 = *(v16 + 8);
      v23 = *(v16 + 9);
      if (v17)
      {
        if (!v13)
        {
          goto LABEL_11;
        }

        result = *(v16 + 1);
        if (result != v56 || v17 != v13)
        {
          v51 = *(v16 + 7);
          v26 = v12;
          v27 = v11;
          v28 = v9;
          v29 = *(v16 + 8);
          v30 = *(v16 + 9);
          v31 = *(v16 + 6);
          result = sub_1B78020F8();
          v21 = v31;
          v23 = v30;
          v24 = v29;
          v9 = v28;
          v11 = v27;
          v12 = v26;
          v15 = v48;
          v22 = v51;
          v14 = v52;
          v13 = v55;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v13)
      {
        goto LABEL_11;
      }

      if (v19)
      {
        if (!v14)
        {
          goto LABEL_11;
        }

        if (v18 != v47 || v19 != v14)
        {
          v33 = v23;
          v34 = v21;
          result = sub_1B78020F8();
          v14 = v52;
          v13 = v55;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }

          v21 = v34;
          v23 = v33;
        }
      }

      else if (v14)
      {
        goto LABEL_11;
      }

      if (v20 == v50)
      {
        if (v22)
        {
          if (!v49)
          {
            goto LABEL_11;
          }

          if (v21 != v45 || v22 != v49)
          {
            v36 = v23;
            result = sub_1B78020F8();
            v23 = v36;
            v14 = v52;
            v13 = v55;
            if ((result & 1) == 0)
            {
              goto LABEL_11;
            }
          }
        }

        else if (v49)
        {
          goto LABEL_11;
        }

        if (v23)
        {
          if (v46)
          {
            if (v24 == v44 && v23 == v46 || (result = sub_1B78020F8(), v14 = v52, v13 = v55, (result & 1) != 0))
            {
LABEL_46:
              result = sub_1B78021B8();
              __break(1u);
              break;
            }
          }
        }

        else if (!v46)
        {
          goto LABEL_46;
        }
      }

LABEL_11:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v37 = *v53;
  *(*v53 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v38 = (*(v37 + 48) + 80 * a2);
  v39 = v54[4];
  v38[3] = v54[3];
  v38[4] = v39;
  v40 = v54[2];
  v38[1] = v54[1];
  v38[2] = v40;
  *v38 = *v54;
  v41 = *(v37 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v43;
  }

  return result;
}

uint64_t sub_1B72570D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B76B4BBC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B7258494(&qword_1EB990220);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B725ADA4();
  }

  v8 = *v3;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v4);
  result = sub_1B7802368();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B78021B8();
  __break(1u);
  return result;
}

void *sub_1B7257238()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990050);
  v2 = *v0;
  v3 = sub_1B78019F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B72573D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990218);
  v2 = *v0;
  v3 = sub_1B78019F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B7257510()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903D0);
  v2 = *v0;
  v3 = sub_1B78019F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 40);
        v19 = *(v18 + 48);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 8);
        v23 = *(v18 + 24);
        *v21 = *v18;
        *(v21 + 8) = v22;
        *(v21 + 24) = v23;
        *(v21 + 40) = v20;
        *(v21 + 48) = v19;
        v24 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B72576B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990360);
  v2 = *v0;
  v3 = sub_1B78019F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 40);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 24);
        *v22 = *v18;
        *(v22 + 8) = v19;
        *(v22 + 16) = v20;
        *(v22 + 24) = v23;
        *(v22 + 40) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B7257844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990368);
  v2 = *v0;
  v3 = sub_1B78019F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1B723C474(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 80);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x51uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B72579E0()
{
  v1 = v0;
  v2 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990340);
  v6 = *v0;
  v7 = sub_1B78019F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1B7263498(*(v6 + 48) + v21, v5, type metadata accessor for CascadeExtractedOrder.OrderEmail);
        result = sub_1B726332C(v5, *(v8 + 48) + v21, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1B7257BEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990348);
  v2 = *v0;
  v3 = sub_1B78019F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1B72630FC(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 80);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x51uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B7257D88()
{
  v1 = v0;
  v2 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990200);
  v6 = *v0;
  v7 = sub_1B78019F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1B7263498(*(v6 + 48) + v21, v5, type metadata accessor for MapsSuggestionsOrderPickup);
        result = sub_1B726332C(v5, *(v8 + 48) + v21, type metadata accessor for MapsSuggestionsOrderPickup);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1B7257F94(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_1B78019F8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_1B72581CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990298);
  v2 = *v0;
  v3 = sub_1B78019F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[4];
        v23[3] = v18[3];
        v23[4] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x50uLL);
        result = sub_1B723C16C(v23, &v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1B7258354(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1B78019F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1B7258494(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1B78019F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B72585C4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990050);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1B78022F8();

      sub_1B7800798();
      result = sub_1B7802368();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B72587FC()
{
  v1 = v0;
  v32 = sub_1B77FE748();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903E0);
  v6 = sub_1B7801A08();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1B7262E04(&qword_1EB98FFD0, 255, MEMORY[0x1E6967E70]);
      result = sub_1B7800758();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B7258B1C()
{
  v1 = v0;
  v32 = sub_1B77FFA18();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990230);
  v6 = sub_1B7801A08();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1B7262E04(&qword_1EB99DAF0, 255, MEMORY[0x1E69695A8]);
      result = sub_1B7800758();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B7258E3C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990218);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1B78022F8();
      sub_1B7800798();

      result = sub_1B7802368();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B725909C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903D0);
  result = sub_1B7801A08();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_36:
    *v1 = v4;
    return result;
  }

  v35 = v1;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v36 = (v7 + 63) >> 6;
  v37 = v2;
  v10 = result + 56;
  v38 = result;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v39 = (v9 - 1) & v9;
LABEL_15:
    v17 = (*(v2 + 48) + 56 * (v14 | (v5 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[3];
    v21 = v17[5];
    v41 = v17[2];
    v42 = v17[4];
    v22 = v17[6];
    sub_1B78022F8();
    v40 = v22;
    if (v19)
    {
      sub_1B7802318();
      v23 = v22;

      v24 = v21;

      v25 = v19;
      sub_1B7800798();
    }

    else
    {
      v25 = 0;
      sub_1B7802318();
      v26 = v22;

      v24 = v21;
    }

    sub_1B7802318();
    if (v20)
    {
      sub_1B7800798();
    }

    if (v24)
    {
      sub_1B7802318();
      sub_1B7800798();
      if (v40)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B7802318();
      if (v40)
      {
LABEL_22:
        sub_1B7802318();
        v27 = v40;
        sub_1B7801568();

        goto LABEL_25;
      }
    }

    sub_1B7802318();
LABEL_25:
    result = sub_1B7802368();
    v4 = v38;
    v28 = -1 << *(v38 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v10 + 8 * (v29 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v28) >> 6;
      v12 = v18;
      while (++v30 != v32 || (v31 & 1) == 0)
      {
        v33 = v30 == v32;
        if (v30 == v32)
        {
          v30 = 0;
        }

        v31 |= v33;
        v34 = *(v10 + 8 * v30);
        if (v34 != -1)
        {
          v11 = __clz(__rbit64(~v34)) + (v30 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_38;
    }

    v11 = __clz(__rbit64((-1 << v29) & ~*(v10 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v12 = v18;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v13 = (*(v38 + 48) + 56 * v11);
    *v13 = v12;
    v13[1] = v25;
    v13[2] = v41;
    v13[3] = v20;
    v13[4] = v42;
    v13[5] = v24;
    v13[6] = v40;
    ++*(v38 + 16);
    v2 = v37;
    v9 = v39;
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v36)
    {

      v1 = v35;
      goto LABEL_36;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B7259420()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990360);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v33 = v0;
    v34 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v35 = result;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v2 + 48) + 48 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v22 = v17[4];
      v23 = v17[5];
      sub_1B78022F8();

      v36 = v19;
      sub_1B7800798();
      if (v20)
      {
        sub_1B7802318();
        v24 = v21;
        sub_1B7800798();
      }

      else
      {
        v24 = v21;
        sub_1B7802318();
      }

      sub_1B7800798();
      result = sub_1B7802368();
      v4 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v35 + 48) + 48 * v12);
      v9 = v37;
      *v13 = v18;
      v13[1] = v36;
      v13[2] = v24;
      v13[3] = v20;
      v13[4] = v22;
      v13[5] = v23;
      ++*(v35 + 16);
      v2 = v34;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        v32 = v4;

        v1 = v33;
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v32 = result;

LABEL_29:
    *v1 = v32;
  }

  return result;
}

uint64_t sub_1B72596F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990368);
  result = sub_1B7801A08();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_36:
    *v1 = v4;
    return result;
  }

  v36 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v18 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_15:
    v21 = *(v2 + 48) + 88 * (v18 | (v5 << 6));
    v23 = *(v21 + 48);
    v22 = *(v21 + 64);
    v24 = *(v21 + 32);
    v44 = *(v21 + 80);
    v42 = v23;
    v43 = v22;
    v41 = v24;
    v25 = *(v21 + 16);
    v39 = *v21;
    v40 = v25;
    sub_1B78022F8();
    v26 = v40;
    sub_1B7802328();
    if (v26)
    {
      sub_1B7802318();
      sub_1B723C474(&v39, v38);
      sub_1B7800798();
      if (v41)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1B7802318();
      sub_1B723C474(&v39, v38);
      if (v41)
      {
LABEL_17:
        sub_1B7802318();
        sub_1B7800798();
        goto LABEL_20;
      }
    }

    sub_1B7802318();
LABEL_20:
    v27 = *(&v42 + 1);
    v28 = *(&v43 + 1);
    sub_1B7802328();
    if (v27)
    {
      sub_1B7802318();
      sub_1B7800798();
      if (v28)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B7802318();
      if (v28)
      {
LABEL_22:
        sub_1B7802318();
        sub_1B7800798();
        goto LABEL_25;
      }
    }

    sub_1B7802318();
LABEL_25:
    v2 = v36;
    sub_1B7802328();
    result = sub_1B7802368();
    v29 = -1 << *(v4 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v11 + 8 * (v30 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v29) >> 6;
      while (++v31 != v33 || (v32 & 1) == 0)
      {
        v34 = v31 == v33;
        if (v31 == v33)
        {
          v31 = 0;
        }

        v32 |= v34;
        v35 = *(v11 + 8 * v31);
        if (v35 != -1)
        {
          v12 = __clz(__rbit64(~v35)) + (v31 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_38;
    }

    v12 = __clz(__rbit64((-1 << v30) & ~*(v11 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 88 * v12;
    v14 = v40;
    *v13 = v39;
    v15 = v41;
    v16 = v42;
    v17 = v43;
    *(v13 + 80) = v44;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    ++*(v4 + 16);
    v9 = v37;
  }

  v19 = v5;
  while (1)
  {
    v5 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_36;
    }

    v20 = *(v6 + 8 * v5);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B7259A74()
{
  v1 = v0;
  v2 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990340);
  result = sub_1B7801A08();
  v7 = result;
  if (*(v5 + 16))
  {
    v20 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v21 + 72);
      sub_1B7263498(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      sub_1B78022F8();
      CascadeExtractedOrder.OrderEmail.hash(into:)();
      sub_1B7802368();
      v18 = sub_1B78018E8();
      *(i + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1B726332C(v4, *(v7 + 48) + v18 * v17, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v20;
        goto LABEL_16;
      }

      v16 = *(v5 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1B7259CDC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1B7801A08();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_1B78022F8();
      sub_1B7802328();
      result = sub_1B7802368();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1B7259EF4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990348);
  result = sub_1B7801A08();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_32:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  v35 = v10;
  v36 = result;
  v37 = v2;
  while (v9)
  {
    v18 = __clz(__rbit64(v9));
    v38 = (v9 - 1) & v9;
LABEL_15:
    v21 = *(v2 + 48) + 88 * (v18 | (v5 << 6));
    v23 = *(v21 + 48);
    v22 = *(v21 + 64);
    v24 = *(v21 + 32);
    v45 = *(v21 + 80);
    v43 = v23;
    v44 = v22;
    v42 = v24;
    v25 = *(v21 + 16);
    v40 = *v21;
    v41 = v25;
    sub_1B78022F8();
    v26 = v45;
    sub_1B72630FC(&v40, v39);
    sub_1B7800798();
    sub_1B7800798();
    sub_1B7800798();
    if (v26)
    {
      if (v26 == 1)
      {
        MEMORY[0x1B8CA6620](1);
        goto LABEL_21;
      }

      v27 = 2;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1B8CA6620](v27);
    sub_1B7800798();
LABEL_21:
    sub_1B7800798();
    v2 = v37;
    result = sub_1B7802368();
    v4 = v36;
    v28 = -1 << *(v36 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v28) >> 6;
      v9 = v38;
      while (++v30 != v32 || (v31 & 1) == 0)
      {
        v33 = v30 == v32;
        if (v30 == v32)
        {
          v30 = 0;
        }

        v31 |= v33;
        v34 = *(v11 + 8 * v30);
        if (v34 != -1)
        {
          v12 = __clz(__rbit64(~v34)) + (v30 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_34;
    }

    v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v9 = v38;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v36 + 48) + 88 * v12;
    v14 = v41;
    *v13 = v40;
    v15 = v42;
    v16 = v43;
    v17 = v44;
    *(v13 + 80) = v45;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    ++*(v36 + 16);
    v10 = v35;
  }

  v19 = v5;
  while (1)
  {
    v5 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      goto LABEL_32;
    }

    v20 = *(v6 + 8 * v5);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v38 = (v20 - 1) & v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B725A21C()
{
  v1 = v0;
  v2 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990200);
  result = sub_1B7801A08();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_1B7263498(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for MapsSuggestionsOrderPickup);
      sub_1B78022F8();
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
      result = sub_1B7802368();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1B726332C(v4, *(v7 + 48) + v15 * v20, type metadata accessor for MapsSuggestionsOrderPickup);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1B725A518()
{
  v1 = v0;
  v32 = sub_1B77FF4F8();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990318);
  v6 = sub_1B7801A08();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1B7262E04(&qword_1EB98FF98, 255, MEMORY[0x1E6968FB0]);
      result = sub_1B7800758();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B725A838()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990298);
  result = sub_1B7801A08();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_36:
    *v1 = v4;
    return result;
  }

  v33 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v20 = (*(v2 + 48) + 80 * (v17 | (v5 << 6)));
    v21 = v20[4];
    v22 = v20[1];
    v23 = v20[2];
    v38 = v20[3];
    v39 = v21;
    v37 = v23;
    v35 = *v20;
    v36 = v22;
    sub_1B78022F8();
    v24 = v36;
    sub_1B7802328();
    if (v24)
    {
      sub_1B7802318();
      sub_1B723C16C(&v35, v34);
      sub_1B7800798();
      if (v37)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1B7802318();
      sub_1B723C16C(&v35, v34);
      if (v37)
      {
LABEL_17:
        sub_1B7802318();
        sub_1B7800798();
        goto LABEL_20;
      }
    }

    sub_1B7802318();
LABEL_20:
    v25 = *(&v38 + 1);
    sub_1B7802328();
    if (v25)
    {
      sub_1B7802318();
      sub_1B7800798();
      if (*(&v39 + 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B7802318();
      if (*(&v39 + 1))
      {
LABEL_22:
        sub_1B7802318();
        sub_1B7800798();
        goto LABEL_25;
      }
    }

    sub_1B7802318();
LABEL_25:
    v2 = v33;
    result = sub_1B7802368();
    v26 = -1 << *(v4 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      while (++v28 != v30 || (v29 & 1) == 0)
      {
        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v11 + 8 * v28);
        if (v32 != -1)
        {
          v12 = __clz(__rbit64(~v32)) + (v28 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_38;
    }

    v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = (*(v4 + 48) + 80 * v12);
    v14 = v36;
    v15 = v37;
    v16 = v39;
    v13[3] = v38;
    v13[4] = v16;
    v13[1] = v14;
    v13[2] = v15;
    *v13 = v35;
    ++*(v4 + 16);
  }

  v18 = v5;
  while (1)
  {
    v5 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_36;
    }

    v19 = *(v6 + 8 * v5);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v9 = (v19 - 1) & v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B725AB98(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1B7801A08();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1B7801548();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1B725ADA4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990220);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1B78022F8();
      MEMORY[0x1B8CA6620](v15);
      result = sub_1B7802368();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

void sub_1B725AFC4(uint64_t *a1, void (*a2)(void))
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
      sub_1B725B1C8(v10, v11, a1, v6);
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
    sub_1B725B0D0(0, v4, 1, a1);
  }
}

void sub_1B725B0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v12 = [v10 decodingIndex];
      v13 = [v11 decodingIndex];

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

void sub_1B725B1C8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
        sub_1B725B838((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
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
      v106 = [v13 decodingIndex];
      v104 = [v14 decodingIndex];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 decodingIndex];
        v7 = [v18 decodingIndex];

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
        sub_1B725B838((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
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
    v40 = [v38 decodingIndex];
    v41 = [v39 decodingIndex];

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

uint64_t sub_1B725B838(char *__dst, void **a2, id *a3, char *__src)
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
          v34 = [v32 decodingIndex];
          v35 = [v33 decodingIndex];

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
          v19 = [v17 decodingIndex];
          v20 = [v18 decodingIndex];

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

char *sub_1B725BB1C()
{
  v1 = v0;
  v2 = sub_1B77FEF58();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F638);
  v5 = *v0;
  v6 = sub_1B7801CB8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v44 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v16;
    v40 = v5;
    v17 = v41;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v46 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v42;
        v23 = v43;
        v24 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v5 + 48) + v24, v42);
        v25 = 32 * v21;
        v26 = *(v5 + 56) + 32 * v21;
        v28 = *v26;
        v27 = *(v26 + 8);
        v29 = *(v26 + 24);
        v45 = *(v26 + 16);
        v30 = v44;
        (*(v23 + 32))(*(v44 + 48) + v24, v17, v22);
        v31 = (*(v30 + 56) + v25);
        *v31 = v28;
        v31[1] = v27;
        v31[2] = v45;
        v31[3] = v29;
        v32 = v29;
        v33 = v28;
        v5 = v40;
        v34 = v27;

        v16 = v39;
        v15 = v46;
      }

      while (v46);
    }

    v19 = v11;
    v7 = v44;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v20 = *(v36 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v46 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1B725BDC4()
{
  v1 = v0;
  v35 = sub_1B77FF4F8();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F518);
  v3 = *v0;
  v4 = sub_1B7801CB8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1B725C044()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4B8);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1B725C190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD00);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B719BDE4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B72051F0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1B725C324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F580);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B719BDE4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B72051F0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B725C4A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990400);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 48) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v2 + 56) + 8 * v14);
      v21 = (*(v4 + 48) + 32 * v14);
      *v21 = v18;
      v21[1] = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B725C5FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6D8);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B719BDE4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B72051F0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B725C7A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F220);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B725C908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990308);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_1B72630BC(v19, v20, v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B725CA84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F648);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1B725CC4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F438);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B725CDA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990358);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B725CF18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4A8);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = sub_1B7205200(v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1B725D088()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F458);
  v2 = *v0;
  v3 = sub_1B7801CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 88 * v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v25 = *(v17 + 80);
      v24[3] = v19;
      v24[4] = v20;
      v21 = v17[1];
      v24[0] = *v17;
      v24[1] = v21;
      v24[2] = v18;
      v22 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 88 * v16), v17, 0x51uLL);
      *(*(v4 + 56) + 8 * v16) = v22;
      sub_1B723C474(v24, v23);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1B725D238()
{
  v1 = v0;
  v2 = type metadata accessor for MapsTransactionInsightResult(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1B77FFA18();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3E8);
  v5 = *v0;
  v6 = sub_1B7801CB8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1B7263498(*(v5 + 56) + v26, v35, type metadata accessor for MapsTransactionInsightResult);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1B726332C(v25, *(v27 + 56) + v26, type metadata accessor for MapsTransactionInsightResult);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B725D58C(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_1B77FFA18();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_1B7801CB8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}