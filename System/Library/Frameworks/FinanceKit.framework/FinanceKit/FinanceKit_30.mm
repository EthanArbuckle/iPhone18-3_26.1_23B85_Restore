uint64_t CascadeExtractedOrder.ShippingRecipient.fullName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingRecipient.fullName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingRecipient.phoneNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingRecipient.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingRecipient.emailAddress.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingRecipient.emailAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1B746E27C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v9 = v1[5];
  v10 = v2;
  v11 = v1[7];
  v3 = v11;
  v4 = v1[4];
  v8[0] = v1[3];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B72B1DD8(v8, &v7);
}

__n128 CascadeExtractedOrder.ShippingRecipient.address.setter(uint64_t a1)
{
  v3 = v1[6];
  v7[2] = v1[5];
  v7[3] = v3;
  v7[4] = v1[7];
  v4 = v1[4];
  v7[0] = v1[3];
  v7[1] = v4;
  sub_1B7478128(v7);
  v5 = *(a1 + 48);
  v1[5] = *(a1 + 32);
  v1[6] = v5;
  v1[7] = *(a1 + 64);
  result = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = result;
  return result;
}

uint64_t sub_1B746E364()
{
  v1 = 0x656D614E6C6C7566;
  v2 = 0x6464416C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x73736572646461;
  }

  if (*v0)
  {
    v1 = 0x6D754E656E6F6870;
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

uint64_t sub_1B746E3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747B8E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B746E418(uint64_t a1)
{
  v2 = sub_1B7478440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B746E454(uint64_t a1)
{
  v2 = sub_1B7478440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B746E4D4(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *v4;
  v17[4] = v4[1];
  v17[5] = v10;
  v11 = v4[2];
  v17[2] = v4[3];
  v17[3] = v11;
  v12 = v4[4];
  v17[0] = v4[5];
  v17[1] = v12;
  v13 = *(v4 + 6);
  v28 = *(v4 + 5);
  v29 = v13;
  v30 = *(v4 + 7);
  v14 = *(v4 + 4);
  v26 = *(v4 + 3);
  v27 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();
  sub_1B78023F8();
  LOBYTE(v21) = 0;
  v15 = v19;
  sub_1B7801EF8();
  if (!v15)
  {
    LOBYTE(v21) = 1;
    sub_1B7801EF8();
    LOBYTE(v21) = 2;
    sub_1B7801EF8();
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    v31 = 3;
    sub_1B72B1DD8(&v26, v20);
    sub_1B7478330();
    sub_1B7801FC8();
    v20[2] = v23;
    v20[3] = v24;
    v20[4] = v25;
    v20[0] = v21;
    v20[1] = v22;
    sub_1B7478128(v20);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t CascadeExtractedOrder.ShippingRecipient.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995320);
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v26 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7478440();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v30 = v5;
    LOBYTE(v39[0]) = 0;
    v8 = sub_1B7801D78();
    v10 = v9;
    v11 = v8;
    LOBYTE(v39[0]) = 1;
    v12 = sub_1B7801D78();
    v14 = v13;
    v27 = v12;
    v28 = v11;
    v29 = a2;
    LOBYTE(v39[0]) = 2;
    v15 = sub_1B7801D78();
    v17 = v16;
    v26 = v15;
    v45 = 3;
    sub_1B7478384();
    sub_1B7801E48();
    (*(v30 + 8))(v7, v56);
    v53 = v48;
    v54 = v49;
    v55 = v50;
    v51 = v46;
    v52 = v47;
    v19 = v27;
    v18 = v28;
    *&v31 = v28;
    *(&v31 + 1) = v10;
    *&v32 = v27;
    *(&v32 + 1) = v14;
    *&v33 = v26;
    *(&v33 + 1) = v17;
    v38 = v50;
    v37 = v49;
    v36 = v48;
    v35 = v47;
    v34 = v46;
    v20 = v32;
    v21 = v29;
    *v29 = v31;
    v21[1] = v20;
    v22 = v38;
    v21[6] = v37;
    v21[7] = v22;
    v23 = v36;
    v21[4] = v35;
    v21[5] = v23;
    v24 = v34;
    v21[2] = v33;
    v21[3] = v24;
    sub_1B7478158(&v31, v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39[0] = v18;
    v39[1] = v10;
    v39[2] = v19;
    v39[3] = v14;
    v39[4] = v26;
    v39[5] = v17;
    v42 = v53;
    v43 = v54;
    v44 = v55;
    v41 = v52;
    v40 = v51;
    return sub_1B7478190(v39);
  }
}

uint64_t CascadeExtractedOrder.Payment.Transaction.PaymentMethod.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.PaymentMethod.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.PaymentMethod.lastFourDigits.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.PaymentMethod.lastFourDigits.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall CascadeExtractedOrder.Payment.Transaction.PaymentMethod.init(displayName:lastFourDigits:isApplePay:)(FinanceKit::CascadeExtractedOrder::Payment::Transaction::PaymentMethod *__return_ptr retstr, Swift::String_optional displayName, Swift::String_optional lastFourDigits, Swift::Bool isApplePay)
{
  retstr->displayName = displayName;
  retstr->lastFourDigits = lastFourDigits;
  retstr->isApplePay = isApplePay;
}

uint64_t sub_1B746EC24()
{
  v1 = 0x72756F467473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x50656C7070417369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_1B746EC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747BA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B746ECC0(uint64_t a1)
{
  v2 = sub_1B7478494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B746ECFC(uint64_t a1)
{
  v2 = sub_1B7478494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.Payment.Transaction.PaymentMethod.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995328);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7478494();
  sub_1B78023F8();
  v14 = 0;
  v8 = v10[3];
  sub_1B7801EF8();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1B7801EF8();
  v12 = 2;
  sub_1B7801F88();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CascadeExtractedOrder.Payment.Transaction.PaymentMethod.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995338);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7478494();
  sub_1B78023C8();
  if (!v2)
  {
    v23 = 0;
    v9 = sub_1B7801D78();
    v12 = v11;
    v19 = v9;
    v22 = 1;
    v13 = sub_1B7801D78();
    v15 = v14;
    v18 = v13;
    v21 = 2;
    v20 = sub_1B7801E08();
    (*(v6 + 8))(v8, v5);
    v16 = v20 & 1;
    v17 = v18;
    *a2 = v19;
    *(a2 + 8) = v12;
    *(a2 + 16) = v17;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CascadeExtractedOrder.Payment.Transaction.amount.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.amount.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.currencyCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.currencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.paymentMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 CascadeExtractedOrder.Payment.Transaction.paymentMethod.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.transactionIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t CascadeExtractedOrder.Payment.Transaction.transactionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void __swiftcall CascadeExtractedOrder.Payment.Transaction.init(amount:currencyCode:paymentMethod:transactionIdentifier:)(FinanceKit::CascadeExtractedOrder::Payment::Transaction *__return_ptr retstr, Swift::String_optional amount, Swift::String_optional currencyCode, FinanceKit::CascadeExtractedOrder::Payment::Transaction::PaymentMethod *paymentMethod, Swift::String_optional transactionIdentifier)
{
  isApplePay = paymentMethod->isApplePay;
  retstr->amount = amount;
  retstr->currencyCode = currencyCode;
  lastFourDigits = paymentMethod->lastFourDigits;
  retstr->paymentMethod.displayName = paymentMethod->displayName;
  retstr->paymentMethod.lastFourDigits = lastFourDigits;
  retstr->paymentMethod.isApplePay = isApplePay;
  retstr->transactionIdentifier = transactionIdentifier;
}

unint64_t sub_1B746F3D8()
{
  v1 = 0x746E756F6D61;
  v2 = 0x4D746E656D796170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x79636E6572727563;
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

uint64_t sub_1B746F468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747BB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B746F490(uint64_t a1)
{
  v2 = sub_1B74784E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B746F4CC(uint64_t a1)
{
  v2 = sub_1B74784E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.Payment.Transaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995340);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v7;
  v8 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = v8;
  v9 = *(v1 + 48);
  v18 = *(v1 + 56);
  v19 = v9;
  v30 = *(v1 + 64);
  v10 = *(v1 + 80);
  v17[0] = *(v1 + 72);
  v17[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74784E8();
  sub_1B78023F8();
  LOBYTE(v25) = 0;
  v11 = v24;
  sub_1B7801EF8();
  if (!v11)
  {
    v12 = v19;
    v13 = v20;
    v14 = v21;
    v15 = v18;
    LOBYTE(v25) = 1;
    sub_1B7801EF8();
    v25 = v14;
    v26 = v13;
    v27 = v12;
    v28 = v15;
    v29 = v30;
    v31 = 2;
    sub_1B747853C();

    sub_1B7801FC8();

    LOBYTE(v25) = 3;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CascadeExtractedOrder.Payment.Transaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995358);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74784E8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v37) = 0;
    v9 = sub_1B7801D78();
    v11 = v10;
    v30 = v9;
    LOBYTE(v37) = 1;
    v12 = sub_1B7801D78();
    v14 = v13;
    v29 = v12;
    LOBYTE(v31) = 2;
    sub_1B7478590();
    sub_1B7801E48();
    v26 = v37;
    v28 = v38;
    v25 = v39;
    v27 = v40;
    v48 = v41;
    v49 = 3;
    v15 = sub_1B7801D78();
    v16 = v8;
    v18 = v17;
    (*(v6 + 8))(v16, v5);
    v19 = v30;
    *&v31 = v30;
    *(&v31 + 1) = v11;
    *&v32 = v29;
    *(&v32 + 1) = v14;
    *&v33 = v26;
    *(&v33 + 1) = v28;
    *&v34 = v25;
    v20 = v27;
    *(&v34 + 1) = v27;
    LOBYTE(v35) = v48;
    *(&v35 + 1) = v15;
    v36 = v18;
    *(a2 + 80) = v18;
    v21 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v21;
    *(a2 + 64) = v35;
    v22 = v32;
    *a2 = v31;
    *(a2 + 16) = v22;
    sub_1B72B1E34(&v31, &v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = v19;
    v38 = v11;
    v39 = v29;
    v40 = v14;
    v41 = v26;
    v42 = v28;
    v43 = v25;
    v44 = v20;
    v45 = v48;
    v46 = v15;
    v47 = v18;
    return sub_1B74785E4(&v37);
  }
}

uint64_t CascadeExtractedOrder.Payment.totalAmount.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.Payment.totalAmount.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Payment.totalCurrencyCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CascadeExtractedOrder.Payment.totalCurrencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Payment.transactions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall CascadeExtractedOrder.Payment.init(totalAmount:totalCurrencyCode:transactions:)(FinanceKit::CascadeExtractedOrder::Payment *__return_ptr retstr, Swift::String_optional totalAmount, Swift::String_optional totalCurrencyCode, Swift::OpaquePointer transactions)
{
  retstr->totalAmount = totalAmount;
  retstr->totalCurrencyCode = totalCurrencyCode;
  retstr->transactions = transactions;
}

uint64_t sub_1B746FCB0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x746361736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6D416C61746F74;
  }
}

uint64_t sub_1B746FD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747BCEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B746FD48(uint64_t a1)
{
  v2 = sub_1B7478614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B746FD84(uint64_t a1)
{
  v2 = sub_1B7478614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.Payment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995368);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = v1[2];
  v13 = v1[3];
  v14 = v7;
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7478614();
  sub_1B78023F8();
  v19 = 0;
  v8 = v15;
  sub_1B7801EF8();
  if (!v8)
  {
    v10 = v12;
    v18 = 1;
    sub_1B7801EF8();
    v16 = v10;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995378);
    sub_1B74786BC(&qword_1EB995380, sub_1B7478668);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CascadeExtractedOrder.Payment.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995390);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7478614();
  sub_1B78023C8();
  if (!v2)
  {
    v23 = 0;
    v9 = sub_1B7801D78();
    v12 = v11;
    v19 = v9;
    v22 = 1;
    v13 = sub_1B7801D78();
    v15 = v14;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995378);
    v21 = 2;
    sub_1B74786BC(&qword_1EB995398, sub_1B7478734);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v16 = v20;
    *a2 = v19;
    a2[1] = v12;
    a2[2] = v18;
    a2[3] = v15;
    a2[4] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CascadeExtractedOrder.sourceItemIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.sourceItemIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.prefixedSharedIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CascadeExtractedOrder(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CascadeExtractedOrder.prefixedSharedIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CascadeExtractedOrder(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B7470530(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t sub_1B7470590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1B747063C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t sub_1B747069C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.orderEmails.getter()
{
  type metadata accessor for CascadeExtractedOrder(0);
}

uint64_t CascadeExtractedOrder.orderEmails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CascadeExtractedOrder(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B7470804(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 40));

  return v2;
}

uint64_t sub_1B7470864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.merchant.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 44);

  return sub_1B7478788(a1, v3);
}

uint64_t CascadeExtractedOrder.shippingFulfillments.getter()
{
  type metadata accessor for CascadeExtractedOrder(0);
}

uint64_t CascadeExtractedOrder.shippingFulfillments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CascadeExtractedOrder(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CascadeExtractedOrder.customer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 52));
  v4 = v3[5];
  v6 = v3[3];
  v20 = v3[4];
  v5 = v20;
  v21 = v4;
  v7 = v3[7];
  v8 = v3[5];
  v22 = v3[6];
  v23 = v7;
  v9 = v3[1];
  v11 = v9;
  v17[0] = *v3;
  v10 = v17[0];
  v17[1] = v9;
  v12 = v3[3];
  v18 = v3[2];
  v13 = v18;
  v19 = v12;
  v14 = v3[7];
  a1[6] = v22;
  a1[7] = v14;
  a1[4] = v5;
  a1[5] = v8;
  a1[2] = v13;
  a1[3] = v6;
  *a1 = v10;
  a1[1] = v11;
  return sub_1B74783D8(v17, &v16);
}

__n128 CascadeExtractedOrder.customer.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 52));
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v5 = v3[7];
  v13[6] = v3[6];
  v13[7] = v5;
  v6 = v3[1];
  v13[0] = *v3;
  v13[1] = v6;
  v7 = v3[3];
  v13[2] = v3[2];
  v13[3] = v7;
  sub_1B7478410(v13);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v12;
  return result;
}

uint64_t CascadeExtractedOrder.payment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 56);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 CascadeExtractedOrder.payment.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 56);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t CascadeExtractedOrder.orderUpdateDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 60);

  return sub_1B7280900(v3, a1);
}

uint64_t CascadeExtractedOrder.orderUpdateDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 60);

  return sub_1B72DFF88(a1, v3);
}

uint64_t sub_1B7470DE4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 64));

  return v2;
}

uint64_t sub_1B7470E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 64));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.orderStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CascadeExtractedOrder(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t CascadeExtractedOrder.orderStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CascadeExtractedOrder(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t CascadeExtractedOrder.orderStatusUpdateDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 72);

  return sub_1B7280900(v3, a1);
}

uint64_t CascadeExtractedOrder.orderStatusUpdateDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 72);

  return sub_1B72DFF88(a1, v3);
}

uint64_t CascadeExtractedOrder.earliestEmailDateSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 76);

  return sub_1B7280900(v3, a1);
}

uint64_t CascadeExtractedOrder.earliestEmailDateSent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder(0) + 76);

  return sub_1B72DFF88(a1, v3);
}

double CascadeExtractedOrder.fullyQualifiedOrderIdentifier.getter@<D0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CascadeExtractedOrder(0);
  v4 = (v1 + *(v3 + 24));
  v5 = v4[1];
  if (v5 && (v6 = (v1 + *(v3 + 28)), (v7 = v6[1]) != 0))
  {
    v8 = *v6;
    *a1 = *v4;
    a1[1] = v5;
    a1[2] = v8;
    a1[3] = v7;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

uint64_t CascadeExtractedOrder.init(sourceItemIdentifier:prefixedSharedIdentifier:orderTypeIdentifier:orderIdentifier:orderNumber:orderEmails:orderDate:merchant:shippingFulfillments:customer:payment:orderUpdateDate:trackedOrderIdentifier:orderStatus:orderStatusUpdateDate:earliestEmailDateSent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _OWORD *a16, __int128 *a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23)
{
  v57 = *(a17 + 4);
  v58 = *a21;
  v24 = type metadata accessor for CascadeExtractedOrder(0);
  v41 = &a9[v24[6]];
  v42 = &a9[v24[7]];
  v43 = v24[9];
  v25 = &a9[v24[8]];
  v26 = &a9[v24[10]];
  v46 = v24[12];
  v27 = v24[15];
  v51 = v27;
  v28 = sub_1B77FF988();
  v29 = *(*(v28 - 8) + 56);
  v49 = a17[1];
  v48 = *a17;
  v29(&a9[v27], 1, 1, v28);
  v30 = &a9[v24[16]];
  v31 = v24[18];
  v29(&a9[v31], 1, 1, v28);
  v47 = v24[19];
  v29(&a9[v47], 1, 1, v28);
  *a9 = a1;
  *(a9 + 1) = a2;
  v32 = v24[5];
  v33 = sub_1B77FFA18();
  (*(*(v33 - 8) + 32))(&a9[v32], a3, v33);
  *v41 = a4;
  *(v41 + 1) = a5;
  *v42 = a6;
  *(v42 + 1) = a7;
  *v25 = a8;
  *(v25 + 1) = a10;
  *&a9[v43] = a11;
  *v26 = a12;
  *(v26 + 1) = a13;
  sub_1B7478B70(a14, &a9[v24[11]], type metadata accessor for CascadeExtractedOrder.Merchant);
  *&a9[v46] = a15;
  v34 = &a9[v24[13]];
  v35 = a16[3];
  *(v34 + 2) = a16[2];
  *(v34 + 3) = v35;
  v36 = a16[1];
  *v34 = *a16;
  *(v34 + 1) = v36;
  v37 = a16[7];
  *(v34 + 6) = a16[6];
  *(v34 + 7) = v37;
  v38 = a16[5];
  *(v34 + 4) = a16[4];
  *(v34 + 5) = v38;
  v39 = &a9[v24[14]];
  *v39 = v48;
  *(v39 + 1) = v49;
  *(v39 + 4) = v57;
  sub_1B72DFF88(a18, &a9[v51]);
  *v30 = a19;
  *(v30 + 1) = a20;
  a9[v24[17]] = v58;
  sub_1B72DFF88(a22, &a9[v31]);

  return sub_1B72DFF88(a23, &a9[v47]);
}

unint64_t sub_1B7471480(char a1)
{
  result = 0x656449726564726FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6D754E726564726FLL;
      break;
    case 5:
      result = 0x616D45726564726FLL;
      break;
    case 6:
      result = 0x746144726564726FLL;
      break;
    case 7:
      result = 0x746E61686372656DLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x72656D6F74737563;
      break;
    case 10:
      result = 0x746E656D796170;
      break;
    case 11:
      result = 0x647055726564726FLL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x617453726564726FLL;
      break;
    case 14:
    case 15:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1B7471678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747BE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74716AC(uint64_t a1)
{
  v2 = sub_1B74787EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74716E8(uint64_t a1)
{
  v2 = sub_1B74787EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9953A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74787EC();
  sub_1B78023F8();
  LOBYTE(v40[0]) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v9 = type metadata accessor for CascadeExtractedOrder(0);
    LOBYTE(v40[0]) = 1;
    sub_1B77FFA18();
    sub_1B7477D8C(&qword_1EB98F718, MEMORY[0x1E69695A8]);
    sub_1B7801FC8();
    LOBYTE(v40[0]) = 2;
    sub_1B7801EF8();
    LOBYTE(v40[0]) = 3;
    sub_1B7801EF8();
    LOBYTE(v40[0]) = 4;
    sub_1B7801EF8();
    *&v40[0] = *(v3 + v9[9]);
    LOBYTE(v32) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9953B8);
    sub_1B74789D8(&qword_1EB9953C0, &qword_1EB9953C8);
    sub_1B7801FC8();
    LOBYTE(v40[0]) = 6;
    sub_1B7801EF8();
    LOBYTE(v40[0]) = 7;
    type metadata accessor for CascadeExtractedOrder.Merchant(0);
    sub_1B7477D8C(&qword_1EB9953D0, type metadata accessor for CascadeExtractedOrder.Merchant);
    sub_1B7801FC8();
    v48 = *(v3 + v9[12]);
    v47 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9953D8);
    sub_1B7478840(&qword_1EB9953E0, &qword_1EB9953E8);
    sub_1B7801FC8();
    v10 = (v3 + v9[13]);
    v11 = v10[5];
    v12 = v10[3];
    v43 = v10[4];
    v44 = v11;
    v13 = v10[5];
    v14 = v10[7];
    v45 = v10[6];
    v46 = v14;
    v15 = v10[1];
    v40[0] = *v10;
    v40[1] = v15;
    v16 = v10[3];
    v18 = *v10;
    v17 = v10[1];
    v41 = v10[2];
    v42 = v16;
    v36 = v43;
    v37 = v13;
    v19 = v10[7];
    v38 = v45;
    v39 = v19;
    v32 = v18;
    v33 = v17;
    v34 = v41;
    v35 = v12;
    v31 = 9;
    sub_1B74783D8(v40, v30);
    sub_1B74788DC();
    sub_1B7801FC8();
    v30[4] = v36;
    v30[5] = v37;
    v30[6] = v38;
    v30[7] = v39;
    v30[0] = v32;
    v30[1] = v33;
    v30[2] = v34;
    v30[3] = v35;
    sub_1B7478410(v30);
    v20 = (v3 + v9[14]);
    v21 = *v20;
    v22 = v20[3];
    v49 = v20[4];
    v26 = v21;
    v27 = *(v20 + 1);
    v28 = v22;
    v29 = v49;
    HIBYTE(v25) = 10;
    sub_1B7478930();

    sub_1B7801FC8();

    LOBYTE(v26) = 11;
    v23 = sub_1B77FF988();
    sub_1B7477D8C(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    v49 = v23;
    sub_1B7801F38();
    LOBYTE(v26) = 12;
    sub_1B7801EF8();
    LOBYTE(v26) = *(v3 + v9[17]);
    HIBYTE(v25) = 13;
    sub_1B7478984();
    sub_1B7801FC8();
    LOBYTE(v26) = 14;
    sub_1B7801F38();
    LOBYTE(v26) = 15;
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CascadeExtractedOrder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v86 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v87 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v88 = v80 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v89 = v80 - v7;
  v90 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  MEMORY[0x1EEE9AC00](v90);
  v96 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FFA18();
  v91 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995408);
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v13 = v80 - v12;
  v14 = type metadata accessor for CascadeExtractedOrder(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 60);
  v19 = sub_1B77FF988();
  v20 = *(*(v19 - 8) + 56);
  v99 = v18;
  v20(v17 + v18, 1, 1, v19);
  v97 = *(v14 + 72);
  v20(v17 + v97, 1, 1, v19);
  v100 = v14;
  v98 = *(v14 + 76);
  v115 = v17;
  v21 = v17 + v98;
  v22 = v95;
  v20(v21, 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1B74787EC();
  v93 = v13;
  v23 = v101;
  sub_1B78023C8();
  if (!v23)
  {
    v24 = v96;
    v85 = v9;
    LOBYTE(v107) = 0;
    v25 = sub_1B7801DF8();
    v80[1] = v19;
    v38 = v115;
    *v115 = v25;
    v38[1] = v39;
    LOBYTE(v107) = 1;
    sub_1B7477D8C(&qword_1EB98F740, MEMORY[0x1E69695A8]);
    v40 = v85;
    sub_1B7801E48();
    v26 = v100;
    v41 = v92;
    v81 = 0;
    (*(v91 + 32))(v38 + v100[5], v11, v40);
    LOBYTE(v107) = 2;
    v42 = sub_1B7801D78();
    v43 = (v38 + v26[6]);
    *v43 = v42;
    v43[1] = v44;
    v84 = v44;
    LOBYTE(v107) = 3;
    v45 = sub_1B7801D78();
    v48 = (v38 + v26[7]);
    *v48 = v45;
    v48[1] = v49;
    v83 = v49;
    LOBYTE(v107) = 4;
    v50 = sub_1B7801D78();
    v51 = (v38 + v26[8]);
    *v51 = v50;
    v51[1] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9953B8);
    LOBYTE(v103) = 5;
    sub_1B74789D8(&qword_1EB995410, &qword_1EB995418);
    sub_1B7801E48();
    *(v38 + v26[9]) = v107;
    LOBYTE(v107) = 6;
    v53 = sub_1B7801D78();
    v54 = (v38 + v26[10]);
    *v54 = v53;
    v54[1] = v55;
    v82 = v55;
    LOBYTE(v107) = 7;
    sub_1B7477D8C(&qword_1EB995420, type metadata accessor for CascadeExtractedOrder.Merchant);
    sub_1B7801E48();
    v101 = 0;
    v56 = v24;
    v57 = v22;
    sub_1B7478B70(v56, v38 + v26[11], type metadata accessor for CascadeExtractedOrder.Merchant);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9953D8);
    LOBYTE(v103) = 8;
    sub_1B7478840(&qword_1EB995428, &qword_1EB995430);
    v58 = v101;
    sub_1B7801E48();
    v101 = v58;
    if (v58)
    {
      (*(v41 + 8))(v93, v94);
      v96 = MEMORY[0x1E69E7CC0];
      v29 = 1;
    }

    else
    {
      v59 = v26[12];
      v96 = v107;
      *(v38 + v59) = v107;
      v106 = 9;
      sub_1B7478A74();
      v60 = v101;
      sub_1B7801E48();
      v101 = v60;
      if (!v60)
      {
        v61 = (v115 + v100[13]);
        v62 = v112;
        v63 = v113;
        v61[4] = v111;
        v61[5] = v62;
        v64 = v114;
        v61[6] = v63;
        v61[7] = v64;
        v65 = v108;
        *v61 = v107;
        v61[1] = v65;
        v66 = v110;
        v61[2] = v109;
        v61[3] = v66;
        v102 = 10;
        sub_1B7478AC8();
        v67 = v101;
        sub_1B7801E48();
        LODWORD(v90) = v67 == 0;
        v101 = v67;
        if (!v67)
        {
          v68 = v105;
          v69 = v115 + v100[14];
          v70 = v104;
          *v69 = v103;
          *(v69 + 1) = v70;
          *(v69 + 4) = v68;
          LOBYTE(v103) = 11;
          sub_1B7477D8C(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
          v71 = v101;
          sub_1B7801DB8();
          v101 = v71;
          if (!v71)
          {
            sub_1B72DFF88(v89, v115 + v99);
            LOBYTE(v103) = 12;
            v72 = v101;
            v73 = sub_1B7801D78();
            v101 = v72;
            if (!v72)
            {
              v75 = (v115 + v100[16]);
              *v75 = v73;
              v75[1] = v74;
              v102 = 13;
              sub_1B7478B1C();
              v76 = v101;
              sub_1B7801E48();
              v101 = v76;
              if (!v76)
              {
                *(v115 + v100[17]) = v103;
                LOBYTE(v103) = 14;
                v77 = v101;
                sub_1B7801DB8();
                v101 = v77;
                if (!v77)
                {
                  sub_1B72DFF88(v88, v115 + v97);
                  LOBYTE(v103) = 15;
                  v78 = v101;
                  sub_1B7801DB8();
                  v101 = v78;
                  if (!v78)
                  {
                    (*(v92 + 8))(v93, v94);
                    v79 = v115;
                    sub_1B72DFF88(v87, v115 + v98);
                    sub_1B747806C(v79, v86, type metadata accessor for CascadeExtractedOrder);
                    __swift_destroy_boxed_opaque_existential_1(v22);
                    return sub_1B747800C(v79, type metadata accessor for CascadeExtractedOrder);
                  }
                }
              }
            }
          }
        }

        (*(v92 + 8))(v93, v94);
        __swift_destroy_boxed_opaque_existential_1(v22);

        v47 = 1;
        v29 = 1;
        v26 = v100;
        v46 = v90;
        goto LABEL_12;
      }

      (*(v92 + 8))(v93, v94);
      v29 = 1;
      v26 = v100;
    }

    __swift_destroy_boxed_opaque_existential_1(v57);

    v46 = 0;
    v47 = 0;
    v27 = 0;
    v28 = 0;
    if (v81)
    {
      goto LABEL_4;
    }

LABEL_12:
    LODWORD(v100) = v47;
    v27 = v46;
    (*(v91 + 8))(v115 + v26[5], v85);
    v28 = v100;
    goto LABEL_4;
  }

  v101 = v23;
  v26 = v100;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v96 = MEMORY[0x1E69E7CC0];
LABEL_4:

  v30 = v115;
  if (v29)
  {
    sub_1B747800C(v115 + v26[11], type metadata accessor for CascadeExtractedOrder.Merchant);
  }

  if (v28)
  {
    v31 = (v30 + v26[13]);
    v32 = v31[4];
    v33 = v31[6];
    v34 = v31[7];
    v112 = v31[5];
    v113 = v33;
    v114 = v34;
    v35 = v31[1];
    v107 = *v31;
    v108 = v35;
    v36 = v31[3];
    v109 = v31[2];
    v110 = v36;
    v111 = v32;
    sub_1B7478410(&v107);
  }

  if (v27)
  {
  }

  sub_1B7205418(v30 + v99, &qword_1EB98EBD0);

  sub_1B7205418(v30 + v97, &qword_1EB98EBD0);
  return sub_1B7205418(v30 + v98, &qword_1EB98EBD0);
}

void CascadeExtractedOrder.OrderEmail.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v104 - v5;
  v106 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v7 = v106[5];
  v8 = sub_1B77FF988();
  v9 = *(*(v8 - 8) + 56);
  v9(a2 + v7, 1, 1, v8);
  v10 = [a1 messageID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B7800868();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *a2 = v12;
  a2[1] = v14;
  v15 = [a1 dateSent];
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

  v9(v6, v17, 1, v8);
  sub_1B72DFF88(v6, a2 + v7);
  v18 = [a1 subject];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1B7800868();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = v106;
  v24 = (a2 + v106[6]);
  *v24 = v20;
  v24[1] = v22;
  v25 = [a1 senderDomain];
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

  v30 = (a2 + v23[7]);
  *v30 = v27;
  v30[1] = v29;
  v31 = [a1 fromEmailAddress];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1B7800868();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = (a2 + v23[8]);
  *v36 = v33;
  v36[1] = v35;
  v37 = [a1 fromDisplayName];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1B7800868();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = (a2 + v23[9]);
  *v42 = v39;
  v42[1] = v41;
  v43 = [a1 toEmailAddress];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1B7800868();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = (a2 + v23[10]);
  *v48 = v45;
  v48[1] = v47;
  v49 = [a1 toDisplayName];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1B7800868();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = (a2 + v23[11]);
  *v54 = v51;
  v54[1] = v53;
  v55 = [a1 replyToEmailAddress];
  if (v55)
  {
    v56 = v55;
    v57 = sub_1B7800868();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v60 = (a2 + v23[12]);
  *v60 = v57;
  v60[1] = v59;
  v61 = [a1 replyToDisplayName];
  if (v61)
  {
    v62 = v61;
    v63 = sub_1B7800868();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v66 = (a2 + v23[13]);
  *v66 = v63;
  v66[1] = v65;
  CascadeExtractedOrder.OrderEmail.EmailType.init(rawValue:)([a1 emailTypeValue]);
  v67 = v108;
  if (v108 == 9)
  {
    v67 = 0;
  }

  *(a2 + v23[14]) = v67;
  v68 = [a1 spotlightUniqueIdentifier];
  if (v68)
  {
    v69 = v68;
    v70 = sub_1B7800868();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  v73 = (a2 + v23[15]);
  *v73 = v70;
  v73[1] = v72;
  v74 = [a1 spotlightDomainIdentifier];
  if (v74)
  {
    v75 = v74;
    v76 = sub_1B7800868();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0;
  }

  v79 = (a2 + v23[16]);
  *v79 = v76;
  v79[1] = v78;
  v80 = [a1 orderDetailsOrderNumber];
  if (v80)
  {
    v81 = v80;
    v82 = sub_1B7800868();
    v104 = v83;
    v105 = v82;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v84 = [a1 orderDetailsMerchantDisplayName];
  if (v84)
  {
    v85 = v84;
    v86 = sub_1B7800868();
    v88 = v87;
  }

  else
  {
    v86 = 0;
    v88 = 0;
  }

  CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)([a1 shippingDetailsShippingStatusValue]);
  v89 = v107;
  v90 = [a1 shippingDetailsTrackingNumber];
  if (v90)
  {
    v91 = v90;
    v92 = sub_1B7800868();
    v94 = v93;
  }

  else
  {
    v92 = 0;
    v94 = 0;
  }

  v95 = [a1 shippingDetailsCarrierName];
  if (v95)
  {
    v96 = v95;
    v97 = sub_1B7800868();
    v99 = v98;
  }

  else
  {
    v97 = 0;
    v99 = 0;
  }

  if (v89 == 10)
  {
    LOBYTE(v89) = 0;
  }

  v100 = [a1 orderContentTypeValue];

  v101 = v100 == 1;
  if (v100 == 2)
  {
    v101 = 2;
  }

  v102 = a2 + v106[17];
  v103 = v104;
  *v102 = v105;
  *(v102 + 1) = v103;
  *(v102 + 2) = v86;
  *(v102 + 3) = v88;
  v102[32] = v89;
  *(v102 + 5) = v92;
  *(v102 + 6) = v94;
  *(v102 + 7) = v97;
  *(v102 + 8) = v99;
  v102[72] = v101;
}

void __swiftcall CascadeExtractedOrder.Address.init(_:)(FinanceKit::CascadeExtractedOrder::Address *__return_ptr retstr, CNPostalAddress a2)
{
  v4 = [(objc_class *)a2.super.isa street];
  v5 = sub_1B7800868();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [(objc_class *)a2.super.isa street];
    v10 = sub_1B7800868();
    v51 = v11;
    v52 = v10;
  }

  else
  {

    v51 = 0;
    v52 = 0;
  }

  v12 = [(objc_class *)a2.super.isa city];
  v13 = sub_1B7800868();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = [(objc_class *)a2.super.isa city];
    v18 = sub_1B7800868();
    v47 = v19;
    v49 = v18;
  }

  else
  {

    v47 = 0;
    v49 = 0;
  }

  v20 = [(objc_class *)a2.super.isa state:v47];
  v21 = sub_1B7800868();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = [(objc_class *)a2.super.isa state];
    v26 = sub_1B7800868();
    v28 = v27;
  }

  else
  {

    v26 = 0;
    v28 = 0;
  }

  v29 = [(objc_class *)a2.super.isa postalCode];
  v30 = sub_1B7800868();
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = [(objc_class *)a2.super.isa postalCode];
    v35 = sub_1B7800868();
    v37 = v36;
  }

  else
  {

    v35 = 0;
    v37 = 0;
  }

  v38 = [(objc_class *)a2.super.isa country];
  v39 = sub_1B7800868();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = [(objc_class *)a2.super.isa country];
    v44 = sub_1B7800868();
    v46 = v45;
  }

  else
  {

    v44 = 0;
    v46 = 0;
  }

  retstr->street.value._countAndFlagsBits = v52;
  retstr->street.value._object = v51;
  retstr->city.value._countAndFlagsBits = v50;
  retstr->city.value._object = v48;
  retstr->state.value._countAndFlagsBits = v26;
  retstr->state.value._object = v28;
  retstr->postalCode.value._countAndFlagsBits = v35;
  retstr->postalCode.value._object = v37;
  retstr->country.value._countAndFlagsBits = v44;
  retstr->country.value._object = v46;
}

double CascadeExtractedOrder.ShippingFulfillment.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &postalCode - v5;
  v7 = sub_1B77FF988();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = *(type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0) + 68);
  v8((a2 + v9), 1, 1, v7);
  *a2 = 0;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  sub_1B72DFF88(v6, a2 + v9);
  CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)([a1 statusValue]);
  countAndFlagsBits = v94.street.value._countAndFlagsBits;
  if (LOBYTE(v94.street.value._countAndFlagsBits) == 10)
  {
    countAndFlagsBits = 0;
  }

  *a2 = countAndFlagsBits;
  v11 = [a1 trackingNumber];
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

  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  v16 = [a1 carrierName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B7800868();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  v21 = [a1 shippingMethod];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7800868();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  v26 = [a1 shippingDate];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B7800868();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *(a2 + 56) = v28;
  *(a2 + 64) = v30;
  v31 = [a1 shippingTime];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1B7800868();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  *(a2 + 72) = v33;
  *(a2 + 80) = v35;
  v36 = [a1 estimatedDeliveryStartDate];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1B7800868();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  *(a2 + 88) = v38;
  *(a2 + 96) = v40;
  v41 = [a1 estimatedDeliveryStartTime];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1B7800868();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  *(a2 + 104) = v43;
  *(a2 + 112) = v45;
  v46 = [a1 estimatedDeliveryEndDate];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1B7800868();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  *(a2 + 120) = v48;
  *(a2 + 128) = v50;
  v51 = [a1 estimatedDeliveryEndTime];
  if (v51)
  {
    v52 = v51;
    v53 = sub_1B7800868();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  *(a2 + 136) = v53;
  *(a2 + 144) = v55;
  v56 = [a1 deliveryDate];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1B7800868();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  *(a2 + 152) = v58;
  *(a2 + 160) = v60;
  v61 = [a1 deliveryTime];
  if (v61)
  {
    v62 = v61;
    v63 = sub_1B7800868();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  *(a2 + 168) = v63;
  *(a2 + 176) = v65;
  v66 = [a1 recipientFullName];
  if (v66)
  {
    v67 = v66;
    v68 = sub_1B7800868();
    v70 = v69;
  }

  else
  {

    v68 = 0;
    v70 = 0;
  }

  *(a2 + 184) = v68;
  *(a2 + 192) = v70;
  v71 = [a1 recipientPhoneNumber];
  if (v71)
  {
    v72 = v71;
    v73 = sub_1B7800868();
    v75 = v74;
  }

  else
  {

    v73 = 0;
    v75 = 0;
  }

  *(a2 + 200) = v73;
  *(a2 + 208) = v75;
  v76 = [a1 recipientEmailAddress];
  if (v76)
  {
    v77 = v76;
    v78 = sub_1B7800868();
    v80 = v79;
  }

  else
  {

    v78 = 0;
    v80 = 0;
  }

  *(a2 + 216) = v78;
  *(a2 + 224) = v80;
  v81 = [a1 recipientAddress];
  if (v81)
  {
    v82 = v81;
    CascadeExtractedOrder.Address.init(_:)(&v94, v82);

    city = v94.city;
    street = v94.street;
    postalCode = v94.postalCode;
    state = v94.state;
    v84 = v94.country.value._countAndFlagsBits;
    object = v94.country.value._object;
  }

  else
  {

    object = 0;
    v84 = 0;
    city = 0;
    street = 0;
    postalCode = 0;
    state = 0;
  }

  v85 = *(a2 + 248);
  v94.street = *(a2 + 232);
  v94.city = v85;
  v86 = *(a2 + 280);
  v94.state = *(a2 + 264);
  v94.postalCode = v86;
  v94.country = *(a2 + 296);
  sub_1B7478128(&v94);
  v87 = street;
  *(a2 + 248) = city;
  *(a2 + 232) = v87;
  v89 = postalCode;
  result = *&state.value._countAndFlagsBits;
  *(a2 + 264) = state;
  *(a2 + 280) = v89;
  *(a2 + 296) = v84;
  *(a2 + 304) = object;
  return result;
}

void CascadeExtractedOrder.Payment.Transaction.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 amount];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v32 = v7;
    v33 = v6;
  }

  else
  {

    v32 = 0;
    v33 = 0;
  }

  v8 = [a1 currencyCode];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B7800868();
    v28 = v11;
    v30 = v10;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  v12 = [a1 paymentMethodDisplayName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B7800868();
    v16 = v15;
  }

  else
  {

    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 paymentMethodLastFourDigits];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B7800868();
    v21 = v20;
  }

  else
  {

    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 paymentMethodIsApplePay];
  v23 = [a1 transactionIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1B7800868();
    v27 = v26;
  }

  else
  {

    v25 = 0;
    v27 = 0;
  }

  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31;
  *(a2 + 24) = v29;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19;
  *(a2 + 56) = v21;
  *(a2 + 64) = v22;
  *(a2 + 72) = v25;
  *(a2 + 80) = v27;
}

uint64_t CascadeExtractedOrder.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  state.value._countAndFlagsBits = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  city.value._countAndFlagsBits = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v202 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v203 = &v190 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v201 = &v190 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  postalCode.value._countAndFlagsBits = &v190 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v212 = &v190 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v190 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v213 = (&v190 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v207 = &v190 - v26;
  v27 = sub_1B77FFA18();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v190 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for CascadeExtractedOrder(0);
  v206 = *(v31 - 1);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v190 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [a1 prefixedSharedIdentifier];
  if (v34)
  {
    v191 = a2;
    v35 = v34;
    sub_1B77FF9E8();

    v36 = [a1 sourceItemIdentifier];
    v209 = sub_1B7800868();
    v200 = v37;

    v38 = v31[5];
    v190 = v28;
    v39 = *(v28 + 16);
    v217 = v30;
    street.value._countAndFlagsBits = v27;
    v39(&v33[v38], v30, v27);
    v40 = sub_1B77FF988();
    v41 = *(v40 - 8);
    v42 = *(v41 + 56);
    v208 = a1;
    v43 = v41 + 56;
    v42(v207, 1, 1, v40);
    v42(v213, 1, 1, v40);
    v42(v23, 1, 1, v40);
    v42(v212, 1, 1, v40);
    v44 = &v33[v31[11]];
    v45 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
    v199 = v23;
    v46 = *(v45 + 20);
    v42(v44 + v46, 1, 1, v40);
    v47 = (v44 + *(v45 + 24));
    *v44 = 0;
    v44[1] = 0;
    v197 = v44;
    v196 = v46;
    sub_1B72DFF88(v212, v44 + v46);
    *v47 = 0;
    v47[1] = 0;
    v198 = v47;
    v48 = v31[15];
    v42(&v33[v48], 1, 1, v40);
    v49 = v31[18];
    v42(&v33[v49], 1, 1, v40);
    v50 = v31[19];
    v212 = v40;
    v211 = v42;
    v210 = v43;
    v42(&v33[v50], 1, 1, v40);
    v51 = v208;
    v52 = v200;
    *v33 = v209;
    *(v33 + 1) = v52;
    v53 = &v33[v31[13]];
    *(v53 + 3) = 0u;
    v195 = v53 + 48;
    *(v53 + 6) = 0u;
    *(v53 + 7) = 0u;
    *(v53 + 4) = 0u;
    *(v53 + 5) = 0u;
    *(v53 + 1) = 0u;
    *(v53 + 2) = 0u;
    v200 = v53;
    *v53 = 0u;
    v54 = &v33[v31[14]];
    *v54 = 0u;
    *(v54 + 1) = 0u;
    v209 = v54;
    *(v54 + 4) = MEMORY[0x1E69E7CC0];
    v192 = v48;
    sub_1B72DFF88(v207, &v33[v48]);
    v214 = v31;
    v193 = v31[17];
    v33[v193] = 0;
    v194 = v49;
    sub_1B72DFF88(v213, &v33[v49]);
    v207 = v50;
    sub_1B72DFF88(v199, &v33[v50]);
    v55 = [v51 orderTypeIdentifier];
    v213 = v33;
    if (v55)
    {
      v56 = v55;
      v57 = sub_1B7800868();
      v59 = v58;

      v60 = v213;
    }

    else
    {
      v60 = v33;
      v57 = 0;
      v59 = 0;
    }

    countAndFlagsBits = state.value._countAndFlagsBits;
    v64 = (v60 + v214[6]);
    *v64 = v57;
    v64[1] = v59;
    v65 = [v51 orderIdentifier];
    v66 = street.value._countAndFlagsBits;
    if (v65)
    {
      v67 = v65;
      v68 = sub_1B7800868();
      v70 = v69;

      v60 = v213;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = (v60 + v214[7]);
    *v71 = v68;
    v71[1] = v70;
    v72 = [v51 orderNumber];
    if (v72)
    {
      v73 = v72;
      v74 = sub_1B7800868();
      v76 = v75;

      v60 = v213;
    }

    else
    {
      v74 = 0;
      v76 = 0;
    }

    v77 = (v60 + v214[8]);
    *v77 = v74;
    v77[1] = v76;
    v78 = ManagedCascadeExtractedOrder.orderEmails.getter();
    v79 = v78;
    if (v78 >> 62)
    {
      v80 = sub_1B7801958();
      if (v80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v80 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v80)
      {
LABEL_16:
        v218.street.value._countAndFlagsBits = MEMORY[0x1E69E7CC0];
        result = sub_1B71FE1E0(0, v80 & ~(v80 >> 63), 0);
        if (v80 < 0)
        {
          __break(1u);
          goto LABEL_101;
        }

        v81 = 0;
        v82 = v218.street.value._countAndFlagsBits;
        do
        {
          if ((v79 & 0xC000000000000001) != 0)
          {
            v83 = MEMORY[0x1B8CA5DC0](v81, v79);
          }

          else
          {
            v83 = *(v79 + 8 * v81 + 32);
          }

          CascadeExtractedOrder.OrderEmail.init(_:)(v83, v9);
          v218.street.value._countAndFlagsBits = v82;
          v85 = *(v82 + 16);
          v84 = *(v82 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_1B71FE1E0(v84 > 1, v85 + 1, 1);
            v82 = v218.street.value._countAndFlagsBits;
          }

          ++v81;
          *(v82 + 16) = v85 + 1;
          sub_1B7478B70(v9, v82 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v85, type metadata accessor for CascadeExtractedOrder.OrderEmail);
          v66 = street.value._countAndFlagsBits;
        }

        while (v80 != v81);

        v51 = v208;
LABEL_27:
        v86 = v214;
        v87 = v213;
        *(v213 + v214[9]) = v82;
        v88 = [v51 orderDate];
        v89 = v217;
        if (v88)
        {
          v90 = v88;
          v91 = sub_1B7800868();
          v93 = v92;
        }

        else
        {
          v91 = 0;
          v93 = 0;
        }

        v94 = (v87 + v86[10]);
        *v94 = v91;
        v94[1] = v93;
        v95 = [v51 merchantDisplayName];
        if (v95)
        {
          v96 = v95;
          v97 = sub_1B7800868();
          v99 = v98;
        }

        else
        {
          v97 = 0;
          v99 = 0;
        }

        v100 = v198;
        v101 = v197;
        *v197 = v97;
        v101[1] = v99;
        v102 = [v51 merchantDisplayNameUpdateDate];
        if (v102)
        {
          v103 = postalCode.value._countAndFlagsBits;
          v104 = v102;
          sub_1B77FF928();

          v105 = 0;
        }

        else
        {
          v105 = 1;
          v103 = postalCode.value._countAndFlagsBits;
        }

        v211(v103, v105, 1, v212);
        sub_1B72DFF88(v103, v101 + v196);
        v106 = [v51 merchantDomainName];
        if (v106)
        {
          v107 = v106;
          v108 = sub_1B7800868();
          v110 = v109;
        }

        else
        {
          v108 = 0;
          v110 = 0;
        }

        *v100 = v108;
        v100[1] = v110;
        v111 = ManagedCascadeExtractedOrder.shippingFulfillments.getter();
        v112 = v111;
        if (v111 >> 62)
        {
          v113 = sub_1B7801958();
          if (v113)
          {
LABEL_41:
            v218.street.value._countAndFlagsBits = MEMORY[0x1E69E7CC0];
            result = sub_1B71FE19C(0, v113 & ~(v113 >> 63), 0);
            if ((v113 & 0x8000000000000000) == 0)
            {
              v114 = 0;
              v115 = v218.street.value._countAndFlagsBits;
              do
              {
                if ((v112 & 0xC000000000000001) != 0)
                {
                  v116 = MEMORY[0x1B8CA5DC0](v114, v112);
                }

                else
                {
                  v116 = *(v112 + 8 * v114 + 32);
                }

                v117 = city.value._countAndFlagsBits;
                CascadeExtractedOrder.ShippingFulfillment.init(_:)(v116, city.value._countAndFlagsBits);
                v218.street.value._countAndFlagsBits = v115;
                v119 = *(v115 + 16);
                v118 = *(v115 + 24);
                if (v119 >= v118 >> 1)
                {
                  sub_1B71FE19C(v118 > 1, v119 + 1, 1);
                  v115 = v218.street.value._countAndFlagsBits;
                }

                ++v114;
                *(v115 + 16) = v119 + 1;
                sub_1B7478B70(v117, v115 + ((*(countAndFlagsBits + 80) + 32) & ~*(countAndFlagsBits + 80)) + *(countAndFlagsBits + 72) * v119, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
                v89 = v217;
              }

              while (v113 != v114);

              v51 = v208;
              v86 = v214;
LABEL_52:
              v120 = v213;
              *(v213 + v86[12]) = v115;
              v121 = [v51 customerFullName];
              v122 = v200;
              if (v121)
              {
                v123 = v121;
                v124 = sub_1B7800868();
                v126 = v125;
              }

              else
              {

                v124 = 0;
                v126 = 0;
              }

              v122->value._countAndFlagsBits = v124;
              v122->value._object = v126;
              v127 = [v51 customerPhoneNumber];
              if (v127)
              {
                v128 = v127;
                v129 = sub_1B7800868();
                v131 = v130;
              }

              else
              {

                v129 = 0;
                v131 = 0;
              }

              v122[1].value._countAndFlagsBits = v129;
              v122[1].value._object = v131;
              v132 = [v51 customerEmailAddress];
              if (v132)
              {
                v133 = v132;
                v134 = sub_1B7800868();
                v136 = v135;
              }

              else
              {

                v134 = 0;
                v136 = 0;
              }

              v122[2].value._countAndFlagsBits = v134;
              v122[2].value._object = v136;
              v137 = [v51 customerBillingAddress];
              if (v137)
              {
                CascadeExtractedOrder.Address.init(_:)(&v218, v137);
                city = v218.city;
                street = v218.street;
                postalCode = v218.postalCode;
                state = v218.state;
                v139 = v218.country.value._countAndFlagsBits;
                object = v218.country.value._object;
              }

              else
              {
                object = 0;
                v139 = 0;
                street = 0;
                city = 0;
                state = 0;
                postalCode = 0;
              }

              v140 = v195[3];
              v221[2] = v195[2];
              v221[3] = v140;
              v221[4] = v195[4];
              v141 = v195[1];
              v221[0] = *v195;
              v221[1] = v141;
              sub_1B7478128(v221);
              v142 = city;
              v122[3] = street;
              v122[4] = v142;
              v143 = postalCode;
              v122[5] = state;
              v122[6] = v143;
              v122[7].value._countAndFlagsBits = v139;
              v122[7].value._object = object;
              v144 = [v51 paymentTotalAmount];
              if (v144)
              {
                v145 = v144;
                v146 = sub_1B7800868();
                v148 = v147;
              }

              else
              {

                v146 = 0;
                v148 = 0;
              }

              v149 = v209;
              *v209 = v146;
              v149[1] = v148;
              v150 = [v51 paymentTotalCurrencyCode];
              if (v150)
              {
                v151 = v150;
                v152 = sub_1B7800868();
                v154 = v153;
              }

              else
              {

                v152 = 0;
                v154 = 0;
              }

              v155 = v209;
              v209[2] = v152;
              v155[3] = v154;
              v156 = ManagedCascadeExtractedOrder.paymentTransactions.getter();
              v157 = v156;
              if (v156 >> 62)
              {
                v158 = sub_1B7801958();
                if (v158)
                {
LABEL_72:
                  v220 = MEMORY[0x1E69E7CC0];
                  result = sub_1B71FE17C(0, v158 & ~(v158 >> 63), 0);
                  if ((v158 & 0x8000000000000000) == 0)
                  {
                    v159 = 0;
                    v160 = v220;
                    if ((v157 & 0xC000000000000001) == 0)
                    {
                      goto LABEL_75;
                    }

LABEL_74:
                    for (i = MEMORY[0x1B8CA5DC0](v159, v157); ; i = *(v157 + 8 * v159 + 32))
                    {
                      CascadeExtractedOrder.Payment.Transaction.init(_:)(i, &v218);
                      v220 = v160;
                      v163 = *(v160 + 16);
                      v162 = *(v160 + 24);
                      if (v163 >= v162 >> 1)
                      {
                        sub_1B71FE17C((v162 > 1), v163 + 1, 1);
                        v160 = v220;
                      }

                      *(v160 + 16) = v163 + 1;
                      v164 = (v160 + 88 * v163);
                      v165 = v218.city;
                      v164[2] = v218.street;
                      v164[3] = v165;
                      v166 = v218.state;
                      v167 = v218.postalCode;
                      country = v218.country;
                      v164[7].value._countAndFlagsBits = v219;
                      v164[5] = v167;
                      v164[6] = country;
                      v164[4] = v166;
                      if (v158 - 1 == v159)
                      {
                        break;
                      }

                      ++v159;
                      if ((v157 & 0xC000000000000001) != 0)
                      {
                        goto LABEL_74;
                      }

LABEL_75:
                      ;
                    }

                    v51 = v208;
                    v120 = v213;
                    v169 = v203;
                    v89 = v217;
                    goto LABEL_84;
                  }

LABEL_102:
                  __break(1u);
                  return result;
                }
              }

              else
              {
                v158 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v158)
                {
                  goto LABEL_72;
                }
              }

              v160 = MEMORY[0x1E69E7CC0];

              v169 = v203;
LABEL_84:
              v209[4] = v160;
              v170 = [v51 orderUpdateDate];
              if (v170)
              {
                v171 = v201;
                v172 = v170;
                sub_1B77FF928();

                v173 = 0;
              }

              else
              {
                v173 = 1;
                v171 = v201;
              }

              v211(v171, v173, 1, v212);
              sub_1B72DFF88(v171, v120 + v192);
              v174 = [v51 trackedOrderIdentifier];
              if (v174)
              {
                v175 = v174;
                v176 = sub_1B7800868();
                v178 = v177;
              }

              else
              {
                v176 = 0;
                v178 = 0;
              }

              v179 = v191;
              v180 = (v120 + v86[16]);
              *v180 = v176;
              v180[1] = v178;
              v181 = [v51 orderStatusValue];
              if (v181 >= 5)
              {
                v182 = 0;
              }

              else
              {
                v182 = v181;
              }

              *(v120 + v193) = v182;
              v183 = [v51 orderStatusUpdateDate];
              if (v183)
              {
                v184 = v183;
                sub_1B77FF928();

                v185 = 0;
              }

              else
              {
                v185 = 1;
              }

              v186 = v202;
              v211(v169, v185, 1, v212);
              sub_1B72DFF88(v169, v120 + v194);
              v187 = [v51 earliestEmailDateSent];
              if (v187)
              {
                v188 = v187;
                sub_1B77FF928();

                (*(v190 + 8))(v89, v66);
                v189 = 0;
              }

              else
              {
                (*(v190 + 8))(v89, v66);

                v189 = 1;
              }

              v211(v186, v189, 1, v212);
              sub_1B72DFF88(v186, v120 + v207);
              sub_1B747806C(v120, v179, type metadata accessor for CascadeExtractedOrder);
              (*(v206 + 56))(v179, 0, 1, v86);
              return sub_1B747800C(v120, type metadata accessor for CascadeExtractedOrder);
            }

LABEL_101:
            __break(1u);
            goto LABEL_102;
          }
        }

        else
        {
          v113 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v113)
          {
            goto LABEL_41;
          }
        }

        v115 = MEMORY[0x1E69E7CC0];
        goto LABEL_52;
      }
    }

    v82 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v61 = *(v206 + 56);

  return v61(a2, 1, 1, v31);
}

uint64_t _s10FinanceKit21CascadeExtractedOrderV0E5EmailV0E7DetailsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 64);
  v18 = *(a2 + 72);
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v11)
    {
      v31 = *(a1 + 40);
      v30 = *(a1 + 32);
      v19 = *(a2 + 64);
      v20 = *(a1 + 64);
      v21 = *(a2 + 72);
      v22 = *(a1 + 72);
      v33 = *(a2 + 48);
      v35 = *(a1 + 48);
      v23 = *(a2 + 40);
      v24 = *(a2 + 32);
      v25 = sub_1B78020F8();
      v14 = v24;
      v15 = v23;
      v16 = v33;
      v8 = v35;
      v10 = v22;
      v18 = v21;
      v9 = v20;
      v17 = v19;
      v6 = v30;
      v7 = v31;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v5)
  {
    if (v13)
    {
      v32 = v10;
      if (v4 == v12 && v5 == v13)
      {
        goto LABEL_13;
      }

      v34 = v16;
      v36 = v8;
      v26 = v14;
      v27 = sub_1B78020F8();
      v14 = v26;
      v16 = v34;
      v8 = v36;
      if (v27)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v32 = v10;
    if (!v13)
    {
LABEL_13:
      LOBYTE(v40[0]) = v6;
      v40[1] = v7;
      v41 = v8;
      v42 = v9;
      LOBYTE(v37[0]) = v14;
      v37[1] = v15;
      v38 = v16;
      v39 = v17;
      v28 = _s10FinanceKit15FoundInMailItemV12OrderDetailsV08ShippingH0V2eeoiySbAG_AGtFZ_0(v40, v37);

      return v28 & (v32 == v18);
    }
  }

  return 0;
}

uint64_t _s10FinanceKit21CascadeExtractedOrderV7AddressV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_1B78020F8();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_1B78020F8();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_1B78020F8();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_1B78020F8();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10FinanceKit21CascadeExtractedOrderV7PaymentV11TransactionV0F6MethodV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v4 == v8 && v5 == v9 || (sub_1B78020F8() & 1) != 0))
    {
      return v6 ^ v10 ^ 1u;
    }
  }

  else if (!v9)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

uint64_t _s10FinanceKit21CascadeExtractedOrderV7PaymentV11TransactionV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a2 + 72);
  v20 = *(a2 + 80);
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v37 = *(a2 + 56);
      v38 = *(a1 + 32);
      v35 = *(a2 + 72);
      v36 = *(a1 + 56);
      v21 = *(a2 + 80);
      v22 = *(a1 + 80);
      v23 = *(a1 + 72);
      v40 = *(a2 + 40);
      v42 = *(a1 + 40);
      v24 = *(a1 + 64);
      v25 = *(a2 + 32);
      v26 = *(a2 + 64);
      v27 = *(a1 + 16);
      v28 = sub_1B78020F8();
      v4 = v27;
      v18 = v26;
      v14 = v25;
      v9 = v24;
      v16 = v40;
      v7 = v42;
      v10 = v23;
      v11 = v22;
      v20 = v21;
      v19 = v35;
      v8 = v36;
      v17 = v37;
      v5 = v38;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    v39 = v10;
    if (v4 != v13 || v6 != v15)
    {
      v41 = v16;
      v43 = v7;
      v29 = v9;
      v30 = v14;
      v31 = v18;
      v32 = sub_1B78020F8();
      v18 = v31;
      v14 = v30;
      v9 = v29;
      v16 = v41;
      v7 = v43;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v39 = v10;
    if (v15)
    {
      return 0;
    }
  }

  v48 = v5;
  v49 = v7;
  v50 = v8;
  v51 = v9;
  v44 = v14;
  v45 = v16;
  v46 = v17;
  v47 = v18;
  v33 = _s10FinanceKit21CascadeExtractedOrderV7PaymentV11TransactionV0F6MethodV2eeoiySbAI_AItFZ_0(&v48, &v44);

  if (v33)
  {
    if (v11)
    {
      if (v20 && (v39 == v19 && v11 == v20 || (sub_1B78020F8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v20)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s10FinanceKit21CascadeExtractedOrderV7PaymentV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a2[1];
  v8 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v10 && (v4 == v8 && v6 == v10 || (sub_1B78020F8() & 1) != 0))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_15:

  return sub_1B731DA18(v5, v9);
}

uint64_t sub_1B74759E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 6);
  v50[2] = *(a1 + 5);
  v50[3] = v8;
  v9 = *(a1 + 7);
  v10 = *(a1 + 4);
  v50[0] = *(a1 + 3);
  v50[1] = v10;
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = *(a2 + 7);
  v51[3] = *(a2 + 6);
  v51[4] = v17;
  v18 = *(a2 + 5);
  v51[1] = *(a2 + 4);
  v51[2] = v18;
  v19 = *(a2 + 3);
  v50[4] = v9;
  v51[0] = v19;
  if (v3)
  {
    if (!v12)
    {
      goto LABEL_22;
    }

    if (v2 != v11 || v3 != v12)
    {
      v20 = a1;
      v21 = a2;
      v22 = sub_1B78020F8();
      a2 = v21;
      v23 = v22;
      a1 = v20;
      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_22;
  }

  if (v5)
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    if (v4 != v14 || v5 != v13)
    {
      v24 = a1;
      v25 = a2;
      v26 = sub_1B78020F8();
      a2 = v25;
      v27 = v26;
      a1 = v24;
      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_22;
  }

  if (v7)
  {
    if (v15)
    {
      if (v6 == v16 && v7 == v15)
      {
        goto LABEL_20;
      }

      v28 = a1;
      v29 = a2;
      v30 = sub_1B78020F8();
      a2 = v29;
      v31 = v30;
      a1 = v28;
      if (v31)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v36 = 0;
    return v36 & 1;
  }

  if (v15)
  {
    goto LABEL_22;
  }

LABEL_20:
  v32 = *(a1 + 6);
  v45 = *(a1 + 5);
  v46 = v32;
  v47 = *(a1 + 7);
  v33 = *(a1 + 4);
  v43 = *(a1 + 3);
  v44 = v33;
  v34 = *(a2 + 6);
  v40 = *(a2 + 5);
  v41 = v34;
  v42 = *(a2 + 7);
  v35 = *(a2 + 4);
  v38 = *(a2 + 3);
  v39 = v35;
  v36 = _s10FinanceKit21CascadeExtractedOrderV7AddressV2eeoiySbAE_AEtFZ_0(&v43, &v38);
  v48[2] = v40;
  v48[3] = v41;
  v48[4] = v42;
  v48[0] = v38;
  v48[1] = v39;
  sub_1B72B1DD8(v50, v49);
  sub_1B72B1DD8(v51, v49);
  sub_1B7478128(v48);
  v49[2] = v45;
  v49[3] = v46;
  v49[4] = v47;
  v49[0] = v43;
  v49[1] = v44;
  sub_1B7478128(v49);
  return v36 & 1;
}

BOOL _s10FinanceKit21CascadeExtractedOrderV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v108 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v106 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v96 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v96 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v107 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v96 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v96 - v21;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v105 = v5;
  v23 = type metadata accessor for CascadeExtractedOrder(0);
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v24 = v23[6];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = v23[7];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = v23[8];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  if ((sub_1B731D970(*(a1 + v23[9]), *(a2 + v23[9])) & 1) == 0)
  {
    return 0;
  }

  v39 = v23[10];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  if ((_s10FinanceKit21CascadeExtractedOrderV8MerchantV2eeoiySbAE_AEtFZ_0((a1 + v23[11]), (a2 + v23[11])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B731D9C4(*(a1 + v23[12]), *(a2 + v23[12])) & 1) == 0)
  {
    return 0;
  }

  v44 = (a1 + v23[13]);
  v45 = v44[5];
  v46 = v44[3];
  v127 = v44[4];
  v128 = v45;
  v47 = v44[5];
  v48 = v44[7];
  v129 = v44[6];
  v130 = v48;
  v49 = v44[1];
  v124[0] = *v44;
  v124[1] = v49;
  v50 = v44[3];
  v52 = *v44;
  v51 = v44[1];
  v125 = v44[2];
  v126 = v50;
  v120 = v127;
  v121 = v47;
  v53 = v44[7];
  v122 = v129;
  v123 = v53;
  v117[0] = v52;
  v117[1] = v51;
  v118 = v125;
  v119 = v46;
  v54 = (a2 + v23[13]);
  v55 = v54[5];
  v56 = v54[3];
  v132 = v54[4];
  v133 = v55;
  v57 = v54[5];
  v58 = v54[7];
  v134 = v54[6];
  v135 = v58;
  v59 = *v54;
  v60 = v54[1];
  v61 = v54[3];
  v131[2] = v54[2];
  v131[3] = v61;
  v62 = v54[1];
  v63 = v54[2];
  v64 = *v54;
  v131[0] = v59;
  v131[1] = v62;
  v113 = v132;
  v114 = v57;
  v65 = v54[7];
  v115 = v134;
  v116 = v65;
  v110[0] = v64;
  v110[1] = v60;
  v111 = v63;
  v112 = v56;
  sub_1B74783D8(v124, v109);
  sub_1B74783D8(v131, v109);
  LODWORD(v104) = sub_1B74759E0(v117, v110);
  v136[4] = v113;
  v136[5] = v114;
  v136[6] = v115;
  v136[7] = v116;
  v136[0] = v110[0];
  v136[1] = v110[1];
  v136[2] = v111;
  v136[3] = v112;
  sub_1B7478410(v136);
  v137[4] = v120;
  v137[5] = v121;
  v137[6] = v122;
  v137[7] = v123;
  v137[0] = v117[0];
  v137[1] = v117[1];
  v137[2] = v118;
  v137[3] = v119;
  sub_1B7478410(v137);
  if ((v104 & 1) == 0)
  {
    return 0;
  }

  v66 = v23[14];
  v67 = *(a1 + v66);
  v68 = *(a1 + v66 + 24);
  v100 = *(a1 + v66 + 32);
  v97 = *(a1 + v66 + 8);
  *(v117 + 8) = v97;
  *&v117[0] = v67;
  *(&v117[1] + 1) = v68;
  *&v118 = v100;
  v69 = a2 + v66;
  v70 = *v69;
  v72 = *(v69 + 3);
  v71 = *(v69 + 4);
  v98 = v68;
  v99 = v72;
  v102 = v71;
  v96 = *(v69 + 8);
  *(v110 + 8) = v96;
  *&v110[0] = v70;
  *(&v110[1] + 1) = v72;
  *&v111 = v71;
  LODWORD(v104) = _s10FinanceKit21CascadeExtractedOrderV7PaymentV2eeoiySbAE_AEtFZ_0(v117, v110);
  v101 = *(&v110[0] + 1);
  v103 = *(&v110[1] + 1);
  *&v97 = v111;

  v102 = *(&v117[0] + 1);
  v103 = *(&v117[1] + 1);

  if ((v104 & 1) == 0)
  {
    return 0;
  }

  v73 = *(v15 + 48);
  v103 = v23[15];
  v104 = v73;
  sub_1B7280900(a1 + v103, v22);
  sub_1B7280900(a2 + v103, &v104[v22]);
  v102 = *(v105 + 48);
  v103 = v105 + 48;
  if (v102(v22, 1, v4) == 1)
  {
    if (v102(&v104[v22], 1, v4) == 1)
    {
      sub_1B7205418(v22, &qword_1EB98EBD0);
      goto LABEL_48;
    }

LABEL_43:
    v74 = v22;
LABEL_44:
    sub_1B7205418(v74, &qword_1EB98FCE0);
    return 0;
  }

  sub_1B7280900(v22, v14);
  if (v102(&v104[v22], 1, v4) == 1)
  {
    (*(v105 + 8))(v14, v4);
    goto LABEL_43;
  }

  (*(v105 + 32))(v108, &v104[v22], v4);
  sub_1B7477D8C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  LODWORD(v100) = sub_1B7800828();
  v76 = *(v105 + 8);
  v101 = v105 + 8;
  v104 = v76;
  (v76)(v108, v4);
  (v104)(v14, v4);
  sub_1B7205418(v22, &qword_1EB98EBD0);
  if ((v100 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v77 = v23[16];
  v78 = (a1 + v77);
  v79 = *(a1 + v77 + 8);
  v80 = (a2 + v77);
  v81 = v80[1];
  if (v79)
  {
    if (!v81 || (*v78 != *v80 || v79 != v81) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v81)
  {
    return 0;
  }

  if (*(a1 + v23[17]) != *(a2 + v23[17]))
  {
    return 0;
  }

  v82 = v23[18];
  v83 = *(v15 + 48);
  sub_1B7280900(a1 + v82, v20);
  sub_1B7280900(a2 + v82, &v20[v83]);
  if (v102(v20, 1, v4) != 1)
  {
    sub_1B7280900(v20, v12);
    if (v102(&v20[v83], 1, v4) != 1)
    {
      v84 = v105;
      (*(v105 + 32))(v108, &v20[v83], v4);
      sub_1B7477D8C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      LODWORD(v104) = sub_1B7800828();
      v85 = *(v84 + 8);
      v85(v108, v4);
      v85(v12, v4);
      sub_1B7205418(v20, &qword_1EB98EBD0);
      if ((v104 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_63;
    }

    (*(v105 + 8))(v12, v4);
    goto LABEL_61;
  }

  if (v102(&v20[v83], 1, v4) != 1)
  {
LABEL_61:
    v74 = v20;
    goto LABEL_44;
  }

  sub_1B7205418(v20, &qword_1EB98EBD0);
LABEL_63:
  v86 = v23[19];
  v87 = *(v15 + 48);
  v88 = v107;
  sub_1B7280900(a1 + v86, v107);
  sub_1B7280900(a2 + v86, v88 + v87);
  if (v102(v88, 1, v4) == 1)
  {
    if (v102((v107 + v87), 1, v4) == 1)
    {
      sub_1B7205418(v107, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_68;
  }

  v89 = v107;
  sub_1B7280900(v107, v106);
  if (v102((v89 + v87), 1, v4) == 1)
  {
    (*(v105 + 8))(v106, v4);
LABEL_68:
    v74 = v107;
    goto LABEL_44;
  }

  v90 = v105;
  v92 = v107;
  v91 = v108;
  (*(v105 + 32))(v108, v107 + v87, v4);
  sub_1B7477D8C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v93 = v106;
  v94 = sub_1B7800828();
  v95 = *(v90 + 8);
  v95(v91, v4);
  v95(v93, v4);
  sub_1B7205418(v92, &qword_1EB98EBD0);
  return (v94 & 1) != 0;
}

uint64_t _s10FinanceKit21CascadeExtractedOrderV8MerchantV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
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
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v28 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  v16 = *(v28 + 20);
  v17 = *(v11 + 48);
  sub_1B7280900(a1 + v16, v13);
  sub_1B7280900(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1B7280900(v13, v10);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v17], v4);
      sub_1B7477D8C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v20 = sub_1B7800828();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_1B7205418(v13, &qword_1EB98EBD0);
LABEL_17:
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

uint64_t _s10FinanceKit21CascadeExtractedOrderV19ShippingFulfillmentV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
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

  v27 = *(a1 + 8);
  v28 = *(a2 + 8);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (*(a1 + 7) != *(a2 + 7) || v27 != v28)
    {
      v29 = v12;
      v30 = sub_1B78020F8();
      v12 = v29;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v31 = *(a1 + 10);
  v32 = *(a2 + 10);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (*(a1 + 9) != *(a2 + 9) || v31 != v32)
    {
      v33 = v12;
      v34 = sub_1B78020F8();
      v12 = v33;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v35 = *(a1 + 12);
  v36 = *(a2 + 12);
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    if (*(a1 + 11) != *(a2 + 11) || v35 != v36)
    {
      v37 = v12;
      v38 = sub_1B78020F8();
      v12 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = *(a1 + 14);
  v40 = *(a2 + 14);
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    if (*(a1 + 13) != *(a2 + 13) || v39 != v40)
    {
      v41 = v12;
      v42 = sub_1B78020F8();
      v12 = v41;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v43 = *(a1 + 16);
  v44 = *(a2 + 16);
  if (v43)
  {
    if (!v44)
    {
      return 0;
    }

    if (*(a1 + 15) != *(a2 + 15) || v43 != v44)
    {
      v45 = v12;
      v46 = sub_1B78020F8();
      v12 = v45;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v44)
  {
    return 0;
  }

  v47 = *(a1 + 18);
  v48 = *(a2 + 18);
  if (v47)
  {
    if (!v48)
    {
      return 0;
    }

    if (*(a1 + 17) != *(a2 + 17) || v47 != v48)
    {
      v49 = v12;
      v50 = sub_1B78020F8();
      v12 = v49;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v48)
  {
    return 0;
  }

  v51 = *(a1 + 20);
  v52 = *(a2 + 20);
  if (v51)
  {
    if (!v52)
    {
      return 0;
    }

    v83 = v12;
    if ((*(a1 + 19) != *(a2 + 19) || v51 != v52) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v83 = v12;
    if (v52)
    {
      return 0;
    }
  }

  v82 = v5;
  v53 = *(a1 + 22);
  v54 = *(a2 + 22);
  if (v53)
  {
    if (!v54 || (*(a1 + 21) != *(a2 + 21) || v53 != v54) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v55 = *(a1 + 264);
  v56 = *(a1 + 280);
  v101[4] = *(a1 + 248);
  v101[5] = v55;
  v57 = *(a1 + 264);
  v58 = *(a1 + 296);
  v101[6] = *(a1 + 280);
  v101[7] = v58;
  v59 = *(a1 + 200);
  v101[0] = *(a1 + 184);
  v101[1] = v59;
  v60 = *(a1 + 232);
  v101[2] = *(a1 + 216);
  v101[3] = v60;
  v97 = *(a1 + 248);
  v98 = v57;
  v61 = *(a1 + 296);
  v99 = v56;
  v100 = v61;
  v62 = *(a1 + 200);
  v93 = *(a1 + 184);
  v94 = v62;
  v63 = *(a1 + 232);
  v95 = *(a1 + 216);
  v96 = v63;
  v64 = *(a2 + 184);
  v65 = *(a2 + 200);
  v66 = *(a2 + 232);
  v102[2] = *(a2 + 216);
  v102[3] = v66;
  v102[0] = v64;
  v102[1] = v65;
  v67 = *(a2 + 248);
  v68 = *(a2 + 264);
  v69 = *(a2 + 296);
  v103 = *(a2 + 280);
  v104 = v69;
  v70 = *(a2 + 264);
  v102[4] = v67;
  v102[5] = v70;
  v89 = *(a2 + 248);
  v90 = v68;
  v71 = *(a2 + 296);
  v91 = v103;
  v92 = v71;
  v72 = *(a2 + 200);
  v85 = *(a2 + 184);
  v86 = v72;
  v73 = *(a2 + 232);
  v87 = *(a2 + 216);
  v88 = v73;
  sub_1B7478158(v101, v84);
  sub_1B7478158(v102, v84);
  v74 = sub_1B74759E0(&v93, &v85);
  v105[4] = v89;
  v105[5] = v90;
  v105[6] = v91;
  v105[7] = v92;
  v105[0] = v85;
  v105[1] = v86;
  v105[2] = v87;
  v105[3] = v88;
  sub_1B7478190(v105);
  v106[4] = v97;
  v106[5] = v98;
  v106[6] = v99;
  v106[7] = v100;
  v106[0] = v93;
  v106[1] = v94;
  v106[2] = v95;
  v106[3] = v96;
  sub_1B7478190(v106);
  if (v74)
  {
    v75 = *(type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0) + 68);
    v76 = *(v83 + 48);
    sub_1B7280900(&a1[v75], v14);
    sub_1B7280900(&a2[v75], &v14[v76]);
    v77 = *(v82 + 48);
    if (v77(v14, 1, v4) == 1)
    {
      if (v77(&v14[v76], 1, v4) == 1)
      {
        sub_1B7205418(v14, &qword_1EB98EBD0);
        return 1;
      }

      goto LABEL_85;
    }

    sub_1B7280900(v14, v10);
    if (v77(&v14[v76], 1, v4) == 1)
    {
      (*(v82 + 8))(v10, v4);
LABEL_85:
      sub_1B7205418(v14, &qword_1EB98FCE0);
      return 0;
    }

    v79 = v82;
    (*(v82 + 32))(v7, &v14[v76], v4);
    sub_1B7477D8C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
    v80 = sub_1B7800828();
    v81 = *(v79 + 8);
    v81(v7, v4);
    v81(v10, v4);
    sub_1B7205418(v14, &qword_1EB98EBD0);
    if (v80)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s10FinanceKit21CascadeExtractedOrderV0E5EmailV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v88 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  v88 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v16 = v88[5];
  v17 = *(v11 + 48);
  sub_1B7280900(a1 + v16, v13);
  v89 = a2;
  sub_1B7280900(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1B7280900(v13, v10);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v17], v4);
      sub_1B7477D8C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v21 = sub_1B7800828();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v10, v4);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    goto LABEL_14;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_1B7205418(v13, &qword_1EB98EBD0);
LABEL_17:
  v24 = v88;
  v23 = v89;
  v25 = v88[6];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (v89 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v29)
  {
    goto LABEL_14;
  }

  v30 = v24[7];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (v23 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v34)
  {
    goto LABEL_14;
  }

  v35 = v24[8];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (v23 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v39)
  {
    goto LABEL_14;
  }

  v40 = v24[9];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (v23 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v44)
  {
    goto LABEL_14;
  }

  v45 = v24[10];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (v23 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v49)
  {
    goto LABEL_14;
  }

  v50 = v24[11];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (v23 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v54)
  {
    goto LABEL_14;
  }

  v55 = v24[12];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (v23 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v59)
  {
    goto LABEL_14;
  }

  v60 = v24[13];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 8);
  v63 = (v23 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v64)
  {
    goto LABEL_14;
  }

  if (*(a1 + v24[14]) == *(v23 + v24[14]))
  {
    v65 = v24[15];
    v66 = (a1 + v65);
    v67 = *(a1 + v65 + 8);
    v68 = (v23 + v65);
    v69 = v68[1];
    if (v67)
    {
      if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v69)
    {
      goto LABEL_14;
    }

    v70 = v88[16];
    v71 = (a1 + v70);
    v72 = *(a1 + v70 + 8);
    v73 = (v89 + v70);
    v74 = v73[1];
    if (v72)
    {
      if (v74 && (*v71 == *v73 && v72 == v74 || (sub_1B78020F8() & 1) != 0))
      {
        goto LABEL_88;
      }
    }

    else if (!v74)
    {
LABEL_88:
      v75 = (a1 + v88[17]);
      v76 = v75[1];
      v77 = v75[3];
      v99 = v75[2];
      v100[0] = v77;
      *(v100 + 9) = *(v75 + 57);
      v78 = v75[1];
      v98[0] = *v75;
      v98[1] = v78;
      *(v97 + 9) = *(v75 + 57);
      v79 = v75[3];
      v96 = v99;
      v97[0] = v79;
      v94 = v98[0];
      v95 = v76;
      v80 = (v89 + v88[17]);
      *(v102 + 9) = *(v80 + 57);
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[3];
      v101[2] = v80[2];
      v102[0] = v83;
      v84 = v80[1];
      v85 = v80[2];
      v86 = *v80;
      v101[0] = v81;
      v101[1] = v84;
      v87 = v80[3];
      v92 = v85;
      v93[0] = v87;
      *(v93 + 9) = *(v80 + 57);
      v90 = v86;
      v91 = v82;
      sub_1B7477D24(v98, v105);
      sub_1B7477D24(v101, v105);
      v19 = _s10FinanceKit21CascadeExtractedOrderV0E5EmailV0E7DetailsV2eeoiySbAG_AGtFZ_0(&v94, &v90);
      v103[2] = v92;
      v104[0] = v93[0];
      *(v104 + 9) = *(v93 + 9);
      v103[0] = v90;
      v103[1] = v91;
      sub_1B7477D5C(v103);
      v105[2] = v96;
      v106[0] = v97[0];
      *(v106 + 9) = *(v97 + 9);
      v105[0] = v94;
      v105[1] = v95;
      sub_1B7477D5C(v105);
      return v19 & 1;
    }
  }

LABEL_14:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_1B7477988()
{
  result = qword_1EB9951D8;
  if (!qword_1EB9951D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9951D8);
  }

  return result;
}

unint64_t sub_1B74779DC()
{
  result = qword_1EB9951F0;
  if (!qword_1EB9951F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9951F0);
  }

  return result;
}

unint64_t sub_1B7477A30()
{
  result = qword_1EB9951F8;
  if (!qword_1EB9951F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9951F8);
  }

  return result;
}

unint64_t sub_1B7477A84()
{
  result = qword_1EB995208;
  if (!qword_1EB995208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995208);
  }

  return result;
}

unint64_t sub_1B7477AD8()
{
  result = qword_1EB995218;
  if (!qword_1EB995218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995218);
  }

  return result;
}

unint64_t sub_1B7477B2C()
{
  result = qword_1EB995220;
  if (!qword_1EB995220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995220);
  }

  return result;
}

unint64_t sub_1B7477B80()
{
  result = qword_1EB995228;
  if (!qword_1EB995228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995228);
  }

  return result;
}

unint64_t sub_1B7477BD4()
{
  result = qword_1EB995230;
  if (!qword_1EB995230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995230);
  }

  return result;
}

unint64_t sub_1B7477C28()
{
  result = qword_1EB995240;
  if (!qword_1EB995240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995240);
  }

  return result;
}

unint64_t sub_1B7477C7C()
{
  result = qword_1EB995248;
  if (!qword_1EB995248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995248);
  }

  return result;
}

unint64_t sub_1B7477CD0()
{
  result = qword_1EB995250;
  if (!qword_1EB995250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995250);
  }

  return result;
}

uint64_t sub_1B7477D8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7477DF4()
{
  result = qword_1EB995260;
  if (!qword_1EB995260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995260);
  }

  return result;
}

unint64_t sub_1B7477E48()
{
  result = qword_1EB995268;
  if (!qword_1EB995268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995268);
  }

  return result;
}

unint64_t sub_1B7477E9C()
{
  result = qword_1EB995270;
  if (!qword_1EB995270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995270);
  }

  return result;
}

unint64_t sub_1B7477EF0()
{
  result = qword_1EB995280;
  if (!qword_1EB995280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995280);
  }

  return result;
}

unint64_t sub_1B7477F44()
{
  result = qword_1EB995288;
  if (!qword_1EB995288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995288);
  }

  return result;
}

unint64_t sub_1B7477FB8()
{
  result = qword_1EB995298;
  if (!qword_1EB995298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995298);
  }

  return result;
}

uint64_t sub_1B747800C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B747806C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B74780D4()
{
  result = qword_1EB9952B0;
  if (!qword_1EB9952B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9952B0);
  }

  return result;
}

unint64_t sub_1B74781E0()
{
  result = qword_1EB9952C8;
  if (!qword_1EB9952C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9952C8);
  }

  return result;
}

unint64_t sub_1B7478234()
{
  result = qword_1EB9952D0;
  if (!qword_1EB9952D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9952D0);
  }

  return result;
}

unint64_t sub_1B7478288()
{
  result = qword_1EB9952E0;
  if (!qword_1EB9952E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9952E0);
  }

  return result;
}

unint64_t sub_1B74782DC()
{
  result = qword_1EB9952F0;
  if (!qword_1EB9952F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9952F0);
  }

  return result;
}

unint64_t sub_1B7478330()
{
  result = qword_1EB9952F8;
  if (!qword_1EB9952F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9952F8);
  }

  return result;
}

unint64_t sub_1B7478384()
{
  result = qword_1EB995308;
  if (!qword_1EB995308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995308);
  }

  return result;
}

unint64_t sub_1B7478440()
{
  result = qword_1EB995318;
  if (!qword_1EB995318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995318);
  }

  return result;
}

unint64_t sub_1B7478494()
{
  result = qword_1EB995330;
  if (!qword_1EB995330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995330);
  }

  return result;
}

unint64_t sub_1B74784E8()
{
  result = qword_1EB995348;
  if (!qword_1EB995348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995348);
  }

  return result;
}

unint64_t sub_1B747853C()
{
  result = qword_1EB995350;
  if (!qword_1EB995350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995350);
  }

  return result;
}

unint64_t sub_1B7478590()
{
  result = qword_1EB995360;
  if (!qword_1EB995360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995360);
  }

  return result;
}

unint64_t sub_1B7478614()
{
  result = qword_1EB995370;
  if (!qword_1EB995370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995370);
  }

  return result;
}

unint64_t sub_1B7478668()
{
  result = qword_1EB995388;
  if (!qword_1EB995388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995388);
  }

  return result;
}

uint64_t sub_1B74786BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB995378);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7478734()
{
  result = qword_1EB9953A0;
  if (!qword_1EB9953A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9953A0);
  }

  return result;
}

uint64_t sub_1B7478788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B74787EC()
{
  result = qword_1EB9953B0;
  if (!qword_1EB9953B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9953B0);
  }

  return result;
}

uint64_t sub_1B7478840(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9953D8);
    sub_1B7477D8C(a2, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74788DC()
{
  result = qword_1EB9953F0;
  if (!qword_1EB9953F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9953F0);
  }

  return result;
}

unint64_t sub_1B7478930()
{
  result = qword_1EB9953F8;
  if (!qword_1EB9953F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9953F8);
  }

  return result;
}

unint64_t sub_1B7478984()
{
  result = qword_1EB995400;
  if (!qword_1EB995400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995400);
  }

  return result;
}

uint64_t sub_1B74789D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9953B8);
    sub_1B7477D8C(a2, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7478A74()
{
  result = qword_1EB995438;
  if (!qword_1EB995438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995438);
  }

  return result;
}

unint64_t sub_1B7478AC8()
{
  result = qword_1EB995440;
  if (!qword_1EB995440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995440);
  }

  return result;
}

unint64_t sub_1B7478B1C()
{
  result = qword_1EB995448;
  if (!qword_1EB995448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995448);
  }

  return result;
}

uint64_t sub_1B7478B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7478BDC()
{
  result = qword_1EB995450;
  if (!qword_1EB995450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995450);
  }

  return result;
}

unint64_t sub_1B7478C34()
{
  result = qword_1EB995458;
  if (!qword_1EB995458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995458);
  }

  return result;
}

unint64_t sub_1B7478C8C()
{
  result = qword_1EB995460;
  if (!qword_1EB995460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995460);
  }

  return result;
}

unint64_t sub_1B7478CE4()
{
  result = qword_1EB995468;
  if (!qword_1EB995468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995468);
  }

  return result;
}

unint64_t sub_1B7478D3C()
{
  result = qword_1EB995470;
  if (!qword_1EB995470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995470);
  }

  return result;
}

unint64_t sub_1B7478D94()
{
  result = qword_1EB995478;
  if (!qword_1EB995478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995478);
  }

  return result;
}

unint64_t sub_1B7478E34()
{
  result = qword_1EB995488;
  if (!qword_1EB995488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995488);
  }

  return result;
}

void sub_1B7478EB0()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      sub_1B747906C(319, &qword_1EDAF64D0, type metadata accessor for CascadeExtractedOrder.OrderEmail, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CascadeExtractedOrder.Merchant(319);
        if (v3 <= 0x3F)
        {
          sub_1B747906C(319, &qword_1EDAF64C8, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1B747906C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
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

void sub_1B747906C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B7479108()
{
  sub_1B7280028();
  if (v0 <= 0x3F)
  {
    sub_1B747906C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B7479228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B7479284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_52Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_53Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B74794CC()
{
  sub_1B7280028();
  if (v0 <= 0x3F)
  {
    sub_1B747906C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B74795BC()
{
  sub_1B7280028();
  if (v0 <= 0x3F)
  {
    sub_1B747906C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1B74796E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B7479744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B74797D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B7479834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B74798AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B7479908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s11TransactionV15TransactionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11TransactionV15TransactionTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s19ShippingFulfillmentV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19ShippingFulfillmentV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7479CC4()
{
  result = qword_1EB995490;
  if (!qword_1EB995490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995490);
  }

  return result;
}

unint64_t sub_1B7479D1C()
{
  result = qword_1EB995498;
  if (!qword_1EB995498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995498);
  }

  return result;
}

unint64_t sub_1B7479D74()
{
  result = qword_1EB9954A0;
  if (!qword_1EB9954A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954A0);
  }

  return result;
}

unint64_t sub_1B7479DCC()
{
  result = qword_1EB9954A8;
  if (!qword_1EB9954A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954A8);
  }

  return result;
}

unint64_t sub_1B7479E24()
{
  result = qword_1EB9954B0;
  if (!qword_1EB9954B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954B0);
  }

  return result;
}

unint64_t sub_1B7479E7C()
{
  result = qword_1EB9954B8;
  if (!qword_1EB9954B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954B8);
  }

  return result;
}

unint64_t sub_1B7479ED4()
{
  result = qword_1EB9954C0;
  if (!qword_1EB9954C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954C0);
  }

  return result;
}

unint64_t sub_1B7479F2C()
{
  result = qword_1EB9954C8;
  if (!qword_1EB9954C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954C8);
  }

  return result;
}

unint64_t sub_1B7479F84()
{
  result = qword_1EB9954D0;
  if (!qword_1EB9954D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954D0);
  }

  return result;
}

unint64_t sub_1B7479FDC()
{
  result = qword_1EB9954D8;
  if (!qword_1EB9954D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954D8);
  }

  return result;
}

unint64_t sub_1B747A034()
{
  result = qword_1EB9954E0;
  if (!qword_1EB9954E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954E0);
  }

  return result;
}

unint64_t sub_1B747A08C()
{
  result = qword_1EB9954E8;
  if (!qword_1EB9954E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954E8);
  }

  return result;
}

unint64_t sub_1B747A0E4()
{
  result = qword_1EB9954F0;
  if (!qword_1EB9954F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954F0);
  }

  return result;
}

unint64_t sub_1B747A13C()
{
  result = qword_1EB9954F8;
  if (!qword_1EB9954F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9954F8);
  }

  return result;
}

unint64_t sub_1B747A194()
{
  result = qword_1EB995500;
  if (!qword_1EB995500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995500);
  }

  return result;
}

unint64_t sub_1B747A1EC()
{
  result = qword_1EB995508;
  if (!qword_1EB995508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995508);
  }

  return result;
}

unint64_t sub_1B747A244()
{
  result = qword_1EB995510;
  if (!qword_1EB995510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995510);
  }

  return result;
}

unint64_t sub_1B747A29C()
{
  result = qword_1EB995518;
  if (!qword_1EB995518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995518);
  }

  return result;
}

unint64_t sub_1B747A2F4()
{
  result = qword_1EB995520;
  if (!qword_1EB995520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995520);
  }

  return result;
}

unint64_t sub_1B747A34C()
{
  result = qword_1EB995528;
  if (!qword_1EB995528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995528);
  }

  return result;
}

unint64_t sub_1B747A3A4()
{
  result = qword_1EB995530;
  if (!qword_1EB995530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995530);
  }

  return result;
}

unint64_t sub_1B747A3FC()
{
  result = qword_1EB995538;
  if (!qword_1EB995538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995538);
  }

  return result;
}

unint64_t sub_1B747A454()
{
  result = qword_1EB995540;
  if (!qword_1EB995540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995540);
  }

  return result;
}

unint64_t sub_1B747A4AC()
{
  result = qword_1EB995548;
  if (!qword_1EB995548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995548);
  }

  return result;
}

unint64_t sub_1B747A504()
{
  result = qword_1EB995550;
  if (!qword_1EB995550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995550);
  }

  return result;
}

unint64_t sub_1B747A55C()
{
  result = qword_1EB995558;
  if (!qword_1EB995558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995558);
  }

  return result;
}

unint64_t sub_1B747A5B4()
{
  result = qword_1EB995560;
  if (!qword_1EB995560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995560);
  }

  return result;
}

unint64_t sub_1B747A60C()
{
  result = qword_1EB995568;
  if (!qword_1EB995568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995568);
  }

  return result;
}

unint64_t sub_1B747A664()
{
  result = qword_1EB995570;
  if (!qword_1EB995570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995570);
  }

  return result;
}

unint64_t sub_1B747A6BC()
{
  result = qword_1EB995578;
  if (!qword_1EB995578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995578);
  }

  return result;
}

unint64_t sub_1B747A714()
{
  result = qword_1EB995580;
  if (!qword_1EB995580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995580);
  }

  return result;
}

unint64_t sub_1B747A76C()
{
  result = qword_1EB995588;
  if (!qword_1EB995588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995588);
  }

  return result;
}

unint64_t sub_1B747A7C4()
{
  result = qword_1EB995590;
  if (!qword_1EB995590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995590);
  }

  return result;
}

unint64_t sub_1B747A81C()
{
  result = qword_1EB995598;
  if (!qword_1EB995598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995598);
  }

  return result;
}

unint64_t sub_1B747A874()
{
  result = qword_1EB9955A0;
  if (!qword_1EB9955A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955A0);
  }

  return result;
}

unint64_t sub_1B747A8CC()
{
  result = qword_1EB9955A8;
  if (!qword_1EB9955A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955A8);
  }

  return result;
}

unint64_t sub_1B747A924()
{
  result = qword_1EB9955B0;
  if (!qword_1EB9955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955B0);
  }

  return result;
}

unint64_t sub_1B747A97C()
{
  result = qword_1EB9955B8;
  if (!qword_1EB9955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955B8);
  }

  return result;
}

unint64_t sub_1B747A9D4()
{
  result = qword_1EB9955C0;
  if (!qword_1EB9955C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955C0);
  }

  return result;
}

uint64_t sub_1B747AA28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E726564726FLL && a2 == 0xEB00000000726562;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E697070696873 && a2 == 0xEF736C6961746544 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787EC20 == a2)
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

uint64_t sub_1B747ABA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E655365746164 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F447265646E6573 && a2 == 0xEC0000006E69616DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787EC40 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x707369446D6F7266 && a2 == 0xEF656D614E79616CLL || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x416C69616D456F74 && a2 == 0xEE00737365726464 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x616C707369446F74 && a2 == 0xED0000656D614E79 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B787EC60 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787EC80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7079546C69616D65 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B78803D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B78803F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746544726564726FLL && a2 == 0xEC000000736C6961)
  {

    return 13;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1B747B024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7880410 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E6E69616D6F64 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_1B747B150(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1B747B300(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x676E697070696873 && a2 == 0xEC000000656D6954 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B7880430 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B7880450 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7880470 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7880490 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xEC00000065746144 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xEC000000656D6954 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78804B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B78804D0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1B747B76C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x41676E696C6C6962 && a2 == 0xEE00737365726464)
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

uint64_t sub_1B747B8E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000)
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

uint64_t sub_1B747BA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F467473616CLL && a2 == 0xEE00737469676944 || (sub_1B78020F8() & 1) != 0)
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

uint64_t sub_1B747BB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D746E656D796170 && a2 == 0xED0000646F687465 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7874D10 == a2)
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

uint64_t sub_1B747BCEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6D416C61746F74 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78804F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69)
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

uint64_t sub_1B747BE14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001B78776F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7877710 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7873C00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656449726564726FLL && a2 == 0xEF7265696669746ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E726564726FLL && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616D45726564726FLL && a2 == 0xEB00000000736C69 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746144726564726FLL && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7880510 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72656D6F74737563 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E656D796170 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x647055726564726FLL && a2 == 0xEF65746144657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7877900 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x617453726564726FLL && a2 == 0xEB00000000737574 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7877940 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7877960 == a2)
  {

    return 15;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

unint64_t sub_1B747C32C()
{
  result = qword_1EB9955C8;
  if (!qword_1EB9955C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955C8);
  }

  return result;
}

unint64_t sub_1B747C380()
{
  result = qword_1EB9955D0;
  if (!qword_1EB9955D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955D0);
  }

  return result;
}

unint64_t sub_1B747C3D4()
{
  result = qword_1EB9955D8;
  if (!qword_1EB9955D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955D8);
  }

  return result;
}

unint64_t sub_1B747C428()
{
  result = qword_1EB9955E0;
  if (!qword_1EB9955E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955E0);
  }

  return result;
}

FinanceKit::ManagedOrderBarcodeFormat_optional __swiftcall ManagedOrderBarcodeFormat.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

id ManagedOrderBarcode.format.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 formatValue];
  if (result > 3)
  {
    sub_1B7801A78();

    [v2 formatValue];
    v5 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v5);

    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id (*ManagedOrderBarcode.format.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedOrderBarcode.format.getter((a1 + 8));
  return sub_1B747C65C;
}

id ManagedOrderBarcode.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderBarcode.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderBarcode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderBarcode.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit19ManagedOrderBarcode;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderBarcode.existingObject(with:in:)(uint64_t a1, id a2)
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

void *ManagedOrderBarcode.__allocating_init(_:bundle:context:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  v5 = a1[1];
  v18 = *(a1 + 16);
  v7 = a1[6];
  v8 = [objc_allocWithZone(v3) initWithContext_];
  v9 = v8;
  if (v5)
  {
    v17[0] = v17;
    MEMORY[0x1EEE9AC00](v8);
    v17[1] = v7;
    v16[2] = v6;
    v16[3] = v5;
    v16[4] = 0x726564726FLL;
    v16[5] = 0xE500000000000000;
    v10 = v9;

    v11 = sub_1B723940C(sub_1B7262E4C, v16);
  }

  else
  {
    v12 = v8;
    v11 = 0;
  }

  [v9 setAltText_];

  [v9 setFormatValue_];
  v13 = sub_1B7800838();
  [v9 setMessage_];

  v14 = sub_1B7800838();

  [v9 setMessageEncoding_];

  return v9;
}

void ManagedOrderBarcode.rawOrderBarcode.getter(uint64_t a1@<X8>)
{
  v3 = [v1 altText];
  if (v3)
  {
    v5 = *&v3[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
    v4 = *&v3[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  ManagedOrderBarcode.format.getter(&v16);
  v7 = v16;
  v8 = [v1 message];
  v9 = sub_1B7800868();
  v11 = v10;

  v12 = [v1 messageEncoding];
  v13 = sub_1B7800868();
  v15 = v14;

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
}

void ManagedOrderBarcode.model.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 altText];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B77FFA48();
    v7 = sub_1B741F7D4(v6);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  ManagedOrderBarcode.format.getter(&v19);
  v10 = 0x1000203u >> (8 * v19);
  v11 = [v2 message];
  v12 = sub_1B7800868();
  v14 = v13;

  v15 = [v2 messageEncoding];
  v16 = sub_1B7800868();
  v18 = v17;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
}

unint64_t sub_1B747CD44()
{
  result = qword_1EB9955E8;
  if (!qword_1EB9955E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955E8);
  }

  return result;
}

FinanceKit::ManagedOrderChangeNotificationsValue_optional __swiftcall ManagedOrderChangeNotificationsValue.init(rawValue:)(Swift::Int16 rawValue)
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

unint64_t sub_1B747CE34()
{
  result = qword_1EB9955F0;
  if (!qword_1EB9955F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9955F0);
  }

  return result;
}

uint64_t FullDateFormatter.init(configuration:style:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  sub_1B72A2B9C(a1, a3);
  result = type metadata accessor for FullDateFormatter();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for FullDateFormatter()
{
  result = qword_1EB995630;
  if (!qword_1EB995630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FullDateFormatter.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FullDateFormatter();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t FullDateFormatter.style.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FullDateFormatter();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t FullDateFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v84 = a1;
  v69 = sub_1B77FF718();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1B77FF778();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FF6B8();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FF748();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFC68();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1B77FFCF8();
  v74 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FFC88();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B77FFAF8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v62 - v24;
  v70 = &v62 - v24;
  v26 = type metadata accessor for FormatterConfiguration();
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B77FF7D8();
  v71 = *(v80 - 8);
  v30 = MEMORY[0x1EEE9AC00](v80);
  v63 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v76 = &v62 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v62 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v79 = &v62 - v37;
  sub_1B747E950(v92, v29, type metadata accessor for FormatterConfiguration);
  v38 = sub_1B77FF648();
  (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
  v39 = sub_1B77FF628();
  (*(*(v39 - 8) + 56))(v22, 1, 1, v39);
  (*(v17 + 16))(v19, v29, v16);
  (*(v72 + 16))(v15, &v29[*(v27 + 28)], v73);
  (*(v74 + 16))(v75, &v29[*(v27 + 32)], v77);
  sub_1B77FF368();
  sub_1B77FF668();
  v40 = v71;
  sub_1B747E9B8(v29, type metadata accessor for FormatterConfiguration);
  v42 = v81;
  v41 = v82;
  v43 = v83;
  (*(v82 + 104))(v81, *MEMORY[0x1E6969A68], v83);
  v44 = v92;
  v45 = sub_1B77FFC38();
  (*(v41 + 8))(v42, v43);
  v46 = *(v44 + *(type metadata accessor for FullDateFormatter() + 20));
  v47 = (v40 + 8);
  if (v46)
  {
    v48 = v64;
    sub_1B77FF768();
    v49 = v63;
    LODWORD(v92) = v45;
    sub_1B77FF7A8();
    (*(v65 + 8))(v48, v66);
    v50 = v85;
    sub_1B77FF738();
    v51 = v76;
    sub_1B77FF698();
    (*(v86 + 8))(v50, v87);
    v52 = *v47;
    v53 = v80;
    (*v47)(v49, v80);
    v54 = v89;
    sub_1B77FF6A8();
    v55 = v79;
    sub_1B77FF658();
    (*(v90 + 8))(v54, v91);
    v52(v51, v53);
    v56 = v36;
    if (v92)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v57 = v85;
  sub_1B77FF728();
  v51 = v76;
  v56 = v36;
  sub_1B77FF698();
  (*(v86 + 8))(v57, v87);
  v58 = v89;
  sub_1B77FF6A8();
  v55 = v79;
  sub_1B77FF658();
  (*(v90 + 8))(v58, v91);
  v52 = *v47;
  v53 = v80;
  (*v47)(v51, v80);
  if ((v45 & 1) == 0)
  {
LABEL_5:
    v59 = v67;
    sub_1B77FF708();
    sub_1B77FF688();
    (*(v68 + 8))(v59, v69);
    v52(v55, v53);
    (*(v40 + 32))(v55, v51, v53);
  }

LABEL_6:
  v60 = sub_1B77FF788();
  v52(v56, v53);
  v52(v55, v53);
  return v60;
}

uint64_t static FullDateFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    v5 = type metadata accessor for FullDateFormatter();
    v6 = *(a1 + *(v5 + 20)) ^ *(a2 + *(v5 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B747DB70(uint64_t a1)
{
  v2 = sub_1B747E8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B747DBAC(uint64_t a1)
{
  v2 = sub_1B747E8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FullDateFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9955F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B747E8FC();
  sub_1B78023F8();
  v10[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B747EB90(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for FullDateFormatter() + 20));
    v10[13] = 1;
    sub_1B7442868();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FullDateFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B747EB90(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B747EB90(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B747EB90(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for FullDateFormatter();
  return MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
}

uint64_t FullDateFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B747EB90(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B747EB90(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B747EB90(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
  return sub_1B7802368();
}

uint64_t FullDateFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995608);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B747E8FC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = type metadata accessor for FormatterConfiguration;
    v15 = v11;
  }

  else
  {
    v12 = v18;
    v23 = 0;
    sub_1B747EB90(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    v13 = v19;
    sub_1B7801E48();
    sub_1B72A2B9C(v20, v11);
    v21 = 1;
    sub_1B74428BC();
    sub_1B7801E48();
    (*(v12 + 8))(v8, v13);
    v11[*(v9 + 20)] = v22;
    sub_1B747E950(v11, v17, type metadata accessor for FullDateFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = v11;
    v16 = type metadata accessor for FullDateFormatter;
  }

  return sub_1B747E9B8(v15, v16);
}

uint64_t sub_1B747E394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FullDateFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B747E3BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = FullDateFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B747E4D4(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B747EB90(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B747EB90(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B747EB90(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v1 + *(a1 + 20)));
  return sub_1B7802368();
}

uint64_t sub_1B747E640(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B747EB90(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B747EB90(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B747EB90(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
}

uint64_t sub_1B747E794(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B747EB90(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B747EB90(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B747EB90(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  return sub_1B7802368();
}

unint64_t sub_1B747E8FC()
{
  result = qword_1EB995600;
  if (!qword_1EB995600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995600);
  }

  return result;
}

uint64_t sub_1B747E950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B747E9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B747EA18(uint64_t a1)
{
  result = sub_1B747EB90(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B747EB90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B747EC14()
{
  result = qword_1EB995640;
  if (!qword_1EB995640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995640);
  }

  return result;
}

unint64_t sub_1B747EC6C()
{
  result = qword_1EB995648;
  if (!qword_1EB995648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995648);
  }

  return result;
}

unint64_t sub_1B747ECC4()
{
  result = qword_1EB995650;
  if (!qword_1EB995650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995650);
  }

  return result;
}

uint64_t BankConnectScheduledPaymentsDataLoader.__allocating_init(environment:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B71E4C44(a1, v2 + 16);
  return v2;
}

uint64_t BankConnectScheduledPaymentsDataLoader.loadScheduledPayments(for:userPresence:)(uint64_t *a1, uint64_t a2)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = v2;
  v5 = *(type metadata accessor for UserPresence() - 8);
  *(v3 + 176) = v5;
  *(v3 + 184) = *(v5 + 64);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = type metadata accessor for BankConnectConsent();
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v3 + 208) = v6;
  *(v3 + 216) = v7;
  *(v3 + 224) = *(a1 + 1);
  *(v3 + 240) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B747EE88, 0, 0);
}

uint64_t sub_1B747EE88()
{
  v35 = v0;
  *(v0 + 104) = &_s10FinanceKit11FeatureFlagVN_0;
  v1 = sub_1B721D3DC();
  *(v0 + 80) = 3;
  *(v0 + 112) = v1;
  v2 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  if (v2)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B78000B8();
    __swift_project_value_buffer(v3, qword_1EDAF65B0);

    v4 = sub_1B7800098();
    v5 = sub_1B78011F8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 240);
      v29 = *(v0 + 232);
      v8 = *(v0 + 216);
      v7 = *(v0 + 224);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      *&v31 = 0;
      *(&v31 + 1) = 0xE000000000000000;

      sub_1B7801A78();
      MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
      MEMORY[0x1B8CA4D30](v8, v7);
      MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
      MEMORY[0x1B8CA4D30](v29, v6);
      MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

      v11 = sub_1B71A3EF8(0, 0xE000000000000000, &v34);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_1B7198000, v4, v5, "Fetching scheduled payments for: %s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
      MEMORY[0x1B8CA7A40](v9, -1, -1);
    }

    v13 = *(v0 + 232);
    v12 = *(v0 + 240);
    v30 = *(v0 + 216);
    v14 = *(v0 + 208);
    v15 = *(v0 + 168);
    v16 = v15[5];
    v17 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v16);
    (*(v17 + 24))(v16, v17);
    v18 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_1((v0 + 120), *(v0 + 144));
    v31 = v30;
    v32 = v13;
    v33 = v12;
    BankConnectConsentStoring.getAuthorizedConsent(grantingAccessTo:)(&v31, v18, v14);
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    __swift_destroy_boxed_opaque_existential_1(v0 + 120);
    v24 = v15[5];
    v23 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v24);
    v25 = (v21 + *(v22 + 20));
    v26 = *v25;
    v27 = v25[1];
    v28 = swift_task_alloc();
    *(v0 + 248) = v28;
    *v28 = v0;
    v28[1] = sub_1B747F2A8;

    return BankConnectDataLoaderEnvironment.makeTaskQueue(forConsentID:)(v26, v27, v24, v23);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1B747F2A8(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B747F3A8, 0, 0);
}

uint64_t sub_1B747F3A8()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  sub_1B74822D8(v0[20], v6, type metadata accessor for UserPresence);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v0[33] = v10;
  v10[2] = v7;
  v10[3] = v5;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v2;
  sub_1B74276E8(v6, v10 + v9, type metadata accessor for UserPresence);
  sub_1B7389608(&qword_1EB992D70, type metadata accessor for BankConnectTaskQueue);

  if (v1)
  {
    swift_getObjectType();
    v11 = sub_1B7800CD8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B747F524, v11, v13);
}

uint64_t sub_1B747F524()
{
  v2 = v0[32];
  v1 = v0[33];
  v0[2] = v0;
  v0[3] = sub_1B747F5DC;
  v3 = swift_continuation_init();
  sub_1B7388288(v3, v2, &unk_1B782FFC8, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B747F5DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = *(v1 + 256);
    swift_willThrow();
    v4 = sub_1B747F7A8;
    v5 = v3;
  }

  else
  {

    v4 = sub_1B747F710;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B747F710()
{
  v1 = *(v0 + 208);

  sub_1B7482278(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B747F7A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B747F810, 0, 0);
}

uint64_t sub_1B747F810()
{
  v1 = *(v0 + 208);

  sub_1B7482278(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B747F8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_1B738077C;

  return sub_1B747FA6C(v7 + 2, a7);
}

uint64_t sub_1B747F960(uint64_t a1)
{
  v4 = *(type metadata accessor for UserPresence() - 8);
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

  return sub_1B747F8A8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1B747FA6C(uint64_t *a1, uint64_t a2)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = v2;
  type metadata accessor for BankConnectResponseHeaders();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995658);
  *(v3 + 88) = swift_task_alloc();
  type metadata accessor for BankConnectConsent();
  v5 = swift_task_alloc();
  v6 = *a1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v6;
  *(v3 + 112) = *(a1 + 1);
  *(v3 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B747FB7C, 0, 0);
}

uint64_t sub_1B747FB7C()
{
  v24 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v19 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  (*(v5 + 24))(v4, v5);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  v21 = v19;
  v22 = v2;
  v23 = v1;
  (*(v7 + 16))(&v21, v6, v7);
  v8 = *(v0 + 128);
  v18 = *(v0 + 96);
  v20 = *(v0 + 112);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  v13 = BankConnectDataLoaderEnvironment.makeWebServiceClient()(v11, v12);
  *(v0 + 136) = v13;
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v18;
  *(v14 + 40) = v20;
  *(v14 + 56) = v8;
  *(v14 + 64) = v10;
  *(v14 + 72) = v0 + 16;
  *(v14 + 80) = v9;
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_1B747FDC4;
  v16 = *(v0 + 88);

  return sub_1B76A2248(v16, dword_1B7830090);
}

uint64_t sub_1B747FDC4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1B74801B0;
  }

  else
  {

    v2 = sub_1B747FEE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B747FEE0()
{
  v22 = v0;
  v1 = v0[20];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  sub_1B74822D8(v2 + *(v3 + 28), v4, type metadata accessor for BankConnectResponseHeaders);
  v21[0] = 0;
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v4, v21, v5, v6);
  if (v1)
  {
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[9];

    sub_1B7482278(v9, type metadata accessor for RawBankConnectData.Consent);
  }

  else
  {
    v10 = v0[15];
    v20 = v0[16];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[11];
    v14 = v0[8];
    sub_1B7482278(v0[9], type metadata accessor for RawBankConnectData.Consent);
    __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
    isa = BankConnectDataLoaderEnvironment.makeBackgroundContext()().super.isa;
    v16 = swift_task_alloc();
    v16[2] = isa;
    v16[3] = v13;
    v16[4] = v12;
    v16[5] = v11;
    v16[6] = v10;
    v16[7] = v20;
    v17 = swift_task_alloc();
    v17[2] = sub_1B7482254;
    v17[3] = v16;
    v17[4] = isa;
    sub_1B7801468();
    v7 = v0[11];
    v8 = v0[12];
  }

  sub_1B7205418(v7, &qword_1EB995658);
  sub_1B7482278(v8, type metadata accessor for BankConnectConsent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v18 = v0[1];

  return v18();
}

uint64_t sub_1B74801B0()
{
  v1 = *(v0 + 96);

  sub_1B7482278(v1, type metadata accessor for BankConnectConsent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B748026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v13;
  v8[19] = v14;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D88);
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8[21] = swift_task_alloc();
  v9 = sub_1B77FF988();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for FinanceNetworkError();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = type metadata accessor for BankConnectErrorWithConsent(0);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = type metadata accessor for BankConnectWebServiceAccountScheduledPaymentsRequest(0);
  v8[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74804AC, 0, 0);
}

uint64_t sub_1B74804AC()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  sub_1B74822D8(v0[12], v1, type metadata accessor for BankConnectConsent);
  sub_1B74822D8(v3, v1 + *(v2 + 24), type metadata accessor for UserPresence);
  v6 = (v1 + *(v2 + 20));
  *v6 = v5;
  v6[1] = v4;

  v0[5] = v2;
  v0[6] = &protocol witness table for BankConnectWebServiceAccountScheduledPaymentsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B74822D8(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountScheduledPaymentsRequest);
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_1B74805F8;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B74805F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;

  if (v3)
  {
    v6 = sub_1B74811E8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7480718;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7480718()
{
  v83 = v0;
  v1 = *(v0 + 328);
  sub_1B7784C3C(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 80));
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  if (v1)
  {
    sub_1B7482278(v5, type metadata accessor for BankConnectWebServiceAccountScheduledPaymentsRequest);

    sub_1B720A388(v4, v2);
    *(v0 + 56) = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 264);
      v8 = *(v0 + 272);
      v9 = *(v0 + 240);
      v10 = *(v0 + 248);
      v11 = *(v0 + 144);

      sub_1B74276E8(v8, v7, type metadata accessor for BankConnectErrorWithConsent);
      v12 = v11[3];
      v13 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v80 = *(v10 + 20);
      sub_1B74822D8(v7 + v80, v9, type metadata accessor for FinanceNetworkError);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 7)
      {
        sub_1B7482278(*(v0 + 240), type metadata accessor for FinanceNetworkError);
      }

      v15 = *(v0 + 264);
      LOBYTE(v82[0]) = EnumCaseMultiPayload == 7;
      BankConnectConsentStoring.updateConsent(_:consentStatus:)(v15, v82, v12, v13);
      sub_1B74822D8(v7 + v80, *(v0 + 232), type metadata accessor for FinanceNetworkError);
      v24 = swift_getEnumCaseMultiPayload();
      v25 = *(v0 + 232);
      if (v24 == 1)
      {
        v53 = *v25;
        *(v0 + 72) = *v25;
        v54 = v53;
        if (swift_dynamicCast())
        {
          v55 = *(v0 + 264);
          v79 = *(v0 + 136);
          v57 = v11[3];
          v56 = v11[4];
          __swift_project_boxed_opaque_existential_1(*(v0 + 144), v57);
          v58 = *v55;
          v59 = v55[1];
          v60 = *(v56 + 56);

          v60(v58, v59, v79, v57, v56);
        }

        else
        {
        }
      }

      else if (v24 == 6)
      {
        v26 = *(v0 + 200);
        v27 = *(v0 + 176);
        v28 = *(v0 + 184);
        v81 = *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
        (*(v28 + 32))(v26, v25, v27);
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v30 = *(v0 + 256);
        v29 = *(v0 + 264);
        v32 = *(v0 + 192);
        v31 = *(v0 + 200);
        v33 = *(v0 + 176);
        v34 = *(v0 + 184);
        v35 = sub_1B78000B8();
        __swift_project_value_buffer(v35, qword_1EDAF65B0);
        v78 = *(v34 + 16);
        v78(v32, v31, v33);
        sub_1B74822D8(v29, v30, type metadata accessor for BankConnectErrorWithConsent);
        v36 = sub_1B7800098();
        v37 = sub_1B78011F8();
        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 256);
        if (v38)
        {
          v76 = v37;
          v41 = *(v0 + 184);
          v40 = *(v0 + 192);
          v42 = *(v0 + 176);
          v43 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v82[0] = v75;
          *v43 = 136315650;
          sub_1B7389608(&qword_1EB991200, MEMORY[0x1E6969530]);
          v44 = sub_1B7802068();
          v72 = v39;
          log = v36;
          v46 = v45;
          v47 = *(v41 + 8);
          v47(v40, v42);
          v48 = v47;
          v49 = sub_1B71A3EF8(v44, v46, v82);

          *(v43 + 4) = v49;
          *(v43 + 12) = 512;
          *(v43 + 14) = v81;
          *(v43 + 16) = 2112;
          v50 = *(v10 + 20);
          sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
          swift_allocError();
          sub_1B74822D8(v72 + v50, v51, type metadata accessor for FinanceNetworkError);
          v52 = _swift_stdlib_bridgeErrorToNSError();
          sub_1B7482278(v72, type metadata accessor for BankConnectErrorWithConsent);
          *(v43 + 18) = v52;
          *v74 = v52;
          _os_log_impl(&dword_1B7198000, log, v76, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@.", v43, 0x1Au);
          sub_1B7205418(v74, &qword_1EB9910D0);
          MEMORY[0x1B8CA7A40](v74, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v75);
          MEMORY[0x1B8CA7A40](v75, -1, -1);
          MEMORY[0x1B8CA7A40](v43, -1, -1);
        }

        else
        {
          v62 = *(v0 + 184);
          v61 = *(v0 + 192);
          v63 = *(v0 + 176);

          sub_1B7482278(v39, type metadata accessor for BankConnectErrorWithConsent);
          v48 = *(v62 + 8);
          v48(v61, v63);
        }

        __swift_project_boxed_opaque_existential_1((*(v0 + 152) + 16), *(*(v0 + 152) + 40));
        isa = BankConnectDataLoaderEnvironment.makeBackgroundContext()().super.isa;
        *(swift_task_alloc() + 16) = isa;
        sub_1B7801468();
        v65 = *(v0 + 200);
        v66 = *(v0 + 176);
        v67 = *(v0 + 184);
        v77 = v48;
        v68 = *(v0 + 168);

        type metadata accessor for ManagedInstitution();
        v78(v68, v65, v66);
        (*(v67 + 56))(v68, 0, 1, v66);
        static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();

        sub_1B7205418(v68, &qword_1EB98EBD0);
        v77(v65, v66);
      }

      else
      {
        sub_1B7482278(*(v0 + 232), type metadata accessor for FinanceNetworkError);
      }

      v69 = *(v0 + 264);
      sub_1B77AE5D0(v7 + v80);
      sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      sub_1B74822D8(v7 + v80, v70, type metadata accessor for FinanceNetworkError);
      swift_willThrow();
      sub_1B7482278(v69, type metadata accessor for BankConnectErrorWithConsent);
    }

    else
    {
      v17 = *(v0 + 216);

      *(v0 + 64) = v1;
      v18 = v1;
      v19 = swift_dynamicCast();
      v20 = *(v17 + 56);
      if (v19)
      {
        v21 = *(v0 + 224);
        v22 = *(v0 + 160);
        v20(v22, 0, 1, *(v0 + 208));
        sub_1B74276E8(v22, v21, type metadata accessor for FinanceNetworkError);
        sub_1B77AE5D0(v21);
        sub_1B7482278(v21, type metadata accessor for FinanceNetworkError);
      }

      else
      {
        v23 = *(v0 + 160);
        v20(v23, 1, 1, *(v0 + 208));
        sub_1B7205418(v23, &qword_1EB992D88);
      }

      swift_willThrow();
    }

    v16 = *(v0 + 8);
  }

  else
  {
    sub_1B7482278(v5, type metadata accessor for BankConnectWebServiceAccountScheduledPaymentsRequest);

    sub_1B720A388(v4, v2);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1B74811E8()
{
  v85 = v0;
  sub_1B7482278(*(v0 + 288), type metadata accessor for BankConnectWebServiceAccountScheduledPaymentsRequest);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 328);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (!swift_dynamicCast())
  {
    v13 = *(v0 + 216);

    *(v0 + 64) = v1;
    v14 = v1;
    v15 = swift_dynamicCast();
    v16 = *(v13 + 56);
    if (v15)
    {
      v17 = *(v0 + 224);
      v18 = *(v0 + 160);
      v16(v18, 0, 1, *(v0 + 208));
      sub_1B74276E8(v18, v17, type metadata accessor for FinanceNetworkError);
      sub_1B77AE5D0(v17);
      sub_1B7482278(v17, type metadata accessor for FinanceNetworkError);
    }

    else
    {
      v19 = *(v0 + 160);
      v16(v19, 1, 1, *(v0 + 208));
      sub_1B7205418(v19, &qword_1EB992D88);
    }

    swift_willThrow();
    goto LABEL_23;
  }

  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v81 = v0;
  v7 = *(v0 + 144);

  sub_1B74276E8(v4, v3, type metadata accessor for BankConnectErrorWithConsent);
  v8 = v7[3];
  v83 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v79 = v5;
  v80 = v3;
  v9 = v3 + *(v5 + 20);
  v10 = *(v5 + 20);
  sub_1B74822D8(v9, v6, type metadata accessor for FinanceNetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B7482278(*(v0 + 240), type metadata accessor for FinanceNetworkError);
  }

  v12 = *(v0 + 264);
  LOBYTE(v84[0]) = EnumCaseMultiPayload == 7;
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v12, v84, v8, v83);
  v20 = v80;
  sub_1B74822D8(v80 + v10, *(v0 + 232), type metadata accessor for FinanceNetworkError);
  v21 = swift_getEnumCaseMultiPayload();
  v22 = *(v0 + 232);
  if (v21 == 1)
  {
    v52 = *v22;
    *(v0 + 72) = *v22;
    v53 = v52;
    if (swift_dynamicCast())
    {
      v78 = v10;
      v54 = *(v0 + 264);
      v55 = *(v0 + 136);
      v56 = v7[3];
      v57 = v7[4];
      __swift_project_boxed_opaque_existential_1(*(v0 + 144), v56);
      v59 = *v54;
      v58 = v54[1];
      v60 = *(v57 + 56);

      v60(v59, v58, v55, v56, v57);

      v20 = v80;
LABEL_21:
      v10 = v78;
      goto LABEL_22;
    }
  }

  else
  {
    if (v21 == 6)
    {
      v23 = *(v0 + 200);
      v24 = *(v0 + 176);
      v25 = *(v0 + 184);
      v26 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
      (*(v25 + 32))(v23, v22, v24);
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v78 = v10;
      v28 = *(v0 + 256);
      v27 = *(v0 + 264);
      v30 = *(v0 + 192);
      v29 = *(v0 + 200);
      v32 = *(v0 + 176);
      v31 = *(v0 + 184);
      v33 = sub_1B78000B8();
      __swift_project_value_buffer(v33, qword_1EDAF65B0);
      v77 = *(v31 + 16);
      v77(v30, v29, v32);
      sub_1B74822D8(v27, v28, type metadata accessor for BankConnectErrorWithConsent);
      v34 = sub_1B7800098();
      v35 = sub_1B78011F8();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 256);
      if (v36)
      {
        v73 = *(v0 + 256);
        v76 = v35;
        v39 = *(v0 + 184);
        v38 = *(v0 + 192);
        v40 = *(v0 + 176);
        v41 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v84[0] = v75;
        *v41 = 136315650;
        sub_1B7389608(&qword_1EB991200, MEMORY[0x1E6969530]);
        v42 = v26;
        v43 = sub_1B7802068();
        v45 = v44;
        v46 = *(v39 + 8);
        v46(v38, v40);
        v47 = v43;
        LOWORD(v43) = v42;
        v48 = sub_1B71A3EF8(v47, v45, v84);
        v20 = v80;
        v0 = v81;

        *(v41 + 4) = v48;
        *(v41 + 12) = 512;
        *(v41 + 14) = v43;
        *(v41 + 16) = 2112;
        v49 = *(v79 + 20);
        sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        sub_1B74822D8(v73 + v49, v50, type metadata accessor for FinanceNetworkError);
        v51 = _swift_stdlib_bridgeErrorToNSError();
        sub_1B7482278(v73, type metadata accessor for BankConnectErrorWithConsent);
        *(v41 + 18) = v51;
        *v74 = v51;
        _os_log_impl(&dword_1B7198000, v34, v76, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@.", v41, 0x1Au);
        sub_1B7205418(v74, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](v74, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x1B8CA7A40](v75, -1, -1);
        MEMORY[0x1B8CA7A40](v41, -1, -1);
      }

      else
      {
        v61 = *(v0 + 184);
        v62 = *(v0 + 192);
        v63 = *(v0 + 176);

        sub_1B7482278(v37, type metadata accessor for BankConnectErrorWithConsent);
        v46 = *(v61 + 8);
        v46(v62, v63);
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 152) + 16), *(*(v0 + 152) + 40));
      isa = BankConnectDataLoaderEnvironment.makeBackgroundContext()().super.isa;
      *(swift_task_alloc() + 16) = isa;
      sub_1B7801468();
      v65 = *(v0 + 200);
      v67 = *(v0 + 176);
      v66 = *(v0 + 184);
      v82 = v46;
      v68 = *(v0 + 168);

      type metadata accessor for ManagedInstitution();
      v77(v68, v65, v67);
      (*(v66 + 56))(v68, 0, 1, v67);
      static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();

      sub_1B7205418(v68, &qword_1EB98EBD0);
      v82(v65, v67);
      goto LABEL_21;
    }

    sub_1B7482278(*(v0 + 232), type metadata accessor for FinanceNetworkError);
  }

LABEL_22:
  v69 = *(v0 + 264);
  sub_1B77AE5D0(v20 + v10);
  sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
  swift_allocError();
  sub_1B74822D8(v20 + v10, v70, type metadata accessor for FinanceNetworkError);
  swift_willThrow();
  sub_1B7482278(v69, type metadata accessor for BankConnectErrorWithConsent);

LABEL_23:

  v71 = *(v0 + 8);

  return v71();
}

id sub_1B7481C30(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = [objc_opt_self() currentQueryGenerationToken];
  v33 = 0;
  v16 = [a1 setQueryGenerationFromToken:v15 error:&v33];

  v17 = v33;
  if (!v16)
  {
    v21 = v33;
    sub_1B77FF318();

    return swift_willThrow();
  }

  v31 = v6;
  v18 = a4;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995658) + 28);
  if (*(a2 + *(type metadata accessor for BankConnectResponseHeaders() + 20) + v19 + 2) == 1)
  {
    v20 = v17;
  }

  else
  {
    type metadata accessor for ManagedInstitution();
    v23 = sub_1B77FF988();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    v24 = v17;
    static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
    sub_1B7205418(v14, &qword_1EB98EBD0);
  }

  v25 = v31;
  v26 = v32;
  v27 = *a2;
  v33 = v32;
  v34 = v18;
  v35 = a5;
  v36 = a6;
  result = sub_1B753EE0C(v27, &v33, a1);
  if (!v25)
  {

    v28 = a2[1];
    v33 = v26;
    v34 = v18;
    v35 = a5;
    v36 = a6;
    sub_1B753F2A8(v28, &v33, a1);

    v33 = 0;
    if ([a1 save_])
    {
      return v33;
    }

    v29 = v33;
    sub_1B77FF318();

    return swift_willThrow();
  }

  return result;
}

uint64_t BankConnectScheduledPaymentsDataLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7481F38(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return BankConnectScheduledPaymentsDataLoader.loadScheduledPayments(for:userPresence:)(a1, a2);
}

uint64_t dispatch thunk of BankConnectScheduledPaymentsDataLoading.loadScheduledPayments(for:userPresence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B7482160(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B723838C;

  return sub_1B748026C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B7482278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B74822D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void ManagedECommerceOrderContent.thumbnailImageNames(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = MEMORY[0x1E69E7CC0];
  if ((~a1 & 0xF000000000000007) == 0)
  {
    v4 = ManagedECommerceOrderContent.fulfillments.getter();
    v5 = v4;
    v59 = *(v4 + 2);
    if (v59)
    {
      v55 = v2;
      v6 = 0;
      v57 = v4;
      v58 = v4 + 32;
      v3 = &selRef_generateIconFor_completionHandler_;
      while (1)
      {
        if (v6 >= *(v5 + 2))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v8 = *&v58[8 * v6];
        if ((v8 & 0x8000000000000000) != 0)
        {
          v10 = [v8 & 0x7FFFFFFFFFFFFFFFLL lineItemObjects];
          type metadata accessor for ManagedOrderLineItem();
          sub_1B7308800();
          v11 = sub_1B7800FA8();

          v64 = sub_1B7519CE0(v11);
          sub_1B74D29C8(&v64);

          v2 = v64;
          v5 = v57;
        }

        else
        {
          v9 = v8;
          v2 = ManagedOrderShippingFulfillment.lineItems.getter();
        }

        v61 = v8;
        if (v2 >> 62)
        {
          v12 = sub_1B7801958();
          v63 = v6;
          if (v12)
          {
LABEL_12:
            v6 = 0;
            v7 = MEMORY[0x1E69E7CC0];
            while (2)
            {
              v13 = v6;
              while (1)
              {
                if ((v2 & 0xC000000000000001) != 0)
                {
                  v14 = MEMORY[0x1B8CA5DC0](v13, v2);
                  v6 = v13 + 1;
                  if (__OFADD__(v13, 1))
                  {
                    goto LABEL_58;
                  }
                }

                else
                {
                  if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_59;
                  }

                  v14 = *(v2 + 8 * v13 + 32);
                  v6 = v13 + 1;
                  if (__OFADD__(v13, 1))
                  {
LABEL_58:
                    __break(1u);
LABEL_59:
                    __break(1u);
LABEL_60:
                    __break(1u);
LABEL_61:
                    __break(1u);
                    goto LABEL_62;
                  }
                }

                v15 = v14;
                v16 = [v15 image];
                if (v16)
                {
                  break;
                }

                ++v13;
                if (v6 == v12)
                {
                  goto LABEL_5;
                }
              }

              v17 = v16;
              v18 = sub_1B7800868();
              v60 = v19;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_1B723E180(0, *(v7 + 2) + 1, 1, v7);
              }

              v21 = *(v7 + 2);
              v20 = *(v7 + 3);
              if (v21 >= v20 >> 1)
              {
                v7 = sub_1B723E180((v20 > 1), v21 + 1, 1, v7);
              }

              *(v7 + 2) = v21 + 1;
              v22 = &v7[16 * v21];
              *(v22 + 4) = v18;
              *(v22 + 5) = v60;
              v5 = v57;
              if (v6 != v12)
              {
                continue;
              }

              goto LABEL_5;
            }
          }
        }

        else
        {
          v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v63 = v6;
          if (v12)
          {
            goto LABEL_12;
          }
        }

        v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
        v6 = v63 + 1;

        v2 = &v65;
        sub_1B724428C(v7);

        if (v63 + 1 == v59)
        {

          v24 = v65;
          goto LABEL_66;
        }
      }
    }

    v24 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

  v63 = a1;
  if (a1 < 0)
  {
    v30 = [a1 & 0x7FFFFFFFFFFFFFFFLL lineItemObjects];
    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v31 = sub_1B7800FA8();

    v64 = sub_1B7519CE0(v31);
    sub_1B74D29C8(&v64);

    v2 = v64;
  }

  else
  {
    v23 = a1;
    v2 = ManagedOrderShippingFulfillment.lineItems.getter();
  }

  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_63:
    v32 = sub_1B7801958();
    v55 = v3;
    if (v32)
    {
LABEL_40:
      v33 = 0;
      v24 = MEMORY[0x1E69E7CC0];
      v3 = &selRef_generateIconFor_completionHandler_;
      do
      {
        v34 = v33;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x1B8CA5DC0](v34, v2);
            v33 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (v34 >= *(v6 + 16))
            {
              goto LABEL_61;
            }

            v35 = *(v2 + 8 * v34 + 32);
            v33 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_60;
            }
          }

          v36 = v35;
          v37 = [v36 image];
          if (v37)
          {
            break;
          }

          ++v34;
          if (v33 == v32)
          {
            goto LABEL_65;
          }
        }

        v38 = v37;
        v39 = sub_1B7800868();
        v62 = v40;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1B723E180(0, *(v24 + 2) + 1, 1, v24);
        }

        v42 = *(v24 + 2);
        v41 = *(v24 + 3);
        if (v42 >= v41 >> 1)
        {
          v24 = sub_1B723E180((v41 > 1), v42 + 1, 1, v24);
        }

        *(v24 + 2) = v42 + 1;
        v43 = &v24[16 * v42];
        *(v43 + 4) = v39;
        *(v43 + 5) = v62;
      }

      while (v33 != v32);
      goto LABEL_65;
    }
  }

  else
  {
    v32 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v3;
    if (v32)
    {
      goto LABEL_40;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_65:

  sub_1B7483848(v63);
LABEL_66:
  v3 = v55;
  if (!*(v24 + 2))
  {
LABEL_35:

    v25 = [v3 merchant];
    v26 = [v25 logoName];

    if (v26)
    {
      v27 = sub_1B7800868();
      v29 = v28;

      *a2 = v27;
      *(a2 + 8) = v29;
      *(a2 + 16) = 0;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 2;
    }

    return;
  }

LABEL_67:
  sub_1B7240488(v24);

  v44 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v45 = sub_1B7800C18();

  v46 = [v44 initWithArray_];

  v47 = [v46 array];
  v48 = sub_1B7800C38();

  v49 = sub_1B72405B8(v48);

  v50 = [v3 merchant];
  v51 = [v50 logoName];

  if (v51)
  {
    v52 = sub_1B7800868();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  *a2 = v49;
  *(a2 + 8) = v52;
  *(a2 + 16) = v54;
  *(a2 + 24) = 0;
}

void *ManagedECommerceOrderContent.renderThumbnail(named:size:scale:options:with:)(__int128 *a1, uint64_t *a2, void *a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 2);
  v12 = *(a1 + 24);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
  v16 = *(a2 + 10);
  v17 = a2[2];
  v18 = *(a2 + 24);
  v23 = *a1;
  v24 = v11;
  v25 = v12;
  v19 = sub_1B748311C(&v23);
  if (!v6)
  {
    if (v19)
    {
      v21 = a3[3];
      v22 = a3[4];
      v26 = v19;
      __swift_project_boxed_opaque_existential_1(a3, v21);
      *&v23 = v13;
      BYTE8(v23) = v14;
      BYTE9(v23) = v15;
      BYTE10(v23) = v16;
      v24 = v17;
      v25 = v18;
      a3 = (*(v22 + 16))(v26, &v23, v21, v22, a4, a5, a6);
    }

    else
    {
      return 0;
    }
  }

  return a3;
}

uint64_t ManagedECommerceOrderContent.image(named:languages:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();

  sub_1B7358374(v7, a3, KeyPath);
  v10 = v9;

  if (v3)
  {
    return a3;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = sub_1B7801958();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0, v10);
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_7:
    a3 = v12;

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t ManagedECommerceOrderContent.images(named:languages:)(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7358374(a1, a2, KeyPath);
  v6 = v5;

  return v6;
}