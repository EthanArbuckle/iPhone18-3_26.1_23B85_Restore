uint64_t sub_1B720D780(uint64_t a1)
{
  v2 = type metadata accessor for Duration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InternalAccount.isEnabledInPublicAPI.getter()
{
  v1 = type metadata accessor for InternalAccount();
  if (*(v0 + *(v1 + 96)) != 1 || *(v0 + *(v1 + 52)) == 1)
  {
    return 0;
  }

  v3 = v1;
  v4 = v0;
  v15 = &type metadata for UncheckedSendableUserDefaults;
  v16 = &protocol witness table for UncheckedSendableUserDefaults;
  v5 = swift_allocObject();
  v14 = v5;
  if (qword_1EDAF7308 != -1)
  {
    v8 = v5;
    swift_once();
    v5 = v8;
  }

  sub_1B7201D1C(&qword_1EDAF7310, v5 + 16);
  v11[0] = 0xD00000000000001DLL;
  v11[1] = 0x80000001B78753B0;
  v12 = 0;
  v13 = 1;
  v17 = &type metadata for DeviceInfo;
  v18 = &protocol witness table for DeviceInfo;
  sub_1B7205588(v11, v9, &qword_1EB98F140);
  if (v9[18] == 1 && ((*(v10 + 16))() & 1) == 0)
  {
    sub_1B7205418(v11, &qword_1EB98F140);
    v7 = v9[17];
    sub_1B7205418(v9, &qword_1EB98F140);
    if (v7 == 1)
    {
      return 1;
    }
  }

  else
  {
    v6 = sub_1B71FBF7C();
    sub_1B7205418(v11, &qword_1EB98F140);
    if (v6 == 2)
    {
      v6 = v9[16];
    }

    sub_1B7205418(v9, &qword_1EB98F140);
    if (v6)
    {
      return 1;
    }
  }

  if (*(v4 + *(v3 + 112)) - 1 <= 2)
  {
    return 1;
  }

  return *(v4 + *(v3 + 120));
}

uint64_t type metadata accessor for InternalAccount()
{
  result = qword_1EDAFA4A8;
  if (!qword_1EDAFA4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InternalAccount.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InternalAccount.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InternalAccount.fullyQualifiedAccountIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InternalAccount() + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

__n128 InternalAccount.fullyQualifiedAccountIdentifier.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for InternalAccount() + 20));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t InternalAccount.consentID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InternalAccount() + 24);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InternalAccount.consentID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalAccount() + 24);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InternalAccount.fpanIds.getter()
{
  type metadata accessor for InternalAccount();
}

uint64_t InternalAccount.fpanIds.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalAccount() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t InternalAccount.externalAccountId.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalAccount() + 32));

  return v1;
}

uint64_t InternalAccount.externalAccountId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalAccount() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalAccount.accountType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalAccount();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t InternalAccount.accountType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t InternalAccount.accountNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InternalAccount() + 40));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t InternalAccount.accountNumber.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for InternalAccount() + 40);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t InternalAccount.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalAccount() + 44));

  return v1;
}

uint64_t InternalAccount.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalAccount() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalAccount.accountDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalAccount() + 48));

  return v1;
}

uint64_t InternalAccount.accountDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalAccount() + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalAccount.accountStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalAccount();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t InternalAccount.accountStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t InternalAccount.backgroundRefreshUserPreference.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalAccount();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t InternalAccount.backgroundRefreshUserPreference.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t InternalAccount.currency.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalAccount() + 68));

  return v1;
}

uint64_t InternalAccount.currency.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalAccount() + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalAccount.creditLimit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InternalAccount() + 72);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
}

__n128 InternalAccount.creditLimit.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for InternalAccount() + 72);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t InternalAccount.minimumPaymentAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InternalAccount() + 80);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
}

__n128 InternalAccount.minimumPaymentAmount.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for InternalAccount() + 80);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t InternalAccount.overduePaymentAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InternalAccount() + 84);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
}

__n128 InternalAccount.overduePaymentAmount.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for InternalAccount() + 84);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t InternalAccount.actions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InternalAccount() + 92);

  return sub_1B72137A8(a1, v3);
}

uint64_t InternalAccount.isAccountEnabled.setter(char a1)
{
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t InternalAccount.isAccountMismatched.setter(char a1)
{
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t InternalAccount.accountRefreshFailure.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalAccount();
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t InternalAccount.accountRefreshFailure.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 104)) = v2;
  return result;
}

uint64_t InternalAccount.transactionsRefreshFailure.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalAccount();
  *a1 = *(v1 + *(result + 108));
  return result;
}

uint64_t InternalAccount.transactionsRefreshFailure.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 108)) = v2;
  return result;
}

uint64_t InternalAccount.originType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalAccount();
  *a1 = *(v1 + *(result + 112));
  return result;
}

uint64_t InternalAccount.originType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 112)) = v2;
  return result;
}

uint64_t InternalAccount.institutionName.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalAccount() + 116));

  return v1;
}

uint64_t InternalAccount.thirdPartyShareable.setter(char a1)
{
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t InternalAccount.loadingStatus.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for InternalAccount();
  *a1 = *(v1 + *(result + 128));
  return result;
}

uint64_t InternalAccount.loadingStatus.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 128)) = v2;
  return result;
}

uint64_t InternalAccount.preferences.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InternalAccount();
  *a1 = *(v1 + *(result + 132));
  return result;
}

uint64_t InternalAccount.preferences.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InternalAccount();
  *(v1 + *(result + 132)) = v2;
  return result;
}

uint64_t InternalAccount.init(id:fullyQualifiedAccountIdentifier:consentID:fpanIds:externalAccountId:accountType:accountNumber:displayName:accountDescription:accountStatus:backgroundRefreshUserPreference:backgroundRefreshUserPreferenceChangedAt:backgroundRefreshReminderDismissedAt:currency:creditLimit:nextPaymentDate:minimumPaymentAmount:overduePaymentAmount:accountBalance:actions:isAccountEnabled:isAccountMismatched:accountRefreshFailure:transactionsRefreshFailure:originType:institutionName:thirdPartyShareable:openingDate:loadingStatus:preferences:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, uint64_t a25, char a26, char a27, char *a28, char *a29, char *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, __int16 *a35, char *a36)
{
  v68 = *a2;
  v67 = *(a2 + 2);
  v66 = *(a2 + 3);
  v70 = *a7;
  v73 = *a8;
  v72 = a8[1];
  v71 = *(a8 + 16);
  v76 = *a14;
  v77 = *a15;
  v88 = *a29;
  v89 = *a28;
  v90 = *a30;
  v91 = *a35;
  v92 = *a36;
  v81 = *(a20 + 4);
  v85 = *(a22 + 4);
  v87 = *(a23 + 4);
  v37 = type metadata accessor for InternalAccount();
  v59 = (a9 + v37[8]);
  v61 = v37[13];
  v62 = (a9 + v37[12]);
  *(a9 + v61) = 4;
  v38 = v37[15];
  v57 = v38;
  v39 = sub_1B77FF988();
  v40 = *(*(v39 - 8) + 56);
  v79 = a23[1];
  v80 = *a23;
  v74 = a22[1];
  v75 = *a22;
  v69 = *a20;
  v65 = a20[1];
  v40(a9 + v38, 1, 1, v39);
  v41 = v37[16];
  v40(a9 + v41, 1, 1, v39);
  v42 = a9 + v37[18];
  *(v42 + 32) = 0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v60 = v37[19];
  v40(a9 + v60, 1, 1, v39);
  v43 = a9 + v37[20];
  *(v43 + 32) = 0;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  v44 = a9 + v37[21];
  *(v44 + 32) = 0;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v45 = v37[22];
  v58 = v45;
  v46 = type metadata accessor for InternalAccountBalance(0);
  (*(*(v46 - 8) + 56))(a9 + v45, 1, 1, v46);
  v63 = v37[26];
  *(a9 + v63) = 2;
  v47 = v37[27];
  *(a9 + v47) = 2;
  v48 = v47;
  v64 = v37[31];
  v40(a9 + v64, 1, 1, v39);
  v49 = sub_1B77FFA18();
  v50 = *(*(v49 - 8) + 32);
  v50(a9, a1, v49);
  v51 = a9 + v37[5];
  *v51 = v68;
  *(v51 + 16) = v67;
  *(v51 + 24) = v66;
  v50(a9 + v37[6], a3, v49);
  *(a9 + v37[7]) = a4;
  *v59 = a5;
  v59[1] = a6;
  *(a9 + v37[9]) = v70;
  v52 = a9 + v37[10];
  *v52 = v73;
  *(v52 + 8) = v72;
  *(v52 + 16) = v71;
  v53 = (a9 + v37[11]);
  *v53 = a10;
  v53[1] = a11;
  *v62 = a12;
  v62[1] = a13;
  *(a9 + v61) = v76;
  *(a9 + v37[14]) = v77;
  sub_1B7213740(a16, a9 + v57, &qword_1EB98EBD0);
  sub_1B7213740(a17, a9 + v41, &qword_1EB98EBD0);
  v54 = (a9 + v37[17]);
  *v54 = a18;
  v54[1] = a19;

  *v42 = v69;
  *(v42 + 16) = v65;
  *(v42 + 32) = v81;
  sub_1B7213740(a21, a9 + v60, &qword_1EB98EBD0);

  *v43 = v75;
  *(v43 + 16) = v74;
  *(v43 + 32) = v85;

  *v44 = v80;
  *(v44 + 16) = v79;
  *(v44 + 32) = v87;
  sub_1B7213740(a24, a9 + v58, &qword_1EB993A70);
  sub_1B72155F0(a25, a9 + v37[23], type metadata accessor for Actions);
  *(a9 + v37[24]) = a26;
  *(a9 + v37[25]) = a27;
  *(a9 + v63) = v89;
  *(a9 + v48) = v88;
  *(a9 + v37[28]) = v90;
  v55 = (a9 + v37[29]);
  *v55 = a31;
  v55[1] = a32;
  *(a9 + v37[30]) = a33;
  result = sub_1B7213740(a34, a9 + v64, &qword_1EB98EBD0);
  *(a9 + v37[32]) = v91;
  *(a9 + v37[33]) = v92;
  return result;
}

unint64_t sub_1B720F6DC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0x49746E65736E6F63;
      break;
    case 3:
      result = 0x7364496E617066;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x54746E756F636361;
      break;
    case 6:
      result = 0x4E746E756F636361;
      break;
    case 7:
      result = 0x4E79616C70736964;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x53746E756F636361;
      break;
    case 11:
      result = 0xD000000000000028;
      break;
    case 12:
      result = 0xD000000000000024;
      break;
    case 13:
      result = 0x79636E6572727563;
      break;
    case 14:
      result = 0x694C746964657263;
      break;
    case 15:
      result = 0x6D7961507478656ELL;
      break;
    case 16:
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0x42746E756F636361;
      break;
    case 19:
      result = 0x736E6F69746361;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 24:
      result = 0x79546E696769726FLL;
      break;
    case 25:
      result = 0x7475746974736E69;
      break;
    case 26:
      result = 0xD000000000000013;
      break;
    case 27:
      result = 0x44676E696E65706FLL;
      break;
    case 28:
      result = 0x53676E6964616F6CLL;
      break;
    case 29:
      result = 0x6E65726566657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B720FA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72168DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B720FAA0(uint64_t a1)
{
  v2 = sub_1B7214E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B720FADC(uint64_t a1)
{
  v2 = sub_1B7214E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InternalAccount.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F950);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7214E4C();
  sub_1B78023F8();
  LOBYTE(v31) = 0;
  sub_1B77FFA18();
  sub_1B71A68E0(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for InternalAccount();
    v10 = v9[5];
    v30 = v3;
    v11 = (v3 + v10);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    *&v31 = *v11;
    *(&v31 + 1) = v12;
    *&v32 = v13;
    *(&v32 + 1) = v14;
    v34 = 1;
    sub_1B7214EA0();

    sub_1B7801FC8();

    LOBYTE(v31) = 2;
    v15 = v30;
    sub_1B7801FC8();
    *&v31 = *(v15 + v9[7]);
    v34 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B721523C(&qword_1EB98F960);
    sub_1B7801FC8();
    LOBYTE(v31) = 4;
    sub_1B7801EF8();
    LOBYTE(v31) = *(v15 + v9[9]);
    v34 = 5;
    sub_1B7214EF4();
    sub_1B7801FC8();
    v16 = (v15 + v9[10]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v16) = *(v16 + 16);
    *&v31 = v17;
    *(&v31 + 1) = v18;
    LOBYTE(v32) = v16;
    v34 = 6;
    sub_1B7214F48();

    sub_1B7801FC8();

    LOBYTE(v31) = 7;
    sub_1B7801F78();
    LOBYTE(v31) = 8;
    sub_1B7801EF8();
    LOBYTE(v31) = *(v15 + v9[13]);
    v34 = 9;
    sub_1B7214F9C();
    sub_1B7801F38();
    LOBYTE(v31) = *(v15 + v9[14]);
    v34 = 10;
    sub_1B7214FF0();
    sub_1B7801FC8();
    LOBYTE(v31) = 11;
    sub_1B77FF988();
    sub_1B71A68E0(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    LOBYTE(v31) = 12;
    sub_1B7801F38();
    LOBYTE(v31) = 13;
    sub_1B7801F78();
    v19 = (v30 + v9[18]);
    v20 = *(v19 + 4);
    v21 = v19[1];
    v31 = *v19;
    v32 = v21;
    v33 = v20;
    v34 = 14;
    sub_1B7215044();

    sub_1B7801F38();

    LOBYTE(v31) = 15;
    sub_1B7801F38();
    v23 = (v30 + v9[20]);
    v24 = *(v23 + 4);
    v25 = v23[1];
    v31 = *v23;
    v32 = v25;
    v33 = v24;
    v34 = 16;

    sub_1B7801F38();

    v26 = (v30 + v9[21]);
    v27 = *(v26 + 4);
    v28 = v26[1];
    v31 = *v26;
    v32 = v28;
    v33 = v27;
    v34 = 17;

    sub_1B7801F38();

    LOBYTE(v31) = 18;
    type metadata accessor for InternalAccountBalance(0);
    sub_1B71A68E0(&qword_1EB98F990, type metadata accessor for InternalAccountBalance);
    sub_1B7801F38();
    LOBYTE(v31) = 19;
    type metadata accessor for Actions();
    sub_1B71A68E0(&qword_1EB98F998, type metadata accessor for Actions);
    sub_1B7801FC8();
    LOBYTE(v31) = 20;
    sub_1B7801F88();
    LOBYTE(v31) = 21;
    sub_1B7801F88();
    LOBYTE(v31) = *(v30 + v9[26]);
    v34 = 22;
    sub_1B7215098();
    sub_1B7801F38();
    LOBYTE(v31) = *(v30 + v9[27]);
    v34 = 23;
    sub_1B7801F38();
    LOBYTE(v31) = *(v30 + v9[28]);
    v34 = 24;
    sub_1B72150EC();
    sub_1B7801FC8();
    LOBYTE(v31) = 25;
    sub_1B7801F78();
    LOBYTE(v31) = 26;
    sub_1B7801F88();
    LOBYTE(v31) = 27;
    sub_1B7801F38();
    LOWORD(v31) = *(v30 + v9[32]);
    v34 = 28;
    sub_1B7215140();
    sub_1B7801FC8();
    LOBYTE(v31) = *(v30 + v9[33]);
    v34 = 29;
    sub_1B7215194();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InternalAccount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a1;
  v111 = a2;
  v108 = type metadata accessor for Actions();
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v112 = &v102 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v113 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v10);
  *&v114 = &v102 - v12;
  v120 = sub_1B77FFA18();
  v117 = *(v120 - 8);
  v13 = MEMORY[0x1EEE9AC00](v120);
  v116 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v102 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F9C0);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v133 = &v102 - v16;
  v17 = type metadata accessor for InternalAccount();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v115 = *(v18 + 52);
  v20[v115] = 4;
  v21 = *(v18 + 60);
  v22 = sub_1B77FF988();
  v23 = *(*(v22 - 8) + 56);
  v130 = v21;
  v23(&v20[v21], 1, 1, v22);
  v129 = v17[16];
  v23(&v20[v129], 1, 1, v22);
  v24 = &v20[v17[18]];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v126 = v24;
  v127 = v17[19];
  v23(&v20[v127], 1, 1, v22);
  v25 = &v20[v17[20]];
  *(v25 + 4) = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v124 = v25;
  v26 = &v20[v17[21]];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v123 = v26;
  v27 = v17[22];
  v28 = type metadata accessor for InternalAccountBalance(0);
  v29 = *(*(v28 - 8) + 56);
  v125 = v27;
  v29(&v20[v27], 1, 1, v28);
  v30 = v17[26];
  v20[v30] = 2;
  v31 = v17[27];
  v20[v31] = 2;
  v131 = v17;
  v132 = v20;
  v128 = v17[31];
  v23(&v20[v128], 1, 1, v22);
  __swift_project_boxed_opaque_existential_1(v134, v134[3]);
  sub_1B7214E4C();
  v32 = v122;
  sub_1B78023C8();
  if (v32)
  {
    v36 = v131;
    v35 = v132;
    __swift_destroy_boxed_opaque_existential_1(v134);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_4;
  }

  v105 = v28;
  v106 = v30;
  v122 = v31;
  LOBYTE(v135) = 0;
  sub_1B71A68E0(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  v33 = v118;
  v34 = v120;
  sub_1B7801E48();
  v41 = *(v117 + 32);
  v42 = v132;
  v41(v132, v33, v34);
  v138 = 1;
  sub_1B72151E8();
  sub_1B7801E48();
  v43 = v131;
  v44 = v136;
  v45 = &v42[v131[5]];
  *v45 = v135;
  *(v45 + 1) = v44;
  LOBYTE(v135) = 2;
  v46 = v116;
  v103 = 0;
  sub_1B7801E48();
  v41(&v42[v43[6]], v46, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  v138 = 3;
  sub_1B721523C(&qword_1EDAF64A8);
  sub_1B7801E48();
  *&v42[v43[7]] = v135;
  LOBYTE(v135) = 4;
  v49 = sub_1B7801D78();
  v50 = &v42[v43[8]];
  *v50 = v49;
  v50[1] = v51;
  v116 = v51;
  v138 = 5;
  sub_1B72152A8();
  sub_1B7801E48();
  v42[v43[9]] = v135;
  v138 = 6;
  sub_1B72152FC();
  sub_1B7801E48();
  v52 = *(&v135 + 1);
  v53 = v136;
  v54 = &v42[v43[10]];
  *v54 = v135;
  *(v54 + 1) = v52;
  v54[16] = v53;
  LOBYTE(v135) = 7;
  v55 = sub_1B7801DF8();
  v56 = &v42[v43[11]];
  *v56 = v55;
  v56[1] = v57;
  LOBYTE(v135) = 8;
  v58 = sub_1B7801D78();
  v118 = 0;
  v60 = &v42[v43[12]];
  *v60 = v58;
  v60[1] = v59;
  v104 = v59;
  v138 = 9;
  sub_1B7215350();
  v61 = v118;
  sub_1B7801DB8();
  v118 = v61;
  if (v61 || (v132[v115] = v135, v138 = 10, sub_1B72153A4(), v62 = v118, sub_1B7801E48(), (v118 = v62) != 0) || (v132[v131[14]] = v135, LOBYTE(v135) = 11, sub_1B71A68E0(&unk_1EDAF65E0, MEMORY[0x1E6969530]), v63 = v118, sub_1B7801DB8(), (v118 = v63) != 0) || (sub_1B7213740(v114, &v132[v130], &qword_1EB98EBD0), LOBYTE(v135) = 12, v64 = v118, sub_1B7801DB8(), (v118 = v64) != 0) || (sub_1B7213740(v113, &v132[v129], &qword_1EB98EBD0), LOBYTE(v135) = 13, v65 = v118, v66 = sub_1B7801DF8(), (v118 = v65) != 0))
  {
    (*(v119 + 8))(v133, v121);
    v39 = 0;
    v38 = 0;
    v37 = 0;
    LODWORD(v133) = 1;
    LODWORD(v122) = 1;
    LODWORD(v121) = 1;
  }

  else
  {
    v69 = &v132[v131[17]];
    *v69 = v66;
    v69[1] = v67;
    v138 = 14;
    sub_1B72153F8();
    v70 = v118;
    sub_1B7801DB8();
    v118 = v70;
    if (v70 || (v71 = v137, v72 = v126, v115 = v135, v114 = v136, , v73 = v114, *v72 = v115, *(v72 + 1) = v73, *(v72 + 4) = v71, LOBYTE(v135) = 15, v74 = v118, sub_1B7801DB8(), (v118 = v74) != 0) || (sub_1B7213740(v112, &v132[v127], &qword_1EB98EBD0), v138 = 16, v75 = v118, sub_1B7801DB8(), (v118 = v75) != 0) || (v76 = v137, v77 = v124, v115 = v135, v114 = v136, , v78 = v114, *v77 = v115, *(v77 + 1) = v78, *(v77 + 4) = v76, v138 = 17, v79 = v118, sub_1B7801DB8(), (v118 = v79) != 0) || (v80 = v137, v81 = v123, v115 = v135, v114 = v136, , v82 = v114, *v81 = v115, *(v81 + 1) = v82, *(v81 + 4) = v80, LOBYTE(v135) = 18, sub_1B71A68E0(&qword_1EB98F9F0, type metadata accessor for InternalAccountBalance), v83 = v118, sub_1B7801DB8(), (v118 = v83) != 0) || (sub_1B7213740(v107, &v132[v125], &qword_1EB993A70), LOBYTE(v135) = 19, sub_1B71A68E0(&qword_1EB98F9F8, type metadata accessor for Actions), v84 = v118, sub_1B7801E48(), (v118 = v84) != 0))
    {
      (*(v119 + 8))(v133, v121);
      v38 = 0;
      v37 = 0;
      LODWORD(v133) = 1;
      LODWORD(v122) = 1;
      LODWORD(v121) = 1;
      v39 = 1;
    }

    else
    {
      sub_1B72155F0(v109, &v132[v131[23]], type metadata accessor for Actions);
      LOBYTE(v135) = 20;
      v85 = v118;
      v86 = sub_1B7801E08();
      v118 = v85;
      if (v85 || (v132[v131[24]] = v86 & 1, LOBYTE(v135) = 21, v87 = v118, v88 = sub_1B7801E08(), (v118 = v87) != 0) || (v132[v131[25]] = v88 & 1, v138 = 22, sub_1B721544C(), v89 = v118, sub_1B7801DB8(), (v118 = v89) != 0) || (v132[v106] = v135, v138 = 23, v90 = v118, sub_1B7801DB8(), (v118 = v90) != 0) || (v132[v122] = v135, v138 = 24, sub_1B72154A0(), v91 = v118, sub_1B7801E48(), (v118 = v91) != 0) || (v132[v131[28]] = v135, LOBYTE(v135) = 25, v92 = v118, v93 = sub_1B7801DF8(), (v118 = v92) != 0))
      {
        (*(v119 + 8))(v133, v121);
        v37 = 0;
        LODWORD(v133) = 1;
        LODWORD(v122) = 1;
        LODWORD(v121) = 1;
        v39 = 1;
        v38 = 1;
      }

      else
      {
        v95 = &v132[v131[29]];
        *v95 = v93;
        v95[1] = v94;
        LOBYTE(v135) = 26;
        v96 = v118;
        v97 = sub_1B7801E08();
        v118 = v96;
        if (!v96)
        {
          v132[v131[30]] = v97 & 1;
          LOBYTE(v135) = 27;
          v98 = v118;
          sub_1B7801DB8();
          v118 = v98;
          if (!v98)
          {
            sub_1B7213740(v110, &v132[v128], &qword_1EB98EBD0);
            v138 = 28;
            sub_1B72154F4();
            v99 = v118;
            sub_1B7801E48();
            v118 = v99;
            if (!v99)
            {
              *&v132[v131[32]] = v135;
              v138 = 29;
              sub_1B7215548();
              v100 = v118;
              sub_1B7801E48();
              v118 = v100;
              if (!v100)
              {
                (*(v119 + 8))(v133, v121);
                v101 = v132;
                v132[v131[33]] = v135;
                sub_1B7215658(v101, v111, type metadata accessor for InternalAccount);
                __swift_destroy_boxed_opaque_existential_1(v134);
                return sub_1B72156C0(v101, type metadata accessor for InternalAccount);
              }
            }
          }
        }

        (*(v119 + 8))(v133, v121);
        LODWORD(v133) = 1;
        LODWORD(v122) = 1;
        LODWORD(v121) = 1;
        v39 = 1;
        v38 = 1;
        v37 = 1;
      }
    }
  }

  v68 = v117;
  v36 = v131;
  v35 = v132;
  v47 = v103;
  __swift_destroy_boxed_opaque_existential_1(v134);
  v48 = *(v68 + 8);
  v48(v35, v120);
  if (v47)
  {
    if (!v133)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v133)
  {
LABEL_14:
    v48(&v35[v36[6]], v120);
  }

LABEL_18:

  if (v122)
  {

    if ((v121 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (!v121)
  {
    goto LABEL_5;
  }

LABEL_4:

LABEL_5:

  sub_1B7205418(&v35[v130], &qword_1EB98EBD0);
  sub_1B7205418(&v35[v129], &qword_1EB98EBD0);
  if (v39)
  {
  }

  sub_1B7205418(&v35[v127], &qword_1EB98EBD0);

  sub_1B7205418(&v35[v125], &qword_1EB993A70);
  if (v38)
  {
    sub_1B72156C0(&v35[v36[23]], type metadata accessor for Actions);
  }

  if (v37)
  {
  }

  return sub_1B7205418(&v35[v128], &qword_1EB98EBD0);
}

uint64_t _s10FinanceKit12AssetAccountV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InternalAccount.hash(into:)()
{
  sub_1B77FFA18();
  sub_1B71A68E0(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);

  return sub_1B7800768();
}

uint64_t InternalAccount.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A68E0(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7211D3C()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A68E0(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7211DC4()
{
  sub_1B77FFA18();
  sub_1B71A68E0(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);

  return sub_1B7800768();
}

uint64_t sub_1B7211E48()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A68E0(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

BOOL sub_1B7211FF0(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1B7212020@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1B721204C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *sub_1B7212124@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t FullyQualifiedAccountIdentifier.accountID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FullyQualifiedAccountIdentifier.accountID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FullyQualifiedAccountIdentifier.institutionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FullyQualifiedAccountIdentifier.institutionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

FinanceKit::FullyQualifiedAccountIdentifier __swiftcall FullyQualifiedAccountIdentifier.init(accountID:institutionID:)(Swift::String accountID, Swift::String institutionID)
{
  *v2 = accountID;
  v2[1] = institutionID;
  result.institutionID = institutionID;
  result.accountID = accountID;
  return result;
}

uint64_t sub_1B7212264()
{
  if (*v0)
  {
    return 0x7475746974736E69;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_1B72122B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xED000044496E6F69)
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

uint64_t sub_1B721239C(uint64_t a1)
{
  v2 = sub_1B721559C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72123D8(uint64_t a1)
{
  v2 = sub_1B721559C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FullyQualifiedAccountIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FA20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B721559C();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FullyQualifiedAccountIdentifier.hash(into:)()
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t FullyQualifiedAccountIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t FullyQualifiedAccountIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FA30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B721559C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1B7801DF8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FullyQualifiedAccountIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
  MEMORY[0x1B8CA4D30](v1, v2);
  MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
  MEMORY[0x1B8CA4D30](v3, v4);
  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  return 0;
}

uint64_t FKBankConnectRefreshFailure.init(from:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 1;
  if (v1)
  {
    v2 = 2;
  }

  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

id FKActions.init(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Actions();
  v17 = v16[6];
  v34 = a1;
  sub_1B7205588(a1 + v17, v15, &unk_1EB994C70);
  v18 = sub_1B77FF4F8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v15, 1, v18) != 1)
  {
    v21 = sub_1B77FF3F8();
    (*(v19 + 8))(v15, v18);
  }

  sub_1B7205588(v34 + v16[5], v13, &unk_1EB994C70);
  v22 = v20(v13, 1, v18);
  v32 = v21;
  if (v22 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_1B77FF3F8();
    (*(v19 + 8))(v13, v18);
  }

  sub_1B7205588(v34, v10, &unk_1EB994C70);
  if (v20(v10, 1, v18) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1B77FF3F8();
    (*(v19 + 8))(v10, v18);
  }

  sub_1B7205588(v34 + v16[7], v7, &unk_1EB994C70);
  if (v20(v7, 1, v18) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1B77FF3F8();
    (*(v19 + 8))(v7, v18);
  }

  v26 = v33;
  sub_1B7205588(v34 + v16[8], v33, &unk_1EB994C70);
  if (v20(v26, 1, v18) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_1B77FF3F8();
    (*(v19 + 8))(v26, v18);
  }

  v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v29 = v32;
  v30 = [v28 initWithDigitalServicingURL:v32 payNowURL:v23 transferFundsURL:v24 postInstallmentURL:v25 redeemRewardsURL:v27];

  sub_1B72156C0(v34, type metadata accessor for Actions);
  return v30;
}

id FKAccount.init(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v92 = &v81 - v3;
  v89 = type metadata accessor for InternalAccountBalance(0);
  v88 = *(v89 - 8);
  v4 = MEMORY[0x1EEE9AC00](v89);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v81 - v8;
  v9 = type metadata accessor for Actions();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205540(0, &qword_1EB98FA38);
  v12 = type metadata accessor for InternalAccount();
  sub_1B7215658(a1 + v12[23], v11, type metadata accessor for Actions);
  v91 = FKActions.init(from:)(v11);
  v13 = v12[18];
  v94 = a1;
  v14 = (a1 + v13);
  v15 = v14[4];
  if (v15)
  {
    v17 = v14[2];
    v16 = v14[3];
    v19 = *v14;
    v18 = v14[1];
    v20 = objc_allocWithZone(FKAmount);
    v96 = v19;
    v97 = v18;
    v98 = v17;
    v99 = v16;
    v100 = v15;
    sub_1B7215720(&v96, &v101);
    v21 = sub_1B7801608();
    v101 = v19;
    v102 = v18;
    v103 = v17;
    v104 = v16;
    v105 = v15;
    sub_1B7215720(&v101, v95);
    v22 = sub_1B7800838();

    v90 = [v20 initWithDecimalNumber:v21 currency:v22];
  }

  else
  {
    v90 = 0;
  }

  v23 = (v94 + v12[20]);
  v24 = v23[4];
  if (v24)
  {
    v26 = v23[2];
    v25 = v23[3];
    v28 = *v23;
    v27 = v23[1];
    v29 = objc_allocWithZone(FKAmount);
    v96 = v28;
    v97 = v27;
    v98 = v26;
    v99 = v25;
    v100 = v24;
    sub_1B7215720(&v96, &v101);
    v30 = sub_1B7801608();
    v101 = v28;
    v102 = v27;
    v103 = v26;
    v104 = v25;
    v105 = v24;
    sub_1B7215720(&v101, v95);
    v31 = sub_1B7800838();

    v87 = [v29 initWithDecimalNumber:v30 currency:v31];
  }

  else
  {
    v87 = 0;
  }

  v32 = (v94 + v12[21]);
  v33 = v32[4];
  if (v33)
  {
    v35 = v32[2];
    v34 = v32[3];
    v37 = *v32;
    v36 = v32[1];
    v38 = objc_allocWithZone(FKAmount);
    v96 = v37;
    v97 = v36;
    v98 = v35;
    v99 = v34;
    v100 = v33;
    sub_1B7215720(&v96, &v101);
    v39 = sub_1B7801608();
    v101 = v37;
    v102 = v36;
    v103 = v35;
    v104 = v34;
    v105 = v33;
    sub_1B7215720(&v101, v95);
    v40 = sub_1B7800838();

    v86 = [v38 initWithDecimalNumber:v39 currency:v40];
  }

  else
  {
    v86 = 0;
  }

  v41 = v94;
  v42 = objc_allocWithZone(FKFullyQualifiedAccountIdentifier);
  v43 = sub_1B7800838();
  v44 = sub_1B7800838();
  v85 = [v42 initWithAccountID:v43 institutionID:v44];

  v83 = *(v41 + v12[9]);
  v45 = v84;
  sub_1B7205588(v41 + v12[22], v84, &qword_1EB993A70);
  if ((*(v88 + 48))(v45, 1, v89) == 1)
  {
    v89 = 0;
  }

  else
  {
    v46 = v81;
    sub_1B72155F0(v45, v81, type metadata accessor for InternalAccountBalance);
    sub_1B7205540(0, &qword_1EB98FA40);
    v47 = v82;
    sub_1B7215658(v46, v82, type metadata accessor for InternalAccountBalance);
    v89 = FKBalance.init(_:)(v47);
    sub_1B72156C0(v46, type metadata accessor for InternalAccountBalance);
  }

  v48 = v92;
  v49 = v94;
  v50 = *(v94 + v12[26]);
  v51 = *(v94 + v12[27]);
  v52 = *(v94 + v12[32]);
  v92 = sub_1B77FF9B8();
  v88 = sub_1B7800838();
  v84 = sub_1B7800838();
  sub_1B7205588(v49 + v12[19], v48, &qword_1EB98EBD0);
  v53 = sub_1B77FF988();
  v54 = *(v53 - 8);
  v55 = 0;
  if ((*(v54 + 48))(v48, 1, v53) != 1)
  {
    v55 = sub_1B77FF8B8();
    (*(v54 + 8))(v48, v53);
  }

  v81 = v52 & 1;
  v56 = 1;
  if (v51)
  {
    v57 = 2;
  }

  else
  {
    v57 = 1;
  }

  if (v51 == 2)
  {
    v58 = 0;
  }

  else
  {
    v58 = v57;
  }

  if (v50)
  {
    v56 = 2;
  }

  if (v50 == 2)
  {
    v59 = 0;
  }

  else
  {
    v59 = v56;
  }

  v60 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v61 = v94;
  v62 = *(v94 + v12[24]);
  v63 = *(v94 + v12[25]);
  v82 = v55;
  v64 = v91;
  v65 = sub_1B77FF9B8();
  LOBYTE(v80) = *(v61 + v12[33]);
  v79 = v58;
  v78 = v59;
  BYTE1(v77) = v63;
  LOBYTE(v77) = v62;
  v66 = v86;
  v76 = v55;
  v67 = v87;
  v68 = v90;
  v69 = v60;
  v70 = v92;
  v71 = v85;
  v72 = v88;
  v73 = v84;
  v74 = v89;
  v93 = [v69 initWithIdentifier:v92 fullyQualifiedAccountIdentifier:v85 accountType:v83 displayName:v88 displayAccountNumberValue:v84 balance:v89 creditLimit:v90 minimumPaymentAmount:v87 nextPaymentDate:v76 overduePaymentAmount:v86 actions:v64 isAccountEnabled:v77 isAccountMismatched:v65 consentUUID:v78 accountRefreshFailure:v79 transactionsRefreshFailure:v81 loadingStatus:v80 userSuppressedNotifications:?];

  sub_1B72156C0(v94, type metadata accessor for InternalAccount);
  return v93;
}

uint64_t static ManagedInternalAccount.attributeNamesByKeyPath.getter()
{
  if (qword_1EDAF8080 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B72136E4()
{
  if (qword_1EDAF8080 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B7213740(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72137A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10FinanceKit15InternalAccountV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v174 = type metadata accessor for InternalAccountBalance(0);
  v172 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v170 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v173 = &v159 - v6;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAB0);
  MEMORY[0x1EEE9AC00](v171);
  v175 = (&v159 - v7);
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v169 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v159 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v159 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v159 - v20;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v22 = MEMORY[0x1EEE9AC00](v177);
  v168 = (&v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v159 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v159 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v159 - v30;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v164 = v9;
  v163 = v8;
  v167 = type metadata accessor for InternalAccount();
  v32 = v167[5];
  v165 = a1;
  v33 = a1 + v32;
  v34 = *(a1 + v32);
  v35 = *(a1 + v32 + 8);
  v36 = *(a1 + v32 + 16);
  v37 = *(v33 + 24);
  v166 = a2;
  v38 = (a2 + v32);
  v39 = v38[2];
  v40 = v38[3];
  if ((v34 != *v38 || v35 != v38[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((v36 != v39 || v37 != v40) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v41 = v167;
  v42 = v165;
  v43 = v166;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1B731D168(*(v42 + v41[7]), *(v43 + v41[7])) & 1) == 0)
  {
    goto LABEL_18;
  }

  v44 = v41[8];
  v45 = (v42 + v44);
  v46 = *(v42 + v44 + 8);
  v47 = (v43 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v48)
  {
LABEL_18:
    v49 = 0;
    return v49 & 1;
  }

  if (*(v42 + v41[9]) != *(v43 + v41[9]))
  {
    goto LABEL_18;
  }

  v51 = v41[10];
  v52 = *(v42 + v51);
  v53 = *(v42 + v51 + 8);
  v54 = *(v42 + v51 + 16);
  v55 = v43 + v51;
  v56 = *(v55 + 16);
  if (v52 == *v55 && v53 == *(v55 + 8))
  {
    if (v54 != v56)
    {
      goto LABEL_18;
    }

LABEL_26:
    v58 = v167;
    v59 = v167[11];
    v60 = *(v42 + v59);
    v61 = *(v42 + v59 + 8);
    v62 = (v43 + v59);
    if ((v60 != *v62 || v61 != v62[1]) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_18;
    }

    v63 = v58[12];
    v64 = (v42 + v63);
    v65 = *(v42 + v63 + 8);
    v66 = (v43 + v63);
    v67 = v66[1];
    if (v65)
    {
      if (!v67 || (*v64 != *v66 || v65 != v67) && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v67)
    {
      goto LABEL_18;
    }

    v68 = v58[13];
    v69 = *(v42 + v68);
    v70 = *(v43 + v68);
    if (v69 == 4)
    {
      if (v70 != 4)
      {
        goto LABEL_18;
      }
    }

    else if (v69 != v70)
    {
      goto LABEL_18;
    }

    if (*(v42 + v58[14]) != *(v43 + v58[14]))
    {
      goto LABEL_18;
    }

    v71 = v42;
    v72 = v43;
    v73 = v58[15];
    v74 = *(v177 + 48);
    sub_1B7205588(v71 + v73, v31, &qword_1EB98EBD0);
    v162 = v74;
    sub_1B7205588(v72 + v73, &v31[v74], &qword_1EB98EBD0);
    v76 = v164 + 48;
    v75 = *(v164 + 48);
    v77 = v163;
    if (v75(v31, 1, v163) == 1)
    {
      if (v75(&v31[v162], 1, v77) == 1)
      {
        v160 = v75;
        sub_1B7205418(v31, &qword_1EB98EBD0);
        goto LABEL_48;
      }
    }

    else
    {
      sub_1B7205588(v31, v21, &qword_1EB98EBD0);
      v78 = v162;
      if (v75(&v31[v162], 1, v77) != 1)
      {
        v160 = v75;
        v161 = v76;
        v81 = v164;
        v82 = v176;
        (*(v164 + 32))(v176, &v31[v78], v77);
        sub_1B71A68E0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
        LODWORD(v162) = sub_1B7800828();
        v83 = *(v81 + 8);
        v83(v82, v77);
        v83(v21, v77);
        v76 = v161;
        sub_1B7205418(v31, &qword_1EB98EBD0);
        if ((v162 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_48:
        v84 = v167[16];
        v85 = *(v177 + 48);
        sub_1B7205588(v165 + v84, v29, &qword_1EB98EBD0);
        sub_1B7205588(v166 + v84, &v29[v85], &qword_1EB98EBD0);
        v86 = v163;
        v87 = v160;
        v88 = v160(v29, 1, v163);
        v161 = v76;
        if (v88 == 1)
        {
          if (v87(&v29[v85], 1, v86) == 1)
          {
            sub_1B7205418(v29, &qword_1EB98EBD0);
            goto LABEL_55;
          }
        }

        else
        {
          sub_1B7205588(v29, v19, &qword_1EB98EBD0);
          if (v87(&v29[v85], 1, v86) != 1)
          {
            v89 = v164;
            v90 = v176;
            (*(v164 + 32))(v176, &v29[v85], v86);
            sub_1B71A68E0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
            v91 = sub_1B7800828();
            v92 = *(v89 + 8);
            v92(v90, v86);
            v92(v19, v86);
            sub_1B7205418(v29, &qword_1EB98EBD0);
            if ((v91 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_55:
            v93 = v167;
            v94 = v167[17];
            v95 = v165;
            v96 = *(v165 + v94);
            v97 = *(v165 + v94 + 8);
            v98 = (v166 + v94);
            if ((v96 != *v98 || v97 != v98[1]) && (sub_1B78020F8() & 1) == 0)
            {
              goto LABEL_18;
            }

            v99 = v93[18];
            v100 = *(v95 + v99 + 8);
            v162 = *(v95 + v99);
            v102 = *(v95 + v99 + 16);
            v101 = *(v95 + v99 + 24);
            v103 = *(v95 + v99 + 32);
            v104 = (v166 + v99);
            v106 = *v104;
            v105 = v104[1];
            v107 = v104[3];
            v159 = v104[2];
            v108 = v104[4];
            if (v103)
            {
              if (v108)
              {
                swift_bridgeObjectRetain_n();

                if (MEMORY[0x1B8CA5970](v162, v100, v102, v106, v105, v159))
                {
                  if (v101 == v107 && v103 == v108)
                  {

LABEL_74:
                    v178 = v162;
                    v179 = v100;
                    v180 = v102;
                    v181 = v101;
                    v182 = v103;
                    sub_1B721722C(&v178);
                    goto LABEL_75;
                  }

                  v109 = sub_1B78020F8();

                  if (v109)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                }

                v178 = v162;
LABEL_71:
                v179 = v100;
                v180 = v102;
                v181 = v101;
                v182 = v103;
                sub_1B721722C(&v178);

                goto LABEL_18;
              }

              v178 = v162;
              v179 = v100;
              v180 = v102;
              v181 = v101;
              v182 = v103;
              swift_bridgeObjectRetain_n();
              sub_1B721722C(&v178);
            }

            else
            {
              if (!v108)
              {
LABEL_75:

                v110 = v167[19];
                v111 = *(v177 + 48);
                sub_1B7205588(v165 + v110, v26, &qword_1EB98EBD0);
                sub_1B7205588(v166 + v110, &v26[v111], &qword_1EB98EBD0);
                if (v160(v26, 1, v163) == 1)
                {
                  if (v160(&v26[v111], 1, v163) == 1)
                  {
                    sub_1B7205418(v26, &qword_1EB98EBD0);
                    goto LABEL_83;
                  }
                }

                else
                {
                  sub_1B7205588(v26, v16, &qword_1EB98EBD0);
                  if (v160(&v26[v111], 1, v163) != 1)
                  {
                    v112 = v164;
                    v113 = v176;
                    v114 = v163;
                    (*(v164 + 32))(v176, &v26[v111], v163);
                    sub_1B71A68E0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
                    v115 = sub_1B7800828();
                    v116 = *(v112 + 8);
                    v116(v113, v114);
                    v116(v16, v114);
                    sub_1B7205418(v26, &qword_1EB98EBD0);
                    if ((v115 & 1) == 0)
                    {
                      goto LABEL_18;
                    }

LABEL_83:
                    v117 = v167[20];
                    v118 = *(v165 + v117);
                    v100 = *(v165 + v117 + 8);
                    v102 = *(v165 + v117 + 16);
                    v101 = *(v165 + v117 + 24);
                    v103 = *(v165 + v117 + 32);
                    v119 = (v166 + v117);
                    v121 = *v119;
                    v120 = v119[1];
                    v123 = v119[2];
                    v122 = v119[3];
                    v124 = v119[4];
                    if (v103)
                    {
                      if (!v124)
                      {
LABEL_99:
                        v178 = v118;
                        v179 = v100;
                        v180 = v102;
                        v181 = v101;
                        v182 = v103;
                        swift_bridgeObjectRetain_n();
                        sub_1B721722C(&v178);
LABEL_104:
                        v178 = v118;
                        v179 = v100;
                        v180 = v102;
                        v181 = v101;
                        v182 = v103;
                        v183 = v121;
                        v184 = v120;
                        v185 = v123;
                        v186 = v122;
                        v187 = v124;
                        goto LABEL_68;
                      }

                      swift_bridgeObjectRetain_n();

                      if ((MEMORY[0x1B8CA5970](v118, v100, v102, v121, v120, v123) & 1) == 0)
                      {
LABEL_100:

                        goto LABEL_101;
                      }

                      if (v101 == v122 && v103 == v124)
                      {
                      }

                      else
                      {
                        v125 = sub_1B78020F8();

                        if ((v125 & 1) == 0)
                        {
LABEL_101:
                          v178 = v118;
                          goto LABEL_71;
                        }
                      }

                      v178 = v118;
                      v179 = v100;
                      v180 = v102;
                      v181 = v101;
                      v182 = v103;
                      sub_1B721722C(&v178);
                    }

                    else if (v124)
                    {
                      goto LABEL_103;
                    }

                    v126 = v167[21];
                    v118 = *(v165 + v126);
                    v100 = *(v165 + v126 + 8);
                    v102 = *(v165 + v126 + 16);
                    v101 = *(v165 + v126 + 24);
                    v103 = *(v165 + v126 + 32);
                    v127 = (v166 + v126);
                    v121 = *v127;
                    v120 = v127[1];
                    v123 = v127[2];
                    v122 = v127[3];
                    v124 = v127[4];
                    if (v103)
                    {
                      if (v124)
                      {
                        swift_bridgeObjectRetain_n();

                        if (MEMORY[0x1B8CA5970](v118, v100, v102, v121, v120, v123))
                        {
                          if (v101 == v122 && v103 == v124)
                          {

LABEL_107:
                            v178 = v118;
                            v179 = v100;
                            v180 = v102;
                            v181 = v101;
                            v182 = v103;
                            sub_1B721722C(&v178);
                            goto LABEL_108;
                          }

                          v128 = sub_1B78020F8();

                          if (v128)
                          {
                            goto LABEL_107;
                          }

                          goto LABEL_101;
                        }

                        goto LABEL_100;
                      }

                      goto LABEL_99;
                    }

                    if (!v124)
                    {
LABEL_108:

                      v129 = v167[22];
                      v130 = *(v171 + 48);
                      v131 = v175;
                      sub_1B7205588(v165 + v129, v175, &qword_1EB993A70);
                      sub_1B7205588(v166 + v129, v131 + v130, &qword_1EB993A70);
                      v132 = *(v172 + 48);
                      if (v132(v131, 1, v174) == 1)
                      {
                        if (v132(v175 + v130, 1, v174) == 1)
                        {
                          sub_1B7205418(v175, &qword_1EB993A70);
LABEL_111:
                          if (!_s10FinanceKit7ActionsV2eeoiySbAC_ACtFZ_0(v165 + v167[23], v166 + v167[23]) || *(v165 + v167[24]) != *(v166 + v167[24]) || *(v165 + v167[25]) != *(v166 + v167[25]))
                          {
                            goto LABEL_18;
                          }

                          v133 = v167[26];
                          v134 = *(v165 + v133);
                          v135 = *(v166 + v133);
                          if (v134 == 2)
                          {
                            if (v135 != 2)
                            {
                              goto LABEL_18;
                            }
                          }

                          else if (v135 == 2 || ((v135 ^ v134) & 1) != 0)
                          {
                            goto LABEL_18;
                          }

                          v140 = v167[27];
                          v141 = *(v165 + v140);
                          v142 = *(v166 + v140);
                          if (v141 == 2)
                          {
                            if (v142 != 2)
                            {
                              goto LABEL_18;
                            }
                          }

                          else if (v142 == 2 || ((v142 ^ v141) & 1) != 0)
                          {
                            goto LABEL_18;
                          }

                          if (*(v165 + v167[28]) != *(v166 + v167[28]))
                          {
                            goto LABEL_18;
                          }

                          v143 = v167[29];
                          v144 = (v165 + v143);
                          v145 = *(v165 + v143 + 8);
                          v146 = (v166 + v143);
                          if ((*v144 != *v146 || v145 != v146[1]) && (sub_1B78020F8() & 1) == 0)
                          {
                            goto LABEL_18;
                          }

                          if (*(v165 + v167[30]) != *(v166 + v167[30]))
                          {
                            goto LABEL_18;
                          }

                          v147 = v168;
                          v148 = v167[31];
                          v149 = *(v177 + 48);
                          sub_1B7205588(v165 + v148, v168, &qword_1EB98EBD0);
                          sub_1B7205588(v166 + v148, v147 + v149, &qword_1EB98EBD0);
                          if (v160(v147, 1, v163) == 1)
                          {
                            if (v160(v168 + v149, 1, v163) == 1)
                            {
                              sub_1B7205418(v168, &qword_1EB98EBD0);
                              goto LABEL_144;
                            }
                          }

                          else
                          {
                            v150 = v168;
                            sub_1B7205588(v168, v169, &qword_1EB98EBD0);
                            if (v160((v150 + v149), 1, v163) != 1)
                            {
                              v151 = v164;
                              v152 = v168;
                              v153 = v168 + v149;
                              v154 = v176;
                              v155 = v163;
                              (*(v164 + 32))(v176, v153, v163);
                              sub_1B71A68E0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
                              v156 = v169;
                              v157 = sub_1B7800828();
                              v158 = *(v151 + 8);
                              v158(v154, v155);
                              v158(v156, v155);
                              sub_1B7205418(v152, &qword_1EB98EBD0);
                              if ((v157 & 1) == 0)
                              {
                                goto LABEL_18;
                              }

LABEL_144:
                              if (*(v165 + v167[32]) == *(v166 + v167[32]))
                              {
                                v49 = *(v165 + v167[33]) ^ *(v166 + v167[33]) ^ 1;
                                return v49 & 1;
                              }

                              goto LABEL_18;
                            }

                            (*(v164 + 8))(v169, v163);
                          }

                          v79 = &qword_1EB98FCE0;
                          v80 = v168;
LABEL_81:
                          sub_1B7205418(v80, v79);
                          goto LABEL_18;
                        }
                      }

                      else
                      {
                        v136 = v175;
                        sub_1B7205588(v175, v173, &qword_1EB993A70);
                        if (v132((v136 + v130), 1, v174) != 1)
                        {
                          sub_1B72155F0(v175 + v130, v170, type metadata accessor for InternalAccountBalance);
                          if (_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0())
                          {
                            v137 = v173;
                            v138 = v170;
                            v139 = _s10FinanceKit18BalanceCalculationO2eeoiySbAC_ACtFZ_0(v173 + *(v174 + 20), v170 + *(v174 + 20));
                            sub_1B72156C0(v138, type metadata accessor for InternalAccountBalance);
                            sub_1B72156C0(v137, type metadata accessor for InternalAccountBalance);
                            sub_1B7205418(v175, &qword_1EB993A70);
                            if ((v139 & 1) == 0)
                            {
                              goto LABEL_18;
                            }

                            goto LABEL_111;
                          }

                          sub_1B72156C0(v170, type metadata accessor for InternalAccountBalance);
                          sub_1B72156C0(v173, type metadata accessor for InternalAccountBalance);
                          v79 = &qword_1EB993A70;
LABEL_120:
                          v80 = v175;
                          goto LABEL_81;
                        }

                        sub_1B72156C0(v173, type metadata accessor for InternalAccountBalance);
                      }

                      v79 = &qword_1EB98FAB0;
                      goto LABEL_120;
                    }

LABEL_103:

                    goto LABEL_104;
                  }

                  (*(v164 + 8))(v16, v163);
                }

                v79 = &qword_1EB98FCE0;
                v80 = v26;
                goto LABEL_81;
              }
            }

            v178 = v162;
            v179 = v100;
            v180 = v102;
            v181 = v101;
            v182 = v103;
            v183 = v106;
            v184 = v105;
            v185 = v159;
            v186 = v107;
            v187 = v108;
LABEL_68:
            v79 = &unk_1EB98FAB8;
            v80 = &v178;
            goto LABEL_81;
          }

          (*(v164 + 8))(v19, v86);
        }

        v79 = &qword_1EB98FCE0;
        v80 = v29;
        goto LABEL_81;
      }

      (*(v164 + 8))(v21, v77);
    }

    v79 = &qword_1EB98FCE0;
    v80 = v31;
    goto LABEL_81;
  }

  v57 = sub_1B78020F8();
  v49 = 0;
  if ((v57 & 1) != 0 && v54 == v56)
  {
    goto LABEL_26;
  }

  return v49 & 1;
}

unint64_t sub_1B7214E4C()
{
  result = qword_1EB98F958;
  if (!qword_1EB98F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F958);
  }

  return result;
}

unint64_t sub_1B7214EA0()
{
  result = qword_1EB99DB20;
  if (!qword_1EB99DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB20);
  }

  return result;
}

unint64_t sub_1B7214EF4()
{
  result = qword_1EB98F968;
  if (!qword_1EB98F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F968);
  }

  return result;
}

unint64_t sub_1B7214F48()
{
  result = qword_1EB98F970;
  if (!qword_1EB98F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F970);
  }

  return result;
}

unint64_t sub_1B7214F9C()
{
  result = qword_1EB98F978;
  if (!qword_1EB98F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F978);
  }

  return result;
}

unint64_t sub_1B7214FF0()
{
  result = qword_1EB98F980;
  if (!qword_1EB98F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F980);
  }

  return result;
}

unint64_t sub_1B7215044()
{
  result = qword_1EB98F988;
  if (!qword_1EB98F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F988);
  }

  return result;
}

unint64_t sub_1B7215098()
{
  result = qword_1EB98F9A0;
  if (!qword_1EB98F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9A0);
  }

  return result;
}

unint64_t sub_1B72150EC()
{
  result = qword_1EB98F9A8;
  if (!qword_1EB98F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9A8);
  }

  return result;
}

unint64_t sub_1B7215140()
{
  result = qword_1EB98F9B0;
  if (!qword_1EB98F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9B0);
  }

  return result;
}

unint64_t sub_1B7215194()
{
  result = qword_1EB98F9B8;
  if (!qword_1EB98F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9B8);
  }

  return result;
}

unint64_t sub_1B72151E8()
{
  result = qword_1EB99DB30;
  if (!qword_1EB99DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DB30);
  }

  return result;
}

uint64_t sub_1B721523C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99A670);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B72152A8()
{
  result = qword_1EB98F9C8;
  if (!qword_1EB98F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9C8);
  }

  return result;
}

unint64_t sub_1B72152FC()
{
  result = qword_1EB98F9D0;
  if (!qword_1EB98F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9D0);
  }

  return result;
}

unint64_t sub_1B7215350()
{
  result = qword_1EB98F9D8;
  if (!qword_1EB98F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9D8);
  }

  return result;
}

unint64_t sub_1B72153A4()
{
  result = qword_1EB98F9E0;
  if (!qword_1EB98F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9E0);
  }

  return result;
}

unint64_t sub_1B72153F8()
{
  result = qword_1EB98F9E8;
  if (!qword_1EB98F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F9E8);
  }

  return result;
}

unint64_t sub_1B721544C()
{
  result = qword_1EB98FA00;
  if (!qword_1EB98FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA00);
  }

  return result;
}

unint64_t sub_1B72154A0()
{
  result = qword_1EB98FA08;
  if (!qword_1EB98FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA08);
  }

  return result;
}

unint64_t sub_1B72154F4()
{
  result = qword_1EB98FA10;
  if (!qword_1EB98FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA10);
  }

  return result;
}

unint64_t sub_1B7215548()
{
  result = qword_1EB98FA18;
  if (!qword_1EB98FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA18);
  }

  return result;
}

unint64_t sub_1B721559C()
{
  result = qword_1EB98FA28;
  if (!qword_1EB98FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA28);
  }

  return result;
}

uint64_t sub_1B72155F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7215658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72156C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _s10FinanceKit22ManagedInternalAccountC14mappedKeyPathsSDys03AnyG4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B78097B0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001B7875930;
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = 0x49746E756F636361;
  *(v0 + 72) = 0xE900000000000064;
  *(v0 + 80) = swift_getKeyPath();
  strcpy((v0 + 88), "institutionId");
  *(v0 + 102) = -4864;
  *(v0 + 104) = swift_getKeyPath();
  *(v0 + 112) = 0x49746E65736E6F63;
  *(v0 + 120) = 0xE900000000000044;
  *(v0 + 128) = swift_getKeyPath();
  *(v0 + 136) = 0x7364496E617066;
  *(v0 + 144) = 0xE700000000000000;
  *(v0 + 152) = swift_getKeyPath();
  *(v0 + 160) = 0xD000000000000011;
  *(v0 + 168) = 0x80000001B7875790;
  *(v0 + 176) = swift_getKeyPath();
  *(v0 + 184) = 0xD000000000000024;
  *(v0 + 192) = 0x80000001B7875950;
  *(v0 + 200) = swift_getKeyPath();
  *(v0 + 208) = 0xD000000000000024;
  *(v0 + 216) = 0x80000001B7875950;
  *(v0 + 224) = swift_getKeyPath();
  *(v0 + 232) = 0xD000000000000012;
  *(v0 + 240) = 0x80000001B7875980;
  *(v0 + 248) = swift_getKeyPath();
  *(v0 + 256) = 0xD00000000000001CLL;
  *(v0 + 264) = 0x80000001B78759A0;
  *(v0 + 272) = swift_getKeyPath();
  *(v0 + 280) = 0xD00000000000001CLL;
  *(v0 + 288) = 0x80000001B78759A0;
  *(v0 + 296) = swift_getKeyPath();
  *(v0 + 304) = 0xD00000000000001FLL;
  *(v0 + 312) = 0x80000001B78759C0;
  *(v0 + 320) = swift_getKeyPath();
  *(v0 + 328) = 0xD000000000000026;
  *(v0 + 336) = 0x80000001B78759E0;
  *(v0 + 344) = swift_getKeyPath();
  *(v0 + 352) = 0xD000000000000012;
  *(v0 + 360) = 0x80000001B7875A10;
  *(v0 + 368) = swift_getKeyPath();
  *(v0 + 376) = 0xD000000000000012;
  *(v0 + 384) = 0x80000001B7875A10;
  *(v0 + 392) = swift_getKeyPath();
  *(v0 + 400) = 0xD000000000000012;
  *(v0 + 408) = 0x80000001B7875A10;
  *(v0 + 416) = swift_getKeyPath();
  *(v0 + 424) = 0xD000000000000024;
  *(v0 + 432) = 0x80000001B7875A30;
  *(v0 + 440) = swift_getKeyPath();
  *(v0 + 448) = 0xD000000000000024;
  *(v0 + 456) = 0x80000001B7875A30;
  *(v0 + 464) = swift_getKeyPath();
  *(v0 + 472) = 0xD000000000000028;
  *(v0 + 480) = 0x80000001B78757F0;
  *(v0 + 488) = swift_getKeyPath();
  *(v0 + 496) = 0xD000000000000024;
  *(v0 + 504) = 0x80000001B7875820;
  *(v0 + 512) = swift_getKeyPath();
  *(v0 + 520) = 0xD00000000000001CLL;
  *(v0 + 528) = 0x80000001B7875A60;
  *(v0 + 536) = swift_getKeyPath();
  *(v0 + 544) = 0xD00000000000002ALL;
  *(v0 + 552) = 0x80000001B7875A80;
  *(v0 + 560) = swift_getKeyPath();
  *(v0 + 568) = 0xD00000000000002ALL;
  *(v0 + 576) = 0x80000001B7875A80;
  *(v0 + 584) = swift_getKeyPath();
  *(v0 + 592) = 0xD00000000000002ALL;
  *(v0 + 600) = 0x80000001B7875A80;
  *(v0 + 608) = swift_getKeyPath();
  *(v0 + 616) = 0xD00000000000001CLL;
  *(v0 + 624) = 0x80000001B7875A60;
  *(v0 + 632) = swift_getKeyPath();
  *(v0 + 640) = 0xD00000000000001CLL;
  *(v0 + 648) = 0x80000001B7875A60;
  *(v0 + 656) = swift_getKeyPath();
  *(v0 + 664) = 0xD000000000000023;
  *(v0 + 672) = 0x80000001B7875AB0;
  *(v0 + 680) = swift_getKeyPath();
  *(v0 + 688) = 0xD00000000000002DLL;
  *(v0 + 696) = 0x80000001B7875AE0;
  *(v0 + 704) = swift_getKeyPath();
  *(v0 + 712) = 0xD00000000000002DLL;
  *(v0 + 720) = 0x80000001B7875AE0;
  *(v0 + 728) = swift_getKeyPath();
  *(v0 + 736) = 0xD00000000000002DLL;
  *(v0 + 744) = 0x80000001B7875AE0;
  *(v0 + 752) = swift_getKeyPath();
  *(v0 + 760) = 0xD00000000000001CLL;
  *(v0 + 768) = 0x80000001B7875A60;
  *(v0 + 776) = swift_getKeyPath();
  *(v0 + 784) = 0xD00000000000001CLL;
  *(v0 + 792) = 0x80000001B7875A60;
  *(v0 + 800) = swift_getKeyPath();
  *(v0 + 808) = 0xD00000000000002DLL;
  *(v0 + 816) = 0x80000001B7875B10;
  *(v0 + 824) = swift_getKeyPath();
  *(v0 + 832) = 0xD00000000000002DLL;
  *(v0 + 840) = 0x80000001B7875B10;
  *(v0 + 848) = swift_getKeyPath();
  *(v0 + 856) = 0xD00000000000002DLL;
  *(v0 + 864) = 0x80000001B7875B10;
  *(v0 + 872) = swift_getKeyPath();
  *(v0 + 880) = 0xD00000000000001CLL;
  *(v0 + 888) = 0x80000001B7875A60;
  *(v0 + 896) = swift_getKeyPath();
  *(v0 + 904) = 0xD00000000000001CLL;
  *(v0 + 912) = 0x80000001B7875A60;
  *(v0 + 920) = swift_getKeyPath();
  *(v0 + 928) = 0xD000000000000010;
  *(v0 + 936) = 0x80000001B7875890;
  *(v0 + 944) = swift_getKeyPath();
  *(v0 + 952) = 0xD000000000000013;
  *(v0 + 960) = 0x80000001B78758B0;
  *(v0 + 968) = swift_getKeyPath();
  *(v0 + 976) = 0x79546E696769726FLL;
  *(v0 + 984) = 0xEF65756C61566570;
  *(v0 + 992) = swift_getKeyPath();
  *(v0 + 1000) = 0x79546E696769726FLL;
  *(v0 + 1008) = 0xEF65756C61566570;
  *(v0 + 1016) = swift_getKeyPath();
  *(v0 + 1024) = 0xD000000000000023;
  *(v0 + 1032) = 0x80000001B7875B40;
  *(v0 + 1040) = swift_getKeyPath();
  *(v0 + 1048) = 0xD000000000000013;
  *(v0 + 1056) = 0x80000001B7875910;
  *(v0 + 1064) = swift_getKeyPath();
  *(v0 + 1072) = 0xD00000000000001FLL;
  *(v0 + 1080) = 0x80000001B7875B70;
  *(v0 + 1088) = swift_getKeyPath();
  *(v0 + 1096) = 0xD000000000000012;
  *(v0 + 1104) = 0x80000001B7875B90;
  *(v0 + 1112) = swift_getKeyPath();
  *(v0 + 1120) = 0xD000000000000012;
  *(v0 + 1128) = 0x80000001B7875B90;
  *(v0 + 1136) = swift_getKeyPath();
  *(v0 + 1144) = 0xD00000000000002DLL;
  *(v0 + 1152) = 0x80000001B7875BB0;
  v1 = sub_1B7202424(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

unint64_t sub_1B7215F0C()
{
  result = qword_1EB98FA50;
  if (!qword_1EB98FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA50);
  }

  return result;
}

unint64_t sub_1B7215F64()
{
  result = qword_1EB98FA58;
  if (!qword_1EB98FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA58);
  }

  return result;
}

unint64_t sub_1B7215FBC()
{
  result = qword_1EB98FA60;
  if (!qword_1EB98FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA60);
  }

  return result;
}

unint64_t sub_1B7216014()
{
  result = qword_1EB98FA68;
  if (!qword_1EB98FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA68);
  }

  return result;
}

unint64_t sub_1B721606C()
{
  result = qword_1EB98FA70;
  if (!qword_1EB98FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA70);
  }

  return result;
}

void sub_1B72160E8()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B72163E8(319, &qword_1EDAFA080, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B72163E8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B72163E8(319, qword_1EDAFA4B8, &type metadata for AccountStatus, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B7216394(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
          if (v4 <= 0x3F)
          {
            sub_1B72163E8(319, qword_1EDAFCF10, &type metadata for CurrencyAmount, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1B7216394(319, qword_1EDAFA228, type metadata accessor for InternalAccountBalance);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Actions();
                if (v7 <= 0x3F)
                {
                  sub_1B72163E8(319, qword_1EDAFA1C8, &type metadata for BankConnectRefreshFailure, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
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
}

void sub_1B7216394(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1B72163E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for InternalAccount.LoadingStatus(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for InternalAccount.LoadingStatus(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalAccount.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalAccount.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B72166D0()
{
  result = qword_1EB98FA78;
  if (!qword_1EB98FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA78);
  }

  return result;
}

unint64_t sub_1B7216728()
{
  result = qword_1EB98FA80;
  if (!qword_1EB98FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA80);
  }

  return result;
}

unint64_t sub_1B7216780()
{
  result = qword_1EB98FA88;
  if (!qword_1EB98FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA88);
  }

  return result;
}

unint64_t sub_1B72167D8()
{
  result = qword_1EB98FA90;
  if (!qword_1EB98FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA90);
  }

  return result;
}

unint64_t sub_1B7216830()
{
  result = qword_1EB98FA98;
  if (!qword_1EB98FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FA98);
  }

  return result;
}

unint64_t sub_1B7216888()
{
  result = qword_1EB98FAA0;
  if (!qword_1EB98FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FAA0);
  }

  return result;
}

uint64_t sub_1B72168DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B7875770 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E65736E6F63 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7364496E617066 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7875790 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54746E756F636361 && a2 == 0xEB00000000657079 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xED00007265626D75 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78757B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xED00007375746174 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B78757D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001B78757F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001B7875820 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x694C746964657263 && a2 == 0xEB0000000074696DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6D7961507478656ELL && a2 == 0xEF65746144746E65 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875850 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875870 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x42746E756F636361 && a2 == 0xEE0065636E616C61 || (sub_1B78020F8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7875890 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B78758B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B78758D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B78758F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x79546E696769726FLL && a2 == 0xEA00000000006570 || (sub_1B78020F8() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xEF656D614E6E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7875910 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x44676E696E65706FLL && a2 == 0xEB00000000657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x53676E6964616F6CLL && a2 == 0xED00007375746174 || (sub_1B78020F8() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6E65726566657270 && a2 == 0xEB00000000736563)
  {

    return 29;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

id FKBalance.init(_:)(uint64_t a1)
{
  v66 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v2 = MEMORY[0x1EEE9AC00](v66);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v62 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v62 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v62 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - v22;
  v24 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for InternalAccountBalance(0);
  v27 = *(v67 + 20);
  v68 = a1;
  sub_1B721B568(a1 + v27, v26, type metadata accessor for BalanceCalculation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B721B694(v26, v18, type metadata accessor for BalanceCalculation.CalculationDetails);
      sub_1B721B568(v18, v15, type metadata accessor for BalanceCalculation.CalculationDetails);
      v29 = objc_allocWithZone(FKAmount);
      v30 = sub_1B7801608();
      v31 = sub_1B7800838();
      v32 = [v29 initWithDecimalNumber:v30 currency:v31];

      v33 = v66;
      v34 = sub_1B77FF8B8();
      v35 = [objc_allocWithZone(FKBalanceCalculation) initWithAmount:v32 asOf:v34 creditDebitIndicator:v15[*(v33 + 24)]];

      v36 = 0;
      v23 = v18;
      v21 = v15;
    }

    else
    {
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      v64 = v12;
      sub_1B721B694(v26, v12, type metadata accessor for BalanceCalculation.CalculationDetails);
      v44 = v65;
      sub_1B721B694(&v26[v43], v65, type metadata accessor for BalanceCalculation.CalculationDetails);
      v63 = type metadata accessor for BalanceCalculation.CalculationDetails;
      sub_1B721B568(v12, v7, type metadata accessor for BalanceCalculation.CalculationDetails);
      v45 = objc_allocWithZone(FKAmount);
      v46 = sub_1B7801608();
      v47 = sub_1B7800838();
      v48 = [v45 initWithDecimalNumber:v46 currency:v47];

      v49 = v66;
      v50 = sub_1B77FF8B8();
      v36 = [objc_allocWithZone(FKBalanceCalculation) initWithAmount:v48 asOf:v50 creditDebitIndicator:v7[*(v49 + 24)]];

      v62 = type metadata accessor for BalanceCalculation.CalculationDetails;
      sub_1B721B5D0(v7, type metadata accessor for BalanceCalculation.CalculationDetails);
      sub_1B721B568(v44, v4, v63);
      v51 = objc_allocWithZone(FKAmount);
      v52 = sub_1B7801608();
      v53 = sub_1B7800838();
      v54 = [v51 initWithDecimalNumber:v52 currency:v53];

      v55 = sub_1B77FF8B8();
      v35 = [objc_allocWithZone(FKBalanceCalculation) initWithAmount:v54 asOf:v55 creditDebitIndicator:v4[*(v49 + 24)]];

      sub_1B721B5D0(v44, v62);
      v23 = v64;
      v21 = v4;
    }
  }

  else
  {
    sub_1B721B694(v26, v23, type metadata accessor for BalanceCalculation.CalculationDetails);
    sub_1B721B568(v23, v21, type metadata accessor for BalanceCalculation.CalculationDetails);
    v37 = objc_allocWithZone(FKAmount);
    v38 = sub_1B7801608();
    v39 = sub_1B7800838();
    v40 = [v37 initWithDecimalNumber:v38 currency:v39];

    v41 = v66;
    v42 = sub_1B77FF8B8();
    v36 = [objc_allocWithZone(FKBalanceCalculation) initWithAmount:v40 asOf:v42 creditDebitIndicator:v21[*(v41 + 24)]];

    v35 = 0;
  }

  sub_1B721B5D0(v23, type metadata accessor for BalanceCalculation.CalculationDetails);
  sub_1B721B5D0(v21, type metadata accessor for BalanceCalculation.CalculationDetails);
  v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v57 = v68;
  v58 = sub_1B77FF9B8();
  v59 = sub_1B77FF8B8();
  v60 = [v56 initWithUUID:v58 availableBalance:v36 bookedBalance:v35 lastUpdatedAt:v59];

  sub_1B721B5D0(v57, type metadata accessor for InternalAccountBalance);
  return v60;
}

uint64_t InternalAccountBalance.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InternalAccountBalance.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InternalAccountBalance.balanceCalculation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InternalAccountBalance(0) + 20);

  return sub_1B721B630(a1, v3);
}

uint64_t InternalAccountBalance.lastUpdatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InternalAccountBalance(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InternalAccountBalance.lastUpdatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalAccountBalance(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InternalAccountBalance.init(id:balanceCalculation:lastUpdatedAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B77FFA18();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for InternalAccountBalance(0);
  sub_1B721B694(a2, a4 + *(v9 + 20), type metadata accessor for BalanceCalculation);
  v10 = *(v9 + 24);
  v11 = sub_1B77FF988();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t static InternalAccountBalance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for InternalAccountBalance(0) + 20);

  return _s10FinanceKit18BalanceCalculationO2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_1B7217DB8()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x616470557473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B7217E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B721CA78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7217E40(uint64_t a1)
{
  v2 = sub_1B721BD84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7217E7C(uint64_t a1)
{
  v2 = sub_1B721BD84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InternalAccountBalance.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B721BD84();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FFA18();
  sub_1B71A6928(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for InternalAccountBalance(0);
    v8[14] = 1;
    type metadata accessor for BalanceCalculation(0);
    sub_1B71A6928(&qword_1EB98FAE0, type metadata accessor for BalanceCalculation);
    sub_1B7801FC8();
    v8[13] = 2;
    sub_1B77FF988();
    sub_1B71A6928(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InternalAccountBalance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1B77FF988();
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FFA18();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAE8);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for InternalAccountBalance(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B721BD84();
  v31 = v10;
  v14 = v32;
  sub_1B78023C8();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v13;
  v35 = 0;
  sub_1B71A6928(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  v15 = v28;
  sub_1B7801E48();
  (*(v26 + 32))(v32, v15, v6);
  v34 = 1;
  sub_1B71A6928(&qword_1EB98FAF0, type metadata accessor for BalanceCalculation);
  v16 = v5;
  sub_1B7801E48();
  v17 = v32;
  sub_1B721B694(v16, &v32[*(v11 + 20)], type metadata accessor for BalanceCalculation);
  v33 = 2;
  sub_1B71A6928(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v18 = v24;
  v19 = v25;
  sub_1B7801E48();
  (*(v29 + 8))(v31, v30);
  (*(v22 + 32))(v17 + *(v11 + 24), v18, v19);
  sub_1B721B568(v17, v23, type metadata accessor for InternalAccountBalance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B721B5D0(v17, type metadata accessor for InternalAccountBalance);
}

uint64_t sub_1B72186C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s10FinanceKit18BalanceCalculationO2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t InternalAccountBalance.hash(into:)()
{
  sub_1B77FFA18();
  sub_1B71A6928(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);

  return sub_1B7800768();
}

uint64_t InternalAccountBalance.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A6928(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B721883C()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A6928(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B72188C4()
{
  sub_1B77FFA18();
  sub_1B71A6928(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);

  return sub_1B7800768();
}

uint64_t sub_1B7218948()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B71A6928(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B72189D0()
{
  if (*v0)
  {
    return 0x64656B6F6F62;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1B7218A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656B6F6F62 && a2 == 0xE600000000000000)
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

uint64_t sub_1B7218AEC(uint64_t a1)
{
  v2 = sub_1B721BE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7218B28(uint64_t a1)
{
  v2 = sub_1B721BE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7218B6C(uint64_t a1)
{
  v2 = sub_1B721BED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7218BA8(uint64_t a1)
{
  v2 = sub_1B721BED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7218BE4()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t sub_1B7218C28()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t sub_1B7218C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1B7218CE8(uint64_t a1)
{
  v2 = sub_1B721BE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7218D24(uint64_t a1)
{
  v2 = sub_1B721BE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7218D60()
{
  v1 = 0x64656B6F6F62;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1B7218DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B721CB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7218DE8(uint64_t a1)
{
  v2 = sub_1B721BDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7218E24(uint64_t a1)
{
  v2 = sub_1B721BDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BalanceCalculation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAF8);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB00);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB08);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v48 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v9 = MEMORY[0x1EEE9AC00](v48);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v36 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB10);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v22 = &v36 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B721BDD8();
  sub_1B78023F8();
  sub_1B721B568(v47, v20, type metadata accessor for BalanceCalculation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B721B694(v20, v15, type metadata accessor for BalanceCalculation.CalculationDetails);
      v53 = 1;
      sub_1B721BE80();
      v24 = v39;
      v25 = v51;
      sub_1B7801ED8();
      sub_1B71A6928(&qword_1EB98FB28, type metadata accessor for BalanceCalculation.CalculationDetails);
      v26 = v41;
      sub_1B7801FC8();
      (*(v40 + 8))(v24, v26);
      sub_1B721B5D0(v15, type metadata accessor for BalanceCalculation.CalculationDetails);
      return (*(v49 + 8))(v22, v25);
    }

    else
    {
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      v31 = v43;
      sub_1B721B694(v20, v43, type metadata accessor for BalanceCalculation.CalculationDetails);
      v32 = v42;
      sub_1B721B694(&v20[v30], v42, type metadata accessor for BalanceCalculation.CalculationDetails);
      v56 = 2;
      sub_1B721BE2C();
      v33 = v44;
      sub_1B7801ED8();
      v55 = 0;
      sub_1B71A6928(&qword_1EB98FB28, type metadata accessor for BalanceCalculation.CalculationDetails);
      v34 = v46;
      v35 = v50;
      sub_1B7801FC8();
      if (!v35)
      {
        v54 = 1;
        sub_1B7801FC8();
      }

      (*(v45 + 8))(v33, v34);
      sub_1B721B5D0(v32, type metadata accessor for BalanceCalculation.CalculationDetails);
      sub_1B721B5D0(v31, type metadata accessor for BalanceCalculation.CalculationDetails);
      return (*(v49 + 8))(v22, v51);
    }
  }

  else
  {
    sub_1B721B694(v20, v17, type metadata accessor for BalanceCalculation.CalculationDetails);
    v52 = 0;
    sub_1B721BED4();
    v28 = v51;
    sub_1B7801ED8();
    sub_1B71A6928(&qword_1EB98FB28, type metadata accessor for BalanceCalculation.CalculationDetails);
    v29 = v38;
    sub_1B7801FC8();
    (*(v37 + 8))(v8, v29);
    sub_1B721B5D0(v17, type metadata accessor for BalanceCalculation.CalculationDetails);
    return (*(v49 + 8))(v22, v28);
  }
}

uint64_t BalanceCalculation.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B721B568(v1, v10, type metadata accessor for BalanceCalculation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      sub_1B721B694(v10, v7, type metadata accessor for BalanceCalculation.CalculationDetails);
      sub_1B721B694(&v10[v13], v5, type metadata accessor for BalanceCalculation.CalculationDetails);
      MEMORY[0x1B8CA6620](2);
      sub_1B7801688();
      sub_1B7800798();
      sub_1B77FF988();
      sub_1B71A6928(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
      sub_1B7800768();
      sub_1B7802328();
      sub_1B7801688();
      sub_1B7800798();
      sub_1B7800768();
      sub_1B7802328();
      sub_1B721B5D0(v5, type metadata accessor for BalanceCalculation.CalculationDetails);
      return sub_1B721B5D0(v7, type metadata accessor for BalanceCalculation.CalculationDetails);
    }

    sub_1B721B694(v10, v7, type metadata accessor for BalanceCalculation.CalculationDetails);
    v12 = 1;
  }

  else
  {
    sub_1B721B694(v10, v7, type metadata accessor for BalanceCalculation.CalculationDetails);
    v12 = 0;
  }

  MEMORY[0x1B8CA6620](v12);
  sub_1B7801688();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B71A6928(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7802328();
  return sub_1B721B5D0(v7, type metadata accessor for BalanceCalculation.CalculationDetails);
}

uint64_t BalanceCalculation.hashValue.getter()
{
  sub_1B78022F8();
  BalanceCalculation.hash(into:)();
  return sub_1B7802368();
}

uint64_t BalanceCalculation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB40);
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB48);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB50);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB58);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = type metadata accessor for BalanceCalculation(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v56 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v56 - v24;
  v26 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1B721BDD8();
  v27 = v72;
  sub_1B78023C8();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v56 = v20;
  v57 = v23;
  v29 = v66;
  v28 = v67;
  v58 = v17;
  v59 = v25;
  v31 = v68;
  v30 = v69;
  v72 = v14;
  v32 = v71;
  v33 = sub_1B7801E98();
  v34 = *(v33 + 16);
  if (!v34 || ((v35 = *(v33 + 32), v34 == 1) ? (v36 = v35 == 3) : (v36 = 1), v36))
  {
    v37 = sub_1B7801B18();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v39 = v72;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v70 + 8))(v13, v32);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  if (*(v33 + 32))
  {
    v66 = v33;
    if (v35 == 1)
    {
      v75 = 1;
      sub_1B721BE80();
      v41 = v28;
      sub_1B7801D38();
      v42 = v70;
      type metadata accessor for BalanceCalculation.CalculationDetails(0);
      sub_1B71A6928(&qword_1EB98FB60, type metadata accessor for BalanceCalculation.CalculationDetails);
      v46 = v56;
      v47 = v62;
      sub_1B7801E48();
      (*(v63 + 8))(v41, v47);
      (*(v42 + 8))(v13, v32);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v46;
      v49 = v30;
    }

    else
    {
      v78 = 2;
      sub_1B721BE2C();
      v44 = v31;
      sub_1B7801D38();
      v45 = v13;
      v49 = v30;
      v53 = v45;
      type metadata accessor for BalanceCalculation.CalculationDetails(0);
      v77 = 0;
      sub_1B71A6928(&qword_1EB98FB60, type metadata accessor for BalanceCalculation.CalculationDetails);
      v54 = v58;
      v55 = v64;
      sub_1B7801E48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8);
      v76 = 1;
      sub_1B7801E48();
      (*(v65 + 8))(v44, v55);
      (*(v70 + 8))(v53, v71);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v54;
    }

    v43 = v59;
    goto LABEL_18;
  }

  v74 = 0;
  sub_1B721BED4();
  sub_1B7801D38();
  v43 = v59;
  type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v68 = 0;
  sub_1B71A6928(&qword_1EB98FB60, type metadata accessor for BalanceCalculation.CalculationDetails);
  v50 = v57;
  v51 = v61;
  v52 = v68;
  sub_1B7801E48();
  (*(v60 + 8))(v29, v51);
  (*(v70 + 8))(v13, v32);
  swift_unknownObjectRelease();
  if (v52)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  swift_storeEnumTagMultiPayload();
  v49 = v30;
  v48 = v50;
LABEL_18:
  sub_1B721B694(v48, v43, type metadata accessor for BalanceCalculation);
  sub_1B721B694(v43, v49, type metadata accessor for BalanceCalculation);
  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_1B721A274()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 19;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B721A2A8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B721A2DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1B721A308()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 40;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B721A33C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B721A370()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B721A3A4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B721A3D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B721A40C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B721A470()
{
  sub_1B78022F8();
  BalanceCalculation.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B721A4B4()
{
  sub_1B78022F8();
  BalanceCalculation.hash(into:)();
  return sub_1B7802368();
}

uint64_t BalanceCalculation.CalculationDetails.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = *(v1 + 32);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 BalanceCalculation.CalculationDetails.amount.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t BalanceCalculation.CalculationDetails.asOf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BalanceCalculation.CalculationDetails(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BalanceCalculation.CalculationDetails.asOf.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BalanceCalculation.CalculationDetails(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BalanceCalculation.CalculationDetails.creditDebitIndicator.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t BalanceCalculation.CalculationDetails.creditDebitIndicator.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t BalanceCalculation.CalculationDetails.init(amount:asOf:creditDebitIndicator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = *(a1 + 32);
  v8 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v9 = *(v8 + 20);
  v10 = sub_1B77FF988();
  result = (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
  *(a4 + *(v8 + 24)) = v6;
  return result;
}

uint64_t sub_1B721A830()
{
  v1 = 1716482913;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

uint64_t sub_1B721A884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B721CCBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B721A8AC(uint64_t a1)
{
  v2 = sub_1B721BF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B721A8E8(uint64_t a1)
{
  v2 = sub_1B721BF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BalanceCalculation.CalculationDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B721BF28();
  sub_1B78023F8();
  v9 = v3[1];
  v22[0] = *v3;
  v22[1] = v9;
  v23 = *(v3 + 4);
  v10 = v3[1];
  v19 = *v3;
  v20 = v10;
  v21 = *(v3 + 4);
  v18 = 0;
  sub_1B7215720(v22, &v15);
  sub_1B7215044();
  sub_1B7801FC8();
  if (v2)
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    sub_1B721722C(&v15);
  }

  else
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    sub_1B721722C(&v15);
    v11 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
    v14 = 1;
    sub_1B77FF988();
    sub_1B71A6928(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v14 = *(v3 + *(v11 + 24));
    v13[14] = 2;
    sub_1B721BF7C();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BalanceCalculation.CalculationDetails.hash(into:)()
{
  sub_1B7801688();
  sub_1B7800798();
  type metadata accessor for BalanceCalculation.CalculationDetails(0);
  sub_1B77FF988();
  sub_1B71A6928(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  return sub_1B7802328();
}

uint64_t BalanceCalculation.CalculationDetails.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  type metadata accessor for BalanceCalculation.CalculationDetails(0);
  sub_1B77FF988();
  sub_1B71A6928(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t BalanceCalculation.CalculationDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v18 = sub_1B77FF988();
  v16 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FB80);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v15 - v5;
  v7 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B721BF28();
  v10 = v20;
  sub_1B78023C8();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v11 = v17;
  v12 = v18;
  v26 = 0;
  sub_1B72153F8();
  sub_1B7801E48();
  v13 = v23;
  *v9 = v22;
  *(v9 + 1) = v13;
  *(v9 + 4) = v24;
  LOBYTE(v21) = 1;
  sub_1B71A6928(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801E48();
  (*(v16 + 32))(&v9[*(v7 + 20)], v4, v12);
  v25 = 2;
  sub_1B721BFD0();
  sub_1B7801E48();
  (*(v11 + 8))(v6, v19);
  v9[*(v7 + 24)] = v21;
  sub_1B721B568(v9, v15, type metadata accessor for BalanceCalculation.CalculationDetails);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1B721B5D0(v9, type metadata accessor for BalanceCalculation.CalculationDetails);
}

uint64_t sub_1B721B180()
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B71A6928(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t sub_1B721B258()
{
  sub_1B7801688();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B71A6928(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  return sub_1B7802328();
}

uint64_t sub_1B721B31C()
{
  sub_1B78022F8();
  sub_1B7801688();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B71A6928(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7802328();
  return sub_1B7802368();
}

id FKBalanceCalculation.init(_:)(uint64_t a1)
{
  v2 = objc_allocWithZone(FKAmount);
  v3 = sub_1B7801608();
  v4 = sub_1B7800838();
  v5 = [v2 initWithDecimalNumber:v3 currency:v4];

  v6 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v7 = sub_1B77FF8B8();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAmount:v5 asOf:v7 creditDebitIndicator:*(a1 + *(v6 + 24))];

  sub_1B721B5D0(a1, type metadata accessor for BalanceCalculation.CalculationDetails);
  return v8;
}

uint64_t sub_1B721B568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B721B5D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B721B630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceCalculation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B721B694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10FinanceKit18BalanceCalculationO0D7DetailsV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v15 = *a1;
  v16[0] = v4;
  *&v16[1] = *(a1 + 4);
  v5 = a2[1];
  v17 = *a2;
  v18[0] = v5;
  *&v18[1] = *(a2 + 4);
  v6 = LODWORD(v16[0]);
  v7 = v5;
  v8 = v15;
  v9 = v17;
  sub_1B7215720(&v15, v14);
  sub_1B7215720(&v17, v14);
  if ((MEMORY[0x1B8CA5970](v8, *(&v8 + 1), v6, v9, *(&v9 + 1), v7) & 1) == 0)
  {
    sub_1B721722C(&v17);
    sub_1B721722C(&v15);
    goto LABEL_8;
  }

  if (*(v16 + 8) == *(v18 + 8))
  {
    sub_1B721722C(&v17);
    sub_1B721722C(&v15);
    goto LABEL_6;
  }

  v10 = sub_1B78020F8();
  sub_1B721722C(&v17);
  sub_1B721722C(&v15);
  if ((v10 & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    return v12 & 1;
  }

LABEL_6:
  v11 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  if ((sub_1B77FF918() & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = *(a1 + *(v11 + 24)) ^ *(a2 + *(v11 + 24)) ^ 1;
  return v12 & 1;
}

uint64_t _s10FinanceKit18BalanceCalculationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v39 = (&v38 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v40 = (&v38 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v38 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v38 - v13);
  v15 = type metadata accessor for BalanceCalculation(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v38 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v38 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC38);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v38 - v26;
  v28 = &v38 + *(v25 + 56) - v26;
  sub_1B721B568(a1, &v38 - v26, type metadata accessor for BalanceCalculation);
  sub_1B721B568(v41, v28, type metadata accessor for BalanceCalculation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B721B568(v27, v21, type metadata accessor for BalanceCalculation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B721B694(v28, v12, type metadata accessor for BalanceCalculation.CalculationDetails);
        v30 = _s10FinanceKit18BalanceCalculationO0D7DetailsV2eeoiySbAE_AEtFZ_0(v21, v12);
        sub_1B721B5D0(v12, type metadata accessor for BalanceCalculation.CalculationDetails);
        v31 = v21;
LABEL_16:
        sub_1B721B5D0(v31, type metadata accessor for BalanceCalculation.CalculationDetails);
        sub_1B721B5D0(v27, type metadata accessor for BalanceCalculation);
        return v30 & 1;
      }

      v18 = v21;
      goto LABEL_12;
    }

    sub_1B721B568(v27, v18, type metadata accessor for BalanceCalculation);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v23 = v40;
      sub_1B721B694(v28, v40, type metadata accessor for BalanceCalculation.CalculationDetails);
      v33 = v39;
      sub_1B721B694(v18 + v32, v39, type metadata accessor for BalanceCalculation.CalculationDetails);
      v34 = v38;
      sub_1B721B694(&v28[v32], v38, type metadata accessor for BalanceCalculation.CalculationDetails);
      v35 = _s10FinanceKit18BalanceCalculationO0D7DetailsV2eeoiySbAE_AEtFZ_0(v18, v23);
      sub_1B721B5D0(v18, type metadata accessor for BalanceCalculation.CalculationDetails);
      if ((v35 & 1) == 0)
      {
        sub_1B721B5D0(v34, type metadata accessor for BalanceCalculation.CalculationDetails);
        sub_1B721B5D0(v33, type metadata accessor for BalanceCalculation.CalculationDetails);
        sub_1B721B5D0(v23, type metadata accessor for BalanceCalculation.CalculationDetails);
        sub_1B721B5D0(v27, type metadata accessor for BalanceCalculation);
        goto LABEL_13;
      }

      v30 = _s10FinanceKit18BalanceCalculationO0D7DetailsV2eeoiySbAE_AEtFZ_0(v33, v34);
      sub_1B721B5D0(v34, type metadata accessor for BalanceCalculation.CalculationDetails);
      v36 = v33;
LABEL_15:
      sub_1B721B5D0(v36, type metadata accessor for BalanceCalculation.CalculationDetails);
      v31 = v23;
      goto LABEL_16;
    }

    sub_1B721B5D0(v18 + v32, type metadata accessor for BalanceCalculation.CalculationDetails);
  }

  else
  {
    sub_1B721B568(v27, v23, type metadata accessor for BalanceCalculation);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B721B694(v28, v14, type metadata accessor for BalanceCalculation.CalculationDetails);
      v30 = _s10FinanceKit18BalanceCalculationO0D7DetailsV2eeoiySbAE_AEtFZ_0(v23, v14);
      v36 = v14;
      goto LABEL_15;
    }

    v18 = v23;
  }

LABEL_12:
  sub_1B721B5D0(v18, type metadata accessor for BalanceCalculation.CalculationDetails);
  sub_1B721CDD8(v27);
LABEL_13:
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_1B721BD84()
{
  result = qword_1EB98FAD8;
  if (!qword_1EB98FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FAD8);
  }

  return result;
}

unint64_t sub_1B721BDD8()
{
  result = qword_1EB98FB18;
  if (!qword_1EB98FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FB18);
  }

  return result;
}

unint64_t sub_1B721BE2C()
{
  result = qword_1EB98FB20;
  if (!qword_1EB98FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FB20);
  }

  return result;
}

unint64_t sub_1B721BE80()
{
  result = qword_1EB98FB30;
  if (!qword_1EB98FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FB30);
  }

  return result;
}

unint64_t sub_1B721BED4()
{
  result = qword_1EB98FB38;
  if (!qword_1EB98FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FB38);
  }

  return result;
}

unint64_t sub_1B721BF28()
{
  result = qword_1EB98FB70;
  if (!qword_1EB98FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FB70);
  }

  return result;
}

unint64_t sub_1B721BF7C()
{
  result = qword_1EB98FB78;
  if (!qword_1EB98FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FB78);
  }

  return result;
}

unint64_t sub_1B721BFD0()
{
  result = qword_1EB98FB88;
  if (!qword_1EB98FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FB88);
  }

  return result;
}

uint64_t sub_1B721C16C()
{
  result = sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BalanceCalculation(319);
    if (v2 <= 0x3F)
    {
      result = sub_1B77FF988();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B721C258()
{
  type metadata accessor for BalanceCalculation.CalculationDetails(319);
  if (v0 <= 0x3F)
  {
    sub_1B721C2CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B721C2CC()
{
  if (!qword_1EDAFB178)
  {
    type metadata accessor for BalanceCalculation.CalculationDetails(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDAFB178);
    }
  }
}

uint64_t sub_1B721C35C()
{
  result = sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B721C44C()
{
  result = qword_1EB98FBA8;
  if (!qword_1EB98FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBA8);
  }

  return result;
}

unint64_t sub_1B721C4A4()
{
  result = qword_1EB98FBB0;
  if (!qword_1EB98FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBB0);
  }

  return result;
}

unint64_t sub_1B721C4FC()
{
  result = qword_1EB98FBB8;
  if (!qword_1EB98FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBB8);
  }

  return result;
}

unint64_t sub_1B721C554()
{
  result = qword_1EB98FBC0;
  if (!qword_1EB98FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBC0);
  }

  return result;
}

unint64_t sub_1B721C5AC()
{
  result = qword_1EB98FBC8;
  if (!qword_1EB98FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBC8);
  }

  return result;
}

unint64_t sub_1B721C604()
{
  result = qword_1EB98FBD0;
  if (!qword_1EB98FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBD0);
  }

  return result;
}

unint64_t sub_1B721C65C()
{
  result = qword_1EB98FBD8;
  if (!qword_1EB98FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBD8);
  }

  return result;
}

unint64_t sub_1B721C6B4()
{
  result = qword_1EB98FBE0;
  if (!qword_1EB98FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBE0);
  }

  return result;
}

unint64_t sub_1B721C70C()
{
  result = qword_1EB98FBE8;
  if (!qword_1EB98FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBE8);
  }

  return result;
}

unint64_t sub_1B721C764()
{
  result = qword_1EB98FBF0;
  if (!qword_1EB98FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBF0);
  }

  return result;
}

unint64_t sub_1B721C7BC()
{
  result = qword_1EB98FBF8;
  if (!qword_1EB98FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FBF8);
  }

  return result;
}

unint64_t sub_1B721C814()
{
  result = qword_1EB98FC00;
  if (!qword_1EB98FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FC00);
  }

  return result;
}

unint64_t sub_1B721C86C()
{
  result = qword_1EB98FC08;
  if (!qword_1EB98FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FC08);
  }

  return result;
}

unint64_t sub_1B721C8C4()
{
  result = qword_1EB98FC10;
  if (!qword_1EB98FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FC10);
  }

  return result;
}

unint64_t sub_1B721C91C()
{
  result = qword_1EB98FC18;
  if (!qword_1EB98FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FC18);
  }

  return result;
}

unint64_t sub_1B721C974()
{
  result = qword_1EB98FC20;
  if (!qword_1EB98FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FC20);
  }

  return result;
}

unint64_t sub_1B721C9CC()
{
  result = qword_1EB98FC28;
  if (!qword_1EB98FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FC28);
  }

  return result;
}

unint64_t sub_1B721CA24()
{
  result = qword_1EB98FC30;
  if (!qword_1EB98FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FC30);
  }

  return result;
}

uint64_t sub_1B721CA78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7875C30 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xED00007441646574)
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

uint64_t sub_1B721CB98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656B6F6F62 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7875C50 == a2)
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

uint64_t sub_1B721CCBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1716482913 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875C70 == a2)
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

uint64_t sub_1B721CDD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B721CE88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = &v28 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  v9 = (refreshed - 8);
  MEMORY[0x1EEE9AC00](refreshed);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Institution(0);
  __swift_allocate_value_buffer(v12, qword_1EDAF9AB0);
  v13 = __swift_project_value_buffer(v12, qword_1EDAF9AB0);
  v34 = &_s10FinanceKit11FeatureFlagVN_0;
  v35 = sub_1B721D3DC();
  v33[0] = 9;
  v31 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v33);
  v30 = 0x80000001B7875C90;
  v14 = sub_1B77FF988();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v16 = v9[8];
  v15(&v11[v16], 1, 1, v14);
  v17 = v9[9];
  v15(&v11[v17], 1, 1, v14);
  v18 = v9[11];
  v19 = &v11[v9[10]];
  v20 = &v11[v18];
  *v11 = 0;
  sub_1B7213740(v7, &v11[v16], &qword_1EB98EBD0);
  sub_1B7213740(v29, &v11[v17], &qword_1EB98EBD0);
  *v19 = 0;
  v19[8] = 1;
  *v20 = 0;
  v20[8] = 1;
  v21 = type metadata accessor for BankConnectTermsAndConditions();
  v22 = *(*(v21 - 8) + 56);
  v23 = v32;
  v22(v32, 1, 1, v21);
  v24 = v12[15];
  v22((v13 + v24), 1, 1, v21);
  v25 = v12[18];
  *(v13 + v25) = 0;
  *v13 = 0xD000000000000015;
  *(v13 + 8) = v30;
  *(v13 + 16) = 0x656C707041;
  *(v13 + 24) = 0xE500000000000000;
  *(v13 + 32) = 0;
  *(v13 + 34) = 7;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 56) = 0;
  sub_1B721D430(v11, v13 + v12[12]);
  *(v13 + v12[13]) = 0;
  *(v13 + v12[14]) = 0;
  sub_1B7213740(v23, v13 + v24, &qword_1EB98FC40);
  *(v13 + v12[16]) = v31 & 1;
  *(v13 + v12[17]) = 1;
  *(v13 + v25) = 0;

  *(v13 + v12[19]) = 0;
  v27 = v13 + v12[20];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v13 + v12[21]) = 1;
  *(v13 + v12[22]) = 1;
  *(v13 + v12[23]) = 0;
  return result;
}

uint64_t static AppleAccountConstants.institution.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDAF9AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Institution(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDAF9AB0);

  return sub_1B721D304(v3, a1);
}

uint64_t sub_1B721D304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Institution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1B721D3DC()
{
  result = qword_1EDAFB180;
  if (!qword_1EDAFB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFB180);
  }

  return result;
}

uint64_t sub_1B721D430(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

id sub_1B721D4AC()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B77FFEE8();
  v5[0] = 0;
  v1 = [v0 makeXPCConnectionWithError_];

  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v1;
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExtensionIdentifying.makeXPCConnection()()
{
  v2 = v1;
  v3 = v0;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B77FFF08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v3, v2);
  v8 = sub_1B77FFEE8();
  (*(v5 + 8))(v7, v4);
  v13[0] = 0;
  v9 = [v8 makeXPCConnectionWithError_];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v9;
}

uint64_t ExtensionIdentityWrapper.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFF08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExtensionIdentityWrapper.identity.setter(uint64_t a1)
{
  v3 = sub_1B77FFF08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ExtensionIdentityWrapper.hash(into:)()
{
  sub_1B77FFF08();
  sub_1B721FF60(&qword_1EB98FC48, MEMORY[0x1E6966C58]);

  return sub_1B7800768();
}

uint64_t ExtensionIdentityWrapper.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFF08();
  sub_1B721FF60(&qword_1EB98FC48, MEMORY[0x1E6966C58]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B721D8FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFF08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B721D97C()
{
  sub_1B78022F8();
  sub_1B77FFF08();
  sub_1B721FF60(&qword_1EB98FC48, MEMORY[0x1E6966C58]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B721DA04()
{
  sub_1B77FFF08();
  sub_1B721FF60(&qword_1EB98FC48, MEMORY[0x1E6966C58]);

  return sub_1B7800768();
}

uint64_t sub_1B721DA88()
{
  sub_1B78022F8();
  sub_1B77FFF08();
  sub_1B721FF60(&qword_1EB98FC48, MEMORY[0x1E6966C58]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t ExtensionFinder.getExtensions(for:withBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B721DB4C, 0, 0);
}

uint64_t sub_1B721DB4C()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC50);
  *v3 = v0;
  v3[1] = sub_1B721DC64;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000029, 0x80000001B7875CB0, sub_1B721E0D8, v2, v4);
}

uint64_t sub_1B721DC64()
{

  return MEMORY[0x1EEE6DFA0](sub_1B721DD7C, 0, 0);
}

void sub_1B721DD94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC98);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = objc_allocWithZone(MEMORY[0x1E6966CE0]);
  v11 = sub_1B7800838();
  v12 = [v10 initWithExtensionPointIdentifier_];

  if (a4)
  {
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B7807CD0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    *(v13 + 64) = sub_1B7220068();
    *(v13 + 32) = a4;

    a4 = sub_1B78010E8();
  }

  [v12 setPredicate_];

  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B780B190;
  *(v15 + 32) = v12;
  sub_1B7205540(0, &qword_1EB98FCA0);
  v16 = v12;
  v17 = sub_1B7800C18();

  (*(v7 + 16))(v9, a1, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v9, v6);
  aBlock[4] = sub_1B72200CC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B721E504;
  aBlock[3] = &block_descriptor_16;
  v20 = _Block_copy(aBlock);

  [v14 executeQueries:v17 completionHandler:v20];
  _Block_release(v20);
}

size_t sub_1B721E0E4(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionIdentityWrapper();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B77FFF08();
  v7 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  if (a1 >> 62)
  {
    v13 = sub_1B7801958();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v38 = a2;
  if (!v13)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v21)
    {
LABEL_18:
      v41 = v14;
      sub_1B71FD9DC(0, v21, 0);
      v29 = *(v7 + 16);
      v27 = v7 + 16;
      v28 = v29;
      v22 = v41;
      v30 = v16 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
      v31 = *(v27 + 56);
      do
      {
        v28(v6, v30, v40);
        v41 = v22;
        v32 = v6;
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1B71FD9DC(v33 > 1, v34 + 1, 1);
          v22 = v41;
        }

        *(v22 + 16) = v34 + 1;
        sub_1B7220160(v32, v22 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34);
        v30 += v31;
        --v21;
        v6 = v32;
      }

      while (v21);

      goto LABEL_23;
    }

LABEL_12:

    v22 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v35 = sub_1B7240060(v22);

    v41 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC98);
    return sub_1B7800D08();
  }

  v41 = MEMORY[0x1E69E7CC0];
  result = sub_1B71FDA20(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v37 = v6;
    v16 = v41;
    v17 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v13; ++i)
      {
        MEMORY[0x1B8CA5DC0](i, v17);
        sub_1B77FFF18();
        v41 = v16;
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B71FDA20(v19 > 1, v20 + 1, 1);
          v17 = a1;
          v16 = v41;
        }

        *(v16 + 16) = v20 + 1;
        (*(v7 + 32))(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v12, v40);
      }
    }

    else
    {
      v23 = (a1 + 32);
      do
      {
        v24 = *v23;
        sub_1B77FFF18();
        v41 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B71FDA20(v25 > 1, v26 + 1, 1);
          v16 = v41;
        }

        *(v16 + 16) = v26 + 1;
        (*(v7 + 32))(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v10, v40);
        ++v23;
        --v13;
      }

      while (v13);
    }

    v6 = v37;
    v14 = MEMORY[0x1E69E7CC0];
    v21 = *(v16 + 16);
    if (v21)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B721E504(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1B7205540(0, &qword_1EB98FC90);
  v2 = sub_1B7800C38();

  v1(v2);
}

uint64_t ExtensionFinder.getExtensions(for:withContainingBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B721E658;

  return (sub_1B721F010)(a1, a2, a3, a4);
}

uint64_t sub_1B721E658(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1B721E758(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1B7205540(0, &qword_1EB98FC90);
  sub_1B7800C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC78);
  return sub_1B7800D08();
}

uint64_t sub_1B721E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B721E814, 0, 0);
}

uint64_t sub_1B721E814()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC50);
  *v3 = v0;
  v3[1] = sub_1B721E92C;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000029, 0x80000001B7875CB0, sub_1B72201C4, v2, v4);
}

uint64_t sub_1B721E92C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B72201CC, 0, 0);
}

uint64_t sub_1B721EA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B72201C8;

  return (sub_1B721F010)(a1, a2, a3, a4);
}

size_t _s10FinanceKit15ExtensionFinderC13getExtensions3for21withBundleIdentifiersSayAA0C11Identifying_pGSS_SaySSGSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = type metadata accessor for ExtensionIdentityWrapper();
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1B77FFF08();
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x1E6966CE0]);
  v9 = sub_1B7800838();
  v10 = [v8 initWithExtensionPointIdentifier_];

  v34 = v5;
  if (a3)
  {
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B7807CD0;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    *(v11 + 64) = sub_1B7220068();
    *(v11 + 32) = a3;

    v12 = sub_1B78010E8();
  }

  else
  {
    v12 = 0;
  }

  [v10 setPredicate_];

  v13 = [objc_opt_self() executeQuery_];
  sub_1B7205540(0, &qword_1EB98FC90);
  v14 = sub_1B7800C38();

  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
  {
    v16 = MEMORY[0x1E69E7CC0];
    v33 = v10;
    if (i)
    {
      *&v37 = MEMORY[0x1E69E7CC0];
      result = sub_1B71FDA20(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v19 = v37;
      v20 = v32;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8CA5DC0](v18, v14);
        }

        else
        {
          v21 = *(v14 + 8 * v18 + 32);
        }

        sub_1B77FFF18();
        *&v37 = v19;
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B71FDA20(v22 > 1, v23 + 1, 1);
          v20 = v32;
          v19 = v37;
        }

        ++v18;
        *(v19 + 16) = v23 + 1;
        (*(v6 + 32))(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v20, v36);
      }

      while (i != v18);

      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v19 + 16);
    v10 = v34;
    if (!v24)
    {
      break;
    }

    v40 = v16;
    sub_1B71FD99C(0, v24, 0);
    v25 = 0;
    v26 = v40;
    v27 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v25 < *(v19 + 16))
    {
      (*(v6 + 16))(v10, v27 + *(v6 + 72) * v25, v36);
      v40 = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v14 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1B71FD99C((v28 > 1), v29 + 1, 1);
        v26 = v40;
      }

      ++v25;
      v38 = v35;
      v39 = sub_1B721FF60(&qword_1EB98FC88, type metadata accessor for ExtensionIdentityWrapper);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
      sub_1B721FFA8(v10, boxed_opaque_existential_1);
      *(v26 + 16) = v14;
      sub_1B71E4C44(&v37, v26 + 40 * v29 + 32);
      sub_1B722000C(v10);
      if (v24 == v25)
      {

        return v26;
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B721F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = type metadata accessor for ExtensionIdentityWrapper();
  v4[29] = swift_task_alloc();
  v5 = sub_1B77FFF08();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC78);
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B721F16C, 0, 0);
}

uint64_t sub_1B721F16C()
{
  v1 = v0[34];
  v13 = v0[35];
  v2 = v0[33];
  v4 = v0[26];
  v3 = v0[27];
  v5 = objc_allocWithZone(MEMORY[0x1E6966CE0]);
  v6 = sub_1B7800838();
  v7 = [v5 initWithExtensionPointIdentifier_];
  v0[36] = v7;

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;

  v9 = sub_1B78010E8();
  [v7 setPredicate_];

  v10 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_1B721F438;
  swift_continuation_init();
  v0[17] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC80);
  sub_1B7800CE8();
  (*(v1 + 32))(boxed_opaque_existential_1, v13, v2);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B721E758;
  v0[13] = &block_descriptor_0;
  [v10 executeQuery:v7 completionHandler:?];
  (*(v1 + 8))(boxed_opaque_existential_1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B721F438()
{

  return MEMORY[0x1EEE6DFA0](sub_1B721F518, 0, 0);
}

size_t sub_1B721F518()
{
  v2 = v0 + 184;
  v1 = *(v0 + 184);
  if (v1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      break;
    }

    v8 = MEMORY[0x1E69E7CC0];
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v15)
    {
      goto LABEL_20;
    }

LABEL_13:
    v16 = (v2 - 40);
    v17 = *(v0 + 248);
    v1 = sub_1B71FD99C(0, v15, 0);
    v18 = 0;
    v28 = v8 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    while (v18 < *(v8 + 16))
    {
      v2 = v15;
      (*(v17 + 16))(*(v0 + 232), v28 + *(v17 + 72) * v18, *(v0 + 240));
      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B71FD99C((v19 > 1), v20 + 1, 1);
      }

      v21 = *(v0 + 232);
      ++v18;
      *(v0 + 168) = *(v0 + 224);
      *(v0 + 176) = sub_1B721FF60(&qword_1EB98FC88, type metadata accessor for ExtensionIdentityWrapper);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
      sub_1B721FFA8(v21, boxed_opaque_existential_1);
      *(v4 + 16) = v20 + 1;
      sub_1B71E4C44(v16, v4 + 40 * v20 + 32);
      v1 = sub_1B722000C(v21);
      v15 = v2;
      if (v2 == v18)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    v25 = v1;
    v3 = sub_1B7801958();
    v1 = v25;
  }

  v27 = v1;
  v29 = MEMORY[0x1E69E7CC0];
  result = sub_1B71FDA20(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v26 = v2;
  v6 = 0;
  v7 = *(v0 + 248);
  v9 = v27;
  v8 = v29;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8CA5DC0](v6, v9);
    }

    else
    {
      v10 = *(v9 + 8 * v6 + 32);
    }

    sub_1B77FFF18();
    v12 = *(v29 + 16);
    v11 = *(v29 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1B71FDA20(v11 > 1, v12 + 1, 1);
      v9 = v27;
    }

    v13 = *(v0 + 256);
    v14 = *(v0 + 240);
    ++v6;
    *(v29 + 16) = v12 + 1;
    (*(v7 + 32))(v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v13, v14);
  }

  while (v3 != v6);

  v2 = v26;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = *(v29 + 16);
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_20:
  v23 = *(v0 + 288);

  v4 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v24 = *(v0 + 8);

  return v24(v4);
}

uint64_t sub_1B721F864(uint64_t a1)
{
  result = sub_1B721FF60(&qword_1EB98FC58, type metadata accessor for ExtensionIdentityWrapper);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ExtensionIdentityWrapper()
{
  result = qword_1EB98FC68;
  if (!qword_1EB98FC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B721F9B4()
{
  result = sub_1B77FFF08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ExtensionFinding.getExtensions(for:withBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B721FB60;

  return v13(a1, a2, a3, a4, a5);
}

{
  return (*(a5 + 16))();
}

uint64_t sub_1B721FB60(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ExtensionFinding.getExtensions(for:withContainingBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B721FDB8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B721FDB8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_1B721FF04()
{
  result = qword_1EDAF9440;
  if (!qword_1EDAF9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9440);
  }

  return result;
}

uint64_t sub_1B721FF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B721FFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionIdentityWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B722000C(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionIdentityWrapper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7220068()
{
  result = qword_1EDAF64A0;
  if (!qword_1EDAF64A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99A670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF64A0);
  }

  return result;
}

size_t sub_1B72200CC(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC98) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B721E0E4(a1, v4);
}

uint64_t block_destroy_helper_15()
{
}

{
}

uint64_t sub_1B7220160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionIdentityWrapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id StringParams.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10FinanceKit12StringParams_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id StringParams.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10FinanceKit12StringParams_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t StringParams.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B7205588(a1, v8, &qword_1EB98FCB0);
  if (!v9)
  {
    sub_1B7205418(v8, &qword_1EB98FCB0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC10FinanceKit12StringParams_value);
  v4 = *&v7[OBJC_IVAR____TtC10FinanceKit12StringParams_value];

  v5 = sub_1B7220360(v3, v4);

  return v5 & 1;
}

uint64_t sub_1B7220360(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1B724548C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1B78020F8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7220504(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1B72454A4(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B722060C(uint64_t a1, uint64_t a2)
{
  v92 = sub_1B77FF988();
  v4 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v66 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v80);
  v10 = &v66 - v9;
  started = type metadata accessor for AccountStartDate();
  v88 = *(started - 8);
  v11 = MEMORY[0x1EEE9AC00](started);
  v90 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v66 - v15;
  v89 = sub_1B77FFA18();
  v81 = *(v89 - 8);
  v16 = MEMORY[0x1EEE9AC00](v89);
  v82 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE8);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v20);
  v84 = &v66 - v24;
  v91 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v91 + 16))
  {
    return 0;
  }

  v70 = v8;
  v25 = 0;
  v74 = a1;
  v26 = *(a1 + 64);
  v67 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v66 = (v27 + 63) >> 6;
  v72 = v81 + 16;
  v87 = (v81 + 32);
  v75 = (v4 + 48);
  v76 = (v81 + 8);
  v68 = (v4 + 32);
  v69 = (v4 + 8);
  v83 = v10;
  v73 = v22;
  while (v29)
  {
    v86 = (v29 - 1) & v29;
    v34 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_17:
    v40 = v74;
    v41 = v81;
    (*(v81 + 16))(v77, *(v74 + 48) + *(v81 + 72) * v34, v89);
    v42 = v78;
    sub_1B722369C(*(v40 + 56) + *(v88 + 72) * v34, v78, type metadata accessor for AccountStartDate);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCF0);
    v44 = *(v43 + 48);
    v22 = v73;
    (*(v41 + 32))();
    sub_1B7223704(v42, &v22[v44], type metadata accessor for AccountStartDate);
    (*(*(v43 - 8) + 56))(v22, 0, 1, v43);
    v37 = v84;
LABEL_18:
    sub_1B722376C(v22, v37, &qword_1EB98FCE8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCF0);
    v46 = (*(*(v45 - 8) + 48))(v37, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v48 = *(v45 + 48);
    v49 = v82;
    v50 = v89;
    (*v87)(v82, v37, v89);
    v51 = v37 + v48;
    v52 = v85;
    sub_1B7223704(v51, v85, type metadata accessor for AccountStartDate);
    v53 = sub_1B72454E8(v49);
    v55 = v54;
    (*v76)(v49, v50);
    if ((v55 & 1) == 0)
    {
      goto LABEL_31;
    }

    v56 = v90;
    sub_1B722369C(*(v91 + 56) + *(v88 + 72) * v53, v90, type metadata accessor for AccountStartDate);
    v57 = *(v80 + 48);
    sub_1B7205588(v56, v10, &qword_1EB98EBD0);
    sub_1B7205588(v52, &v10[v57], &qword_1EB98EBD0);
    v58 = *v75;
    if ((*v75)(v10, 1, v92) == 1)
    {
      if (v58(&v10[v57], 1, v92) != 1)
      {
        goto LABEL_29;
      }

      sub_1B7205418(v10, &qword_1EB98EBD0);
    }

    else
    {
      v59 = v70;
      sub_1B7205588(v10, v70, &qword_1EB98EBD0);
      if (v58(&v10[v57], 1, v92) == 1)
      {
        (*v69)(v59, v92);
        v52 = v85;
LABEL_29:
        sub_1B7205418(v10, &qword_1EB98FCE0);
LABEL_30:
        sub_1B72237D4(v90, type metadata accessor for AccountStartDate);
LABEL_31:
        sub_1B72237D4(v52, type metadata accessor for AccountStartDate);
        return 0;
      }

      v60 = &v10[v57];
      v61 = v71;
      v62 = v92;
      (*v68)(v71, v60, v92);
      sub_1B7223654(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v63 = sub_1B7800828();
      v64 = *v69;
      (*v69)(v61, v62);
      v64(v59, v62);
      sub_1B7205418(v83, &qword_1EB98EBD0);
      v52 = v85;
      if ((v63 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v30 = started;
    v31 = *(v90 + *(started + 20));
    sub_1B72237D4(v90, type metadata accessor for AccountStartDate);
    v32 = v52;
    v33 = *(v52 + *(v30 + 20));
    result = sub_1B72237D4(v32, type metadata accessor for AccountStartDate);
    v10 = v83;
    v29 = v86;
    if (v31 != v33)
    {
      return v47;
    }
  }

  if (v66 <= v25 + 1)
  {
    v35 = v25 + 1;
  }

  else
  {
    v35 = v66;
  }

  v36 = v35 - 1;
  v37 = v84;
  while (1)
  {
    v38 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v38 >= v66)
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCF0);
      (*(*(v65 - 8) + 56))(v22, 1, 1, v65);
      v86 = 0;
      v25 = v36;
      goto LABEL_18;
    }

    v39 = *(v67 + 8 * v38);
    ++v25;
    if (v39)
    {
      v86 = (v39 - 1) & v39;
      v34 = __clz(__rbit64(v39)) | (v38 << 6);
      v25 = v38;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7220F88(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 13;
    if (v13 != 13)
    {
      result = sub_1B72455C0(*(*(v3 + 48) + 2 * v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72210A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v34 = (v8 - 1) & v8;
LABEL_15:
    v14 = v11 | (v4 << 6);
    v15 = *(*(v3 + 48) + v14);
    v16 = *(v3 + 56) + 56 * v14;
    v17 = *(v16 + 48);
    v19 = *(v16 + 16);
    v18 = *(v16 + 32);
    v41 = *v16;
    v42 = v19;
    *v43 = v18;
    *&v43[16] = v17;
    v35 = v19;
    v36 = v41;
    v20 = v18;
    sub_1B7223834(&v41, &v38);
    if (!*(&v36 + 1))
    {
      return 1;
    }

    v41 = v36;
    v42 = v35;
    *v43 = v20;
    *&v43[16] = v17;
    v21 = sub_1B7263594(v15);
    if ((v22 & 1) == 0)
    {
      goto LABEL_25;
    }

    v23 = *(v2 + 56) + 56 * v21;
    v25 = *(v23 + 16);
    v24 = *(v23 + 32);
    v26 = *v23;
    *&v40[1] = *(v23 + 48);
    v39 = v25;
    v40[0] = v24;
    v38 = v26;
    if (v26 != v41)
    {
      goto LABEL_25;
    }

    v27 = *(&v38 + 1);
    v28 = *(&v41 + 1);
    sub_1B7223834(&v38, v37);
    if ((sub_1B72F48EC(v27, v28) & 1) == 0)
    {
      goto LABEL_24;
    }

    v29 = LODWORD(v40[0]);
    v30 = *v43;
    v31 = v39;
    v32 = v42;
    sub_1B7215720(&v39, v37);
    sub_1B7215720(&v42, v37);
    if ((MEMORY[0x1B8CA5970](v31, *(&v31 + 1), v29, v32, *(&v32 + 1), v30) & 1) == 0)
    {
      sub_1B721722C(&v42);
      sub_1B721722C(&v39);
LABEL_24:
      sub_1B7223890(&v38);
LABEL_25:
      sub_1B7223890(&v41);
      return 0;
    }

    if (*(v40 + 8) == *&v43[8])
    {
      sub_1B721722C(&v42);
      sub_1B721722C(&v39);
      sub_1B7223890(&v38);
      result = sub_1B7223890(&v41);
      v2 = a2;
    }

    else
    {
      v10 = sub_1B78020F8();
      sub_1B721722C(&v42);
      sub_1B721722C(&v39);
      sub_1B7223890(&v38);
      result = sub_1B7223890(&v41);
      v2 = a2;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    v8 = v34;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B722138C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v62 - v12;
  v80 = sub_1B77FFA18();
  v74 = *(v80 - 8);
  v13 = MEMORY[0x1EEE9AC00](v80);
  v73 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD18);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v70 = v20;
  v22 = 0;
  v23 = *(a1 + 64);
  v62 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v64 = v74 + 16;
  v79 = (v74 + 32);
  v69 = (v74 + 8);
  v76 = &v62 - v19;
  v66 = v27;
  v75 = a2;
  v68 = v8;
  v78 = v5;
  v67 = a1;
  v65 = v11;
  v63 = v4;
  while (v26)
  {
    v77 = (v26 - 1) & v26;
    v29 = __clz(__rbit64(v26)) | (v22 << 6);
LABEL_18:
    v34 = v74;
    v35 = v71;
    v36 = v80;
    (*(v74 + 16))(v71, *(a1 + 48) + *(v74 + 72) * v29, v80);
    v37 = *(a1 + 56) + *(v5 + 72) * v29;
    v38 = v72;
    sub_1B722369C(v37, v72, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FD20);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v42 = v70;
    v41(v70, v35, v36);
    v43 = v38;
    v44 = v42;
    sub_1B7223704(v43, v42 + v40, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
    v4 = v63;
    v11 = v65;
    v21 = v76;
    a2 = v75;
LABEL_19:
    sub_1B722376C(v44, v21, &qword_1EB98FD18);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FD20);
    v46 = 1;
    if ((*(*(v45 - 8) + 48))(v21, 1, v45) == 1)
    {
      return v46;
    }

    v47 = *(v45 + 48);
    v48 = v80;
    v49 = v73;
    (*v79)(v73, v21, v80);
    sub_1B7223704(&v21[v47], v11, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    v50 = sub_1B72454E8(v49);
    v52 = v51;
    (*v69)(v49, v48);
    if ((v52 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_1B722369C(*(a2 + 56) + *(v78 + 72) * v50, v8, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1B72F48EC(*&v8[*(v4 + 20)], *&v11[*(v4 + 20)]) & 1) == 0)
    {
      goto LABEL_29;
    }

    a1 = v67;
    v53 = &v8[*(v4 + 24)];
    *&v83[1] = *(v53 + 4);
    v54 = *(v53 + 1);
    v82 = *v53;
    v83[0] = v54;
    v55 = &v11[*(v4 + 24)];
    v56 = *(v55 + 1);
    v84 = *v55;
    *v85 = v56;
    *&v85[16] = *(v55 + 4);
    v57 = v54;
    v58 = v56;
    v59 = v82;
    v60 = v84;
    sub_1B7215720(&v82, v81);
    sub_1B7215720(&v84, v81);
    if ((MEMORY[0x1B8CA5970](v59, *(&v59 + 1), v57, v60, *(&v60 + 1), v58) & 1) == 0)
    {
      sub_1B721722C(&v84);
      sub_1B721722C(&v82);
      v8 = v68;
LABEL_29:
      sub_1B72237D4(v8, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
LABEL_30:
      sub_1B72237D4(v11, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
      return 0;
    }

    if (*(v83 + 8) == *&v85[8])
    {
      sub_1B721722C(&v84);
      sub_1B721722C(&v82);
      v8 = v68;
      v21 = v76;
    }

    else
    {
      v28 = sub_1B78020F8();
      sub_1B721722C(&v84);
      sub_1B721722C(&v82);
      v8 = v68;
      v21 = v76;
      if ((v28 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_1B72237D4(v8, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    result = sub_1B72237D4(v11, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    a2 = v75;
    v26 = v77;
    v5 = v78;
    v27 = v66;
  }

  if (v27 <= v22 + 1)
  {
    v30 = v22 + 1;
  }

  else
  {
    v30 = v27;
  }

  v31 = v30 - 1;
  while (1)
  {
    v32 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v32 >= v27)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FD20);
      v44 = v70;
      (*(*(v61 - 8) + 56))(v70, 1, 1, v61);
      v77 = 0;
      v22 = v31;
      goto LABEL_19;
    }

    v33 = *(v62 + 8 * v32);
    ++v22;
    if (v33)
    {
      v77 = (v33 - 1) & v33;
      v29 = __clz(__rbit64(v33)) | (v32 << 6);
      v22 = v32;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t StringParams.hash.getter()
{
  sub_1B7802378();
  sub_1B7223414(v2, *(v0 + OBJC_IVAR____TtC10FinanceKit12StringParams_value));
  return sub_1B7802358();
}

id StringParams.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = sub_1B7223580();
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 32) = v6;
  v8 = sub_1B7801518();

  if (v8 && (v9 = sub_1B7221E30(v8), , v9))
  {
    *&v2[OBJC_IVAR____TtC10FinanceKit12StringParams_value] = v9;
    v12.receiver = v2;
    v12.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v12, sel_init);

    return v10;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1B7221E30(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F648);
    v2 = sub_1B7801CD8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_1B72238E4(*(v1 + 48) + 40 * v15, v28);
    sub_1B719BDE4(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_1B72238E4(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_1B7205418(v25, &unk_1EB98FD40);

      goto LABEL_22;
    }

    sub_1B719BDE4(v26 + 8, v24);
    sub_1B7205418(v25, &unk_1EB98FD40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_1B724548C(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

Swift::Void __swiftcall StringParams.encode(with:)(NSCoder with)
{
  sub_1B7222224(*(v1 + OBJC_IVAR____TtC10FinanceKit12StringParams_value));
  sub_1B7223580();
  sub_1B7223654(&qword_1EB98FCC8, sub_1B7223580);
  v3 = sub_1B7800708();

  v4 = sub_1B7800838();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

void sub_1B7222224(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FD30);
    v2 = sub_1B7801CD8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1B7223580();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v24 = v8 >> 6;

    v25 = 0;
    while (v7)
    {
      v31 = v25;
LABEL_33:
      v7 &= v7 - 1;

      v32 = sub_1B7800838();

      v33 = sub_1B7800838();

      v34 = sub_1B72458DC(v32);
      if (v35)
      {
        v26 = *(v2 + 48);
        v27 = *(v26 + 8 * v34);
        *(v26 + 8 * v34) = v32;
        v28 = v34;

        v29 = *(v2 + 56);
        v30 = *(v29 + 8 * v28);
        *(v29 + 8 * v28) = v33;
      }

      else
      {
        v36 = *(v2 + 16);
        if (v36 >= *(v2 + 24))
        {
          goto LABEL_40;
        }

        *(v2 + 64 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        *(*(v2 + 48) + 8 * v34) = v32;
        *(*(v2 + 56) + 8 * v34) = v33;
        *(v2 + 16) = v36 + 1;
      }

      v25 = v31;
    }

    while (1)
    {
      v31 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v31 >= v24)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v31);
      ++v25;
      if (v7)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:

      v14 = sub_1B7800838();

      v15 = sub_1B7800838();

      v16 = sub_1B7801548();
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v14;
      *(*(v2 + 56) + 8 * v12) = v15;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

unint64_t sub_1B72225D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD00);
    v2 = sub_1B7801CD8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for CFString(0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  if (v3 == MEMORY[0x1E69E6158])
  {
    v24 = (v5 + 63) >> 6;

    v25 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v30 >= v24)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v30);
      ++v25;
      if (v7)
      {
        while (1)
        {
          v31 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v32 = *(*(a1 + 48) + 8 * (v31 | (v30 << 6)));
          swift_dynamicCast();
          sub_1B72051F0((v39 + 8), (v38 + 8));
          sub_1B72051F0((v38 + 8), v37);
          sub_1B72051F0(v37, v38);
          result = sub_1B72635A0(v32);
          if (v33)
          {
            v26 = *(v2 + 48);
            v27 = *(v26 + 8 * result);
            *(v26 + 8 * result) = v32;
            v28 = result;

            v29 = (*(v2 + 56) + 32 * v28);
            __swift_destroy_boxed_opaque_existential_1(v29);
            result = sub_1B72051F0(v38, v29);
            v25 = v30;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v32;
            result = sub_1B72051F0(v38, (*(v2 + 56) + 32 * result));
            v34 = *(v2 + 16);
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v36;
            v25 = v30;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v30 = v25;
        }
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      v15 = *(*(a1 + 48) + 8 * v14);
      LOBYTE(v37[0]) = *(*(a1 + 56) + v14);
      v16 = v15;
      swift_dynamicCast();
      sub_1B72051F0((v39 + 8), (v38 + 8));
      sub_1B72051F0((v38 + 8), v39);
      sub_1B78022F8();
      sub_1B7223654(&qword_1EB98FD08, type metadata accessor for CFString);
      sub_1B77FFDE8();
      result = sub_1B7802368();
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v9 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v12) = v16;
      result = sub_1B72051F0(v39, (*(v2 + 56) + 32 * v12));
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1B7222A0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F310);
    v2 = sub_1B7801CD8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B719BDE4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1B72051F0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1B72051F0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1B72051F0(v31, v32);
    result = sub_1B78019C8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1B72051F0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B7222CD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD10);
    v1 = sub_1B7801CD8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v13 = (*(a1 + 56) + 16 * v11);
    v14 = v13[1];
    v26 = *v13;
    v27 = v14;
    v15 = v12;

    swift_dynamicCast();
    sub_1B72051F0((v28 + 8), v25);
    sub_1B72051F0(v25, v28);
    sub_1B7800868();
    sub_1B78022F8();
    sub_1B7800798();
    v16 = sub_1B7802368();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v15;
    result = sub_1B72051F0(v28, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id StringParams.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B7223128()
{
  result = sub_1B7800838();
  qword_1EDAFC520 = result;
  return result;
}

id static NSValueTransformerName.stringParamsTransformerName.getter()
{
  if (qword_1EDAFC510 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAFC520;

  return v1;
}

uint64_t static StringParamsTransformer.allowedTopLevelClasses.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  *(v0 + 32) = type metadata accessor for StringParams();
  return v0;
}

void static StringParamsTransformer.register()()
{
  if (qword_1EDAFC510 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAFC520;
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(v0) init];
  [v2 setValueTransformer:v3 forName:v1];
}

id StringParamsTransformer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s10FinanceKit12StringParamsCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7223414(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B8CA6620](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1B7800798();

        sub_1B7800798();

        result = sub_1B7802368();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7223580()
{
  result = qword_1EDAF6440;
  if (!qword_1EDAF6440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAF6440);
  }

  return result;
}

uint64_t sub_1B7223654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B722369C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7223704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B722376C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72237D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PIIStringProcessorWrapper.redact(from:forCountryCodes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PIIStringProcessor.redact(from:forCountryCodes:)(a1, a2, a3, &v5);
  result = v5;
  if (v6 != 1)
  {

    sub_1B7223CC4();
    return a1;
  }

  return result;
}

id PIIStringProcessorWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PIIStringProcessorWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s10FinanceKit25PIIStringProcessorWrapperC04makeD0ACyFZ_0()
{
  v0 = type metadata accessor for PIIRedactionRegexCollectionProvider();
  v1 = swift_allocObject();
  v9 = &type metadata for FinanceTrialProvider;
  v10 = &protocol witness table for FinanceTrialProvider;
  sub_1B719B06C(v8, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD58);
  v2 = swift_allocObject();
  *(v2 + 40) = 0;
  __swift_destroy_boxed_opaque_existential_1(v8);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v1 + 56) = v2;
  type metadata accessor for PIIStringProcessor();
  v3 = swift_allocObject();
  v3[5] = v0;
  v3[6] = &protocol witness table for PIIRedactionRegexCollectionProvider;
  v3[2] = v1;
  v4 = type metadata accessor for PIIStringProcessorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC10FinanceKit25PIIStringProcessorWrapper_piiProcessor] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ManagedInternalAccountBalance.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInternalAccountBalance.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInternalAccountBalance.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedInternalAccountBalance.__allocating_init(_:account:updatedAt:context:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  return sub_1B7223F00(a1, a2, a3, a4, type metadata accessor for InternalAccountBalance, type metadata accessor for InternalAccountBalance, sub_1B726602C, type metadata accessor for InternalAccountBalance);
}

{
  return sub_1B7223F00(a1, a2, a3, a4, type metadata accessor for RawBankConnectData.Account, type metadata accessor for RawBankConnectData.Account, sub_1B7266780, type metadata accessor for RawBankConnectData.Account);
}

id sub_1B7223F00(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *, id, id), uint64_t (*a8)(void))
{
  v16 = a5(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26 - v17;
  v19 = [objc_allocWithZone(v8) initWithContext_];
  v20 = sub_1B77FF8B8();
  [v19 setLastUpdatedAt_];

  type metadata accessor for ManagedAccountBalance();
  sub_1B722738C(a1, v18, a6);
  v21 = a2;
  v22 = a4;
  v23 = a7(v18, v21, v22);

  [v19 setPublicAccountBalanceObject_];
  v24 = sub_1B77FF988();
  (*(*(v24 - 8) + 8))(a3, v24);
  sub_1B72273F4(a1, a8);
  return v19;
}

void static ManagedInternalAccountBalance.update(_:withAvailableAmountAsOf:withBookedAmountAsOf:updatedAt:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF8B8();
  [a1 setLastUpdatedAt_];

  v7 = [a1 publicAccountBalanceObject];
  _s10FinanceKit21ManagedAccountBalanceC6update_23withAvailableAmountAsOf0g6BookedijK0yAC_10Foundation4DateVSgAJtFZ_0(v7, a2, a3);
}

uint64_t BalanceCalculation.init(managedAccountBalance:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v3 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v133 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v138 = &v121 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v134 = &v121 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v146 = &v121 - v11;
  v158 = sub_1B77FF988();
  v154 = *(v158 - 8);
  v12 = MEMORY[0x1EEE9AC00](v158);
  v136 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v121 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v139 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v142 = &v121 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v143 = &v121 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v121 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v157 = &v121 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD68);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v137 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v140 = &v121 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v145 = &v121 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v144 = &v121 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v155 = &v121 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v121 - v40;
  v42 = type metadata accessor for BalanceCalculation(0);
  v147 = *(v42 - 8);
  v148 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v141 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v4;
  v44 = *(v4 + 56);
  v152 = v4 + 56;
  v153 = v41;
  v156 = v3;
  v151 = v44;
  v44(v41, 1, 1, v3);
  v45 = [a1 availableAmountValue];
  if (v45)
  {
    v46 = v45;
    [v45 decimalValue];
    v47 = v161;
    v49 = v159;
    v48 = v160;
    v50 = [a1 currency];
    v51 = sub_1B7800868();
    v53 = v52;

    CurrencyAmount.init(_:currencyCode:)(v49, v48, v47, v51, v53, &v159);
    v54 = v160;
    v132 = v159;
    v55 = v161;
    v56 = v162;
    v57 = v163;
  }

  else
  {
    v132 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  v58 = [a1 availableAmountAsOf];
  v59 = v154;
  if (v58)
  {
    v60 = v58;
    sub_1B77FF928();

    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = *(v59 + 56);
  v62(v27, v61, 1, v158);
  sub_1B722376C(v27, v157, &qword_1EB98EBD0);
  sub_1B7264170(&v159);
  if (v57)
  {
    v63 = v54;
    LODWORD(v131) = v159;
    sub_1B7205588(v157, v24, &qword_1EB98EBD0);
    v64 = v158;
    if ((*(v59 + 48))(v24, 1, v158) == 1)
    {

      sub_1B7205418(v24, &qword_1EB98EBD0);
    }

    else
    {
      v128 = v56;
      v129 = v55;
      v130 = v62;
      v65 = *(v59 + 32);
      v66 = v135;
      v65(v135, v24, v64);
      v67 = v64;
      if (v131 == 2)
      {
        (*(v59 + 8))(v66, v64);
      }

      else
      {
        v127 = v129 >> 16;
        v126 = HIWORD(v63);
        v125 = HIDWORD(v63);
        v124 = v63 >> 16;
        v68 = v132;
        v123 = HIWORD(v132);
        v122 = HIDWORD(v132);
        v69 = v153;
        sub_1B7205418(v153, &qword_1EB98FD68);
        v70 = v67;
        v71 = v156;
        v65(v69 + *(v156 + 20), v66, v70);
        *v69 = v68;
        *(v69 + 4) = v122;
        *(v69 + 6) = v123;
        *(v69 + 8) = v63;
        *(v69 + 10) = v124;
        *(v69 + 12) = v125;
        *(v69 + 14) = v126;
        *(v69 + 16) = v129;
        *(v69 + 18) = v127;
        *(v69 + 24) = v128;
        *(v69 + 32) = v57;
        *(v69 + *(v71 + 24)) = v131 & 1;
        v151(v69, 0, 1, v71);
      }

      v62 = v130;
    }
  }

  v151(v155, 1, 1, v156);
  v72 = [a1 bookedAmountValue];
  if (v72)
  {
    v73 = v72;
    [v72 decimalValue];
    v74 = v161;
    v76 = v159;
    v75 = v160;
    v77 = [a1 currency];
    v78 = sub_1B7800868();
    v80 = v79;

    CurrencyAmount.init(_:currencyCode:)(v76, v75, v74, v78, v80, &v159);
    v81 = v160;
    v132 = v159;
    v82 = v162;
    v135 = v161;
    v83 = v163;
  }

  else
  {
    v132 = 0;
    v81 = 0;
    v135 = 0;
    v82 = 0;
    v83 = 0;
  }

  v84 = v158;
  v85 = v143;
  v86 = v142;
  v87 = [a1 bookedAmountAsOf];
  if (v87)
  {
    v88 = v87;
    sub_1B77FF928();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v62(v86, v89, 1, v84);
  sub_1B722376C(v86, v85, &qword_1EB98EBD0);
  sub_1B7264274(&v159);

  sub_1B7205418(v157, &qword_1EB98EBD0);
  if (!v83)
  {
    sub_1B7205418(v85, &qword_1EB98EBD0);
    v95 = v155;
    v96 = v156;
    v94 = v153;
    goto LABEL_28;
  }

  v90 = v159;
  v91 = v139;
  sub_1B722376C(v85, v139, &qword_1EB98EBD0);
  v92 = v154;
  v93 = (*(v154 + 48))(v91, 1, v84);
  v94 = v153;
  if (v93 == 1)
  {

    sub_1B7205418(v91, &qword_1EB98EBD0);
LABEL_26:
    v95 = v155;
    v96 = v156;
    goto LABEL_28;
  }

  v97 = v92;
  v98 = *(v92 + 32);
  v99 = v136;
  v98(v136, v91, v84);
  if (v90 == 2)
  {
    (*(v97 + 8))(v99, v84);

    goto LABEL_26;
  }

  v158 = v82;
  v100 = v135;
  v157 = v135 >> 16;
  v154 = HIWORD(v81);
  v143 = HIDWORD(v81);
  v142 = (v81 >> 16);
  v101 = v132;
  v139 = HIWORD(v132);
  v131 = HIDWORD(v132);
  v95 = v155;
  sub_1B7205418(v155, &qword_1EB98FD68);
  v102 = v99;
  v96 = v156;
  v98((v95 + *(v156 + 20)), v102, v84);
  *v95 = v101;
  *(v95 + 4) = v131;
  *(v95 + 6) = v139;
  *(v95 + 8) = v81;
  *(v95 + 10) = v142;
  *(v95 + 12) = v143;
  v94 = v153;
  *(v95 + 14) = v154;
  *(v95 + 16) = v100;
  v103 = v158;
  *(v95 + 18) = v157;
  *(v95 + 24) = v103;
  *(v95 + 32) = v83;
  *(v95 + *(v96 + 24)) = v90 & 1;
  v151(v95, 0, 1, v96);
LABEL_28:
  v104 = v144;
  sub_1B7205588(v94, v144, &qword_1EB98FD68);
  v105 = *(v149 + 48);
  v106 = v105(v104, 1, v96);
  v108 = v145;
  v107 = v146;
  if (v106 == 1)
  {
    v108 = v104;
  }

  else
  {
    sub_1B721B694(v104, v146, type metadata accessor for BalanceCalculation.CalculationDetails);
    sub_1B7205588(v95, v108, &qword_1EB98FD68);
    if (v105(v108, 1, v96) != 1)
    {
      sub_1B7205418(v95, &qword_1EB98FD68);
      sub_1B7205418(v94, &qword_1EB98FD68);
      v116 = v134;
      sub_1B721B694(v108, v134, type metadata accessor for BalanceCalculation.CalculationDetails);
      v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      v115 = v141;
      sub_1B721B694(v107, v141, type metadata accessor for BalanceCalculation.CalculationDetails);
      sub_1B721B694(v116, v115 + v117, type metadata accessor for BalanceCalculation.CalculationDetails);
      goto LABEL_38;
    }

    sub_1B72273F4(v107, type metadata accessor for BalanceCalculation.CalculationDetails);
  }

  sub_1B7205418(v108, &qword_1EB98FD68);
  v109 = v140;
  sub_1B722376C(v94, v140, &qword_1EB98FD68);
  if (v105(v109, 1, v96) != 1)
  {
    sub_1B7205418(v95, &qword_1EB98FD68);
    v114 = v138;
    sub_1B721B694(v109, v138, type metadata accessor for BalanceCalculation.CalculationDetails);
    v115 = v141;
    sub_1B721B694(v114, v141, type metadata accessor for BalanceCalculation.CalculationDetails);
LABEL_38:
    v113 = v148;
    swift_storeEnumTagMultiPayload();
    v112 = v150;
    sub_1B721B694(v115, v150, type metadata accessor for BalanceCalculation);
    v111 = 0;
    return (*(v147 + 56))(v112, v111, 1, v113);
  }

  sub_1B7205418(v109, &qword_1EB98FD68);
  v110 = v137;
  sub_1B722376C(v95, v137, &qword_1EB98FD68);
  if (v105(v110, 1, v96) != 1)
  {
    v118 = v110;
    v119 = v133;
    sub_1B721B694(v118, v133, type metadata accessor for BalanceCalculation.CalculationDetails);
    v115 = v141;
    sub_1B721B694(v119, v141, type metadata accessor for BalanceCalculation.CalculationDetails);
    goto LABEL_38;
  }

  sub_1B7205418(v110, &qword_1EB98FD68);
  v111 = 1;
  v112 = v150;
  v113 = v148;
  return (*(v147 + 56))(v112, v111, 1, v113);
}

uint64_t InternalAccountBalance.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for BalanceCalculation(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BalanceCalculation.init(managedAccountBalance:)([a1 publicAccountBalanceObject], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B7205418(v6, &qword_1EB98FD70);
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    sub_1B721B694(v6, v10, type metadata accessor for BalanceCalculation);
    v11 = [a1 publicAccountBalanceObject];
    v12 = [v11 id];

    sub_1B77FF9E8();
    v13 = type metadata accessor for InternalAccountBalance(0);
    sub_1B722738C(v10, a2 + *(v13 + 20), type metadata accessor for BalanceCalculation);
    v14 = [a1 lastUpdatedAt];
    sub_1B77FF928();

    return sub_1B72273F4(v10, type metadata accessor for BalanceCalculation);
  }

  return result;
}

void ManagedInternalAccountBalance.id.getter()
{
  v1 = [v0 publicAccountBalanceObject];
  v2 = [v1 id];

  sub_1B77FF9E8();
}

void ManagedInternalAccountBalance.availableAmountCreditDebitIndicator.getter(char *a1@<X8>)
{
  v3 = [v1 publicAccountBalanceObject];
  sub_1B7264170(a1);
}

void ManagedInternalAccountBalance.bookedAmountCreditDebitIndicator.getter(char *a1@<X8>)
{
  v3 = [v1 publicAccountBalanceObject];
  sub_1B7264274(a1);
}

void sub_1B72253E4(id *a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X3>, _BYTE *a3@<X8>)
{
  v5 = [*a1 publicAccountBalanceObject];
  a2(&v6);

  *a3 = v6;
}

void sub_1B722544C(unsigned __int8 *a1, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = [*a2 publicAccountBalanceObject];
  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v9 = v8;
  [v7 *a5];
}

void (*ManagedInternalAccountBalance.availableAmountAsOf.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
    v5[4] = v7;
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
    v5[4] = v7;
    v8 = malloc(v6);
  }

  v9 = v8;
  v5[5] = v8;
  v10 = [v1 publicAccountBalanceObject];
  v11 = [v10 availableAmountAsOf];

  if (v11)
  {
    sub_1B77FF928();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_1B77FF988();
  (*(*(v13 - 8) + 56))(v7, v12, 1, v13);
  sub_1B722376C(v7, v9, &qword_1EB98EBD0);
  return sub_1B72256F8;
}

uint64_t sub_1B7225710@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 publicAccountBalanceObject];
  v6 = [v5 *a1];

  if (v6)
  {
    sub_1B77FF928();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1B77FF988();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

uint64_t sub_1B72257DC@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = [*a1 publicAccountBalanceObject];
  v6 = [v5 *a2];

  if (v6)
  {
    sub_1B77FF928();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1B77FF988();
  v9 = *(*(v8 - 8) + 56);

  return v9(a3, v7, 1, v8);
}

uint64_t sub_1B72258A8(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1B7205588(a1, &v19 - v12, &qword_1EB98EBD0);
  v14 = [*a2 publicAccountBalanceObject];
  sub_1B7205588(v13, v11, &qword_1EB98EBD0);
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v11, 1, v15) != 1)
  {
    v17 = sub_1B77FF8B8();
    (*(v16 + 8))(v11, v15);
  }

  [v14 *a5];

  return sub_1B7205418(v13, &qword_1EB98EBD0);
}

uint64_t sub_1B7225A64(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = [v4 publicAccountBalanceObject];
  sub_1B7205588(a1, v8, &qword_1EB98EBD0);
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_1B77FF8B8();
    (*(v11 + 8))(v8, v10);
  }

  [v9 *a2];

  return sub_1B7205418(a1, &qword_1EB98EBD0);
}

void (*ManagedInternalAccountBalance.bookedAmountAsOf.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
    v5[4] = v7;
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
    v5[4] = v7;
    v8 = malloc(v6);
  }

  v9 = v8;
  v5[5] = v8;
  v10 = [v1 publicAccountBalanceObject];
  v11 = [v10 bookedAmountAsOf];

  if (v11)
  {
    sub_1B77FF928();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_1B77FF988();
  (*(*(v13 - 8) + 56))(v7, v12, 1, v13);
  sub_1B722376C(v7, v9, &qword_1EB98EBD0);
  return sub_1B7225DC8;
}

void sub_1B7225DD4(uint64_t *a1, char a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (a2)
  {
    v7 = *(v4 + 8);
    v6 = *(v4 + 16);
    v8 = *v4;
    sub_1B7205588(*(*a1 + 40), v6, &qword_1EB98EBD0);
    v9 = [v8 publicAccountBalanceObject];
    sub_1B7205588(v6, v7, &qword_1EB98EBD0);
    v10 = sub_1B77FF988();
    v11 = *(v10 - 8);
    v12 = 0;
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      v13 = *(v4 + 8);
      v12 = sub_1B77FF8B8();
      (*(v11 + 8))(v13, v10);
    }

    v15 = *(v4 + 32);
    v14 = *(v4 + 40);
    v17 = *(v4 + 16);
    v16 = *(v4 + 24);
    v18 = *(v4 + 8);
    [v9 *a3];

    sub_1B7205418(v17, &qword_1EB98EBD0);
  }

  else
  {
    v19 = *(v4 + 24);
    v20 = [*v4 publicAccountBalanceObject];
    sub_1B7205588(v5, v19, &qword_1EB98EBD0);
    v21 = sub_1B77FF988();
    v22 = *(v21 - 8);
    v23 = 0;
    if ((*(v22 + 48))(v19, 1, v21) != 1)
    {
      v24 = *(v4 + 24);
      v23 = sub_1B77FF8B8();
      (*(v22 + 8))(v24, v21);
    }

    v15 = *(v4 + 32);
    v14 = *(v4 + 40);
    v17 = *(v4 + 16);
    v16 = *(v4 + 24);
    v18 = *(v4 + 8);
    [v20 *a3];
  }

  sub_1B7205418(v14, &qword_1EB98EBD0);
  free(v14);
  free(v15);
  free(v16);
  free(v17);
  free(v18);

  free(v4);
}

void ManagedInternalAccountBalance.availableAmount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 publicAccountBalanceObject];
  sub_1B7264164(a1);
}

void ManagedInternalAccountBalance.bookedAmount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 publicAccountBalanceObject];
  sub_1B7264184(a1);
}

id static ManagedInternalAccountBalance.fetchRequest(for:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedInternalAccountBalance;
  v5 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  v6 = sub_1B7800C18();
  [v5 setRelationshipKeyPathsForPrefetching_];

  if (v3 != 1)
  {
    if (v2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v1;
    }

    v8 = v3;
    [v5 setFetchLimit_];
    if (v3)
    {
      v9 = qword_1EB98E958;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_1B751E2EC(off_1EB98FD60);
      [v5 setPredicate_];
    }

    sub_1B72262B8(v4, v5);
    sub_1B7227454(v1, v2, v3);
  }

  return v5;
}

void sub_1B72262B8(unint64_t a1, void *a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 attributesByName];

  sub_1B7205540(0, &qword_1EB98FD78);
  v5 = sub_1B7800728();

  v27 = MEMORY[0x1E69E7CC0];
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_31:
    v7 = sub_1B7801958();
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v25 = (v2 & 0xC000000000000001);
      v24 = v2;
      do
      {
        v9 = v8;
        while (1)
        {
          if (v25)
          {
            v10 = MEMORY[0x1B8CA5DC0](v9, v2);
          }

          else
          {
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_30;
            }

            v10 = *(v2 + 8 * v9 + 32);
          }

          v11 = v10;
          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v12 = [v10 key];
          if (!v12)
          {
            break;
          }

          v13 = v12;
          v14 = sub_1B7800868();
          v16 = v15;

          if (*(v5 + 16))
          {
            sub_1B724548C(v14, v16);
            if (v17)
            {

              break;
            }
          }

          if (qword_1EB98E958 != -1)
          {
            swift_once();
          }

          if (*(off_1EB98FD60 + 2))
          {
            sub_1B724548C(v14, v16);
            v19 = v18;

            if (v19)
            {
              swift_bridgeObjectRetain_n();
              v20 = [v11 ascending];
              v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
              v22 = sub_1B7800838();
              [v21 initWithKey:v22 ascending:v20];

              swift_bridgeObjectRelease_n();
              v2 = v24;
              break;
            }

            v2 = v24;
          }

          else
          {
          }

          ++v9;
          if (v8 == v7)
          {
            goto LABEL_32;
          }
        }

        MEMORY[0x1B8CA4F20]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
          v2 = v24;
        }

        sub_1B7800C88();
      }

      while (v8 != v7);
    }
  }

  else
  {
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

LABEL_32:
  sub_1B7205540(0, &qword_1EDAF6470);
  v26 = sub_1B7800C18();

  [a2 setSortDescriptors_];
}

void sub_1B72266E0(unint64_t a1, unint64_t a2, void (*a3)(void), void *a4, uint64_t a5)
{
  a3(0);
  if (!a1)
  {
    return;
  }

  v7 = [swift_getObjCClassFromMetadata() entity];
  v8 = [v7 attributesByName];

  sub_1B7205540(0, &qword_1EB98FD78);
  v9 = sub_1B7800728();

  v32 = MEMORY[0x1E69E7CC0];
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1;
  if (a1 >> 62)
  {
LABEL_31:
    v11 = sub_1B7801958();
    v27 = a2;
    if (v11)
    {
LABEL_4:
      v12 = 0;
      v13 = v28;
      do
      {
        a2 = v12;
        while (1)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1B8CA5DC0](a2, v13);
          }

          else
          {
            if (a2 >= *(v10 + 16))
            {
              goto LABEL_30;
            }

            v14 = *(v13 + 8 * a2 + 32);
          }

          v15 = v14;
          v12 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v16 = [v14 key];
          if (!v16)
          {
            break;
          }

          v17 = v16;
          v18 = sub_1B7800868();
          v20 = v19;

          if (*(v9 + 16))
          {
            sub_1B724548C(v18, v20);
            if (v21)
            {

              break;
            }
          }

          if (*a4 != -1)
          {
            swift_once();
          }

          if (*(*a5 + 16))
          {
            sub_1B724548C(v18, v20);
            v23 = v22;

            if (v23)
            {
              swift_bridgeObjectRetain_n();
              v24 = [v15 ascending];
              v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
              v26 = sub_1B7800838();
              [v25 initWithKey:v26 ascending:v24];

              swift_bridgeObjectRelease_n();
              v13 = v28;
              break;
            }

            v13 = v28;
          }

          else
          {
          }

          ++a2;
          if (v12 == v11)
          {
            goto LABEL_32;
          }
        }

        MEMORY[0x1B8CA4F20]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
      }

      while (v12 != v11);
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = a2;
    if (v11)
    {
      goto LABEL_4;
    }
  }

LABEL_32:
  sub_1B7205540(0, &qword_1EDAF6470);
  v31 = sub_1B7800C18();

  [v27 setSortDescriptors_];
}

void sub_1B7226B50(unint64_t a1, void *a2)
{
  type metadata accessor for ManagedInternalAccountBalance();
  if (!a1)
  {
    return;
  }

  v4 = [swift_getObjCClassFromMetadata() entity];
  v5 = [v4 attributesByName];

  sub_1B7205540(0, &qword_1EB98FD78);
  v6 = sub_1B7800728();

  v28 = MEMORY[0x1E69E7CC0];
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1;
  if (a1 >> 62)
  {
LABEL_32:
    v8 = sub_1B7801958();
    v25 = a2;
    if (v8)
    {
LABEL_4:
      v9 = 0;
      a2 = v26;
      do
      {
        v10 = v9;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1B8CA5DC0](v10, a2);
          }

          else
          {
            if (v10 >= *(v7 + 16))
            {
              goto LABEL_31;
            }

            v11 = *(a2 + v10 + 4);
          }

          v12 = v11;
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v13 = [v11 key];
          if (!v13)
          {
            break;
          }

          v14 = v13;
          v15 = v7;
          v16 = sub_1B7800868();
          v18 = v17;

          if (*(v6 + 16))
          {
            sub_1B724548C(v16, v18);
            if (v19)
            {

LABEL_23:
              v7 = v15;
              break;
            }
          }

          if (qword_1EB98E958 != -1)
          {
            swift_once();
          }

          if (*(off_1EB98FD60 + 2))
          {
            sub_1B724548C(v16, v18);
            v21 = v20;

            if (v21)
            {
              swift_bridgeObjectRetain_n();
              v22 = [v12 ascending];
              v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
              v24 = sub_1B7800838();
              [v23 initWithKey:v24 ascending:v22];

              swift_bridgeObjectRelease_n();
              a2 = v26;
              goto LABEL_23;
            }

            a2 = v26;
          }

          else
          {
          }

          v7 = v15;
          ++v10;
          if (v9 == v8)
          {
            goto LABEL_33;
          }
        }

        MEMORY[0x1B8CA4F20]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
          a2 = v26;
        }

        sub_1B7800C88();
      }

      while (v9 != v8);
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = a2;
    if (v8)
    {
      goto LABEL_4;
    }
  }

LABEL_33:
  sub_1B7205540(0, &qword_1EDAF6470);
  v27 = sub_1B7800C18();

  [v25 setSortDescriptors_];
}