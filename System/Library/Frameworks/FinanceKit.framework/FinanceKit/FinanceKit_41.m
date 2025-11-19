uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.appStoreIdentifier.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.industryCategory.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.industryCategory.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.industryCode.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

__n128 RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.location.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 112);
  result = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = result;
  return result;
}

__n128 RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.location.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = v2;
  *(v1 + 112) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = result;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantAdditionalData.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantAdditionalData.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCity.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCity.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCleanConfidenceLevel.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCountryCode.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantCountryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantIdentifier.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantName.getter()
{
  v1 = *(v0 + 200);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawCanl.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawCanl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawCity.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawCity.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawName.getter()
{
  v1 = *(v0 + 248);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawState.getter()
{
  v1 = *(v0 + 264);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantRawState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 264) = a1;
  *(v2 + 272) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantState.getter()
{
  v1 = *(v0 + 280);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantType.getter()
{
  v1 = *(v0 + 296);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantZip.getter()
{
  v1 = *(v0 + 312);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.merchantZip.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.paymentNetwork.getter()
{
  v1 = *(v0 + 328);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.paymentNetwork.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 328) = a1;
  *(v2 + 336) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.terminalIdentifier.getter()
{
  v1 = *(v0 + 344);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.terminalIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.webMerchantIdentifier.getter()
{
  v1 = *(v0 + 360);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.webMerchantIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.webMerchantName.getter()
{
  v1 = *(v0 + 376);

  return v1;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.webMerchantName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.init(appStoreIdentifier:industryCategory:industryCode:isCoarseLocation:location:merchantAdditionalData:merchantCity:merchantCleanConfidenceLevel:merchantCountryCode:merchantIdentifier:merchantName:merchantRawCanl:merchantRawCity:merchantRawName:merchantRawState:merchantState:merchantType:merchantZip:paymentNetwork:terminalIdentifier:webMerchantIdentifier:webMerchantName:webUrl:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  v37 = (a9 + 264);
  *(a9 + 112) = 256;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  v32 = *(type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0) + 104);
  v33 = sub_1B77FF4F8();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = a7;
  v34 = *(a8 + 48);
  *(a9 + 80) = *(a8 + 32);
  *(a9 + 96) = v34;
  *(a9 + 112) = *(a8 + 64);
  v35 = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = v35;
  *(a9 + 120) = a10;
  *(a9 + 136) = a11;
  *(a9 + 152) = a12;
  *(a9 + 160) = a13 & 1;
  *(a9 + 168) = a14;
  *(a9 + 184) = a15;
  *(a9 + 200) = a16;
  *(a9 + 216) = a17;
  *(a9 + 232) = a18;
  *(a9 + 248) = a19;
  *v37 = a20;
  *(a9 + 280) = a21;
  *(a9 + 296) = a22;
  *(a9 + 312) = a23;
  *(a9 + 328) = a24;
  *(a9 + 344) = a25;
  *(a9 + 360) = a26;
  *(a9 + 376) = a27;
  *(a9 + 384) = a28;
  return sub_1B7213740(a29, a9 + v32, &unk_1EB994C70);
}

unint64_t sub_1B757A9A8(char a1)
{
  result = 0x7972747375646E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 16:
    case 17:
      result = 0x746E61686372656DLL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x4E746E656D796170;
      break;
    case 20:
      result = 0xD000000000000015;
      break;
    case 21:
      result = 0x686372654D626577;
      break;
    case 22:
      result = 0x6C7255626577;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1B757AC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B758B1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B757AC34(uint64_t a1)
{
  v2 = sub_1B7586670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B757AC70(uint64_t a1)
{
  v2 = sub_1B7586670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997830);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7586670();
  sub_1B78023F8();
  LOBYTE(v13) = 0;
  sub_1B7801F28();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1B7801EF8();
    LOBYTE(v13) = 2;
    sub_1B7801F28();
    v18 = 3;
    sub_1B7801F08();
    v9 = *(v3 + 96);
    v15 = *(v3 + 80);
    v16 = v9;
    v17 = *(v3 + 112);
    v10 = *(v3 + 64);
    v13 = *(v3 + 48);
    v14 = v10;
    v12[15] = 4;
    sub_1B75866C4();
    sub_1B7801F38();
    LOBYTE(v13) = 5;
    sub_1B7801EF8();
    LOBYTE(v13) = 6;
    sub_1B7801EF8();
    LOBYTE(v13) = 7;
    sub_1B7801F28();
    LOBYTE(v13) = 8;
    sub_1B7801EF8();
    LOBYTE(v13) = 9;
    sub_1B7801EF8();
    LOBYTE(v13) = 10;
    sub_1B7801EF8();
    LOBYTE(v13) = 11;
    sub_1B7801EF8();
    LOBYTE(v13) = 12;
    sub_1B7801EF8();
    LOBYTE(v13) = 13;
    sub_1B7801EF8();
    LOBYTE(v13) = 14;
    sub_1B7801EF8();
    LOBYTE(v13) = 15;
    sub_1B7801EF8();
    LOBYTE(v13) = 16;
    sub_1B7801EF8();
    LOBYTE(v13) = 17;
    sub_1B7801EF8();
    LOBYTE(v13) = 18;
    sub_1B7801EF8();
    LOBYTE(v13) = 19;
    sub_1B7801EF8();
    LOBYTE(v13) = 20;
    sub_1B7801EF8();
    LOBYTE(v13) = 21;
    sub_1B7801EF8();
    type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
    LOBYTE(v13) = 22;
    sub_1B77FF4F8();
    sub_1B71A6A8C(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.hash(into:)()
{
  v1 = sub_1B77FF4F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  if (*(v0 + 8) == 1)
  {
    sub_1B7802318();
    if (v0[3])
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *v0;
    sub_1B7802318();
    MEMORY[0x1B8CA6620](v8);
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  sub_1B7802318();
LABEL_6:
  if (*(v0 + 40) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    v9 = v0[4];
    sub_1B7802318();
    MEMORY[0x1B8CA6620](v9);
  }

  if (*(v0 + 41) != 2)
  {
    sub_1B7802318();
  }

  sub_1B7802318();
  v10 = *(v0 + 6);
  v15[2] = *(v0 + 5);
  v15[3] = v10;
  v16 = *(v0 + 56);
  v11 = *(v0 + 4);
  v15[0] = *(v0 + 3);
  v15[1] = v11;
  sub_1B757D0EC();
  if (v0[16])
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v0[18])
    {
LABEL_13:
      sub_1B7802318();
      sub_1B7800798();
      goto LABEL_16;
    }
  }

  else
  {
    sub_1B7802318();
    if (v0[18])
    {
      goto LABEL_13;
    }
  }

  sub_1B7802318();
LABEL_16:
  if (*(v0 + 160) == 1)
  {
    sub_1B7802318();
    if (v0[22])
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = v0[19];
    sub_1B7802318();
    MEMORY[0x1B8CA6620](v12);
    if (v0[22])
    {
LABEL_18:
      sub_1B7802318();
      sub_1B7800798();
      if (v0[24])
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  sub_1B7802318();
  if (v0[24])
  {
LABEL_19:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[26])
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_1B7802318();
  if (v0[26])
  {
LABEL_20:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[28])
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  sub_1B7802318();
  if (v0[28])
  {
LABEL_21:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[30])
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  sub_1B7802318();
  if (v0[30])
  {
LABEL_22:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[32])
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  sub_1B7802318();
  if (v0[32])
  {
LABEL_23:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[34])
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  sub_1B7802318();
  if (v0[34])
  {
LABEL_24:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[36])
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_39:
  sub_1B7802318();
  if (v0[36])
  {
LABEL_25:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[38])
    {
      goto LABEL_26;
    }

    goto LABEL_41;
  }

LABEL_40:
  sub_1B7802318();
  if (v0[38])
  {
LABEL_26:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[40])
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

LABEL_41:
  sub_1B7802318();
  if (v0[40])
  {
LABEL_27:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[42])
    {
      goto LABEL_28;
    }

    goto LABEL_43;
  }

LABEL_42:
  sub_1B7802318();
  if (v0[42])
  {
LABEL_28:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[44])
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_43:
  sub_1B7802318();
  if (v0[44])
  {
LABEL_29:
    sub_1B7802318();
    sub_1B7800798();
    if (v0[46])
    {
      goto LABEL_30;
    }

LABEL_45:
    sub_1B7802318();
    if (v0[48])
    {
      goto LABEL_31;
    }

    goto LABEL_46;
  }

LABEL_44:
  sub_1B7802318();
  if (!v0[46])
  {
    goto LABEL_45;
  }

LABEL_30:
  sub_1B7802318();
  sub_1B7800798();
  if (v0[48])
  {
LABEL_31:
    sub_1B7802318();
    sub_1B7800798();
    goto LABEL_47;
  }

LABEL_46:
  sub_1B7802318();
LABEL_47:
  v13 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  sub_1B7205588(v0 + *(v13 + 104), v7, &unk_1EB994C70);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_1B7802318();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_1B7802318();
  sub_1B71A6A8C(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
  sub_1B7800768();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1B757B8BC(void (*a1)(_BYTE *))
{
  sub_1B78022F8();
  a1(v3);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997848);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v42 - v6;
  v8 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 0;
  v11[8] = 1;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 2) = 0;
  *(v11 + 20) = 513;
  *(v11 + 3) = 0u;
  v56 = 1;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 6) = 0u;
  *(v11 + 56) = 256;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 19) = 0;
  v11[160] = 1;
  *(v11 + 248) = 0u;
  *(v11 + 232) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 184) = 0u;
  *(v11 + 168) = 0u;
  *(v11 + 360) = 0u;
  *(v11 + 376) = 0u;
  *(v11 + 328) = 0u;
  *(v11 + 344) = 0u;
  *(v11 + 296) = 0u;
  *(v11 + 312) = 0u;
  *(v11 + 264) = 0u;
  *(v11 + 280) = 0u;
  v12 = *(v9 + 112);
  v13 = sub_1B77FF4F8();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B7586670();
  v45 = v7;
  v15 = v47;
  sub_1B78023C8();
  if (!v15)
  {
    v47 = v5;
    v16 = v44;
    LOBYTE(v49) = 0;
    *v11 = sub_1B7801DA8();
    v11[8] = v17 & 1;
    LOBYTE(v49) = 1;
    *(v11 + 2) = sub_1B7801D78();
    *(v11 + 3) = v18;
    LOBYTE(v49) = 2;
    *(v11 + 4) = sub_1B7801DA8();
    v11[40] = v20 & 1;
    LOBYTE(v49) = 3;
    v11[41] = sub_1B7801D88();
    v55 = 4;
    sub_1B7586718();
    sub_1B7801DB8();
    v21 = v52;
    *(v11 + 5) = v51;
    *(v11 + 6) = v21;
    *(v11 + 56) = v53;
    v22 = v50;
    *(v11 + 3) = v49;
    *(v11 + 4) = v22;
    v54 = 5;
    *(v11 + 15) = sub_1B7801D78();
    *(v11 + 16) = v23;
    v54 = 6;
    *(v11 + 17) = sub_1B7801D78();
    *(v11 + 18) = v24;
    v54 = 7;
    *(v11 + 19) = sub_1B7801DA8();
    v11[160] = v25 & 1;
    v54 = 8;
    *(v11 + 21) = sub_1B7801D78();
    *(v11 + 22) = v26;
    v54 = 9;
    *(v11 + 23) = sub_1B7801D78();
    *(v11 + 24) = v27;
    v54 = 10;
    *(v11 + 25) = sub_1B7801D78();
    *(v11 + 26) = v28;
    v54 = 11;
    *(v11 + 27) = sub_1B7801D78();
    *(v11 + 28) = v29;
    v54 = 12;
    *(v11 + 29) = sub_1B7801D78();
    *(v11 + 30) = v30;
    v54 = 13;
    *(v11 + 31) = sub_1B7801D78();
    *(v11 + 32) = v31;
    v54 = 14;
    *(v11 + 33) = sub_1B7801D78();
    *(v11 + 34) = v32;
    v54 = 15;
    *(v11 + 35) = sub_1B7801D78();
    *(v11 + 36) = v33;
    v54 = 16;
    *(v11 + 37) = sub_1B7801D78();
    *(v11 + 38) = v34;
    v54 = 17;
    *(v11 + 39) = sub_1B7801D78();
    *(v11 + 40) = v35;
    v54 = 18;
    *(v11 + 41) = sub_1B7801D78();
    *(v11 + 42) = v36;
    v54 = 19;
    *(v11 + 43) = sub_1B7801D78();
    *(v11 + 44) = v37;
    v54 = 20;
    *(v11 + 45) = sub_1B7801D78();
    *(v11 + 46) = v38;
    v54 = 21;
    *(v11 + 47) = sub_1B7801D78();
    *(v11 + 48) = v39;
    v54 = 22;
    sub_1B71A6A8C(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    v40 = v46;
    v41 = v45;
    sub_1B7801DB8();
    (*(v16 + 8))(v41, v40);
    sub_1B7213740(v47, &v11[v12], &unk_1EB994C70);
    sub_1B75655B0(v11, v43, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1B757E3BC(v11, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
}

uint64_t sub_1B757C030(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1B78022F8();
  a3(v5);
  return sub_1B7802368();
}

uint64_t sub_1B757C094(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1B78022F8();
  a4(v6);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.DeviceLocation.altitude.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 RawBankConnectData.DeviceLocation.geographicCoordinates.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 RawBankConnectData.DeviceLocation.geographicCoordinates.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t RawBankConnectData.DeviceLocation.horizontalAccuracy.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t RawBankConnectData.DeviceLocation.verticalAccuracy.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

__n128 RawBankConnectData.DeviceLocation.init(altitude:geographicCoordinates:horizontalAccuracy:verticalAccuracy:)@<Q0>(unint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, char a7@<W6>, __n128 *a8@<X8>)
{
  v9 = a3[1].n128_u8[0];
  a8->n128_u64[0] = a1;
  a8->n128_u8[8] = a2 & 1;
  result = *a3;
  a8[1] = *a3;
  a8[2].n128_u8[0] = v9;
  a8[2].n128_u64[1] = a4;
  a8[3].n128_u8[0] = a5 & 1;
  a8[3].n128_u64[1] = a6;
  a8[4].n128_u8[0] = a7 & 1;
  return result;
}

unint64_t sub_1B757C228()
{
  v1 = 0x6564757469746C61;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1B757C2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B758B9A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B757C2DC(uint64_t a1)
{
  v2 = sub_1B758676C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B757C318(uint64_t a1)
{
  v2 = sub_1B758676C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.DeviceLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997858);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v20 = *(v1 + 32);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v11 = *(v1 + 56);
  v10[1] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758676C();
  sub_1B78023F8();
  LOBYTE(v17) = 0;
  v8 = v16;
  sub_1B7801F18();
  if (!v8)
  {
    v17 = v15;
    v18 = v14;
    v19 = v20;
    v21 = 1;
    sub_1B7584410();
    sub_1B7801F38();
    LOBYTE(v17) = 2;
    sub_1B7801F18();
    LOBYTE(v17) = 3;
    sub_1B7801F18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.DeviceLocation.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0 + 32);
  v4 = v0[5];
  v5 = *(v0 + 48);
  v6 = v0[7];
  v7 = *(v0 + 64);
  if (*(v0 + 8) == 1)
  {
    sub_1B7802318();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    sub_1B7802318();
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  v13 = *v0;
  sub_1B7802318();
  if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1B8CA6660](v14);
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  sub_1B7802318();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1B8CA6660](v8);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1B8CA6660](v9);
  if (!v5)
  {
LABEL_10:
    sub_1B7802318();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1B8CA6660](v10);
    if (!v7)
    {
      goto LABEL_14;
    }

    return sub_1B7802318();
  }

LABEL_23:
  sub_1B7802318();
  if (v7)
  {
    return sub_1B7802318();
  }

LABEL_14:
  sub_1B7802318();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1B8CA6660](v11);
}

uint64_t RawBankConnectData.DeviceLocation.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.DeviceLocation.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.DeviceLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997868);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758676C();
  sub_1B78023C8();
  if (!v2)
  {
    LOBYTE(v25) = 0;
    v24 = sub_1B7801D98();
    v31 = v9 & 1;
    v32 = 1;
    sub_1B75844B8();
    sub_1B7801DB8();
    v11 = v25;
    v10 = v26;
    v30 = v27;
    LOBYTE(v25) = 2;
    v12 = sub_1B7801D98();
    v21 = v11;
    v22 = v10;
    v23 = v12;
    v29 = v13 & 1;
    LOBYTE(v25) = 3;
    v15 = sub_1B7801D98();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v28 = v17 & 1;
    v18 = v31;
    v19 = v30;
    v20 = v29;
    *a2 = v24;
    *(a2 + 8) = v18;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = v19;
    *(a2 + 40) = v23;
    *(a2 + 48) = v20;
    *(a2 + 56) = v15;
    *(a2 + 64) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B757C968()
{
  sub_1B78022F8();
  RawBankConnectData.DeviceLocation.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B757C9AC()
{
  sub_1B78022F8();
  RawBankConnectData.DeviceLocation.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B757CA7C()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1B757CABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
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

uint64_t sub_1B757CBA0(uint64_t a1)
{
  v2 = sub_1B75867C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B757CBDC(uint64_t a1)
{
  v2 = sub_1B75867C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.GeographicCoordinates.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997870);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75867C0();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F98();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B7801F98();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.GeographicCoordinates.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1B8CA6660](*&v3);
}

uint64_t RawBankConnectData.GeographicCoordinates.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B78022F8();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1B8CA6660](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1B8CA6660](*&v4);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.GeographicCoordinates.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75867C0();
  sub_1B78023C8();
  if (!v2)
  {
    v16 = 0;
    sub_1B7801E18();
    v10 = v9;
    v15 = 1;
    sub_1B7801E18();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B757D078()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B78022F8();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1B8CA6660](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1B8CA6660](*&v4);
  return sub_1B7802368();
}

uint64_t sub_1B757D0EC()
{
  if (*(v0 + 65))
  {
    return sub_1B7802318();
  }

  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v5 = v0[7];
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 8);
  sub_1B7802318();
  if (v9)
  {
    sub_1B7802318();
    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    sub_1B7802318();
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  sub_1B7802318();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v1;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1B8CA6660](v15);
  if (v8)
  {
    goto LABEL_23;
  }

LABEL_4:
  sub_1B7802318();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1B8CA6660](v10);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1B8CA6660](v11);
  if ((v7 & 1) == 0)
  {
LABEL_11:
    sub_1B7802318();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B8CA6660](v12);
    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }

    return sub_1B7802318();
  }

LABEL_24:
  sub_1B7802318();
  if (v6)
  {
    return sub_1B7802318();
  }

LABEL_15:
  sub_1B7802318();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return MEMORY[0x1B8CA6660](v13);
}

uint64_t _s10FinanceKit18RawBankConnectDataO14DeviceLocationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 32) & 1) != 0 || v3 != *(a2 + 16) || v2 != *(a2 + 24))
    {
      return result;
    }
  }

  if (v5)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 40))
    {
      v10 = *(a2 + 48);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v7)
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 56))
    {
      v11 = *(a2 + 64);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31ClassificationBAAIdentificationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v13 = a1[6];
  v14 = a1[5];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((sub_1B731D168(*a1, *a2) & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1B78020F8() & 1) == 0 || (v3 != v8 || v5 != v10) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v14 == v9 && v13 == v11)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV06WalletG8CategoryV2eeoiySbAG_AGtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 1397768525;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v4)
  {
    v6 = 0x80000001B7874540;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (*a2)
  {
    v7 = 1397768525;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x80000001B7874540;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1B78020F8();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(v2);
  v14 = v13;
  if (v12 == RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(v3) && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13FailedOutcomeV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E98);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0) + 20);
  v15 = *(v11 + 48);
  sub_1B75655B0(a1 + v14, v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  sub_1B75655B0(a2 + v14, &v13[v15], type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v13, 1, v16) == 1)
  {
    if (v17(&v13[v15], 1, v16) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  sub_1B75655B0(v13, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  if (v17(&v13[v15], 1, v16) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1B7205418(v13, &qword_1EB997E98);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  v19 = sub_1B77FF918();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  if ((v19 & 1) == 0)
  {
    sub_1B757E3BC(v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    return 0;
  }

LABEL_10:
  sub_1B757E3BC(v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV15StyleAttributesV2eeoiySbAI_AItFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (*(result + 16))
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 8) == *(a2 + 8))
      {
        v9 = *(a2 + 16);
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = v2 + 2;
  v7 = v3 + 2;
  while (v4)
  {
    v8 = vmovn_s64(vceqq_s64(*v6, *v7));
    if ((v8.i32[0] & v8.i32[1] & 1) == 0)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v8)
    {
      v18 = *(a1 + 24);
      v14 = sub_1B78020F8();
      v6 = v18;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v6)
  {
    v21 = v6;
    v22 = v7;
    if (v11)
    {
      v19[0] = v11;
      v19[1] = v12;
      v20 = v13 & 1;
      v16 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV15StyleAttributesV2eeoiySbAI_AItFZ_0(&v21, v19);
      swift_bridgeObjectRetain_n();

      return (v16 & 1) != 0;
    }

    goto LABEL_20;
  }

  if (v11)
  {
LABEL_20:

    return 0;
  }

  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17RetryInstructionsO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E98);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B75655B0(a1, &v21 - v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  sub_1B75655B0(a2, &v14[v15], type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) != 1)
  {
    sub_1B75655B0(v14, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    if (v17(&v14[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_1B77FF918();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B757E3BC(v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_1B7205418(v14, &qword_1EB997E98);
    v18 = 0;
    return v18 & 1;
  }

  sub_1B757E3BC(v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV19EntityPostalAddressV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v103 = a1[12];
  v107 = a1[13];
  v14 = a1[14];
  v106 = a1[15];
  v15 = a2[1];
  v16 = a2[2];
  v18 = a2[3];
  v17 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v25 = a2[11];
  v104 = a2[12];
  v26 = a2[13];
  v102 = a2[14];
  v105 = a2[15];
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v95 = a2[7];
      v98 = a2[8];
      v79 = a1[11];
      v80 = a2[13];
      v77 = a2[2];
      v78 = a1[2];
      v27 = a1[14];
      v84 = a2[5];
      v86 = a1[4];
      v28 = a1[10];
      v90 = a1[6];
      v92 = a2[6];
      v29 = a2[11];
      v30 = a2[10];
      v88 = a1[5];
      v31 = a1[8];
      v32 = a1[9];
      v82 = a2[4];
      v33 = a2[9];
      v34 = a1[7];
      v35 = sub_1B78020F8();
      v22 = v95;
      v21 = v98;
      v9 = v34;
      v24 = v33;
      v12 = v32;
      v5 = v86;
      v10 = v31;
      v8 = v88;
      v7 = v90;
      v23 = v30;
      v4 = v78;
      v13 = v79;
      v25 = v29;
      v19 = v92;
      v11 = v28;
      v17 = v82;
      v20 = v84;
      v14 = v27;
      v16 = v77;
      v26 = v80;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v4 != v16 || v6 != v18)
    {
      v96 = v22;
      v99 = v21;
      v36 = v14;
      v83 = v17;
      v85 = v20;
      v37 = v11;
      v38 = v13;
      v39 = v25;
      v40 = v23;
      v87 = v5;
      v89 = v8;
      v41 = v10;
      v42 = v12;
      v43 = v24;
      v91 = v7;
      v93 = v19;
      v44 = v9;
      v45 = sub_1B78020F8();
      v9 = v44;
      v19 = v93;
      v22 = v96;
      v21 = v99;
      v24 = v43;
      v12 = v42;
      v20 = v85;
      v5 = v87;
      v10 = v41;
      v8 = v89;
      v7 = v91;
      v23 = v40;
      v25 = v39;
      v13 = v38;
      v11 = v37;
      v17 = v83;
      v14 = v36;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v5 != v17 || v8 != v20)
    {
      v97 = v22;
      v100 = v21;
      v81 = v26;
      v94 = v19;
      v46 = v14;
      v47 = v11;
      v48 = v13;
      v49 = v25;
      v50 = v23;
      v51 = v10;
      v52 = v12;
      v53 = v24;
      v54 = v7;
      v55 = v9;
      v56 = sub_1B78020F8();
      v22 = v97;
      v21 = v100;
      v9 = v55;
      v7 = v54;
      v24 = v53;
      v12 = v52;
      v10 = v51;
      v23 = v50;
      v25 = v49;
      v13 = v48;
      v11 = v47;
      v14 = v46;
      v19 = v94;
      v26 = v81;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v19 || v9 != v22)
    {
      v101 = v21;
      v57 = v14;
      v58 = v11;
      v59 = v13;
      v60 = v25;
      v61 = v23;
      v62 = v10;
      v63 = v12;
      v64 = v24;
      v65 = sub_1B78020F8();
      v21 = v101;
      v24 = v64;
      v12 = v63;
      v10 = v62;
      v23 = v61;
      v25 = v60;
      v13 = v59;
      v11 = v58;
      v14 = v57;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v24)
    {
      v66 = v14;
      v67 = v11;
      v68 = v13;
      v69 = v25;
      v70 = v23;
      v71 = sub_1B78020F8();
      v23 = v70;
      v25 = v69;
      v13 = v68;
      v11 = v67;
      v14 = v66;
      if ((v71 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }

    if (v11 != v23 || v13 != v25)
    {
      v72 = v14;
      v73 = sub_1B78020F8();
      v14 = v72;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v107)
  {
    if (!v26)
    {
      return 0;
    }

    if (v103 != v104 || v107 != v26)
    {
      v74 = v14;
      v75 = sub_1B78020F8();
      v14 = v74;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v106)
  {
    if (v105 && (v14 == v102 && v106 == v105 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v105)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV20VendorCategorisationV2eeoiySbAG_AGtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 1397768525;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v4)
  {
    v6 = 0x80000001B7874540;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (*a2)
  {
    v7 = 1397768525;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x80000001B7874540;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1B78020F8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1B72C18A8(v2, v3);
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      if (*v6 == *v8 && v7 == v9)
      {
        goto LABEL_9;
      }

      v11 = v4;
      v12 = sub_1B78020F8();
      v4 = v11;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_9:
  v13 = *(v4 + 24);

  return _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV7OutcomeO2eeoiySbAG_AGtFZ_0(a1 + v13, a2 + v13);
}

unint64_t sub_1B757E368()
{
  result = qword_1EB997310;
  if (!qword_1EB997310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997310);
  }

  return result;
}

uint64_t sub_1B757E3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B757E47C()
{
  result = qword_1EB997330;
  if (!qword_1EB997330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997330);
  }

  return result;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV8MerchantV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v126 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v122 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v123 = &v119 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v119 - v8;
  v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v130 = *(v9 - 8);
  v131 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v128 = &v119 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EA8);
  MEMORY[0x1EEE9AC00](v129);
  v132 = &v119 - v13;
  v14 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v119 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EB0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v119 - v22;
  v24 = *a1;
  v25 = a1[1];
  v133 = a1;
  v134 = a2;
  if ((v24 != *a2 || v25 != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_27;
  }

  v26 = v133[3];
  v27 = v134[3];
  if (v26)
  {
    if (!v27 || (v133[2] != v134[2] || v26 != v27) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v27)
  {
LABEL_27:
    v35 = 0;
    return v35 & 1;
  }

  v28 = v133[5];
  v29 = v134[5];
  if (!v28)
  {
    if (!v29)
    {

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v29)
  {
LABEL_18:

    goto LABEL_27;
  }

  if ((v133[4] != v134[4] || v28 != v29) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v120 = v4;
  v121 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v30 = v121[7];
  v31 = *(v21 + 48);
  sub_1B7205588(v133 + v30, v23, &qword_1EB997490);
  sub_1B7205588(v134 + v30, &v23[v31], &qword_1EB997490);
  v32 = *(v15 + 48);
  if (v32(v23, 1, v14) == 1)
  {
    if (v32(&v23[v31], 1, v14) == 1)
    {
      sub_1B7205418(v23, &qword_1EB997490);
      goto LABEL_30;
    }

LABEL_25:
    v33 = &qword_1EB997EB0;
    v34 = v23;
    goto LABEL_26;
  }

  sub_1B7205588(v23, v20, &qword_1EB997490);
  if (v32(&v23[v31], 1, v14) == 1)
  {
    sub_1B757E3BC(v20, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    goto LABEL_25;
  }

  sub_1B7565394(&v23[v31], v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  v37 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV20EntityContactDetailsV2eeoiySbAG_AGtFZ_0(v20, v17);
  sub_1B757E3BC(v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  sub_1B757E3BC(v20, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  sub_1B7205418(v23, &qword_1EB997490);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  v38 = v121[8];
  v39 = (v133 + v38);
  v40 = *(v133 + v38 + 16);
  v41 = (v134 + v38);
  if (v40)
  {
    if (!*(v41 + 16))
    {
      goto LABEL_27;
    }

LABEL_36:
    v42 = v121[9];
    v43 = *(v129 + 48);
    v44 = v132;
    sub_1B7205588(v133 + v42, v132, &qword_1EB997498);
    v45 = v134 + v42;
    v46 = v44;
    sub_1B7205588(v45, v44 + v43, &qword_1EB997498);
    v47 = v131;
    v48 = *(v130 + 48);
    if (v48(v44, 1, v131) == 1)
    {
      if (v48(v44 + v43, 1, v47) == 1)
      {
        sub_1B7205418(v44, &qword_1EB997498);
        goto LABEL_43;
      }
    }

    else
    {
      v49 = v128;
      sub_1B7205588(v46, v128, &qword_1EB997498);
      if (v48(v46 + v43, 1, v47) != 1)
      {
        v50 = v127;
        sub_1B7565394(v46 + v43, v127, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
        v51 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13EntityImageryV2eeoiySbAG_AGtFZ_0(v49, v50);
        sub_1B757E3BC(v50, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
        sub_1B757E3BC(v49, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
        sub_1B7205418(v46, &qword_1EB997498);
        if (!v51)
        {
          goto LABEL_27;
        }

LABEL_43:
        v52 = v121[10];
        v54 = *(v133 + v52);
        v53 = *(v133 + v52 + 8);
        v56 = *(v133 + v52 + 16);
        v55 = *(v133 + v52 + 24);
        v57 = *(v133 + v52 + 32);
        v58 = *(v133 + v52 + 40);
        v59 = v134 + v52;
        v60 = *v59;
        v61 = *(v59 + 1);
        v62 = *(v59 + 2);
        v63 = *(v59 + 3);
        v64 = *(v59 + 4);
        v65 = v59[40];
        if (v53 == 1)
        {
          v130 = *v59;
          v131 = v63;
          v132 = v64;
          sub_1B75840E8(v54, 1);
          if (v61 == 1)
          {
            sub_1B75840E8(v130, 1);
            sub_1B7531560(v54, 1);
LABEL_51:
            v70 = v121;
            v71 = (v133 + v121[11]);
            v72 = v71[3];
            v73 = v71[5];
            v196 = v71[4];
            v197 = v73;
            v74 = v71[5];
            v75 = v71[7];
            v198 = v71[6];
            v199 = v75;
            v76 = v71[1];
            v77 = v71[3];
            v194 = v71[2];
            v195 = v77;
            v78 = v71[1];
            v193[0] = *v71;
            v193[1] = v78;
            v79 = (v134 + v121[11]);
            v81 = v79[1];
            v80 = v79[2];
            v82 = v80;
            v200[3] = v79[3];
            v200[2] = v80;
            v84 = v79[5];
            v83 = v79[6];
            v85 = v83;
            v200[7] = v79[7];
            v200[6] = v83;
            v87 = v79[3];
            v86 = v79[4];
            v88 = v86;
            v200[5] = v79[5];
            v200[4] = v86;
            v89 = *v79;
            v90 = *v79;
            v200[1] = v79[1];
            v200[0] = v89;
            v91 = v71[5];
            v181 = v71[4];
            v182 = v91;
            v92 = v71[7];
            v183 = v71[6];
            v184 = v92;
            v93 = v71[1];
            v177 = *v71;
            v178 = v93;
            v94 = v71[3];
            v179 = v71[2];
            v180 = v94;
            v188 = v87;
            v187 = v82;
            v186 = v81;
            v185 = v90;
            v192 = v79[7];
            v191 = v85;
            v190 = v84;
            v189 = v88;
            v201[2] = v194;
            v201[3] = v72;
            v201[0] = v193[0];
            v201[1] = v76;
            v95 = v71[7];
            v201[6] = v198;
            v201[7] = v95;
            v201[4] = v196;
            v201[5] = v74;
            if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v201) == 1)
            {
              v157 = v189;
              v158 = v190;
              v159 = v191;
              v160 = v192;
              v153 = v185;
              v154 = v186;
              v155 = v187;
              v156 = v188;
              enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0 = get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v153);
              v97 = v120;
              if (enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0 == 1)
              {
                v173 = v181;
                v174 = v182;
                v175 = v183;
                v176 = v184;
                v169 = v177;
                v170 = v178;
                v171 = v179;
                v172 = v180;
                sub_1B7205588(v193, &v145, &qword_1EB997508);
                sub_1B7205588(v200, &v145, &qword_1EB997508);
                sub_1B7205418(&v169, &qword_1EB997508);
LABEL_59:
                v100 = v70[12];
                v101 = *(v133 + v100);
                v102 = *(v133 + v100 + 1);
                v103 = v134 + v100;
                v104 = v103[1];
                if (v101)
                {
                  v105 = 1397768525;
                }

                else
                {
                  v105 = 0xD000000000000019;
                }

                if (v101)
                {
                  v106 = 0xE400000000000000;
                }

                else
                {
                  v106 = 0x80000001B7874540;
                }

                if (*v103)
                {
                  v107 = 1397768525;
                }

                else
                {
                  v107 = 0xD000000000000019;
                }

                if (*v103)
                {
                  v108 = 0xE400000000000000;
                }

                else
                {
                  v108 = 0x80000001B7874540;
                }

                if (v105 == v107 && v106 == v108)
                {
                }

                else
                {
                  v109 = sub_1B78020F8();

                  if ((v109 & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                if ((sub_1B72C18A8(v102, v104) & 1) == 0)
                {
                  goto LABEL_27;
                }

                v110 = v121[13];
                v111 = v125;
                v112 = *(v124 + 48);
                sub_1B7205588(v133 + v110, v125, &unk_1EB994C70);
                sub_1B7205588(v134 + v110, v111 + v112, &unk_1EB994C70);
                v113 = *(v126 + 48);
                if (v113(v111, 1, v97) == 1)
                {
                  if (v113(v111 + v112, 1, v97) == 1)
                  {
                    sub_1B7205418(v111, &unk_1EB994C70);
                    v35 = 1;
                    return v35 & 1;
                  }
                }

                else
                {
                  v114 = v123;
                  sub_1B7205588(v111, v123, &unk_1EB994C70);
                  if (v113(v111 + v112, 1, v97) != 1)
                  {
                    v115 = v126;
                    v116 = v111 + v112;
                    v117 = v122;
                    (*(v126 + 32))(v122, v116, v97);
                    sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0]);
                    v35 = sub_1B7800828();
                    v118 = *(v115 + 8);
                    v118(v117, v97);
                    v118(v114, v97);
                    sub_1B7205418(v111, &unk_1EB994C70);
                    return v35 & 1;
                  }

                  (*(v126 + 8))(v114, v97);
                }

                v33 = &qword_1EB991C30;
                v34 = v111;
                goto LABEL_26;
              }

              sub_1B7205588(v193, &v169, &qword_1EB997508);
              sub_1B7205588(v200, &v169, &qword_1EB997508);
            }

            else
            {
              v173 = v181;
              v174 = v182;
              v175 = v183;
              v176 = v184;
              v169 = v177;
              v170 = v178;
              v171 = v179;
              v172 = v180;
              v147 = v179;
              v148 = v180;
              v145 = v177;
              v146 = v178;
              v151 = v183;
              v152 = v184;
              v149 = v181;
              v150 = v182;
              v155 = v187;
              v156 = v188;
              v153 = v185;
              v154 = v186;
              v159 = v191;
              v160 = v192;
              v157 = v189;
              v158 = v190;
              v98 = get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v153);
              v97 = v120;
              if (v98 != 1)
              {
                v141 = v189;
                v142 = v190;
                v143 = v191;
                v144 = v192;
                v137 = v185;
                v138 = v186;
                v139 = v187;
                v140 = v188;
                v99 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV19EntityPostalAddressV2eeoiySbAG_AGtFZ_0(&v145, &v137);
                v135[4] = v141;
                v135[5] = v142;
                v135[6] = v143;
                v135[7] = v144;
                v135[0] = v137;
                v135[1] = v138;
                v135[2] = v139;
                v135[3] = v140;
                sub_1B7205588(v193, v136, &qword_1EB997508);
                sub_1B7205588(v200, v136, &qword_1EB997508);
                sub_1B7205588(&v169, v136, &qword_1EB997508);
                sub_1B745E86C(v135);
                v136[4] = v149;
                v136[5] = v150;
                v136[6] = v151;
                v136[7] = v152;
                v136[0] = v145;
                v136[1] = v146;
                v136[2] = v147;
                v136[3] = v148;
                sub_1B745E86C(v136);
                v141 = v181;
                v142 = v182;
                v143 = v183;
                v144 = v184;
                v137 = v177;
                v138 = v178;
                v139 = v179;
                v140 = v180;
                v70 = v121;
                sub_1B7205418(&v137, &qword_1EB997508);
                if ((v99 & 1) == 0)
                {
                  goto LABEL_27;
                }

                goto LABEL_59;
              }

              v141 = v181;
              v142 = v182;
              v143 = v183;
              v144 = v184;
              v137 = v177;
              v138 = v178;
              v139 = v179;
              v140 = v180;
              sub_1B7205588(v193, v136, &qword_1EB997508);
              sub_1B7205588(v200, v136, &qword_1EB997508);
              sub_1B7205588(&v169, v136, &qword_1EB997508);
              sub_1B745E86C(&v137);
            }

            v165 = v189;
            v166 = v190;
            v167 = v191;
            v168 = v192;
            v161 = v185;
            v162 = v186;
            v163 = v187;
            v164 = v188;
            v157 = v181;
            v158 = v182;
            v159 = v183;
            v160 = v184;
            v153 = v177;
            v154 = v178;
            v155 = v179;
            v156 = v180;
            v33 = &unk_1EB997EB8;
            v34 = &v153;
LABEL_26:
            sub_1B7205418(v34, v33);
            goto LABEL_27;
          }

          sub_1B75840E8(v130, v61);
        }

        else
        {
          *&v177 = v54;
          *(&v177 + 1) = v53;
          *&v178 = v56;
          *(&v178 + 1) = v55;
          *&v179 = v57;
          BYTE8(v179) = v58;
          if (v61 != 1)
          {
            *&v153 = v60;
            *(&v153 + 1) = v61;
            LODWORD(v154) = v62;
            BYTE4(v154) = BYTE4(v62) & 1;
            *(&v154 + 1) = v63;
            *&v155 = v64;
            BYTE8(v155) = v65;
            v66 = v54;
            v127 = v54;
            v128 = v57;
            v67 = v60;
            v129 = v56;
            sub_1B75840E8(v66, v53);
            sub_1B75840E8(v67, v61);
            v68 = v127;
            sub_1B75840E8(v127, v53);
            v69 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV2eeoiySbAG_AGtFZ_0(&v177, &v153);

            sub_1B7531560(v68, v53);
            if (!v69)
            {
              goto LABEL_27;
            }

            goto LABEL_51;
          }

          v130 = v60;
          v131 = v63;
          v132 = v64;
          sub_1B75840E8(v54, v53);
          sub_1B75840E8(v130, 1);
          sub_1B75840E8(v54, v53);
        }

        sub_1B7531560(v54, v53);
        sub_1B7531560(v130, v61);
        goto LABEL_27;
      }

      sub_1B757E3BC(v49, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    }

    v33 = &qword_1EB997EA8;
    v34 = v46;
    goto LABEL_26;
  }

  v35 = 0;
  if ((v41[2] & 1) == 0 && *v39 == *v41 && v39[1] == v41[1])
  {
    goto LABEL_36;
  }

  return v35 & 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV6EntityO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B75655B0(a1, &v27 - v18, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  sub_1B75655B0(a2, &v19[v20], type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75655B0(v19, v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B7565394(&v19[v20], v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
      v21 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV8MerchantV2eeoiySbAG_AGtFZ_0(v13, v6);
      sub_1B757E3BC(v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
      v22 = v13;
      v23 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant;
LABEL_9:
      sub_1B757E3BC(v22, v23);
      sub_1B757E3BC(v19, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      return v21 & 1;
    }

    v24 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant;
    v25 = v13;
  }

  else
  {
    sub_1B75655B0(v19, v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B7565394(&v19[v20], v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
      v21 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV5BrandV2eeoiySbAG_AGtFZ_0(v15, v9);
      sub_1B757E3BC(v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
      v22 = v15;
      v23 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand;
      goto LABEL_9;
    }

    v24 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand;
    v25 = v15;
  }

  sub_1B757E3BC(v25, v24);
  sub_1B7205418(v19, &qword_1EB9923F0);
  v21 = 0;
  return v21 & 1;
}

BOOL _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13EntityImageryV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v39 - v8;
  v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v39 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EA0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v39 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_1B7205588(a1, &v39 - v18, &qword_1EB9975B8);
  v44 = a2;
  sub_1B7205588(a2, &v19[v20], &qword_1EB9975B8);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) == 1)
  {
    if (v21(&v19[v20], 1, v9) == 1)
    {
      sub_1B7205418(v19, &qword_1EB9975B8);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1B7205588(v19, v15, &qword_1EB9975B8);
  if (v21(&v19[v20], 1, v9) == 1)
  {
    sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
LABEL_9:
    v28 = &qword_1EB997EA0;
LABEL_22:
    v33 = v19;
    goto LABEL_23;
  }

  sub_1B7565394(&v19[v20], v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  v29 = v15[1];
  v30 = v12[1];
  if (!v29)
  {
    if (!v30)
    {
      goto LABEL_15;
    }

LABEL_21:
    sub_1B757E3BC(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
    sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
    v28 = &qword_1EB9975B8;
    goto LABEL_22;
  }

  if (!v30 || (*v15 != *v12 || v29 != v30) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v31 = sub_1B77FF458();
  sub_1B757E3BC(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  sub_1B7205418(v19, &qword_1EB9975B8);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v22 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0) + 20);
  v23 = v42;
  v24 = *(v41 + 48);
  sub_1B7205588(v43 + v22, v42, &unk_1EB994C70);
  sub_1B7205588(v44 + v22, v23 + v24, &unk_1EB994C70);
  v26 = v45;
  v25 = v46;
  v27 = *(v45 + 48);
  if (v27(v23, 1, v46) == 1)
  {
    if (v27(v23 + v24, 1, v25) == 1)
    {
      sub_1B7205418(v23, &unk_1EB994C70);
      return 1;
    }

    goto LABEL_19;
  }

  v32 = v40;
  sub_1B7205588(v23, v40, &unk_1EB994C70);
  if (v27(v23 + v24, 1, v25) == 1)
  {
    (*(v26 + 8))(v32, v25);
LABEL_19:
    v28 = &qword_1EB991C30;
    v33 = v23;
LABEL_23:
    sub_1B7205418(v33, v28);
    return 0;
  }

  v35 = v23 + v24;
  v36 = v39;
  (*(v26 + 32))(v39, v35, v25);
  sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v37 = sub_1B7800828();
  v38 = *(v26 + 8);
  v38(v36, v25);
  v38(v32, v25);
  sub_1B7205418(v23, &unk_1EB994C70);
  return (v37 & 1) != 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV20EntityContactDetailsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_1B7205588(a1, &v25 - v13, &unk_1EB994C70);
  sub_1B7205588(a2, &v14[v15], &unk_1EB994C70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B7205588(v14, v10, &unk_1EB994C70);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0]);
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
  v20 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0) + 20);
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

  return 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV5BrandV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v88 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v85 = &v82 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v82 - v9;
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v90 = &v82 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EA8);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v82 - v14;
  v15 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v82 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EB0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v82 - v23;
  v25 = *a1;
  v26 = a1[1];
  v95 = a1;
  v96 = a2;
  if ((v25 != *a2 || v26 != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_25;
  }

  v27 = v95[3];
  v28 = v96[3];
  if (v27)
  {
    if (!v28 || (v95[2] != v96[2] || v27 != v28) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v28)
  {
    goto LABEL_25;
  }

  v83 = v6;
  v84 = v4;
  v29 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v30 = *(v29 + 24);
  v31 = *(v22 + 48);
  sub_1B7205588(v95 + v30, v24, &qword_1EB997490);
  sub_1B7205588(v96 + v30, &v24[v31], &qword_1EB997490);
  v32 = *(v16 + 48);
  if (v32(v24, 1, v15) == 1)
  {
    if (v32(&v24[v31], 1, v15) == 1)
    {
      sub_1B7205418(v24, &qword_1EB997490);
LABEL_18:
      v82 = v29;
      v36 = *(v29 + 28);
      v37 = *(v91 + 48);
      v38 = v94;
      sub_1B7205588(v95 + v36, v94, &qword_1EB997498);
      sub_1B7205588(v96 + v36, v38 + v37, &qword_1EB997498);
      v39 = v93;
      v40 = *(v92 + 48);
      if (v40(v38, 1, v93) == 1)
      {
        if (v40(v38 + v37, 1, v39) == 1)
        {
          sub_1B7205418(v38, &qword_1EB997498);
          goto LABEL_28;
        }
      }

      else
      {
        v41 = v90;
        sub_1B7205588(v38, v90, &qword_1EB997498);
        if (v40(v38 + v37, 1, v39) != 1)
        {
          v44 = v38 + v37;
          v45 = v89;
          sub_1B7565394(v44, v89, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
          v46 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13EntityImageryV2eeoiySbAG_AGtFZ_0(v41, v45);
          sub_1B757E3BC(v45, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
          sub_1B757E3BC(v41, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
          sub_1B7205418(v38, &qword_1EB997498);
          if (!v46)
          {
            goto LABEL_25;
          }

LABEL_28:
          v47 = v82[8];
          v49 = *(v95 + v47);
          v48 = *(v95 + v47 + 8);
          v51 = *(v95 + v47 + 16);
          v50 = *(v95 + v47 + 24);
          v52 = *(v95 + v47 + 32);
          v53 = *(v95 + v47 + 40);
          v54 = v96 + v47;
          v55 = *v54;
          v56 = *(v54 + 1);
          v57 = *(v54 + 2);
          v58 = *(v54 + 3);
          v59 = *(v54 + 4);
          v60 = v54[40];
          if (v48 == 1)
          {
            v94 = *(v54 + 2);
            LODWORD(v93) = v60;
            sub_1B75840E8(v49, 1);
            if (v56 == 1)
            {
              sub_1B75840E8(v55, 1);
              sub_1B7531560(v49, 1);
LABEL_36:
              v63 = v82[9];
              v64 = *(v95 + v63);
              v65 = *(v95 + v63 + 1);
              v66 = v96 + v63;
              v67 = v66[1];
              if (v64)
              {
                v68 = 1397768525;
              }

              else
              {
                v68 = 0xD000000000000019;
              }

              if (v64)
              {
                v69 = 0xE400000000000000;
              }

              else
              {
                v69 = 0x80000001B7874540;
              }

              if (*v66)
              {
                v70 = 1397768525;
              }

              else
              {
                v70 = 0xD000000000000019;
              }

              if (*v66)
              {
                v71 = 0xE400000000000000;
              }

              else
              {
                v71 = 0x80000001B7874540;
              }

              if (v68 == v70 && v69 == v71)
              {

                v72 = v84;
                v73 = v88;
                v74 = v83;
              }

              else
              {
                v75 = sub_1B78020F8();

                v72 = v84;
                v73 = v88;
                v74 = v83;
                if ((v75 & 1) == 0)
                {
                  goto LABEL_25;
                }
              }

              if ((sub_1B72C18A8(v65, v67) & 1) == 0)
              {
                goto LABEL_25;
              }

              v76 = v82[10];
              v77 = *(v86 + 48);
              v78 = v87;
              sub_1B7205588(v95 + v76, v87, &unk_1EB994C70);
              sub_1B7205588(v96 + v76, v78 + v77, &unk_1EB994C70);
              v79 = *(v73 + 48);
              if (v79(v78, 1, v72) == 1)
              {
                if (v79(v78 + v77, 1, v72) == 1)
                {
                  sub_1B7205418(v78, &unk_1EB994C70);
                  v42 = 1;
                  return v42 & 1;
                }
              }

              else
              {
                v80 = v85;
                sub_1B7205588(v78, v85, &unk_1EB994C70);
                if (v79(v78 + v77, 1, v72) != 1)
                {
                  (*(v73 + 32))(v74, v78 + v77, v72);
                  sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0]);
                  v42 = sub_1B7800828();
                  v81 = *(v73 + 8);
                  v81(v74, v72);
                  v81(v80, v72);
                  sub_1B7205418(v78, &unk_1EB994C70);
                  return v42 & 1;
                }

                (*(v73 + 8))(v80, v72);
              }

              v33 = &qword_1EB991C30;
              v34 = v78;
              goto LABEL_24;
            }

            v95 = v55;
            v96 = v58;
            sub_1B75840E8(v55, v56);
          }

          else
          {
            v103[0] = v49;
            v103[1] = v48;
            v103[2] = v51;
            v103[3] = v50;
            v103[4] = v52;
            v104 = v53;
            if (v56 != 1)
            {
              v97[0] = v55;
              v97[1] = v56;
              v98 = v57;
              v99 = BYTE4(v57) & 1;
              v100 = v58;
              v101 = v59;
              v102 = v60;
              v91 = v49;
              v92 = v51;
              sub_1B75840E8(v49, v48);
              sub_1B75840E8(v55, v56);
              v61 = v91;
              sub_1B75840E8(v91, v48);
              v62 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV17MapsSystemDetailsV2eeoiySbAG_AGtFZ_0(v103, v97);

              sub_1B7531560(v61, v48);
              if (!v62)
              {
                goto LABEL_25;
              }

              goto LABEL_36;
            }

            v94 = v57;
            v96 = v58;
            sub_1B75840E8(v49, v48);
            v95 = v55;
            sub_1B75840E8(v55, 1);
            sub_1B75840E8(v49, v48);
          }

          sub_1B7531560(v49, v48);
          sub_1B7531560(v95, v56);
          goto LABEL_25;
        }

        sub_1B757E3BC(v41, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
      }

      v33 = &qword_1EB997EA8;
      v34 = v38;
LABEL_24:
      sub_1B7205418(v34, v33);
      goto LABEL_25;
    }

LABEL_16:
    v33 = &qword_1EB997EB0;
    v34 = v24;
    goto LABEL_24;
  }

  sub_1B7205588(v24, v21, &qword_1EB997490);
  if (v32(&v24[v31], 1, v15) == 1)
  {
    sub_1B757E3BC(v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    goto LABEL_16;
  }

  sub_1B7565394(&v24[v31], v18, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  v35 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV20EntityContactDetailsV2eeoiySbAG_AGtFZ_0(v21, v18);
  sub_1B757E3BC(v18, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  sub_1B757E3BC(v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  sub_1B7205418(v24, &qword_1EB997490);
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_25:
  v42 = 0;
  return v42 & 1;
}

BOOL sub_1B75810E4(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E98);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    v43 = v7;
    v19 = v14;

    v20 = sub_1B731E3EC(v17, v18);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v43 = v7;
    v19 = v14;
    if (v18)
    {
      return 0;
    }
  }

  v42 = a3(0);
  v21 = *(v42 + 24);
  v22 = *(v19 + 48);
  sub_1B75655B0(a1 + v21, v16, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  sub_1B75655B0(a2 + v21, &v16[v22], type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v16, 1, v23) == 1)
  {
    if (v24(&v16[v22], 1, v23) == 1)
    {
      goto LABEL_15;
    }

LABEL_12:
    sub_1B7205418(v16, &qword_1EB997E98);
    return 0;
  }

  sub_1B75655B0(v16, v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  if (v24(&v16[v22], 1, v23) == 1)
  {
    (*(v43 + 8))(v12, v6);
    goto LABEL_12;
  }

  v26 = v43;
  (*(v43 + 32))(v9, &v16[v22], v6);
  v27 = sub_1B77FF918();
  v28 = *(v26 + 8);
  v28(v9, v6);
  v28(v12, v6);
  if ((v27 & 1) == 0)
  {
    sub_1B757E3BC(v16, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    return 0;
  }

LABEL_15:
  sub_1B757E3BC(v16, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v29 = *(v42 + 28);
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    return *(a2 + v29) == 2;
  }

  if (*(a2 + v29) == 2)
  {
    return 0;
  }

  if (v30)
  {
    v32 = 1397768525;
  }

  else
  {
    v32 = 0xD000000000000019;
  }

  if (v30)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0x80000001B7874540;
  }

  if (v31)
  {
    v34 = 1397768525;
  }

  else
  {
    v34 = 0xD000000000000019;
  }

  if (v31)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0x80000001B7874540;
  }

  if (v32 == v34 && v33 == v35)
  {
  }

  else
  {
    v36 = sub_1B78020F8();

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(HIBYTE(v30));
  v39 = v38;
  if (v37 == RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(HIBYTE(v31)) && v39 == v40)
  {
  }

  else
  {
    v41 = sub_1B78020F8();

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV7OutcomeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v33 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v33 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997EC0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_1B75655B0(a1, &v33 - v22, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
  sub_1B75655B0(v34, &v23[v24], type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B75655B0(v23, v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B7565394(&v23[v24], v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
        v26 = sub_1B75810E4(v17, v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
        v27 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome;
        sub_1B757E3BC(v7, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
        v28 = v17;
LABEL_13:
        sub_1B757E3BC(v28, v27);
        sub_1B757E3BC(v23, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
        return v26 & 1;
      }

      v29 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome;
      v30 = v17;
    }

    else
    {
      sub_1B75655B0(v23, v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_1B7565394(&v23[v24], v33, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
        v26 = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV13FailedOutcomeV2eeoiySbAG_AGtFZ_0(v14, v31);
        v27 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome;
        sub_1B757E3BC(v31, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
        v28 = v14;
        goto LABEL_13;
      }

      v29 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome;
      v30 = v14;
    }
  }

  else
  {
    sub_1B75655B0(v23, v19, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B7565394(&v23[v24], v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
      v26 = sub_1B75810E4(v19, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
      v27 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome;
      sub_1B757E3BC(v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome;
    v30 = v19;
  }

  sub_1B757E3BC(v30, v29);
  sub_1B7205418(v23, &qword_1EB997EC0);
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_1B7581A5C()
{
  result = qword_1EB997370;
  if (!qword_1EB997370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997370);
  }

  return result;
}

unint64_t sub_1B7581AB0()
{
  result = qword_1EB997378;
  if (!qword_1EB997378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997378);
  }

  return result;
}

unint64_t sub_1B7581B04()
{
  result = qword_1EB997388;
  if (!qword_1EB997388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997388);
  }

  return result;
}

unint64_t sub_1B7581B58()
{
  result = qword_1EB997398;
  if (!qword_1EB997398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997398);
  }

  return result;
}

uint64_t _s10FinanceKit18RawBankConnectDataO22TransactionForInsightsV08ApplePayG7DetailsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - v13;
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v15;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 24);
  v17 = *(a2 + 24);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v16 != v17)
    {
      v18 = v12;
      v19 = sub_1B78020F8();
      v12 = v18;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v15 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v15;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v20 = *(a1 + 41);
  v21 = *(a2 + 41);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v15 = 0;
  if (v21 != 2 && ((v21 ^ v20) & 1) == 0)
  {
LABEL_25:
    v22 = *(a1 + 113);
    v23 = *(a2 + 113);
    if ((v22 & 1) == 0)
    {
      v24 = *(a1 + 96);
      v82[2] = *(a1 + 80);
      v82[3] = v24;
      v83 = *(a1 + 112);
      v25 = *(a1 + 64);
      v82[0] = *(a1 + 48);
      v82[1] = v25;
      v84 = v22;
      if (v23)
      {
        return 0;
      }

      v26 = *(a2 + 96);
      v80[2] = *(a2 + 80);
      v80[3] = v26;
      v81 = *(a2 + 112);
      v27 = *(a2 + 64);
      v80[0] = *(a2 + 48);
      v80[1] = v27;
      v28 = v12;
      v23 = _s10FinanceKit18RawBankConnectDataO14DeviceLocationV2eeoiySbAE_AEtFZ_0(v82, v80);
      v12 = v28;
    }

    if (v23)
    {
      v29 = *(a1 + 128);
      v30 = *(a2 + 128);
      if (v29)
      {
        if (!v30)
        {
          return 0;
        }

        if (*(a1 + 120) != *(a2 + 120) || v29 != v30)
        {
          v31 = v12;
          v32 = sub_1B78020F8();
          v12 = v31;
          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v30)
      {
        return 0;
      }

      v33 = *(a1 + 144);
      v34 = *(a2 + 144);
      if (v33)
      {
        if (!v34)
        {
          return 0;
        }

        if (*(a1 + 136) != *(a2 + 136) || v33 != v34)
        {
          v35 = v12;
          v36 = sub_1B78020F8();
          v12 = v35;
          if ((v36 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v34)
      {
        return 0;
      }

      v15 = *(a2 + 160);
      if (*(a1 + 160))
      {
        if (!*(a2 + 160))
        {
          return v15;
        }
      }

      else
      {
        if (*(a1 + 152) != *(a2 + 152))
        {
          LOBYTE(v15) = 1;
        }

        if (v15)
        {
          return 0;
        }
      }

      v37 = *(a1 + 176);
      v38 = *(a2 + 176);
      if (v37)
      {
        if (!v38)
        {
          return 0;
        }

        if (*(a1 + 168) != *(a2 + 168) || v37 != v38)
        {
          v39 = v12;
          v40 = sub_1B78020F8();
          v12 = v39;
          if ((v40 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v38)
      {
        return 0;
      }

      v41 = *(a1 + 192);
      v42 = *(a2 + 192);
      if (v41)
      {
        if (!v42)
        {
          return 0;
        }

        if (*(a1 + 184) != *(a2 + 184) || v41 != v42)
        {
          v43 = v12;
          v44 = sub_1B78020F8();
          v12 = v43;
          if ((v44 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v42)
      {
        return 0;
      }

      v45 = *(a1 + 208);
      v46 = *(a2 + 208);
      if (v45)
      {
        if (!v46)
        {
          return 0;
        }

        if (*(a1 + 200) != *(a2 + 200) || v45 != v46)
        {
          v47 = v12;
          v48 = sub_1B78020F8();
          v12 = v47;
          if ((v48 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v46)
      {
        return 0;
      }

      v49 = *(a1 + 224);
      v50 = *(a2 + 224);
      if (v49)
      {
        if (!v50)
        {
          return 0;
        }

        v51 = v12;
        if ((*(a1 + 216) != *(a2 + 216) || v49 != v50) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v51 = v12;
        if (v50)
        {
          return 0;
        }
      }

      v52 = *(a1 + 240);
      v53 = *(a2 + 240);
      if (v52)
      {
        if (!v53 || (*(a1 + 232) != *(a2 + 232) || v52 != v53) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v53)
      {
        return 0;
      }

      v54 = *(a1 + 256);
      v55 = *(a2 + 256);
      if (v54)
      {
        if (!v55 || (*(a1 + 248) != *(a2 + 248) || v54 != v55) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v55)
      {
        return 0;
      }

      v56 = *(a1 + 272);
      v57 = *(a2 + 272);
      if (v56)
      {
        if (!v57 || (*(a1 + 264) != *(a2 + 264) || v56 != v57) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v57)
      {
        return 0;
      }

      v58 = *(a1 + 288);
      v59 = *(a2 + 288);
      if (v58)
      {
        if (!v59 || (*(a1 + 280) != *(a2 + 280) || v58 != v59) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v59)
      {
        return 0;
      }

      v60 = *(a1 + 304);
      v61 = *(a2 + 304);
      if (v60)
      {
        if (!v61 || (*(a1 + 296) != *(a2 + 296) || v60 != v61) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v61)
      {
        return 0;
      }

      v62 = *(a1 + 320);
      v63 = *(a2 + 320);
      if (v62)
      {
        if (!v63 || (*(a1 + 312) != *(a2 + 312) || v62 != v63) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v63)
      {
        return 0;
      }

      v64 = *(a1 + 336);
      v65 = *(a2 + 336);
      if (v64)
      {
        if (!v65 || (*(a1 + 328) != *(a2 + 328) || v64 != v65) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v65)
      {
        return 0;
      }

      v66 = *(a1 + 352);
      v67 = *(a2 + 352);
      if (v66)
      {
        if (!v67 || (*(a1 + 344) != *(a2 + 344) || v66 != v67) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v67)
      {
        return 0;
      }

      v68 = *(a1 + 368);
      v69 = *(a2 + 368);
      if (v68)
      {
        if (!v69 || (*(a1 + 360) != *(a2 + 360) || v68 != v69) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v69)
      {
        return 0;
      }

      v70 = *(a1 + 384);
      v71 = *(a2 + 384);
      if (v70)
      {
        if (!v71 || (*(a1 + 376) != *(a2 + 376) || v70 != v71) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v71)
      {
        return 0;
      }

      v72 = *(type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0) + 104);
      v73 = *(v51 + 48);
      sub_1B7205588(a1 + v72, v14, &unk_1EB994C70);
      v79 = v73;
      sub_1B7205588(a2 + v72, &v14[v73], &unk_1EB994C70);
      v74 = *(v5 + 48);
      if (v74(v14, 1, v4) == 1)
      {
        if (v74(&v14[v79], 1, v4) == 1)
        {
          sub_1B7205418(v14, &unk_1EB994C70);
          return 1;
        }

        goto LABEL_152;
      }

      sub_1B7205588(v14, v10, &unk_1EB994C70);
      if (v74(&v14[v79], 1, v4) == 1)
      {
        (*(v5 + 8))(v10, v4);
LABEL_152:
        sub_1B7205418(v14, &qword_1EB991C30);
        return 0;
      }

      (*(v5 + 32))(v7, &v14[v79], v4);
      sub_1B71A6A8C(&qword_1EB990310, MEMORY[0x1E6968FB0]);
      v75 = sub_1B7800828();
      v76 = *(v5 + 8);
      v76(v7, v4);
      v76(v10, v4);
      sub_1B7205418(v14, &unk_1EB994C70);
      if (v75)
      {
        return 1;
      }
    }

    return 0;
  }

  return v15;
}

BOOL _s10FinanceKit18RawBankConnectDataO22TransactionForInsightsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v145 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v141 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = &v133 - v7;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v133 - v8;
  v9 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v133 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E88);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v133 - v17;
  if (*a1 != *a2)
  {
    return 0;
  }

  v138 = v4;
  v19 = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  v146 = a2;
  v20 = *(v19 + 20);
  v21 = *(v16 + 48);
  v139 = v19;
  v140 = a1;
  sub_1B7205588(a1 + v20, v18, &qword_1EB9977A8);
  v22 = v146 + v20;
  v23 = v146;
  sub_1B7205588(v22, &v18[v21], &qword_1EB9977A8);
  v24 = *(v10 + 48);
  if (v24(v18, 1, v9) == 1)
  {
    if (v24(&v18[v21], 1, v9) == 1)
    {
      sub_1B7205418(v18, &qword_1EB9977A8);
      goto LABEL_11;
    }

LABEL_7:
    v25 = &qword_1EB997E88;
    v26 = v18;
LABEL_8:
    sub_1B7205418(v26, v25);
    return 0;
  }

  sub_1B7205588(v18, v15, &qword_1EB9977A8);
  if (v24(&v18[v21], 1, v9) == 1)
  {
    sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
    goto LABEL_7;
  }

  sub_1B7565394(&v18[v21], v12, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  v28 = _s10FinanceKit18RawBankConnectDataO22TransactionForInsightsV08ApplePayG7DetailsV2eeoiySbAG_AGtFZ_0(v15, v12);
  sub_1B757E3BC(v12, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  sub_1B7205418(v18, &qword_1EB9977A8);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v29 = v139;
  v30 = v140;
  v31 = v139[6];
  v32 = *(v140 + v31);
  v33 = *(v23 + v31);
  if (v32)
  {
    v34 = 0x544944455243;
  }

  else
  {
    v34 = 0x5449424544;
  }

  if (v32)
  {
    v35 = 0xE600000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  if (v33)
  {
    v36 = 0x544944455243;
  }

  else
  {
    v36 = 0x5449424544;
  }

  if (v33)
  {
    v37 = 0xE600000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  if (v34 == v36 && v35 == v37)
  {
  }

  else
  {
    v38 = sub_1B78020F8();

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  v39 = v29[7];
  v40 = *(v30 + v39);
  v41 = *(v30 + v39 + 8);
  v42 = (v23 + v39);
  if ((v40 != *v42 || v41 != v42[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v43 = v29[8];
  v44 = *(v30 + v43);
  v45 = *(v30 + v43 + 8);
  v46 = (v23 + v43);
  if ((v44 != *v46 || v45 != v46[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v47 = v29[9];
  v48 = *(v30 + v47);
  v49 = *(v30 + v47 + 8);
  v50 = (v23 + v47);
  if ((v48 != *v50 || v49 != v50[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (*(v30 + v29[10]) != *(v23 + v29[10]))
  {
    return 0;
  }

  v51 = (v30 + v29[11]);
  v52 = v51[3];
  v53 = v51[4];
  v54 = v53;
  v181[5] = v51[5];
  v181[4] = v53;
  v55 = v51[2];
  v56 = v51[1];
  v181[3] = v51[3];
  v181[2] = v55;
  v57 = v51[7];
  v58 = v51[8];
  v59 = v58;
  v181[9] = v51[9];
  v181[8] = v58;
  v60 = v51[6];
  v61 = v51[5];
  v181[7] = v51[7];
  v181[6] = v60;
  v62 = v51[1];
  v181[0] = *v51;
  v181[1] = v62;
  v63 = (v23 + v29[11]);
  v64 = v63[7];
  v65 = v63[5];
  v187 = v63[6];
  v188 = v64;
  v66 = v63[7];
  v67 = v63[9];
  v189 = v63[8];
  v190 = v67;
  v68 = v63[3];
  v69 = v63[1];
  v183 = v63[2];
  v184 = v68;
  v70 = v63[3];
  v71 = v63[5];
  v185 = v63[4];
  v186 = v71;
  v72 = v63[1];
  v182[0] = *v63;
  v182[1] = v72;
  v73 = v51[7];
  v180[6] = v51[6];
  v180[7] = v73;
  v74 = v51[9];
  v180[8] = v51[8];
  v180[9] = v74;
  v75 = v51[3];
  v180[2] = v51[2];
  v180[3] = v75;
  v76 = v51[5];
  v180[4] = v51[4];
  v180[5] = v76;
  v77 = v51[1];
  v180[0] = *v51;
  v180[1] = v77;
  v180[16] = v187;
  v180[17] = v66;
  v78 = v63[9];
  v180[18] = v189;
  v180[19] = v78;
  v180[12] = v183;
  v180[13] = v70;
  v180[14] = v185;
  v180[15] = v65;
  v180[10] = v182[0];
  v180[11] = v69;
  v191[6] = v60;
  v191[7] = v57;
  v79 = v51[9];
  v191[8] = v59;
  v191[9] = v79;
  v191[2] = v55;
  v191[3] = v52;
  v191[4] = v54;
  v191[5] = v61;
  v191[0] = v181[0];
  v191[1] = v56;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v191) == 1)
  {
    v169[6] = v180[16];
    v169[7] = v180[17];
    v169[8] = v180[18];
    v169[9] = v180[19];
    v169[2] = v180[12];
    v169[3] = v180[13];
    v169[4] = v180[14];
    v169[5] = v180[15];
    v169[0] = v180[10];
    v169[1] = v180[11];
    if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v169) == 1)
    {
      v176 = v180[6];
      v177 = v180[7];
      v178 = v180[8];
      v179 = v180[9];
      v172 = v180[2];
      v173 = v180[3];
      v174 = v180[4];
      v175 = v180[5];
      v170 = v180[0];
      v171 = v180[1];
      sub_1B7205588(v181, &v159, &qword_1EB995668);
      sub_1B7205588(v182, &v159, &qword_1EB995668);
      sub_1B7205418(&v170, &qword_1EB995668);
      goto LABEL_45;
    }

    sub_1B7205588(v181, &v170, &qword_1EB995668);
    sub_1B7205588(v182, &v170, &qword_1EB995668);
    goto LABEL_43;
  }

  v176 = v180[6];
  v177 = v180[7];
  v178 = v180[8];
  v179 = v180[9];
  v172 = v180[2];
  v173 = v180[3];
  v174 = v180[4];
  v175 = v180[5];
  v170 = v180[0];
  v171 = v180[1];
  v165 = v180[6];
  v166 = v180[7];
  v167 = v180[8];
  v168 = v180[9];
  v161 = v180[2];
  v162 = v180[3];
  v163 = v180[4];
  v164 = v180[5];
  v159 = v180[0];
  v160 = v180[1];
  v169[6] = v180[16];
  v169[7] = v180[17];
  v169[8] = v180[18];
  v169[9] = v180[19];
  v169[2] = v180[12];
  v169[3] = v180[13];
  v169[4] = v180[14];
  v169[5] = v180[15];
  v169[0] = v180[10];
  v169[1] = v180[11];
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v169) == 1)
  {
    v155 = v180[6];
    v156 = v180[7];
    v157 = v180[8];
    v158 = v180[9];
    v151 = v180[2];
    v152 = v180[3];
    v153 = v180[4];
    v154 = v180[5];
    v149 = v180[0];
    v150 = v180[1];
    sub_1B7205588(v181, v148, &qword_1EB995668);
    sub_1B7205588(v182, v148, &qword_1EB995668);
    sub_1B7205588(&v170, v148, &qword_1EB995668);
    sub_1B7586478(&v149);
LABEL_43:
    memcpy(v169, v180, sizeof(v169));
    v25 = &unk_1EB997E90;
    v26 = v169;
    goto LABEL_8;
  }

  v155 = v180[16];
  v156 = v180[17];
  v157 = v180[18];
  v158 = v180[19];
  v151 = v180[12];
  v152 = v180[13];
  v153 = v180[14];
  v154 = v180[15];
  v149 = v180[10];
  v150 = v180[11];
  sub_1B7205588(v181, v148, &qword_1EB995668);
  sub_1B7205588(v182, v148, &qword_1EB995668);
  sub_1B7205588(&v170, v148, &qword_1EB995668);
  v80 = _s10FinanceKit18RawBankConnectDataO19MerchantInformationV2eeoiySbAE_AEtFZ_0(&v159, &v149);
  v147[6] = v155;
  v147[7] = v156;
  v147[8] = v157;
  v147[9] = v158;
  v147[2] = v151;
  v147[3] = v152;
  v147[4] = v153;
  v147[5] = v154;
  v147[0] = v149;
  v147[1] = v150;
  sub_1B7586478(v147);
  v148[6] = v165;
  v148[7] = v166;
  v148[8] = v167;
  v148[9] = v168;
  v148[2] = v161;
  v148[3] = v162;
  v148[4] = v163;
  v148[5] = v164;
  v148[0] = v159;
  v148[1] = v160;
  sub_1B7586478(v148);
  v155 = v180[6];
  v156 = v180[7];
  v157 = v180[8];
  v158 = v180[9];
  v151 = v180[2];
  v152 = v180[3];
  v153 = v180[4];
  v154 = v180[5];
  v149 = v180[0];
  v150 = v180[1];
  sub_1B7205418(&v149, &qword_1EB995668);
  if ((v80 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v81 = v29[12];
  v82 = *(v30 + v81);
  v83 = *(v30 + v81 + 8);
  v84 = (v23 + v81);
  if ((v82 != *v84 || v83 != v84[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v85 = v29[13];
  v86 = *(v30 + v85);
  v87 = *(v23 + v85);
  if (v86)
  {
    if (!v87 || (sub_1B731F734(v86, v87) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v87)
  {
    return 0;
  }

  v88 = v29[14];
  v89 = *(v30 + v88);
  v90 = *(v30 + v88 + 8);
  v91 = *(v30 + v88 + 16);
  v92 = *(v30 + v88 + 24);
  v93 = (v23 + v88);
  v95 = *v93;
  v94 = v93[1];
  v96 = v93[2];
  v137 = v93[3];
  if (!v90)
  {
    v135 = v89;
    sub_1B7586148(v89, 0);
    if (!v94)
    {
      sub_1B7586148(v95, 0);
      v90 = 0;
      goto LABEL_78;
    }

    v103 = v95;
    sub_1B7586148(v95, v94);
    v104 = v135;
LABEL_66:
    sub_1B74204FC(v104, v90);
    sub_1B74204FC(v103, v94);
    return 0;
  }

  if (!v94)
  {
    v103 = v95;
    v104 = v89;
    sub_1B7586148(v89, v90);
    sub_1B7586148(v103, 0);
    sub_1B7586148(v89, v90);

    goto LABEL_66;
  }

  v136 = v91;
  if (v89 != v95 || v90 != v94)
  {
    v135 = v92;
    v97 = v95;
    v98 = v89;
    v99 = v91;
    v100 = sub_1B78020F8();
    v91 = v99;
    v89 = v98;
    v95 = v97;
    v92 = v135;
    if ((v100 & 1) == 0)
    {
      v134 = v94;
LABEL_73:
      sub_1B7586148(v89, v90);
LABEL_74:
      v106 = v134;
      sub_1B7586148(v95, v134);
      sub_1B7586148(v89, v90);
      sub_1B74204FC(v95, v106);
      goto LABEL_75;
    }
  }

  if (!v92)
  {
    v134 = v94;
    sub_1B7586148(v89, v90);
    if (!v137)
    {
      v105 = v134;
      sub_1B7586148(v95, v134);
      sub_1B7586148(v89, v90);
      v101 = v95;
      v102 = v105;
      goto LABEL_70;
    }

    goto LABEL_74;
  }

  if (!v137)
  {
    v134 = v94;
    v137 = 0;
    goto LABEL_73;
  }

  if (v91 != v96 || v92 != v137)
  {
    v133 = v96;
    v107 = sub_1B78020F8();
    v134 = v94;
    LODWORD(v135) = v107;
    sub_1B7586148(v89, v90);
    sub_1B7586148(v95, v94);
    sub_1B7586148(v89, v90);
    sub_1B74204FC(v95, v134);
    if (v135)
    {
      goto LABEL_77;
    }

LABEL_75:

    sub_1B74204FC(v89, v90);
    return 0;
  }

  sub_1B7586148(v89, v90);
  sub_1B7586148(v95, v94);
  sub_1B7586148(v89, v90);
  v101 = v95;
  v102 = v94;
LABEL_70:
  sub_1B74204FC(v101, v102);
LABEL_77:
  v135 = v89;

LABEL_78:
  sub_1B74204FC(v135, v90);
  v108 = v29[15];
  v109 = *(v30 + v108);
  v110 = *(v23 + v108);
  if (v109 == 5)
  {
    if (v110 != 5)
    {
      return 0;
    }
  }

  else if (v110 == 5 || (sub_1B72C1B00(v109, v110) & 1) == 0)
  {
    return 0;
  }

  v111 = v29[16];
  v112 = *(v30 + v111);
  v113 = *(v30 + v111 + 8);
  v114 = (v23 + v111);
  if ((v112 != *v114 || v113 != v114[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v115 = v29[17];
  v116 = *(v143 + 48);
  v117 = v30 + v115;
  v118 = v144;
  sub_1B7205588(v117, v144, &qword_1EB98EBD0);
  sub_1B7205588(v146 + v115, v118 + v116, &qword_1EB98EBD0);
  v119 = v145;
  v120 = *(v145 + 48);
  v121 = v138;
  if (v120(v118, 1, v138) == 1)
  {
    if (v120(v118 + v116, 1, v121) == 1)
    {
      sub_1B7205418(v118, &qword_1EB98EBD0);
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v122 = v142;
  sub_1B7205588(v118, v142, &qword_1EB98EBD0);
  if (v120(v118 + v116, 1, v121) == 1)
  {
    (*(v119 + 8))(v122, v121);
LABEL_91:
    v25 = &qword_1EB98FCE0;
    v26 = v118;
    goto LABEL_8;
  }

  v123 = v141;
  (*(v119 + 32))(v141, v118 + v116, v121);
  sub_1B71A6A8C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v124 = sub_1B7800828();
  v125 = *(v119 + 8);
  v125(v123, v121);
  v125(v122, v121);
  sub_1B7205418(v118, &qword_1EB98EBD0);
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_93:
  v126 = v139[18];
  v127 = *(v140 + v126);
  LOBYTE(v126) = *(v146 + v126);
  LOBYTE(v180[0]) = v127;
  LOBYTE(v169[0]) = v126;
  v128 = RawBankConnectData.Transaction.TransactionType.rawValue.getter();
  v130 = v129;
  if (v128 == RawBankConnectData.Transaction.TransactionType.rawValue.getter() && v130 == v131)
  {

    return 1;
  }

  v132 = sub_1B78020F8();

  return (v132 & 1) != 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO19InsightsRequestBodyV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11 = *a2;
  v10 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  if (*a1)
  {
    v23[0] = *a1;
    v23[1] = v2;
    v23[2] = v5;
    v23[3] = v4;
    v23[4] = v7;
    v23[5] = v6;
    v23[6] = v9;
    if (v11)
    {
      v20 = v17;
      v21 = v8;
      v22[0] = v11;
      v22[1] = v10;
      v22[2] = v13;
      v22[3] = v12;
      v22[4] = v15;
      v22[5] = v14;
      v22[6] = v16;
      v19 = _s10FinanceKit18RawBankConnectDataO31ClassificationBAAIdentificationV2eeoiySbAE_AEtFZ_0(v23, v22);
      sub_1B7585D78(v3);
      sub_1B7585D78(v11);
      sub_1B7585D78(v3);

      sub_1B72DE64C(v3);
      if (v19)
      {
        goto LABEL_11;
      }

      return 0;
    }

    sub_1B7585D78(v3);
    sub_1B7585D78(0);
    sub_1B7585D78(v3);

LABEL_8:
    sub_1B72DE64C(v3);
    sub_1B72DE64C(v11);
    return 0;
  }

  v20 = a2[7];
  v21 = a1[7];
  sub_1B7585D78(0);
  if (v11)
  {
    sub_1B7585D78(v11);
    goto LABEL_8;
  }

  sub_1B7585D78(0);
  sub_1B72DE64C(0);
LABEL_11:

  return sub_1B731F924(v21, v20);
}

uint64_t sub_1B75838CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B7884F60 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7884F80 == a2)
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

void *sub_1B75839F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997DC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758A9A8();
  sub_1B78023C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1B758A9FC();
    sub_1B7801E48();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1B7583B68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536C616974726170 && a2 == 0xEE00737365636375 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
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

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV16OutcomeIndicatorO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_1B7801D18();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B7583CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7583D58()
{
  result = qword_1EB9973B0;
  if (!qword_1EB9973B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9973B0);
  }

  return result;
}

unint64_t sub_1B7583DAC()
{
  result = qword_1EB9973D8;
  if (!qword_1EB9973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9973D8);
  }

  return result;
}

uint64_t sub_1B7583E00(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9973B8);
    sub_1B71A6A8C(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7583E9C()
{
  result = qword_1EB997400;
  if (!qword_1EB997400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997400);
  }

  return result;
}

unint64_t sub_1B7583EF0()
{
  result = qword_1EB997410;
  if (!qword_1EB997410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997410);
  }

  return result;
}

unint64_t sub_1B7583F44()
{
  result = qword_1EB997428;
  if (!qword_1EB997428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997428);
  }

  return result;
}

unint64_t sub_1B7583F98()
{
  result = qword_1EB997438;
  if (!qword_1EB997438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997438);
  }

  return result;
}

unint64_t sub_1B7583FEC()
{
  result = qword_1EB997468;
  if (!qword_1EB997468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997468);
  }

  return result;
}

unint64_t sub_1B7584040()
{
  result = qword_1EB997470;
  if (!qword_1EB997470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997470);
  }

  return result;
}

unint64_t sub_1B7584094()
{
  result = qword_1EB997480;
  if (!qword_1EB997480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997480);
  }

  return result;
}

uint64_t sub_1B75840E8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1B7584170()
{
  result = qword_1EB9974A8;
  if (!qword_1EB9974A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9974A8);
  }

  return result;
}

unint64_t sub_1B75841C4()
{
  result = qword_1EB9974B0;
  if (!qword_1EB9974B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9974B0);
  }

  return result;
}

unint64_t sub_1B7584218()
{
  result = qword_1EB9974C8;
  if (!qword_1EB9974C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9974C8);
  }

  return result;
}

unint64_t sub_1B758426C()
{
  result = qword_1EB9974D0;
  if (!qword_1EB9974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9974D0);
  }

  return result;
}

unint64_t sub_1B75842C0()
{
  result = qword_1EB9974E0;
  if (!qword_1EB9974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9974E0);
  }

  return result;
}

unint64_t sub_1B7584314()
{
  result = qword_1EB9974F8;
  if (!qword_1EB9974F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9974F8);
  }

  return result;
}

unint64_t sub_1B7584368()
{
  result = qword_1EB997500;
  if (!qword_1EB997500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997500);
  }

  return result;
}

unint64_t sub_1B75843BC()
{
  result = qword_1EB997518;
  if (!qword_1EB997518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997518);
  }

  return result;
}

unint64_t sub_1B7584410()
{
  result = qword_1EB997520;
  if (!qword_1EB997520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997520);
  }

  return result;
}

unint64_t sub_1B7584464()
{
  result = qword_1EB997528;
  if (!qword_1EB997528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997528);
  }

  return result;
}

unint64_t sub_1B75844B8()
{
  result = qword_1EB997538;
  if (!qword_1EB997538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997538);
  }

  return result;
}

unint64_t sub_1B758450C()
{
  result = qword_1EB997540;
  if (!qword_1EB997540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997540);
  }

  return result;
}

unint64_t sub_1B7584560()
{
  result = qword_1EB997550;
  if (!qword_1EB997550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997550);
  }

  return result;
}

unint64_t sub_1B75845B4()
{
  result = qword_1EB997558;
  if (!qword_1EB997558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997558);
  }

  return result;
}

unint64_t sub_1B7584608()
{
  result = qword_1EB997568;
  if (!qword_1EB997568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997568);
  }

  return result;
}

unint64_t sub_1B758465C()
{
  result = qword_1EB997578;
  if (!qword_1EB997578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997578);
  }

  return result;
}

unint64_t sub_1B75846B0()
{
  result = qword_1EB997590;
  if (!qword_1EB997590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997590);
  }

  return result;
}

unint64_t sub_1B7584724()
{
  result = qword_1EB9975A8;
  if (!qword_1EB9975A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9975A8);
  }

  return result;
}

unint64_t sub_1B7584778()
{
  result = qword_1EB9975C8;
  if (!qword_1EB9975C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9975C8);
  }

  return result;
}

unint64_t sub_1B75847CC()
{
  result = qword_1EB9975F0;
  if (!qword_1EB9975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9975F0);
  }

  return result;
}

unint64_t sub_1B7584820()
{
  result = qword_1EB997608;
  if (!qword_1EB997608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997608);
  }

  return result;
}

unint64_t sub_1B7584874()
{
  result = qword_1EB997620;
  if (!qword_1EB997620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997620);
  }

  return result;
}

uint64_t sub_1B75848C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB997610);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7584940()
{
  result = qword_1EB997638;
  if (!qword_1EB997638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997638);
  }

  return result;
}

unint64_t sub_1B7584994()
{
  result = qword_1EB997648;
  if (!qword_1EB997648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997648);
  }

  return result;
}

unint64_t sub_1B75849E8()
{
  result = qword_1EB997650;
  if (!qword_1EB997650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997650);
  }

  return result;
}

unint64_t sub_1B7584A3C()
{
  result = qword_1EB997660;
  if (!qword_1EB997660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997660);
  }

  return result;
}

unint64_t sub_1B7584A90()
{
  result = qword_1EB997670;
  if (!qword_1EB997670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997670);
  }

  return result;
}

unint64_t sub_1B7584B04()
{
  result = qword_1EB997680;
  if (!qword_1EB997680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997680);
  }

  return result;
}

unint64_t sub_1B7584B58()
{
  result = qword_1EB9976A8;
  if (!qword_1EB9976A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9976A8);
  }

  return result;
}

unint64_t sub_1B7584BAC()
{
  result = qword_1EB9976B0;
  if (!qword_1EB9976B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9976B0);
  }

  return result;
}

unint64_t sub_1B7584C00()
{
  result = qword_1EB9976B8;
  if (!qword_1EB9976B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9976B8);
  }

  return result;
}

unint64_t sub_1B7584C54()
{
  result = qword_1EB9976C8;
  if (!qword_1EB9976C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9976C8);
  }

  return result;
}

unint64_t sub_1B7584CA8()
{
  result = qword_1EB9976D0;
  if (!qword_1EB9976D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9976D0);
  }

  return result;
}

unint64_t sub_1B7584CFC()
{
  result = qword_1EB9976D8;
  if (!qword_1EB9976D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9976D8);
  }

  return result;
}

unint64_t sub_1B7584D50()
{
  result = qword_1EB9976E8;
  if (!qword_1EB9976E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9976E8);
  }

  return result;
}

unint64_t sub_1B7584DA4()
{
  result = qword_1EB9976F0;
  if (!qword_1EB9976F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9976F0);
  }

  return result;
}

unint64_t sub_1B7584DF8()
{
  result = qword_1EB997700;
  if (!qword_1EB997700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997700);
  }

  return result;
}

unint64_t sub_1B7584E4C()
{
  result = qword_1EB997708;
  if (!qword_1EB997708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997708);
  }

  return result;
}

unint64_t sub_1B7584EA0()
{
  result = qword_1EB997718;
  if (!qword_1EB997718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997718);
  }

  return result;
}

uint64_t sub_1B7584EF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6574744177656ELL && a2 == 0xEF746E756F437470;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7884FA0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7884FC0 == a2)
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

void *sub_1B758506C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997DD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758AA50();
  sub_1B78023C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1B758AAA4();
    sub_1B7801E48();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1B75851DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44746361746E6F63 && a2 == 0xEE00736C69617465 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726567616D69 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7884FE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7885000 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000)
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

uint64_t sub_1B7585440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEF646E6172426465 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44746361746E6F63 && a2 == 0xEE00736C69617465 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7885020 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79726567616D69 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7884FE0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64416C6174736F70 && a2 == 0xED00007373657264 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7885000 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1B7585798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001B78824E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7885060 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747441656C797473 && a2 == 0xEF73657475626972)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B75858C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2037672291 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746565727473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7885080 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_1B7585B70(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997DF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758AAF8();
  sub_1B78023C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1B758AB4C();
    sub_1B7801E48();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV14VendorCategoryO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_1B7801D18();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV14WalletCategoryO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_1B7801D18();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B7585D78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B7585DD8()
{
  result = qword_1EB997728;
  if (!qword_1EB997728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997728);
  }

  return result;
}

unint64_t sub_1B7585E2C()
{
  result = qword_1EB997730;
  if (!qword_1EB997730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997730);
  }

  return result;
}

uint64_t sub_1B7585E80(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99A690);
    sub_1B71A6A8C(a2, type metadata accessor for RawBankConnectData.TransactionForInsights);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7585F3C()
{
  result = qword_1EB997750;
  if (!qword_1EB997750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997750);
  }

  return result;
}

unint64_t sub_1B7585FF8()
{
  result = qword_1EB997770;
  if (!qword_1EB997770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997770);
  }

  return result;
}

unint64_t sub_1B758604C()
{
  result = qword_1EB997778;
  if (!qword_1EB997778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997778);
  }

  return result;
}

unint64_t sub_1B75860A0()
{
  result = qword_1EB997788;
  if (!qword_1EB997788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997788);
  }

  return result;
}

unint64_t sub_1B75860F4()
{
  result = qword_1EB997798;
  if (!qword_1EB997798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997798);
  }

  return result;
}

uint64_t sub_1B7586148(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B75861AC()
{
  result = qword_1EB9977B8;
  if (!qword_1EB9977B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9977B8);
  }

  return result;
}

unint64_t sub_1B7586200()
{
  result = qword_1EB9977C8;
  if (!qword_1EB9977C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9977C8);
  }

  return result;
}

unint64_t sub_1B7586254()
{
  result = qword_1EB9977D0;
  if (!qword_1EB9977D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9977D0);
  }

  return result;
}

uint64_t sub_1B75862A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9977D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7586320()
{
  result = qword_1EB99DA70;
  if (!qword_1EB99DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DA70);
  }

  return result;
}

unint64_t sub_1B7586374()
{
  result = qword_1EB9977E8;
  if (!qword_1EB9977E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9977E8);
  }

  return result;
}

unint64_t sub_1B75863C8()
{
  result = qword_1EB9977F0;
  if (!qword_1EB9977F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9977F0);
  }

  return result;
}

unint64_t sub_1B75864CC()
{
  result = qword_1EB997808;
  if (!qword_1EB997808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997808);
  }

  return result;
}

unint64_t sub_1B7586520()
{
  result = qword_1EB997810;
  if (!qword_1EB997810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997810);
  }

  return result;
}

unint64_t sub_1B7586574()
{
  result = qword_1EB99DAE0;
  if (!qword_1EB99DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DAE0);
  }

  return result;
}

unint64_t sub_1B75865C8()
{
  result = qword_1EB997820;
  if (!qword_1EB997820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997820);
  }

  return result;
}

unint64_t sub_1B758661C()
{
  result = qword_1EB997828;
  if (!qword_1EB997828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997828);
  }

  return result;
}

unint64_t sub_1B7586670()
{
  result = qword_1EB997838;
  if (!qword_1EB997838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997838);
  }

  return result;
}

unint64_t sub_1B75866C4()
{
  result = qword_1EB997840;
  if (!qword_1EB997840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997840);
  }

  return result;
}

unint64_t sub_1B7586718()
{
  result = qword_1EB997850;
  if (!qword_1EB997850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997850);
  }

  return result;
}

unint64_t sub_1B758676C()
{
  result = qword_1EB997860;
  if (!qword_1EB997860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997860);
  }

  return result;
}

unint64_t sub_1B75867C0()
{
  result = qword_1EB997878;
  if (!qword_1EB997878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997878);
  }

  return result;
}

unint64_t sub_1B7586818()
{
  result = qword_1EB997888;
  if (!qword_1EB997888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997888);
  }

  return result;
}

unint64_t sub_1B7586870()
{
  result = qword_1EB997890;
  if (!qword_1EB997890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997890);
  }

  return result;
}

unint64_t sub_1B75868C8()
{
  result = qword_1EB997898;
  if (!qword_1EB997898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997898);
  }

  return result;
}

unint64_t sub_1B7586920()
{
  result = qword_1EB9978A0;
  if (!qword_1EB9978A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9978A0);
  }

  return result;
}

unint64_t sub_1B7586978()
{
  result = qword_1EB9978A8;
  if (!qword_1EB9978A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9978A8);
  }

  return result;
}

unint64_t sub_1B75869D0()
{
  result = qword_1EB9978B0;
  if (!qword_1EB9978B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9978B0);
  }

  return result;
}

unint64_t sub_1B7586A58()
{
  result = qword_1EB9978C8;
  if (!qword_1EB9978C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9978C8);
  }

  return result;
}

unint64_t sub_1B7586AE0()
{
  result = qword_1EB9978E0;
  if (!qword_1EB9978E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9978E0);
  }

  return result;
}

unint64_t sub_1B7586B68()
{
  result = qword_1EB9978F8;
  if (!qword_1EB9978F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9978F8);
  }

  return result;
}

unint64_t sub_1B7586BC0()
{
  result = qword_1EB997900;
  if (!qword_1EB997900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997900);
  }

  return result;
}

unint64_t sub_1B7586C18()
{
  result = qword_1EB997908;
  if (!qword_1EB997908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997908);
  }

  return result;
}

unint64_t sub_1B7586D00()
{
  result = qword_1EB997920;
  if (!qword_1EB997920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997920);
  }

  return result;
}

unint64_t sub_1B7586D58()
{
  result = qword_1EB997928;
  if (!qword_1EB997928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997928);
  }

  return result;
}

void sub_1B7586DD4()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7586E80()
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_60Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B75870C4()
{
  sub_1B7588060(319, &qword_1EB997960, &qword_1EB9973B8);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(319);
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EB997968);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B75871C0()
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B758723C()
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B75872E8()
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0);
  if (v0 <= 0x3F)
  {
    sub_1B7587440(319, &qword_1EB9979B0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    if (v1 <= 0x3F)
    {
      sub_1B7587440(319, &qword_1EB9979B8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB9979C0);
        if (v3 <= 0x3F)
        {
          sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B7587440(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B75874BC()
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB9979D8);
    if (v1 <= 0x3F)
    {
      sub_1B7587440(319, &qword_1EB9979B0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB9979E0);
        if (v3 <= 0x3F)
        {
          sub_1B7587440(319, &qword_1EB9979B8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
          if (v4 <= 0x3F)
          {
            sub_1B72F2CB8(319, &qword_1EB9979C0);
            if (v5 <= 0x3F)
            {
              sub_1B72F2CB8(319, &qword_1EB9979E8);
              if (v6 <= 0x3F)
              {
                sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
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

void sub_1B75876E4()
{
  sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B75877BC()
{
  sub_1B7587440(319, &qword_1EB997A10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  if (v0 <= 0x3F)
  {
    sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B75878A0()
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0);
  if (v0 <= 0x3F)
  {
    sub_1B77FF4F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B7587934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_1B7587990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7587A10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B7587A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7587AE0()
{
  sub_1B7587B38();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B7587B38()
{
  if (!qword_1EB997A38)
  {
    v0 = sub_1B77FF988();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB997A38);
    }
  }
}

uint64_t sub_1B7587BA0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for BankConnectOfflineLab.SharingPreference(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit18RawBankConnectDataO31ClassificationBAAIdentificationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7587D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7587D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7587DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B7587E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B7587EC0()
{
  sub_1B7587440(319, &qword_1EB997A50, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB997A58);
    if (v1 <= 0x3F)
    {
      sub_1B7588060(319, &qword_1EB997A60, &qword_1EB9977D8);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, qword_1EDAFC8E0);
        if (v3 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB997A68);
          if (v4 <= 0x3F)
          {
            sub_1B7587440(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
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

void sub_1B7588060(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B75880DC()
{
  sub_1B72F2CB8(319, &qword_1EDAF6488);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0);
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAFC578);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB997A80);
        if (v3 <= 0x3F)
        {
          sub_1B7587440(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B758824C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B758826C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 65) = v3;
  return result;
}

uint64_t _s22TransactionForInsightsV26ApplePayTransactionDetailsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s22TransactionForInsightsV26ApplePayTransactionDetailsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B7588504()
{
  result = sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B75886F4()
{
  result = qword_1EB997A98;
  if (!qword_1EB997A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997A98);
  }

  return result;
}

unint64_t sub_1B758874C()
{
  result = qword_1EB997AA0;
  if (!qword_1EB997AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AA0);
  }

  return result;
}

unint64_t sub_1B75887A4()
{
  result = qword_1EB997AA8;
  if (!qword_1EB997AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AA8);
  }

  return result;
}

unint64_t sub_1B75887FC()
{
  result = qword_1EB997AB0;
  if (!qword_1EB997AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AB0);
  }

  return result;
}

unint64_t sub_1B7588854()
{
  result = qword_1EB997AB8;
  if (!qword_1EB997AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AB8);
  }

  return result;
}

unint64_t sub_1B75888AC()
{
  result = qword_1EB997AC0;
  if (!qword_1EB997AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AC0);
  }

  return result;
}

unint64_t sub_1B7588904()
{
  result = qword_1EB997AC8;
  if (!qword_1EB997AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AC8);
  }

  return result;
}

unint64_t sub_1B758895C()
{
  result = qword_1EB997AD0;
  if (!qword_1EB997AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AD0);
  }

  return result;
}

unint64_t sub_1B75889B4()
{
  result = qword_1EB997AD8;
  if (!qword_1EB997AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AD8);
  }

  return result;
}

unint64_t sub_1B7588A0C()
{
  result = qword_1EB997AE0;
  if (!qword_1EB997AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AE0);
  }

  return result;
}

unint64_t sub_1B7588A64()
{
  result = qword_1EB997AE8;
  if (!qword_1EB997AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AE8);
  }

  return result;
}

unint64_t sub_1B7588ABC()
{
  result = qword_1EB997AF0;
  if (!qword_1EB997AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AF0);
  }

  return result;
}

unint64_t sub_1B7588B14()
{
  result = qword_1EB997AF8;
  if (!qword_1EB997AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997AF8);
  }

  return result;
}

unint64_t sub_1B7588B6C()
{
  result = qword_1EB997B00;
  if (!qword_1EB997B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B00);
  }

  return result;
}

unint64_t sub_1B7588BC4()
{
  result = qword_1EB997B08;
  if (!qword_1EB997B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B08);
  }

  return result;
}

unint64_t sub_1B7588C1C()
{
  result = qword_1EB997B10;
  if (!qword_1EB997B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B10);
  }

  return result;
}

unint64_t sub_1B7588C74()
{
  result = qword_1EB997B18;
  if (!qword_1EB997B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B18);
  }

  return result;
}

unint64_t sub_1B7588CCC()
{
  result = qword_1EB997B20;
  if (!qword_1EB997B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B20);
  }

  return result;
}

unint64_t sub_1B7588D24()
{
  result = qword_1EB997B28;
  if (!qword_1EB997B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B28);
  }

  return result;
}

unint64_t sub_1B7588D7C()
{
  result = qword_1EB997B30;
  if (!qword_1EB997B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B30);
  }

  return result;
}

unint64_t sub_1B7588DD4()
{
  result = qword_1EB997B38;
  if (!qword_1EB997B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B38);
  }

  return result;
}

unint64_t sub_1B7588E2C()
{
  result = qword_1EB997B40;
  if (!qword_1EB997B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B40);
  }

  return result;
}

unint64_t sub_1B7588E84()
{
  result = qword_1EB997B48;
  if (!qword_1EB997B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B48);
  }

  return result;
}

unint64_t sub_1B7588EDC()
{
  result = qword_1EB997B50;
  if (!qword_1EB997B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B50);
  }

  return result;
}

unint64_t sub_1B7588F34()
{
  result = qword_1EB997B58;
  if (!qword_1EB997B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B58);
  }

  return result;
}

unint64_t sub_1B7588F8C()
{
  result = qword_1EB997B60;
  if (!qword_1EB997B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B60);
  }

  return result;
}

unint64_t sub_1B7588FE4()
{
  result = qword_1EB997B68;
  if (!qword_1EB997B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B68);
  }

  return result;
}

unint64_t sub_1B758903C()
{
  result = qword_1EB997B70;
  if (!qword_1EB997B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B70);
  }

  return result;
}

unint64_t sub_1B7589094()
{
  result = qword_1EB997B78;
  if (!qword_1EB997B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B78);
  }

  return result;
}

unint64_t sub_1B75890EC()
{
  result = qword_1EB997B80;
  if (!qword_1EB997B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B80);
  }

  return result;
}

unint64_t sub_1B7589144()
{
  result = qword_1EB997B88;
  if (!qword_1EB997B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B88);
  }

  return result;
}

unint64_t sub_1B758919C()
{
  result = qword_1EB997B90;
  if (!qword_1EB997B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B90);
  }

  return result;
}

unint64_t sub_1B75891F4()
{
  result = qword_1EB997B98;
  if (!qword_1EB997B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997B98);
  }

  return result;
}

unint64_t sub_1B758924C()
{
  result = qword_1EB997BA0;
  if (!qword_1EB997BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BA0);
  }

  return result;
}

unint64_t sub_1B75892A4()
{
  result = qword_1EB997BA8;
  if (!qword_1EB997BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BA8);
  }

  return result;
}

unint64_t sub_1B75892FC()
{
  result = qword_1EB997BB0;
  if (!qword_1EB997BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BB0);
  }

  return result;
}

unint64_t sub_1B7589354()
{
  result = qword_1EB997BB8;
  if (!qword_1EB997BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BB8);
  }

  return result;
}

unint64_t sub_1B75893AC()
{
  result = qword_1EB997BC0;
  if (!qword_1EB997BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BC0);
  }

  return result;
}

unint64_t sub_1B7589404()
{
  result = qword_1EB997BC8;
  if (!qword_1EB997BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BC8);
  }

  return result;
}

unint64_t sub_1B758945C()
{
  result = qword_1EB997BD0;
  if (!qword_1EB997BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BD0);
  }

  return result;
}

unint64_t sub_1B75894B4()
{
  result = qword_1EB997BD8;
  if (!qword_1EB997BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BD8);
  }

  return result;
}

unint64_t sub_1B758950C()
{
  result = qword_1EB997BE0;
  if (!qword_1EB997BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BE0);
  }

  return result;
}

unint64_t sub_1B7589564()
{
  result = qword_1EB997BE8;
  if (!qword_1EB997BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BE8);
  }

  return result;
}

unint64_t sub_1B75895BC()
{
  result = qword_1EB997BF0;
  if (!qword_1EB997BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BF0);
  }

  return result;
}

unint64_t sub_1B7589614()
{
  result = qword_1EB997BF8;
  if (!qword_1EB997BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997BF8);
  }

  return result;
}

unint64_t sub_1B758966C()
{
  result = qword_1EB997C00;
  if (!qword_1EB997C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C00);
  }

  return result;
}

unint64_t sub_1B75896C4()
{
  result = qword_1EB997C08;
  if (!qword_1EB997C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C08);
  }

  return result;
}

unint64_t sub_1B758971C()
{
  result = qword_1EB997C10;
  if (!qword_1EB997C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C10);
  }

  return result;
}

unint64_t sub_1B7589774()
{
  result = qword_1EB997C18;
  if (!qword_1EB997C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C18);
  }

  return result;
}

unint64_t sub_1B75897CC()
{
  result = qword_1EB997C20;
  if (!qword_1EB997C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C20);
  }

  return result;
}

unint64_t sub_1B7589824()
{
  result = qword_1EB997C28;
  if (!qword_1EB997C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C28);
  }

  return result;
}

unint64_t sub_1B758987C()
{
  result = qword_1EB997C30;
  if (!qword_1EB997C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C30);
  }

  return result;
}

unint64_t sub_1B75898D4()
{
  result = qword_1EB997C38;
  if (!qword_1EB997C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C38);
  }

  return result;
}

unint64_t sub_1B758992C()
{
  result = qword_1EB997C40;
  if (!qword_1EB997C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C40);
  }

  return result;
}

unint64_t sub_1B7589984()
{
  result = qword_1EB997C48;
  if (!qword_1EB997C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C48);
  }

  return result;
}

unint64_t sub_1B75899DC()
{
  result = qword_1EB997C50;
  if (!qword_1EB997C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C50);
  }

  return result;
}

unint64_t sub_1B7589A34()
{
  result = qword_1EB997C58;
  if (!qword_1EB997C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C58);
  }

  return result;
}

unint64_t sub_1B7589A8C()
{
  result = qword_1EB997C60;
  if (!qword_1EB997C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C60);
  }

  return result;
}

unint64_t sub_1B7589AE4()
{
  result = qword_1EB997C68;
  if (!qword_1EB997C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C68);
  }

  return result;
}

unint64_t sub_1B7589B3C()
{
  result = qword_1EB997C70;
  if (!qword_1EB997C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C70);
  }

  return result;
}

unint64_t sub_1B7589B94()
{
  result = qword_1EB997C78;
  if (!qword_1EB997C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C78);
  }

  return result;
}

unint64_t sub_1B7589BEC()
{
  result = qword_1EB997C80;
  if (!qword_1EB997C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C80);
  }

  return result;
}

unint64_t sub_1B7589C44()
{
  result = qword_1EB997C88;
  if (!qword_1EB997C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C88);
  }

  return result;
}

unint64_t sub_1B7589C9C()
{
  result = qword_1EB997C90;
  if (!qword_1EB997C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C90);
  }

  return result;
}

unint64_t sub_1B7589CF4()
{
  result = qword_1EB997C98;
  if (!qword_1EB997C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997C98);
  }

  return result;
}

unint64_t sub_1B7589D4C()
{
  result = qword_1EB997CA0;
  if (!qword_1EB997CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CA0);
  }

  return result;
}

unint64_t sub_1B7589DA4()
{
  result = qword_1EB997CA8;
  if (!qword_1EB997CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CA8);
  }

  return result;
}

unint64_t sub_1B7589DFC()
{
  result = qword_1EB997CB0;
  if (!qword_1EB997CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CB0);
  }

  return result;
}

unint64_t sub_1B7589E54()
{
  result = qword_1EB997CB8;
  if (!qword_1EB997CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CB8);
  }

  return result;
}

unint64_t sub_1B7589EAC()
{
  result = qword_1EB997CC0;
  if (!qword_1EB997CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CC0);
  }

  return result;
}

unint64_t sub_1B7589F04()
{
  result = qword_1EB997CC8;
  if (!qword_1EB997CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CC8);
  }

  return result;
}

unint64_t sub_1B7589F5C()
{
  result = qword_1EB997CD0;
  if (!qword_1EB997CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CD0);
  }

  return result;
}

unint64_t sub_1B7589FB4()
{
  result = qword_1EB997CD8;
  if (!qword_1EB997CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CD8);
  }

  return result;
}

unint64_t sub_1B758A00C()
{
  result = qword_1EB997CE0;
  if (!qword_1EB997CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CE0);
  }

  return result;
}

unint64_t sub_1B758A064()
{
  result = qword_1EB997CE8;
  if (!qword_1EB997CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CE8);
  }

  return result;
}

unint64_t sub_1B758A0BC()
{
  result = qword_1EB997CF0;
  if (!qword_1EB997CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CF0);
  }

  return result;
}

unint64_t sub_1B758A114()
{
  result = qword_1EB997CF8;
  if (!qword_1EB997CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997CF8);
  }

  return result;
}

unint64_t sub_1B758A16C()
{
  result = qword_1EB997D00;
  if (!qword_1EB997D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D00);
  }

  return result;
}

unint64_t sub_1B758A1C4()
{
  result = qword_1EB997D08;
  if (!qword_1EB997D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D08);
  }

  return result;
}

unint64_t sub_1B758A21C()
{
  result = qword_1EB997D10;
  if (!qword_1EB997D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D10);
  }

  return result;
}

unint64_t sub_1B758A274()
{
  result = qword_1EB997D18;
  if (!qword_1EB997D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D18);
  }

  return result;
}

unint64_t sub_1B758A2CC()
{
  result = qword_1EB997D20;
  if (!qword_1EB997D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D20);
  }

  return result;
}

unint64_t sub_1B758A324()
{
  result = qword_1EB997D28;
  if (!qword_1EB997D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D28);
  }

  return result;
}

unint64_t sub_1B758A37C()
{
  result = qword_1EB997D30;
  if (!qword_1EB997D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D30);
  }

  return result;
}

unint64_t sub_1B758A3D4()
{
  result = qword_1EB997D38;
  if (!qword_1EB997D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D38);
  }

  return result;
}

unint64_t sub_1B758A42C()
{
  result = qword_1EB997D40;
  if (!qword_1EB997D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D40);
  }

  return result;
}

unint64_t sub_1B758A484()
{
  result = qword_1EB997D48;
  if (!qword_1EB997D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D48);
  }

  return result;
}

unint64_t sub_1B758A4DC()
{
  result = qword_1EB997D50;
  if (!qword_1EB997D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D50);
  }

  return result;
}

unint64_t sub_1B758A534()
{
  result = qword_1EB997D58;
  if (!qword_1EB997D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D58);
  }

  return result;
}

unint64_t sub_1B758A58C()
{
  result = qword_1EB997D60;
  if (!qword_1EB997D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D60);
  }

  return result;
}

unint64_t sub_1B758A5E4()
{
  result = qword_1EB997D68;
  if (!qword_1EB997D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D68);
  }

  return result;
}

unint64_t sub_1B758A63C()
{
  result = qword_1EB997D70;
  if (!qword_1EB997D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D70);
  }

  return result;
}

unint64_t sub_1B758A694()
{
  result = qword_1EB997D78;
  if (!qword_1EB997D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D78);
  }

  return result;
}

unint64_t sub_1B758A6EC()
{
  result = qword_1EB997D80;
  if (!qword_1EB997D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D80);
  }

  return result;
}

unint64_t sub_1B758A744()
{
  result = qword_1EB997D88;
  if (!qword_1EB997D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D88);
  }

  return result;
}

unint64_t sub_1B758A79C()
{
  result = qword_1EB997D90;
  if (!qword_1EB997D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D90);
  }

  return result;
}

unint64_t sub_1B758A7F4()
{
  result = qword_1EB997D98;
  if (!qword_1EB997D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997D98);
  }

  return result;
}

unint64_t sub_1B758A84C()
{
  result = qword_1EB997DA0;
  if (!qword_1EB997DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DA0);
  }

  return result;
}

unint64_t sub_1B758A8A4()
{
  result = qword_1EB997DA8;
  if (!qword_1EB997DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DA8);
  }

  return result;
}

unint64_t sub_1B758A8FC()
{
  result = qword_1EB997DB0;
  if (!qword_1EB997DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DB0);
  }

  return result;
}

unint64_t sub_1B758A954()
{
  result = qword_1EB997DB8;
  if (!qword_1EB997DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DB8);
  }

  return result;
}

unint64_t sub_1B758A9A8()
{
  result = qword_1EB997DC8;
  if (!qword_1EB997DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DC8);
  }

  return result;
}

unint64_t sub_1B758A9FC()
{
  result = qword_1EB997DD0;
  if (!qword_1EB997DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DD0);
  }

  return result;
}

unint64_t sub_1B758AA50()
{
  result = qword_1EB997DE0;
  if (!qword_1EB997DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DE0);
  }

  return result;
}

unint64_t sub_1B758AAA4()
{
  result = qword_1EB997DE8;
  if (!qword_1EB997DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DE8);
  }

  return result;
}

unint64_t sub_1B758AAF8()
{
  result = qword_1EB997DF8;
  if (!qword_1EB997DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997DF8);
  }

  return result;
}

unint64_t sub_1B758AB4C()
{
  result = qword_1EB997E00;
  if (!qword_1EB997E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E00);
  }

  return result;
}

unint64_t sub_1B758ABA0()
{
  result = qword_1EB997E10;
  if (!qword_1EB997E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E10);
  }

  return result;
}

uint64_t sub_1B758ABF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001B78850C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C6153616162 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736568736168 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B758AD14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4374706D65747461 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796150656C707061 && a2 == 0xEF736C6961746544 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875C70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xED000064496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465526969507369 && a2 == 0xED00006465746361 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B78850E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7885100 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B7885120 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B7885140 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7885160 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69)
  {

    return 14;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1B758B1F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001B7885180 == a2;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7880A40 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972747375646E69 && a2 == 0xEC00000065646F43 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B78851A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7880AC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC00000079746943 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B78851C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7880A80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7876A70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC000000656D614ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF6C6E6143776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF79746943776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF656D614E776152 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7880BC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xED00006574617453 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC00000065707954 || (sub_1B78020F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEB0000000070695ALL || (sub_1B78020F8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4E746E656D796170 && a2 == 0xEE006B726F777465 || (sub_1B78020F8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7880AA0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7880CB0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x686372654D626577 && a2 == 0xEF656D614E746E61 || (sub_1B78020F8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6C7255626577 && a2 == 0xE600000000000000)
  {

    return 22;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_1B758B9A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564757469746C61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7885020 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78851E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7885200 == a2)
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

unint64_t sub_1B758BB14()
{
  result = qword_1EB997E20;
  if (!qword_1EB997E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E20);
  }

  return result;
}

unint64_t sub_1B758BB68()
{
  result = qword_1EB997E38;
  if (!qword_1EB997E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E38);
  }

  return result;
}

unint64_t sub_1B758BBBC()
{
  result = qword_1EB997E48;
  if (!qword_1EB997E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E48);
  }

  return result;
}

unint64_t sub_1B758BC10()
{
  result = qword_1EB997E50;
  if (!qword_1EB997E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E50);
  }

  return result;
}

unint64_t sub_1B758BC64()
{
  result = qword_1EB997E58;
  if (!qword_1EB997E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E58);
  }

  return result;
}

unint64_t sub_1B758BCB8()
{
  result = qword_1EB997E60;
  if (!qword_1EB997E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E60);
  }

  return result;
}

unint64_t sub_1B758BD0C()
{
  result = qword_1EB997E68;
  if (!qword_1EB997E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E68);
  }

  return result;
}

unint64_t sub_1B758BD60()
{
  result = qword_1EB997E70;
  if (!qword_1EB997E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E70);
  }

  return result;
}

unint64_t sub_1B758BDB4()
{
  result = qword_1EB997E78;
  if (!qword_1EB997E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E78);
  }

  return result;
}

unint64_t sub_1B758BE08()
{
  result = qword_1EB997E80;
  if (!qword_1EB997E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997E80);
  }

  return result;
}

unint64_t sub_1B758BEA0()
{
  result = qword_1EB997EC8;
  if (!qword_1EB997EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997EC8);
  }

  return result;
}

unint64_t sub_1B758BEF8()
{
  result = qword_1EB997ED0;
  if (!qword_1EB997ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997ED0);
  }

  return result;
}

unint64_t sub_1B758BF50()
{
  result = qword_1EB997ED8;
  if (!qword_1EB997ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997ED8);
  }

  return result;
}

unint64_t sub_1B758BFA8()
{
  result = qword_1EB997EE0;
  if (!qword_1EB997EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997EE0);
  }

  return result;
}

unint64_t sub_1B758C000()
{
  result = qword_1EB997EE8;
  if (!qword_1EB997EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997EE8);
  }

  return result;
}

unint64_t sub_1B758C058()
{
  result = qword_1EB997EF0;
  if (!qword_1EB997EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997EF0);
  }

  return result;
}

unint64_t sub_1B758C0B0()
{
  result = qword_1EB997EF8;
  if (!qword_1EB997EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997EF8);
  }

  return result;
}

unint64_t sub_1B758C108()
{
  result = qword_1EB997F00;
  if (!qword_1EB997F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997F00);
  }

  return result;
}

unint64_t sub_1B758C160()
{
  result = qword_1EB997F08;
  if (!qword_1EB997F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997F08);
  }

  return result;
}

unint64_t sub_1B758C1B8()
{
  result = qword_1EB997F10;
  if (!qword_1EB997F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997F10);
  }

  return result;
}

unint64_t sub_1B758C210()
{
  result = qword_1EB997F18;
  if (!qword_1EB997F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997F18);
  }

  return result;
}

unint64_t sub_1B758C268()
{
  result = qword_1EB997F20;
  if (!qword_1EB997F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997F20);
  }

  return result;
}

uint64_t MapsInsightsService.__allocating_init(connection:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  [*(a1 + 16) resume];
  return v2;
}

uint64_t MapsInsightsService.init(connection:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  [*(a1 + 16) resume];
  return v1;
}

uint64_t MapsInsightsService.__allocating_init(extensionFinder:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B758C3CC, 0, 0);
}

uint64_t sub_1B758C3CC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v5 = type metadata accessor for XPCEntitlementChecker();
  v6 = swift_allocObject();
  v0[5] = v6;
  v7 = sub_1B7202D08(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992510);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *(v6 + 16) = v8;
  v0[2] = v6;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1B758C520;

  return static ExtensionServiceConfiguration.makeConnection<A, B>(extensionFinder:withBundleIdentifiers:entitlementChecker:)(v4, 0, (v0 + 2), &type metadata for MapsInsightsServiceConfiguration, v2, v5, &protocol witness table for MapsInsightsServiceConfiguration, v3);
}

uint64_t sub_1B758C520(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1B758C708;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1B758C66C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B758C66C()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  [*(v1 + 16) resume];
  __swift_destroy_boxed_opaque_existential_1(v2);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1B758C708()
{
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MapsInsightsService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PaymentTransactionDeleter.__allocating_init(coreDataStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PaymentTransactionDeleter.deletePaymentTransaction(with:for:)(Swift::String with, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = with._object;
  v7 = with._countAndFlagsBits;
  v10 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v8 = _os_activity_create(&dword_1B7198000, "bankConnect/deletePaymentTransaction", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);
  sub_1B758C968(v3, v7, v6, countAndFlagsBits, object);
  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
}