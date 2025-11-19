void ExtractedOrder.Payment.init(managedExtractedOrder:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [a1 paymentTotalAmount];
  v5 = [a1 paymentTotalCurrencyCode];
  if (!v5)
  {
    ManagedExtractedOrderContent.paymentTransactions.getter();
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = v5;
  v7 = sub_1B7800868();
  v9 = v8;

  v10 = ManagedExtractedOrderContent.paymentTransactions.getter();
  v11 = v10;
  if (!v4)
  {
    goto LABEL_10;
  }

  if (!v9)
  {
LABEL_9:

LABEL_11:

LABEL_12:
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

  if (!sub_1B7801958())
  {
LABEL_48:

    goto LABEL_12;
  }

LABEL_6:
  [v4 decimalValue];
  if (v11 >> 62)
  {
    v12 = sub_1B7801958();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v9;
  v49 = a2;
  v47 = v7;
  if (!v12)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_46:
    *v49 = v64;
    *(v49 + 2) = v65;
    *(v49 + 3) = v47;
    *(v49 + 4) = v48;
    *(v49 + 5) = v14;
    return;
  }

  v45 = v4;
  v46 = a1;
  v62 = MEMORY[0x1E69E7CC0];
  sub_1B71FE2B4(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v62;
    v50 = v12 - 1;
    v51 = v11 & 0xC000000000000001;
    for (i = v11; ; v11 = i)
    {
      v15 = v14;
      v16 = v51 ? MEMORY[0x1B8CA5DC0](v13, v11) : *(v11 + 8 * v13 + 32);
      v17 = v16;
      v18 = [v16 amount];
      v19 = v18;
      if (v18)
      {
        [v18 decimalValue];
        v20 = *(&v64 + 1);
        v21 = v64;
        v22 = v65;
      }

      else
      {
        v21 = 0;
        v20 = 0;
        v22 = 0;
      }

      v61 = v19 == 0;
      v23 = [v17 currencyCode];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1B7800868();
        v56 = v26;
        v57 = v25;
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      v27 = [v17 transactionIdentifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1B7800868();
        v54 = v30;
        v55 = v29;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }

      v31 = [v17 paymentMethodDisplayName];
      if (v31)
      {
        v32 = v31;
        v58 = sub_1B7800868();
        v34 = v33;
      }

      else
      {
        v58 = 0;
        v34 = 0;
      }

      v35 = [v17 paymentMethodSuffix];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1B7800868();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v40 = [v17 paymentMethodIsApplePay];

      if (v34 || v39 || v40)
      {
        v53 = v37;
        v41 = v22;
      }

      else
      {
        v41 = v22;
        v58 = 0;
        v53 = 0;
        v39 = 0;
        v34 = 1;
      }

      v14 = v15;
      sub_1B7531560(0, 1);
      v63 = v15;
      v42 = *(v15 + 16);
      v43 = *(v14 + 24);
      if (v42 >= v43 >> 1)
      {
        sub_1B71FE2B4((v43 > 1), v42 + 1, 1);
        v14 = v63;
      }

      *(v14 + 16) = v42 + 1;
      v44 = v14 + 96 * v42;
      *(v44 + 32) = v21;
      *(v44 + 40) = v20;
      *(v44 + 48) = v41;
      *(v44 + 52) = v61;
      *(v44 + 53) = v59;
      *(v44 + 55) = v60;
      *(v44 + 56) = v57;
      *(v44 + 64) = v56;
      *(v44 + 72) = v58;
      *(v44 + 80) = v34;
      *(v44 + 88) = v53;
      *(v44 + 96) = v39;
      *(v44 + 104) = v40;
      *(v44 + 108) = *(&v64 + 3);
      *(v44 + 105) = v64;
      *(v44 + 112) = v55;
      *(v44 + 120) = v54;
      if (v50 == v13)
      {
        break;
      }

      ++v13;
    }

    goto LABEL_46;
  }

  __break(1u);
}

void ExtractedOrder.ShippingRecipient.init(managedShippingFulfillment:)(void *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = [a1 recipientFullName];
  if (v4)
  {
    v5 = v4;
    v34.n128_u64[0] = sub_1B7800868();
    v34.n128_u64[1] = v6;
  }

  else
  {
    v34 = 0uLL;
  }

  v7 = [a1 recipientPhoneNumber];
  if (v7)
  {
    v8 = v7;
    v32 = sub_1B7800868();
    v10 = v9;
  }

  else
  {
    v32 = 0;
    v10 = 0;
  }

  v11 = [a1 recipientEmailAddress];
  if (v11)
  {
    v12 = v11;
    v33 = sub_1B7800868();
    v14 = v13;
  }

  else
  {
    v33 = 0;
    v14 = 0;
  }

  v15 = [a1 recipientAddress];
  if (v15)
  {
    v16 = v15;
    ExtractedOrder.Address.init(address:)(&v61, v16);

    object = v61.value.street.value._object;
    if (v34.n128_u64[1])
    {
      goto LABEL_18;
    }
  }

  else
  {

    v61.value.street.value._countAndFlagsBits = 0;
    memset(&v61.value.city, 0, 64);
    object = 1;
    if (v34.n128_u64[1])
    {
      goto LABEL_18;
    }
  }

  if (!v10 && !v14 && object == 1)
  {
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v48.n128_u64[0] = 0;
    v48.n128_u64[1] = 1;
    v49 = 0u;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    sub_1B75BE930(&v45);
    sub_1B71CDF28(&v53);
    v18 = v58;
    a2[4] = v57;
    a2[5] = v18;
    v19 = v60;
    a2[6] = v59;
    a2[7] = v19;
    v20 = v54;
    *a2 = v53;
    a2[1] = v20;
    v21 = v56;
    a2[2] = v55;
    a2[3] = v21;
    return;
  }

LABEL_18:
  country = v61.value.country;
  postalCode = v61.value.postalCode;
  state = v61.value.state;
  countAndFlagsBits = v61.value.city.value._countAndFlagsBits;
  v22 = v61.value.city.value._object;
  v24 = v61.value.street.value._countAndFlagsBits;
  v36[0] = xmmword_1B78301C0;
  memset(&v36[1], 0, 64);
  sub_1B7205418(v36, &qword_1EB996B68);
  v37 = v34;
  v38.n128_u64[0] = v32;
  v38.n128_u64[1] = v10;
  v39.n128_u64[0] = v33;
  v39.n128_u64[1] = v14;
  v40.n128_u64[0] = v24;
  v40.n128_u64[1] = object;
  v41.n128_u64[0] = countAndFlagsBits;
  v41.n128_u64[1] = v22;
  v42 = state;
  v43 = postalCode;
  v44 = country;
  v47 = v39;
  v48 = v40;
  v51 = postalCode;
  v52 = country;
  v49 = v41;
  v50 = state;
  v45 = v34;
  v46 = v38;
  nullsub_1(&v45, v34);
  v25 = v50;
  a2[4] = v49;
  a2[5] = v25;
  v26 = v52;
  a2[6] = v51;
  a2[7] = v26;
  v27 = v46;
  *a2 = v45;
  a2[1] = v27;
  v28 = v48;
  a2[2] = v47;
  a2[3] = v28;
  v53 = v34;
  v54.n128_u64[0] = v32;
  v54.n128_u64[1] = v10;
  v55.n128_u64[0] = v33;
  v55.n128_u64[1] = v14;
  v56.n128_u64[0] = v24;
  v56.n128_u64[1] = object;
  v57.n128_u64[0] = countAndFlagsBits;
  v57.n128_u64[1] = v22;
  v58 = state;
  v59 = postalCode;
  v60 = country;
  sub_1B75BE9B4(&v37, v35);
  sub_1B75BE930(&v53);
}

void __swiftcall ExtractedOrder.Address.init(address:)(FinanceKit::ExtractedOrder::Address_optional *__return_ptr retstr, CNPostalAddress address)
{
  v3 = [(objc_class *)address.super.isa street];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = [(objc_class *)address.super.isa city];
  v8 = sub_1B7800868();
  v10 = v9;

  v11 = [(objc_class *)address.super.isa state];
  v39 = sub_1B7800868();
  v13 = v12;

  v14 = [(objc_class *)address.super.isa postalCode];
  v38 = sub_1B7800868();
  v16 = v15;

  v17 = [(objc_class *)address.super.isa country];
  v18 = sub_1B7800868();
  v20 = v19;

  v21 = HIBYTE(v6) & 0xF;
  v40 = v6;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v21 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v8;
  v23 = v8 & 0xFFFFFFFFFFFFLL;
  if (!v21)
  {
    if ((v10 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v24 = v23;
    }

    if (!v24)
    {
      v25 = v39 & 0xFFFFFFFFFFFFLL;
      if ((v13 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v13) & 0xF;
      }

      if (!v25)
      {
        v26 = v38 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x2000000000000000) != 0)
        {
          v26 = HIBYTE(v16) & 0xF;
        }

        if (!v26)
        {
          v27 = v18 & 0xFFFFFFFFFFFFLL;
          if ((v20 & 0x2000000000000000) != 0)
          {
            v27 = HIBYTE(v20) & 0xF;
          }

          if (!v27)
          {

            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v47 = 0u;
            sub_1B75BEAFC(&v47);
            retstr->value.street = xmmword_1B78301C0;
            retstr->value.city = 0u;
            retstr->value.state = 0u;
            retstr->value.postalCode = 0u;
            retstr->value.country = 0u;
            return;
          }
        }
      }
    }

    v4 = 0;
    v40 = 0;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v28 = v23;
  }

  if (v28)
  {
    v29 = v22;
  }

  else
  {

    v29 = 0;
    v10 = 0;
  }

  v30 = v39;
  v31 = v39 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v13) & 0xF;
  }

  if (!v31)
  {

    v30 = 0;
    v13 = 0;
  }

  v32 = v38;
  v33 = v38 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v16) & 0xF;
  }

  if (!v33)
  {

    v32 = 0;
    v16 = 0;
  }

  v34 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v20) & 0xF;
  }

  if (!v34)
  {

    v18 = 0;
    v20 = 0;
  }

  v42.value._countAndFlagsBits = v4;
  v42.value._object = v40;
  v43.value._countAndFlagsBits = v29;
  v43.value._object = v10;
  v44.value._countAndFlagsBits = v30;
  v44.value._object = v13;
  v45.value._countAndFlagsBits = v32;
  v45.value._object = v16;
  v46.value._countAndFlagsBits = v18;
  v46.value._object = v20;
  v35 = v45;
  retstr->value.state = v44;
  retstr->value.postalCode = v35;
  retstr->value.country = v46;
  v36 = v43;
  retstr->value.street = v42;
  retstr->value.city = v36;
  *&v47 = v4;
  *(&v47 + 1) = v40;
  *&v48 = v29;
  *(&v48 + 1) = v10;
  *&v49 = v30;
  *(&v49 + 1) = v13;
  *&v50 = v32;
  *(&v50 + 1) = v16;
  *&v51 = v18;
  *(&v51 + 1) = v20;
  sub_1B7561B1C(&v42, v41);
  sub_1B75BEAFC(&v47);
}

__n128 ExtractedOrder.Payment.Transaction.init(managedTransaction:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 amount];
  v5 = v4;
  if (v4)
  {
    [v4 decimalValue];
    v7 = v23.n128_u64[1];
    v6 = v23.n128_u64[0];
    v8 = v24;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v26 = v5 == 0;
  v9 = [a1 currencyCode];
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

  v14 = [a1 transactionIdentifier];
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

  ExtractedOrder.Payment.Transaction.PaymentMethod.init(managedTransaction:)(a1, &v23);
  v19 = v25;
  sub_1B7531560(0, 1);
  result = v23;
  v21 = v24;
  v22 = v26;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v22;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 56) = v21;
  *(a2 + 40) = result;
  *(a2 + 72) = v19;
  *(a2 + 80) = v16;
  *(a2 + 88) = v18;
  return result;
}

void ExtractedOrder.Payment.Transaction.PaymentMethod.init(managedTransaction:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 paymentMethodDisplayName];
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

  v9 = [a1 paymentMethodSuffix];
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

  v14 = [a1 paymentMethodIsApplePay];

  if (!v8 && !v13 && !v14)
  {
    v6 = 0;
    v11 = 0;
    v13 = 0;
    v8 = 1;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
}

BOOL _s10FinanceKit14ExtractedOrderV7PaymentV11TransactionV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v50 = *(a1 + 80);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v15 = *(a2 + 56);
  v14 = *(a2 + 64);
  v16 = *(a2 + 72);
  v18 = *(a2 + 80);
  v17 = *(a2 + 88);
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 20))
    {
      return 0;
    }

    v43 = *(a2 + 56);
    v45 = *(a2 + 88);
    v40 = *(a2 + 80);
    v41 = *(a1 + 88);
    v48 = *(a2 + 64);
    v38 = *(a1 + 40);
    v39 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a2 + 72);
    v23 = *(a2 + 40);
    v24 = *(a2 + 48);
    v25 = MEMORY[0x1B8CA5970](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
    v13 = v24;
    v12 = v23;
    v15 = v43;
    v17 = v45;
    v14 = v48;
    v16 = v22;
    v4 = v39;
    v18 = v40;
    v8 = v21;
    v7 = v20;
    v6 = v19;
    v5 = v38;
    v9 = v41;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    if (v2 != v10 || v3 != v11)
    {
      v44 = v15;
      v46 = v17;
      v49 = v14;
      v26 = v8;
      v27 = v16;
      v28 = v12;
      v29 = v13;
      v30 = sub_1B78020F8();
      v13 = v29;
      v12 = v28;
      v15 = v44;
      v17 = v46;
      v14 = v49;
      v16 = v27;
      v8 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v4 != 1)
  {
    v53[0] = v5;
    v53[1] = v4;
    v53[2] = v6;
    v53[3] = v7;
    v54 = v8;
    if (v13 != 1)
    {
      v47 = v17;
      v51[0] = v12;
      v51[1] = v13;
      v51[2] = v15;
      v51[3] = v14;
      v52 = v16 & 1;
      v36 = v12;
      v37 = v13;
      v42 = _s10FinanceKit21CascadeExtractedOrderV7PaymentV11TransactionV0F6MethodV2eeoiySbAI_AItFZ_0(v53, v51);
      sub_1B75840E8(v5, v4);
      sub_1B75840E8(v36, v37);
      sub_1B75840E8(v5, v4);

      sub_1B7531560(v5, v4);
      if ((v42 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    v33 = v12;
    v34 = 1;
    sub_1B75840E8(v5, v4);
    sub_1B75840E8(v33, 1);
    sub_1B75840E8(v5, v4);

LABEL_19:
    sub_1B7531560(v5, v4);
    sub_1B7531560(v33, v34);
    return 0;
  }

  v31 = v12;
  v47 = v17;
  v32 = v13;
  sub_1B75840E8(v5, 1);
  if (v32 != 1)
  {
    v33 = v31;
    v34 = v32;
    sub_1B75840E8(v31, v32);
    goto LABEL_19;
  }

  sub_1B75840E8(v31, 1);
  sub_1B7531560(v5, 1);
LABEL_23:
  if (v9)
  {
    return v47 && (v50 == v18 && v9 == v47 || (sub_1B78020F8() & 1) != 0);
  }

  return !v47;
}

uint64_t _s10FinanceKit14ExtractedOrderV7PaymentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 1) != 0 || (MEMORY[0x1B8CA5970](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v5 || (v3 != v6 || v2 != v5) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return sub_1B732159C(v4, v7);
}

uint64_t sub_1B75BC248(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 6);
  v67[2] = *(a1 + 5);
  v67[3] = v9;
  v10 = *(a1 + 7);
  v11 = *(a1 + 4);
  v67[0] = *(a1 + 3);
  v67[1] = v11;
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  v18 = *(a2 + 7);
  v68[3] = *(a2 + 6);
  v68[4] = v18;
  v19 = *(a2 + 5);
  v68[1] = *(a2 + 4);
  v68[2] = v19;
  v20 = *(a2 + 3);
  v67[4] = v10;
  v68[0] = v20;
  if (v4)
  {
    if (!v13)
    {
      goto LABEL_24;
    }

    if (v3 != v12 || v4 != v13)
    {
      v21 = a2;
      v22 = sub_1B78020F8();
      a2 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_24;
  }

  if (v7)
  {
    if (!v14)
    {
      goto LABEL_24;
    }

    if (v5 != v15 || v7 != v14)
    {
      v23 = a2;
      v24 = sub_1B78020F8();
      a2 = v23;
      if ((v24 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v14)
  {
    goto LABEL_24;
  }

  if (v8)
  {
    if (v16)
    {
      if (v6 == v17 && v8 == v16 || (v25 = a2, v26 = sub_1B78020F8(), a2 = v25, (v26 & 1) != 0))
      {
LABEL_20:
        v27 = v67[0];
        v28 = v68[0];
        if (*(&v67[0] + 1) == 1)
        {
          if (*(&v68[0] + 1) == 1)
          {
            v29 = 1;
            *&v57 = *&v67[0];
            *(&v57 + 1) = 1;
            v30 = *(a1 + 5);
            v58 = *(a1 + 4);
            v59 = v30;
            v31 = *(a1 + 7);
            v60 = *(a1 + 6);
            v61 = v31;
            sub_1B7205588(v67, &v52, &qword_1EB996B68);
            sub_1B7205588(v68, &v52, &qword_1EB996B68);
            v32 = &v57;
LABEL_31:
            sub_1B7205418(v32, &qword_1EB996B68);
            return v29 & 1;
          }

          v36 = a2;
          sub_1B7205588(v67, &v57, &qword_1EB996B68);
          sub_1B7205588(v68, &v57, &qword_1EB996B68);
        }

        else
        {
          v57 = v67[0];
          v34 = *(a1 + 5);
          v58 = *(a1 + 4);
          v59 = v34;
          v35 = *(a1 + 7);
          v60 = *(a1 + 6);
          v61 = v35;
          v54 = v34;
          v55 = v60;
          v56 = v35;
          v52 = v67[0];
          v53 = v58;
          if (*(&v68[0] + 1) != 1)
          {
            v41 = *(a2 + 5);
            v48 = *(a2 + 4);
            v49 = v41;
            v42 = *(a2 + 7);
            v50 = *(a2 + 6);
            v51 = v42;
            v47 = v68[0];
            v29 = _s10FinanceKit21CascadeExtractedOrderV7AddressV2eeoiySbAE_AEtFZ_0(&v52, &v47);
            v45[2] = v49;
            v45[3] = v50;
            v45[4] = v51;
            v45[0] = v47;
            v45[1] = v48;
            sub_1B7205588(v67, v46, &qword_1EB996B68);
            sub_1B7205588(v68, v46, &qword_1EB996B68);
            sub_1B7205588(&v57, v46, &qword_1EB996B68);
            sub_1B75BEAFC(v45);
            v46[2] = v54;
            v46[3] = v55;
            v46[4] = v56;
            v46[0] = v52;
            v46[1] = v53;
            sub_1B75BEAFC(v46);
            v47 = v27;
            v43 = *(a1 + 5);
            v48 = *(a1 + 4);
            v49 = v43;
            v44 = *(a1 + 7);
            v50 = *(a1 + 6);
            v51 = v44;
            v32 = &v47;
            goto LABEL_31;
          }

          v36 = a2;
          v49 = v59;
          v50 = v60;
          v51 = v61;
          v47 = v57;
          v48 = v58;
          sub_1B7205588(v67, v46, &qword_1EB996B68);
          sub_1B7205588(v68, v46, &qword_1EB996B68);
          sub_1B7205588(&v57, v46, &qword_1EB996B68);
          sub_1B75BEAFC(&v47);
        }

        v57 = v27;
        v37 = *(a1 + 5);
        v58 = *(a1 + 4);
        v59 = v37;
        v38 = *(a1 + 7);
        v60 = *(a1 + 6);
        v61 = v38;
        v62 = v28;
        v39 = v36[5];
        v63 = v36[4];
        v64 = v39;
        v40 = v36[7];
        v65 = v36[6];
        v66 = v40;
        sub_1B7205418(&v57, &qword_1EB998938);
        v29 = 0;
        return v29 & 1;
      }
    }
  }

  else if (!v16)
  {
    goto LABEL_20;
  }

LABEL_24:
  v29 = 0;
  return v29 & 1;
}

BOOL _s10FinanceKit14ExtractedOrderV2eeoiySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v113 - v17;
  if ((*a1 != *a2 || *(a1 + 8) != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v120 = v16;
  v121 = v18;
  v123 = v5;
  v124 = v13;
  v118 = v11;
  v119 = v7;
  v122 = v4;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = *(a1 + 32);
  v21 = *(a1 + 40);
  v23 = a2[2];
  v24 = a2[3];
  v126 = a2;
  v25 = a2[4];
  v26 = a2[5];
  if (!v20)
  {
    sub_1B7420484(v19, 0);
    if (!v24)
    {
      sub_1B7420484(v23, 0);
      v20 = 0;
      goto LABEL_22;
    }

    sub_1B7420484(v23, v24);
    goto LABEL_15;
  }

  if (!v24)
  {
    sub_1B7420484(v19, v20);
    sub_1B7420484(v23, 0);
    sub_1B7420484(v19, v20);

LABEL_15:
    sub_1B74204FC(v19, v20);
    v27 = v23;
    v28 = v24;
LABEL_16:
    sub_1B74204FC(v27, v28);
    return 0;
  }

  if ((v19 != v23 || v20 != v24) && (sub_1B78020F8() & 1) == 0)
  {
    sub_1B7420484(v19, v20);
    sub_1B7420484(v23, v24);
    sub_1B7420484(v19, v20);
    sub_1B74204FC(v23, v24);

    v27 = v19;
    v28 = v20;
    goto LABEL_16;
  }

  if (v22 == v25 && v21 == v26)
  {
    sub_1B7420484(v19, v20);
    sub_1B7420484(v23, v24);
    sub_1B7420484(v19, v20);
    sub_1B74204FC(v23, v24);

LABEL_22:
    sub_1B74204FC(v19, v20);
    v30 = v126;
    goto LABEL_23;
  }

  LODWORD(v117) = sub_1B78020F8();
  sub_1B7420484(v19, v20);
  sub_1B7420484(v23, v24);
  sub_1B7420484(v19, v20);
  sub_1B74204FC(v23, v24);

  sub_1B74204FC(v19, v20);
  v30 = v126;
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if ((*(a1 + 48) != v30[6] || *(a1 + 56) != v30[7]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v31 = *(a1 + 112);
  v32 = *(v30 + 112);
  if (v31 <= 0xFD)
  {
    v33 = *(v30 + 4);
    v34 = *(v30 + 5);
    v35 = *(v30 + 6);
    v36 = *(a1 + 80);
    v169 = *(a1 + 64);
    v170 = v36;
    v171 = *(a1 + 96);
    LOBYTE(v172) = v31;
    if (v32 > 0xFD)
    {
      return 0;
    }

    v145 = v33;
    v146 = v34;
    v147 = v35;
    LOBYTE(v148) = v32;
    if ((sub_1B72EA94C(&v169, &v145) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32 <= 0xFD)
  {
    return 0;
  }

  v37 = type metadata accessor for ExtractedOrder(0);
  if ((sub_1B77FF918() & 1) == 0 || (_s10FinanceKit14ExtractedOrderV8MerchantV2eeoiySbAE_AEtFZ_0((a1 + v37[9]), (v30 + v37[9])) & 1) == 0 || (sub_1B7321548(*(a1 + v37[10]), *(v30 + v37[10])) & 1) == 0)
  {
    return 0;
  }

  v38 = (a1 + v37[11]);
  v39 = v38[3];
  v40 = v38[5];
  v188 = v38[4];
  v189 = v40;
  v41 = v38[5];
  v42 = v38[7];
  v190 = v38[6];
  v191 = v42;
  v43 = v38[1];
  v44 = v38[3];
  v186 = v38[2];
  v187 = v44;
  v45 = v38[1];
  v185[0] = *v38;
  v185[1] = v45;
  v46 = (v30 + v37[11]);
  v48 = v46[1];
  v47 = v46[2];
  v49 = v47;
  v192[3] = v46[3];
  v192[2] = v47;
  v51 = v46[5];
  v50 = v46[6];
  v52 = v50;
  v192[7] = v46[7];
  v192[6] = v50;
  v54 = v46[3];
  v53 = v46[4];
  v55 = v53;
  v192[5] = v46[5];
  v192[4] = v53;
  v56 = *v46;
  v57 = *v46;
  v192[1] = v46[1];
  v192[0] = v56;
  v58 = v38[5];
  v173 = v38[4];
  v174 = v58;
  v59 = v38[7];
  v175 = v38[6];
  v176 = v59;
  v60 = v38[1];
  v169 = *v38;
  v170 = v60;
  v61 = v38[3];
  v171 = v38[2];
  v172 = v61;
  v180 = v54;
  v179 = v49;
  v178 = v48;
  v177 = v57;
  v184 = v46[7];
  v183 = v52;
  v182 = v51;
  v181 = v55;
  v193[2] = v186;
  v193[3] = v39;
  v193[0] = v185[0];
  v193[1] = v43;
  v62 = v38[7];
  v193[6] = v190;
  v193[7] = v62;
  v193[4] = v188;
  v193[5] = v41;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v193) == 1)
  {
    v149 = v181;
    v150 = v182;
    v151 = v183;
    v152 = v184;
    v145 = v177;
    v146 = v178;
    v147 = v179;
    v148 = v180;
    if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v145) == 1)
    {
      v165 = v173;
      v166 = v174;
      v167 = v175;
      v168 = v176;
      v161 = v169;
      v162 = v170;
      v163 = v171;
      v164 = v172;
      sub_1B7205588(v185, &v137, &qword_1EB996B60);
      sub_1B7205588(v192, &v137, &qword_1EB996B60);
      sub_1B7205418(&v161, &qword_1EB996B60);
      goto LABEL_44;
    }

    sub_1B7205588(v185, &v161, &qword_1EB996B60);
    sub_1B7205588(v192, &v161, &qword_1EB996B60);
LABEL_41:
    v157 = v181;
    v158 = v182;
    v159 = v183;
    v160 = v184;
    v153 = v177;
    v154 = v178;
    v155 = v179;
    v156 = v180;
    v149 = v173;
    v150 = v174;
    v151 = v175;
    v152 = v176;
    v145 = v169;
    v146 = v170;
    v147 = v171;
    v148 = v172;
    v63 = &unk_1EB998930;
    v64 = &v145;
LABEL_42:
    sub_1B7205418(v64, v63);
    return 0;
  }

  v165 = v173;
  v166 = v174;
  v167 = v175;
  v168 = v176;
  v161 = v169;
  v162 = v170;
  v163 = v171;
  v164 = v172;
  v139 = v171;
  v140 = v172;
  v137 = v169;
  v138 = v170;
  v143 = v175;
  v144 = v176;
  v141 = v173;
  v142 = v174;
  v147 = v179;
  v148 = v180;
  v145 = v177;
  v146 = v178;
  v151 = v183;
  v152 = v184;
  v149 = v181;
  v150 = v182;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v145) == 1)
  {
    v133 = v173;
    v134 = v174;
    v135 = v175;
    v136 = v176;
    v129 = v169;
    v130 = v170;
    v131 = v171;
    v132 = v172;
    sub_1B7205588(v185, v128, &qword_1EB996B60);
    sub_1B7205588(v192, v128, &qword_1EB996B60);
    sub_1B7205588(&v161, v128, &qword_1EB996B60);
    sub_1B75BEA40(&v129);
    goto LABEL_41;
  }

  v133 = v181;
  v134 = v182;
  v135 = v183;
  v136 = v184;
  v129 = v177;
  v130 = v178;
  v131 = v179;
  v132 = v180;
  sub_1B7205588(v185, v128, &qword_1EB996B60);
  sub_1B7205588(v192, v128, &qword_1EB996B60);
  sub_1B7205588(&v161, v128, &qword_1EB996B60);
  v65 = sub_1B75BC248(&v137, &v129);
  v127[4] = v133;
  v127[5] = v134;
  v127[6] = v135;
  v127[7] = v136;
  v127[0] = v129;
  v127[1] = v130;
  v127[2] = v131;
  v127[3] = v132;
  sub_1B75BEA40(v127);
  v128[4] = v141;
  v128[5] = v142;
  v128[6] = v143;
  v128[7] = v144;
  v128[0] = v137;
  v128[1] = v138;
  v128[2] = v139;
  v128[3] = v140;
  sub_1B75BEA40(v128);
  v133 = v173;
  v134 = v174;
  v135 = v175;
  v136 = v176;
  v129 = v169;
  v130 = v170;
  v131 = v171;
  v132 = v172;
  sub_1B7205418(&v129, &qword_1EB996B60);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_44:
  v114 = v37;
  v66 = v37[12];
  v68 = *(a1 + v66);
  v67 = *(a1 + v66 + 8);
  v69 = *(a1 + v66 + 16);
  v70 = *(a1 + v66 + 24);
  v71 = *(a1 + v66 + 32);
  v72 = *(a1 + v66 + 40);
  v73 = (v30 + v66);
  v74 = *v73;
  v75 = v73[1];
  v77 = v73[2];
  v76 = v73[3];
  v78 = v73[4];
  v79 = v73[5];
  v116 = v67;
  v117 = v69;
  v115 = v68;
  if (!v72)
  {
    v87 = v70;
    v113 = v70;
    v88 = v71;
    sub_1B75BEE54(v68, v67, v69, v87, v71, 0);
    if (!v79)
    {
      sub_1B75BEE54(v74, v75, v77, v76, v78, 0);
      sub_1B75311F0(v115, v116, v117, v113, v88, 0);
      goto LABEL_53;
    }

    sub_1B75BEE54(v74, v75, v77, v76, v78, v79);
    v89 = v113;
LABEL_51:
    sub_1B75311F0(v115, v116, v117, v89, v88, v72);
    sub_1B75311F0(v74, v75, v77, v76, v78, v79);
    return 0;
  }

  *&v169 = v68;
  *(&v169 + 1) = v67;
  *&v170 = v69;
  *(&v170 + 1) = v70;
  *&v171 = v71;
  *(&v171 + 1) = v72;
  if (!v79)
  {
    v89 = v70;
    v90 = v70;
    v88 = v71;
    sub_1B75BEE54(v68, v67, v69, v90, v71, v72);
    sub_1B75BEE54(v74, v75, v77, v76, v78, 0);
    sub_1B75BEE54(v115, v116, v117, v89, v88, v72);

    goto LABEL_51;
  }

  *&v145 = v74;
  *(&v145 + 1) = v75;
  LODWORD(v146) = v77;
  BYTE4(v146) = BYTE4(v77) & 1;
  *(&v146 + 1) = v76;
  *&v147 = v78;
  *(&v147 + 1) = v79;
  v80 = v70;
  v113 = v77;
  v81 = v70;
  v82 = v71;
  sub_1B75BEE54(v68, v67, v69, v80, v71, v72);
  sub_1B75BEE54(v74, v75, v113, v76, v78, v79);
  v84 = v115;
  v83 = v116;
  v85 = v117;
  v86 = v81;
  sub_1B75BEE54(v115, v116, v117, v81, v82, v72);
  LOBYTE(v81) = _s10FinanceKit14ExtractedOrderV7PaymentV2eeoiySbAE_AEtFZ_0(&v169, &v145);

  sub_1B75311F0(v84, v83, v85, v86, v82, v72);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v91 = v114;
  v92 = v126;
  if (*(a1 + v114[13]) != *(v126 + v114[13]))
  {
    return 0;
  }

  v93 = v114[14];
  v94 = *(v124 + 48);
  v95 = v121;
  sub_1B7205588(a1 + v93, v121, &qword_1EB98EBD0);
  sub_1B7205588(v92 + v93, v95 + v94, &qword_1EB98EBD0);
  v97 = v122;
  v96 = v123;
  v98 = *(v123 + 48);
  if (v98(v95, 1, v122) != 1)
  {
    v99 = v125;
    sub_1B7205588(v95, v125, &qword_1EB98EBD0);
    if (v98(v95 + v94, 1, v97) != 1)
    {
      v100 = v119;
      (*(v96 + 32))(v119, v95 + v94, v97);
      sub_1B71A71D8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v101 = sub_1B7800828();
      v102 = *(v96 + 8);
      v103 = v100;
      v91 = v114;
      v102(v103, v97);
      v102(v125, v97);
      sub_1B7205418(v95, &qword_1EB98EBD0);
      if ((v101 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_61;
    }

    (*(v96 + 8))(v99, v97);
    goto LABEL_59;
  }

  if (v98(v95 + v94, 1, v97) != 1)
  {
LABEL_59:
    v63 = &qword_1EB98FCE0;
    v64 = v95;
    goto LABEL_42;
  }

  sub_1B7205418(v95, &qword_1EB98EBD0);
LABEL_61:
  v104 = v91[15];
  v105 = *(v124 + 48);
  v106 = a1 + v104;
  v107 = v120;
  sub_1B7205588(v106, v120, &qword_1EB98EBD0);
  sub_1B7205588(v126 + v104, v107 + v105, &qword_1EB98EBD0);
  if (v98(v107, 1, v97) == 1)
  {
    if (v98(v107 + v105, 1, v97) == 1)
    {
      sub_1B7205418(v107, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_66;
  }

  v108 = v118;
  sub_1B7205588(v107, v118, &qword_1EB98EBD0);
  if (v98(v107 + v105, 1, v97) == 1)
  {
    (*(v123 + 8))(v108, v97);
LABEL_66:
    v63 = &qword_1EB98FCE0;
    v64 = v107;
    goto LABEL_42;
  }

  v109 = v123;
  v110 = v119;
  (*(v123 + 32))(v119, v107 + v105, v97);
  sub_1B71A71D8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v111 = sub_1B7800828();
  v112 = *(v109 + 8);
  v112(v110, v97);
  v112(v108, v97);
  sub_1B7205418(v107, &qword_1EB98EBD0);
  return (v111 & 1) != 0;
}

uint64_t _s10FinanceKit14ExtractedOrderV8MerchantV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v27 = v7;
  v28 = type metadata accessor for ExtractedOrder.Merchant(0);
  v14 = *(v28 + 20);
  v15 = *(v11 + 48);
  sub_1B7205588(a1 + v14, v13, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v14, &v13[v15], &qword_1EB98EBD0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B7205588(v13, v10, &qword_1EB98EBD0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = &v13[v15];
      v19 = v27;
      (*(v5 + 32))(v27, v18, v4);
      sub_1B71A71D8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v20 = sub_1B7800828();
      v21 = *(v5 + 8);
      v21(v19, v4);
      v21(v10, v4);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1B7205418(v13, &qword_1EB98EBD0);
LABEL_13:
  v22 = *(v28 + 24);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (v26 && (*v23 == *v25 && v24 == v26 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v26)
  {
    return 1;
  }

  return 0;
}

BOOL _s10FinanceKit14ExtractedOrderV19ShippingFulfillmentV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v82 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v82 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = *(a1 + 2);
  v16 = *(a2 + 2);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v15 != v16)
    {
      v17 = v12;
      v18 = sub_1B78020F8();
      v12 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v19 = *(a1 + 4);
  v20 = *(a2 + 4);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    if (*(a1 + 3) != *(a2 + 3) || v19 != v20)
    {
      v21 = v12;
      v22 = sub_1B78020F8();
      v12 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = *(a1 + 6);
  v24 = *(a2 + 6);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    if (*(a1 + 5) != *(a2 + 5) || v23 != v24)
    {
      v25 = v12;
      v26 = sub_1B78020F8();
      v12 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  v27 = a1[104];
  v28 = a2[104];
  if (v27 <= 0xFD)
  {
    v29 = *(a2 + 56);
    v30 = *(a2 + 72);
    v31 = *(a2 + 88);
    v32 = *(a1 + 72);
    v123 = *(a1 + 56);
    v124 = v32;
    v125 = *(a1 + 88);
    LOBYTE(v126[0]) = v27;
    if (v28 > 0xFD)
    {
      return 0;
    }

    v102 = v29;
    v103 = v30;
    v104 = v31;
    LOBYTE(v105[0]) = v28;
    v33 = v12;
    v34 = sub_1B72EA94C(&v123, &v102);
    v12 = v33;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28 <= 0xFD)
  {
    return 0;
  }

  v35 = *(a1 + 20);
  v36 = a1[216];
  v37 = *(a2 + 20);
  v38 = a2[216];
  if (v35 >> 1 != 0xFFFFFFFF || v36 >= 2)
  {
    v40 = *(a1 + 8);
    v123 = *(a1 + 7);
    v124 = v40;
    *(v126 + 8) = *(a1 + 168);
    *(&v126[1] + 8) = *(a1 + 184);
    *(&v126[2] + 8) = *(a1 + 200);
    v125 = *(a1 + 9);
    *&v126[0] = v35;
    BYTE8(v126[3]) = v36;
    if (v37 >> 1 == 0xFFFFFFFF && v38 < 2)
    {
      return 0;
    }

    v41 = *(a2 + 8);
    v102 = *(a2 + 7);
    v103 = v41;
    v104 = *(a2 + 9);
    *(v105 + 8) = *(a2 + 168);
    *(&v105[1] + 8) = *(a2 + 184);
    *(&v105[2] + 8) = *(a2 + 200);
    *&v105[0] = v37;
    BYTE8(v105[3]) = v38;
    v42 = v12;
    v43 = _s10FinanceKit12TrackedOrderO21EstimatedDeliveryDateO2eeoiySbAE_AEtFZ_0(&v123, &v102);
    v12 = v42;
    if ((v43 & 1) == 0)
    {
      return 0;
    }

LABEL_36:
    v44 = a1[272];
    v45 = a2[272];
    if (v44 <= 0xFD)
    {
      v46 = *(a2 + 14);
      v47 = *(a2 + 15);
      v48 = *(a2 + 16);
      v49 = *(a1 + 15);
      v123 = *(a1 + 14);
      v124 = v49;
      v125 = *(a1 + 16);
      LOBYTE(v126[0]) = v44;
      if (v45 > 0xFD)
      {
        return 0;
      }

      v83 = v12;
      v102 = v46;
      v103 = v47;
      v104 = v48;
      LOBYTE(v105[0]) = v45;
      if ((sub_1B72EA94C(&v123, &v102) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v83 = v12;
      if (v45 <= 0xFD)
      {
        return 0;
      }
    }

    v50 = *(a1 + 328);
    v51 = *(a1 + 360);
    v139 = *(a1 + 344);
    v140 = v51;
    v52 = *(a1 + 360);
    v53 = *(a1 + 392);
    v141 = *(a1 + 376);
    v142 = v53;
    v54 = *(a1 + 296);
    v136[0] = *(a1 + 280);
    v136[1] = v54;
    v55 = *(a1 + 328);
    v57 = *(a1 + 280);
    v56 = *(a1 + 296);
    v137 = *(a1 + 312);
    v138 = v55;
    v58 = *(a2 + 280);
    v59 = *(a2 + 296);
    v60 = *(a2 + 312);
    v143[3] = *(a2 + 328);
    v143[2] = v60;
    v61 = *(a2 + 312);
    v62 = *(a2 + 280);
    v143[1] = *(a2 + 296);
    v143[0] = v58;
    v64 = *(a2 + 360);
    v63 = *(a2 + 376);
    v65 = v63;
    v143[7] = *(a2 + 392);
    v143[6] = v63;
    v67 = *(a2 + 328);
    v66 = *(a2 + 344);
    v143[5] = *(a2 + 360);
    v143[4] = v66;
    v68 = *(a1 + 360);
    v126[1] = *(a1 + 344);
    v126[2] = v68;
    v69 = *(a1 + 392);
    v126[3] = *(a1 + 376);
    v127 = v69;
    v70 = *(a1 + 296);
    v123 = *(a1 + 280);
    v124 = v70;
    v71 = *(a1 + 328);
    v125 = *(a1 + 312);
    v126[0] = v71;
    v131 = v67;
    v130 = v61;
    v129 = v59;
    v128 = v62;
    v135 = *(a2 + 392);
    v134 = v65;
    v133 = v64;
    v132 = v66;
    v144[2] = v137;
    v144[3] = v50;
    v144[0] = v57;
    v144[1] = v56;
    v72 = *(a1 + 392);
    v144[6] = v141;
    v144[7] = v72;
    v144[4] = v139;
    v144[5] = v52;
    if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v144) == 1)
    {
      v105[1] = v132;
      v105[2] = v133;
      v105[3] = v134;
      v106 = v135;
      v102 = v128;
      v103 = v129;
      v104 = v130;
      v105[0] = v131;
      if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v102) == 1)
      {
        v119 = v126[1];
        v120 = v126[2];
        v121 = v126[3];
        v122 = v127;
        v115 = v123;
        v116 = v124;
        v117 = v125;
        v118 = v126[0];
        sub_1B7205588(v136, &v94, &qword_1EB996B70);
        sub_1B7205588(v143, &v94, &qword_1EB996B70);
        sub_1B7205418(&v115, &qword_1EB996B70);
LABEL_49:
        v76 = *(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) + 48);
        v77 = *(v83 + 48);
        sub_1B7205588(&a1[v76], v14, &qword_1EB98EBD0);
        sub_1B7205588(&a2[v76], &v14[v77], &qword_1EB98EBD0);
        v78 = *(v5 + 48);
        if (v78(v14, 1, v4) == 1)
        {
          if (v78(&v14[v77], 1, v4) == 1)
          {
            sub_1B7205418(v14, &qword_1EB98EBD0);
            return 1;
          }

          goto LABEL_54;
        }

        sub_1B7205588(v14, v10, &qword_1EB98EBD0);
        if (v78(&v14[v77], 1, v4) == 1)
        {
          (*(v5 + 8))(v10, v4);
LABEL_54:
          v73 = &qword_1EB98FCE0;
          v74 = v14;
          goto LABEL_55;
        }

        (*(v5 + 32))(v7, &v14[v77], v4);
        sub_1B71A71D8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
        v80 = sub_1B7800828();
        v81 = *(v5 + 8);
        v81(v7, v4);
        v81(v10, v4);
        sub_1B7205418(v14, &qword_1EB98EBD0);
        return (v80 & 1) != 0;
      }

      sub_1B7205588(v136, &v115, &qword_1EB996B70);
      sub_1B7205588(v143, &v115, &qword_1EB996B70);
    }

    else
    {
      v119 = v126[1];
      v120 = v126[2];
      v121 = v126[3];
      v122 = v127;
      v115 = v123;
      v116 = v124;
      v117 = v125;
      v118 = v126[0];
      v96 = v125;
      v97 = v126[0];
      v94 = v123;
      v95 = v124;
      v100 = v126[3];
      v101 = v127;
      v98 = v126[1];
      v99 = v126[2];
      v104 = v130;
      v105[0] = v131;
      v102 = v128;
      v103 = v129;
      v105[3] = v134;
      v106 = v135;
      v105[1] = v132;
      v105[2] = v133;
      if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v102) != 1)
      {
        v90 = v132;
        v91 = v133;
        v92 = v134;
        v93 = v135;
        v86 = v128;
        v87 = v129;
        v88 = v130;
        v89 = v131;
        sub_1B7205588(v136, v85, &qword_1EB996B70);
        sub_1B7205588(v143, v85, &qword_1EB996B70);
        sub_1B7205588(&v115, v85, &qword_1EB996B70);
        v75 = sub_1B75BC248(&v94, &v86);
        v84[4] = v90;
        v84[5] = v91;
        v84[6] = v92;
        v84[7] = v93;
        v84[0] = v86;
        v84[1] = v87;
        v84[2] = v88;
        v84[3] = v89;
        sub_1B75BE930(v84);
        v85[4] = v98;
        v85[5] = v99;
        v85[6] = v100;
        v85[7] = v101;
        v85[0] = v94;
        v85[1] = v95;
        v85[2] = v96;
        v85[3] = v97;
        sub_1B75BE930(v85);
        v90 = v126[1];
        v91 = v126[2];
        v92 = v126[3];
        v93 = v127;
        v86 = v123;
        v87 = v124;
        v88 = v125;
        v89 = v126[0];
        sub_1B7205418(&v86, &qword_1EB996B70);
        if ((v75 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_49;
      }

      v90 = v126[1];
      v91 = v126[2];
      v92 = v126[3];
      v93 = v127;
      v86 = v123;
      v87 = v124;
      v88 = v125;
      v89 = v126[0];
      sub_1B7205588(v136, v85, &qword_1EB996B70);
      sub_1B7205588(v143, v85, &qword_1EB996B70);
      sub_1B7205588(&v115, v85, &qword_1EB996B70);
      sub_1B75BE930(&v86);
    }

    v111 = v132;
    v112 = v133;
    v113 = v134;
    v114 = v135;
    v107 = v128;
    v108 = v129;
    v109 = v130;
    v110 = v131;
    v105[1] = v126[1];
    v105[2] = v126[2];
    v105[3] = v126[3];
    v106 = v127;
    v102 = v123;
    v103 = v124;
    v104 = v125;
    v105[0] = v126[0];
    v73 = &unk_1EB998940;
    v74 = &v102;
LABEL_55:
    sub_1B7205418(v74, v73);
    return 0;
  }

  v39 = 0;
  if (v37 >> 1 == 0xFFFFFFFF && v38 < 2)
  {
    goto LABEL_36;
  }

  return v39;
}

unint64_t sub_1B75BE3D0()
{
  result = qword_1EB998658;
  if (!qword_1EB998658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998658);
  }

  return result;
}

unint64_t sub_1B75BE424()
{
  result = qword_1EB998670;
  if (!qword_1EB998670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998670);
  }

  return result;
}

unint64_t sub_1B75BE478()
{
  result = qword_1EB998678;
  if (!qword_1EB998678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998678);
  }

  return result;
}

unint64_t sub_1B75BE4CC()
{
  result = qword_1EB998680;
  if (!qword_1EB998680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998680);
  }

  return result;
}

unint64_t sub_1B75BE520()
{
  result = qword_1EB998688;
  if (!qword_1EB998688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998688);
  }

  return result;
}

unint64_t sub_1B75BE574()
{
  result = qword_1EB998690;
  if (!qword_1EB998690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998690);
  }

  return result;
}

unint64_t sub_1B75BE5C8()
{
  result = qword_1EB998698;
  if (!qword_1EB998698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998698);
  }

  return result;
}

unint64_t sub_1B75BE61C()
{
  result = qword_1EB9986A8;
  if (!qword_1EB9986A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9986A8);
  }

  return result;
}

unint64_t sub_1B75BE670()
{
  result = qword_1EB9986B0;
  if (!qword_1EB9986B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9986B0);
  }

  return result;
}

unint64_t sub_1B75BE6C4()
{
  result = qword_1EB9986B8;
  if (!qword_1EB9986B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9986B8);
  }

  return result;
}

unint64_t sub_1B75BE718()
{
  result = qword_1EB9986C0;
  if (!qword_1EB9986C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9986C0);
  }

  return result;
}

unint64_t sub_1B75BE76C()
{
  result = qword_1EB9986C8;
  if (!qword_1EB9986C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9986C8);
  }

  return result;
}

uint64_t sub_1B75BE7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75BE828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B75BE888()
{
  result = qword_1EB9986D8;
  if (!qword_1EB9986D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9986D8);
  }

  return result;
}

unint64_t sub_1B75BE8DC()
{
  result = qword_1EB9986E0;
  if (!qword_1EB9986E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9986E0);
  }

  return result;
}

unint64_t sub_1B75BE960()
{
  result = qword_1EB9986F0;
  if (!qword_1EB9986F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9986F0);
  }

  return result;
}

unint64_t sub_1B75BE9EC()
{
  result = qword_1EB998700;
  if (!qword_1EB998700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998700);
  }

  return result;
}

unint64_t sub_1B75BEAA8()
{
  result = qword_1EB998718;
  if (!qword_1EB998718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998718);
  }

  return result;
}

unint64_t sub_1B75BEB2C()
{
  result = qword_1EB998730;
  if (!qword_1EB998730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998730);
  }

  return result;
}

unint64_t sub_1B75BEB80()
{
  result = qword_1EB998748;
  if (!qword_1EB998748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998748);
  }

  return result;
}

unint64_t sub_1B75BEBD4()
{
  result = qword_1EB998750;
  if (!qword_1EB998750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998750);
  }

  return result;
}

unint64_t sub_1B75BEC28()
{
  result = qword_1EB998760;
  if (!qword_1EB998760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998760);
  }

  return result;
}

unint64_t sub_1B75BEC7C()
{
  result = qword_1EB998770;
  if (!qword_1EB998770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998770);
  }

  return result;
}

unint64_t sub_1B75BECD0()
{
  result = qword_1EB998788;
  if (!qword_1EB998788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998788);
  }

  return result;
}

uint64_t sub_1B75BED24(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998778);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B75BED9C()
{
  result = qword_1EB9987A0;
  if (!qword_1EB9987A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9987A0);
  }

  return result;
}

uint64_t sub_1B75BEDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrder.Merchant(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75BEE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_1B75BEE98()
{
  result = qword_1EB9987B0;
  if (!qword_1EB9987B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9987B0);
  }

  return result;
}

unint64_t sub_1B75BEEEC()
{
  result = qword_1EB9987B8;
  if (!qword_1EB9987B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9987B8);
  }

  return result;
}

unint64_t sub_1B75BEF40()
{
  result = qword_1EB9987E0;
  if (!qword_1EB9987E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9987E0);
  }

  return result;
}

unint64_t sub_1B75BEF94()
{
  result = qword_1EB9987E8;
  if (!qword_1EB9987E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9987E8);
  }

  return result;
}

unint64_t sub_1B75BEFE8()
{
  result = qword_1EB9987F0;
  if (!qword_1EB9987F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9987F0);
  }

  return result;
}

unint64_t sub_1B75BF03C()
{
  result = qword_1EB998800;
  if (!qword_1EB998800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998800);
  }

  return result;
}

uint64_t sub_1B75BF090(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9987C8);
    sub_1B71A71D8(a2, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B75BF12C()
{
  result = qword_1EB998820;
  if (!qword_1EB998820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998820);
  }

  return result;
}

unint64_t sub_1B75BF180()
{
  result = qword_1EB998828;
  if (!qword_1EB998828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998828);
  }

  return result;
}

unint64_t sub_1B75BF1D4()
{
  result = qword_1EB998830;
  if (!qword_1EB998830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998830);
  }

  return result;
}

uint64_t sub_1B75BF228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B75BF294()
{
  result = qword_1EB998838;
  if (!qword_1EB998838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998838);
  }

  return result;
}

unint64_t sub_1B75BF2EC()
{
  result = qword_1EB998840;
  if (!qword_1EB998840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998840);
  }

  return result;
}

void sub_1B75BF368()
{
  sub_1B72F2CB8(319, qword_1EDAF7340);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, qword_1EDAF8DF0);
    if (v1 <= 0x3F)
    {
      sub_1B77FF988();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ExtractedOrder.Merchant(319);
        if (v3 <= 0x3F)
        {
          sub_1B75BF534(319, &unk_1EDAF64F8, type metadata accessor for ExtractedOrder.ShippingFulfillment, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1B72F2CB8(319, &qword_1EDAF8D08);
            if (v5 <= 0x3F)
            {
              sub_1B72F2CB8(319, qword_1EDAF8D10);
              if (v6 <= 0x3F)
              {
                sub_1B75BF534(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B75BF534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B75BF5D0()
{
  sub_1B75BF534(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B75BF6CC()
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAF8DE0);
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAF8DD8);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EDAF8DE8);
        if (v3 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EDAF8DC8);
          if (v4 <= 0x3F)
          {
            sub_1B75BF534(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B75BF888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B75BF8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B75BF948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B75BF9A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1B75BFAC4()
{
  result = qword_1EB998848;
  if (!qword_1EB998848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998848);
  }

  return result;
}

unint64_t sub_1B75BFB1C()
{
  result = qword_1EB998850;
  if (!qword_1EB998850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998850);
  }

  return result;
}

unint64_t sub_1B75BFB74()
{
  result = qword_1EB998858;
  if (!qword_1EB998858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998858);
  }

  return result;
}

unint64_t sub_1B75BFBCC()
{
  result = qword_1EB998860;
  if (!qword_1EB998860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998860);
  }

  return result;
}

unint64_t sub_1B75BFC24()
{
  result = qword_1EB998868;
  if (!qword_1EB998868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998868);
  }

  return result;
}

unint64_t sub_1B75BFC7C()
{
  result = qword_1EB998870;
  if (!qword_1EB998870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998870);
  }

  return result;
}

unint64_t sub_1B75BFCD4()
{
  result = qword_1EB998878;
  if (!qword_1EB998878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998878);
  }

  return result;
}

unint64_t sub_1B75BFD2C()
{
  result = qword_1EB998880;
  if (!qword_1EB998880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998880);
  }

  return result;
}

unint64_t sub_1B75BFD84()
{
  result = qword_1EB998888;
  if (!qword_1EB998888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998888);
  }

  return result;
}

unint64_t sub_1B75BFDDC()
{
  result = qword_1EB998890;
  if (!qword_1EB998890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998890);
  }

  return result;
}

unint64_t sub_1B75BFE34()
{
  result = qword_1EB998898;
  if (!qword_1EB998898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998898);
  }

  return result;
}

unint64_t sub_1B75BFE8C()
{
  result = qword_1EB9988A0;
  if (!qword_1EB9988A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988A0);
  }

  return result;
}

unint64_t sub_1B75BFEE4()
{
  result = qword_1EB9988A8;
  if (!qword_1EB9988A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988A8);
  }

  return result;
}

unint64_t sub_1B75BFF3C()
{
  result = qword_1EB9988B0;
  if (!qword_1EB9988B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988B0);
  }

  return result;
}

unint64_t sub_1B75BFF94()
{
  result = qword_1EB9988B8;
  if (!qword_1EB9988B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988B8);
  }

  return result;
}

unint64_t sub_1B75BFFEC()
{
  result = qword_1EB9988C0;
  if (!qword_1EB9988C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988C0);
  }

  return result;
}

unint64_t sub_1B75C0044()
{
  result = qword_1EB9988C8;
  if (!qword_1EB9988C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988C8);
  }

  return result;
}

unint64_t sub_1B75C009C()
{
  result = qword_1EB9988D0;
  if (!qword_1EB9988D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988D0);
  }

  return result;
}

unint64_t sub_1B75C00F4()
{
  result = qword_1EB9988D8;
  if (!qword_1EB9988D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988D8);
  }

  return result;
}

unint64_t sub_1B75C014C()
{
  result = qword_1EB9988E0;
  if (!qword_1EB9988E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988E0);
  }

  return result;
}

unint64_t sub_1B75C01A4()
{
  result = qword_1EB9988E8;
  if (!qword_1EB9988E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988E8);
  }

  return result;
}

unint64_t sub_1B75C01FC()
{
  result = qword_1EB9988F0;
  if (!qword_1EB9988F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988F0);
  }

  return result;
}

unint64_t sub_1B75C0254()
{
  result = qword_1EB9988F8;
  if (!qword_1EB9988F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9988F8);
  }

  return result;
}

unint64_t sub_1B75C02AC()
{
  result = qword_1EB998900;
  if (!qword_1EB998900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998900);
  }

  return result;
}

unint64_t sub_1B75C0304()
{
  result = qword_1EB998908;
  if (!qword_1EB998908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998908);
  }

  return result;
}

unint64_t sub_1B75C035C()
{
  result = qword_1EB998910;
  if (!qword_1EB998910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998910);
  }

  return result;
}

unint64_t sub_1B75C03B4()
{
  result = qword_1EB998918;
  if (!qword_1EB998918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998918);
  }

  return result;
}

uint64_t sub_1B75C0408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E72656972726163 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E697070696873 && a2 == 0xEE00646F6874654DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697070696873 && a2 == 0xEC00000065746144 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B78820E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xEC00000065746144 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78804B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B78804D0 == a2)
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

uint64_t sub_1B75C0700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966667573 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50656C7070417369 && a2 == 0xEA00000000007961)
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

uint64_t sub_1B75C0820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001B7877900 == a2;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7879EB0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E726564726FLL && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144726564726FLL && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x647055726564726FLL && a2 == 0xEF65746144657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7880510 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656D6F74737563 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746E656D796170 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x617453726564726FLL && a2 == 0xEB00000000737574 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7877940 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7877960 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1B75C0C00()
{
  result = qword_1EB998920;
  if (!qword_1EB998920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998920);
  }

  return result;
}

unint64_t sub_1B75C0C54()
{
  result = qword_1EB998928;
  if (!qword_1EB998928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998928);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit20FraudAssessmentErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(order:orderContent:returnStatus:)@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990810);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25[-v12];
  ManagedECommerceOrderContent.status.getter(&v26);
  v14 = v26;
  v15 = [a1 isMarkedAsComplete];
  v16 = [a1 isMarkedAsCompleteModificationDate];
  if (v16)
  {
    v17 = v16;
    sub_1B77FF928();

    v18 = sub_1B77FF988();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  }

  else
  {

    v19 = sub_1B77FF988();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  }

  v20 = *(v8 + 80);
  *v10 = v14;
  v10[1] = a3;
  sub_1B7205340(v13, &v10[v20]);
  v21 = v10[1];
  if (v15 && (v22 = sub_1B77FF988(), v23 = *(v22 - 8), (*(v23 + 48))(&v10[v20], 1, v22) != 1))
  {
    (*(v23 + 32))(a4, &v10[v20], v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a4 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
    swift_storeEnumTagMultiPayload();
    return sub_1B7205418(&v10[v20], &qword_1EB98EBD0);
  }
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(order:orderContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998948);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23[-v10];
  ManagedECommerceOrderContent.status.getter(&v24);
  v12 = v24;
  v13 = [a1 isMarkedAsComplete];
  v14 = [a1 isMarkedAsCompleteModificationDate];
  if (v14)
  {
    v15 = v14;
    sub_1B77FF928();

    v16 = sub_1B77FF988();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  }

  else
  {

    v17 = sub_1B77FF988();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  v18 = *(v6 + 64);
  *v8 = v12;
  sub_1B7205340(v11, &v8[v18]);
  v19 = *v8;
  if (*v8)
  {
    if (v19 != 1)
    {
      LOBYTE(v19) = 2;
    }

    *a3 = v19;
    goto LABEL_11;
  }

  if ((v13 & 1) == 0 || (v20 = sub_1B77FF988(), v21 = *(v20 - 8), (*(v21 + 48))(&v8[v18], 1, v20) == 1))
  {
    *a3 = 0;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
    swift_storeEnumTagMultiPayload();
    return sub_1B7205418(&v8[v18], &qword_1EB98EBD0);
  }

  (*(v21 + 32))(a3, &v8[v18], v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(orderContent:returnStatus:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990810);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  LOBYTE(a2) = *a2;
  v13 = *(a1 + *(type metadata accessor for RawECommerceOrderContent(0) + 36));
  sub_1B75A93B4(a1);
  v14 = sub_1B77FF988();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = *(v7 + 88);
  *v9 = v13;
  v9[1] = a2;
  sub_1B7205340(v12, &v9[v15]);
  *a3 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
  swift_storeEnumTagMultiPayload();
  return sub_1B7205418(&v9[v15], &qword_1EB98EBD0);
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(orderContent:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998948);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = *(a1 + *(type metadata accessor for RawECommerceOrderContent(0) + 36));
  sub_1B75A93B4(a1);
  v12 = sub_1B77FF988();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = *(v5 + 72);
  *v7 = v11;
  sub_1B7205340(v10, &v7[v13]);
  *a2 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  swift_storeEnumTagMultiPayload();
  return sub_1B7205418(&v7[v13], &qword_1EB98EBD0);
}

uint64_t Order.Fulfillment.DisplayStatus<>.localizedTitle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - v2;
  sub_1B7205588(v0, &v17 - v2, &qword_1EB990808);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (*v3)
    {
      if (*v3 == 1)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_13;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
LABEL_13:
        v11 = qword_1EDAF93B0;
        v12 = sub_1B7800838();
        v13 = sub_1B7800838();
        v14 = sub_1B7800838();
        v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

        v10 = sub_1B7800868();
        return v10;
      }
    }

    else if (qword_1EDAF93A8 == -1)
    {
      goto LABEL_13;
    }

    swift_once();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDAF93B0;
    v6 = sub_1B7800838();
    v7 = sub_1B7800838();
    v8 = sub_1B7800838();
    v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

    v10 = sub_1B7800868();
    sub_1B7205418(v3, &qword_1EB990808);
    return v10;
  }

  result = sub_1B78020E8();
  __break(1u);
  return result;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18[-v2];
  sub_1B7205588(v0, &v18[-v2], &qword_1EB990818);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (*v3)
    {
      if (*v3 == 1)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
LABEL_14:
        v12 = qword_1EDAF93B0;
        v13 = sub_1B7800838();
        v14 = sub_1B7800838();
        v15 = sub_1B7800838();
        v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

        v17 = sub_1B7800868();
        return v17;
      }
    }

    else if (qword_1EDAF93A8 == -1)
    {
      goto LABEL_14;
    }

    swift_once();
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18[15] = *v3;
    return Order.ReturnStatus.localizedTitle.getter();
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDAF93B0;
    v7 = sub_1B7800838();
    v8 = sub_1B7800838();
    v9 = sub_1B7800838();
    v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

    v11 = sub_1B7800868();
    sub_1B7205418(v3, &qword_1EB990818);
    return v11;
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  sub_1B7205588(v1, &v19 - v3, &qword_1EB990830);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (*v4)
    {
      if (*v4 == 1)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_30;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_30;
      }
    }

    else if (qword_1EDAF93A8 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *v4;
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_30;
        }
      }

      else if (v6 == 4)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_30;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
LABEL_30:
        v13 = qword_1EDAF93B0;
        v14 = sub_1B7800838();
        v15 = sub_1B7800838();
        v16 = sub_1B7800838();
        v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

        v12 = sub_1B7800868();
        return v12;
      }
    }

    else if (*v4)
    {
      if (v6 == 1)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_30;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_30;
      }
    }

    else if (qword_1EDAF93A8 == -1)
    {
      goto LABEL_30;
    }

LABEL_32:
    swift_once();
    goto LABEL_30;
  }

  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDAF93B0;
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = sub_1B7800838();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_1B7800868();
  sub_1B7205418(v4, &qword_1EB990830);
  return v12;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - v2;
  sub_1B7205588(v0, &v18 - v2, &qword_1EB990820);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (*v3)
    {
      if (*v3 == 1)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_42;
      }
    }

    else if (qword_1EDAF93A8 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v3;
    if (v5 > 3)
    {
      if (*v3 > 5u)
      {
        if (v5 == 6)
        {
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_42;
          }
        }

        else if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (v5 == 4)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (v3[1])
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
LABEL_42:
        v12 = qword_1EDAF93B0;
        v13 = sub_1B7800838();
        v14 = sub_1B7800838();
        v15 = sub_1B7800838();
        v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

        v11 = sub_1B7800868();
        return v11;
      }
    }

    else if (*v3 > 1u)
    {
      if (v5 == 2)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_42;
      }
    }

    else if (*v3)
    {
      if (v3[1])
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_42;
      }
    }

    else if (qword_1EDAF93A8 == -1)
    {
      goto LABEL_42;
    }

LABEL_44:
    swift_once();
    goto LABEL_42;
  }

  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDAF93B0;
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_1B7800868();
  sub_1B7205418(v3, &qword_1EB990820);
  return v11;
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(orderContent:pickupStatus:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998950);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = *a2;
  v12 = *(a1 + *(type metadata accessor for RawECommerceOrderContent(0) + 36));
  v13 = sub_1B77FF988();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = *(v5 + 80);
  *v7 = v12;
  v7[1] = v11;
  v7[2] = 0;
  sub_1B7205588(v10, &v7[v14], &qword_1EB98EBD0);
  LODWORD(v15) = v7[1];
  if (v15 == 3 || v15 == 5)
  {
    goto LABEL_6;
  }

  if ((*v7 - 1) < 2u)
  {
    LOBYTE(v15) = *v7;
LABEL_6:
    sub_1B75A93B4(a1);
    sub_1B7205418(v10, &qword_1EB98EBD0);
    *v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
    swift_storeEnumTagMultiPayload();
    return sub_1B7205418(&v7[v14], &qword_1EB98EBD0);
  }

  if (v15 < 5 && ((0x17u >> v15) & 1) != 0)
  {
    v15 = 0x400020100uLL >> (8 * (v15 & 0x1Fu));
    goto LABEL_6;
  }

  result = sub_1B78020E8();
  __break(1u);
  return result;
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(order:orderContent:pickupStatus:)@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998950);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27[-v12];
  ManagedECommerceOrderContent.status.getter(&v28);
  v14 = v28;
  v15 = [a1 isMarkedAsComplete];
  v16 = [a1 isMarkedAsCompleteModificationDate];
  if (v16)
  {
    v17 = v16;
    sub_1B77FF928();

    v18 = sub_1B77FF988();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  }

  else
  {
    v19 = sub_1B77FF988();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  }

  v20 = *(v8 + 80);
  *v10 = v14;
  v10[1] = a3;
  v10[2] = v15;
  sub_1B7205588(v13, &v10[v20], &qword_1EB98EBD0);
  v21 = v10[1];
  if (v21 == 5)
  {

    sub_1B7205418(v13, &qword_1EB98EBD0);
    v22 = 5;
    goto LABEL_8;
  }

  if (v21 == 3)
  {

    sub_1B7205418(v13, &qword_1EB98EBD0);
    v22 = 3;
    goto LABEL_8;
  }

  if (*v10)
  {
    if (*v10 == 1)
    {

      sub_1B7205418(v13, &qword_1EB98EBD0);
      v23 = 1;
    }

    else
    {

      sub_1B7205418(v13, &qword_1EB98EBD0);
      v23 = 2;
    }

    *a4 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
    goto LABEL_20;
  }

  if (v15 && (v24 = sub_1B77FF988(), v25 = *(v24 - 8), (*(v25 + 48))(&v10[v20], 1, v24) != 1))
  {

    sub_1B7205418(v13, &qword_1EB98EBD0);
    (*(v25 + 32))(a4, &v10[v20], v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (v21 <= 1)
    {
      if (!v21)
      {

        sub_1B7205418(v13, &qword_1EB98EBD0);
        *a4 = 0;
        goto LABEL_9;
      }

      sub_1B7205418(v13, &qword_1EB98EBD0);
      v22 = 1;
LABEL_8:
      *a4 = v22;
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
LABEL_20:
      swift_storeEnumTagMultiPayload();
      return sub_1B7205418(&v10[v20], &qword_1EB98EBD0);
    }

    if (v21 == 2)
    {

      sub_1B7205418(v13, &qword_1EB98EBD0);
      v22 = 2;
      goto LABEL_8;
    }

    if (v21 == 4)
    {

      sub_1B7205418(v13, &qword_1EB98EBD0);
      v22 = 4;
      goto LABEL_8;
    }

    result = sub_1B78020E8();
    __break(1u);
  }

  return result;
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(order:orderContent:shippingStatus:shippingType:)@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v32 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB998958);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  ManagedECommerceOrderContent.status.getter(&v33);
  v15 = v33;
  v16 = [a1 isMarkedAsComplete];
  v17 = [a1 isMarkedAsCompleteModificationDate];
  if (v17)
  {
    v18 = v17;
    sub_1B77FF928();

    v19 = sub_1B77FF988();
    (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  }

  else
  {
    v20 = sub_1B77FF988();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  }

  v21 = *(v9 + 80);
  *v11 = v15;
  v11[1] = a3;
  v11[2] = v16;
  sub_1B7205588(v14, &v11[v21], &qword_1EB98EBD0);
  v22 = v11[1];
  switch(v22)
  {
    case 7:

      sub_1B7205418(v14, &qword_1EB98EBD0);
      v26 = 7;
LABEL_12:
      *a5 = v26;
      goto LABEL_13;
    case 5:

      sub_1B7205418(v14, &qword_1EB98EBD0);
      if ((v16 & 1) == 0 || (v23 = sub_1B77FF988(), v24 = *(v23 - 8), (*(v24 + 48))(&v11[v21], 1, v23) == 1))
      {
        *a5 = 5;
        a5[1] = v32 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
        swift_storeEnumTagMultiPayload();
        v25 = &v11[v21];
        return sub_1B7205418(v25, &qword_1EB98EBD0);
      }

      (*(v24 + 32))(a5, &v11[v21], v23);
      goto LABEL_30;
    case 4:

      sub_1B7205418(v14, &qword_1EB98EBD0);
      *a5 = a3;
LABEL_13:
      a5[1] = v32 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
      swift_storeEnumTagMultiPayload();
      v25 = &v11[v21];
      return sub_1B7205418(v25, &qword_1EB98EBD0);
  }

  if (*v11)
  {
    if (*v11 == 1)
    {

      sub_1B7205418(v14, &qword_1EB98EBD0);
      v27 = 1;
    }

    else
    {

      sub_1B7205418(v14, &qword_1EB98EBD0);
      v27 = 2;
    }

    *a5 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
    swift_storeEnumTagMultiPayload();
    v25 = &v11[v21];
    return sub_1B7205418(v25, &qword_1EB98EBD0);
  }

  if (v16)
  {
    v28 = sub_1B77FF988();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(&v11[v21], 1, v28) != 1)
    {

      sub_1B7205418(v14, &qword_1EB98EBD0);
      (*(v29 + 32))(a5, &v11[v21], v28);
LABEL_30:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
      return swift_storeEnumTagMultiPayload();
    }
  }

  if (v22 <= 1)
  {
    if (!v22)
    {

      sub_1B7205418(v14, &qword_1EB98EBD0);
      *a5 = 0;
      goto LABEL_13;
    }

    sub_1B7205418(v14, &qword_1EB98EBD0);
    v26 = 1;
    goto LABEL_12;
  }

  switch(v22)
  {
    case 2:

      sub_1B7205418(v14, &qword_1EB98EBD0);
      v26 = 2;
      goto LABEL_12;
    case 3:

      sub_1B7205418(v14, &qword_1EB98EBD0);
      v26 = 3;
      goto LABEL_12;
    case 6:

      sub_1B7205418(v14, &qword_1EB98EBD0);
      v26 = 6;
      goto LABEL_12;
  }

  result = sub_1B78020E8();
  __break(1u);
  return result;
}

uint64_t static Order.Fulfillment.DisplayStatus.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a1;
  v59 = a2;
  v10 = sub_1B77FF988();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v49 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v48 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47[0] = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[1] = a5;
  v56 = a3;
  v60 = a3;
  v61 = a4;
  v54 = a4;
  v62 = a5;
  v63 = a6;
  v50 = a6;
  v16 = type metadata accessor for Order.Fulfillment.DisplayStatus();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v47 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v47 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  v27 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v29 = v47 - v28;
  v30 = *(v27 + 48);
  v31 = *(v17 + 16);
  v31(v47 - v28, v58, v16);
  v31(&v29[v30], v59, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = v55;
    v38 = v56;
    v31(v25, v29, v16);
    if (!swift_getEnumCaseMultiPayload())
    {
      v45 = v47[0];
      (*(v39 + 32))(v47[0], &v29[v30], v38);
      v36 = sub_1B7800828();
      v46 = *(v39 + 8);
      v46(v45, v38);
      v46(v25, v38);
      goto LABEL_12;
    }

    (*(v39 + 8))(v25, v38);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31(v20, v29, v16);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v41 = v52;
      v40 = v53;
      v42 = v49;
      (*(v52 + 32))(v49, &v29[v30], v53);
      v36 = sub_1B77FF918();
      v43 = *(v41 + 8);
      v43(v42, v40);
      v43(v20, v40);
      goto LABEL_12;
    }

    (*(v52 + 8))(v20, v53);
LABEL_11:
    v36 = 0;
    v17 = v57;
    v16 = TupleTypeMetadata2;
    goto LABEL_12;
  }

  v31(v23, v29, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v51 + 8))(v23, v54);
    goto LABEL_11;
  }

  v33 = v51;
  v34 = v48;
  v35 = v54;
  (*(v51 + 32))(v48, &v29[v30], v54);
  v36 = sub_1B7800828();
  v37 = *(v33 + 8);
  v37(v34, v35);
  v37(v23, v35);
LABEL_12:
  (*(v17 + 8))(v29, v16);
  return v36 & 1;
}

_BYTE *Order.Fulfillment.ShippingDisplayStatusTypeModel.init(shippingStatus:shippingType:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(orderStatus:isMarkedAsComplete:isMarkedAsCompleteModificationDate:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998948);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  LOBYTE(v10) = *a1;
  v12 = *(v9 + 72);
  *v11 = v10;
  sub_1B7205340(a3, &v11[v12]);
  v13 = *v11;
  if (*v11)
  {
    if (v13 != 1)
    {
      LOBYTE(v13) = 2;
    }

    *a4 = v13;
    goto LABEL_8;
  }

  if ((a2 & 1) == 0 || (v14 = sub_1B77FF988(), v15 = *(v14 - 8), (*(v15 + 48))(&v11[v12], 1, v14) == 1))
  {
    *a4 = 0;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
    swift_storeEnumTagMultiPayload();
    return sub_1B7205418(&v11[v12], &qword_1EB98EBD0);
  }

  (*(v15 + 32))(a4, &v11[v12], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(orderStatus:returnStatus:isMarkedAsComplete:isMarkedAsCompleteModificationDate:)@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990810);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v14 = *a2;
  v15 = *(v11 + 88);
  *v13 = *a1;
  v13[1] = v14;
  sub_1B7205340(a4, &v20 + v15 - v12);
  v16 = v13[1];
  if ((a3 & 1) != 0 && (v17 = sub_1B77FF988(), v18 = *(v17 - 8), (*(v18 + 48))(&v13[v15], 1, v17) != 1))
  {
    (*(v18 + 32))(a5, &v13[v15], v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a5 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
    swift_storeEnumTagMultiPayload();
    return sub_1B7205418(&v13[v15], &qword_1EB98EBD0);
  }
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(orderStatus:pickupStatus:isMarkedAsComplete:isMarkedAsCompleteModificationDate:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v24 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998950);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = *a1;
  LOBYTE(a2) = *a2;
  sub_1B7205588(a4, &v23 - v13, &qword_1EB98EBD0);
  v16 = *(v9 + 80);
  *v11 = v15;
  v11[1] = a2;
  v11[2] = a3;
  sub_1B7205588(v14, &v11[v16], &qword_1EB98EBD0);
  v17 = v11[1];
  if (v17 == 5)
  {
    sub_1B7205418(a4, &qword_1EB98EBD0);
    sub_1B7205418(v14, &qword_1EB98EBD0);
    v18 = 5;
    goto LABEL_5;
  }

  if (v17 == 3)
  {
    sub_1B7205418(a4, &qword_1EB98EBD0);
    sub_1B7205418(v14, &qword_1EB98EBD0);
    v18 = 3;
    goto LABEL_5;
  }

  if (*v11)
  {
    if (*v11 == 1)
    {
      sub_1B7205418(a4, &qword_1EB98EBD0);
      sub_1B7205418(v14, &qword_1EB98EBD0);
      v19 = 1;
    }

    else
    {
      sub_1B7205418(a4, &qword_1EB98EBD0);
      sub_1B7205418(v14, &qword_1EB98EBD0);
      v19 = 2;
    }

    *v24 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
    goto LABEL_17;
  }

  if ((a3 & 1) != 0 && (v20 = sub_1B77FF988(), v21 = *(v20 - 8), (*(v21 + 48))(&v11[v16], 1, v20) != 1))
  {
    sub_1B7205418(a4, &qword_1EB98EBD0);
    sub_1B7205418(v14, &qword_1EB98EBD0);
    (*(v21 + 32))(v24, &v11[v16], v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (v17 <= 1)
    {
      if (!v17)
      {
        sub_1B7205418(a4, &qword_1EB98EBD0);
        sub_1B7205418(v14, &qword_1EB98EBD0);
        *v24 = 0;
        goto LABEL_6;
      }

      sub_1B7205418(a4, &qword_1EB98EBD0);
      sub_1B7205418(v14, &qword_1EB98EBD0);
      v18 = 1;
LABEL_5:
      *v24 = v18;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      return sub_1B7205418(&v11[v16], &qword_1EB98EBD0);
    }

    if (v17 == 2)
    {
      sub_1B7205418(a4, &qword_1EB98EBD0);
      sub_1B7205418(v14, &qword_1EB98EBD0);
      v18 = 2;
      goto LABEL_5;
    }

    if (v17 == 4)
    {
      sub_1B7205418(a4, &qword_1EB98EBD0);
      sub_1B7205418(v14, &qword_1EB98EBD0);
      v18 = 4;
      goto LABEL_5;
    }

    result = sub_1B78020E8();
    __break(1u);
  }

  return result;
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(orderContent:shippingStatus:shippingType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB998958);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21[-v12];
  v14 = *a2;
  v22 = *a3;
  LOBYTE(a2) = *(a1 + *(type metadata accessor for RawECommerceOrderContent(0) + 36));
  v15 = 0x706040302050100uLL >> (8 * v14);
  v16 = sub_1B77FF988();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = *(v8 + 80);
  *v10 = a2;
  *(v10 + 1) = v15;
  sub_1B7205588(v13, &v10[v17], &qword_1EB98EBD0);
  v18 = v10[1];
  switch(v18)
  {
    case 7:
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      v19 = 7;
      goto LABEL_7;
    case 5:
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      v19 = 5;
LABEL_7:
      *a4 = v19;
      goto LABEL_8;
    case 4:
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      *a4 = v15;
      goto LABEL_8;
  }

  if (*v10)
  {
    if (*v10 == 1)
    {
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      *a4 = 1;
    }

    else
    {
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      *a4 = 2;
    }

    goto LABEL_9;
  }

  if (v10[1] <= 1u)
  {
    if (v10[1])
    {
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      *a4 = 1;
      a4[1] = v22;
      goto LABEL_9;
    }

    sub_1B75A93B4(a1);
    sub_1B7205418(v13, &qword_1EB98EBD0);
    *a4 = 0;
LABEL_8:
    a4[1] = v22;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
    swift_storeEnumTagMultiPayload();
    return sub_1B7205418(&v10[v17], &qword_1EB98EBD0);
  }

  switch(v18)
  {
    case 2:
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      v19 = 2;
      goto LABEL_7;
    case 3:
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      v19 = 3;
      goto LABEL_7;
    case 6:
      sub_1B75A93B4(a1);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      v19 = 6;
      goto LABEL_7;
  }

  result = sub_1B78020E8();
  __break(1u);
  return result;
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(orderStatus:shippingStatus:shippingType:isMarkedAsComplete:isMarkedAsCompleteModificationDate:)@<X0>(char *a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v37 = a4;
  v39 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB998958);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = *a1;
  v17 = *a2;
  v36 = *a3;
  v38 = a5;
  sub_1B7205588(a5, &v35 - v14, &qword_1EB98EBD0);
  v18 = *(v10 + 80);
  *v12 = v16;
  v19 = v37;
  v12[1] = v17;
  v12[2] = v19;
  sub_1B7205588(v15, &v12[v18], &qword_1EB98EBD0);
  v20 = v12[1];
  switch(v20)
  {
    case 7:
      v26 = v18;
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v15, &qword_1EB98EBD0);
      v27 = 7;
LABEL_10:
      v28 = v39;
      *v39 = v27;
      v28[1] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
      swift_storeEnumTagMultiPayload();
      v25 = &v12[v26];
      return sub_1B7205418(v25, &qword_1EB98EBD0);
    case 5:
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v15, &qword_1EB98EBD0);
      if ((v19 & 1) == 0 || (v22 = sub_1B77FF988(), v23 = *(v22 - 8), (*(v23 + 48))(&v12[v18], 1, v22) == 1))
      {
        v24 = v39;
        *v39 = 5;
        v24[1] = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
        swift_storeEnumTagMultiPayload();
        v25 = &v12[v18];
        return sub_1B7205418(v25, &qword_1EB98EBD0);
      }

      (*(v23 + 32))(v39, &v12[v18], v22);
LABEL_28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
      return swift_storeEnumTagMultiPayload();
    case 4:
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v15, &qword_1EB98EBD0);
      v21 = v39;
      *v39 = v17;
LABEL_5:
      v21[1] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      v25 = &v12[v18];
      return sub_1B7205418(v25, &qword_1EB98EBD0);
  }

  if (*v12)
  {
    if (*v12 == 1)
    {
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v15, &qword_1EB98EBD0);
      v29 = 1;
    }

    else
    {
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v15, &qword_1EB98EBD0);
      v29 = 2;
    }

    *v39 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
    goto LABEL_22;
  }

  v30 = v15;
  if (v19)
  {
    v31 = sub_1B77FF988();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(&v12[v18], 1, v31) != 1)
    {
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v30, &qword_1EB98EBD0);
      (*(v32 + 32))(v39, &v12[v18], v31);
      goto LABEL_28;
    }
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v30, &qword_1EB98EBD0);
      v21 = v39;
      *v39 = 0;
      goto LABEL_5;
    }

    sub_1B7205418(v38, &qword_1EB98EBD0);
    sub_1B7205418(v30, &qword_1EB98EBD0);
    v33 = 1;
LABEL_33:
    v21 = v39;
    *v39 = v33;
    goto LABEL_5;
  }

  switch(v20)
  {
    case 2:
      v26 = v18;
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v30, &qword_1EB98EBD0);
      v27 = 2;
      goto LABEL_10;
    case 3:
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v30, &qword_1EB98EBD0);
      v33 = 3;
      goto LABEL_33;
    case 6:
      sub_1B7205418(v38, &qword_1EB98EBD0);
      sub_1B7205418(v30, &qword_1EB98EBD0);
      v33 = 6;
      goto LABEL_33;
  }

  result = sub_1B78020E8();
  __break(1u);
  return result;
}

uint64_t Order.Fulfillment.DisplayStatus<>.init(for:shippingType:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *a1;
  a3[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B75C57C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1B77FF988();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B75C5850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  v6 = *(*(sub_1B77FF988() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_29;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 < 2)
    {
LABEL_29:
      v14 = *(a1 + v7);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_29;
  }

LABEL_18:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 254;
}

void sub_1B75C59C4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*(*(*(a4 + 24) - 8) + 64) <= *(*(*(a4 + 16) - 8) + 64))
  {
    v7 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v7 = *(*(*(a4 + 24) - 8) + 64);
  }

  v8 = *(*(sub_1B77FF988() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_42:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v8] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_27;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t AccountAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountAction() + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AccountAction()
{
  result = qword_1EB998A28;
  if (!qword_1EB998A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccountAction.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountAction() + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccountAction.init(actionType:url:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for AccountAction() + 20);
  v6 = sub_1B77FF4F8();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static AccountAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for AccountAction();

  return sub_1B77FF458();
}

uint64_t sub_1B75C5E74()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x79546E6F69746361;
  }
}

uint64_t sub_1B75C5EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_1B75C5F90(uint64_t a1)
{
  v2 = sub_1B75C6898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75C5FCC(uint64_t a1)
{
  v2 = sub_1B75C6898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9989E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75C6898();
  sub_1B78023F8();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1B75C68EC();
  sub_1B7801FC8();
  if (!v2)
  {
    type metadata accessor for AccountAction();
    v10[13] = 1;
    sub_1B77FF4F8();
    sub_1B75C6AF0(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AccountAction.hash(into:)()
{
  MEMORY[0x1B8CA6620](*v0);
  type metadata accessor for AccountAction();
  sub_1B77FF4F8();
  sub_1B75C6AF0(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
  return sub_1B7800768();
}

uint64_t AccountAction.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](*v0);
  type metadata accessor for AccountAction();
  sub_1B77FF4F8();
  sub_1B75C6AF0(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t AccountAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1B77FF4F8();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9989F8);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for AccountAction();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75C6898();
  sub_1B78023C8();
  if (!v2)
  {
    v11 = v10;
    v19 = v8;
    v12 = v22;
    v13 = v23;
    v26 = 0;
    sub_1B75C69F0();
    v14 = v24;
    sub_1B7801E48();
    v18 = v11;
    *v11 = v27;
    v25 = 1;
    sub_1B75C6AF0(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    sub_1B7801E48();
    (*(v12 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v5, v13);
    sub_1B75C6A44(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B75C6658()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](*v0);
  sub_1B77FF4F8();
  sub_1B75C6AF0(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B75C6704()
{
  MEMORY[0x1B8CA6620](*v0);
  sub_1B77FF4F8();
  sub_1B75C6AF0(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
  return sub_1B7800768();
}

uint64_t sub_1B75C6798()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](*v0);
  sub_1B77FF4F8();
  sub_1B75C6AF0(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B75C6840(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B77FF458();
  }

  else
  {
    return 0;
  }
}

FinanceKit::AccountActionType_optional __swiftcall AccountActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B75C6898()
{
  result = qword_1EB9989E8;
  if (!qword_1EB9989E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9989E8);
  }

  return result;
}

unint64_t sub_1B75C68EC()
{
  result = qword_1EB9989F0;
  if (!qword_1EB9989F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9989F0);
  }

  return result;
}

unint64_t sub_1B75C69F0()
{
  result = qword_1EB998A00;
  if (!qword_1EB998A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A00);
  }

  return result;
}

uint64_t sub_1B75C6A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75C6AF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B75C6B3C()
{
  result = qword_1EB998A10;
  if (!qword_1EB998A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A10);
  }

  return result;
}

unint64_t sub_1B75C6B94()
{
  result = qword_1EB998A18;
  if (!qword_1EB998A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A18);
  }

  return result;
}

uint64_t sub_1B75C6C30()
{
  result = sub_1B77FF4F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B75C6CD0()
{
  result = qword_1EB998A38;
  if (!qword_1EB998A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A38);
  }

  return result;
}

unint64_t sub_1B75C6D28()
{
  result = qword_1EB998A40;
  if (!qword_1EB998A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A40);
  }

  return result;
}

unint64_t sub_1B75C6D80()
{
  result = qword_1EB998A48;
  if (!qword_1EB998A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A48);
  }

  return result;
}

unint64_t sub_1B75C6DD4()
{
  result = qword_1EB998A50;
  if (!qword_1EB998A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A50);
  }

  return result;
}

uint64_t Order.FulfillmentWindow.isSingleDateWindow(calendar:)()
{
  v1 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1B75C7834(v0, v6, type metadata accessor for Order.FulfillmentWindow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75CA01C(v6, v3, type metadata accessor for TimeWindow);
    (*(v8 + 16))(v13, v3, v7);
    sub_1B75C789C(v3, type metadata accessor for TimeWindow);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  Order.FulfillmentWindow.endDate.getter(v11);
  v14 = sub_1B77FFC28();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  return v14 & 1;
}

uint64_t Order.FulfillmentWindow.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_1B77FFB08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFC88();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75C7834(v2, v18, type metadata accessor for Order.FulfillmentWindow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v27;
    sub_1B75CA01C(v18, v15, type metadata accessor for TimeWindow);
    (*(v7 + 104))(v9, *MEMORY[0x1E6969830], v6);
    sub_1B77FFB18();
    (*(v7 + 8))(v9, v6);
    sub_1B77FFC08();
    v20 = sub_1B77FF988();
    v21 = *(v20 - 8);
    result = (*(v21 + 48))(v5, 1, v20);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v25 + 8))(v12, v26);
      sub_1B75C789C(v15, type metadata accessor for TimeWindow);
      return (*(v21 + 32))(v19, v5, v20);
    }
  }

  else
  {
    v23 = sub_1B77FF988();
    return (*(*(v23 - 8) + 32))(v27, v18, v23);
  }

  return result;
}

uint64_t Order.FulfillmentWindow.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75C7834(v2, v9, type metadata accessor for Order.FulfillmentWindow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75CA01C(v9, v6, type metadata accessor for TimeWindow);
    v10 = sub_1B77FF988();
    (*(*(v10 - 8) + 16))(a1, v6, v10);
    return sub_1B75C789C(v6, type metadata accessor for TimeWindow);
  }

  else
  {
    v12 = sub_1B77FF988();
    return (*(*(v12 - 8) + 32))(a1, v9, v12);
  }
}

uint64_t Order.FulfillmentWindow.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75C7834(v2, v9, type metadata accessor for Order.FulfillmentWindow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75CA01C(v9, v6, type metadata accessor for TimeWindow);
    sub_1B75C7834(&v6[*(v4 + 20)], a1, type metadata accessor for Duration);
    sub_1B75C789C(v6, type metadata accessor for TimeWindow);
    v10 = type metadata accessor for Duration();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for Duration();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    return sub_1B75C789C(v9, type metadata accessor for Order.FulfillmentWindow);
  }
}

uint64_t sub_1B75C7834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75C789C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75C7900()
{
  if (*v0)
  {
    return 0x646E6957656D6974;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1B75C7938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E6957656D6974 && a2 == 0xEA0000000000776FLL)
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

uint64_t sub_1B75C7A1C(uint64_t a1)
{
  v2 = sub_1B75C9ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75C7A58(uint64_t a1)
{
  v2 = sub_1B75C9ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75C7A94(uint64_t a1)
{
  v2 = sub_1B75C9F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75C7AD0(uint64_t a1)
{
  v2 = sub_1B75C9F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75C7B0C(uint64_t a1)
{
  v2 = sub_1B75C9F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75C7B48(uint64_t a1)
{
  v2 = sub_1B75C9F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.FulfillmentWindow.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998A58);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v24 - v3;
  v27 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998A60);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v24 = sub_1B77FF988();
  v33 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998A68);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75C9ED8();
  sub_1B78023F8();
  sub_1B75C7834(v32, v12, type metadata accessor for Order.FulfillmentWindow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v28;
    sub_1B75CA01C(v12, v28, type metadata accessor for TimeWindow);
    v36 = 1;
    sub_1B75C9F2C();
    v17 = v29;
    v18 = v34;
    sub_1B7801ED8();
    sub_1B75C9FD4(&qword_1EDAF8F80, type metadata accessor for TimeWindow);
    v19 = v31;
    sub_1B7801FC8();
    (*(v30 + 8))(v17, v19);
    sub_1B75C789C(v16, type metadata accessor for TimeWindow);
    return (*(v13 + 8))(v15, v18);
  }

  else
  {
    v21 = v24;
    (*(v33 + 32))(v9, v12, v24);
    v35 = 0;
    sub_1B75C9F80();
    v22 = v34;
    sub_1B7801ED8();
    sub_1B75C9FD4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    v23 = v26;
    sub_1B7801FC8();
    (*(v25 + 8))(v7, v23);
    (*(v33 + 8))(v9, v21);
    return (*(v13 + 8))(v15, v22);
  }
}

uint64_t Order.FulfillmentWindow.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998A88);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998A90);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998A98);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for Order.FulfillmentWindow(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B75C9ED8();
  v19 = v51;
  sub_1B78023C8();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v40 = v12;
  v41 = v15;
  v21 = v49;
  v20 = v50;
  v42 = 0;
  v39 = v17;
  v51 = v9;
  v22 = v48;
  v23 = sub_1B7801E98();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1B721CE4C();
  v26 = v6;
  v27 = v8;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v32 = sub_1B7801B18();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v34 = v51;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v25 & 1) == 0)
  {
    v57 = 0;
    sub_1B75C9F80();
    v36 = v42;
    sub_1B7801D38();
    if (!v36)
    {
      sub_1B77FF988();
      sub_1B75C9FD4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
      v30 = v41;
      v37 = v46;
      sub_1B7801E48();
      (*(v45 + 8))(v21, v37);
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v57 = 1;
  sub_1B75C9F2C();
  v28 = v20;
  v29 = v42;
  sub_1B7801D38();
  if (v29)
  {
LABEL_8:
    (*(v22 + 8))(v27, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  type metadata accessor for TimeWindow(0);
  sub_1B75C9FD4(&unk_1EDAF8F70, type metadata accessor for TimeWindow);
  v30 = v40;
  v31 = v44;
  sub_1B7801E48();
  (*(v47 + 8))(v28, v31);
  (*(v22 + 8))(v27, v26);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v38 = v39;
  sub_1B75CA01C(v30, v39, type metadata accessor for Order.FulfillmentWindow);
  sub_1B75CA01C(v38, v43, type metadata accessor for Order.FulfillmentWindow);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t Order.FulfillmentWindow.Formatter.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Order.FulfillmentWindow.Formatter(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Order.FulfillmentWindow.Formatter.style.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Order.FulfillmentWindow.Formatter(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t Order.FulfillmentWindow.Formatter.showDateForSingleDayWindow.setter(char a1)
{
  result = type metadata accessor for Order.FulfillmentWindow.Formatter(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Order.FulfillmentWindow.Formatter.init(configuration:style:showDateForSingleDayWindow:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  sub_1B75CA01C(a1, a4, type metadata accessor for FormatterConfiguration);
  result = type metadata accessor for Order.FulfillmentWindow.Formatter(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t Order.FulfillmentWindow.Formatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v23 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeWindow.Formatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75C7834(v24, v17, type metadata accessor for Order.FulfillmentWindow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75CA01C(v17, v14, type metadata accessor for TimeWindow);
    sub_1B75C7834(v2, v11, type metadata accessor for FormatterConfiguration);
    v18 = type metadata accessor for Order.FulfillmentWindow.Formatter(0);
    v19 = *(v2 + *(v18 + 24));
    v11[*(v9 + 20)] = *(v2 + *(v18 + 20));
    v11[*(v9 + 24)] = v19;
    v20 = TimeWindow.Formatter.format(_:now:)(v14, v25);
    sub_1B75C789C(v11, type metadata accessor for TimeWindow.Formatter);
    sub_1B75C789C(v14, type metadata accessor for TimeWindow);
  }

  else
  {
    (*(v6 + 32))(v8, v17, v5);
    sub_1B75C7834(v2, v4, type metadata accessor for FormatterConfiguration);
    v4[*(v23 + 20)] = *(v2 + *(type metadata accessor for Order.FulfillmentWindow.Formatter(0) + 20));
    v20 = SingleDateFormatter.format(_:now:)(v8, v25);
    sub_1B75C789C(v4, type metadata accessor for SingleDateFormatter);
    (*(v6 + 8))(v8, v5);
  }

  return v20;
}

uint64_t sub_1B75C8D10()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B75C8D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75CA894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75C8DA0(uint64_t a1)
{
  v2 = sub_1B75CA148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75C8DDC(uint64_t a1)
{
  v2 = sub_1B75CA148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.FulfillmentWindow.Formatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998AA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75CA148();
  sub_1B78023F8();
  v10[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B75C9FD4(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for Order.FulfillmentWindow.Formatter(0) + 20));
    v10[13] = 1;
    sub_1B7442868();
    sub_1B7801FC8();
    v10[12] = 2;
    sub_1B7801F88();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Order.FulfillmentWindow.Formatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B75C9FD4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75C9FD4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75C9FD4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for Order.FulfillmentWindow.Formatter(0);
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
  return sub_1B7802318();
}

uint64_t Order.FulfillmentWindow.Formatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75C9FD4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75C9FD4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75C9FD4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for Order.FulfillmentWindow.Formatter(0);
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t Order.FulfillmentWindow.Formatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998AB0);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Order.FulfillmentWindow.Formatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75CA148();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v24 = 0;
  sub_1B75C9FD4(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
  v14 = v19;
  sub_1B7801E48();
  sub_1B75CA01C(v20, v13, type metadata accessor for FormatterConfiguration);
  v22 = 1;
  sub_1B74428BC();
  sub_1B7801E48();
  *(v13 + *(v9 + 20)) = v23;
  v21 = 2;
  v15 = sub_1B7801E08();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v15 & 1;
  sub_1B75C7834(v13, v17, type metadata accessor for Order.FulfillmentWindow.Formatter);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B75C789C(v13, type metadata accessor for Order.FulfillmentWindow.Formatter);
}

uint64_t sub_1B75C9670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Order.FulfillmentWindow.Formatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B75C9698@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.FulfillmentWindow.Formatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B75C97B4(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B75C9FD4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75C9FD4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75C9FD4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  return sub_1B7802318();
}

uint64_t sub_1B75C9914(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75C9FD4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75C9FD4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75C9FD4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit5OrderV17FulfillmentWindowO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v26 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Order.FulfillmentWindow(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998B50);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_1B75C7834(a1, &v25 - v16, type metadata accessor for Order.FulfillmentWindow);
  sub_1B75C7834(v28, &v17[v18], type metadata accessor for Order.FulfillmentWindow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B75C7834(v17, v13, type metadata accessor for Order.FulfillmentWindow);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      v22 = sub_1B77FF918();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v13, v4);
      sub_1B75C789C(v17, type metadata accessor for Order.FulfillmentWindow);
      return v22 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_9;
  }

  sub_1B75C7834(v17, v11, type metadata accessor for Order.FulfillmentWindow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B75C789C(v11, type metadata accessor for TimeWindow);
LABEL_9:
    sub_1B75CA9B8(v17);
LABEL_13:
    v22 = 0;
    return v22 & 1;
  }

  v19 = &v17[v18];
  v20 = v27;
  sub_1B75CA01C(v19, v27, type metadata accessor for TimeWindow);
  if ((sub_1B77FF918() & 1) == 0)
  {
    sub_1B75C789C(v20, type metadata accessor for TimeWindow);
    goto LABEL_12;
  }

  v21 = MEMORY[0x1B8CA2F10](&v11[*(v26 + 20)], v20 + *(v26 + 20));
  sub_1B75C789C(v20, type metadata accessor for TimeWindow);
  if ((v21 & 1) == 0)
  {
LABEL_12:
    sub_1B75C789C(v11, type metadata accessor for TimeWindow);
    sub_1B75C789C(v17, type metadata accessor for Order.FulfillmentWindow);
    goto LABEL_13;
  }

  sub_1B75C789C(v11, type metadata accessor for TimeWindow);
  sub_1B75C789C(v17, type metadata accessor for Order.FulfillmentWindow);
  v22 = 1;
  return v22 & 1;
}

unint64_t sub_1B75C9ED8()
{
  result = qword_1EB998A70;
  if (!qword_1EB998A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A70);
  }

  return result;
}

unint64_t sub_1B75C9F2C()
{
  result = qword_1EB998A78;
  if (!qword_1EB998A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A78);
  }

  return result;
}

unint64_t sub_1B75C9F80()
{
  result = qword_1EB998A80;
  if (!qword_1EB998A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998A80);
  }

  return result;
}

uint64_t sub_1B75C9FD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B75CA01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10FinanceKit5OrderV17FulfillmentWindowO9FormatterV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) != 0 && (v5 = type metadata accessor for Order.FulfillmentWindow.Formatter(0), *(a1 + *(v5 + 20)) == *(a2 + *(v5 + 20))))
  {
    v6 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1B75CA148()
{
  result = qword_1EB998AA8;
  if (!qword_1EB998AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998AA8);
  }

  return result;
}

uint64_t sub_1B75CA19C(uint64_t a1)
{
  result = sub_1B75C9FD4(&qword_1EB998AB8, type metadata accessor for Order.FulfillmentWindow.Formatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B75CA314()
{
  result = sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimeWindow(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B75CA3B0()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B75CA478()
{
  result = qword_1EB998AF0;
  if (!qword_1EB998AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998AF0);
  }

  return result;
}

unint64_t sub_1B75CA4D0()
{
  result = qword_1EB998AF8;
  if (!qword_1EB998AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998AF8);
  }

  return result;
}

unint64_t sub_1B75CA528()
{
  result = qword_1EB998B00;
  if (!qword_1EB998B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B00);
  }

  return result;
}

unint64_t sub_1B75CA580()
{
  result = qword_1EB998B08;
  if (!qword_1EB998B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B08);
  }

  return result;
}

unint64_t sub_1B75CA5D8()
{
  result = qword_1EB998B10;
  if (!qword_1EB998B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B10);
  }

  return result;
}

unint64_t sub_1B75CA630()
{
  result = qword_1EB998B18;
  if (!qword_1EB998B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B18);
  }

  return result;
}

unint64_t sub_1B75CA688()
{
  result = qword_1EB998B20;
  if (!qword_1EB998B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B20);
  }

  return result;
}

unint64_t sub_1B75CA6E0()
{
  result = qword_1EB998B28;
  if (!qword_1EB998B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B28);
  }

  return result;
}

unint64_t sub_1B75CA738()
{
  result = qword_1EB998B30;
  if (!qword_1EB998B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B30);
  }

  return result;
}

unint64_t sub_1B75CA790()
{
  result = qword_1EB998B38;
  if (!qword_1EB998B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B38);
  }

  return result;
}

unint64_t sub_1B75CA7E8()
{
  result = qword_1EB998B40;
  if (!qword_1EB998B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B40);
  }

  return result;
}

unint64_t sub_1B75CA840()
{
  result = qword_1EB998B48;
  if (!qword_1EB998B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B48);
  }

  return result;
}

uint64_t sub_1B75CA894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B7886120 == a2)
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

uint64_t sub_1B75CA9B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FraudAssessmentType.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t FraudAssessmentType.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B75CAAFC()
{
  result = qword_1EDAF8758[0];
  if (!qword_1EDAF8758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAF8758);
  }

  return result;
}

unint64_t sub_1B75CAB50()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t SingleDateFormatter.init(configuration:style:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1B742F678(a1, a3);
  result = type metadata accessor for SingleDateFormatter();
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t type metadata accessor for SingleDateFormatter()
{
  result = qword_1EB998BE8;
  if (!qword_1EB998BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleDateFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v84 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FF778();
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1B77FFCF8();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = &v72 - v11;
  v12 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1B77FF7D8();
  v79 = *(v81 - 8);
  v14 = MEMORY[0x1EEE9AC00](v81);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v72 - v16;
  v17 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v103 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B77FF848();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v94 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B77FFC88();
  v100 = *(v21 - 8);
  v101 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B77FFAF8();
  v97 = *(v23 - 8);
  v98 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B77FF878();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v91 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B77FF8A8();
  v92 = *(v27 - 8);
  v93 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v90 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1B77FF988();
  v105 = *(v29 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v72 - v33;
  v35 = sub_1B77FED28();
  v104 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for RelativeDayFormatter();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v12;
  v41 = *(v12 + 20);
  v42 = v2;
  if (sub_1B77FFB98() & 1) != 0 || (sub_1B77FFB38() & 1) != 0 || (sub_1B77FFB88())
  {
    v43 = sub_1B75CDCFC(v2, v40, type metadata accessor for FormatterConfiguration);
    MEMORY[0x1EEE9AC00](v43);
    *(&v72 - 2) = v40;
    v44 = sub_1B75CB95C(v40, sub_1B754BA48);
    v45 = sub_1B77FF8B8();
    v46 = [v44 stringFromDate_];

    v47 = sub_1B7800868();
    v48 = type metadata accessor for RelativeDayFormatter;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v73 = sub_1B77FFC68();
  v50 = *(v73 - 8);
  v75 = a1;
  v51 = v50;
  v72 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v52 = v72;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1B7807CD0;
  v54 = v53 + v52;
  v55 = v73;
  (*(v51 + 104))(v54, *MEMORY[0x1E6969A48], v73);
  v74 = sub_1B7545E58(v53);
  swift_setDeallocating();
  (*(v51 + 8))(v53 + v72, v55);
  swift_deallocClassInstance();
  v56 = v106;
  Date.noon.getter(v34);
  Date.noon.getter(v32);
  sub_1B77FFB58();

  v57 = *(v105 + 8);
  v57(v32, v29);
  v57(v34, v29);
  v58 = sub_1B77FEC08();
  LOBYTE(v55) = v59;
  result = (*(v104 + 8))(v37, v35);
  if ((v55 & 1) == 0)
  {
    if ((v58 + 1) >= 0xFFFFFFFFFFFFFFF3)
    {
      sub_1B77FF868();
      (*(v97 + 16))(v99, v42, v98);
      (*(v100 + 16))(v102, v42 + v41, v101);
      sub_1B77FF838();
      sub_1B77FF368();
      v62 = v90;
      sub_1B77FF888();
      v47 = sub_1B77FF898();
      (*(v92 + 8))(v62, v93);
      return v47;
    }

    v60 = v96;
    sub_1B75CDCFC(v42, v96, type metadata accessor for FormatterConfiguration);
    if ((v58 - 7) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v63 = sub_1B77FF648();
      (*(*(v63 - 8) + 56))(v77, 1, 1, v63);
      v64 = sub_1B77FF628();
      (*(*(v64 - 8) + 56))(v80, 1, 1, v64);
      (*(v97 + 16))(v99, v60, v98);
      v65 = v95;
      (*(v100 + 16))(v102, v60 + *(v95 + 20), v101);
      (*(v82 + 16))(v83, v60 + *(v65 + 24), v85);
      sub_1B77FF368();
      v66 = v76;
      sub_1B77FF668();
      sub_1B75CD628(v60, type metadata accessor for FormatterConfiguration);
      v67 = v87;
      sub_1B77FF768();
      v68 = v78;
      sub_1B77FF7A8();
      (*(v88 + 8))(v67, v89);
      v69 = *(v79 + 8);
      v70 = v66;
      v71 = v81;
      v69(v70, v81);
      v47 = sub_1B77FF788();
      v69(v68, v71);
      return v47;
    }

    v61 = *(v42 + *(type metadata accessor for SingleDateFormatter() + 20));
    v40 = v86;
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v60, v40);
    v40[*(v84 + 20)] = v61;
    v47 = FullDateFormatter.format(_:now:)(v75, v56);
    v48 = type metadata accessor for FullDateFormatter;
LABEL_5:
    sub_1B75CD628(v40, v48);
    return v47;
  }

  __break(1u);
  return result;
}

id sub_1B75CB95C(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for RelativeDayFormatter();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75CDCFC(a1, v6, type metadata accessor for RelativeDayFormatter);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998C48);
  v8 = objc_allocWithZone(v7);
  sub_1B75CDCFC(v6, v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60), type metadata accessor for RelativeDayFormatter);
  v13.receiver = v8;
  v13.super_class = v7;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  sub_1B75CD628(v6, type metadata accessor for RelativeDayFormatter);
  if (qword_1EB98EAF0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB996F68;
  v11 = [qword_1EB996F68 objectForKey_];
  if (!v11)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    a2();
    [v10 setObject:v11 forKey:v9];
  }

  return v11;
}

uint64_t sub_1B75CBB40()
{
  if (*v0)
  {
    return 1701079415;
  }

  else
  {
    return 0x74726F6873;
  }
}

uint64_t sub_1B75CBB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701079415 && a2 == 0xE400000000000000)
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

uint64_t sub_1B75CBC48(uint64_t a1)
{
  v2 = sub_1B75CD4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75CBC84(uint64_t a1)
{
  v2 = sub_1B75CD4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75CBCC0(uint64_t a1)
{
  v2 = sub_1B75CD580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75CBCFC(uint64_t a1)
{
  v2 = sub_1B75CD580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75CBD38(uint64_t a1)
{
  v2 = sub_1B75CD52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75CBD74(uint64_t a1)
{
  v2 = sub_1B75CD52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SingleDateFormatter.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998B58);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998B60);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998B68);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75CD4D8();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B75CD52C();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B75CD580();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t SingleDateFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t SingleDateFormatter.Style.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998B88);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998B90);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998B98);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75CD4D8();
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
      *v22 = &type metadata for SingleDateFormatter.Style;
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
        sub_1B75CD52C();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B75CD580();
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

uint64_t SingleDateFormatter.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SingleDateFormatter();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SingleDateFormatter.style.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SingleDateFormatter();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t static SingleDateFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    v5 = type metadata accessor for SingleDateFormatter();
    v6 = *(a1 + *(v5 + 20)) ^ *(a2 + *(v5 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B75CC758(uint64_t a1)
{
  v2 = sub_1B75CD5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75CC794(uint64_t a1)
{
  v2 = sub_1B75CD5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SingleDateFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998BA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75CD5D4();
  sub_1B78023F8();
  v10[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B75CD858(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for SingleDateFormatter() + 20));
    v10[13] = 1;
    sub_1B7442868();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SingleDateFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B75CD858(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75CD858(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75CD858(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for SingleDateFormatter();
  return MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
}

uint64_t SingleDateFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75CD858(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75CD858(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75CD858(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
  return sub_1B7802368();
}

uint64_t SingleDateFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998BB0);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75CD5D4();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v17;
  v13 = v11;
  v22 = 0;
  sub_1B75CD858(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
  v14 = v18;
  sub_1B7801E48();
  sub_1B742F678(v19, v13);
  v20 = 1;
  sub_1B74428BC();
  sub_1B7801E48();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1B75CDCFC(v13, v16, type metadata accessor for SingleDateFormatter);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B75CD628(v13, type metadata accessor for SingleDateFormatter);
}

uint64_t sub_1B75CCF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = SingleDateFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B75CCF98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = SingleDateFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B75CD0B0(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75CD858(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75CD858(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75CD858(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v1 + *(a1 + 20)));
  return sub_1B7802368();
}

uint64_t sub_1B75CD21C(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B75CD858(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75CD858(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75CD858(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
}

uint64_t sub_1B75CD370(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75CD858(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75CD858(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75CD858(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  return sub_1B7802368();
}

unint64_t sub_1B75CD4D8()
{
  result = qword_1EB998B70;
  if (!qword_1EB998B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B70);
  }

  return result;
}

unint64_t sub_1B75CD52C()
{
  result = qword_1EB998B78;
  if (!qword_1EB998B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B78);
  }

  return result;
}

unint64_t sub_1B75CD580()
{
  result = qword_1EB998B80;
  if (!qword_1EB998B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998B80);
  }

  return result;
}

unint64_t sub_1B75CD5D4()
{
  result = qword_1EB998BA8;
  if (!qword_1EB998BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998BA8);
  }

  return result;
}

uint64_t sub_1B75CD628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B75CD68C()
{
  result = qword_1EB998BB8;
  if (!qword_1EB998BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998BB8);
  }

  return result;
}

uint64_t sub_1B75CD6E0(uint64_t a1)
{
  result = sub_1B75CD858(&qword_1EB998BC0, type metadata accessor for SingleDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B75CD858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B75CD8C8()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B75CD990()
{
  result = qword_1EB998BF8;
  if (!qword_1EB998BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998BF8);
  }

  return result;
}

unint64_t sub_1B75CD9E8()
{
  result = qword_1EB998C00;
  if (!qword_1EB998C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C00);
  }

  return result;
}

unint64_t sub_1B75CDA40()
{
  result = qword_1EB998C08;
  if (!qword_1EB998C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C08);
  }

  return result;
}

unint64_t sub_1B75CDA98()
{
  result = qword_1EB998C10;
  if (!qword_1EB998C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C10);
  }

  return result;
}

unint64_t sub_1B75CDAF0()
{
  result = qword_1EB998C18;
  if (!qword_1EB998C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C18);
  }

  return result;
}

unint64_t sub_1B75CDB48()
{
  result = qword_1EB998C20;
  if (!qword_1EB998C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C20);
  }

  return result;
}

unint64_t sub_1B75CDBA0()
{
  result = qword_1EB998C28;
  if (!qword_1EB998C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C28);
  }

  return result;
}

unint64_t sub_1B75CDBF8()
{
  result = qword_1EB998C30;
  if (!qword_1EB998C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C30);
  }

  return result;
}

unint64_t sub_1B75CDC50()
{
  result = qword_1EB998C38;
  if (!qword_1EB998C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C38);
  }

  return result;
}

unint64_t sub_1B75CDCA8()
{
  result = qword_1EB998C40;
  if (!qword_1EB998C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C40);
  }

  return result;
}

uint64_t sub_1B75CDCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t InternalConsentAsyncSequence.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  v9 = *(v1 + 16);
  v3 = v9;
  v10 = v4;
  v5 = *(v1 + 25);
  sub_1B719B06C(v1 + 32, v8);
  v6 = *(v1 + 72);
  sub_1B72274E8(v3, v4);

  return sub_1B75CDDEC(&v9, v5, v8, v6, a1);
}

uint64_t sub_1B75CDDEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  LOBYTE(v7) = a2;
  v50 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v48 - v10;
  v12 = *a1;
  LOBYTE(v13) = *(a1 + 8);
  v14 = sub_1B77FFA18();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_1B719B06C(a3, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998C58);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = MEMORY[0x1E69E7CC0];
  *(v15 + qword_1EDB08720) = 0;
  v16 = v15 + qword_1EDB086F0;
  *v16 = 0;
  *(v16 + 8) = -1;
  v17 = qword_1EDB08700;
  if (qword_1EDAF6588 != -1)
  {
LABEL_23:
    swift_once();
  }

  v18 = sub_1B78000B8();
  v19 = __swift_project_value_buffer(v18, qword_1EDAF6590);
  (*(*(v18 - 8) + 16))(v15 + v17, v19, v18);
  sub_1B7227AFC(v11, v15 + qword_1EDB086F8);
  *(v15 + 32) = v7 & 1;
  *(v15 + qword_1EDB08748) = a4;
  v20 = (v15 + qword_1EDB08740);
  *v20 = sub_1B75CE8B4;
  v20[1] = 0;
  v21 = *v16;
  *v16 = v12;
  v22 = *(v16 + 8);
  *(v16 + 8) = v13;

  sub_1B7201CF8(v21, v22);
  v23 = *__swift_project_boxed_opaque_existential_1(v57, v58);
  v24 = type metadata accessor for FinanceStore();
  v12 = &off_1F2F66960;
  v55 = v24;
  v56 = &off_1F2F66960;
  v54[0] = v23;
  sub_1B719B06C(v54, v53);
  v25 = swift_allocObject();
  sub_1B71E4C44(v53, v25 + 16);

  __swift_destroy_boxed_opaque_existential_1(v54);
  v26 = (v15 + qword_1EDB08708);
  *v26 = &unk_1B7810520;
  v26[1] = v25;
  v27 = *__swift_project_boxed_opaque_existential_1(v57, v58);
  v55 = v24;
  v56 = &off_1F2F66960;
  v54[0] = v27;
  sub_1B719B06C(v54, v53);
  v28 = swift_allocObject();
  sub_1B71E4C44(v53, v28 + 16);

  __swift_destroy_boxed_opaque_existential_1(v54);
  v29 = (v15 + qword_1EDB08718);
  *v29 = &unk_1B7824A70;
  v29[1] = v28;
  *(v15 + qword_1EDB08710) = 0;
  v30 = [objc_opt_self() defaultCenter];
  sub_1B78013F8();

  v51 = v15;
  sub_1B78013C8();
  v31 = [*(a4 + 16) persistentStoreCoordinator];
  v13 = [v31 persistentStores];

  sub_1B72BB97C();
  v7 = sub_1B7800C38();

  v48[1] = a4;
  v49 = a3;
  v48[0] = v11;
  if (!(v7 >> 62))
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_25:

    v41 = 0;
    v43 = 0;
    v39 = v49;
    v38 = v50;
    v40 = v48[0];
    goto LABEL_26;
  }

  v15 = sub_1B7801958();
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_4:
  a3 = 0;
  v16 = 0x6C61636F4CLL;
  v52 = v7 & 0xC000000000000001;
  v17 = v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v52)
    {
      v32 = MEMORY[0x1B8CA5DC0](a3, v7);
    }

    else
    {
      if (a3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v32 = *(v7 + 8 * a3 + 32);
    }

    v11 = v32;
    a4 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v12 = [v32 configurationName];
    v33 = sub_1B7800868();
    v35 = v34;

    if (v33 == 0x6C61636F4CLL && v35 == 0xE500000000000000)
    {
      break;
    }

    LOBYTE(v13) = sub_1B78020F8();

    if (v13)
    {
      goto LABEL_18;
    }

    ++a3;
    if (a4 == v15)
    {
      goto LABEL_25;
    }
  }

LABEL_18:

  v37 = [v11 identifier];

  v39 = v49;
  v38 = v50;
  v40 = v48[0];
  if (v37)
  {
    v41 = sub_1B7800868();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

LABEL_26:
  v44 = v51;
  v45 = (v51 + qword_1EDB08730);
  *v45 = v41;
  v45[1] = v43;
  *(v44 + qword_1EDB08728) = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v46 = _os_activity_create(&dword_1B7198000, "FinancialDataAsyncIterator", qword_1EDAFA650, OS_ACTIVITY_FLAG_DETACHED);

  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1B72BB9C8(v40);
  result = __swift_destroy_boxed_opaque_existential_1(v57);
  *(v44 + qword_1EDB08738) = v46;
  *v38 = v44;
  return result;
}

uint64_t InternalConsentAsyncSequence.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return (sub_1B73E15E0)(a1);
}

uint64_t sub_1B75CE500(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B723838C;

  return (sub_1B73E15E0)(a1);
}

uint64_t sub_1B75CE5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B7800CD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B75CE64C, v6);
}

uint64_t sub_1B75CE64C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B73DE6C4;
  v2 = *(v0 + 24);

  return sub_1B73E15E0(v2);
}

uint64_t InternalConsentAsyncSequence.deinit()
{
  sub_1B7201CF8(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t InternalConsentAsyncSequence.__deallocating_deinit()
{
  sub_1B7201CF8(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1B75CE780()
{
  result = qword_1EB998C50;
  if (!qword_1EB998C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C50);
  }

  return result;
}

uint64_t sub_1B75CE7D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v3 + 24);
  v10 = *(v3 + 16);
  v4 = v10;
  v11 = v5;
  v6 = *(v3 + 25);
  sub_1B719B06C(v3 + 32, v9);
  v7 = *(v3 + 72);
  sub_1B72274E8(v4, v5);

  sub_1B75CDDEC(&v10, v6, v9, v7, a1);
}

uint64_t Order.LineItem.init(_:previewResourceLoader:)@<X0>(__int128 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[1];
  v53 = *a1;
  v54 = v3;
  v4 = a1[5];
  v57 = a1[4];
  v58 = v4;
  v5 = a1[7];
  v59 = a1[6];
  v60 = v5;
  v6 = a1[3];
  v55 = a1[2];
  v56 = v6;
  v7 = *(&v53 + 1);
  v38 = v53;
  v8 = *(&v54 + 1);
  v36 = v54;
  v9 = v55;
  sub_1B719B06C(a2, v50);
  v37 = v7;
  if (v9)
  {
    v11 = v51;
    v12 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v13 = *(v12 + 8);

    v34 = v13(v8, v9, v11, v12);
    v35 = v14;
  }

  else
  {

    v34 = v8;
    v35 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  v31 = a2;
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  v32 = (*(v16 + 8))(*(&v55 + 1), v56, v15, v16);
  v18 = v17;
  v20 = *(&v56 + 1);
  v19 = v57;
  v21 = v58;
  v30 = *(&v57 + 1);
  v22 = *(&v58 + 1);

  v23 = v59;
  v24 = v60;

  sub_1B732624C(&v53);
  *&v39 = v38;
  *(&v39 + 1) = v37;
  *&v40 = v36;
  *(&v40 + 1) = v34;
  *&v41 = v35;
  *(&v41 + 1) = v32;
  *&v42 = v18;
  *(&v42 + 1) = v20;
  *&v43 = v19;
  *(&v43 + 1) = v30;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  v45 = v23;
  v46 = v24;
  v25 = v42;
  a3[2] = v41;
  a3[3] = v25;
  v26 = v46;
  a3[6] = v45;
  a3[7] = v26;
  v27 = v44;
  a3[4] = v43;
  a3[5] = v27;
  v28 = v40;
  *a3 = v39;
  a3[1] = v28;
  sub_1B7326398(&v39, v47);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v47[0] = v38;
  v47[1] = v37;
  v47[2] = v36;
  v47[3] = v34;
  v47[4] = v35;
  v47[5] = v32;
  v47[6] = v18;
  v47[7] = v20;
  v47[8] = v19;
  v47[9] = v30;
  v47[10] = v21;
  v47[11] = v22;
  v48 = v23;
  v49 = v24;
  return sub_1B73263F4(v47);
}

void Order.LineItem.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 image];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v43 = v7;
    v44 = v6;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v42 = [a1 quantity];
  v8 = [a1 subtitle];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B77FFA48();
    v11 = sub_1B741F7D4(v10);
    v40 = v12;
    v41 = v11;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v13 = [a1 title];
  v14 = sub_1B77FFA48();
  v39 = sub_1B741F7D4(v14);
  v16 = v15;

  v17 = [a1 priceAmount];
  if (v17)
  {
    v18 = v17;
    v19 = [a1 priceCurrency];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1B7800868();
      v37 = v22;
      v38 = v21;

      [v18 decimalValue];
      v23 = v46;
      v35 = v45;
      v24 = v47;

      goto LABEL_12;
    }
  }

  v35 = 0;
  v37 = 0;
  v23 = 0;
  v24 = 0;
  v38 = 0;
LABEL_12:

  v25 = [a1 sku];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1B7800868();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [a1 gtin];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1B7800868();
    v34 = v33;
  }

  else
  {

    v32 = 0;
    v34 = 0;
  }

  *a2 = v44;
  a2[1] = v43;
  a2[2] = v42;
  a2[3] = v41;
  a2[4] = v40;
  a2[5] = v39;
  a2[6] = v16;
  a2[7] = v36;
  a2[8] = v23;
  a2[9] = v24;
  a2[10] = v38;
  a2[11] = v37;
  a2[12] = v27;
  a2[13] = v29;
  a2[14] = v32;
  a2[15] = v34;
}

uint64_t Order.LineItem.image.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Order.LineItem.image.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Order.LineItem.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Order.LineItem.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Order.LineItem.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Order.LineItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Order.LineItem.price.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 Order.LineItem.price.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  *(v1 + 72) = *(a1 + 16);
  *(v1 + 56) = result;
  *(v1 + 88) = v3;
  return result;
}

uint64_t Order.LineItem.sku.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Order.LineItem.sku.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t Order.LineItem.gtin.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Order.LineItem.gtin.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_1B75CF0E0()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 7695219;
  if (v1 != 5)
  {
    v3 = 1852404839;
  }

  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x6563697270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x797469746E617571;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_1B75CF1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75D0350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75CF1C8(uint64_t a1)
{
  v2 = sub_1B75CFE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75CF204(uint64_t a1)
{
  v2 = sub_1B75CFE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.LineItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998C60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v7;
  v8 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v8;
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v19 = *(v1 + 72);
  v20 = v10;
  v11 = *(v1 + 96);
  v21 = *(v1 + 88);
  v22 = v9;
  v12 = *(v1 + 104);
  v13 = *(v1 + 112);
  v18[2] = v11;
  v18[3] = v12;
  v14 = *(v1 + 120);
  v18[0] = v13;
  v18[1] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75CFE48();
  sub_1B78023F8();
  LOBYTE(v28) = 0;
  v15 = v27;
  sub_1B7801EF8();
  if (!v15)
  {
    v16 = v21;
    LOBYTE(v28) = 1;
    sub_1B7801FA8();
    LOBYTE(v28) = 2;
    sub_1B7801EF8();
    LOBYTE(v28) = 3;
    sub_1B7801F78();
    v28 = v20;
    v29 = v19;
    v30 = v16;
    v31 = 4;
    sub_1B7215044();

    sub_1B7801F38();

    LOBYTE(v28) = 5;
    sub_1B7801EF8();
    LOBYTE(v28) = 6;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Order.LineItem.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998C70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B75CFE48();
  sub_1B78023C8();
  if (v2)
  {
    v52 = v2;
    v10 = 0;
  }

  else
  {
    v50 = v6;
    LOBYTE(v61) = 0;
    v12 = sub_1B7801D78();
    v48 = v13;
    LOBYTE(v61) = 1;
    v14 = sub_1B7801E28();
    v15 = v50;
    v16 = v14;
    LOBYTE(v61) = 2;
    v17 = sub_1B7801D78();
    v19 = v18;
    v47 = v17;
    LOBYTE(v61) = 3;
    v20 = sub_1B7801DF8();
    v52 = 0;
    v46 = v20;
    v49 = v21;
    LOBYTE(v53) = 4;
    sub_1B72153F8();
    v22 = v52;
    sub_1B7801DB8();
    v52 = v22;
    if (v22)
    {
      (*(v15 + 8))(v8, v5);
    }

    else
    {
      v44 = v61;
      v45 = v16;
      v42 = v63;
      v43 = v62;
      v41 = v64;
      v23 = v65;

      LOBYTE(v61) = 5;
      v24 = v52;
      v25 = sub_1B7801D78();
      if (!v24)
      {
        v27 = v26;
        v40 = v25;
        v77 = 6;
        v28 = sub_1B7801D78();
        v52 = 0;
        v29 = v28;
        v30 = v8;
        v32 = v31;
        (*(v50 + 8))(v30, v5);
        v33 = v48;
        *&v53 = v12;
        *(&v53 + 1) = v48;
        *&v54 = v45;
        *(&v54 + 1) = v47;
        *&v55 = v19;
        *(&v55 + 1) = v46;
        *&v56 = v49;
        *(&v56 + 1) = v44;
        *&v57 = v43;
        *(&v57 + 1) = v42;
        *&v58 = v41;
        *(&v58 + 1) = v23;
        *&v59 = v40;
        *(&v59 + 1) = v27;
        *&v60 = v29;
        *(&v60 + 1) = v32;
        v34 = v53;
        v35 = v54;
        v36 = v56;
        a2[2] = v55;
        a2[3] = v36;
        *a2 = v34;
        a2[1] = v35;
        v37 = v57;
        v38 = v58;
        v39 = v60;
        a2[6] = v59;
        a2[7] = v39;
        a2[4] = v37;
        a2[5] = v38;
        sub_1B7326398(&v53, &v61);
        __swift_destroy_boxed_opaque_existential_1(v51);
        v61 = v12;
        v62 = v33;
        v63 = v45;
        v64 = v47;
        v65 = v19;
        v66 = v46;
        v67 = v49;
        v68 = v44;
        v69 = v43;
        v70 = v42;
        v71 = v41;
        v72 = v23;
        v73 = v40;
        v74 = v27;
        v75 = v29;
        v76 = v32;
        return sub_1B73263F4(&v61);
      }

      v52 = v24;
      (*(v50 + 8))(v8, v5);
    }

    v10 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v51);

  if (v10)
  {
  }
}

BOOL _s10FinanceKit5OrderV8LineItemV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  v16 = a1[13];
  v15 = a1[14];
  v17 = a1[15];
  v18 = a2[1];
  v19 = a2[2];
  v21 = a2[3];
  v20 = a2[4];
  v22 = a2[5];
  v23 = a2[6];
  v99 = a2[8];
  v100 = a2[7];
  v97 = a2[10];
  v98 = a2[9];
  v25 = a2[11];
  v24 = a2[12];
  v27 = a2[13];
  v26 = a2[14];
  v28 = a2[15];
  if (v3)
  {
    if (!v18)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v18)
    {
      if (v4 != v19)
      {
        return 0;
      }

LABEL_12:
      if (v6)
      {
        if (!v20)
        {
          return 0;
        }

        if (v5 != v21 || v6 != v20)
        {
          v92 = v11;
          v95 = v15;
          v31 = v17;
          v77 = v13;
          v79 = v24;
          v32 = v28;
          v82 = v16;
          v85 = v26;
          v33 = v14;
          v34 = v27;
          v35 = v12;
          v89 = v9;
          v36 = v10;
          v37 = sub_1B78020F8();
          v9 = v89;
          v10 = v36;
          v12 = v35;
          v11 = v92;
          v15 = v95;
          v24 = v79;
          v16 = v82;
          v27 = v34;
          v14 = v33;
          v26 = v85;
          v28 = v32;
          v13 = v77;
          v17 = v31;
          if ((v37 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v20)
      {
        return 0;
      }

      if (v8 != v22 || v7 != v23)
      {
        v93 = v11;
        v96 = v15;
        v38 = v17;
        v39 = v13;
        v40 = v28;
        v41 = v26;
        v42 = v14;
        v43 = v16;
        v44 = v27;
        v45 = v24;
        v46 = v12;
        v90 = v9;
        v47 = v10;
        v48 = sub_1B78020F8();
        v9 = v90;
        v10 = v47;
        v12 = v46;
        v11 = v93;
        v15 = v96;
        v24 = v45;
        v27 = v44;
        v16 = v43;
        v14 = v42;
        v26 = v41;
        v28 = v40;
        v13 = v39;
        v17 = v38;
        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }

      if (v13)
      {
        if (v25)
        {
          v49 = v11;
          v80 = v24;
          v83 = v16;
          v73 = v27;
          v75 = v14;
          v86 = v26;
          v50 = v28;
          v51 = v17;
          v52 = v15;
          v53 = v13;
          v54 = v12;
          v55 = v9;
          v56 = v10;
          swift_bridgeObjectRetain_n();

          v57 = v56;
          v58 = v56;
          v59 = v55;
          v60 = v55;
          v61 = v54;
          if (MEMORY[0x1B8CA5970](v58, v60, v54, v100, v99, v98))
          {
            if (v49 == v97 && v53 == v25)
            {

LABEL_39:
              v101 = v57;
              v102 = v59;
              v103 = v61;
              v104 = v49;
              v105 = v53;
              sub_1B721722C(&v101);
              goto LABEL_40;
            }

            v62 = sub_1B78020F8();

            if (v62)
            {
              goto LABEL_39;
            }
          }

          else
          {
          }

          v101 = v57;
          v102 = v59;
          v103 = v61;
          v104 = v49;
          v105 = v53;
          sub_1B721722C(&v101);
LABEL_34:

          return 0;
        }

        v101 = v10;
        v102 = v9;
        v103 = v12;
        v104 = v11;
        v105 = v13;
        swift_bridgeObjectRetain_n();
        sub_1B721722C(&v101);
      }

      else
      {
        if (!v25)
        {
          v80 = v24;
          v83 = v16;
          v73 = v27;
          v75 = v14;
          v86 = v26;
          v50 = v28;
          v51 = v17;
          v52 = v15;
LABEL_40:

          v63 = v52;
          v64 = v51;
          v65 = v50;
          v66 = v86;
          if (v83)
          {
            if (!v73)
            {
              return 0;
            }

            if (v75 != v80 || v83 != v73)
            {
              v67 = sub_1B78020F8();
              v66 = v86;
              v65 = v50;
              v64 = v51;
              v63 = v52;
              if ((v67 & 1) == 0)
              {
                return 0;
              }
            }
          }

          else if (v73)
          {
            return 0;
          }

          if (v64)
          {
            return v65 && (v63 == v66 && v64 == v65 || (sub_1B78020F8() & 1) != 0);
          }

          return !v65;
        }
      }

      goto LABEL_34;
    }

    v87 = a2[11];
    v88 = a1[8];
    v68 = a1[7];
    v69 = a1[9];
    v91 = a1[10];
    v94 = a1[14];
    v78 = a2[12];
    v81 = a1[13];
    v72 = a2[13];
    v74 = a1[12];
    v84 = a2[14];
    v70 = a2[15];
    v71 = a1[15];
    v76 = a1[11];
    v30 = sub_1B78020F8();
    result = 0;
    if (v30)
    {
      v11 = v91;
      v15 = v94;
      v28 = v70;
      v17 = v71;
      v14 = v74;
      v13 = v76;
      v16 = v81;
      v26 = v84;
      v27 = v72;
      v24 = v78;
      v10 = v68;
      v12 = v69;
      v25 = v87;
      v9 = v88;
      if (v4 == v19)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if (!v18 && v4 == v19)
    {
      goto LABEL_12;
    }
  }

  return result;
}

unint64_t sub_1B75CFE48()
{
  result = qword_1EB998C68;
  if (!qword_1EB998C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C68);
  }

  return result;
}

uint64_t _s8LineItemVwxx()
{
}

uint64_t _s8LineItemVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  v7 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;

  return a1;
}

uint64_t _s8LineItemVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t _s8LineItemVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;

  v7 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v7;

  v8 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v8;

  return a1;
}

uint64_t _s8LineItemVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s8LineItemVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B75D024C()
{
  result = qword_1EB998C78;
  if (!qword_1EB998C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C78);
  }

  return result;
}

unint64_t sub_1B75D02A4()
{
  result = qword_1EB998C80;
  if (!qword_1EB998C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C80);
  }

  return result;
}

unint64_t sub_1B75D02FC()
{
  result = qword_1EB998C88;
  if (!qword_1EB998C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998C88);
  }

  return result;
}

uint64_t sub_1B75D0350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7695219 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1852404839 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id ManagedExtractedOrderTransaction.__allocating_init(extractedOrderTransaction:positionIndex:context:)(uint64_t a1, __int16 a2, void *a3)
{
  v4 = *(a1 + 20);
  v16 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v17 = *(a1 + 72);
  v8 = *(a1 + 88);
  v9 = [objc_allocWithZone(v3) initWithContext_];
  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1B7801608();
  }

  [v9 setAmount_];

  if (v16)
  {

    v11 = sub_1B7800838();
  }

  else
  {
    v11 = 0;
  }

  [v9 setCurrencyCode_];

  if (v6 < 2)
  {
    v12 = 0;
  }

  else
  {

    v12 = sub_1B7800838();
  }

  [v9 setPaymentMethodDisplayName_];

  v13 = 0;
  if (v6 != 1 && v7)
  {

    v13 = sub_1B7800838();
  }

  [v9 setPaymentMethodSuffix_];

  [v9 setPaymentMethodIsApplePay_];
  if (v8)
  {

    v14 = sub_1B7800838();

    sub_1B7531560(v5, v6);
    swift_bridgeObjectRelease_n();
  }

  else
  {

    sub_1B7531560(v5, v6);

    v14 = 0;
  }

  [v9 setTransactionIdentifier_];

  [v9 setPositionIndex_];
  return v9;
}

id ManagedExtractedOrderTransaction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedExtractedOrderTransaction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedExtractedOrderTransaction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B75D09C0()
{
  result = *(v0 + qword_1EB998C90);
  if (result)
  {
    v2 = [result endpoint];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FinanceXPCListener.__allocating_init(listener:entitlementChecker:connectionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B75D0ED0(a1, a2, a3, a4);

  return v5;
}

id FinanceXPCListener.init(listener:entitlementChecker:connectionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B75D0DAC(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_1B75D0A98(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1B75D0F34(v7);

  return v9 & 1;
}

id FinanceXPCListener.__deallocating_deinit()
{
  result = *&v0[qword_1EB998C90];
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for FinanceXPCListener();
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B75D0BBC(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_1EB998C98);
}

id FinanceXPCListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FinanceXPCListener.anonymous(connectionHandler:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for FinanceXPCListener();
  v7 = [objc_opt_self() anonymousListener];
  sub_1B73413F8(v10, v6, v5);

  v8 = sub_1B75D0ED0(v7, v10, a1, a2);

  return v8;
}

id sub_1B75D0DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[qword_1EB998C90] = a1;
  sub_1B719B06C(a2, &v4[qword_1EB998C98]);
  v9 = &v4[qword_1EB998CA0];
  *v9 = a3;
  *(v9 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FinanceXPCListener();
  v10 = a1;

  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 setDelegate_];
  [v10 resume];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t sub_1B75D0F34(void *a1)
{
  type metadata accessor for ServiceToClientXPCConnection();
  sub_1B719B06C(v1 + qword_1EB998C98, v7);
  v3 = a1;
  v4 = sub_1B741BBBC(v3, v7);

  v5 = *(v1 + qword_1EB998CA0);

  v5(v4);

  return 1;
}

id MapsStyleAttributesInput.xpcValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = type metadata accessor for MapsStyleAttributesInput.XPC();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___XPCMapsStyleAttributesInput_value];
  *v6 = v1;
  *(v6 + 1) = v2;
  v6[16] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t MapsStyleAttributesInput.attributes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MapsStyleAttributesInput.customIconID.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

FinanceKit::MapsStyleAttributesInput __swiftcall MapsStyleAttributesInput.init(attributes:customIconID:)(Swift::OpaquePointer attributes, Swift::Int_optional customIconID)
{
  *v2 = attributes;
  *(v2 + 8) = customIconID.value;
  *(v2 + 16) = customIconID.is_nil;
  result.customIconID = customIconID;
  result.attributes = attributes;
  return result;
}

uint64_t static MapsStyleAttributesInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1B7220504(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B75D12FC()
{
  if (*v0)
  {
    return 0x63496D6F74737563;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1B75D1344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63496D6F74737563 && a2 == 0xEC00000044496E6FLL)
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

uint64_t sub_1B75D142C(uint64_t a1)
{
  v2 = sub_1B75D1A4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D1468(uint64_t a1)
{
  v2 = sub_1B75D1A4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsStyleAttributesInput.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  v10[3] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75D1A4C();

  sub_1B78023F8();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D28);
  sub_1B75D1AA0(&qword_1EB998D30);
  sub_1B7801FC8();

  if (!v2)
  {
    v12 = 1;
    sub_1B7801F28();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MapsStyleAttributesInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75D1A4C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D28);
  v14[15] = 0;
  sub_1B75D1AA0(&unk_1EB998D40);
  sub_1B7801E48();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_1B7801DA8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B75D18E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1B7220504(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MapsStyleAttributesInput.XPC.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value + 8);
  v3 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value + 16);
  *a1 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id MapsStyleAttributesInput.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = &v3[OBJC_IVAR___XPCMapsStyleAttributesInput_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  v6[16] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id MapsStyleAttributesInput.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = &v1[OBJC_IVAR___XPCMapsStyleAttributesInput_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  v6[16] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_1B75D1A4C()
{
  result = qword_1EB998D20;
  if (!qword_1EB998D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998D20);
  }

  return result;
}

uint64_t sub_1B75D1AA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998D28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id MapsStyleAttributesInput.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7208D80(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsStyleAttributesInput.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7208D80(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id MapsStyleAttributesInput.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsStyleAttributesInput.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B75D1D74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value + 8);
  v3 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value + 16);
  *a1 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id sub_1B75D1D94(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = &v3[OBJC_IVAR___XPCMapsStyleAttributesInput_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  v6[16] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_1B75D1E44()
{
  result = qword_1EB998D50;
  if (!qword_1EB998D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998D50);
  }

  return result;
}

unint64_t sub_1B75D1E9C()
{
  result = qword_1EB998D58;
  if (!qword_1EB998D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998D58);
  }

  return result;
}

unint64_t sub_1B75D1EF4()
{
  result = qword_1EB998D60;
  if (!qword_1EB998D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998D60);
  }

  return result;
}

void MapsMerchant.postalAddress.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapsMerchant() + 80);

  *(v1 + v3) = a1;
}

uint64_t type metadata accessor for MapsMerchant()
{
  result = qword_1EB998DB0;
  if (!qword_1EB998DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MapsMerchant.postalAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsMerchant() + 80));
  v2 = v1;
  return v1;
}

void MapsMerchant.init(muid:placeIdentifier:resultProviderIdentifier:name:phoneNumber:url:heroImageURL:heroImageAttributionName:mapsCategory:mapsCategoryIdentifier:encodedStylingInfo:businessChatURL:lastProcessedDate:locationLatitude:locationLongitude:postalAddress:hasBrand:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v48 = *a14;
  v29 = type metadata accessor for MapsMerchant();
  v30 = v29[9];
  v45 = v30;
  v31 = sub_1B77FF4F8();
  v32 = *(*(v31 - 8) + 56);
  v32(a9 + v30, 1, 1, v31);
  v44 = v29[10];
  v32(a9 + v44, 1, 1, v31);
  v42 = v29[12];
  v33 = (a9 + v29[11]);
  *(a9 + v42) = 8;
  v34 = (a9 + v29[13]);
  v35 = a9 + v29[14];
  *v35 = xmmword_1B7810080;
  v43 = v29[15];
  v32(a9 + v43, 1, 1, v31);
  v36 = v29[16];
  v41 = v36;
  v37 = sub_1B77FF988();
  (*(*(v37 - 8) + 56))(a9 + v36, 1, 1, v37);
  v38 = a9 + v29[18];
  v39 = a9 + v29[19];
  v40 = v29[20];
  *(a9 + v40) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  sub_1B7213740(a10, a9 + v45, &unk_1EB994C70);
  sub_1B7213740(a11, a9 + v44, &unk_1EB994C70);
  *v33 = a12;
  v33[1] = a13;
  *(a9 + v42) = v48;
  *v34 = a15;
  v34[1] = a16;
  sub_1B72380B8(*v35, *(v35 + 8));
  *v35 = a17;
  *(v35 + 8) = a18;
  sub_1B7213740(a19, a9 + v43, &unk_1EB994C70);
  sub_1B7213740(a20, a9 + v41, &qword_1EB98EBD0);
  *v38 = a21;
  *(v38 + 8) = a22 & 1;
  *v39 = a23;
  *(v39 + 8) = a24 & 1;
  *(a9 + v29[17]) = a26;

  *(a9 + v40) = a25;
}

uint64_t MapsMerchant.placeIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MapsMerchant.placeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MapsMerchant.resultProviderIdentifier.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t MapsMerchant.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MapsMerchant.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MapsMerchant.phoneNumber.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MapsMerchant.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MapsMerchant.heroImageAttributionName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsMerchant() + 44));

  return v1;
}

uint64_t MapsMerchant.heroImageAttributionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsMerchant() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MapsMerchant.mapsCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MapsMerchant();
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t MapsMerchant.mapsCategory.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MapsMerchant();
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t MapsMerchant.mapsCategoryIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsMerchant() + 52));

  return v1;
}

uint64_t MapsMerchant.mapsCategoryIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsMerchant() + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MapsMerchant.encodedStylingInfo.getter()
{
  v1 = v0 + *(type metadata accessor for MapsMerchant() + 56);
  v2 = *v1;
  sub_1B7228588(*v1, *(v1 + 8));
  return v2;
}

uint64_t MapsMerchant.encodedStylingInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MapsMerchant() + 56);
  result = sub_1B72380B8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}