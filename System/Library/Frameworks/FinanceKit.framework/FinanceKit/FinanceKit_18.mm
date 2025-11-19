uint64_t Institution.backgroundRefreshConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Institution(0) + 48);

  return sub_1B7346AB8(a1, v3);
}

uint64_t Institution.multipleConsentsEnabled.setter(char a1)
{
  result = type metadata accessor for Institution(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Institution.problemReportingEnabled.setter(char a1)
{
  result = type metadata accessor for Institution(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Institution.financialLabEnabled.setter(char a1)
{
  result = type metadata accessor for Institution(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t Institution.timestampSuitableForUserDisplay.setter(char a1)
{
  result = type metadata accessor for Institution(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Institution.piiRedactionConfiguration.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for Institution(0) + 72));
}

uint64_t Institution.piiRedactionConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for Institution(0) + 72);

  *(v1 + v3) = v2;
  return result;
}

uint64_t Institution.privacyLabels.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for Institution(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t Institution.privacyLabels.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for Institution(0);
  *(v1 + *(result + 76)) = v2;
  return result;
}

double Institution.consentSyncingConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Institution(0) + 80);
  result = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t Institution.consentSyncingConfiguration.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  result = type metadata accessor for Institution(0);
  v5 = v1 + *(result + 80);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t Institution.balanceWidgetEnabled.setter(char a1)
{
  result = type metadata accessor for Institution(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t Institution.personalizedInsightsEnabled.setter(char a1)
{
  result = type metadata accessor for Institution(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t Institution.supportsTransactions.setter(char a1)
{
  result = type metadata accessor for Institution(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

unint64_t sub_1B734397C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6E65736E6F636572;
      break;
    case 3:
    case 11:
      result = 0xD000000000000012;
      break;
    case 4:
    case 5:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 9:
    case 10:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x4C79636176697270;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
    case 19:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7343B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7347EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7343BC0(uint64_t a1)
{
  v2 = sub_1B7346B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7343BFC(uint64_t a1)
{
  v2 = sub_1B7346B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Institution.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992550);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7346B1C();
  sub_1B78023F8();
  LOBYTE(v14) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1B7801F78();
    LOBYTE(v14) = *(v3 + 32);
    v16 = 2;
    sub_1B7346B70();
    sub_1B7801FC8();
    LOWORD(v14) = *(v3 + 34);
    v16 = 3;
    sub_1B7346BC4();
    sub_1B7801FC8();
    LOBYTE(v14) = 4;
    sub_1B7801F18();
    LOBYTE(v14) = 5;
    sub_1B7801F98();
    LOBYTE(v14) = 6;
    sub_1B7801F98();
    v14 = *(v3 + 72);
    v16 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B721523C(&qword_1EB98F960);
    sub_1B7801F38();
    v9 = type metadata accessor for Institution(0);
    LOBYTE(v14) = 8;
    type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
    sub_1B71A6FE0(&qword_1EB992570, type metadata accessor for Institution.BackgroundRefreshConfiguration);
    sub_1B7801FC8();
    LOBYTE(v14) = 9;
    sub_1B7801F88();
    LOBYTE(v14) = 10;
    sub_1B7801F88();
    LOBYTE(v14) = 11;
    type metadata accessor for BankConnectTermsAndConditions();
    sub_1B71A6FE0(&qword_1EB992578, type metadata accessor for BankConnectTermsAndConditions);
    sub_1B7801F38();
    LOBYTE(v14) = 12;
    sub_1B7801F88();
    LOBYTE(v14) = 13;
    sub_1B7801F88();
    v14 = *(v3 + v9[18]);
    v16 = 14;
    sub_1B7346C18();

    sub_1B7801F38();

    LOWORD(v14) = *(v3 + v9[19]);
    v16 = 15;
    sub_1B7346C6C();
    sub_1B7801FC8();
    v10 = v3 + v9[20];
    v11 = *(v10 + 8);
    LOBYTE(v14) = *v10;
    v15 = v11;
    v16 = 16;
    sub_1B7346CC0();
    sub_1B7801FC8();
    LOBYTE(v14) = 17;
    sub_1B7801F88();
    LOBYTE(v14) = 18;
    sub_1B7801F88();
    LOBYTE(v14) = 19;
    sub_1B7801F88();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Institution.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v32 - v7;
  v8 = type metadata accessor for BankConnectTermsAndConditions();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7802328();
  sub_1B7802328();
  v15 = *(v1 + 48);
  v35 = v4;
  if (v15 == 1)
  {
    sub_1B7802318();
  }

  else
  {
    v16 = *(v1 + 40);
    sub_1B7802318();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x1B8CA6660](v17);
  }

  v18 = *(v1 + 56);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v18);
  v19 = *(v1 + 64);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v19);
  v20 = *(v1 + 72);
  if (v20)
  {
    sub_1B7802318();
    MEMORY[0x1B8CA6620](*(v20 + 16));
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 40;
      do
      {

        sub_1B7800798();

        v22 += 16;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    sub_1B7802318();
  }

  v23 = type metadata accessor for Institution(0);
  Institution.BackgroundRefreshConfiguration.hash(into:)();
  sub_1B7802318();
  sub_1B7802318();
  sub_1B7205588(v1 + v23[15], v14, &qword_1EB98FC40);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    sub_1B7346D14(v14, v11, type metadata accessor for BankConnectTermsAndConditions);
    sub_1B7802318();
    sub_1B7800798();
    sub_1B71A6FE0(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
    v24 = v35;
    sub_1B7800768();
    v25 = v33;
    sub_1B7205588(&v11[*(v8 + 24)], v33, &qword_1EB98EBD0);
    v26 = v34;
    if ((*(v34 + 48))(v25, 1, v24) == 1)
    {
      sub_1B7802318();
    }

    else
    {
      v27 = v32;
      (*(v26 + 32))(v32, v25, v24);
      sub_1B7802318();
      sub_1B7800768();
      (*(v26 + 8))(v27, v24);
    }

    sub_1B7800768();
    sub_1B7346D7C(v11, type metadata accessor for BankConnectTermsAndConditions);
  }

  sub_1B7802318();
  sub_1B7802318();
  v28 = *(v2 + v23[18]);
  sub_1B7802318();
  if (v28)
  {

    sub_1B7345D5C(a1, v28);
  }

  sub_1B7802328();
  v29 = *(v2 + v23[20] + 8);
  sub_1B7802318();
  v30 = 0.0;
  if (v29 != 0.0)
  {
    v30 = v29;
  }

  MEMORY[0x1B8CA6660](*&v30);
  sub_1B7802318();
  sub_1B7802318();
  return sub_1B7802318();
}

uint64_t sub_1B73447F0(void (*a1)(_BYTE *))
{
  sub_1B78022F8();
  a1(v3);
  return sub_1B7802368();
}

uint64_t Institution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v57 - v4;
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  MEMORY[0x1EEE9AC00](refreshed);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992598);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v57 - v10;
  v12 = type metadata accessor for Institution(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 60);
  v17 = type metadata accessor for BankConnectTermsAndConditions();
  v18 = *(*(v17 - 8) + 56);
  v67 = v16;
  v18(v15 + v16, 1, 1, v17);
  v65 = v12[18];
  v66 = a1;
  v68 = v15;
  *(v15 + v65) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7346B1C();
  v64 = v11;
  v19 = v69;
  sub_1B78023C8();
  if (v19)
  {
    v69 = v19;
    v24 = v68;
    __swift_destroy_boxed_opaque_existential_1(v66);

LABEL_4:
    sub_1B7205418(v24 + v67, &qword_1EB98FC40);
  }

  v20 = v8;
  v59 = v17;
  v60 = v5;
  v22 = v62;
  v21 = v63;
  LOBYTE(v70) = 0;
  v23 = sub_1B7801DF8();
  v24 = v68;
  *v68 = v23;
  v24[1] = v26;
  LOBYTE(v70) = 1;
  v24[2] = sub_1B7801DF8();
  v24[3] = v27;
  v72 = 2;
  sub_1B7346DDC();
  v58 = 0;
  sub_1B7801E48();
  v69 = 0;
  v28 = v12;
  *(v24 + 32) = v70;
  v72 = 3;
  sub_1B7346E30();
  v29 = v69;
  sub_1B7801E48();
  if (v29)
  {
    v69 = v29;
LABEL_8:
    (*(v22 + 8))(v64, v21);
    v31 = 0;
    v32 = v58;
    goto LABEL_9;
  }

  *(v24 + 17) = v70;
  LOBYTE(v70) = 4;
  v24[5] = sub_1B7801D98();
  *(v24 + 48) = v30 & 1;
  LOBYTE(v70) = 5;
  sub_1B7801E18();
  v24[7] = v33;
  LOBYTE(v70) = 6;
  sub_1B7801E18();
  v69 = 0;
  v24[8] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  v72 = 7;
  sub_1B721523C(&qword_1EDAF64A8);
  v35 = v69;
  sub_1B7801DB8();
  v69 = v35;
  if (v35)
  {
    goto LABEL_8;
  }

  v57[1] = v70;
  v24[9] = v70;
  LOBYTE(v70) = 8;
  sub_1B71A6FE0(&qword_1EB9925B0, type metadata accessor for Institution.BackgroundRefreshConfiguration);
  v36 = v69;
  sub_1B7801E48();
  v69 = v36;
  if (v36)
  {
    (*(v22 + 8))(v64, v21);
    v31 = 0;
LABEL_21:
    v32 = v58;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v66);

    if (v32)
    {

      if (!v31)
      {
        goto LABEL_4;
      }

LABEL_26:
      sub_1B7346D7C(v24 + v28[12], type metadata accessor for Institution.BackgroundRefreshConfiguration);
      goto LABEL_4;
    }

LABEL_25:

    if ((v31 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  sub_1B7346D14(v20, v24 + v12[12], type metadata accessor for Institution.BackgroundRefreshConfiguration);
  LOBYTE(v70) = 9;
  v37 = v69;
  v38 = sub_1B7801E08();
  v69 = v37;
  if (v37 || (*(v68 + v12[13]) = v38 & 1, LOBYTE(v70) = 10, v39 = sub_1B7801E08(), v69 = 0, *(v68 + v12[14]) = v39 & 1, LOBYTE(v70) = 11, sub_1B71A6FE0(&qword_1EB9925B8, type metadata accessor for BankConnectTermsAndConditions), v40 = v69, sub_1B7801DB8(), (v69 = v40) != 0) || (sub_1B7213740(v60, v68 + v67, &qword_1EB98FC40), LOBYTE(v70) = 12, v41 = v69, v42 = sub_1B7801E08(), (v69 = v41) != 0) || (*(v68 + v12[16]) = v42 & 1, LOBYTE(v70) = 13, v43 = sub_1B7801E08(), v69 = 0, *(v68 + v12[17]) = v43 & 1, v72 = 14, sub_1B7346E84(), v44 = v69, sub_1B7801DB8(), (v69 = v44) != 0) || (v45 = v70, v46 = v65, v47 = v68, , *(v47 + v46) = v45, v72 = 15, sub_1B7346ED8(), v48 = v69, sub_1B7801E48(), (v69 = v48) != 0))
  {
    (*(v22 + 8))(v64, v63);
    v31 = 1;
    v28 = v12;
    v24 = v68;
    goto LABEL_21;
  }

  *(v68 + v12[19]) = v70;
  v72 = 16;
  sub_1B7346F2C();
  v49 = v69;
  sub_1B7801E48();
  v69 = v49;
  if (v49)
  {
    (*(v22 + 8))(v64, v63);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v24 = v68;

    LOBYTE(v31) = 1;
    v28 = v12;
    goto LABEL_25;
  }

  v50 = v71;
  v51 = v68 + v12[20];
  *v51 = v70;
  *(v51 + 1) = v50;
  LOBYTE(v70) = 17;
  v52 = sub_1B7801E08();
  v69 = 0;
  *(v68 + v12[21]) = v52 & 1;
  LOBYTE(v70) = 18;
  v53 = sub_1B7801E08();
  v69 = 0;
  *(v68 + v12[22]) = v53 & 1;
  LOBYTE(v70) = 19;
  v54 = sub_1B7801E08();
  v69 = 0;
  v55 = v54;
  (*(v22 + 8))(v64, v63);
  v56 = v68;
  *(v68 + v12[23]) = v55 & 1;
  sub_1B7346F80(v56, v61, type metadata accessor for Institution);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return sub_1B7346D7C(v56, type metadata accessor for Institution);
}

uint64_t sub_1B73451C4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1B78022F8();
  a3(v5);
  return sub_1B7802368();
}

uint64_t sub_1B7345228(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1B78022F8();
  a4(v6);
  return sub_1B7802368();
}

uint64_t Institution.init(fromRaw:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  v111 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v90 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9925D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v117 = (&v87 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v87 - v14;
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  MEMORY[0x1EEE9AC00](refreshed);
  v17 = (&v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for RawBankConnectData.Institution(0);
  v19 = result;
  v20 = a1 + *(result + 40);
  if (*(v20 + 13))
  {

    v22 = sub_1B723B658(v21);
  }

  else
  {
    v22 = 0;
  }

  if (v20[8])
  {
    v23 = 0;
  }

  else
  {
    v23 = *v20;
  }

  v24 = *(v20 + 15);
  v25 = v20[128];
  v26 = v20[160];
  v27 = *a1;
  v116 = a1[1];
  v29 = a1[2];
  v28 = a1[3];
  v114 = v15;
  v115 = v28;
  v30 = v19;
  v31 = *(a1 + *(v19 + 32));
  v32 = *(v20 + 11);
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = (v32 + 32);
    do
    {
      v37 = *v35++;
      v36 = v37;
      if (v37)
      {
        if (v36 == 1)
        {
          v34 |= 2u;
          if (v33 == 1)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v34 |= 4u;
          if (v33 == 1)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v34 |= 1u;
        if (v33 == 1)
        {
          goto LABEL_19;
        }
      }

      --v33;
    }

    while (v33);
    __break(1u);
  }

  LOWORD(v34) = 0;
LABEL_19:
  if (v23 < -32768)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v23 >= 0x8000)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v97 = a2;
  v102 = v25;
  v104 = v31;
  v105 = v29;
  v106 = v27;
  v107 = v26;
  v108 = v22;
  v101 = *(v20 + 7);
  v100 = v20[64];
  v38 = *(v20 + 9);
  v39 = *(v20 + 10);
  v95 = v30;
  v40 = *(v30 + 36);
  v41 = v13;
  v99 = v13;
  v42 = v4;
  v112 = *(a1 + v40);
  v91 = v23;
  v43 = sub_1B77FF988();
  v87 = *(v43 - 8);
  v44 = *(v87 + 56);
  v45 = v87 + 56;
  v46 = v114;
  v44(v114, 1, 1, v43);
  v44(v41, 1, 1, v43);
  v98 = *(v20 + 2);
  v94 = v20[24];
  v93 = *(v20 + 4);
  v92 = v20[40];
  v113 = a1;
  v47 = refreshed;
  v48 = refreshed[6];
  v44(v17 + v48, 1, 1, v43);
  v103 = v42;
  v49 = v47[7];
  v88 = v43;
  v89 = v44;
  v96 = v45;
  v44(v17 + v49, 1, 1, v43);
  v50 = v47[9];
  v51 = v17 + v47[8];
  v52 = v17 + v50;
  v53 = v91;
  *v17 = v91;
  *(v17 + 1) = v53;

  sub_1B7213740(v46, v17 + v48, &qword_1EB98EBD0);
  refreshed = v17;
  v54 = v103;
  sub_1B7213740(v99, v17 + v49, &qword_1EB98EBD0);
  *v51 = v98;
  v51[8] = v94;
  *v52 = v93;
  v52[8] = v92;
  LODWORD(v49) = v20[96];
  LODWORD(v52) = v20[97];
  v55 = v110;
  sub_1B7205588(v113 + *(v95 + 48), v110, &qword_1EB9925D8);
  v56 = (*(v111 + 48))(v55, 1, v54);
  LODWORD(v99) = v52;
  LODWORD(v98) = v49;
  if (v56 == 1)
  {
    v57 = type metadata accessor for BankConnectTermsAndConditions();
    (*(*(v57 - 8) + 56))(v117, 1, 1, v57);
  }

  else
  {
    v58 = v90;
    sub_1B7346D14(v55, v90, type metadata accessor for RawBankConnectData.TermsAndConditions);
    v59 = *v58;
    v110 = v58[1];
    v111 = v59;
    v60 = v54;
    v61 = *(v54 + 24);
    v62 = type metadata accessor for BankConnectTermsAndConditions();
    v63 = *(v87 + 16);
    v64 = v117;
    v65 = v58 + v61;
    v66 = v88;
    v63(v117 + v62[5], v65, v88);
    v67 = v89;
    v89(v114, 1, 1, v66);
    v63(&v64[v62[7]], v58 + *(v60 + 28), v66);
    v68 = v110;

    sub_1B7346D7C(v58, type metadata accessor for RawBankConnectData.TermsAndConditions);
    v69 = v62[6];
    v67(&v64[v69], 1, 1, v66);
    *v64 = v111;
    *(v64 + 1) = v68;
    sub_1B7213740(v114, &v64[v69], &qword_1EB98EBD0);
    (*(*(v62 - 1) + 56))(v64, 0, 1, v62);
  }

  v70 = v97;
  LODWORD(v114) = v20[98];
  v71 = *(v20 + 19);
  v72 = *(v71 + 16);
  if (v72)
  {
    v73 = 0;
    v74 = (v71 + 32);
    do
    {
      v75 = *v74++;
      v73 |= word_1B781A5C0[v75];
      --v72;
    }

    while (v72);
  }

  else
  {
    v73 = 0;
  }

  v76 = (v20[99] == 2) | v20[99];
  if (v102)
  {
    v24 = 3600.0;
  }

  v77 = v20[112];
  v78 = (v20[144] == 2) | v20[144];
  v79 = (v20[161] == 2) | v20[161];
  v80 = type metadata accessor for Institution(0);
  v81 = v80[15];
  v82 = type metadata accessor for BankConnectTermsAndConditions();
  (*(*(v82 - 8) + 56))(v70 + v81, 1, 1, v82);
  v83 = v80[18];
  *(v70 + v83) = 0;
  v84 = v116;
  *v70 = v106;
  *(v70 + 8) = v84;
  v85 = v115;
  *(v70 + 16) = v105;
  *(v70 + 24) = v85;
  *(v70 + 32) = v104;
  *(v70 + 34) = v34;
  *(v70 + 40) = v101;
  *(v70 + 48) = v100;
  *(v70 + 56) = v38;
  *(v70 + 64) = v39;
  *(v70 + 72) = v112;
  sub_1B7346D14(refreshed, v70 + v80[12], type metadata accessor for Institution.BackgroundRefreshConfiguration);
  *(v70 + v80[13]) = v98 & 1;
  *(v70 + v80[14]) = v99 & 1;
  sub_1B7213740(v117, v70 + v81, &qword_1EB98FC40);
  *(v70 + v80[16]) = v114 & 1;
  *(v70 + v80[17]) = v76 & 1;

  *(v70 + v83) = v108;
  *(v70 + v80[19]) = v73;
  v86 = v70 + v80[20];
  *v86 = v77 & 1;
  *(v86 + 8) = v24;
  *(v70 + v80[21]) = v78 & 1;
  *(v70 + v80[22]) = v107 & 1;
  *(v70 + v80[23]) = v79 & 1;
  return sub_1B7346D7C(v113, type metadata accessor for RawBankConnectData.Institution);
}

uint64_t static ManagedInstitution.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98E9D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B7345D00()
{
  if (qword_1EB98E9D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B7345D5C(uint64_t a1, uint64_t a2)
{
  sub_1B7802368();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
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

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1B78022F8();

        sub_1B7800798();
        v11 = sub_1B7802368();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10FinanceKit11InstitutionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectTermsAndConditions();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v33 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB992640);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1B78020F8() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1B78020F8() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 34) != *(a2 + 34))
  {
    goto LABEL_46;
  }

  v14 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return v14 & 1;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_46;
    }
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_46;
  }

  v15 = *(a1 + 72);
  v16 = *(a2 + 72);
  if (v15)
  {
    if (!v16 || (sub_1B731D168(v15, v16) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (v16)
  {
    goto LABEL_46;
  }

  v17 = type metadata accessor for Institution(0);
  if (!_s10FinanceKit11InstitutionV30BackgroundRefreshConfigurationV2eeoiySbAE_AEtFZ_0((a1 + v17[12]), (a2 + v17[12])) || *(a1 + v17[13]) != *(a2 + v17[13]) || *(a1 + v17[14]) != *(a2 + v17[14]))
  {
    goto LABEL_46;
  }

  v18 = v17[15];
  v19 = *(v11 + 48);
  sub_1B7205588(a1 + v18, v13, &qword_1EB98FC40);
  v20 = a2 + v18;
  v21 = v19;
  sub_1B7205588(v20, &v13[v19], &qword_1EB98FC40);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_1B7205588(v13, v10, &qword_1EB98FC40);
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_1B7346D7C(v10, type metadata accessor for BankConnectTermsAndConditions);
      goto LABEL_30;
    }

    sub_1B7346D14(&v13[v21], v7, type metadata accessor for BankConnectTermsAndConditions);
    v23 = _s10FinanceKit29BankConnectTermsAndConditionsV2eeoiySbAC_ACtFZ_0(v10, v7);
    sub_1B7346D7C(v7, type metadata accessor for BankConnectTermsAndConditions);
    sub_1B7346D7C(v10, type metadata accessor for BankConnectTermsAndConditions);
    sub_1B7205418(v13, &qword_1EB98FC40);
    if (v23)
    {
      goto LABEL_32;
    }

LABEL_46:
    v14 = 0;
    return v14 & 1;
  }

  if (v22(&v13[v21], 1, v4) != 1)
  {
LABEL_30:
    sub_1B7205418(v13, &unk_1EB992640);
    goto LABEL_46;
  }

  sub_1B7205418(v13, &qword_1EB98FC40);
LABEL_32:
  if (*(a1 + v17[16]) != *(a2 + v17[16]) || *(a1 + v17[17]) != *(a2 + v17[17]))
  {
    goto LABEL_46;
  }

  v24 = v17[18];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (!v25)
  {
    if (!v26)
    {

      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (!v26)
  {
LABEL_39:

    goto LABEL_46;
  }

  swift_bridgeObjectRetain_n();

  v27 = sub_1B72F4734(v25, v26);
  swift_bridgeObjectRelease_n();

  if ((v27 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_41:
  if (*(a1 + v17[19]) != *(a2 + v17[19]))
  {
    goto LABEL_46;
  }

  v14 = 0;
  v28 = v17[20];
  v29 = a1 + v28;
  v30 = *(a1 + v28);
  v31 = (a2 + v28);
  if (v30 == *v31 && *(v29 + 8) == v31[1])
  {
    if (*(a1 + v17[21]) == *(a2 + v17[21]) && *(a1 + v17[22]) == *(a2 + v17[22]))
    {
      v14 = *(a1 + v17[23]) ^ *(a2 + v17[23]) ^ 1;
      return v14 & 1;
    }

    goto LABEL_46;
  }

  return v14 & 1;
}

BOOL _s10FinanceKit11InstitutionV30BackgroundRefreshConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50[-v18];
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v52 = v11;
  v53 = v7;
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  v57 = a2;
  v21 = *(refreshed + 24);
  v22 = *(v14 + 48);
  v54 = refreshed;
  v55 = a1;
  sub_1B7205588(a1 + v21, v19, &qword_1EB98EBD0);
  sub_1B7205588(v57 + v21, &v19[v22], &qword_1EB98EBD0);
  v56 = v5;
  v23 = *(v5 + 48);
  if (v23(v19, 1, v4) == 1)
  {
    if (v23(&v19[v22], 1, v4) == 1)
    {
      sub_1B7205418(v19, &qword_1EB98EBD0);
      goto LABEL_10;
    }

LABEL_8:
    v24 = v19;
LABEL_16:
    sub_1B7205418(v24, &qword_1EB98FCE0);
    return 0;
  }

  sub_1B7205588(v19, v13, &qword_1EB98EBD0);
  if (v23(&v19[v22], 1, v4) == 1)
  {
    (*(v56 + 8))(v13, v4);
    goto LABEL_8;
  }

  v25 = v56;
  v26 = v53;
  (*(v56 + 32))(v53, &v19[v22], v4);
  sub_1B71A6FE0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v51 = sub_1B7800828();
  v27 = *(v25 + 8);
  v27(v26, v4);
  v27(v13, v4);
  sub_1B7205418(v19, &qword_1EB98EBD0);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v28 = v54;
  v29 = *(v54 + 28);
  v30 = *(v14 + 48);
  sub_1B7205588(v55 + v29, v17, &qword_1EB98EBD0);
  v31 = v57 + v29;
  v32 = v57;
  sub_1B7205588(v31, &v17[v30], &qword_1EB98EBD0);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v30], 1, v4) == 1)
    {
      sub_1B7205418(v17, &qword_1EB98EBD0);
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v33 = v52;
  sub_1B7205588(v17, v52, &qword_1EB98EBD0);
  if (v23(&v17[v30], 1, v4) == 1)
  {
    (*(v56 + 8))(v33, v4);
LABEL_15:
    v24 = v17;
    goto LABEL_16;
  }

  v35 = v56;
  v36 = &v17[v30];
  v37 = v53;
  (*(v56 + 32))(v53, v36, v4);
  sub_1B71A6FE0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v38 = sub_1B7800828();
  v39 = *(v35 + 8);
  v39(v37, v4);
  v39(v33, v4);
  v32 = v57;
  sub_1B7205418(v17, &qword_1EB98EBD0);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v40 = *(v28 + 32);
  v41 = (v55 + v40);
  v42 = *(v55 + v40 + 8);
  v43 = (v32 + v40);
  v44 = *(v32 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = *(v28 + 36);
  v46 = (v55 + v45);
  v47 = *(v55 + v45 + 8);
  v48 = (v32 + v45);
  v49 = *(v32 + v45 + 8);
  if ((v47 & 1) == 0)
  {
    if (*v46 != *v48)
    {
      v49 = 1;
    }

    return (v49 & 1) == 0;
  }

  return (v49 & 1) != 0;
}

unint64_t sub_1B7346A10()
{
  result = qword_1EB992528;
  if (!qword_1EB992528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992528);
  }

  return result;
}

unint64_t sub_1B7346A64()
{
  result = qword_1EB992540;
  if (!qword_1EB992540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992540);
  }

  return result;
}

uint64_t sub_1B7346AB8(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  (*(*(refreshed - 8) + 40))(a2, a1, refreshed);
  return a2;
}

unint64_t sub_1B7346B1C()
{
  result = qword_1EB992558;
  if (!qword_1EB992558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992558);
  }

  return result;
}

unint64_t sub_1B7346B70()
{
  result = qword_1EB992560;
  if (!qword_1EB992560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992560);
  }

  return result;
}

unint64_t sub_1B7346BC4()
{
  result = qword_1EB992568;
  if (!qword_1EB992568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992568);
  }

  return result;
}

unint64_t sub_1B7346C18()
{
  result = qword_1EB992580;
  if (!qword_1EB992580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992580);
  }

  return result;
}

unint64_t sub_1B7346C6C()
{
  result = qword_1EB992588;
  if (!qword_1EB992588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992588);
  }

  return result;
}

unint64_t sub_1B7346CC0()
{
  result = qword_1EB992590;
  if (!qword_1EB992590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992590);
  }

  return result;
}

uint64_t sub_1B7346D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7346D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B7346DDC()
{
  result = qword_1EB9925A0;
  if (!qword_1EB9925A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9925A0);
  }

  return result;
}

unint64_t sub_1B7346E30()
{
  result = qword_1EB9925A8;
  if (!qword_1EB9925A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9925A8);
  }

  return result;
}

unint64_t sub_1B7346E84()
{
  result = qword_1EB9925C0;
  if (!qword_1EB9925C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9925C0);
  }

  return result;
}

unint64_t sub_1B7346ED8()
{
  result = qword_1EB9925C8;
  if (!qword_1EB9925C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9925C8);
  }

  return result;
}

unint64_t sub_1B7346F2C()
{
  result = qword_1EB9925D0;
  if (!qword_1EB9925D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9925D0);
  }

  return result;
}

uint64_t sub_1B7346F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t _s10FinanceKit18ManagedInstitutionC14mappedKeyPathsSDys03AnyF4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B781A5B0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 25705;
  *(inited + 48) = 0xE200000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x80000001B787A6B0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000012;
  *(inited + 120) = 0x80000001B787A6B0;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD00000000000001ELL;
  *(inited + 144) = 0x80000001B787A4C0;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD00000000000001ELL;
  *(inited + 168) = 0x80000001B787A4E0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000020;
  *(inited + 192) = 0x80000001B787A500;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD00000000000001BLL;
  *(inited + 216) = 0x80000001B787A530;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000029;
  *(inited + 240) = 0x80000001B787A6D0;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000023;
  *(inited + 264) = 0x80000001B787A700;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000019;
  *(inited + 288) = 0x80000001B787A730;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000022;
  *(inited + 312) = 0x80000001B787A750;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000024;
  *(inited + 336) = 0x80000001B787A780;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD00000000000001FLL;
  *(inited + 360) = 0x80000001B787A7B0;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000017;
  *(inited + 384) = 0x80000001B787A570;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000017;
  *(inited + 408) = 0x80000001B787A590;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000013;
  *(inited + 432) = 0x80000001B787A5D0;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD00000000000001FLL;
  *(inited + 456) = 0x80000001B787A5F0;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000015;
  *(inited + 480) = 0x80000001B787A7D0;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000026;
  *(inited + 504) = 0x80000001B787A7F0;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD00000000000001BLL;
  *(inited + 528) = 0x80000001B787A670;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000014;
  *(inited + 552) = 0x80000001B787A690;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1B734742C()
{
  result = qword_1EB9925E8;
  if (!qword_1EB9925E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9925E8);
  }

  return result;
}

void sub_1B73474FC()
{
  sub_1B72F2CB8(319, &qword_1EDAFA070);
  if (v0 <= 0x3F)
  {
    sub_1B727FFC4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Institution.BackgroundRefreshConfiguration(319);
      if (v2 <= 0x3F)
      {
        sub_1B7347754(319, qword_1EDAFA0F8, type metadata accessor for BankConnectTermsAndConditions);
        if (v3 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EDAFA1C0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B7347694()
{
  sub_1B7347754(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFA070);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7347754(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Institution.ConsentSyncingConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Institution.ConsentSyncingConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Institution.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Institution.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B73479C0()
{
  result = qword_1EB9925F8;
  if (!qword_1EB9925F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9925F8);
  }

  return result;
}

unint64_t sub_1B7347A18()
{
  result = qword_1EB992600;
  if (!qword_1EB992600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992600);
  }

  return result;
}

unint64_t sub_1B7347A70()
{
  result = qword_1EB992608;
  if (!qword_1EB992608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992608);
  }

  return result;
}

unint64_t sub_1B7347AC8()
{
  result = qword_1EB992610;
  if (!qword_1EB992610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992610);
  }

  return result;
}

unint64_t sub_1B7347B20()
{
  result = qword_1EB992618;
  if (!qword_1EB992618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992618);
  }

  return result;
}

unint64_t sub_1B7347B78()
{
  result = qword_1EB992620;
  if (!qword_1EB992620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992620);
  }

  return result;
}

unint64_t sub_1B7347BD0()
{
  result = qword_1EB992628;
  if (!qword_1EB992628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992628);
  }

  return result;
}

unint64_t sub_1B7347C28()
{
  result = qword_1EB992630;
  if (!qword_1EB992630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992630);
  }

  return result;
}

unint64_t sub_1B7347C80()
{
  result = qword_1EB992638;
  if (!qword_1EB992638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992638);
  }

  return result;
}

uint64_t sub_1B7347CD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001B787A400 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B787A420 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEE00657461447265 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726665527473616CLL && a2 == 0xEF65746144687365 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787A440 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B787A460 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B7347EEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65736E6F636572 && a2 == 0xED00006570795474 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787A4A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B787A4C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B787A4E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B787A500 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B787A530 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B787A550 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B787A570 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B787A590 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787A5B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B787A5D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B787A5F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B787A610 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4C79636176697270 && a2 == 0xED0000736C656261 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B787A630 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B787A650 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B787A670 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B787A690 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t XPCSecureCodingCodableWrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1B7348718();
    sub_1B7802138();
    sub_1B7205540(0, &qword_1EB9905D0);
    sub_1B720ABEC(v8, v9);
    v5 = sub_1B78012B8();
    if (v5)
    {
      v7 = v5;
      sub_1B720A388(v8, v9);
      sub_1B720A388(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
      *a2 = v7;
    }

    else
    {
      sub_1B7801B18();
      swift_allocError();
      sub_1B7801AC8();
      swift_willThrow();
      sub_1B720A388(v8, v9);
      sub_1B720A388(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B7348718()
{
  result = qword_1EB992650;
  if (!qword_1EB992650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992650);
  }

  return result;
}

uint64_t XPCSecureCodingCodableWrapper.encode(to:)(void *a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v11[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v11];
  v5 = v11[0];
  if (v4)
  {
    v6 = sub_1B77FF5B8();
    v8 = v7;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B78023E8();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1B73488CC();
    sub_1B7802168();
    sub_1B720A388(v6, v8);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = v5;
    sub_1B77FF318();

    return swift_willThrow();
  }
}

unint64_t sub_1B73488CC()
{
  result = qword_1EB992660;
  if (!qword_1EB992660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992660);
  }

  return result;
}

uint64_t sub_1B73489AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B7348A0C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &unk_1EB994C70);
  v11 = *a2;
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF3F8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedTransactionActions.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTransactionActions.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTransactionActions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedTransactionActions.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedTransactionActions;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id ManagedTransactionActions.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v42 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v45 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - v18;
  v20 = type metadata accessor for Actions();
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_allocWithZone(v3) initWithContext_];
  sub_1B7205588(a1, v19, &qword_1EB99DA00);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {

    sub_1B73492A0(a1);
    sub_1B73492A0(v19);
  }

  else
  {
    v43 = a2;
    v44 = a1;
    sub_1B7349308(v19, v23);
    sub_1B7205588(v23, v16, &unk_1EB994C70);
    v25 = sub_1B77FF4F8();
    v49 = *(v25 - 8);
    v26 = *(v49 + 48);
    v27 = v26(v16, 1, v25);
    v42 = v24;
    v28 = v24;
    v29 = 0;
    if (v27 != 1)
    {
      v29 = sub_1B77FF3F8();
      (*(v49 + 8))(v16, v25);
    }

    [v28 setTransferFunds_];

    v30 = v23;
    v31 = &v23[v20[5]];
    v32 = v45;
    sub_1B7205588(v31, v45, &unk_1EB994C70);
    v33 = v26(v32, 1, v25);
    v34 = v47;
    if (v33 == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_1B77FF3F8();
      (*(v49 + 8))(v32, v25);
    }

    v36 = v48;
    v37 = v46;
    [v28 setPayNow_];

    sub_1B7205588(v30 + v20[6], v37, &unk_1EB994C70);
    if (v26(v37, 1, v25) == 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = sub_1B77FF3F8();
      (*(v49 + 8))(v37, v25);
    }

    [v28 setDigitalServicing_];

    sub_1B7205588(v30 + v20[7], v34, &unk_1EB994C70);
    if (v26(v34, 1, v25) == 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_1B77FF3F8();
      (*(v49 + 8))(v34, v25);
    }

    [v28 setPostInstallment_];

    sub_1B7205588(v30 + v20[8], v36, &unk_1EB994C70);
    if (v26(v36, 1, v25) == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = sub_1B77FF3F8();
      (*(v49 + 8))(v36, v25);
    }

    [v28 setRedeemRewards_];

    sub_1B73492A0(v44);
    sub_1B7349C18(v30, type metadata accessor for Actions);
    return v42;
  }

  return v24;
}

{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  _s10FinanceKit25ManagedTransactionActionsC6update_5usingyAC_AA18RawBankConnectDataO0E0VtFZ_0(v5, a1);

  sub_1B7349C18(a1, type metadata accessor for RawBankConnectData.Actions);
  return v5;
}

uint64_t sub_1B73492A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99DA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7349308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Actions.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v44 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = [a1 transferFunds];
  if (v18)
  {
    v19 = v18;
    sub_1B77FF478();

    v20 = sub_1B77FF4F8();
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  }

  else
  {
    v21 = sub_1B77FF4F8();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  v22 = [a1 payNow];
  v44 = v17;
  if (v22)
  {
    v23 = v22;
    sub_1B77FF478();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_1B77FF4F8();
  v26 = *(*(v25 - 8) + 56);
  v27 = 1;
  v45 = v15;
  v26(v15, v24, 1, v25);
  v28 = [a1 digitalServicing];
  if (v28)
  {
    v29 = v28;
    sub_1B77FF478();

    v27 = 0;
  }

  v30 = 1;
  v26(v12, v27, 1, v25);
  v31 = [a1 postInstallment];
  if (v31)
  {
    v32 = v31;
    sub_1B77FF478();

    v30 = 0;
  }

  v46 = v12;
  v33 = 1;
  v26(v9, v30, 1, v25);
  v34 = [a1 redeemRewards];
  v35 = v9;
  if (v34)
  {
    v36 = v34;
    sub_1B77FF478();

    v33 = 0;
  }

  v37 = v47;
  v26(v47, v33, 1, v25);
  v26(a2, 1, 1, v25);
  v38 = type metadata accessor for Actions();
  v39 = v38[5];
  v26((a2 + v39), 1, 1, v25);
  v40 = v38[6];
  v26((a2 + v40), 1, 1, v25);
  v41 = v38[7];
  v26((a2 + v41), 1, 1, v25);
  v42 = v38[8];
  v26((a2 + v42), 1, 1, v25);
  sub_1B727CBBC(v44, a2);
  sub_1B727CBBC(v45, a2 + v39);
  sub_1B727CBBC(v46, a2 + v40);
  sub_1B727CBBC(v35, a2 + v41);
  return sub_1B727CBBC(v37, a2 + v42);
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v44 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = [a1 transferFunds];
  if (v18)
  {
    v19 = v18;
    sub_1B77FF478();

    v20 = sub_1B77FF4F8();
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  }

  else
  {
    v21 = sub_1B77FF4F8();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  v22 = [a1 payNow];
  v44 = v17;
  if (v22)
  {
    v23 = v22;
    sub_1B77FF478();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_1B77FF4F8();
  v26 = *(*(v25 - 8) + 56);
  v27 = 1;
  v45 = v15;
  v26(v15, v24, 1, v25);
  v28 = [a1 digitalServicing];
  if (v28)
  {
    v29 = v28;
    sub_1B77FF478();

    v27 = 0;
  }

  v30 = 1;
  v26(v12, v27, 1, v25);
  v31 = [a1 postInstallment];
  if (v31)
  {
    v32 = v31;
    sub_1B77FF478();

    v30 = 0;
  }

  v46 = v12;
  v33 = 1;
  v26(v9, v30, 1, v25);
  v34 = [a1 redeemRewards];
  v35 = v9;
  if (v34)
  {
    v36 = v34;
    sub_1B77FF478();

    v33 = 0;
  }

  v37 = v47;
  v26(v47, v33, 1, v25);
  v26(a2, 1, 1, v25);
  v38 = type metadata accessor for Actions();
  v39 = v38[5];
  v26((a2 + v39), 1, 1, v25);
  v40 = v38[6];
  v26((a2 + v40), 1, 1, v25);
  v41 = v38[7];
  v26((a2 + v41), 1, 1, v25);
  v42 = v38[8];
  v26((a2 + v42), 1, 1, v25);
  sub_1B727CBBC(v44, a2);
  sub_1B727CBBC(v45, a2 + v39);
  sub_1B727CBBC(v46, a2 + v40);
  sub_1B727CBBC(v35, a2 + v41);
  return sub_1B727CBBC(v37, a2 + v42);
}

void _s10FinanceKit25ManagedTransactionActionsC6update_5usingyAC_AA18RawBankConnectDataO0E0VtFZ_0(void *a1, uint64_t a2)
{
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  sub_1B7205588(a2, &v29 - v15, &unk_1EB994C70);
  v17 = sub_1B77FF4F8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = 0;
  if (v19(v16, 1, v17) != 1)
  {
    v20 = sub_1B77FF3F8();
    (*(v18 + 8))(v16, v17);
  }

  [v30 setTransferFunds_];

  v21 = type metadata accessor for RawBankConnectData.Actions();
  sub_1B7205588(a2 + v21[5], v14, &unk_1EB994C70);
  v22 = 0;
  if (v19(v14, 1, v17) != 1)
  {
    v22 = sub_1B77FF3F8();
    (*(v18 + 8))(v14, v17);
  }

  v23 = v30;
  [v30 setPayNow_];

  sub_1B7205588(a2 + v21[6], v11, &unk_1EB994C70);
  if (v19(v11, 1, v17) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1B77FF3F8();
    (*(v18 + 8))(v11, v17);
  }

  [v23 setDigitalServicing_];

  sub_1B7205588(a2 + v21[7], v8, &unk_1EB994C70);
  if (v19(v8, 1, v17) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1B77FF3F8();
    (*(v18 + 8))(v8, v17);
  }

  [v23 setPostInstallment_];

  v26 = a2 + v21[8];
  v27 = v29;
  sub_1B7205588(v26, v29, &unk_1EB994C70);
  if (v19(v27, 1, v17) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1B77FF3F8();
    (*(v18 + 8))(v27, v17);
  }

  [v23 setRedeemRewards_];
}

uint64_t sub_1B7349C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FinanceKit::FinanceStoreAnalyticsEventsBuilder::OrdersEndpoint_optional __swiftcall FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.rawValue.getter()
{
  result = 0x736E6961746E6F63;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x724F6574656C6564;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x64724F6863746566;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4F68736572666572;
      break;
    case 7:
      result = 0x6564724F65766173;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0x724F657669746361;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7349EE0()
{
  v0 = FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.rawValue.getter();
  v2 = v1;
  if (v0 == FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B78020F8();
  }

  return v5 & 1;
}

uint64_t sub_1B7349F7C()
{
  sub_1B78022F8();
  FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.rawValue.getter();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7349FE4()
{
  FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.rawValue.getter();
  sub_1B7800798();
}

uint64_t sub_1B734A048()
{
  sub_1B78022F8();
  FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.rawValue.getter();
  sub_1B7800798();

  return sub_1B7802368();
}

unint64_t sub_1B734A0B8@<X0>(unint64_t *a1@<X8>)
{
  result = FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FinanceStoreAnalyticsEventsBuilder.makeOrdersAPICalledEvent(bundleIdentifier:endpoint:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  a3[3] = &type metadata for FinanceStoreAnalyticsEventsBuilder.APICalledEvent;
  a3[4] = &off_1F2F50638;
  v7 = swift_allocObject();
  *a3 = v7;
  *(v7 + 16) = 0xD000000000000023;
  *(v7 + 24) = 0x80000001B787A8C0;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
}

unint64_t sub_1B734A184()
{
  result = qword_1EB992668;
  if (!qword_1EB992668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992668);
  }

  return result;
}

uint64_t sub_1B734A1F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B734A240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B734A294()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992670);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 40) = 0x80000001B7874F00;
  if (v1)
  {
    swift_bridgeObjectRetain_n();
    v3 = sub_1B7771EA0();

    if ((v3 & 1) == 0)
    {
    }
  }

  v4 = sub_1B7800838();

  *(inited + 48) = v4;
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xE800000000000000;
  FinanceStoreAnalyticsEventsBuilder.OrdersEndpoint.rawValue.getter();
  v5 = sub_1B7800838();

  *(inited + 72) = v5;
  v6 = sub_1B7202F9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992678);
  swift_arrayDestroy();
  return v6;
}

id RecurringPaymentResult.token.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1B72274E8(v2, v3);
}

uint64_t RecurringPaymentResult.init(token:payments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  return result;
}

uint64_t FinanceStore.scheduledPayments(query:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B734A484, 0, 0);
}

void sub_1B734A484()
{
  v5 = v0;
  static DeviceInfo.deviceType.getter(&v4);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v1 = swift_task_alloc();
    v0[3].i64[0] = v1;
    v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
    v2 = swift_task_alloc();
    v0[3].i64[1] = v2;
    *v2 = v0;
    v2[1] = sub_1B734A574;
    v3 = v0[1].i64[1];

    sub_1B72B9ADC(v3, dword_1B781B2F0);
  }
}

uint64_t sub_1B734A574()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B734A6B0, 0, 0);
}

uint64_t sub_1B734A6B0()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72) == 4;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_1B7801C88();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B734A7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B734A85C, 0, 0);
}

uint64_t sub_1B734A85C()
{
  v10 = v0;
  v9 = *MEMORY[0x1E69E9840];
  v8[0] = 2;
  if (FinanceStore.isDataRestricted(for:)(v8))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
    v6 = v0->opaque[1];
  }

  else
  {
    v2 = *(v0[2].opaque[1] + 16);
    v0[1].opaque[0] = 0;
    v0[1].opaque[1] = 0;
    if (qword_1EDAFA648 != -1)
    {
      swift_once();
    }

    v3 = v0[3].opaque[0];
    v4 = v0[2].opaque[0];
    v5 = _os_activity_create(&dword_1B7198000, "financeStore/ScheduledPayments", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, v0 + 1);
    sub_1B73A6740(v3, v2, v4);
    os_activity_scope_leave(v0 + 1);
    swift_unknownObjectRelease();
    v6 = v0->opaque[1];
  }

  return v6();
}

uint64_t FinanceStore.recurringPayments(query:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B734AA20, 0, 0);
}

void sub_1B734AA20()
{
  v5 = v0;
  static DeviceInfo.deviceType.getter(&v4);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v1 = swift_task_alloc();
    v0[3].i64[0] = v1;
    v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
    v2 = swift_task_alloc();
    v0[3].i64[1] = v2;
    *v2 = v0;
    v2[1] = sub_1B734AB10;
    v3 = v0[1].i64[1];

    sub_1B72B9ADC(v3, &unk_1B781B310);
  }
}

uint64_t sub_1B734AB10()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B734AC4C, 0, 0);
}

uint64_t sub_1B734AC4C()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72) == 4;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_1B7801C88();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B734AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B734ADF8, 0, 0);
}

uint64_t sub_1B734ADF8()
{
  v10 = v0;
  v9 = *MEMORY[0x1E69E9840];
  v8[0] = 2;
  if (FinanceStore.isDataRestricted(for:)(v8))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
    v6 = v0->opaque[1];
  }

  else
  {
    v2 = *(v0[2].opaque[1] + 16);
    v0[1].opaque[0] = 0;
    v0[1].opaque[1] = 0;
    if (qword_1EDAFA648 != -1)
    {
      swift_once();
    }

    v3 = v0[3].opaque[0];
    v4 = v0[2].opaque[0];
    v5 = _os_activity_create(&dword_1B7198000, "financeStore/RecurringPayments", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, v0 + 1);
    sub_1B73A71E8(v3, v2, v4);
    os_activity_scope_leave(v0 + 1);
    swift_unknownObjectRelease();
    v6 = v0->opaque[1];
  }

  return v6();
}

uint64_t sub_1B734AF98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B723838C;

  return sub_1B734A7C8(a1, v5, v4);
}

uint64_t sub_1B734B044(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7201BB0;

  return sub_1B734AD64(a1, v5, v4);
}

uint64_t CloudOrderQuery.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void *CloudOrderQuery.predicate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t CloudOrderQuery.sortDescriptors.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CloudOrderQuery.init(limit:predicate:sortDescriptors:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_1B734B240@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B734BC50();
  *a1 = result;
  return result;
}

uint64_t sub_1B734B270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B734BC50();
  *a1 = result;
  return result;
}

uint64_t sub_1B734B298(uint64_t a1)
{
  v2 = sub_1B734BAD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B734B2D4(uint64_t a1)
{
  v2 = sub_1B734BAD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudOrderQuery.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992680);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B734BAD4();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v23) = 0;
    v22 = sub_1B7801DA8();
    v25 = v9 & 1;
    LOBYTE(v23) = 1;
    v10 = sub_1B7801EA8();
    if (v10)
    {
      v26 = 1;
      sub_1B727A53C();
      sub_1B7801E48();
      v12 = v23;
      v11 = v24;
      sub_1B7205540(0, &qword_1EB9905D0);
      sub_1B7205540(0, &qword_1EDAFAF30);
      v21 = v11;
      v18 = sub_1B78012B8();
      sub_1B720A388(v12, v21);
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(v23) = 2;
    if (sub_1B7801EA8())
    {
      v26 = 2;
      sub_1B727A53C();
      sub_1B7801E48();
      v16 = v23;
      v17 = v24;
      v19 = sub_1B7205540(0, &qword_1EB9905D0);
      sub_1B7205540(0, &qword_1EDAF6470);
      v20 = v16;
      v21 = v17;
      v13 = sub_1B78012D8();
      sub_1B720A388(v20, v21);
      if (!v13)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v13 = 0;
    }

    (*(v6 + 8))(v8, v5);
    v14 = v25;
    *a2 = v22;
    *(a2 + 8) = v14;
    *(a2 + 16) = v18;
    *(a2 + 24) = v13;

    v15 = v18;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t CloudOrderQuery.encode(to:)(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992690);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v31 = *(v1 + 24);
  v32 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B734BAD4();
  sub_1B78023F8();
  v35 = v7;
  LOBYTE(v36) = v8;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9905E0);
  sub_1B727A590();
  v10 = v33;
  sub_1B7801FC8();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v4;
  v13 = v32;
  if (v32)
  {
    v14 = objc_opt_self();
    v35 = 0;
    v15 = v13;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v35];
    v17 = v35;
    if (!v16)
    {
      v21 = v17;
      sub_1B77FF318();

      swift_willThrow();
      return (*(v12 + 8))(v6, v3);
    }

    v18 = sub_1B77FF5B8();
    v20 = v19;

    v35 = v18;
    v36 = v20;
    v34 = 1;
    sub_1B727A60C();
    sub_1B7801FC8();

    sub_1B720A388(v18, v20);
  }

  if (v31)
  {
    v22 = objc_opt_self();
    sub_1B7205540(0, &qword_1EDAF6470);
    v23 = sub_1B7800C18();
    v35 = 0;
    v24 = [v22 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v35];

    v25 = v35;
    if (v24)
    {
      v26 = sub_1B77FF5B8();
      v28 = v27;

      v35 = v26;
      v36 = v28;
      v34 = 2;
      sub_1B727A60C();
      sub_1B7801FC8();
      (*(v12 + 8))(v6, v3);
      return sub_1B720A388(v26, v28);
    }

    v29 = v25;
    sub_1B77FF318();

    swift_willThrow();
  }

  return (*(v12 + 8))(v6, v3);
}

unint64_t sub_1B734BAD4()
{
  result = qword_1EB992688;
  if (!qword_1EB992688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992688);
  }

  return result;
}

unint64_t sub_1B734BB4C()
{
  result = qword_1EB992698;
  if (!qword_1EB992698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992698);
  }

  return result;
}

unint64_t sub_1B734BBA4()
{
  result = qword_1EB9926A0;
  if (!qword_1EB9926A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9926A0);
  }

  return result;
}

unint64_t sub_1B734BBFC()
{
  result = qword_1EB9926A8;
  if (!qword_1EB9926A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9926A8);
  }

  return result;
}

uint64_t sub_1B734BC50()
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

uint64_t ExtractedOrderAllowList.configurations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ExtractedOrderAllowList.Entry.BrandType.rawValue.getter()
{
  v1 = v0[1];
  v2 = 0x72656972726163;
  if (v1 != 1)
  {
    v2 = *v0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x746E61686372656DLL;
  }

  sub_1B7237C18(*v0, v1);
  return v3;
}

uint64_t ExtractedOrderAllowList.Entry.BrandType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x72656972726163 && v3 == 0xE700000000000000 || (result = sub_1B78020F8(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 1;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t sub_1B734BE60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 == 0x746E61686372656DLL && v3 == 0xE800000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else
  {
    v7 = v4 == 0x72656972726163 && v3 == 0xE700000000000000;
    if (v7 || (result = sub_1B78020F8(), (result & 1) != 0))
    {

      v4 = 0;
      v3 = 1;
    }
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B734BF28@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 0xE800000000000000;
  v5 = 0x746E61686372656DLL;
  v6 = 0xE700000000000000;
  v7 = 0x72656972726163;
  if (v3 != 1)
  {
    v7 = *v1;
    v6 = v1[1];
  }

  if (v3)
  {
    v5 = v7;
    v4 = v6;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_1B7237C18(v2, v3);
}

uint64_t sub_1B734BF74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xE700000000000000;
  v7 = 0x72656972726163;
  if (v3 != 1)
  {
    v7 = *a1;
    v6 = a1[1];
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x746E61686372656DLL;
  }

  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  v10 = 0xE700000000000000;
  v11 = 0x72656972726163;
  if (v5 != 1)
  {
    v11 = *a2;
    v10 = a2[1];
  }

  if (v5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x746E61686372656DLL;
  }

  if (v5)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  if (v8 == v12 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B78020F8();
  }

  sub_1B7237C18(v2, v3);
  sub_1B7237C18(v4, v5);

  return v14 & 1;
}

uint64_t sub_1B734C074()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B78022F8();
  sub_1B7237C18(v1, v2);
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B734C11C()
{
  sub_1B7237C18(*v0, *(v0 + 8));
  sub_1B7800798();
}

uint64_t sub_1B734C1B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B78022F8();
  sub_1B7237C18(v1, v2);
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t ExtractedOrderAllowList.Entry.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExtractedOrderAllowList.Entry.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExtractedOrderAllowList.Entry.emails.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ExtractedOrderAllowList.Entry.brandDisplayName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ExtractedOrderAllowList.Entry.brandDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ExtractedOrderAllowList.Entry.brandType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B734C424(v2, v3);
}

uint64_t sub_1B734C424(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1B7237C18(a1, a2);
  }

  return a1;
}

uint64_t ExtractedOrderAllowList.Entry.brandType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B734C468(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t sub_1B734C468(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1B7237BC4(a1, a2);
  }

  return a1;
}

unint64_t sub_1B734C49C()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0xD000000000000019;
  v4 = 0x707954646E617262;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 == 1)
  {
    v5 = 0x736C69616D65;
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

uint64_t sub_1B734C55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7350E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B734C584(uint64_t a1)
{
  v2 = sub_1B734F9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B734C5C0(uint64_t a1)
{
  v2 = sub_1B734F9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrderAllowList.Entry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9926B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v17 = *(v1 + 16);
  v21 = *(v1 + 24);
  v16 = *(v1 + 25);
  v7 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = v7;
  v8 = *(v1 + 56);
  v12 = *(v1 + 48);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B734F9DC();
  sub_1B78023F8();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_1B7801F78();
  if (!v9)
  {
    v19 = v17;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B721523C(&qword_1EB98F960);
    sub_1B7801F38();
    LOBYTE(v19) = 2;
    sub_1B7801F88();
    LOBYTE(v19) = 3;
    sub_1B7801F88();
    LOBYTE(v19) = 4;
    sub_1B7801EF8();
    v19 = v12;
    v20 = v13;
    v22 = 5;
    sub_1B734C424(v12, v13);
    sub_1B734FA30();
    sub_1B7801F38();
    sub_1B734C468(v19, v20);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ExtractedOrderAllowList.Entry.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = v0[7];
  v7 = v0[6];
  sub_1B7800798();
  if (v1)
  {
    sub_1B7802318();
    MEMORY[0x1B8CA6620](*(v1 + 16));
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = v1 + 40;
      do
      {

        sub_1B7800798();

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    sub_1B7802318();
  }

  sub_1B7802318();
  sub_1B7802318();
  if (v2)
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v3 == 2)
    {
      return sub_1B7802318();
    }
  }

  else
  {
    sub_1B7802318();
    if (v3 == 2)
    {
      return sub_1B7802318();
    }
  }

  sub_1B7802318();
  sub_1B7237C18(v7, v3);
  sub_1B7800798();
}

uint64_t ExtractedOrderAllowList.Entry.hashValue.getter()
{
  sub_1B78022F8();
  ExtractedOrderAllowList.Entry.hash(into:)();
  return sub_1B7802368();
}

uint64_t ExtractedOrderAllowList.Entry.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9926C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B734F9DC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B734C468(0, 2uLL);
  }

  else
  {
    LOBYTE(v30[0]) = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v25 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    LOBYTE(v26) = 1;
    sub_1B721523C(&qword_1EDAF64A8);
    sub_1B7801DB8();
    v12 = v30[0];
    LOBYTE(v30[0]) = 2;
    v38 = sub_1B7801E08();
    LOBYTE(v30[0]) = 3;
    v24 = sub_1B7801E08();
    LOBYTE(v30[0]) = 4;
    *&v23 = sub_1B7801D78();
    *(&v23 + 1) = v13;
    v39 = 5;
    sub_1B734FA84();
    sub_1B7801DB8();
    v38 &= 1u;
    v14 = v38;
    v24 &= 1u;
    (*(v6 + 8))(v8, v5);
    v15 = v36;
    v22 = v37;
    sub_1B734C468(0, 2uLL);
    v16 = v25;
    *&v26 = v25;
    *(&v26 + 1) = v11;
    *&v27 = v12;
    BYTE8(v27) = v14;
    v17 = v24;
    BYTE9(v27) = v24;
    v28 = v23;
    v18 = v22;
    *&v29 = v15;
    *(&v29 + 1) = v22;
    v19 = v27;
    *a2 = v26;
    a2[1] = v19;
    v20 = v29;
    a2[2] = v28;
    a2[3] = v20;
    sub_1B7326560(&v26, v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v30[0] = v16;
    v30[1] = v11;
    v30[2] = v12;
    v31 = v38;
    v32 = v17;
    v33 = v23;
    v34 = v15;
    v35 = v18;
    return sub_1B73265BC(v30);
  }
}

uint64_t sub_1B734CF08()
{
  sub_1B78022F8();
  ExtractedOrderAllowList.Entry.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B734CF4C()
{
  sub_1B78022F8();
  ExtractedOrderAllowList.Entry.hash(into:)();
  return sub_1B7802368();
}

FinanceKit::ExtractedOrderAllowList::DefaultBehavior_optional __swiftcall ExtractedOrderAllowList.DefaultBehavior.init(rawValue:)(Swift::String rawValue)
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

uint64_t ExtractedOrderAllowList.DefaultBehavior.rawValue.getter()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 2037278052;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747845776F6C6C61;
  }
}

uint64_t sub_1B734D054()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B734D100()
{
  sub_1B7800798();
}

uint64_t sub_1B734D198()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B734D24C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6E6F6974636172;
  v4 = 0x80000001B7873620;
  v5 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v5 = 2037278052;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x747845776F6C6C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B734D374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD00000000000001BLL;
  v4 = 0x80000001B7873620;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001B7873620;
  }

  else
  {
    v3 = 2037278052;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x747845776F6C6C61;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEF6E6F6974636172;
  }

  v8 = 0xD00000000000001BLL;
  if (*a2 != 1)
  {
    v8 = 2037278052;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x747845776F6C6C61;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF6E6F6974636172;
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

FinanceKit::ExtractedOrderAllowList __swiftcall ExtractedOrderAllowList.init(configurations:defaultBehavior:)(FinanceKit::ExtractedOrderAllowList configurations, FinanceKit::ExtractedOrderAllowList::DefaultBehavior defaultBehavior)
{
  v3 = *defaultBehavior;
  *v2 = configurations.configurations._rawValue;
  *(v2 + 8) = v3;
  configurations.defaultBehavior = defaultBehavior;
  return configurations;
}

uint64_t sub_1B734D47C()
{
  if (*v0)
  {
    return 0x42746C7561666564;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B734D4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756769666E6F63 && a2 == 0xEE00736E6F697461;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x42746C7561666564 && a2 == 0xEF726F6976616865)
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

uint64_t sub_1B734D5BC(uint64_t a1)
{
  v2 = sub_1B734FBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B734D5F8(uint64_t a1)
{
  v2 = sub_1B734FBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrderAllowList.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9926C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B734FBEC();

  sub_1B78023F8();
  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9926D0);
  sub_1B734FCE8(&qword_1EB9926D8, sub_1B734FC40);
  sub_1B7801FC8();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1B734FC94();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ExtractedOrderAllowList.hash(into:)(uint64_t a1)
{
  sub_1B734F204(a1, *v1);
  sub_1B7800798();
}

uint64_t ExtractedOrderAllowList.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B734F204(v3, v1);
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t ExtractedOrderAllowList.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9926F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B734FBEC();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9926D0);
  v12[15] = 0;
  sub_1B734FCE8(&qword_1EDAF64C0, sub_1B734FD60);
  sub_1B7801E48();
  v9 = v13;
  v12[13] = 1;
  sub_1B734FDB4();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v10 = v12[14];
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B734DBFC(uint64_t a1)
{
  sub_1B734F204(a1, *v1);
  sub_1B7800798();
}

uint64_t sub_1B734DCA4()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B734F204(v3, v1);
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t ExtractedOrderConfiguration.BrandInfo.brandType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1B7237C18(v2, v3);
}

uint64_t ExtractedOrderConfiguration.BrandInfo.brandType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B7237BC4(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t ExtractedOrderConfiguration.BrandInfo.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExtractedOrderConfiguration.BrandInfo.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B734DE48()
{
  if (*v0)
  {
    return 0x4E79616C70736964;
  }

  else
  {
    return 0x707954646E617262;
  }
}

uint64_t sub_1B734DE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x707954646E617262 && a2 == 0xE900000000000065;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
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

uint64_t sub_1B734DF78(uint64_t a1)
{
  v2 = sub_1B734FFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B734DFB4(uint64_t a1)
{
  v2 = sub_1B734FFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrderConfiguration.BrandInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9926F8);
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v11[1] = v1[3];
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7237C18(v7, v8);
  sub_1B734FFA4();
  sub_1B78023F8();
  v13 = v7;
  v14 = v8;
  v15 = 0;
  sub_1B734FA30();
  sub_1B7801FC8();
  sub_1B7237BC4(v13, v14);
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1B7801F78();
  }

  return (*(v12 + 8))(v6, v4);
}

uint64_t ExtractedOrderConfiguration.BrandInfo.hash(into:)()
{
  sub_1B7237C18(*v0, *(v0 + 8));
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t ExtractedOrderConfiguration.BrandInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B78022F8();
  sub_1B7237C18(v1, v2);
  sub_1B7800798();

  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t ExtractedOrderConfiguration.BrandInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992708);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B734FFA4();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_1B734FA84();
  sub_1B7801E48();
  v9 = v17;
  v16 = v18;
  LOBYTE(v17) = 1;
  v10 = sub_1B7801DF8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  *a2 = v9;
  a2[1] = v13;
  a2[2] = v10;
  a2[3] = v12;
  sub_1B7237C18(v9, v13);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1B7237BC4(v9, v13);
}

uint64_t sub_1B734E564()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B78022F8();
  sub_1B7237C18(v1, v2);
  sub_1B7800798();

  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B734E628()
{
  sub_1B7237C18(*v0, *(v0 + 8));
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t sub_1B734E6D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B78022F8();
  sub_1B7237C18(v1, v2);
  sub_1B7800798();

  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t ExtractedOrderConfiguration.brandInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B7237BD8(v2, v3, v4, v5);
}

__n128 ExtractedOrderConfiguration.brandInfo.setter(uint64_t a1)
{
  sub_1B7237B84(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  return result;
}

__n128 ExtractedOrderConfiguration.init(extractionEnabled:automaticIngestionEnabled:brandInfo:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  sub_1B7237B84(0, 0, 0, 0);
  result = *a3;
  *(a4 + 24) = *(a3 + 16);
  *(a4 + 8) = result;
  return result;
}

uint64_t ExtractedOrderConfiguration.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v7 == 2)
  {

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v13 = *(a1 + 25);
    v11 = *(a1 + 24);
    if (v6)
    {
      v10 = *(a1 + 32);
      sub_1B734C424(v5, v7);
      v8 = v5;
      v9 = v7;
    }

    else
    {

      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    v3 = v11;
    v4 = v13;
  }

  sub_1B734C468(v5, v7);
  result = sub_1B7237B84(0, 0, 0, 0);
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1B734E9C4()
{
  v1 = 0x666E49646E617262;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1B734EA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7351038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B734EA50(uint64_t a1)
{
  v2 = sub_1B73503A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B734EA8C(uint64_t a1)
{
  v2 = sub_1B73503A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrderConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992710);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v22 = *(v1 + 1);
  v7 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = v7;
  v8 = *(v1 + 32);
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73503A8();
  sub_1B78023F8();
  LOBYTE(v18) = 0;
  v9 = v17;
  sub_1B7801F88();
  if (!v9)
  {
    v12 = v14;
    v11 = v15;
    v13 = v16;
    LOBYTE(v18) = 1;
    sub_1B7801F88();
    v18 = v13;
    v19 = v11;
    v20 = v12;
    v21 = v8;
    v23 = 2;
    sub_1B7237BD8(v13, v11, v12, v8);
    sub_1B73503FC();
    sub_1B7801F38();
    sub_1B7237B84(v18, v19, v20, v21);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ExtractedOrderConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992718);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73503A8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v9 = sub_1B7801E08();
    LOBYTE(v20[0]) = 1;
    v10 = sub_1B7801E08();
    v22 = 2;
    sub_1B7350450();
    sub_1B7801DB8();
    v21 = v9 & 1;
    (*(v6 + 8))(v8, v5);
    v12 = v20[0];
    v13 = v20[1];
    v14 = v20[2];
    v15 = v20[3];
    sub_1B7237B84(0, 0, 0, 0);
    *a2 = v21;
    *(a2 + 1) = v10 & 1;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    sub_1B7237BD8(v12, v13, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;
  }

  return sub_1B7237B84(v16, v17, v18, v19);
}

uint64_t ExtractedOrderAllowList.Entry.BrandType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_1B7802118();
    v7 = v5;
    v8 = v6 == 0x746E61686372656DLL && v5 == 0xE800000000000000;
    if (v8 || (sub_1B78020F8() & 1) != 0)
    {

      v6 = 0;
      v7 = 0;
    }

    else if (v6 == 0x72656972726163 && v7 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
    {

      v6 = 0;
      v7 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExtractedOrderAllowList.Entry.BrandType.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023E8();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  sub_1B7237C18(v2, v3);
  sub_1B7802158();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1B734F204(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8CA6620](v3);
  if (v3)
  {
    v5 = 0;
    v13 = a2 + 32;
    do
    {
      v6 = (v13 + (v5 << 6));
      v7 = v6[2];
      v8 = v6[5];
      v9 = v6[6];
      v10 = v6[7];

      sub_1B734C424(v9, v10);
      sub_1B734C424(v9, v10);
      sub_1B7800798();
      if (v7)
      {
        sub_1B7802318();
        MEMORY[0x1B8CA6620](*(v7 + 16));
        v11 = *(v7 + 16);
        if (v11)
        {
          v12 = v7 + 40;
          do
          {

            sub_1B7800798();

            v12 += 16;
            --v11;
          }

          while (v11);
        }
      }

      else
      {
        sub_1B7802318();
      }

      sub_1B7802318();
      sub_1B7802318();
      if (v8)
      {
        sub_1B7802318();
        sub_1B7800798();
        if (v10 != 2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1B7802318();
        if (v10 != 2)
        {
LABEL_15:
          sub_1B7802318();
          sub_1B7237C18(v9, v10);
          sub_1B7800798();

          sub_1B734C468(v9, v10);
          goto LABEL_4;
        }
      }

      sub_1B7802318();

LABEL_4:
      result = sub_1B734C468(v9, v10);
      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1B734F454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8CA6620](v3);
  v13 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = (a2 + 32 + 80 * v5);
      v7 = *v6;
      v8 = v6[1];
      MEMORY[0x1B8CA6620](*(*v6 + 16));
      v9 = *(v7 + 16);
      if (v9)
      {

        v10 = v7 + 40;
        do
        {

          sub_1B7800798();

          v10 += 16;
          --v9;
        }

        while (v9);
      }

      else
      {
      }

      MEMORY[0x1B8CA6620](*(v8 + 16));
      v11 = *(v8 + 16);
      if (v11)
      {
        v12 = v8 + 40;
        do
        {

          sub_1B7800798();

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      ++v5;
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
    }

    while (v5 != v13);
  }

  return result;
}

uint64_t sub_1B734F664(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8CA6620](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x1B8CA6660](*&v6);
      if (v7 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v7;
      }

      result = MEMORY[0x1B8CA6660](*&v8);
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s10FinanceKit23ExtractedOrderAllowListV5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v26 = *(a1 + 56);
  v27 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v24 = *(a2 + 56);
  v25 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7)
    {
      return 0;
    }

    v12 = sub_1B731D168(v2, v7);
    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v7)
    {
      return result;
    }
  }

  if (((v3 ^ v8) & 1) == 0 && ((v4 ^ v9) & 1) == 0)
  {
    if (v6)
    {
      if (!v10 || (v5 != v11 || v6 != v10) && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v26 == 2)
    {
      v15 = v24;
      v14 = v25;
      v16 = v27;
      if (v24 == 2)
      {
        sub_1B734C424(v27, 2uLL);
        sub_1B734C424(v25, 2uLL);
        v17 = v27;
        v18 = 2;
LABEL_38:
        sub_1B734C468(v17, v18);
        return 1;
      }

      goto LABEL_22;
    }

    v15 = v24;
    v14 = v25;
    v16 = v27;
    if (v24 == 2)
    {
LABEL_22:
      sub_1B734C424(v16, v26);
      sub_1B734C424(v14, v15);
      sub_1B734C468(v16, v26);
      sub_1B734C468(v14, v15);
      return 0;
    }

    v19 = 0x746E61686372656DLL;
    if (v26)
    {
      if (v26 == 1)
      {
        v20 = 0xE700000000000000;
        v21 = 0x72656972726163;
      }

      else
      {
        v21 = v27;
        v20 = v26;
      }
    }

    else
    {
      v20 = 0xE800000000000000;
      v21 = 0x746E61686372656DLL;
    }

    if (v24)
    {
      if (v24 == 1)
      {
        v22 = 0xE700000000000000;
        v19 = 0x72656972726163;
      }

      else
      {
        v19 = v25;
        v22 = v24;
      }
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    if (v21 == v19 && v20 == v22)
    {
      sub_1B734C424(v27, v26);
      sub_1B734C424(v25, v24);
      sub_1B734C424(v27, v26);
      sub_1B734C424(v25, v24);

      sub_1B734C468(v25, v24);
      v17 = v27;
      v18 = v26;
      goto LABEL_38;
    }

    v23 = sub_1B78020F8();
    sub_1B734C424(v27, v26);
    sub_1B734C424(v25, v24);
    sub_1B734C424(v27, v26);
    sub_1B734C424(v25, v24);

    sub_1B734C468(v25, v24);
    sub_1B734C468(v27, v26);
    return (v23 & 1) != 0;
  }

  return result;
}

unint64_t sub_1B734F9DC()
{
  result = qword_1EDAF7FA0;
  if (!qword_1EDAF7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7FA0);
  }

  return result;
}

unint64_t sub_1B734FA30()
{
  result = qword_1EB9926B8;
  if (!qword_1EB9926B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9926B8);
  }

  return result;
}

unint64_t sub_1B734FA84()
{
  result = qword_1EDAF7F88;
  if (!qword_1EDAF7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7F88);
  }

  return result;
}

uint64_t _s10FinanceKit23ExtractedOrderAllowListV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (sub_1B731D854(*a1, *a2))
  {
    v4 = 0xD00000000000001BLL;
    v5 = 0x80000001B7873620;
    v6 = 0xE400000000000000;
    if (v2 == 1)
    {
      v6 = 0x80000001B7873620;
    }

    else
    {
      v4 = 2037278052;
    }

    if (v2)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0x747845776F6C6C61;
    }

    if (v2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEF6E6F6974636172;
    }

    v9 = 0xD00000000000001BLL;
    if (v3 != 1)
    {
      v9 = 2037278052;
      v5 = 0xE400000000000000;
    }

    if (v3)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x747845776F6C6C61;
    }

    if (v3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0xEF6E6F6974636172;
    }

    if (v7 == v10 && v8 == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1B78020F8();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1B734FBEC()
{
  result = qword_1EDAF7FC8[0];
  if (!qword_1EDAF7FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAF7FC8);
  }

  return result;
}

unint64_t sub_1B734FC40()
{
  result = qword_1EB9926E0;
  if (!qword_1EB9926E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9926E0);
  }

  return result;
}

unint64_t sub_1B734FC94()
{
  result = qword_1EB9926E8;
  if (!qword_1EB9926E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9926E8);
  }

  return result;
}

uint64_t sub_1B734FCE8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9926D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B734FD60()
{
  result = qword_1EDAF7F80;
  if (!qword_1EDAF7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7F80);
  }

  return result;
}

unint64_t sub_1B734FDB4()
{
  result = qword_1EDAF7FA8;
  if (!qword_1EDAF7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7FA8);
  }

  return result;
}

uint64_t _s10FinanceKit27ExtractedOrderConfigurationV9BrandInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v19 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = 0xE700000000000000;
  v10 = 0x72656972726163;
  if (v3 != 1)
  {
    v10 = *a1;
    v9 = a1[1];
  }

  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x746E61686372656DLL;
  }

  if (v3)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x72656972726163;
  if (v6 != 1)
  {
    v14 = *a2;
    v13 = a2[1];
  }

  if (v6)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x746E61686372656DLL;
  }

  if (v6)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    sub_1B7237C18(v2, v3);
    sub_1B7237C18(v5, v6);
  }

  else
  {
    v17 = sub_1B78020F8();
    sub_1B7237C18(v2, v3);
    sub_1B7237C18(v5, v6);

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  if (v4 == v7 && v19 == v8)
  {
    return 1;
  }

  return sub_1B78020F8();
}

unint64_t sub_1B734FFA4()
{
  result = qword_1EB992700;
  if (!qword_1EB992700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992700);
  }

  return result;
}

BOOL _s10FinanceKit27ExtractedOrderConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v5 = *(a1 + 1);
    v4 = *(a1 + 2);
    v6 = *(a1 + 3);
    v7 = *(a1 + 4);
    v9 = *(a2 + 1);
    v8 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = *(a2 + 4);
    if (v7)
    {
      if (v11)
      {
        v12 = 0xE700000000000000;
        v13 = 0x72656972726163;
        if (v4 != 1)
        {
          v13 = *(a1 + 1);
          v12 = *(a1 + 2);
        }

        if (v4)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0x746E61686372656DLL;
        }

        if (v4)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0xE800000000000000;
        }

        v16 = 0xE700000000000000;
        v17 = 0x72656972726163;
        if (v8 != 1)
        {
          v17 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        if (v8)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0x746E61686372656DLL;
        }

        if (v8)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0xE800000000000000;
        }

        if (v14 == v18 && v15 == v19)
        {
          sub_1B7237C18(v5, v4);
          sub_1B7237C18(v9, v8);
          sub_1B7237BD8(v5, v4, v6, v7);
          sub_1B7237BD8(v9, v8, v10, v11);
          sub_1B7237BD8(v5, v4, v6, v7);

          goto LABEL_31;
        }

        v29 = sub_1B78020F8();
        sub_1B7237C18(v5, v4);
        sub_1B7237C18(v9, v8);
        sub_1B7237BD8(v5, v4, v6, v7);
        sub_1B7237BD8(v9, v8, v10, v11);
        sub_1B7237BD8(v5, v4, v6, v7);

        if (v29)
        {
LABEL_31:
          if (v6 == v10 && v7 == v11)
          {
            sub_1B7237B84(v9, v8, v6, v7);
            sub_1B7237BC4(v5, v4);

            v24 = v5;
            v25 = v4;
            v26 = v6;
            v27 = v7;
LABEL_37:
            sub_1B7237B84(v24, v25, v26, v27);
            return 1;
          }

          v28 = sub_1B78020F8();
          sub_1B7237B84(v9, v8, v10, v11);
          sub_1B7237BC4(v5, v4);

          sub_1B7237B84(v5, v4, v6, v7);
          return (v28 & 1) != 0;
        }

        sub_1B7237B84(v9, v8, v10, v11);
        sub_1B7237BC4(v5, v4);

        v20 = v5;
        v21 = v4;
        v22 = v6;
        v23 = v7;
LABEL_28:
        sub_1B7237B84(v20, v21, v22, v23);
        return 0;
      }

      sub_1B7237BD8(*(a1 + 1), *(a1 + 2), *(a1 + 3), *(a1 + 4));
      sub_1B7237BD8(v9, v8, v10, 0);
      sub_1B7237BD8(v5, v4, v6, v7);
      sub_1B7237BC4(v5, v4);
    }

    else
    {
      sub_1B7237BD8(*(a1 + 1), *(a1 + 2), *(a1 + 3), 0);
      if (!v11)
      {
        sub_1B7237BD8(v9, v8, v10, 0);
        v24 = v5;
        v25 = v4;
        v26 = v6;
        v27 = 0;
        goto LABEL_37;
      }

      sub_1B7237BD8(v9, v8, v10, v11);
    }

    sub_1B7237B84(v5, v4, v6, v7);
    v20 = v9;
    v21 = v8;
    v22 = v10;
    v23 = v11;
    goto LABEL_28;
  }

  return result;
}

unint64_t sub_1B73503A8()
{
  result = qword_1EDAF9810[0];
  if (!qword_1EDAF9810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAF9810);
  }

  return result;
}

unint64_t sub_1B73503FC()
{
  result = qword_1EDAF7780;
  if (!qword_1EDAF7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7780);
  }

  return result;
}

unint64_t sub_1B7350450()
{
  result = qword_1EDAF7778;
  if (!qword_1EDAF7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7778);
  }

  return result;
}

unint64_t sub_1B73504A8()
{
  result = qword_1EB992720;
  if (!qword_1EB992720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992720);
  }

  return result;
}

unint64_t sub_1B7350500()
{
  result = qword_1EB992728;
  if (!qword_1EB992728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992728);
  }

  return result;
}

unint64_t sub_1B7350558()
{
  result = qword_1EB992730;
  if (!qword_1EB992730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992730);
  }

  return result;
}

unint64_t sub_1B73505B0()
{
  result = qword_1EB992738;
  if (!qword_1EB992738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992738);
  }

  return result;
}

unint64_t sub_1B7350618()
{
  result = qword_1EB992748;
  if (!qword_1EB992748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992748);
  }

  return result;
}

unint64_t sub_1B7350670()
{
  result = qword_1EB992750;
  if (!qword_1EB992750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992750);
  }

  return result;
}

uint64_t sub_1B73506C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1B735070C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit23ExtractedOrderAllowListV5EntryV9BrandTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit23ExtractedOrderAllowListV5EntryV9BrandTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7350798(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B73507E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B7350840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7350894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit27ExtractedOrderConfigurationV9BrandInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7350938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7350980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7350A14()
{
  result = qword_1EB992758;
  if (!qword_1EB992758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992758);
  }

  return result;
}

unint64_t sub_1B7350A6C()
{
  result = qword_1EB992760;
  if (!qword_1EB992760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992760);
  }

  return result;
}

unint64_t sub_1B7350AC4()
{
  result = qword_1EB992768;
  if (!qword_1EB992768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992768);
  }

  return result;
}

unint64_t sub_1B7350B1C()
{
  result = qword_1EB992770;
  if (!qword_1EB992770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992770);
  }

  return result;
}

unint64_t sub_1B7350B74()
{
  result = qword_1EDAF9800;
  if (!qword_1EDAF9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9800);
  }

  return result;
}

unint64_t sub_1B7350BCC()
{
  result = qword_1EDAF9808;
  if (!qword_1EDAF9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9808);
  }

  return result;
}

unint64_t sub_1B7350C24()
{
  result = qword_1EB992778;
  if (!qword_1EB992778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992778);
  }

  return result;
}

unint64_t sub_1B7350C7C()
{
  result = qword_1EB992780;
  if (!qword_1EB992780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992780);
  }

  return result;
}

unint64_t sub_1B7350CD4()
{
  result = qword_1EDAF7FB8;
  if (!qword_1EDAF7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7FB8);
  }

  return result;
}

unint64_t sub_1B7350D2C()
{
  result = qword_1EDAF7FC0;
  if (!qword_1EDAF7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7FC0);
  }

  return result;
}

unint64_t sub_1B7350D84()
{
  result = qword_1EDAF7F90;
  if (!qword_1EDAF7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7F90);
  }

  return result;
}

unint64_t sub_1B7350DDC()
{
  result = qword_1EDAF7F98;
  if (!qword_1EDAF7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7F98);
  }

  return result;
}

uint64_t sub_1B7350E30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B787A960 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B787A980 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787A9A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x707954646E617262 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B7351038(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001B787A960 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B787A980 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49646E617262 && a2 == 0xE90000000000006FLL)
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

unint64_t sub_1B7351168()
{
  result = qword_1EDAF7FB0;
  if (!qword_1EDAF7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF7FB0);
  }

  return result;
}

uint64_t AccountMatch.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccountMatch.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccountMatch.fullyQualifiedAccountIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccountMatch() + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t type metadata accessor for AccountMatch()
{
  result = qword_1EB992788;
  if (!qword_1EB992788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 AccountMatch.fullyQualifiedAccountIdentifier.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for AccountMatch() + 20));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t AccountMatch.fpanID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountMatch() + 24));

  return v1;
}

uint64_t AccountMatch.fpanID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccountMatch() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AccountMatch.matchingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccountMatch();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AccountMatch.matchingType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccountMatch();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t AccountMatch.isMismatched.setter(char a1)
{
  result = type metadata accessor for AccountMatch();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AccountMatch.lastUpdatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountMatch() + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountMatch.lastUpdatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountMatch() + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccountMatch.init(id:fullyQualifiedAccountIdentifier:fpanID:matchingType:isMismatched:lastUpdatedAt:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = *a2;
  v14 = *(a2 + 2);
  v15 = *(a2 + 3);
  v16 = *a5;
  v17 = sub_1B77FFA18();
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  v18 = type metadata accessor for AccountMatch();
  v19 = a8 + v18[5];
  *v19 = v25;
  *(v19 + 16) = v14;
  *(v19 + 24) = v15;
  v20 = (a8 + v18[6]);
  *v20 = a3;
  v20[1] = a4;
  *(a8 + v18[7]) = v16;
  *(a8 + v18[8]) = a6;
  v21 = v18[9];
  v22 = sub_1B77FF988();
  v23 = *(*(v22 - 8) + 32);

  return v23(a8 + v21, a7, v22);
}

uint64_t _s10FinanceKit12AccountMatchV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AccountMatch();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v10 = (a2 + v5);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v6 == *v10 && v7 == v10[1];
  if (!v13 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v14 = v8 == v11 && v9 == v12;
  if (!v14 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[6];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1B78020F8() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  return sub_1B77FF918();
}

uint64_t sub_1B73519EC()
{
  result = sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    result = sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t BankConnectTransactionsMatcher.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ManagedTransactionCategoryImporter();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t BankConnectTransactionsMatcher.init()()
{
  type metadata accessor for ManagedTransactionCategoryImporter();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BankConnectTransactionsMatcher.matchTransactions(for:in:)(FinanceKit::FullyQualifiedAccountIdentifier a1, NSManagedObjectContext in)
{
  object = a1.accountID._object;
  countAndFlagsBits = a1.accountID._countAndFlagsBits;
  v78 = sub_1B77FFA18();
  v4 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - v11;
  v13 = countAndFlagsBits[1];
  *&v79 = *countAndFlagsBits;
  v14 = countAndFlagsBits[3];
  v77 = countAndFlagsBits[2];
  if (qword_1EDAF65A8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v15 = sub_1B78000B8();
  v16 = __swift_project_value_buffer(v15, qword_1EDAF65B0);

  v67 = v16;
  v17 = sub_1B7800098();
  v18 = sub_1B78011F8();

  v19 = os_log_type_enabled(v17, v18);
  *(&v79 + 1) = v13;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v75 = object;
    v73 = v4;
    v22 = v21;
    v83 = v21;
    *v20 = 136315138;
    *&v80 = 0;
    *(&v80 + 1) = 0xE000000000000000;

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    MEMORY[0x1B8CA4D30](v79, *(&v79 + 1));
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    v23 = v77;
    MEMORY[0x1B8CA4D30](v77, v14);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v24 = sub_1B71A3EF8(v80, *(&v80 + 1), &v83);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1B7198000, v17, v18, "Attempting to match Bank Connect and PassKit transactions for %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v25 = v22;
    v4 = v73;
    object = v75;
    MEMORY[0x1B8CA7A40](v25, -1, -1);
    v26 = v20;
    v13 = *(&v79 + 1);
    MEMORY[0x1B8CA7A40](v26, -1, -1);
  }

  else
  {

    v23 = v77;
  }

  v27 = v76;
  *&v80 = v79;
  *(&v80 + 1) = v13;
  v81 = v23;
  v82 = v14;
  v28 = sub_1B7354844(&v80);
  if (!v27)
  {
    v73 = v28;
    type metadata accessor for ManagedInternalTransaction();
    *&v80 = v79;
    *(&v80 + 1) = v13;
    v81 = v23;
    v82 = v14;
    LOBYTE(v83) = 1;
    static ManagedInternalTransaction.latestTransactionDate(for:source:in:)(&v80, &v83, object, v12);
    if (v73 >> 62)
    {
      goto LABEL_30;
    }

    v30 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v12; v30; i = v12)
    {
      v31 = 0;
      v69 = v14;
      v70 = v73 & 0xC000000000000001;
      v65 = v73 & 0xFFFFFFFFFFFFFF8;
      v75 = object;
      v76 = (v4 + 56);
      v59 = (v4 + 8);
      v14 = &off_1E7CAF000;
      *&v29 = 136315138;
      v58 = v29;
      v68 = v30;
      while (1)
      {
        if (v70)
        {
          v37 = MEMORY[0x1B8CA5DC0](v31, v73);
          goto LABEL_17;
        }

        if (v31 >= *(v65 + 16))
        {
          break;
        }

        v37 = *(v73 + 8 * v31 + 32);
LABEL_17:
        v13 = v37;
        v4 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        v38 = [v37 v14[385]];
        if (v38)
        {
          v12 = v74;
          v39 = v38;
          sub_1B77FF9E8();

          v32 = *v76;
          (*v76)(v12, 0, 1, v78);
          sub_1B7205418(v12, &unk_1EB993A10);
          v80 = v79;
          v81 = v77;
          v82 = v69;
          sub_1B7354A88(v13, &v80, v75);
          if (v40 >> 62)
          {
            object = v40;
            v57 = sub_1B7801958();

            if (!v57)
            {
LABEL_21:
              v12 = v13;
              v42 = sub_1B7800098();
              object = sub_1B78011F8();

              v64 = object;
              if (os_log_type_enabled(v42, object))
              {
                v43 = swift_slowAlloc();
                v63 = v43;
                v61 = swift_slowAlloc();
                *&v80 = v61;
                *v43 = v58;
                v44 = [v12 publicTransactionObject];
                v60 = v42;
                v45 = v44;
                v46 = [v44 id];

                v47 = v66;
                sub_1B77FF9E8();

                sub_1B729D260();
                v62 = v12;
                v48 = v78;
                v49 = sub_1B7802068();
                v51 = v50;
                v52 = v47;
                v14 = &off_1E7CAF000;
                v53 = v48;
                v12 = v62;
                (*v59)(v52, v53);
                v54 = sub_1B71A3EF8(v49, v51, &v80);

                v55 = v63;
                *(v63 + 1) = v54;
                v42 = v60;
                _os_log_impl(&dword_1B7198000, v60, v64, "No similar transaction found for transactionID: %s, resetting sharedID to nil.", v55, 0xCu);
                object = v61;
                __swift_destroy_boxed_opaque_existential_1(v61);
                MEMORY[0x1B8CA7A40](object, -1, -1);
                MEMORY[0x1B8CA7A40](v63, -1, -1);
              }

              [v12 setSharedId_];
            }
          }

          else
          {
            v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (!v41)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          v32 = *v76;
          v12 = v74;
          (*v76)(v74, 1, 1, v78);
          sub_1B7205418(v12, &unk_1EB993A10);
        }

        v33 = [v13 v14[385]];
        if (v33)
        {
          v34 = v72;
          v35 = v33;
          sub_1B77FF9E8();

          v32(v34, 0, 1, v78);
          v36 = v34;
          v14 = &off_1E7CAF000;
          sub_1B7205418(v36, &unk_1EB993A10);
        }

        else
        {
          v56 = v72;
          v32(v72, 1, 1, v78);
          sub_1B7205418(v56, &unk_1EB993A10);
          v80 = v79;
          v81 = v77;
          v82 = v69;
          sub_1B7352424(v13, &v80, v75);
        }

        [v13 setIsVisible_];

        ++v31;
        if (v4 == v68)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_30:
      v30 = sub_1B7801958();
    }

LABEL_31:

    sub_1B7205418(i, &qword_1EB98EBD0);
  }
}

uint64_t sub_1B7352424(void *a1, uint64_t a2, unint64_t a3)
{
  v129 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v113 = &v110 - v6;
  v116 = sub_1B77FFA18();
  v114 = *(v116 - 8);
  v7 = MEMORY[0x1EEE9AC00](v116);
  v111 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v112 = &v110 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v110 - v11;
  v125 = sub_1B77FFC88();
  isa = v125[-1].isa;
  MEMORY[0x1EEE9AC00](v125);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v127 = v15;
  v128 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v123 = *(a2 + 8);
  v124 = v19;
  v20 = *(a2 + 16);
  v121 = *(a2 + 24);
  v122 = v20;
  v21 = [a1 publicTransactionObject];
  v22 = [v21 amount];

  [v22 decimalValue];
  v23 = sub_1B78016D8();
  v119 = v24;
  v120 = v23;
  v118 = v25;
  v26 = [a1 publicTransactionObject];
  v27 = [v26 currency];

  v117 = sub_1B7800868();
  v29 = v28;

  v30 = [a1 publicTransactionObject];
  v31 = [v30 transactionDate];

  sub_1B77FF928();
  v32 = [a1 publicTransactionObject];
  v33 = [v32 merchantName];

  if (!v33)
  {
    v34 = [a1 publicTransactionObject];
    v33 = [v34 transactionDescription];
  }

  v131 = v18;
  v35 = sub_1B7800868();
  v37 = v36;

  v38 = [a1 paymentHash];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1B7800868();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v130[0] = v124;
  v130[1] = v123;
  v130[2] = v122;
  v130[3] = v121;
  sub_1B77FFBC8();
  v43 = v40;
  v44 = v131;
  v45 = v126;
  v46 = sub_1B7354D38(v43, v42, v120, v119, v118, v117, v29, v131, v35, v37, v130, v14, v129);
  if (v45)
  {

    (*(isa + 1))(v14, v125);
    return (*(v128 + 8))(v44, v127);
  }

  v48 = v46;
  (*(isa + 1))(v14, v125);

  if (!v48)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v58 = sub_1B78000B8();
    __swift_project_value_buffer(v58, qword_1EDAF65B0);
    v59 = sub_1B7800098();
    v60 = sub_1B78011B8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1B7198000, v59, v60, "All similar transactions are matched already.", v61, 2u);
      MEMORY[0x1B8CA7A40](v61, -1, -1);
    }

    return (*(v128 + 8))(v44, v127);
  }

  v49 = v48;
  v50 = [a1 sharedId];
  if (v50)
  {
    v51 = v112;
    v52 = v50;
    sub_1B77FF9E8();

    v53 = v114;
    v54 = *(v114 + 32);
    v55 = v113;
    v56 = v51;
    v57 = v116;
    v54(v113, v56, v116);
    (*(v53 + 56))(v55, 0, 1, v57);
    v54(v115, v55, v57);
  }

  else
  {
    v53 = v114;
    v62 = v113;
    v63 = v116;
    (*(v114 + 56))(v113, 1, 1, v116);
    sub_1B77FFA08();
    if ((*(v53 + 48))(v62, 1, v63) != 1)
    {
      sub_1B7205418(v62, &unk_1EB993A10);
    }
  }

  v64 = sub_1B77FF9B8();
  [a1 setSharedId_];

  v65 = sub_1B77FF9B8();
  [v49 setSharedId_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B780C060;
  *(inited + 32) = a1;
  *(inited + 40) = v49;
  v67 = v49;
  v68 = a1;
  sub_1B7545E30(inited);
  v70 = v69;
  swift_setDeallocating();
  swift_arrayDestroy();
  v71 = v129;
  _s10FinanceKit26ManagedTransactionInsightsC05mergedE012transactions2inACSgShyAA0c8InternalD0CG_So22NSManagedObjectContextCtFZ_0(v70, v129);
  v73 = v72;

  ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(v68, v71);
  ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(v67, v71);
  v44 = v131;
  v74 = v116;
  v75 = v115;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v76 = sub_1B78000B8();
  __swift_project_value_buffer(v76, qword_1EDAF65B0);
  v77 = v111;
  (*(v53 + 16))(v111, v75, v74);
  v78 = v67;
  v79 = v68;
  v80 = v74;
  v81 = v79;
  v82 = sub_1B7800098();
  v83 = sub_1B78011F8();

  LODWORD(v129) = v83;
  if (!os_log_type_enabled(v82, v83))
  {

    v109 = *(v114 + 8);
    v109(v77, v80);
    v109(v75, v80);
    return (*(v128 + 8))(v44, v127);
  }

  v84 = swift_slowAlloc();
  v126 = swift_slowAlloc();
  v130[0] = v126;
  *v84 = 136315650;
  v85 = [v81 publicTransactionObject];
  v125 = v82;
  v86 = v85;
  v87 = [v85 id];

  v88 = v78;
  v124 = v78;
  v89 = v112;
  sub_1B77FF9E8();

  v123 = sub_1B729D260();
  v90 = sub_1B7802068();
  v92 = v91;
  v122 = *(v114 + 8);
  v122(v89, v80);
  v93 = sub_1B71A3EF8(v90, v92, v130);

  *(v84 + 4) = v93;
  *(v84 + 12) = 2080;
  v94 = [v88 publicTransactionObject];
  v95 = [v94 id];

  sub_1B77FF9E8();
  v96 = sub_1B7802068();
  v98 = v97;
  v99 = v122;
  v122(v89, v80);
  v100 = sub_1B71A3EF8(v96, v98, v130);

  *(v84 + 14) = v100;
  *(v84 + 22) = 2080;
  v101 = v111;
  v102 = sub_1B7802068();
  v104 = v103;
  v99(v101, v80);
  v105 = sub_1B71A3EF8(v102, v104, v130);

  *(v84 + 24) = v105;
  v106 = v125;
  _os_log_impl(&dword_1B7198000, v125, v129, "Similar transaction found for transactionID: %s. Linking with Bank Connect transaction with transactionID: %s using sharedID: %s.", v84, 0x20u);
  v107 = v126;
  swift_arrayDestroy();
  MEMORY[0x1B8CA7A40](v107, -1, -1);
  MEMORY[0x1B8CA7A40](v84, -1, -1);
  v108 = v124;

  v99(v115, v80);
  return (*(v128 + 8))(v131, v127);
}

uint64_t static ManagedInternalTransaction.bankConnectTransaction(paymentHash:amount:currency:transactionDate:merchantName:fullyQualifiedAccountIdentifier:calendar:isIncluded:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (*a7)(void, void), uint64_t a8, __int128 *a9, unint64_t a10, unint64_t *a11, uint64_t a12, uint64_t (*a13)(void), __int128 *a14, __int128 *a15)
{
  v104 = a7;
  v105 = a8;
  v103 = a6;
  v122 = a5;
  v102 = a4;
  v101 = a3;
  v107 = a1;
  v111 = a15;
  v97 = sub_1B77FEA08();
  v96 = *(v97 - 8);
  v16 = MEMORY[0x1EEE9AC00](v97);
  v95 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v92 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C80);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v93 = &v92 - v20;
  v21 = sub_1B77FF988();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v100 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v92 - v24;
  v98 = sub_1B77FEA78();
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v108 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B78000B8();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a11;
  v32 = a11[1];
  v34 = a11[3];
  v112 = a11[2];
  v113 = v34;
  v114 = v32;
  if (qword_1EDAF65A8 != -1)
  {
LABEL_43:
    v77 = v29;
    swift_once();
    v29 = v77;
  }

  v35 = v29;
  v36 = __swift_project_value_buffer(v29, qword_1EDAF65B0);
  v37 = *(v28 + 2);
  v109 = v31;
  v110 = v35;
  v37(v31, v36, v35);
  if (a2)
  {
    v106 = v28;
    v117.receiver = swift_getObjCClassFromMetadata();
    v117.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v38 = objc_msgSendSuper2(&v117, sel_fetchRequest);
    v39 = sub_1B7800C18();
    [v38 0x1FAD33CF8];

    *&v118 = v33;
    *(&v118 + 1) = v114;
    v119 = v112;
    v120 = v113;
    v123 = 1;
    v40 = sub_1B74F414C(v107, a2, &v118, &v123);
    [v38 setPredicate_];

    a2 = v111;
    v41 = v115;
    v42 = sub_1B7801498();
    if (v41)
    {

      v28 = v106;
LABEL_7:
      (*(v28 + 1))(v109, v110);
      return a2;
    }

    v52 = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    if (v42 >> 62)
    {
      v78 = v42;
      v79 = sub_1B7801958();
      v42 = v78;
      if (v79)
      {
        goto LABEL_11;
      }
    }

    else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      if ((v42 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1B8CA5DC0](0);
        goto LABEL_14;
      }

      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v53 = *(v42 + 32);
LABEL_14:
        a2 = v53;

        (*(v106 + 1))(v109, v110);
        return a2;
      }

      __break(1u);
      goto LABEL_52;
    }

    v115 = 0;
    v28 = v106;
  }

  v43 = v105;
  Calendar.transactionMatchingStartDate(for:)(v105, v25);
  Calendar.transactionMatchingEndDate(for:)(v43, v100);
  v44 = v108;
  sub_1B77FEA28();
  v25 = v116;
  v121.receiver = swift_getObjCClassFromMetadata();
  v121.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v45 = objc_msgSendSuper2(&v121, sel_fetchRequest);
  v46 = sub_1B7800C18();
  [v45 setRelationshipKeyPathsForPrefetching_];

  *&v118 = v33;
  *(&v118 + 1) = v114;
  v119 = v112;
  v120 = v113;
  v47 = v45;
  v123 = 1;
  v48 = _s10FinanceKit26ManagedInternalTransactionC012predicateForE04with6amount8currency12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_So9NSDecimalaSS10Foundation04DateL0VAA0E6SourceOtFZ_0(&v118, v101, v102, v122, v103, v104, v44, &v123);
  [v45 setPredicate_];

  a2 = v111;
  v49 = v115;
  v50 = sub_1B7801498();
  if (v49)
  {

    (*(v99 + 8))(v44, v98);
    goto LABEL_7;
  }

  v54 = v50;
  v113 = v47;
  v106 = v28;
  if (v50 >> 62)
  {
    v29 = sub_1B7801958();
    v115 = 0;
    if (v29)
    {
      goto LABEL_17;
    }

LABEL_47:

    v80 = v109;
    v81 = sub_1B7800098();
    v82 = sub_1B78011B8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1B7198000, v81, v82, "Failed to match transaction using amount, currency and time window", v83, 2u);
      MEMORY[0x1B8CA7A40](v83, -1, -1);
    }

    (*(v99 + 8))(v108, v98);
    (*(v106 + 1))(v80, v110);
    return 0;
  }

  v29 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v115 = 0;
  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_17:
  v55 = v29;
  v33 = 0;
  v28 = a13;
  v111 = a9;
  v112 = a10;
  *&v118 = MEMORY[0x1E69E7CC0];
  v31 = (v54 & 0xC000000000000001);
  v116 = v54 & 0xFFFFFFFFFFFFFF8;
  v114 = v54 & 0xC000000000000001;
  do
  {
    if (v31)
    {
      v29 = MEMORY[0x1B8CA5DC0](v33, v54);
    }

    else
    {
      if (v33 >= *(v116 + 16))
      {
        goto LABEL_42;
      }

      v29 = *(v54 + 8 * v33 + 32);
    }

    v25 = v29;
    v56 = (v33 + 1);
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    a2 = a14;
    if (a13(v29))
    {
      a2 = &v118;
      sub_1B7801B68();
      sub_1B7801BA8();
      v31 = v114;
      sub_1B7801BB8();
      v29 = sub_1B7801B78();
    }

    else
    {
    }

    ++v33;
  }

  while (v56 != v55);

  v52 = v118;
  if ((v118 & 0x8000000000000000) != 0 || (v118 & 0x4000000000000000) != 0)
  {
LABEL_52:
    v84 = sub_1B7801958();
    v57 = v106;
    v58 = v108;
    v59 = v112;
    v60 = v113;
    if (!v84)
    {
LABEL_59:

      v86 = v109;
      v87 = sub_1B7800098();
      v88 = sub_1B78011B8();
      if (!os_log_type_enabled(v87, v88))
      {
LABEL_65:

        (*(v99 + 8))(v108, v98);
        v57[1](v86, v110);
        return 0;
      }

      v89 = swift_slowAlloc();
      *v89 = 0;
      v90 = "Failed to match transaction. All similar transactions are matched already";
LABEL_64:
      _os_log_impl(&dword_1B7198000, v87, v88, v90, v89, 2u);
      MEMORY[0x1B8CA7A40](v89, -1, -1);
      goto LABEL_65;
    }

    result = sub_1B7801958();
    if (result < 2)
    {
      goto LABEL_54;
    }

LABEL_31:
    if (v59)
    {
      *&v118 = v111;
      *(&v118 + 1) = v59;
      v61 = sub_1B77FFAF8();
      v62 = v93;
      (*(*(v61 - 8) + 56))(v93, 1, 1, v61);
      sub_1B7205210();
      v63 = sub_1B7801818();
      v65 = v64;
      sub_1B7205418(v62, &qword_1EB990C80);
      *&v118 = v63;
      *(&v118 + 1) = v65;
      v66 = v94;
      sub_1B77FE9C8();
      v67 = v95;
      sub_1B77FE9F8();
      v68 = *(v96 + 8);
      v69 = v97;
      v68(v66, v97);
      v70 = sub_1B78017C8();
      v68(v67, v69);

      *&v118 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
      sub_1B723E0F4();
      sub_1B78007C8();

      v71 = sub_1B7800938();
      v73 = v72;

      v74 = HIBYTE(v73) & 0xF;
      if ((v73 & 0x2000000000000000) == 0)
      {
        v74 = v71 & 0xFFFFFFFFFFFFLL;
      }

      if (v74)
      {
        v75 = sub_1B7353D24(v71, v73, v52);

        v52 = v75;
      }

      else
      {
      }

      v57 = v106;
      v58 = v108;
      v60 = v113;
    }

    if (v52 >> 62)
    {
      v91 = sub_1B7801958();
      v76 = v105;
      if (v91)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v76 = v105;
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_40:
        a2 = sub_1B7354414(v76, v52);

LABEL_58:
        (*(v99 + 8))(v58, v98);
        v57[1](v109, v110);
        return a2;
      }
    }

    v86 = v109;
    v87 = sub_1B7800098();
    v88 = sub_1B78011B8();
    if (!os_log_type_enabled(v87, v88))
    {
      goto LABEL_65;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = "Failed to match transaction using merchant name";
    goto LABEL_64;
  }

  result = *(v118 + 16);
  v57 = v106;
  v58 = v108;
  v59 = v112;
  v60 = v113;
  if (!result)
  {
    goto LABEL_59;
  }

  if (result >= 2)
  {
    goto LABEL_31;
  }

LABEL_54:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v85 = MEMORY[0x1B8CA5DC0](0, v52);
    goto LABEL_57;
  }

  if (*(v52 + 16))
  {
    v85 = *(v52 + 32);
LABEL_57:
    a2 = v85;

    goto LABEL_58;
  }

  __break(1u);
  return result;
}

uint64_t BankConnectTransactionsMatcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1B7353D24(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v68 = a1;
  v69 = a2;
  v76 = sub_1B77FEA08();
  v4 = *(v76 - 8);
  v5 = MEMORY[0x1EEE9AC00](v76);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v67 - v9;
  v10 = a3;
  v67 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
  {
    v12 = MEMORY[0x1E69E7CC0];
    v77 = a3;
    if (!i)
    {
      goto LABEL_23;
    }

    v82 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FDCB8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v12 = v82;
    v15 = v10;
    v70 = (v4 + 8);
    v71 = v10 & 0xC000000000000001;
    v72 = i;
    v16 = v76;
    do
    {
      if (v71)
      {
        v17 = MEMORY[0x1B8CA5DC0](v14, v15);
      }

      else
      {
        v17 = *(v15 + 8 * v14 + 32);
      }

      v18 = v17;
      v79 = v12;
      v19 = [v17 publicTransactionObject];
      v20 = [v19 merchantName];

      if (!v20)
      {
        v21 = [v18 publicTransactionObject];
        v20 = [v21 transactionDescription];
      }

      v78 = v18;
      v22 = sub_1B7800868();
      v24 = v23;

      v80 = v22;
      v81 = v24;
      v25 = sub_1B77FFAF8();
      v26 = v73;
      (*(*(v25 - 8) + 56))(v73, 1, 1, v25);
      sub_1B7205210();
      v27 = sub_1B7801818();
      v29 = v28;
      sub_1B7205418(v26, &qword_1EB990C80);
      v80 = v27;
      v81 = v29;
      v30 = v74;
      sub_1B77FE9C8();
      v31 = v75;
      sub_1B77FE9F8();
      v32 = *v70;
      (*v70)(v30, v16);
      v33 = sub_1B78017C8();
      v32(v31, v16);

      v80 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
      sub_1B723E0F4();
      sub_1B78007C8();

      v34 = sub_1B7800938();
      v36 = v35;

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v38 = sub_1B74CBDAC(v34, v36, v68, v69);
        v39 = sub_1B78009A8();
        v40 = sub_1B78009A8();

        if (v40 >= v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = v40;
        }

        v42 = v38 / v41;
      }

      else
      {

        v42 = 0.0;
      }

      v43 = v72;
      v12 = v79;
      v82 = v79;
      v45 = *(v79 + 16);
      v44 = *(v79 + 24);
      v4 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_1B71FDCB8((v44 > 1), v45 + 1, 1);
        v12 = v82;
      }

      ++v14;
      *(v12 + 16) = v4;
      *(v12 + 4 * v45 + 32) = v42;
      v15 = v77;
    }

    while (v43 != v14);
    v10 = v77;
LABEL_23:
    v46 = sub_1B7527F10(v12);
    v47 = *(v12 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v4 = v46;
      v49 = 0;
      v50 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v10 < 0)
      {
        v51 = v10;
      }

      else
      {
        v51 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v52 = v10 & 0xC000000000000001;
      v10 += 32;
      v78 = v47 - 1;
      v79 = v51;
      v53 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v54 = v49;
LABEL_30:
        if (v54 >= *(v12 + 16))
        {
          goto LABEL_56;
        }

        v55 = *(v12 + 32 + 4 * v54);
        if (v67)
        {
          if (v54 == sub_1B7801958())
          {
            goto LABEL_49;
          }
        }

        else if (v54 == *(v50 + 16))
        {
          goto LABEL_49;
        }

        if (v52)
        {
          v56 = MEMORY[0x1B8CA5DC0](v54, v77);
          if ((v4 & 0x100000000) == 0)
          {
LABEL_38:
            if (v55 == *&v4)
            {
              v76 = v56;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v80 = v53;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1B71FDC98(0, *(v53 + 16) + 1, 1);
                v53 = v80;
              }

              v59 = *(v53 + 16);
              v58 = *(v53 + 24);
              v60 = v59 + 1;
              v61 = v76;
              if (v59 >= v58 >> 1)
              {
                v63 = v59 + 1;
                v75 = v59;
                sub_1B71FDC98((v58 > 1), v59 + 1, 1);
                v60 = v63;
                v59 = v75;
                v61 = v76;
                v48 = MEMORY[0x1E69E7CC0];
                v53 = v80;
              }

              v49 = (v54 + 1);
              *(v53 + 16) = v60;
              v62 = v53 + 16 * v59;
              *(v62 + 32) = v55;
              *(v62 + 40) = v61;
              if (v78 != v54)
              {
                continue;
              }

              goto LABEL_49;
            }
          }
        }

        else
        {
          if (v54 >= *(v50 + 16))
          {
            goto LABEL_57;
          }

          v56 = *(v10 + 8 * v54);
          if ((v4 & 0x100000000) == 0)
          {
            goto LABEL_38;
          }
        }

        break;
      }

      ++v54;

      if (v47 == v54)
      {
        goto LABEL_49;
      }

      goto LABEL_30;
    }

    v53 = MEMORY[0x1E69E7CC0];
LABEL_49:

    v64 = *(v53 + 16);
    if (!v64)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v80 = v48;
    sub_1B7801B98();
    v65 = 0;
    v66 = 40;
    while (v65 < *(v53 + 16))
    {
      ++v65;
      v4 = *(v53 + v66);
      sub_1B7801B68();
      v10 = *(v80 + 16);
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v66 += 16;
      if (v64 == v65)
      {

        return v80;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    a3 = v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7354414(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if (!(a2 >> 62))
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

    return v10;
  }

  result = sub_1B7801958();
  v10 = result;
  if (!result)
  {
    return v10;
  }

LABEL_3:
  v41 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1B8CA5DC0](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v11 = *(a2 + 32);
  }

  v12 = v11;
  v13 = [v12 publicTransactionObject];
  v14 = [v13 transactionDate];

  sub_1B77FF928();
  sub_1B77FF808();
  v16 = v15;
  v17 = *(v5 + 8);
  v44 = v5 + 8;
  v45 = v17;
  result = (v17)(v8, v4);
  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (!v9)
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  result = sub_1B7801958();
  if (result < 1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = sub_1B7801958();
LABEL_12:
  if (result < v10)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v41 || v10 == 1)
  {

    if (!v9)
    {
LABEL_18:
      result = a2 & 0xFFFFFFFFFFFFFF8;
      v20 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
      v21 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    type metadata accessor for ManagedInternalTransaction();

    v18 = 1;
    do
    {
      v19 = v18 + 1;
      sub_1B7801A98();
      v18 = v19;
    }

    while (v10 != v19);
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  result = sub_1B7801CA8();
  v10 = v22 >> 1;
LABEL_21:
  v23 = v10 - v21;
  v41 = result;
  if (v10 == v21)
  {
    v10 = v12;
LABEL_23:
    swift_unknownObjectRelease();
    return v10;
  }

  if (v10 > v21)
  {
    v24 = fabs(v16);
    v25 = (v20 + 8 * v21);
    v42 = v4;
    v43 = a1;
    while (1)
    {
      v10 = *v25;
      v26 = [v10 publicTransactionObject];
      v27 = [v26 transactionDate];

      sub_1B77FF928();
      sub_1B77FF808();
      v29 = v28;
      v45(v8, v4);
      v30 = fabs(v29);
      if (v30 < v24)
      {
      }

      else
      {
        if (v24 == v30)
        {
          v31 = [v10 transactionId];
          v32 = sub_1B7800868();
          v34 = v33;

          v35 = [v12 transactionId];
          v36 = sub_1B7800868();
          v38 = v37;

          if (v32 == v36 && v34 == v38)
          {

            goto LABEL_38;
          }

          v39 = sub_1B78020F8();

          if (v39)
          {
          }

          else
          {

LABEL_38:
            v10 = v12;
          }

          v30 = v24;
          v4 = v42;
          goto LABEL_28;
        }

        v10 = v12;
        v30 = v24;
      }

LABEL_28:
      ++v25;
      v12 = v10;
      v24 = v30;
      if (!--v23)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1B7354844(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v14 = *a1;
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  type metadata accessor for ManagedInternalTransaction();
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v7 = objc_msgSendSuper2(&v18, sel_fetchRequest);
  v8 = sub_1B7800C18();
  [v7 setRelationshipKeyPathsForPrefetching_];

  v15 = v14;
  v16 = v6;
  v17 = v5;
  v9 = sub_1B77FEA78();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v19 = 2;
  v10 = _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with14transactionIDs12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_SaySSGSg10Foundation04DateM0VSgAA0E6SourceOSgtFZ_0(&v15, 0, v4, &v19);
  sub_1B7205418(v4, &qword_1EB992798);
  [v7 setPredicate_];

  swift_getKeyPath();
  _s10FinanceKit26ManagedInternalTransactionC27transactionsSortDescriptors9ascending27withKeyPathForSortingByDateSaySo16NSSortDescriptorCGSb_s0kL0CyAC10Foundation0P0VGtFZ_0(0);

  sub_1B7326610();
  v11 = sub_1B7800C18();

  [v7 setSortDescriptors_];

  [v7 setReturnsObjectsAsFaults_];
  v12 = sub_1B7801498();

  return v12;
}

void sub_1B7354A88(void *a1, uint64_t *a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v23 = v14;
  v16 = [a1 sharedId];
  if (v16)
  {
    v22 = v15;
    v17 = v16;
    sub_1B77FF9E8();

    (*(v6 + 32))(v11, v9, v5);
    type metadata accessor for ManagedInternalTransaction();
    v28.receiver = swift_getObjCClassFromMetadata();
    v28.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v18 = objc_msgSendSuper2(&v28, sel_fetchRequest);
    v19 = sub_1B7800C18();
    [v18 setRelationshipKeyPathsForPrefetching_];

    *&v25 = v13;
    *(&v25 + 1) = v12;
    v26 = v23;
    v27 = v22;
    v29 = 1;
    v20 = _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with8sharedId6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_10Foundation4UUIDVAA0E6SourceOtFZ_0(&v25, v11, &v29);
    [v18 setPredicate_];

    sub_1B7801498();
    (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_1B7354D38(uint64_t a1, void (**a2)(void, void), uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (*a7)(void, void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, unint64_t a13)
{
  v14 = v13;
  v105 = a8;
  v104 = a7;
  v103 = a6;
  v124 = a5;
  v102 = a4;
  v101 = a3;
  v106 = a1;
  v116 = a13;
  v118 = sub_1B77FFA18();
  v16 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v114 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v117 = &v92 - v19;
  v97 = sub_1B77FEA08();
  v96 = *(v97 - 8);
  v20 = MEMORY[0x1EEE9AC00](v97);
  v95 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v92 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C80);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v93 = &v92 - v24;
  v25 = sub_1B77FF988();
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v92 - v29;
  v99 = sub_1B77FEA78();
  v100 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v107 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1B78000B8();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a11[1];
  v115 = *a11;
  v109 = v37;
  v38 = a11[2];
  v111 = a11[3];
  v112 = v38;
  if (qword_1EDAF65A8 != -1)
  {
LABEL_50:
    v87 = v34;
    swift_once();
    v34 = v87;
  }

  v39 = v34;
  v40 = __swift_project_value_buffer(v34, qword_1EDAF65B0);
  v110 = v33;
  v41 = *(v33 + 16);
  v108 = v39;
  v41(v36, v40, v39);
  v113 = v36;
  v98 = v16;
  if (a2)
  {
    type metadata accessor for ManagedInternalTransaction();
    v119.receiver = swift_getObjCClassFromMetadata();
    v119.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v42 = objc_msgSendSuper2(&v119, 0x1FAA24178);
    v43 = sub_1B7800C18();
    [v42 setRelationshipKeyPathsForPrefetching_];

    *&v120 = v115;
    *(&v120 + 1) = v109;
    v121 = v112;
    v122 = v111;
    v125 = 1;
    v44 = sub_1B74F414C(v106, a2, &v120, &v125);
    [v42 setPredicate_];

    v45 = sub_1B7801498();
    if (v14)
    {

      v36 = v113;
LABEL_7:
      (*(v110 + 8))(v36, v108);
      return v30;
    }

    v52 = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    if (v45 >> 62)
    {
      v88 = v45;
      v89 = sub_1B7801958();
      v45 = v88;
      v36 = v113;
      if (v89)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v36 = v113;
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_11:
        if ((v45 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1B8CA5DC0](0);
          v53 = v110;
          goto LABEL_14;
        }

        v53 = v110;
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v30 = *(v45 + 32);
LABEL_14:

          (*(v53 + 8))(v36, v108);
          return v30;
        }

        __break(1u);
LABEL_56:
        v90 = sub_1B7801958();
        v61 = v110;
        v62 = v106;
        v63 = v107;
        if (!v90)
        {
LABEL_63:

          v83 = sub_1B7800098();
          v84 = sub_1B78011B8();
          if (!os_log_type_enabled(v83, v84))
          {
LABEL_66:

            (*(v100 + 8))(v63, v99);
            (*(v61 + 8))(v36, v108);
            return 0;
          }

          v85 = swift_slowAlloc();
          *v85 = 0;
          v86 = "Failed to match transaction. All similar transactions are matched already";
LABEL_65:
          _os_log_impl(&dword_1B7198000, v83, v84, v86, v85, 2u);
          MEMORY[0x1B8CA7A40](v85, -1, -1);
          goto LABEL_66;
        }

        result = sub_1B7801958();
        if (result < 2)
        {
          goto LABEL_58;
        }

LABEL_32:
        if (v62)
        {
          *&v120 = v103;
          *(&v120 + 1) = v62;
          v64 = sub_1B77FFAF8();
          v65 = v93;
          (*(*(v64 - 8) + 56))(v93, 1, 1, v64);
          sub_1B7205210();
          v66 = sub_1B7801818();
          v68 = v67;
          v118 = v67;
          sub_1B7205418(v65, &qword_1EB990C80);
          *&v120 = v66;
          *(&v120 + 1) = v68;
          v69 = v94;
          sub_1B77FE9C8();
          v70 = v95;
          sub_1B77FE9F8();
          v71 = *(v96 + 8);
          v72 = v97;
          v71(v69, v97);
          v73 = sub_1B78017C8();
          v71(v70, v72);

          *&v120 = v73;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
          sub_1B723E0F4();
          sub_1B78007C8();

          v74 = sub_1B7800938();
          v76 = v75;

          v77 = HIBYTE(v76) & 0xF;
          if ((v76 & 0x2000000000000000) == 0)
          {
            v77 = v74 & 0xFFFFFFFFFFFFLL;
          }

          if (v77)
          {
            v78 = sub_1B7353D24(v74, v76, v52);

            v52 = v78;
          }

          else
          {
          }

          v63 = v107;
          v61 = v110;
        }

        if (v52 >> 62)
        {
          v82 = sub_1B7801958();
        }

        else
        {
          v82 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v82)
        {
          v30 = sub_1B7354414(v105, v52);

LABEL_62:
          (*(v100 + 8))(v63, v99);
          (*(v61 + 8))(v36, v108);
          return v30;
        }

        v83 = sub_1B7800098();
        v84 = sub_1B78011B8();
        if (!os_log_type_enabled(v83, v84))
        {
          goto LABEL_66;
        }

        v85 = swift_slowAlloc();
        *v85 = 0;
        v86 = "Failed to match transaction using merchant name";
        goto LABEL_65;
      }
    }
  }

  v46 = v105;
  Calendar.transactionMatchingStartDate(for:)(v105, v30);
  Calendar.transactionMatchingEndDate(for:)(v46, v28);
  v47 = v107;
  sub_1B77FEA28();
  v30 = type metadata accessor for ManagedInternalTransaction();
  v123.receiver = swift_getObjCClassFromMetadata();
  v123.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v48 = objc_msgSendSuper2(&v123, sel_fetchRequest);
  v49 = sub_1B7800C18();
  [v48 setRelationshipKeyPathsForPrefetching_];

  *&v120 = v115;
  *(&v120 + 1) = v109;
  v121 = v112;
  v122 = v111;
  v125 = 1;
  v50 = _s10FinanceKit26ManagedInternalTransactionC012predicateForE04with6amount8currency12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_So9NSDecimalaSS10Foundation04DateL0VAA0E6SourceOtFZ_0(&v120, v101, v102, v124, v103, v104, v47, &v125);
  [v48 setPredicate_];

  v16 = v116;
  v34 = sub_1B7801498();
  if (v14)
  {

    (*(v100 + 8))(v47, v99);
    goto LABEL_7;
  }

  v112 = v34;
  a2 = v110;
  if (v34 >> 62)
  {
    v34 = sub_1B7801958();
    v54 = v34;
  }

  else
  {
    v54 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v54)
  {

    v79 = sub_1B7800098();
    v80 = sub_1B78011B8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1B7198000, v79, v80, "Failed to match transaction using amount, currency and time window", v81, 2u);
      MEMORY[0x1B8CA7A40](v81, -1, -1);
    }

    (*(v100 + 8))(v107, v99);
    (a2)[1](v36, v108);
    return 0;
  }

  v104 = v48;
  v109 = 0;
  v33 = 0;
  v14 = v112;
  v116 = v112 & 0xC000000000000001;
  v106 = a10;
  v103 = a9;
  *&v120 = MEMORY[0x1E69E7CC0];
  v115 = v112 & 0xFFFFFFFFFFFFFF8;
  v111 = (v98 + 2);
  v28 = v98 + 56;
  do
  {
    if (v116)
    {
      v34 = MEMORY[0x1B8CA5DC0](v33, v14);
    }

    else
    {
      if (v33 >= *(v115 + 16))
      {
        goto LABEL_49;
      }

      v34 = *(v14 + 8 * v33 + 32);
    }

    a2 = v34;
    v55 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v56 = [v34 sharedId];
    if (v56)
    {
      v57 = v36;
      v58 = v114;
      v59 = v56;
      sub_1B77FF9E8();

      v30 = v117;
      v16 = v118;
      v60 = v58;
      v36 = v57;
      v14 = v112;
      (*v111)(v117, v60, v118);
      (*v28)(v30, 0, 1, v16);
      sub_1B7205418(v30, &unk_1EB993A10);
    }

    else
    {
      v30 = v117;
      (*v28)(v117, 1, 1, v118);
      sub_1B7205418(v30, &unk_1EB993A10);
      v16 = &v120;
      sub_1B7801B68();
      sub_1B7801BA8();
      v36 = v113;
      sub_1B7801BB8();
      v34 = sub_1B7801B78();
    }

    ++v33;
  }

  while (v55 != v54);

  v52 = v120;
  if ((v120 & 0x8000000000000000) != 0 || (v120 & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  result = *(v120 + 16);
  v61 = v110;
  v62 = v106;
  v63 = v107;
  if (!result)
  {
    goto LABEL_63;
  }

  if (result >= 2)
  {
    goto LABEL_32;
  }

LABEL_58:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v91 = MEMORY[0x1B8CA5DC0](0, v52);
    goto LABEL_61;
  }

  if (*(v52 + 16))
  {
    v91 = *(v52 + 32);
LABEL_61:
    v30 = v91;

    goto LABEL_62;
  }

  __break(1u);
  return result;
}

char *sub_1B7355B54()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[6];
  v37 = v0[1];
  v38 = v0[7];
  v6 = v0[8];
  v39 = v0[9];
  v40 = v0[5];
  v7 = v0[10];
  v41 = v0[11];
  v8 = v0[12];
  v9 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  if (v4)
  {

    v9 = sub_1B723E180(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1B723E180((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[16 * v11];
    *(v12 + 4) = v2;
    *(v12 + 5) = v4;
    v42 = v9;
  }

  if (v1)
  {

    sub_1B724428C(v13);
    v9 = v42;
  }

  if (!*(v9 + 2))
  {

    v17 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B723E0F4();
  v14 = sub_1B78007C8();
  v16 = v15;

  v17 = sub_1B723EC14(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1B723EC14((v18 > 1), v19 + 1, 1, v17);
  }

  *(v17 + 2) = v19 + 1;
  v20 = &v17[24 * v19];
  *(v20 + 4) = v14;
  *(v20 + 5) = v16;
  v20[48] = 0;
  if (v3)
  {
LABEL_13:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1B723EC14(0, *(v17 + 2) + 1, 1, v17);
    }

    v22 = *(v17 + 2);
    v21 = *(v17 + 3);
    if (v22 >= v21 >> 1)
    {
      v17 = sub_1B723EC14((v21 > 1), v22 + 1, 1, v17);
    }

    *(v17 + 2) = v22 + 1;
    v23 = &v17[24 * v22];
    *(v23 + 4) = v37;
    *(v23 + 5) = v3;
    v23[48] = 1;
  }

LABEL_18:
  if (v6)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1B723EC14(0, *(v17 + 2) + 1, 1, v17);
    }

    v25 = *(v17 + 2);
    v24 = *(v17 + 3);
    if (v25 >= v24 >> 1)
    {
      v17 = sub_1B723EC14((v24 > 1), v25 + 1, 1, v17);
    }

    *(v17 + 2) = v25 + 1;
    v26 = &v17[24 * v25];
    *(v26 + 4) = v38;
    *(v26 + 5) = v6;
    v26[48] = 4;
  }

  if (v7)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1B723EC14(0, *(v17 + 2) + 1, 1, v17);
    }

    v28 = *(v17 + 2);
    v27 = *(v17 + 3);
    if (v28 >= v27 >> 1)
    {
      v17 = sub_1B723EC14((v27 > 1), v28 + 1, 1, v17);
    }

    *(v17 + 2) = v28 + 1;
    v29 = &v17[24 * v28];
    *(v29 + 4) = v39;
    *(v29 + 5) = v7;
    v29[48] = 3;
  }

  if (v5)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1B723EC14(0, *(v17 + 2) + 1, 1, v17);
    }

    v31 = *(v17 + 2);
    v30 = *(v17 + 3);
    if (v31 >= v30 >> 1)
    {
      v17 = sub_1B723EC14((v30 > 1), v31 + 1, 1, v17);
    }

    *(v17 + 2) = v31 + 1;
    v32 = &v17[24 * v31];
    *(v32 + 4) = v40;
    *(v32 + 5) = v5;
    v32[48] = 2;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1B723EC14(0, *(v17 + 2) + 1, 1, v17);
  }

  v34 = *(v17 + 2);
  v33 = *(v17 + 3);
  if (v34 >= v33 >> 1)
  {
    v17 = sub_1B723EC14((v33 > 1), v34 + 1, 1, v17);
  }

  *(v17 + 2) = v34 + 1;
  v35 = &v17[24 * v34];
  *(v35 + 4) = v41;
  *(v35 + 5) = v8;
  v35[48] = 5;
  return v17;
}

uint64_t RawBankConnectData.PartyAddress.addressLines.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawBankConnectData.PartyAddress.streetName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RawBankConnectData.PartyAddress.streetName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RawBankConnectData.PartyAddress.buildingNumber.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RawBankConnectData.PartyAddress.buildingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RawBankConnectData.PartyAddress.postCode.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RawBankConnectData.PartyAddress.postCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t RawBankConnectData.PartyAddress.townName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t RawBankConnectData.PartyAddress.townName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t RawBankConnectData.PartyAddress.countrySubDivision.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t RawBankConnectData.PartyAddress.countrySubDivision.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t RawBankConnectData.PartyAddress.country.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t RawBankConnectData.PartyAddress.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

double RawBankConnectData.PartyAddress.init(country:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 80) = 0;
  *(a3 + 88) = a1;
  *(a3 + 96) = a2;
  return result;
}

unint64_t sub_1B735634C()
{
  v1 = *v0;
  v2 = 0x4C73736572646461;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x7972746E756F63;
  }

  v4 = 0x65646F4374736F70;
  if (v1 != 3)
  {
    v4 = 0x656D614E6E776F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E746565727473;
  if (v1 != 1)
  {
    v5 = 0x676E69646C697562;
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

uint64_t sub_1B7356444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7357288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B735646C(uint64_t a1)
{
  v2 = sub_1B735706C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73564A8(uint64_t a1)
{
  v2 = sub_1B735706C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.PartyAddress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9927A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v19[11] = v1[2];
  v19[12] = v8;
  v11 = v1[5];
  v19[9] = v1[4];
  v19[10] = v10;
  v12 = v1[7];
  v19[7] = v1[6];
  v19[8] = v11;
  v13 = v1[8];
  v14 = v1[9];
  v19[5] = v12;
  v19[6] = v13;
  v15 = v1[10];
  v16 = v1[11];
  v19[3] = v14;
  v19[4] = v15;
  v17 = v1[12];
  v19[1] = v16;
  v19[2] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B735706C();

  sub_1B78023F8();
  v27 = v9;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B721523C(&qword_1EB98F960);
  sub_1B7801F38();
  if (v2)
  {
  }

  else
  {

    v25 = 1;
    sub_1B7801EF8();
    v24 = 2;
    sub_1B7801EF8();
    v23 = 3;
    sub_1B7801EF8();
    v22 = 4;
    sub_1B7801EF8();
    v21 = 5;
    sub_1B7801EF8();
    v20 = 6;
    sub_1B7801F78();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.PartyAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9927B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B735706C();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    LOBYTE(v42) = 0;
    sub_1B721523C(&qword_1EDAF64A8);
    sub_1B7801DB8();
    v41 = v49[0];
    LOBYTE(v49[0]) = 1;
    v9 = sub_1B7801D78();
    v40 = v10;
    LOBYTE(v49[0]) = 2;
    v11 = sub_1B7801D78();
    v39 = v12;
    v38 = a2;
    LOBYTE(v49[0]) = 3;
    v13 = sub_1B7801D78();
    v15 = v14;
    v36 = v13;
    v37 = v11;
    LOBYTE(v49[0]) = 4;
    v16 = sub_1B7801D78();
    v18 = v17;
    v34 = v16;
    v35 = v9;
    LOBYTE(v49[0]) = 5;
    v19 = sub_1B7801D78();
    v21 = v20;
    v33 = v19;
    v50 = 6;
    v22 = sub_1B7801DF8();
    v23 = v8;
    v25 = v24;
    (*(v6 + 8))(v23, v5);
    v26 = v41;
    *&v42 = v41;
    *(&v42 + 1) = v35;
    v27 = v40;
    *&v43 = v40;
    *(&v43 + 1) = v37;
    *&v44 = v39;
    *(&v44 + 1) = v36;
    *&v45 = v15;
    *(&v45 + 1) = v34;
    *&v46 = v18;
    *(&v46 + 1) = v33;
    *&v47 = v21;
    *(&v47 + 1) = v22;
    v48 = v25;
    v28 = v38;
    *(v38 + 96) = v25;
    v29 = v47;
    v28[4] = v46;
    v28[5] = v29;
    v30 = v43;
    *v28 = v42;
    v28[1] = v30;
    v31 = v45;
    v28[2] = v44;
    v28[3] = v31;
    sub_1B732665C(&v42, v49);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v49[0] = v26;
    v49[1] = v35;
    v49[2] = v27;
    v49[3] = v37;
    v49[4] = v39;
    v49[5] = v36;
    v49[6] = v15;
    v49[7] = v34;
    v49[8] = v18;
    v49[9] = v33;
    v49[10] = v21;
    v49[11] = v22;
    v49[12] = v25;
    return sub_1B73266B8(v49);
  }
}

uint64_t _s10FinanceKit18RawBankConnectDataO12PartyAddressV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[10];
  v61 = a1[9];
  v62 = a1[11];
  v64 = a1[12];
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v23 = a2[9];
  v24 = a2[10];
  v65 = a2[11];
  v63 = a2[12];
  if (v4)
  {
    if (!v14)
    {
      return 0;
    }

    v54 = a2[8];
    v56 = a2[7];
    v50 = a1[7];
    v52 = a1[8];
    v48 = a1[6];
    v49 = a2[9];
    v46 = a2[1];
    v47 = a2[10];
    v25 = a1[10];
    v26 = a1[5];
    v58 = a2[5];
    v27 = a2[6];
    v28 = a1[4];
    v29 = a1[3];
    v30 = a2[4];
    v31 = a2[3];
    v32 = a1[2];
    v33 = a2[2];
    v34 = sub_1B731D168(v4, v14);
    v16 = v33;
    v5 = v32;
    v17 = v31;
    v18 = v30;
    v8 = v29;
    v7 = v28;
    v19 = v27;
    v22 = v56;
    v20 = v58;
    v9 = v26;
    v10 = v48;
    v23 = v49;
    v13 = v25;
    v15 = v46;
    v24 = v47;
    v11 = v50;
    v12 = v52;
    v21 = v54;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v5)
  {
    if (!v16)
    {
      return 0;
    }

    if (v6 != v15 || v5 != v16)
    {
      v51 = v17;
      v53 = v18;
      v57 = v7;
      v59 = v19;
      v55 = v13;
      v35 = v9;
      v36 = sub_1B78020F8();
      v17 = v51;
      v18 = v53;
      v7 = v57;
      v19 = v59;
      v9 = v35;
      v13 = v55;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v7)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v17 || v7 != v18)
    {
      v60 = v20;
      v37 = v19;
      v38 = v13;
      v39 = v9;
      v40 = sub_1B78020F8();
      v19 = v37;
      v20 = v60;
      v9 = v39;
      v13 = v38;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v10)
  {
    if (!v19)
    {
      return 0;
    }

    if (v9 != v20 || v10 != v19)
    {
      v41 = v13;
      v42 = sub_1B78020F8();
      v13 = v41;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v12)
  {
    if (!v21)
    {
      return 0;
    }

    if (v11 != v22 || v12 != v21)
    {
      v43 = v13;
      v44 = sub_1B78020F8();
      v13 = v43;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (!v13)
  {
    if (!v24)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (!v24 || (v61 != v23 || v13 != v24) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if (v62 == v65 && v64 == v63)
  {
    return 1;
  }

  return sub_1B78020F8();
}

unint64_t sub_1B735706C()
{
  result = qword_1EB9927A8;
  if (!qword_1EB9927A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9927A8);
  }

  return result;
}

uint64_t sub_1B73570C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7357108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7357184()
{
  result = qword_1EB9927B8;
  if (!qword_1EB9927B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9927B8);
  }

  return result;
}

unint64_t sub_1B73571DC()
{
  result = qword_1EB9927C0;
  if (!qword_1EB9927C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9927C0);
  }

  return result;
}

unint64_t sub_1B7357234()
{
  result = qword_1EB9927C8;
  if (!qword_1EB9927C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9927C8);
  }

  return result;
}

uint64_t sub_1B7357288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C73736572646461 && a2 == 0xEC00000073656E69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646C697562 && a2 == 0xEE007265626D754ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F4374736F70 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E6E776F74 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787AA20 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
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

void sub_1B735752C(void (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v8 = sub_1B77FE748();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = sub_1B77FE758();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v54 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v53 = &v43 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v43 - v21;
  v50 = a4;
  v51 = a1;
  v48 = a2;
  (a1)(v20);
  if (!v4)
  {
    return;
  }

  v46 = (v9 + 8);
  v47 = (v15 + 32);
  v45 = (v15 + 16);
  v52 = (v15 + 8);
  *&v22 = 134218242;
  v43 = v22;
  v23 = v55;
  v24 = v56;
  v44 = v8;
  v57 = v14;
  v58 = v4;
  v25 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v26 = v54;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  (*v47)(v24, v26, v14);
  sub_1B7357B18(&qword_1EDAF6608, MEMORY[0x1E6967E98]);
  sub_1B77FF2E8();
  sub_1B77FE6B8();
  sub_1B7357B18(&qword_1EB98F1C8, MEMORY[0x1E6967E70]);
  v27 = sub_1B7800828();
  v28 = *v46;
  (*v46)(v23, v8);
  if ((v27 & 1) == 0)
  {
    sub_1B77FE708();
    v29 = sub_1B7800828();
    v28(v23, v8);
    v28(v13, v8);
    if (v29)
    {
      goto LABEL_6;
    }

    (*v52)(v56, v57);
LABEL_13:

    return;
  }

  v28(v13, v8);
LABEL_6:

  v31 = v56;
  v30 = v57;
  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v32 = sub_1B78000B8();
  __swift_project_value_buffer(v32, qword_1EDAFD2D0);
  v33 = v53;
  (*v45)(v53, v31, v30);
  v34 = sub_1B7800098();
  v35 = sub_1B78011D8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = v43;
    *(v36 + 4) = 1;
    *(v36 + 12) = 2112;
    sub_1B77FE688();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    v39 = v33;
    v40 = *v52;
    (*v52)(v39, v57);
    *(v36 + 14) = v38;
    *v37 = v38;
    _os_log_impl(&dword_1B7198000, v34, v35, "Failed to perform operation (#%ld) with error: %@", v36, 0x16u);
    sub_1B726B694(v37);
    v31 = v56;
    MEMORY[0x1B8CA7A40](v37, -1, -1);
    v41 = v36;
    v30 = v57;
    MEMORY[0x1B8CA7A40](v41, -1, -1);
  }

  else
  {

    v42 = v33;
    v40 = *v52;
    (*v52)(v42, v30);
  }

  [v49 reset];
  v40(v31, v30);

  v51();
}

uint64_t sub_1B7357B18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B7357B60(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B7357BB8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setName_];
}

void sub_1B7357C1C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizationName];
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

void sub_1B7357C84(uint64_t a1, void **a2)
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
  [v2 setLocalizationName_];
}

uint64_t ManagedECommerceOrderContent.receipt(named:languages:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();

  sub_1B7357EDC(v7, a3, KeyPath);
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

uint64_t ManagedECommerceOrderContent.receipts(named:languages:)(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7357EDC(a1, a2, KeyPath);
  v6 = v5;

  return v6;
}

void sub_1B7357EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedOrderReceipt();
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 16) = xmmword_1B78123D0;
  *(v7 + 56) = v8;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v7 + 64) = a1;
  *(v7 + 120) = v8;
  *(v7 + 88) = v9;
  *(v7 + 96) = 0xD000000000000015;
  *(v7 + 104) = 0x80000001B7873E70;
  v34 = a1;

  v10 = [v3 objectID];
  *(v7 + 152) = sub_1B723C524();
  *(v7 + 128) = v10;
  v11 = v6;
  v12 = sub_1B7800838();
  v13 = sub_1B7800C18();

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:v13];

  [v6 setPredicate_];
  v15 = [v3 managedObjectContext];
  if (!v15)
  {
    sub_1B7359AA4();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v16 = v15;
  v17 = sub_1B7801498();
  if (v4)
  {

    v11 = v14;
    v14 = v16;
LABEL_5:

    return;
  }

  v32 = v14;
  v33 = v11;
  v19 = v17;

  v20 = sub_1B7359174(v19, a3, sub_1B7248F28);

  v37 = MEMORY[0x1E69E7CC0];
  v21 = (v20 + 64);
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  if (!v24)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v24 &= v24 - 1;

      v28 = sub_1B7358CA4(v27, a2);

      if (v28)
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_11;
      }
    }

    MEMORY[0x1B8CA4F20](v29);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
  }

  while (v24);
LABEL_11:
  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      v37 = sub_1B725F2B4(v31);
      sub_1B735A79C(&v37, a3, v34, sub_1B77E6DD4, type metadata accessor for ManagedOrderReceipt);

      return;
    }

    v24 = v21[v30];
    ++v26;
    if (v24)
    {
      v26 = v30;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
}

void sub_1B7358374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedOrderImage();
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 16) = xmmword_1B78123D0;
  *(v7 + 56) = v8;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v7 + 64) = a1;
  *(v7 + 120) = v8;
  *(v7 + 88) = v9;
  *(v7 + 96) = 0xD000000000000015;
  *(v7 + 104) = 0x80000001B7873E70;
  v34 = a1;

  v10 = [v3 objectID];
  *(v7 + 152) = sub_1B723C524();
  *(v7 + 128) = v10;
  v11 = v6;
  v12 = sub_1B7800838();
  v13 = sub_1B7800C18();

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:v13];

  [v6 setPredicate_];
  v15 = [v3 managedObjectContext];
  if (!v15)
  {
    sub_1B7359AA4();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v16 = v15;
  v17 = sub_1B7801498();
  if (v4)
  {

    v11 = v14;
    v14 = v16;
LABEL_5:

    return;
  }

  v32 = v14;
  v33 = v11;
  v19 = v17;

  v20 = sub_1B7359174(v19, a3, sub_1B7249A54);

  v37 = MEMORY[0x1E69E7CC0];
  v21 = (v20 + 64);
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  if (!v24)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v24 &= v24 - 1;

      v28 = sub_1B7358CA4(v27, a2);

      if (v28)
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_11;
      }
    }

    MEMORY[0x1B8CA4F20](v29);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
  }

  while (v24);
LABEL_11:
  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      v37 = sub_1B725F2E4(v31);
      sub_1B735A79C(&v37, a3, v34, sub_1B77E6DD4, type metadata accessor for ManagedOrderImage);

      return;
    }

    v24 = v21[v30];
    ++v26;
    if (v24)
    {
      v26 = v30;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
}