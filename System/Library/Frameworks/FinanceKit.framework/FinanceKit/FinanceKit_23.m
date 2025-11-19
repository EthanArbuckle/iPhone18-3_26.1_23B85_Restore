uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9932C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73C3CF4();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28[0]) = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v39 = v9;
  LOBYTE(v28[0]) = 1;
  v12 = sub_1B7801D78();
  v14 = v13;
  v22 = v12;
  v32 = 2;
  sub_1B72153F8();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v16 = v34;
  v36 = v33;
  v15 = v33;
  v37 = v34;
  v38 = v35;
  v17 = v39;
  *&v23 = v39;
  *(&v23 + 1) = v11;
  v18 = v22;
  *&v24 = v22;
  *(&v24 + 1) = v14;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  *(a2 + 64) = v35;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  v19 = v24;
  *a2 = v23;
  *(a2 + 16) = v19;
  sub_1B72D9F60(&v23, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[0] = v17;
  v28[1] = v11;
  v28[2] = v18;
  v28[3] = v14;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  return sub_1B72D9FBC(v28);
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9932D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73C3D48();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19[0]) = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v12 = v9;
  v29 = 1;
  sub_1B72153F8();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v13 = v23;
  v14 = v24;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  *&v17[0] = v12;
  *(&v17[0] + 1) = v11;
  v17[1] = v23;
  v17[2] = v24;
  v18 = v25;
  *(a2 + 48) = v25;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  *a2 = v17[0];
  sub_1B72DA010(v17, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v19[0] = v12;
  v19[1] = v11;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  return sub_1B72DA06C(v19);
}

uint64_t sub_1B73C0260()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73C0364()
{
  sub_1B7800798();
}

uint64_t sub_1B73C0454()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73C0554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73C607C();
  *a1 = result;
  return result;
}

void sub_1B73C0584(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xEC000000736D6574;
  v6 = 0x497972616D6D7573;
  v7 = 0xEB00000000746E75;
  v8 = 0x6F6D416C61746F74;
  if (v2 != 3)
  {
    v8 = 0x44746E656D796170;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D657449656E696CLL;
    v3 = 0xE900000000000073;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1B73C0644()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x497972616D6D7573;
  v4 = 0x6F6D416C61746F74;
  if (v1 != 3)
  {
    v4 = 0x44746E656D796170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D657449656E696CLL;
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

uint64_t sub_1B73C0700@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73C607C();
  *a1 = result;
  return result;
}

uint64_t sub_1B73C0728(uint64_t a1)
{
  v2 = sub_1B73C3D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C0764(uint64_t a1)
{
  v2 = sub_1B73C3D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C07A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_1B73C0840(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.DecodingConfiguration.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.DecodingConfiguration.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.DecodingConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t RawApplePayMerchantTokenUsageInformation.PastPayment.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v37 = a3;
  v4 = sub_1B77FED28();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9932E8);
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B73C3D9C();
  v14 = v39;
  sub_1B78023C8();
  if (v14)
  {

    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v33 = v10;
  v34 = v4;
  v35 = v6;
  v39 = v12;
  LOBYTE(v42) = 0;
  v16 = sub_1B7801DF8();
  v18 = v17;
  swift_beginAccess();

  v19 = sub_1B724E408(&v45, v16, v18);
  swift_endAccess();

  if ((v19 & 1) == 0)
  {

    LOBYTE(v42) = 0;
    sub_1B7801B18();
    swift_allocError();
    sub_1B73C3F68(&qword_1EB9932F8, &qword_1EB9932E8);
    sub_1B7801AD8();
    swift_willThrow();

    (*(v38 + 8))(v9, v7);
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v20 = v39;
  *v39 = v16;
  v20[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993300);
  LOBYTE(v45) = 1;
  sub_1B73C3E44(&qword_1EB993308, &qword_1EB993300, &unk_1B7820B78, sub_1B73C3DF0);
  sub_1B7801DB8();
  v21 = v42;
  v22 = MEMORY[0x1E69E7CC0];
  if (!v42)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v20[2] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993318);
  v32 = 0;
  LOBYTE(v45) = 2;
  sub_1B73C3E44(&qword_1EB993320, &qword_1EB993318, &unk_1B7820B80, sub_1B73C3EC0);
  v23 = v32;
  v24 = v32;
  sub_1B7801DB8();
  v25 = v38;
  if (v24)
  {
    (*(v38 + 8))(v9, v7);

    __swift_destroy_boxed_opaque_existential_1(v40);

    if (!v23)
    {
    }
  }

  else
  {
    v26 = v42;
    if (!v42)
    {
      v26 = v22;
    }

    v20[3] = v26;
    LOBYTE(v45) = 3;
    sub_1B72153F8();
    sub_1B7801E48();
    v27 = v43;
    *(v20 + 2) = v42;
    *(v20 + 3) = v27;
    v20[8] = v44;
    v46 = 4;
    v28 = sub_1B7801DF8();
    v46 = 0;
    v29 = v35;
    DateComponentsParseStrategy.parse(_:)(v28, v30, v35);

    (*(v25 + 8))(v9, v7);
    v31 = v39;
    (*(v36 + 32))(v39 + *(v33 + 32), v29, v34);
    sub_1B73C3650(v31, v37, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_1B73C3964(v31, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
  }

  return result;
}

unint64_t sub_1B73C1064(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6556616D65686373;
    v6 = 0x746E61686372656DLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x6974617269707865;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6D79615074736170;
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

uint64_t sub_1B73C11E8()
{
  sub_1B78022F8();
  sub_1B76AE7B8();
  return sub_1B7802368();
}

uint64_t sub_1B73C1238()
{
  sub_1B78022F8();
  sub_1B76AE7B8();
  return sub_1B7802368();
}

uint64_t sub_1B73C127C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73C60C8();
  *a1 = result;
  return result;
}

unint64_t sub_1B73C12AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B73C1064(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B73C12F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73C60C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B73C131C(uint64_t a1)
{
  v2 = sub_1B73C3F14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C1358(uint64_t a1)
{
  v2 = sub_1B73C3F14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawApplePayMerchantTokenUsageInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v48 - v4;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993330);
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v48 - v10;
  v12 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  v14 = *(MEMORY[0x1EEE9AC00](v12) + 44);
  v59 = v6;
  v15 = *(v6 + 56);
  v61 = v14;
  v16 = (v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15(v16 + v14, 1, 1, v5);
  v17 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B73C3F14();
  v18 = v62;
  sub_1B78023C8();
  if (v18)
  {
    v62 = v18;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_1B7205418(v16 + v61, &qword_1EB98EBD0);
  }

  v55 = v8;
  v19 = v58;
  v20 = v59;
  LOBYTE(v65) = 0;
  v21 = v11;
  v22 = v58;
  if (sub_1B7801E28() != 1)
  {
    LOBYTE(v65) = 0;
    sub_1B7801B18();
    v24 = swift_allocError();
    sub_1B73C3F68(&qword_1EB993340, &qword_1EB993330);
    sub_1B7801AD8();
    v62 = v24;
    swift_willThrow();
    (*(v19 + 8))(v21, v9);
    goto LABEL_6;
  }

  LOBYTE(v65) = 1;
  v23 = v9;
  *v16 = sub_1B7801DF8();
  v16[1] = v26;
  v54 = v26;
  LOBYTE(v65) = 2;
  v27 = 0;
  v16[2] = sub_1B7801DF8();
  v16[3] = v28;
  LOBYTE(v65) = 3;
  v29 = sub_1B7801D78();
  v62 = 0;
  v16[4] = v29;
  v16[5] = v30;
  v50 = v30;
  type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.DecodingConfiguration();
  v31 = swift_allocObject();
  v51 = v21;
  *(v31 + 16) = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993348);
  v64 = 4;
  v52 = v31;
  v63 = v31;
  sub_1B73C3FE0();
  v32 = v51;
  v33 = v62;
  sub_1B7801D48();
  v62 = v33;
  if (v33)
  {
    (*(v22 + 8))(v32, v23);

    v34 = 0;
    v35 = 0;
    v36 = 0;
    v53 = 0;
LABEL_19:
    __swift_destroy_boxed_opaque_existential_1(v60);

    if (!v27)
    {
    }

    if (v34)
    {
    }

    if (v35)
    {
    }

    if (v36)
    {
      (*(v20 + 8))(v16 + *(v12 + 40), v5);
    }

    return sub_1B7205418(v16 + v61, &qword_1EB98EBD0);
  }

  v49 = 0;
  v37 = v65;
  v38 = v23;
  if (!v65)
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v16[6] = v37;
  type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment.DecodingConfiguration();
  v39 = swift_allocObject();
  *(v39 + 16) = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993360);
  v64 = 5;
  v63 = v39;
  sub_1B73C40B8();
  v40 = v62;
  sub_1B7801D48();
  if (v40)
  {
    v62 = v40;
    (*(v22 + 8))(v32, v38);

    v35 = 0;
    v36 = 0;
    v53 = 0;
    v34 = 1;
LABEL_18:
    v27 = v49;
    goto LABEL_19;
  }

  v48[1] = v39;
  v41 = v65;
  if (!v65)
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v16[7] = v41;
  LOBYTE(v65) = 6;
  v42 = sub_1B7801D78();
  v62 = 0;
  v16[8] = v42;
  v16[9] = v43;
  v53 = v43;
  LOBYTE(v65) = 7;
  v44 = sub_1B73C3B80(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v45 = v55;
  v48[0] = v44;
  v46 = v62;
  sub_1B7801E48();
  v62 = v46;
  if (v46)
  {
    (*(v22 + 8))(v32, v38);

    v36 = 0;
    v34 = 1;
    v35 = 1;
    goto LABEL_18;
  }

  (*(v20 + 32))(v16 + *(v12 + 40), v45, v5);
  LOBYTE(v65) = 8;
  v47 = v62;
  sub_1B7801DB8();
  v62 = v47;
  if (v47)
  {
    (*(v22 + 8))(v32, v38);

    v34 = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_18;
  }

  (*(v22 + 8))(v32, v38);

  sub_1B7213740(v57, v16 + v61, &qword_1EB98EBD0);
  sub_1B73C3650(v16, v56, type metadata accessor for RawApplePayMerchantTokenUsageInformation);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_1B73C3964(v16, type metadata accessor for RawApplePayMerchantTokenUsageInformation);
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV11PastPaymentV11SummaryItemV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v18 = *(a1 + 1);
  v19[0] = v6;
  *&v19[1] = a1[6];
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v20 = *(a2 + 1);
  v21[0] = v9;
  *&v21[1] = a2[6];
  if (v4 == v7 && v5 == v8 || (v10 = sub_1B78020F8(), result = 0, (v10 & 1) != 0))
  {
    v12 = LODWORD(v19[0]);
    v13 = LODWORD(v21[0]);
    v14 = v18;
    v15 = v20;
    sub_1B7215720(&v18, v17);
    sub_1B7215720(&v20, v17);
    if (MEMORY[0x1B8CA5970](v14, *(&v14 + 1), v12, v15, *(&v15 + 1), v13))
    {
      if (*(v19 + 8) == *(v21 + 8))
      {
        sub_1B721722C(&v20);
        sub_1B721722C(&v18);
        return 1;
      }

      v16 = sub_1B78020F8();
      sub_1B721722C(&v20);
      sub_1B721722C(&v18);
      if (v16)
      {
        return 1;
      }
    }

    else
    {
      sub_1B721722C(&v20);
      sub_1B721722C(&v18);
    }

    return 0;
  }

  return result;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV11PastPaymentV8LineItemV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 3);
  v22 = *(a1 + 2);
  v23[0] = v8;
  *&v23[1] = a1[8];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  *&v25[1] = a2[8];
  v24 = v13;
  v25[0] = v14;
  if ((v4 != v9 || v5 != v10) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v11 || (v6 != v12 || v7 != v11) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v15 = LODWORD(v23[0]);
  v16 = LODWORD(v25[0]);
  v17 = v22;
  v18 = v24;
  sub_1B7215720(&v22, v21);
  sub_1B7215720(&v24, v21);
  if (MEMORY[0x1B8CA5970](v17, *(&v17 + 1), v15, v18, *(&v18 + 1), v16))
  {
    if (*(v23 + 8) == *(v25 + 8))
    {
      sub_1B721722C(&v24);
      sub_1B721722C(&v22);
      return 1;
    }

    v20 = sub_1B78020F8();
    sub_1B721722C(&v24);
    sub_1B721722C(&v22);
    if (v20)
    {
      return 1;
    }
  }

  else
  {
    sub_1B721722C(&v24);
    sub_1B721722C(&v22);
  }

  return 0;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV11PastPaymentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_1B78020F8()) && (sub_1B731CBA0(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (sub_1B731CDE0(*(a1 + 24), *(a2 + 24)))
  {
    v5 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17[0] = v5;
    *&v17[1] = *(a1 + 64);
    v6 = *(a2 + 48);
    v18 = *(a2 + 32);
    v19[0] = v6;
    *&v19[1] = *(a2 + 64);
    v7 = LODWORD(v17[0]);
    v8 = v6;
    v9 = v16;
    v10 = v18;
    sub_1B7215720(&v16, v15);
    sub_1B7215720(&v18, v15);
    if (MEMORY[0x1B8CA5970](v9, *(&v9 + 1), v7, v10, *(&v10 + 1), v8))
    {
      if (*(v17 + 8) == *(v19 + 8))
      {
        sub_1B721722C(&v18);
        sub_1B721722C(&v16);
LABEL_15:
        v14 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0);
        v11 = MEMORY[0x1B8CA2F10](a1 + *(v14 + 32), a2 + *(v14 + 32));
        return v11 & 1;
      }

      v13 = sub_1B78020F8();
      sub_1B721722C(&v18);
      sub_1B721722C(&v16);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1B721722C(&v18);
      sub_1B721722C(&v16);
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV23RecurringPaymentDetailsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((sub_1B72BF4EC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v14 = v6;
  sub_1B72C60D4(v2);
  sub_1B72C60D4(v7);
  v12 = sub_1B72BF4D4(v2, v3, v7, v8);
  sub_1B71E4DF0(v7, v8);
  sub_1B71E4DF0(v2, v3);
  result = 0;
  if ((v12 & 1) != 0 && v4 == v9)
  {
    if (sub_1B731CE0C(v5, v10))
    {
      return v14 ^ v11 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV16ScheduledPaymentV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[4];
  v5 = a2[4];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v7 = a1[2];
  v6 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  if (!v5)
  {
    v20 = *a1;
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v4;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v20);
LABEL_10:

    goto LABEL_13;
  }

  v19 = a1[3];
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v18 = a2[3];
  swift_bridgeObjectRetain_n();

  if (MEMORY[0x1B8CA5970](v9, v8, v7, v11, v10, v12))
  {
    v13 = v19;
    if (v19 == v18 && v4 == v5)
    {

LABEL_16:
      v20 = v9;
      v21 = v8;
      v22 = v7;
      v23 = v19;
      v24 = v4;
      sub_1B721722C(&v20);
LABEL_17:

      v16 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment(0);
      v14 = MEMORY[0x1B8CA2F10](a1 + *(v16 + 20), a2 + *(v16 + 20));
      return v14 & 1;
    }

    v15 = sub_1B78020F8();

    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v13 = v19;
  }

  v20 = v9;
  v21 = v8;
  v22 = v7;
  v23 = v13;
  v24 = v4;
  sub_1B721722C(&v20);
LABEL_13:

  v14 = 0;
  return v14 & 1;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV29AutomaticReloadPaymentDetailsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v26 = a1[8];
  v27 = a1[9];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v25 = a2[9];
  if (!v6)
  {
    if (!v11)
    {
      v19 = a2[5];
      v20 = a2[6];
      v21 = a2[7];
      v22 = a1[5];
      v18 = a2[8];
      v23 = a1[6];
      v24 = a1[7];
      goto LABEL_16;
    }

LABEL_10:
    v28 = v3;
    v29 = v2;
    v30 = v5;
    v31 = v4;
    v32 = v6;
    v33 = v8;
    v34 = v7;
    v35 = v10;
    v36 = v9;
    v37 = v11;
LABEL_26:
    sub_1B7205418(&v28, &qword_1EB98FAB8);
    return 0;
  }

  if (!v11)
  {
    v28 = *a1;
    v29 = v2;
    v30 = v5;
    v31 = v4;
    v32 = v6;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v28);
    goto LABEL_10;
  }

  v19 = a2[5];
  v20 = a2[6];
  v21 = a2[7];
  v22 = a1[5];
  v18 = a2[8];
  v23 = a1[6];
  v24 = a1[7];
  swift_bridgeObjectRetain_n();

  if ((MEMORY[0x1B8CA5970](v3, v2, v5, v8, v7, v10) & 1) == 0)
  {

    goto LABEL_12;
  }

  if (v4 != v9 || v6 != v11)
  {
    v12 = sub_1B78020F8();

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_12:
    v28 = v3;
    v29 = v2;
    v30 = v5;
LABEL_29:
    v31 = v4;
    v32 = v6;
    sub_1B721722C(&v28);

    return 0;
  }

LABEL_15:
  v28 = v3;
  v29 = v2;
  v30 = v5;
  v31 = v4;
  v32 = v6;
  sub_1B721722C(&v28);
LABEL_16:

  v4 = v26;
  v6 = v27;
  if (!v27)
  {
    if (!v25)
    {
      goto LABEL_33;
    }

    v14 = v23;
    v13 = v24;
    v15 = v22;
    goto LABEL_25;
  }

  if (!v25)
  {
    v15 = v22;
    v14 = v23;
    v28 = v22;
    v29 = v23;
    v13 = v24;
    v30 = v24;
    v31 = v26;
    v32 = v27;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v28);
LABEL_25:
    v28 = v15;
    v29 = v14;
    v30 = v13;
    v31 = v26;
    v32 = v27;
    v33 = v19;
    v34 = v20;
    v35 = v21;
    v36 = v18;
    v37 = v25;
    goto LABEL_26;
  }

  swift_bridgeObjectRetain_n();

  if ((MEMORY[0x1B8CA5970](v22, v23, v24, v19, v20, v21) & 1) == 0)
  {

LABEL_28:
    v28 = v22;
    v29 = v23;
    v30 = v24;
    goto LABEL_29;
  }

  if (v26 != v18 || v27 != v25)
  {
    v17 = sub_1B78020F8();

    if (v17)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_32:
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v26;
  v32 = v27;
  sub_1B721722C(&v28);
LABEL_33:

  return 1;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[5];
  v15 = a2[5];
  if (v14)
  {
    if (!v15 || (a1[4] != a2[4] || v14 != v15) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_1B731C400(a1[6], a2[6]) & 1) == 0 || (sub_1B731C674(a1[7], a2[7]) & 1) == 0)
  {
    return 0;
  }

  v16 = a1[9];
  v17 = a2[9];
  if (v16)
  {
    if (!v17 || (a1[8] != a2[8] || v16 != v17) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  if (sub_1B77FF918())
  {
    v19 = *(v18 + 44);
    v20 = *(v11 + 48);
    sub_1B7205588(a1 + v19, v13, &qword_1EB98EBD0);
    sub_1B7205588(a2 + v19, &v13[v20], &qword_1EB98EBD0);
    v21 = *(v5 + 48);
    if (v21(v13, 1, v4) == 1)
    {
      if (v21(&v13[v20], 1, v4) == 1)
      {
        sub_1B7205418(v13, &qword_1EB98EBD0);
        return 1;
      }

      goto LABEL_29;
    }

    sub_1B7205588(v13, v10, &qword_1EB98EBD0);
    if (v21(&v13[v20], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_29:
      sub_1B7205418(v13, &qword_1EB98FCE0);
      return 0;
    }

    (*(v5 + 32))(v7, &v13[v20], v4);
    sub_1B73C3B80(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
    v23 = sub_1B7800828();
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v10, v4);
    sub_1B7205418(v13, &qword_1EB98EBD0);
    if (v23)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV15UpcomingPaymentV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_1B78020F8() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_16:
  v8 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment(0) + 28);

  return _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV15UpcomingPaymentV0K7DetailsO2eeoiySbAG_AGtFZ_0(a1 + v8, a2 + v8);
}

BOOL _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV22DeferredPaymentDetailsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1B77FED28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993510);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v36 - v13;
  v14 = a1[4];
  v15 = a2[4];
  if (!v14)
  {
    if (!v15)
    {
      v24 = v12;
      v42 = v10;
      v39 = v7;

      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v40 = v12;
  v42 = v10;
  v17 = a1[2];
  v16 = a1[3];
  v18 = *a1;
  v19 = a1[1];
  if (!v15)
  {
    v45 = *a1;
    v46 = v19;
    v47 = v17;
    v48 = v16;
    v49 = v14;
    swift_bridgeObjectRetain_n();
    sub_1B721722C(&v45);
LABEL_10:

LABEL_13:

    return 0;
  }

  v43 = a1[3];
  v38 = v4;
  v39 = v7;
  v37 = v5;
  v21 = *a2;
  v20 = a2[1];
  v22 = a2[2];
  v36 = a2[3];
  swift_bridgeObjectRetain_n();

  v41 = v17;
  if ((MEMORY[0x1B8CA5970](v18, v19, v17, v21, v20, v22) & 1) == 0)
  {

LABEL_12:
    v45 = v18;
    v46 = v19;
    v47 = v41;
    v48 = v43;
    v49 = v14;
    sub_1B721722C(&v45);
    goto LABEL_13;
  }

  if (v43 != v36 || v14 != v15)
  {
    v25 = sub_1B78020F8();

    v5 = v37;
    v4 = v38;
    if (v25)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = v37;
  v4 = v38;
LABEL_16:
  v45 = v18;
  v46 = v19;
  v47 = v41;
  v48 = v43;
  v49 = v14;
  sub_1B721722C(&v45);

  v24 = v40;
LABEL_17:
  v26 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0) + 20);
  v27 = *(v24 + 48);
  v28 = a1 + v26;
  v29 = v44;
  sub_1B7205588(v28, v44, &qword_1EB991538);
  sub_1B7205588(a2 + v26, v29 + v27, &qword_1EB991538);
  v30 = *(v5 + 48);
  if (v30(v29, 1, v4) != 1)
  {
    v31 = v42;
    sub_1B7205588(v29, v42, &qword_1EB991538);
    if (v30(v29 + v27, 1, v4) != 1)
    {
      v32 = v29 + v27;
      v33 = v39;
      (*(v5 + 32))(v39, v32, v4);
      sub_1B73C3B80(&qword_1EB993518, MEMORY[0x1E6968278]);
      v34 = sub_1B7800828();
      v35 = *(v5 + 8);
      v35(v33, v4);
      v35(v31, v4);
      sub_1B7205418(v29, &qword_1EB991538);
      return (v34 & 1) != 0;
    }

    (*(v5 + 8))(v31, v4);
LABEL_22:
    sub_1B7205418(v29, &qword_1EB993510);
    return 0;
  }

  if (v30(v29 + v27, 1, v4) != 1)
  {
    goto LABEL_22;
  }

  sub_1B7205418(v29, &qword_1EB991538);
  return 1;
}

uint64_t _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV15UpcomingPaymentV0K7DetailsO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v50 - v10);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v50 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993508);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v50 - v19;
  v21 = &v50 + *(v18 + 56) - v19;
  sub_1B73C3650(a1, &v50 - v19, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
  sub_1B73C3650(v53, v21, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B73C3650(v20, v11, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
      v28 = v11[3];
      v63 = v11[2];
      v64 = v28;
      v65 = v11[4];
      v29 = v11[1];
      v61 = *v11;
      v62 = v29;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1B73C3A18(&v61);
        goto LABEL_15;
      }

      v30 = *(v21 + 1);
      v31 = *(v21 + 3);
      v58 = *(v21 + 2);
      v59 = v31;
      v32 = *(v21 + 3);
      v60 = *(v21 + 4);
      v33 = *(v21 + 1);
      v56 = *v21;
      v57 = v33;
      v34 = v11[3];
      v55[2] = v11[2];
      v55[3] = v34;
      v55[4] = v11[4];
      v35 = v11[1];
      v55[0] = *v11;
      v55[1] = v35;
      v54[2] = v58;
      v54[3] = v32;
      v54[4] = *(v21 + 4);
      v54[0] = v56;
      v54[1] = v30;
      v36 = _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV29AutomaticReloadPaymentDetailsV2eeoiySbAE_AEtFZ_0(v55, v54);
      sub_1B73C3A18(&v56);
      sub_1B73C3A18(&v61);
    }

    else
    {
      sub_1B73C3650(v20, v8, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
      v38 = *v8;
      v39 = v8[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_1B7282B50(v38, v39);
        goto LABEL_15;
      }

      v40 = *v21;
      v41 = *(v21 + 1);
      v36 = sub_1B72BF504(v38, v39, *v21, v41);
      sub_1B7282B50(v40, v41);
      sub_1B7282B50(v38, v39);
    }

LABEL_17:
    sub_1B73C3964(v20, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
    return v36 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B73C3650(v20, v14, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B73C3964(v14, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
      goto LABEL_15;
    }

    v37 = v52;
    sub_1B73C3C38(v21, v52, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
    v36 = _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV22DeferredPaymentDetailsV2eeoiySbAE_AEtFZ_0(v14, v37);
    sub_1B73C3964(v37, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
    sub_1B73C3964(v14, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
    goto LABEL_17;
  }

  sub_1B73C3650(v20, v16, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
  v24 = *v16;
  v23 = *(v16 + 1);
  v26 = *(v16 + 2);
  v25 = *(v16 + 3);
  v27 = *(v16 + 5);
  if (!swift_getEnumCaseMultiPayload())
  {
    v42 = v16[48];
    v43 = *(v16 + 16);
    v44 = *v21;
    v45 = *(v21 + 1);
    v46 = *(v21 + 2);
    v51 = *(v21 + 3);
    v52 = v46;
    v47 = *(v21 + 16);
    v53 = *(v21 + 5);
    v48 = v21[48];
    *&v61 = v24;
    *(&v61 + 1) = v23;
    *&v62 = v26;
    *(&v62 + 1) = v25;
    LOWORD(v63) = v43;
    *(&v63 + 1) = v27;
    LOBYTE(v64) = v42;
    *&v56 = v44;
    *(&v56 + 1) = v45;
    *&v57 = v46;
    *(&v57 + 1) = v51;
    LOWORD(v58) = v47;
    *(&v58 + 1) = v53;
    LOBYTE(v59) = v48;
    v36 = _s10FinanceKit40RawApplePayMerchantTokenUsageInformationV23RecurringPaymentDetailsV2eeoiySbAE_AEtFZ_0(&v61, &v56);
    sub_1B71E4E04(v44, v45);
    sub_1B71E4DF0(v52, v51);

    sub_1B71E4E04(v24, v23);
    sub_1B71E4DF0(v26, v25);

    goto LABEL_17;
  }

  sub_1B71E4E04(v24, v23);
  sub_1B71E4DF0(v26, v25);

LABEL_15:
  sub_1B7205418(v20, &qword_1EB993508);
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1B73C3558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B73C35FC()
{
  result = qword_1EB993208;
  if (!qword_1EB993208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993208);
  }

  return result;
}

uint64_t sub_1B73C3650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B73C36B8()
{
  result = qword_1EB993218;
  if (!qword_1EB993218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993218);
  }

  return result;
}

unint64_t sub_1B73C370C()
{
  result = qword_1EB993220;
  if (!qword_1EB993220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993220);
  }

  return result;
}

unint64_t sub_1B73C3760()
{
  result = qword_1EB993238;
  if (!qword_1EB993238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993238);
  }

  return result;
}

unint64_t sub_1B73C37B4()
{
  result = qword_1EB993240;
  if (!qword_1EB993240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993240);
  }

  return result;
}

unint64_t sub_1B73C3808()
{
  result = qword_1EB993248;
  if (!qword_1EB993248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993248);
  }

  return result;
}

unint64_t sub_1B73C385C()
{
  result = qword_1EB993258;
  if (!qword_1EB993258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993250);
    sub_1B73C3B80(&qword_1EB993260, type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993258);
  }

  return result;
}

unint64_t sub_1B73C3910()
{
  result = qword_1EB993270;
  if (!qword_1EB993270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993270);
  }

  return result;
}

uint64_t sub_1B73C3964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B73C39C4()
{
  result = qword_1EB993280;
  if (!qword_1EB993280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993280);
  }

  return result;
}

uint64_t sub_1B73C3A18(uint64_t a1)
{

  return a1;
}

unint64_t sub_1B73C3A84()
{
  result = qword_1EB993298;
  if (!qword_1EB993298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993298);
  }

  return result;
}

unint64_t sub_1B73C3AD8()
{
  result = qword_1EB9932A8;
  if (!qword_1EB9932A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9932A8);
  }

  return result;
}

unint64_t sub_1B73C3B2C()
{
  result = qword_1EB9932B0;
  if (!qword_1EB9932B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9932B0);
  }

  return result;
}

uint64_t sub_1B73C3B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B73C3BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73C3C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B73C3CA0()
{
  result = qword_1EB9932C0;
  if (!qword_1EB9932C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9932C0);
  }

  return result;
}

unint64_t sub_1B73C3CF4()
{
  result = qword_1EB9932D0;
  if (!qword_1EB9932D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9932D0);
  }

  return result;
}

unint64_t sub_1B73C3D48()
{
  result = qword_1EB9932E0;
  if (!qword_1EB9932E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9932E0);
  }

  return result;
}

unint64_t sub_1B73C3D9C()
{
  result = qword_1EB9932F0;
  if (!qword_1EB9932F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9932F0);
  }

  return result;
}

unint64_t sub_1B73C3DF0()
{
  result = qword_1EB993310;
  if (!qword_1EB993310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993310);
  }

  return result;
}

uint64_t sub_1B73C3E44(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B73C3EC0()
{
  result = qword_1EB993328;
  if (!qword_1EB993328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993328);
  }

  return result;
}

unint64_t sub_1B73C3F14()
{
  result = qword_1EB993338;
  if (!qword_1EB993338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993338);
  }

  return result;
}

uint64_t sub_1B73C3F68(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B73C3FE0()
{
  result = qword_1EB993350;
  if (!qword_1EB993350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993348);
    sub_1B73C3B80(&qword_1EB993358, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993350);
  }

  return result;
}

unint64_t sub_1B73C40B8()
{
  result = qword_1EB993368;
  if (!qword_1EB993368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993360);
    sub_1B73C3B80(&qword_1EB993370, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993368);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

void sub_1B73C41E0()
{
  sub_1B73C4DF8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B73C436C(319, &qword_1EB993388, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B73C436C(319, &qword_1EB993390, type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B77FF988();
        if (v3 <= 0x3F)
        {
          sub_1B73C436C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B73C436C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B73C43F8()
{
  sub_1B73C4DF8(319, qword_1EDAFCF10, &type metadata for CurrencyAmount, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B77FED28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B73C44A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B73C44E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B73C4548(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B73C459C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B73C461C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 18))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 6;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B73C4678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 16) = 0;
    *result = a2 - 2147483642;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1B73C46DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B73C4734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void sub_1B73C47BC()
{
  sub_1B73C4DF8(319, qword_1EDAFCF10, &type metadata for CurrencyAmount, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B73C436C(319, &qword_1EB9933B8, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t destroy for RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails()
{
}

uint64_t initializeWithCopy for RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;

  return a1;
}

uint64_t assignWithCopy for RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 54) = *(a2 + 54);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithTake for RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for RawApplePayMerchantTokenUsageInformation.AutomaticReloadPaymentDetails(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_1B73C4B94()
{
  sub_1B73C4DF8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B73C4C54()
{
  result = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B73C4CFC()
{
  sub_1B73C4DF8(319, &qword_1EB9933F0, &type metadata for RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B73C4DF8(319, &qword_1EB9933F8, &type metadata for RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B77FED28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B73C4DF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t destroy for RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem()
{
}

uint64_t initializeWithCopy for RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  return a1;
}

uint64_t assignWithCopy for RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for RawApplePayMerchantTokenUsageInformation.PastPayment.LineItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem()
{
}

uint64_t initializeWithCopy for RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  return a1;
}

uint64_t assignWithCopy for RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

unint64_t sub_1B73C5480()
{
  result = qword_1EB993400;
  if (!qword_1EB993400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993400);
  }

  return result;
}

unint64_t sub_1B73C54D8()
{
  result = qword_1EB993408;
  if (!qword_1EB993408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993408);
  }

  return result;
}

unint64_t sub_1B73C5530()
{
  result = qword_1EB993410;
  if (!qword_1EB993410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993410);
  }

  return result;
}

unint64_t sub_1B73C5588()
{
  result = qword_1EB993418;
  if (!qword_1EB993418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993418);
  }

  return result;
}

unint64_t sub_1B73C55E0()
{
  result = qword_1EB993420;
  if (!qword_1EB993420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993420);
  }

  return result;
}

unint64_t sub_1B73C5638()
{
  result = qword_1EB993428;
  if (!qword_1EB993428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993428);
  }

  return result;
}

unint64_t sub_1B73C5690()
{
  result = qword_1EB993430;
  if (!qword_1EB993430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993430);
  }

  return result;
}

unint64_t sub_1B73C56E8()
{
  result = qword_1EB993438;
  if (!qword_1EB993438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993438);
  }

  return result;
}

unint64_t sub_1B73C5740()
{
  result = qword_1EB993440;
  if (!qword_1EB993440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993440);
  }

  return result;
}

unint64_t sub_1B73C5798()
{
  result = qword_1EB993448;
  if (!qword_1EB993448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993448);
  }

  return result;
}

unint64_t sub_1B73C57F0()
{
  result = qword_1EB993450;
  if (!qword_1EB993450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993450);
  }

  return result;
}

unint64_t sub_1B73C5848()
{
  result = qword_1EB993458;
  if (!qword_1EB993458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993458);
  }

  return result;
}

unint64_t sub_1B73C58A0()
{
  result = qword_1EB993460;
  if (!qword_1EB993460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993460);
  }

  return result;
}

unint64_t sub_1B73C58F8()
{
  result = qword_1EB993468;
  if (!qword_1EB993468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993468);
  }

  return result;
}

unint64_t sub_1B73C5950()
{
  result = qword_1EB993470;
  if (!qword_1EB993470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993470);
  }

  return result;
}

unint64_t sub_1B73C59A8()
{
  result = qword_1EB993478;
  if (!qword_1EB993478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993478);
  }

  return result;
}

unint64_t sub_1B73C5A00()
{
  result = qword_1EB993480;
  if (!qword_1EB993480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993480);
  }

  return result;
}

unint64_t sub_1B73C5A58()
{
  result = qword_1EB993488;
  if (!qword_1EB993488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993488);
  }

  return result;
}

unint64_t sub_1B73C5AB0()
{
  result = qword_1EB993490;
  if (!qword_1EB993490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993490);
  }

  return result;
}

unint64_t sub_1B73C5B08()
{
  result = qword_1EB993498;
  if (!qword_1EB993498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993498);
  }

  return result;
}

unint64_t sub_1B73C5B60()
{
  result = qword_1EB9934A0;
  if (!qword_1EB9934A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934A0);
  }

  return result;
}

unint64_t sub_1B73C5BB8()
{
  result = qword_1EB9934A8;
  if (!qword_1EB9934A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934A8);
  }

  return result;
}

unint64_t sub_1B73C5C10()
{
  result = qword_1EB9934B0;
  if (!qword_1EB9934B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934B0);
  }

  return result;
}

unint64_t sub_1B73C5C68()
{
  result = qword_1EB9934B8;
  if (!qword_1EB9934B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934B8);
  }

  return result;
}

unint64_t sub_1B73C5CC0()
{
  result = qword_1EB9934C0;
  if (!qword_1EB9934C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934C0);
  }

  return result;
}

unint64_t sub_1B73C5D18()
{
  result = qword_1EB9934C8;
  if (!qword_1EB9934C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934C8);
  }

  return result;
}

unint64_t sub_1B73C5D70()
{
  result = qword_1EB9934D0;
  if (!qword_1EB9934D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934D0);
  }

  return result;
}

unint64_t sub_1B73C5DC8()
{
  result = qword_1EB9934D8;
  if (!qword_1EB9934D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934D8);
  }

  return result;
}

unint64_t sub_1B73C5E20()
{
  result = qword_1EB9934E0;
  if (!qword_1EB9934E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934E0);
  }

  return result;
}

unint64_t sub_1B73C5E78()
{
  result = qword_1EB9934E8;
  if (!qword_1EB9934E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934E8);
  }

  return result;
}

uint64_t sub_1B73C5ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000)
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

uint64_t sub_1B73C5FE4()
{
  v0 = sub_1B7801D18();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B73C6030()
{
  v0 = sub_1B7801D18();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B73C607C()
{
  v0 = sub_1B7801D18();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B73C60C8()
{
  v0 = sub_1B7801D18();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B73C6114()
{
  result = qword_1EB9934F0;
  if (!qword_1EB9934F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934F0);
  }

  return result;
}

unint64_t sub_1B73C6168()
{
  result = qword_1EB9934F8;
  if (!qword_1EB9934F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9934F8);
  }

  return result;
}

unint64_t sub_1B73C61BC()
{
  result = qword_1EB993500;
  if (!qword_1EB993500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993500);
  }

  return result;
}

unint64_t sub_1B73C6280(char a1)
{
  result = 0xD000000000000033;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000033;
      break;
    case 2:
    case 4:
      result = 0xD000000000000015;
      break;
    case 3:
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD00000000000002BLL;
      break;
    case 13:
      result = 0xD000000000000030;
      break;
    case 14:
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 15:
    case 17:
      result = 0xD00000000000001DLL;
      break;
    case 18:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B73C6438()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B73C648C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73D1B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73C64B4(uint64_t a1)
{
  v2 = sub_1B73CF6A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C64F0(uint64_t a1)
{
  v2 = sub_1B73CF6A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B73C652C()
{
  v1 = 0x6464416C69616D65;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B73C65B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73D1CA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73C65D8(uint64_t a1)
{
  v2 = sub_1B73CF7A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6614(uint64_t a1)
{
  v2 = sub_1B73CF7A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B73C6650()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B73C6688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001B7873C00 == a2;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7876A70 == a2)
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

uint64_t sub_1B73C676C(uint64_t a1)
{
  v2 = sub_1B73CF654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C67A8(uint64_t a1)
{
  v2 = sub_1B73CF654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C67EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73D1E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73C6820(uint64_t a1)
{
  v2 = sub_1B73CF5AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C685C(uint64_t a1)
{
  v2 = sub_1B73CF5AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6898(uint64_t a1)
{
  v2 = sub_1B73CFBE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C68D4(uint64_t a1)
{
  v2 = sub_1B73CFBE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6910(uint64_t a1)
{
  v2 = sub_1B73CFB94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C694C(uint64_t a1)
{
  v2 = sub_1B73CFB94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6988(uint64_t a1)
{
  v2 = sub_1B73CFA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C69C4(uint64_t a1)
{
  v2 = sub_1B73CFA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6A00()
{
  v1 = 0xD000000000000012;
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
    return 0x496567617373656DLL;
  }
}

uint64_t sub_1B73C6A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73D23E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73C6A94(uint64_t a1)
{
  v2 = sub_1B73CF948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6AD0(uint64_t a1)
{
  v2 = sub_1B73CF948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B73C6B0C()
{
  v1 = 0x64696F7166;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1B73C6B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73D250C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73C6B90(uint64_t a1)
{
  v2 = sub_1B73CFA44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6BCC(uint64_t a1)
{
  v2 = sub_1B73CFA44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6C08(uint64_t a1)
{
  v2 = sub_1B73CF99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6C44(uint64_t a1)
{
  v2 = sub_1B73CF99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6C80(uint64_t a1)
{
  v2 = sub_1B73CF9F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6CBC(uint64_t a1)
{
  v2 = sub_1B73CF9F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6CF8(uint64_t a1)
{
  v2 = sub_1B73CFAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6D34(uint64_t a1)
{
  v2 = sub_1B73CFAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001B787DD20 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7877750 == a2)
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

uint64_t sub_1B73C6E54(uint64_t a1)
{
  v2 = sub_1B73CFB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6E90(uint64_t a1)
{
  v2 = sub_1B73CFB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6ECC(uint64_t a1)
{
  v2 = sub_1B73CF600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6F08(uint64_t a1)
{
  v2 = sub_1B73CF600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C6F44(uint64_t a1)
{
  v2 = sub_1B73CF750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C6F80(uint64_t a1)
{
  v2 = sub_1B73CF750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B73C6FBC()
{
  v1 = 0x6464416C69616D65;
  v2 = 0x7373656E69737562;
  if (*v0 != 2)
  {
    v2 = 0x49796E61706D6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1B73C704C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73D2630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73C7074(uint64_t a1)
{
  v2 = sub_1B73CF7F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C70B0(uint64_t a1)
{
  v2 = sub_1B73CF7F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C70EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7873F00 == a2)
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

uint64_t sub_1B73C71D4(uint64_t a1)
{
  v2 = sub_1B73CF6FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C7210(uint64_t a1)
{
  v2 = sub_1B73CF6FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B73C724C()
{
  v1 = 0x6464416C69616D65;
  v2 = 0xD000000000000018;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1B73C72D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73D27B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73C72FC(uint64_t a1)
{
  v2 = sub_1B73CF84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C7338(uint64_t a1)
{
  v2 = sub_1B73CF84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C7388(uint64_t a1)
{
  v2 = sub_1B73CF8A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C73C4(uint64_t a1)
{
  v2 = sub_1B73CF8A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73C7400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000)
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

uint64_t sub_1B73C7484(uint64_t a1)
{
  v2 = sub_1B73CF8F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73C74C0(uint64_t a1)
{
  v2 = sub_1B73CF8F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderEvent.EventType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993520);
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v109 = &v62 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993528);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105[0] = &v62 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993530);
  v105[1] = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v62 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993538);
  v102[1] = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v62 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993540);
  v97[1] = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v62 - v8;
  v102[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993548);
  v101 = *(v102[0] - 8);
  MEMORY[0x1EEE9AC00](v102[0]);
  v99 = &v62 - v9;
  v97[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993550);
  v96 = *(v97[0] - 8);
  MEMORY[0x1EEE9AC00](v97[0]);
  v94 = &v62 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993558);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v62 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993560);
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v62 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993568);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v62 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993570);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v85 = &v62 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993578);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v62 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993580);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v62 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993588);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v62 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993590);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v62 - v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993598);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v62 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9935A0);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9935A8);
  v63 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9935B0);
  v62 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9935B8);
  v28 = *(v27 - 8);
  v121 = v27;
  v122 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v62 - v29;
  v31 = v1[1];
  v118 = *v1;
  v119 = v31;
  v32 = v1[3];
  v116 = v1[2];
  v117 = v32;
  v33 = v1[5];
  v114 = v1[4];
  v115 = v33;
  v34 = v1[7];
  v112 = v1[6];
  v113 = v34;
  v35 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73CF5AC();
  v120 = v30;
  sub_1B78023F8();
  switch(v35)
  {
    case 1:
      LOBYTE(v124) = 3;
      sub_1B73CFAEC();
      v36 = v67;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v69;
      v52 = v123;
      sub_1B7801F78();
      if (v52)
      {
        v41 = &v99;
        goto LABEL_41;
      }

      LOBYTE(v124) = 1;
      sub_1B7801F78();
      v61 = &v99;
      goto LABEL_53;
    case 2:
      LOBYTE(v124) = 4;
      sub_1B73CFA98();
      v36 = v70;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v72;
      v49 = v123;
      sub_1B7801F78();
      if (v49)
      {
        v41 = v102;
        goto LABEL_41;
      }

      LOBYTE(v124) = 1;
      sub_1B7801F78();
      v61 = v102;
      goto LABEL_53;
    case 3:
      LOBYTE(v124) = 5;
      sub_1B73CFA44();
      v36 = v74;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v78;
      v51 = v123;
      sub_1B7801F78();
      if (v51)
      {
        v41 = &v106;
        goto LABEL_41;
      }

      LOBYTE(v124) = 1;
      sub_1B7801F78();
      v124 = v114;
      v125[0] = v115;
      v125[1] = v112;
      v126 = v113;
      v127 = 2;
      sub_1B731BB9C();
      sub_1B7801FC8();
      v61 = &v106;
      goto LABEL_53;
    case 4:
      LOBYTE(v124) = 6;
      sub_1B73CF9F0();
      v36 = v73;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v76;
      v46 = v123;
      sub_1B7801F78();
      if (v46)
      {
        v41 = v105;
        goto LABEL_41;
      }

      LOBYTE(v124) = 1;
      sub_1B7801F78();
      v61 = v105;
      goto LABEL_53;
    case 5:
      LOBYTE(v124) = 7;
      sub_1B73CF99C();
      v36 = v79;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v81;
      v56 = v123;
      sub_1B7801F78();
      if (v56)
      {
        v41 = &v109;
        goto LABEL_41;
      }

      LOBYTE(v124) = 1;
      sub_1B7801F78();
      v61 = &v109;
      goto LABEL_53;
    case 6:
      LOBYTE(v124) = 8;
      sub_1B73CF948();
      v36 = v85;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v90;
      v58 = v123;
      sub_1B7801F78();
      if (!v58)
      {
        LOBYTE(v124) = 1;
        sub_1B7801F78();
        LOBYTE(v124) = 2;
        sub_1B7801F78();
        v61 = &v117;
        goto LABEL_53;
      }

      v41 = &v117;
      goto LABEL_41;
    case 7:
      LOBYTE(v124) = 9;
      sub_1B73CF8F4();
      v36 = v82;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      v39 = v84;
      sub_1B7801F78();
      v61 = &v112;
      goto LABEL_53;
    case 8:
      LOBYTE(v124) = 10;
      sub_1B73CF8A0();
      v36 = v86;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      v39 = v89;
      sub_1B7801F78();
      v61 = &v116;
      goto LABEL_53;
    case 9:
      LOBYTE(v124) = 11;
      sub_1B73CF84C();
      v36 = v91;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v93;
      v48 = v123;
      sub_1B7801F78();
      if (!v48)
      {
        LOBYTE(v124) = 1;
        sub_1B7801F78();
        LOBYTE(v124) = 2;
        sub_1B7801F78();
        LOBYTE(v124) = 3;
        sub_1B7801F78();
        v61 = &v121;
        goto LABEL_53;
      }

      v41 = &v121;
      goto LABEL_41;
    case 10:
      LOBYTE(v124) = 12;
      sub_1B73CF7F8();
      v36 = v94;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v97[0];
      v59 = v123;
      sub_1B7801F78();
      if (!v59)
      {
        LOBYTE(v124) = 1;
        sub_1B7801F78();
        LOBYTE(v124) = 2;
        sub_1B7801F78();
        LOBYTE(v124) = 3;
        sub_1B7801F78();
        v61 = v125;
        goto LABEL_53;
      }

      v41 = v125;
      goto LABEL_41;
    case 11:
      LOBYTE(v124) = 13;
      sub_1B73CF7A4();
      v36 = v99;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v102[0];
      v45 = v123;
      sub_1B7801F78();
      if (!v45)
      {
        LOBYTE(v124) = 1;
        sub_1B7801F78();
        LOBYTE(v124) = 2;
        sub_1B7801F78();
        LOBYTE(v124) = 3;
        sub_1B7801F78();
        v61 = &v128;
        goto LABEL_53;
      }

      v41 = &v128;
      goto LABEL_41;
    case 12:
      LOBYTE(v124) = 14;
      sub_1B73CF750();
      v36 = v95;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v98;
      v47 = v123;
      sub_1B7801F78();
      if (v47)
      {
        v41 = &v126;
        goto LABEL_41;
      }

      LOBYTE(v124) = 1;
      sub_1B7801F78();
      v61 = &v126;
      goto LABEL_53;
    case 13:
      LOBYTE(v124) = 15;
      sub_1B73CF6FC();
      v36 = v100;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v103;
      v57 = v123;
      sub_1B7801F78();
      if (v57)
      {
        v41 = &v129;
        goto LABEL_41;
      }

      LOBYTE(v124) = 1;
      sub_1B7801F78();
      v61 = &v129;
      goto LABEL_53;
    case 14:
      LOBYTE(v124) = 16;
      sub_1B73CF6A8();
      v36 = v104;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v107;
      v44 = v123;
      sub_1B7801F78();
      if (!v44)
      {
        LOBYTE(v124) = 1;
        sub_1B7801F78();
        LOBYTE(v124) = 2;
        sub_1B7801F78();
        v61 = &v130;
        goto LABEL_53;
      }

      v41 = &v130;
      goto LABEL_41;
    case 15:
      LOBYTE(v124) = 17;
      sub_1B73CF654();
      v36 = v105[0];
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v108;
      v50 = v123;
      sub_1B7801F78();
      if (v50)
      {
        v41 = &v131;
        goto LABEL_41;
      }

      LOBYTE(v124) = 1;
      sub_1B7801F78();
      v61 = &v131;
      goto LABEL_53;
    case 16:
      LOBYTE(v124) = 18;
      sub_1B73CF600();
      v36 = v109;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v111;
      v42 = v123;
      sub_1B7801F78();
      if (!v42)
      {
        LOBYTE(v124) = 1;
        sub_1B7801F78();
      }

      v43 = v110;
      goto LABEL_54;
    case 17:
      v53 = v120;
      if (v116 | v119 | v118 | v117 | v114 | v115 | v112 | v113)
      {
        LOBYTE(v124) = 1;
        sub_1B73CFB94();
        v54 = v121;
        sub_1B7801ED8();
        (*(v63 + 8))(v23, v21);
        return (*(v122 + 8))(v53, v54);
      }

      else
      {
        LOBYTE(v124) = 0;
        sub_1B73CFBE8();
        v60 = v121;
        sub_1B7801ED8();
        (*(v62 + 8))(v26, v24);
        return (*(v122 + 8))(v53, v60);
      }

    default:
      LOBYTE(v124) = 2;
      sub_1B73CFB40();
      v36 = v64;
      v38 = v120;
      v37 = v121;
      sub_1B7801ED8();
      LOBYTE(v124) = 0;
      v39 = v66;
      v40 = v123;
      sub_1B7801F78();
      if (v40)
      {
        v41 = v97;
LABEL_41:
        v43 = *(v41 - 32);
      }

      else
      {
        LOBYTE(v124) = 1;
        sub_1B7801F78();
        v61 = v97;
LABEL_53:
        v43 = *(v61 - 32);
      }

LABEL_54:
      (*(v43 + 8))(v36, v39);
      return (*(v122 + 8))(v38, v37);
  }
}

uint64_t OrderEvent.EventType.hash(into:)()
{
  switch(*(v0 + 64))
  {
    case 1:
      v1 = 3;
      goto LABEL_17;
    case 2:
      v1 = 4;
      goto LABEL_17;
    case 3:
      v3 = 5;
      goto LABEL_21;
    case 4:
      v1 = 6;
      goto LABEL_17;
    case 5:
      v1 = 7;
      goto LABEL_17;
    case 6:
      v2 = 8;
      goto LABEL_19;
    case 7:
      v4 = 9;
      goto LABEL_23;
    case 8:
      v4 = 10;
LABEL_23:
      MEMORY[0x1B8CA6620](v4);
      goto LABEL_24;
    case 9:
      v3 = 11;
      goto LABEL_21;
    case 0xA:
      v3 = 12;
      goto LABEL_21;
    case 0xB:
      v3 = 13;
LABEL_21:
      MEMORY[0x1B8CA6620](v3);
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
      goto LABEL_24;
    case 0xC:
      v1 = 14;
      goto LABEL_17;
    case 0xD:
      v1 = 15;
      goto LABEL_17;
    case 0xE:
      v2 = 16;
LABEL_19:
      MEMORY[0x1B8CA6620](v2);
      sub_1B7800798();
      sub_1B7800798();
      goto LABEL_24;
    case 0xF:
      v1 = 17;
      goto LABEL_17;
    case 0x10:
      v1 = 18;
      goto LABEL_17;
    case 0x11:
      return MEMORY[0x1B8CA6620]((*(v0 + 16) | *(v0 + 8) | *v0 | *(v0 + 24) | *(v0 + 32) | *(v0 + 40) | *(v0 + 48) | *(v0 + 56)) != 0);
    default:
      v1 = 2;
LABEL_17:
      MEMORY[0x1B8CA6620](v1);
      sub_1B7800798();
LABEL_24:

      return sub_1B7800798();
  }
}

uint64_t OrderEvent.EventType.hashValue.getter()
{
  sub_1B78022F8();
  OrderEvent.EventType.hash(into:)();
  return sub_1B7802368();
}

uint64_t OrderEvent.EventType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v249 = a2;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993660);
  v227 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v247 = &v195 - v3;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993668);
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v255 = (&v195 - v4);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993670);
  v250 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v248 = &v195 - v5;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993678);
  v222 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v246 = &v195 - v6;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993680);
  v221 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v254 = &v195 - v7;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993688);
  v235 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v244 = &v195 - v8;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993690);
  v234 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v245 = &v195 - v9;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993698);
  v233 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v243 = &v195 - v10;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936A0);
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v241 = &v195 - v11;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936A8);
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v240 = &v195 - v12;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936B0);
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v242 = &v195 - v13;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936B8);
  v211 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v239 = &v195 - v14;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936C0);
  v210 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v253 = &v195 - v15;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936C8);
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v236 = &v195 - v16;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936D0);
  v206 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v252 = &v195 - v17;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936D8);
  v204 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v238 = &v195 - v18;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936E0);
  v251 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v237 = &v195 - v19;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936E8);
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v21 = &v195 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936F0);
  v201 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v195 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9936F8);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v195 - v27;
  v29 = a1[3];
  v256 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1B73CF5AC();
  v30 = v257;
  sub_1B78023C8();
  if (v30)
  {
LABEL_8:
    v55 = v256;
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v197 = v24;
  v196 = v22;
  v198 = v21;
  v32 = v251;
  v31 = v252;
  v33 = v253;
  v34 = v254;
  v35 = v255;
  v199 = 0;
  v200 = v26;
  v257 = v28;
  v36 = sub_1B7801E98();
  v37 = (2 * *(v36 + 16)) | 1;
  v262 = v36;
  v263 = v36 + 32;
  v264 = 0;
  v265 = v37;
  v38 = sub_1B721A274();
  v39 = v25;
  if (v264 != v265 >> 1)
  {
LABEL_6:
    v51 = sub_1B7801B18();
    swift_allocError();
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v53 = &type metadata for OrderEvent.EventType;
    v54 = v257;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
    swift_willThrow();
    (*(v200 + 8))(v54, v25);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v38)
  {
    case 0:
      LOBYTE(v258) = 0;
      sub_1B73CFBE8();
      v40 = v197;
      v41 = v257;
      v42 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v42)
      {
        goto LABEL_32;
      }

      (*(v201 + 8))(v40, v196);
      (*(v200 + 8))(v41, v39);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v39 = 0;
      v35 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 17;
      goto LABEL_54;
    case 1:
      LOBYTE(v258) = 1;
      sub_1B73CFB94();
      v88 = v198;
      v41 = v257;
      v89 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v89)
      {
LABEL_32:
        (*(v200 + 8))(v41, v39);
        swift_unknownObjectRelease();
        v55 = v43;
        return __swift_destroy_boxed_opaque_existential_1(v55);
      }

      (*(v202 + 8))(v88, v203);
      (*(v200 + 8))(v41, v39);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v39 = 0;
      v35 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 17;
      v44 = 1;
      goto LABEL_54;
    case 2:
      LOBYTE(v258) = 2;
      sub_1B73CFB40();
      v76 = v237;
      v49 = v257;
      v77 = v199;
      sub_1B7801D38();
      if (v77)
      {
        goto LABEL_42;
      }

      LOBYTE(v258) = 0;
      v78 = v205;
      v47 = v39;
      v241 = sub_1B7801DF8();
      v45 = v132;
      LOBYTE(v258) = 1;
      v133 = sub_1B7801DF8();
      v48 = v32 + 8;
      v35 = (v200 + 8);
      v39 = v177;
      v178 = v78;
      v179 = v133;
      (*(v32 + 8))(v76, v178);
      (*v35)(v49, v47);
      swift_unknownObjectRelease();
      v46 = v179;
      v50 = 0;
      v44 = v241;
      v180 = v256;
      goto LABEL_55;
    case 3:
      LOBYTE(v258) = 3;
      sub_1B73CFAEC();
      v82 = v238;
      v49 = v257;
      v83 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v83)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v84 = v207;
      v47 = v39;
      v241 = sub_1B7801DF8();
      v251 = v139;
      LOBYTE(v258) = 1;
      v140 = sub_1B7801DF8();
      v48 = v204 + 8;
      v35 = (v200 + 8);
      v39 = v141;
      v142 = v84;
      v143 = v140;
      (*(v204 + 8))(v82, v142);
      (*v35)(v49, v47);
      swift_unknownObjectRelease();
      v46 = v143;
      v50 = 1;
      goto LABEL_53;
    case 4:
      LOBYTE(v258) = 4;
      sub_1B73CFA98();
      v49 = v257;
      v65 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v65)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v66 = v209;
      v47 = v39;
      v241 = sub_1B7801DF8();
      v251 = v125;
      LOBYTE(v258) = 1;
      v126 = sub_1B7801DF8();
      v48 = v206 + 8;
      v35 = (v200 + 8);
      v39 = v127;
      v128 = v66;
      v129 = v126;
      (*(v206 + 8))(v31, v128);
      (*v35)(v49, v47);
      swift_unknownObjectRelease();
      v46 = v129;
      v50 = 2;
      goto LABEL_53;
    case 5:
      LOBYTE(v258) = 5;
      sub_1B73CFA44();
      v92 = v236;
      v47 = v257;
      v93 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v93)
      {
        goto LABEL_44;
      }

      LOBYTE(v258) = 0;
      v94 = v214;
      v95 = sub_1B7801DF8();
      v96 = v200;
      v155 = v39;
      v241 = v95;
      v45 = v156;
      LOBYTE(v258) = 1;
      v157 = sub_1B7801DF8();
      v39 = v158;
      v255 = v157;
      v266 = 2;
      sub_1B731BBF0();
      sub_1B7801E48();
      (*(v213 + 8))(v92, v94);
      (*(v96 + 8))(v47, v155);
      swift_unknownObjectRelease();
      v35 = v258;
      v47 = v259;
      v50 = 3;
      v48 = v260;
      v49 = v261;
      goto LABEL_57;
    case 6:
      LOBYTE(v258) = 6;
      sub_1B73CF9F0();
      v99 = v33;
      v49 = v257;
      v100 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v100)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v101 = v212;
      v47 = v39;
      v241 = sub_1B7801DF8();
      v251 = v161;
      LOBYTE(v258) = 1;
      v162 = sub_1B7801DF8();
      v48 = v210 + 8;
      v35 = (v200 + 8);
      v39 = v163;
      v164 = v101;
      v165 = v162;
      (*(v210 + 8))(v99, v164);
      (*v35)(v49, v47);
      swift_unknownObjectRelease();
      v46 = v165;
      v50 = 4;
      goto LABEL_53;
    case 7:
      LOBYTE(v258) = 7;
      sub_1B73CF99C();
      v85 = v239;
      v49 = v257;
      v86 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v86)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v87 = v208;
      v47 = v39;
      v241 = sub_1B7801DF8();
      v251 = v144;
      LOBYTE(v258) = 1;
      v145 = sub_1B7801DF8();
      v48 = v211 + 8;
      v35 = (v200 + 8);
      v39 = v146;
      v147 = v87;
      v148 = v145;
      (*(v211 + 8))(v85, v147);
      (*v35)(v49, v47);
      swift_unknownObjectRelease();
      v46 = v148;
      v50 = 5;
      goto LABEL_53;
    case 8:
      LOBYTE(v258) = 8;
      sub_1B73CF948();
      v108 = v242;
      v58 = v257;
      v109 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v109)
      {
        goto LABEL_46;
      }

      LOBYTE(v258) = 0;
      v114 = v220;
      v49 = v39;
      v241 = sub_1B7801DF8();
      v45 = v171;
      LOBYTE(v258) = 1;
      v172 = sub_1B7801DF8();
      v39 = v173;
      v255 = v172;
      LOBYTE(v258) = 2;
      v48 = 0;
      v35 = sub_1B7801DF8();
      v47 = v191;
      (*(v219 + 8))(v108, v114);
      (*(v200 + 8))(v257, v49);
      swift_unknownObjectRelease();
      v50 = 6;
      goto LABEL_57;
    case 9:
      LOBYTE(v258) = 9;
      sub_1B73CF8F4();
      v69 = v240;
      v47 = v257;
      v70 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v70)
      {
        goto LABEL_44;
      }

      v49 = v216;
      v71 = sub_1B7801DF8();
      v72 = v200;
      v44 = v71;
      v73 = v69;
      v45 = v74;
      (*(v215 + 8))(v73, v49);
      v75 = *(v72 + 8);
      v48 = v72 + 8;
      v75(v47, v39);
      swift_unknownObjectRelease();
      v50 = 7;
      goto LABEL_54;
    case 10:
      LOBYTE(v258) = 10;
      sub_1B73CF8A0();
      v104 = v241;
      v47 = v257;
      v105 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v105)
      {
LABEL_44:
        v106 = *(v200 + 8);
        v107 = v47;
        goto LABEL_50;
      }

      v49 = v218;
      v112 = sub_1B7801DF8();
      v113 = v200;
      v44 = v112;
      v168 = v104;
      v45 = v169;
      (*(v217 + 8))(v168, v49);
      v170 = *(v113 + 8);
      v48 = v113 + 8;
      v170(v47, v39);
      swift_unknownObjectRelease();
      v50 = 8;
      goto LABEL_54;
    case 11:
      LOBYTE(v258) = 11;
      sub_1B73CF84C();
      v63 = v243;
      v49 = v257;
      v64 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v64)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v241 = sub_1B7801DF8();
      v45 = v122;
      LOBYTE(v258) = 1;
      v123 = sub_1B7801DF8();
      v254 = v124;
      v255 = v123;
      LOBYTE(v258) = 2;
      v35 = sub_1B7801DF8();
      v47 = v188;
      LOBYTE(v258) = 3;
      v48 = sub_1B7801DF8();
      v49 = v192;
      (*(v233 + 8))(v63, v230);
      (*(v200 + 8))(v257, v39);
      swift_unknownObjectRelease();
      v50 = 9;
      goto LABEL_58;
    case 12:
      LOBYTE(v258) = 12;
      sub_1B73CF7F8();
      v67 = v245;
      v49 = v257;
      v68 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v68)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v241 = sub_1B7801DF8();
      v45 = v130;
      LOBYTE(v258) = 1;
      v131 = sub_1B7801DF8();
      v254 = v176;
      v255 = v131;
      LOBYTE(v258) = 2;
      v35 = sub_1B7801DF8();
      v47 = v189;
      LOBYTE(v258) = 3;
      v48 = sub_1B7801DF8();
      v49 = v193;
      (*(v234 + 8))(v67, v231);
      (*(v200 + 8))(v257, v39);
      swift_unknownObjectRelease();
      v50 = 10;
      goto LABEL_58;
    case 13:
      LOBYTE(v258) = 13;
      sub_1B73CF7A4();
      v97 = v244;
      v49 = v257;
      v98 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v98)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v241 = sub_1B7801DF8();
      v45 = v159;
      LOBYTE(v258) = 1;
      v160 = sub_1B7801DF8();
      v254 = v181;
      v255 = v160;
      LOBYTE(v258) = 2;
      v182 = v97;
      v35 = sub_1B7801DF8();
      v47 = v190;
      LOBYTE(v258) = 3;
      v48 = sub_1B7801DF8();
      v49 = v194;
      (*(v235 + 8))(v182, v232);
      (*(v200 + 8))(v257, v39);
      swift_unknownObjectRelease();
      v50 = 11;
LABEL_58:
      v44 = v241;
      v180 = v43;
      v186 = v249;
      v39 = v254;
      v46 = v255;
      goto LABEL_56;
    case 14:
      LOBYTE(v258) = 14;
      sub_1B73CF750();
      v49 = v257;
      v61 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v61)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v62 = v223;
      v47 = v39;
      v241 = sub_1B7801DF8();
      v251 = v117;
      LOBYTE(v258) = 1;
      v118 = sub_1B7801DF8();
      v48 = v221 + 8;
      v35 = (v200 + 8);
      v39 = v119;
      v120 = v62;
      v121 = v118;
      (*(v221 + 8))(v34, v120);
      (*v35)(v49, v47);
      swift_unknownObjectRelease();
      v46 = v121;
      v50 = 12;
      goto LABEL_53;
    case 15:
      LOBYTE(v258) = 15;
      sub_1B73CF6FC();
      v79 = v246;
      v49 = v257;
      v80 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v80)
      {
        goto LABEL_49;
      }

      LOBYTE(v258) = 0;
      v81 = v224;
      v47 = v39;
      v241 = sub_1B7801DF8();
      v251 = v134;
      LOBYTE(v258) = 1;
      v135 = sub_1B7801DF8();
      v48 = v222 + 8;
      v35 = (v200 + 8);
      v39 = v136;
      v137 = v81;
      v138 = v135;
      (*(v222 + 8))(v79, v137);
      (*v35)(v49, v47);
      swift_unknownObjectRelease();
      v46 = v138;
      v50 = 13;
      goto LABEL_53;
    case 16:
      LOBYTE(v258) = 16;
      sub_1B73CF6A8();
      v57 = v248;
      v58 = v257;
      v59 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (v59)
      {
LABEL_46:
        v106 = *(v200 + 8);
        v107 = v58;
        goto LABEL_50;
      }

      LOBYTE(v258) = 0;
      v60 = v229;
      v49 = v39;
      v241 = sub_1B7801DF8();
      v48 = v57;
      v45 = v115;
      LOBYTE(v258) = 1;
      v116 = sub_1B7801DF8();
      v39 = v174;
      v255 = v116;
      LOBYTE(v258) = 2;
      v175 = v60;
      v35 = sub_1B7801DF8();
      v47 = v187;
      (*(v250 + 8))(v48, v175);
      (*(v200 + 8))(v257, v49);
      swift_unknownObjectRelease();
      v50 = 14;
LABEL_57:
      v44 = v241;
      v180 = v43;
      v186 = v249;
      v46 = v255;
      goto LABEL_56;
    case 17:
      LOBYTE(v258) = 17;
      sub_1B73CF654();
      v49 = v257;
      v90 = v199;
      sub_1B7801D38();
      v43 = v256;
      if (!v90)
      {
        LOBYTE(v258) = 0;
        v91 = v226;
        v47 = v39;
        v241 = sub_1B7801DF8();
        v251 = v149;
        LOBYTE(v258) = 1;
        v150 = sub_1B7801DF8();
        v48 = v225 + 8;
        v151 = v35;
        v35 = (v200 + 8);
        v39 = v152;
        v153 = v91;
        v154 = v150;
        (*(v225 + 8))(v151, v153);
        (*v35)(v49, v47);
        swift_unknownObjectRelease();
        v46 = v154;
        v50 = 15;
        goto LABEL_53;
      }

LABEL_49:
      v106 = *(v200 + 8);
      v107 = v49;
LABEL_50:
      v106(v107, v39);
      swift_unknownObjectRelease();
      v55 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v55);
    case 18:
      LOBYTE(v258) = 18;
      sub_1B73CF600();
      v102 = v247;
      v49 = v257;
      v103 = v199;
      sub_1B7801D38();
      if (v103)
      {
LABEL_42:
        (*(v200 + 8))(v49, v25);
        goto LABEL_7;
      }

      LOBYTE(v258) = 0;
      v110 = v228;
      v111 = sub_1B7801DF8();
      v43 = v256;
      v47 = v39;
      v241 = v111;
      v251 = v166;
      LOBYTE(v258) = 1;
      v167 = sub_1B7801DF8();
      v48 = v227 + 8;
      v35 = (v200 + 8);
      v39 = v183;
      v184 = v110;
      v185 = v167;
      (*(v227 + 8))(v102, v184);
      (*v35)(v49, v47);
      swift_unknownObjectRelease();
      v46 = v185;
      v50 = 16;
LABEL_53:
      v45 = v251;
      v44 = v241;
LABEL_54:
      v180 = v43;
LABEL_55:
      v186 = v249;
LABEL_56:
      *v186 = v44;
      *(v186 + 8) = v45;
      *(v186 + 16) = v46;
      *(v186 + 24) = v39;
      *(v186 + 32) = v35;
      *(v186 + 40) = v47;
      *(v186 + 48) = v48;
      *(v186 + 56) = v49;
      *(v186 + 64) = v50;
      result = __swift_destroy_boxed_opaque_existential_1(v180);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B73CB668()
{
  sub_1B78022F8();
  OrderEvent.EventType.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B73CB6AC()
{
  sub_1B78022F8();
  OrderEvent.EventType.hash(into:)();
  return sub_1B7802368();
}

uint64_t OrderEvent.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1B73CFC3C(v8, v7);
}

__n128 OrderEvent.eventType.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_1B73CFC74(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t OrderEvent.eventID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderEvent() + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderEvent.eventID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderEvent() + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderEvent() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderEvent() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderEvent.deviceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderEvent() + 28);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderEvent.deviceID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderEvent() + 28);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderEvent.init(eventType:eventID:timestamp:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v9;
  *(a5 + 64) = *(a1 + 64);
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v10;
  v11 = type metadata accessor for OrderEvent();
  v12 = v11[5];
  v13 = sub_1B77FFA18();
  v18 = *(*(v13 - 8) + 32);
  (v18)((v13 - 8), a5 + v12, a2, v13);
  v14 = v11[6];
  v15 = sub_1B77FF988();
  (*(*(v15 - 8) + 32))(a5 + v14, a3, v15);
  v16 = a5 + v11[7];

  return v18(v16, a4, v13);
}

uint64_t sub_1B73CBCD0()
{
  v1 = 0x707954746E657665;
  v2 = 0x6D617473656D6974;
  if (*v0 != 2)
  {
    v2 = 0x4449656369766564;
  }

  if (*v0)
  {
    v1 = 0x4449746E657665;
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

uint64_t sub_1B73CBD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73D2924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73CBD78(uint64_t a1)
{
  v2 = sub_1B73CFE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73CBDB4(uint64_t a1)
{
  v2 = sub_1B73CFE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993700);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73CFE48();
  sub_1B78023F8();
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v28 = *(v3 + 32);
  v29 = v10;
  v11 = *(v3 + 16);
  v27[0] = *v3;
  v27[1] = v11;
  v23 = v9;
  v24 = v28;
  v25 = *(v3 + 48);
  v30 = *(v3 + 64);
  v26 = *(v3 + 64);
  v22 = v27[0];
  v21 = 0;
  sub_1B73CFC3C(v27, &v16);
  sub_1B73CFE9C();
  sub_1B7801FC8();
  if (v2)
  {
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v17 = v23;
    v16 = v22;
    sub_1B73CFC74(&v16);
  }

  else
  {
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v17 = v23;
    v16 = v22;
    sub_1B73CFC74(&v16);
    v12 = type metadata accessor for OrderEvent();
    v15 = 1;
    sub_1B77FFA18();
    sub_1B71A69B4(&qword_1EB98F718, MEMORY[0x1E69695A8]);
    sub_1B7801FC8();
    v31 = *(v12 + 24);
    v15 = 2;
    sub_1B77FF988();
    sub_1B71A69B4(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v15 = 3;
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t OrderEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = sub_1B77FF988();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFA18();
  v40 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v32 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993718);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = v32 - v10;
  v12 = type metadata accessor for OrderEvent();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B73CFE48();
  v41 = v11;
  v16 = v43;
  sub_1B78023C8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v17 = v9;
  v18 = v39;
  v34 = v7;
  v43 = v12;
  v19 = v14;
  v20 = v40;
  v51 = 0;
  sub_1B73CFEF0();
  sub_1B7801E48();
  v21 = v49;
  *(v19 + 32) = v48;
  *(v19 + 48) = v21;
  *(v19 + 64) = v50;
  v22 = v47;
  *v19 = v46;
  *(v19 + 16) = v22;
  LOBYTE(v45) = 1;
  v23 = sub_1B71A69B4(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  sub_1B7801E48();
  v24 = v18;
  v32[2] = v23;
  v25 = *(v20 + 32);
  v26 = v19 + *(v43 + 20);
  v33 = v4;
  v25(v26, v17, v4);
  LOBYTE(v45) = 2;
  sub_1B71A69B4(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v27 = v36;
  v28 = v37;
  v32[3] = 0;
  sub_1B7801E48();
  v32[0] = v25;
  v32[1] = v20 + 32;
  v29 = v43;
  (*(v38 + 32))(v19 + *(v43 + 24), v27, v28);
  LOBYTE(v45) = 3;
  v30 = v33;
  sub_1B7801E48();
  (*(v24 + 8))(v41, v42);
  (v32[0])(v19 + *(v29 + 28), v34, v30);
  sub_1B73CFF44(v19, v35);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_1B73CFFA8(v19);
}

uint64_t ManagedCloudOrderEvent.EventType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1 == 0xD000000000000033 && 0x80000001B787D7D0 == a2;
  if (v5 || (v6 = a1, (sub_1B78020F8() & 1) != 0))
  {
    v7 = 0;
LABEL_7:

    v6 = 0;
    goto LABEL_8;
  }

  if (v6 == 0xD000000000000033 && 0x80000001B787D810 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6 == 0xD000000000000015 && 0x80000001B787D850 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 2;
    goto LABEL_7;
  }

  if (v6 == 0xD000000000000022 && 0x80000001B787D870 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 3;
    goto LABEL_7;
  }

  if (v6 == 0xD000000000000015 && 0x80000001B787D8A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 4;
    goto LABEL_7;
  }

  if (v6 == 0xD000000000000022 && 0x80000001B787D8C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 5;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001ELL && 0x80000001B787D8F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 6;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001CLL && 0x80000001B787D910 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 7;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001ALL && 0x80000001B787D930 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 8;
    goto LABEL_7;
  }

  if (v6 == 0xD000000000000014 && 0x80000001B787D950 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 9;
    goto LABEL_7;
  }

  if (v6 == 0xD000000000000011 && 0x80000001B787D970 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 10;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001CLL && 0x80000001B787D990 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 11;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000002BLL && 0x80000001B787D9B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 12;
    goto LABEL_7;
  }

  if (v6 == 0xD000000000000030 && 0x80000001B787D9E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 13;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001BLL && 0x80000001B787DA20 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 14;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001DLL && 0x80000001B787DA40 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 15;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001BLL && 0x80000001B787DA60 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 16;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001DLL && 0x80000001B787DA80 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v7 = 17;
    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001FLL && 0x80000001B787DAA0 == a2 || (result = sub_1B78020F8(), v7 = a2, (result & 1) != 0))
  {
    v7 = 18;
    goto LABEL_7;
  }

LABEL_8:
  *a3 = v6;
  a3[1] = v7;
  return result;
}

unint64_t ManagedCloudOrderEvent.EventType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *v0;
  switch(v2)
  {
    case 0uLL:
    case 1uLL:
      v3 = 0xD000000000000033;
      break;
    case 2uLL:
      v3 = 0xD000000000000015;
      break;
    case 3uLL:
    case 5uLL:
      v3 = 0xD000000000000022;
      break;
    case 4uLL:
      v3 = 0xD000000000000015;
      break;
    case 6uLL:
      v3 = 0xD00000000000001ELL;
      break;
    case 7uLL:
    case 0xBuLL:
      v3 = 0xD00000000000001CLL;
      break;
    case 8uLL:
      v3 = 0xD00000000000001ALL;
      break;
    case 9uLL:
      v3 = 0xD000000000000014;
      break;
    case 0xAuLL:
      v3 = 0xD000000000000011;
      break;
    case 0xCuLL:
      v3 = 0xD00000000000002BLL;
      break;
    case 0xDuLL:
      v3 = 0xD000000000000030;
      break;
    case 0xEuLL:
    case 0x10uLL:
      v3 = 0xD00000000000001BLL;
      break;
    case 0xFuLL:
    case 0x11uLL:
      v3 = 0xD00000000000001DLL;
      break;
    case 0x12uLL:
      v3 = 0xD00000000000001FLL;
      break;
    default:
      break;
  }

  sub_1B73D0004(v1, v2);
  return v3;
}

double sub_1B73CCF88@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  ManagedCloudOrderEvent.EventType.init(rawValue:)(*a1, a1[1], &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t sub_1B73CCFC8@<X0>(unint64_t *a1@<X8>)
{
  result = ManagedCloudOrderEvent.EventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B73CCFF0()
{
  v0 = ManagedCloudOrderEvent.EventType.rawValue.getter();
  v2 = v1;
  if (v0 == ManagedCloudOrderEvent.EventType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B78020F8();
  }

  return v5 & 1;
}

double ManagedCloudOrderEvent.eventType.getter@<D0>(void *a1@<X8>)
{
  v3 = [v1 eventTypeValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;

    ManagedCloudOrderEvent.EventType.init(rawValue:)(v5, v7, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_1B78220A0;
  }

  return result;
}

void sub_1B73CD1C8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &qword_1EB98EBD0);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setTimestamp_];
}

uint64_t sub_1B73CD304@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B73CD3BC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &unk_1EB993A10);
  v11 = *a2;
  v12 = sub_1B77FFA18();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF9B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t ManagedCloudOrderEvent.userEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v190 - v13;
  v15 = [v2 eventTypeValue];
  if (v15)
  {
    v198 = v5;
    v199 = v9;
    v16 = v15;
    v17 = sub_1B7800868();
    v19 = v18;

    ManagedCloudOrderEvent.EventType.init(rawValue:)(v17, v19, &v200);
    v20 = v201;
    v197 = v4;
    v21 = 17;
    v22 = v201;
    v23 = v201;
    v24 = v201;
    switch(v201)
    {
      case 0uLL:
        goto LABEL_29;
      case 1uLL:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        goto LABEL_29;
      case 2uLL:
        v84 = [v2 emailMessageID];
        if (!v84)
        {
          break;
        }

        v85 = v84;
        v20 = sub_1B7800868();
        v22 = v86;

        v87 = [v2 sanitizedOrderNumber];
        if (!v87)
        {
          goto LABEL_79;
        }

        v88 = v87;
        v195 = sub_1B7800868();
        v90 = v89;

        v23 = v195;
        v24 = v90;
        v21 = 0;
LABEL_29:
        v193 = 0;
        v194 = 0;
        v191 = 0;
        v192 = 0;
        v202 = v20;
        v203 = v22;
        v195 = v23;
        v204 = v23;
        v205 = v24;
        v206 = 0u;
        v207 = 0u;
        goto LABEL_58;
      case 3uLL:
        v98 = [v2 emailMessageID];
        if (!v98)
        {
          break;
        }

        v99 = v98;
        v20 = sub_1B7800868();
        v22 = v100;

        v101 = [v2 sanitizedOrderNumber];
        if (!v101)
        {
          goto LABEL_79;
        }

        v102 = v101;
        v103 = sub_1B7800868();
        v196 = v104;

        v24 = v196;
        v202 = v20;
        v203 = v22;
        v195 = v103;
        v204 = v103;
        v205 = v196;
        v21 = 1;
        goto LABEL_58;
      case 4uLL:
        v60 = [v2 emailMessageID];
        if (!v60)
        {
          break;
        }

        v61 = v60;
        v20 = sub_1B7800868();
        v22 = v62;

        v63 = [v2 sanitizedOrderNumber];
        if (!v63)
        {
          goto LABEL_79;
        }

        v64 = v63;
        v65 = sub_1B7800868();
        v196 = v66;

        v24 = v196;
        v202 = v20;
        v203 = v22;
        v195 = v65;
        v204 = v65;
        v205 = v196;
        v21 = 2;
        goto LABEL_58;
      case 5uLL:
        v119 = [v2 emailMessageID];
        if (!v119)
        {
          break;
        }

        v120 = v119;
        v20 = sub_1B7800868();
        v22 = v121;

        v122 = [v2 sanitizedOrderNumber];
        if (!v122)
        {
          goto LABEL_79;
        }

        v123 = v122;
        v195 = sub_1B7800868();
        v125 = v124;

        v126 = [v2 classicOrderTypeIdentifier];
        if (!v126)
        {
          goto LABEL_78;
        }

        v196 = v125;
        v127 = v126;
        v194 = sub_1B7800868();
        v129 = v128;

        v130 = [v2 classicOrderIdentifier];
        if (!v130)
        {
          goto LABEL_77;
        }

        v131 = v130;
        v132 = sub_1B7800868();
        v191 = v133;
        v192 = v132;

        v202 = v20;
        v203 = v22;
        v24 = v196;
        v204 = v195;
        v205 = v196;
        *&v206 = v194;
        *(&v206 + 1) = v129;
        v193 = v129;
        *&v207 = v192;
        *(&v207 + 1) = v191;
        v21 = 3;
        goto LABEL_58;
      case 6uLL:
        v149 = [v2 emailMessageID];
        if (!v149)
        {
          break;
        }

        v150 = v149;
        v20 = sub_1B7800868();
        v22 = v151;

        v152 = [v2 sanitizedOrderNumber];
        if (!v152)
        {
          goto LABEL_79;
        }

        v153 = v152;
        v154 = sub_1B7800868();
        v196 = v155;

        v24 = v196;
        v202 = v20;
        v203 = v22;
        v195 = v154;
        v204 = v154;
        v205 = v196;
        v21 = 4;
        goto LABEL_58;
      case 7uLL:
        v105 = [v2 emailMessageID];
        if (!v105)
        {
          break;
        }

        v106 = v105;
        v20 = sub_1B7800868();
        v22 = v107;

        v108 = [v2 sanitizedOrderNumber];
        if (!v108)
        {
          goto LABEL_79;
        }

        v109 = v108;
        v110 = sub_1B7800868();
        v196 = v111;

        v24 = v196;
        v202 = v20;
        v203 = v22;
        v195 = v110;
        v204 = v110;
        v205 = v196;
        v21 = 5;
        goto LABEL_58;
      case 8uLL:
        v177 = [v2 emailMessageID];
        if (!v177)
        {
          break;
        }

        v178 = v177;
        v20 = sub_1B7800868();
        v22 = v179;

        v180 = [v2 otherEmailMessageID];
        if (!v180)
        {
          goto LABEL_79;
        }

        v181 = v180;
        v195 = sub_1B7800868();
        v183 = v182;

        v184 = [v2 sanitizedOrderNumber];
        if (!v184)
        {
          goto LABEL_78;
        }

        v185 = v184;
        v186 = sub_1B7800868();
        v196 = v183;
        v187 = v186;
        v193 = v188;

        v202 = v20;
        v203 = v22;
        v37 = v196;
        v204 = v195;
        v205 = v196;
        v194 = v187;
        *&v206 = v187;
        *(&v206 + 1) = v193;
        v21 = 6;
        goto LABEL_73;
      case 9uLL:
        v82 = [v2 sender];
        if (!v82)
        {
          break;
        }

        v24 = v82;
        v20 = sub_1B7800868();
        v22 = v83;

        v202 = v20;
        v203 = v22;
        v21 = 7;
        goto LABEL_68;
      case 0xAuLL:
        v175 = [v2 sender];
        if (!v175)
        {
          break;
        }

        v24 = v175;
        v20 = sub_1B7800868();
        v22 = v176;

        v202 = v20;
        v203 = v22;
        v21 = 8;
LABEL_68:
        v208 = v21;
        goto LABEL_59;
      case 0xBuLL:
        v45 = [v2 merchantEmailAddress];
        if (!v45)
        {
          break;
        }

        v46 = v45;
        v20 = sub_1B7800868();
        v22 = v47;

        v48 = [v2 merchantEmailDisplayName];
        if (!v48)
        {
          goto LABEL_79;
        }

        v49 = v48;
        v195 = sub_1B7800868();
        v51 = v50;

        v52 = [v2 otherMerchantEmailAddress];
        if (!v52)
        {
          goto LABEL_78;
        }

        v196 = v51;
        v53 = v52;
        v194 = sub_1B7800868();
        v55 = v54;

        v56 = [v2 otherMerchantEmailDisplayName];
        if (!v56)
        {
          goto LABEL_77;
        }

        v57 = v56;
        v58 = sub_1B7800868();
        v191 = v59;
        v192 = v58;

        v202 = v20;
        v203 = v22;
        v24 = v196;
        v204 = v195;
        v205 = v196;
        *&v206 = v194;
        *(&v206 + 1) = v55;
        v193 = v55;
        *&v207 = v192;
        *(&v207 + 1) = v191;
        v21 = 9;
        goto LABEL_58;
      case 0xCuLL:
        v67 = [v2 merchantEmailAddress];
        if (!v67)
        {
          break;
        }

        v68 = v67;
        v20 = sub_1B7800868();
        v22 = v69;

        v70 = [v2 merchantEmailDisplayName];
        if (!v70)
        {
          goto LABEL_79;
        }

        v71 = v70;
        v195 = sub_1B7800868();
        v73 = v72;

        v74 = [v2 businessConnectBusinessID];
        if (!v74)
        {
          goto LABEL_78;
        }

        v196 = v73;
        v75 = v74;
        v194 = sub_1B7800868();
        v77 = v76;

        v78 = [v2 businessConnectCompanyID];
        if (!v78)
        {
          goto LABEL_77;
        }

        v79 = v78;
        v80 = sub_1B7800868();
        v191 = v81;
        v192 = v80;

        v202 = v20;
        v203 = v22;
        v24 = v196;
        v204 = v195;
        v205 = v196;
        *&v206 = v194;
        *(&v206 + 1) = v77;
        v193 = v77;
        *&v207 = v192;
        *(&v207 + 1) = v191;
        v21 = 10;
        goto LABEL_58;
      case 0xDuLL:
        v134 = [v2 classicOrderTypeIdentifier];
        if (!v134)
        {
          break;
        }

        v135 = v134;
        v20 = sub_1B7800868();
        v22 = v136;

        v137 = [v2 classicOrderMerchantIdentifier];
        if (!v137)
        {
          goto LABEL_79;
        }

        v138 = v137;
        v195 = sub_1B7800868();
        v140 = v139;

        v141 = [v2 merchantEmailAddress];
        if (!v141)
        {
          goto LABEL_78;
        }

        v196 = v140;
        v142 = v141;
        v194 = sub_1B7800868();
        v144 = v143;

        v145 = [v2 merchantEmailDisplayName];
        if (!v145)
        {
LABEL_77:

LABEL_78:

LABEL_79:

          break;
        }

        v146 = v145;
        v147 = sub_1B7800868();
        v191 = v148;
        v192 = v147;

        v202 = v20;
        v203 = v22;
        v24 = v196;
        v204 = v195;
        v205 = v196;
        *&v206 = v194;
        *(&v206 + 1) = v144;
        v193 = v144;
        *&v207 = v192;
        *(&v207 + 1) = v191;
        v21 = 11;
LABEL_58:
        v208 = v21;
LABEL_59:
        v163 = [v2 eventID];
        if (!v163)
        {
          goto LABEL_64;
        }

        v196 = v24;
        v164 = v163;
        sub_1B77FF9E8();

        v165 = [v2 timestamp];
        if (!v165)
        {
          (*(v199 + 8))(v14, v8);
LABEL_64:
          sub_1B7205418(&v202, &qword_1EB993728);
          break;
        }

        v166 = v165;
        sub_1B77FF928();

        v167 = [v2 deviceID];
        if (v167)
        {
          v168 = v167;
          sub_1B77FF9E8();

          v169 = type metadata accessor for OrderEvent();
          v170 = *(v199 + 32);
          v170(a1 + v169[5], v14, v8);
          (*(v198 + 32))(a1 + v169[6], v7, v197);
          v170(a1 + v169[7], v12, v8);
          *a1 = v20;
          *(a1 + 8) = v22;
          v171 = v196;
          *(a1 + 16) = v195;
          *(a1 + 24) = v171;
          v172 = v193;
          *(a1 + 32) = v194;
          *(a1 + 40) = v172;
          v173 = v191;
          *(a1 + 48) = v192;
          *(a1 + 56) = v173;
          *(a1 + 64) = v21;
          return (*(*(v169 - 1) + 56))(a1, 0, 1, v169);
        }

        sub_1B7205418(&v202, &qword_1EB993728);
        (*(v198 + 8))(v7, v197);
        (*(v199 + 8))(v14, v8);
        break;
      case 0xEuLL:
        v38 = [v2 merchantEmailAddress];
        if (!v38)
        {
          break;
        }

        v39 = v38;
        v20 = sub_1B7800868();
        v22 = v40;

        v41 = [v2 merchantEmailDisplayName];
        if (!v41)
        {
          goto LABEL_79;
        }

        v42 = v41;
        v43 = sub_1B7800868();
        v196 = v44;

        v24 = v196;
        v202 = v20;
        v203 = v22;
        v195 = v43;
        v204 = v43;
        v205 = v196;
        v21 = 12;
        goto LABEL_58;
      case 0xFuLL:
        v91 = [v2 merchantEmailAddress];
        if (!v91)
        {
          break;
        }

        v92 = v91;
        v20 = sub_1B7800868();
        v22 = v93;

        v94 = [v2 merchantEmailDisplayName];
        if (!v94)
        {
          goto LABEL_79;
        }

        v95 = v94;
        v96 = sub_1B7800868();
        v196 = v97;

        v24 = v196;
        v202 = v20;
        v203 = v22;
        v195 = v96;
        v204 = v96;
        v205 = v196;
        v21 = 13;
        goto LABEL_58;
      case 0x10uLL:
        v25 = [v2 classicOrderTypeIdentifier];
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v20 = sub_1B7800868();
        v22 = v27;

        v28 = [v2 classicOrderMerchantIdentifier];
        if (!v28)
        {
          goto LABEL_79;
        }

        v29 = v28;
        v195 = sub_1B7800868();
        v31 = v30;

        v32 = [v2 classicOrderMerchantDisplayName];
        if (!v32)
        {
          goto LABEL_78;
        }

        v33 = v32;
        v34 = sub_1B7800868();
        v196 = v31;
        v35 = v34;
        v193 = v36;

        v202 = v20;
        v203 = v22;
        v37 = v196;
        v204 = v195;
        v205 = v196;
        v194 = v35;
        *&v206 = v35;
        *(&v206 + 1) = v193;
        v21 = 14;
LABEL_73:
        v208 = v21;
        v24 = v37;
        goto LABEL_59;
      case 0x11uLL:
        v112 = [v2 classicOrderTypeIdentifier];
        if (!v112)
        {
          break;
        }

        v113 = v112;
        v20 = sub_1B7800868();
        v22 = v114;

        v115 = [v2 classicOrderMerchantIdentifier];
        if (!v115)
        {
          goto LABEL_79;
        }

        v116 = v115;
        v117 = sub_1B7800868();
        v196 = v118;

        v24 = v196;
        v202 = v20;
        v203 = v22;
        v195 = v117;
        v204 = v117;
        v205 = v196;
        v21 = 15;
        goto LABEL_58;
      case 0x12uLL:
        v156 = [v2 merchantEmailAddress];
        if (!v156)
        {
          break;
        }

        v157 = v156;
        v20 = sub_1B7800868();
        v22 = v158;

        v159 = [v2 merchantEmailDisplayName];
        if (!v159)
        {
          goto LABEL_79;
        }

        v160 = v159;
        v161 = sub_1B7800868();
        v196 = v162;

        v24 = v196;
        v202 = v20;
        v203 = v22;
        v195 = v161;
        v204 = v161;
        v205 = v196;
        v21 = 16;
        goto LABEL_58;
      default:
        sub_1B73D0018(v200, v201);
        break;
    }
  }

  v189 = type metadata accessor for OrderEvent();
  return (*(*(v189 - 8) + 56))(a1, 1, 1, v189);
}

id ManagedCloudOrderEvent.__allocating_init(event:context:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithContext_];
  type metadata accessor for OrderEvent();
  v6 = v5;
  v7 = sub_1B77FF9B8();
  [v6 setEventID_];

  v8 = sub_1B77FF9B8();
  [v6 setDeviceID_];

  v9 = sub_1B77FF8B8();
  [v6 setTimestamp_];

  switch(*(a1 + 64))
  {
    case 1:
      v39 = sub_1B7800838();
      [v6 setEmailMessageID_];

      v40 = sub_1B7800838();
      [v6 setSanitizedOrderNumber_];

      v12 = 3;
      break;
    case 2:
      v30 = sub_1B7800838();
      [v6 setEmailMessageID_];

      v31 = sub_1B7800838();
      [v6 setSanitizedOrderNumber_];

      v12 = 4;
      break;
    case 3:
      v34 = sub_1B7800838();
      [v6 setEmailMessageID_];

      v35 = sub_1B7800838();
      [v6 setSanitizedOrderNumber_];

      v36 = sub_1B7800838();
      [v6 setClassicOrderTypeIdentifier_];

      v37 = sub_1B7800838();
      [v6 setClassicOrderIdentifier_];

      v12 = 5;
      break;
    case 4:
      v22 = sub_1B7800838();
      [v6 setEmailMessageID_];

      v23 = sub_1B7800838();
      [v6 setSanitizedOrderNumber_];

      v12 = 6;
      break;
    case 5:
      v41 = sub_1B7800838();
      [v6 setEmailMessageID_];

      v42 = sub_1B7800838();
      [v6 setSanitizedOrderNumber_];

      v12 = 7;
      break;
    case 6:
      v45 = sub_1B7800838();
      [v6 setEmailMessageID_];

      v46 = sub_1B7800838();
      [v6 setOtherEmailMessageID_];

      v47 = sub_1B7800838();
      [v6 setSanitizedOrderNumber_];

      v12 = 8;
      break;
    case 7:
      v38 = sub_1B7800838();
      [v6 setSender_];

      v12 = 9;
      break;
    case 8:
      v52 = sub_1B7800838();
      [v6 setSender_];

      v12 = 10;
      break;
    case 9:
      v26 = sub_1B7800838();
      [v6 setMerchantEmailAddress_];

      v27 = sub_1B7800838();
      [v6 setMerchantEmailDisplayName_];

      v28 = sub_1B7800838();
      [v6 setOtherMerchantEmailAddress_];

      v29 = sub_1B7800838();
      [v6 setOtherMerchantEmailDisplayName_];

      v12 = 11;
      break;
    case 0xA:
      v48 = sub_1B7800838();
      [v6 setMerchantEmailAddress_];

      v49 = sub_1B7800838();
      [v6 setMerchantEmailDisplayName_];

      v50 = sub_1B7800838();
      [v6 setBusinessConnectBusinessID_];

      v51 = sub_1B7800838();
      [v6 setBusinessConnectCompanyID_];

      v12 = 12;
      break;
    case 0xB:
      v18 = sub_1B7800838();
      [v6 setClassicOrderTypeIdentifier_];

      v19 = sub_1B7800838();
      [v6 setClassicOrderMerchantIdentifier_];

      v20 = sub_1B7800838();
      [v6 setMerchantEmailAddress_];

      v21 = sub_1B7800838();
      [v6 setMerchantEmailDisplayName_];

      v12 = 13;
      break;
    case 0xC:
      v24 = sub_1B7800838();
      [v6 setMerchantEmailAddress_];

      v25 = sub_1B7800838();
      [v6 setMerchantEmailDisplayName_];

      v12 = 14;
      break;
    case 0xD:
      v43 = sub_1B7800838();
      [v6 setMerchantEmailAddress_];

      v44 = sub_1B7800838();
      [v6 setMerchantEmailDisplayName_];

      v12 = 15;
      break;
    case 0xE:
      v15 = sub_1B7800838();
      [v6 setClassicOrderTypeIdentifier_];

      v16 = sub_1B7800838();
      [v6 setClassicOrderMerchantIdentifier_];

      v17 = sub_1B7800838();
      [v6 setClassicOrderMerchantDisplayName_];

      v12 = 16;
      break;
    case 0xF:
      v32 = sub_1B7800838();
      [v6 setClassicOrderTypeIdentifier_];

      v33 = sub_1B7800838();
      [v6 setClassicOrderMerchantIdentifier_];

      v12 = 17;
      break;
    case 0x10:
      v13 = sub_1B7800838();
      [v6 setMerchantEmailAddress_];

      v14 = sub_1B7800838();
      [v6 setMerchantEmailDisplayName_];

      v12 = 18;
      break;
    case 0x11:
      v12 = (*(a1 + 8) | *a1 | *(a1 + 16) | *(a1 + 24) | *(a1 + 32) | *(a1 + 40) | *(a1 + 48) | *(a1 + 56)) != 0;
      break;
    default:
      v10 = sub_1B7800838();
      [v6 setEmailMessageID_];

      v11 = sub_1B7800838();
      [v6 setSanitizedOrderNumber_];

      v12 = 2;
      break;
  }

  ManagedCloudOrderEvent.EventType.rawValue.getter();
  v53 = sub_1B7800838();
  sub_1B73D0018(0, v12);

  [v6 setEventTypeValue_];

  sub_1B73CFFA8(a1);
  return v6;
}

id ManagedCloudOrderEvent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCloudOrderEvent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCloudOrderEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedCloudOrderEvent.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedCloudOrderEvent;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedCloudOrderEvent.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedCloudOrderEvent;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

id static ManagedCloudOrderEvent.existingObject(with:in:)(uint64_t a1, id a2)
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

unint64_t static ManagedCloudOrderEvent.existingExtractedOrderUserEvent(withID:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedCloudOrderEvent;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
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

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t _s10FinanceKit10OrderEventV0D4TypeO2eeoiySbAE_AEtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v20 = a1[2];
  v21 = v2;
  v4 = a1[1];
  v18 = *a1;
  v19 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v25 = a2[2];
  v26 = v5;
  v7 = a2[1];
  v23 = *a2;
  v24 = v7;
  v8 = a1[3];
  v28[2] = v20;
  v28[3] = v8;
  v28[0] = v18;
  v28[1] = v3;
  v30 = v23;
  v33 = a2[3];
  v32 = v25;
  v22 = *(a1 + 64);
  v27 = a2[4].i8[0];
  v29 = *(a1 + 64);
  v34 = a2[4].i8[0];
  v31 = v6;
  v9 = v4;
  switch(v22)
  {
    case 1:
      if (v27 == 1)
      {
        goto LABEL_42;
      }

      goto LABEL_69;
    case 2:
      if (v27 != 2)
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    case 3:
      if (v27 != 3)
      {
        goto LABEL_69;
      }

      *&v15 = v26.i64[1];
      *(&v15 + 1) = v26.i64[0];
      if (v18 != *&v23 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_69;
      }

      if (v9 != *&v24 && (sub_1B78020F8() & 1) == 0 || v20 != *&v25 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_69;
      }

      if (__PAIR128__(v21, *(&v21 + 1)) == v15)
      {
        goto LABEL_64;
      }

      v10 = sub_1B78020F8();
      sub_1B73CFC3C(&v23, v17);
      sub_1B73CFC3C(&v18, v17);
      sub_1B7205418(v28, &qword_1EB993938);
      if ((v10 & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_66;
    case 4:
      if (v27 != 4)
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    case 5:
      if (v27 != 5)
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    case 6:
      if (v27 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_69;
    case 7:
      if (v27 != 7)
      {
        goto LABEL_69;
      }

      goto LABEL_63;
    case 8:
      if (v27 != 8)
      {
        goto LABEL_69;
      }

LABEL_63:
      if (v18 == *&v23)
      {
        goto LABEL_64;
      }

      goto LABEL_45;
    case 9:
      if (v27 != 9)
      {
        goto LABEL_69;
      }

      goto LABEL_54;
    case 10:
      if (v27 == 10)
      {
        goto LABEL_54;
      }

      goto LABEL_69;
    case 11:
      if (v27 != 11)
      {
        goto LABEL_69;
      }

LABEL_54:
      *&v16 = v26.i64[1];
      *(&v16 + 1) = v26.i64[0];
      if (v18 != *&v23 && (sub_1B78020F8() & 1) == 0 || v9 != *&v24 && (sub_1B78020F8() & 1) == 0 || v20 != *&v25 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_69;
      }

      if (__PAIR128__(v21, *(&v21 + 1)) != v16)
      {
        goto LABEL_45;
      }

      goto LABEL_64;
    case 12:
      if (v27 != 12)
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    case 13:
      if (v27 == 13)
      {
        goto LABEL_42;
      }

      goto LABEL_69;
    case 14:
      if (v27 != 14)
      {
        goto LABEL_69;
      }

LABEL_47:
      if (v18 != *&v23 && (sub_1B78020F8() & 1) == 0 || v9 != *&v24 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_69;
      }

      if (v20 != *&v25)
      {
        goto LABEL_45;
      }

      goto LABEL_64;
    case 15:
      if (v27 != 15)
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    case 16:
      if (v27 != 16)
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    case 17:
      if (v19 | *(&v18 + 1) | v18 | *(&v19 + 1) | v20 | *(&v20 + 1) | v21 | *(&v21 + 1))
      {
        if (v27 == 17 && v23.i64[0] == 1)
        {
          v11 = vorrq_s8(v25, v26);
          if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v24.i64[1] | v24.i64[0] | v23.i64[1]))
          {
            goto LABEL_65;
          }
        }
      }

      else if (v27 == 17)
      {
        v14 = vorrq_s8(vorrq_s8(v23, v25), vorrq_s8(v24, v26));
        if (!*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
        {
          goto LABEL_65;
        }
      }

LABEL_69:
      sub_1B73CFC3C(&v23, v17);
      sub_1B73CFC3C(&v18, v17);
      sub_1B7205418(v28, &qword_1EB993938);
LABEL_70:
      result = 0;
      break;
    default:
      if (v27)
      {
        goto LABEL_69;
      }

LABEL_42:
      if (v18 != *&v23 && (sub_1B78020F8() & 1) == 0)
      {
        goto LABEL_69;
      }

      if (v9 == *&v24)
      {
LABEL_64:
        sub_1B73CFC3C(&v23, v17);
        sub_1B73CFC3C(&v18, v17);
LABEL_65:
        sub_1B7205418(v28, &qword_1EB993938);
LABEL_66:
        result = 1;
      }

      else
      {
LABEL_45:
        v12 = sub_1B78020F8();
        sub_1B73CFC3C(&v23, v17);
        sub_1B73CFC3C(&v18, v17);
        sub_1B7205418(v28, &qword_1EB993938);
        result = v12 & 1;
      }

      break;
  }

  return result;
}

unint64_t sub_1B73CF5AC()
{
  result = qword_1EB9935C0;
  if (!qword_1EB9935C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9935C0);
  }

  return result;
}

unint64_t sub_1B73CF600()
{
  result = qword_1EB9935C8;
  if (!qword_1EB9935C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9935C8);
  }

  return result;
}

unint64_t sub_1B73CF654()
{
  result = qword_1EB9935D0;
  if (!qword_1EB9935D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9935D0);
  }

  return result;
}

unint64_t sub_1B73CF6A8()
{
  result = qword_1EB9935D8;
  if (!qword_1EB9935D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9935D8);
  }

  return result;
}

unint64_t sub_1B73CF6FC()
{
  result = qword_1EB9935E0;
  if (!qword_1EB9935E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9935E0);
  }

  return result;
}

unint64_t sub_1B73CF750()
{
  result = qword_1EB9935E8;
  if (!qword_1EB9935E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9935E8);
  }

  return result;
}

unint64_t sub_1B73CF7A4()
{
  result = qword_1EB9935F0;
  if (!qword_1EB9935F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9935F0);
  }

  return result;
}

unint64_t sub_1B73CF7F8()
{
  result = qword_1EB9935F8;
  if (!qword_1EB9935F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9935F8);
  }

  return result;
}

unint64_t sub_1B73CF84C()
{
  result = qword_1EB993600;
  if (!qword_1EB993600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993600);
  }

  return result;
}

unint64_t sub_1B73CF8A0()
{
  result = qword_1EB993608;
  if (!qword_1EB993608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993608);
  }

  return result;
}

unint64_t sub_1B73CF8F4()
{
  result = qword_1EB993610;
  if (!qword_1EB993610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993610);
  }

  return result;
}

unint64_t sub_1B73CF948()
{
  result = qword_1EB993618;
  if (!qword_1EB993618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993618);
  }

  return result;
}

unint64_t sub_1B73CF99C()
{
  result = qword_1EB993620;
  if (!qword_1EB993620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993620);
  }

  return result;
}

unint64_t sub_1B73CF9F0()
{
  result = qword_1EB993628;
  if (!qword_1EB993628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993628);
  }

  return result;
}

unint64_t sub_1B73CFA44()
{
  result = qword_1EB993630;
  if (!qword_1EB993630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993630);
  }

  return result;
}

unint64_t sub_1B73CFA98()
{
  result = qword_1EB993638;
  if (!qword_1EB993638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993638);
  }

  return result;
}

unint64_t sub_1B73CFAEC()
{
  result = qword_1EB993640;
  if (!qword_1EB993640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993640);
  }

  return result;
}

unint64_t sub_1B73CFB40()
{
  result = qword_1EB993648;
  if (!qword_1EB993648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993648);
  }

  return result;
}

unint64_t sub_1B73CFB94()
{
  result = qword_1EB993650;
  if (!qword_1EB993650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993650);
  }

  return result;
}

unint64_t sub_1B73CFBE8()
{
  result = qword_1EB993658;
  if (!qword_1EB993658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993658);
  }

  return result;
}

uint64_t type metadata accessor for OrderEvent()
{
  result = qword_1EB993738;
  if (!qword_1EB993738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10FinanceKit10OrderEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v3;
  v29 = *(a1 + 64);
  v4 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v4;
  v5 = *(a1 + 48);
  v23 = v27;
  v24 = v5;
  v25 = *(a1 + 64);
  v21 = v26[0];
  v22 = v2;
  v6 = *a2;
  v7 = *(a2 + 16);
  v31 = *(a2 + 64);
  v8 = *(a2 + 48);
  v30[2] = *(a2 + 32);
  v30[3] = v8;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *a2;
  v30[0] = v6;
  v30[1] = v9;
  v12 = *(a2 + 48);
  v18 = v10;
  v19 = v12;
  v20 = *(a2 + 64);
  v16 = v11;
  v17 = v7;
  sub_1B73CFC3C(v26, v34);
  sub_1B73CFC3C(v30, v34);
  v13 = _s10FinanceKit10OrderEventV0D4TypeO2eeoiySbAE_AEtFZ_0(&v21, &v16);
  v32[2] = v18;
  v32[3] = v19;
  v33 = v20;
  v32[0] = v16;
  v32[1] = v17;
  sub_1B73CFC74(v32);
  v34[2] = v23;
  v34[3] = v24;
  v35 = v25;
  v34[0] = v21;
  v34[1] = v22;
  sub_1B73CFC74(v34);
  if (v13 & 1) != 0 && (type metadata accessor for OrderEvent(), (_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0()) && (sub_1B77FF918())
  {
    v14 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_1B73CFE48()
{
  result = qword_1EB993708;
  if (!qword_1EB993708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993708);
  }

  return result;
}

unint64_t sub_1B73CFE9C()
{
  result = qword_1EB993710;
  if (!qword_1EB993710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993710);
  }

  return result;
}

unint64_t sub_1B73CFEF0()
{
  result = qword_1EB993720;
  if (!qword_1EB993720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993720);
  }

  return result;
}

uint64_t sub_1B73CFF44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73CFFA8(uint64_t a1)
{
  v2 = type metadata accessor for OrderEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B73D0004(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x13)
  {
  }

  return result;
}

uint64_t sub_1B73D0018(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x13)
  {
  }

  return result;
}

unint64_t sub_1B73D0030()
{
  result = qword_1EB993730;
  if (!qword_1EB993730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993730);
  }

  return result;
}

uint64_t sub_1B73D016C()
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

uint64_t get_enum_tag_for_layout_string_10FinanceKit10OrderEventV0D4TypeO(uint64_t a1)
{
  if ((*(a1 + 64) & 0x1Fu) <= 0x10)
  {
    return *(a1 + 64) & 0x1F;
  }

  else
  {
    return (*a1 + 17);
  }
}

uint64_t sub_1B73D0220(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 65))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x11)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B73D0268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 239;
    if (a3 >= 0xEF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B73D02C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x11)
  {
    *result = a2 - 17;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 17;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit22ManagedCloudOrderEventC0F4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B73D0338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEC && *(a1 + 16))
  {
    return (*a1 + 2147483629);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 18;
  if (v4 >= 0x14)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B73D0390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFED)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483629;
    if (a3 >= 0x7FFFFFED)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFED)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 18;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderEvent.EventType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrderEvent.EventType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B73D0684()
{
  result = qword_1EB993748;
  if (!qword_1EB993748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993748);
  }

  return result;
}

unint64_t sub_1B73D06DC()
{
  result = qword_1EB993750;
  if (!qword_1EB993750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993750);
  }

  return result;
}

unint64_t sub_1B73D0734()
{
  result = qword_1EB993758;
  if (!qword_1EB993758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993758);
  }

  return result;
}

unint64_t sub_1B73D078C()
{
  result = qword_1EB993760;
  if (!qword_1EB993760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993760);
  }

  return result;
}

unint64_t sub_1B73D07E4()
{
  result = qword_1EB993768;
  if (!qword_1EB993768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993768);
  }

  return result;
}

unint64_t sub_1B73D083C()
{
  result = qword_1EB993770;
  if (!qword_1EB993770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993770);
  }

  return result;
}

unint64_t sub_1B73D0894()
{
  result = qword_1EB993778;
  if (!qword_1EB993778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993778);
  }

  return result;
}

unint64_t sub_1B73D08EC()
{
  result = qword_1EB993780;
  if (!qword_1EB993780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993780);
  }

  return result;
}

unint64_t sub_1B73D0944()
{
  result = qword_1EB993788;
  if (!qword_1EB993788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993788);
  }

  return result;
}

unint64_t sub_1B73D099C()
{
  result = qword_1EB993790;
  if (!qword_1EB993790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993790);
  }

  return result;
}

unint64_t sub_1B73D09F4()
{
  result = qword_1EB993798;
  if (!qword_1EB993798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993798);
  }

  return result;
}

unint64_t sub_1B73D0A4C()
{
  result = qword_1EB9937A0;
  if (!qword_1EB9937A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937A0);
  }

  return result;
}

unint64_t sub_1B73D0AA4()
{
  result = qword_1EB9937A8;
  if (!qword_1EB9937A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937A8);
  }

  return result;
}

unint64_t sub_1B73D0AFC()
{
  result = qword_1EB9937B0;
  if (!qword_1EB9937B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937B0);
  }

  return result;
}

unint64_t sub_1B73D0B54()
{
  result = qword_1EB9937B8;
  if (!qword_1EB9937B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937B8);
  }

  return result;
}

unint64_t sub_1B73D0BAC()
{
  result = qword_1EB9937C0;
  if (!qword_1EB9937C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937C0);
  }

  return result;
}

unint64_t sub_1B73D0C04()
{
  result = qword_1EB9937C8;
  if (!qword_1EB9937C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937C8);
  }

  return result;
}

unint64_t sub_1B73D0C5C()
{
  result = qword_1EB9937D0;
  if (!qword_1EB9937D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937D0);
  }

  return result;
}

unint64_t sub_1B73D0CB4()
{
  result = qword_1EB9937D8;
  if (!qword_1EB9937D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937D8);
  }

  return result;
}

unint64_t sub_1B73D0D0C()
{
  result = qword_1EB9937E0;
  if (!qword_1EB9937E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937E0);
  }

  return result;
}

unint64_t sub_1B73D0D64()
{
  result = qword_1EB9937E8;
  if (!qword_1EB9937E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937E8);
  }

  return result;
}

unint64_t sub_1B73D0DBC()
{
  result = qword_1EB9937F0;
  if (!qword_1EB9937F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937F0);
  }

  return result;
}

unint64_t sub_1B73D0E14()
{
  result = qword_1EB9937F8;
  if (!qword_1EB9937F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9937F8);
  }

  return result;
}

unint64_t sub_1B73D0E6C()
{
  result = qword_1EB993800;
  if (!qword_1EB993800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993800);
  }

  return result;
}

unint64_t sub_1B73D0EC4()
{
  result = qword_1EB993808;
  if (!qword_1EB993808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993808);
  }

  return result;
}

unint64_t sub_1B73D0F1C()
{
  result = qword_1EB993810;
  if (!qword_1EB993810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993810);
  }

  return result;
}

unint64_t sub_1B73D0F74()
{
  result = qword_1EB993818;
  if (!qword_1EB993818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993818);
  }

  return result;
}

unint64_t sub_1B73D0FCC()
{
  result = qword_1EB993820;
  if (!qword_1EB993820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993820);
  }

  return result;
}

unint64_t sub_1B73D1024()
{
  result = qword_1EB993828;
  if (!qword_1EB993828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993828);
  }

  return result;
}

unint64_t sub_1B73D107C()
{
  result = qword_1EB993830;
  if (!qword_1EB993830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993830);
  }

  return result;
}

unint64_t sub_1B73D10D4()
{
  result = qword_1EB993838;
  if (!qword_1EB993838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993838);
  }

  return result;
}

unint64_t sub_1B73D112C()
{
  result = qword_1EB993840;
  if (!qword_1EB993840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993840);
  }

  return result;
}

unint64_t sub_1B73D1184()
{
  result = qword_1EB993848;
  if (!qword_1EB993848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993848);
  }

  return result;
}

unint64_t sub_1B73D11DC()
{
  result = qword_1EB993850;
  if (!qword_1EB993850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993850);
  }

  return result;
}

unint64_t sub_1B73D1234()
{
  result = qword_1EB993858;
  if (!qword_1EB993858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993858);
  }

  return result;
}

unint64_t sub_1B73D128C()
{
  result = qword_1EB993860;
  if (!qword_1EB993860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993860);
  }

  return result;
}

unint64_t sub_1B73D12E4()
{
  result = qword_1EB993868;
  if (!qword_1EB993868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993868);
  }

  return result;
}

unint64_t sub_1B73D133C()
{
  result = qword_1EB993870;
  if (!qword_1EB993870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993870);
  }

  return result;
}

unint64_t sub_1B73D1394()
{
  result = qword_1EB993878;
  if (!qword_1EB993878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993878);
  }

  return result;
}

unint64_t sub_1B73D13EC()
{
  result = qword_1EB993880;
  if (!qword_1EB993880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993880);
  }

  return result;
}

unint64_t sub_1B73D1444()
{
  result = qword_1EB993888;
  if (!qword_1EB993888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993888);
  }

  return result;
}

unint64_t sub_1B73D149C()
{
  result = qword_1EB993890;
  if (!qword_1EB993890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993890);
  }

  return result;
}

unint64_t sub_1B73D14F4()
{
  result = qword_1EB993898;
  if (!qword_1EB993898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993898);
  }

  return result;
}

unint64_t sub_1B73D154C()
{
  result = qword_1EB9938A0;
  if (!qword_1EB9938A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938A0);
  }

  return result;
}

unint64_t sub_1B73D15A4()
{
  result = qword_1EB9938A8;
  if (!qword_1EB9938A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938A8);
  }

  return result;
}

unint64_t sub_1B73D15FC()
{
  result = qword_1EB9938B0;
  if (!qword_1EB9938B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938B0);
  }

  return result;
}

unint64_t sub_1B73D1654()
{
  result = qword_1EB9938B8;
  if (!qword_1EB9938B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938B8);
  }

  return result;
}

unint64_t sub_1B73D16AC()
{
  result = qword_1EB9938C0;
  if (!qword_1EB9938C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938C0);
  }

  return result;
}

unint64_t sub_1B73D1704()
{
  result = qword_1EB9938C8;
  if (!qword_1EB9938C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938C8);
  }

  return result;
}

unint64_t sub_1B73D175C()
{
  result = qword_1EB9938D0;
  if (!qword_1EB9938D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938D0);
  }

  return result;
}

unint64_t sub_1B73D17B4()
{
  result = qword_1EB9938D8;
  if (!qword_1EB9938D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938D8);
  }

  return result;
}

unint64_t sub_1B73D180C()
{
  result = qword_1EB9938E0;
  if (!qword_1EB9938E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938E0);
  }

  return result;
}

unint64_t sub_1B73D1864()
{
  result = qword_1EB9938E8;
  if (!qword_1EB9938E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938E8);
  }

  return result;
}

unint64_t sub_1B73D18BC()
{
  result = qword_1EB9938F0;
  if (!qword_1EB9938F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938F0);
  }

  return result;
}

unint64_t sub_1B73D1914()
{
  result = qword_1EB9938F8;
  if (!qword_1EB9938F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9938F8);
  }

  return result;
}

unint64_t sub_1B73D196C()
{
  result = qword_1EB993900;
  if (!qword_1EB993900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993900);
  }

  return result;
}

unint64_t sub_1B73D19C4()
{
  result = qword_1EB993908;
  if (!qword_1EB993908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993908);
  }

  return result;
}

unint64_t sub_1B73D1A1C()
{
  result = qword_1EB993910;
  if (!qword_1EB993910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993910);
  }

  return result;
}

unint64_t sub_1B73D1A74()
{
  result = qword_1EB993918;
  if (!qword_1EB993918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993918);
  }

  return result;
}

unint64_t sub_1B73D1ACC()
{
  result = qword_1EB993920;
  if (!qword_1EB993920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993920);
  }

  return result;
}

unint64_t sub_1B73D1B24()
{
  result = qword_1EB993928;
  if (!qword_1EB993928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993928);
  }

  return result;
}

uint64_t sub_1B73D1B78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B7873C00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7876A70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7873F00 == a2)
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

uint64_t sub_1B73D1CA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B7873C00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7876A70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7873F00 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B73D1E18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000033 && 0x80000001B787D7D0 == a2;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000033 && 0x80000001B787D810 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B787D850 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001B787D870 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B787D8A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001B787D8C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B787D8F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B787D910 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B787D930 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B787D950 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B787D970 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B787D990 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001B787D9B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001B787D9E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B787DA20 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B787DA40 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B787DA60 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B787DA80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B787DAA0 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1B73D23E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xED00006873614844;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787DD00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7877750 == a2)
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

uint64_t sub_1B73D250C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001B787DD20 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7877750 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64696F7166 && a2 == 0xE500000000000000)
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

uint64_t sub_1B73D2630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7873F00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEA00000000004449 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49796E61706D6F63 && a2 == 0xE900000000000044)
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

uint64_t sub_1B73D27B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7873F00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B787DCC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B787DCE0 == a2)
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

uint64_t sub_1B73D2924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000)
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

unint64_t sub_1B73D2A94()
{
  result = qword_1EB993930;
  if (!qword_1EB993930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993930);
  }

  return result;
}

uint64_t BankConnectPaymentInformationProviderError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t BankConnectPaymentInformationProvider.init(primaryAccountIdentifier:store:bankConnectService:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t BankConnectPaymentInformationProvider.accountPaymentInformation()()
{
  *(v1 + 32) = type metadata accessor for BankConnectService.Message();
  *(v1 + 40) = swift_task_alloc();
  v2 = sub_1B7801478();
  *(v1 + 48) = v2;
  *(v1 + 56) = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = *(v0 + 1);
  *(v1 + 96) = v0[3];

  return MEMORY[0x1EEE6DFA0](sub_1B73D2C7C, 0, 0);
}

uint64_t sub_1B73D2C7C()
{
  v23 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;

    v8 = sub_1B71A3EF8(v5, v4, &v22);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_1B7198000, v2, v3, "Obtaining account payment information for primaryAccountIdentifier: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];
  v16 = [*(v10 + 16) newBackgroundContext];
  v0[13] = v16;
  v17 = swift_allocObject();
  v0[14] = v17;
  v17[2] = v12;
  v17[3] = v11;
  v17[4] = v10;
  v17[5] = v9;
  v17[6] = v16;
  (*(v14 + 104))(v13, *MEMORY[0x1E695D2B8], v15);

  v16;
  v18 = swift_task_alloc();
  v0[15] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993940);
  *v18 = v0;
  v18[1] = sub_1B73D2F50;
  v20 = v0[8];

  return MEMORY[0x1EEDB6538](v0 + 2, v20, sub_1B73D363C, v17, v19);
}

uint64_t sub_1B73D2F50()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B73D34D8;
  }

  else
  {
    v5 = sub_1B73D30E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73D30E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  if (v1 >> 60 == 15)
  {

    v3 = *(v0 + 8);
    v4 = MEMORY[0x1E69E7CC0];

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 40);
    sub_1B720ABEC(v2, v1);
    *v6 = v2;
    v6[1] = v1;
    swift_storeEnumTagMultiPayload();
    sub_1B720ABEC(v2, v1);
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_1B73D324C;
    v8 = *(v0 + 40);

    return sub_1B7272490(v8);
  }
}

uint64_t sub_1B73D324C(uint64_t a1)
{
  v4 = *v2;
  v4[20] = v1;

  v5 = v4[5];
  if (v1)
  {
    sub_1B7267DAC(v5);
    v6 = sub_1B73D343C;
  }

  else
  {
    v4[21] = a1;
    sub_1B7267DAC(v5);
    v6 = sub_1B73D3394;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B73D3394()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_1B72380B8(v1, v2);
  sub_1B72380B8(v1, v2);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1B73D343C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[13];
  sub_1B72380B8(v1, v2);
  sub_1B72380B8(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B73D34D8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B73D3550(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ManagedInternalAccount();
  v7 = static ManagedInternalAccount.existingEnabledAccount(withPrimaryAccountIdentifier:context:)(a1, a2);
  if (!v3)
  {
    if (v7)
    {
      v8 = v7;
      v9 = [v7 accountPaymentInformationData];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1B77FF5B8();
        v13 = v12;
      }

      else
      {

        v11 = 0;
        v13 = 0xF000000000000000;
      }

      *a3 = v11;
      a3[1] = v13;
    }

    else
    {
      sub_1B73D36D8();
      swift_allocError();
      swift_willThrow();
    }
  }
}

unint64_t sub_1B73D3664()
{
  result = qword_1EB993948;
  if (!qword_1EB993948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993948);
  }

  return result;
}

unint64_t sub_1B73D36D8()
{
  result = qword_1EB993950;
  if (!qword_1EB993950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993950);
  }

  return result;
}

uint64_t NetworkEventRecorder.__allocating_init(coreDataStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NetworkEventRecorder.init(coreDataStore:)(a1);
  return v2;
}

uint64_t NetworkEventRecorder.init(coreDataStore:)(uint64_t a1)
{
  v2 = v1;
  v21 = &type metadata for UncheckedSendableUserDefaults;
  v22 = &protocol witness table for UncheckedSendableUserDefaults;
  v4 = swift_allocObject();
  *&v17 = v4;
  if (qword_1EDAF7308 != -1)
  {
    v16 = v4;
    swift_once();
    v4 = v16;
  }

  sub_1B7201D1C(qword_1EDAF7310, v4 + 16);
  *(v1 + 33) = 0;
  *(v1 + 16) = 0xD00000000000001ELL;
  *(v1 + 24) = 0x80000001B787DD40;
  sub_1B71E4C44(&v17, v1 + 40);
  *(v1 + 32) = 0;
  *(v1 + 34) = 1;
  *(v1 + 80) = &type metadata for DeviceInfo;
  *(v1 + 88) = &protocol witness table for DeviceInfo;
  *(v1 + 96) = a1;
  sub_1B73D47F0(v1 + 16, &v17);
  if (v20 != 1)
  {

LABEL_8:
    v9 = sub_1B71FBF7C();
    if (v9 == 2)
    {
      v10 = v18;
    }

    else
    {
      v10 = v9;
    }

    sub_1B7205418(&v17, &qword_1EB98F140);
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v5 = v23;
  v6 = v24;
  v7 = *(v24 + 16);

  if (v7(v5, v6))
  {
    goto LABEL_8;
  }

  v8 = v19;
  sub_1B7205418(&v17, &qword_1EB98F140);
  if (v8 != 1)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (qword_1EB98EA28 != -1)
  {
    swift_once();
  }

  v11 = sub_1B78000B8();
  __swift_project_value_buffer(v11, qword_1EB994810);
  v12 = sub_1B7800098();
  v13 = sub_1B78011D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7198000, v12, v13, "NETWORK EVENT RECORDING IS ENABLED. Your network activity will be persisted.", v14, 2u);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
  }

LABEL_17:

  return v2;
}

void NetworkEventRecorder.recordMapsLookupRequest(_:)()
{
  v1 = v0;
  sub_1B73D47F0(v0 + 16, v7);
  if (v7[18] == 1 && ((*(v8 + 16))() & 1) == 0)
  {
    v4 = v7[17];
    sub_1B7205418(v7, &qword_1EB98F140);
    if (v4 != 1)
    {
      return;
    }

    goto LABEL_9;
  }

  v2 = sub_1B71FBF7C();
  if (v2 == 2)
  {
    v3 = v7[16];
  }

  else
  {
    v3 = v2;
  }

  sub_1B7205418(v7, &qword_1EB98F140);
  if (v3)
  {
LABEL_9:
    v5 = [*(*(v1 + 96) + 16) newBackgroundContext];
    v6 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v6);
    sub_1B7801468();
  }
}

id sub_1B73D3CA8(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for MapsLookupRequest();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B73D490C(a1, v6);
  objc_allocWithZone(type metadata accessor for ManagedMapsLookupRequest());
  v7 = a2;

  v10[0] = 0;
  if ([v7 save_])
  {
    return v10[0];
  }

  v9 = v10[0];
  sub_1B77FF318();

  return swift_willThrow();
}

void NetworkEventRecorder.recordNetworkRequest(_:)(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1B73D47F0(v1 + 16, v9);
  if (v9[18] == 1 && ((*(v10 + 16))() & 1) == 0)
  {
    v5 = v9[17];
  }

  else
  {
    v4 = sub_1B71FBF7C();
    if (v4 == 2)
    {
      v5 = v9[16];
    }

    else
    {
      v5 = v4;
    }
  }

  sub_1B7205418(v9, &qword_1EB98F140);
  if (v5)
  {
    v6 = [*(*(v2 + 96) + 16) newBackgroundContext];
    v8 = MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
    sub_1B7801468();
  }

  else
  {
    v7 = sub_1B77FFA18();
    (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

void sub_1B73D40DC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B77FE858();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedNetworkRequestEvent();
  (*(v7 + 16))(v9, a1, v6);
  v10 = a2;
  v11 = ManagedNetworkRequestEvent.__allocating_init(_:context:)(v9, v10);
  if (!v11)
  {
    v15 = 1;
    goto LABEL_5;
  }

  v12 = v11;
  v18[0] = 0;
  if ([v10 save_])
  {
    v13 = v18[0];
    v14 = [v12 traceID];
    sub_1B77FF9E8();

    v15 = 0;
LABEL_5:
    v16 = sub_1B77FFA18();
    (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
    return;
  }

  v17 = v18[0];
  sub_1B77FF318();

  swift_willThrow();
}

void NetworkEventRecorder.recordNetworkResponse(response:body:traceID:)()
{
  v1 = v0;
  sub_1B73D47F0(v0 + 16, v7);
  if (v7[18] == 1 && ((*(v8 + 16))() & 1) == 0)
  {
    v4 = v7[17];
    sub_1B7205418(v7, &qword_1EB98F140);
    if (v4 != 1)
    {
      return;
    }

    goto LABEL_9;
  }

  v2 = sub_1B71FBF7C();
  if (v2 == 2)
  {
    v3 = v7[16];
  }

  else
  {
    v3 = v2;
  }

  sub_1B7205418(v7, &qword_1EB98F140);
  if (v3)
  {
LABEL_9:
    v5 = [*(*(v1 + 96) + 16) newBackgroundContext];
    v6 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v6);
    sub_1B7801468();
  }
}

id sub_1B73D45B4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1B77FFA18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedNetworkResponseEvent();
  (*(v11 + 16))(v13, a4, v10);
  v14 = a1;
  v15 = a5;
  sub_1B720ABEC(a2, a3);

  v19[0] = 0;
  if ([v15 save_])
  {
    return v19[0];
  }

  v17 = v19[0];
  sub_1B77FF318();

  return swift_willThrow();
}

uint64_t NetworkEventRecorder.deinit()
{
  sub_1B7205418(v0 + 16, &qword_1EB98F140);

  return v0;
}

uint64_t NetworkEventRecorder.__deallocating_deinit()
{
  sub_1B7205418(v0 + 16, &qword_1EB98F140);

  return swift_deallocClassInstance();
}

uint64_t sub_1B73D47F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73D490C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsLookupRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B73D4970(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 credentialData];
  v4 = sub_1B77FF5B8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B73D49C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 nickname];
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

void sub_1B73D4A30(uint64_t a1, void **a2)
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
  [v2 setNickname_];
}

void sub_1B73D4AA0(id *a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(void))
{
  v6 = [*a1 *a4];
  a5();
}

id ManagedCloudBankCredential.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCloudBankCredential.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCloudBankCredential.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedCloudBankCredential.__allocating_init(credential:context:)(void *a1, void *a2)
{
  v31 = a2;
  v5 = sub_1B77FF988();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(v2) initWithContext_];
  sub_1B77FFA08();
  v13 = sub_1B77FF9B8();
  v14 = *(v9 + 8);
  v14(v11, v8);
  [v12 setId_];

  v15 = [a1 id];
  sub_1B77FF9E8();

  v16 = sub_1B77FF9B8();
  v14(v11, v8);
  [v12 setCredentialIdentifier_];

  v17 = [a1 credentialData];
  v18 = sub_1B77FF5B8();
  v20 = v19;

  v21 = sub_1B77FF598();
  sub_1B720A388(v18, v20);
  [v12 setCredentialData_];

  [v12 setCredentialTypeValue_];
  v22 = [a1 nickname];
  [v12 setNickname_];

  v23 = [a1 updatedDate];
  sub_1B77FF928();

  v24 = sub_1B77FF8B8();
  (*(v29 + 8))(v7, v30);
  [v12 setUpdatedDate_];

  v25 = [a1 keyIdentifier];
  sub_1B77FF9E8();

  v26 = sub_1B77FF9B8();
  v14(v11, v8);
  [v12 setKeyIdentifier_];

  return v12;
}

void ManagedCloudBankCredential.update(_:context:)(void *a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = [a1 id];
  sub_1B77FF9E8();

  v14 = [v2 credentialIdentifier];
  sub_1B77FF9E8();

  LOBYTE(v14) = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  if (v14)
  {
    v16 = [a1 id];
    sub_1B77FF9E8();

    v17 = sub_1B77FF9B8();
    v15(v12, v6);
    [v2 setCredentialIdentifier_];

    v18 = [a1 credentialData];
    v19 = sub_1B77FF5B8();
    v21 = v20;

    v22 = sub_1B77FF598();
    sub_1B720A388(v19, v21);
    [v2 setCredentialData_];

    [v2 setCredentialTypeValue_];
    v23 = [a1 nickname];
    [v2 setNickname_];

    v24 = [a1 updatedDate];
    v25 = v30;
    sub_1B77FF928();

    v26 = sub_1B77FF8B8();
    (*(v31 + 8))(v25, v32);
    [v2 setUpdatedDate_];

    v27 = [a1 keyIdentifier];
    sub_1B77FF9E8();

    v28 = sub_1B77FF9B8();
    v15(v12, v6);
    [v2 setKeyIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

{
  v2 = v1;
  v4 = sub_1B77FF988();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = [a1 credentialIdentifier];
  sub_1B77FF9E8();

  v14 = [v2 credentialIdentifier];
  sub_1B77FF9E8();

  LOBYTE(v14) = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  if (v14)
  {
    v16 = [a1 credentialIdentifier];
    sub_1B77FF9E8();

    v17 = sub_1B77FF9B8();
    v15(v12, v6);
    [v2 setCredentialIdentifier_];

    v18 = [a1 credentialData];
    v19 = sub_1B77FF5B8();
    v21 = v20;

    v22 = sub_1B77FF598();
    sub_1B720A388(v19, v21);
    [v2 setCredentialData_];

    [v2 setCredentialTypeValue_];
    v23 = [a1 nickname];
    [v2 setNickname_];

    v24 = [a1 updatedDate];
    v25 = v30;
    sub_1B77FF928();

    v26 = sub_1B77FF8B8();
    (*(v31 + 8))(v25, v32);
    [v2 setUpdatedDate_];

    [v2 setCkSchemaVersion_];
    v27 = [a1 keyIdentifier];
    sub_1B77FF9E8();

    v28 = sub_1B77FF9B8();
    v15(v12, v6);
    [v2 setKeyIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

id static ManagedCloudBankCredential.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedCloudBankCredential;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedCloudBankCredential.existingObject(with:in:)(uint64_t a1, id a2)
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

uint64_t static ManagedCloudBankCredential.predicateForCloudBankCredential(withCredentialID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B726E47C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

id ManagedCloudBankCredential.credentialType.getter()
{
  result = [v0 credentialTypeValue];
  if (result != 1)
  {
    sub_1B7801A78();

    [v0 credentialTypeValue];
    v2 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v2);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

uint64_t BankCredential.SealedBox.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 credentialIdentifier];
  sub_1B77FF9E8();

  v9 = [a1 nickname];
  if (v9)
  {
    v10 = v9;
    v24 = sub_1B7800868();
    v12 = v11;
  }

  else
  {
    v24 = 0;
    v12 = 0;
  }

  if ([a1 credentialTypeValue] == 1)
  {
    v13 = [a1 credentialData];
    v14 = sub_1B77FF5B8();
    v16 = v15;

    v17 = [a1 updatedDate];
    v18 = type metadata accessor for BankCredential.SealedBox(0);
    sub_1B77FF928();

    v19 = [a1 keyIdentifier];
    sub_1B77FF9E8();

    result = (*(v5 + 32))(a2, v7, v4);
    v21 = (a2 + *(v18 + 20));
    *v21 = v24;
    v21[1] = v12;
    v22 = (a2 + *(v18 + 28));
    *v22 = v14;
    v22[1] = v16;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1B7801A78();

    v26 = 0xD000000000000022;
    v27 = 0x80000001B787DE00;
    v25 = [a1 credentialTypeValue];
    v23 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v23);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

{
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 id];
  sub_1B77FF9E8();

  v9 = [a1 nickname];
  if (v9)
  {
    v10 = v9;
    v24 = sub_1B7800868();
    v12 = v11;
  }

  else
  {
    v24 = 0;
    v12 = 0;
  }

  if ([a1 credentialTypeValue] == 1)
  {
    v13 = [a1 credentialData];
    v14 = sub_1B77FF5B8();
    v16 = v15;

    v17 = [a1 updatedDate];
    v18 = type metadata accessor for BankCredential.SealedBox(0);
    sub_1B77FF928();

    v19 = [a1 keyIdentifier];
    sub_1B77FF9E8();

    result = (*(v5 + 32))(a2, v7, v4);
    v21 = (a2 + *(v18 + 20));
    *v21 = v24;
    v21[1] = v12;
    v22 = (a2 + *(v18 + 28));
    *v22 = v14;
    v22[1] = v16;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1B7801A78();

    v26 = 0xD000000000000022;
    v27 = 0x80000001B787DE00;
    v25 = [a1 credentialTypeValue];
    v23 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v23);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}